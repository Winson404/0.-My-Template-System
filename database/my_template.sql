-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 11:24 AM
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
  `date_added` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`actId`, `actName`, `actDate`, `date_added`) VALUES
(2, 'Activity 5', '2022-12-23', ''),
(3, 'Activity 3', '2022-12-10', '2022-12-11'),
(4, 'Activity 2', '2022-12-11', '2022-12-11'),
(5, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Rem, ipsum delectus voluptatum? Molestias aut inventore eaque, maxime numquam dignissimos asperiores, voluptatibus consectetur distinctio excepturi odit architecto, saepe enim sunt, molestiae.', '2022-12-11', '2022-12-11'),
(6, 'sample', '2022-12-27', '2022-12-27'),
(8, 'gfdgfd', '2023-01-06', '2022-12-27'),
(9, 'Announcement sample', '2023-01-09', '2023-01-16'),
(10, 'SAMple', '2023-01-24', '2023-01-16'),
(11, 'yhfng', '2023-02-13', '2023-02-05'),
(12, 'smaple', '2023-07-28', '2023-07-08'),
(13, 'sadsadsa', '2023-07-29', '2023-07-08 07:51 PM'),
(14, 'samples', '2023-09-07', '2023-09-20 08:26 PM'),
(16, 'dsadsadasdsa', '2023-11-16', '2023-10-24 15:58:49'),
(17, 'akoa kinis', '2023-12-09', '2023-10-24 15:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `log_history`
--

CREATE TABLE `log_history` (
  `log_Id` int(11) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `login_time` varchar(100) NOT NULL,
  `logout_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `log_history`
--

INSERT INTO `log_history` (`log_Id`, `user_Id`, `login_time`, `logout_time`) VALUES
(45, 66, '2023-12-18 03:36 PM', '2023-12-18 03:36:59'),
(46, 66, '2023-12-18 03:36 PM', '2023-12-18 03:36:59'),
(47, 66, '2023-12-18 03:37 PM', '2023-12-18 03:39:29'),
(48, 66, '2023-12-18 03:44 PM', '2023-12-18 03:44:44'),
(49, 66, '2023-12-18 03:44 PM', '2023-12-18 03:44:44'),
(50, 72, '2023-12-18 03:45 PM', '2023-12-18 03:45:24'),
(51, 66, '2023-12-18 03:48 PM', '2023-12-18 03:51:08'),
(52, 66, '2023-12-18 05:17 PM', ''),
(53, 66, '2023-12-18 05:22 PM', '2023-12-18 05:23:02'),
(54, 66, '2023-12-18 05:24 PM', '2023-12-18 05:42:34'),
(55, 66, '2023-12-18 05:43 PM', '2023-12-18 06:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_Id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `suffix` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `age` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `civilstatus` varchar(50) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `house_no` varchar(255) NOT NULL,
  `street_name` varchar(255) NOT NULL,
  `purok` varchar(255) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `municipality` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'User',
  `verification_code` int(11) NOT NULL,
  `date_registered` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_Id`, `firstname`, `middlename`, `lastname`, `suffix`, `dob`, `age`, `email`, `contact`, `birthplace`, `gender`, `civilstatus`, `occupation`, `religion`, `house_no`, `street_name`, `purok`, `zone`, `barangay`, `municipality`, `province`, `region`, `image`, `password`, `user_type`, `verification_code`, `date_registered`) VALUES
(66, 'Admin', 'Admin', 'Admin', 'Admin', '2023-10-11', '1 week old', 'admin@gmail.com', '9359428963', 'Female', 'Male', 'Single', 'Admin', 'United Church of Christ in the Philippines', 'dsas', 'Admin', 'Admin', 'dsa', 'Admin', 'Admin', '', 'Admin', 'antelope-canyon-lower-canyon-arizona.jpg', '0192023a7bbd73250516f069df18b500', 'Admin', 374025, '2022-11-25'),
(72, 'Userdss', 'User', 'User', 'Jr', '2022-12-21', '5 days old', 'user@gmail.com', '9359428963', 'gfdgfdg', 'Male', 'Married', 'gfdgfdgd', 'Buddhist', 'gfdg', 'fdg', 'gdfgdg', 'gfdg', 'dfgd', 'fdgdg', 'fdg', 'dfg', '2.jpg', '0192023a7bbd73250516f069df18b500', 'Staff', 295016, '2022-12-27'),
(73, 'Sampleddd', 'Sample', 'Sample', '', '2023-10-02', '1 week old', 'sonerwin12@gmail.com', '9359428963', 'Sample', 'Female', 'Single', 'Sample', 'Methodist', 'Sample', 'Sample', 'Sample', 'Sample', 'Sample', 'Sample', 'Sample', 'Sample', '', '0192023a7bbd73250516f069df18b500', 'Admin', 444307, '2023-10-10'),
(79, 'Samples', 'Sampless', 'Samples', 'Samples', '2022-03-02', '1 year old', 'admSampleinsss@gmail.com', '9359428962', 'Samples', 'Female', 'Single', 'Samples', 'Hindu', 'Samples', 'Sampless', 'Samples', 'Samples', 'Samples', 'Samples', 'Samples', 'Samples', 'barna.png', 'a2dc1592be8cd31d4395d016917d941c', 'User', 0, '2023-10-24'),
(80, 'pass', 'Pass', 'Pass', '', '2023-10-05', '2 weeks old', 'adPassmin@gmail.com', '9359428963', 'Pass', 'Male', 'Single', 'Pass', 'Buddhist', 'Pass', 'Pass', 'Pass', 'Pass', 'Pass', 'Pass', 'Pass', 'Pass', '4.jpg', '$2y$10$c6aPaM3e4xYmjogT.5/JzeSWNZIwPSu.0pVQ3cuneDJYmfVkPCdfy', 'Staff', 0, '2023-10-24'),
(81, 'New User', 'New User', 'New User', 'New User', '2023-10-05', '2 weeks old', 'admiNewUsern@gmail.com', '9359428963', 'New User', 'Male', 'Single', 'New User', 'Iglesia Ni Cristo', 'New User', 'New User', 'New User', 'New User', 'New User', 'New User', 'New User', 'New User', '1.jpg', 'clement.png', 'User', 0, '2023-10-24'),
(82, 'NewAdmin', 'NewAdmin', 'NewAdmin', 'NewAdmin', '2023-10-05', '2 weeks old', 'NewAdminadmin@gmail.com', '9359428963', 'NewAdmin', 'Male', 'Single', 'NewAdmin', 'United Church of Christ in the Philippines', 'NewAdmin', 'NewAdmin', 'NewAdmin', 'NewAdmin', 'NewAdmin', 'NewAdmin', 'NewAdmin', 'NewAdmin', 'anne.png', '$2y$10$hXwk8dK0ju7XEsEXYm4.NuGnwMfFPt9khZKbHKbKkdaosR0g2wM2S', 'Staff', 0, '2023-10-24'),
(83, 'NewAdmin', 'NewAdminNewAdmin', 'NewAdmin', 'NewAdmin', '2023-10-10', '2 weeks old', 'adNewAdminmin@gmail.com', '9359428963', 'NewAdmin', 'Male', 'Married', 'NewAdmin', 'Jehovah\'s Witnesses', 'NewAdmin', 'NewAdminNewAdmin', 'NewAdmin', 'NewAdmin', 'NewAdminNewAdmin', 'NewAdmin', 'NewAdminNewAdmin', 'NewAdmin', 'atec.png', '$2y$10$x0N5Mqk7grE.KgkmHC32COLPBjc9vmwycVD.LZ732pz1IeM815S46', 'Admin', 0, '2023-10-24'),
(84, 'DSA', 'DADAS', 'DSAD', 'SADSA', '2023-12-06', '1 week old', 'jethDSA3ro@gmail.com', '9359428963', 'DSA', 'Female', 'Married', 'DSADSA', 'Judaism', 'fds', 'fdsfd', 'sfsdfs', 'dsfsdfsd', 'fsdsdfsdf', 'fsdfsf', 'dsfs', 'dsfsdfsf', '2.jpg', '0192023a7bbd73250516f069df18b500', 'User', 0, '2023-12-18'),
(85, 'dsa', 'dsad', 'asdsad', 'as', '2009-07-09', '14 years old', 'jeth342dsfro@gmail.com', '9359428963', 'dsa', 'Female', 'Married', 'dsad', 'Judaism', 'fds', 'fsfsd', 'fds', 'fds', 'fdsf', 'fdsf', 'dsfs', 'dsfdsfsf', '2.jpg', '0192023a7bbd73250516f069df18b500', 'User', 0, '2023-12-18');

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
  MODIFY `actId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `log_history`
--
ALTER TABLE `log_history`
  MODIFY `log_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
