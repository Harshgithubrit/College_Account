-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2021 at 06:42 AM
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
-- Table structure for table `account_requisition_item`
--

CREATE TABLE `account_requisition_item` (
  `id` int(11) NOT NULL,
  `receipt_no` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `item` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `item_description` varchar(400) CHARACTER SET utf16 DEFAULT NULL,
  `quantity` varchar(5) CHARACTER SET utf16 DEFAULT NULL,
  `price` varchar(10) CHARACTER SET utf16 DEFAULT NULL,
  `total` varchar(10) CHARACTER SET utf16 DEFAULT NULL,
  `item_code` varchar(20) CHARACTER SET utf16 DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_requisition_item`
--

INSERT INTO `account_requisition_item` (`id`, `receipt_no`, `item`, `item_description`, `quantity`, `price`, `total`, `item_code`, `user_id`, `status`, `date`, `time`) VALUES
(1, '10', 'yt', 'rt', '5', '500', '2500', NULL, 'MJGEAdmin', 'Active', '2021-01-31', '22:18:59'),
(2, '11', 'reert', 'ert er', '4', '55', '220', NULL, 'MJGEAdmin', 'Active', '2021-01-31', '22:34:56'),
(3, '12', 'RER', 'ewe', '45', '55', '2475', NULL, 'MJGEAdmin', 'Active', '2021-01-31', '22:37:23'),
(4, '13', 'Test 2', 'desc', '4', '12', '48', NULL, 'MJGEAdmin', 'Active', '2021-02-01', '00:48:02'),
(5, '14', 'Test 4', 'Desc', '5', '129', '645', NULL, 'MJGEAdmin', 'Active', '2021-02-01', '00:54:49'),
(6, '14', 'test 3', 'Desc', '6', '55', '330', NULL, 'MJGEAdmin', 'Active', '2021-02-01', '01:00:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_requisition_item`
--
ALTER TABLE `account_requisition_item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_requisition_item`
--
ALTER TABLE `account_requisition_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
