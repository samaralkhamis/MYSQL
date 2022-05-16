-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 02:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_info`
--

CREATE TABLE `account_info` (
  `acc_no` int(11) NOT NULL,
  `acc_type` varchar(60) NOT NULL,
  `cust_id` int(14) NOT NULL,
  `acc_status` varchar(60) NOT NULL,
  `acc_activation_date` datetime(6) NOT NULL,
  `total_bal` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_info`
--

INSERT INTO `account_info` (`acc_no`, `acc_type`, `cust_id`, `acc_status`, `acc_activation_date`, `total_bal`) VALUES
(62009702, 'saving', 1, 'Activate', '2022-05-11 02:49:04.000000', 9000009),
(62009705, 'suspended', 2, 'Activate', '2022-05-11 02:49:04.000000', 9000008);

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `Cust_id` int(14) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `dob` date NOT NULL,
  `street` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `State` varchar(50) NOT NULL,
  `pin_code` int(14) NOT NULL,
  `email_id` int(14) NOT NULL,
  `phone_no` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`Cust_id`, `Name`, `dob`, `street`, `city`, `State`, `pin_code`, `email_id`, `phone_no`) VALUES
(1, 'Samar Ahmad', '1998-03-14', 'mahdood', 'aqaba', 'jordan', 123456, 123456, 777564636),
(2, 'Omar Ibraheem', '2021-08-18', 'mahdood', 'aqaba', 'jordan', 123457, 123457, 777564635);

-- --------------------------------------------------------

--
-- Table structure for table `preferred_customer_info`
--

CREATE TABLE `preferred_customer_info` (
  `rel_manager_id` int(14) NOT NULL,
  `cust_id` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `preferred_customer_info`
--

INSERT INTO `preferred_customer_info` (`rel_manager_id`, `cust_id`) VALUES
(11, 1),
(12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `relationship_manager_info`
--

CREATE TABLE `relationship_manager_info` (
  `rel_manager_id` int(14) NOT NULL,
  `rel_manager_name` varchar(60) NOT NULL,
  `bank_branch` varchar(60) NOT NULL,
  `pin_code` int(60) NOT NULL,
  `email_id` varchar(60) NOT NULL,
  `phone_no` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relationship_manager_info`
--

INSERT INTO `relationship_manager_info` (`rel_manager_id`, `rel_manager_name`, `bank_branch`, `pin_code`, `email_id`, `phone_no`) VALUES
(11, 'Sam', 'karak', 123456, 'Alkhamissamar@gmail.com', 777564636),
(12, 'ibraheem', 'amman', 123457, 'Alkhamis@gmail.com', 777564635);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_info`
--
ALTER TABLE `account_info`
  ADD UNIQUE KEY `acc_no` (`acc_no`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`Cust_id`);

--
-- Indexes for table `preferred_customer_info`
--
ALTER TABLE `preferred_customer_info`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `relationship_manager_info`
--
ALTER TABLE `relationship_manager_info`
  ADD PRIMARY KEY (`rel_manager_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_info`
--
ALTER TABLE `account_info`
  MODIFY `acc_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62009706;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `Cust_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
