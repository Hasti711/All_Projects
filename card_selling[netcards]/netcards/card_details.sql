-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 01:19 PM
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
-- Database: `netcards`
--

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `cdid` int(11) NOT NULL,
  `cdnm` varchar(100) NOT NULL,
  `cdimg` varchar(100) NOT NULL,
  `cdtype` varchar(100) NOT NULL,
  `cdprice` int(11) NOT NULL,
  `cdquantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`cdid`, `cdnm`, `cdimg`, `cdtype`, `cdprice`, `cdquantity`) VALUES
(1, 'Birthday Card', 'assets/images/cards/birthday card/bdyeight.jpg', 'Birthday Wishing Cards', 500, 10),
(2, 'Birthday Card', 'assets/images/cards/birthday card/bdyfive.jpg', 'Birthday Wishing Cards', 500, 10),
(3, 'Greeting Giving Card', 'assets/images/cards/greeting card/geight.jpg', 'Greeting Giving Cards', 500, 10),
(4, 'Greeting Giving Card', 'assets/images/cards/greeting card/geleven.jpg', 'Greeting Giving Cards', 500, 10),
(5, 'Motivation Quotes Card', 'assets/images/cards/motivational quotes cards/meight.jpg', 'Motivation Quotes Cards', 500, 10),
(6, 'Motivation Quotes Card', 'assets/images/cards/motivational quotes cards/mfive.jpg', 'Motivation Quotes Cards', 500, 10),
(7, 'Various Occasional Card', 'assets/images/cards/occasional cards/oeight.jpg', 'Various Occasional Cards', 500, 10),
(8, 'Various Occasional Card', 'assets/images/cards/occasional cards/oeleven.jpg', 'Various Occasional Cards', 500, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`cdid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card_details`
--
ALTER TABLE `card_details`
  MODIFY `cdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
