-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 04:39 PM
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
-- Database: `tasks_wensday11_5`
--

-- --------------------------------------------------------

--
-- Table structure for table `country_new`
--

CREATE TABLE `country_new` (
  `country_id` varchar(4) NOT NULL,
  `Country_name` varchar(60) NOT NULL,
  `region_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country_new`
--

INSERT INTO `country_new` (`country_id`, `Country_name`, `region_id`) VALUES
('AR', 'Argentina', 2),
('AU', 'Argentina', 3),
('BR', 'Brazil', 2),
('CA', 'Canda', 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPARTMENT_ID` int(14) NOT NULL,
  `DEPARTMENT_NAME` varchar(60) NOT NULL,
  `MANAGER_ID` int(14) NOT NULL,
  `LOCATION_ID` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPARTMENT_ID`, `DEPARTMENT_NAME`, `MANAGER_ID`, `LOCATION_ID`) VALUES
(10, 'Administration', 200, 1700),
(11, 'Marketing', 201, 1800),
(13, 'Purchasing', 114, 1700),
(14, 'Human Resource', 203, 2400),
(15, 'Shipping', 121, 1500),
(16, 'IT', 10, 0),
(17, 'Shipping', 121, 1500),
(18, 'IT', 103, 1400),
(19, 'Public Relation', 204, 2700),
(20, 'Sales', 145, 2500),
(60, 'Human Resource', 105, 1700);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(60) NOT NULL,
  `LAST_NAME` varchar(60) NOT NULL,
  `EMAIL` varchar(60) NOT NULL,
  `PHONE_NUMMBER` int(14) NOT NULL,
  `HIRE_DATE` date NOT NULL,
  `JOB_ID` varchar(14) NOT NULL,
  `SALARY` int(14) NOT NULL,
  `COMMISTION_PCT` int(14) NOT NULL,
  `MANAGER_ID` int(14) NOT NULL,
  `DEPARTMENT_ID` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE_NUMMBER`, `HIRE_DATE`, `JOB_ID`, `SALARY`, `COMMISTION_PCT`, `MANAGER_ID`, `DEPARTMENT_ID`) VALUES
(100, 'Steven', 'King', 'Sking', 515, '1987-06-17', 'AD-PRESS', 240000, 0, 0, 10),
(101, 'Neena', 'ahmad', 'Nahmad', 515, '1987-06-18', 'AD-VIP', 17000, 0, 100, 20),
(102, 'Lex', 'DeHaan', 'LDEHAN', 515, '1987-06-19', 'IT-PROG', 17000, 0, 101, 30),
(103, 'VALLI', 'PATABALLA', 'VPATABAL', 590, '1987-06-23', 'IT-PROG', 4800, 0, 102, 40),
(104, 'DAVID', 'AUSTIN', '590.426', 590, '1987-06-22', 'IT-PROG', 4800, 0, 103, 50),
(105, 'Samar', 'ahmad', 'Samarahmad', 516, '2022-05-03', 'AD-VIP', 17000, 0, 104, 60),
(106, '', '', '', 0, '0000-00-00', '', 0, 0, 0, 0),
(107, 'Samar', 'ahmad', 'Samarahmad', 516, '2022-05-03', 'AD-VIP', 17000, 0, 104, 60);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `sreet_address` varchar(255) NOT NULL,
  `postal_code` varchar(14) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state_province` varchar(60) NOT NULL,
  `country_id` varchar(50) NOT NULL,
  `region_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `sreet_address`, `postal_code`, `city`, `state_province`, `country_id`, `region_id`) VALUES
(1000, '1297 via cola di rie', '989', 'roma', '', 'it', NULL),
(1001, '93091 calle della te ', '10934', 'venice ', '', 'IT', NULL),
(1002, '2017 shinjuku-ku', '1689', 'Tokyo', 'Tokyo perfectu', 'JP', NULL),
(1003, '9450 Kamiys-cho', '6323', 'Hiroshima', '', 'JP', NULL),
(1004, '2014 Jabbrwocky Rd', '26192', 'Southhlake', 'Texas', 'US', NULL),
(1005, '147 Spadina Ave ', 'M5V 2L7', 'Tronto', 'Ontrio', 'CA', NULL),
(1700, '142 london street', '1689', 'london', 'london', 'LO', NULL),
(1702, '9450 Kaiy-cho', '6325', 'venice ', '5', '', 'londoo'),
(1703, '9450 Kaiy-cho', '6325', 'venice ', '5', '', 'londoo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country_new`
--
ALTER TABLE `country_new`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPARTMENT_ID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EMPLOYEE_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `country_id` (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DEPARTMENT_ID` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1704;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
