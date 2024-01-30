-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2024 at 08:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_template`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `actId` int(11) NOT NULL,
  `actName` text NOT NULL,
  `actDate` varchar(20) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`actId`, `actName`, `actDate`, `date_added`) VALUES
(2, 'Activity 5', '2022-12-23', '0000-00-00 00:00:00'),
(3, 'Activity 3', '2022-12-10', '2022-12-11 00:00:00'),
(4, 'Activity 2', '2022-12-11', '2022-12-11 00:00:00'),
(5, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Rem, ipsum delectus voluptatum? Molestias aut inventore eaque, maxime numquam dignissimos asperiores, voluptatibus consectetur distinctio excepturi odit architecto, saepe enim sunt, molestiae.', '2022-12-11', '2022-12-11 00:00:00'),
(6, 'sample', '2022-12-27', '2022-12-27 00:00:00'),
(8, 'gfdgfd', '2023-01-06', '2022-12-27 00:00:00'),
(9, 'Announcement sample', '2023-01-09', '2023-01-16 00:00:00'),
(10, 'SAMple', '2023-01-24', '2023-01-16 00:00:00'),
(11, 'yhfng', '2023-02-13', '2023-02-05 00:00:00'),
(12, 'smaple', '2023-07-28', '2023-07-08 00:00:00'),
(13, 'sadsadsa', '2023-07-29', '2023-07-08 07:51:00'),
(14, 'samples', '2023-09-07', '2023-09-20 08:26:00'),
(16, 'dsadsadasdsa', '2023-11-16', '2023-10-24 15:58:49'),
(17, 'akoa kinis', '2023-12-09', '2023-10-24 15:59:24'),
(18, 'dfss', '2023-12-18', '2023-12-18 06:48:00'),
(19, 'Smaple', '2023-12-26', '2023-12-18 19:03:50'),
(20, 'dsa', '2023-12-28', '2023-12-18 19:17:01'),
(23, 'dsadadada', '2024-01-30', '2024-01-26 01:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `log_history`
--

CREATE TABLE `log_history` (
  `log_Id` int(11) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `login_datetime` datetime NOT NULL,
  `logout_datetime` datetime NOT NULL,
  `logout_remarks` int(11) NOT NULL DEFAULT 0 COMMENT '0=Logged out successfully, 1=Unable to logout last login'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `log_history`
--

INSERT INTO `log_history` (`log_Id`, `user_Id`, `login_datetime`, `logout_datetime`, `logout_remarks`) VALUES
(81, 66, '2024-01-07 14:22:11', '2024-01-07 14:25:59', 0),
(82, 87, '2024-01-07 14:26:03', '2024-01-07 14:27:24', 0),
(83, 66, '2024-01-07 14:29:23', '2024-01-07 14:30:38', 0),
(84, 66, '2024-01-13 22:23:59', '0000-00-00 00:00:00', 1),
(85, 66, '2024-01-16 04:25:09', '2024-01-16 04:47:29', 0),
(86, 66, '2024-01-21 20:19:30', '2024-01-21 20:30:41', 0),
(87, 66, '2024-01-23 10:09:20', '2024-01-23 10:19:37', 0),
(88, 66, '2024-01-26 00:11:49', '2024-01-26 00:13:53', 0),
(89, 87, '2024-01-26 00:14:00', '2024-01-26 00:24:31', 0),
(90, 66, '2024-01-26 01:27:20', '2024-01-26 01:44:31', 0),
(91, 87, '2024-01-26 02:16:16', '2024-01-26 02:26:16', 0),
(92, 66, '2024-01-26 02:30:25', '2024-01-26 02:40:21', 0),
(93, 66, '2024-01-26 02:41:46', '2024-01-26 02:46:28', 0),
(94, 87, '2024-01-26 02:46:55', '2024-01-26 02:50:37', 0),
(95, 66, '2024-01-26 02:50:44', '2024-01-26 02:54:37', 0),
(96, 66, '2024-01-29 22:01:51', '2024-01-29 22:03:54', 0),
(97, 66, '2024-01-30 22:52:57', '2024-01-30 23:28:58', 0),
(98, 66, '2024-01-31 03:22:04', '2024-01-31 03:51:11', 0),
(99, 87, '2024-01-31 03:51:16', '2024-01-31 03:54:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_Id` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `suffix` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `birthplace` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `civilstatus` varchar(20) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `house_no` varchar(50) DEFAULT NULL,
  `street_name` varchar(100) DEFAULT NULL,
  `purok` varchar(50) DEFAULT NULL,
  `zone` varchar(50) DEFAULT NULL,
  `barangay` varchar(50) DEFAULT NULL,
  `municipality` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT 'User',
  `verification_code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_Id`, `firstname`, `middlename`, `lastname`, `suffix`, `dob`, `age`, `email`, `contact`, `birthplace`, `gender`, `civilstatus`, `occupation`, `religion`, `house_no`, `street_name`, `purok`, `zone`, `barangay`, `municipality`, `province`, `region`, `image`, `password`, `user_type`, `verification_code`, `created_at`) VALUES
(66, 'Admin', '', 'Admin', 'Admin', '1995-03-02', 28, 'admin@gmail.com', '9359428963', 'Female', 'Male', 'Single', 'Admin', 'Iglesia Ni Cristo', 'Dsas', 'Admin', 'Admin', 'Dsa', 'Admin', 'Admin', '', 'Admins', '2.jpg', '0192023a7bbd73250516f069df18b500', 'Admin', NULL, '2022-11-24 16:00:00'),
(72, 'Userdss', 'User', 'User', 'Jr', '2022-12-21', 5, 'user@gmail.com', '9359428963', 'gfdgfdg', 'Male', 'Married', 'gfdgfdgd', 'Buddhist', 'gfdg', 'fdg', 'gdfgdg', 'gfdg', 'dfgd', 'fdgdg', 'fdg', 'dfg', '2.jpg', '0192023a7bbd73250516f069df18b500', 'Staff', 295016, '2022-12-26 16:00:00'),
(86, 'SampleSample Sample', 'Sample Sample Sample', 'Sample Sample', 'Sample', '2008-02-27', 15, 'adminfdsfsfs@gmail.com', '9123456789', 'Samplef Fsdfsd', 'Male', 'Single', 'Sampleff Fsdfds', 'Evangelical Christianity', 'Fdfds Fdsf', 'Fsfsdfsdds ', 'Sf Fsdff', 'Fsdfsdfsdfs Fdsf Sfs', 'Fdsfd Fsfs Fs', 'Fdsfds', 'Fsdffdsf', 'Sdfsd', 'pexels-photo-2379005.jpeg', '0192023a7bbd73250516f069df18b500', 'Staff', 0, '2023-12-18 11:19:29'),
(87, 'Lestesd', 'Leste', 'Leste', 'Leste', '1986-02-26', 37, 'sonerwin12@gmail.com', '9123456789', 'Leste', 'Female', 'Widow/ER', 'Leste', 'Iglesia Ni Cristo', 'Leste', 'Leste', 'Leste', 'Leste', 'Leste', 'Leste', '', 'Leste', 'pexels-photo-1855582.jpeg', '0192023a7bbd73250516f069df18b500', 'User', 192273, '2023-12-18 11:22:55'),
(88, 'Leste', 'Leste', 'Leste', 'Leste', '1989-03-02', 34, 'sonerLestewin8@gmail.com', '9359428963', 'Leste', 'Male', 'Single', 'Leste', 'Jehovah\'s Witnesses', 'Leste', 'Leste', 'LesteLeste', 'Leste', 'Leste', 'Leste', 'Medellin', 'Leste', '3.jpg', '5bb3fd0bd3e6c36990367456eee83314', 'User', NULL, '2024-01-30 19:21:25'),
(89, 'Staffko', 'Staffko', 'Staffko', '', '1985-02-27', 38, 'sonerwin8Staffko@gmail.com', '9359428963', 'Staffko', 'Male', 'Single', 'Staffko', 'Iglesia Ni Cristo', 'Staffko', 'Staffko', 'Staffko', 'Staffko', 'Staffko', 'Staffko', 'Staffkos', 'Staffko', '2.jpg', '5bb3fd0bd3e6c36990367456eee83314', 'Staff', NULL, '2024-01-30 19:24:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`actId`);

--
-- Indexes for table `log_history`
--
ALTER TABLE `log_history`
  ADD PRIMARY KEY (`log_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `actId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `log_history`
--
ALTER TABLE `log_history`
  MODIFY `log_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
