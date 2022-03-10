-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2021 at 04:51 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_magic`
--

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Film` varchar(30) NOT NULL,
  `Image` varchar(30) NOT NULL,
  `Music` varchar(500) NOT NULL,
  `Singer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`Id`, `Name`, `Film`, `Image`, `Music`, `Singer`) VALUES
(1, 'Kamaal hai', 'Kamaal hai', 'images/si1.jpg', 'audio/Kamaal%20hai.mp3', 'Badshah, Uchana Amit'),
(2, 'Leja Re', 'Leja Re', 'images/si2.jpg', 'audio/Leja%20Re.mp3', 'Dhavani Bhanushali'),
(3, 'Yenti Yenti', 'Geetha Govinda', 'images/si3.jpg', 'audio/g_g/yenti%20yenti.mp3', 'Chinmayi Sripada'),
(4, 'what the life', 'Geetha Govinda', 'images/si4.jpg', 'audio/g_g/what%20the%20life', 'Vijay Deverakonda'),
(5, 'Atrangi Yaari', 'Wazir', 'images/si5.jpg', 'audio/Atrangi_Yaari_1.mp3', 'Amitabh Bachchan,Farhan Akhtar'),
(6, 'Yeh Dosti Hum Nahin', 'Sholay', 'images/si6.jpg', 'audio/Yeh%20Dosti%20Hum%20Nahin.mp3', 'Kishor Kumar');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Id` int(5) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Id`, `Name`, `Email`, `Password`) VALUES
(1, 'user', 'user@demo.com', 'user'),
(2, 'customer', 'customer@demo.com', 'customer'),
(3, 'visitor', 'visitor@demo.com', 'visitor1'),
(4, 'test', 'test@demo.com', 'testdemo'),
(5, 'shivangi', 'shiavangi@demo.com', 'shivangi'),
(6, 'Hasti', 'parmarhasti711@gmail.com', 'hmp711'),
(7, 'Snehal', 'snehaloza30@gmail.com', 'snehal');

-- --------------------------------------------------------

--
-- Table structure for table `rj_regi`
--

CREATE TABLE `rj_regi` (
  `Id` int(5) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Address` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `rj_regi`
--
ALTER TABLE `rj_regi`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rj_regi`
--
ALTER TABLE `rj_regi`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
