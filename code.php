<?php
    session_start();
    $con = mysqli_connect("localhost","root","","php-import_excel-csv");
    require 'vendor/autoload.php';

    use PhpOffice\PhpSpreadsheet\Spreadsheet;
    use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

    if(isset($_POST['import_file_btn'])){
        $allowed_ext = ['xls', 'csv', 'xlsx'];
        $fileName = $_FILES['import_file']['name'];
        $checking = explode(".", $fileName);
        $file_ext = end($checking);

        if(in_array($file_ext, $allowed_ext)){
            $targetPath = $_FILES['import_file']['tmp_name'];
            $spreadsheet = \PhpOffice\PhpSpreadsheet\IOFactory::load($targetPath);
            $data = $spreadsheet->getActiveSheet()->toArray();

            foreach($data as $row){
                $id = $row['0'];
                $stud_name = $row['1'];
                $stud_class = $row['2'];
                $stud_phone = $row['3'];

                $checkStudent = "SELECT id FROM excel_csv WHERE id='$id'";
                $checkStudent_result = mysqli_query($con, $checkStudent);

                if(mysqli_num_rows($checkStudent_result) > 0){
                    // Already Exists means please Update
                    $up_query = "UPDATE excel_csv SET stud_name='$stud_name', stud_class='$stud_class', stud_phone='$stud_phone' WHERE id='$id'";
                    $up_result = mysqli_query($con, $up_query);
                    $msg = 1;
                }else{
                    // New record hao toh INSERT
                    $in_query = "INSERT INTO excel_csv (stud_name,stud_class,stud_phone) VALUES ('$stud_name','$stud_class','$stud_phone')";
                    $in_result = mysqli_query($con, $in_query);
                    $msg = 1;
                }
                 
            }
            if(isset($msg)){
                $_SESSION['status'] = "File Imposted Successfully";
                header("Location: index.php");
            }else{
                $_SESSION['status'] = "File Imposting Failed";
                header("Location: index.php");
            }
        }else{
            $_SESSION['status'] = "Invalid File";
            header("Location: index.php");
            exit(0);
        }


    }
?>