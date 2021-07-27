-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2021 at 10:28 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php-import_excel-csv`
--

-- --------------------------------------------------------

--
-- Table structure for table `excel_csv`
--

CREATE TABLE `excel_csv` (
  `id` int(11) NOT NULL,
  `stud_name` varchar(50) NOT NULL,
  `stud_class` varchar(50) NOT NULL,
  `stud_phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `excel_csv`
--

INSERT INTO `excel_csv` (`id`, `stud_name`, `stud_class`, `stud_phone`) VALUES
(1, 'Spidy', 'iron-man', '0908059511'),
(2, 'Spidy', 'iron-man', '0908059512'),
(3, 'Spidy', 'iron-man', '0908059513'),
(4, 'Spidy', 'iron-man', '0908059514'),
(5, 'Spidy', 'iron-man', '0908059515'),
(6, 'Spidy', 'iron-man', '0908059516'),
(7, 'Spidy', 'iron-man', '0908059517'),
(8, 'Spidy', 'iron-man', '0908059518'),
(9, 'Spidy', 'iron-man', '0908059519'),
(10, 'Spidy', 'iron-man', '0908059520');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `excel_csv`
--
ALTER TABLE `excel_csv`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `excel_csv`
--
ALTER TABLE `excel_csv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
