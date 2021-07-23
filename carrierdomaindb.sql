-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 09:12 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrierdomaindb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminregister`
--

CREATE TABLE `adminregister` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mob` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminregister`
--

INSERT INTO `adminregister` (`id`, `name`, `mob`, `email`, `address`, `username`, `password`) VALUES
(1, 'Rita Jadhav', '', 'ritajadhav09@gmail.com', '', 'admin', '123'),
(2, 'Dipti', '6363336929', 'diptithool11@gmail.com', ' plot no. 206\r\naaradhana nagar dighori ring road\r\nnagpur Nagpur (M Corp.) Maharashtra India 440009', 'dipti', '123');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `appointmentnum` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `mobile` text NOT NULL,
  `aadhar` text NOT NULL,
  `address` text NOT NULL,
  `visitdept` text NOT NULL,
  `persondept` text NOT NULL,
  `visitreason` text NOT NULL,
  `visitdate` text NOT NULL,
  `visittime` text NOT NULL,
  `vehicalnum` text NOT NULL,
  `noofperson` text NOT NULL,
  `other` text NOT NULL,
  `status` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `userid`, `appointmentnum`, `name`, `email`, `mobile`, `aadhar`, `address`, `visitdept`, `persondept`, `visitreason`, `visitdate`, `visittime`, `vehicalnum`, `noofperson`, `other`, `status`) VALUES
(1, 1, 137119, 'RITA SHANKAR JADHAV', 'ritajadhav09@gmail.com', '7887510952', '550137745282', 'plot no. 206\r\naaradhana nagar dighori ring road Nagpur (M Corp.) Maharashtra India 440009', 'Production', 'null', 'meeting', '2021-04-29', '05:51', 'MH 31 7887', '2', 'nothing', 'Yet Not Visited');

-- --------------------------------------------------------

--
-- Table structure for table `employeeregister`
--

CREATE TABLE `employeeregister` (
  `id` int(11) NOT NULL,
  `employeeid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `mob` text NOT NULL,
  `address` text NOT NULL,
  `dept` text NOT NULL,
  `post` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeregister`
--

INSERT INTO `employeeregister` (`id`, `employeeid`, `name`, `email`, `mob`, `address`, `dept`, `post`) VALUES
(1, 100, 'SHALINI SHANKAR JADHAV', 'null', '8888839344', ' plot no. 206\r\naaradhana nagar dighori ring road\r\nnagpur Nagpur (M Corp.) Maharashtra India 440009', 'Research and Development', 'Purchasing'),
(2, 101, 'Neha Shankar Jadhav', 'null', '8888839345', ' plot no. 206\r\naaradhana nagar dighori ring road Nagpur (M Corp.) Maharashtra India 440009', 'Human Resource Management', 'Recruitment Manager'),
(3, 102, 'Nisha shankar jadhav', 'null', '8208965333', ' plot no. 287\r\nsawarbhandhe layout\r\nhudkeshwar road nagpur MAHARASHTRA India 440034', 'Human Resource Management', 'Vice President'),
(4, 103, 'RITA SHANKAR JADHAV', 'null', '7887510952', ' plot no. 206\r\naaradhana nagar dighori ring road Nagpur (M Corp.) Maharashtra India 440009', 'Research and Development', 'President');

-- --------------------------------------------------------

--
-- Table structure for table `guardregister`
--

CREATE TABLE `guardregister` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `guardnumber` int(11) NOT NULL,
  `mob` text NOT NULL,
  `aadhar` text NOT NULL,
  `address` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `guardshift` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guardregister`
--

INSERT INTO `guardregister` (`id`, `name`, `guardnumber`, `mob`, `aadhar`, `address`, `username`, `password`, `guardshift`) VALUES
(1, 'Darshan shankar jadhav', 135358, '7887510952', '550137745282', ' plot no. 206\r\naaradhana nagar dighori ring road Nagpur (M Corp.) Near satpuda bar India 440009', 'guard', '123', 'Production');

-- --------------------------------------------------------

--
-- Table structure for table `userregister`
--

CREATE TABLE `userregister` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `status` int(11) NOT NULL,
  `otp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregister`
--

INSERT INTO `userregister` (`id`, `name`, `email`, `username`, `password`, `status`, `otp`) VALUES
(1, 'RITA SHANKAR JADHAV', 'ritajadhav09@gmail.com', 'ritajadhav', '123', 1, 783337);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminregister`
--
ALTER TABLE `adminregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeeregister`
--
ALTER TABLE `employeeregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guardregister`
--
ALTER TABLE `guardregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregister`
--
ALTER TABLE `userregister`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminregister`
--
ALTER TABLE `adminregister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employeeregister`
--
ALTER TABLE `employeeregister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `guardregister`
--
ALTER TABLE `guardregister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `userregister`
--
ALTER TABLE `userregister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
