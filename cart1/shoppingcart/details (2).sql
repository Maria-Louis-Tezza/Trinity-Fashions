-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2022 at 07:26 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minorprg`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `cid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `phno` bigint(10) NOT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`cid`, `fname`, `lname`, `uname`, `mail`, `phno`, `password`) VALUES
(1, 'kn', 'kk', 'keshav', 'keshav@gmail.com', 1234567890, 'balaji'),
(2, 'balaji', 'keshav', 'keshavbalaji', 'mail123@gmail.com', 123456789, 'qwertyqwerty'),
(3, 'ss', 'dd', 'keshavbalaji', '123@gmail.com', 1234567890, 'qwerty'),
(4, 'kk', 'hh', 'kjes', 'mail13@gmail.com', 123456789, 'qwerty'),
(5, 'keshava ', 'balaji', 'keshava', 'keshava@gmail.com', 123456789, 'balaji'),
(6, 'MARIA', 'LOUIS', 'Maria', 'maria@gmail.com', 9108680803, 'maria'),
(14, 'asasa', 'asasa', 'sanjay', 'san@gmail.com', 9108680803, 'Marialouis@10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
