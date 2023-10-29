-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2021 at 06:58 AM
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
-- Table structure for table `office_item_name`
--

CREATE TABLE `office_item_name` (
  `id` int(11) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_code` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `office_item_name`
--

INSERT INTO `office_item_name` (`id`, `item_name`, `item_code`, `created_by`, `date_time`) VALUES
(1, 'Test', NULL, NULL, '2021-01-31 23:50:37'),
(2, 'Test 2', NULL, NULL, '2021-01-31 23:51:14'),
(3, 'test 3', NULL, NULL, '2021-01-31 23:58:26'),
(4, 'Test 4', NULL, NULL, '2021-02-01 00:13:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `office_item_name`
--
ALTER TABLE `office_item_name`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `office_item_name`
--
ALTER TABLE `office_item_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
