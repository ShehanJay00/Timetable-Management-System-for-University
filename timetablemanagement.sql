-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2023 at 07:43 PM
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
-- Database: `timetablemanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'Admin', 'admin'),
(2, 'Milindu', 'admin'),
(3, 'Thurunu', 'user'),
(4, 'Shehan', '12345678'),
(5, 'Shehan', '1234'),
(6, 'Tharuka', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `availableclassroom`
--

CREATE TABLE `availableclassroom` (
  `classroom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `availableclassroom`
--

INSERT INTO `availableclassroom` (`classroom`) VALUES
('FGS 3 - 1'),
('FGS 3 - 1'),
('FGS 3 - 2'),
('FGS 3 - 2'),
('FGS 4 -1'),
('FGS 4 -2'),
('FGS 4 -1'),
('FGS 4 -2'),
('CCNA Lab'),
('CCNA LAB');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `classroom` varchar(20) NOT NULL,
  `seatingCapacity` int(4) NOT NULL,
  `whiteboard` int(2) NOT NULL,
  `projector` int(2) NOT NULL,
  `pen` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`classroom`, `seatingCapacity`, `whiteboard`, `projector`, `pen`) VALUES
('FGS 3 - 1', 10, 10, 10, 0),
('FGS 3 - 1', 50, 45, 50, 0),
('FGS 3 - 1', 120, 3, 5, 10),
('FGS 3 - 1', 125, 3, 4, 2),
('CCNA LAB', 50, 1, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `timeslot` varchar(50) NOT NULL,
  `facmember` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `studentcount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`timeslot`, `facmember`, `subject`, `studentcount`) VALUES
('8.00 am - 11.00 am', 'Mrs. GAI Uwanthika', 'CS 2013 - Data Structures and Algorithms', 10),
('11.30 am - 2.00 pm', 'Mrs. MKP Madushanka', 'CS 2022 - Operating Systems', 12),
('8.00 am - 11.00 am', 'Mrs. GAI Uwanthika', 'CS 2013 - Data Structures and Algorithms', 100),
('2.30 pm - 5.00 pm', 'Mrs. MKP Madushanka', 'CS 2022 - Operating Systems', 56),
('8.00 am - 11.00 am', 'Mrs. GAI Uwanthika', 'CS 2013 - Data Structures and Algorithms', 55),
('8.00 am - 11.00 am', 'Mrs. GAI Uwanthika', 'CS 2013 - Data Structures and Algorithms', 12),
('Item 1', 'Item 1', 'Item 1', 3),
('8.00 am - 10.00 am', 'Ms. MAST Goonathilake', 'CS 2042 - Computer Networks', 200);

-- --------------------------------------------------------

--
-- Table structure for table `staffrequest`
--

CREATE TABLE `staffrequest` (
  `time` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `whiteboards` int(10) NOT NULL,
  `projectors` int(10) NOT NULL,
  `pens` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffrequest`
--

INSERT INTO `staffrequest` (`time`, `name`, `subject`, `whiteboards`, `projectors`, `pens`) VALUES
('8.00 am - 11.00 am', 'Mrs. GAI Uwanthika', 'CS 2022 - Operating Systems', 7, 7, 7),
('11.30 am - 2.00 pm', 'Mrs. MKP Madushanka', 'CS 2022 - Operating Systems', 2, 3, 1),
('2.30 pm - 5.00 pm', 'Mr. P Kalansooriya', 'CS 2042 - Computer Networks', 5, 2, 5),
('8.00 am - 10.00 am', 'Ms. MAST Goonathilake', 'CS 2022 - Operating Systems', 2, 2, 2),
('8.00 am - 10.00 am', 'Ms. MAST Goonathilake', 'CS 2022 - Operating Systems', 2, 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
