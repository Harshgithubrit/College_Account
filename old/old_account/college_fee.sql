-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2021 at 06:41 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mjge_collage_erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `college_fee`
--

CREATE TABLE `college_fee` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) DEFAULT NULL,
  `student_name` varchar(150) DEFAULT NULL,
  `receipt_no` varchar(50) DEFAULT NULL,
  `date` date DEFAULT current_timestamp(),
  `time` time DEFAULT current_timestamp(),
  `college_id` varchar(50) DEFAULT NULL,
  `sem_year` varchar(50) DEFAULT NULL,
  `sem_year_type` varchar(10) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `tuition_fee` varchar(50) DEFAULT NULL,
  `caution_money` varchar(50) DEFAULT NULL,
  `college_magazine_fee` varchar(50) DEFAULT NULL,
  `university_fee` varchar(50) DEFAULT NULL,
  `sports_fee` varchar(50) DEFAULT NULL,
  `library_fee` varchar(50) DEFAULT NULL,
  `prospectus_fee` varchar(50) DEFAULT NULL,
  `others` varchar(50) DEFAULT NULL,
  `forwarding_fee` varchar(50) DEFAULT NULL,
  `extra_fee` varchar(50) DEFAULT NULL,
  `total_fee` varchar(50) DEFAULT NULL,
  `cheque_dd_no` varchar(50) DEFAULT NULL,
  `cheque_dd_date` varchar(50) DEFAULT NULL,
  `created_status` varchar(10) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college_fee`
--

INSERT INTO `college_fee` (`id`, `student_id`, `student_name`, `receipt_no`, `date`, `time`, `college_id`, `sem_year`, `sem_year_type`, `user_id`, `tuition_fee`, `caution_money`, `college_magazine_fee`, `university_fee`, `sports_fee`, `library_fee`, `prospectus_fee`, `others`, `forwarding_fee`, `extra_fee`, `total_fee`, `cheque_dd_no`, `cheque_dd_date`, `created_status`, `created_date`) VALUES
(1, 'MJPH733', 'Neha  sen', '1', '2021-01-12', '06:29:17', 'MJPH', '2', 'Year', 'MJGEAdmin', '1', '33', '42', '24', '3', '2', '2', '52', '42', NULL, '201', '', '2021-01-12', 'Active', '2021-01-12 06:29:17'),
(2, 'MJPH733', 'Neha  sen', '2', '2021-01-12', '09:33:12', 'MJPH', '2', 'Year', 'MJGEAdmin', '5', '444', '53', '5', '5', '5', '5', '0', '55', NULL, '577', '', '2021-01-12', 'Active', '2021-01-12 09:33:12'),
(3, 'MJPH733', 'Neha  sen', '3', '2021-01-25', '05:35:24', 'MJPH', '2', 'Year', 'MJGEAdmin', '10000', '500', '300', '600', '500', '40', '0', '0', '0', NULL, '11940', '', '2021-01-24', 'Active', '2021-01-25 05:35:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `college_fee`
--
ALTER TABLE `college_fee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college_fee`
--
ALTER TABLE `college_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
