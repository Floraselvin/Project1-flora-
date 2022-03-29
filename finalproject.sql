-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2022 at 07:37 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `crid` int(11) NOT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `crnm` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`crid`, `cost`, `crnm`, `description`, `image`, `pic`) VALUES
(1, '5000', 'Swimming', 'Swimming helps kids stay fit. In a half hour of swimming, it\'s possible to burn 250 calories.', NULL, NULL),
(2, '6000', 'Karathe', 'Karate practice strengthens the mind, develops composure, a clearer thought process, deeper insight into one\'s mental capabilities, and more self-confidence. ', NULL, NULL),
(3, '7000', 'Abacus', 'The abacus (plural abaci or abacuses), also called a counting frame, is a calculating tool which has been used since ancient times.', NULL, NULL),
(9, '8000', 'Chess', 'Chess is quite like a brain tonic which enhances concentration, patience, and perseverance, as well as develops creativity, intuition, memory, and most importantly, the ability to process and extract information from a set of general principles.', NULL, NULL),
(10, '5000', 'Dance', 'Dance burns calories, strengthens muscles, improves balance, increases flexibility, and gives the heart a good workout.', NULL, NULL),
(12, '8000', 'French', 'good', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stid` int(11) NOT NULL,
  `stnm` varchar(100) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `fanm` varchar(100) NOT NULL,
  `manm` varchar(100) NOT NULL,
  `crnm` varchar(300) NOT NULL,
  `crid` int(11) NOT NULL,
  `feepay` varchar(11) NOT NULL,
  `pic` varchar(1000) NOT NULL,
  `fnmail` varchar(30) NOT NULL,
  `adds` mediumtext NOT NULL,
  `duefee` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stid`, `stnm`, `mail`, `phno`, `fanm`, `manm`, `crnm`, `crid`, `feepay`, `pic`, `fnmail`, `adds`, `duefee`) VALUES
(109, 'Allen', 'allen@gmail.com', '8967553423', 'Kavin', 'Stella', 'Swimming', 1, '2000', 'allen2.jpg', 'kavin@gmail.com', 'No.6,THS Nagar,Chennai 75.', '3000'),
(110, 'Charu', 'charu@gmail.com', '8976453212', 'Ram', 'Veni', 'Karathe', 2, '5000', 'charu.jpg', 'veni@gmail.com', 'No.10, GHS Street, Gandhi nagar, Chennai 128.', '1000'),
(111, 'John', 'john@gamil.com', '9444324234', 'Kishore', 'Shanthi', 'Abacus', 3, '5000', 'john.jpg', 'ks@gmail.com', 'No.20, JKJ Street, CChennai 75.', '2000'),
(112, 'Rebecca', 'rebecca@gmail.com', '9432342331', 'Selvin', 'Jenifer', 'Chess', 9, '3500', 'rebecca.jpg', 'selvin@gmail.com', 'no.1, VOC street, Pallavaram, Cjennai 43.', '4500'),
(113, 'flora', 'abc@gmail.com', '8967553423', 'Kavin', 'mnmn', 'Chess', 1, '3500', 'dance2.jpg', 'kavin@gmail.com', 'No.6,THS Nagar,Chennai 75.', '1500'),
(114, 'flora', 'abc@gmail.com', '8967553423', 'Kavin', 'mnmn', 'Chess', 1, '3500', 'dance2.jpg', 'kavin@gmail.com', 'No.6,THS Nagar,Chennai 75.', '1500'),
(115, 'flora', 'abc@gmail.com', '8967553423', 'Kavin', 'mnmn', 'Chess', 1, '3500', 'dance2.jpg', 'kavin@gmail.com', 'No.6,THS Nagar,Chennai 75.', '1500'),
(117, 'John', 'admin@gmail.com', '8967553423', 'Kavin', 'Veni', 'Swimming', 1, '2500', 'john.jpg', 'kavin@gmail.com', 'No.6,THS Nagar,Chennai 75.', '2500');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email_id` varchar(300) NOT NULL,
  `pwd` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email_id`, `pwd`) VALUES
('abc@gmail.com', '1234'),
('admin@gmail.com', '2345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`crid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `crid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
