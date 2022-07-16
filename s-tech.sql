-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2022 at 10:33 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s-tech`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin_tb`
--

CREATE TABLE `adminlogin_tb` (
  `a_email` varchar(50) NOT NULL,
  `a_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin_tb`
--

INSERT INTO `adminlogin_tb` (`a_email`, `a_password`) VALUES
('santosh@gmail.com', '4c4a6f76ec96847694ff543ae818410c');

-- --------------------------------------------------------

--
-- Table structure for table `assignwork_tb`
--

CREATE TABLE `assignwork_tb` (
  `request_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `sub_type` varchar(50) NOT NULL,
  `message` varchar(50) NOT NULL,
  `assign_tech` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Assigned',
  `assign_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignwork_tb`
--

INSERT INTO `assignwork_tb` (`request_id`, `name`, `address`, `email`, `phone`, `type`, `sub_type`, `message`, `assign_tech`, `status`, `assign_time`) VALUES
(5, 'user1', '', 'user1@gmail.com', '9810000000', 'Network', 'Office Network', 'dsads', 'Tech_4', 'Assigned', '2022-06-03 14:06:39');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form_tb`
--

CREATE TABLE `contact_form_tb` (
  `f_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `message` varchar(100) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_form_tb`
--

INSERT INTO `contact_form_tb` (`f_id`, `email`, `name`, `message`, `date_time`) VALUES
(1, 'santosh@gmail.com', 'Santosh Poudel', 'Hello world!', '2022-06-03 13:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `service_history`
--

CREATE TABLE `service_history` (
  `request_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `sub_type` varchar(50) NOT NULL,
  `message` varchar(100) NOT NULL,
  `assign_tech` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Requested',
  `requested_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `completed_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_history`
--

INSERT INTO `service_history` (`request_id`, `name`, `address`, `phone`, `email`, `type`, `sub_type`, `message`, `assign_tech`, `status`, `requested_date`, `completed_date`) VALUES
(4, 'user1', 'add1', '9810000000', 'user1@gmail.com', 'Software', 'Web Application', 'sdda', 'Tech_2', 'Completed', '2022-06-03 13:46:37', '2022-06-03 13:46:37'),
(5, 'user1', 'add1', '9810000000', 'user1@gmail.com', 'Network', 'Office Network', 'dsads', 'Tech_4', 'Assigned', '2022-06-03 14:06:39', '0000-00-00 00:00:00'),
(6, 'user1', 'add1', '9810000000', 'user1@gmail.com', 'Other', 'n/a', 'asdasd', '', 'Requested', '2022-06-03 14:02:00', '0000-00-00 00:00:00'),
(7, 'user2', 'add2', '982000000', 'user2@gmail.com', 'Hardware', 'Desktop', 'I need repair my desktop.', '', 'Requested', '2022-06-04 07:49:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `service_request`
--

CREATE TABLE `service_request` (
  `request_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `sub_type` varchar(50) NOT NULL,
  `message` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `req_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_request`
--

INSERT INTO `service_request` (`request_id`, `name`, `address`, `email`, `phone`, `type`, `sub_type`, `message`, `status`, `req_time`) VALUES
(6, 'user1', 'add1', 'user1@gmail.com', '9810000000', 'Other', 'n/a', 'asdasd', '', '2022-06-03 14:02:00'),
(7, 'user2', 'add2', 'user2@gmail.com', '982000000', 'Hardware', 'Desktop', 'I need repair my desktop.', '', '2022-06-04 07:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `technician_tb`
--

CREATE TABLE `technician_tb` (
  `tech_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `technician_tb`
--

INSERT INTO `technician_tb` (`tech_id`, `name`, `address`, `phone`, `email`) VALUES
(1, 'Tech_1', 'Add_1', '9810000000', 'tech_1@gmail.com'),
(2, 'Tech_2', 'Add_2', '9820000000', 'tech_2@gmail.com'),
(3, 'Tech_3', 'Add_3', '9830000000', 'tech_3@gmail.com'),
(4, 'Tech_4', 'Add_4', '9840000000', 'tech_4@gmail.com'),
(5, 'Tech_5', 'Add_5', '9850000000', 'tech_5@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `reg_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `address`, `phone`, `email`, `password`, `reg_time`) VALUES
(2, 'user1', 'add1', '9810000000', 'user1@gmail.com', '24c9e15e52afc47c225b757e7bee1f9d', '2022-06-03 13:29:55'),
(3, 'user2', 'add2', '982000000', 'user2@gmail.com', '7e58d63b60197ceb55a1c487989a3720', '2022-06-03 13:30:23'),
(4, 'user3', 'add3', '9830000000', 'user3@gmail.com', '92877af70a45fd6a2ed7fe81e1236b78', '2022-06-03 13:30:55'),
(5, 'user4', 'add4', '9840000000', 'user4@gmail.com', '3f02ebe3d7929b091e3d8ccfde2f3bc6', '2022-06-03 13:31:19'),
(6, 'user5', 'add5', '9850000000', 'user5@gmail.com', '0a791842f52a0acfbb3a783378c066b8', '2022-06-03 13:31:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  ADD PRIMARY KEY (`a_email`);

--
-- Indexes for table `assignwork_tb`
--
ALTER TABLE `assignwork_tb`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `contact_form_tb`
--
ALTER TABLE `contact_form_tb`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `service_history`
--
ALTER TABLE `service_history`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `service_request`
--
ALTER TABLE `service_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `technician_tb`
--
ALTER TABLE `technician_tb`
  ADD PRIMARY KEY (`tech_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignwork_tb`
--
ALTER TABLE `assignwork_tb`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_form_tb`
--
ALTER TABLE `contact_form_tb`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_history`
--
ALTER TABLE `service_history`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service_request`
--
ALTER TABLE `service_request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `technician_tb`
--
ALTER TABLE `technician_tb`
  MODIFY `tech_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
