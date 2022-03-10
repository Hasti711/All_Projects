-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2020 at 05:06 PM
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
-- Database: `df`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Name` varchar(15) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Name`, `Password`) VALUES
('Hasti', '53bf73464c8e4987c8cabaeb25bae42b'),
('Shivagi', '7c79dd68b400e6b0c9f99f8f221dae26');

-- --------------------------------------------------------

--
-- Table structure for table `appfur`
--

CREATE TABLE `appfur` (
  `Fid` int(3) NOT NULL,
  `Fnm` varchar(20) NOT NULL,
  `Ftype` varchar(30) NOT NULL,
  `Ftnm` varchar(20) NOT NULL,
  `Fsize` int(10) NOT NULL,
  `Fcolor` varchar(10) NOT NULL,
  `Fimg` varchar(70) NOT NULL,
  `Fprice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appfur`
--

INSERT INTO `appfur` (`Fid`, `Fnm`, `Ftype`, `Ftnm`, `Fsize`, `Fcolor`, `Fimg`, `Fprice`) VALUES
(1, 'Wu', 'Wu1', 'Wall unit', 40, 'Brown', 'w1', 500),
(2, 'Wu', 'Wu2', 'Wall Unit', 50, 'Brown', 'w2', 500),
(3, 'Wu', 'Wu3', 'Wall Unit', 40, 'Brown', 'w3', 400),
(4, 'Wu', 'Wu4', 'Wall Unit', 50, 'White', 'w4', 500),
(5, 'Wu', 'Wu5', 'Wall Unit', 50, 'Brown', 'w5', 500),
(6, 'Tv', 'Tv1', 'Tv Unit', 50, 'Brown', 'tv1', 500),
(7, 'Tv', 'Tv2', 'Tv Unit', 50, 'Brown', 'tv2', 500),
(8, 'Tv', 'Tv3', 'Tv Unit', 60, 'White', 'tv3', 700),
(9, 'Tv', 'Tv4', 'Tv Unit', 60, 'White', 'tv4', 700),
(10, 'Sofa', 'Sectional', 'Maxwell', 432, 'White', 'maxwell1', 7000),
(11, 'Sofa', 'Sectional', 'Maxwell', 432, 'Red', 'maxwell2', 7000),
(12, 'Sofa', 'Sectional', 'Maxwell', 432, 'Dark Green', 'maxwell3', 7000),
(13, 'Sofa', 'Sectional', 'Jason wu', 513, 'White', 'g1', 8000),
(14, 'Sofa', 'Sectional', 'Jason wu', 513, 'Red', 'g3', 8000),
(15, 'Sofa', 'Sectional', 'Jason wu', 513, 'LightBrown', 'g2', 8000),
(16, 'Sofa', 'Sectional', 'Corner Sloan', 456, 'White', 's10', 6000),
(17, 'Sofa', 'Sectional', 'Corner Sloan', 456, 'Red', 's13', 6000),
(18, 'Sofa', 'Sectional', 'Corner Sloan', 456, 'Dark White', 's16', 6000),
(19, 'Sofa', 'Sectional', 'Ms Chesterfield', 527, 'Brown', 's14', 9000),
(20, 'Sofa', 'Sectional', 'Ms Chesterfield', 527, 'White', 's18', 9000),
(21, 'Sofa', 'Sectional', 'Ms Chesterfield', 527, 'Marron', 's20', 9000),
(22, 'Sofa', 'Sofa', 'Owens', 357, 'LightBrown', 'o37', 6000),
(23, 'Sofa', 'Sofa', 'Owens', 357, 'Dark Green', 'o39', 6000),
(24, 'Sofa', 'Sofa', 'Owens', 357, 'Black', 'o40', 6000),
(25, 'Sofa', 'Sofa', 'Oliver', 391, 'Brown', 's47', 7000),
(26, 'Sofa', 'Sofa', 'Oliver', 391, 'White', 's49', 7000),
(27, 'Sofa', 'Sofa', 'Oliver', 391, 'Black', 's51', 7000),
(28, 'Sofa', 'Sofa', 'Jasper', 408, 'White', 's2', 7000),
(29, 'Sofa', 'Sofa', 'Jasper', 408, 'Dark Green', 's4', 7000),
(30, 'Sofa', 'Sofa', 'Jasper', 408, 'Dark Blue', 's6', 7000),
(31, 'Sofa', 'Sofa', 'Catlin by everygirl', 374, 'Brown', 's11', 6000),
(32, 'Sofa', 'Sofa', 'Catlin by everygirl', 374, 'Dark Blue', 's15', 6000),
(33, 'Sofa', 'Sofa', 'Catline by everygirl', 374, 'Black', 's19', 6000),
(34, 'Sofa', 'Sofa Chair', 'Sloan', 356, 'Black', 's36', 5000),
(35, 'Sofa', 'Sofa Chair', 'Sloan', 356, 'Brown', 's38', 5000),
(36, 'Sofa', 'Sofa Chair', 'Sloan', 356, 'White', 's41', 5000),
(37, 'Sofa', 'Sofa Chair', 'Gray', 398, 'Dark Green', 's45', 6000),
(38, 'Sofa', 'Sofa Chair', 'Gray', 398, 'White', 's46', 6000),
(39, 'Sofa', 'Sofa Chair', 'Gray', 398, 'Black', 's48', 6000),
(40, 'Sofa', 'Sofa Chair', 'Charly', 408, 'LightBlack', 's1', 6000),
(41, 'Sofa', 'Sofa Chair', 'Charly', 408, 'Black', 's3', 6000),
(42, 'Sofa', 'Sofa Chair', 'Charly', 408, 'White', 's5', 6000),
(43, 'Sofa', 'Sofa Chair', 'Tegan', 334, 'Brown', 't1', 5000),
(44, 'Sofa', 'Sofa Chair', 'Tegan', 334, 'Red', 't2', 5000),
(45, 'Sofa', 'Sofa Chair', 'Tegan', 334, 'LightGold', 't3', 5000),
(46, 'Sofa', 'Ottoman', 'Maxwell', 298, 'White', 'o8', 4000),
(47, 'Sofa', 'Ottoman', 'Maxwell', 298, 'Black', 'o9', 4000),
(48, 'Sofa', 'Ottoman', 'Maxwell', 298, 'Red', 'o10', 4000),
(49, 'Sofa', 'Ottoman', 'Jason wu', 287, 'LightBrown', 'o1', 4000),
(50, 'Sofa', 'Ottoman', 'Jason wu', 287, 'Red', 'o2', 4000),
(51, 'Sofa', 'Ottoman', 'Jason wu', 287, 'White', 'o3', 4000),
(52, 'Sofa', 'Ottoman', 'Corner Sloan', 254, 'Black', 'o11', 4000),
(53, 'Sofa', 'Ottoman', 'Corner Sloan', 254, 'LightBrown', 'o12', 4000),
(54, 'Sofa', 'Ottoman', 'Corner Sloan', 254, 'Red', 'o13', 4000),
(55, 'Sofa', 'Ottoman', 'Ms Chesterfield', 278, 'LightBrown', 'o4', 4000),
(56, 'Sofa', 'Ottoman', 'Ms Chesterfield', 278, 'Red', 'o5', 4000),
(57, 'Sofa', 'Ottoman', 'Ms Chesterfield', 278, 'Black', 'o6', 4000),
(58, 'Sofa', 'Ottoman', 'Ms Chesterfield', 278, 'White', 'o7', 4000),
(59, 'Sofa', 'Ottoman', 'Owens', 238, 'White', 'o14', 4000),
(60, 'Sofa', 'Ottoman', 'Owens', 238, 'Dark Green', 'o15', 4000),
(61, 'Sofa', 'Ottoman', 'Owens', 238, 'Black', 'o16', 4000),
(62, 'Sofa', 'Ottoman', 'Oliver', 238, 'Black', 'o17', 4000),
(63, 'Sofa', 'Ottoman', 'Oliver', 238, 'Gray', 'o18', 4000),
(64, 'Sofa', 'Ottoman', 'Oliver', 238, 'White', 'o19', 4000),
(65, 'Chair', 'Chair', 'Andrew', 256, 'Gray', 'c1', 500),
(66, 'Chair', 'Chair', 'Andrew', 256, 'Red', 'c2', 500),
(67, 'Chair', 'Chair', 'Andrew', 256, 'Gold', 'c3', 500),
(68, 'Chair', 'Chair', 'Dylan', 239, 'Gray', 'c4', 500),
(69, 'Chair', 'Chair', 'Dylan', 239, 'Red', 'c5', 500),
(70, 'Chair', 'Chair', 'Dylan', 239, 'Gold', 'c6', 500),
(71, 'Chair', 'Chair', 'Kit', 245, 'Gray', 'c7', 500),
(72, 'Chair', 'Chair', 'Kit', 245, 'Red', 'c8', 500),
(73, 'Chair', 'Chair', 'Kit', 245, 'Gold', 'c9', 5000),
(74, 'Dt', 'Dt1', 'Dinning Table', 456, 'Gray', 'dt1', 9000),
(75, 'Dt', 'Dt1', 'Dinning Table', 456, 'Red', 'dt2', 9000),
(76, 'Dt', 'Dt1', 'Dinning Table', 456, 'Gold', 'dt3', 9000),
(77, 'Dt', 'Dt2', 'Dinning Table', 470, 'Gray', 'of1', 9000),
(78, 'Dt', 'Dt2', 'Dinning Table', 470, 'Red', 'of2', 9000),
(79, 'Dt', 'Dt2', 'Dinning Table', 470, 'Gold', 'of3', 9000),
(80, 'Dt', 'Dt3', 'Dinning Table', 475, 'Gray', 'of4', 9000),
(81, 'Dt', 'Dt3', 'Dinning Table', 475, 'Red', 'of5', 9000),
(82, 'Dt', 'Dt3', 'Dinning Table', 475, 'Gold', 'of6', 9000),
(83, 'Bed', 'B1', 'Harper', 2111, 'Blue', 'b3', 10000),
(84, 'Bed', 'B2', 'Harper', 2111, 'Gray', 'b6', 10000),
(85, 'Bed', 'B3', 'Harper', 2111, 'White', 'b8', 10000),
(86, 'Bed', 'B4', 'Oliver', 3431, 'Pink', 'b4', 10000),
(87, 'Bed', 'B5', 'Oliver', 3431, 'Gray', 'b7', 10000),
(88, 'Bed', 'B6', 'Oliver', 3431, 'Black', 'b9', 10000),
(89, 'Bed', 'B7', 'Gray', 2937, 'Black', 'b1', 10000),
(90, 'Bed', 'B8', 'Gray', 2937, 'Gray', 'b2', 10000),
(91, 'Bed', 'B9', 'Gray', 2937, 'Red', 'b5', 10000),
(92, 'Wd', 'Wd', 'Wardrobe', 180, 'White', 'w2d', 8000),
(93, 'Wd', 'Wd', 'Wardrobe', 180, 'Green', 'w2d', 8000),
(94, 'Wd', 'Wd', 'Wardrobe', 180, 'Brown', 'w2d', 8000),
(95, 'Wd', 'Wd', 'Wardrobe', 180, 'Brown', 'w2d', 8000),
(96, 'Wd', 'Wd', 'Wardrobe', 180, 'Dark Green', 'w2d', 8000),
(97, 'Wd', 'Wd', 'Wardrobe', 180, 'Gray', 'w2d', 8000),
(98, 'Wd', 'Wd', 'Wardrobe', 180, 'Brown', 'w2d', 8000),
(99, 'Wd', 'Wd', 'Wardrobe', 180, 'Gray', 'w2d', 8000),
(100, 'Wd', 'Wd', 'Wardrobe', 180, 'Black', 'w2d', 8000),
(101, 'Wd', 'Wd', 'Wardrobe', 210, 'White', 'w3d', 8000),
(102, 'Wd', 'Wd', 'Wardorbe', 210, 'Cream', 'w3d', 8000),
(103, 'Wd', 'Wd', 'Wardobe', 210, 'Green', 'w3d', 8000),
(104, 'Wd', 'Wd', 'Wardrobe', 210, 'Brown', 'w3d', 8000),
(105, 'Wd', 'Wd', 'Wardrobe', 210, 'Dark Green', 'w3d', 8000),
(106, 'Wd', 'Wd', 'Wardrobe', 210, 'Gray', 'w3d', 8000),
(107, 'Wd', 'Wd', 'Wardrobe', 210, 'Brown', 'w3d', 8000),
(108, 'Wd', 'Wd', 'Wardrobe', 210, 'Dark Green', 'w3d', 8000),
(109, 'Wd', 'Wd', 'Wardrobe', 210, 'Gray', 'w3d', 8000),
(110, 'Wd', 'Wd', 'Wardrobe', 400, 'White', 'w4d', 8000),
(111, 'Wd', 'Wd', 'Wardorbe', 400, 'Green', 'w4d', 8000),
(112, 'Wd', 'Wd', 'Wardobe', 400, 'Gray', 'w4d', 8000),
(113, 'Wd', 'Wd', 'Wardrobe', 400, 'DarkBrown', 'w4d', 8000),
(114, 'Wd', 'Wd', 'Wardrobe', 400, 'Gray', 'w4d', 8000),
(115, 'Wd', 'Wd', 'Wardrobe', 400, 'Brown', 'w4d', 8000),
(116, 'Wd', 'Wd', 'Wardrobe', 400, 'Brown', 'w4d', 8000),
(117, 'Wd', 'Wd', 'Wardrobe', 400, 'Black', 'w4d', 8000),
(118, 'Wd', 'Wd', 'Wardrobe', 400, 'Gray', 'w4d', 8000);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Cid` int(3) NOT NULL,
  `Fid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`Cid`, `Fid`) VALUES
(0, 201),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 32),
(1, 32),
(1, 32),
(1, 32),
(1, 32),
(1, 33),
(1, 33),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 32),
(1, 32),
(1, 32),
(1, 32),
(1, 32),
(1, 32),
(1, 31),
(1, 31),
(1, 32),
(1, 31),
(1, 31),
(1, 36),
(1, 36),
(1, 62),
(1, 62),
(1, 83),
(1, 16),
(1, 31),
(1, 31),
(1, 36),
(1, 36),
(1, 36),
(1, 46),
(1, 46),
(1, 46),
(1, 46),
(1, 46),
(1, 46),
(1, 46),
(1, 36),
(1, 46),
(1, 46),
(1, 36),
(1, 46),
(1, 46),
(1, 46),
(1, 46),
(1, 46),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 31),
(1, 36),
(1, 36),
(1, 36),
(1, 36),
(1, 31),
(1, 31),
(1, 31),
(1, 78),
(1, 86),
(1, 96),
(1, 96),
(1, 96),
(1, 31),
(1, 31),
(1, 36),
(1, 36),
(1, 31),
(1, 31),
(6, 86),
(6, 86),
(6, 86),
(6, 86),
(6, 86),
(6, 86),
(6, 86),
(6, 16),
(6, 16),
(6, 16);

-- --------------------------------------------------------

--
-- Table structure for table `cdetails`
--

CREATE TABLE `cdetails` (
  `Cid` int(3) NOT NULL,
  `Fid` int(3) NOT NULL,
  `Pnum` int(10) NOT NULL,
  `Fprice` int(5) NOT NULL,
  `Cadd` varchar(50) NOT NULL,
  `City` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fur`
--

CREATE TABLE `fur` (
  `Fid` int(3) NOT NULL,
  `Fnm` varchar(20) NOT NULL,
  `Ftype` varchar(30) NOT NULL,
  `Ftnm` varchar(20) NOT NULL,
  `Fsize` int(10) NOT NULL,
  `Fcolor` varchar(10) NOT NULL,
  `Fimg` varchar(70) NOT NULL,
  `Fprice` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fur`
--

INSERT INTO `fur` (`Fid`, `Fnm`, `Ftype`, `Ftnm`, `Fsize`, `Fcolor`, `Fimg`, `Fprice`) VALUES
(16, 'Bed', 'Queen', 'Harper', 0, 'Blue', 'images\\Home\\Bed\\b3\\b3-01-01.png', 5000),
(17, 'Bed', 'Queen', 'Harper', 0, 'Gray', 'images\\Home\\Bed\\b6\\b6-01-01.png', 5000),
(18, 'Bed', 'Queen', 'Harper', 0, 'White', 'images\\Home\\Bed\\b8\\b8-01-01.png', 5000),
(19, 'Bed', 'Queen', 'Harper', 0, 'Black', 'images\\Home\\Bed\\b10\\b10-01-01.png', 5000),
(20, 'Bed', 'Queen', 'Harper', 0, 'Red', 'images\\Home\\Bed\\b12\\b12-01-01.png', 5000),
(21, 'Bed', 'Queen', 'Oliver', 0, 'Blush', 'images\\Home\\Bed\\b4\\b4-01-01.png', 5000),
(22, 'Bed', 'Queen', 'Oliver', 0, 'Gray', 'images\\Home\\Bed\\b7\\b7-01-01.png', 5000),
(24, 'Bed', 'Queen', 'Oliver', 0, 'Black', 'images\\Home\\Bed\\b9\\b9-01-01.png', 5000),
(25, 'Bed', 'Queen', 'Oliver', 0, 'Red', 'images\\Home\\Bed\\b11\\b11-01-01.png', 5000),
(26, 'Bed', 'Queen', 'Gray', 0, 'Black', 'images\\Home\\Bed\\b0\\b1-01-01.png', 5000),
(27, 'Bed', 'Queen', 'Gray', 0, 'Gray', 'images\\Home\\Bed\\b1\\b2-01-01.png', 5000),
(28, 'Bed', 'Queen', 'Gray', 0, 'Red', 'images\\Home\\Bed\\b2\\b5-01-01.png', 5000),
(29, 'Bed', 'Queen', 'Gray', 0, '', 'images\\Home\\Bed\\', 5000),
(31, 'Sofa', 'Sectional', 'Maxwell', 0, 'White', 'images\\Home\\Living\\Sofa\\Sectional\\m1\\maxwell1-01-01.png', 7000),
(32, 'Sofa', 'Sectional', 'Maxwell', 0, 'Red', 'images\\Home\\Living\\Sofa\\Sectional\\m2\\maxwell2-01-01.png', 7000),
(33, 'Sofa', 'Sectional', 'Maxwell', 0, 'Gold', 'images\\Home\\Living\\Sofa\\Sectional\\m3\\maxwell3-01-01.png', 7000),
(34, 'Sofa', 'Sectional', 'Maxwell', 0, '', 'images\\Hotel\\Living\\m4\\maxwell4-01-01.png', 7000),
(35, 'Sofa', 'Sectional', 'Maxwell', 0, '', 'images\\Hotel\\Living\\m5\\maxwell5-01-01.png', 7000),
(36, 'Sofa', 'Sectional', 'Jason wu', 0, 'White', 'images\\Home\\Living\\Sofa\\Sectional\\j1\\g1-01-01.png', 7000),
(37, 'Sofa', 'Sectional', 'Jason wu', 0, 'Lb', 'images\\Home\\Living\\Sofa\\Sectional\\j2\\j2-01-01.png', 7000),
(38, 'Sofa', 'Sectional', 'Jason wu', 0, 'Red', 'images\\Home\\Living\\Sofa\\Sectional\\j3\\g3-01-01.png', 7000),
(39, 'Sofa', 'Sectional', 'Jason wu', 0, 'Blush', 'images\\Hotel\\Living\\j4\\s8-01-01.png', 7000),
(40, 'Sofa', 'Sectional', 'Jason wu', 0, 'Black', 'images\\Home\\Living\\Sofa\\Sectional\\j5/s12-01-01.png', 7000),
(41, 'Sofa', 'Sectional', 'Corner Sloan', 0, 'White', 'images\\Home\\Living\\Sofa\\Sectional\\s1\\s10-01-01.png', 7000),
(42, 'Sofa', 'Sectional', 'Corner Sloan', 0, 'Red', 'images\\Home\\Living\\Sofa\\Sectional\\s2\\s13-01-01.png', 7000),
(43, 'Sofa', 'Sectional', 'Corner Sloan', 0, 'Gray', 'images\\Home\\Living\\Sofa\\Sectional\\s3\\s16-01-01.png', 7000),
(44, 'Sofa', 'Sectional', 'Corner Sloan', 0, 'Gold', 'images\\Hotel\\Living\\s4\\s17-01-01.png', 7000),
(45, 'Sofa', 'Sectional', 'Corner Sloan', 0, '', 'images\\Hotel\\living\\', 7000),
(46, 'Sofa', 'Sectional', 'Ms Chesterfield', 0, 'Gray', 'images\\Home\\Living\\Sofa\\Sectional\\ms1\\s18-01-01.png', 7000),
(47, 'Sofa', 'Sectional', 'Ms Chesterfield', 0, 'Brown', 'images\\Home\\Living\\Sofa\\Sectional\\ms2\\s14-01-01.png', 7000),
(48, 'Sofa', 'Sectional', 'Ms Chesterfield', 0, 'Marron', 'images\\Home\\Living\\Sofa\\Sectional\\ms3\\s20-01-01.png', 7000),
(49, 'Sofa', 'Sectional', 'Ms Chesterfield', 0, 'Red', 'images\\Hotel\\living\\ms4\\s22-01-01.png', 7000),
(50, 'Sofa', 'Sectional', 'Ms Chesterfield', 0, 'Black', 'images\\Hotel\\Living\\ms5\\s23-01-02.png', 7000),
(51, 'Sofa', 'Sectional', 'Rose by everygirl', 0, 'Gray', 'images\\Home\\Living\\Sofa\\Sectional\\r1\\s26-01-01.png', 9000),
(52, 'Sofa', 'Sectional', 'Rose by everygirl', 0, 'Blush', 'images\\Home\\Living\\Sofa\\Sectional\\r2\\s28-01-01.png', 9000),
(53, 'Sofa', 'Sectional', 'Rose by everygirl', 0, 'Blue', 'images\\Home\\Living\\Sofa\\Sectional\\r3\\s30-01-01.png', 9000),
(54, 'Sofa', 'Sectional', 'Rose by everygirl', 0, 'Brown', 'images\\Hotel\\Living\\s4\\s32-01-01.png', 9000),
(55, 'Sofa', 'Sectional', 'Rose by everygirl', 0, '', 'images\\Home\\Living\\Sofa\\Sectional\\', 9000),
(56, 'Sofa', 'Sofa', 'Owens', 0, 'Lb', 'images\\Home\\Living\\Sofa\\Sofa\\o1\\s37-01-01.png', 9000),
(57, 'Sofa', 'Sofa', 'Owens', 0, 'Dg', 'images\\Home\\Living\\Sofa\\Sofa\\o2\\o40-01-01.png', 9000),
(58, 'Sofa', 'Sofa', 'Owens', 0, 'Green', 'images\\Home\\Living\\Sofa\\Sofa\\o3\\o39-01-01.png', 9000),
(59, 'Sofa', 'Sofa', 'Owens', 0, 'Red', 'images\\Hotel\\Living\\o4\\s43-01-01.png', 9000),
(60, 'Sofa', 'Sofa', 'Owens', 0, 'Black', 'images\\Hotel\\Living\\o5\\s45-01-01.png', 9000),
(61, 'Sofa', 'Sofa', 'Oliver', 0, 'Gray', 'images\\Home\\Living\\Sofa\\Sofa\\ol1\\s47-01-01.png', 9000),
(62, 'Sofa', 'Sofa', 'Oliver', 0, 'White', 'images\\Home\\Living\\Sofa\\Sofa\\oli2\\s49-01-01.png', 9000),
(63, 'Sofa', 'Sofa', 'Oliver', 0, 'Black', 'images\\Home\\Living\\Sofa\\Sofa\\oli3\\s51-01-01.png', 9000),
(64, 'Sofa', 'Sofa', 'Oliver', 0, 'Blue', 'images\\Hotel\\Living\\oli4\\oli1-01-01.png', 9000),
(65, 'Sofa', 'Sofa', 'Oliver', 0, '', 'images\\Home\\Living\\Sofa\\Sofa\\', 9000),
(66, 'Sofa', 'Sofa', 'Jasper', 0, 'White', 'images\\Home\\Living\\Sofa\\Sofa\\j1\\s2-01-01.png', 9000),
(67, 'Sofa', 'Sofa', 'Jasper', 0, 'Gold', 'images\\Home\\Living\\Sofa\\Sofa\\j2\\s4-01-01.png', 9000),
(68, 'Sofa', 'Sofa', 'Jasper', 0, 'Blue', 'images\\Home\\Living\\Sofa\\Sofa\\j3\\s6-01-01.png', 9000),
(69, 'Sofa', 'Sofa', 'Jasper', 0, 'Blush', 'images\\Hotel\\Living\\j4\\s8-01-01.png', 9000),
(70, 'Sofa', 'Sofa', 'Jasper', 0, 'Black', 'images\\Hotel\\Living\\j5\\s12-01-01.png', 9000),
(71, 'Sofa', 'Sofa', 'Catlin by everygirl', 0, 'Gray', 'images\\Home\\Living\\Sofa\\Sofa\\c1\\s11-01-01.png', 9000),
(72, 'Sofa', 'Sofa', 'Catlin by everygirl', 0, 'Black', 'images\\Home\\Living\\Sofa\\Sofa\\c2\\s19-01-01.png', 9000),
(73, 'Sofa', 'Sofa', 'Catlin by everygirl', 0, 'Blue', 'images\\Home\\Living\\Sofa\\Sofa\\c3\\s15-01-01.png', 9000),
(74, 'Sofa', 'Sofa', 'Catlin by everygirl', 0, 'Brown', 'images\\Hotel\\Living\\c4\\s21-01-01.png', 9000),
(75, 'Sofa', 'Sofa', 'Catlin by everygirl', 0, 'Marron', 'images\\Hotel\\Living\\c5\\s23-01-01.png', 9000),
(76, 'Sofa', 'Sofa', 'Maxwell Sill Covered', 0, 'White', 'images\\Home\\Living\\Sofa\\Sofa\\m1\\s25-01-01.png', 3000),
(77, 'Sofa', 'Sofa', 'Maxwell Sill Covered', 0, 'Black', 'images\\Home\\Living\\Sofa\\Sofa\\m2\\s27-01-01.png', 3000),
(78, 'Sofa', 'Sofa', 'Maxwell Sill Covered', 0, 'Red', 'images\\Home\\Living\\Sofa\\Sofa\\m3\\s29-01-01.png', 3000),
(79, 'Sofa', 'Sofa', 'Maxwell Sill Covered', 0, 'Light Blue', 'images\\Hotel\\Living\\m-s-4\\s31-01-01.png', 3000),
(80, 'Sofa', 'Sofa', 'Maxwell Sill Covered', 0, 'Yellow', 'images\\Hotel\\Living\\m-s-5\\s33-01-01.png', 3000),
(81, 'Sofa', 'Sofa Chair', 'Sloan', 0, 'Black', 'images\\Home\\Living\\Sofa\\Sofachair\\sc1\\s36-01-01.png', 3000),
(82, 'Sofa', 'Sofa Chair', 'Sloan', 0, 'Brown', 'images\\Home\\Living\\Sofa\\Sofachair\\sc2\\s38-01-01.png', 3000),
(83, 'Sofa', 'Sofa Chair', 'Sloan', 0, 'White', 'images\\Home\\Living\\Sofa\\Sofachair\\sc3\\o41-01-01.png', 3000),
(84, 'Sofa', 'Sofa Chair', 'Sloan', 0, 'Red', 'images\\Hotel\\Living\\sc4\\s42-01-01.png', 3000),
(85, 'Sofa', 'Sofa Chair', 'Sloan', 0, 'Blush', 'images\\Hotel\\Living\\sc5\\s44-01-01.png', 3000),
(86, 'Sofa', 'Sofa Chair', 'Gray', 0, 'Gold', 'images\\Home\\Living\\Sofa\\Sofachair\\sc6\\s45-01-01.png', 3000),
(87, 'Sofa', 'Sofa Chair', 'Gray', 0, 'White', 'images\\Home\\Living\\Sofa\\Sofachair\\sc7\\s46-01-01.png', 3000),
(88, 'Sofa', 'Sofa Chair', 'Gray', 0, 'Black', 'images\\Home\\Living\\Sofa\\Sofachair\\sc8\\s48-01-01.png', 3000),
(89, 'Sofa', 'Sofa Chair', 'Gray', 0, 'Blue', 'images\\Hotel\\Living\\sc9\\s50-01-01.png', 3000),
(90, 'Sofa', 'Sofa Chair', 'Gray', 0, 'Marron', 'images\\Hotel\\Living\\sc10\\s35-01-01.png', 3000),
(91, 'Sofa', 'Sofa Chair', 'Charly', 0, 'Black', 'images\\Home\\Living\\Sofa\\Sofachair\\sc11\\s1-01-01.png', 3000),
(92, 'Sofa', 'Sofa Chair', 'Charly', 0, '', 'images\\Home\\Living\\Sofa\\Sofachair\\', 3000),
(93, 'Sofa', 'Sofa Chair', 'Charly', 0, '', 'images\\Home\\Living\\Sofa\\Sofachair\\', 3000),
(94, 'Sofa', 'Sofa Chair', 'Charly', 0, 'Brown', 'images\\Hotel\\Living\\sc14\\s7-01-01.png', 3000),
(95, 'Sofa', 'Sofa Chair', 'Charly', 0, 'Red', 'images\\Hotel\\Living\\sc15\\s9-01-01.png', 3000),
(96, 'Sofa', 'Sofa Chair', 'Tegan', 0, 'Lb', 'images\\Home\\Living\\Sofa\\Sofachair\\sc13\\t-01-01.png', 3000),
(97, 'Sofa', 'Sofa Chair', 'Tegan', 0, '', 'images\\Home\\Living\\Sofa\\Sofachair\\', 3000),
(98, 'Sofa', 'Sofa Chair', 'Tegan', 0, '', 'images\\Home\\Living\\Sofa\\Sofachair\\', 3000),
(99, 'Sofa', 'Sofa Chair', 'Tegan', 0, '', 'images\\Home\\Living\\Sofa\\Sofachair\\', 3000),
(100, 'Sofa', 'Sofa Chair', 'Tegan', 0, '', 'images\\Home\\Living\\Sofa\\Sofachair\\', 3000),
(101, 'Sofa', 'Sofa Chair', 'Ainsley', 0, '', 'images\\Home\\Living\\Sofa\\Sofachair\\', 0),
(102, 'Sofa', 'Sofa Chair', 'Ainsley', 0, '', 'images\\Home\\Living\\Sofa\\Sofachair\\', 0),
(103, 'Sofa', 'Sofa Chair', 'Ainsley', 0, '', 'images\\Home\\Living\\Sofa\\Sofachair\\', 0),
(104, 'Sofa', 'Sofa Chair', 'Ainsley', 0, '', 'images\\Home\\Living\\Sofa\\Sofachair\\', 0),
(105, 'Sofa', 'Sofa Chair', 'Ainsley', 0, '', 'images\\Home\\Living\\Sofa\\Sofachair\\', 0),
(106, 'Sofa', 'Sofa Chair', 'Parker', 0, '', 'images\\Home\\Living\\Sofa\\Sofachair\\', 0),
(107, 'Sofa', 'Sofa Chair', 'Parker', 0, '', 'images\\Home\\Living\\Sofa\\Sofachair\\', 0),
(108, 'Sofa', 'Sofa Chair', 'Parker', 0, '', 'images\\Home\\Living\\Sofa\\Sofachair\\', 0),
(109, 'Sofa', 'Sofa Chair', 'Parker', 0, '', 'images\\Home\\Living\\Sofa\\Sofachair\\', 0),
(110, 'Sofa', 'Sofa Chair', 'Parker', 0, '', 'images\\Home\\Living\\Sofa\\Sofachair\\', 0),
(111, 'Sofa', 'Ottoman', 'Maxwell', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(112, 'Sofa', 'Ottoman', 'Maxwell', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(113, 'Sofa', 'Ottoman', 'Maxwell', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(114, 'Sofa', 'Ottoman', 'Maxwell', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(115, 'Sofa', 'Ottoman', 'Maxwell', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(116, 'Sofa', 'Ottoman', 'Jason wu', 0, 'Offwhite', 'images\\Home\\Living\\Sofa\\Ottoman\\o1\\o1-01-01.png', 1000),
(117, 'Sofa', 'Ottoman', 'Jason wu', 0, 'White', 'images\\Home\\Living\\Sofa\\Ottoman\\o2\\g1-01-01.png', 1000),
(118, 'Sofa', 'Ottoman', 'Jason wu', 0, 'Red', 'images\\Home\\Living\\Sofa\\Ottoman\\o3\\o1-01-01.png', 1000),
(119, 'Sofa', 'Ottoman', 'Jason wu', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(120, 'Sofa', 'Ottoman', 'Jason wu', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(121, 'Sofa', 'Ottoman', 'Corner Sloan', 0, 'White', 'images\\Home\\Living\\Sofa\\Ottoman\\o25\\s41-01-01.png', 1000),
(122, 'Sofa', 'Ottoman', 'Corner Sloan', 0, 'Brown', 'images\\Home\\Living\\Sofa\\Ottoman\\o26\\o44-01-01.png', 1000),
(123, 'Sofa', 'Ottoman', 'Corner Sloan', 0, 'Black', 'images\\Home\\Living\\Sofa\\Ottoman\\o27\\s40-01-01.png', 1000),
(124, 'Sofa', 'Ottoman', 'Corner Sloan', 0, 'Red', 'images\\Home\\Living\\Sofa\\Ottoman\\o28\\o43-01-01.png', 0),
(125, 'Sofa', 'Ottoman', 'Corner Sloan', 0, 'Dark Green', 'images\\Home\\Living\\Sofa\\Ottoman\\o29\\s39-01-01.png', 0),
(126, 'Sofa', 'Ottoman', 'Ms Chesterfield', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(127, 'Sofa', 'Ottoman', 'Ms Chesterfield', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(128, 'Sofa', 'Ottoman', 'Ms Chesterfield', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(129, 'Sofa', 'Ottoman', 'Ms Chesterfield', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(130, 'Sofa', 'Ottoman', 'Ms Chesterfield', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(131, 'Sofa', 'Ottoman', 'Rose by everygirl', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(132, 'Sofa', 'Ottoman', 'Rose by everygirl', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(133, 'Sofa', 'Ottoman', 'Rose by everygirl', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(134, 'Sofa', 'Ottoman', 'Rose by everygirl', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(135, 'Sofa', 'Ottoman', 'Rose by everygirl', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(136, 'Sofa', 'Ottoman', 'Owens', 0, 'Red', 'images\\Home\\Living\\Sofa\\Ottoman\\o28\\o43-01-01.png', 1000),
(137, 'Sofa', 'Ottoman', 'Owens', 0, 'Black', 'images\\Home\\Living\\Sofa\\Ottoman\\o30\\o45-01-01.png', 1000),
(138, 'Sofa', 'Ottoman', 'Owens', 0, 'Green', 'images\\Home\\Living\\Sofa\\Ottoman\\o29\\s39-01-01.png', 1000),
(139, 'Sofa', 'Ottoman', 'Owens', 0, 'Lb', 'images\\Home\\Living\\Sofa\\Ottoman\\o27\\s40-01-01.png', 1000),
(140, 'Sofa', 'Ottoman', 'Owens', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 1000),
(141, 'Sofa', 'Ottoman', 'Oliver', 0, 'Red', 'images\\Home\\Living\\Sofa\\Ottoman\\o36\\o35-01-01.png', 1000),
(142, 'Sofa', 'Ottoman', 'Oliver', 0, 'Gold', 'images\\Home\\Living\\Sofa\\Ottoman\\o33\\o44-01-01.png', 1000),
(143, 'Sofa', 'Ottoman', 'Oliver', 0, 'White', 'images\\Home\\Living\\Sofa\\Ottoman\\o32\\o46-01-01.png', 1000),
(144, 'Sofa', 'Ottoman', 'Oliver', 0, 'Blue', 'images\\Home\\Living\\Sofa\\Ottoman\\o39\\o1-01-01.png', 1000),
(145, 'Sofa', 'Ottoman', 'Oliver', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(146, 'Sofa', 'Ottoman', 'Jasper', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(147, 'Sofa', 'Ottoman', 'Jasper', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(148, 'Sofa', 'Ottoman', 'Jasper', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(149, 'Sofa', 'Ottoman', 'Jasper', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(150, 'Sofa', 'Ottoman', 'Jasper', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(151, 'Sofa', 'Ottoman', 'Catlin by everygirl', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(152, 'Sofa', 'Ottoman', 'Catlin by everygirl', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(153, 'Sofa', 'Ottoman', 'Catlin by everygirl', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(154, 'Sofa', 'Ottoman', 'Catlin by everygirl', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(155, 'Sofa', 'Ottoman', 'Catlin by everygirl', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(156, 'Sofa', 'Ottoman', 'Maxwell Sill Covered', 0, 'White', 'images\\Home\\Living\\Sofa\\Ottoman\\o16\\o25-01-01.png', 1000),
(157, 'Sofa', 'Ottoman', 'Maxwell Sill Covered', 0, 'Black', 'images\\Home\\Living\\Sofa\\Ottoman\\o17\\o27-01-01.png', 1000),
(158, 'Sofa', 'Ottoman', 'Maxwell Sill Covered', 0, 'Red', 'images\\Home\\Living\\Sofa\\Ottoman\\o18\\o29-01-01.png', 1000),
(159, 'Sofa', 'Ottoman', 'Maxwell Sill Covered', 0, 'Sky Blue', 'images\\Home\\Living\\Sofa\\Ottoman\\o19\\o31-01-01.png', 1000),
(160, 'Sofa', 'Ottoman', 'Maxwell Sill Covered', 0, 'Gold', 'images\\Home\\Living\\Sofa\\Ottoman\\o20\\o33-01-01.png', 1000),
(161, 'Sofa', 'Ottoman', 'Sloan', 0, 'Black', 'images\\Home\\Living\\Sofa\\Ottoman\\o21\\o36-01-01.png', 1000),
(162, 'Sofa', 'Ottoman', 'Sloan', 0, 'Brown', 'images\\Home\\Living\\Sofa\\Ottoman\\o22\\o37-01-01.png', 1000),
(163, 'Sofa', 'Ottoman', 'Sloan', 0, 'Red', 'images\\Home\\Living\\Sofa\\Ottoman\\o24\\o42-01-01.png', 1000),
(164, 'Sofa', 'Ottoman', 'Sloan', 0, 'White', 'images\\Home\\Living\\Sofa\\Ottoman\\o25\\o41-01-01.png', 1000),
(165, 'Sofa', 'Ottoman', 'Sloan', 0, 'Lb', 'images\\Home\\Living\\Sofa\\Ottoman\\o26\\o44-01-01.png', 1000),
(166, 'Sofa', 'Ottoman', 'Gray', 0, 'Black', 'images\\Home\\Living\\Sofa\\Ottoman\\o31\\o-01-01.png', 1000),
(167, 'Sofa', 'Ottoman', 'Gray', 0, 'White', 'images\\Home\\Living\\Sofa\\Ottoman\\o32\\o46-01-01.png', 1000),
(168, 'Sofa', 'Ottoman', 'Gray', 0, 'Gold', 'images\\Home\\Living\\Sofa\\Ottoman\\o33\\o44-01-01.png', 1000),
(169, 'Sofa', 'Ottoman', 'Gray', 0, 'Black', 'images\\Home\\Living\\Sofa\\Ottoman\\o34\\o48-01-01.png', 1000),
(170, 'Sofa', 'Ottoman', 'Gray', 0, 'Blue', 'images\\Home\\Living\\Sofa\\Ottoman\\o35\\o50-01-01.png', 1000),
(171, 'Sofa', 'Ottoman', 'Charly', 0, 'Brown', 'images\\Home\\Living\\Sofa\\Ottoman\\o6\\o1-01-01.png', 1000),
(172, 'Sofa', 'Ottoman', 'Charly', 0, 'Red', 'images\\Home\\Living\\Sofa\\Ottoman\\o7\\o9-01-01.png', 1000),
(173, 'Sofa', 'Ottoman', 'Charly', 0, 'Lb', 'images\\Home\\Living\\Sofa\\Ottoman\\o8\\o1-01-01.png', 1000),
(174, 'Sofa', 'Ottoman', 'Charly', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(175, 'Sofa', 'Ottoman', 'Charly', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(176, 'Sofa', 'Ottoman', 'Tegan', 0, 'Lb', 'images\\Home\\Living\\Sofa\\Ottoman\\o42\\t-01-01.png', 1000),
(177, 'Sofa', 'Ottoman', 'Tegan', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(178, 'Sofa', 'Ottoman', 'Tegan', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(179, 'Sofa', 'Ottoman', 'Tegan', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(180, 'Sofa', 'Ottoman', 'Tegan', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(181, 'Sofa', 'Ottoman', 'Ainsley', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(182, 'Sofa', 'Ottoman', 'Ainsley', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(183, 'Sofa', 'Ottoman', 'Ainsley', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(184, 'Sofa', 'Ottoman', 'Ainsley', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(185, 'Sofa', 'Ottoman', 'Ainsley', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(186, 'Sofa', 'Ottoman', 'Parker', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(187, 'Sofa', 'Ottoman', 'Parker', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(188, 'Sofa', 'Ottoman', 'Parker', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(189, 'Sofa', 'Ottoman', 'Parker', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(190, 'Sofa', 'Ottoman', 'Parker', 0, '', 'images\\Home\\Living\\Sofa\\Ottoman\\', 0),
(191, 'tv', 'tv1', 'tv1', 0, '', 'images\\Home\\Living\\TVunit\\tv1(1).png', 500),
(192, 'tv', 'tv2', 'tv1', 0, '', 'images\\Home\\Living\\TVunit\\tv1(2).png', 500),
(193, 'tv', 'tv1', 'tv2', 0, '', 'images\\Home\\Living\\TVunit\\tv2(1).png', 600),
(194, 'tv', 'tv2', 'tv2', 0, '', 'images\\Home\\Living\\Tvunit\\tv2(2).png', 600),
(195, 'tv', 'tv1', 'tv3', 0, '', 'images\\Home\\Living\\TVunit\\tv3(1).png', 700),
(196, 'tv', 'tv2', 'tv3', 0, '', 'images\\Home\\Living\\Tvunit\\tv3(2).png', 700),
(197, 'tv', 'tv1', 'tv4', 0, '', 'images\\Home\\Living\\Tvunit\\tv4(1).png', 800),
(198, 'tv', 'tv2', 'tv4', 0, '', 'images\\Home\\Living\\Tvunit\\tv4(2).png', 800),
(199, 'tv', 'tv3', 'tv4', 0, '', 'images\\Home\\Living\\Tvunit\\tv4(3).png', 800),
(200, 'tv', 'tv4', 'tv4', 0, '', 'images\\Home\\Living\\Tvunit\\tv4(4).png', 800),
(201, 'wu', 'wu1', 'wu1', 0, '', 'images\\Home\\Living\\Wallunit\\w1-01-01.png', 5000),
(202, 'wu', 'wu2', 'wu1', 0, '', 'images\\Home\\Living\\Wallunit\\w1-01-02.png', 5000),
(203, 'wu', 'wu3', 'wu1', 0, '', 'images\\Home\\Living\\Wallunit\\w1-01-03.png', 5000),
(204, 'wu', 'wu4', 'wu1', 0, '', 'images\\Home\\Living\\Wallunit\\w1-01-04.png', 5000),
(205, 'wu', 'wu5', 'wu1', 0, '', 'images\\Home\\Living\\Wallunit\\w1-01-05.png', 5000),
(206, 'wu', 'wu6', 'wu1', 0, '', 'images\\Home\\Living\\Wallunit\\w1-01-06.png', 5000),
(207, 'wu', 'wu7', 'wu1', 0, '', 'images\\Home\\Living\\Wallunit\\w1-01-07.png', 5000),
(208, 'wu', 'wu8', 'wu1', 0, '', 'images\\Home\\Living\\Wallunit\\w1-01-08.png', 5000),
(209, 'wu', 'wu1', 'wu2', 0, '', 'images\\Home\\Living\\Wallunit\\w2-01-01.png', 5500),
(210, 'wu', 'wu2', 'wu2', 0, '', 'images\\Home\\Living\\Wallunit\\w2-01-02.png', 5500),
(211, 'wu', 'wu3', 'wu2', 0, '', 'images\\Home\\Living\\Wallunit\\w2-01-03.png', 5500),
(212, 'wu', 'wu4', 'wu2', 0, '', 'images\\Home\\Living\\Wallunit\\w2-01-04.png', 5500),
(213, 'wu', 'wu1', 'wu3', 0, '', 'images\\Home\\Living\\Wallunit\\w3-01-01.png', 6000),
(214, 'wu', 'wu2', 'wu3', 0, '', 'images\\Home\\Living\\Wallunit\\w3-01-02.png', 6000),
(215, 'wu', 'wu3', 'wu3', 0, '', 'images\\Home\\Living\\Wallunit\\w3-01-03.png', 6000),
(216, 'wu', 'wu4', 'wu3', 0, '', 'images\\Home\\Living\\Wallunit\\w3-01-04.png', 6000),
(217, 'wu', 'wu5', 'wu3', 0, '', 'images\\Home\\Living\\Wallunit\\w3-01-05.png', 6000),
(218, 'wu', 'wu1', 'wu4', 0, '', 'images\\Home\\Living\\Wallunit\\w4-01-01.png', 7000),
(219, 'wu', 'wu2', 'wu4', 0, '', 'images\\Home\\Living\\Wallunit\\w4-01-02.png', 7000),
(220, 'wu', 'wu1', 'wu5', 0, '', 'images\\Home\\Living\\Wallunit\\w5-01-01.png', 7000),
(221, 'wu', 'wu2', 'wu5', 0, '', 'images\\Home\\Living\\Wallunit\\w5-01-02.png', 7000),
(222, 'wu', 'wu3', 'wu5', 0, '', 'images\\Home\\Living\\Wallunit\\w5-01-03.png', 7000),
(223, 'wu', 'wu4', 'wu5', 0, '', 'images\\Home\\Living\\Wallunit\\w5-01-04.png', 7000),
(224, 'Chair', 'Chair', 'Andrew', 0, 'Gray', 'images\\Home\\Kitchen\\chair\\c1\\c1-01-01.png', 500),
(225, 'Chair', 'Chair', 'Andrew', 0, 'Red', 'images\\Home\\Kitchen\\chair\\c2\\c2-01-01.png', 600),
(226, 'Chair', 'Chair', 'Andrew', 0, 'Gold', 'images\\Home\\Kitchen\\chair\\c3\\c3-01-01.png', 700),
(227, 'Chair', 'Chair', 'Dylan', 0, 'Gray', 'images\\Home\\Kitchen\\chair\\c4\\c1-01-01.png', 241),
(228, 'Chair', 'Chair', 'Dylan', 0, 'Red', 'images\\Home\\Kitchen\\chair\\c5\\c2-01-01.png', 346),
(229, 'Chair', 'Chair', 'Dylan', 0, 'Gold', 'images\\Home\\Kitchen\\chair\\c6\\c3-01-01.png', 345),
(230, 'Chair', 'Chair', 'Kit', 0, 'Gray', 'images\\Home\\Kitchen\\chair\\c7\\c1-01-01.png', 120),
(231, 'Chair', 'Chair', 'Kit', 0, 'Red', 'images\\Home\\Kitchen\\chair\\c8\\c2-01-01.png', 1234),
(232, 'Chair', 'Chair', 'Kit', 0, 'Gold', 'images\\Home\\Kitchen\\chair\\c9\\c3-01-01.png', 8475),
(233, 'Ot', 'Ot', 'Square', 3636, 'Oak', 'images\\Office\\Sqaure\\ot1\\of1-01-01.png', 345),
(234, 'Ot', 'Ot', 'Square', 3636, 'White', 'images\\Office\\Sqaure\\ot2\\of2-01-01.png', 123),
(235, 'Ot', 'Ot', 'Square', 3636, 'Walnut', 'images\\Office\\Sqaure\\ot3\\of3-01-01.png', 234),
(236, 'Ot', 'Ot', 'Square', 4848, 'Oak', 'images\\Office\\Sqaure\\ot4\\of4-01-01.png', 1234),
(237, 'Ot', 'Ot', 'Square', 4848, 'White', 'images\\Office\\Sqaure\\ot5\\of5-01-01.png', 456),
(238, 'Ot', 'Ot', 'Square', 4848, 'Walnut', 'images\\Office\\Sqaure\\ot6\\of6-01-01.png', 2354),
(239, 'Ot', 'Ot', 'Rectangle', 3660, 'Oak', 'images\\Office\\Rectangle\\ot7\\of7-01-01.png', 456),
(240, 'Ot', 'Ot', 'Rectamgle', 3660, 'White', 'images\\Office\\Rectangle\\ot8\\of8-01-01.png', 5678),
(241, 'Ot', 'Ot', 'Rectangle', 3660, 'Walnut', 'images\\Office\\Rectangle\\ot9\\of9-01-01.png', 3467),
(242, 'Ot', 'Ot', 'Rectangle', 3672, 'Oak', 'images\\Office\\Rectangle\\ot10\\of10-01-01.png', 234),
(243, 'Ot', 'Ot', 'Rectangle', 3672, 'White', 'images\\Office\\Rectangle\\ot11\\of11-01-01.png', 2345),
(244, 'Ot', 'Ot', 'Rectangle', 3672, 'Walnut', 'images\\Office\\Rectangle\\ot12\\of12-01-01.png', 123),
(245, 'Dt', 'Dt', 'Dt', 0, 'Oak-Gray', 'images\\Home\\Kitchen\\dt\\dt1\\dt1-01-01.png', 345),
(246, 'Dt', 'Dt', 'Dt', 0, 'Oak-Red', 'images\\Home\\Kitchen\\dt\\dt2\\dt2-01-01.png', 213),
(247, 'Dt', 'Dt', 'Dt', 0, 'Oak-Gold', 'images\\Home\\Kitchen\\dt\\dt3\\dt3-01-01.png', 456),
(248, 'Dt', 'Dt', 'Dt', 0, 'White-Gray', 'images\\Home\\Kitchen\\dt\\dt4\\dt4-01-01.png', 456),
(249, 'Dt', 'Dt', 'Dt', 0, 'White-Red', 'images\\Home\\Kitchen\\dt\\dt5\\dt5-01-01.png', 234),
(250, 'Dt', 'Dt', 'Dt', 0, 'White-Gold', 'images\\Home\\Kitchen\\dt\\dt6\\dt6-01-01.png', 456),
(251, 'Dt', 'Dt', 'Dt', 0, 'Wn-Gray', 'images\\Home\\Kitchen\\dt\\dt7\\dt7-01-01.png', 568),
(252, 'Dt', 'Dt', 'Dt', 0, 'Wn-Red', 'images\\Home\\Kitchen\\dt\\dt8\\dt8-01-01.png', 789),
(253, 'Dt', 'Dt', 'Dt', 0, 'Wn-Gold', 'images\\Home\\Kitchen\\dt\\dt9\\dt9-01-01.png', 678),
(254, 'Wardrobe', 'two', 'twod', 0, 'White', 'images\\Home\\Bed\\w2d\\w2d111.png', 5000),
(255, 'Wardrobe', 'two', 'twod', 0, 'White', 'images\\Home\\Bed\\w2d\\w2d112.png', 5000),
(256, 'Wardrobe', 'two', 'twod', 0, 'White', 'images\\Home\\Bed\\w2d\\w2d113.png', 5000),
(257, 'Wardrobe', 'two', 'twod', 0, 'White', 'images\\Home\\Bed\\w2d\\w2d114.png', 5000),
(258, 'Wardrobe', 'two', 'twod', 0, 'Brown', 'images\\Home\\Bed\\w2d\\w2d211.png', 5000),
(259, 'Wardrobe', 'two', 'twod', 0, 'Brown', 'images\\Home\\Bed\\w2d\\w2d212.png', 5000),
(260, 'Wardrobe', 'two', 'twod', 0, 'Brwon', 'images\\Home\\Bed\\w2d\\w2d213.png', 5000),
(261, 'Wardrobe', 'two', 'twod', 0, 'Green', 'images\\Home\\Bed\\w2d\\w2d221.png', 5000),
(262, 'Wardrobe', 'two', 'twod', 0, 'Green', 'images\\Home\\Bed\\w2d\\w2d222.png', 5000),
(263, 'Wardrobe', 'two', 'twod', 0, 'Green', 'images\\Home\\Bed\\w2d\\w2d223.png', 5000),
(264, 'Wardrobe', 'two', 'twod', 0, 'Gray', 'images\\Home\\Bed\\w2d\\w2d231.png', 5000),
(265, 'Wardrobe', 'two', 'twod', 0, 'Gray', 'images\\Home\\Bed\\w2d\\w2d232.png', 5000),
(266, 'Wardrobe', 'two', 'twod', 0, 'Gray', 'images\\Home\\Bed\\w2d\\w2d233.png', 5000),
(267, 'Wardrobe', 'two', 'twod', 0, 'Brown', 'images\\Home\\Bed\\w2d\\w2d311.png', 5000),
(268, 'Wardrobe', 'two', 'twod', 0, 'Brown', 'images\\Home\\Bed\\w2d\\w2d312.png', 5000),
(269, 'Wardrobe', 'two', 'twod', 0, 'Brown', 'images\\Home\\Bed\\w2d\\w2d313.png', 5000),
(270, 'Wardrobe', 'two', 'twod', 0, 'Gray', 'images\\Home\\Bed\\w2d\\w2d321.png', 5000),
(271, 'Wardrobe', 'two', 'twod', 0, 'Gray', 'images\\Home\\Bed\\w2d\\w2d322.png', 5000),
(272, 'Wardrobe', 'two', 'twod', 0, 'Gray', 'images\\Home\\Bed\\w2d\\w2d323.png', 5000),
(273, 'Wardrobe', 'two', 'twod', 0, 'Black', 'images\\Home\\Bed\\w2d\\w2d331.png', 5000),
(274, 'Wardrobe', 'two', 'twod', 0, 'Black', 'images\\Home\\Bed\\w2d\\w2d332.png', 5000),
(275, 'Wardrobe', 'two', 'twod', 0, 'Black', 'images\\Home\\Bed\\w2d\\w2d333.png', 5000),
(276, 'Wardrobe', 'three', 'threed', 0, 'White', 'images\\Home\\Bed\\w3d\\w3d111.png', 6000),
(277, 'Wardrobe', 'three', 'threed', 0, 'White', 'images\\Home\\Bed\\w3d\\w3d112.png', 6000),
(278, 'Wardrobe', 'three', 'threed', 0, 'Brown', 'images\\Home\\Bed\\w3d\\w3d121.png', 6000),
(279, 'Wardrobe', 'three', 'threed', 0, 'Brown', 'images\\Home\\Bed\\w3d\\w3d122.png', 6000),
(280, 'Wardrobe', 'three', 'threed', 0, 'Green', 'images\\Home\\Bed\\w3d\\w3d131.png', 6000),
(281, 'Wardrobe', 'three', 'threed', 0, 'Green', 'images\\Home\\Bed\\w3d\\w3d132.png', 6000),
(282, 'Wardrobe', 'three', 'threed', 0, 'Brown', 'images\\Home\\Bed\\w3d\\w3d211.png', 6000),
(283, 'Wardrobe', 'three', 'threed', 0, 'Brown', 'images\\Home\\Bed\\w3d\\w3d212.png', 6000),
(284, 'Wardrobe', 'three', 'threed', 0, 'Green', 'images\\Home\\Bed\\w3d\\w3d221.png', 6000),
(285, 'Wardrobe', 'three', 'threed', 0, 'Green', 'images\\Home\\Bed\\w3d\\w3d222.png', 6000),
(286, 'Wardrobe', 'three', 'threed', 0, 'Green', 'images\\Home\\Bed\\w3d\\w3d231.png', 6000),
(287, 'Wardrobe', 'three', 'threed', 0, 'Green', 'images\\Home\\Bed\\w3d\\w3d332.png', 6000),
(288, 'Wardrobe', 'three', 'threed', 0, 'Brown', 'images\\Home\\Bed\\w3d\\w3d311.png', 6000),
(289, 'Wardrobe', 'three', 'threed', 0, 'Brown', 'images\\Home\\Bed\\w3d\\w3d312.png', 6000),
(290, 'Wardrobe', 'three', 'threed', 0, 'Green', 'images\\Home\\Bed\\w3d\\w3d321.png', 6000),
(291, 'Wardrobe', 'three', 'threed', 0, 'Green', 'images\\Home\\Bed\\w3d\\w3d322.png', 6000),
(292, 'Wardrobe', 'three', 'threed', 0, 'Gray', 'images\\Home\\Bed\\w3d\\w3d331.png', 6000),
(293, 'Wardrobe', 'three', 'threed', 0, 'Gray', 'images\\Home\\Bed\\w3d\\w3d332.png', 6000),
(294, 'Wardrobe', 'four', 'fourd', 0, 'White', 'images\\Home\\Bed\\w4d\\w4d111.png', 6000),
(295, 'Wardrobe', 'four', 'fourd', 0, 'White', 'images\\Home\\Bed\\w4d\\w4d112.png', 6000),
(296, 'Wardrobe', 'four', 'fourd', 0, 'White', 'images\\Home\\Bed\\w4d\\w4d121.png', 6000),
(297, 'Wardrobe', 'four', 'fourd', 0, 'Green', 'images\\Home\\Bed\\w4d\\w4d122.png', 6000),
(298, 'Wardrobe', 'four', 'fourd', 0, 'Green', 'images\\Home\\Bed\\w4d\\w4d123.png', 6000),
(299, 'Wardrobe', 'four', 'fourd', 0, 'Gray', 'images\\Home\\Bed\\w4d\\w4d131.png', 6000),
(300, 'Wardrobe', 'four', 'fourd', 0, 'Gray', 'images\\Home\\Bed\\w4d\\w4d132.png', 6000),
(301, 'Wardrobe', 'four', 'fourd', 0, 'Gray', 'images\\Home\\Bed\\w4d\\w4133.png', 6000),
(302, 'Wardrobe', 'four', 'fourd', 0, 'Brown', 'images\\Home\\Bed\\w4d\\w4d211.png', 6000),
(303, 'Wardrobe', 'four', 'fourd', 0, 'Brown', 'images\\Home\\Bed\\w4d\\w4d212.png', 6000),
(304, 'Wardrobe', 'four', 'fourd', 0, 'Brown', 'images\\Home\\Bed\\w4d\\w4d213.png', 6000),
(305, 'Wardrobe', 'four', 'fourd', 0, 'Gray', 'images\\Home\\Bed\\w4d\\w4d221.png', 6000),
(306, 'Wardrobe', 'four', 'fourd', 0, 'Gray', 'images\\Home\\Bed\\w4d\\w4d222.png', 6000),
(307, 'Wardrobe', 'four', 'fourd', 0, 'Gray', 'images\\Home\\Bed\\w4d\\w4d223.png', 6000),
(309, 'Wardrobe', 'four', 'fourd', 0, 'Brown', 'images\\Home\\Bed\\w4d\\w4d231.png', 6000),
(310, 'Wardrobe', 'four', 'fourd', 0, 'Brown', 'images\\Home\\Bed\\w4d\\w4d232.png', 6000),
(311, 'Wardrobe', 'four', 'fourd', 0, 'Brown', 'images\\Home\\Bed\\w4d\\w4d233.png', 6000),
(312, 'Wardrobe', 'four', 'fourd', 0, 'Brown', 'images\\Home\\Bed\\w4d\\w4d311.png', 6000),
(313, 'Wardrobe', 'four', 'fourd', 0, 'Brown', 'images\\Home\\Bed\\w4d\\w4d312.png', 6000),
(314, 'Wardrobe', 'four', 'fourd', 0, 'Brown', 'images\\Home\\Bed\\w4d\\w4d313.png', 6000),
(315, 'Wardobe', 'four', 'fourd', 0, 'Black', 'images\\Home\\Bed\\w4d\\w4d321.png', 6000),
(316, 'Wardrobe', 'four', 'fourd', 0, 'Black', 'images\\Home\\Bed\\w4d\\w4d322.png', 6000),
(317, 'Wardrobe', 'four', 'fourd', 0, 'Black', 'images\\Home\\Bed\\w4d\\w4d323.png', 6000),
(318, 'Wardrobe', 'four', 'fourd', 0, 'Gray', 'images\\Home\\Bed\\w4d\\w4d331.png', 6000),
(319, 'Wardrobe', 'four', 'fourd', 0, 'Gray', 'images\\Home\\Bed\\w4d\\w4d332.png', 6000),
(320, 'Wardrobe', 'four', 'fourd', 0, 'Gray', 'images\\Home\\Bed\\w4d\\w4d333.png', 6000);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Cid` int(3) NOT NULL,
  `Fid` int(5) NOT NULL,
  `Ordid` int(5) NOT NULL,
  `Quantity` int(5) NOT NULL,
  `Tprice` int(5) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Cid` int(3) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Cid`, `Name`, `Email`, `Password`) VALUES
(1, 'abc', 'abc@gmail.com', 202),
(2, 'def', 'def@gmail.com', 4),
(5, 'Hasti', 'kawugd@gmail.com', 0),
(6, 'qwerty', 'q@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rtnrv`
--

CREATE TABLE `rtnrv` (
  `Cid` int(3) NOT NULL,
  `Fid` int(3) NOT NULL,
  `Ordid` int(3) NOT NULL,
  `Rt` int(5) NOT NULL,
  `Rv` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ui`
--

CREATE TABLE `ui` (
  `UIid` int(3) NOT NULL,
  `Fid` int(3) NOT NULL,
  `Cid` int(3) NOT NULL,
  `Unm` varchar(30) NOT NULL,
  `Uimg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appfur`
--
ALTER TABLE `appfur`
  ADD PRIMARY KEY (`Fid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `Cid` (`Cid`),
  ADD KEY `Fid` (`Fid`),
  ADD KEY `Cid_2` (`Cid`),
  ADD KEY `Fid_2` (`Fid`);

--
-- Indexes for table `fur`
--
ALTER TABLE `fur`
  ADD PRIMARY KEY (`Fid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Ordid`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`Cid`);

--
-- Indexes for table `rtnrv`
--
ALTER TABLE `rtnrv`
  ADD KEY `Ordid` (`Cid`,`Fid`,`Ordid`);

--
-- Indexes for table `ui`
--
ALTER TABLE `ui`
  ADD PRIMARY KEY (`UIid`),
  ADD KEY `Cid` (`Fid`,`Cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appfur`
--
ALTER TABLE `appfur`
  MODIFY `Fid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `fur`
--
ALTER TABLE `fur`
  MODIFY `Fid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `Cid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ui`
--
ALTER TABLE `ui`
  MODIFY `UIid` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
