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
-- Table structure for table `account_requisition`
--

CREATE TABLE `account_requisition` (
  `id` int(11) NOT NULL,
  `receipt_no` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `item` varchar(200) DEFAULT NULL,
  `item_description` varchar(400) DEFAULT NULL,
  `quantity` varchar(5) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `priority` varchar(20) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time(6) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `admin_approved` varchar(20) DEFAULT 'Pending',
  `admin_remarks` text DEFAULT NULL,
  `account_approved` varchar(20) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_requisition`
--

INSERT INTO `account_requisition` (`id`, `receipt_no`, `user_id`, `user_name`, `create_date`, `email`, `mobile`, `item`, `item_description`, `quantity`, `price`, `total`, `category`, `priority`, `remarks`, `date`, `time`, `status`, `admin_approved`, `admin_remarks`, `account_approved`) VALUES
(1, '3', 'MJGEAdmin', 'Main Admin Profile', '2021-01-12 00:00:00', 'aQ@c.m', '1234567890', 'item 3', '5desc', '7', '44', '308', 'IT Consumables', 'Medium', 'Test', '2021-01-12', '09:31:28.000000', 'Active', 'Pending', NULL, 'Pending'),
(3, '3', 'MJGEAdmin', 'Main Admin Profile', '2021-01-12 00:00:00', 'aQ@c.m', '1234567890', 'TESR', 'EWE', '3', '5', '15', 'IT Consumables', 'Medium', 'Test', '2021-01-12', '09:37:19.000000', 'Active', 'Pending', NULL, 'Pending'),
(4, '3', 'MJGEAdmin', 'Main Admin Profile', '2021-01-12 00:00:00', 'aQ@c.m', '1234567890', 'OOOee', '434', '3', '399', '1197', 'IT Consumables', 'Medium', 'Test', '2021-01-12', '09:37:34.000000', 'Active', 'Pending', NULL, 'Pending'),
(7, '4', 'MJGEAdmin', 'Main Admin Profile', '2021-01-30 00:00:00', 'aQ@c.m', '1234567890', 'Test', 'Desc', '6', '56', '336', 'Office Supplies', 'Medium', 'Test', '2021-01-30', '07:41:40.000000', 'Active', 'Rejected', 'not requied', 'Pending'),
(8, '5', 'MJGEAdmin', 'Main Admin Profile', '2021-01-31 00:00:00', 'aQ@c.m', '1234567890', 'item 1', 'desc', '3', '400', '1200', 'Office Supplies', 'Medium', 'Requir', '2021-01-31', '09:41:29.000000', 'Active', 'Approved', 'Done!', 'Pending'),
(9, '5', 'MJGEAdmin', 'Main Admin Profile', '2021-01-31 00:00:00', 'aQ@c.m', '1234567890', 'item 2', 'desc', '2', '300', '600', 'Office Supplies', 'Medium', 'Requir', '2021-01-31', '09:41:45.000000', 'Active', 'Approved', 'Done!', 'Pending'),
(12, '5', 'MJGEAdmin', 'Main Admin Profile', '2021-01-31 00:00:00', 'aQ@c.m', '1234567890', 'Test', 'desc', '6', '200', '1200', 'Office Supplies', 'Medium', 'Requir', '2021-01-31', '12:52:02.000000', 'Active', 'Pending', NULL, 'Pending'),
(27, '14', 'MJGEAdmin', 'Main Admin Profile', '2021-02-01 00:00:00', 'aQ@c.m', '1234567890', NULL, NULL, NULL, NULL, NULL, 'Variables (Asphalt, Delineator, Cement, etc.)', 'Low', 'Tesc', '2021-02-01', '00:54:49.000000', 'Active', 'Pending', NULL, 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_requisition`
--
ALTER TABLE `account_requisition`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_requisition`
--
ALTER TABLE `account_requisition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
