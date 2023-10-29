-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2021 at 10:16 AM
-- Server version: 10.4.14-MariaDB
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
-- Table structure for table `account_purchase_order`
--

CREATE TABLE `account_purchase_order` (
  `id` int(11) NOT NULL,
  `receipt_no` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `priority` varchar(20) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `admin_approved` varchar(20) DEFAULT 'Pending',
  `admin_remarks` text DEFAULT NULL,
  `account_approved` varchar(20) DEFAULT 'Pending',
  `submitted` varchar(5) NOT NULL DEFAULT 'NO',
  `vendor_id` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `account_approved_by` varchar(50) DEFAULT NULL,
  `admin_approved_by` varchar(50) DEFAULT NULL,
  `delivered_status` varchar(5) DEFAULT 'No',
  `verify_status` varchar(50) DEFAULT 'Not Checked'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_purchase_order`
--

INSERT INTO `account_purchase_order` (`id`, `receipt_no`, `user_id`, `user_name`, `create_date`, `email`, `mobile`, `department`, `category`, `priority`, `remarks`, `date`, `time`, `status`, `admin_approved`, `admin_remarks`, `account_approved`, `submitted`, `vendor_id`, `vendor_name`, `account_approved_by`, `admin_approved_by`, `delivered_status`, `verify_status`) VALUES
(2, '14', 'MJGE46', 'Archana  Tripathi', '2021-02-05 00:00:00', 'archanavin2226@gmail.com', '7987006430', 'M J College Department of Education', 'Service Charge / Repair Maintinance', 'Low', 'Desc', '2021-02-05', '06:28:16', 'Active', 'Pending', NULL, 'Pending', 'NO', '', '', NULL, NULL, 'No', 'Not Checked'),
(3, '16', 'MJGEAdmin', 'Main Admin Profile', '2021-02-11 00:00:00', 'mjsoftwaredeveloper@gmail.com', '1234567890', 'M J College', 'Office Related Items (Furniture etc.)', 'Low', 'Desc New', '2021-02-10', '11:24:31', 'Active', 'Pending', NULL, 'Pending', 'NO', '', '', NULL, NULL, 'No', 'Not Checked'),
(4, '18', 'MJGEAdmin', 'Main Admin Profile', '2021-02-12 00:00:00', 'mjsoftwaredeveloper@gmail.com', '1234567890', 'M J College', 'Office Supplies', 'Medium', 'Desc', '2021-02-11', '21:22:26', 'Active', 'Pending', NULL, 'Pending', 'NO', '', '', NULL, NULL, 'No', 'Not Checked'),
(5, '19', 'MJGE46', 'Archana  Tripathi', '2021-02-16 00:00:00', 'archanavin2226@gmail.com', '7987006430', 'M J College Department of Education', 'Office Supplies', 'Low', 'Desc', '2021-02-16', '11:55:23', 'Active', 'Pending', NULL, 'Pending', 'NO', '', '', NULL, NULL, 'No', 'Not Checked'),
(13, '21', 'MJGEAdmin', 'Main Admin Profile', '2021-02-17 00:00:00', 'mjsoftwaredeveloper@gmail.com', '1234567890', 'M J College', 'Variables (Asphalt, Delineator, Cement, etc.)', 'Medium', 'Test Des', '2021-02-17', '11:01:07', 'Active', 'Approved', 'okk', 'Approved', 'YES', '5', 'C Vendor', NULL, NULL, 'Yes', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `account_purchase_order_item`
--

CREATE TABLE `account_purchase_order_item` (
  `id` int(11) NOT NULL,
  `receipt_no` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `item` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `item_description` varchar(400) CHARACTER SET utf16 DEFAULT NULL,
  `quantity` varchar(5) CHARACTER SET utf16 DEFAULT NULL,
  `delivered_quantity` varchar(50) DEFAULT NULL,
  `price` varchar(10) CHARACTER SET utf16 DEFAULT NULL,
  `total` varchar(10) CHARACTER SET utf16 DEFAULT NULL,
  `item_code` varchar(20) CHARACTER SET utf16 DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `confirm_store` varchar(10) DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_purchase_order_item`
--

INSERT INTO `account_purchase_order_item` (`id`, `receipt_no`, `item`, `item_description`, `quantity`, `delivered_quantity`, `price`, `total`, `item_code`, `user_id`, `status`, `date`, `time`, `comments`, `confirm_store`) VALUES
(4, '14', 'Computer', 'Desc', '6', NULL, '700', '4200', NULL, 'MJGE46', 'Active', '2021-02-05', '06:28:16', NULL, 'No'),
(5, '14', 'Mouse', 'Desc', '5', NULL, '200', '1000', NULL, 'MJGE46', 'Active', '2021-02-05', '06:28:42', NULL, 'No'),
(6, '14', 'Test Test D', 'Desc', '80', NULL, '600', '48000', NULL, 'MJGE46', 'Active', '2021-02-05', '06:29:03', NULL, 'No'),
(7, '16', 'Item 4', 'Desc', '100', NULL, '50', '5000', NULL, 'MJGEAdmin', 'Active', '2021-02-10', '11:24:31', NULL, 'No'),
(10, '16', 'Item 4', 'OM', '39', NULL, '23', '897', NULL, 'MJGEAdmin', 'Active', '2021-02-10', '11:49:39', NULL, 'No'),
(11, '18', 'Item 3', 'Desc', '10', NULL, '200', '2000', NULL, 'MJGEAdmin', 'Active', '2021-02-11', '21:22:26', NULL, 'No'),
(12, '18', 'Item 4', 'Desc', '5', NULL, '2000', '10000', NULL, 'MJGEAdmin', 'Active', '2021-02-11', '21:23:07', NULL, 'No'),
(13, '19', 'Item 2', 'Desc', '5', NULL, '100', '500', NULL, 'MJGE46', 'Active', '2021-02-16', '11:55:23', NULL, 'No'),
(14, '19', 'Item 2', 'DDSA', '3', NULL, '222', '666', NULL, 'MJGE46', 'Active', '2021-02-16', '11:57:08', NULL, 'No'),
(36, '21', 'Item 4', 'De', '3', '3', '333', '999', NULL, 'MJGEAdmin', 'Active', '2021-02-17', '11:01:07', 'ok ho gaya', 'No'),
(37, '21', 'Test', 'Desc', '45', '30', '222', '9990', NULL, 'MJGEAdmin', 'Active', '2021-02-17', '11:26:51', 'done', 'Checked');

-- --------------------------------------------------------

--
-- Table structure for table `account_quotation`
--

CREATE TABLE `account_quotation` (
  `id` int(11) NOT NULL,
  `receipt_no` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `priority` varchar(20) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `admin_approved` varchar(20) DEFAULT 'Pending',
  `admin_remarks` text DEFAULT NULL,
  `account_approved` varchar(20) DEFAULT 'Pending',
  `submitted` varchar(5) NOT NULL DEFAULT 'NO',
  `vendor_id` varchar(50) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `account_approved_by` varchar(50) DEFAULT NULL,
  `admin_approved_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_quotation`
--

INSERT INTO `account_quotation` (`id`, `receipt_no`, `user_id`, `user_name`, `create_date`, `email`, `mobile`, `department`, `category`, `priority`, `remarks`, `date`, `time`, `status`, `admin_approved`, `admin_remarks`, `account_approved`, `submitted`, `vendor_id`, `vendor_name`, `account_approved_by`, `admin_approved_by`) VALUES
(16, '14', 'MJGE46', 'Archana  Tripathi', '2021-02-05 00:00:00', 'archanavin2226@gmail.com', '7987006430', 'M J College Department of Education', 'Service Charge / Repair Maintinance', 'Low', 'Desc', '2021-02-05', '06:28:16', 'Active', 'Approved', 'OK DoneL', 'Pending', 'NO', '0', NULL, NULL, NULL),
(17, '15', 'MJGEAdmin', 'Main Admin Profile', '2021-02-10 00:00:00', 'mjsoftwaredeveloper@gmail.com', '1234567890', 'M J College', 'Others', 'Low', 'Test Data', '2021-02-10', '10:43:38', 'Active', 'Pending', NULL, 'Pending', 'YES', '0', NULL, NULL, NULL),
(18, '18', 'MJGEAdmin', 'Main Admin Profile', '2021-02-12 00:00:00', 'mjsoftwaredeveloper@gmail.com', '1234567890', 'M J College', 'Office Supplies', 'Medium', 'Desc', '2021-02-11', '21:22:26', 'Active', 'Approved', 'Done', 'Pending', 'NO', '0', NULL, NULL, NULL),
(19, '19', 'MJGE46', 'Archana  Tripathi', '2021-02-16 00:00:00', 'archanavin2226@gmail.com', '7987006430', 'M J College Department of Education', 'Office Supplies', 'Low', 'Desc', '2021-02-16', '11:55:23', 'Active', 'Approved', 'OK done', 'Pending', 'NO', '0', NULL, NULL, NULL),
(20, '21', 'MJGEAdmin', 'Main Admin Profile', '2021-02-17 00:00:00', 'mjsoftwaredeveloper@gmail.com', '1234567890', 'M J College', 'Variables (Asphalt, Delineator, Cement, etc.)', 'Medium', 'Test Des', '2021-02-17', '11:01:07', 'Active', 'Approved', 'ok', 'Approved', 'YES', '5', 'C Vendor', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_quotation_item`
--

CREATE TABLE `account_quotation_item` (
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
-- Dumping data for table `account_quotation_item`
--

INSERT INTO `account_quotation_item` (`id`, `receipt_no`, `item`, `item_description`, `quantity`, `price`, `total`, `item_code`, `user_id`, `status`, `date`, `time`) VALUES
(34, '14', 'Computer', 'Desc', '6', '700', '4200', NULL, 'MJGE46', 'Active', '2021-02-05', '06:28:16'),
(35, '14', 'Mouse', 'Desc', '5', '200', '1000', NULL, 'MJGE46', 'Active', '2021-02-05', '06:28:42'),
(36, '14', 'Test', 'Desc', '80', '600', '48000', NULL, 'MJGE46', 'Active', '2021-02-05', '06:29:03'),
(37, '15', 'ok', 'THIK HAI', '5', '300', '1500', NULL, 'MJGEAdmin', 'Active', '2021-02-10', '10:43:38'),
(38, '18', 'Item 3', 'Desc', '10', '200', '2000', NULL, 'MJGEAdmin', 'Active', '2021-02-11', '21:22:26'),
(39, '18', 'Item 4', 'Desc', '5', '2000', '10000', NULL, 'MJGEAdmin', 'Active', '2021-02-11', '21:23:07'),
(40, '19', 'Item 2', 'Desc', '2', '200', '400', NULL, 'MJGE46', 'Active', '2021-02-16', '11:55:23'),
(41, '19', 'Item 2', 'DDSA', '1', '222', '222', NULL, 'MJGE46', 'Active', '2021-02-16', '11:57:08'),
(42, '21', 'Item 4', 'De', '3', '333', '999', NULL, 'MJGEAdmin', 'Active', '2021-02-17', '11:01:07'),
(43, '21', 'Test', 'Desc', '45', '222', '9990', NULL, 'MJGEAdmin', 'Active', '2021-02-17', '11:26:51');

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
  `department` varchar(255) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `priority` varchar(20) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `admin_approved` varchar(20) DEFAULT 'Pending',
  `admin_approved_by` varchar(255) DEFAULT NULL,
  `admin_remarks` text DEFAULT NULL,
  `account_approved` varchar(20) DEFAULT 'Pending',
  `account_approved_by` varchar(255) DEFAULT NULL,
  `submitted` varchar(5) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_requisition`
--

INSERT INTO `account_requisition` (`id`, `receipt_no`, `user_id`, `user_name`, `create_date`, `email`, `mobile`, `department`, `category`, `priority`, `remarks`, `date`, `time`, `status`, `admin_approved`, `admin_approved_by`, `admin_remarks`, `account_approved`, `account_approved_by`, `submitted`) VALUES
(13, '13', 'MJGEAdmin', 'Main Admin Profile', '2021-02-05 00:00:00', 'mjsoftwaredeveloper@gmail.com', '1234567890', 'M J College', 'Service Charge / Repair Maintinance', 'Medium', 'Test', '2021-02-04', '22:01:17', 'Active', 'Rejected', NULL, 'OM', 'Pending', NULL, 'NO'),
(14, '14', 'MJGE46', 'Archana  Tripathi', '2021-02-05 00:00:00', 'archanavin2226@gmail.com', '7987006430', 'M J College Department of Education', 'Service Charge / Repair Maintinance', 'Low', 'Desc', '2021-02-05', '06:28:16', 'Active', 'Approved', NULL, 'done', 'Pending', NULL, 'YES'),
(15, '15', 'MJGEAdmin', 'Main Admin Profile', '2021-02-10 00:00:00', 'mjsoftwaredeveloper@gmail.com', '1234567890', 'M J College', 'Others', 'Low', 'Test Data', '2021-02-10', '10:43:38', 'Active', 'Approved', NULL, 'ok', 'Pending', NULL, 'NO'),
(16, '17', 'MJGEAdmin', 'Main Admin Profile', '2021-02-12 00:00:00', 'mjsoftwaredeveloper@gmail.com', '1234567890', 'M J College', 'Variables (Asphalt, Delineator, Cement, etc.)', 'Medium', 'Desc', '2021-02-11', '12:32:27', 'Active', 'Pending', NULL, NULL, 'Pending', NULL, 'NO'),
(17, '18', 'MJGEAdmin', 'Main Admin Profile', '2021-02-12 00:00:00', 'mjsoftwaredeveloper@gmail.com', '1234567890', 'M J College', 'Office Supplies', 'Medium', 'Desc', '2021-02-11', '21:22:26', 'Active', 'Approved', NULL, 'OK', 'Pending', NULL, 'YES');

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
(25, '13', 'Item 1', 'Desc', '12', '5000', '60000', NULL, 'MJGEAdmin', 'Active', '2021-02-04', '22:01:17'),
(26, '13', 'Computer', 'Desc', '1', '25000', '25000', NULL, 'MJGEAdmin', 'Active', '2021-02-04', '22:01:32'),
(27, '13', 'Mouse', 'Desc', '4', '2000', '8000', NULL, 'MJGEAdmin', 'Active', '2021-02-04', '22:01:44'),
(28, '14', 'Computer', 'Desc', '6', '700', '4200', NULL, 'MJGE46', 'Active', '2021-02-05', '06:28:16'),
(29, '14', 'Mouse', 'Desc', '5', '200', '1000', NULL, 'MJGE46', 'Active', '2021-02-05', '06:28:42'),
(30, '14', 'Test Test D', 'Desc', '80', '600', '48000', NULL, 'MJGE46', 'Active', '2021-02-05', '06:29:03'),
(31, '15', 'ok', 'THIK HAI', '5', '300', '1500', NULL, 'MJGEAdmin', 'Active', '2021-02-10', '10:43:38'),
(32, '17', 'Item 3', 'Desc', '2', '222', '444', NULL, 'MJGEAdmin', 'Active', '2021-02-11', '12:32:27'),
(33, '18', 'Item 3', 'Desc', '10', '200', '2000', NULL, 'MJGEAdmin', 'Active', '2021-02-11', '21:22:26'),
(34, '18', 'Item 4', 'Desc', '5', '2000', '10000', NULL, 'MJGEAdmin', 'Active', '2021-02-11', '21:23:07');

-- --------------------------------------------------------

--
-- Table structure for table `account_vendor`
--

CREATE TABLE `account_vendor` (
  `id` int(11) NOT NULL,
  `vendor_id` varchar(50) DEFAULT NULL,
  `first_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `vendor_email` varchar(150) DEFAULT NULL,
  `person_contact` varchar(15) DEFAULT NULL,
  `vendor_contact` varchar(15) DEFAULT NULL,
  `vendor_category` varchar(80) DEFAULT NULL,
  `provide` varchar(10) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_vendor`
--

INSERT INTO `account_vendor` (`id`, `vendor_id`, `first_name`, `last_name`, `company`, `vendor_email`, `person_contact`, `vendor_contact`, `vendor_category`, `provide`, `website`, `address`, `created_by`, `date_time`, `status`) VALUES
(2, '5', 'V Name', 'LName', 'C Vendor', 'a@c', '22211111', '4234234234', 'B2B (Business to Business)', 'Goods', 'wwwCCC', 'Add', 'MJGEAdmin', '2021-02-16 16:32:56', 'Active'),
(3, '4', 'AAA', 'XDXX', 'MM', 'A@D', '234234234', '3542323', 'B2C (Business to Consumer)', 'Goods', 'AD', 'ASSA  S', 'MJGEAdmin', '2021-02-16 16:35:03', 'Active'),
(4, '1', '4334fg', 'rfedfg', 'dfg', 'wet', '234', '234234', 'B2C (Business to Consumer)', 'Goods', 'fwdf', 'ert', 'MJGEAdmin', '2021-02-17 10:34:24', 'Active'),
(5, '1', '43543', '2re', 'eqwr', '3444', '1343', 'rtret', 'B2C (Business to Consumer)', 'Goods', '234', '33', 'MJGEAdmin', '2021-02-17 10:35:44', 'Active'),
(6, '1', 'sefadf', 'Q', 'F', 'SF', 'SW3', 'EDFD', 'B2G (Business to Government)', 'Goods', 'A', 'H', 'MJGEAdmin', '2021-02-17 10:36:21', 'Active'),
(7, '11', 'dfdsd', 'mhb', 'gkjg', 'gjtyg', '6776', '45', 'B2C (Business to Consumer)', 'Goods', 'rtyur', 'kgh', 'MJGEAdmin', '2021-02-17 10:40:10', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `id` int(11) NOT NULL,
  `college_id` varchar(100) DEFAULT NULL,
  `college_name` varchar(255) DEFAULT NULL,
  `created_by_id` varchar(100) DEFAULT NULL,
  `created_date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`id`, `college_id`, `college_name`, `created_by_id`, `created_date_time`) VALUES
(1, 'MJC', 'M J College', 'MJGEAdmin', '2020-11-18 00:51:09'),
(2, 'MJEDU', 'M J College Department of Education', 'MJGEAdmin', '2020-11-18 00:51:09'),
(3, 'MJPH', 'M J College (Pharmacy)', 'MJGEAdmin', '2020-11-18 00:52:00'),
(4, 'MJCON', 'M J College of Nursing', 'MJGEAdmin', '2020-11-18 00:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `college_fee`
--

CREATE TABLE `college_fee` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) DEFAULT NULL,
  `student_name` varchar(200) DEFAULT NULL,
  `receipt_no` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `college_id` varchar(50) DEFAULT NULL,
  `sem_year` varchar(50) DEFAULT NULL,
  `sem_year_type` varchar(50) DEFAULT NULL,
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
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college_fee`
--

INSERT INTO `college_fee` (`id`, `student_id`, `student_name`, `receipt_no`, `date`, `time`, `college_id`, `sem_year`, `sem_year_type`, `user_id`, `tuition_fee`, `caution_money`, `college_magazine_fee`, `university_fee`, `sports_fee`, `library_fee`, `prospectus_fee`, `others`, `forwarding_fee`, `extra_fee`, `total_fee`, `cheque_dd_no`, `cheque_dd_date`, `created_status`, `created_date`) VALUES
(19, 'MJPH733', 'Neha  sen', '19', '2021-02-10', '02:43:22', 'MJPH', '2', 'Year', 'MJGEAdmin', '1900', '33', '545', '564', '7834', '56', '43', '345', '345', NULL, '11665', '', '2021-02-10', 'Active', '2021-02-10 02:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_managemen`
--

CREATE TABLE `enquiry_managemen` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `percent` varchar(10) DEFAULT NULL,
  `cast_category` varchar(50) DEFAULT NULL,
  `enquery` text DEFAULT NULL,
  `source` varchar(300) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `checked_by` varchar(100) DEFAULT NULL,
  `checked_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) DEFAULT NULL,
  `attachment` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guardian_details`
--

CREATE TABLE `guardian_details` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `relationship` varchar(50) DEFAULT NULL,
  `employer` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `created_by_id` varchar(15) DEFAULT NULL,
  `created_name` varchar(100) DEFAULT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `student_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_data`
--

CREATE TABLE `master_data` (
  `id` int(11) NOT NULL,
  `gen_emp_id` varchar(100) DEFAULT NULL,
  `date_gen` datetime NOT NULL DEFAULT current_timestamp(),
  `Type_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_data`
--

INSERT INTO `master_data` (`id`, `gen_emp_id`, `date_gen`, `Type_Name`) VALUES
(1, '84', '2020-10-19 13:46:21', 'Staff'),
(2, '976', '2020-10-27 14:04:06', 'Student'),
(3, '135', '2020-11-06 02:55:59', 'Subject'),
(4, '1', '2020-11-06 02:55:59', 'Course'),
(5, '1', '2020-11-06 02:56:25', 'Course_Type'),
(6, '22', '2021-02-02 02:58:25', 'Requisition'),
(7, '20', '2021-02-02 02:58:25', 'College_Fee_receipt'),
(8, '12', '2021-02-17 10:20:53', 'Vendor');

-- --------------------------------------------------------

--
-- Table structure for table `mj_staff`
--

CREATE TABLE `mj_staff` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `firstname` varchar(150) CHARACTER SET utf16 DEFAULT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` varchar(350) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `contact2` varchar(15) DEFAULT NULL,
  `address2` varchar(500) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `pincode` varchar(8) DEFAULT NULL,
  `admin_role` varchar(20) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `live_status` varchar(10) DEFAULT 'Inactive',
  `create_by` varchar(50) DEFAULT NULL,
  `profile_active` varchar(20) NOT NULL DEFAULT 'Blocked',
  `ctype` varchar(50) DEFAULT 'Staff',
  `designation` varchar(255) DEFAULT NULL,
  `college` varchar(200) DEFAULT NULL,
  `staff_type` varchar(100) NOT NULL DEFAULT 'Assistant Professor',
  `courtesy` varchar(30) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mj_staff`
--

INSERT INTO `mj_staff` (`id`, `emp_id`, `password`, `firstname`, `middlename`, `lastname`, `gender`, `dob`, `email`, `address`, `mobile`, `contact2`, `address2`, `state`, `city`, `country`, `pincode`, `admin_role`, `photo`, `created_at`, `live_status`, `create_by`, `profile_active`, `ctype`, `designation`, `college`, `staff_type`, `courtesy`, `qualification`, `experience`, `specialization`) VALUES
(33, 'MJGEAdmin', '123', 'Main', 'Admin', 'Profile', 'Male', '2020-11-07', 'mjsoftwaredeveloper@gmail.com', '3323ff', '1234567890', '5543453', 'rwer44', 'Goa', '2344', 'India', '233222', NULL, NULL, NULL, 'Inactive', 'M30', 'Active', 'Admin', 'Test', 'M J College', 'Assistant Professor', 'Dr.', '', '', ''),
(48, 'MJGE46', '123', 'Archana', '', 'Tripathi', 'Female', '1981-09-04', 'archanavin2226@gmail.com', '', '7987006430', '9770378896', '', 'Chhattisgarh', 'Durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Assistant professor', 'M J College Department of Education', 'Assistant Professor', 'Ms.', 'Ph .D persuing', '10 years', 'Education'),
(51, 'MJGE49', '_2!04^$1', 'Rashmi', '', 'Suryavanshi', 'Female', '1993-06-01', 'rinisuryavanshi.rs@gmail.com', '', '8319851652', '7240845632', '', 'Chhattisgarh', 'Bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Lecturer', 'M J College (Pharmacy)', 'Assistant Professor', 'Ms.', 'M.pharmacy', '1year', 'Pharmacology'),
(52, 'MJGE50', '!5924#^_', 'P M AWANTIKA', '', '', 'Female', '1994-12-28', 'awantika800@gmail.com', '', '7974141924', '7748080614', '', 'Chhattisgarh', 'Bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'ASST PROFESSOR', 'M J College', 'Assistant Professor', 'Ms.', 'BE', '3 YEAR', 'COMPUTER SCIENCE'),
(53, 'MJGE51', '86134^5@', 'Rajani', '', 'Kumari', 'Female', '1996-07-16', 'rajani.kumari.1607@gmail.com', '', '7415301485', '8817481066', '', 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Assistant proffessor', 'M J College', 'Assistant Professor', 'Ms.', 'B.Sc.(cs),M.Sc.(Maths),B.Ed.', '2 year', 'Maths'),
(54, 'MJGE52', '_!904^81', 'Swati', '', 'Dubey', 'Female', '1992-11-02', 'swatidubey211@gmail.com', '', '8817627661', 'undefined', '', 'Chhattisgarh', 'Sarsiwa', 'India', '493559', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Assistant Professor', 'M J College (Pharmacy)', 'Assistant Professor', 'Ms.', 'M.Pharmacy', '1', 'Pharmaceutics'),
(55, 'MJGE53', 'UMESHMJGE', 'Umesh', 'Kumar', 'Naktode', 'Male', '1997-02-14', 'umeshjairamnaktode@gmail.com', '', '8109564933', 'undefined', '', 'Chhattisgarh', 'durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Lecturer', 'M J College (Pharmacy)', 'Assistant Professor', 'Mr.', 'B. Pharmacy', '1 year', 'Pharmacognosy'),
(56, 'MJGE54', '#37@$01_', 'Varsha', '', 'Sahu', 'Female', '1994-08-06', 'varshasahu187@gmail.com', '', '8109889725', 'undefined', '', 'Chhattisgarh', 'Durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Assistant professor', 'M J College (Pharmacy)', 'Assistant Professor', 'Ms.', 'M.pharm', '1 year', 'Pharmaceutics'),
(57, 'MJGE55', '257641@0', 'Pankaj', 'Kumar', 'Sahu', 'Male', '1995-08-01', 'pankajsahu1995@gmail.com', '', '8305024890', 'undefined', '', 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Assistant professor', 'M J College (Pharmacy)', 'Assistant Professor', 'Mr.', 'M.pharmacy', '1', 'Pharmaceuticas'),
(59, 'MJGE57', '17_$5!46', 'Daniel', '', 'Tamilselvan', 'Male', '1985-10-06', 'tamilselvan.daniel@gmail.com', '', '9952125557', 'undefined', '', 'Chhattisgarh', 'Durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Associate professor', 'M J College of Nursing', 'Associate Assistant Professor', 'Mr.', NULL, NULL, NULL),
(60, 'MJGE58', '@_0^!7#6', 'Kannammal', 'Kannammal', 'C', 'Female', '1975-06-15', 'kansbala@gmail.com', '', '9406393164', 'undefined', '', 'Chhattisgarh', 'Durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Principal', 'M J College of Nursing', 'Associate Assistant Professor', 'Mrs.', NULL, NULL, NULL),
(61, 'MJGE59', '!473@081', 'Siji', '', 'Thomas', 'Female', '1977-03-22', 'siji.thomas5@gmail.com', '', '9131279038', '7587116508', '', 'Chhattisgarh', 'Durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Vice principal', 'M J College of Nursing', 'Associate Assistant Professor', 'Mrs.', NULL, NULL, NULL),
(62, 'MJGE60', '^71$305#', 'Purnima', 'Amit', 'Das', 'Female', '1986-08-06', 'purnimadad2809@gmail.com', '', '7415344798', '7415344798', '', 'Chhattisgarh', 'Bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Assistant professor', 'M J College of Nursing', 'Assistant Professor', 'Mrs.', NULL, NULL, NULL),
(63, 'MJGE61', 'gayatrigautam', 'Gayatri', '', 'Gautam', 'Female', '1977-07-05', 'gayatrisoni507@gmail.com', '', '9926145748', '9340512930', '', 'Chhattisgarh', 'Bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Assistant professor', 'M J College Department of Education', 'Assistant Professor', 'Mrs.', 'PhD', '20yrs', 'Education'),
(64, 'MJGE62', '473!9@5$', 'Vinita', '', 'Verma', 'Female', '1996-10-27', 'vermavinita370@gmail.com', '', '8319101131', '7587054308', '', 'Chhattisgarh', 'Bhilai-3', 'India', '491107', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Lecturer', 'M J College (Pharmacy)', 'Assistant Professor', 'Ms.', 'B. Pharmacy', '1 year', 'Pharmacy'),
(65, 'MJGE63', '0@!$76_5', 'Neha', '', 'Mahajan', 'Female', '1971-12-06', 'nehamahajan4444@gmail.com', '', '9407780605', '8839553225', '', 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', '', 'Blocked', 'Staff', 'Asst. prof.', 'M J College', 'Assistant Professor', 'Mrs.', NULL, NULL, NULL),
(66, 'MJGE64', '@alka990', 'ALKA', '', 'SAHU', 'Female', '1994-10-26', 'alkasahu994@gmail.com', '', '6260753590', '9770379847', '', 'Chhattisgarh', 'Bhilai', 'India', '490024', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Assistance professor in CS department', 'M J College Department of Education', 'Assistant Professor', 'Ms.', NULL, NULL, NULL),
(67, 'MJGE65', '36280@4_', 'Jyoti', 'Prakash', 'Kanoje', 'Male', '1969-11-14', 'jpkanoje@gmail.com', '', '6260230515', '9617768400', '', 'Chhattisgarh', 'Bhilai', 'India', '490009', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Asst.PROFESSOR', 'M J College Department of Education', 'Assistant Professor', 'Dr.', 'B.Sc, MA ,MEd, Ph.D', '17 year', 'Pedagogy of Mathematics, Philosophy'),
(68, 'MJGE66', '834_91^7', 'Manju', '', 'Sahu', 'Female', '1975-12-13', 'manjusahu769@gmail.com', 'Mahavir Colony Durg', '7999563981', '7697320028', 'Mahavir Colony Durg', 'Chhattisgarh', 'Durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Assistant Professor', 'M J College Department of Education', 'Assistant Professor', 'Mrs.', NULL, NULL, NULL),
(69, 'MJGE67', 'deepak1964', 'Deepak', 'Ranjan', 'Das', 'Male', '2021-01-01', 'teacher.sundaycampus@gmail.com', '332, Model Town,', '9098830359', '9039869416', '332, Model Town,', 'Chhattisgarh', 'Bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Assistant Professor', 'M J College', 'Assistant Professor', 'Mr.', NULL, NULL, NULL),
(70, 'MJGE68', 'shakuntala', 'SHAKUNTALA', 'JALKARE', '', 'Female', '1978-02-20', 'shakuntala25jalkare@gmail.com', 'M.J. COLLEGE BHILAI', '9907413050', '9907413050', 'M.J. COLLEGE BHILAI', 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Asst professor', 'M J College Department of Education', 'Assistant Professor', 'Ms.', 'M.ed', '10', 'Education'),
(71, 'MJGE69', 'urmila123', 'Urmila Yadav', '', 'Yadav', 'Female', '1969-02-08', 'urmilayadav8269@gmail.com', 'M.j.College', '8319373119', '8319373119', 'M.j.College', 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Assignment professor', 'M J College Department of Education', 'Assistant Professor', 'Mrs.', NULL, NULL, NULL),
(72, 'MJGE70', 'mamta', 'Mamta', 'S', 'Rahul', 'Female', '1979-09-05', 'mamta.srahul@gmail.com', '502/A st. 07 Dixit colony nehru nagr bhilai', '9826577718', '8370008987', '502/A st. 07 Dixit colony nehru nagr bhilai', 'Chhattisgarh', 'Bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Asst. Professor', 'M J College Department of Education', 'Assistant Professor', 'Mrs.', NULL, NULL, NULL),
(73, 'MJGE71', '12345678', 'Sarita', '', 'Choubey', 'Female', '1970-03-01', 'saritachoubey1@gmail.com', 'Chouhan town', '9893536779', 'undefined', 'Chouhan town', 'Chhattisgarh', 'Durg bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Asst. Professor', 'M J College Department of Education', 'Assistant Professor', 'Mrs.', NULL, NULL, NULL),
(74, 'MJGE72', 'neha123', 'Neha', '', 'Mahajan', 'Female', '1971-12-06', 'nehamahajan4444@gmail.com', 'H.no.904 shanti nagar', '8839553225', '9407780605', 'H.no.904 shanti nagar', 'Chhattisgarh', 'Bhilai nagar', 'India', '490023', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Asst.prof.', 'M J College Department of Education', 'Assistant Professor', 'Mrs.', NULL, NULL, NULL),
(76, 'MJGE74', '6!9@_$51', 'Anjali', '', 'Wahane', 'Female', '1996-11-14', 'anjali.wahane14@gmail.com', 'Kohka Road, Infront of ablaze Institute Bhilai', '8871213391', 'undefined', 'Kohka Road, Infront of ablaze Institute Bhilai', 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Lecturer', 'M J College (Pharmacy)', 'Assistant Professor', 'Ms.', NULL, NULL, NULL),
(77, 'MJGE75', '4@89_307', 'Chandrika', '', 'Ahirwal', 'Female', '1986-08-23', 'cahirwal23@gmail.com', 'Plot no- 30/8 Risali', '6260619079', 'undefined', 'Plot no- 30/8 Risali', 'Chhattisgarh', 'Bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Assistant professor', 'M J College (Pharmacy)', 'Assistant Professor', 'Mrs.', 'M PHARMA', 'None', 'Pharmacology'),
(79, 'MJGE77', '3507^@$4', 'Sewak', 'Ram', 'Dewangan', 'Male', '1985-09-04', 'skd8822@gmail.com', 'Jamul', '9713008822', 'undefined', 'Jamul', 'Chhattisgarh', 'Bhilai', 'India', '490024', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Lab assistant', 'M J College', 'Assistant Professor', 'Mr.', NULL, NULL, NULL),
(80, 'MJGE78', '@0863_1$', 'Dipti', '', 'Mishra', 'Female', '1985-07-27', 'dipti271985@gmail.com', 'Borsi,  Durg', '9340237687', 'undefined', 'Borsi,  Durg', 'Chhattisgarh', 'Durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', '', 'Active', 'Staff', 'Assistant Professor', 'M J College', 'Assistant Professor', 'Mrs.', 'B.com, MBA (FINANCE), PRSUING B.ED', '6 months in Professional Accounting Academy,  1 year Bhilai Commerce Academy,  2 year in India It School', 'MANAGEMENT'),
(81, 'MJGE79', '_!^35879', 'Dr. Anil', 'Kumar', 'Choubey', 'Male', '1976-03-06', 'anilchoubey1@rediffmail.com', 'Plot 59, Street-1, Model Town, Bhilai', '9893390201', 'undefined', 'undefined', 'Chhattisgarh', 'Bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', 'MJGEAdmin', 'Active', 'Staff', NULL, NULL, 'Assistant Professor', NULL, NULL, NULL, NULL),
(82, 'MJGE80', '0@3869^!', 'okok', 'okok', 'okok', 'Male', '2021-01-08', 'okok@gmail.com', 'okok', '8123456789', '8564259852', 'okok', 'Assam', 'okok', 'India', '12345', NULL, NULL, NULL, 'Inactive', '', 'Blocked', 'Staff', 'okok', 'M J College', 'Assistant Professor', 'Mrs.', NULL, NULL, NULL),
(83, 'MJGE81', '60_8^1@9', 'VIKASH', 'undefined', 'SAIJPAL', 'Male', '1986-07-09', 'vikashsaijpal@ymail.com', 'Plot no 4, pole no 44/1', '9752911379', '8319981830', 'Baikunthdham sharda para camp -2, bhilai', 'Chhattisgarh', 'BHILAI', 'India', '490001', NULL, NULL, NULL, 'Inactive', 'MJGEAdmin', 'Active', 'Staff', NULL, NULL, 'Assistant Professor', NULL, NULL, NULL, NULL),
(84, 'MJGE82', '54321', 'sandsx', 'sandsx', 'sandsx', 'Male', '2021-01-26', 'sandsx@gmail.com', 'augue', '8888888', '8888888', 'augue', 'Assam', 'wkwkwkw', 'India', '5959595', NULL, NULL, NULL, 'Inactive', '', 'Blocked', 'Staff', 'laki', 'M J College Department of Education', 'Associate Assistant Professor', 'Mr.', NULL, NULL, NULL),
(85, 'MJGE83', '54321', 'A-Principal', 'Pepek', 'Pepekers', 'Male', '2021-01-03', 'asw@gmail.com', 'Whwhehehehwuwi', '4848484', '19494919', 'Whwhehehehwuwi', 'Assam', 'Australia', 'India', '12805', NULL, NULL, NULL, 'Inactive', '', 'Blocked', 'Principal', 'Hahahw', 'M J College', 'Assistant Professor', 'Mr.', NULL, NULL, NULL),
(86, 'MJGE84', '54321', 'A-Person', 'TEST', '', 'Male', '1992-06-17', 'lds_support@ldsventures.com', 'jskkwn', '129737787839891', 'null', 'jskkwn', 'Punjab', 'mombay', 'India', '9092090', NULL, NULL, NULL, 'Inactive', '', 'Blocked', 'Account', 'heker', 'M J College Department of Education', 'Assistant Professor', 'Mr.', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mj_student`
--

CREATE TABLE `mj_student` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `firstname` varchar(150) CHARACTER SET utf16 DEFAULT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `father` varchar(150) DEFAULT NULL,
  `mother` varchar(150) DEFAULT NULL,
  `caste_category` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` varchar(350) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `contact2` varchar(15) DEFAULT NULL,
  `address2` varchar(500) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `pincode` varchar(8) DEFAULT NULL,
  `admin_role` varchar(20) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `live_status` varchar(10) DEFAULT 'Inactive',
  `create_by` varchar(50) DEFAULT NULL,
  `admission_status` varchar(5) DEFAULT '0',
  `roll_no` varchar(50) DEFAULT NULL,
  `college_id` varchar(100) DEFAULT NULL,
  `college_name` varchar(255) DEFAULT NULL,
  `percentile` int(10) DEFAULT NULL,
  `enquiry` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `recall` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mj_student`
--

INSERT INTO `mj_student` (`id`, `emp_id`, `password`, `firstname`, `middlename`, `lastname`, `gender`, `dob`, `father`, `mother`, `caste_category`, `email`, `address`, `mobile`, `contact2`, `address2`, `state`, `city`, `country`, `pincode`, `admin_role`, `photo`, `created_at`, `live_status`, `create_by`, `admission_status`, `roll_no`, `college_id`, `college_name`, `percentile`, `enquiry`, `remarks`, `recall`) VALUES
(185, 'MJGE201', 'MJ417652', 'Hitesh', '', 'Verma', 'Male', '2020-12-15', 'rajulal', 'puniya', 'General', 'hv4762194@gmail.com', 'dilippur', '+1918305946814', NULL, NULL, 'Andhra Pradesh', 'dilippur', 'India', '491881', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(189, 'MJGE205', 'MJ890453', 'Takeshwar', 'kumar', 'Sahu', 'Male', '2002-01-31', 'chovaram sahu', 'laxmi bai sahu', 'General', 'takeshwerkumar4@gmail.com', 'kumharkhan', '+1919131829254', NULL, NULL, 'Chhattisgarh', 'balod', 'India', '491227', NULL, NULL, NULL, 'Inactive', NULL, '1', '45', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(196, 'MJGE212', 'MJ835461', 'Om', 'prakash', 'painkra', 'Male', '2001-02-13', 'sabarsai painkra', 'poonm painkra', 'General', 'om2355066@gmail.com', 'turtura lailunga raigarh', '+919174338305', NULL, NULL, 'Chhattisgarh', 'lailunga raigarh', 'India', '496113', NULL, NULL, NULL, 'Inactive', NULL, '1', '78', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(197, 'MJGE213', 'MJ416572', 'Jyoti ', 'chhannulal', 'Songerva', 'Female', '2002-11-20', 'chhannulal songerva', 'omin bai songerva', 'OBC', 'songervajyoti@gmail.com', 'kuhikhurd', '+7879919827', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491558', NULL, NULL, NULL, 'Inactive', NULL, '1', '03', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(198, 'MJGE214', 'MJ862517', 'mahendra ', '', 'sahu', 'Male', '2003-06-27', 'Tilakram sahu', 'shyambai sahu', 'General', 'sahumahendra245@gmai.com', 'harangar ', '6266403644', NULL, NULL, 'Chhattisgarh', 'pakhanjore', 'India', '494771', NULL, NULL, NULL, 'Inactive', NULL, '1', '16', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(199, 'MJGE215', 'MJ461528', 'Anubhav', '', 'Hirwani', 'Male', '2003-03-05', 'Clintan Hirwani', 'Seema Hirwani', 'General', 'anubhavhirwani123@gmail.com', 'Balodgahan', '6261017068', NULL, NULL, 'Chhattisgarh', 'Near Dhamtari', 'India', '491227', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-053', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(202, 'MJGE218', 'MJ946580', 'Kiran', '', 'Netam', 'Female', '2003-05-09', 'jagat ram Netam', 'Sharda Netam', 'ST', 'kirannetam620@gmail.com', 'belgaon dhanora', '+1917987362937', NULL, NULL, 'Chandigarh', 'kondagaon', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '35', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(204, 'MJGE220', 'MJ296451', 'Mohit', '', 'Ram', 'Male', '2002-07-06', 'Ishwar Ram', 'Rajkumari ', 'OBC', 'mohitchandrakar671122@gmail.com', 'Village-Agari Khurd District-Bemetara Chhattisgarh', '+919174614411', NULL, NULL, 'Chhattisgarh', 'Bemetara', 'India', '491335', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-007', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(220, 'MJGE236', 'MJ356918', 'Chandrashekhar', '', 'janghel', 'Male', '2020-12-02', 'bhagirathi janghel', 'kanteebai janghel', 'OBC', 'chandu12345janghel@gmail.com', 'thandhar', '+1919301701629', NULL, NULL, 'Chhattisgarh', 'rajnandgoun', 'India', '491888', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024 020', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(221, 'MJGE237', 'MJ260459', 'Takeshwar', 'kumar', 'Sahu', 'Male', '2002-01-31', 'chovaram sahu', 'laxmi bai sahu', 'General', 'takeshwerkumar4@gmail.com', 'kumharkhan', '+1919131829254', NULL, NULL, 'Chhattisgarh', 'balod', 'India', '491227', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-045', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(225, 'MJGE241', 'MJ037612', 'Bunty ', 'Basu', '', 'Male', '2020-12-16', 'Mr. Ganga Hirwani ', 'kirti Hirwani ', 'General', 'drbuntyhirwani17@gmail.com', 'Nawagarh', '9644556400', NULL, NULL, 'Chhattisgarh', 'Bemetara ', 'India', '491337', NULL, NULL, NULL, 'Inactive', NULL, '1', '491335', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(226, 'MJGE242', 'MJ308471', 'Gayatri', '', 'Dashriya', 'Female', '1999-09-23', 'gyandas dashriya', 'santoshi dashriya', 'OBC', 'dashriyagayatri@gmail.com', 'chichola', '9098101540', NULL, NULL, 'Chhattisgarh', 'khairagarh', 'India', '491881', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-086', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(241, 'MJGE257', 'MJ410937', 'Manoranjan', '', 'Faliya', 'Male', '2020-12-16', 'Sonatan Faliya', 'Namita Faliya', 'General', 'yash.faliya78@gmil.com', 'p.v.57 kalinagar post kapsi dist.kanker C.G.', '7746858545', NULL, NULL, 'Andhra Pradesh', 'Kanker', 'India', '494771', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119031', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(245, 'MJGE261', 'MJ627580', 'rohit', '', 'netam', 'Male', '2000-08-07', 'RAM NETAM', 'GEETA NETAM', 'General', 'rohitnetam315@gmail.com', 'mandokdehi,post-kopra,Baderajpur,mandokikhargaon,kondagaon,chattisgarh', '+61919770557504', NULL, NULL, 'Chhattisgarh', 'pharsgaon', 'India', '494347', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119046', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(255, 'MJGE271', 'MJ264975', 'Hem', 'Koshle', 'kosle', 'Male', '2020-12-16', 'Ubarandas koshle', 'Indirabai', 'General', 'hemkumarkosle387@gmail.com', 'Thuhadih', '6263821652', NULL, NULL, 'Andhra Pradesh', 'Kabirdham', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-030', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(258, 'MJGE274', 'MJ072965', 'Pravin', 'pravin sahu ', 'Pravin Sahu', 'Male', '2020-12-16', 'Narayan  Sahu', 'lekhani Sahu', 'General', 'pravinsahu232@gmail.com', 'bhawanipur baloda bajar bhatapara ', '8120320727', NULL, NULL, 'Andhra Pradesh', 'baloda bajar', 'India', '493229', NULL, NULL, NULL, 'Inactive', NULL, '1', 'pravinsahu232@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(260, 'MJGE276', 'MJ840136', 'Jyoti ', 'songerva', 'songerva', 'Female', '2002-11-20', 'chhannulal songerva', 'omin bai songerva ', 'OBC', 'songervajyoti@gmail.com', 'makan number112,ward number13 kuhikhurd Rajnandgaon chhattisgarh 491558', '7879919827', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491558', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH 2024_003', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(273, 'MJGE289', 'MJ495706', 'YASHVANT', '', '', 'Male', '2000-05-20', 'JEETRAM SAHU', 'FIRTEEN BAI', 'OBC', 'yashsahu1322.com@gmail.com', 'NAWAGARH', '917067172632', NULL, NULL, 'Chhattisgarh', 'NAWAGARH', 'India', '495557', NULL, NULL, NULL, 'Inactive', NULL, '1', 'yashsahu1322.com@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(281, 'MJGE297', 'MJ012348', 'Vaishnavi', '', 'sahu', 'Female', '2020-12-17', 'Vaishnavi Sahu', 'Vaishnavi Sahu', 'OBC', '2001vaishnavisahu@gmail.com', 'chourshiya colony mathpurena', '7024276955', NULL, NULL, 'Chhattisgarh', 'raipur', 'India', '494553', NULL, NULL, NULL, 'Inactive', NULL, '1', '2001vaishnavisahu@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(284, 'MJGE300', 'MJ345179', 'sahil', '', 'kissy', 'Male', '2001-09-21', 'ashok kissy', 'harjinder kaur', 'General', 'sahil.kissy264@gmail.com', 'smc -03 vaishali nagar bhilai', '7879544450', NULL, NULL, 'Andhra Pradesh', 'chhatisgarh', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'sahil.kissy264@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(286, 'MJGE302', 'MJ450372', 'SAPANA', 'singh', 'SAPANA SINGH', 'Male', '2020-12-17', 'SAPANA SINGH', 'SAPANA SINGH', 'General', 'sapanasingh101994@gmail.com', 'sudanipur kalan hanumangunj ', '7905828964', NULL, NULL, 'Uttar Pradesh', 'paryagraj ', 'India', '221505', NULL, NULL, NULL, 'Inactive', NULL, '1', 'sapanasingh101994@gmail.com', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(288, 'MJGE304', 'MJ687315', 'MADHULIKA', '', 'JOHN', 'Female', '1973-10-21', 'AKHIL CHAND', 'SULOCHANA JOHN', 'General', 'joshuva21110@gmail.com', 'MOHBHATTHA ROAD W.NO.07 BEMETARA', '8349206675', NULL, NULL, 'Chhattisgarh', 'BEMETARA', 'India', '491335', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340129012', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(289, 'MJGE305', 'MJ571208', 'AJEET ', '', 'KUMAR', 'Male', '1993-05-06', 'Chhanguri prasad singh', 'kanchanmala devi', 'General', 'ak6518447@gmail.com', 'pansalwa beldaur khagaria', '+919534707393', NULL, NULL, 'Bihar', 'Khagaria', 'India', '852161', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340129001', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(291, 'MJGE307', 'MJ506348', 'Nisha', '', 'Nisha Shrivastava', 'Female', '1992-09-27', 'Abhishek Shrivastava', 'Uma Shrivastava', 'General', 's.nisha.abhi@gmail.com', '22/4, Radhika Nagar', '9827524546', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029107', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(292, 'MJGE308', 'MJ361502', 'Vaibhav', '', 'jha', 'Male', '2020-12-17', 'Vinod kumar jha', 'sindhu jha', 'General', 'jhavaibhav616@gmail.com', 'Vinoba nagar junwani', '9131221958', NULL, NULL, 'Andhra Pradesh', 'Bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '93390040371', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(293, 'MJGE309', 'MJ472895', 'urmila ', '', 'kushwaha', 'Female', '2020-07-22', 'shri. sadanand kushwaha', 'smt. anju kushwaha', 'OBC', 'urmilakushwaha1822@gmail.com', 'vrinda nagar', '6261822412', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029181', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(295, 'MJGE311', 'MJ839046', 'Kameshwari verma', 'chhoti ', 'verma', 'Female', '2020-12-17', 'chandrakumar', 'chitrekha', 'OBC', 'chhotiverma08@gmail.com', 'khairagarh,', '9131780779', NULL, NULL, 'Chandigarh', 'chhukhdan', 'India', '49188', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029059', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(296, 'MJGE312', 'MJ941762', 'Murtima', '', 'Vaishnav', 'Female', '1995-05-08', 'bihari das vaishnav', 'chamelibai vaishnav', 'OBC', 'vaishnavmurtima@gmail.com', 'post+grm+ tahsil+ mohla', '+1916263879300', NULL, NULL, 'Chhattisgarh', 'mohla', 'India', '491666', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340129014', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(298, 'MJGE314', 'MJ683514', 'Poonam', '', 'Singh', 'Female', '1983-06-10', 'Umesh Chandra Singh', 'Malti Devi', 'OBC', 'upoonamsingh1984@gmail.com', 'B1/107', '9630903096', NULL, NULL, 'Madhya Pradesh', 'Malanjkhand', 'India', '481116', NULL, NULL, NULL, 'Inactive', NULL, '1', '256', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(299, 'MJGE315', 'MJ869074', 'Pooja', '', '', 'Female', '1997-02-23', 'Bramhanand', 'Uma Bai', 'OBC', 'ps3644977@gmail.com', 'vill+post - Santra ', '7869460035', NULL, NULL, 'Chhattisgarh', 'Bhilai ', 'India', '491111', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029115 ', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(300, 'MJGE316', 'MJ150394', 'NEMIN', 'DESHMUKH', '', 'Male', '1994-03-14', 'PUSHAN DESHMUKH', 'SULEKHA DESHMUKH', 'General', 'nemin4131@gmail.com', 'KOHKA; PURANI BASTI KOHKA', '9340517425', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029103', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(302, 'MJGE318', 'MJ174826', 'Rashi', '', 'Rashi Singh', 'Female', '2020-12-17', 'Rashi Singh', 'Rashi Singh', 'General', 'rashisingh3849@gmail.com', 'sunder vihar colony phase2 ward 15', '919301669736', NULL, NULL, 'Chhattisgarh', 'drug', 'India', '490024', NULL, NULL, NULL, 'Inactive', NULL, '1', 'rashisingh3849@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(304, 'MJGE320', 'MJ342581', 'Mahendra', 'Kumar', 'Baghel', 'Male', '1993-07-15', 'Dhani ram', 'Pila bai', 'General', 'mahendrabaghel1507@gmail.com', 'bangachar', '+918839358067', NULL, NULL, 'Chhattisgarh', 'Kanker', 'India', '494669', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029074', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(305, 'MJGE321', 'MJ305724', 'Reeta', '', 'Yadav', 'Female', '2020-06-03', 'Jagdev Ram Yadav', 'Asari Yadav', 'OBC', 'reetayadav361994@gmail.com', 'muktipara fundurdihari ambikapur, surguja, c.g.', '+1918878996106', NULL, NULL, 'Chhattisgarh', 'ambikapur', 'India', '497001', NULL, NULL, NULL, 'Inactive', NULL, '1', '031120', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(308, 'MJGE324', 'MJ237059', 'savitri ', '', 'sinha', 'Female', '2001-04-23', 'Narsingh sinha', 'Hemin bai Sinha', 'OBC', 'prity.201920@gmail.com', 'araya nagar kohka bhilai', '6265133795', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'HU/340/18004033', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(315, 'MJGE331', 'MJ438102', 'Shubham', '', 'Ojha', 'Male', '1999-05-24', 'Lt. Santosh Ojha', 'Punam Ojha', 'General', 'ojhas7210@gmail.com', 'Baikunth Nagar, Camp 2, Bhilai', '9340402701', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029165', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(316, 'MJGE332', 'MJ735264', 'pascal', '', 'tigga', 'Male', '2020-12-19', 'vineshwar tigga', 'Salomi', 'General', 'pascaltigga333@gmail.com', 'khondh', '+917489890181', NULL, NULL, 'Andhra Pradesh', 'Surajpur', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '50', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(317, 'MJGE333', 'MJ587312', 'Renu', '', 'kumari', 'Female', '2020-12-19', 'Ram suresh giri', 'chandrakala devi', 'General', 'renu007giri@gmail.com', 'Raghopur chaturang,Bidupur,vaishali', '9631100539', NULL, NULL, 'Bihar', 'Hajipur', 'India', '844503', NULL, NULL, NULL, 'Inactive', NULL, '1', '25', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(320, 'MJGE336', 'MJ493280', 'kritika', '', 'sinha', 'Female', '1998-05-29', 'Mritunjay sinha', 'pratibha sinha', 'General', 'kritikasinha2223@gmail.com', 'ambikapur', '7000911695', NULL, NULL, 'Chhattisgarh', 'ambikapur ', 'India', '497001', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029066', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(323, 'MJGE339', 'MJ254378', 'samit ', 'kumar ', 'barik', 'Male', '1992-05-01', 'ravishankar barik ', 'shailsuta barik', 'OBC', 'samitbarik16@gmail.com', 'basna ', '8770784771', NULL, NULL, 'Chhattisgarh', 'basna ', 'India', '493558', NULL, NULL, NULL, 'Inactive', NULL, '1', '12082020', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(327, 'MJGE343', 'MJ760153', 'Ritu', '', 'Ritu Kose', 'Female', '1990-12-26', 'Ritu Kose', 'Ritu Kose', 'OBC', 'ritu.kose@gmail.com', 'QR-18/Estreet-6sector4', '7828680974', NULL, NULL, 'Chhattisgarh', 'Bhilai ', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', 'ritu.kose@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(328, 'MJGE344', 'MJ145279', 'Radhika', 'Ojha', '', 'Female', '1978-08-25', 'Jitendra kumar ojha', 'Munnaka Devi', 'General', 'radhikaojharsss@gmail.com', 'Ojhawali,Barahalganj,Gorakhpur', '9170752759', NULL, NULL, 'Uttar Pradesh', 'Gorakhpur', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '328542', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(342, 'MJGE358', 'MJ043167', 'Priyanka', '', 'Tiwari ', 'Female', '2020-12-23', 'Suresh Tiwari ', 'Usha Tiwari', 'General', 'tiwaripriya394@gmail.com', 'Near Urja Park, Kawardha', '8319976109', NULL, NULL, 'Andhra Pradesh', 'Kawardha', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029130', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(343, 'MJGE359', 'MJ957604', 'Ritesh ', '', 'Patel ', 'Male', '2020-12-23', 'Bodhram Patel ', 'Narmada Patel ', 'General', 'riteshpatel0078@gmail.com', 'Village - Jagat,Post - Bhukel', '7987540060', NULL, NULL, 'Chhattisgarh', 'Basna', 'India', '493554', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029144', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(344, 'MJGE360', 'MJ235871', 'Ritesh ', '', 'Patel ', 'Male', '2020-12-23', 'Bodhram Patel ', 'Narmada Patel ', 'General', 'riteshpatel0078@gmail.com', 'Village - Jagat,Post - Bhukel', '7987540060', NULL, NULL, 'Chhattisgarh', 'Basna', 'India', '493554', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029144', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(345, 'MJGE361', 'MJ053876', 'Ritesh ', '', 'Patel ', 'Male', '2020-12-23', 'Bodhram Patel ', 'Narmada Patel ', 'General', 'riteshpatel0078@gmail.com', 'Village - Jagat,Post - Bhukel', '7987540060', NULL, NULL, 'Chhattisgarh', 'Basna', 'India', '493554', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029144', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(346, 'MJGE362', 'MJ975680', 'Ritesh ', '', 'Patel ', 'Male', '2020-12-23', 'Bodhram Patel ', 'Narmada Patel ', 'General', 'riteshpatel0078@gmail.com', 'Village - Jagat,Post - Bhukel', '7987540060', NULL, NULL, 'Chhattisgarh', 'Basna', 'India', '493554', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029144', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(347, 'MJGE363', 'MJ286174', 'Ritesh ', '', 'Patel ', 'Male', '2020-12-23', 'Bodhram Patel ', 'Narmada Patel ', 'General', 'riteshpatel0078@gmail.com', 'Village - Jagat,Post - Bhukel', '7987540060', NULL, NULL, 'Chhattisgarh', 'Basna', 'India', '493554', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029144', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(353, 'MJGE369', 'MJ279804', 'Anju ', '', 'gupta', 'Female', '1996-06-18', 'vijay kumar gupta', 'shivdulari gupta', 'General', 'anjugupta1861996@gmail.com', 'krishna nager supela ', '8427772996', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029014', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(354, 'MJGE370', 'MJ961530', 'Anju ', '', 'gupta', 'Female', '1996-06-18', 'vijay kumar gupta', 'shivdulari gupta', 'General', 'anjugupta1861996@gmail.com', 'krishna nager supela ', '8427772996', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029014', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(355, 'MJGE371', 'MJ267905', 'Anju ', '', 'gupta', 'Female', '1996-06-18', 'vijay kumar gupta', 'shivdulari gupta', 'General', 'anjugupta1861996@gmail.com', 'krishna nager supela ', '8427772996', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029014', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(356, 'MJGE372', 'MJ642350', 'Anju ', '', 'gupta', 'Female', '1996-06-18', 'vijay kumar gupta', 'shivdulari gupta', 'General', 'anjugupta1861996@gmail.com', 'krishna nager supela ', '8427772996', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029014', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(357, 'MJGE373', 'MJ950286', 'sandhya ', '', 'Maurya ', 'Female', '1997-01-03', 'Vijay Kumar Maurya ', 'Sheela Maurya ', 'General', 'sandhyamaurya1997@gmail.com', 'Maurya badi, sanatan nagar kohka bhilai', '8962359175', NULL, NULL, 'Chhattisgarh', 'bhilai ', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029155', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(358, 'MJGE374', 'MJ310598', 'sandhya ', '', 'Maurya ', 'Female', '1997-01-03', 'Vijay Kumar Maurya ', 'Sheela Maurya ', 'General', 'sandhyamaurya1997@gmail.com', 'Maurya badi, sanatan nagar kohka bhilai', '8962359175', NULL, NULL, 'Chhattisgarh', 'bhilai ', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029155', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(359, 'MJGE375', 'MJ562814', 'ARBIND ', '', 'YADAV', 'Male', '1993-03-24', 'SARYU PRASAD YADAV', 'RAJMANI DEVI', 'OBC', 'arbindpyadav05@gmail.com', 'VILL-BEGAMPRA PO MOHAMMADGANJ DIST PALAMU JHARKHAND', '9162679910', NULL, NULL, 'Jharkhand', 'RANCHI', 'India', '822120', NULL, NULL, NULL, 'Inactive', NULL, '1', '3', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(360, 'MJGE376', 'MJ629045', 'Prahlad', '', 'kumar', 'Male', '1995-01-05', 'Janardan mandal', 'Sumitra devi', 'OBC', 'kumarprahlad516@gmail.com', 'at.sirotol.amour.purnia', '+18677994730', NULL, NULL, 'Bihar', 'Purnia', 'India', '854315', NULL, NULL, NULL, 'Inactive', NULL, '1', '7201400254', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(361, 'MJGE377', 'MJ029374', 'Sandeep', 'kumar', '', 'Male', '2002-02-08', 'Bhairav Kumar Singh', 'Shakuntala devi', 'General', 'pounkariabcd@gmail.com', 'vill=pounkari', '6201383631', NULL, NULL, 'Bihar', 'banka', 'India', '813221', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(362, 'MJGE378', 'MJ405168', 'Mulendra', '', 'Nagnagene', 'Male', '2020-12-25', 'parasram', 'yshoda', 'General', 'nmulendra397@gmail.com', 'At dakwada post majgoan th.parswada dis.balaghat .M.p.', '+1918120395451', NULL, NULL, 'Andhra Pradesh', 'parswada', 'India', '481111', NULL, NULL, NULL, 'Inactive', NULL, '1', '7201400250', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(363, 'MJGE379', 'MJ856139', 'Shiv', 'Prakash', 'Das', 'Male', '1994-04-01', 'Rauwan Lal Das', 'Jayamanti Devi ', 'OBC', 'sprakas5636@gmail.com', 'baghua kola po+ps amour. ', '9572721071', NULL, NULL, 'Bihar', 'purnia', 'India', '854315', NULL, NULL, NULL, 'Inactive', NULL, '1', '7201400263', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(364, 'MJGE380', 'MJ670429', 'pasho', '8815364676', 'pasho', 'Male', '2020-11-09', 'ramratan', 'Laxmi', 'General', 'pashoverma99@gmail.com', 'guram kurloo post parpodi', '8815364676', NULL, NULL, 'Chhattisgarh', 'villige', 'India', '491331', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(365, 'MJGE381', 'MJ129406', 'pasho', '8815364676', 'pasho', 'Male', '2020-11-11', 'ramratan', 'laxmi', 'OBC', 'pashoverma99@gmail.com', 'gram kurloopost parpodi', '8815364676', NULL, NULL, 'Chhattisgarh', 'village', 'India', '491331', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(366, 'MJGE382', 'MJ241398', 'pasho', '8815364676', 'pasho', 'Female', '2020-11-11', 'ramratan', 'laxmi', 'OBC', 'pashoverma99@gmail.com', 'gram kurloopost parpodi', '8815364676', NULL, NULL, 'Chhattisgarh', 'village', 'India', '491331', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(367, 'MJGE383', 'MJ910872', 'pasho', '8815364676', 'pasho', 'Female', '2020-11-11', 'ramratan', 'laxmi', 'OBC', 'pashoverma99@gmail.com', 'gram kurloopost parpodi', '8815364676', NULL, NULL, 'Chhattisgarh', 'village', 'India', '491331', NULL, NULL, NULL, 'Inactive', NULL, '1', '54', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(368, 'MJGE384', 'MJ248573', 'pasho', '8815364676', 'pasho', 'Female', '2020-11-11', 'ramratan', 'laxmi', 'OBC', 'pashoverma99@gmail.com', 'gram kurloopost parpodi', '8815364676', NULL, NULL, 'Chhattisgarh', 'village', 'India', '491331', NULL, NULL, NULL, 'Inactive', NULL, '1', '54', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(369, 'MJGE385', 'MJ689423', 'md', 'iftekhar ', '', 'Male', '2020-05-12', 'md irfan', 'bibi samima', 'General', 'mdiftekhar309@gmail.com', 'bhagalpur', '9693834854', NULL, NULL, 'Bihar', 'bhagalpur', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '20', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(370, 'MJGE386', 'MJ679143', 'md', 'iftekhar ', '', 'Male', '2020-05-12', 'md irfan', 'bibi samima', 'General', 'mdiftekhar309@gmail.com', 'bhagalpur', '9693834854', NULL, NULL, 'Bihar', 'bhagalpur', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '20', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(371, 'MJGE387', 'MJ654839', 'md', 'iftekhar ', '', 'Male', '2020-05-12', 'md irfan', 'bibi samima', 'General', 'mdiftekhar309@gmail.com', 'bhagalpur', '9693834854', NULL, NULL, 'Bihar', 'bhagalpur', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '20', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(372, 'MJGE388', 'MJ314859', 'md', 'iftekhar ', '', 'Male', '2020-05-12', 'md irfan', 'bibi samima', 'General', 'mdiftekhar309@gmail.com', 'palwa sanhoula bhagalpur bihar', '9693834854', NULL, NULL, 'Bihar', 'bhagalpur', 'India', '813225', NULL, NULL, NULL, 'Inactive', NULL, '1', '20', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(373, 'MJGE389', 'MJ981563', 'md ', 'iftekhar ', '', 'Male', '2020-05-15', 'md irfan', 'bibi samima ', 'General', 'mdiftekhar309@gmail.com', 'palwa sanhoulabhagalpurbihar', '9693834854', NULL, NULL, 'Bihar', 'bhagalpur ', 'India', '813225', NULL, NULL, NULL, 'Inactive', NULL, '1', '020', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(374, 'MJGE390', 'MJ759304', 'md ', 'iftekhar ', '', 'Male', '2020-05-15', 'md irfan', 'bibi samima ', 'General', 'mdiftekhar309@gmail.com', 'palwa sanhoulabhagalpurbihar', '9693834854', NULL, NULL, 'Bihar', 'bhagalpur ', 'India', '813225', NULL, NULL, NULL, 'Inactive', NULL, '1', '020', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(375, 'MJGE391', 'MJ260375', 'sohini', '', ' sharma', 'Female', '1977-05-17', ' ranjan sharma', 'Krishan devi', 'General', 'sohinisharma21@gmail.com', '80 chwakandi kydganj pragra', '919369552759', NULL, NULL, 'Uttar Pradesh', 'pragraj', 'India', '211003', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(376, 'MJGE392', 'MJ403795', 'sohini', '', ' sharma', 'Female', '1977-05-17', ' ranjan sharma', 'Krishan devi', 'General', 'sohinisharma21@gmail.com', '80 chwakandi kydganj pragra', '919369552759', NULL, NULL, 'Uttar Pradesh', 'pragraj', 'India', '211003', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(377, 'MJGE393', 'MJ684213', 'sohini', '', ' sharma', 'Female', '1977-05-17', ' ranjan sharma', 'Krishan devi', 'General', 'sohinisharma21@gmail.com', '80 chwakandi kydganj pragra', '919369552759', NULL, NULL, 'Uttar Pradesh', 'pragraj', 'India', '211003', NULL, NULL, NULL, 'Inactive', NULL, '1', 'mjge392', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(378, 'MJGE394', 'MJ740592', 'Md', 'Haroon', '', 'Male', '1998-01-01', 'Md shekh belaluddil', 'Bibi majida khatoon', 'General', 'haroonalam117@gmail.com', 'Rahmandih dhoraiya banka bihar', '+1918252287165', NULL, NULL, 'Bihar', ' Banka', 'India', '813205', NULL, NULL, NULL, 'Inactive', NULL, '1', '7201400245', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(379, 'MJGE395', 'MJ234098', 'Md', 'Haroon', '', 'Male', '1998-01-01', 'Md shekh belaluddil', 'Bibi majida khatoon', 'General', 'haroonalam117@gmail.com', 'Rahmandih dhoraiya banka bihar', '+1918252287165', NULL, NULL, 'Bihar', ' Banka', 'India', '813205', NULL, NULL, NULL, 'Inactive', NULL, '1', '7201400245', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(380, 'MJGE396', 'MJ162598', 'Md', 'mikail', '', 'Male', '2000-03-05', 'Fakre Alam', 'Bibi khatija khatun', 'General', 'mdmikail28658@gmail.com', 'Rahmandih dhoraiya banka bihar', '916204475116', NULL, NULL, 'Bihar', 'Banka', 'India', '813205', NULL, NULL, NULL, 'Inactive', NULL, '1', '+1916204475116', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(381, 'MJGE397', 'MJ958103', 'Md', 'mikail', '', 'Male', '2000-03-05', 'Fakre Alam', 'Bibi khatija khatun', 'General', 'mdmikail28658@gmail.com', 'Rahmandih dhoraiya banka bihar', '916204475116', NULL, NULL, 'Bihar', 'Banka', 'India', '813205', NULL, NULL, NULL, 'Inactive', NULL, '1', '+1916204475116', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(382, 'MJGE398', 'MJ409821', 'Md', 'mikail', '', 'Male', '2000-03-05', 'Fakre Alam', 'Bibi khatija khatun', 'General', 'mdmikail28658@gmail.com', 'Rahmandih dhoraiya banka bihar', '916204475116', NULL, NULL, 'Bihar', 'Banka', 'India', '813205', NULL, NULL, NULL, 'Inactive', NULL, '1', '+1916204475116', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(383, 'MJGE399', 'MJ745392', 'Md', 'mikail', '', 'Male', '2000-03-05', 'Fakre Alam', 'Bibi khatija khatun', 'General', 'mdmikail28658@gmail.com', 'Rahmandih dhoraiya banka bihar', '916204475116', NULL, NULL, 'Bihar', 'Banka', 'India', '813205', NULL, NULL, NULL, 'Inactive', NULL, '1', '+1916204475116', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(384, 'MJGE400', 'MJ892107', 'Kumar ', '', 'Kartikey', 'Male', '2001-05-02', 'Amrendra Singh', 'Rita Devi', 'General', 'kumarkartikey2001@gmail.com', 'New Area Sikandarpur', '7857930526', NULL, NULL, 'Bihar', 'Muzaffarpur', 'India', '842001', NULL, NULL, NULL, 'Inactive', NULL, '1', '7201400238', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(385, 'MJGE401', 'MJ126498', 'Kumar ', '', 'Kartikey', 'Male', '2001-05-02', 'Amrendra Singh', 'Rita Devi', 'General', 'kumarkartikey2001@gmail.com', 'New Area Sikandarpur', '7857930526', NULL, NULL, 'Bihar', 'Muzaffarpur', 'India', '842001', NULL, NULL, NULL, 'Inactive', NULL, '1', '7201400238', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(386, 'MJGE402', 'MJ402951', 'Shikha', '', 'Bohre', 'Female', '1990-08-11', 'B K Birthray', 'Usha Kiran Birthray', 'General', 'shikhabohre@gmail.com', '84 b maitri vihar radhika nagar bhilai', '+1917047832924', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '1721400262', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(387, 'MJGE403', 'MJ287694', 'Shikha', '', 'Bohre', 'Female', '1990-08-11', 'B K Birthray', 'Usha Kiran Birthray', 'General', 'shikhabohre@gmail.com', '84 b maitri vihar radhika nagar bhilai', '+1917047832924', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '1721400262', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(388, 'MJGE404', 'MJ537802', 'Malik ', 'faizan ', 'khan', 'Male', '1993-11-13', 'Mohammad riyaz khan', 'Shahina khan', 'General', 'faiz.malik5@gmail.com', 'vaishali nagar', '7974777724', NULL, NULL, 'Andhra Pradesh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'faiz.malik5@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(389, 'MJGE405', 'MJ804932', 'Malik ', 'faizan ', 'khan', 'Male', '1993-11-13', 'Mohammad riyaz khan', 'Shahina khan', 'General', 'faiz.malik5@gmail.com', 'vaishali nagar', '7974777724', NULL, NULL, 'Andhra Pradesh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'faiz.malik5@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(391, 'MJGE407', 'MJ845973', 'NISHA', '', '', 'Female', '1994-07-20', 'RAMKUMAR', 'SUKHMAOTIN', 'OBC', 'nishalee201996@gmail.com', 'VILL+POST-SALONI TH-KHAIRAGARH DIST- RAJNANDGAON', '9981261071', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '491441', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029106', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(392, 'MJGE408', 'MJ210983', 'Nirbhay', '', 'kumar', 'Male', '1994-06-18', 'Umesh paswan', 'Sharda Kumari', 'SC', '9852nirbhay@gmail.com', 'Linepar Mirzapur nawada, Near-K.L.S.SCHOOL, Nawada', '9852655890', NULL, NULL, 'Bihar', 'Nawada', 'India', '805110', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(393, 'MJGE409', 'MJ506374', 'Nirbhay', '', 'kumar', 'Male', '1994-06-18', 'Umesh paswan', 'Sharda Kumari', 'SC', '9852nirbhay@gmail.com', 'Linepar Mirzapur nawada, Near-K.L.S.SCHOOL, Nawada', '9852655890', NULL, NULL, 'Bihar', 'Nawada', 'India', '805110', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(394, 'MJGE410', 'MJ720956', 'Nirbhay', '', 'kumar', 'Male', '1994-06-18', 'Umesh paswan', 'Sharda Kumari', 'SC', '9852nirbhay@gmail.com', 'Linepar Mirzapur nawada, Near-K.L.S.SCHOOL, Nawada', '9852655890', NULL, NULL, 'Bihar', 'Nawada', 'India', '805110', NULL, NULL, NULL, 'Inactive', NULL, '1', '14', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(395, 'MJGE411', 'MJ690235', 'Nirbhay', '', 'kumar', 'Male', '1994-06-18', 'Umesh paswan', 'Sharda Kumari', 'SC', '9852nirbhay@gmail.com', 'Linepar Mirzapur nawada, Near-K.L.S.SCHOOL, Nawada', '9852655890', NULL, NULL, 'Bihar', 'Nawada', 'India', '805110', NULL, NULL, NULL, 'Inactive', NULL, '1', '14', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(396, 'MJGE412', 'MJ381069', 'Nirbhay', '', 'kumar', 'Male', '1994-06-18', 'Umesh paswan', 'Sharda Kumari', 'SC', '9852nirbhay@gmail.com', 'Linepar Mirzapur nawada, Near-K.L.S.SCHOOL, Nawada', '9852655890', NULL, NULL, 'Bihar', 'Nawada', 'India', '805110', NULL, NULL, NULL, 'Inactive', NULL, '1', '14', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(397, 'MJGE413', 'MJ461830', 'NISHA', '', '', 'Female', '1996-07-20', 'RAMKUMAR ', 'SUKHMAOTIN ', 'OBC', 'nishalee201996@gmail.com', 'VILL+POST-SALONI TH-KHAIRAGARH DIST-RAJNANDGON', '9981261071', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '491441', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029106', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(398, 'MJGE414', 'MJ543018', 'anju', '', 'yadav', 'Female', '1998-07-22', 'mahendra yadav', 'meera yadav ', 'OBC', 'anjuy0287@gmail.com', 'shakti nagar police line', '8770261143', NULL, NULL, 'Chhattisgarh', 'rajnandgaon', 'India', '491441', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029013', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(399, 'MJGE415', 'MJ215307', 'anju', '', 'yadav', 'Female', '1998-07-22', 'mahendra yadav', 'meera yadav ', 'OBC', 'anjuy0287@gmail.com', 'shakti nagar police line', '8770261143', NULL, NULL, 'Chhattisgarh', 'rajnandgaon', 'India', '491441', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029013', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(400, 'MJGE416', 'MJ069587', 'shalini ', '', 'tripathi', 'Female', '1994-10-24', 'shrikant tripathi', 'shakuntala tripathi', 'General', 'shalinitripathi310@gmail.com', 'h.no.63 panch rasta supela bhilai', '8305320138', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(401, 'MJGE417', 'MJ768315', 'shalini ', '', 'tripathi', 'Female', '1994-10-24', 'shrikant tripathi', 'shakuntala tripathi', 'General', 'shalinitripathi310@gmail.com', 'h.no.63 panch rasta supela bhilai', '8305320138', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(402, 'MJGE418', 'MJ847059', 'SAPANA', 'Singh ', 'SAPANA SINGH', 'Female', '2020-10-20', 'SAPANA SINGH', 'SAPANA SINGH', 'General', 'Ravindrasingh1909@gmail.com', 'sudanipur kalan hanumangang', '8115833703', NULL, NULL, 'Andhra Pradesh', 'Allahabad ', 'India', '221505', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(403, 'MJGE419', 'MJ632108', 'pasho', 'pasho', 'pasho', 'Female', '2020-11-16', 'ramrattna', 'laxmi', 'OBC', 'pashoverma99@gmail.com', 'gram kurloo post parpodi', '8815364676', NULL, NULL, 'Chhattisgarh', 'village', 'India', '491331', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(404, 'MJGE420', 'MJ852103', 'pasho', 'pasho', 'pasho', 'Female', '2020-11-16', 'ramrattan', 'Laxmi', 'OBC', 'pashoverma99@gmail.com', 'gram kurloo post parpodi', '8815364676', NULL, NULL, 'Chhattisgarh', 'village', 'India', '491331', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(405, 'MJGE421', 'MJ583692', 'pasho', 'pasho', 'pasho', 'Female', '2020-11-16', 'ramrattan', 'Laxmi', 'OBC', 'pashoverma99@gmail.com', 'gram kurloo post parpodi', '8815364676', NULL, NULL, 'Chhattisgarh', 'village', 'India', '491331', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(406, 'MJGE422', 'MJ608937', 'pasho', 'pasho', 'pasho', 'Female', '2020-11-16', 'ramrattan', 'Laxmi', 'OBC', 'pashoverma99@gmail.com', 'gram kurloo post parpodi', '8815364676', NULL, NULL, 'Chhattisgarh', 'village', 'India', '491331', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(408, 'MJGE424', 'MJ127348', 'vedprakash ', 'vedprakash ', 'vedprakash ', 'Male', '1985-04-24', 'Sudama prasad ', 'mogara ', 'General', '2404devangan@gmail.com', 'shitala para simga', '8871112945', NULL, NULL, 'Andhra Pradesh', 'balodabajar ', 'India', '493101', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(409, 'MJGE425', 'MJ452391', 'Neha', '', 'Jain', 'Female', '1984-01-22', 'Surendra', 'Kusum ', 'General', 'Lajojain2001@yahoo.com', 'sector 7 market', '9827430561', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '4400006', NULL, NULL, NULL, 'Inactive', NULL, '1', '9827430561', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(410, 'MJGE426', 'MJ506812', 'Neha', '', 'Jain', 'Female', '1984-01-22', 'Surendra', 'Kusum ', 'General', 'Lajojain2001@yahoo.com', 'sector 7 market', '9827430561', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '4400006', NULL, NULL, NULL, 'Inactive', NULL, '1', '9827430561', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(411, 'MJGE427', 'MJ478956', 'Bhawana ', 'sinha', 'Sinha', 'Female', '1989-07-07', 'tamraj kumar sinha', 'surja sinha', 'OBC', 'bhavna9109225511@gmail.com', 'housing board kohka bhailai ews- 24', '9109225511', NULL, NULL, 'Andhra Pradesh', 'durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029030', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(412, 'MJGE428', 'MJ254687', 'TAMESH', 'KUMAR', 'SAHU', 'Male', '1994-08-14', 'Yeev Kumar Sahu', 'Nirmala Bai Sahu', 'OBC', 'tameshsahu94@gmail.com', 'Manhora', '9685082289', NULL, NULL, 'Andhra Pradesh', 'Rajnandgaon', 'India', '491661', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029177', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(413, 'MJGE429', 'MJ573916', 'TAMESH', 'KUMAR', 'SAHU', 'Male', '1994-08-14', 'Yeev Kumar Sahu', 'Nirmala Bai Sahu', 'OBC', 'tameshsahu94@gmail.com', 'Manhora', '9685082289', NULL, NULL, 'Andhra Pradesh', 'Rajnandgaon', 'India', '491661', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029177', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(414, 'MJGE430', 'MJ436821', 'TAMESH', 'KUMAR', 'SAHU', 'Male', '1994-08-14', 'Yeev Kumar Sahu', 'Nirmala Bai Sahu', 'OBC', 'tameshsahu94@gmail.com', 'Manhora', '9685082289', NULL, NULL, 'Andhra Pradesh', 'Rajnandgaon', 'India', '491661', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029177', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(415, 'MJGE431', 'MJ956874', 'Kameshwari', 'chhoti', 'verma', 'Female', '2020-12-26', 'chandrakumar', 'chitrekha', 'OBC', 'chhotiverma08@gmail.com', 'kohka bhilai', '9131780779', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340010059', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(416, 'MJGE432', 'MJ512780', 'Kameshwari', 'chhoti', 'verma', 'Female', '2020-12-26', 'chandrakumar', 'chitrekha', 'OBC', 'chhotiverma08@gmail.com', 'kohka bhilai', '9131780779', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340010059', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(417, 'MJGE433', 'MJ215608', 'pasho', 'pasho', 'pasho', 'Female', '2020-11-16', 'ramrattan', 'laxmi', 'OBC', 'pashoverma99@gmail.com', 'gram kurloo post parpodi cg', '8815463476', NULL, NULL, 'Chhattisgarh', 'village', 'India', '491331', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(418, 'MJGE434', 'MJ317620', 'pasho', 'pasho', 'pasho', 'Female', '2020-11-16', 'ramrattan', 'laxmi', 'OBC', 'pashoverma99@gmail.com', 'gram kurloo post parpodi cg', '8815463476', NULL, NULL, 'Chhattisgarh', 'village', 'India', '491331', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(419, 'MJGE435', 'MJ612743', 'Kameshwari', 'chhoti', 'verma', 'Female', '2020-12-16', 'chandrakumar', 'chitrekha', 'OBC', 'chhotiverma08@gmail.com', 'kohka bhilai', '9131780779', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340010059', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(420, 'MJGE436', 'MJ562891', 'Md', 'Azhar', 'ANSARI', 'Male', '1998-04-04', 'Md Abbas Ansari', 'Bibi Rabiya khatoon', 'General', 'ansarimdazhar917@gmail.com', 'Rahmandih dhoraiya banka bihar', '+1916205264032', NULL, NULL, 'Bihar', 'Banka', 'India', '813205', NULL, NULL, NULL, 'Inactive', NULL, '1', '7201400244', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(421, 'MJGE437', 'MJ254807', 'Simranjeet', '', 'Kaur', 'Female', '1997-10-20', 'GajendraPal Singh', 'Manpreet Kaur', 'General', 'rounaksingh6911@gmail.com', 'H.No-486 ST.No-5/c Shanti Nagar Bhilai', '9827943564', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029168', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(422, 'MJGE438', 'MJ610845', 'Simranjeet', '', 'Kaur', 'Female', '1997-10-20', 'GajendraPal Singh', 'Manpreet Kaur', 'General', 'rounaksingh6911@gmail.com', 'H.No-486 ST.No-5/c Shanti Nagar Bhilai', '9827943564', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029168', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(423, 'MJGE439', 'MJ872316', 'Di', 'vy', 'a', 'Female', '1992-06-02', 'Krishna Kumar Yadu', 'Duleshiya Yadav', 'OBC', 'dyadu8889@gmail.com', 'sargipal para kondagaon dist kondagaon.CG', '7804928333', NULL, NULL, 'Chhattisgarh', 'kondagaon', 'India', '494226', NULL, NULL, NULL, 'Inactive', NULL, '1', '8888', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(424, 'MJGE440', 'MJ251789', 'Di', 'vy', 'a', 'Female', '1992-06-02', 'Krishna Kumar Yadu', 'Duleshiya Yadav', 'OBC', 'dyadu8889@gmail.com', 'sargipal para kondagaon dist kondagaon.CG', '7804928333', NULL, NULL, 'Chhattisgarh', 'kondagaon', 'India', '494226', NULL, NULL, NULL, 'Inactive', NULL, '1', '8888', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(425, 'MJGE441', 'MJ706435', 'pasho', 'pasho', 'pasho', 'Female', '2020-11-16', 'ramratan veram', 'lachhani bai', 'OBC', 'pashoverma99@gmail.com', 'gram kurloo post parpodi', '8815463476', NULL, NULL, 'Chhattisgarh', 'village', 'India', '491331', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(426, 'MJGE442', 'MJ724386', 'Nilam', '', 'pipariya ', 'Female', '1988-02-03', 'Suresh chandra', 'Radhika hardel', 'General', 'noveshwar1984@gmail.com', 'Bharda', '+1917067021841', NULL, NULL, 'Andhra Pradesh', 'Durg', 'India', '491221', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029105', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(427, 'MJGE443', 'MJ753826', 'Saroj', '', 'kumari', 'Female', '1984-02-02', 'Rajendra prasad yadav', 'Kumari Neelam', 'OBC', 'kguni2080@gmail.com', 'Adarsh nagar Fulkiya', '+44917004208461', NULL, NULL, 'Bihar', 'Bhagalpur', 'India', '812003', NULL, NULL, NULL, 'Inactive', NULL, '1', ' ', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(428, 'MJGE444', 'MJ830495', 'KRISHNA ', 'KUMAR', 'SARHAN', 'Male', '1995-04-02', 'DINESH SARHAN', 'SANJANA DEVI', 'General', 'krishnakumarsarhan@yahoo.com', 'MADHUBANI BIHAR', '+919934441331', NULL, NULL, 'Bihar', 'Balua', 'India', '847409', NULL, NULL, NULL, 'Inactive', NULL, '1', '1', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(429, 'MJGE445', 'MJ580296', 'Deepali', '', 'Deo', 'Female', '2020-12-26', 'Birendra Kumar Deo', 'Kalpana Deo', 'General', 'deep2020dev@gmail.com', 'At-Ganganagar,Patnagarh', '9337582590', NULL, NULL, 'Odisha', 'Bolangir', 'India', '767025', NULL, NULL, NULL, 'Inactive', NULL, '1', '123456', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(430, 'MJGE446', 'MJ916823', 'Deepali', '', 'Deo', 'Female', '2020-12-26', 'Birendra Kumar Deo', 'Kalpana Deo', 'General', 'deep2020dev@gmail.com', 'At-Ganganagar,Patnagarh', '9337582590', NULL, NULL, 'Odisha', 'Bolangir', 'India', '767025', NULL, NULL, NULL, 'Inactive', NULL, '1', '123456', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(431, 'MJGE447', 'MJ423195', 'SATISH', '', 'KUMAR', 'Male', '2020-12-26', 'BHAGWAT SHARAN DIWAKAR', 'BASANTI DEVI', 'General', 'satish.kumar.rnc@gmail.com', 'NEW BANDHGARI DIPATOLI, PO-BARIYATU, DISI-RANCHI', '9471124765', NULL, NULL, 'Jharkhand', 'RANCHI', 'India', '834009', NULL, NULL, NULL, 'Inactive', NULL, '1', '2020', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(432, 'MJGE448', 'MJ417902', 'SATISH', '', 'KUMAR', 'Male', '2020-12-26', 'BHAGWAT SHARAN DIWAKAR', 'BASANTI DEVI', 'General', 'satish.kumar.rnc@gmail.com', 'NEW BANDHGARI DIPATOLI, PO-BARIYATU, DISI-RANCHI', '9471124765', NULL, NULL, 'Jharkhand', 'RANCHI', 'India', '834009', NULL, NULL, NULL, 'Inactive', NULL, '1', '2020', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(433, 'MJGE449', 'MJ718452', 'Rama', '', 'Verma', 'Female', '1992-05-07', 'Ramkumar', 'Rampyari', 'General', 'ramadurg90@gmail.com', 'tekapar', '6264698384', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(434, 'MJGE450', 'MJ079214', 'Janki', '', 'Patel', 'Female', '2020-12-26', 'Ravi Kumar patel', 'bhukhin bai', 'OBC', 'jankipatel599@gmail.com', 'power house', '8103093041', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490011', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(435, 'MJGE451', 'MJ462398', 'Janki', '', 'Patel', 'Female', '2020-12-26', 'Ravi Kumar patel', 'bhukhin bai', 'OBC', 'jankipatel599@gmail.com', 'power house', '8103093041', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490011', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(436, 'MJGE452', 'MJ951082', 'Janki', '', 'Patel', 'Female', '2020-12-26', 'Ravi Kumar patel', 'bhukhin bai', 'OBC', 'jankipatel599@gmail.com', 'power house', '8103093041', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490011', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(437, 'MJGE453', 'MJ140285', 'Janki', '', 'Patel', 'Female', '2020-12-26', 'Ravi Kumar patel', 'bhukhin bai', 'OBC', 'jankipatel599@gmail.com', 'power house', '8103093041', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490011', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(438, 'MJGE454', 'MJ316857', 'Richa', '', 'kawde', 'Female', '1995-11-13', 'H.S.Kawde', 'Ahilya Kawde', 'ST', 'richukawde@gmail.com', 'civil line Pandripani kanker', '9111529013', NULL, NULL, 'Chhattisgarh', 'kanker ', 'India', '494334', NULL, NULL, NULL, 'Inactive', NULL, '1', '1234', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(439, 'MJGE455', 'MJ521349', 'Richa', '', 'kawde', 'Female', '1995-11-13', 'H.S.Kawde', 'Ahilya Kawde', 'ST', 'richukawde@gmail.com', 'civil line Pandripani kanker', '9111529013', NULL, NULL, 'Chhattisgarh', 'kanker ', 'India', '494334', NULL, NULL, NULL, 'Inactive', NULL, '1', '1234', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(440, 'MJGE456', 'MJ490271', 'Richa', '', 'kawde', 'Female', '1995-11-13', 'H.S.Kawde', 'Ahilya Kawde', 'ST', 'richukawde@gmail.com', 'civil line Pandripani kanker', '9111529013', NULL, NULL, 'Chhattisgarh', 'kanker ', 'India', '494334', NULL, NULL, NULL, 'Inactive', NULL, '1', '1234', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(441, 'MJGE457', 'MJ986514', 'Neelam', '', 'Prasad', 'Female', '1989-05-09', 'Nageshwar Prasad', 'Kaushalya Devi', 'General', 'prasadneelam1989@gmail.com', '735 B Block, Sonari', '7004884896', NULL, NULL, 'Jharkhand', 'Jamshedpur', 'India', '831011', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(442, 'MJGE458', 'MJ516302', 'Deeptesh', 'Chandra', '', 'Male', '1994-03-30', 'Parsadi Ram', 'Benin Bai', 'OBC', 'deepdcs30@gmail.com', 'Vill.- Sankra Post Somni', '7999516405', NULL, NULL, 'Chhattisgarh', 'Dost. - Rajnandgaon', 'India', '491441', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(443, 'MJGE459', 'MJ708125', 'Deeptesh', 'Chandra', '', 'Male', '1994-03-30', 'Parsadi Ram', 'Benin Bai', 'OBC', 'deepdcs30@gmail.com', 'Vill.- Sankra Post Somni', '7999516405', NULL, NULL, 'Chhattisgarh', 'Dost. - Rajnandgaon', 'India', '491441', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(444, 'MJGE460', 'MJ509412', 'Revati', '', 'Kumaram', 'Female', '1983-06-20', 'K. C. H. N. Murty', 'K. R. Lakshmi', 'General', 'revatikumaram83@gmail.com', 'Plot. No. -7,Street No. -9B, Indrawati Nagar, near Kohka Housing Board Colony ', '9381449462', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(445, 'MJGE461', 'MJ512809', 'Manisha', '', 'Patel', 'Female', '2020-12-26', 'Chhagan lal Patel', 'Radheshwari ', 'SC', 'chagan11patel22@gmail.com', '256 chowk football ground w-5', '8305277525', NULL, NULL, 'Chhattisgarh', 'Dalli Rajhara', 'India', '491228', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(446, 'MJGE462', 'MJ085791', 'Manisha', '', 'Patel', 'Female', '2020-12-26', 'Chhagan lal Patel', 'Radheshwari ', 'SC', 'chagan11patel22@gmail.com', '256 chowk football ground w-5', '8305277525', NULL, NULL, 'Chhattisgarh', 'Dalli Rajhara', 'India', '491228', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL);
INSERT INTO `mj_student` (`id`, `emp_id`, `password`, `firstname`, `middlename`, `lastname`, `gender`, `dob`, `father`, `mother`, `caste_category`, `email`, `address`, `mobile`, `contact2`, `address2`, `state`, `city`, `country`, `pincode`, `admin_role`, `photo`, `created_at`, `live_status`, `create_by`, `admission_status`, `roll_no`, `college_id`, `college_name`, `percentile`, `enquiry`, `remarks`, `recall`) VALUES
(447, 'MJGE463', 'MJ937580', 'Di', 'vy', 'a', 'Male', '1992-06-02', 'krishna Kumar Yadu', 'Duleshiya yadav', 'OBC', 'dyadu8889@gmail.com', 'sargipal para kondagaon', '7804928333', NULL, NULL, 'Chhattisgarh', 'kondagaon', 'India', '494226', NULL, NULL, NULL, 'Inactive', NULL, '1', '1234', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(448, 'MJGE464', 'MJ720198', 'deepa', '', 'verma', 'Female', '1988-11-12', 'Ashutosh verma', 'shanti verma', 'OBC', 'deepaverma881112@gmail.com', 'q.no.25/B,street 6,sector 1,', '9098640820', NULL, NULL, 'Chhattisgarh', 'bhilai Nagar', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(449, 'MJGE465', 'MJ985421', 'Renuka', 'Renuka', 'sahu', 'Female', '2021-06-01', 'nirendrasahu', 'mandakinisahu', 'OBC', 'renusahu036@gmail.com', 'Acc colony jamul durg', '9399725175', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490024', NULL, NULL, NULL, 'Inactive', NULL, '1', '12345678', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(450, 'MJGE466', 'MJ372548', 'Renuka', 'Renuka', 'sahu', 'Female', '2021-06-01', 'nirendrasahu', 'mandakinisahu', 'OBC', 'renusahu036@gmail.com', 'Acc colony jamul durg', '9399725175', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490024', NULL, NULL, NULL, 'Inactive', NULL, '1', '12345678', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(451, 'MJGE467', 'MJ804693', 'Revati', '', 'Kumaram', 'Female', '1983-06-20', 'K. C. H. N. Murty', 'K. R. Lakshmi', 'General', 'revatikumaram83@gmail.com', 'Plot No. -7, Street No. -9B, Indrawati Nagar, Near Kohka Housing Board Colony, ', '9381449462', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(452, 'MJGE468', 'MJ126038', 'pooja', '', 'pooja vaishnava', 'Female', '1992-02-12', 'siddharth vaishnava', 'pooja vaishnava', 'General', 'poojavaishnava12292@gmail.com', 'kondagaon', '8839670704', NULL, NULL, 'Andhra Pradesh', 'kondagao', 'India', '494226', NULL, NULL, NULL, 'Inactive', NULL, '1', '+448839670704', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(453, 'MJGE469', 'MJ897256', 'Nameeta', '', 'sahu', 'Female', '1994-01-01', 'Govind sahu', 'Ramkali sahu', 'OBC', 'nameetasahu612@gmail.com', 'neha kirana stors sahupara ramnagr bhilai', '8103619617', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029094', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(454, 'MJGE470', 'MJ354276', 'Nameeta', '', 'sahu', 'Female', '1994-01-01', 'Govind sahu', 'Ramkali sahu', 'OBC', 'nameetasahu612@gmail.com', 'neha kirana stors sahupara ramnagr bhilai', '8103619617', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029094', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(455, 'MJGE471', 'MJ071392', 'Nameeta', '', 'sahu', 'Female', '1994-01-01', 'Govind sahu', 'Ramkali sahu', 'OBC', 'nameetasahu612@gmail.com', 'neha kirana stors sahupara ramnagr bhilai', '8103619617', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029094', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(456, 'MJGE472', 'MJ109743', 'Nameeta', '', 'sahu', 'Female', '1994-01-01', 'Govind sahu', 'Ramkali sahu', 'OBC', 'nameetasahu612@gmail.com', 'neha kirana stors sahupara ramnagr bhilai', '8103619617', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029094', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(457, 'MJGE473', 'MJ140736', 'Nameeta', '', 'sahu', 'Female', '1994-01-01', 'Govind sahu', 'Ramkali sahu', 'OBC', 'nameetasahu612@gmail.com', 'neha kirana stors sahupara ramnagr bhilai', '8103619617', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029094', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(458, 'MJGE474', 'MJ321098', 'Urwashi', 'Urwashi', 'Urwashi', 'Male', '1996-07-03', 'abhimanyu', 'yashoda bai', 'OBC', 'Urwashi sahu 4319@gmail com.', 'titurgahan tahsil gurur dist balod', '7587003191', NULL, NULL, 'Chhattisgarh', 'titurgahan ', 'India', '491222', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029182', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(459, 'MJGE475', 'MJ963185', 'Urwashi', 'Urwashi', 'Urwashi', 'Male', '1996-07-03', 'abhimanyu', 'yashoda bai', 'OBC', 'Urwashi sahu 4319@gmail com.', 'titurgahan tahsil gurur dist balod', '7587003191', NULL, NULL, 'Chhattisgarh', 'titurgahan ', 'India', '491222', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029182', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(460, 'MJGE476', 'MJ301475', 'Niranjan', '', 'Yadav', 'Male', '1991-12-05', 'pitambar', 'kaitabali ', 'OBC', 'nranjannips1431@gmail.com', 'Street Number 08 rawat para Kumhadai kala Deobhog ', '7000480784', NULL, NULL, 'Chhattisgarh', 'Deobhog- Gariaband ', 'India', '493890', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340129018', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(461, 'MJGE477', 'MJ846317', 'Rekha', '', 'Kumari', 'Female', '1990-02-09', 'Mathura Prasad Mahato', 'Janki Devi ', 'General', 'imkool.vinodonly@gmail.com', 'At-Brahamoriya,P.o-Nawada,P.s-Bishnugarh,Distt-Hazaribag,', '6203516305', NULL, NULL, 'Jharkhand', 'Hazaribag', 'India', '825312', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340129028', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(462, 'MJGE478', 'MJ564083', 'Rekha', '', 'Kumari', 'Female', '1990-02-09', 'Mathura Prasad Mahato', 'Janki Devi ', 'General', 'imkool.vinodonly@gmail.com', 'At-Brahamoriya,P.o-Nawada,P.s-Bishnugarh,Distt-Hazaribag,', '6203516305', NULL, NULL, 'Jharkhand', 'Hazaribag', 'India', '825312', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340129028', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(463, 'MJGE479', 'MJ490532', 'Shraddha', '', 'shrivastava', 'Female', '2020-12-26', 'Krishna shrivastava', 'lateJankhi shrivastava', 'General', 'shraddhas91187@gmail.com', 'Iscon city ,Rewadih Rajnandgaon', '9098142287', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491441', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(464, 'MJGE480', 'MJ432560', 'Shraddha', '', 'shrivastava', 'Female', '2020-12-26', 'Krishna shrivastava', 'lateJankhi shrivastava', 'General', 'shraddhas91187@gmail.com', 'Iscon city ,Rewadih Rajnandgaon', '9098142287', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491441', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(465, 'MJGE481', 'MJ952387', 'ANKITA', '', 'MASIH', 'Female', '1991-10-30', 'RAJESH KUMAR MASIH', 'SINTHIYA MASIH', 'General', 'masihankita26@gmail.com', 'MIG- 1-162, HUDCO, AMDI NAGAR', '9981382186', NULL, NULL, 'Chhattisgarh', 'BHILAI ', 'India', '490009', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029015', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(466, 'MJGE482', 'MJ615320', 'ANKITA', '', 'MASIH', 'Female', '1991-10-30', 'RAJESH KUMAR MASIH', 'SINTHIYA MASIH', 'General', 'masihankita26@gmail.com', 'MIG- 1-162, HUDCO, AMDI NAGAR', '9981382186', NULL, NULL, 'Chhattisgarh', 'BHILAI ', 'India', '490009', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029015', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(467, 'MJGE483', 'MJ026951', 'Shraddha ', '', 'shrivastava', 'Female', '1987-11-09', 'Krishna Kumar shrivastava', 'late Jankhi shrivastava', 'General', 'shraddhas91187@gmail.com', 'Iscon city ,Rewadih Rajnandgaon', '9098142287', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491441', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(468, 'MJGE484', 'MJ049756', 'Shraddha ', '', 'shrivastava', 'Female', '1987-11-09', 'Krishna Kumar shrivastava', 'late Jankhi shrivastava', 'General', 'shraddhas91187@gmail.com', 'Iscon city ,Rewadih Rajnandgaon', '9098142287', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491441', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(469, 'MJGE485', 'MJ509348', 'Shraddha', '', 'shrivastava', 'Female', '1987-11-09', 'Krishna Kumar shrivastava', 'late Jankhi shrivastava', 'General', 'shraddhas91187@gmail.com', '189 houseno.Iscon city ,Rewadih', '9098142287', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491441', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(470, 'MJGE486', 'MJ519267', '', '', '', '', '0000-00-00', '', '', '', '', '', '', NULL, NULL, '', '', '', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '', '', '', NULL, NULL, NULL, NULL),
(471, 'MJGE487', 'MJ895376', 'sohini ', 'sohini ', ' sharma', 'Female', '1977-05-17', 'ranjan sharma', 'krishna devi', 'General', 'Sohinisharma28@gmail.com', '106/80 chaukhandi kydganj', '9369552759', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '211003', NULL, NULL, NULL, 'Inactive', NULL, '1', '908770', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(472, 'MJGE488', 'MJ910845', 'sohini ', 'sohini ', ' sharma', 'Female', '1977-05-17', 'ranjan sharma', 'krishna devi', 'General', 'Sohinisharma28@gmail.com', '106/80 chaukhandi kydganj', '9369552759', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '211003', NULL, NULL, NULL, 'Inactive', NULL, '1', '908770', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(473, 'MJGE489', 'MJ502789', 'sohni', '', 'sharma', 'Male', '2020-12-27', 'ranjan sharma', 'krishna devi', 'General', 'Sohinisharma28@gmail.com', '106/80 chowhandi kydganj', '9369552759', NULL, NULL, 'Uttar Pradesh', 'prayagraj', 'India', '211003', NULL, NULL, NULL, 'Inactive', NULL, '1', '908770', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(474, 'MJGE490', 'MJ543019', 'Sohini', '', 'sharma ', 'Female', '1977-05-17', 'Ranjan sharma ', 'krishna devi ', 'General', 'Sohinisharma28@gmail.com', '106/80  chaukhandi kydganj', '9369552759', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '211003', NULL, NULL, NULL, 'Inactive', NULL, '1', '908770', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(475, 'MJGE491', 'MJ951782', 'sohini', '', 'sharma', 'Male', '2020-12-27', 'ranjan sharma ', 'krishna devi', 'General', 'Sohinisharma28@gmail.com', '80 chowhandikydganj', '9369552759', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '211003', NULL, NULL, NULL, 'Inactive', NULL, '1', '908770', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(476, 'MJGE492', 'MJ865374', 'Bhupeshwari ', 'Bhupeshwari', 'Sahu ', 'Female', '2020-12-27', 'Chumman Lal', 'Usha Bai', 'General', 'bhupeshwaribalod96@gmail.com', 'Village + Post - Khapri, Dist- Balod, Pin No.- 491226', '+918319443155', NULL, NULL, 'Andhra Pradesh', 'Balod', 'India', '491226', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029032', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(477, 'MJGE493', 'MJ352960', 'Bhupeshwari ', 'Bhupeshwari', 'Sahu ', 'Female', '2020-12-27', 'Chumman Lal', 'Usha Bai', 'General', 'bhupeshwaribalod96@gmail.com', 'Village + Post - Khapri, Dist- Balod, Pin No.- 491226', '+918319443155', NULL, NULL, 'Andhra Pradesh', 'Balod', 'India', '491226', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029032', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(478, 'MJGE494', 'MJ271348', 'SUJEET', '', 'CHAUDHARY', 'Male', '1994-05-22', 'SURESH CHAUDHARY', 'NEELAM DEVI', 'General', 'sujit.choudhary769@gmail.com', 'shepur', '9955709714', NULL, NULL, 'Bihar', 'samastipur', 'India', '848503', NULL, NULL, NULL, 'Inactive', NULL, '1', '34018029135', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(479, 'MJGE495', 'MJ653879', 'SUJEET', '', 'CHAUDHARY', 'Male', '1994-05-22', 'SURESH CHAUDHARY', 'NEELAM DEVI', 'General', 'sujit.choudhary769@gmail.com', 'shepur', '9955709714', NULL, NULL, 'Bihar', 'samastipur', 'India', '848503', NULL, NULL, NULL, 'Inactive', NULL, '1', '34018029135', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(480, 'MJGE496', 'MJ781356', 'CHANDAN ', '', 'BOSE ', 'Male', '1972-07-28', 'Mr.CHAMPAK BOSE', 'Mrs.KARUNA BOSE', 'General', 'bosechandan2013@gmail.com', 'H.N-8, SURYA PATH, RADHIKANAGAR, NEAR RADHA KRISHNA MANDIR, KHARANGAJHAR, TELCO, DIST-EAST SINGBHUM,POST - TELCO WORKS', '7000439732', NULL, NULL, 'Jharkhand', 'JAMSHEDPUR,', 'India', '831004', NULL, NULL, NULL, 'Inactive', NULL, '1', '9271', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(481, 'MJGE497', 'MJ367048', 'Urwashi ', 'Urwashi', 'Urwashi', 'Female', '1996-07-03', 'Abhimanyu', 'Yashoda Bai', 'OBC', 'Urwashi sahu 4319@gmail com.', 'titurgahan tahshil gurur dist balod', '7587003191', NULL, NULL, 'Chhattisgarh', 'Balod', 'India', '491227', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029182', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(482, 'MJGE498', 'MJ023574', 'Rameshwari', 'sahu', 'sahu', 'Female', '1995-09-18', 'Mr. Mohendra Kumar sahu', 'mrs. radha bai sahu', 'OBC', 'rameshwarisahu626@gmail.com', 'villg-pendrikala,post-baldevpur tahsil-khairagarh dist-rajnandgaon', '7024527748', NULL, NULL, 'Chhattisgarh', 'rajnandgaon', 'India', '491441', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(483, 'MJGE499', 'MJ987426', 'Rameshwari', 'sahu', 'sahu', 'Female', '1995-09-18', 'Mr. Mohendra Kumar sahu', 'mrs. radha bai sahu', 'OBC', 'rameshwarisahu626@gmail.com', 'villg-pendrikala,post-baldevpur tahsil-khairagarh dist-rajnandgaon', '7024527748', NULL, NULL, 'Chhattisgarh', 'rajnandgaon', 'India', '491441', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(484, 'MJGE500', 'MJ813249', 'ARTI', '', 'PAL', 'Female', '1995-04-01', 'BANKELAL PAL', 'SUSHEELA PAL', 'General', 'aartipal330@gmail.com', 'S.A.F LINE DURG', '9407769342', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '490022', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029021', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(485, 'MJGE501', 'MJ647859', 'ARTI', '', 'PAL', 'Female', '1995-04-01', 'BANKELAL PAL', 'SUSHEELA PAL', 'General', 'aartipal330@gmail.com', 'S.A.F LINE DURG', '9407769342', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '490022', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029021', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(486, 'MJGE502', 'MJ341720', 'ARTI', '', 'PAL', 'Female', '1995-04-01', 'BANKELAL PAL', 'SUSHEELA PAL', 'General', 'aartipal330@gmali.com', 'S.A.F LINE BHIALI', '9407769342', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '490022', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029021', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(487, 'MJGE503', 'MJ017536', 'ARTI', '', 'PAL', 'Female', '1995-04-01', 'BANKELAL PAL', 'SUSHEELA PAL', 'General', 'aartipal330@gmali.com', 'S.A.F LINE BHIALI', '9407769342', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '490022', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029021', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(488, 'MJGE504', 'MJ967503', 'ARTI', '', 'PAL', 'Female', '1995-04-01', 'BANKELAL PAL', 'SUSHEELA PAL', 'General', 'aartipal330@gmali.com', 'S.A.F LINE BHIALI', '9407769342', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '490022', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029021', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(489, 'MJGE505', 'MJ692134', 'MANOJ', 'KUMAR', 'CHAUHAN', 'Male', '1973-07-07', 'BAIJNATH RAM', 'PRABHAVATI CHAUHAN', 'General', 'manojchohan7332@gmail.com', 'TITURDIH WARD NO-20', '8319465897', NULL, NULL, 'Chhattisgarh', 'DURG', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(490, 'MJGE506', 'MJ964738', 'MANOJ', 'KUMAR', 'CHAUHAN', 'Male', '1973-07-07', 'BAIJNATH RAM', 'PRABHAVATI CHAUHAN', 'General', 'manojchohan7332@gmail.com', 'TITURDIH WARD NO-20', '8319465897', NULL, NULL, 'Chhattisgarh', 'DURG', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(491, 'MJGE507', 'MJ293186', 'MANOJ', 'KUMAR', 'CHAUHAN', 'Male', '1973-07-07', 'BAIJNATH RAM', 'PRABHAVATI CHAUHAN', 'General', 'manojchohan7332@gmail.com', 'TITURDIH WARD NO-20', '8319465897', NULL, NULL, 'Chhattisgarh', 'DURG', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(492, 'MJGE508', 'MJ913408', 'MANOJ', 'KUMAR', 'CHAUHAN', 'Male', '1973-07-07', 'BAIJNATH RAM', 'PRABHAVATI CHAUHAN', 'General', 'manojchohan7332@gmail.com', 'TITURDIH WARD NO-20', '8319465897', NULL, NULL, 'Chhattisgarh', 'DURG', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(493, 'MJGE509', 'MJ289435', 'Hem', 'Kumar', 'kosle', 'Male', '2002-10-21', 'Ubarandas koshle', 'Indirabai koshle', 'General', 'hemkumarkosle387@gmail.com', 'thuhadih', '6263821652', NULL, NULL, 'Andhra Pradesh', 'kabirdham', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '30', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(494, 'MJGE510', 'MJ312074', 'Hem', 'Kumar', 'kosle', 'Male', '2002-10-21', 'Ubarandas koshle', 'Indirabai koshle', 'General', 'hemkumarkosle387@gmail.com', 'thuhadih', '6263821652', NULL, NULL, 'Andhra Pradesh', 'kabirdham', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '30', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(495, 'MJGE511', 'MJ574310', 'Neha', '', 'Chaudhur', 'Female', '1996-05-04', 'CHANDRA SHEKHAR CHAUDHUR', 'VIBHA DEVI', 'General', 'nehachaudhur451996@gmail.com', 'model town, nehru nagar', '9334586001', NULL, NULL, 'Chhattisgarh', 'Bhillai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029102', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(496, 'MJGE512', 'MJ972360', 'Neha', '', 'Chaudhur', 'Female', '1996-05-04', 'CHANDRA SHEKHAR CHAUDHUR', 'VIBHA DEVI', 'General', 'nehachaudhur451996@gmail.com', 'model town, nehru nagar', '9334586001', NULL, NULL, 'Chhattisgarh', 'Bhillai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029102', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(497, 'MJGE513', 'MJ490261', 'Neha', '', 'Chaudhur', 'Female', '1996-05-04', 'CHANDRA SHEKHAR CHAUDHUR', 'VIBHA DEVI', 'General', 'nehachaudhur451996@gmail.com', 'model town, nehru nagar', '9334586001', NULL, NULL, 'Chhattisgarh', 'Bhillai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029102', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(498, 'MJGE514', 'MJ971526', 'sohini', 'sohini', 'sharma', 'Female', '1977-05-17', 'ranjan sharma ', 'krishna devi', 'General', 'Sohinisharma28@gmail.com@gmail.com', '106/80 chaukhandi kydganj', '9369552759', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '211003', NULL, NULL, NULL, 'Inactive', NULL, '1', '908770', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(499, 'MJGE515', 'MJ841705', 'sohini', 'sohini', 'sharma', 'Female', '1977-05-17', 'ranjan sharma ', 'krishna devi', 'General', 'Sohinisharma28@gmail.com@gmail.com', '106/80 chaukhandi kydganj', '9369552759', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '211003', NULL, NULL, NULL, 'Inactive', NULL, '1', '908770', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(500, 'MJGE516', 'MJ018647', 'sohini', 'sohini', 'sharma', 'Female', '1977-05-17', 'ranjan sharma ', 'krishna devi', 'General', 'Sohinisharma28@gmail.com@gmail.com', '106/80 chaukhandi kydganj', '9369552759', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '211003', NULL, NULL, NULL, 'Inactive', NULL, '1', '908770', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(501, 'MJGE517', 'MJ384195', 'sohini', 'sohini', 'sharma', 'Female', '1977-05-17', 'ranjan sharma ', 'krishna devi', 'General', 'Sohinisharma28@gmail.com@gmail.com', '106/80 chaukhandi kydganj', '9369552759', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '211003', NULL, NULL, NULL, 'Inactive', NULL, '1', '908770', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(502, 'MJGE518', 'MJ190562', 'Sohni', '', 'sharma ', 'Female', '1977-05-17', 'ranjan sharma ', 'krishna devi ', 'General', 'Sohinisharma28@gmail.com', '106/80chaukhandikydganj', '9369552759', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '211003', NULL, NULL, NULL, 'Inactive', NULL, '1', '908770', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(503, 'MJGE519', 'MJ610593', 'Sohni', '', 'sharma ', 'Female', '1977-05-17', 'ranjan sharma ', 'krishna devi ', 'General', 'Sohinisharma28@gmail.com', '106/80chaukhandikydganj', '9369552759', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '211003', NULL, NULL, NULL, 'Inactive', NULL, '1', '908770', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(504, 'MJGE520', 'MJ125680', 'samit', 'kumar', 'barik', 'Male', '1992-05-01', 'ravishankar barik', 'shailsuta barik', 'OBC', 'samitbarik16@gmail.com', 'house no.76,bastipara-2,mohka.post.-singhanpur, basna ', '9753583523', NULL, NULL, 'Chhattisgarh', ' mahasamund', 'India', '493558', NULL, NULL, NULL, 'Inactive', NULL, '1', '97535', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(505, 'MJGE521', 'MJ894712', 'Swati', '', 'Galav', 'Female', '1996-02-28', 'Shri Ashok Kumar Galav', 'S.m.t. Keshari Galav', 'General', 'galavswati@gmail.com', 'plot no. 23, maitri vihar near shiva public school, bhilai', '6268466649', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029175', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(506, 'MJGE522', 'MJ067253', 'pinky', '', '', 'Female', '2020-12-27', 'Ramchandra', 'Pramila', 'General', 'pink.singh1985@gmail.com', 'sunder nager camp1 bhilai', '9691143344', NULL, NULL, 'Andhra Pradesh', 'Bhilai durg', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029113', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(507, 'MJGE523', 'MJ468213', 'pinky', '', '', 'Female', '2020-12-27', 'Ramchandra', 'Pramila', 'General', 'pink.singh1985@gmail.com', 'sunder nager camp1 bhilai', '9691143344', NULL, NULL, 'Andhra Pradesh', 'Bhilai durg', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029113', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(508, 'MJGE524', 'MJ142069', 'pinky', '', '', 'Female', '2020-12-27', 'Ramchandra', 'Pramila', 'General', 'pink.singh1985@gmail.com', 'sunder nager camp1 bhilai', '9691143344', NULL, NULL, 'Andhra Pradesh', 'Bhilai durg', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029113', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(509, 'MJGE525', 'MJ291563', 'pinky', '', '', 'Female', '2020-12-27', 'Ramchandra', 'Pramila', 'General', 'pink.singh1985@gmail.com', 'sunder nager camp1 bhilai', '9691143344', NULL, NULL, 'Andhra Pradesh', 'Bhilai durg', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029113', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(510, 'MJGE526', 'MJ165492', 'Manisha', '', 'Chandel', 'Female', '1996-03-05', 'K L Chandel', 'Subhadra Chandel', 'General', 'chandelmanisha909@gmail.com', 'Near gayatri mandir tata line kohka bhilai', '8109590003', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029080', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(511, 'MJGE527', 'MJ841356', 'Swati galav', '', 'Galav', 'Female', '1996-02-28', 'Ashok kumar galav', 'Keshari galav', 'General', 'galavswati@gmail.com', 'plot no. 23, maitri vihar near shiva public school, bhilai', '6268466649', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', ' 19340029175', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(512, 'MJGE528', 'MJ046897', 'MADHU', '', 'KUMARI', 'Female', '1993-03-07', 'TIKESHWAR PRASAD SAHU', 'INDARNI BAI', 'OBC', 'tikeshwarmadhusahu@gmail.com', 'BAJRANG PARA KOHKA NEAR BY LIMHA TALAB JAGRITI BHAWAN STREET NO.18/D HOUSE NO.118/K BHILAI DURG 490023 ', '8720853555', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029073', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(513, 'MJGE529', 'MJ724361', 'Md ', 'iftekhar ', '', 'Male', '2020-05-12', 'Md irfan ', 'Bibi samima ', 'General', 'mdiftekhar309@gmail.com', 'At palwa , po+ps= sanhoula , dist= bhagalpur , state bihar', '9696834854', NULL, NULL, 'Bihar', 'bhagalpur ', 'India', '813225', NULL, NULL, NULL, 'Inactive', NULL, '1', '7201400246', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(514, 'MJGE530', 'MJ946120', 'vijay', 'Kumar', 'Deshmukh', 'Male', '1997-06-13', 'Tularam DESHMUKH', 'shesh Bai Deshmukh', 'OBC', 'vijay999000desh@gmail.com', 'Behind Mohan Nager Thana police Quatter Durg', '7470389801', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029184', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(515, 'MJGE531', 'MJ350947', 'vijay', 'Kumar', 'Deshmukh', 'Male', '1997-06-13', 'Tularam DESHMUKH', 'shesh Bai Deshmukh', 'OBC', 'vijay999000desh@gmail.com', 'Behind Mohan Nager Thana police Quatter Durg', '7470389801', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029184', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(516, 'MJGE532', 'MJ369580', '', '', '', '', '0000-00-00', '', '', '', '', '', '', NULL, NULL, '', '', '', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '', '', '', NULL, NULL, NULL, NULL),
(517, 'MJGE533', 'MJ354609', 'YASHVANT', '', '', 'Male', '2000-05-20', 'JEETRAM SAHU', 'FIRTEEN BAI', 'OBC', 'yashsahu1322.com@gmail.com', 'NAWAGARH', '917067172632', NULL, NULL, 'Chhattisgarh', 'NANAWAGARH', 'India', '495557', NULL, NULL, NULL, 'Inactive', NULL, '1', 'yashsahu1322.com@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(518, 'MJGE534', 'MJ089564', 'YASHVANT', '', '', 'Male', '2000-05-20', 'JEETRAM SAHU', 'FIRTEEN BAI', 'OBC', 'yashsahu1322.com@gmail.com', 'NAWAGARH', '917067172632', NULL, NULL, 'Chhattisgarh', 'NANAWAGARH', 'India', '495557', NULL, NULL, NULL, 'Inactive', NULL, '1', 'yashsahu1322.com@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(519, 'MJGE535', 'MJ846529', 'Roshni', '', 'janghel', 'Female', '1996-06-30', 'Rekhchandra Janghel', 'shyambati', 'OBC', 'roshnaijanghelrani@gmail.com', 'pardeshi pan bhander arya nagar kohaka ', '8224018191', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029147', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(522, 'MJGE538', 'MJ483520', 'Radha', '', 'Singh', 'Female', '1995-06-12', 'Shri Asarphi Singh', 'Smt. Fulbasiya Singh', 'General', 'singh46bahadur@gmaul.com', 'Ward No.1 Jalkeshwerpara', '9644829347', NULL, NULL, 'Chhattisgarh', 'Ramanujganj', 'India', '497220', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029134', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(523, 'MJGE539', 'MJ541386', 'Radha', '', 'Singh', 'Female', '1995-06-12', 'Shri Asarphi Singh', 'Smt. Fulbasiya Singh', 'General', 'singh46bahadur@gmaul.com', 'Ward No.1 Jalkeshwerpara', '9644829347', NULL, NULL, 'Chhattisgarh', 'Ramanujganj', 'India', '497220', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029134', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(524, 'MJGE540', 'MJ089742', 'Kameshwari', 'chhoti', 'verma', 'Female', '1998-08-16', 'chandrakumar', 'chitrekha', 'OBC', 'chhotiverma08@gmail.com', 'kohka bhilai', '9131780779', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '1934001059', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(525, 'MJGE541', 'MJ537916', 'Kameshwari', 'chhoti', 'verma', 'Female', '1998-08-16', 'chandrakumar', 'chitrekha', 'OBC', 'chhotiverma08@gmail.com', 'kohka bhilai', '9131780779', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '1934001059', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(526, 'MJGE542', 'MJ264907', 'Bharti', '', 'sao', 'Female', '1993-11-23', 'Virendra sao', 'Sulochana sao', 'General', 'bhartisao2311@gmail.com', 'dr.rajendera parsad chowk ward 7 murum khadan supela', '6261094190', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029029', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(527, 'MJGE543', 'MJ196830', 'BHARTI', '', 'SAO', 'Female', '1993-11-23', 'VIRAENDRA', 'SULOCHANA SAO', 'General', 'bhartisao2311@gmial.com', 'DR.RAJENDRA PARSAD CHOWk WAD No 7 SUPELA', '6261094190', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029029', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(528, 'MJGE544', 'MJ613957', 'BHARTI', '', 'SAO', 'Female', '1993-11-23', 'VIRAENDRA', 'SULOCHANA SAO', 'General', 'bhartisao2311@gmial.com', 'DR.RAJENDRA PARSAD CHOWk WAD No 7 SUPELA', '6261094190', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029029', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(529, 'MJGE545', 'MJ567403', 'BHARTI', '', 'SAO', 'Female', '1993-11-23', 'VIRAENDRA', 'SULOCHANA SAO', 'General', 'bhartisao2311@gmial.com', 'DR.RAJENDRA PARSAD CHOWk WAD No 7 SUPELA', '6261094190', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029029', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(530, 'MJGE546', 'MJ684930', 'Indu', '', 'Prashant', 'Female', '1986-07-02', 'C Prashant Kumar', 'Indira Murli', 'General', 'induprashant1987@gmail.com', 'contractor colony ,street-15,supela, bhilai', '9752615597', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029049', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(531, 'MJGE547', 'MJ934528', 'Indu', '', 'Prashant', 'Female', '1986-07-02', 'C Prashant Kumar', 'Indira Murli', 'General', 'induprashant1987@gmail.com', 'contractor colony ,street-15,supela, bhilai', '9752615597', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029049', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(532, 'MJGE548', 'MJ371680', 'rohini', '', 'dutta', 'Female', '1989-07-01', 'ujal kumar dutta', 'sushma sarkar', 'General', 'poojasarkar05050@gmail.com', 'qno 241fouji nagar', '8817179614', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490026', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029145', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(533, 'MJGE549', 'MJ628017', 'Shubham', 'Kumar ', 'Gupta', 'Male', '1995-11-02', 'Mohan Prasad', 'Arti Rani', 'General', 'Shubhamskumar02@gmail.com', 'Nehru Nagar Bhilai', '6264955655', NULL, NULL, 'Chhattisgarh', 'Bhilai ', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029204', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(534, 'MJGE550', 'MJ508173', 'Shubham', 'Kumar ', 'Gupta', 'Male', '1995-11-02', 'Mohan Prasad', 'Arti Rani', 'General', 'Shubhamskumar02@gmail.com', 'Nehru Nagar Bhilai', '6264955655', NULL, NULL, 'Chhattisgarh', 'Bhilai ', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029204', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(535, 'MJGE551', 'MJ386059', 'namrata', '', 'sahu', 'Female', '1996-01-16', 'devram', 'chandraprabha', 'General', 'nakhrebaaz.neha@gmail.com', 'kadambari nagar durg', '9752618772', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029096', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(536, 'MJGE552', 'MJ862130', 'namrata', '', 'sahu', 'Female', '1996-01-16', 'devram', 'chandraprabha', 'General', 'nakhrebaaz.neha@gmail.com', 'kadambari nagar durg', '9752618772', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029096', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(537, 'MJGE553', 'MJ982176', 'Nisha', '', 'Nisha Shrivastava', 'Female', '1992-09-27', 'Abhishek Shrivastava', 'Uma Shrivastava', 'General', 's.nisha.abhi@gmail.com', 'Radhika Nagar', '9827524546', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 's.nisha.abhi@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(538, 'MJGE554', 'MJ392708', 'Nisha', '', 'Nisha Shrivastava', 'Female', '1992-09-27', 'Abhishek Shrivastava', 'Uma Shrivastava', 'General', 's.nisha.abhi@gmail.com', 'Radhika Nagar', '9827524546', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 's.nisha.abhi@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(539, 'MJGE555', 'MJ789305', 'Nisha', '', 'Nisha Shrivastava', 'Female', '1992-09-27', 'Abhishek Shrivastava', 'Uma Shrivastava', 'General', 's.nisha.abhi@gmail.com', 'Radhika Nagar', '9827524546', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 's.nisha.abhi@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(540, 'MJGE556', 'MJ247135', 'Nisha', '', 'Nisha Shrivastava', 'Female', '1992-09-27', 'Abhishek Shrivastava', 'Uma Shrivastava', 'General', 's.nisha.abhi@gmail.com', 'Radhika Nagar', '9827524546', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 's.nisha.abhi@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(541, 'MJGE557', 'MJ198247', 'mamta', '', 'hirwani', 'Female', '1995-08-27', 'ramnarayan hirwani', 'Sandhya hirwani', 'OBC', 'hirwanimamta123@gmail.com', 'azad nagar antagarh road', '+1916260499644', NULL, NULL, 'Chhattisgarh', 'bhanupratappur', 'India', '494669', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(542, 'MJGE558', 'MJ109243', 'mamta', '', 'hirwani', 'Female', '1995-08-27', 'ramnarayan hirwani', 'Sandhya hirwani', 'OBC', 'hirwanimamta123@gmail.com', 'azad nagar antagarh road', '+1916260499644', NULL, NULL, 'Chhattisgarh', 'bhanupratappur', 'India', '494669', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(543, 'MJGE559', 'MJ346157', 'Anupama', '', 'Sharma', 'Female', '1994-05-16', 'Dinesh Sharma', 'Rekha Sharma', 'General', 'anupamasharma160594@gmail.com', 'Qr no 7B street 42 sector-7', '7647856955', NULL, NULL, 'Chhattisgarh', 'Bhilai Nagar', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029016', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(544, 'MJGE560', 'MJ562479', 'Swati', '', 'Deshmukh', 'Female', '1992-09-22', 'kuleshwar prasad ', 'Radha bai', 'OBC', 'swatideshmukh2292@gmail.com', 'Behind mohan nager thana police quatter Durg', '8770072154', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029173', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(545, 'MJGE561', 'MJ312960', 'rakesh ', 'kumar ', 'Singh ', 'Male', '2020-12-28', 'ram sajeevan Singh ', 'Gammalm devi', 'General', 'singh1kumar2rakesh@gmail.com', 'tendui sarayinayat', '9415605645', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '221505', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340129026', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(546, 'MJGE562', 'MJ157290', 'rakesh ', 'kumar ', 'Singh ', 'Male', '2020-12-28', 'ram sajeevan Singh ', 'Gammalm devi', 'General', 'singh1kumar2rakesh@gmail.com', 'tendui sarayinayat', '9415605645', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '221505', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340129026', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(547, 'MJGE563', 'MJ150683', 'Chhagan ', 'Lal', 'Patel', 'Male', '2020-12-28', 'Mahabal patel', 'Ratni bai patel', 'General', 'chagan1100patel@gmail.com', 'Football ground 256 chowk w-5', '9770934201', NULL, NULL, 'Chhattisgarh', 'Dalli Rajhara', 'India', '491228', NULL, NULL, NULL, 'Inactive', NULL, '1', '124', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(548, 'MJGE564', 'MJ728931', 'Chhagan ', 'Lal', 'Patel', 'Male', '2020-12-28', 'Mahabal patel', 'Ratni bai patel', 'General', 'chagan1100patel@gmail.com', 'Football ground 256 chowk w-5', '9770934201', NULL, NULL, 'Chhattisgarh', 'Dalli Rajhara', 'India', '491228', NULL, NULL, NULL, 'Inactive', NULL, '1', '124', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(549, 'MJGE565', 'MJ178946', 'rakesh ', 'kumar ', 'Singh ', 'Male', '1986-12-02', 'ram sajeevan Singh ', 'Gammalm devi', 'General', 'singh1kumar2rakesh@gmail.com', 'tendui sarayinayat', '9415605645', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '221505', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340129026', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(550, 'MJGE566', 'MJ869415', 'Neha', '', 'giri', 'Female', '1994-06-09', 'Ashok kumar giri', 'sita giri', 'General', 'nehagiri0921@gmail.com', 'supela', '9131454142', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029101', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(551, 'MJGE567', 'MJ678319', 'Neha', '', 'giri', 'Female', '1994-12-09', 'Ashok kumar giri', 'sitagiri', 'General', 'nehagiri0921@gmail.com', 'supela', '9131454142', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029101', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(552, 'MJGE568', 'MJ416328', 'rakesh ', 'kumar ', 'Singh ', 'Male', '1986-12-02', 'ram sajeevan Singh ', 'Gammalm devi', 'General', 'singh1kumar2rakesh@gmail.com', 'tendui sarayinayat', '9415605645', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '221505', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340129026', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(553, 'MJGE569', 'MJ284697', 'Shubham', '', 'Ojha', 'Male', '1999-05-24', 'Lt. Santosh Ojha', 'Punam Ojha', 'General', 'ojhas7210@gmail.com', 'baikunth nagar, Camp 2, bhilai', '9340402701', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '1234', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(554, 'MJGE570', 'MJ397821', 'NITU', '', 'KUMARI', 'Female', '2020-12-28', 'kaushlendrq singh', 'sona kumari', 'General', 'nitusinghhimansu@gmail.com', 'panchsheel nagarwest,charoda', '8839269909', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490025', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029109', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(555, 'MJGE571', 'MJ083521', 'Manju', 'sahu', 'manju', 'Female', '1997-12-10', 'Tilochan sahu', 'kunti bai', 'OBC', 'manjusahu0006@gmail.com', 'kohka bhilai', '+44918770654062', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '491993', NULL, NULL, NULL, 'Inactive', NULL, '1', '1934001083', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(556, 'MJGE572', 'MJ506794', 'Manju', 'sahu', 'manju', 'Female', '1997-12-10', 'Tilochan sahu', 'kunti bai', 'OBC', 'manjusahu0006@gmail.com', 'kohka bhilai', '+44918770654062', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '491993', NULL, NULL, NULL, 'Inactive', NULL, '1', '1934001083', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(557, 'MJGE573', 'MJ210738', 'Manju', 'sahu', 'manju', 'Female', '1997-12-10', 'Tilochan sahu', 'kunti bai', 'OBC', 'manjusahu0006@gmail.com', 'kohka bhilai', '+44918770654062', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '491993', NULL, NULL, NULL, 'Inactive', NULL, '1', '1934001083', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(558, 'MJGE574', 'MJ342965', 'roshni', '', 'sharma', 'Male', '1991-04-18', 'hari shankar sharma', 'kumudni sharma', 'General', 'roshnisharmaaaa1991@gmail.com', 'jai hind nagar akaltars', '6265840337', NULL, NULL, 'Andhra Pradesh', 'akaltara', 'India', '495553', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029146', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(559, 'MJGE575', 'MJ981275', 'DIMPAL', '', 'GOSWAMI', 'Female', '1997-07-08', 'SUKRIT DAS GOSWAWI', 'SAROJ', 'OBC', 'dimpalgoswami3744@gmail.com', 'PURANI BASTI KOHKA BHILAI', '+1916260684850', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029041', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(560, 'MJGE576', 'MJ791206', 'Nilam', '', 'Pipariya', 'Female', '1988-02-03', 'Suresh chandra', 'Radhika hardel', 'OBC', 'noveshwar1984@gimail.com', 'bharda', '+1917067021841', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '491221', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029105', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(561, 'MJGE577', 'MJ369820', 'RAKHI', '', 'RAKHI KAMLE', 'Female', '2020-12-28', 'RAKHI KAMLE', 'RAKHI KAMLE', 'General', 'rakhikamle@gmail.com', 'B32 karnachari Nagar  ', '9827395894', NULL, NULL, 'Andhra Pradesh', 'Durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', 'rakhikamle@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(562, 'MJGE578', 'MJ681297', 'RAKHI', '', 'RAKHI KAMLE', 'Female', '2020-12-28', 'RAKHI KAMLE', 'RAKHI KAMLE', 'General', 'rakhikamle@gmail.com', 'B32 karnachari Nagar  ', '9827395894', NULL, NULL, 'Andhra Pradesh', 'Durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', 'rakhikamle@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(563, 'MJGE579', 'MJ156798', 'Anjali', '', 'soni', 'Female', '1982-03-15', 'Ramanand soni', 'Saroj soni', 'OBC', 'anjaliswarnkar82@gmail.com', 'Smriti nagar', '7354509876', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', 'anjaliswarnkar82@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(564, 'MJGE580', 'MJ321680', 'chandrakala', '', '', 'Female', '1988-03-12', 'Ram laxman', 'Urmila davi', 'General', 'ajay19chandu@gmail.com', 'Arya nagar kohka bhilai c.g', '8198820389', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029036', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(565, 'MJGE581', 'MJ870253', 'chandrakala', '', '', 'Female', '1988-03-12', 'Ram laxman', 'Urmila davi', 'General', 'ajay19chandu@gmail.com', 'Arya nagar kohka bhilai c.g', '8198820389', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029036', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(566, 'MJGE582', 'MJ201749', 'RAKHI', '', 'RAKHI KAMLE', 'Female', '2020-12-28', 'RAKHI KAMLE', 'RAKHI KAMLE', 'General', 'rakhikamle@gmail.com', 'B32 karnachari Nagar  ', '9827395894', NULL, NULL, 'Andhra Pradesh', 'Durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', 'rakhikamle@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(567, 'MJGE583', 'MJ518609', 'Anjali', '', 'Soni', 'Male', '2020-12-28', 'Ramanand soni', 'Saroj soni', 'OBC', 'anjaliswarnkar82@gmail.com', 'Smriti nagar', '7354509876', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', 'anjaliswarnkar82@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(568, 'MJGE584', 'MJ534106', 'Anjali', '', 'Soni', 'Male', '2020-12-28', 'Ramanand soni', 'Saroj soni', 'OBC', 'anjaliswarnkar82@gmail.com', 'Smriti nagar', '7354509876', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', 'anjaliswarnkar82@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(569, 'MJGE585', 'MJ513760', 'Aparna', '', 'mridha', 'Female', '1988-06-12', 'shankat sarkar', 'champa mridha', 'General', 'aparna.roja1988@gmail.com', 'thanapara ward no 10 pakhanjur kanker', '9406414266', NULL, NULL, 'Chhattisgarh', 'raipur', 'India', '494776', NULL, NULL, NULL, 'Inactive', NULL, '1', 'aparna.roja1988@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(570, 'MJGE586', 'MJ893127', 'Anjali', '', 'Soni', 'Female', '2020-12-28', 'Ramanand soni', 'Saroj soni', 'OBC', 'anjaliswarnkar82@gmail.com', 'Smriti nagar', '7354509876', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', 'anjaliswarnkar82@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(572, 'MJGE588', 'MJ719652', 'Dipti ', '', 'Mishra ', 'Female', '1985-07-27', 'Som Nath Mishra ', 'Sadhana Mishra ', 'General', 'dipti271985@gmail.com', 'Borsi,    Durg', '9340237687', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029043', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(574, 'MJGE590', 'MJ241730', 'Hemlata', '', 'verma', 'Female', '1997-09-09', 'Radhesyam verma', 'Uma', 'General', 'hv7909823629@gmail.com', '303 ward no 44 krishna chouk maroda tank bhilai ', '6261313429', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029047', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(576, 'MJGE592', 'MJ509678', 'Hemlata', '', 'verma', 'Female', '1997-09-09', 'Radhesyam verma', 'Uma', 'General', 'hv7909823629@gmail.com', '303 ward no 44 krishna chouk maroda tank bhilai ', '6261313429', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029047', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(577, 'MJGE593', 'MJ289140', 'Hemlata', '', 'verma', 'Female', '1997-09-09', 'Radhesyam verma', 'Uma', 'General', 'hv7909823629@gmail.com', '303 ward no 44 krishna chouk maroda tank bhilai ', '6261313429', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029047', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(578, 'MJGE594', 'MJ632741', 'Ritesh ', '', 'Patel ', 'Male', '1996-12-27', 'Bodhram Patel ', 'Narmada Patel ', 'General', 'riteshpatel0078@gmail.com', 'village - Jagat , post - Bhukel', '7987540060', NULL, NULL, 'Chhattisgarh', 'Basna', 'India', '493554', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029144', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(579, 'MJGE595', 'MJ154087', 'Ritesh ', '', 'Patel ', 'Male', '1996-12-27', 'Bodhram Patel ', 'Narmada Patel ', 'General', 'riteshpatel0078@gmail.com', 'village - Jagat , post - Bhukel', '7987540060', NULL, NULL, 'Chhattisgarh', 'Basna', 'India', '493554', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029144', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(580, 'MJGE596', 'MJ764239', 'priyanka', '', 'painkra', 'Female', '1998-08-17', 'Chandan sai painkra', 'rambhavti', 'ST', 'priyankapainkra15@gmail.com', 'darbari toli jashpur ', '+44916265825280', NULL, NULL, 'Chhattisgarh', 'jashpur', 'India', '496331', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029133', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(581, 'MJGE597', 'MJ016249', 'priyanka', '', 'painkra', 'Female', '1998-08-17', 'Chandan sai painkra', 'rambhavti', 'ST', 'priyankapainkra15@gmail.com', 'darbari toli jashpur ', '+44916265825280', NULL, NULL, 'Chhattisgarh', 'jashpur', 'India', '496331', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029133', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(582, 'MJGE598', 'MJ128369', 'priyanka', '', 'painkra', 'Female', '1998-08-17', 'Chandan sai painkra', 'rambhavti', 'ST', 'priyankapainkra15@gmail.com', 'darbari toli jashpur ', '+44916265825280', NULL, NULL, 'Chhattisgarh', 'jashpur', 'India', '496331', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029133', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(583, 'MJGE599', 'MJ014278', 'Manju', 'sahu', 'manju', 'Female', '1997-10-10', 'Tilochan sahu', 'kunti bai', 'OBC', 'manjusahu0006@gmail.com', 'kohka bhilai', '+44918770654062', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029083', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(584, 'MJGE600', 'MJ937482', 'Savita ', '', 'Bhojane', 'Female', '1987-09-23', 'Praveen kumar Bhojane', 'Meera Bansinge', 'General', 'sbansinge@gmail.com', 'plot no. 61, vivekanand nagar ', '9893606812', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(585, 'MJGE601', 'MJ856479', 'Savita ', '', 'Bhojane', 'Female', '1987-09-23', 'Praveen kumar Bhojane', 'Meera Bansinge', 'General', 'sbansinge@gmail.com', 'plot no. 61, vivekanand nagar ', '9893606812', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(586, 'MJGE602', 'MJ942715', 'Bharati', 'Sahu', 'Bharati', 'Female', '1995-10-29', 'Yogeshwar', 'Lalita bai', 'OBC', 'bharatisahu40@gmail.com', 'Village_Dotopar . Post_Arkar . Dist_Balod', '6261013355', NULL, NULL, 'Chhattisgarh', 'Balod', 'India', '491222', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029028', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(587, 'MJGE603', 'MJ307128', 'Bharati', 'Sahu', 'Bharati', 'Female', '1995-10-29', 'Yogeshwar', 'Lalita bai', 'OBC', 'bharatisahu40@gmail.com', 'Village_Dotopar . Post_Arkar . Dist_Balod', '6261013355', NULL, NULL, 'Chhattisgarh', 'Balod', 'India', '491222', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029028', 'MJC', 'M J College', NULL, NULL, NULL, NULL);
INSERT INTO `mj_student` (`id`, `emp_id`, `password`, `firstname`, `middlename`, `lastname`, `gender`, `dob`, `father`, `mother`, `caste_category`, `email`, `address`, `mobile`, `contact2`, `address2`, `state`, `city`, `country`, `pincode`, `admin_role`, `photo`, `created_at`, `live_status`, `create_by`, `admission_status`, `roll_no`, `college_id`, `college_name`, `percentile`, `enquiry`, `remarks`, `recall`) VALUES
(588, 'MJGE604', 'MJ317462', 'Shobhna ', '', 'Saxena', 'Female', '2020-12-28', 'Lt. Ramesh Chandra Saxena', 'Rajni Saxena', 'General', 'abclshobhna@gmail.com', 'C-95,Koormanchal nagar.near alma mater school', '8194083910', NULL, NULL, 'Uttar Pradesh', 'Bareilly', 'India', '243122', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340129037', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(589, 'MJGE605', 'MJ853174', 'Ritu', '', 'Ritu Kose', 'Female', '1990-12-26', 'Ritu Kose', 'Ritu Kose', 'OBC', 'ritu.kose@gmail.com', 'qr-18/E street-6sector4', '7828680974', NULL, NULL, 'Chhattisgarh', 'Bhilai nagar', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', 'ritu.kose@gmail.com', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(590, 'MJGE606', 'MJ185960', 'NEETU', '', 'SAHU', 'Female', '1996-09-19', 'SANTOSH KUMAR SAHU', 'DHANA BAI', 'OBC', 'kamtakamtakumar731@gmail.com', 'Khati', '7828963038', NULL, NULL, 'Chhattisgarh', 'Bemetara', 'India', '491335', NULL, NULL, NULL, 'Inactive', NULL, '1', '123456789', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(591, 'MJGE607', 'MJ375804', 'Ruchi', '', 'Paharia ', 'Female', '1985-02-15', 'Amit Paharia', 'sheela gupta', 'General', 'ruchi.mcs@gmail.com', '52/14 nehru nagar east', '9981094637', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(592, 'MJGE608', 'MJ871230', 'Ruchi', '', 'Paharia ', 'Female', '1985-02-15', 'Amit Paharia', 'sheela gupta', 'General', 'ruchi.mcs@gmail.com', '52/14 nehru nagar east', '9981094637', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(593, 'MJGE609', 'MJ230596', 'Ruchi', '', 'Paharia ', 'Female', '1985-02-15', 'Amit Paharia', 'sheela gupta', 'General', 'ruchi.mcs@gmail.com', '52/14 nehru nagar east', '9981094637', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029148', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(594, 'MJGE610', 'MJ564791', 'Anjali', '', 'singh', 'Female', '1993-10-14', 'Ramashraya singh', 'kiran singh', 'ST', 'sandyk275@gmail.com', 'H.NO.954 St.No.16 Mahadev colony shanti nagar bhilai durg ', '9827135837', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029012', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(595, 'MJGE611', 'MJ109423', 'Mithlesh', 'kumar', 'Kumar', 'Male', '2018-08-22', 'chetan lal', 'maya bai', 'OBC', 'mithleshkumarsen1998@gmail.com', 'jamgaon (R)', '8889106037', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '491223', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029088', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(596, 'MJGE612', 'MJ873546', 'Manju', 'manju', 'Sahu', 'Female', '1997-10-10', 'Tilochan sahu', 'kunti bai ', 'OBC', 'manjusahu0006@gmail.com', 'bemetarah', '8770654062', NULL, NULL, 'Chhattisgarh', 'bemetarah ', 'India', '491335', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029083', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(597, 'MJGE613', 'MJ025698', 'Manju', 'manju', 'Sahu', 'Female', '1997-10-10', 'Tilochan sahu', 'kunti bai ', 'OBC', 'manjusahu0006@gmail.com', 'bemetarah', '8770654062', NULL, NULL, 'Chhattisgarh', 'bemetarah ', 'India', '491335', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029083', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(598, 'MJGE614', 'MJ290743', 'Babita', '', 'Gound', 'Female', '1990-10-17', 'Omrao Gound', 'Dropadi Gound', 'ST', 'sandyk275@gmail.com', 'H.N 954 st 16 mahadev colony shanti nagar', '6232070249', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029025', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(599, 'MJGE615', 'MJ234805', 'Babita', '', 'Gound', 'Female', '1990-10-17', 'Omrao Gound', 'Dropadi Gound', 'ST', 'sandyk275@gmail.com', 'H.N 954 st 16 mahadev colony shanti nagar', '6232070249', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029025', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(600, 'MJGE616', 'MJ379124', 'jyoti ', '', 'verma', 'Female', '1993-09-30', 'Devendra kumar verma', 'Mohini verma', 'OBC', 'vermajyoti7412@gmail.com', '74/12 nehru nagar west', '9285014555', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029055', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(601, 'MJGE617', 'MJ823179', 'jyoti ', '', 'verma', 'Female', '1993-09-30', 'Devendra kumar verma', 'Mohini verma', 'OBC', 'vermajyoti7412@gmail.com', '74/12 nehru nagar west', '9285014555', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029055', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(602, 'MJGE618', 'MJ729035', 'MAMTA', '', 'SAHU', 'Female', '1987-12-04', 'LOKESHWAR SONBER', 'YUVTI BAI', 'OBC', 'mamtakalihari11@gmail.com', 'VILLAGE KOLIHAMAR POST GURUR', '9131341395', NULL, NULL, 'Chhattisgarh', 'BALOD', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029077', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(603, 'MJGE619', 'MJ641327', 'MAMTA', '', 'SAHU', 'Female', '1987-12-04', 'LOKESHWAR SONBER', 'YUVTI BAI', 'OBC', 'mamtakalihari11@gmail.com', 'VILLAGE KOLIHAMAR POST GURUR', '9131341395', NULL, NULL, 'Chhattisgarh', 'BALOD', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029077', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(604, 'MJGE620', 'MJ591764', 'pratima', '', 'sinha', 'Female', '1998-09-22', 'manthir sinha', 'ganeshiya sinha', 'OBC', 'sinhapratima498@gmail.com', 'ward no 15 belgaon chhuikhadan', '9407966772', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491888', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029124', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(605, 'MJGE621', 'MJ384192', 'jyoti', 'jyoti verma', 'verma', 'Female', '1996-08-18', 'ramesh kumar', 'purnima bai', 'OBC', 'jyotiverma1881996@gmail.com', 'indrawati nagar kohka bhilai ', '8251872287', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029053', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(606, 'MJGE622', 'MJ861793', 'jyoti', 'jyoti verma', 'verma', 'Female', '1996-08-18', 'ramesh kumar', 'purnima bai', 'OBC', 'jyotiverma1881996@gmail.com', 'indrawati nagar kohka bhilai ', '8251872287', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029053', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(607, 'MJGE623', 'MJ041736', 'jyoti', 'jyoti verma', 'verma', 'Female', '1996-08-18', 'ramesh kumar', 'purnima bai', 'OBC', 'jyotiverma1881996@gmail.com', 'indrawati nagar kohka bhilai ', '8251872287', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029053', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(608, 'MJGE624', 'MJ642019', 'jyoti', 'jyoti verma', 'verma', 'Female', '1996-08-18', 'ramesh kumar', 'purnima bai', 'OBC', 'jyotiverma1881996@gmail.com', 'indrawati nagar kohka bhilai ', '8251872287', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029053', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(609, 'MJGE625', 'MJ896537', 'jyoti', 'jyoti verma', 'verma', 'Female', '1996-08-18', 'ramesh kumar', 'purnima bai', 'OBC', 'jyotiverma1881996@gmail.com', 'indrawati nagar kohka bhilai ', '8251872287', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029053', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(610, 'MJGE626', 'MJ891236', 'kalendri', 'manikpuri ', '', 'Female', '1995-06-02', 'dudhe das', 'sarojani manikpuri', 'OBC', 'dasrani387@gmail.com', 'ama para dhamtari', '7000844482', NULL, NULL, 'Chhattisgarh', 'Dhamtari ', 'India', '493773', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(611, 'MJGE627', 'MJ013287', 'kalendri', 'manikpuri ', '', 'Female', '1995-06-02', 'dudhe das', 'sarojani manikpuri', 'OBC', 'dasrani387@gmail.com', 'ama para dhamtari', '7000844482', NULL, NULL, 'Chhattisgarh', 'Dhamtari ', 'India', '493773', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(612, 'MJGE628', 'MJ723189', 'HIMESHWARI', '', '', 'Female', '1994-09-07', 'SUKHNANDAN', 'LEVANI BAI', 'SC', 'himeshwari1994@gmail.com', 'HO.NO.9/4 LABOUR COLONY SANJAY NAGAR SUPELA BHILAI.', '8966999409', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029048', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(613, 'MJGE629', 'MJ547896', 'Nemin', '', 'Deshmukh', 'Female', '2020-12-29', 'pushan lal Deshmukh', 'sulekha Deshmukh', 'OBC', 'nemin4131@gmail.com', 'purani basti kohka', '9340517425', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(614, 'MJGE630', 'MJ732509', 'Nemin', '', 'Deshmukh', 'Female', '2020-12-29', 'pushan lal Deshmukh', 'sulekha Deshmukh', 'OBC', 'nemin4131@gmail.com', 'purani basti kohka', '9340517425', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(615, 'MJGE631', 'MJ716598', 'Bhavna', 'sinha ', 'Sinha', 'Female', '1989-07-07', 'tamraj Kumar sinha', 'Surja sinha', 'General', 'bhavna9109225511@gmail.com', 'housing board kohka bhilai -24', '9109225511', NULL, NULL, 'Andhra Pradesh', 'durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029030', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(616, 'MJGE632', 'MJ273158', 'HIMESHWARI', '', '', 'Female', '1994-09-07', 'SUKHNANDAN', 'LEVANI BAI', 'SC', 'himeshwari1994@gmail.com', 'H.NO.9/4 LABOUR COLONY SANJAY NAGAR SUPELA.', '8966999409', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029048', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(617, 'MJGE633', 'MJ861370', 'Sohini ', '', 'Sharma ', 'Female', '1977-05-17', 'Ranjan sharma ', 'krishna devi ', 'General', 'Sohinisharma28@gmail.com', '106/80 chaukhandi kydganj', '9369552759', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '90877', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(618, 'MJGE634', 'MJ937645', 'Sohini ', '', 'Sharma ', 'Female', '1977-05-17', 'Ranjan sharma ', 'krishna devi ', 'General', 'Sohinisharma28@gmail.com', '106/80 chaukhandi kydganj', '9369552759', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '90877', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(619, 'MJGE635', 'MJ401658', 'pratima', '', 'sinha', 'Female', '1998-09-22', 'manthir sinha', 'ganeshiya sinha', 'OBC', 'sinhapratima498@gmail.com', 'ward no15 belgaon chhuikhadan', '6267679319', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491888', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029124', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(620, 'MJGE636', 'MJ871543', 'Manju', 'manju ', 'Sahu', 'Female', '1997-10-10', 'Tilochan sahu ', 'kunti bai ', 'OBC', 'poojapoojasahu555@gmail..com', 'keshdabri,bemetarah', '+44918770654062', NULL, NULL, 'Chandigarh', 'bemetarah ', 'India', '491993', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029083', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(621, 'MJGE637', 'MJ048763', 'pratima', '', 'sinha', 'Female', '1998-09-22', 'manthir sinha', 'ganeshiya sinha', 'OBC', 'sinhapratima498@gmail.com', 'ward no15 belgaon chhuikhadan', '6267679319', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491888', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029124', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(622, 'MJGE638', 'MJ672518', 'pratima', '', 'sinha', 'Female', '1998-09-22', 'manthir sinha', 'ganeshiya sinha', 'OBC', 'sinhapratima498@gmail.com', 'ward no15 belgaon chhuikhadan', '6267679319', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491888', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029124', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(623, 'MJGE639', 'MJ967418', 'pratima', '', 'sinha', 'Female', '1998-09-22', 'manthir sinha', 'ganeshiya sinha', 'OBC', 'sinhapratima498@gmail.com', 'ward no15 belgaon chhuikhadan', '6267679319', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491888', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029124', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(624, 'MJGE640', 'MJ930826', 'Sohni', '', 'sharma ', 'Female', '1977-05-17', 'Ranjan sharma ', 'krishna devi ', 'General', 'Sohinisharma28@gmail.com', '106/80 chaukhandi kydganj', '9369552759', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '211003', NULL, NULL, NULL, 'Inactive', NULL, '1', '908770', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(625, 'MJGE641', 'MJ357268', 'Sohni', '', 'sharma ', 'Female', '1977-05-17', 'Ranjan sharma ', 'krishna devi ', 'General', 'Sohinisharma28@gmail.com', '106/80 chaukhandi kydganj', '9369552759', NULL, NULL, 'Uttar Pradesh', 'prayagraj ', 'India', '211003', NULL, NULL, NULL, 'Inactive', NULL, '1', '908770', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(626, 'MJGE642', 'MJ478563', 'parul ', '', 'Tamrakar', 'Female', '1988-08-22', 'Rakesh Tamrakar', 'Shikha Tamrakar', 'General', 'neeldurg@gmail.com', 'H.no 18 Harsh Flex shankar nagar durg near muktidham chowk', '917000093517', NULL, NULL, 'Andhra Pradesh', 'Durg chhattisgarh', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', 'neeldurg@gmail.com', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(627, 'MJGE643', 'MJ052369', 'rahul', '', 'kumar', 'Male', '1995-11-08', 'JOGENDRA PRASAD', 'chinta devi', 'OBC', 'rahulkumar0811.rk@gmail.com', 'HOUSE NO 229 WARD NO 42 CHAND CHURA GABRA PAR SAMIR TAKIYA', '7549533353', NULL, NULL, 'Bihar', 'Gaya', 'India', '823001', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(628, 'MJGE644', 'MJ735024', 'pratima', '', 'sinha', 'Female', '1998-09-22', 'manthir sinha', 'ganeshiya sinha', 'OBC', 'sinhapratima498@gmail.com', 'ward no15 belgaon chhuikhadan', '+1919131734081', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029124', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(629, 'MJGE645', 'MJ491867', 'rahul', '', 'kumar', 'Male', '1995-11-08', 'JOGENDRA PRASAD', 'chinta devi', 'OBC', 'rahulkumar0811.rk@gmail.com', 'HOUSE NO 229 WARD NO 42 CHAND CHURA GABRA PAR SAMIR TAKIYA', '7549533353', NULL, NULL, 'Bihar', 'Gaya', 'India', '823001', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(630, 'MJGE646', 'MJ062413', 'Parul', '', 'Badarya', 'Female', '1988-08-22', 'Rakesh Tamrakar', 'Shikha Tamrakar', 'General', 'Neeldurg@gmail.com', 'H.no 18 Harsh Flex shankar nagar durg near mukti dhaam chowk chhattisgarh', '917000093517', NULL, NULL, 'Andhra Pradesh', 'Durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', '+1917000093517', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(631, 'MJGE647', 'MJ784961', 'pratima', '', 'sinha', 'Female', '1998-09-22', 'manthir Sinha', 'ganeshiya Sinha', 'OBC', 'sinhapratima498@gmail.com', 'Ward No15 Belgaon Chhuikhadan', '+1919131734081', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029124', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(632, 'MJGE648', 'MJ385960', 'Pooja', '', 'Verma', 'Female', '1996-09-24', 'arvind verma', 'radhana verma', 'General', 'poojaverma9039@gmail.com', 'radhana public school link road camp-2 bhilai', '8770121326', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029118', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(633, 'MJGE649', 'MJ657140', 'NEHA', 'verma', 'NEHA VERMA', 'Female', '1988-08-24', 'TUKESH VERMA', 'GAYATRI THAKUR', 'General', 'natashaver1988@gmail.com', 'Kadambari nagar durg', '918305364486', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', 'natashaver1988@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(634, 'MJGE650', 'MJ528163', 'NEHA', 'verma', 'NEHA VERMA', 'Female', '1988-08-24', 'TUKESH VERMA', 'GAYATRI THAKUR', 'General', 'natashaver1988@gmail.com', 'Kadambari nagar durg', '918305364486', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', 'natashaver1988@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(635, 'MJGE651', 'MJ852731', 'Deepali', '', 'Deepali Deo', 'Female', '1983-05-20', 'Birendra Kumar Deo', 'Kalpana Deo', 'General', 'deep2020dev@gmail.com', 'At- Ganganagar, Po- Patanagarh', '9337582590', NULL, NULL, 'Odisha', 'Bolangir', 'India', '767025', NULL, NULL, NULL, 'Inactive', NULL, '1', '123456', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(636, 'MJGE652', 'MJ143592', 'Deepali', '', 'Deo', 'Female', '1983-05-20', 'Birendra Kumar Deo', 'Kalpana Deo', 'General', 'deep2020dev@gmail.com', 'At-Ganganagar, Po-Patnagarh', '9337582590', NULL, NULL, 'Odisha', 'Bolangir', 'India', '767025', NULL, NULL, NULL, 'Inactive', NULL, '1', '123545', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(638, 'MJGE654', 'MJ268307', 'pramila', 'chandravanshi', 'chandravanshi', 'Female', '1996-12-01', 'birbal chandravanshi', 'smt.kali bai', 'OBC', 'pramilachandravanshi1996@gmail.com', 'ruse,post -ruse,teh.-pandariya,dis.-kabirdham', '8358056560', NULL, NULL, 'Chhattisgarh', 'kawardha', 'India', '192000', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(639, 'MJGE655', 'MJ327105', 'Kalyani', '', 'Dewangan', 'Female', '1997-12-14', 'Santosh Dewangan', 'Sakuntala Bai', 'OBC', 'kalyanidewangan974@gmail.com', 'Kailash Nager Kawardha', '9098791425', NULL, NULL, 'Chhattisgarh', 'Kabirdham', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '7201400236', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(640, 'MJGE656', 'MJ263598', 'Devkumari ', 'Sahu', '', 'Female', '1997-10-11', 'Kanshi Ram', 'Chanda bai', 'General', 'kameshwarsahu00@gmail.com', 'Mudhipar', '6260753273', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491881', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(642, 'MJGE658', 'MJ205867', 'AMITA', '', 'SAHU', 'Female', '1982-07-08', 'AJAY KUMAR SAHU', 'RAMDULARI SAHU', 'OBC', 'sahuamita78@gmail.com', 'Behind Bunkar Sangh SantraBadi Durg Pin _ 491001', '9755879668', NULL, NULL, 'Chhattisgarh', 'DURG', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029008', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(643, 'MJGE659', 'MJ732468', 'kajal ', '', 'Sahu', 'Female', '1998-03-08', 'chinta ram ', 'jaanki bai ', 'OBC', 'kajalsahu4568@gmail.com', 'naya dhaba road motipur ganesh para word no 8Rajnandgaon ', '9174525304', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491441', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029056', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(644, 'MJGE660', 'MJ950623', 'Mamta', '', 'Pandey', 'Female', '1978-07-14', 'Lt. S.N Pandey', 'Shanti Pandey', 'General', 'mamtashukla141978@gmail.com', 'Hig-2/8 Jawahar Nagar', '8306953069', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119030', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(645, 'MJGE661', 'MJ142836', 'POSHAN', '', 'KUMAR', 'Male', '1984-06-12', 'LALARAM SHRIVAS', 'SHAKUNTALA SHRIVAS', 'OBC', 'poshanshrivas204@gmail.com', 'DURG', '9827926815', NULL, NULL, 'Andhra Pradesh', 'DURG', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119038', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(646, 'MJGE662', 'MJ834071', 'Jitendra', '', 'kumar', 'Male', '2002-08-20', 'Bhisham', 'Hastrekha', 'OBC', 'jk3486569@gmail.com', 'nawagaon ', '9302431559', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '491233', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(647, 'MJGE663', 'MJ526893', 'Vishal ', '', 'Vanjari', 'Male', '2000-02-14', 'Mr Deepak Vanjari', 'Mrs Neha Vanjari', 'General', 'vishalvanjari1402@gmail.com', 'Street-8 Block-9 Room no-1 Hospital sector 9', '7869013355', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119062', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(648, 'MJGE664', 'MJ910824', 'pushpendra', 'kumar', 'patel', 'Male', '1995-09-29', 'shiv ram patel', 'ved kunwar patel', 'OBC', 'pushp0321@gmail.com', 'dipka', '8236823692', NULL, NULL, 'Chhattisgarh', 'korba', 'India', '495452', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119041', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(649, 'MJGE665', 'MJ563204', 'Harsh', '', 'Jain', 'Male', '2002-05-17', 'Budhmal Jain', 'Maya Jain', 'General', 'harshj3003@gmail.com', 'Main road marri deori bangla', '7869766229', NULL, NULL, 'Chhattisgarh', 'Balod', 'India', '491771', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119021', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(650, 'MJGE666', 'MJ761285', 'Dipti', 'Lalit', 'Sonchhatra', 'Female', '1982-12-03', 'Lalit kumar sonchhatra', 'Meena sonchhatra', 'General', 'popat_niraj@rediffmail.com', 'House no 35/6 Nehrunagar East', '9594524787', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119016', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(652, 'MJC668', 'MJ726109', 'POOJA', '', ' CHANDEL', 'Female', '2000-05-14', 'virendra kumar chandel', 'godawari chandel', 'OBC', 'pjchandel2018@gmail.com', 'housing board kohka', '8349130480', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'pjchandel2018@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(653, 'MJPH669', 'MJ297015', 'TIVARATH', 'DHWAJ', 'RAJAK', 'Male', '1985-03-05', 'KANHAIYA LAL RAJAK', 'PHULESHWARI RAJAK', 'OBC', 'kiranrajak035@gmail.com', 'DHARASHIV', '9669669001', NULL, NULL, 'Chhattisgarh', 'BALODABAZAR', 'India', '493526', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119058', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(654, 'MJPH670', 'MJ507246', 'Rupesh', 'kumar', 'patel', 'Male', '1997-03-20', 'Rupesh Patel', 'Rupesh Patel', 'OBC', 'rupeshkumarpatel00@gmail.com', 'village +post salna th.vishrampuri', '919584989922', NULL, NULL, 'Chhattisgarh', 'kondagaon', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', 'rupeshkumarpatel00@gmail.com', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(655, 'MJPH671', 'MJ106973', 'DEVESH', 'KUMAR ', 'SAHU', 'Male', '2002-03-06', 'RAMJI SAHU', 'SATYABHAMA SAHU', 'OBC', 'deveshsahu207@gmail.com', 'vill. saraiset post. kodwagodan th. pandariya dist. kabirdham', '9109483123', NULL, NULL, 'Chhattisgarh', 'Kawardha', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-019', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(656, 'MJPH672', 'MJ637124', 'Thaneshwar', '', 'sahu', 'Male', '2002-07-02', 'dinesh kumar sahu', 'Bhagwati bai', 'OBC', 'sibbusahu8@gmail.com', 'dinesh kumar sahu 209 hanuman mandir para ward n.16 subela baloda bazar suhela chhattisgarh 493195', '7354367893', NULL, NULL, 'Chhattisgarh', 'suhela', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-094', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(657, 'MJPH673', 'MJ749680', 'Tulsi', '', 'Sahu', 'Male', '2000-02-17', 'Dayalu ram sahu', 'Milauteen', 'OBC', 'sahutulsiram959@gmail.com', 'sahaspur lohara word no.3', '8871605620', NULL, NULL, 'Chhattisgarh', 'kawardha', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-012', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(658, 'MJPH674', 'MJ953867', 'MOHD AFAQUE', '', 'SHEIKH', 'Male', '2001-10-12', 'MOHD AKHLAQUE', 'FARHA DEEBA', 'General', 'farzinshaikh7@gmail.com', 'ekori ward', '9527297076', NULL, NULL, 'Chhattisgarh', 'chandrapur', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119053', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(659, 'MJPH675', 'MJ780253', 'SHEFALI ', '', 'JANA', 'Female', '1991-12-24', 'GANESH CHAND JANA ', 'TAPOSI JANA ', 'General', 'janashefali@gmail.com', 'A -109karamcharinagar durg', '7067023673', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119052', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(660, 'MJPH676', 'MJ726531', 'Dileshwar', '', 'Anand', 'Male', '2002-01-18', 'Bharat Anand', 'Gauri Anand', 'SC', 'dileshwaranand853@gmail.com', 'Vill.-manjgov post-jhal Dist-Bemetra', '+1917828036955', NULL, NULL, 'Chhattisgarh', 'Bemetara', 'India', '491335', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-074', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(661, 'MJPH677', 'MJ943206', 'Aashutosh', '', 'gwala', 'Male', '1998-12-21', 'rameshwar gwala', 'vimala gwala', 'OBC', 'Ashutoshgwala@gmail.com', 'purana steat bank collny bagicha ward no 03', '9179656546', NULL, NULL, 'Chhattisgarh', 'bagicha jaspur chhattisgarh india', 'India', '496224', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119001', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(662, 'MJPH678', 'MJ874209', 'Shivmol ', '', 'Awasthy', 'Male', '2002-07-02', 'Rajesh kumar awasthy', 'Meenu awasthy', 'General', 'shivmol08@gmail.com', 'Gurunanak nagar near five temple street 9 h no.552 ward-13 supela, Bhilai', '8982195299', NULL, NULL, 'Chhattisgarh', 'Bhilai ', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-079', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(663, 'MJPH679', 'MJ240579', 'Shrejal', '', 'Nagpure', 'Female', '2002-11-05', 'Purushottam Nagpure', 'Geeta Nagpure', 'OBC', 'shrejalnagpure@gmail.com', 'Acc Colony, Jamul, Block 7/F, Bhilai(C.G)', '9109820590', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490024', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-15', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(664, 'MJPH680', 'MJ294186', 'samaru ', 'Ram', 'Ghritalahare', 'Male', '1982-07-05', 'Tika ram Ghritalahare', 'Suga bati ghritalahare', 'SC', 'ghritalaharesamaruram', 'vill. Gatapar po. Datan thana pallari Dist.Balodabazar cg.', '9977636388', NULL, NULL, 'Chhattisgarh', 'Balodabazar', 'India', '493228', NULL, NULL, NULL, 'Inactive', NULL, '1', 'Dph, 2022_0023', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(665, 'MJPH681', 'MJ596834', 'INDUMATI', '', 'KUNJAM', 'Female', '2003-02-10', 'BHUNESHWAR KUNJAM', 'SANTOSHI KUNJAM', 'ST', 'nagsanta766@gmail.com', 'BANDATOLA POST-SHAWADA DIST-KANKER', '917974372827', NULL, NULL, 'Chhattisgarh', 'KANKER', 'India', '494336', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-024', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(666, 'MJPH682', 'MJ985432', 'Raj', 'kumar', 'sinha', 'Male', '2020-12-31', 'Mahetru ram sinha', 'jamuna Bai', 'OBC', 'sinhar284@gmail.com', 'Gahirabhendi', '7974358025', NULL, NULL, 'Chhattisgarh', 'rajnadgawon', 'India', '491668', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022026', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(667, 'MJPH683', 'MJ145679', 'Manoj', 'kumar', 'Markam ', 'Male', '2001-05-23', 'aayturam', 'gagri', 'ST', 'manojkumarmarkam850@gmail.com', 'schoolparaa ulera makdi kondagaon', '9301455251', NULL, NULL, 'Chhattisgarh', 'kondagaon', 'India', '494228', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-080', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(668, 'MJPH684', 'MJ823904', 'Naveen ', 'kumar', 'Sahu', 'Male', '2001-07-03', 'mr.tula ram sahu', 'mrs.geeta sahu', 'OBC', 'sahunaveenkumar322@gmail.com', 'village-nawagaon,post-dhaurabhata,subdist-magerload,dist-dhamtari', '+917049064847', NULL, NULL, 'Chhattisgarh', 'dhamtari', 'India', '492109', NULL, NULL, NULL, 'Inactive', NULL, '1', 'bph2024061', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(669, 'MJPH685', 'MJ347852', 'Khushboo', '', ' Sahu', 'Female', '2003-04-24', 'Kewal Singh Sahu', 'Durga Sahu', 'OBC', 'khushboosahu14631@gmail.com', 'Bhothli', '7898242817', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '491225', NULL, NULL, NULL, 'Inactive', NULL, '1', 'khushboosahu14631@gmail.com', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(670, 'MJPH686', 'MJ140579', 'Gagan', 'Kumar', ' Janghel', 'Male', '2002-01-16', 'Murat Lal ', 'Laxmi Bai', 'OBC', 'gagankumarjanghel@gmail.com', 'vill, post-Bortara, teh-Saja, Dist-Bemetara(cg) ', '9294506582', NULL, NULL, 'Chhattisgarh', 'saja', 'India', '491993', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-032', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(671, 'MJPH687', 'MJ271304', 'satish', 'satish kumar', 'satish kumar', 'Male', '2001-12-18', 'Motiram chandrakar', 'Kirti chandrakar', 'OBC', 'satishchandrakar73@gmail.com', 'village -Litipur Disrict(kabirdham)', '+916260365845', NULL, NULL, 'Chhattisgarh', 'kawardha', 'India', '491336', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-005', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(672, 'MJPH688', 'MJ967324', 'CHANDU', '', 'DAS', 'Male', '1998-04-25', 'Late. Mr. PRAKASH DAS', 'Mrs. NEERA BAI', 'OBC', 'cdmanikpuri25@gmail.com', 'Vill.-Sankra Post-Hasda Dist-Bemetara', '9907439043', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '490036', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022-043', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(673, 'MJEDU689', 'MJ563781', 'Yamini', '', 'Sahu', 'Female', '2020-12-31', 'mr Hemlal sahu', 's kumari', 'General', 'yaminiyenisahu@gmail.com', 'patan', '9039079387', NULL, NULL, 'Chhattisgarh', 'patan', 'India', '491111', NULL, NULL, NULL, 'Inactive', NULL, '1', '7201400269', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(674, 'MJPH690', 'MJ315970', 'DEEPTI', '', 'SAHU', 'Female', '2001-07-03', 'CHOWA RAM SAHU', 'LALITA SAHU', 'OBC', 'pukkusahu1506@gmail.com', 'AADRSH CHOWK SURDUNG', '6260470882', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '490024', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119011', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(675, 'MJPH691', 'MJ753089', 'PREETI ', '', 'Rawat', 'Female', '1999-12-25', 'Omprakash rawat', 'maan devi rawat', 'OBC', 'pr9198384@gmail.com', 'q no-3/E zone 1 ward no.36 gautam nagar khursipar BHILAI', '7748851063', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490011', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-099', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(676, 'MJPH692', 'MJ508936', 'Savita', '', 'Tiwari ', 'Female', '1969-09-11', 'Bhuvneshwar Prasad Tiwari ', 'Sarla Tiwari ', 'General', 'shaily.pandey.2003@gmail.com', 'plot-1,street-7,Steel Colony,NehruNagar(west)bhilai', '9300146272', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022-058', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(677, 'MJPH693', 'MJ015342', 'Paras', 'kumar', 'Rajput', 'Male', '2000-01-25', 'Rishi Rajput', 'Usha Rajput', 'General', 'kumarparassinghrajput@gmail.com', 'Sadak Parsuli gariaband', '919340964769', NULL, NULL, 'Chhattisgarh', 'Gariaband Chhattisgarh', 'India', '493889', NULL, NULL, NULL, 'Inactive', NULL, '1', 'kumarparassinghrajput@gmail.com', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(678, 'MJPH694', 'MJ194782', 'AKASH', '', 'KUMAR', 'Male', '1998-01-29', 'VISHNU PRASAD', 'SARITA BAI', 'SC', 'aakashkumar755788@gmail.com', 'HN 119 chaturvedi para vill- kutela Bhatha, post -jeora sirsa, dist- durg', '8349755789', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119004', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(679, 'MJPH695', 'MJ821697', 'Mahendra', '', 'Goswami', 'Male', '2020-12-31', 'Viswarajgiri goswami', 'Indrani goswami', 'OBC', 'mahendramahendragoswami99@gmail.com', 'Dist. kawardha, vilage Indori', '7389154376', NULL, NULL, 'Chhattisgarh', 'kawardha', 'India', '491336', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-056', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(680, 'MJPH696', 'MJ120936', 'Amrita ', '', '', 'Female', '2002-10-02', 'Loknath', 'Lalita', 'OBC', 'amritasahu2102 @gmail com', 'Mokha Post-Rajauli Balod', '9691605405', NULL, NULL, 'Chhattisgarh', 'Gunderdehi ', 'India', '491222', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024 091', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(681, 'MJPH697', 'MJ470815', 'pintu', 'ram', 'sahu', 'Male', '2001-04-21', 'netram sahu', 'saroj devi', 'OBC', 'ps775800@gmail.com', 'kunwamalgi pandariya kabirdham chhattisgarh', '9399474712', NULL, NULL, 'Chhattisgarh', 'kawardha', 'India', '491559', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-013', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(682, 'MJPH698', 'MJ861942', 'ANISH', 'KUMAR', 'YADAV', 'Male', '1998-02-24', 'vinod Yadav', 'Rajni Yadav', 'OBC', 'yadavanish662@gmail.com', 'new adarsh nagar', '6264393176', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', 'bph2024_011', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(683, 'MJPH699', 'MJ781630', 'Akashdeep', '', 'Bakhla', 'Male', '2000-03-24', 'Mashicharan Bakhla', 'Kanti Bakhla', 'ST', 'akashdeepbakhla4503@gmail.com', 'Talpuri mogra 39', '9009633597', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119005', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(684, 'MJPH700', 'MJ541672', 'Chunni', 'Lal', 'Dilliwar', 'Male', '1976-11-14', 'Tejendra Kumar Dilliwar', 'Bhoj Dilliwar', 'OBC', 'dilliwarcl@gmail.com', 'vill&post-vinayakpur,dist&tah-durg(cg)', '8349065610', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '491221', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119010', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(685, 'MJPH701', 'MJ468321', 'DIVYAJYOTI', '', 'PATEL', 'Female', '2003-03-04', 'RAMDHAN PATEL', 'RAMBAI PATEL', 'OBC', 'divyajyotipatel9@gmail.com', 'village - Naugadi , Dist. - Mahasamund(cg) ', '6260964013', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '493554', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022 - 015', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(686, 'MJPH702', 'MJ609182', 'Budhan ', '', 'Ram', 'Male', '2000-05-15', 'Sarju ram', 'Sonmatiya', 'OBC', 'rajwadebudhan940@gmail.com', 'Kapsara', '8305557634', NULL, NULL, 'Chhattisgarh', 'Bhatgaon, Surajpur ', 'India', '497235', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119009', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(687, 'MJPH703', 'MJ056748', 'LAXMI', '', 'NAGPURE', 'Female', '2020-12-31', 'MR. DALPAT NAGPURE', 'PUSHPA', 'OBC', 'nagpure510nagpure@gmail.com', 'JAGRATI CHOWK SANTOSHI PARA CAMP-2', '7748974480', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', 'nagpure510nagpure@gmail.com', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(688, 'MJPH704', 'MJ823719', 'Leeleshwar', '', 'rajput', 'Male', '2000-06-28', 'girish kumar', 'Sumitra bai', 'OBC', 'rajputleeleshwar@gmail.com', 'village-gangdwari', '916267903419', NULL, NULL, 'Chhattisgarh', 'mungeli', 'India', '495335', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-010', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(689, 'MJPH705', 'MJ185647', 'AMRIT', '', 'BARIKDAR', 'Male', '2020-12-31', 'ADHIR BARIKDAR', 'ARATI BARIKDAR', 'General', 'amritkumarrjn20@gmail.com', 'P.V.12 SUBHASH NAGAR POST.ASEBEDA TH.PAKHANJOR DIST. KANKER C.G.', '7646889980', NULL, NULL, 'Chhattisgarh', 'PAKHANJOUR', 'India', '494776', NULL, NULL, NULL, 'Inactive', NULL, '1', 'amritkumarrjn20@gmail.com', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(690, 'MJPH706', 'MJ562890', 'Hasan', 'kumar', 'Patel', 'Male', '2000-02-18', 'Akshay patel', 'Yashoda patel', 'OBC', 'hasanpatel1802@gmail.com', 'Patsendri', '8823898979', NULL, NULL, 'Chhattisgarh', 'Saraipali', 'India', '493558', NULL, NULL, NULL, 'Inactive', NULL, '1', '28', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(691, 'MJPH707', 'MJ975368', 'Rocky', '', 'Gupta', 'Male', '1999-12-31', 'Lalan Gupta', 'Asha Gupta', 'OBC', 'rockygupta45666@gmail.com', 'guturma darjipara sitapur surguja', '8889002056', NULL, NULL, 'Chhattisgarh', 'sitapur', 'India', '497114', NULL, NULL, NULL, 'Inactive', NULL, '1', '21604119045', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(692, 'MJPH708', 'MJ298536', 'Dropati ', '', 'Tiwari', 'Female', '2002-06-06', 'Bhuneshwar Tiwari', 'Vishakha Tiwari', 'General', 'vickytiwari4124@gmail.com', 'Karamtara ', '8817579772', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '491444', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022-034', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(693, 'MJC709', 'MJ594763', 'kumari chanda', 'kumari chanda', 'kumari chanda', 'Female', '1988-04-01', 'Siya Ram Vishwakarma', 'Basanti devi', 'OBC', 'chandu.vishva1488@gmail.com', '165 aalopi baag daragaj', '7897506891', NULL, NULL, 'Andhra Pradesh', 'prayagraj', 'India', '211006', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340129011', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(694, 'MJPH710', 'MJ234769', 'meera', '', 'banjare', 'Female', '1995-01-05', 'sarju das banjare', 'geeta bai ', 'SC', 'meerabanjare51@gmail.com', 'civil line kachahari para ', '9407961773', NULL, NULL, 'Chhattisgarh', 'bemetara ', 'India', '491335', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(695, 'MJPH711', 'MJ860213', 'HEMARAJ', '', 'VERMA', 'Male', '1991-02-04', 'SHATRUHAN LAL VERMA', 'DULARI BAI', 'OBC', 'hemrajverma5800@gmail.com', 'Laxmi Nagar Supela Bhilai', '7869989438', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022-020', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(696, 'MJPH712', 'MJ351806', 'Rakesh', '', 'Patel', 'Male', '2002-06-01', 'Hemant', 'kheerkumari', 'General', 'pr767066@gmail.com', 'at/post-patsendri block -saraipali', '7354879099', NULL, NULL, 'Andhra Pradesh', 'saraipali', 'India', '493558', NULL, NULL, NULL, 'Inactive', NULL, '1', '33', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(697, 'MJPH713', 'MJ684952', 'Manisha.sahu', 'Manisha.sahu', 'Manisha.sahu', 'Female', '2001-10-12', 'ramkhilawan.sahu.', 'teejan.bai.sahu', 'OBC', 'manishasahu4713@mail.com', 'karamtara', '6263143503', NULL, NULL, 'Chhattisgarh', 'karamtara', 'India', '491444', NULL, NULL, NULL, 'Inactive', NULL, '1', 'bph2024-023', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(698, 'MJPH714', 'MJ187923', 'Yogesh', 'yogesh', 'kaushal', 'Male', '2001-11-21', 'Narayan kaushal', 'Sunita kaushal', 'SC', 'yogeshkumar11748@gmail.com', 'vill-jom.post-bundeli,block-chhuikhdan,dist.-rajnandgaon', '+918815959523', NULL, NULL, 'Chhattisgarh', 'chhuikhdan', 'India', '491888', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-064', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(699, 'MJPH715', 'MJ293068', 'ROSHAN', 'KUMAR ', 'YADU', 'Male', '1998-06-13', 'HEMANT KUMAR YADU', 'DULARI BAI YADU', 'General', 'roshanyadu1998@gmail.com', 'RISALI', '9340216967', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '491881', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022-018', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(700, 'MJPH716', 'MJ748521', 'Bhupendra ', '', 'Chandrakar', 'Male', '2001-10-17', 'Basant Chandrakar', 'sarsawati bai Chandrakar', 'OBC', 'bhuppug9131@gmail.com', 'Dist-kabirdham, village-Chuchrungpur', '6267098789', NULL, NULL, 'Chhattisgarh', 'kawardha', 'India', '491336', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-044', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(701, 'MJPH717', 'MJ103749', 'pooja', '', 'panda', 'Female', '2001-10-15', 'vedprashad panda', 'anupama panda', 'General', 'pandapooja503@gmail.com', 'vill_gotiapara tilanjanpur,post_bhagat dewri,dist_mahasamund chhattisgarh', '7828402172', NULL, NULL, 'Chhattisgarh', 'bashna', 'India', '492112', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119037', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(702, 'MJPH718', 'MJ723014', 'Nageshwar', '', 'Sahu', 'Male', '2001-09-07', 'Ramvilas Sahu', 'Nandani Sahu', 'OBC', 'ns765096@gmail.com', 'Martara, Post Khandsara, District Bemetara (Cg)', '7771837176', NULL, NULL, 'Chhattisgarh', 'Bemetara', 'India', '491335', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-060', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(703, 'MJPH719', 'MJ308159', 'NAGESHWAR', 'KUMAR', 'SAHU', 'Male', '1983-09-13', 'SAMALIYA RAM SAHU', 'GOMATI BAI SAHU', 'OBC', 'sahunageshwar11@gmail.com', 'SHASTRI CHOWK, CAMP 1', '7898089742', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119034', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(704, 'MJPH720', 'MJ483276', 'Ajay', 'kumar', 'yadav', 'Male', '2000-05-24', 'Mr Hari prasad yadav', 'Mrs sumitra yadav', 'OBC', 'yajay6098@gmail.com', 'Aara Nawapara', '8120103839', NULL, NULL, 'Chhattisgarh', 'Sitapur', 'India', '497114', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604118012', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(705, 'MJPH721', 'MJ124906', 'Ramesh', 'Nath', 'Yogi', 'Male', '2002-06-08', 'Kumar Nath', 'Indira Bai', 'OBC', 'ganeshnathkwd@gmail.com', 'Dissst.Kabirdham Village Sonpuri rani post sonpuri rani', '8349002618', NULL, NULL, 'Chhattisgarh', 'kawardha', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-022', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(706, 'MJPH722', 'MJ861973', 'Girija', 'Shankar', 'Netam', 'Male', '2001-10-26', 'Parmeshwar Netam', 'Amrika Netam', 'ST', 'girijashankarntm@gmail.com', 'Police colony', '9399027783', NULL, NULL, 'Chhattisgarh', 'Bhanupratappur', 'India', '494669', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-063', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(707, 'MJPH723', 'MJ197036', 'MUKESH', 'KUMAR', 'SURYAWANSHI', 'Male', '2001-05-19', 'SUKHCHAND', 'SAGUNA BAI', 'SC', 'mmukeshkumarsuryawanshi@gmail.com', 'VILLAGE-BAIKATORI POST-KHUDMUDI BLOCK-CHHUIKHADAN DIST-RAJNANDGAON C.G.', '+918770379826', NULL, NULL, 'Chhattisgarh', 'RAJNANDGAON', 'India', '491885', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024092', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(708, 'MJPH724', 'MJ816750', 'Deepika', '', 'Dhruw', 'Female', '2000-04-03', 'Pawan Kumar Dhruw', 'Kirti Bai Dhruw', 'ST', 'dhruwshreya60@gmail.com', 'Street no.-11, Block no.-01, Room no.-08 Hospital Sector-9 Bhilai ', '9685058817', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490009', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-096', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(709, 'MJPH725', 'MJ135946', 'Bhojendra', '', 'sahu', 'Male', '2002-05-03', 'Mr.Netram sahu', 'Mrs.Ahilya sahu', 'OBC', 'bhojendrasahu279@gmail.com', 'Vill.Kumhali post.parsada taha.gunderdehi distt.balod (C.G)', '6260689821', NULL, NULL, 'Andhra Pradesh', 'Balod', 'India', '491222', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-037', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(710, 'MJPH726', 'MJ872406', 'Bhojshwi', '', '', 'Female', '2003-07-24', 'VIJAY KUMAR', 'PRAMESHWARI', 'OBC', 'sahubhojshwi@gmail.com', 'Vill-Mokha Post-Rajoli Block-Gunderdehi Dist-Balod', '+918305066496', NULL, NULL, 'Chhattisgarh', 'Gunderdehi', 'India', '491222', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-048', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(711, 'MJPH727', 'MJ739165', 'Shatruhan', '', '', 'Male', '2002-09-03', 'Mr.Agarman', 'Mrs.Shivkumari', 'SC', 'diwakar6267763810@gmail.com', 'village kunwamalgi, post. kolegaov,Pandariya, Kabirdham, Chattisgarh India.\n\n', '6267763810', NULL, NULL, 'Chhattisgarh', 'kawardha', 'India', '491559', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-009', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(712, 'MJPH728', 'MJ987325', 'RAJESH', 'KUMAR', 'DESHMUKH', 'Male', '1987-01-01', 'DULAR SINGH DESHMUKH', 'SUSHILA DESHMUKH', 'OBC', 'Rkdeshmukh77@gmail.com', 'Radhika Nagar supela ', '8962362025', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119042', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(713, 'MJPH729', 'MJ630451', 'Mahendra ', '', 'Sahu', 'Male', '2003-06-27', 'Tilakram Sahu', 'Shyambai Sahu', 'OBC', 'sahumahendra245@gmail.com', 'Harangarh', '6266406644', NULL, NULL, 'Chhattisgarh', 'kanker', 'India', '494771', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-066', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(714, 'MJPH730', 'MJ486923', 'Kamla', 'kant', 'sahu', 'Male', '1979-09-30', 'Ishwar singh sahu', 'Urmila sahu', 'OBC', 'kksahu153@gmail.com', 'vill.Ghupsal post charbhatha', '9993830082', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491668', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119027', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(715, 'MJPH731', 'MJ817456', 'USHA', '', 'SINGH', 'Female', '2000-08-20', 'LATE KRISHNA KANT SINGH', 'GYANTI SINGH', 'General', 'ushasinghskm@gmail.com', 'Shri Krishna Medicose Azad Market Risali Bhilai', '6261443673', NULL, NULL, 'Andhra Pradesh', 'Bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022-045', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(716, 'MJPH732', 'MJ416780', 'Aparna ', '', 'Das', 'Female', '1998-03-06', 'H.K.Das', 'Sarita', 'General', 'aparnadas9522@gmail.com', 'Devkar', '9399251706', NULL, NULL, 'Chhattisgarh', 'Devkar', 'India', '491331', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022-042', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(717, 'MJPH733', 'MJ721468', 'Neha', '', 'sen', 'Female', '2021-01-01', 'Sunil sen', 'Indrani Sen', 'OBC', 'nehasensen16@gmail.com', 'ward no. 20 bemetara', '6267641392', NULL, NULL, 'Chhattisgarh', 'bemetara', 'India', '491335', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119035', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(718, 'MJPH734', 'MJ423081', 'sagar ', 'Kumar', 'gupta ', 'Male', '1978-10-14', 'ashok Kumar Gupta ', 'Neelam gupta', 'General', 'sagar2oct@gmail.com', 'ramnagar indra chowk supela', '9713177771', NULL, NULL, 'Chhattisgarh', 'bhilai ', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'B12101', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(719, 'MJPH735', 'MJ480651', 'Farheen ', '', 'Siddique', 'Female', '2002-01-07', 'Rafique ahamad', 'Nusrat parveen', 'General', 'farheensiddique078@gmail.com', 'Plot no.85 near durga mandir ayyappa nagar supela Bhilai Chattishgarh', '7415602219', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-029', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(720, 'MJPH736', 'MJ590243', 'shubham', '', 'chandravanshi', 'Male', '2001-08-07', 'Mr. Dilharan chandravanshi', 'mrs. Beena chandravanshi', 'OBC', 'shubhamboss0708@gmail.com', '124,village-Dehari,post-chachedi,kabirdham,cg', '7024040416', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '491336', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022-062', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(721, 'MJC737', 'MJ587134', 'RAMAKANT', '', 'MANJHI', 'Male', '1996-07-13', 'Shiv Shankar Manjhi', 'Ramavati Devi', 'SC', 'kumarramakant81@gmail.com', 'Vill+Po -Parsa Jogani', '9955615260', NULL, NULL, 'Bihar', 'chhapra', 'India', '841311', NULL, NULL, NULL, 'Inactive', NULL, '1', '032', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(722, 'MJC738', 'MJ381567', 'Priyanka kumari', 'Priyanka kumari', 'Priyanka kumari', 'Female', '2021-01-01', 'Khushabu kumar', 'sunita devi', 'General', '10024@gmail.com', 'bhilai', '9113122703', NULL, NULL, 'Andhra Pradesh', 'durg', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(723, 'MJC739', 'MJ897241', 'ANUJ', 'KUMAR', 'YADAV', 'Male', '1992-03-03', 'MATHUR PRASAD YADAV', 'CHINTA DEVI', 'OBC', 'anujkumaryadav78992@gmail.com', 'Vill.-Navakhap,P.O.-Danto khurd,P.S-Katkamshandi,Dist.-Hazaribagh,State-Jharkhand', '8969599690', NULL, NULL, 'Jharkhand', 'Hazaribagh', 'India', '825411', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL);
INSERT INTO `mj_student` (`id`, `emp_id`, `password`, `firstname`, `middlename`, `lastname`, `gender`, `dob`, `father`, `mother`, `caste_category`, `email`, `address`, `mobile`, `contact2`, `address2`, `state`, `city`, `country`, `pincode`, `admin_role`, `photo`, `created_at`, `live_status`, `create_by`, `admission_status`, `roll_no`, `college_id`, `college_name`, `percentile`, `enquiry`, `remarks`, `recall`) VALUES
(724, 'MJPH740', 'MJ025378', 'DINDAYAL', '', 'PATEL', 'Male', '1989-06-25', 'PANCH RAM PATEL', 'KAMIN BAI PATEL', 'OBC', 'dinu000patel@gmail.com', 'VILL CHILHATI KALA POST BHARDA TAH DONDI LOHARA DIST BALOD', '7746068029', NULL, NULL, 'Chhattisgarh', 'BALOD', 'India', '491771', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119014', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(725, 'MJPH741', 'MJ651903', 'Sapna ', '', 'Sharma', 'Female', '1985-08-16', 'Abhinav Sharma', 'Prabha Shukla', 'General', 'anokhaabhi@rediffmail.com', 'Durga Mandir Road Kadambari Nagar', '8349049954', NULL, NULL, 'Andhra Pradesh', 'Durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022-011', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(726, 'MJPH742', 'MJ406159', 'Nikita ', '', 'Sahu ', 'Female', '2001-10-08', 'Gopi Ram ', 'Yogeshwari ', 'OBC', 'nikitas 0801 2001 @gmalcom', 'Villagesiyanmaradistrictbalodchhtishgar', '8305215278', NULL, NULL, 'Chhattisgarh', 'Balod', 'India', '491223', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BHP 2024-067', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(727, 'MJC743', 'MJ869017', 'Taruna ', 'verma', '', 'Female', '2000-01-25', 'Hukum lal verma ', 'Kanchan verma ', 'OBC', 'taruna@23gmail.com', 'Arya nagar kohka bhilai', '8269194787', NULL, NULL, 'Chandigarh', 'Durg ', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '7201400264', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(728, 'MJPH744', 'MJ576934', 'Shrawan', 'Kumar', 'Sinha', 'Male', '2002-04-27', 'Shatruhan Ram', 'Meena Bai', 'OBC', 'shrawansinha130@gmail.com', 'Indori', '7566002143', NULL, NULL, 'Chhattisgarh', 'Kawardha', 'India', '491336', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-038', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(729, 'MJPH745', 'MJ470938', 'Bhuneshwar', '', 'Sahu', 'Male', '2001-05-26', 'Chetan Sahu', 'Santoshi Bai', 'OBC', 'bhuneshwarsahu4851@gmail.com', 'Martara, post Khandsara, District Bemetara(Cg)', '9131894361', NULL, NULL, 'Chhattisgarh', 'Bemetara', 'India', '491335', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-059', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(730, 'MJC746', 'MJ178925', 'Devendra', 'kumar', 'Mirre', 'Male', '2002-06-06', 'jethu ram mirre', 'rajkumari', 'General', 'dkmirre48@gmail.com', 'arya nagar kohka', '9179579569', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(731, 'MJPH747', 'MJ279136', 'Tapan', '', 'Mistry', 'Male', '1981-05-05', 'Jotish Mistry', 'Suniti Mistry', 'General', 'tapanpkj21@gmail.com', 'village-Pakhanjur,Post-Pakhanjur', '9424107413', NULL, NULL, 'Chhattisgarh', 'Dist-Kanker(C.G.)', 'India', '494776', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119057', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(732, 'MJPH748', 'MJ046983', 'Manish', 'Kumar', ' Nirala', 'Male', '2000-02-02', 'Shiv Kumar', 'Rekha bai', 'SC', 'niralamanish59@gmail.com', 'Dotopar', '7745964738', NULL, NULL, 'Chhattisgarh', 'Raipur', 'India', '493526', NULL, NULL, NULL, 'Inactive', NULL, '1', '62', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(733, 'MJPH749', 'MJ136547', 'Keshari', '', 'Janghel', 'Female', '1999-09-05', 'Yogeshwar das janghel', 'Kamla janghel', 'OBC', 'janghel1999@gmail.com', 'pailimeta', '7697816261', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491888', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604118013', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(734, 'MJPH750', 'MJ783146', 'Digeshwari', '', 'Nishad', 'Female', '2003-11-26', 'Chamman lal Nishad', 'Dhaneshwari Nishad', 'OBC', 'digeshwarinishad52@gmail.com', 'Shivpuri jamul ', '+916261769226', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490024', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-082', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(735, 'MJPH751', 'MJ146897', 'vaishali', '', 'rajput', 'Female', '1999-12-06', 'Mohan Singh rajput', 'minakshi rajput', 'General', 'vaishalirajput612@gmail.com', 'PWD colony h3 kondagaon', '8319789424', NULL, NULL, 'Chhattisgarh', 'kindagaon', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022-059', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(736, 'MJPH752', 'MJ643751', 'MISS ', 'JYOTI ', 'KUTHE ', 'Female', '2021-01-02', 'Mr.M.R KUTHE ', 'Mrs.MEERA KUTHE ', 'OBC', 'Kuthejyoti27@gmail.com', 'SHYAM NAGAR TILDA DIS.RAIPUR', '8989053604', NULL, NULL, 'Chhattisgarh', 'BHILAI ', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022-009 ', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(737, 'MJEDU753', 'MJ785631', 'manish', 'kumar', 'sahu', 'Male', '1995-09-30', 'tijram sahu', 'urvashi', 'OBC', 'manishsao744@gmail.com', 'ward no13 bodla', '9981189539', NULL, NULL, 'Chhattisgarh', 'bodla', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029079', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(738, 'MJC754', 'MJ625097', 'Alisha', '', 'khan', 'Female', '1994-05-23', 'Mr.Azaz Ahmed', 'Rijwana khan', 'General', 'ak535028@gmail.com', 'MIG - 2 - 22 , Amdi nagar hudco bhilai', '9669462215', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '490009', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029006', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(739, 'MJPH755', 'MJ047238', 'Juhi', '', 'Ray', 'Female', '1997-07-15', 'Akhil Ray', 'Asha Ray', 'General', 'juhiray9893@gmail.com', 'Aatal neewas geedam', '+61919301113051', NULL, NULL, 'Chhattisgarh', 'Chhattisgarh', 'India', '494441', NULL, NULL, NULL, 'Inactive', NULL, '1', '2106041190250', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(740, 'MJPH756', 'MJ691027', 'Komal', '', 'Gwala', 'Male', '1999-10-03', 'Chandradev Gwala', 'Sulochana Gwala', 'OBC', 'komalgwala456@gmail.com', 'Chhichali rauni post bagicha', '+919479063491', NULL, NULL, 'Chhattisgarh', 'Bagicha', 'India', '496224', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119029', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(741, 'MJPH757', 'MJ406721', 'JITENDRA', 'KUMAR', 'SAHU', 'Male', '1994-06-25', 'RAMHU RAM', 'AMRITA BAI', 'OBC', 'sahujitu975@gmail.com', 'JANTAR', '7999345171', NULL, NULL, 'Chhattisgarh', 'RAJNANDGAON', 'India', '491558', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119024', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(742, 'MJPH758', 'MJ734908', 'AJU RAM VERMA', '', 'VERMA', 'Male', '1974-08-01', 'RAMKISUN VERMA', 'LAXMI VERMA', 'OBC', 'ajuram1974@gmail.com', 'vil.datan thanapara.thana v tahsil pallri. raipur (c.g.)pin 493228', '9753559005', NULL, NULL, 'Chhattisgarh', 'pallari', 'India', '493228', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119003', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(743, 'MJPH759', 'MJ078196', 'Hemant', '', 'Sinha', 'Male', '2003-02-10', 'Baldau ', 'Kaushilya', 'OBC', 'hemantsinha9938@gmail.com', 'indori kawardha cg.', '7974449938', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '491336', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022-046', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(744, 'MJC760', 'MJ038951', 'Pratima', '', 'Chandel', 'Female', '1993-12-25', 'Indrjeet', 'Pila Bai', 'OBC', 'pratimachandel2018@gmail.com', 'village-bajguda, post-dokrabhatha, tahsil-khairgrh, dist-rajnndgaon', '7772091471', NULL, NULL, 'Chhattisgarh', 'rajnandgaon', 'India', '491881', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(745, 'MJPH761', 'MJ071528', 'SANDHYA', '', '', 'Female', '1986-09-07', 'bhagavatee prasad', 'satrupa', 'OBC', 'prahladverma160384@gmail.com', 'word no14 hathkhoj para utai dist durg', '9302925065', NULL, NULL, 'Chhattisgarh', 'utai durg', 'India', '491107', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119050', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(746, 'MJPH762', 'MJ175206', 'Roshan', '', 'Yadav', 'Male', '2021-01-02', 'VISHESHWAR Yadav', 'Susheela yadav', 'OBC', 'roshanyadav12354@gmail.com', 'pithaama, Jashpur, Chhattisgarh', '8815824727', NULL, NULL, 'Chhattisgarh', 'lailunga', 'India', '496113', NULL, NULL, NULL, 'Inactive', NULL, '1', '14', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(747, 'MJPH763', 'MJ903278', 'Dikesh', 'kumar', '', 'Male', '2002-10-30', 'Ratiram', 'Dileshwari', 'OBC', 'reenasahuptn@gmail.com', 'village+post - jheet ,Dist- durg', '6264181896', NULL, NULL, 'Chhattisgarh', 'Raipur', 'India', '491111', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-021', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(748, 'MJPH764', 'MJ801365', 'Monika', '', 'Barman', 'Female', '2001-05-10', 'Ranjit barman', 'Champa barman', 'General', 'monikabarman793@gmail.com', 'vikaspalli p.v 105 post-irpanar tah pakhajur uttar bastar kanker chhattisgarh', '7646977354', NULL, NULL, 'Chhattisgarh', 'pakhanjur', 'India', '494777', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119033', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(749, 'MJPH765', 'MJ954831', 'VIDYA', '', 'BHASKAR', 'Female', '2001-12-12', 'DASHRATH BHASKAR', 'RAJAY BHASKAR', 'General', 'vidyabhaskar750@gmail.com', 'singanpur sarona ', '917999313250', NULL, NULL, 'Chhattisgarh', 'kanker', 'India', '494335', NULL, NULL, NULL, 'Inactive', NULL, '1', '073', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(750, 'MJPH766', 'MJ630591', 'Achal ', 'Kumar', 'Uike ', 'Male', '2001-01-15', 'Mr. Goutam Lal Uike', 'Mrs. Vedika Uike', 'SC', 'achaluike.22@gmail.com', 'Kanhargaon Bhanupratappur', '7049397364', NULL, NULL, 'Chhattisgarh', 'Bhanupratappur', 'India', '494669', NULL, NULL, NULL, 'Inactive', NULL, '1', '310604119001', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(751, 'MJPH767', 'MJ719430', 'Dushyant', 'Kumar', 'Janghel', 'Male', '2002-03-14', 'Rakesh Janghel', 'Gunita Janghel', 'OBC', 'dushyantjanghel8@gmail.com', 'Belgoan', '7805893448', NULL, NULL, 'Chhattisgarh', 'Belgoan', 'India', '491888', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-049', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(752, 'MJPH768', 'MJ476983', 'shyam', 'prakash', 'sahu', 'Male', '1996-05-07', 'punaram sahu', 'sugni bai', 'OBC', 'aiitshyamprakash@gmail.com', 'nachaniya', '9753616012', NULL, NULL, 'Chhattisgarh', 'rajnandgaon', 'India', '491888', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119054', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(753, 'MJPH769', 'MJ748309', 'palak', '', 'dewangan', 'Female', '2002-07-17', 'satyajeet dewangan', 'anita dewangan', 'OBC', 'palakdewangan284@gmail.com', 'gadadih ,marra road', '7770998449', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119036', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(754, 'MJPH770', 'MJ621758', 'Muskan', '', 'baghel', 'Female', '2002-07-13', 'vinay baghel', 'sunita baghel', 'General', 'muskan13baghel@gmail.com', 'village - majgaon', '+1917067865441', NULL, NULL, 'Chhattisgarh', 'kawadha ', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024007', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(755, 'MJPH771', 'MJ093574', 'bhikham', '', 'patel', 'Male', '2000-03-27', 'Mr. sukhdev patel', 'Mrs. neera patel', 'OBC', 'bhikhamp05@gmail.com', 'daniya khurd ', '7024166176', NULL, NULL, 'Chhattisgarh', 'kawardha', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024- 016', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(756, 'MJC772', 'MJ103465', 'Chetna', '', 'Sahu', 'Female', '2002-09-24', 'Raghunath Sahu', 'Mamta Sahu', 'General', 'priyasahu240902@gmail.com', 'saket colony, katulboard', '7049381131', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '490022', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(757, 'MJC773', 'MJ967584', 'Ayush', 'kumar', 'panda', 'Male', '2002-10-02', 'sanjeev kumar panda', 'madhusmita panda', 'General', 'ayushpanda0210@gmail.com', 'Trt/E-65 block no. 06 acc colony, jamul', '6232176797', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(758, 'MJC774', 'MJ380547', 'astha', 'devi', 'dubey', 'Female', '2001-07-04', 'mr ravindra dubey', 'madhuri dubey', 'General', 'pranshudubey395@gmail.com', 'jalebi chowk camp 1bhilai', '7222991739', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '49001', NULL, NULL, NULL, 'Inactive', NULL, '1', 'pranshudubey395@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(759, 'MJC776', 'MJ053624', 'MANSI', '', 'SHRIVASTAVA', 'Female', '2003-03-30', 'Late. Dhairya Shrivastava', 'Smt. Suniti Shrivastava', 'General', 'shrivastavamansi30@gmail.com', 'Nakapara, ward no.1, kanyashala road, near gupta godown', '9589380329', NULL, NULL, 'Chhattisgarh', 'DONGARGARH', 'India', '491445', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(760, 'MJC777', 'MJ523798', 'Ayush', '', 'Lal', 'Male', '1998-02-12', 'Sanjay lal', 'anita lal', 'General', 'AyushLal97@gmail.com', 'Street Number 15 ', '8770570941', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490011', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(761, 'MJC778', 'MJ531729', 'D.Shyamala', 'shyamala', 'shyamala', 'Female', '2002-05-29', 'D.Dasu', 'D.Rajeshwari', 'General', 'lata57629@gmail.com', 'qr-10/E st-10 sec-4', '9630829435', NULL, NULL, 'Delhi', 'bhilai', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(762, 'MJC779', 'MJ465271', 'Nitesh Sen', '', 'Sen', 'Female', '1999-04-05', 'khorbahara Sen', 'savita Sen', 'OBC', 'niteshsen991@gmail.com', '247 purani basti kurud bhilai ', '6261800940', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490024', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(763, 'MJC780', 'MJ456209', 'Kukku', '', 'Kukku Singh', 'Female', '1999-11-20', 'Kukku Singh', 'Kukku Singh', 'General', 'kukkusingh2011@gmail.com', 'smriti nagar ', '7225856366', NULL, NULL, 'Chhattisgarh', 'Bhilai ', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', 'kukkusingh2011@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(764, 'MJC781', 'MJ920835', 'Rupa', 'Reddy', '', 'Female', '2003-02-21', 'Aeranna', 'Malleshwari', 'General', 'Rupareddy2003@gmail.com', 'Qno. 20/B, Street-06, Sector-04 ', '9691008694', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(765, 'MJC782', 'MJ435692', 'Simran', '', 'Baghel', 'Female', '2021-01-04', 'Gariba ram baghel', 'Rukhmani baghel', 'SC', 'simranbaghel655@gmail.com', 'sanjay nagar supela bhilai', '+1916266573126', NULL, NULL, 'Chhattisgarh', 'supela bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(766, 'MJC783', 'MJ360941', 'Laxmikant', '', ' verma', 'Male', '2001-09-08', 'Dr.C.R.verma', 'Mrs.kirti verma', 'OBC', 'laxmikantvermabhilai@gmail.com', 'Arya nagar kohka', '6267543322', NULL, NULL, 'Andhra Pradesh', 'BHILAI ', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(767, 'MJC784', 'MJ547261', 'sagar', '', 'barman', 'Male', '2001-03-13', 'mr.shyamal', 'Mrs.radha', 'General', 'sagarbarman56952@gmail.com', 'arya nagar kohka', '918319785431', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(768, 'MJC785', 'MJ576318', 'Himanshi', 'Deshlahre', 'Deshlahre', 'Female', '2021-01-04', 'Hem Kumar deshlahre', 'Rameshwari', 'General', 'himanshideshlahre@gmail.com', 'ghasi das nagar ', '7224883792', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', 'himanshideshlahre@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(769, 'MJC786', 'MJ043976', 'Rashi', '', 'singh', 'Female', '1998-12-24', 'Rashi Singh', 'Rashi Singh', 'General', 'rs0889240@gmail.com', 'sundar vihar colony phase 2 150A', '9301669736', NULL, NULL, 'Chhattisgarh', 'drug', 'India', '490024', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(770, 'MJC787', 'MJ123956', 'Ch', 'Chetanya', '', 'Male', '2002-10-21', 'V.K. Rao', 'Hemawati', 'General', 'chchetanya2110@gmail.com', 'Q.no 13/A street 33 sector10', '9755843217', NULL, NULL, 'Andhra Pradesh', 'Bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(771, 'MJEDU788', 'MJ263195', 'lalit', 'kumar', '', 'Male', '1991-09-20', 'Netram', 'sumitra', 'General', 'lalitkumarsahu51@gmail.com', 'biroda', '7828986389', NULL, NULL, 'Chhattisgarh', 'dhamdha', 'India', '491332', NULL, NULL, NULL, 'Inactive', NULL, '1', '7201400239', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(772, 'MJEDU789', 'MJ891472', 'HOMPRAKASH', '', 'SAHU', 'Male', '1999-06-23', 'MR. TARKESHWAR SAHU', 'MRS. RUKHMANI SAHU', 'OBC', 'homisahu770@gmail.com', 'sahu para salkhand post. bade sajapli tahshil basna distric mahasamund cg', '7974799660', NULL, NULL, 'Chhattisgarh', 'basna ', 'India', '493558', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(773, 'MJPH790', 'MJ394850', 'Ghameshwer', '', 'Chakradhari', 'Male', '2002-07-29', 'Shri Kanwal Singh Chakradhari', 'SMT Anusuiya Chakradhari', 'OBC', 'ghameshwerchakradhri@gmail.com', 'Village-Chavela Post-karmoti Tah.-Bhanupratappur Dist.kanker CG', '+1916263057596', NULL, NULL, 'Chhattisgarh', 'Bhanupratappur', 'India', '494635', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-071', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(774, 'MJPH791', 'MJ061598', 'GAURAV ', 'KUMAR ', 'SAHU ', 'Male', '1999-07-22', 'BRIJMOHAN SAHU ', 'SUNAINA SAHU', 'OBC', 'Gauravsahukusmi@gmail.com', 'VILL-KUSMI, POST-KUSMI, TEH-BERLA, DIST-BEMETARA (CG)', '+918109946323', NULL, NULL, 'Chhattisgarh', 'KUSMI ', 'India', '491332', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119019', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(775, 'MJC792', 'MJ294851', 'Deepa ', '', 'Rajak', 'Female', '2002-02-26', 'Devendra Kumar Rajak', 'Sushila Rajak', 'General', 'deeparajak2626@gmail.com', 'LIG-1, 2544 Housing Board Bhilai', '9109528621', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '490026', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(776, 'MJC793', 'MJ875349', 'Mohit', 'Ku Mar', 'prasad', 'Male', '2001-07-20', 'Om prakash', 'Bijanti Devi', 'ST', 'prasadmonu2020@gmail.com', 'Qu no. 1/A street no.21 sector. 7', '6232996562', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(777, 'MJC794', 'MJ601498', 'Sohan', 'lal', 'Yadav', 'Male', '2002-02-14', 'tej ram yadav', 'gayatri yadav', 'OBC', 'sohanyadav722@gmail.com', 'Khursipar bhilai', '+917067362365', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490011', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(778, 'MJPH795', 'MJ286045', 'CHANDRASHEKHAR ', '', 'AADITYA ', 'Male', '1999-09-29', 'MANIRAM AADITYA ', 'PUNI BAI', 'OBC', 'chandrashekharaditya1@gmail.com', 'NEAR PARMESHWARI SCHOOL,JAI AMBAY MEDICAL STORE SANJAY NAGAR SUPELA BHILAI', '9340788071', NULL, NULL, 'Chhattisgarh', 'BHILAI ', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022-025', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(779, 'MJC796', 'MJ026571', 'neha', '', 'gupta', 'Female', '2021-01-05', 'Santosh gupta', 'nivedita gupta', 'General', 'ng1701474@gmail.com', 'near teen darshan mandir camp 1 ', '9109858242', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'ng1701474@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(780, 'MJC797', 'MJ605781', 'Chandan', '', 'kumar', 'Male', '2002-03-17', 'ashok', 'kumar', 'OBC', 'chandanjanghel270@gmail.com', 'arya nagar kohka bhilai', '7470362415', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(781, 'MJC798', 'MJ618270', 'Kaushiki ', '', 'Parate', 'Female', '2002-11-24', 'Gangadhar Parate', 'Pallavi Parate', 'General', 'kaushikiparate@gmail.com', 'block j6 dream homes CHPl smriti nagar', '7224876330', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(782, 'MJC799', 'MJ237185', 'DHANANJAY', 'KUMAR', 'KARSH', 'Male', '2001-03-19', 'BEDRAM KARSH', 'REENA KARSH', 'OBC', 'dkarsh28@gmail.com', 'B/17 GAJRA COLONY,BANKI MONGRA', '9752031565', NULL, NULL, 'Chhattisgarh', 'KORBA', 'India', '495447', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(783, 'MJC800', 'MJ482791', 'deepali', '', 'lenjhare', 'Female', '2021-01-05', 'Ramesh lenjhare', 'Sunita lenjhare', 'General', 'deepalilenjhare98@gmail.com', 'aarya nagar murra bhatta road kohka bhilai', '6261083633', NULL, NULL, 'Andhra Pradesh', 'bhiali', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(784, 'MJC801', 'MJ902136', 'Suhana Khatun', 'Suhana Khatun', 'Suhana Khatun', 'Female', '2002-02-27', 'Aslam Khan', 'Asiya khatun', 'General', 'suhanakhatun2702@gmail.com', 'Shikshak Nagar', '7440827887', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'suhanakhatun2702@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(785, 'MJC802', 'MJ069152', 'dipti', '', 'sen', 'Female', '2000-07-21', 'deenu ram sen', 'khema bai sen', 'OBC', 'dsen94940@gmail.com', 'krishna nager supela bhilai', '9174576593', NULL, NULL, 'Andhra Pradesh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(786, 'MJC803', 'MJ960783', 'guneshwari ', '', 'dewangan', 'Female', '2000-07-02', 'Nandlal dewangan', 'neera Bai dewangan', 'OBC', 'rupalidewangan28543@gmail.com', 'tata line sunder nagar kohka bhilai', '9165278085', NULL, NULL, 'Andhra Pradesh', 'durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'rupalidewangan28543@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(787, 'MJC804', 'MJ936128', 'Anish', '', 'Yadav', 'Male', '2002-06-07', 'Radhe lal yadav', 'Santoshi Yadav', 'General', 'anishyadav957@gmail.com', 'M-391 Vikas Nagar Kusmunda, Korba Chhattisgarh ', '7987741635', NULL, NULL, 'Chhattisgarh', 'Korba', 'India', '495454', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(788, 'MJC805', 'MJ467581', 'Ruchi ', '', 'singh', 'Female', '1992-03-13', 'dayashankar Singh', 'Vidya singh', 'General', 'ruhisingh6268793782@gmail.com', 'MIG17 new housing board kailash nagar kurud', '9406176473', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490024', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(789, 'MJC806', 'MJ126485', 'shakhar ', '', 'yadu ', 'Male', '1999-07-22', 'Ajeet yadu ', 'santoshi yadu ', 'General', 'shakharyadu@gmail.com', 'purani basti kohka bhilai ', '9827625574', NULL, NULL, 'Chhattisgarh', 'Bhilai ', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(790, 'MJC807', 'MJ941785', 'Harita', '', '', 'Female', '2021-01-05', 'B K Venktetion', 'R Radha', 'General', 'vharita2511@gmail.com', 'B-403 Anandpuram tower phase-1 Kohka road junwani near mile stone school', '9644215629', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(791, 'MJC808', 'MJ714285', 'suman mirry', 'Suman', 'mirry', 'Female', '2003-10-06', 'khelan das mirry', 'Chandra kumari mirry', 'SC', 'sumanmirry2@gmail.com', 'ghashidas nagar ', '8349372262', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490026', NULL, NULL, NULL, 'Inactive', NULL, '1', 'sumanmirry2@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(792, 'MJC809', 'MJ473156', 'jaismeen ', '', 'kaur', 'Female', '2002-07-12', 'Harbhajan singh', 'Raj kaur', 'General', 'jaismeenk28@gmail.com', 'Haouse no 1025 kripal nagar kohka ', '7898733646', NULL, NULL, 'Andhra Pradesh', 'Durg', 'India', '4900023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(793, 'MJC810', 'MJ125980', 'Nishant', '', 'Verma', 'Male', '2001-10-26', 'Dipak verma', 'Rekha verm', 'General', 'nv130861@gmail.com', 'EWS 1483 industrial estate housing board ', '7587788621', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490026', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(794, 'MJC811', 'MJ745091', 'rahul', '', 'sahu', 'Male', '2001-10-01', 'khambhan sahu', 'manna sahu', 'OBC', 'rs0110200@gmail.com', 'jeora sirsa', '8225807245', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(795, 'MJC812', 'MJ513049', 'P', 'Vandita', '', 'Female', '2002-04-16', 'P.Kameshwar Rao', 'P.Krishnaveni', 'General', 'vanditarao16@gmail.com', 'plot no 16 , street 10 , maitrikunj , gandhinagar , risali ', '7999047066', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(796, 'MJC813', 'MJ740958', 'Maithilee', '', 'Deshpande', 'Female', '2003-05-02', 'S K Deshpande', 'Madhavi Deshpande ', 'General', 'deshpandemaithilee03@gmail.com', '82, A maitri vihar, radhika nagar, supela,Bhilai', '7000018410', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(797, 'MJC814', 'MJ281576', 'Shivani', '', 'Balpande', 'Female', '2001-12-28', 'Rajendra Kumar Balpande', 'Tilottama Balpande', 'OBC', 'shivanibalpande01@gmail.com', '42-C Priyadarshani Nagar Risali Bhilai', '6267534514', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(798, 'MJC815', 'MJ940657', 'Mohammed', '', 'Zakariya ', 'Male', '2002-07-01', 'Faiyyaz Ahmed Khan', 'Nazar Parveen', 'General', 'mohammedzakariya1221@gmail.com', 'Farid Nagar', '+919131826965', NULL, NULL, 'Andhra Pradesh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'B220/03228/0314', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(799, 'MJC816', 'MJ348067', 'Himanshu', '', 'Choudhary', 'Male', '2002-01-22', 'K.c choudhary', 'Leena choudhary', 'General', 'hc22122@gmail.com', 'sector 5 street 15 Quater 7/c ', '9981419902', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(800, 'MJPH817', 'MJ423709', 'prakash', 'das', '', 'Male', '1975-04-15', ' shri lakhan das', 'smt khediya bai', 'OBC', 'prakashmanikpuri1504@.gmail.com', 'odiya khurd', '7869200840', NULL, NULL, 'Chhattisgarh', 'kawardha', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119039', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(801, 'MJC818', 'MJ802731', 'Harsh', 'Singh', 'Rajput', 'Male', '2002-12-18', 'Rajesh Singh Rajput', 'Gayatri Rajput', 'General', 'hr7079643@gmail.com', 'Gatapar, Parpodi, Saja, Bemetara (C.G.)', '7999663168', NULL, NULL, 'Chhattisgarh', 'Gatapar, Parpodi', 'India', '491331', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(802, 'MJC819', 'MJ039728', 'Tuleshwari', '', 'Verma', 'Female', '1999-08-22', 'Deepesh Kumar Verma', 'Kamla Bai', 'General', 'tulesh.kgh2017@gmail.com', 'Supela', '+1917828990804', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(803, 'MJC820', 'MJ391574', 'dhal', 'singh', 'sahu', 'Male', '1994-02-08', 'dular', 'chitrekha', 'OBC', 'dhalsinghsahu68154@gmail.com', 'village chhuriya dongri ', '8817417924', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491558', NULL, NULL, NULL, 'Inactive', NULL, '1', 'dhalsinghsahu68154@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(804, 'MJC821', 'MJ489512', 'Amitesh', 'Kumar', 'Singh', 'Male', '2000-07-19', 'Suresh Kumar Singh', 'Mamta Devi', 'General', 'amiteshk492@gmail.com', '4/10 Block A, Nehru Nagar,East', '8839713035', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(805, 'MJC822', 'MJ749201', 'Annapurna', '', 'Yadu', 'Female', '2002-06-05', 'Krishna kumar yadu ', 'Janki yadu ', 'OBC', 'annapurnayadu450@gmail.com', 'shiv para murum khadan supela', '8349047624', NULL, NULL, 'Chhattisgarh', 'Bhilai ', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(806, 'MJC823', 'MJ245631', 'Adiba ', 'khatoon', '', 'Female', '1999-01-10', 'Md Late Hasmuddin khan', 'Mrs Samun Nesha', 'General', 'sahanakhatoon0225@gmail.com', 'H.no43 Ganesh chowk krishna nagar W no 05 supela bhilai Durg c. g', '+917999301210', NULL, NULL, 'Andhra Pradesh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(807, 'MJC824', 'MJ871235', 'Nikhat', 'Parveen', '', 'Female', '2000-07-10', 'Md. Yusuf Ansari ', 'Anjum begam', 'General', 'mdyusufa07gmail.com', 'Idgaah muhalla farid nagar bhilai durg', '9770640824', NULL, NULL, 'Andhra Pradesh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(808, 'MJC825', 'MJ345612', 'Saheen', 'Saheen', 'Saheen', 'Female', '2021-01-06', 'Qurban Ali', 'Rajiya Begam', 'General', 'yakhan321@gamil.com', 'QR NO-M/453,,Jarhi colony,bhatgaon Surajpur', '6264873688', NULL, NULL, 'Andhra Pradesh', 'Ambikapur', 'India', '497235', NULL, NULL, NULL, 'Inactive', NULL, '1', '1940029152', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(809, 'MJEDU826', 'MJ678549', 'Kaveri', '', 'Sahu', 'Female', '1997-07-04', 'Kalyan kumar Sahu', 'Hemlata Sahu', 'OBC', 'kaverisahu7@gmail.com', 'Ramnagar mukthidham ', '9165446339', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(810, 'MJC827', 'MJ176283', 'Anjali', '', 'Nishad', 'Female', '2001-10-06', 'kamal kishore nishad', 'rekha nishad', 'General', 'anjalin10616@gmail.com', 'mig 2/23 housing board kohka bhilai', '7489993477', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(811, 'MJC828', 'MJ937460', 'Anurag', 'singh ', 'Thakur', 'Male', '2021-01-06', 'ajay thakur', 'madhu thakur', 'General', 'anuragthakur11188@gmail.com', 'parpodi ward no.12', '9174698883', NULL, NULL, 'Chhattisgarh', 'parpodi', 'India', '491331', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(812, 'MJC829', 'MJ507318', 'Demendra', '', 'verma', 'Male', '2001-07-22', 'punit ram verma ', 'Sarita verm ', 'OBC', 'demendraverma7335@gmail.com', 'Near shitla tlab arya nager kohka ', '7389748474', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(813, 'MJC830', 'MJ562378', 'Rincy', '', 'Varghese ', 'Female', '1999-01-02', 'Varghese Joseph ', 'Lissy Varghese ', 'General', 'rincyvarghese@gmail.com', 'Baba Deep Singh Nagar,Vaishali Nagar', '8109142855', NULL, NULL, 'Andhra Pradesh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(814, 'MJC831', 'MJ710946', 'Takesh', 'kumar', 'chandel', 'Male', '1997-11-26', 'Beni Ram Chandel', 'Bimla Bai Chandel', 'OBC', 'kumartakesh121@gmail.com', 'sunder nagar khokha,Bhiali (near gulab kirana store) ', '8602859095', NULL, NULL, 'Chhattisgarh', 'Bhiali', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340117008', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(815, 'MJC832', 'MJ905781', 'Abhay', '', 'Katre', 'Male', '2002-02-20', 'Pratap lal katre', 'Jaishri katre', 'General', 'abhaykatre484@gmail.com', 'House no-352,Street-14,Cross-2,Chandra nagar,Kohka,Bhilai', '8319496948', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(816, 'MJC833', 'MJ568413', 'Rohan', '', 'Srivastava ', 'Male', '2001-12-11', 'Arun kumar Srivastava ', 'Ruby Srivastava ', 'General', 'rohansrivastava183@gmail.com', 'quarter no. :- 7/D, HSCL colony , ruabhandha ,.risali', '8251891517', NULL, NULL, 'Chhattisgarh', 'bhilai ', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(817, 'MJC834', 'MJ435102', 'Sana', '', 'Iqbal', 'Female', '2002-05-20', 'Iqbal Ahmed', 'Aysha Iqbal', 'General', ' sana.arshi04@gmail.com', 'Ganesh Chowk Krishna Nagar', '9399459635', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(818, 'MJPH835', 'MJ247691', 'VIJAY', 'KUMAR', 'TIWARI', 'Male', '1981-03-19', 'kripashankar tiwari', 'Rati tiwari', 'General', 'vijay.ritu1410@mail.com', 'Lig 2 2424 mp houshing board industrial area', '9131002414', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490026', NULL, NULL, NULL, 'Inactive', NULL, '1', '210604119061', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(819, 'MJC836', 'MJ306815', 'Aastha', '', 'Singh', 'Female', '2002-11-29', 'Rakesh kumar singh', 'Anita singh', 'General', 'aasthasingh2911@gmail.com', 'aastha niwas ,plot no-38/a, near by star nurssery school , maitrikunj, bhilai', '+918770586099', NULL, NULL, 'Chhattisgarh', 'bhilai ', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(820, 'MJC837', 'MJ148563', 'Shruti', '', 'Sirmour', 'Female', '2001-05-10', 'Mr. H.R.Sirmour', 'Mrs. Sangeeta Sirmour ', 'General', 'sirmourhr1@gmail.com', 'Qtrno9/A, Street-22,Sector-5', '9407981506', NULL, NULL, 'Andhra Pradesh', 'Bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(821, 'MJC838', 'MJ642317', 'Renuka', 'verma', 'Renuka verma', 'Female', '1988-07-23', 'omprakash verma', 'Laxmi verma', 'OBC', 'rv505738@gmail.com', 'village Basin', '7828481124', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', 'rv505738@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(822, 'MJC839', 'MJ739816', 'Neelam', '', 'Mourya', 'Female', '2000-03-24', 'Harindra Prasad mourya', 'Sheela mourya', 'General', 'mouryaneelam322@gmail.com', 'Mother teresa nagar 42/25', '7999970667', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(823, 'MJC840', 'MJ125678', 'Rasna', '', 'Pandey', 'Female', '2002-11-21', 'D. p Pandey ', 'santoshi Pandey ', 'General', 'rasnapandey21@gmail.com', 'reshne awas (A/1)Lig quater nehru nagar bhilai ', '8889426089', NULL, NULL, 'Chhattisgarh', 'Durg ', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(824, 'MJC841', 'MJ928674', 'Mansi', '', '', 'Female', '2002-08-10', 'Ashwani kumar', 'Sita', 'ST', 'mansithakur394@gmail.com', 'block no 14/b street no 30 sector 5 ', '7024058909', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(825, 'MJC842', 'MJ912680', 'Nancy ', '', 'Jain', 'Female', '2002-08-13', 'Naveen Jain', 'Rajani Jain', 'General', 'njnancy13@gmail.com', 'shop no.66 A market sector 10 ', '7803966290', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', 'njnancy13@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(826, 'MJC843', 'MJ640729', 'monisha', '', 'parmar', 'Female', '2001-09-16', 'umesh parmar', 'sangeeta parmar', 'General', 'umeshkumarparmar53@gmail.com', 'naresh chal Q-7 railway road ', '7489485710', NULL, NULL, 'Chhattisgarh', 'belha bilaspur', 'India', '495222', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(827, 'MJEDU844', 'MJ107846', 'janmejai', 'nishad', 'nishad', 'Male', '1997-07-02', 'shobhit ram', 'ishwari nishad', 'OBC', 'nishadjay202@gmail.com', 'parsatola', '9399140378', NULL, NULL, 'Chhattisgarh', 'ambagarh chowki,rajnandgaon', 'India', '491665', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(828, 'MJEDU845', 'MJ516782', 'pushpendra kumar nishad', 'kumar', 'nishad', 'Male', '1998-12-13', 'shobhit ram nishad', 'ishwari nishad', 'OBC', 'pushpendrakumar9449@gmail.com', 'village-parsatola', '6379080764', NULL, NULL, 'Chhattisgarh', 'ambagad chowki', 'India', '491665', NULL, NULL, NULL, 'Inactive', NULL, '1', 'pushpendrakumar9449@gmail.com', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(829, 'MJC846', 'MJ958601', 'Anil ', '', 'shrivastav', 'Male', '1999-10-31', 'sanjay shrivastav', 'vibha shrivastav', 'General', 'anilkumarshrivastav1234@gmail.com', 'baikunthdham camp 2 bhilai', '7987900961', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(830, 'MJC847', 'MJ312607', 'Ritik', 'kumar', 'singh', 'Male', '2021-01-07', 'Umashankar singh', 'Anita devi', 'General', 'singhriteek2001@gmail.com', 'Jawahar nagar atal awas ', '7223874238', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(831, 'MJC848', 'MJ325016', 'Afrin', '', 'bano', 'Female', '2021-01-07', 'MD Arif', 'Sakeena bano', 'General', 'afreenaffi07@gmail.com', 'Aslam Arshad manzil farid nagar supela bhilai', '7580802707', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(832, 'MJEDU849', 'MJ409238', 'Asinta ', '', 'Xalxo', 'Female', '1997-03-08', 'father - Amrit xalxo', 'Fransiska xalxo', 'ST', 'asintaxalxo12121997@gmail.com ', 'Village -Gorea ,P.O. Gorea ,Block - Kunkuri , Dhist .- jashpur (C.G.)', '6261958441', NULL, NULL, 'Chhattisgarh', 'Ambikapur', 'India', '49225', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(833, 'MJC850', 'MJ147320', 'warish', '', 'ahmed', 'Male', '1999-11-14', 'Said ahmed', 'Shama Parveen', 'General', 'warishahmed349@gmail.com', 'farid nagar nizami chowk supela bhilai', '6393009696', NULL, NULL, 'Andhra Pradesh', 'Farid Nagar', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'warishahmed349@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(834, 'MJC851', 'MJ216985', 'Himanshu', 'Singh ', 'Thakur', 'Male', '2000-02-06', 'Vinod Singh Thakur', 'Sunita Thakur', 'General', 'thakurhs445@gmail.com', 'Sanatan Nagar Kohka', '7869157766', NULL, NULL, 'Andhra Pradesh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '93400040006', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(835, 'MJC852', 'MJ871305', 'Yamini', '', 'Yamini dashriya', 'Female', '2001-03-16', 'Yamini dashriya', 'Yamini dashriya', 'OBC', 'yaminidashriya@gmail.com', 'hno-1454 plotno-19 ldgah chowk street-1A', '919098109103', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '+1919098109103', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(836, 'MJC853', 'MJ418036', 'sushant', '', 'kosewar', 'Male', '2000-08-22', 'madan kosewar', 'geeta kosewar', 'SC', 'sushantkosewar@gmail.com', 'arya nagar kohka', '8103170808', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(837, 'MJC854', 'MJ439758', 'Doman', 'kumar', ' Chandel', 'Male', '2001-07-22', 'Birendra Kumar chandel', 'godawari chandel', 'General', 'domanchandel28@gmail.com', 'housing board kohka', '9131174663', NULL, NULL, 'Andhra Pradesh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(838, 'MJC855', 'MJ912058', 'sakshi', '', 'singh', 'Female', '2002-05-28', 'Avadhesh singh', 'sangeeta singh', 'General', 'sakshi28may@gmail.com', 'vivekanand nagar kohka housing board ', '9713563097', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'sakshi28may@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(839, 'MJC856', 'MJ083157', 'Megha', '', 'Shrivas', 'Female', '2001-04-23', 'Hariram shrivas', 'Sharmila shrivas', 'OBC', 'shrivasmegha2@gmail.com', 'Behind Water Tank ,Nutan Chowk,Bhilai-3', '6266909899', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490021', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(840, 'MJC857', 'MJ890123', 'Chanchal', '', 'shrivas', 'Female', '2000-04-05', 'Hariram shrivas', 'Sharmila shrivas', 'OBC', 'chanchalshrivas5@gmail.com', ' Nutan Chowk , Behind Water tank bhilai-3', '9098651848', NULL, NULL, 'Chhattisgarh', 'Bhilai ', 'India', '490021', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(841, 'MJC858', 'MJ462971', 'Dileshwari', '', 'Mirry', 'Female', '2002-06-14', 'khelan das mirry', 'chandrakumari mirry', 'SC', 'dileshwarimirry4@gmail.com', 'ghasi das nagar bhilai ', '+916266929004', NULL, NULL, 'Chhattisgarh', 'bhilai ', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(842, 'MJPH859', 'MJ987654', 'KRISHNAKANT', 'AKHILESH', 'TRIPATHI', 'Male', '2002-10-23', 'AKHILESH TRIPATHI', 'NIRMALA TRIPATHI', 'General', 'krishna23tripathi@gmail.com', 'plot no 16 navin nagar pardi', '8390975588', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022-037', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(843, 'MJC860', 'MJ135670', 'Kalpana', '', 'singh', 'Female', '2003-10-03', 'surendra singh', 'Bindu devi', 'General', 'kalpanasingh79746665@gmail.com', 'Houshing board', '9179901269', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490026', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(844, 'MJC861', 'MJ742381', 'kamlesh', 'kumar', 'chandra', 'Male', '2000-11-14', 'horilal chandra', 'santoshi bai chandra', 'OBC', 'kamleshchd99@gmail.com', 'birra', '7690848970', NULL, NULL, 'Chhattisgarh', 'birra', 'India', '495661', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(845, 'MJC862', 'MJ184359', 'DINESH ', 'KUMAR', '', 'Male', '1992-08-03', 'GHONO RAM', 'BATI BAI', 'OBC', 'dineshyadavjsp536@gmail.com', 'PURANI TOLI', '+1918839285386', NULL, NULL, 'Andhra Pradesh', 'JASHPUR', 'India', '496331', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029042', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(846, 'MJC863', 'MJ837491', 'gulnaaz', '', 'Nisha ', 'Female', '2003-07-27', 'MD. bafat', 'ajmerun nisha', 'General', 'hk5288219@gmail.com', 'housing board bhilai', '9755155727', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490026', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(847, 'MJC864', 'MJ892647', 'INDU', '', 'SAHU', 'Female', '2001-04-25', 'ARJUN SAHU', 'SANTOSHI SAHU', 'General', 'indusahu2504@gmail.com', 'KURUD BHILAI', '7879090110', NULL, NULL, 'Chhattisgarh', 'BHILAI ', 'India', '490024', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(848, 'MJC865', 'MJ103425', 'deepak ', '', 'kumar', 'Male', '1997-11-01', 'shri Arjun Singh', 'saroj bai', 'OBC', 'deepakgangber0111@gmail.com', 'vill+post - dudhli (malighori)', '9111796433', NULL, NULL, 'Chhattisgarh', 'balod', 'India', '491226', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(849, 'MJC866', 'MJ925016', 'Alok', 'Kumar', 'Srivastav', 'Male', '1981-06-01', 'S J B Singh', 'Rama Devi', 'General', 'aloksrivastav404@gmail.com', 'Indira Para, G.E Raod,Near Patanajali Arogya Kendra', '9826159152', NULL, NULL, 'Chhattisgarh', 'Bhilai-3', 'India', '490021', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(850, 'MJC867', 'MJ904127', 'archana', 'sahu', 'sahu', 'Female', '2021-03-25', 'Ramakrishna sahu', 'chitrrekha sahu', 'OBC', 'archusahu100@gmail.com', 'sai nagar durg', '9098816112', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(851, 'MJPH868', 'MJ753894', 'Anjali', 'anjali rawte', 'Rawte', 'Female', '2003-08-26', 'Santosh kumar rawte', 'lalita rawte', 'ST', 'anjurawte89@gmail.com', 'villege-bharritola block-manpur dic-rajnadgaon', '7646955371', NULL, NULL, 'Chhattisgarh', 'Rajnadgaon', 'India', '491229', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-085', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(852, 'MJC869', 'MJ052176', 'Rajat', '', 'Prajapati', 'Male', '2001-09-22', 'sikander prajapati', 'Parvati devi', 'General', 'prajapatirajat499@gmail.com', 'bhancha bhavan kurud', '9399617774', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(853, 'MJC870', 'MJ594071', 'siddhi', '', 'lahuriya', 'Female', '2003-01-07', 'Gainda ram lahuriya', 'ahilya lahuriya', 'OBC', 'siddhilahuriya3@gmail.com', 'arya nagar kohka ', '9301974370', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '117', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(854, 'MJC871', 'MJ139074', 'Himanshu ', '', 'patel ', 'Male', '1996-07-16', 'keshav Patel ', 'kunti Patel ', 'OBC', 'himansupatel534@gmail.com', 'vill post-nardha  ', '8103514518', NULL, NULL, 'Chhattisgarh', 'Bhilai ', 'India', '490024', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(855, 'MJC872', 'MJ527140', 'Surekha', '', 'Dewangan', 'Female', '1984-11-03', 'Dhaneshwar Prasad Dewangan', 'Shiv kumari Dewangan', 'OBC', 'dewangansahil.36@gmail.com', 'Bajarag para, kohka, durg', '8120402578', NULL, NULL, 'Chhattisgarh', 'durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '19340029172', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(856, 'MJC873', 'MJ917654', 'LOKNATH', '', 'SAHU', 'Male', '1986-01-10', 'RADHE LAL SAH7', 'JAMUNA BAI SAHU', 'OBC', 'sloknath20@gmail.com', 'VILL PO DHANESARA TAH NARHARPUR ', '7879646276', NULL, NULL, 'Chhattisgarh', 'KANKER', 'India', '494335', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH 2022 041', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(857, 'MJC874', 'MJ270945', 'Hitik', '', 'Hitik Panariya', 'Male', '2000-08-26', 'sunder das Panariya ', 'yanju Panariya ', 'OBC', 'hitikpanariya91@gmail.com', 'bhilai vaishali nagar', '9770271046', NULL, NULL, 'Chhattisgarh', 'bhilai ', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', 'hitikpanariya91@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(858, 'MJC875', 'MJ957861', 'abhishek ', '', 'shome', 'Male', '2000-10-14', 'Anjan Shome', 'Minati Shome', 'General', 'abhishekshome1234@gmail.com', 'st16 c/134 smriti nagar bhilai', '7489633434', NULL, NULL, 'Chhattisgarh', 'bhilai ', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(859, 'MJPH876', 'MJ132576', 'Mukesh', 'Kumar', 'Sahu', 'Male', '1999-11-28', 'Shankar Prasad Sahu', 'Shrimati Sahu', 'General', 'sahum8314@gmail.com', 'village biramtal sub dist. bhaiyathan dist. surajpur chhattisgarh', '9907906807', NULL, NULL, 'Chhattisgarh', 'biramtal', 'India', '497231', NULL, NULL, NULL, 'Inactive', NULL, '1', 'BPH2024-081', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL),
(860, 'MJC877', 'MJ902863', 'Pandava Gayatri', '', '', 'Female', '2002-07-26', 'Pandava Shankar Rao', 'Pandava Lavanya', 'OBC', 'pandavagayatri2002@gmail.com', 'Main road , telukunchi village', '7008167744', NULL, NULL, 'Andhra Pradesh', 'Ichapuram', 'India', '532312', NULL, NULL, NULL, 'Inactive', NULL, '1', '23400040012', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(861, 'MJPH878', 'MJ283956', 'KEWRI ', '', 'BAI', 'Female', '1988-09-08', 'PREMLAL LODHI', 'SUMITRA BAI', 'OBC', 'kaveriverma1990@gmail.com', 'SANATAN NAGAR SHRADHA SUMAN SCHOOL KE PASS KOHKA BHILAI', '8305043824', NULL, NULL, 'Chhattisgarh', 'BHILAI', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'DPH2022-016', 'MJPH', 'M J College (Pharmacy)', NULL, NULL, NULL, NULL);
INSERT INTO `mj_student` (`id`, `emp_id`, `password`, `firstname`, `middlename`, `lastname`, `gender`, `dob`, `father`, `mother`, `caste_category`, `email`, `address`, `mobile`, `contact2`, `address2`, `state`, `city`, `country`, `pincode`, `admin_role`, `photo`, `created_at`, `live_status`, `create_by`, `admission_status`, `roll_no`, `college_id`, `college_name`, `percentile`, `enquiry`, `remarks`, `recall`) VALUES
(862, 'MJC879', 'MJ046592', 'Ajit', 'Singh', 'Pali', 'Male', '1997-10-06', 'Devi Singh pali', 'Gangtotri pali', 'OBC', 'electronicgada@gmail.com', 'ward no.16 kawardha', '7987770682', NULL, NULL, 'Chhattisgarh', 'kawardha', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(863, 'MJC880', 'MJ697538', 'Shikha', '', '', 'Female', '1995-03-02', 'Sonu Kumar ', 'Meena Singh', 'General', 'ssmehta42@gmail.com', '25G/29 Sector 05', '9827152436', NULL, NULL, 'Chhattisgarh', 'Bhilai ', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(864, 'MJC881', 'MJ761408', 'jeevan', '', '', 'Male', '1992-07-15', 'mohan sahu', 'neera sahu', 'General', 'jeevansahu771@gmail.com', 'village_rakhi,post_deokar,dist._bemetra', '6263932420', NULL, NULL, 'Chhattisgarh', 'bemetra', 'India', '491331', NULL, NULL, NULL, 'Inactive', NULL, '1', '1111', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(865, 'MJC882', 'MJ493781', 'ankita', '', 'nayak', 'Female', '1997-07-12', 'Dilip Kumar Nayak', 'Rekha Nayak', 'General', 'nankita590@gmail.com', 'saket nagar kohka', '7024545490', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(866, 'MJC883', 'MJ346705', 'KAMLESH', 'SINGH', 'DHRUWE', 'Male', '1993-07-23', 'DANI SINGH DHRUWE', 'DUJIYA BAI', 'ST', 'kamleshdani2393@gmail.com', 'BHORAMDEV GODANA RESORT BEHIND SHIV VIHAR KAWARDHA', '8839482204', NULL, NULL, 'Chhattisgarh', 'KAWARDHA', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(867, 'MJC884', 'MJ786521', 'Shashi', 'Kala', 'Chandel', 'Female', '1980-06-25', 'SantRam Chandel', 'Amroutin Adil', 'SC', 'chandelshashi140@gmail.com', 'Deoabloda bmy bhilai', '8085693304', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490025', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(868, 'MJC885', 'MJ629507', 'Pushpa ', '', 'Pradhan', 'Female', '2002-12-01', 'Dhaneshwar Pradhan ', 'Ranjita Pradhan ', 'OBC', 'Pushpapradhan048263@gmail.com', 'Vill-Parsa ', '8603182655', NULL, NULL, 'Jharkhand', 'sonua', 'India', '833105', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(869, 'MJEDU886', 'MJ135680', 'khushnuma ', 'gausiya', 'Ansari', 'Female', '1999-10-27', 'nasim ali Ansari', 'Fatima begam', 'General', 'muskanansari6266@gmail.com', 'sirsi bhaiyath', '6266521377', NULL, NULL, 'Andhra Pradesh', 'surajpur', 'India', '497231', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(870, 'MJC887', 'MJ967153', 'namrata ', '', 'devi', 'Female', '1990-10-09', 's.r.chilhate ', 'pushpa ', 'General', 'namratachilhate@gmail.com', 'kohka', '9098413176', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(871, 'MJC888', 'MJ642587', 'rozina', 'haider ali', 'khan', 'Female', '1988-07-05', 'Haider Ali khan', 'Julekha siddique', 'General', 'rozina5788@gmail.com', '9a ava sector 7', '9826632213', NULL, NULL, 'Andhra Pradesh', 'bhilai nagar', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(872, 'MJC889', 'MJ728634', 'Naveen', 'Kumar', 'Tigga', 'Male', '1993-06-29', 'Lodo Ram Tigga', 'Roja Sewati', 'ST', 'tigganaveensj@gmail.com', 'Karmi Para 2, Bakirma, PO. Sukhri', '9009066891', NULL, NULL, 'Chhattisgarh', 'Ambikapur', 'India', '497001', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(873, 'MJC890', 'MJ572138', 'Rishika', '', 'chatterjee', 'Female', '1993-08-22', 'Aditya chatterjee', '', 'General', 'rishikachatterjeebhilai@gmail.com', '7/12radhika nagar', '8827773551', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(874, 'MJC891', 'MJ289754', 'RAJA', '', 'CHANDRAVANSHI', 'Male', '1996-04-15', 'GUDDA CHANDRAVANSHI', 'USHA CHANDRAVANSHI', 'General', 'rajachandravanshi154@gmail.com', 'BIJAJHORI POST RAMHEPUR ', '8770620077', NULL, NULL, 'Chhattisgarh', 'KAWARDHA', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(875, 'MJC892', 'MJ073982', 'KUMARI', 'KAJAL', 'GUPTA', 'Female', '1996-11-17', 'MR. RAMESH GUPTA', 'MRS. SAVITA GUPTA', 'OBC', 'kajalgupta4801@gmail.com', 'MAIN ROAD R.K. TENT HOUSE BATAULI', '7879468218', NULL, NULL, 'Chhattisgarh', 'BATAULI', 'India', '497101', NULL, NULL, NULL, 'Inactive', NULL, '1', 'kajalgupta4801@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(876, 'MJEDU893', 'MJ059486', 'Shikha', '', 'Kumari', 'Female', '2003-03-03', 'Shashi Kant Mandal', 'Sunita Kumari', 'OBC', 'kumarishikha25091@gmail.com', 'Kadwa Tola', '+916207537965', NULL, NULL, 'Jharkhand', 'Godda', 'India', '814133', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(877, 'MJC894', 'MJ561230', 'soniya', '', 'gupta', 'Female', '1994-11-06', 'soniya gupta', 'soniya gupta', 'General', 'soniyagupta512@gmail.com', 'LIG92 kohka housing board bhilai', '9109336642', NULL, NULL, 'Chhattisgarh', 'bhulai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', 'soniyagupta512@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(878, 'MJEDU895', 'MJ091638', 'Amita ', '', 'lakra', 'Female', '1993-07-02', 'Elias lakra ', 'Mangrita lakra ', 'ST', 'amitalakra05@gmail.com', 'vill-pandaripani(tukutola) post -bhitghra', '8120957406', NULL, NULL, 'Chhattisgarh', 'tah-bagicha district -jashpur ', 'India', '496224', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(879, 'MJC896', 'MJ820451', 'Deepali', '', 'Deepali Tiwari', 'Female', '1995-03-14', 'Ravi Nath Tiwari', 'Santosh Tiwari', 'General', 'deepali.tiwari14395@gmail.com', 'krishna nagar santoshi nagar raipur', '7999399952', NULL, NULL, 'Chhattisgarh', 'raipur', 'India', '492001', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(880, 'MJC897', 'MJ796250', 'pushpanjali', '', 'sahu', 'Female', '1993-05-30', 'manharan sahu', 'shanti sahu', 'OBC', 'punamsahu305@gmail.com', 'pushpanjali bhavan purani basti kohka bhilai', '7974170860', NULL, NULL, 'Chhattisgarh', 'bhilai durg', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(881, 'MJEDU898', 'MJ028135', 'Pooja ', '', 'Jaiswal ', 'Female', '2021-01-30', 'Gokul Ram Jaiswal ', 'Savitri ', 'OBC', 'poojajaiswalkwd@gmail.com', 'Ram nagar ward no.1 kawardha', '6232257934', NULL, NULL, 'Chhattisgarh', 'kabeerdham', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(882, 'MJEDU899', 'MJ291406', 'ami', '', 'gautam', 'Male', '1988-06-26', 'ayodhya prasad', 'kailash wati', 'SC', 'amigautamana@gmail.com', 'village bhunda post nevra ', '8770221863', NULL, NULL, 'Chhattisgarh', 'bilaspur', 'India', '495112', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(883, 'MJC900', 'MJ827453', 'Deepanjali', '', 'Patanwar', 'Female', '1999-10-14', 'Vijay Kumar Patanwar', 'Shivkumari Patanwar', 'OBC', 'deepanjalipatanwar@gmail.com', 'janji talab bandhwapara arvind nagar new sarkanda  ', '7987305307', NULL, NULL, 'Chhattisgarh', 'bilaspur', 'India', '495001', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(884, 'MJC901', 'MJ235614', 'BHAWNA', '', 'SINHA', 'Female', '1993-11-18', 'G L SINHA', 'KAMLESH BALA SINHA', 'OBC', 'bhawnasinha1993@gmail.com', 'plot no 18 near HI-TEK Hospital smriti nagar', '9630101313', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(885, 'MJC902', 'MJ187096', 'urmila ', '', 'suryavanshi', 'Female', '1993-08-01', 'Navin kumar', '', 'General', 'navjaadu4455@gmail.com', 'house no.1018 model town p.o nehru nagar', '7898179253', NULL, NULL, 'Chhattisgarh', 'bhilai nagar', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(886, 'MJC903', 'MJ823059', 'chitralekha ', '', 'dhruw', 'Female', '1993-06-23', 'Suresh Kumar dhruw', 'Tomin dhruw', 'ST', 'chitralekhadhruw38@gmail.com', 'street no 26, qutr no-6/B, Nandini Nagar, distt-durg (C.G)', '8649960446', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '490036', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(887, 'MJEDU904', 'MJ169258', 'sati', '', 'Tandan', 'Female', '2021-03-04', 'paras ram Tandan', 'Aasin Bai', 'SC', 'satitandan96@gmail.com', 'Ward no. 8 ghogharapara pandariya distric kabirdham (CG)', '9340824487', NULL, NULL, 'Chhattisgarh', 'Pandariya', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(888, 'MJC905', 'MJ278351', 'CHINMAY ', 'SINGH', 'CHANDEL', 'Male', '1997-11-12', 'ARUN SINGH CHANDEL', 'NISHA SINGH CHANDEL', 'General', 'chinmay.chandel97@gmail.com', 'NAMNAKALA', '9752505350', NULL, NULL, 'Chhattisgarh', 'AMBIKAPUR', 'India', '497001', NULL, NULL, NULL, 'Inactive', NULL, '1', 'chinmay.chandel97@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(889, 'MJC906', 'MJ143960', 'SHWETA', '', 'SAHU', 'Female', '1996-03-01', 'TARAN KUMAR SAHU', 'ANESHWARI SAHU', 'General', 'shwetasahu131996@gmail.com', 'QR.NO.-48 B,STREET NO.-AV.C,SEC.-1,BHILAI NAGAR,DURG,C.G.', '7879849304', NULL, NULL, 'Chhattisgarh', 'BHILAI NAGAR', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(890, 'MJC907', 'MJ391468', 'Shashank', '', 'Shrivastava', 'Male', '1997-04-09', 'Khemu lal shrivastava', 'Deepa shrivastava', 'General', 'ss341936@gmail.com', 'berla', '7024909597', NULL, NULL, 'Chhattisgarh', 'berla', 'India', '491332', NULL, NULL, NULL, 'Inactive', NULL, '1', '12345', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(891, 'MJC908', 'MJ703162', 'miss', 'Shraddha', 'Chandravanshi', 'Female', '2021-01-30', 'kailash Chandravanshi', 'Lata Chandravanshi', 'General', 'shraddhachandraanshi93@gmail.com', 'village mohatra kala post kolegaov dist kabirdham', '8815926007', NULL, NULL, 'Andhra Pradesh', 'kabirdham', 'India', '491559', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(892, 'MJC909', 'MJ738051', 'pravesh', 'singh', 'thakur', 'Male', '2021-01-30', 'balmukund singh thakur ', 'kiran thakur ', 'General', 'pravesh.montu37@gmail.com', 'budhapara road', '7587249280', NULL, NULL, 'Chhattisgarh', 'balod', 'India', '491226', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(893, 'MJC910', 'MJ164073', 'Anjum', '', 'Khan', 'Female', '1990-08-02', 'Mr Allah bande khan', 'badrun bano khan', 'General', 'anjumkhan.kwd@gmail.com', 'North vasundhara nagar bhilai 3', '916260267032', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490021', NULL, NULL, NULL, 'Inactive', NULL, '1', 'anjumkhan.kwd@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(894, 'MJC911', 'MJ296584', 'maheshwar', '', 'nirala', 'Male', '1990-08-20', 'bhikhu ram', 'subo bai', 'ST', 'niralamaheshwar@gmail.com', 'high school colony pathalgaon', '8319128723', NULL, NULL, 'Chhattisgarh', 'pathalgaon', 'India', '496118', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(895, 'MJEDU912', 'MJ721048', 'shailendra', '', 'chandrakar', 'Male', '1999-07-05', 'tamaskar chandrakar', 'suraj devi chandrakar', 'OBC', 'shubhamchandrakar975@gmail.com', 'vill.amcho , po.dadhi, bemetara', '9131582129', NULL, NULL, 'Chhattisgarh', 'amcho', 'India', '491335', NULL, NULL, NULL, 'Inactive', NULL, '1', 'shubhamchandrakar975@gmail.com', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(896, 'MJC913', 'MJ590384', 'shikha', '', 'gupta', 'Female', '2000-06-20', 'jagdish gupta ', 'sunita gupta', 'OBC', 'shikhavikashgupta@gmail.com', 'vijaynagar', '9302535328', NULL, NULL, 'Chhattisgarh', 'balrampur', 'India', '497220', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(897, 'MJC914', 'MJ946782', 'kartik', '', 'jaiswal', 'Male', '1999-04-06', 'Shri Chandrashekhar jaiswal', 'Smt parwati jaiswal', 'General', 'kartik.jaiswal09@gmail.com', 'ward nu 10 jail para surajpur', '+919691392655', NULL, NULL, 'Chhattisgarh', 'Surajpur', 'India', '497229', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(898, 'MJEDU915', 'MJ219674', 'Durgeshvari ', '', 'Tandan', 'Female', '2021-01-31', 'Santosh kumar', 'kalyani', 'SC', 'durgatandan7@gmail.com', 'villege Mainpura', '9399409687', NULL, NULL, 'Chhattisgarh', 'Pandariya ', 'India', '491559', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(899, 'MJC916', 'MJ952163', 'Shubhangi ', '', 'Dewangan', 'Female', '1998-01-23', 'Moti lal Dewangan', 'Anju Dewangan', 'General', 'shubhangidewangan38@gmail.com', 'Lal Bahadur Nagar', '8966831274', NULL, NULL, 'Chhattisgarh', 'Dongargarh', 'India', '491557', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(900, 'MJC917', 'MJ380714', 'Manoj', 'kumar', '', 'Male', '1994-11-22', 'chandra Prasad', 'indra wati', 'ST', 'manojmonu8090@gmail.com', 'vill-Dewna,post-patrapali', '9340312249', NULL, NULL, 'Chhattisgarh', 'Ramanujagar', 'India', '497333', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(901, 'MJEDU918', 'MJ612985', 'swati', '', 'yadav', 'Female', '1997-05-24', 'Narayan Prasad Yadav', 'Meena Yadav', 'General', 'swati24597@gmail.com', 'vill. parsahi, post. bhathagaon, tah. ghunderdehi, dist. Balod.', '8839322370', NULL, NULL, 'Andhra Pradesh', 'Balod', 'India', '491223', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(902, 'MJC919', 'MJ340179', 'CHAMELI', '', 'PAINKRA', 'Female', '1996-08-19', 'DHANA RAM', 'TILASO', 'General', 'sumanpinkra@gmail.com', 'SUWARPARA', '8120106532', NULL, NULL, 'Chhattisgarh', 'AMBIKAPUR', 'India', '497101', NULL, NULL, NULL, 'Inactive', NULL, '1', '1917051', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(903, 'MJC920', 'MJ798561', 'MAYURI', '', 'PODDAR', 'Female', '1998-04-02', 'MUKUL PODDAR ', 'SAVITA PODDAR', 'General', 'mayuri.poddar1998@gmail.com', 'vill. shubhapalli Pakhanjore ', '9425518642', NULL, NULL, 'Chhattisgarh', 'Pakhanjore', 'India', '494776', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(904, 'MJC921', 'MJ294361', 'pallavi', '', 'chandravanshi', 'Female', '1993-10-28', 'Ashish chandravanshi', 'Reena gour', 'General', 'explore.pallavi15@gmail.com', '25/1,street-7,nehru nagar west', '7489800662', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', 'explore.pallavi15@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(905, 'MJC922', 'MJ653107', 'Sachin ', '', 'Sahu', 'Male', '1999-01-08', 'Sanjay Sahu', 'Parveen Sahu', 'OBC', 'sachinchin.56@gmail.com', 'HNo. 251,Ward No.54 Potiya kala, Bhatapara,Durg', '8109913109', NULL, NULL, 'Chhattisgarh', 'Durg ', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(906, 'MJC923', 'MJ081763', 'NARESH', 'KUMAR', 'PORTE', 'Male', '1997-03-16', 'HARI RAM', 'KEWRA BAI', 'General', 'loveu1920184@gmail.com', 'VILL.PAWANTARA POST.SURAJPIRA ', '8120648155', NULL, NULL, 'Chhattisgarh', 'KAWARDHA ', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(907, 'MJC924', 'MJ581790', 'Naval', '', 'Gupta', 'Male', '1998-07-01', 'Rampyare Gupta', 'Basanti Gupta ', 'OBC', 'guptanaval1798@gmail.com', 'vill+post =Guturma,teh.-sitapur,surguja (C.G.)', '8827858740', NULL, NULL, 'Chhattisgarh', 'sitapur', 'India', '497114', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(908, 'MJC925', 'MJ460387', 'Roshani ', 'kumari ', 'kharsan', 'Female', '1998-12-15', 'Vinod kumar kharsan', 'Durpati kharsan', 'SC', 'kharsankiran2000@gmail.com', 'Mohgaon po.sarvani', '7773832365', NULL, NULL, 'Chhattisgarh', 'Janjgir', 'India', '495660', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(909, 'MJC926', 'MJ216973', 'Mukeshwar', 'kumar', 'kurre', 'Male', '2021-06-15', 'Rambharosa kurre', 'Rookhmani', 'General', 'mukeshwarkurre@gmail.com', 'vill deawada', '8085660427', NULL, NULL, 'Andhra Pradesh', 'Rajandgaon', 'India', '491444', NULL, NULL, NULL, 'Inactive', NULL, '1', '1083', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(910, 'MJC927', 'MJ390781', 'khushbu ', '', 'vishwakarma ', 'Female', '1996-11-09', 'shri Dinanath vishwakarma', 'kalawati vishwakarma', 'General', 'khusboovishwakarma547@gmail.com', 'silphili ,dist. surajpur c.g.', '9340791834', NULL, NULL, 'Chhattisgarh', 'Ambikapur', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '1234', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(911, 'MJC928', 'MJ502673', 'Shubham', '', 'Singh', 'Male', '1994-08-28', 'Subhash Singh', 'Seema Singh', 'General', 'singhshubham280894@gmail.com', 'kadambari nagar', '7987941667', NULL, NULL, 'Chhattisgarh', 'Durg', 'India', '491001', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(912, 'MJC929', 'MJ186275', 'JYOTI', 'Dewangan', '', 'Female', '1997-04-08', 'Jhumman Lal', 'Usha Bai', 'OBC', 'jdewangan313@gmail.com', 'Vill.+post= Semra, block= Nagari, Dist= Dhamtari (C.G.)', '9340462030', NULL, NULL, 'Chhattisgarh', 'Dhamtari', 'India', '493778', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(913, 'MJC930', 'MJ302617', 'Shiva', 'Singh ', 'Thakur', 'Male', '1999-04-22', 'Ishwar prasad Thakur', 'Leena thakur', 'ST', 'www.shivasingh101@gmail.com', 'shiv mandir road ,post office khairagarh, ward no 18 ', '6264366240', NULL, NULL, 'Chhattisgarh', 'khairagarh', 'India', '491881', NULL, NULL, NULL, 'Inactive', NULL, '1', 'www.shivasingh101@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(914, 'MJC931', 'MJ702684', 'sujeet', '', 'Kumar', 'Male', '1990-09-05', 'Bhikhu prasad', 'champa devi', 'General', 'ksujeet0509@gmail.com', 'block14-b', '9752812236', NULL, NULL, 'Chhattisgarh', 'street-24 sector2', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(915, 'MJC932', 'MJ169384', 'Mukesh', 'Kumar', 'Lanjhi', 'Male', '1992-11-15', 'Dhani Ram Lanjhi', 'Godawari bai', 'General', 'mukesh.k.lanjhi@gmail.com', 'ward no 4 , ravidas nagar', '7004940321', NULL, NULL, 'Chhattisgarh', 'kawardha', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(916, 'MJC933', 'MJ157932', 'Vivek', '', 'Verma', 'Male', '1994-11-20', 'ashok verma', 'mithila verma', 'OBC', 'vermavivek789@gmail.com', 'behind gaytri mandir ward no 21 kawardha', '8839147185', NULL, NULL, 'Chhattisgarh', 'kawardha', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(917, 'MJC934', 'MJ745629', 'SATYAPRAKASH ', '', '', 'Male', '1990-05-15', 'RAMADHAR', 'AMRIKA', 'SC', 'shaktimiry@gmail.com', 'VILLAGE TILAIBHAT POST BODLA', '6263307489', NULL, NULL, 'Chhattisgarh', 'KAWARDHA', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(918, 'MJC935', 'MJ714592', 'Sakshi Gopal', '', 'Sahu', 'Male', '1985-05-13', 'Purushottam Sahu', 'Geeta Devi Sahu', 'OBC', 'sakshimailforu@gmail.com', 'C/O Purushottam Sahu,Ward 9,Near Vishwakarma Steel Udyog,Arya Nagar Kohka', '7828799902', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(919, 'MJC936', 'MJ504796', 'DIGVIJAY', '', 'LAKRA', 'Male', '1996-01-01', 'BACHANSAI', 'SUBASO', 'General', 'digvijaylakra1212@gmail.com', 'Ila post-kilkila tech - pathalgaon Dist-Jashpur', '7000495466', NULL, NULL, 'Andhra Pradesh', 'pathalgaon', 'India', '496118', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(920, 'MJC937', 'MJ498672', 'ghhj', 'jjgd', 'nbj', 'Female', '1976-02-08', 'tgjk', 'hjk', 'General', 'deptt.culture@gmail.com', 'ghklkh', '8344942322', NULL, NULL, 'Andhra Pradesh', 'jaspur', 'India', '490003', NULL, NULL, NULL, 'Inactive', NULL, '1', '56', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(921, 'MJC938', 'MJ805649', 'Rajendra', 'kumar', 'markandey', 'Male', '1995-03-01', 'Hira ram markandey', 'Hemeshwari ', 'SC', 'rajendramarkandey2015@gmail.com', 'vill-bharda gond, post-bundeli, teh-chhuikhadan, dis,rajnandgoan(CG)', '7999301292', NULL, NULL, 'Chhattisgarh', 'chhuikhadan', 'India', '491888', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(922, 'MJC939', 'MJ204578', 'cigcyfyof', 'ihckkh', 'kHDiyco', 'Female', '1988-02-08', 'u8vuoc', 'kBBC', 'General', 'guhhjj', 'v9uo', '7828799856', NULL, NULL, 'Andhra Pradesh', 'hicic', 'India', '357375', NULL, NULL, NULL, 'Inactive', NULL, '1', '556', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(923, 'MJEDU940', 'MJ854793', 'shruti ', '', 'sinha', 'Female', '1998-05-01', 'Sunil kumar sinha', 'Prem Lata sinha', 'General', 'shrutisinha151998@gmail.com', 'civil line bhagalpur road', '6265797491', NULL, NULL, 'Chhattisgarh', 'jashpur nagar', 'India', '496331', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(924, 'MJC941', 'MJ780461', 'preeti', 'patel', '', 'Female', '1993-10-20', 'Ramavatar patel', 'Durgawati Patel', 'OBC', 'omptl32@gmail.com', 'Qu. no. 15/c road no 52, zone -2, sec -11, khursipar', '9479037976', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490011', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(925, 'MJC942', 'MJ643792', 'Shadab', '', 'Imam', 'Male', '1986-08-22', 'Imamuddin', 'Naushad Imam', 'General', 'shadab.imam.@gmail.com', 'byron bazar', '6261276545', NULL, NULL, 'Chhattisgarh', 'Raipur', 'India', '492001', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(926, 'MJC943', 'MJ013926', 'Ramesh', 'kumar', 'raushan', 'Male', '1991-08-25', 'krishna prasad', 'kalawati devi', 'OBC', 'ramesh6223@gmail.com', 'ambikapur', '9122129222', NULL, NULL, 'Chhattisgarh', 'ambikapur', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', 'ramesh6223@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(927, 'MJEDU944', 'MJ312985', 'Ankita', '', 'Chandravnshi ', 'Female', '1993-10-12', 'Manohar Lal Chandravnshi ', 'Kalpana Chandravnshi ', 'OBC', 'ankitachandravanshi5@gmail.com', 'Pipariya', '8770686259', NULL, NULL, 'Chhattisgarh', 'Kawardha', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(928, 'MJEDU945', 'MJ539768', 'Vidya', '', 'Dhurve', 'Female', '1997-08-12', 'Vijay Dhurve', 'Prabha Devi', 'ST', 'vidyadhurve0@gmail.com', 'Vill. Lasatola  Post Maharajpur  Dist Kabirdham', '9174539955', NULL, NULL, 'Chhattisgarh', 'Kawardha', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(929, 'MJC946', 'MJ617802', 'TIKESH ', 'KUMAR', 'SAHU', 'Male', '1995-06-06', 'J K SAHU', 'SHAIL BAI', 'OBC', 'tikeshsahu53@gmail.com', 'BLOCK 19 F  STREET 10 SECTOR 03 BHILAI NAGAR', '7999326469', NULL, NULL, 'Chhattisgarh', 'BHILAI NAGAR', 'India', '490001', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(930, 'MJC947', 'MJ186403', 'PUSHPRAJ', '', '', 'Male', '1998-02-25', 'CHHANNURAM', 'RAMPHOOL ', 'OBC', 'pushprajkumarkwd@gmail.com', 'vill bano,post gudha dist kabirdham', '+919617270176', NULL, NULL, 'Chhattisgarh', 'kabirdham', 'India', '491336', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(931, 'MJC948', 'MJ751063', 'Nandini', '', 'Badatya', 'Female', '1999-05-22', 'Basant kumar badatiya', 'smt Banita Badatya', 'General', 'nandinibadatya64@gmail.com', 'ward no. 06 shubhash ward pokhari dafai NP.khongapani', '8328914853', NULL, NULL, 'Chhattisgarh', 'manendragarh', 'India', '497447', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(932, 'MJC949', 'MJ507294', 'Yaminee', '', 'sahu', 'Female', '1993-01-18', 'Abhishek kumar sahu', '', 'General', 'yaminee.yami@gmail.com', 'shikshak nagar kohka', '7509101328', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '490023', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(933, 'MJC950', 'MJ476025', 'Disha ', '', 'Rahul', 'Female', '2000-03-06', 'Mr. Tejesh Rahul', 'Mrs. Maya Rahul', 'SC', 'disharahul504@gmail.com', 'tulsipur baktwarchal ward no. 17, rajnandgaon (c.g)', '9755000980', NULL, NULL, 'Chhattisgarh', 'rajnandgaon ', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(934, 'MJC951', 'MJ718463', 'ghj', 'gbn', 'hjj', 'Female', '2021-02-08', 'nnj', 'hhj', 'General', 'uu@vb', 'uj', '5645', NULL, NULL, 'Chhattisgarh', 'kk', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '4768', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(935, 'MJC952', 'MJ754921', 'navratan', 'Kumar', 'waren', 'Male', '1994-04-25', 'Shyam bihari', 'mangli bai', 'SC', 'navratanwaren@gmail.com', 'vlg kotmi post kotmi', '8819989992', NULL, NULL, 'Chhattisgarh', 'janjgir champa', 'India', '495692', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(936, 'MJC953', 'MJ450389', 'MASTER ', 'RUFASH', 'KERKETTA', 'Male', '2000-03-26', 'AJEET KUMAR KERKETTA', 'BALMDEENA KERKETTA', 'ST', 'rufashkerketta@gmail.com', 'BHAWANI NAGAR MANORA P.O.-MANORA TH.- MANORA DIST-JASHPUR CG', '7970030082', NULL, NULL, 'Chhattisgarh', 'JASHPUR', 'India', '496330', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(937, 'MJC954', 'MJ136420', 'Kajal', '', 'Kajal sharma', 'Female', '1989-03-19', 'Kajal sharma', 'Kajal sharma', 'General', 'sharma.kajal.19@gmail.com', 'flat no 5, b11, chouhan green valley,junwani', '9977911720', NULL, NULL, 'Chhattisgarh', 'Bhilai', 'India', '490020', NULL, NULL, NULL, 'Inactive', NULL, '1', 'sharma.kajal.19@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(938, 'MJC955', 'MJ310279', 'Prachi', '', 'Goswami', 'Female', '1997-06-16', 'Pramod giri goswami', 'Shanti goswami', 'General', 'prachigoswami1606@gmail.com', 'Thakur para word no 7 khairagarh', '8982959275', NULL, NULL, 'Chhattisgarh', 'Khairagarh', 'India', '491881', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(939, 'MJEDU956', 'MJ679138', 'thaneshwari', 'sahu', '', 'Female', '1996-11-11', 'nandkumar sahu', 'yashoda sahu', 'OBC', 'vedd012sahu@gmail.com', 'vill-borai,post-kutelikala,block-chhuikhadan,district-rajnandgaon(cg)', '9752996173', NULL, NULL, 'Chhattisgarh', 'rajnandgaon', 'India', '491885', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(940, 'MJC957', 'MJ265931', 'Antim ', '', 'soni', 'Female', '1995-02-01', 'Ashok soni', 'Rekha soni', 'OBC', 'aarohisoni01@yahoo.com', 'chikhali ', '8966877896', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491441', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(941, 'MJC958', 'MJ503817', 'GOPESH ', '', 'kumar', 'Male', '2021-02-09', 'devsingh', 'sirmotin ', 'General', 'gopeshpurame@gmail.com', 'vil.piprkhar pos.kodeksa.th.doindilohara dist.balond', '6267139049', NULL, NULL, 'Chhattisgarh', 'chhattisgarh', 'India', '491771', NULL, NULL, NULL, 'Inactive', NULL, '1', '+916267139049', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(942, 'MJC959', 'MJ374952', 'pramesh', 'kumar', 'singh', 'Male', '1993-08-12', 'Ravindra singh', 'Bhagmanian', 'ST', 'prameshsingh805@gmail.com', 'vill- jagatpur, post- madanpur,Th.-Ramanujnagar, Disttrict - Surajpur', '8959847032', NULL, NULL, 'Chhattisgarh', 'Ramanujnagar', 'India', '497333', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(943, 'MJC960', 'MJ145986', 'Mukeshwar', 'kumar', 'kurre', 'Male', '1998-06-15', 'Rambharosa', 'Rookhmani', 'General', 'mukeshwarkurre837@gmail.com', 'vill dewada post Uperwah', '+918085660427', NULL, NULL, 'Andhra Pradesh', 'Rajanandgaov', 'India', '491444', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(944, 'MJEDU961', 'MJ465819', 'jai', '', 'Kumar', 'Male', '1992-05-18', 'satyanarayan', 'fuleshwari', 'ST', 'jai172021@gmail.com', 'vill+post-darripara', '9174798985', NULL, NULL, 'Chhattisgarh', 'Bhaiyathan surajpur', 'India', '497231', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL),
(945, 'MJC962', 'MJ014756', 'Dinesh', '', 'Verma', 'Male', '1996-12-10', 'Ganiram Verma', 'Chameli Verma', 'OBC', 'dinesssverma@gmail.com', 'pondi kawardha', '9754295129', NULL, NULL, 'Chhattisgarh', 'Kawardha', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(946, 'MJC963', 'MJ037816', 'BHUVNESHWAR', '', 'MANHAR', 'Male', '2020-05-05', 'Daliram ', 'Amroutin', 'SC', 'manharbhuvneshwar@gmail.com', 'nagar panchayat pipariya', '+917828702371', NULL, NULL, 'Chhattisgarh', 'Pipariya', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(947, 'MJC964', 'MJ526148', 'minakshee', '', '', 'Female', '1995-07-02', 'Ram Singh', 'Sukro bai', 'ST', 'thakurmeenakshi696@gmail.com', 'Ve.-poplatola(jatadah),po.-sahgaon,tah.-dondi lohara,di.- balod', '7587799230', NULL, NULL, 'Chhattisgarh', 'dondilohara ', 'India', '491771', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(948, 'MJC965', 'MJ729346', 'Yogeshwari ', '', '', 'Female', '1992-03-12', 'Rakesh kumar', 'panch bai ', 'SC', 'jangdeyogeshwari12@gmail.com', 'q.no. 3/c street 28 sec.5 bhilai', '8770899083', NULL, NULL, 'Andhra Pradesh', 'bhilai', 'India', '490006', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(949, 'MJC966', 'MJ759016', 'Umend ', '', 'singh ', 'Male', '1994-07-12', 'Bihari singh ', 'Jethakunwar', 'ST', 'umsingh353@gmail.com', 'Vill-pandri pathra,teh-pandariya,Dist-kawardha(CG)', '+1917389191512', NULL, NULL, 'Chhattisgarh', 'Pandariya ', 'India', '491559', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(950, 'MJC967', 'MJ503649', 'suman', '', '', 'Female', '1989-01-12', 'ashok kumar dilliwar', 'shyama', 'General', 'suman.hardel@gmail.com', 'shankar nagar', '9591129562', NULL, NULL, 'Chhattisgarh', 'balod', 'India', '491226', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(951, 'MJC968', 'MJ364259', 'devendra', '', '', 'Male', '1996-03-21', 'LALIT KUMAR', 'KANTI PATEL', 'OBC', 'devendrapatel369@gmail.com', 'bhatagaon awadhpuri colony', '9131037930', NULL, NULL, 'Chhattisgarh', 'Raipur', 'India', '492001', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(952, 'MJC969', 'MJ458396', 'Dileshwari', '', 'Dileshwari Janghel', 'Male', '2021-01-10', 'Dileshwari Janghel', 'Dileshwari Janghel', 'General', 'dileshwarijanghel96@gmail.com', 'oteand,post - bundeli ,dist. - rajnandgaon', '919399664768', NULL, NULL, 'Andhra Pradesh', 'khairagarh', 'India', '491888', NULL, NULL, NULL, 'Inactive', NULL, '1', 'dileshwarijanghel96@gmail.com', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(953, 'MJC970', 'MJ597328', 'Munmun', '', 'Bhadra', 'Female', '2000-04-30', 'Prabhash Bhadra', 'Palashee Bhadra', 'General', 'mun2bhadra@gmail.com', 'bhilai supella priyadarshini parisar east', '9406221191', NULL, NULL, 'Chhattisgarh', 'bhilai', 'India', '', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(954, 'MJC971', 'MJ531207', 'priya', '', 'chandravanshi', 'Female', '1999-03-05', 'Santosh chandravanshi', 'Gayatri chandravanshi', 'OBC', 'priyachandravanshi138@gmail.com', 'kawardha chhattisgarh', '+19301119088', NULL, NULL, 'Chhattisgarh', 'kawardha', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(955, 'MJC972', 'MJ897024', 'pankaj ', '', 'gupta', 'Male', '1993-12-24', 'paras gupta', 'sushma Gupta', 'OBC', 'sunnygupta885452@gmail.com', 'ring road namanakala ambikapur near Pankaj Coaching', '7000707028', NULL, NULL, 'Chhattisgarh', 'ambikapur', 'India', '497001', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(956, 'MJC973', 'MJ132096', 'Shubhra', '', 'Gharami', 'Female', '2021-02-11', 'Harekrishna Gharami', 'Sunita Gharami', 'General', 'shubhragharami@gmail.com', 'Ramkrishnapur pakhanjore kanker chattisghar', '9479185061', NULL, NULL, 'Chhattisgarh', 'pakhanjore', 'India', '494776', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(957, 'MJC974', 'MJ719246', 'Gopesh', '', 'kumar', 'Male', '1996-09-15', 'devsingh', 'sirmotin', 'ST', 'gopeshpurame@gailm.com', 'vill-piprkhar post-kodeksa th-doindilohara dist-balod', '8959963324', NULL, NULL, 'Chhattisgarh', 'doindilohara', 'India', '491771', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(958, 'MJC975', 'MJ079215', 'priyanka', '', 'chandravanshi', 'Female', '2021-02-11', 'Ashok Chandravanshi', 'mithila chandravanshi', 'General', 'priyanka06263@gmail.com', 'Ji sham nagar kawardha chattisgarh', '6263821653', NULL, NULL, 'Andhra Pradesh', 'kawardha', 'India', '491995', NULL, NULL, NULL, 'Inactive', NULL, '1', '', 'MJC', 'M J College', NULL, NULL, NULL, NULL),
(959, 'MJEDU976', 'MJ406237', 'priti', '', 'malekar', 'Male', '1994-10-06', 'Kishor Kumar', 'Rukhmani', 'SC', 'Pritimalekar06@gmail.com', 'Vill-Motipur Post-Dangarh Dist-Rajnandgaon', '7748028294', NULL, NULL, 'Chhattisgarh', 'Rajnandgaon', 'India', '491665', NULL, NULL, NULL, 'Inactive', NULL, '1', '123', 'MJEDU', 'M J College Department of Education', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `office_item_category`
--

CREATE TABLE `office_item_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `office_item_category`
--

INSERT INTO `office_item_category` (`id`, `category_name`, `created_by`, `date_time`) VALUES
(3, 'Internal/Subcon/Open LPO (Proceed to Comments)', NULL, '2021-02-01 00:44:49'),
(4, 'Office Related Items (Furniture etc.)', NULL, '2021-02-01 00:45:14'),
(5, 'Office Supplies', NULL, '2021-02-01 00:45:27'),
(6, 'IT Consumables', NULL, '2021-02-01 00:45:43'),
(7, 'Variables (Asphalt, Delineator, Cement, etc.)', NULL, '2021-02-01 00:46:00'),
(8, 'HSE Items', NULL, '2021-02-01 00:46:11'),
(9, 'Service Charge / Repair Maintinance', NULL, '2021-02-01 00:46:24'),
(10, 'Permit / Certification', NULL, '2021-02-01 00:46:37'),
(11, 'Others', NULL, '2021-02-01 00:46:57');

-- --------------------------------------------------------

--
-- Table structure for table `office_item_name`
--

CREATE TABLE `office_item_name` (
  `id` int(11) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `unit` varchar(8) DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `item_code` varchar(50) DEFAULT NULL,
  `stock_value` varchar(10) DEFAULT '0',
  `category_id` varchar(20) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `office_item_name`
--

INSERT INTO `office_item_name` (`id`, `item_name`, `unit`, `type`, `item_code`, `stock_value`, `category_id`, `created_by`, `date_time`) VALUES
(13, 'Item 4', 'pcs', 'Goods', NULL, '0', '4', 'MJGEAdmin', '2021-02-09 11:01:47'),
(14, 'Item 3', 'km', 'Service', NULL, '0', '10', 'MJGEAdmin', '2021-02-10 09:26:28'),
(15, 'Item 2', 'mg', 'Service', NULL, '0', '4', 'MJGEAdmin', '2021-02-10 09:39:28'),
(16, 'Item 1', 'in', 'Service', NULL, '5', '6', 'MJGEAdmin', '2021-02-10 09:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `staff_awords_recognition`
--

CREATE TABLE `staff_awords_recognition` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(20) DEFAULT NULL,
  `Awords_Subject` varchar(150) DEFAULT NULL,
  `Description` varchar(150) DEFAULT NULL,
  `pub_Date` varchar(150) DEFAULT NULL,
  `created_by` varchar(25) DEFAULT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_awords_recognition`
--

INSERT INTO `staff_awords_recognition` (`id`, `staff_id`, `Awords_Subject`, `Description`, `pub_Date`, `created_by`, `created_date`) VALUES
(3, 'MJGE80', 'fsf', 'dfdf', '2008', 'MJGEAdmin', '2021-02-02 11:01:35'),
(4, 'MJGE80', 'dfg', 'dsg', '2008', 'MJGEAdmin', '2021-02-02 12:33:53'),
(5, 'MJGE84', '45e6t', 'rty', '6', 'MJGE46', '2021-02-05 04:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `staff_conference_attended`
--

CREATE TABLE `staff_conference_attended` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(20) DEFAULT NULL,
  `conference` varchar(150) DEFAULT NULL,
  `Organized_By` varchar(15) DEFAULT NULL,
  `Conference_year` varchar(150) DEFAULT NULL,
  `Conference_Education` varchar(25) NOT NULL,
  `Conference_Category` varchar(20) DEFAULT NULL,
  `Conference_Role` varchar(25) NOT NULL,
  `created_by` varchar(25) DEFAULT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_conference_attended`
--

INSERT INTO `staff_conference_attended` (`id`, `staff_id`, `conference`, `Organized_By`, `Conference_year`, `Conference_Education`, `Conference_Category`, `Conference_Role`, `created_by`, `created_date`) VALUES
(2, 'MJGE67', 'sAa', 'gdgf', '2008', 'Natinal', 'Natinal', 'Natinal', 'MJGEAdmin', '2021-01-19 15:53:52'),
(3, 'MJGE67', 'dgsg', 'fdgds', '2008', 'Natinal', 'International', 'International', 'MJGEAdmin', '2021-01-19 15:54:26'),
(4, 'MJGE67', 'sdas', 'fsfs', '2009', 'Natinal', 'Natinal', 'International', 'MJGEAdmin', '2021-01-19 15:56:33'),
(5, 'MJGE67', 'gh', 'jfjfj', '2009', 'Natinal', 'International', 'Natinal', 'MJGEAdmin', '2021-01-19 15:59:41'),
(6, 'MJGE84', 'ret', 'rett', '567', 'PG', 'Natinal', 'Supervisor', 'MJGE46', '2021-02-05 04:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `staff_designation`
--

CREATE TABLE `staff_designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `emp_id` varchar(50) DEFAULT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff_experience`
--

CREATE TABLE `staff_experience` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(20) DEFAULT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `Description` varchar(150) DEFAULT NULL,
  `Dete_of_joining` date DEFAULT NULL,
  `Date_of_relieving` date DEFAULT NULL,
  `type_of_appointed` varchar(25) DEFAULT NULL,
  `created_by` varchar(25) DEFAULT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_experience`
--

INSERT INTO `staff_experience` (`id`, `staff_id`, `Name`, `Description`, `Dete_of_joining`, `Date_of_relieving`, `type_of_appointed`, `created_by`, `created_date`) VALUES
(1, 'MJGE80', 'w', 'dsa', '0000-00-00', '0000-00-00', 'University_ratified', 'MJGEAdmin', '2021-02-02 11:49:30'),
(2, 'MJGE80', 'ds', 'd', '0000-00-00', '0000-00-00', 'University_ratified', 'MJGEAdmin', '2021-02-02 11:53:20'),
(3, 'MJGE80', 'ds', 'd', '0000-00-00', '0000-00-00', 'University_ratified', 'MJGEAdmin', '2021-02-02 11:53:55'),
(4, 'MJGE80', 'dsfdfsfds dsfdsfds', 'asd', '2021-01-01', '2021-02-02', 'University_ratified', 'MJGEAdmin', '2021-02-02 11:54:15'),
(5, 'MJGE80', 'w', 'dsa', '0000-00-00', '0000-00-00', 'University_ratified', 'MJGEAdmin', '2021-02-02 11:49:30'),
(6, 'MJGE80', 'ds', 'd', '0000-00-00', '0000-00-00', 'University_ratified', 'MJGEAdmin', '2021-02-02 11:53:20'),
(7, 'MJGE80', 'ds', 'd', '0000-00-00', '0000-00-00', 'University_ratified', 'MJGEAdmin', '2021-02-02 11:53:55'),
(8, 'MJGE80', 'dsfdfsfds dsfdsfds', 'asd', '2021-01-01', '2021-02-02', 'University_ratified', 'MJGEAdmin', '2021-02-02 11:54:15'),
(9, 'MJGE80', 'w', 'dsa', '0000-00-00', '0000-00-00', 'University_ratified', 'MJGEAdmin', '2021-02-02 11:49:30'),
(10, 'MJGE80', 'ds', 'd', '0000-00-00', '0000-00-00', 'University_ratified', 'MJGEAdmin', '2021-02-02 11:53:20'),
(11, 'MJGE80', 'ds', 'd', '0000-00-00', '0000-00-00', 'University_ratified', 'MJGEAdmin', '2021-02-02 11:53:55'),
(12, 'MJGE80', 'dsfdfsfds dsfdsfds', 'asd', '2021-01-01', '2021-02-02', 'University_ratified', 'MJGEAdmin', '2021-02-02 11:54:15'),
(13, 'MJGE80', 'w', 'dsa', '0000-00-00', '0000-00-00', 'University_ratified', 'MJGEAdmin', '2021-02-02 11:49:30'),
(14, 'MJGE80', 'ds', 'd', '0000-00-00', '0000-00-00', 'University_ratified', 'MJGEAdmin', '2021-02-02 11:53:20'),
(15, 'MJGE80', 'ds', 'd', '0000-00-00', '0000-00-00', 'University_ratified', 'MJGEAdmin', '2021-02-02 11:53:55'),
(16, 'MJGE80', 'dsfdfsfds dsfdsfds', 'asd', '2021-01-01', '2021-02-02', 'University_ratified', 'MJGEAdmin', '2021-02-02 11:54:15'),
(17, 'MJGE84', '46yt', 'try', '2021-02-05', '2021-02-11', 'OOM', 'MJGE46', '2021-02-05 04:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `staff_other_details`
--

CREATE TABLE `staff_other_details` (
  `id` int(11) NOT NULL,
  `professinal_body` varchar(500) DEFAULT NULL,
  `Membership_ID` varchar(500) DEFAULT NULL,
  `Type_of_membership` varchar(200) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `Council_registration_number` varchar(100) DEFAULT NULL,
  `Post_Category` varchar(500) DEFAULT NULL,
  `Name_of_department` varchar(200) DEFAULT NULL,
  `Designation` varchar(500) DEFAULT NULL,
  `Join_Date` datetime DEFAULT current_timestamp(),
  `Aadhar_ID` varchar(50) DEFAULT NULL,
  `PAN_ID_Number` varchar(50) DEFAULT NULL,
  `Banck_A/c_Details` varchar(200) DEFAULT NULL,
  `Branch_Name` varchar(20) DEFAULT NULL,
  `Address_Details` varchar(500) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time(6) DEFAULT NULL,
  `Account_Holder_Name` varchar(20) DEFAULT NULL,
  `IFSC_CODE` varchar(20) DEFAULT NULL,
  `emp_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_other_details`
--

INSERT INTO `staff_other_details` (`id`, `professinal_body`, `Membership_ID`, `Type_of_membership`, `create_date`, `Council_registration_number`, `Post_Category`, `Name_of_department`, `Designation`, `Join_Date`, `Aadhar_ID`, `PAN_ID_Number`, `Banck_A/c_Details`, `Branch_Name`, `Address_Details`, `date`, `time`, `Account_Holder_Name`, `IFSC_CODE`, `emp_id`) VALUES
(16, 'sad', 'abc', 'Anual', '2021-02-05 12:28:24', 'aadd', 'Principal', 'drgzf', 'Principal', '2021-02-01 00:00:00', '798', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MJGE80');

-- --------------------------------------------------------

--
-- Table structure for table `staff_paper_publication_in_journals`
--

CREATE TABLE `staff_paper_publication_in_journals` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(20) DEFAULT NULL,
  `paper_title` varchar(150) DEFAULT NULL,
  `published_year` varchar(15) DEFAULT NULL,
  `jounral` varchar(150) DEFAULT NULL,
  `track_ID` varchar(20) DEFAULT NULL,
  `created_by` varchar(25) DEFAULT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_paper_publication_in_journals`
--

INSERT INTO `staff_paper_publication_in_journals` (`id`, `staff_id`, `paper_title`, `published_year`, `jounral`, `track_ID`, `created_by`, `created_date`) VALUES
(2, 'MJGE67', 'ugg', '2088', 'kjgh', '7878978978', 'MJGEAdmin', '2021-01-19 13:22:28'),
(5, 'MJGE80', 'dv', '2008', 'fv', '978', 'MJGEAdmin', '2021-02-02 12:37:54'),
(6, 'MJGE80', 'teill', '2008', 'sads', '978', 'MJGEAdmin', '2021-02-02 12:38:47'),
(7, 'MJGE84', 'rtyr', '67', 'rt', '5', 'MJGE46', '2021-02-05 04:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `staff_qualification`
--

CREATE TABLE `staff_qualification` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(20) DEFAULT NULL,
  `examination` varchar(150) DEFAULT NULL,
  `year_of_passing` varchar(15) DEFAULT NULL,
  `board_university` varchar(150) DEFAULT NULL,
  `percentage` varchar(20) DEFAULT NULL,
  `created_by` varchar(25) DEFAULT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_qualification`
--

INSERT INTO `staff_qualification` (`id`, `staff_id`, `examination`, `year_of_passing`, `board_university`, `percentage`, `created_by`, `created_date`) VALUES
(10, 'MJGE67', 'ug', '2008', 'nvgj', '78', 'MJGEAdmin', '2021-01-19 14:25:42'),
(11, 'MJGE67', 'ug', '2008', 'asdasd', '89', 'MJGEAdmin', '2021-01-19 15:33:10'),
(17, 'MJGE80', 'df', '2088', 'casc', '78', 'MJGEAdmin', '2021-02-02 13:01:00'),
(18, 'MJGE84', 'rret', '657', 'tyu6', '66', 'MJGE46', '2021-02-05 04:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `staff_workshops_trainings_seminars_attended`
--

CREATE TABLE `staff_workshops_trainings_seminars_attended` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(20) DEFAULT NULL,
  `organized_By` varchar(150) DEFAULT NULL,
  `descriptipn` varchar(15) DEFAULT NULL,
  `publish_year` varchar(150) DEFAULT NULL,
  `ugc_sci` varchar(20) DEFAULT NULL,
  `created_by` varchar(25) DEFAULT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_workshops_trainings_seminars_attended`
--

INSERT INTO `staff_workshops_trainings_seminars_attended` (`id`, `staff_id`, `organized_By`, `descriptipn`, `publish_year`, `ugc_sci`, `created_by`, `created_date`) VALUES
(1, 'MJGE84', 'ret', 'et', '546', '456', 'MJGE46', '2021-02-05 04:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `student_course`
--

CREATE TABLE `student_course` (
  `id` int(11) NOT NULL,
  `course_id` varchar(50) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `created_by_id` varchar(50) DEFAULT NULL,
  `course_type_id` varchar(50) DEFAULT NULL,
  `subject_id` varchar(50) DEFAULT NULL,
  `course_date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_course`
--

INSERT INTO `student_course` (`id`, `course_id`, `course_name`, `created_by_id`, `course_type_id`, `subject_id`, `course_date_time`) VALUES
(6, '26', 'Computer Science (C.S.)', 'admin', '24', '15', '2020-11-11 01:11:57'),
(7, '27', 'Mathematics (Maths)', 'admin', '24', '15', '2020-11-11 01:13:40'),
(8, '28', 'Taxation', 'admin', '25', '15', '2020-11-11 01:16:49'),
(9, '29', 'Economics', 'admin', '25', '15', '2020-11-11 01:17:12'),
(10, '30', 'Mathematics', 'admin', '25', '15', '2020-11-11 01:17:26'),
(11, '31', 'Accounting', 'admin', '25', '15', '2020-11-11 01:17:40'),
(12, '32', 'Statistics', 'admin', '25', '15', '2020-11-11 01:23:09'),
(13, '33', 'Banking', 'admin', '25', '15', '2020-11-11 01:23:31'),
(14, '34', 'Finance', 'admin', '25', '15', '2020-11-11 01:23:48'),
(15, '35', 'Marketing', 'admin', '25', '15', '2020-11-11 01:24:07'),
(16, '36', 'E-Commerce', 'admin', '25', '15', '2020-11-11 01:24:26'),
(17, '37', 'Business Management', 'admin', '25', '15', '2020-11-11 01:24:43'),
(18, '38', 'Computer Application', 'admin', '25', '15', '2020-11-11 01:25:01'),
(19, '39', 'Finance and Control', 'admin', '25', '15', '2020-11-11 01:28:21'),
(20, '40', 'Accounting and Finance', 'admin', '25', '15', '2020-11-11 01:28:35'),
(21, '41', 'Banking and Finance', 'admin', '25', '15', '2020-11-11 01:29:09'),
(22, '42', 'Bachelor of Computer Application (B.C.A.)', '', '16', '12', '2020-11-11 02:03:21'),
(23, '43', 'Bachelor of Computer Application (B.C.A.)', '', '17', '12', '2020-11-11 02:03:40'),
(24, '44', 'Bachelor of Commerce (B.Com.)', '', '18', '12', '2020-11-11 02:05:18'),
(25, '45', 'Bachelor of Commerce (B.Com.)', '', '19', '12', '2020-11-11 02:05:30'),
(26, '46', 'Bachelor of Commerce (B.Com.)', '', '20', '12', '2020-11-11 02:05:41'),
(27, '47', 'Finance', '', '21', '13', '2020-11-11 02:07:19'),
(28, '48', 'Banking and Insurance', '', '21', '13', '2020-11-11 02:07:35'),
(29, '49', 'Information Technology', '', '21', '13', '2020-11-11 02:07:54'),
(30, '50', 'Human Resource', '', '21', '13', '2020-11-11 02:08:08'),
(31, '51', 'Marketing', 'MJGEAdmin', '21', '13', '2020-11-11 02:08:25'),
(32, '52', 'Communication and Media Management', 'MJGEAdmin', '21', '13', '2020-11-11 02:08:42'),
(33, '53', 'Foreign Trade', 'MJGEAdmin', '21', '13', '2020-11-11 02:08:58'),
(34, '54', 'Hospitality and Hotel Management', 'MJGEAdmin', '21', '13', '2020-11-11 02:09:11'),
(35, '55', 'Hospital and Healthcare Management', 'MJGEAdmin', '21', '13', '2020-11-11 02:09:26'),
(36, '56', 'Diploma in Computer Application (DCA)', 'MJGEAdmin', '22', '13', '2020-11-11 02:09:58'),
(37, '57', 'Bachelor of Education (B. Ed.)', 'MJGEAdmin', '23', '13', '2020-11-11 02:12:04'),
(43, '72', 'Computer Application', 'MJGEAdmin', '21', '13', '2020-11-27 03:51:31'),
(44, '78', 'Pharmacy', 'MJGEAdmin', '77', '76', '2020-11-27 21:19:48'),
(45, '91', 'Pharmacy', 'MJGEAdmin', '81', '79', '2020-11-27 21:57:36'),
(46, '92', 'Pharmacy', 'MJGEAdmin', '82', '79', '2020-11-27 21:57:50'),
(47, '93', 'Pharmacy', 'MJGEAdmin', '83', '76', '2020-11-27 21:58:10'),
(48, '94', 'Pharmacy', 'MJGEAdmin', '84', '76', '2020-11-27 21:58:17'),
(49, '95', 'Pharmacy', 'MJGEAdmin', '85', '76', '2020-11-27 21:58:23'),
(50, '96', 'Pharmacy', 'MJGEAdmin', '86', '76', '2020-11-27 21:58:29'),
(51, '97', 'Pharmacy', 'MJGEAdmin', '87', '76', '2020-11-27 21:58:37'),
(52, '98', 'Pharmacy', 'MJGEAdmin', '88', '76', '2020-11-27 21:58:45'),
(53, '99', 'Pharmacy', 'MJGEAdmin', '89', '76', '2020-11-27 22:00:37'),
(54, '100', 'Pharmacy', 'MJGEAdmin', '90', '76', '2020-11-27 22:00:47'),
(55, '101', 'D.El.Ed - YEAR I', 'MJGEAdmin', '73', '67', '2020-11-28 01:24:26'),
(56, '102', 'D.El.Ed - YEAR II', 'MJGEAdmin', '73', '67', '2020-11-28 01:24:40'),
(57, '103', 'M.Ed (Semester â€“ I)', 'MJGEAdmin', '75', '70', '2020-11-28 01:29:18'),
(58, '104', 'M.Ed (Semester â€“ II)', 'MJGEAdmin', '75', '70', '2020-11-28 01:29:52'),
(59, '105', 'M.Ed (Semester â€“ III)', 'MJGEAdmin', '75', '70', '2020-11-28 01:30:27'),
(60, '106', 'M.Ed (Semester â€“ IV)', 'MJGEAdmin', '75', '70', '2020-11-28 01:30:49'),
(61, '111', 'B.Sc Nursing 1st Year', 'MJGEAdmin', '109', '107', '2020-11-30 23:47:56'),
(62, '112', 'B.Sc Nursing 2nd Year', 'MJGEAdmin', '109', '107', '2020-11-30 23:48:24'),
(63, '113', 'B.Sc Nursing 3rd Year', 'MJGEAdmin', '109', '107', '2020-11-30 23:48:43'),
(64, '114', 'B.Sc Nursing 4th Year', 'MJGEAdmin', '109', '107', '2020-11-30 23:49:07'),
(65, '115', 'GNM Nursing 1st Year', 'MJGEAdmin', '110', '108', '2020-11-30 23:51:05'),
(69, '119', 'GNM Nursing 2nd Year', 'MJGEAdmin', '110', '108', '2020-11-30 23:55:14'),
(70, '120', 'GNM Nursing 3rd Year', 'MJGEAdmin', '110', '108', '2020-11-30 23:55:42'),
(71, '121', 'B.Ed (Semester â€“ I)', 'MJGEAdmin', '74', '68', '2020-12-01 00:16:41'),
(72, '122', 'B.Ed (Semester â€“ II)', 'MJGEAdmin', '74', '68', '2020-12-01 00:16:58'),
(73, '123', 'B.Ed (Semester â€“ III)', 'MJGEAdmin', '74', '68', '2020-12-01 00:17:20'),
(74, '124', 'B.Ed (Semester â€“ IV)', 'MJGEAdmin', '74', '68', '2020-12-01 00:19:08'),
(75, '128', 'education', 'MJGEAdmin', '126', '67', '2020-12-26 02:42:51'),
(76, '129', 'Bachelor of Computer Application (B.C.A.)', 'MJGEAdmin', '71', '12', '2020-12-30 04:24:57'),
(77, '130', 'Principles of management', 'MJGEAdmin', '21', '13', '2020-12-31 23:31:53'),
(78, '131', 'Business Communication', 'MJGEAdmin', '21', '13', '2020-12-31 23:32:53'),
(79, '132', 'Management Information System', 'MJGEAdmin', '21', '13', '2020-12-31 23:33:53'),
(80, '134', 'PGDCA', 'MJGEAdmin', '133', '15', '2021-01-04 03:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_course_applied`
--

CREATE TABLE `student_course_applied` (
  `id` int(11) NOT NULL,
  `student_id` varchar(100) DEFAULT NULL,
  `course_id` varchar(100) DEFAULT NULL,
  `duration_type` varchar(10) DEFAULT NULL,
  `sem_year` varchar(50) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `course_type_id` varchar(100) DEFAULT NULL,
  `course_type_name` varchar(255) DEFAULT NULL,
  `subject_id` varchar(100) DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `batch_session` varchar(50) DEFAULT NULL,
  `created_by_id` varchar(100) DEFAULT NULL,
  `created_date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `qualified` varchar(10) NOT NULL DEFAULT 'No',
  `pursuing_passed` varchar(50) DEFAULT 'Pursuing',
  `roll_no` varchar(50) DEFAULT NULL,
  `college_id` varchar(100) DEFAULT NULL,
  `college_name` varchar(255) DEFAULT NULL,
  `fee_status` varchar(20) NOT NULL DEFAULT 'Not Paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_course_applied`
--

INSERT INTO `student_course_applied` (`id`, `student_id`, `course_id`, `duration_type`, `sem_year`, `course_name`, `course_type_id`, `course_type_name`, `subject_id`, `subject_name`, `batch_session`, `created_by_id`, `created_date_time`, `qualified`, `pursuing_passed`, `roll_no`, `college_id`, `college_name`, `fee_status`) VALUES
(105, 'MJGE201', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 03:41:02', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(106, 'MJGE202', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Semester', NULL, '2020-12-15 03:43:21', 'No', 'Pursuing', 'bhuppug9131@gmail.com', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(107, 'MJGE203', '76', NULL, '1', 'UG (SEMESTER)', '91', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', 'Year', NULL, '2020-12-15 03:47:31', 'No', 'Pursuing', 'BPH2024-074', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(108, 'MJGE204', '76', NULL, '1', 'UG (SEMESTER)', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 03:50:35', 'No', 'Pursuing', 'bph2024061', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(109, 'MJGE205', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 04:16:46', 'No', 'Pursuing', '45', 'MJC', 'M J College', 'Not Paid'),
(110, 'MJGE206', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 04:50:23', 'No', 'Pursuing', '94', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(111, 'MJGE207', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-15 04:51:46', 'No', 'Pursuing', '90', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(112, 'MJGE208', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 04:51:53', 'No', 'Pursuing', 'BPH2024-001', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(113, 'MJGE209', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 05:01:23', 'No', 'Pursuing', 'BPH2024-24', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(114, 'MJGE210', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Semester', NULL, '2020-12-15 05:13:27', 'No', 'Pursuing', 'BPH2024-39', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(115, 'MJGE211', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 05:35:13', 'No', 'Pursuing', '13', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(116, 'MJGE212', '12', NULL, '1', 'UG ANNUAL EXAM', '43', 'Bachelor of Computer Application (B.C.A.)', '17', 'B.C.A. Part-01', 'Year', NULL, '2020-12-15 05:36:22', 'No', 'Pursuing', '78', 'MJC', 'M J College', 'Not Paid'),
(117, 'MJGE213', '13', NULL, '1', 'UG SEMESTER EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 06:08:58', 'No', 'Pursuing', '03', 'MJC', 'M J College', 'Not Paid'),
(118, 'MJGE214', '13', NULL, '1', 'UG SEMESTER EXAM', '47', 'Finance', '21', 'BBA', 'Year', NULL, '2020-12-15 06:22:38', 'No', 'Pursuing', '16', 'MJC', 'M J College', 'Not Paid'),
(119, 'MJGE215', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 06:23:40', 'No', 'Pursuing', 'BPH2024-053', 'MJC', 'M J College', 'Not Paid'),
(120, 'MJGE216', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-15 06:39:05', 'No', 'Pursuing', '09', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(121, 'MJGE217', '76', NULL, '1', 'UG (SEMESTER)', '91', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', 'Year', NULL, '2020-12-15 07:00:22', 'No', 'Pursuing', '43', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(122, 'MJGE218', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 07:11:23', 'No', 'Pursuing', '35', 'MJC', 'M J College', 'Not Paid'),
(123, 'MJGE219', '76', NULL, '1', 'UG (SEMESTER)', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Semester', NULL, '2020-12-15 07:11:29', 'No', 'Pursuing', '66', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(124, 'MJGE220', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 07:18:01', 'No', 'Pursuing', 'BPH2024-007', 'MJC', 'M J College', 'Not Paid'),
(125, 'MJGE221', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-15 07:25:54', 'No', 'Pursuing', 'nagpure510nagpure@gmail.com', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(126, 'MJGE222', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-15 07:26:53', 'No', 'Pursuing', 'BPH2024-015', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(127, 'MJGE223', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 07:27:02', 'No', 'Pursuing', '52', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(128, 'MJGE224', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-15 07:33:17', 'No', 'Pursuing', 'BPH2024_088', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(129, 'MJGE225', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-15 08:00:53', 'No', 'Pursuing', '2201908895', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(130, 'MJGE226', '76', NULL, '1', 'UG (SEMESTER)', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 08:07:48', 'No', 'Pursuing', '28', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(131, 'MJGE227', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Semester', NULL, '2020-12-15 08:14:33', 'No', 'Pursuing', 'BPH2024-037', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(132, 'MJGE228', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-15 08:24:40', 'No', 'Pursuing', '98', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(133, 'MJGE229', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-15 08:51:40', 'No', 'Pursuing', 'BPH2024-005', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(134, 'MJGE230', '76', NULL, '1', 'UG (SEMESTER)', '91', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', 'Year', NULL, '2020-12-15 08:55:37', 'No', 'Pursuing', 'nagsanta766@gmail.com', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(135, 'MJGE231', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 08:57:34', 'No', 'Pursuing', 'BPH2024-035', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(136, 'MJGE232', '76', NULL, '1', 'UG (SEMESTER)', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 09:34:55', 'No', 'Pursuing', 'pr767066@gmail.com', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(137, 'MJGE233', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 18:55:14', 'No', 'Pursuing', 'BPH2024-080', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(138, 'MJGE234', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 19:04:38', 'No', 'Pursuing', 'BPH 2024-080', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(139, 'MJGE235', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-15 19:25:48', 'No', 'Pursuing', 'BPH_2024_006', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(140, 'MJGE236', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 21:43:12', 'No', 'Pursuing', 'BPH2024 020', 'MJC', 'M J College', 'Not Paid'),
(141, 'MJGE237', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 21:52:24', 'No', 'Pursuing', 'BPH2024-045', 'MJC', 'M J College', 'Not Paid'),
(142, 'MJGE238', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-15 21:54:03', 'No', 'Pursuing', 'BPH2024-076', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(143, 'MJGE239', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-15 23:36:07', 'No', 'Pursuing', 'BPH2024', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(144, 'MJGE240', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-15 23:56:28', 'No', 'Pursuing', 'BPH2024 091', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(145, 'MJGE241', '15', NULL, '1', 'PG SEMESTER EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Semester', NULL, '2020-12-16 00:19:36', 'No', 'Pursuing', '491335', 'MJC', 'M J College', 'Not Paid'),
(146, 'MJGE242', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-16 00:38:35', 'No', 'Pursuing', 'BPH2024-086', 'MJC', 'M J College', 'Not Paid'),
(147, 'MJGE243', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-16 00:48:55', 'No', 'Pursuing', 'BPH 2024058', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(148, 'MJGE244', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-16 00:56:08', 'No', 'Pursuing', 'DPH2024058', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(149, 'MJGE245', '12', NULL, '2', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-16 00:56:53', 'No', 'Pursuing', '210604119035', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(150, 'MJGE246', '79', NULL, '2', 'DIPLOMA (ANNUAL)', '91', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', 'Year', NULL, '2020-12-16 00:57:19', 'No', 'Pursuing', '210604119004', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(151, 'MJGE247', '79', NULL, '2', 'DIPLOMA (ANNUAL)', '91', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', 'Year', NULL, '2020-12-16 00:59:10', 'No', 'Pursuing', '210604119006', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(152, 'MJGE248', '79', NULL, '2', 'DIPLOMA (ANNUAL)', '91', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', 'Year', NULL, '2020-12-16 00:59:28', 'No', 'Pursuing', '210604119262', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(153, 'MJGE249', '76', NULL, '1', 'UG (SEMESTER)', '91', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', 'Year', NULL, '2020-12-16 00:59:43', 'No', 'Pursuing', '36', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(154, 'MJGE250', '79', NULL, '2', 'DIPLOMA (ANNUAL)', '91', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', 'Year', NULL, '2020-12-16 01:01:37', 'No', 'Pursuing', '210604119045', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(155, 'MJGE251', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-16 01:03:09', 'No', 'Pursuing', 'BPH2024-025', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(156, 'MJGE252', '79', NULL, '2', 'DIPLOMA (ANNUAL)', '91', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', 'Year', NULL, '2020-12-16 01:07:23', 'No', 'Pursuing', '210604119052', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(157, 'MJGE253', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-16 01:07:54', 'No', 'Pursuing', 'BPH2024-94', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(158, 'MJGE254', '79', NULL, '2', 'DIPLOMA (ANNUAL)', '91', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', 'Year', NULL, '2020-12-16 01:08:32', 'No', 'Pursuing', '210604119029', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(159, 'MJGE255', '79', NULL, '2', 'DIPLOMA (ANNUAL)', '92', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', 'Year', NULL, '2020-12-16 01:08:48', 'No', 'Pursuing', 'rupeshkumarpatel00@gmail.com', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(160, 'MJGE256', '79', NULL, '2', 'DIPLOMA (ANNUAL)', '91', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', 'Year', NULL, '2020-12-16 01:09:35', 'No', 'Pursuing', '210604119019', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(161, 'MJGE257', '12', NULL, '1', 'UG ANNUAL EXAM', '44', 'Bachelor of Commerce (B.Com.)', '17', 'B.C.A. Part-01', 'Year', NULL, '2020-12-16 01:14:26', 'No', 'Pursuing', '210604119031', 'MJC', 'M J College', 'Not Paid'),
(162, 'MJGE258', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-16 01:17:47', 'No', 'Pursuing', 'BPH2024-093', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(163, 'MJGE259', '79', NULL, '1', 'DIPLOMA (ANNUAL)', '91', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', 'Year', NULL, '2020-12-16 01:17:53', 'No', 'Pursuing', '2106041199031', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(164, 'MJGE260', '79', NULL, '2', 'DIPLOMA (ANNUAL)', '91', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', 'Year', NULL, '2020-12-16 01:18:56', 'No', 'Pursuing', '210604119040', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(165, 'MJGE261', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-16 01:28:31', 'No', 'Pursuing', '210604119046', 'MJC', 'M J College', 'Not Paid'),
(166, 'MJGE262', '79', NULL, '2', 'DIPLOMA (ANNUAL)', '91', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', 'Year', NULL, '2020-12-16 02:04:16', 'No', 'Pursuing', '210604119037', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(167, 'MJGE263', '79', NULL, '2', 'DIPLOMA (ANNUAL)', '91', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', 'Year', NULL, '2020-12-16 03:09:04', 'No', 'Pursuing', '210604119001', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(168, 'MJGE264', '76', NULL, '1', 'UG (SEMESTER)', '91', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', 'Year', NULL, '2020-12-16 03:10:19', 'No', 'Pursuing', '073', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(169, 'MJGE265', '76', NULL, '1', 'UG (SEMESTER)', '42', 'Bachelor of Computer Application (B.C.A.)', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Semester', NULL, '2020-12-16 03:17:43', 'No', 'Pursuing', 'BPH2024-044', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(170, 'MJGE266', '79', NULL, '2', 'DIPLOMA (ANNUAL)', '91', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', 'Year', NULL, '2020-12-16 03:33:13', 'No', 'Pursuing', '210604119054', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(171, 'MJGE267', '76', NULL, '3', 'UG (SEMESTER)', '93', 'Pharmacy', '85', 'PHARMACY (B. Pharmacy 3rd Semester)', 'Semester', NULL, '2020-12-16 03:34:54', 'No', 'Pursuing', '310604119024', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(172, 'MJGE268', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-16 04:51:40', 'No', 'Pursuing', 'khushboosahu14631@gmail.com', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(173, 'MJGE269', '76', NULL, '1', 'UG (SEMESTER)', '42', 'Bachelor of Computer Application (B.C.A.)', '88', 'PHARMACY (B. Pharmacy 6th Semester)', 'Year', NULL, '2020-12-16 05:02:17', 'No', 'Pursuing', 'BPH2024092', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(174, 'MJGE270', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Semester', NULL, '2020-12-16 05:08:44', 'No', 'Pursuing', 'BPH2024-010', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(175, 'MJGE271', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-16 05:17:51', 'No', 'Pursuing', 'BPH2024-030', 'MJC', 'M J College', 'Not Paid'),
(176, 'MJGE272', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-16 05:23:25', 'No', 'Pursuing', 'BPH2024-012', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(177, 'MJGE273', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Semester', NULL, '2020-12-16 05:24:53', 'No', 'Pursuing', 'BPH2024-021', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(178, 'MJGE274', '12', NULL, '1', 'UG ANNUAL EXAM', '46', 'Bachelor of Commerce (B.Com.)', '20', 'B.Com. Part-03', 'Year', NULL, '2020-12-16 05:26:17', 'No', 'Pursuing', 'pravinsahu232@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(179, 'MJGE275', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-16 05:28:50', 'No', 'Pursuing', '029', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(180, 'MJGE276', '13', NULL, '1', 'UG SEMESTER EXAM', '57', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', 'Semester', NULL, '2020-12-16 05:57:55', 'No', 'Pursuing', 'BPH 2024_003', 'MJC', 'M J College', 'Not Paid'),
(181, 'MJGE277', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-16 06:05:30', 'No', 'Pursuing', 'BPH2024-099', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(182, 'MJGE278', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-16 06:09:57', 'No', 'Pursuing', 'BPH2024-032', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(183, 'MJGE279', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-16 06:11:06', 'No', 'Pursuing', ' BPH2024 - 038', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(184, 'MJGE280', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-16 06:34:36', 'No', 'Pursuing', 'BPH-2024-006', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(185, 'MJGE281', '12', NULL, '3', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Semester', NULL, '2020-12-16 06:46:20', 'No', 'Pursuing', '210604118010', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(186, 'MJGE282', '12', NULL, '2', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-16 06:48:07', 'No', 'Pursuing', '21060411 9028', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(187, 'MJGE283', '76', NULL, '1', 'UG (SEMESTER)', '91', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', 'Year', NULL, '2020-12-16 06:48:44', 'No', 'Pursuing', '34', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(188, 'MJGE284', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Semester', NULL, '2020-12-16 06:54:05', 'No', 'Pursuing', 'BPH2024-096', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(189, 'MJGE285', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-16 06:57:20', 'No', 'Pursuing', 'BPH2024032', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(190, 'MJGE286', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-16 07:13:58', 'No', 'Pursuing', 'BPH2024-063', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(191, 'MJGE287', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-16 07:21:07', 'No', 'Pursuing', 'BPH2024_011', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(192, 'MJGE288', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Semester', NULL, '2020-12-16 07:59:46', 'No', 'Pursuing', 'bph2024-083', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(193, 'MJGE289', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-16 08:42:21', 'No', 'Pursuing', 'yashsahu1322.com@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(194, 'MJGE290', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Semester', NULL, '2020-12-16 09:00:12', 'No', 'Pursuing', 'BPH2024-079', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(195, 'MJGE291', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-16 09:09:22', 'No', 'Pursuing', 'bph2024-023', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(196, 'MJGE292', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-16 10:35:41', 'No', 'Pursuing', 'BPH2024-071', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(197, 'MJGE293', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Semester', NULL, '2020-12-16 19:58:14', 'No', 'Pursuing', 'BPH2024-087', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(198, 'MJGE294', '76', NULL, '1', 'UG (SEMESTER)', '91', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', 'Year', NULL, '2020-12-16 20:43:55', 'No', 'Pursuing', 'BPH2024-085', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(199, 'MJGE295', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Semester', NULL, '2020-12-16 21:22:27', 'No', 'Pursuing', 'BPH2004-048', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(200, 'MJGE296', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-16 22:17:47', 'No', 'Pursuing', 'BPH2024-022', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(201, 'MJGE297', '12', NULL, '2', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '19', 'B.Com. Part-02', 'Semester', NULL, '2020-12-16 22:30:48', 'No', 'Pursuing', '2001vaishnavisahu@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(202, 'MJGE298', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-16 22:50:13', 'No', 'Pursuing', 'BPH2024-065', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(203, 'MJGE299', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '17', 'B.C.A. Part-01', 'Semester', NULL, '2020-12-16 22:50:42', 'No', 'Pursuing', 'BPH2014-045', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(205, 'MJGE301', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-17 00:09:13', 'No', 'Pursuing', 'surekhakshatriy02@gmail.com', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(206, 'MJGE302', '70', NULL, '1', 'PG SEMESTER EXAM', '103', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', 'Semester', NULL, '2020-12-17 00:13:47', 'No', 'Pursuing', 'sapanasingh101994@gmail.com', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(207, 'MJGE303', '79', NULL, '2', 'DIPLOMA (ANNUAL)', '91', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', 'Year', NULL, '2020-12-17 00:34:01', 'No', 'Pursuing', '210604119011', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(208, 'MJGE304', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-17 01:20:16', 'No', 'Pursuing', '19340129012', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(209, 'MJGE305', '15', NULL, '3', 'PG SEMESTER EXAM', '26', 'Computer Science (C.S.)', '24', 'M.Sc.', 'Semester', NULL, '2020-12-17 01:24:35', 'No', 'Pursuing', '19340129001', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(210, 'MJGE306', '79', NULL, '2', 'DIPLOMA (ANNUAL)', '91', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', 'Year', NULL, '2020-12-17 03:01:57', 'No', 'Pursuing', '210604119002', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(211, 'MJGE307', '13', NULL, '3', 'UG SEMESTER EXAM', '47', 'Finance', '23', 'B. Ed.', 'Semester', NULL, '2020-12-17 03:14:27', 'No', 'Pursuing', '19340029107', 'MJC', 'M J College', 'Not Paid'),
(212, 'MJGE308', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-17 03:17:36', 'No', 'Pursuing', '93390040371', 'MJC', 'M J College', 'Not Paid'),
(213, 'MJGE309', '68', NULL, '3', 'UG SEMESTER EXAM', '101', 'D.El.Ed - YEAR I', '73', 'D.El.Ed', 'Semester', NULL, '2020-12-17 04:08:54', 'No', 'Pursuing', '19340029181', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(214, 'MJGE310', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-17 04:17:32', 'No', 'Pursuing', 'BPH2024-41', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(215, 'MJGE311', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-17 04:44:35', 'No', 'Pursuing', '19340029059', 'MJC', 'M J College', 'Not Paid'),
(216, 'MJGE312', '70', NULL, '3', 'PG SEMESTER EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Semester', NULL, '2020-12-17 05:54:25', 'No', 'Pursuing', '19340129014', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(217, 'MJGE313', '76', NULL, '1', 'UG (SEMESTER)', '91', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', 'Year', NULL, '2020-12-17 05:55:40', 'No', 'Pursuing', 'BPH2024-060', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(218, 'MJGE314', '103', '1970-01-01', '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Semester', 'MJGEAdmin', '2020-12-17 06:23:16', 'No', 'Pursuing', '256', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(219, 'MJGE315', '68', NULL, '3', 'UG SEMESTER EXAM', '123', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', 'Semester', NULL, '2020-12-17 07:01:21', 'No', 'Pursuing', '19340029115 ', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(220, 'MJGE316', '13', NULL, '3', 'UG SEMESTER EXAM', '47', 'Finance', '23', 'B. Ed.', 'Semester', NULL, '2020-12-17 07:12:06', 'No', 'Pursuing', '19340029103', 'MJC', 'M J College', 'Not Paid'),
(221, 'MJGE317', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-17 07:21:15', 'No', 'Pursuing', 'BPH2024-049', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(222, 'MJGE318', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-17 08:18:58', 'No', 'Pursuing', 'rashisingh3849@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(223, 'MJGE319', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-17 09:10:51', 'No', 'Pursuing', 'BPH2024-082 ', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(224, 'MJGE320', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-17 10:52:46', 'No', 'Pursuing', '19340029074', 'MJC', 'M J College', 'Not Paid'),
(225, 'MJGE321', '103', '1970-01-01', '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2020-12-17 21:01:32', 'No', 'Pursuing', '031120', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(226, 'MJGE322', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', 'Year', NULL, '2020-12-17 21:09:32', 'No', 'Pursuing', '+1917745964738', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(227, 'MJGE323', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-17 21:49:24', 'No', 'Pursuing', 'BPH2024-016', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(228, 'MJGE324', '12', NULL, '3', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '20', 'B.Com. Part-03', 'Year', NULL, '2020-12-17 22:30:21', 'No', 'Pursuing', 'HU/340/18004033', 'MJC', 'M J College', 'Not Paid'),
(229, 'MJGE325', '79', NULL, '2', 'DIPLOMA (ANNUAL)', '91', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', 'Year', NULL, '2020-12-18 05:01:22', 'No', 'Pursuing', '210604119060', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(230, 'MJGE326', '79', NULL, '2', 'DIPLOMA (ANNUAL)', '91', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', 'Year', NULL, '2020-12-18 05:51:32', 'No', 'Pursuing', '210604119024', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(231, 'MJGE327', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-18 05:59:34', 'No', 'Pursuing', 'BPH2024-059', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(232, 'MJGE328', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-18 18:27:26', 'No', 'Pursuing', 'BPH2024 20', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(233, 'MJGE329', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-18 20:35:45', 'No', 'Pursuing', 'BHP2024-058', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(234, 'MJGE330', '76', NULL, '1', 'UG (SEMESTER)', '47', 'Finance', '88', 'PHARMACY (B. Pharmacy 6th Semester)', 'Year', NULL, '2020-12-18 23:16:19', 'No', 'Pursuing', 'BPH2024-008', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(235, 'MJGE331', '13', NULL, '2', 'UG SEMESTER EXAM', '57', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', 'Year', NULL, '2020-12-19 00:37:39', 'No', 'Pursuing', '19340029165', 'MJC', 'M J College', 'Not Paid'),
(236, 'MJGE332', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-19 01:44:33', 'No', 'Pursuing', '50', 'MJC', 'M J College', 'Not Paid'),
(237, 'MJGE333', '15', NULL, '3', 'PG SEMESTER EXAM', '26', 'Computer Science (C.S.)', '24', 'M.Sc.', 'Semester', NULL, '2020-12-19 03:37:51', 'No', 'Pursuing', '25', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(238, 'MJGE336', '13', NULL, '3', 'UG SEMESTER EXAM', '57', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', 'Semester', NULL, '2020-12-19 12:38:01', 'No', 'Pursuing', '19340029066', 'MJC', 'M J College', 'Not Paid'),
(239, 'MJGE337', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Year', NULL, '2020-12-19 21:51:44', 'No', 'Pursuing', 'BPH20240018', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(240, 'MJGE338', '76', NULL, '1', 'UG (SEMESTER)', '91', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', 'Year', NULL, '2020-12-20 04:58:20', 'No', 'Pursuing', 'nneetugupta283@gmail.com', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(241, 'MJGE339', '70', NULL, '1', 'PG SEMESTER EXAM', '103', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', 'Year', NULL, '2020-12-20 07:57:08', 'No', 'Pursuing', '12082020', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(242, 'MJGE342', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Semester', NULL, '2020-12-20 22:09:32', 'No', 'Pursuing', '63', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(243, 'MJGE343', '15', NULL, '3', 'PG SEMESTER EXAM', '26', 'Computer Science (C.S.)', '24', 'M.Sc.', 'Semester', NULL, '2020-12-21 06:22:29', 'No', 'Pursuing', 'ritu.kose@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(244, 'MJGE344', '15', NULL, '1', 'PG SEMESTER EXAM', '28', 'Taxation', '25', 'M.Com.', 'Year', NULL, '2020-12-21 20:30:32', 'No', 'Pursuing', '328542', 'MJC', 'M J College', 'Not Paid'),
(245, 'MJGE345', '76', NULL, '1', 'UG (SEMESTER)', '93', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'Semester', NULL, '2020-12-22 01:07:49', 'No', 'Pursuing', 'BPH2020-45', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(246, 'MJGE346', '12', NULL, '1', 'UG ANNUAL EXAM', '42', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', 'Year', NULL, '2020-12-22 01:11:37', 'No', 'Pursuing', 'BPH2024-072', 'MJC', 'M J College', 'Not Paid'),
(256, 'MJGE356', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-22 19:32:08', 'No', 'Pursuing', 'nneetugupta283@gmail.com', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(257, 'MJGE357', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-22 19:34:16', 'No', 'Pursuing', 'nneetugupta283@gmail.com', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(258, 'MJGE358', '47', NULL, '3', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-23 00:30:48', 'No', 'Pursuing', '19340029130', 'MJC', 'M J College', 'Not Paid'),
(259, 'MJGE359', '47', NULL, '3', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-23 10:09:30', 'No', 'Pursuing', '19340029144', 'MJC', 'M J College', 'Not Paid'),
(260, 'MJGE360', '47', NULL, '3', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-23 10:10:48', 'No', 'Pursuing', '19340029144', 'MJC', 'M J College', 'Not Paid'),
(261, 'MJGE361', '121', '1970-01-01', '3', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', 'MJGEAdmin', '2020-12-23 10:11:40', 'No', 'Pursuing', '19340029144', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(262, 'MJGE362', '47', NULL, '3', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-23 10:12:04', 'No', 'Pursuing', '19340029144', 'MJC', 'M J College', 'Not Paid'),
(263, 'MJGE363', '47', NULL, '3', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-23 10:12:16', 'No', 'Pursuing', '19340029144', 'MJC', 'M J College', 'Not Paid'),
(264, 'MJGE364', '', NULL, '', '', '', '', '', '', '', NULL, '2020-12-23 19:00:06', 'No', 'Pursuing', '', '', '', 'Not Paid'),
(265, 'MJGE365', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-24 03:09:34', 'No', 'Pursuing', 'ððð‡2024-087', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(266, 'MJGE366', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-24 03:09:46', 'No', 'Pursuing', 'ððð‡2024-087', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(267, 'MJGE367', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-24 03:09:56', 'No', 'Pursuing', 'ððð‡2024-087', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(268, 'MJGE368', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-24 03:10:00', 'No', 'Pursuing', 'ððð‡2024-087', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(269, 'MJGE369', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-24 10:07:11', 'No', 'Pursuing', '19340029014', 'MJC', 'M J College', 'Not Paid'),
(270, 'MJGE370', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-24 10:08:12', 'No', 'Pursuing', '19340029014', 'MJC', 'M J College', 'Not Paid'),
(271, 'MJGE371', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-24 10:08:25', 'No', 'Pursuing', '19340029014', 'MJC', 'M J College', 'Not Paid'),
(272, 'MJGE372', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-24 10:08:41', 'No', 'Pursuing', '19340029014', 'MJC', 'M J College', 'Not Paid'),
(273, 'MJGE373', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-24 10:24:25', 'No', 'Pursuing', '19340029155', 'MJC', 'M J College', 'Not Paid'),
(274, 'MJGE374', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-24 10:25:20', 'No', 'Pursuing', '19340029155', 'MJC', 'M J College', 'Not Paid'),
(275, 'MJGE375', '102', NULL, '2', 'D.El.Ed - YEAR II', '73', 'D.El.Ed', '67', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 10:46:45', 'No', 'Pursuing', '3', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(276, 'MJGE376', '93', NULL, '2', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-24 10:57:22', 'No', 'Pursuing', '7201400254', 'MJC', 'M J College', 'Not Paid'),
(277, 'MJGE377', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 18:32:03', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(278, 'MJGE378', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Semester', NULL, '2020-12-24 18:34:17', 'No', 'Pursuing', '7201400250', 'MJC', 'M J College', 'Not Paid'),
(279, 'MJGE379', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 18:35:32', 'No', 'Pursuing', '7201400263', 'MJC', 'M J College', 'Not Paid'),
(280, 'MJGE380', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-24 19:35:52', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(281, 'MJGE381', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Semester', NULL, '2020-12-24 19:43:37', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(282, 'MJGE382', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Semester', NULL, '2020-12-24 19:44:17', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(283, 'MJGE383', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Semester', NULL, '2020-12-24 19:45:36', 'No', 'Pursuing', '54', 'MJC', 'M J College', 'Not Paid'),
(284, 'MJGE384', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Semester', NULL, '2020-12-24 19:46:08', 'No', 'Pursuing', '54', 'MJC', 'M J College', 'Not Paid'),
(285, 'MJGE385', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 19:56:39', 'No', 'Pursuing', '20', 'MJC', 'M J College', 'Not Paid'),
(286, 'MJGE386', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 19:57:23', 'No', 'Pursuing', '20', 'MJC', 'M J College', 'Not Paid'),
(287, 'MJGE387', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 19:58:37', 'No', 'Pursuing', '20', 'MJC', 'M J College', 'Not Paid'),
(288, 'MJGE388', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 19:59:40', 'No', 'Pursuing', '20', 'MJC', 'M J College', 'Not Paid'),
(289, 'MJGE389', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 20:09:00', 'No', 'Pursuing', '020', 'MJC', 'M J College', 'Not Paid'),
(290, 'MJGE390', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 20:10:11', 'No', 'Pursuing', '020', 'MJC', 'M J College', 'Not Paid'),
(291, 'MJGE391', '101', NULL, '1', 'D.El.Ed - YEAR I', '73', 'D.El.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-24 20:43:54', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(292, 'MJGE392', '101', NULL, '1', 'D.El.Ed - YEAR I', '73', 'D.El.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-24 20:44:26', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(293, 'MJGE393', '101', NULL, '1', 'D.El.Ed - YEAR I', '73', 'D.El.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-24 20:45:02', 'No', 'Pursuing', 'mjge392', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(294, 'MJGE394', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 21:09:35', 'No', 'Pursuing', '7201400245', 'MJC', 'M J College', 'Not Paid'),
(295, 'MJGE395', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 21:10:10', 'No', 'Pursuing', '7201400245', 'MJC', 'M J College', 'Not Paid'),
(296, 'MJGE396', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 21:26:45', 'No', 'Pursuing', '+1916204475116', 'MJC', 'M J College', 'Not Paid'),
(297, 'MJGE397', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 21:27:34', 'No', 'Pursuing', '+1916204475116', 'MJC', 'M J College', 'Not Paid'),
(298, 'MJGE398', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 21:28:02', 'No', 'Pursuing', '+1916204475116', 'MJC', 'M J College', 'Not Paid'),
(299, 'MJGE399', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 21:28:30', 'No', 'Pursuing', '+1916204475116', 'MJC', 'M J College', 'Not Paid'),
(300, 'MJGE400', '102', NULL, '1', 'D.El.Ed - YEAR II', '73', 'D.El.Ed', '67', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 21:41:37', 'No', 'Pursuing', '7201400238', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(301, 'MJGE401', '102', NULL, '1', 'D.El.Ed - YEAR II', '73', 'D.El.Ed', '67', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 21:42:01', 'No', 'Pursuing', '7201400238', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(302, 'MJGE402', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '14', 'PG ANNUAL EXAM', 'Year', NULL, '2020-12-24 21:48:08', 'No', 'Pursuing', '1721400262', 'MJC', 'M J College', 'Not Paid'),
(303, 'MJGE403', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '14', 'PG ANNUAL EXAM', 'Year', NULL, '2020-12-24 21:48:41', 'No', 'Pursuing', '1721400262', 'MJC', 'M J College', 'Not Paid'),
(304, 'MJGE404', '47', NULL, '2', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-24 21:53:36', 'No', 'Pursuing', 'faiz.malik5@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(305, 'MJGE405', '47', NULL, '2', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-24 21:54:20', 'No', 'Pursuing', 'faiz.malik5@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(306, 'MJGE406', '', NULL, '', '', '', '', '', '', '', NULL, '2020-12-24 22:18:42', 'No', 'Pursuing', '', '', '', 'Not Paid'),
(307, 'MJGE407', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-24 23:45:27', 'No', 'Pursuing', '19340029106', 'MJC', 'M J College', 'Not Paid'),
(308, 'MJGE408', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-25 00:04:53', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(309, 'MJGE409', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-25 00:05:21', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(310, 'MJGE410', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-25 00:06:29', 'No', 'Pursuing', '14', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(311, 'MJGE411', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-25 00:06:47', 'No', 'Pursuing', '14', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(312, 'MJGE412', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-25 00:07:34', 'No', 'Pursuing', '14', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(313, 'MJGE413', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 00:12:32', 'No', 'Pursuing', '19340029106', 'MJC', 'M J College', 'Not Paid'),
(314, 'MJGE414', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-25 00:22:16', 'No', 'Pursuing', '19340029013', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(315, 'MJGE415', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-25 00:22:19', 'No', 'Pursuing', '19340029013', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(316, 'MJGE416', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 00:56:55', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(317, 'MJGE417', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 00:57:21', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(318, 'MJGE418', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-25 01:29:10', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(319, 'MJGE419', '28', NULL, '1', 'Taxation', '25', 'M.Com.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 02:38:54', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(320, 'MJGE420', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 03:07:13', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(321, 'MJGE421', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 03:07:16', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(322, 'MJGE422', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 03:07:22', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(323, 'MJGE423', '', NULL, '', '', '', '', '', '', '', NULL, '2020-12-25 05:17:59', 'No', 'Pursuing', '', '', '', 'Not Paid'),
(324, 'MJGE424', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-25 06:50:00', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(325, 'MJGE425', '102', NULL, '2', 'D.El.Ed - YEAR II', '73', 'D.El.Ed', '67', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-25 10:34:41', 'No', 'Pursuing', '9827430561', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(326, 'MJGE426', '102', NULL, '2', 'D.El.Ed - YEAR II', '73', 'D.El.Ed', '67', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-25 10:36:13', 'No', 'Pursuing', '9827430561', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(327, 'MJGE427', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-25 18:26:41', 'No', 'Pursuing', '19340029030', 'MJC', 'M J College', 'Not Paid'),
(328, 'MJGE428', '103', NULL, '3', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 20:14:57', 'No', 'Pursuing', '19340029177', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(329, 'MJGE429', '103', NULL, '3', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 20:15:12', 'No', 'Pursuing', '19340029177', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(330, 'MJGE430', '103', NULL, '3', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 20:15:16', 'No', 'Pursuing', '19340029177', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(331, 'MJGE431', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 21:39:35', 'No', 'Pursuing', '19340010059', 'MJC', 'M J College', 'Not Paid'),
(332, 'MJGE432', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 22:13:49', 'No', 'Pursuing', '19340010059', 'MJC', 'M J College', 'Not Paid'),
(333, 'MJGE433', '28', NULL, '1', 'Taxation', '24', 'M.Sc.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 22:19:04', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid');
INSERT INTO `student_course_applied` (`id`, `student_id`, `course_id`, `duration_type`, `sem_year`, `course_name`, `course_type_id`, `course_type_name`, `subject_id`, `subject_name`, `batch_session`, `created_by_id`, `created_date_time`, `qualified`, `pursuing_passed`, `roll_no`, `college_id`, `college_name`, `fee_status`) VALUES
(334, 'MJGE434', '28', NULL, '1', 'Taxation', '24', 'M.Sc.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 22:19:07', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(335, 'MJGE435', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 22:55:09', 'No', 'Pursuing', '19340010059', 'MJC', 'M J College', 'Not Paid'),
(336, 'MJGE436', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-25 23:11:45', 'No', 'Pursuing', '7201400244', 'MJC', 'M J College', 'Not Paid'),
(337, 'MJGE437', '47', NULL, '3', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 23:33:37', 'No', 'Pursuing', '19340029168', 'MJC', 'M J College', 'Not Paid'),
(338, 'MJGE438', '47', NULL, '3', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-25 23:34:42', 'No', 'Pursuing', '19340029168', 'MJC', 'M J College', 'Not Paid'),
(339, 'MJGE439', '47', NULL, '1', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-26 00:35:07', 'No', 'Pursuing', '8888', 'MJC', 'M J College', 'Not Paid'),
(340, 'MJGE440', '47', NULL, '1', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-26 00:35:15', 'No', 'Pursuing', '8888', 'MJC', 'M J College', 'Not Paid'),
(341, 'MJGE441', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 00:44:41', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(342, 'MJGE442', '123', NULL, '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 01:06:41', 'No', 'Pursuing', '19340029105', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(343, 'MJGE443', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '17', 'B.C.A. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-26 01:44:07', 'No', 'Pursuing', ' ', 'MJC', 'M J College', 'Not Paid'),
(344, 'MJGE444', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 01:49:54', 'No', 'Pursuing', '1', 'MJC', 'M J College', 'Not Paid'),
(345, 'MJGE445', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-26 01:53:26', 'No', 'Pursuing', '123456', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(346, 'MJGE446', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-26 01:53:53', 'No', 'Pursuing', '123456', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(347, 'MJGE447', '103', '2020-01-12', '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2020-12-26 01:58:44', 'No', 'Pursuing', '2020', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(348, 'MJGE448', '26', NULL, '1', 'Computer Science (C.S.)', '24', 'M.Sc.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 01:59:22', 'No', 'Pursuing', '2020', 'MJC', 'M J College', 'Not Paid'),
(349, 'MJGE449', '26', NULL, '1', 'Computer Science (C.S.)', '24', 'M.Sc.', '15', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-26 02:02:02', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(350, 'MJGE450', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-26 02:04:04', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(351, 'MJGE451', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-26 02:04:12', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(352, 'MJGE452', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-26 02:04:22', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(353, 'MJGE453', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-26 02:04:27', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(354, 'MJGE454', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 02:06:19', 'No', 'Pursuing', '1234', 'MJC', 'M J College', 'Not Paid'),
(355, 'MJGE455', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 02:07:27', 'No', 'Pursuing', '1234', 'MJC', 'M J College', 'Not Paid'),
(356, 'MJGE456', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 02:08:34', 'No', 'Pursuing', '1234', 'MJC', 'M J College', 'Not Paid'),
(357, 'MJGE441', '103', '2020-12-12', '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2020-12-26 02:16:02', 'No', 'Pursuing', NULL, 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(358, 'MJGE456', '103', '2020-11-12', '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2020-12-26 02:20:16', 'No', 'Pursuing', NULL, 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(359, 'MJGE444', '103', '2020-01-12', '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2020-12-26 02:25:50', 'No', 'Pursuing', NULL, 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(360, 'MJGE447', '103', '2020-01-12', '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2020-12-26 02:35:27', 'No', 'Pursuing', NULL, 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(361, 'MJGE453', '103', '2020-02-12', '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2020-12-26 02:41:26', 'No', 'Pursuing', NULL, 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(362, 'MJGE443', 'undefined', '2020-01-12', '1', 'undefined', '127', 'M Ed', '70', 'PG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2020-12-26 02:43:42', 'No', 'Pursuing', NULL, 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(363, 'MJGE457', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '14', 'PG ANNUAL EXAM', 'Year', NULL, '2020-12-26 02:52:53', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(364, 'MJGE458', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 02:58:55', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(365, 'MJGE459', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 02:59:10', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(366, 'MJGE457', '103', '2020-01-12', '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2020-12-26 03:06:32', 'No', 'Pursuing', NULL, 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(367, 'MJGE460', '26', NULL, '1', 'Computer Science (C.S.)', '24', 'M.Sc.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 03:12:16', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(368, 'MJGE461', '101', '2020-01-11', '1', 'D.El.Ed - YEAR I', '73', 'D.El.Ed', '67', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2020-12-26 03:29:28', 'No', 'Pursuing', '123', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(369, 'MJGE462', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '20', 'B.Com. Part-03', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-26 03:29:56', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(370, 'MJGE463', '103', '1970-01-01', '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2020-12-26 03:56:28', 'No', 'Pursuing', '1234', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(371, 'MJGE464', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 04:00:15', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(372, 'MJGE465', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-26 04:03:51', 'No', 'Pursuing', '12345678', 'MJC', 'M J College', 'Not Paid'),
(373, 'MJGE466', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-26 04:04:46', 'No', 'Pursuing', '12345678', 'MJC', 'M J College', 'Not Paid'),
(374, 'MJGE467', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 04:07:31', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(375, 'MJGE468', '26', NULL, '1', 'Computer Science (C.S.)', '24', 'M.Sc.', '14', 'PG ANNUAL EXAM', 'Year', NULL, '2020-12-26 04:26:07', 'No', 'Pursuing', '+448839670704', 'MJC', 'M J College', 'Not Paid'),
(376, 'MJGE469', '103', NULL, '3', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 05:15:43', 'No', 'Pursuing', '19340029094', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(377, 'MJGE470', '103', NULL, '3', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 05:15:53', 'No', 'Pursuing', '19340029094', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(378, 'MJGE471', '121', '1970-01-01', '3', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', 'MJGEAdmin', '2020-12-26 05:16:01', 'No', 'Pursuing', '19340029094', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(379, 'MJGE472', '103', NULL, '3', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 05:18:49', 'No', 'Pursuing', '19340029094', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(380, 'MJGE473', '103', NULL, '3', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 05:18:56', 'No', 'Pursuing', '19340029094', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(381, 'MJGE474', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-26 06:18:55', 'No', 'Pursuing', '19340029182', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(382, 'MJGE475', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-26 06:19:52', 'No', 'Pursuing', '19340029182', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(383, 'MJGE476', '26', NULL, '1', 'Computer Science (C.S.)', '24', 'M.Sc.', '15', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-26 07:34:50', 'No', 'Pursuing', '19340129018', 'MJC', 'M J College', 'Not Paid'),
(384, 'MJGE477', '105', NULL, '3', 'M.Ed (Semester â€“ III)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 09:21:10', 'No', 'Pursuing', '19340129028', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(385, 'MJGE478', '105', NULL, '3', 'M.Ed (Semester â€“ III)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 09:21:28', 'No', 'Pursuing', '19340129028', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(386, 'MJGE479', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-26 09:54:44', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(387, 'MJGE480', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-26 09:55:15', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(388, 'MJGE481', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 10:49:50', 'No', 'Pursuing', '19340029015', 'MJC', 'M J College', 'Not Paid'),
(389, 'MJGE482', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 10:50:24', 'No', 'Pursuing', '19340029015', 'MJC', 'M J College', 'Not Paid'),
(390, 'MJGE483', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-26 11:03:28', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(391, 'MJGE484', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-26 11:03:53', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(392, 'MJGE485', '128', NULL, '1', 'education', '126', 'M Ed', '70', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 11:11:06', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(393, 'MJGE486', '', NULL, '', '', '', '', '', '', '', NULL, '2020-12-26 13:15:50', 'No', 'Pursuing', '', '', '', 'Not Paid'),
(394, 'MJGE487', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '125', 'PG semester', 'Year', NULL, '2020-12-26 20:51:49', 'No', 'Pursuing', '908770', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(395, 'MJGE488', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '125', 'PG semester', 'Year', NULL, '2020-12-26 20:54:12', 'No', 'Pursuing', '908770', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(396, 'MJGE489', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-26 21:40:07', 'No', 'Pursuing', '908770', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(397, 'MJGE490', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 21:43:21', 'No', 'Pursuing', '908770', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(398, 'MJGE491', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-26 21:46:08', 'No', 'Pursuing', '908770', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(399, 'MJGE492', '121', '1970-01-01', '1', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2020-12-26 21:50:59', 'No', 'Pursuing', '19340029032', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(400, 'MJGE493', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-26 21:52:38', 'No', 'Pursuing', '19340029032', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(401, 'MJGE494', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 22:06:29', 'No', 'Pursuing', '34018029135', 'MJC', 'M J College', 'Not Paid'),
(402, 'MJGE495', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 22:08:10', 'No', 'Pursuing', '34018029135', 'MJC', 'M J College', 'Not Paid'),
(403, 'MJGE496', '47', NULL, '3', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-26 22:50:44', 'No', 'Pursuing', '9271', 'MJC', 'M J College', 'Not Paid'),
(404, 'MJGE497', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-26 23:31:10', 'No', 'Pursuing', '19340029182', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(405, 'MJGE498', '123', NULL, '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-27 01:16:56', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(406, 'MJGE499', '123', NULL, '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-27 01:17:17', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(407, 'MJGE500', '103', NULL, '3', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-27 02:03:50', 'No', 'Pursuing', '19340029021', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(408, 'MJGE501', '103', NULL, '3', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-27 02:04:24', 'No', 'Pursuing', '19340029021', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(409, 'MJGE502', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-27 02:09:29', 'No', 'Pursuing', '19340029021', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(410, 'MJGE503', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-27 02:09:44', 'No', 'Pursuing', '19340029021', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(411, 'MJGE504', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-27 02:10:10', 'No', 'Pursuing', '19340029021', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(412, 'MJGE505', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '14', 'PG ANNUAL EXAM', 'Year', NULL, '2020-12-27 02:16:20', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(413, 'MJGE506', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '14', 'PG ANNUAL EXAM', 'Year', NULL, '2020-12-27 02:17:09', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(414, 'MJGE507', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '14', 'PG ANNUAL EXAM', 'Year', NULL, '2020-12-27 02:18:47', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(415, 'MJGE508', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '14', 'PG ANNUAL EXAM', 'Year', NULL, '2020-12-27 02:19:06', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(416, 'MJGE509', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-27 02:31:51', 'No', 'Pursuing', '30', 'MJC', 'M J College', 'Not Paid'),
(417, 'MJGE510', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-27 02:31:54', 'No', 'Pursuing', '30', 'MJC', 'M J College', 'Not Paid'),
(418, 'MJGE511', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-27 03:14:16', 'No', 'Pursuing', '19340029102', 'MJC', 'M J College', 'Not Paid'),
(419, 'MJGE512', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-27 03:14:56', 'No', 'Pursuing', '19340029102', 'MJC', 'M J College', 'Not Paid'),
(420, 'MJGE513', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-27 03:15:13', 'No', 'Pursuing', '19340029102', 'MJC', 'M J College', 'Not Paid'),
(421, 'MJGE514', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-27 05:08:30', 'No', 'Pursuing', '908770', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(422, 'MJGE515', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-27 05:10:02', 'No', 'Pursuing', '908770', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(423, 'MJGE516', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-27 05:10:05', 'No', 'Pursuing', '908770', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(424, 'MJGE517', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-27 05:10:12', 'No', 'Pursuing', '908770', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(425, 'MJGE518', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-27 05:14:21', 'No', 'Pursuing', '908770', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(426, 'MJGE519', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-27 05:14:29', 'No', 'Pursuing', '908770', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(427, 'MJGE520', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-27 05:49:45', 'No', 'Pursuing', '97535', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(428, 'MJGE521', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-27 08:00:00', 'No', 'Pursuing', '19340029175', 'MJC', 'M J College', 'Not Paid'),
(429, 'MJGE522', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-27 08:17:10', 'No', 'Pursuing', '19340029113', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(430, 'MJGE523', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-27 08:17:21', 'No', 'Pursuing', '19340029113', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(431, 'MJGE524', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-27 08:17:32', 'No', 'Pursuing', '19340029113', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(432, 'MJGE525', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-27 08:18:01', 'No', 'Pursuing', '19340029113', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(433, 'MJGE526', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-27 08:39:50', 'No', 'Pursuing', '19340029080', 'MJC', 'M J College', 'Not Paid'),
(434, 'MJGE527', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-27 08:43:01', 'No', 'Pursuing', ' 19340029175', 'MJC', 'M J College', 'Not Paid'),
(435, 'MJGE528', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-27 09:03:04', 'No', 'Pursuing', '19340029073', 'MJC', 'M J College', 'Not Paid'),
(436, 'MJGE529', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-27 19:35:32', 'No', 'Pursuing', '7201400246', 'MJC', 'M J College', 'Not Paid'),
(437, 'MJGE530', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-27 20:07:51', 'No', 'Pursuing', '19340029184', 'MJC', 'M J College', 'Not Paid'),
(438, 'MJGE531', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-27 20:08:49', 'No', 'Pursuing', '19340029184', 'MJC', 'M J College', 'Not Paid'),
(439, 'MJGE532', '', NULL, '', '', '', '', '', '', '', NULL, '2020-12-27 21:08:07', 'No', 'Pursuing', '', '', '', 'Not Paid'),
(440, 'MJGE533', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-27 22:04:58', 'No', 'Pursuing', 'yashsahu1322.com@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(441, 'MJGE534', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-27 22:05:39', 'No', 'Pursuing', 'yashsahu1322.com@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(442, 'MJGE535', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-27 22:13:12', 'No', 'Pursuing', '19340029147', 'MJC', 'M J College', 'Not Paid'),
(443, 'MJGE536', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-27 22:14:21', 'No', 'Pursuing', '+1917745964738', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(444, 'MJGE537', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-27 22:15:03', 'No', 'Pursuing', '+1917745964738', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(445, 'MJGE538', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 00:03:42', 'No', 'Pursuing', '19340029134', 'MJC', 'M J College', 'Not Paid'),
(446, 'MJGE539', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 00:03:45', 'No', 'Pursuing', '19340029134', 'MJC', 'M J College', 'Not Paid'),
(447, 'MJGE540', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 00:35:24', 'No', 'Pursuing', '1934001059', 'MJC', 'M J College', 'Not Paid'),
(448, 'MJGE541', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 00:35:35', 'No', 'Pursuing', '1934001059', 'MJC', 'M J College', 'Not Paid'),
(449, 'MJGE542', '47', NULL, '1', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-28 00:39:55', 'No', 'Pursuing', '19340029029', 'MJC', 'M J College', 'Not Paid'),
(450, 'MJGE543', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 00:46:54', 'No', 'Pursuing', '19340029029', 'MJC', 'M J College', 'Not Paid'),
(451, 'MJGE544', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 00:47:16', 'No', 'Pursuing', '19340029029', 'MJC', 'M J College', 'Not Paid'),
(452, 'MJGE545', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 00:49:32', 'No', 'Pursuing', '19340029029', 'MJC', 'M J College', 'Not Paid'),
(453, 'MJGE546', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 01:15:57', 'No', 'Pursuing', '19340029049', 'MJC', 'M J College', 'Not Paid'),
(454, 'MJGE547', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 01:17:18', 'No', 'Pursuing', '19340029049', 'MJC', 'M J College', 'Not Paid'),
(455, 'MJGE548', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 01:21:49', 'No', 'Pursuing', '19340029145', 'MJC', 'M J College', 'Not Paid'),
(456, 'MJGE549', '57', NULL, '2', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-28 02:01:04', 'No', 'Pursuing', '19340029204', 'MJC', 'M J College', 'Not Paid'),
(457, 'MJGE550', '57', NULL, '2', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-28 02:01:30', 'No', 'Pursuing', '19340029204', 'MJC', 'M J College', 'Not Paid'),
(458, 'MJGE551', '123', NULL, '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 02:04:01', 'No', 'Pursuing', '19340029096', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(459, 'MJGE552', '123', NULL, '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 02:04:14', 'No', 'Pursuing', '19340029096', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(460, 'MJGE553', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 02:37:26', 'No', 'Pursuing', 's.nisha.abhi@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(461, 'MJGE554', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 02:37:52', 'No', 'Pursuing', 's.nisha.abhi@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(462, 'MJGE555', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 02:38:10', 'No', 'Pursuing', 's.nisha.abhi@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(463, 'MJGE556', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 02:38:13', 'No', 'Pursuing', 's.nisha.abhi@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(464, 'MJGE557', '47', NULL, '3', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 02:42:27', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(465, 'MJGE558', '47', NULL, '3', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 02:42:30', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(466, 'MJGE559', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 02:44:55', 'No', 'Pursuing', '19340029016', 'MJC', 'M J College', 'Not Paid'),
(467, 'MJGE560', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 02:45:00', 'No', 'Pursuing', '19340029173', 'MJC', 'M J College', 'Not Paid'),
(468, 'MJGE561', '33', NULL, '3', 'Banking', '25', 'M.Com.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 02:45:14', 'No', 'Pursuing', '19340129026', 'MJC', 'M J College', 'Not Paid'),
(469, 'MJGE562', '33', NULL, '3', 'Banking', '25', 'M.Com.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 02:46:38', 'No', 'Pursuing', '19340129026', 'MJC', 'M J College', 'Not Paid'),
(470, 'MJGE563', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-28 02:47:33', 'No', 'Pursuing', '124', 'MJC', 'M J College', 'Not Paid'),
(471, 'MJGE564', '121', '1970-01-01', '3', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', 'MJGEAdmin', '2020-12-28 02:48:05', 'No', 'Pursuing', '124', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(472, 'MJGE565', '33', NULL, '3', 'Banking', '25', 'M.Com.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 02:51:24', 'No', 'Pursuing', '19340129026', 'MJC', 'M J College', 'Not Paid'),
(473, 'MJGE566', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-28 02:53:09', 'No', 'Pursuing', '19340029101', 'MJC', 'M J College', 'Not Paid'),
(474, 'MJGE567', '121', '2020-01-01', '1', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2020-12-28 02:57:01', 'No', 'Pursuing', '19340029101', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(475, 'MJGE568', '121', '2020-01-12', '3', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', 'MJGEAdmin', '2020-12-28 02:57:26', 'No', 'Pursuing', '19340129026', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(476, 'MJGE569', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 02:57:41', 'No', 'Pursuing', '1234', 'MJC', 'M J College', 'Not Paid'),
(477, 'MJGE570', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 03:09:17', 'No', 'Pursuing', '19340029109', 'MJC', 'M J College', 'Not Paid'),
(478, 'MJGE571', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-28 03:13:14', 'No', 'Pursuing', '1934001083', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(479, 'MJGE572', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-28 03:13:52', 'No', 'Pursuing', '1934001083', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(480, 'MJGE573', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-28 03:14:34', 'No', 'Pursuing', '1934001083', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(481, 'MJGE574', '123', NULL, '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 03:20:38', 'No', 'Pursuing', '19340029146', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(482, 'MJGE575', '42', NULL, '3', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-28 03:21:19', 'No', 'Pursuing', '19340029041', 'MJC', 'M J College', 'Not Paid'),
(483, 'MJGE576', '123', NULL, '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 03:22:55', 'No', 'Pursuing', '19340029105', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(484, 'MJGE577', '42', NULL, '3', 'Bachelor of Computer Application (B.C.A.)', '20', 'B.Com. Part-03', '12', 'UG ANNUAL EXAM', 'Semester', NULL, '2020-12-28 03:25:13', 'No', 'Pursuing', 'rakhikamle@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(485, 'MJGE578', '121', '2020-01-12', '3', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', 'MJGEAdmin', '2020-12-28 03:25:31', 'No', 'Pursuing', 'rakhikamle@gmail.com', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(486, 'MJGE579', '42', NULL, '3', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Semester', NULL, '2020-12-28 03:25:34', 'No', 'Pursuing', 'anjaliswarnkar82@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(487, 'MJGE580', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-28 03:26:56', 'No', 'Pursuing', '19340029036', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(488, 'MJGE581', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-28 03:27:32', 'No', 'Pursuing', '19340029036', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(489, 'MJGE582', '42', NULL, '3', 'Bachelor of Computer Application (B.C.A.)', '20', 'B.Com. Part-03', '12', 'UG ANNUAL EXAM', 'Semester', NULL, '2020-12-28 03:29:22', 'No', 'Pursuing', 'rakhikamle@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(490, 'MJGE583', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 03:29:32', 'No', 'Pursuing', 'anjaliswarnkar82@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(491, 'MJGE584', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 03:29:49', 'No', 'Pursuing', 'anjaliswarnkar82@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(492, 'MJGE585', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 03:30:14', 'No', 'Pursuing', 'aparna.roja1988@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(493, 'MJGE586', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 03:30:15', 'No', 'Pursuing', 'anjaliswarnkar82@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(495, 'MJGE588', '123', '1970-01-01', '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', 'MJGEAdmin', '2020-12-28 03:30:41', 'No', 'Pursuing', '19340029043', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(497, 'MJGE590', '47', NULL, '3', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 03:31:21', 'No', 'Pursuing', '19340029047', 'MJC', 'M J College', 'Not Paid'),
(499, 'MJGE592', '47', NULL, '3', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 03:31:47', 'No', 'Pursuing', '19340029047', 'MJC', 'M J College', 'Not Paid'),
(500, 'MJGE593', '121', '2020-01-12', '3', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', 'MJGEAdmin', '2020-12-28 03:31:50', 'No', 'Pursuing', '19340029047', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(501, 'MJGE594', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-28 03:35:17', 'No', 'Pursuing', '19340029144', 'MJC', 'M J College', 'Not Paid'),
(502, 'MJGE595', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-28 03:35:53', 'No', 'Pursuing', '19340029144', 'MJC', 'M J College', 'Not Paid'),
(503, 'MJGE596', '47', NULL, '2', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-28 03:40:17', 'No', 'Pursuing', '19340029133', 'MJC', 'M J College', 'Not Paid'),
(504, 'MJGE597', '47', NULL, '2', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-28 03:40:32', 'No', 'Pursuing', '19340029133', 'MJC', 'M J College', 'Not Paid'),
(505, 'MJGE598', '123', '1970-01-01', '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2020-12-28 03:42:48', 'No', 'Pursuing', '19340029133', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(506, 'MJGE599', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 03:42:51', 'No', 'Pursuing', '19340029083', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(507, 'MJGE600', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 03:46:49', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(508, 'MJGE601', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 03:47:12', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(509, 'MJGE602', '47', NULL, '3', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 03:47:47', 'No', 'Pursuing', '19340029028', 'MJC', 'M J College', 'Not Paid'),
(510, 'MJGE603', '123', '1970-01-01', '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', 'MJGEAdmin', '2020-12-28 03:47:50', 'No', 'Pursuing', '19340029028', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(511, 'MJGE604', '103', '1970-01-01', '3', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Semester', 'MJGEAdmin', '2020-12-28 03:47:52', 'No', 'Pursuing', '19340129037', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(512, 'MJGE605', '105', NULL, '2', 'M.Ed (Semester â€“ III)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-28 04:05:48', 'No', 'Pursuing', 'ritu.kose@gmail.com', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(513, 'MJGE606', '123', '1970-01-01', '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', 'MJGEAdmin', '2020-12-28 04:54:54', 'No', 'Pursuing', '123456789', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(514, 'MJGE607', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 06:21:45', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(515, 'MJGE608', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 06:22:14', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(516, 'MJGE609', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 06:24:08', 'No', 'Pursuing', '19340029148', 'MJC', 'M J College', 'Not Paid'),
(517, 'MJGE610', '121', '1970-01-01', '3', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', 'MJGEAdmin', '2020-12-28 06:43:30', 'No', 'Pursuing', '19340029012', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(518, 'MJGE611', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 08:03:22', 'No', 'Pursuing', '19340029088', 'MJC', 'M J College', 'Not Paid'),
(519, 'MJGE612', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-28 08:47:13', 'No', 'Pursuing', '19340029083', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(520, 'MJGE613', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-28 08:48:16', 'No', 'Pursuing', '19340029083', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(521, 'MJGE614', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 09:20:45', 'No', 'Pursuing', '19340029025', 'MJC', 'M J College', 'Not Paid'),
(522, 'MJGE615', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 09:21:18', 'No', 'Pursuing', '19340029025', 'MJC', 'M J College', 'Not Paid'),
(523, 'MJGE616', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 09:25:48', 'No', 'Pursuing', '19340029055', 'MJC', 'M J College', 'Not Paid'),
(524, 'MJGE617', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 09:26:04', 'No', 'Pursuing', '19340029055', 'MJC', 'M J College', 'Not Paid'),
(525, 'MJGE618', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 19:38:15', 'No', 'Pursuing', '19340029077', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(526, 'MJGE619', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 19:40:23', 'No', 'Pursuing', '19340029077', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(527, 'MJGE620', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-28 21:14:23', 'No', 'Pursuing', '19340029124', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(528, 'MJGE621', '123', NULL, '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 23:29:32', 'No', 'Pursuing', '19340029053', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(529, 'MJGE622', '123', NULL, '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 23:31:25', 'No', 'Pursuing', '19340029053', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(530, 'MJGE623', '123', NULL, '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 23:31:32', 'No', 'Pursuing', '19340029053', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(531, 'MJGE624', '123', NULL, '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 23:31:38', 'No', 'Pursuing', '19340029053', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(532, 'MJGE625', '123', NULL, '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-28 23:31:48', 'No', 'Pursuing', '19340029053', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(533, 'MJGE626', '103', NULL, '2', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-29 01:24:47', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(534, 'MJGE627', '103', NULL, '2', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-29 01:25:07', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(535, 'MJGE628', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-29 01:34:55', 'No', 'Pursuing', '19340029048', 'MJC', 'M J College', 'Not Paid'),
(536, 'MJGE629', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-29 01:38:04', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(537, 'MJGE630', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-29 01:38:26', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(538, 'MJGE631', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-29 01:41:18', 'No', 'Pursuing', '19340029030', 'MJC', 'M J College', 'Not Paid'),
(539, 'MJGE632', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-29 01:42:05', 'No', 'Pursuing', '19340029048', 'MJC', 'M J College', 'Not Paid'),
(540, 'MJGE633', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-29 02:05:05', 'No', 'Pursuing', '90877', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(541, 'MJGE634', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-29 02:05:13', 'No', 'Pursuing', '90877', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(542, 'MJGE635', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-29 02:08:37', 'No', 'Pursuing', '19340029124', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(543, 'MJGE636', '121', '1970-01-01', '2', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2020-12-29 02:08:57', 'No', 'Pursuing', '19340029083', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(544, 'MJGE637', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-29 02:09:24', 'No', 'Pursuing', '19340029124', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(545, 'MJGE638', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-29 02:09:38', 'No', 'Pursuing', '19340029124', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(546, 'MJGE639', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-29 02:09:52', 'No', 'Pursuing', '19340029124', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(547, 'MJGE640', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-29 02:10:29', 'No', 'Pursuing', '908770', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(548, 'MJGE641', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-29 02:10:38', 'No', 'Pursuing', '908770', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(549, 'MJGE642', '105', NULL, '3', 'M.Ed (Semester â€“ III)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-29 02:15:20', 'No', 'Pursuing', 'neeldurg@gmail.com', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(550, 'MJGE643', '105', '1970-01-01', '2', 'M.Ed (Semester â€“ III)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2020-12-29 02:17:21', 'No', 'Pursuing', '123', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(551, 'MJGE644', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-29 02:17:30', 'No', 'Pursuing', '19340029124', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(552, 'MJGE645', '42', NULL, '3', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-29 02:18:08', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(553, 'MJGE646', '105', NULL, '3', 'M.Ed (Semester â€“ III)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-29 02:22:21', 'No', 'Pursuing', '+1917000093517', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(554, 'MJGE647', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-29 02:30:18', 'No', 'Pursuing', '19340029124', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(555, 'MJGE648', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-29 02:49:01', 'No', 'Pursuing', '19340029118', 'MJC', 'M J College', 'Not Paid'),
(556, 'MJGE649', '105', '1970-01-01', '3', 'M.Ed (Semester â€“ III)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Semester', 'MJGEAdmin', '2020-12-29 03:43:48', 'No', 'Pursuing', 'natashaver1988@gmail.com', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(557, 'MJGE650', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2020-12-29 03:44:16', 'No', 'Pursuing', 'natashaver1988@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(558, 'MJGE651', '103', NULL, '2', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-29 03:55:49', 'No', 'Pursuing', '123456', 'MJEDU', 'M J College Department of Education', 'Not Paid');
INSERT INTO `student_course_applied` (`id`, `student_id`, `course_id`, `duration_type`, `sem_year`, `course_name`, `course_type_id`, `course_type_name`, `subject_id`, `subject_name`, `batch_session`, `created_by_id`, `created_date_time`, `qualified`, `pursuing_passed`, `roll_no`, `college_id`, `college_name`, `fee_status`) VALUES
(559, 'MJGE652', '103', NULL, '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', NULL, '2020-12-29 03:58:52', 'No', 'Pursuing', '123545', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(561, 'MJGE654', '26', NULL, '3', 'Computer Science (C.S.)', '24', 'M.Sc.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2020-12-29 06:11:18', 'No', 'Pursuing', '19340029123', 'MJC', 'M J College', 'Not Paid'),
(562, 'MJGE655', '102', NULL, '2', 'D.El.Ed - YEAR II', '73', 'D.El.Ed', '67', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-29 07:26:01', 'No', 'Pursuing', '7201400236', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(563, 'MJGE656', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-29 08:22:21', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(564, 'MJGE657', '93', NULL, '3', 'Pharmacy', '85', 'PHARMACY (B. Pharmacy 3rd Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-29 21:57:10', 'No', 'Pursuing', '310604119001', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(565, 'MJGE658', '123', NULL, '2', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-29 23:52:29', 'No', 'Pursuing', '19340029008', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(566, 'MJGE659', '123', NULL, '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2020-12-30 00:22:01', 'No', 'Pursuing', '19340029056', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(567, 'MJGE660', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-30 01:58:40', 'No', 'Pursuing', '210604119030', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(568, 'MJGE661', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '71', 'B.C.A. Part-3', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-30 02:08:14', 'No', 'Pursuing', '210604119038', 'MJC', 'M J College', 'Not Paid'),
(569, 'MJGE662', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-30 02:11:22', 'No', 'Pursuing', '', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(570, 'MJGE663', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-30 02:16:25', 'No', 'Pursuing', '210604119062', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(571, 'MJGE664', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-30 02:23:50', 'No', 'Pursuing', '210604119041', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(572, 'MJGE665', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-30 02:26:33', 'No', 'Pursuing', '210604119021', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(573, 'MJGE666', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-30 03:00:24', 'No', 'Pursuing', '210604119016', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(575, 'MJC668', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-30 05:42:32', 'No', 'Pursuing', 'pjchandel2018@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(576, 'MJPH669', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-30 19:42:38', 'No', 'Pursuing', '210604119058', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(577, 'MJPH670', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-30 21:12:07', 'No', 'Pursuing', 'rupeshkumarpatel00@gmail.com', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(578, 'MJPH671', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-30 21:21:38', 'No', 'Pursuing', 'BPH2024-019', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(579, 'MJPH672', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-30 21:23:54', 'No', 'Pursuing', 'BPH2024-094', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(580, 'MJPH673', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-30 23:32:27', 'No', 'Pursuing', 'BPH2024-012', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(581, 'MJPH674', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-30 23:44:36', 'No', 'Pursuing', '210604119053', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(582, 'MJPH675', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-30 23:50:25', 'No', 'Pursuing', '210604119052', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(583, 'MJPH676', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-30 23:55:14', 'No', 'Pursuing', 'BPH2024-074', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(584, 'MJPH677', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-30 23:58:19', 'No', 'Pursuing', '210604119001', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(585, 'MJPH678', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-31 00:03:36', 'No', 'Pursuing', 'BPH2024-079', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(586, 'MJPH679', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-31 00:29:32', 'No', 'Pursuing', 'BPH2024-15', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(587, 'MJPH680', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 00:45:47', 'No', 'Pursuing', 'Dph, 2022_0023', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(588, 'MJPH681', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-31 01:10:37', 'No', 'Pursuing', 'BPH2024-024', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(589, 'MJPH682', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 01:16:11', 'No', 'Pursuing', 'DPH2022026', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(590, 'MJPH683', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-31 02:45:22', 'No', 'Pursuing', 'BPH2024-080', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(591, 'MJPH684', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-31 02:51:06', 'No', 'Pursuing', 'bph2024061', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(592, 'MJPH685', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-31 02:57:54', 'No', 'Pursuing', 'khushboosahu14631@gmail.com', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(593, 'MJPH686', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-31 03:01:02', 'No', 'Pursuing', 'BPH2024-032', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(594, 'MJPH687', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-31 03:03:18', 'No', 'Pursuing', 'BPH2024-005', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(595, 'MJPH688', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 03:05:31', 'No', 'Pursuing', 'DPH2022-043', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(596, 'MJEDU689', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-31 03:08:41', 'No', 'Pursuing', '7201400269', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(597, 'MJPH690', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 03:10:05', 'No', 'Pursuing', '210604119011', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(598, 'MJPH691', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-31 03:13:25', 'No', 'Pursuing', 'BPH2024-099', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(599, 'MJPH692', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 03:14:32', 'No', 'Pursuing', 'DPH2022-058', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(600, 'MJPH693', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 04:38:29', 'No', 'Pursuing', 'kumarparassinghrajput@gmail.com', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(601, 'MJPH694', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 04:55:08', 'No', 'Pursuing', '210604119004', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(602, 'MJPH695', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-31 05:32:32', 'No', 'Pursuing', 'BPH2024-056', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(603, 'MJPH696', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-31 05:36:03', 'No', 'Pursuing', 'BPH2024 091', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(604, 'MJPH697', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-31 05:38:00', 'No', 'Pursuing', 'BPH2024-013', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(605, 'MJPH698', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-31 05:59:01', 'No', 'Pursuing', 'bph2024_011', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(606, 'MJPH699', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 06:01:08', 'No', 'Pursuing', '210604119005', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(607, 'MJPH700', '92', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 06:12:58', 'No', 'Pursuing', '210604119010', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(608, 'MJPH701', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 06:36:44', 'No', 'Pursuing', 'DPH2022 - 015', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(609, 'MJPH702', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 06:48:48', 'No', 'Pursuing', '210604119009', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(610, 'MJPH703', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-31 06:54:45', 'No', 'Pursuing', 'nagpure510nagpure@gmail.com', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(611, 'MJPH704', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-31 07:02:38', 'No', 'Pursuing', 'BPH2024-010', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(612, 'MJPH705', '92', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 07:04:48', 'No', 'Pursuing', 'amritkumarrjn20@gmail.com', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(613, 'MJPH706', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-31 07:11:18', 'No', 'Pursuing', '28', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(614, 'MJPH707', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 07:14:05', 'No', 'Pursuing', '21604119045', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(615, 'MJPH708', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 07:16:28', 'No', 'Pursuing', 'DPH2022-034', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(616, 'MJC709', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-31 07:35:15', 'No', 'Pursuing', '19340129011', 'MJC', 'M J College', 'Not Paid'),
(617, 'MJPH710', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 07:45:37', 'No', 'Pursuing', '', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(618, 'MJPH711', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 07:56:40', 'No', 'Pursuing', 'DPH2022-020', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(619, 'MJPH712', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-31 08:05:06', 'No', 'Pursuing', '33', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(620, 'MJPH713', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-31 08:33:25', 'No', 'Pursuing', 'bph2024-023', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(621, 'MJPH714', '94', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-31 09:46:24', 'No', 'Pursuing', 'BPH2024-064', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(622, 'MJPH715', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 09:50:50', 'No', 'Pursuing', 'DPH2022-018', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(623, 'MJPH716', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-31 09:56:08', 'No', 'Pursuing', 'BPH2024-044', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(624, 'MJPH717', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 10:05:40', 'No', 'Pursuing', '210604119037', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(625, 'MJPH718', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-31 10:38:08', 'No', 'Pursuing', 'BPH2024-060', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(626, 'MJPH719', '92', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 10:52:28', 'No', 'Pursuing', '210604119034', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(627, 'MJPH720', '42', NULL, '3', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-31 19:51:26', 'No', 'Pursuing', '210604118012', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(628, 'MJPH721', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-31 20:05:29', 'No', 'Pursuing', 'BPH2024-022', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(629, 'MJPH722', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-31 20:34:23', 'No', 'Pursuing', 'BPH2024-063', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(630, 'MJPH723', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '87', 'PHARMACY (B. Pharmacy 5th Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-31 20:57:32', 'No', 'Pursuing', 'BPH2024092', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(631, 'MJPH724', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-31 21:47:32', 'No', 'Pursuing', 'BPH2024-096', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(632, 'MJPH725', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '17', 'B.C.A. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2020-12-31 21:57:34', 'No', 'Pursuing', 'BPH2024-037', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(633, 'MJPH726', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-31 22:21:29', 'No', 'Pursuing', 'BPH2024-048', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(634, 'MJPH727', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-31 22:32:28', 'No', 'Pursuing', 'BPH2024-009', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(635, 'MJPH728', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 22:32:46', 'No', 'Pursuing', '210604119042', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(636, 'MJPH729', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2020-12-31 22:36:10', 'No', 'Pursuing', 'BPH2024-066', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(637, 'MJPH730', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 23:05:01', 'No', 'Pursuing', '210604119027', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(638, 'MJPH731', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 23:29:40', 'No', 'Pursuing', 'DPH2022-045', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(639, 'MJPH732', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 23:30:44', 'No', 'Pursuing', 'DPH2022-042', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(640, 'MJPH733', '92', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 23:33:00', 'No', 'Pursuing', '210604119035', 'MJPH', 'M J College (Pharmacy)', 'Full Paid'),
(641, 'MJPH734', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2020-12-31 23:53:15', 'No', 'Pursuing', 'B12101', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(642, 'MJPH735', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2020-12-31 23:59:58', 'No', 'Pursuing', 'BPH2024-029', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(643, 'MJPH736', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-01 00:04:37', 'No', 'Pursuing', 'DPH2022-062', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(644, 'MJC737', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-01 00:04:39', 'No', 'Pursuing', '032', 'MJC', 'M J College', 'Not Paid'),
(645, 'MJC738', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-01 00:14:09', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(646, 'MJC739', '103', '1970-01-01', '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2021-01-01 00:14:15', 'No', 'Pursuing', '123', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(647, 'MJPH740', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-01 00:25:56', 'No', 'Pursuing', '210604119014', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(648, 'MJPH741', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-01 02:17:16', 'No', 'Pursuing', 'DPH2022-011', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(649, 'MJPH742', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2021-01-01 03:08:45', 'No', 'Pursuing', 'BHP 2024-067', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(650, 'MJC743', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-01 03:38:11', 'No', 'Pursuing', '7201400264', 'MJC', 'M J College', 'Not Paid'),
(651, 'MJPH744', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2021-01-01 07:55:55', 'No', 'Pursuing', 'BPH2024-038', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(652, 'MJPH745', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '76', 'UG (SEMESTER)', 'Year', NULL, '2021-01-01 07:56:14', 'No', 'Pursuing', 'BPH2024-059', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(653, 'MJC746', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-01 10:07:00', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(654, 'MJPH747', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-01 19:26:38', 'No', 'Pursuing', '210604119057', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(655, 'MJPH748', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2021-01-01 20:10:18', 'No', 'Pursuing', '62', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(656, 'MJPH749', '95', NULL, '3', 'Pharmacy', '85', 'PHARMACY (B. Pharmacy 3rd Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2021-01-01 20:12:17', 'No', 'Pursuing', '210604118013', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(657, 'MJPH750', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2021-01-01 21:02:41', 'No', 'Pursuing', 'BPH2024-082', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(658, 'MJPH751', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-01 21:05:54', 'No', 'Pursuing', 'DPH2022-059', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(659, 'MJPH752', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-01 22:15:54', 'No', 'Pursuing', 'DPH2022-009 ', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(660, 'MJEDU753', '123', NULL, '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-01 22:27:25', 'No', 'Pursuing', '19340029079', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(661, 'MJC754', '57', NULL, '2', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-01 22:31:11', 'No', 'Pursuing', '19340029006', 'MJC', 'M J College', 'Not Paid'),
(662, 'MJPH755', '91', NULL, '2', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-01 23:23:27', 'No', 'Pursuing', '2106041190250', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(663, 'MJPH756', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-01 23:29:05', 'No', 'Pursuing', '210604119029', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(664, 'MJPH757', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-02 00:33:16', 'No', 'Pursuing', '210604119024', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(665, 'MJPH758', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-02 01:41:12', 'No', 'Pursuing', '210604119003', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(666, 'MJPH759', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-02 01:46:03', 'No', 'Pursuing', 'DPH2022-046', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(667, 'MJC760', '26', NULL, '1', 'Computer Science (C.S.)', '24', 'M.Sc.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2021-01-02 04:28:54', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(668, 'MJPH761', '92', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Semester', NULL, '2021-01-02 05:02:50', 'No', 'Pursuing', '210604119050', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(669, 'MJPH762', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-02 07:16:22', 'No', 'Pursuing', '14', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(670, 'MJPH763', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2021-01-02 09:05:21', 'No', 'Pursuing', 'BPH2024-021', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(671, 'MJPH764', '91', NULL, '2', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-02 20:28:58', 'No', 'Pursuing', '210604119033', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(672, 'MJPH765', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2021-01-03 00:05:26', 'No', 'Pursuing', '073', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(673, 'MJPH766', '93', NULL, '3', 'Pharmacy', '85', 'PHARMACY (B. Pharmacy 3rd Semester)', '76', 'UG (SEMESTER)', 'Semester', NULL, '2021-01-03 00:57:47', 'No', 'Pursuing', '310604119001', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(674, 'MJPH767', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2021-01-03 07:08:39', 'No', 'Pursuing', 'BPH2024-049', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(675, 'MJPH768', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-03 21:46:19', 'No', 'Pursuing', '210604119054', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(676, 'MJPH769', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-03 21:53:10', 'No', 'Pursuing', '210604119036', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(677, 'MJPH770', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2021-01-04 00:32:27', 'No', 'Pursuing', 'BPH2024007', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(678, 'MJPH771', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 00:45:23', 'No', 'Pursuing', 'BPH2024- 016', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(679, 'MJC772', '44', NULL, '1', 'Bachelor of Commerce (B.Com.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 02:04:19', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(680, 'MJC773', '130', NULL, '1', 'Principles of management', '21', 'BBA', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-04 02:11:44', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(681, 'MJC774', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-04 02:25:32', 'No', 'Pursuing', 'pranshudubey395@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(683, 'MJC776', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 03:31:19', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(684, 'MJC777', '134', NULL, '1', 'PGDCA', '133', 'PGDCA', '15', 'PG SEMESTER EXAM', 'Year', NULL, '2021-01-04 04:03:50', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(685, 'MJC778', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 04:05:04', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(686, 'MJC779', '26', NULL, '1', 'Computer Science (C.S.)', '133', 'PGDCA', '15', 'PG SEMESTER EXAM', 'Year', NULL, '2021-01-04 04:50:49', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(687, 'MJC780', '42', NULL, '3', 'Bachelor of Computer Application (B.C.A.)', '20', 'B.Com. Part-03', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 05:18:50', 'No', 'Pursuing', 'kukkusingh2011@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(688, 'MJC781', '44', '2020-07-07', '1', 'Bachelor of Commerce (B.Com.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2021-01-04 05:27:03', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(689, 'MJC782', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 05:32:47', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(690, 'MJC783', '43', '1970-01-01', '1', 'Bachelor of Computer Application (B.C.A.)', '17', 'B.C.A. Part-01', '12', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2021-01-04 06:33:59', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(691, 'MJC784', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 07:03:29', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(692, 'MJC785', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 07:59:46', 'No', 'Pursuing', 'himanshideshlahre@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(693, 'MJC786', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '17', 'B.C.A. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 08:11:38', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(694, 'MJC787', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 09:03:29', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(695, 'MJEDU788', '102', NULL, '2', 'D.El.Ed - YEAR II', '73', 'D.El.Ed', '67', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 19:19:02', 'No', 'Pursuing', '7201400239', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(696, 'MJEDU789', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '17', 'B.C.A. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 19:50:28', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(697, 'MJPH790', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2021-01-04 20:03:14', 'No', 'Pursuing', 'BPH2024-071', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(698, 'MJPH791', '91', NULL, '2', 'Pharmacy', '82', 'PHARMACY (D. Pharmacy 2nd Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-04 20:06:26', 'No', 'Pursuing', '210604119019', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(699, 'MJC792', '44', '2021-01-08', '1', 'Bachelor of Commerce (B.Com.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2021-01-04 20:22:18', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(700, 'MJC793', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 20:36:28', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(701, 'MJC794', '42', '1970-01-01', '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2021-01-04 20:39:14', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(702, 'MJPH795', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-04 20:52:16', 'No', 'Pursuing', 'DPH2022-025', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(703, 'MJC796', '44', NULL, '1', 'Bachelor of Commerce (B.Com.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 21:16:41', 'No', 'Pursuing', 'ng1701474@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(704, 'MJC797', '43', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '17', 'B.C.A. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 21:21:29', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(705, 'MJC798', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 21:29:15', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(706, 'MJC799', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 21:31:29', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(707, 'MJC800', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 21:33:44', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(708, 'MJC801', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '17', 'B.C.A. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 21:34:37', 'No', 'Pursuing', 'suhanakhatun2702@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(709, 'MJC802', '134', NULL, '1', 'PGDCA', '133', 'PGDCA', '15', 'PG SEMESTER EXAM', 'Year', NULL, '2021-01-04 21:39:51', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(710, 'MJC803', '26', NULL, '1', 'Computer Science (C.S.)', '133', 'PGDCA', '15', 'PG SEMESTER EXAM', 'Year', NULL, '2021-01-04 21:41:30', 'No', 'Pursuing', 'rupalidewangan28543@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(711, 'MJC804', '44', NULL, '1', 'Bachelor of Commerce (B.Com.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 21:48:16', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(712, 'MJC805', '134', NULL, '1', 'PGDCA', '133', 'PGDCA', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2021-01-04 21:49:26', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(713, 'MJC806', '134', NULL, '1', 'PGDCA', '133', 'PGDCA', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2021-01-04 21:50:41', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(714, 'MJC807', '44', '2021-01-07', '1', 'Bachelor of Commerce (B.Com.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2021-01-04 22:01:03', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(715, 'MJC808', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 22:20:38', 'No', 'Pursuing', 'sumanmirry2@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(716, 'MJC809', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 22:20:47', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(717, 'MJC810', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 22:24:58', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(718, 'MJC811', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '17', 'B.C.A. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 22:35:37', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(719, 'MJC812', '44', NULL, '1', 'Bachelor of Commerce (B.Com.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 22:46:29', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(720, 'MJC813', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 23:01:33', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(721, 'MJC814', '44', NULL, '1', 'Bachelor of Commerce (B.Com.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-04 23:33:15', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(722, 'MJC815', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-05 00:09:46', 'No', 'Pursuing', 'B220/03228/0314', 'MJC', 'M J College', 'Not Paid'),
(723, 'MJC816', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-05 00:39:17', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(724, 'MJPH817', '91', NULL, '2', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-05 01:28:32', 'No', 'Pursuing', '210604119039', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(725, 'MJC818', '44', NULL, '1', 'Bachelor of Commerce (B.Com.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-05 04:43:35', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(726, 'MJC819', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '133', 'PGDCA', '15', 'PG SEMESTER EXAM', 'Year', NULL, '2021-01-05 07:34:06', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(727, 'MJC820', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-05 09:38:20', 'No', 'Pursuing', 'dhalsinghsahu68154@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(728, 'MJC821', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-05 09:40:20', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(729, 'MJC822', '42', '1970-01-01', '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2021-01-05 23:18:43', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(730, 'MJC823', '27', NULL, '5', 'Mathematics (Maths)', '24', 'M.Sc.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2021-01-05 23:42:48', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(731, 'MJC824', '27', NULL, '1', 'Mathematics (Maths)', '24', 'M.Sc.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2021-01-06 00:32:43', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(732, 'MJC825', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-06 00:44:00', 'No', 'Pursuing', '1940029152', 'MJC', 'M J College', 'Not Paid'),
(733, 'MJEDU826', '123', NULL, '3', 'B.Ed (Semester â€“ III)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-06 02:15:08', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(734, 'MJC827', '131', '2021-01-25', '3', 'Business Communication', '21', 'BBA', '13', 'UG SEMESTER EXAM', 'Semester', 'MJGEAdmin', '2021-01-06 02:26:58', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(735, 'MJC818', '42', 'NaN-aN-aN', '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2021-01-06 02:52:09', 'No', 'Pursuing', NULL, 'MJC', 'M J College', 'Not Paid'),
(736, 'MJC828', '44', NULL, '1', 'Bachelor of Commerce (B.Com.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-06 02:56:24', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(737, 'MJC829', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '19', 'B.Com. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-06 03:01:17', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(738, 'MJC830', '42', NULL, '3', 'Bachelor of Computer Application (B.C.A.)', '20', 'B.Com. Part-03', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-06 04:12:57', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(739, 'MJC831', '28', NULL, '3', 'Taxation', '25', 'M.Com.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2021-01-06 04:58:39', 'No', 'Pursuing', '19340117008', 'MJC', 'M J College', 'Not Paid'),
(740, 'MJC832', '44', NULL, '1', 'Bachelor of Commerce (B.Com.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-06 04:58:52', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(741, 'MJC833', '45', '2021-01-15', '2', 'Bachelor of Commerce (B.Com.)', '19', 'B.Com. Part-02', '12', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2021-01-06 05:22:18', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(742, 'MJC834', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-06 05:44:23', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(743, 'MJPH835', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2021-01-06 06:04:07', 'No', 'Pursuing', '210604119061', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(744, 'MJC836', '44', NULL, '1', 'Bachelor of Commerce (B.Com.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-06 06:31:22', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(745, 'MJC837', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '135', 'B.COM', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-06 07:51:28', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(746, 'MJC838', '134', NULL, '3', 'PGDCA', '133', 'PGDCA', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-06 09:31:54', 'No', 'Pursuing', 'rv505738@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(747, 'MJC839', '42', NULL, '3', 'Bachelor of Computer Application (B.C.A.)', '20', 'B.Com. Part-03', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-06 19:47:40', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(748, 'MJC840', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-06 21:10:03', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(749, 'MJC841', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-06 22:33:05', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(750, 'MJC842', '42', '1970-01-01', '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2021-01-06 22:34:59', 'No', 'Pursuing', 'njnancy13@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(751, 'MJC843', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-06 22:51:47', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(752, 'MJEDU844', '101', NULL, '1', 'D.El.Ed - YEAR I', '73', 'D.El.Ed', '67', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-06 23:24:24', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(753, 'MJEDU845', '101', NULL, '1', 'D.El.Ed - YEAR I', '73', 'D.El.Ed', '67', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-06 23:25:24', 'No', 'Pursuing', 'pushpendrakumar9449@gmail.com', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(754, 'MJGE300', '45', '2001-09-21', '2', 'Bachelor of Commerce (B.Com.)', '19', 'B.Com. Part-02', '12', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2021-01-06 23:25:41', 'No', 'Pursuing', NULL, 'MJC', 'M J College', 'Not Paid'),
(755, 'MJC846', '52', NULL, '3', 'Communication and Media Management', '21', 'BBA', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-06 23:38:34', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(756, 'MJC847', '130', NULL, '1', 'Principles of management', '21', 'BBA', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-06 23:43:14', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(757, 'MJC848', '46', '1970-01-01', '3', 'Bachelor of Commerce (B.Com.)', '20', 'B.Com. Part-03', '12', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2021-01-07 00:18:33', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(758, 'MJEDU849', '101', NULL, '1', 'D.El.Ed - YEAR I', '73', 'D.El.Ed', '67', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-07 06:26:17', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(759, 'MJC850', '46', '1970-01-01', '1', 'Bachelor of Commerce (B.Com.)', '20', 'B.Com. Part-03', '12', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2021-01-07 21:52:35', 'No', 'Pursuing', 'warishahmed349@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(760, 'MJC851', '46', '1970-01-01', '3', 'Bachelor of Commerce (B.Com.)', '20', 'B.Com. Part-03', '12', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2021-01-07 21:55:27', 'No', 'Pursuing', '93400040006', 'MJC', 'M J College', 'Not Paid'),
(761, 'MJC852', '45', NULL, '2', 'Bachelor of Commerce (B.Com.)', '19', 'B.Com. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-07 22:06:57', 'No', 'Pursuing', '+1919098109103', 'MJC', 'M J College', 'Not Paid'),
(762, 'MJC853', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '19', 'B.Com. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-07 22:09:10', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(763, 'MJC854', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '19', 'B.Com. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-07 22:09:48', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(764, 'MJC855', '130', '1970-01-01', '3', 'Principles of management', '21', 'BBA', '13', 'UG SEMESTER EXAM', 'Semester', 'MJGEAdmin', '2021-01-07 22:11:00', 'No', 'Pursuing', 'sakshi28may@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(765, 'MJC856', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '135', 'B.COM', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-07 22:43:57', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(766, 'MJC857', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '135', 'B.COM', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-07 22:49:48', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(767, 'MJC858', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '19', 'B.Com. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-07 22:53:53', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(768, 'MJPH859', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-07 23:25:21', 'No', 'Pursuing', 'DPH2022-037', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(769, 'MJC860', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-07 23:38:52', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(770, 'MJC861', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-08 01:23:38', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(771, 'MJC862', '57', NULL, '3', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-08 11:33:20', 'No', 'Pursuing', '19340029042', 'MJC', 'M J College', 'Not Paid'),
(772, 'MJC863', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-08 21:59:40', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(773, 'MJC864', '42', NULL, '3', 'Bachelor of Computer Application (B.C.A.)', '20', 'B.Com. Part-03', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-08 23:02:00', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(774, 'MJC865', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-09 02:14:24', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(775, 'MJC866', '103', '2021-01-11', '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Semester', 'MJGEAdmin', '2021-01-11 04:11:36', 'No', 'Pursuing', '123', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(776, 'MJC867', '26', NULL, '3', 'Computer Science (C.S.)', '24', 'M.Sc.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2021-01-11 22:55:17', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(777, 'MJPH868', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '76', 'UG (SEMESTER)', 'Year', NULL, '2021-01-13 08:28:34', 'No', 'Pursuing', 'BPH2024-085', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(778, 'MJC869', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '19', 'B.Com. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-14 22:23:36', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(779, 'MJC869', '45', '2021-01-15', '2', 'Bachelor of Commerce (B.Com.)', '19', 'B.Com. Part-02', '12', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2021-01-14 22:24:31', 'No', 'Pursuing', NULL, 'MJC', 'M J College', 'Not Paid'),
(780, 'MJC870', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '18', 'B.Com. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-15 20:36:28', 'No', 'Pursuing', '117', 'MJC', 'M J College', 'Not Paid'),
(781, 'MJC871', '31', NULL, '3', 'Accounting', '25', 'M.Com.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2021-01-17 08:41:05', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(782, 'MJC872', '47', NULL, '3', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-18 06:35:25', 'No', 'Pursuing', '19340029172', 'MJC', 'M J College', 'Not Paid');
INSERT INTO `student_course_applied` (`id`, `student_id`, `course_id`, `duration_type`, `sem_year`, `course_name`, `course_type_id`, `course_type_name`, `subject_id`, `subject_name`, `batch_session`, `created_by_id`, `created_date_time`, `qualified`, `pursuing_passed`, `roll_no`, `college_id`, `college_name`, `fee_status`) VALUES
(783, 'MJC873', '43', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '17', 'B.C.A. Part-01', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-19 22:23:37', 'No', 'Pursuing', 'DPH 2022 041', 'MJC', 'M J College', 'Not Paid'),
(784, 'MJC874', '45', NULL, '2', 'Bachelor of Commerce (B.Com.)', '19', 'B.Com. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-22 01:51:20', 'No', 'Pursuing', 'hitikpanariya91@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(785, 'MJC875', '45', '2021-01-25', '2', 'Bachelor of Commerce (B.Com.)', '19', 'B.Com. Part-02', '12', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2021-01-24 21:09:09', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(786, 'MJPH876', '93', NULL, '1', 'Pharmacy', '83', 'PHARMACY (B. Pharmacy 1st Semester)', '76', 'UG (SEMESTER)', 'Year', NULL, '2021-01-24 21:27:08', 'No', 'Pursuing', 'BPH2024-081', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(787, 'MJC877', '42', NULL, '2', 'Bachelor of Computer Application (B.C.A.)', '19', 'B.Com. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-26 03:30:03', 'No', 'Pursuing', '23400040012', 'MJC', 'M J College', 'Not Paid'),
(788, 'MJPH878', '91', NULL, '1', 'Pharmacy', '81', 'PHARMACY (D. Pharmacy 1st Year)', '79', 'DIPLOMA (ANNUAL)', 'Year', NULL, '2021-01-26 10:57:14', 'No', 'Pursuing', 'DPH2022-016', 'MJPH', 'M J College (Pharmacy)', 'Not Paid'),
(789, 'MJC879', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-30 02:29:40', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(790, 'MJC880', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-30 02:46:05', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(791, 'MJC881', '29', NULL, '1', 'Economics', '25', 'M.Com.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2021-01-30 02:47:55', 'No', 'Pursuing', '1111', 'MJC', 'M J College', 'Not Paid'),
(792, 'MJC882', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-30 02:49:05', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(793, 'MJC883', '121', '2021-01-01', '1', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2021-01-30 02:59:28', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(794, 'MJC884', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-30 03:00:30', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(795, 'MJC885', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-30 03:01:02', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(796, 'MJEDU886', '101', NULL, '1', 'D.El.Ed - YEAR I', '73', 'D.El.Ed', '67', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-30 03:12:07', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(797, 'MJC887', '103', '1970-01-01', '1', 'M.Ed (Semester â€“ I)', '75', 'M.Ed', '70', 'PG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2021-01-30 03:12:54', 'No', 'Pursuing', '123', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(798, 'MJC888', '57', '1970-01-01', '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', 'MJGEAdmin', '2021-01-30 03:16:09', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(799, 'MJC889', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-30 03:29:12', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(800, 'MJC890', '47', NULL, '1', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-30 03:34:31', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(801, 'MJC891', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-30 03:39:38', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(802, 'MJC892', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-30 03:45:54', 'No', 'Pursuing', 'kajalgupta4801@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(803, 'MJEDU893', '101', '2021-01-01', '1', 'D.El.Ed - YEAR I', '73', 'D.El.Ed', '67', 'UG ANNUAL EXAM', 'Year', 'MJGEAdmin', '2021-01-30 03:48:14', 'No', 'Pursuing', '123', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(804, 'MJC894', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-30 03:51:40', 'No', 'Pursuing', 'soniyagupta512@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(805, 'MJEDU895', '121', NULL, '1', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-30 03:52:34', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(806, 'MJC896', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-30 03:54:50', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(807, 'MJC897', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-30 03:59:16', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(808, 'MJEDU898', '121', NULL, '1', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-30 04:02:29', 'No', 'Pursuing', '123', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(809, 'MJEDU899', '121', NULL, '1', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-30 04:02:42', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(810, 'MJC900', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-30 04:10:19', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(811, 'MJC901', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '15', 'PG SEMESTER EXAM', 'Year', NULL, '2021-01-30 04:13:20', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(812, 'MJC902', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-30 04:18:42', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(813, 'MJC903', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-30 04:19:13', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(814, 'MJEDU904', '121', NULL, '1', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-30 04:28:04', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(815, 'MJC905', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-30 04:34:04', 'No', 'Pursuing', 'chinmay.chandel97@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(816, 'MJC906', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-30 04:47:18', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(817, 'MJC907', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-30 04:54:44', 'No', 'Pursuing', '12345', 'MJC', 'M J College', 'Not Paid'),
(818, 'MJC908', '47', NULL, '1', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-30 05:12:43', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(819, 'MJC909', '47', NULL, '1', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-30 05:36:16', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(820, 'MJC910', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-01-30 05:39:11', 'No', 'Pursuing', 'anjumkhan.kwd@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(821, 'MJC911', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-30 06:51:00', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(822, 'MJEDU912', '121', NULL, '1', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-30 06:54:20', 'No', 'Pursuing', 'shubhamchandrakar975@gmail.com', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(823, 'MJC913', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-30 08:33:20', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(824, 'MJC914', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-01-30 09:05:12', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(825, 'MJEDU915', '101', NULL, '1', 'D.El.Ed - YEAR I', '73', 'D.El.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-30 22:40:21', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(826, 'MJC916', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-01-31 03:58:11', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(827, 'MJC917', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Semester', NULL, '2021-01-31 18:53:12', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(828, 'MJEDU918', '101', NULL, '1', 'D.El.Ed - YEAR I', '73', 'D.El.Ed', '67', 'UG ANNUAL EXAM', 'Year', NULL, '2021-02-01 01:01:08', 'No', 'Pursuing', '', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(829, 'MJC919', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-01 01:12:43', 'No', 'Pursuing', '1917051', 'MJC', 'M J College', 'Not Paid'),
(830, 'MJC920', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-01 01:46:52', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(831, 'MJC921', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-01 02:08:56', 'No', 'Pursuing', 'explore.pallavi15@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(832, 'MJC922', '28', NULL, '3', 'Taxation', '25', 'M.Com.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2021-02-01 22:33:59', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(833, 'MJC923', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-02 02:01:03', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(834, 'MJC924', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-02 02:04:00', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Half Paid'),
(835, 'MJC925', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-02 03:20:42', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(836, 'MJC926', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Semester', NULL, '2021-02-02 22:01:28', 'No', 'Pursuing', '1083', 'MJC', 'M J College', 'Not Paid'),
(837, 'MJC927', '47', NULL, '1', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-03 22:59:13', 'No', 'Pursuing', '1234', 'MJC', 'M J College', 'Not Paid'),
(838, 'MJC928', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-02-05 02:06:48', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(839, 'MJC929', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-07 23:36:33', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(840, 'MJC930', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-08 00:22:07', 'No', 'Pursuing', 'www.shivasingh101@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(841, 'MJC931', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-08 04:18:31', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(842, 'MJC932', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-08 05:00:58', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(843, 'MJC933', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-08 05:32:55', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(844, 'MJC934', '47', NULL, '1', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-08 05:41:16', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(845, 'MJC935', '47', NULL, '1', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-08 06:31:37', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(846, 'MJC936', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-08 06:31:56', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(847, 'MJC937', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-02-08 06:43:07', 'No', 'Pursuing', '56', 'MJC', 'M J College', 'Not Paid'),
(848, 'MJC938', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-08 06:43:54', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(849, 'MJC939', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-02-08 06:45:02', 'No', 'Pursuing', '556', 'MJC', 'M J College', 'Not Paid'),
(850, 'MJEDU940', '121', NULL, '1', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-08 06:45:49', 'No', 'Pursuing', '123', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(851, 'MJC941', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-08 06:55:57', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(852, 'MJC942', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-08 06:57:48', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(853, 'MJC943', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-02-08 07:07:12', 'No', 'Pursuing', 'ramesh6223@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(854, 'MJEDU944', '101', NULL, '1', 'D.El.Ed - YEAR I', '73', 'D.El.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-08 07:13:26', 'No', 'Pursuing', '123', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(855, 'MJEDU945', '121', NULL, '1', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-08 07:53:38', 'No', 'Pursuing', '123', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(856, 'MJC946', '47', NULL, '1', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-08 08:47:10', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(857, 'MJC947', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-08 08:56:30', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(858, 'MJC948', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-02-08 09:58:55', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(859, 'MJC949', '47', NULL, '1', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-08 09:59:49', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(860, 'MJC950', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-08 10:07:25', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(861, 'MJC951', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-08 10:13:13', 'No', 'Pursuing', '4768', 'MJC', 'M J College', 'Not Paid'),
(862, 'MJC952', '47', NULL, '1', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-08 10:41:06', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(863, 'MJC953', '47', NULL, '1', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-08 19:36:21', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(864, 'MJC954', '47', NULL, '1', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-08 20:12:57', 'No', 'Pursuing', 'sharma.kajal.19@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(865, 'MJC955', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Semester', NULL, '2021-02-08 21:50:50', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(866, 'MJEDU956', '121', NULL, '1', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-08 21:51:09', 'No', 'Pursuing', '123', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(867, 'MJC957', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-08 23:10:05', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(868, 'MJC958', '26', NULL, '1', 'Computer Science (C.S.)', '24', 'M.Sc.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2021-02-08 23:43:37', 'No', 'Pursuing', '+916267139049', 'MJC', 'M J College', 'Not Paid'),
(869, 'MJC959', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-09 00:52:38', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(870, 'MJC960', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-09 01:12:06', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(871, 'MJEDU961', '121', NULL, '1', 'B.Ed (Semester â€“ I)', '74', 'B.Ed', '68', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-09 01:13:36', 'No', 'Pursuing', '123', 'MJEDU', 'M J College Department of Education', 'Not Paid'),
(872, 'MJC962', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-09 01:37:28', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(873, 'MJC963', '47', NULL, '1', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-09 02:58:20', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(874, 'MJC964', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '15', 'PG SEMESTER EXAM', 'Semester', NULL, '2021-02-09 04:29:09', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(875, 'MJC965', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-09 08:26:50', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(876, 'MJC966', '42', NULL, '1', 'Bachelor of Computer Application (B.C.A.)', '16', 'B.C.A. Part-02', '12', 'UG ANNUAL EXAM', 'Year', NULL, '2021-02-09 09:19:59', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(877, 'MJC967', '26', NULL, '1', 'Computer Science (C.S.)', '133', 'PGDCA', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-09 22:27:25', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(878, 'MJC968', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-09 23:40:56', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(879, 'MJC969', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-09 23:50:06', 'No', 'Pursuing', 'dileshwarijanghel96@gmail.com', 'MJC', 'M J College', 'Not Paid'),
(880, 'MJC970', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-10 01:48:39', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(881, 'MJC971', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-10 23:53:44', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(882, 'MJC972', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-10 23:56:02', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(883, 'MJC973', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-11 00:07:12', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(884, 'MJC974', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-11 00:27:32', 'No', 'Pursuing', '123', 'MJC', 'M J College', 'Not Paid'),
(885, 'MJC975', '57', NULL, '1', 'Bachelor of Education (B. Ed.)', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Year', NULL, '2021-02-11 01:20:35', 'No', 'Pursuing', '', 'MJC', 'M J College', 'Not Paid'),
(886, 'MJEDU976', '47', NULL, '1', 'Finance', '23', 'B. Ed.', '13', 'UG SEMESTER EXAM', 'Semester', NULL, '2021-02-12 01:01:38', 'No', 'Pursuing', '123', 'MJEDU', 'M J College Department of Education', 'Not Paid');

-- --------------------------------------------------------

--
-- Table structure for table `student_course_type`
--

CREATE TABLE `student_course_type` (
  `id` int(11) NOT NULL,
  `course_type_id` varchar(50) DEFAULT NULL,
  `course_type_name` varchar(255) DEFAULT NULL,
  `created_by_id` varchar(100) DEFAULT NULL,
  `subject_id` varchar(50) DEFAULT NULL,
  `created_date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_course_type`
--

INSERT INTO `student_course_type` (`id`, `course_type_id`, `course_type_name`, `created_by_id`, `subject_id`, `created_date_time`) VALUES
(7, '7', 'B.Sc.', 'admin', '6', '2020-11-07 01:17:49'),
(9, '16', 'B.C.A. Part-02', 'admin', '12', '2020-11-10 23:57:30'),
(10, '17', 'B.C.A. Part-01', 'admin', '12', '2020-11-10 23:58:16'),
(11, '18', 'B.Com. Part-01', 'admin', '12', '2020-11-11 00:00:19'),
(12, '19', 'B.Com. Part-02', 'admin', '12', '2020-11-11 00:00:37'),
(13, '20', 'B.Com. Part-03', 'admin', '12', '2020-11-11 00:00:48'),
(14, '21', 'BBA', 'admin', '13', '2020-11-11 00:03:04'),
(15, '22', 'DCA', 'admin', '13', '2020-11-11 00:03:35'),
(16, '23', 'B. Ed.', 'admin', '13', '2020-11-11 00:05:54'),
(17, '24', 'M.Sc.', 'admin', '15', '2020-11-11 00:10:44'),
(18, '25', 'M.Com.', 'admin', '15', '2020-11-11 00:12:56'),
(20, '71', 'B.C.A. Part-3', 'MJGEAdmin', '12', '2020-11-27 03:44:34'),
(21, '73', 'D.El.Ed', 'MJGEAdmin', '67', '2020-11-27 03:57:18'),
(22, '74', 'B.Ed', 'MJGEAdmin', '68', '2020-11-27 03:58:00'),
(23, '75', 'M.Ed', 'MJGEAdmin', '70', '2020-11-27 03:58:34'),
(26, '81', 'PHARMACY (D. Pharmacy 1st Year)', 'MJGEAdmin', '79', '2020-11-27 21:22:34'),
(27, '82', 'PHARMACY (D. Pharmacy 2nd Year)', 'MJGEAdmin', '79', '2020-11-27 21:22:58'),
(28, '83', 'PHARMACY (B. Pharmacy 1st Semester)', 'MJGEAdmin', '76', '2020-11-27 21:23:28'),
(29, '84', 'PHARMACY (B. Pharmacy 2nd Semester)', 'MJGEAdmin', '76', '2020-11-27 21:23:39'),
(30, '85', 'PHARMACY (B. Pharmacy 3rd Semester)', 'MJGEAdmin', '76', '2020-11-27 21:23:49'),
(31, '86', 'PHARMACY (B. Pharmacy 4th Semester)', 'MJGEAdmin', '76', '2020-11-27 21:23:58'),
(32, '87', 'PHARMACY (B. Pharmacy 5th Semester)', 'MJGEAdmin', '76', '2020-11-27 21:24:12'),
(33, '88', 'PHARMACY (B. Pharmacy 6th Semester)', 'MJGEAdmin', '76', '2020-11-27 21:24:19'),
(34, '89', 'PHARMACY (B. Pharmacy 7th Semester)', 'MJGEAdmin', '76', '2020-11-27 21:24:26'),
(35, '90', 'PHARMACY (B. Pharmacy 8th Semester)', 'MJGEAdmin', '76', '2020-11-27 21:24:35'),
(36, '109', 'B.Sc Nursing', 'MJGEAdmin', '107', '2020-11-30 23:42:17'),
(37, '110', 'GNM Nursing', 'MJGEAdmin', '108', '2020-11-30 23:43:14'),
(38, '126', 'M Ed', 'MJGEAdmin', '67', '2020-12-26 01:54:34'),
(39, '127', 'M Ed', 'MJGEAdmin', '70', '2020-12-26 02:42:28'),
(40, '133', 'PGDCA', 'MJGEAdmin', '15', '2021-01-04 03:38:09'),
(41, '135', 'B.COM', 'MJGEAdmin', '12', '2021-01-06 02:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `student_qualification`
--

CREATE TABLE `student_qualification` (
  `id` int(11) NOT NULL,
  `Qualification` varchar(200) DEFAULT NULL,
  `School_Collage` varchar(255) DEFAULT NULL,
  `Board_University` varchar(255) DEFAULT NULL,
  `Subject_Studied` varchar(150) DEFAULT NULL,
  `Year_of_Passing` date DEFAULT NULL,
  `Marks` varchar(11) DEFAULT NULL,
  `created_by_id` varchar(100) DEFAULT NULL,
  `created_name` varchar(100) DEFAULT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `student_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_roll_no`
--

CREATE TABLE `student_roll_no` (
  `id` int(11) NOT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `father` varchar(255) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `course_name` varchar(200) DEFAULT NULL,
  `sem_year` varchar(50) DEFAULT NULL,
  `stdent_type` varchar(20) DEFAULT NULL,
  `created_date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_roll_no`
--

INSERT INTO `student_roll_no` (`id`, `roll_no`, `name`, `father`, `mobile`, `email`, `course_name`, `sem_year`, `stdent_type`, `created_date_time`) VALUES
(1, '23400040001', 'ABHISHEK SHOME', 'ANJAN SHOME', '7489633434', 'abhishekshome1234@gmail.com', 'Bachelor of Commerce', 'First Year', 'REGULAR', '2020-11-12 21:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `student_subjects`
--

CREATE TABLE `student_subjects` (
  `id` int(11) NOT NULL,
  `subject_id` varchar(50) NOT NULL DEFAULT '0',
  `subject_name` varchar(255) NOT NULL,
  `created_by_id` varchar(50) NOT NULL,
  `created_date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `college_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_subjects`
--

INSERT INTO `student_subjects` (`id`, `subject_id`, `subject_name`, `created_by_id`, `created_date_time`, `college_id`) VALUES
(8, '12', 'UG ANNUAL EXAM', 'MJGEAdmin', '2020-11-10 23:47:21', 'MJC'),
(9, '13', 'UG SEMESTER EXAM', 'MJGEAdmin', '2020-11-10 23:48:18', 'MJC'),
(10, '14', 'PG ANNUAL EXAM', 'MJGEAdmin', '2020-11-10 23:49:52', 'MJC'),
(11, '15', 'PG SEMESTER EXAM', 'MJGEAdmin', '2020-11-10 23:50:19', 'MJC'),
(14, '67', 'UG ANNUAL EXAM', 'MJGEAdmin', '2020-11-27 03:30:52', 'MJEDU'),
(15, '68', 'UG SEMESTER EXAM', 'MJGEAdmin', '2020-11-27 03:32:01', 'MJEDU'),
(16, '69', 'PG ANNUAL EXAM', 'MJGEAdmin', '2020-11-27 03:32:55', 'MJEDU'),
(17, '70', 'PG SEMESTER EXAM', 'MJGEAdmin', '2020-11-27 03:33:14', 'MJEDU'),
(18, '76', 'UG (SEMESTER)', 'MJGEAdmin', '2020-11-27 21:17:54', 'MJPH'),
(19, '79', 'DIPLOMA (ANNUAL)', 'MJGEAdmin', '2020-11-27 21:20:33', 'MJPH'),
(20, '107', 'UG ANNUAL EXAM NURSING', 'MJGEAdmin', '2020-11-30 23:36:18', 'MJCON'),
(21, '108', 'DIPLOMA NURSING', 'MJGEAdmin', '2020-11-30 23:39:18', 'MJCON');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_purchase_order`
--
ALTER TABLE `account_purchase_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_purchase_order_item`
--
ALTER TABLE `account_purchase_order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_quotation`
--
ALTER TABLE `account_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_quotation_item`
--
ALTER TABLE `account_quotation_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_requisition`
--
ALTER TABLE `account_requisition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_requisition_item`
--
ALTER TABLE `account_requisition_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_vendor`
--
ALTER TABLE `account_vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college_fee`
--
ALTER TABLE `college_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry_managemen`
--
ALTER TABLE `enquiry_managemen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guardian_details`
--
ALTER TABLE `guardian_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_data`
--
ALTER TABLE `master_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mj_staff`
--
ALTER TABLE `mj_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mj_student`
--
ALTER TABLE `mj_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office_item_category`
--
ALTER TABLE `office_item_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office_item_name`
--
ALTER TABLE `office_item_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_awords_recognition`
--
ALTER TABLE `staff_awords_recognition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_conference_attended`
--
ALTER TABLE `staff_conference_attended`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_designation`
--
ALTER TABLE `staff_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_experience`
--
ALTER TABLE `staff_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_other_details`
--
ALTER TABLE `staff_other_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_paper_publication_in_journals`
--
ALTER TABLE `staff_paper_publication_in_journals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_qualification`
--
ALTER TABLE `staff_qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_workshops_trainings_seminars_attended`
--
ALTER TABLE `staff_workshops_trainings_seminars_attended`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_course`
--
ALTER TABLE `student_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_course_applied`
--
ALTER TABLE `student_course_applied`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_course_type`
--
ALTER TABLE `student_course_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_qualification`
--
ALTER TABLE `student_qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_roll_no`
--
ALTER TABLE `student_roll_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_purchase_order`
--
ALTER TABLE `account_purchase_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `account_purchase_order_item`
--
ALTER TABLE `account_purchase_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `account_quotation`
--
ALTER TABLE `account_quotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `account_quotation_item`
--
ALTER TABLE `account_quotation_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `account_requisition`
--
ALTER TABLE `account_requisition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `account_requisition_item`
--
ALTER TABLE `account_requisition_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `account_vendor`
--
ALTER TABLE `account_vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `college_fee`
--
ALTER TABLE `college_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `enquiry_managemen`
--
ALTER TABLE `enquiry_managemen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guardian_details`
--
ALTER TABLE `guardian_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_data`
--
ALTER TABLE `master_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mj_staff`
--
ALTER TABLE `mj_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `mj_student`
--
ALTER TABLE `mj_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=960;

--
-- AUTO_INCREMENT for table `office_item_category`
--
ALTER TABLE `office_item_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `office_item_name`
--
ALTER TABLE `office_item_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `staff_awords_recognition`
--
ALTER TABLE `staff_awords_recognition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff_conference_attended`
--
ALTER TABLE `staff_conference_attended`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff_designation`
--
ALTER TABLE `staff_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_experience`
--
ALTER TABLE `staff_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `staff_other_details`
--
ALTER TABLE `staff_other_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `staff_paper_publication_in_journals`
--
ALTER TABLE `staff_paper_publication_in_journals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staff_qualification`
--
ALTER TABLE `staff_qualification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `staff_workshops_trainings_seminars_attended`
--
ALTER TABLE `staff_workshops_trainings_seminars_attended`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_course`
--
ALTER TABLE `student_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `student_course_applied`
--
ALTER TABLE `student_course_applied`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=887;

--
-- AUTO_INCREMENT for table `student_course_type`
--
ALTER TABLE `student_course_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `student_qualification`
--
ALTER TABLE `student_qualification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_roll_no`
--
ALTER TABLE `student_roll_no`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_subjects`
--
ALTER TABLE `student_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
