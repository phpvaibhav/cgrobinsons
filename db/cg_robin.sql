-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 30, 2019 at 01:41 AM
-- Server version: 5.6.44-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cg_robin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `userType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Admin',
  `profileImage` varchar(255) NOT NULL,
  `contactNumber` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Active',
  `authToken` text NOT NULL,
  `passToken` text NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullName`, `email`, `password`, `userType`, `profileImage`, `contactNumber`, `status`, `authToken`, `passToken`, `crd`, `upd`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$RTG0LIJMlWZc0/0bGSvD..LO2SAIA9FAE7CwffXp9ztNA1Wlbcmey', 1, '', '(111) 111-1111', 1, '2ff99e734192dcade434189606aae9065e208c6d', 'e5309a9e62031ca2acfe429e2930c5a2a90dcf1d', '2019-08-01 13:15:47', '2019-09-30 06:41:28'),
(2, 'Vaibhav', 'vaibhavsharma.otc@gmail.com', '$2y$10$94HB8LW1aF0Ak9Sm5L3PvOZMc4Vu9eVi4WodjHo8bd9sOIw3AI38C', 1, 'dG8hgf6oaIqcwRD5.jpg', '(121) 212-1212', 1, '969e6b412a8bf5f225511eb0343f64266229ee64', 'f039aff9f58a4ed5150ab364b410681f7f7d23db', '2019-08-01 14:03:16', '2019-08-22 05:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `assignVehicle`
--

CREATE TABLE `assignVehicle` (
  `assignVehicleId` bigint(20) NOT NULL,
  `vehicleId` bigint(20) NOT NULL,
  `driverId` bigint(20) NOT NULL,
  `assignDate` date NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignVehicle`
--

INSERT INTO `assignVehicle` (`assignVehicleId`, `vehicleId`, `driverId`, `assignDate`, `crd`, `upd`) VALUES
(4, 4, 4, '2019-08-08', '2019-08-08 09:29:12', '2019-08-08 09:29:12'),
(5, 5, 4, '2019-08-08', '2019-08-08 13:00:50', '2019-08-08 13:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `carManufacturers`
--

CREATE TABLE `carManufacturers` (
  `id` bigint(20) NOT NULL,
  `title` varchar(45) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `createdAt` int(11) NOT NULL,
  `updatedAt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carManufacturers`
--

INSERT INTO `carManufacturers` (`id`, `title`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Acura', 1, 1539843076, 1539843076),
(2, 'Audi', 1, 1539843076, 1539843076),
(3, 'Chevrolet', 1, 1539843076, 1539843076),
(4, 'Chrysler', 1, 1539843076, 1539843076),
(5, 'Daewoo', 1, 1539843076, 1539843076),
(6, 'Datsun', 1, 1539843076, 1539843076),
(7, 'Dodge', 1, 1539843076, 1539843076),
(8, 'Ferrari', 1, 1539843076, 1539843076),
(9, 'Fiat', 1, 1539843076, 1539843076),
(10, 'Ford', 1, 1539843076, 1539843076),
(11, 'GMC', 1, 1539843076, 1539843076),
(12, 'Honda', 1, 1539843076, 1539843076),
(13, 'Hummer', 1, 1539843076, 1539843076),
(14, 'Hyundai', 1, 1539843076, 1539843076),
(15, 'Infiniti', 1, 1539843076, 1539843076),
(16, 'Isuzu', 1, 1539843076, 1539843076),
(17, 'Jaguar', 1, 1539843076, 1539843076),
(18, 'Jeep', 1, 1539843076, 1539843076),
(19, 'Kia', 1, 1539843076, 1539843076),
(20, 'Lamborghini', 1, 1539843076, 1539843076),
(21, 'Land-rover', 1, 1539843076, 1539843076),
(22, 'Lexus', 1, 1539843076, 1539843076),
(23, 'Lincoln', 1, 1539843076, 1539843076),
(24, 'Mazda', 1, 1539843076, 1539843076),
(25, 'Mercedes-Benz', 1, 1539843076, 1539843076),
(26, 'Mercury', 1, 1539843076, 1539843076),
(27, 'Mini', 1, 1539843076, 1539843076),
(28, 'Mitsubishi', 1, 1539843076, 1539843076),
(29, 'Nissan', 1, 1539843076, 1539843076),
(30, 'Oldsmobile', 1, 1539843076, 1539843076),
(31, 'Peugeot', 1, 1539843076, 1539843076),
(32, 'Plymouth', 1, 1539843076, 1539843076),
(33, 'Pontiac', 1, 1539843076, 1539843076),
(34, 'Porsche', 1, 1539843076, 1539843076),
(35, 'Reliant', 1, 1539843076, 1539843076),
(36, 'Renault', 1, 1539843076, 1539843076),
(37, 'Rolls-Royce', 1, 1539843076, 1539843076),
(38, 'Saab', 1, 1539843076, 1539843076),
(39, 'Saturn', 1, 1539843076, 1539843076),
(40, 'Scion', 1, 1539843076, 1539843076),
(41, 'Skoda', 1, 1539843076, 1539843076),
(42, 'Smart', 1, 1539843076, 1539843076),
(43, 'Subaru', 1, 1539843076, 1539843076),
(44, 'Suzuki', 1, 1539843076, 1539843076),
(45, 'Tesla', 1, 1539843076, 1539843076),
(46, 'Toyota', 1, 1539843076, 1539843076),
(47, 'Triumph', 1, 1539843076, 1539843076),
(48, 'Venturi', 1, 1539843076, 1539843076),
(49, 'Volkswagen', 1, 1539843076, 1539843076),
(50, 'Volvo', 1, 1539843076, 1539843076),
(51, 'Other', 1, 1539843076, 1539843076);

-- --------------------------------------------------------

--
-- Table structure for table `customerAddress`
--

CREATE TABLE `customerAddress` (
  `addressId` bigint(20) NOT NULL,
  `customerId` bigint(20) NOT NULL,
  `address` text NOT NULL,
  `street` varchar(100) NOT NULL,
  `street2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerAddress`
--

INSERT INTO `customerAddress` (`addressId`, `customerId`, `address`, `street`, `street2`, `city`, `state`, `zip`, `country`, `latitude`, `longitude`) VALUES
(2, 2, 'The Gatehouse, 84 Billingham Rd', '', '', 'Norton', 'Stockton on Tees', 'TS20 2SA', 'United Kingdom', '0.00000000', '0.00000000'),
(3, 3, 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71719933', '75.86840057'),
(4, 5, 'Yfg Sales Aps, Mejerivej, Karlslunde, Denmark', '27', 'Mejerivej', 'Karlslunde', '', '2690', 'Denmark', '55.56650162', '12.21749973'),
(6, 7, 'Test address', '', '', '', '', '', '', '0.00000000', '0.00000000'),
(7, 9, 'Indooroopilly Shopping Centre, Moggill Road, Indooroopilly QLD, Australia', '322', 'Moggill Road', 'Indooroopilly', 'QLD', '4068', 'Australia', '-27.49915695', '152.97306824'),
(8, 10, 'Abu Dhabi - United Arab Emirates', '', '123456789012345678901234567890', 'Abu Dhabi', 'Abu Dhabi', '', 'United Arab Emirates', '24.45389938', '54.37730026'),
(9, 11, 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720695', '75.86840820'),
(11, 13, 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720695', '75.86840820'),
(12, 14, '149 High St, Yarm, UK', '149', 'High Street', '', 'England', 'TS159A', 'United Kingdom', '54.51137924', '-1.35624695');

-- --------------------------------------------------------

--
-- Table structure for table `customerMeta`
--

CREATE TABLE `customerMeta` (
  `customerMetaId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `creditHoldStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1:Complete,0:Pending',
  `address` text NOT NULL,
  `street` varchar(100) NOT NULL,
  `street2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `billAddress` text NOT NULL,
  `billStreet` varchar(100) NOT NULL,
  `billStreet2` varchar(100) NOT NULL,
  `billCity` varchar(100) NOT NULL,
  `billState` varchar(100) NOT NULL,
  `billZip` varchar(100) NOT NULL,
  `billCountry` varchar(100) NOT NULL,
  `billLatitude` decimal(10,8) NOT NULL,
  `billLongitude` decimal(11,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerMeta`
--

INSERT INTO `customerMeta` (`customerMetaId`, `userId`, `creditHoldStatus`, `address`, `street`, `street2`, `city`, `state`, `zip`, `country`, `latitude`, `longitude`, `billAddress`, `billStreet`, `billStreet2`, `billCity`, `billState`, `billZip`, `billCountry`, `billLatitude`, `billLongitude`) VALUES
(2, 2, 0, 'The Gatehouse, 84 Billingham Rd', '', '', 'Norton', 'Stockton on Tees', 'TS20 2SA', 'United Kingdom', '0.00000000', '0.00000000', 'The Gatehouse, 84 Billingham Rd', '', '', '', '', '', '', '0.00000000', '0.00000000'),
(3, 3, 1, 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71719933', '75.86840057', 'Outthinking Pvt Ltd, OMBR Layout, Banasawadi, Bengaluru, Karnataka, India', '', '', 'Bengaluru', 'KA', '452003', 'India', '13.00870037', '77.65560150'),
(4, 5, 1, 'Yfg Sales Aps, Mejerivej, Karlslunde, Denmark', '27', 'Mejerivej', 'Karlslunde', '', '2690', 'Denmark', '55.56650162', '12.21749973', 'Tyler, TX, USA', 'jkjkkj', 'hfgfjghnjcvj', 'Tyler', 'TX', '2690', 'United States', '32.35129929', '-95.30110168'),
(6, 7, 0, 'Test address', '', '', '', '', '', '', '0.00000000', '0.00000000', 'Test address ', '123', '456', 'Test city', 'Test state', '123123', '3546', '0.00000000', '0.00000000'),
(7, 9, 0, 'Indooroopilly Shopping Centre, Moggill Road, Indooroopilly QLD, Australia', '322', 'Moggill Road', 'Indooroopilly', 'QLD', '4068', 'Australia', '-27.49915695', '152.97306824', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '4068', 'India', '22.71720695', '75.86840820'),
(8, 10, 0, 'Abu Dhabi - United Arab Emirates', '', '123456789012345678901234567890', 'Abu Dhabi', 'Abu Dhabi', '', 'United Arab Emirates', '24.45389938', '54.37730026', 'Afyonkarahisar, Afyonkarahisar Merkez/Afyonkarahisar, Turkey', '', '123456789012345678901234567890', 'Afyonkarahisar', 'Afyonkarahisar', '', 'Turkey', '38.75690079', '30.53870010'),
(9, 11, 0, 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720695', '75.86840820', 'Indiana Department of Education, West Washington Street, Indianapolis, IN, USA', '115', 'West Washington Street', 'Indianapolis', 'IN', '452003', 'United States', '39.76654053', '-86.16078186'),
(11, 13, 0, 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720695', '75.86840820', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720695', '75.86840820'),
(12, 14, 0, '149 High St, Yarm, UK', '149', 'High Street', '', 'England', 'TS159A', 'United Kingdom', '54.51137924', '-1.35624695', '149 High St, Yarm, UK', '149', 'High Street', '', 'England', 'TS159A', 'United Kingdom', '54.51137924', '-1.35624695');

-- --------------------------------------------------------

--
-- Table structure for table `driverMeta`
--

CREATE TABLE `driverMeta` (
  `driverMetaId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `emergencyPersonName` varchar(255) NOT NULL,
  `emergencyPersonNumber` varchar(255) NOT NULL,
  `dob` date NOT NULL COMMENT 'Date of Birth',
  `doh` date NOT NULL COMMENT 'Date of Hire',
  `licenseNumber` varchar(255) NOT NULL,
  `licenseExpiryDate` date NOT NULL,
  `address` text NOT NULL,
  `street` varchar(100) NOT NULL,
  `street2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driverMeta`
--

INSERT INTO `driverMeta` (`driverMetaId`, `userId`, `emergencyPersonName`, `emergencyPersonNumber`, `dob`, `doh`, `licenseNumber`, `licenseExpiryDate`, `address`, `street`, `street2`, `city`, `state`, `zip`, `country`, `latitude`, `longitude`) VALUES
(1, 4, 'OR', '(534) 534-5354', '2019-08-27', '2019-08-11', '3454354', '2019-08-14', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71719933', '75.86840057'),
(2, 15, '1234567890', '(123) 456-7890', '1990-03-02', '2019-03-01', '1234567890', '2020-12-31', 'Outthinkcoders, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Shekhar Court', 'Indore', 'MP', '452018', 'India', '22.72272682', '75.88706970'),
(3, 16, '1234567890', '(12345) 612345', '2019-09-04', '2019-09-02', '1234567890', '2020-02-21', 'Mumbai Domestic airport, Navpada, Vile Parle East, Vile Parle, Mumbai, Maharashtra, India', '', '', 'Mumbai', 'MH', '400099', 'India', '19.09355545', '72.85659027'),
(4, 17, '1234567890', '(12345) 678900', '2019-09-16', '2019-09-03', '132312123123123123123123123', '2019-09-30', 'India Gate, New Delhi, Delhi, India', '', '', 'New Delhi', 'DL', '', 'India', '28.61108780', '77.23451996');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `jobId` bigint(20) NOT NULL,
  `jobName` varchar(255) NOT NULL,
  `jobTypeId` bigint(20) NOT NULL,
  `customerId` bigint(20) NOT NULL,
  `driverId` bigint(20) NOT NULL,
  `startDate` datetime NOT NULL,
  `startTime` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `street` varchar(100) NOT NULL,
  `street2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `jobStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:Open,1:In-progress,2:Completed',
  `geoFencing` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1:Yes ,0:No',
  `points` text NOT NULL,
  `polygonColor` varchar(255) NOT NULL,
  `boundary` geometry NOT NULL,
  `jobReport` text NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jobId`, `jobName`, `jobTypeId`, `customerId`, `driverId`, `startDate`, `startTime`, `address`, `street`, `street2`, `city`, `state`, `zip`, `country`, `latitude`, `longitude`, `jobStatus`, `geoFencing`, `points`, `polygonColor`, `boundary`, `jobReport`, `crd`, `upd`) VALUES
(2, 'Job', 1, 9, 4, '2019-08-09 00:00:00', '2:00 PM', 'A Sector Road, Sonnappa Layout, Sector A, Amruthnagar, Byatarayanapura, Bengaluru, Karnataka, India', 'A Sector Road', 'A Sector Road', 'Bengaluru', 'KA', '560092', 'India', '13.06050014', '77.59860229', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"\",\"driverSignature\":null,\"workImage\":null},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568198878.\",\"workImage\":[\"1568198872.jpg\",\"1568198875.jpg\"]}}', '2019-09-11 10:47:59', '2019-08-10 08:16:57'),
(4, 'Test user', 2, 3, 4, '2019-08-08 00:00:00', '3:45 PM', 'Curitiba, State of Paran√°, Brazil', '', '', 'Curitiba', 'PR', '', 'Brazil', '-25.42895317', '-49.26713562', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"\",\"driverSignature\":null,\"workImage\":null},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568204571.\",\"workImage\":[\"1568204563.jpg\",\"1568204566.jpg\"]}}', '2019-09-11 12:22:55', '2019-08-10 10:11:38'),
(5, 'Front Car Park', 3, 2, 4, '2019-08-23 00:00:00', '7:30 AM', 'The Gatehouse, 84 Billingham Rd, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029007', '-1.30595410', 0, 0, '', '', '', '', '2019-08-22 15:19:29', '2019-08-22 15:19:29'),
(7, 'Test Job', 3, 13, 4, '2019-09-12 00:00:00', '11:45 AM', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720695', '75.86840820', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"sdfasdfasdfads dsfasdfadsfasf sdfdsf asdf\",\"driverSignature\":\"1568192981.\",\"workImage\":[\"1568192975.jpg\",\"1568192978.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568205289.\",\"workImage\":[\"1568205286.jpg\",\"1568205288.jpg\"]}}', '2019-09-11 12:34:52', '2019-09-11 06:14:01'),
(8, 'Test Job2', 2, 13, 4, '2019-09-12 00:00:00', '3:00 PM', 'Railway Station, Coimbatore, State Bank Road, Opp.Railway Station, Gopalapuram, Coimbatore, Tamil Nadu, India', '', 'State Bank Road', 'Coimbatore', 'TN', '641018', 'India', '10.99603844', '76.96777344', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Adsf adsf asdf asdfasd f\",\"driverSignature\":\"1568193647.\",\"workImage\":[\"1568193638.jpg\",\"1568193642.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568199452.\",\"workImage\":[\"1568199445.jpg\",\"1568199448.jpg\"]}}', '2019-09-11 10:57:33', '2019-09-11 09:18:59'),
(10, 'Test Job 3', 1, 13, 4, '2019-09-11 00:00:00', '6:30 PM', 'Mumbai Airport (BOM), Mumbai, Maharashtra, India', '', '', 'Mumbai', 'MH', '400099', 'India', '19.08955956', '72.86561584', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Fastest asdf asdf asdf\",\"driverSignature\":\"1568206794.\",\"workImage\":[\"1568206790.\",\"1568206792.\"]},\"afterWork\":{\"endDateTime\":\"1970-01-01 12:00:00 AM\",\"comments\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"customerSignature\":\"1568275977.jpg\",\"workImage\":[\"1568275973.jpg\",\"1568275975.jpg\",\"1568275976.jpg\"]}}', '2019-09-12 08:12:59', '2019-09-11 12:51:53'),
(11, 'Test Job 4', 1, 13, 4, '2019-09-12 00:00:00', '11:15 AM', 'Railway Station, Coimbatore, State Bank Road, Opp.Railway Station, Gopalapuram, Coimbatore, Tamil Nadu, India', '', 'State Bank Road', 'Coimbatore', 'TN', '641018', 'India', '10.99603844', '76.96777344', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Sassafras deaf adds ads faded\",\"driverSignature\":\"1568267151.\",\"workImage\":[\"1568267148.\",\"1568267150.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568276242.\",\"workImage\":[\"1568276236.\",\"1568276238.\",\"1568276240.\"]}}', '2019-09-12 08:17:24', '2019-09-12 05:42:42'),
(12, 'Test Job 5', 2, 13, 4, '2019-09-12 00:00:00', '11:30 AM', 'Railway Station, Coimbatore, State Bank Road, Opp.Railway Station, Gopalapuram, Coimbatore, Tamil Nadu, India', '', 'State Bank Road', 'Coimbatore', 'TN', '641018', 'India', '10.99603844', '76.96777344', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"  Diff adds ads fast f\",\"driverSignature\":\"1568267837.\",\"workImage\":[\"1568267833.\",\"1568267835.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568282446.\",\"workImage\":[\"1568282440.\",\"1568282442.\",\"1568282445.\"]}}', '2019-09-12 10:00:48', '2019-09-12 05:47:15'),
(13, 'Test Job 6', 1, 13, 4, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41836166', '12.20352936', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Adam add add adds add asdf\",\"driverSignature\":\"1568268529.\",\"workImage\":[\"1568268525.\",\"1568268527.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568277003.\",\"workImage\":[\"1568276997.\",\"1568277000.\",\"1568277001.\"]}}', '2019-09-12 08:30:05', '2019-09-12 06:01:25'),
(14, 'Test Job 6-1', 1, 13, 4, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Dsafsdf dsf assessed adsfa add\",\"driverSignature\":\"1568268630.\",\"workImage\":[\"1568268625.\",\"1568268627.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Dads faded adsf adsfdsafdsafas dread\",\"customerSignature\":\"1568637676.\",\"workImage\":[\"1568637670.\",\"1568637672.\",\"1568637674.\"]}}', '2019-09-16 12:41:18', '2019-09-12 06:01:25'),
(15, 'Test Job 6-2', 1, 13, 4, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 1, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Dsfasdfasd \",\"driverSignature\":\"1568269592.\",\"workImage\":[\"1568269587.\",\"1568269590.\"]}}', '2019-09-12 06:26:34', '2019-09-12 06:01:25'),
(16, 'Test Job 6-3', 1, 13, 4, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 1, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Daddy\\u2019s dfasdfadsfads fadsfasdf asdf\",\"driverSignature\":\"1568270402.\",\"workImage\":[\"1568270398.\",\"1568270400.\"]}}', '2019-09-12 06:40:04', '2019-09-12 06:01:25'),
(17, 'Test Job 6-4', 1, 13, 4, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 1, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Daddy dsf adsfasfdsfas faded adds\",\"driverSignature\":\"1568270664.\",\"workImage\":[\"1568270661.\",\"1568270662.\"]}}', '2019-09-12 06:44:26', '2019-09-12 06:01:25'),
(18, 'Test Job 6-5', 1, 13, 4, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 1, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Sdfasdf asdfa dsf adsfasdf\",\"driverSignature\":\"1568270803.\",\"workImage\":[\"1568270799.\",\"1568270801.\"]}}', '2019-09-12 06:46:45', '2019-09-12 06:01:25'),
(19, 'Test Job 6-6', 1, 13, 4, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 1, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Gas fads gas sodas faded add\",\"driverSignature\":\"1568708156.\",\"workImage\":[\"1568708154.\"]}}', '2019-09-17 08:15:59', '2019-09-12 06:01:25'),
(20, 'Test Job 6-7', 1, 13, 15, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"This is test \",\"driverSignature\":\"1568711859.\",\"workImage\":[\"1568711854.\",\"1568711855.\",\"1568711857.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Sdafasfas asdf sdf asdf\",\"customerSignature\":\"1568887742.\",\"workImage\":[\"1568887736.\",\"1568887738.\",\"1568887740.\"]}}', '2019-09-19 10:09:04', '2019-09-12 06:01:25'),
(21, 'Test Job 6-8', 1, 13, 15, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Test user sign\",\"driverSignature\":\"1568875547.\",\"workImage\":[\"1568875541.\",\"1568875542.\",\"1568875544.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Test\",\"customerSignature\":\"1568881805.\",\"workImage\":[\"1568881798.\",\"1568881801.\",\"1568881803.\"]}}', '2019-09-19 08:30:07', '2019-09-12 06:01:25'),
(23, 'Test Job 6-10', 1, 13, 15, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Jkhkjhjkhjk hkjhkjh jkhjkh ohh jkhkjh\",\"driverSignature\":\"1568875991.\",\"workImage\":[\"1568875986.\",\"1568875988.\",\"1568875990.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Sadfadsfadsf adsf sadasdf asdf\",\"customerSignature\":\"1568897669.\",\"workImage\":[\"1568897661.\",\"1568897663.\",\"1568897666.\"]}}', '2019-09-19 12:54:32', '2019-09-12 06:01:25'),
(24, 'Test Job 6-11', 1, 13, 15, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Test\",\"driverSignature\":\"1568881625.\",\"workImage\":[\"1568881619.\",\"1568881621.\",\"1568881623.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Test \",\"customerSignature\":\"1568881668.\",\"workImage\":[\"1568881661.\",\"1568881664.\",\"1568881666.\"]}}', '2019-09-19 08:27:50', '2019-09-12 06:01:25'),
(25, 'Test Job 6-12', 1, 13, 15, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Sadf sdfsfsfdsfasdfasfs sdfsdfsdfa sdf sdf sadf sdf sdf sdf asdf sdf asdf\",\"driverSignature\":\"1568714064.\",\"workImage\":[\"1568714057.\",\"1568714059.\",\"1568714062.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Asdfs sfdasdfsdf asdf\",\"customerSignature\":\"1568959116.\",\"workImage\":[\"1568959109.\",\"1568959111.\",\"1568959114.\"]}}', '2019-09-20 05:58:38', '2019-09-12 06:01:25'),
(26, 'Test Job 6-13', 1, 13, 15, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Dawgs disagree asdfdsfsdfdsfsaf s sdf sdf as\",\"driverSignature\":\"1568714246.\",\"workImage\":[\"1568714240.\",\"1568714243.\",\"1568714244.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"1234567890\",\"customerSignature\":\"1569230201.\",\"workImage\":[\"1569230196.\",\"1569230199.\"]}}', '2019-09-23 09:16:44', '2019-09-12 06:01:25'),
(27, 'Test Job 6-14', 1, 13, 15, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Fasdfasdfasfsadf sdfs\",\"driverSignature\":\"1568714328.\",\"workImage\":[\"1568714322.\",\"1568714324.\",\"1568714326.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Drastic asdfsadfsfs\",\"customerSignature\":\"1568959287.\",\"workImage\":[\"1568959281.\",\"1568959283.\",\"1568959285.\"]}}', '2019-09-20 06:01:29', '2019-09-12 06:01:25'),
(28, 'Test Job 6-15', 1, 13, 15, '2019-09-13 00:00:00', '11:30 AM', 'Ravenna, Province of Ravenna, Italy', '', '', 'Ravenna', 'Emilia-Romagna', '', 'Italy', '44.41839981', '12.20349979', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Deaf sdfsdfsd faded sdfasdf sdf deaf deaf sdf dsfadsf sad sdf sdf \",\"driverSignature\":\"1568713373.\",\"workImage\":[\"1568713368.\",\"1568713370.\",\"1568713371.\"]},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568713539.\",\"workImage\":[\"1568713533.\",\"1568713536.\",\"1568713537.\"]}}', '2019-09-17 09:45:41', '2019-09-12 06:01:25'),
(29, 'Test Job 101', 1, 14, 4, '2019-09-18 00:00:00', '11:00 AM', '149 High St, Yarm, UK', '149', 'High Street', '', 'England', 'TS15 9', 'United Kingdom', '54.51139832', '-1.35625005', 0, 1, '22.812008,75.645554|22.800615,75.97789|22.677759,75.97377|22.656217,75.815842|22.724635,75.667526|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0Tsπ¡PÈR@\"ú¡ﬂœ6@xEøï˛R@‚Ø…\ZıÃ6@‹Ùg?R˛R@’ë#ùÅ≠6@-]¡6ÙR@IZ÷˝ß6@≥Œ¯æ∏ÍR@vâÍ≠Åπ6@Tsπ¡PÈR@\"ú¡ﬂœ6@', '', '2019-09-17 09:36:20', '2019-09-17 09:14:42'),
(30, 'Test Job 1', 4, 13, 16, '2019-09-18 00:00:00', '2:15 PM', 'Indira Gandhi International Airport (DEL), Delhi, India', '', '', 'New Delhi', 'DL', '110037', 'India', '28.55616188', '77.09996033', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"Test \",\"driverSignature\":\"1569235511.\",\"workImage\":[\"1569235507.\",\"1569235509.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"Faded asdf adds ads add sad\",\"customerSignature\":\"1569240596.\",\"workImage\":[\"1569240592.\",\"1569240594.\"]}}', '2019-09-23 12:09:59', '2019-09-19 08:36:09'),
(31, 'New Job', 1, 13, 15, '2019-09-23 00:00:00', '3:30 PM', 'Indira Gandhi International Airport (DEL), New Delhi, Delhi, India', '', '', 'New Delhi', 'DL', '110037', 'India', '28.55616188', '77.09996033', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-26 03:54:00 PM\",\"comments\":\"new comment before starting job.\",\"driverSignature\":\"1569493490.jpg\",\"workImage\":[\"1569493485.jpg\",\"1569493488.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-09-26 07:29:00 PM\",\"comments\":\"do j kind\",\"customerSignature\":\"1569506401.jpg\",\"workImage\":[\"1569506393.jpg\",\"1569506397.jpg\",\"1569506399.jpg\"]}}', '2019-09-26 14:00:04', '2019-09-23 09:50:31'),
(32, 'New Job 1', 3, 13, 15, '2019-09-23 00:00:00', '3:30 PM', 'Malasiqui, Pangasinan, Philippines', '', '', 'Malasiqui', 'Ilocos Region', '', 'Philippines', '15.91954422', '120.45880890', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-26 04:06:00 PM\",\"comments\":\"dfdfd\",\"driverSignature\":\"1569494197.jpg\",\"workImage\":[\"1569494190.jpg\",\"1569494193.jpg\",\"1569494195.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 11:15:00 AM\",\"comments\":\"since sign docs then\\nhis\\nJoe\\ngood\\nthis\\nChris if us is Ritz sis\",\"customerSignature\":\"1569563165.jpg\",\"workImage\":[\"1569563157.jpg\",\"1569563160.jpg\",\"1569563163.jpg\"]}}', '2019-09-27 05:46:08', '2019-09-23 09:51:27'),
(33, 'Test Job 98', 1, 13, 16, '2019-09-22 00:00:00', '4:00 PM', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720695', '75.86840820', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"Fast asdf deaf said add\",\"driverSignature\":\"1569236249.\",\"workImage\":[\"1569236246.\",\"1569236247.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"Sad fasdfsdfdsfsads did sdfasfsdf. Drags\",\"customerSignature\":\"1569241079.\",\"workImage\":[\"1569241075.\",\"1569241077.\"]}}', '2019-09-23 12:18:01', '2019-09-23 10:24:45'),
(34, 'Test Job', 3, 13, 16, '2019-09-23 00:00:00', '6:00 PM', 'Railyards Boulevard, Sacramento, CA, USA', '', 'Railyards Boulevard', 'Sacramento', 'CA', '95811', 'United States', '38.59015656', '-121.49965668', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"Testingjdfal fjdls falls\\t\",\"driverSignature\":\"1569241406.\",\"workImage\":[\"1569241402.\",\"1569241404.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"Fsafsdf asdfasfs\",\"customerSignature\":\"1569241646.\",\"workImage\":[\"1569241643.\",\"1569241645.\"]}}', '2019-09-23 12:27:28', '2019-09-23 12:22:10'),
(35, 'Test Job 20', 4, 13, 17, '2019-09-23 00:00:00', '6:15 PM', 'Raleigh, NC, USA', '', '', 'Raleigh', 'NC', '', 'United States', '35.77959824', '-78.63819885', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"Sad add asdf asdf\",\"driverSignature\":\"1569243004.\",\"workImage\":[\"1569242999.\",\"1569243001.\",\"1569243002.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-23 12:00:00 AM\",\"comments\":\"Add fadsfasdf\",\"customerSignature\":\"1569243236.\",\"workImage\":[\"1569243230.\",\"1569243232.\",\"1569243234.\"]}}', '2019-09-23 12:53:58', '2019-09-23 12:39:04'),
(36, 'Test Job 20-1', 4, 13, 16, '2019-09-23 00:00:00', '6:15 PM', 'Hexton Manor, Hexton, Hitchin, UK', '', '', 'Hexton', 'England', 'SG5 3JH', 'United Kingdom', '51.96060944', '-0.39005741', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test \",\"driverSignature\":\"1569306495.\",\"workImage\":[\"1569306490.\",\"1569306492.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test job\",\"customerSignature\":\"1569306620.\",\"workImage\":[\"1569306617.\",\"1569306619.\"]}}', '2019-09-24 06:30:23', '2019-09-23 12:39:54'),
(37, 'Test 20-2', 3, 13, 16, '2019-09-23 00:00:00', '12:30 PM', 'Vijay Nagar Square, Ratna Lok Colony, Indore, Madhya Pradesh, India', '', 'Vijay Nagar Square', 'Indore', 'MP', '', 'India', '22.75083542', '75.89572906', 2, 0, '', '', '', '{\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test \",\"customerSignature\":\"1569308227.\",\"workImage\":[\"1569308223.\",\"1569308225.\"]}}', '2019-09-24 06:57:09', '2019-09-24 06:51:39'),
(38, 'Test Job 20-2', 2, 13, 16, '2019-09-24 00:00:00', '12:45 PM', 'Vijayawada International Airport, National Highway 16, Gannavaram, Andhra Pradesh, India', '', 'National Highway 16', 'Gannavaram', 'AP', '521102', 'India', '16.52383804', '80.79141998', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test\",\"driverSignature\":\"1569309001.\",\"workImage\":[\"1569308995.\",\"1569308997.\",\"1569308999.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test job9874563210\",\"customerSignature\":\"1569313979.\",\"workImage\":[\"1569313973.\",\"1569313975.\",\"1569313977.\"]}}', '2019-09-24 08:33:01', '2019-09-24 07:07:22'),
(39, 'Test Job 20-3', 3, 13, 16, '2019-09-23 00:00:00', '12:45 PM', 'Indore Airport Taxi low Price/ujjain Taxi, Airport Road, Manu Shree Nagar, Indore, Madhya Pradesh, India', '', 'Airport Road', 'Indore', 'MP', '452006', 'India', '22.73416710', '75.81516266', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test sad \",\"driverSignature\":\"1569309010.\",\"workImage\":[\"1569309003.\",\"1569309005.\",\"1569309007.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"46597845988978997778979\",\"customerSignature\":\"1569313988.\",\"workImage\":[\"1569313981.\",\"1569313983.\",\"1569313985.\"]}}', '2019-09-24 08:33:10', '2019-09-24 07:08:05'),
(40, 'Test Job 20-4', 3, 13, 16, '2019-09-17 00:00:00', '2:30 PM', 'Vijayawada International Airport, National Highway 16, Gannavaram, Andhra Pradesh, India', '', 'National Highway 16', 'Gannavaram', 'AP', '521102', 'India', '16.52383804', '80.79141998', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Testing\",\"driverSignature\":\"1569316542.\",\"workImage\":[\"1569316537.\",\"1569316539.\",\"1569316541.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test\",\"customerSignature\":\"1569316761.\",\"workImage\":[\"1569316755.\",\"1569316757.\",\"1569316759.\"]}}', '2019-09-24 09:19:23', '2019-09-24 08:58:07'),
(41, 'Test Job 20-5', 3, 13, 16, '2019-09-24 00:00:00', '2:30 PM', 'Rajwada, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452004', 'India', '22.71771049', '75.85448456', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Tests adds sf asf\",\"driverSignature\":\"1569316550.\",\"workImage\":[\"1569316544.\",\"1569316546.\",\"1569316548.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"46546064060466406060664654600060466046506500066\",\"customerSignature\":\"1569316872.\",\"workImage\":[\"1569316865.\",\"1569316868.\",\"1569316870.\"]}}', '2019-09-24 09:21:13', '2019-09-24 08:58:42'),
(42, 'Test Job 20-6', 4, 13, 16, '2019-09-24 00:00:00', '2:30 PM', 'Race Course Road, Gandhi Nagar, Bengaluru, Karnataka, India', '', 'Race Course Road', 'Bengaluru', 'KA', '560001', 'India', '12.98387623', '77.58158112', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Yet sad sf asfasdfa s add\",\"driverSignature\":\"1569317347.\",\"workImage\":[\"1569317341.\",\"1569317343.\",\"1569317345.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test\",\"customerSignature\":\"1569317655.\",\"workImage\":[\"1569317650.\",\"1569317652.\",\"1569317653.\"]}}', '2019-09-24 09:34:17', '2019-09-24 08:59:15'),
(43, 'Test Job 20-7', 4, 13, 16, '2019-09-18 00:00:00', '2:30 PM', 'George Washington Bridge, George Washington Bridge, Fort Lee, NJ, USA', '', 'George Washington Bridge', 'Fort Lee', 'NJ', '07024', 'United States', '40.85169601', '-73.95271301', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Tats\",\"driverSignature\":\"1569317663.\",\"workImage\":[\"1569317657.\",\"1569317659.\",\"1569317661.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test\",\"customerSignature\":\"1569318297.\",\"workImage\":[\"1569318291.\",\"1569318293.\",\"1569318295.\"]}}', '2019-09-24 09:45:00', '2019-09-24 08:59:46'),
(44, 'Test Job 20-8', 1, 13, 16, '2019-09-17 00:00:00', '3:30 PM', 'Razzmatazz, Carrer dels Almog√†vers, Barcelona, Spain', '122', 'Carrer dels Almog√†vers', 'Barcelona', 'CT', '08018', 'Spain', '41.39772034', '2.19110560', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test\",\"driverSignature\":\"1569318742.\",\"workImage\":[\"1569318736.\",\"1569318738.\",\"1569318740.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test job\",\"customerSignature\":\"1569318962.\",\"workImage\":[\"1569318955.\",\"1569318958.\",\"1569318960.\"]}}', '2019-09-24 09:56:04', '2019-09-24 09:47:02'),
(45, 'Test Job 20-9', 4, 13, 16, '2019-09-24 00:00:00', '3:30 PM', 'Razwada Jeweles Pvt. Ltd., Turner Road, Bandra West, Mumbai, Maharashtra, India', '', 'Turner Road', 'Mumbai', 'MH', '400050', 'India', '19.05930710', '72.83294678', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test 85\",\"driverSignature\":\"1569318962.\",\"workImage\":[\"1569318956.\",\"1569318957.\",\"1569318960.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test\",\"customerSignature\":\"1569319518.\",\"workImage\":[\"1569319512.\",\"1569319515.\",\"1569319516.\"]}}', '2019-09-24 10:05:20', '2019-09-24 09:47:46'),
(46, 'Test Job 20-10', 1, 13, 16, '2019-09-25 00:00:00', '3:30 PM', 'Vijayawada International Airport, National Highway 16, Gannavaram, Andhra Pradesh, India', '', 'National Highway 16', 'Gannavaram', 'AP', '521102', 'India', '16.52383804', '80.79141998', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Drags sdfsadfasf add\",\"driverSignature\":\"1569318750.\",\"workImage\":[\"1569318743.\",\"1569318746.\",\"1569318747.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Dada dsafasdf \",\"customerSignature\":\"1569318970.\",\"workImage\":[\"1569318964.\",\"1569318966.\",\"1569318968.\"]}}', '2019-09-24 09:56:11', '2019-09-24 09:48:33'),
(47, 'Test Job 21', 1, 13, 16, '2019-09-24 00:00:00', '3:45 PM', 'Razzmatazz, Carrer dels Almog√†vers, Barcelona, Spain', '122', 'Carrer dels Almog√†vers', 'Barcelona', 'CT', '08018', 'Spain', '41.39770126', '2.19110990', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test job\",\"driverSignature\":\"1569321293.\",\"workImage\":[\"1569321286.\",\"1569321288.\",\"1569321290.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test jobs\",\"customerSignature\":\"1569321300.\",\"workImage\":[\"1569321294.\",\"1569321296.\",\"1569321298.\"]}}', '2019-09-24 10:35:02', '2019-09-24 10:14:39'),
(48, 'Test Job 21-1', 2, 13, 16, '2019-09-24 00:00:00', '4:00 PM', 'Asheville, NC, USA', '', '', 'Asheville', 'NC', '', 'United States', '35.59505844', '-82.55148315', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test job\",\"driverSignature\":\"1569322405.\",\"workImage\":[\"1569322400.\",\"1569322401.\",\"1569322403.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Can we get some more money from my mom today \",\"customerSignature\":\"1569326288.\",\"workImage\":[\"1569326281.\",\"1569326283.\",\"1569326285.\"]}}', '2019-09-24 11:58:10', '2019-09-24 10:17:47'),
(49, 'Test Job 21-2', 1, 13, 16, '2019-09-25 00:00:00', '4:00 PM', 'Arcachon, France', '', '', 'Arcachon', 'Nouvelle-Aquitaine', '33120', 'France', '44.65229797', '-1.17850161', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Gggg\",\"driverSignature\":\"1569326146.\",\"workImage\":[\"1569326140.\",\"1569326142.\",\"1569326144.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test the day and I have to work tomorrow night at three or five minutes ago so I\\u2019ll just take it home then I\\u2019m not going \",\"customerSignature\":\"1569326278.\",\"workImage\":[\"1569326273.\",\"1569326275.\",\"1569326276.\"]}}', '2019-09-24 11:58:01', '2019-09-24 10:18:12'),
(50, 'Test Job 21-3', 3, 13, 16, '2019-09-17 00:00:00', '4:00 PM', 'Dubai International Airport (DXB) - Dubai - United Arab Emirates', '', '', 'Dubai', 'Dubai', '', 'United Arab E', '25.25320053', '55.36569977', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test added sadf as\",\"driverSignature\":\"1569321309.\",\"workImage\":[\"1569321302.\",\"1569321304.\",\"1569321307.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 03:39:00 PM\",\"comments\":\"Check out the images.\",\"customerSignature\":\"1569579063.jpg\",\"workImage\":[\"1569579051.jpg\",\"1569579054.jpg\",\"1569579059.jpg\"]}}', '2019-09-27 10:11:05', '2019-09-24 10:18:55'),
(51, 'Test Job 21-4', 2, 13, 16, '2019-09-24 00:00:00', '7:00 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '1', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272682', '75.88706970', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-25 12:00:00 AM\",\"comments\":\"31223564567789\",\"driverSignature\":\"1569401683.\",\"workImage\":[\"1569401677.\",\"1569401679.\",\"1569401681.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 12:00:00 AM\",\"comments\":\"Gfgfg\\nGfgfg\\nGfgfg\\nGfgfg\\nGfgfg\\nGfgfg\\n\",\"customerSignature\":\"1569576195.\",\"workImage\":[\"1569576189.\",\"1569576191.\",\"1569576193.\"]}}', '2019-09-27 09:23:17', '2019-09-24 13:23:59'),
(52, 'New Android Job', 3, 5, 16, '2019-09-26 00:00:00', '11:30 AM', 'Indore Jn Bg, Chhoti Gwaltoli, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452007', 'India', '22.71719933', '75.86830139', 2, 1, '22.829729,75.651047|22.628333,75.428574|22.530695,75.907852|22.677759,75.987503|22.796817,75.755417|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0,J	¡™ÈR@Ùäßi‘6@ûz§¡m€R@aˇun⁄†6@ÌfF?\Z˙R@ñ&•†€á6@Ïl»?3ˇR@’ë#ùÅ≠6@Íuã¿XR@óÂÎ2¸À6@,J	¡™ÈR@Ùäßi‘6@', '{\"beforeWork\":{\"startDateTime\":\"1970-01-01 12:00:00 AM\",\"comments\":\"this is my first job\",\"driverSignature\":\"1569491348.PNG\",\"workImage\":[]},\"afterWork\":{\"endDateTime\":\"1970-01-01 12:00:00 AM\",\"comments\":\"this is my first job\",\"customerSignature\":\"1569505098.PNG\",\"workImage\":[]}}', '2019-09-26 13:38:20', '2019-09-26 05:57:18'),
(53, 'New And', 4, 5, 16, '2019-09-26 00:00:00', '1:45 PM', 'Palasia ibus stop, Agra Bombay Road, New Palasia, Indore, Madhya Pradesh, India', '38', 'Agra Bombay Road', 'Indore', 'MP', '452016', 'India', '22.72489548', '75.88694763', 2, 1, '22.774027,75.830948|22.737301,75.942184|22.695498,75.929825|22.662553,75.894119|22.679027,75.793869|22.711967,75.793869|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0N+Ö@.ıR@ì8+¢&∆6@ ¥æL¸R@ﬂN\"¬øº6@4Ä∑@Ç˚R@Ùn,(≤6@›ÓÂ>9˘R@ﬂ› ù©6@∫ÏøŒÚR@€¶∂‘≠6@∫ÏøŒÚR@Ã‘$xC∂6@N+Ö@.ıR@ì8+¢&∆6@', '{\"beforeWork\":{\"startDateTime\":\"2019-09-26 03:12:00 PM\",\"comments\":\"test new \",\"driverSignature\":\"1569490970.jpg\",\"workImage\":[]},\"afterWork\":{\"endDateTime\":\"2019-09-27 04:10:00 PM\",\"comments\":\"cheers vh j know c\\nXu ink ix\",\"customerSignature\":\"1569580872.jpg\",\"workImage\":[\"1569580862.jpg\",\"1569580866.jpeg\",\"1569580868.jpg\"]}}', '2019-09-27 10:41:14', '2019-09-26 08:12:37'),
(54, 'New job tracking', 1, 7, 15, '2019-09-28 00:00:00', '2:30 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272682', '75.88706970', 2, 1, '22.723108,75.886952|22.72291,75.887638|22.722722,75.88781|22.722256,75.888464|22.721455,75.887982|22.721069,75.887724|22.721376,75.887145|22.721772,75.887263|22.721989,75.886801|22.722167,75.886458|22.722256,75.886361|22.722534,75.886651|22.72283,75.886812|', '#FF0000', '\0\0\0\0\0\0\0\0\0\0\0\0\0ÀGR“√¯R@Ÿyõπ6@ı+ùœ¯R@åÛ7°π6@Ù√·—¯R@á\ZOπ6@Îò‹¯R@¸VÎƒÂ∏6@Ú[t≤‘¯R@\"â^F±∏6@ı˜Rx–¯R@–(]˙ó∏6@÷s“˚∆¯R@ä¯¨∏6@€¸øÍ»¯R@$+ø∆∏6@ŸC˚X¡¯R@^gE‘∏6@ƒ—U∫ª¯R@@øÔﬂ∏6@ ‹|#∫¯R@¸VÎƒÂ∏6@Œ˝’„æ¯R@Å?¸¸˜∏6@”lá¡¯R@Së\ncπ6@ÀGR“√¯R@Ÿyõπ6@', '{\"beforeWork\":{\"startDateTime\":\"1970-01-01 12:00:00 AM\",\"comments\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"driverSignature\":\"1569489822.jpg\",\"workImage\":[\"1569489817.jpg\",\"1569489819.jpg\",\"1569489820.jpg\"]},\"afterWork\":{\"endDateTime\":\"1970-01-01 12:00:00 AM\",\"comments\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"customerSignature\":\"1569490704.jpg\",\"workImage\":[\"1569490700.jpg\",\"1569490702.jpg\"]}}', '2019-09-26 09:38:26', '2019-09-26 08:49:59'),
(55, 'Tracking Job', 2, 7, 16, '2019-09-28 00:00:00', '3:45 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.744885,75.883142|22.739502,75.926744|22.717494,75.898763|22.718286,75.880052|22.727945,75.879365|22.732378,75.887262|22.740769,75.877992|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0WÓfÖ¯R@ÌGä»∞æ6@È∆O˚R@úS…\0PΩ6@∂ˆ>UÖ˘R@É—Ø≠∑6@‚±ü≈R¯R@∂,_ó·∑6@–#ÑG¯R@fIÄöZ∫6@Û>éÊ»¯R@UOÊ}ª6@îâ[1¯R@\0‰Ñ	£Ω6@WÓfÖ¯R@ÌGä»∞æ6@', '{\"beforeWork\":{\"startDateTime\":\"2019-09-27 03:50:00 PM\",\"comments\":\"sgkvxfb\\ncvkkmmhll\",\"driverSignature\":\"1569579710.jpg\",\"workImage\":[\"1569579700.jpg\",\"1569579704.png\",\"1569579706.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 05:07:00 PM\",\"comments\":\"six\\nDulux\\nfox\\nstill\\nfunk\\nFinn\",\"customerSignature\":\"1569584243.jpg\",\"workImage\":[\"1569584237.jpg\",\"1569584239.jpg\",\"1569584241.jpg\"]}}', '2019-09-27 11:37:24', '2019-09-26 10:16:27'),
(56, 'Clear snow from carpark 1', 3, 2, 4, '2019-09-30 00:00:00', '3:00 PM', 'The Gatehouse, 84 Billingham Rd, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410', 0, 1, '54.590588,-1.305485|54.590568,-1.305439|54.59056,-1.305431|54.590559,-1.305394|54.590525,-1.305368|54.590486,-1.305359|54.590495,-1.305378|54.590508,-1.305397|54.590507,-1.305459|54.590435,-1.305578|54.590361,-1.305517|54.590349,-1.305583|54.590397,-1.305628|54.590455,-1.305713|54.590478,-1.305669|54.590493,-1.305687|54.590552,-1.30559|54.590564,-1.305595|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0l≤F=D„Ùø|¥8còKK@aƒ>„Ùø5sªóKK@Ù¬ù„Ùø≥)WxóKK@aP¶—‰‚Ùø‚≠ÛoóKK@:ÎSé…‚Ùø6<ΩRñKK@”†h¿‚Ùøx_ïïKK@´ØÆ\n‘‚ÙøÀπWïKK@ÉæÙˆÁ‚Ùø`\"ƒïKK@DMÙ˘(„ÙøêáæªïKK@ç∆¡•„Ùøˆ¥√_ìKK@ÿÛ5Àe„ÙøºÍÛêKK@∆jÛˇ™„Ùø¯XéêKK@∆ﬁã/⁄„Ùø	Tˇ íKK@ådèP3‰Ùø=aâîKK@òjf-‰ÙøıÄy»îKK@eˇ<\r‰Ùø+¬MFïKK@¡ˇV≤„Ùø0K;5óKK@O#-ï∑„ÙøÙÂôóKK@l≤F=D„Ùø|¥8còKK@', '', '2019-09-26 14:00:12', '2019-09-26 14:00:12'),
(57, 'Test Job 100', 3, 2, 4, '2019-09-26 00:00:00', '4:15 PM', 'Darlington Mowden Park Rugby Club, The Northern Echo Arena, Neasham Road, Darlington, UK', '', 'Neasham Road', '', 'England', 'DL2 1DL', 'United Kingdom', '54.50798330', '-1.53497350', 0, 1, '54.510242,-1.537531|54.508647,-1.531458|54.507812,-1.532059|54.507987,-1.532896|54.507887,-1.533175|54.507688,-1.533025|54.507364,-1.533218|54.507239,-1.533454|54.507289,-1.534698|54.50765,-1.535471|54.508024,-1.53605|54.509208,-1.537144|54.510005,-1.537767|54.510155,-1.537788|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0˙`∫ô¯ø◊ÖúOAK@=)ì\Z⁄Ä¯ø±\ZKXAK@Ô≠HLPÉ¯øBŒ˚ˇ@K@µ¬ÙΩÜ¯øÜÂœ∑AK@Ä∑@Ç‚á¯ø\"àÛpAK@◊4Ô8Eá¯ø,IûÎ˚@K@i7˙òà¯øyïµMÒ@K@Âπæâ¯øº \"5Ì@K@%…s}é¯ønOêÿÓ@K@{M\nJë¯ø>ËŸ¨˙@K@2U0*©ì¯ø£ 0ÓAK@ ·ìN$ò¯øHnM∫-AK@v„›ë±ö¯øÛÂÿGAK@dÊó«ö¯ørP¬LAK@˙`∫ô¯ø◊ÖúOAK@', '', '2019-09-26 14:04:02', '2019-09-26 14:04:02'),
(58, 'New test And Job', 1, 3, 15, '2019-09-27 00:00:00', '12:15 PM', 'GEETA BHAVAN SQUARE, Gita Bhawan Road, South Tukoganj, Indore, Madhya Pradesh, India', '', 'Gita Bhawan Road', 'Indore', 'MP', '452001', 'India', '22.71843200', '75.88429860', 2, 1, '22.718724,75.877967|22.72102,75.882302|22.717299,75.888911|22.710253,75.886293|22.709263,75.878268|22.711638,75.876937|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0Á˝ú0¯R@ÆŸ K˛∑6@ÅÃŒ¢w¯R@\r√Gƒî∏6@ÉˆÍ„¯R@tBË†∑6@kFπ¯R@ ‚˛#”µ6@ÂG¸ä5¯R@JCçBíµ6@¿È]º¯R@BópË-∂6@Á˝ú0¯R@ÆŸ K˛∑6@', '{\"beforeWork\":{\"startDateTime\":\"2019-09-27 12:06:00 PM\",\"comments\":\"did\\ncubist\\nFujitsu\\ncoz\\ndiff BBC\\nDimitar\\nfifty\\ndj loc\",\"driverSignature\":\"1569566242.jpg\",\"workImage\":[\"1569566234.jpg\",\"1569566236.jpg\",\"1569566239.png\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 12:25:00 PM\",\"comments\":\"Arvid\\nfig\\nfig\\nFinn\\ngong\\nfiks\\nskudd\\nsinus\",\"customerSignature\":\"1569567406.jpg\",\"workImage\":[\"1569567397.jpg\",\"1569567400.jpg\",\"1569567402.jpg\"]}}', '2019-09-27 06:56:47', '2019-09-27 06:35:03'),
(59, 'Job Image Size', 1, 5, 16, '2019-09-27 00:00:00', '5:30 PM', 'Indore Bypass Road, County Walk Township, Indore, Madhya Pradesh, India', '', 'Indore Bypass Road', '', 'MP', '', 'India', '22.71139850', '75.88320000', 2, 1, '22.75573,75.846808|22.782321,75.8729|22.759529,75.916846|22.715199,75.898993|22.702531,75.882513|22.713932,75.860541|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0o.\Z2ˆR@(õrÖw¡6@k+ˆó›˜R@Y˘e0F»6@˚]ÿö≠˙R@]~p¬6@OïÔâ˘R@ƒ!H∑6@ﬂRŒ{¯R@\ZmUŸ≥6@˜é\Z˜R@`ë_?ƒ∂6@o.\Z2ˆR@(õrÖw¡6@', '{\"beforeWork\":{\"startDateTime\":\"2019-09-27 06:37:00 PM\",\"comments\":\"did\\nFujifilm\\nFuji oh\\nFuji\\nfind\",\"driverSignature\":\"1569589678.jpg\",\"workImage\":[\"1569589671.png\",\"1569589673.jpg\",\"1569589675.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 06:44:00 PM\",\"comments\":\"did aug\\nXbox\\ndid\\n\",\"customerSignature\":\"1569590070.jpg\",\"workImage\":[\"1569590063.jpg\",\"1569590065.jpg\",\"1569590068.jpg\"]}}', '2019-09-27 13:14:33', '2019-09-27 11:58:49');

-- --------------------------------------------------------

--
-- Table structure for table `jobTiming`
--

CREATE TABLE `jobTiming` (
  `jobTimeId` bigint(20) NOT NULL,
  `jobId` bigint(20) NOT NULL,
  `driverId` bigint(20) NOT NULL,
  `inDateTime` datetime NOT NULL,
  `outDateTime` datetime NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobTiming`
--

INSERT INTO `jobTiming` (`jobTimeId`, `jobId`, `driverId`, `inDateTime`, `outDateTime`, `crd`, `upd`) VALUES
(5, 54, 15, '2019-09-26 09:33:20', '2019-09-26 09:38:26', '2019-09-26 09:33:20', '2019-09-26 09:38:26'),
(6, 54, 15, '2019-09-26 09:37:16', '2019-09-26 09:38:26', '2019-09-26 09:37:16', '2019-09-26 09:38:26');

-- --------------------------------------------------------

--
-- Table structure for table `jobType`
--

CREATE TABLE `jobType` (
  `jobTypeId` bigint(20) NOT NULL,
  `jobType` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Active',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobType`
--

INSERT INTO `jobType` (`jobTypeId`, `jobType`, `status`, `crd`, `upd`) VALUES
(1, 'Gritting', 1, '2019-08-08 13:05:27', '2019-08-08 13:05:27'),
(2, 'Re-Gritting', 1, '2019-08-08 13:05:27', '2019-08-08 13:05:27'),
(3, 'Snow Ploughing', 1, '2019-08-08 13:05:27', '2019-08-08 13:05:27'),
(4, 'Hand Gritting', 1, '2019-08-08 13:05:27', '2019-08-08 13:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) NOT NULL,
  `countryId` int(11) NOT NULL DEFAULT '0',
  `stateName` varchar(100) NOT NULL,
  `createdAt` int(11) NOT NULL DEFAULT '1540543741',
  `updatedAt` int(11) NOT NULL DEFAULT '1540543741'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `countryId`, `stateName`, `createdAt`, `updatedAt`) VALUES
(1, 0, 'AL', 1540543741, 1540543741),
(2, 0, 'AK', 1540543741, 1540543741),
(3, 0, 'AS', 1540543741, 1540543741),
(4, 0, 'AZ', 1540543741, 1540543741),
(5, 0, 'AR', 1540543741, 1540543741),
(6, 0, 'CA', 1540543741, 1540543741),
(7, 0, 'CO', 1540543741, 1540543741),
(8, 0, 'CT', 1540543741, 1540543741),
(9, 0, 'DE', 1540543741, 1540543741),
(10, 0, 'DC', 1540543741, 1540543741),
(11, 0, 'FM', 1540543741, 1540543741),
(12, 0, 'FL', 1540543741, 1540543741),
(13, 0, 'GA', 1540543741, 1540543741),
(14, 0, 'GU', 1540543741, 1540543741),
(15, 0, 'HI', 1540543741, 1540543741),
(16, 0, 'ID', 1540543741, 1540543741),
(17, 0, 'IL', 1540543741, 1540543741),
(18, 0, 'IN', 1540543741, 1540543741),
(19, 0, 'IA', 1540543741, 1540543741),
(20, 0, 'KS', 1540543741, 1540543741),
(21, 0, 'KY', 1540543741, 1540543741),
(22, 0, 'LA', 1540543741, 1540543741),
(23, 0, 'ME', 1540543741, 1540543741),
(24, 0, 'MH', 1540543741, 1540543741),
(25, 0, 'MD', 1540543741, 1540543741),
(26, 0, 'MA', 1540543741, 1540543741),
(27, 0, 'MI', 1540543741, 1540543741),
(28, 0, 'MN', 1540543741, 1540543741),
(29, 0, 'MS', 1540543741, 1540543741),
(30, 0, 'MO', 1540543741, 1540543741),
(31, 0, 'MT', 1540543741, 1540543741),
(32, 0, 'NE', 1540543741, 1540543741),
(33, 0, 'NV', 1540543741, 1540543741),
(34, 0, 'NH', 1540543741, 1540543741),
(35, 0, 'NJ', 1540543741, 1540543741),
(36, 0, 'NM', 1540543741, 1540543741),
(37, 0, 'NY', 1540543741, 1540543741),
(38, 0, 'NC', 1540543741, 1540543741),
(39, 0, 'ND', 1540543741, 1540543741),
(40, 0, 'MP', 1540543741, 1540543741),
(41, 0, 'OH', 1540543741, 1540543741),
(42, 0, 'OK', 1540543741, 1540543741),
(43, 0, 'OR', 1540543741, 1540543741),
(44, 0, 'PW', 1540543741, 1540543741),
(45, 0, 'PA', 1540543741, 1540543741),
(46, 0, 'PR', 1540543741, 1540543741),
(47, 0, 'RI', 1540543741, 1540543741),
(48, 0, 'SC', 1540543741, 1540543741),
(49, 0, 'SD', 1540543741, 1540543741),
(50, 0, 'TN', 1540543741, 1540543741),
(51, 0, 'TX', 1540543741, 1540543741),
(52, 0, 'UT', 1540543741, 1540543741),
(53, 0, 'VT', 1540543741, 1540543741),
(54, 0, 'VI', 1540543741, 1540543741),
(55, 0, 'VA', 1540543741, 1540543741),
(56, 0, 'WA', 1540543741, 1540543741),
(57, 0, 'WV', 1540543741, 1540543741),
(58, 0, 'WI', 1540543741, 1540543741),
(59, 0, 'WY', 1540543741, 1540543741);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `profileImage` text NOT NULL,
  `contactNumber` varchar(255) NOT NULL,
  `userType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1:Customer,2:Driver',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Active ,0:Inactive',
  `authToken` text NOT NULL,
  `passToken` text NOT NULL,
  `deviceType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:Web,1:Android,2:IOS',
  `deviceToken` text NOT NULL,
  `verifyEmail` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1:Verify',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `email`, `password`, `profileImage`, `contactNumber`, `userType`, `status`, `authToken`, `passToken`, `deviceType`, `deviceToken`, `verifyEmail`, `crd`, `upd`) VALUES
(2, 'Lucid Technology Solutions', 'dean@lucidgrp.co.uk', '$2y$10$D0P1t9s9/4WPJSAsV3iDTOybjvlE0bTcYjdUQpMwcGgcaTqQFitJW', '', '(078) 091-4339', 1, 1, 'f8b7b211560b1cdfc22fcfa3b01592497995557c', '5a1c838901f5da5e3fc1fa67da0baf00086e9736', 0, '', 0, '2019-08-06 12:54:46', '2019-08-06 12:54:46'),
(3, 'Test', 'test@test.com', '$2y$10$RTG0LIJMlWZc0/0bGSvD..LO2SAIA9FAE7CwffXp9ztNA1Wlbcmey', '', '(111) 111-1111', 1, 1, 'b09410a560965a26f93fdf4030769253bb8692c0', '14eec229d720fae843961869b2f7a675c9d2ff0b', 2, '', 0, '2019-08-07 07:22:17', '2019-09-11 07:18:52'),
(4, 'Driver', 'test.otc@gmail.com', '$2y$10$RTG0LIJMlWZc0/0bGSvD..LO2SAIA9FAE7CwffXp9ztNA1Wlbcmey', 'XU8jpmeJMFV2DsAi.jpg', '(353) 566-5466', 2, 1, '18ecb35d9318a044489d44b47bae87527d74c2b7', '4c9b37a33130ead6c7064acd2db18edf970ae326', 2, '', 0, '2019-08-07 12:50:35', '2019-09-17 09:37:57'),
(5, 'Test new', 'test01@yopmail.com', '$2y$10$h54DIf6oqpKvmSGtqrFnpeBKiA/OEU6mA07cBtqzC.ffBcQZXRsbq', '', '(676) 756-7463', 1, 1, '3ee10ab9ec27b7e4aca614bfada28aa609c2759d', 'ac782d6ccf6495f88a62379cb1136099df8429c2', 0, '', 0, '2019-08-08 13:17:22', '2019-08-09 09:44:47'),
(7, 'Test new user', 'tester@yopmail.com', '$2y$10$eZGSLT71sE.oXirJpsLFGevQh8RQj3kD26uKaZme89uo9z57Y/BUu', '', '(111) 111-1111', 1, 1, 'ff19e478bb06d44ae01ef474ddaa27212678514a', '18d367d67fd4cef90d7da3acc281fb1256ea7dec', 0, '', 0, '2019-08-09 09:49:55', '2019-08-10 08:20:22'),
(9, 'customer', 'c@admin.com', '$2y$10$4xSYvqebNM6b79XXw3Dtr.XpXHXpXWGpY19ZLGA7svm1HTLakMxIW', '', '(242) 343-3344', 1, 1, 'cb9edb3da1c40fbdcedd85908474430c7abdbb46', 'c78169852517ba8704c355d398372381324f4141', 2, '', 0, '2019-08-10 08:20:57', '2019-09-11 06:13:23'),
(10, '123456789012345678901234567890', 'a@yopmail.com', '$2y$10$amNW5UwcsHYVIs4NG0E29OYSc5gphEexW5IYt46gyneDVCFDvPd32', '', '(132) 313-2132', 1, 1, '427ec5f901b85edf06ebfdc1e5556de284cd827a', 'b00801714bb7710439fc11302b9f1d4a0b9a3049', 0, '', 0, '2019-08-10 10:26:47', '2019-08-22 12:26:27'),
(11, 'Test', 'pg@gmail.com', '$2y$10$zWRXIdrrpc.BXomypS1NA..7OchyaWeGlOSbdd1bmoa2v6prbtPyS', '', '(121) 212-1111', 1, 1, '7bd20bcadf2fe4eedc4c3b0fdc6817393daf87b6', 'c75d3a26ebd766c57644aae11e1bc19d8d8b3628', 0, '', 0, '2019-08-21 13:32:57', '2019-08-21 13:32:57'),
(13, 'Ved Sharma', 'ved@gmail.com', '$2y$10$4dvEJwNbe0cmwL8iYxrcpefUmIZ6EjYgxSeAn1EIGyw6khd/NHGIe', '', '(123) 456-7890', 1, 1, '51aebe6a88381d0d463dbb6c887eee20e0bdf326sas', '5d729aa707af9b4c51a199799a4bbdcd7ba17212', 2, '', 0, '2019-09-11 06:13:14', '2019-09-12 06:13:54'),
(14, 'Yarm Computers Ltd', 'dean@yc.uk.com', '$2y$10$DxFpzfLJxbQkDGjVCTKrJ.CAR.IgWf144Tj5WBxcg.pA4VHP7cRG6', '', '(016) 427-8692', 1, 1, '05deb206af19ef93f0f49c4c76e7f4ce52df6ded', '179842a26a6eadc9ff417acb25a1a24b7d115136', 0, '', 0, '2019-09-17 08:16:32', '2019-09-17 08:16:32'),
(15, 'New Driver', 'Newdriver@gmail.com', '$2y$10$2FNDQ/f8FUqEF3guLx.jUehmRVoaGbsmVGCiTDSTspHwbFsB0HkhG', 'KDuUgWPJ04vSVHks.png', '(123) 456-7890', 2, 1, '40eff63db7de747ffa9d494d986b65e379082f8d', '5009cf96bbf30938ec104429d082472b8ab31c3b', 1, '', 0, '2019-09-17 09:35:38', '2019-09-27 10:06:54'),
(16, 'NKP', 'nkp.otc@gmail.com', '$2y$10$4DDaHnfCRIjrQMvRl6whkO2QwwXsXSdIXTAaTrv.Itx7TejX4mZHG', '', '(12345) 678900', 2, 1, '13a74edded2960b686e7e4f983cf62f9f485a58a', '51aae666ed61dedd7ec78fc526047eb656b4d85e', 1, '98765432456hcbcgfbccvbcbcbc', 0, '2019-09-19 08:32:25', '2019-09-30 06:59:33'),
(17, 'Ved', 'otc.ved@gmail.com', '$2y$10$SzXO0oW0GfasB8ep.u9v/u0jyd0IuXwUjTED25dZFBqZh/4l1Axhu', '', '(12345) 678900', 2, 1, '84d31bb01bdee93422fb27112d5c5b782e35acc2', '4265825e6a9091e3883a8aac6c65daa3a78f9cfa', 2, '(null)', 0, '2019-09-23 12:47:28', '2019-09-27 09:25:33');

-- --------------------------------------------------------

--
-- Table structure for table `vehicleColors`
--

CREATE TABLE `vehicleColors` (
  `id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `createdAt` int(11) NOT NULL DEFAULT '1548808923',
  `updatedAt` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicleColors`
--

INSERT INTO `vehicleColors` (`id`, `color`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Almond', 1, 1548808923, 0),
(2, 'Apricot', 1, 1548808923, 0),
(3, 'Black', 1, 1548808923, 0),
(4, 'Blue', 1, 1548808923, 0),
(5, 'Blue Gray', 1, 1548808923, 0),
(6, 'Blue Green', 1, 1548808923, 0),
(7, 'Brick Red', 1, 1548808923, 0),
(8, 'Brown', 1, 1548808923, 0),
(9, 'Burnt Orange', 1, 1548808923, 0),
(10, 'Copper', 1, 1548808923, 0),
(11, 'Desert Sand', 1, 1548808923, 0),
(12, 'Forest Green', 1, 1548808923, 0),
(13, 'Gold', 1, 1548808923, 0),
(14, 'Grey', 1, 1548808923, 0),
(15, 'Green', 1, 1548808923, 0),
(16, 'Green Blue', 1, 1548808923, 0),
(17, 'Green Yellow', 1, 1548808923, 0),
(18, 'Lavender', 1, 1548808923, 0),
(19, 'Maroon', 1, 1548808923, 0),
(20, 'Metallic Blue', 1, 1548808923, 0),
(21, 'Metallic Grey', 1, 1548808923, 0),
(22, 'Metallic Red', 1, 1548808923, 0),
(23, 'Metallic Silver', 1, 1548808923, 0),
(24, 'Metallic White', 1, 1548808923, 0),
(25, 'Midnight Blue', 1, 1548808923, 0),
(26, 'Mulberry', 1, 1548808923, 0),
(27, 'Navy Blue', 1, 1548808923, 0),
(28, 'Olive Green', 1, 1548808923, 0),
(29, 'Orange', 1, 1548808923, 0),
(30, 'Orange Red', 1, 1548808923, 0),
(31, 'Orange Yellow', 1, 1548808923, 0),
(32, 'Pacific Blue', 1, 1548808923, 0),
(33, 'Plum', 1, 1548808923, 0),
(34, 'Purple', 1, 1548808923, 0),
(35, 'Red', 1, 1548808923, 0),
(36, 'Red Orange', 1, 1548808923, 0),
(37, 'Robin\'s Egg Blue', 1, 1548808923, 0),
(38, 'Royal Purple', 1, 1548808923, 0),
(39, 'Salmon', 1, 1548808923, 0),
(40, 'Scarlet', 1, 1548808923, 0),
(41, 'Sea Green', 1, 1548808923, 0),
(42, 'Silver', 1, 1548808923, 0),
(43, 'Sky Blue', 1, 1548808923, 0),
(44, 'Tan', 1, 1548808923, 0),
(45, 'Teal Blue', 1, 1548808923, 0),
(46, 'Turquoise Blue', 1, 1548808923, 0),
(47, 'Violet', 1, 1548808923, 0),
(48, 'White', 1, 1548808923, 0),
(49, 'Yellow', 1, 1548808923, 0),
(50, 'Yellow Green', 1, 1548808923, 0),
(51, 'Yellow Orange', 1, 1548808923, 0),
(52, 'Yellow Other', 1, 1548808923, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicleHistory`
--

CREATE TABLE `vehicleHistory` (
  `historyId` bigint(20) NOT NULL,
  `vehicleId` bigint(20) NOT NULL,
  `vjobTypeId` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `attachment` text NOT NULL,
  `fileType` enum('image','application') NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicleHistory`
--

INSERT INTO `vehicleHistory` (`historyId`, `vehicleId`, `vjobTypeId`, `date`, `attachment`, `fileType`, `status`, `crd`, `upd`) VALUES
(1, 5, 1, '2019-09-30', '1569832600.pdf', 'application', 1, '2019-09-30 08:36:42', '2019-09-30 08:36:42'),
(2, 5, 3, '2019-09-18', '1569832675.png', 'image', 1, '2019-09-30 08:37:57', '2019-09-30 08:37:57');

-- --------------------------------------------------------

--
-- Table structure for table `vehicleJobType`
--

CREATE TABLE `vehicleJobType` (
  `vjobTypeId` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Active',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicleJobType`
--

INSERT INTO `vehicleJobType` (`vjobTypeId`, `type`, `status`, `crd`, `upd`) VALUES
(1, 'MOT', 1, '2019-09-26 09:02:43', '2019-09-26 09:02:43'),
(2, 'SERVICE', 1, '2019-09-26 09:02:43', '2019-09-26 09:02:43'),
(3, 'REPAIR', 1, '2019-09-26 09:02:57', '2019-09-26 09:02:57'),
(4, 'OTHER', 1, '2019-09-26 09:02:57', '2019-09-26 09:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `vehicleId` bigint(20) NOT NULL,
  `year` varchar(100) NOT NULL,
  `manufacturer` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `vin` text NOT NULL,
  `plate` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Active,0:Inactive',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`vehicleId`, `year`, `manufacturer`, `model`, `vin`, `plate`, `color`, `state`, `status`, `crd`, `upd`) VALUES
(4, '2012', 'Daewoo', 'MO3', 'V1234', 'A212', 'Burnt Orange', 'CA', 1, '2019-08-08 09:28:58', '2019-08-08 09:28:58'),
(5, '2012', 'Ford', 'A', 'VINW', '323AD', 'Blue', 'AR', 1, '2019-08-09 09:44:45', '2019-08-08 09:41:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignVehicle`
--
ALTER TABLE `assignVehicle`
  ADD PRIMARY KEY (`assignVehicleId`),
  ADD KEY `vehicleId` (`vehicleId`);

--
-- Indexes for table `carManufacturers`
--
ALTER TABLE `carManufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerAddress`
--
ALTER TABLE `customerAddress`
  ADD PRIMARY KEY (`addressId`),
  ADD KEY `userId` (`customerId`);

--
-- Indexes for table `customerMeta`
--
ALTER TABLE `customerMeta`
  ADD PRIMARY KEY (`customerMetaId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `driverMeta`
--
ALTER TABLE `driverMeta`
  ADD PRIMARY KEY (`driverMetaId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobId`),
  ADD KEY `jobTypeId` (`jobTypeId`),
  ADD KEY `customerId` (`customerId`),
  ADD KEY `driverId` (`driverId`);

--
-- Indexes for table `jobTiming`
--
ALTER TABLE `jobTiming`
  ADD PRIMARY KEY (`jobTimeId`),
  ADD KEY `jobId` (`jobId`),
  ADD KEY `driverId` (`driverId`);

--
-- Indexes for table `jobType`
--
ALTER TABLE `jobType`
  ADD PRIMARY KEY (`jobTypeId`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicleColors`
--
ALTER TABLE `vehicleColors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicleHistory`
--
ALTER TABLE `vehicleHistory`
  ADD PRIMARY KEY (`historyId`),
  ADD KEY `vjobTypeId` (`vjobTypeId`),
  ADD KEY `vehicleId` (`vehicleId`);

--
-- Indexes for table `vehicleJobType`
--
ALTER TABLE `vehicleJobType`
  ADD PRIMARY KEY (`vjobTypeId`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`vehicleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignVehicle`
--
ALTER TABLE `assignVehicle`
  MODIFY `assignVehicleId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `carManufacturers`
--
ALTER TABLE `carManufacturers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `customerAddress`
--
ALTER TABLE `customerAddress`
  MODIFY `addressId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customerMeta`
--
ALTER TABLE `customerMeta`
  MODIFY `customerMetaId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `driverMeta`
--
ALTER TABLE `driverMeta`
  MODIFY `driverMetaId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `jobTiming`
--
ALTER TABLE `jobTiming`
  MODIFY `jobTimeId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobType`
--
ALTER TABLE `jobType`
  MODIFY `jobTypeId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `vehicleColors`
--
ALTER TABLE `vehicleColors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `vehicleHistory`
--
ALTER TABLE `vehicleHistory`
  MODIFY `historyId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicleJobType`
--
ALTER TABLE `vehicleJobType`
  MODIFY `vjobTypeId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `vehicleId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignVehicle`
--
ALTER TABLE `assignVehicle`
  ADD CONSTRAINT `assignVehicle_ibfk_1` FOREIGN KEY (`vehicleId`) REFERENCES `vehicles` (`vehicleId`) ON DELETE CASCADE;

--
-- Constraints for table `customerMeta`
--
ALTER TABLE `customerMeta`
  ADD CONSTRAINT `customerMeta_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driverMeta`
--
ALTER TABLE `driverMeta`
  ADD CONSTRAINT `driverMeta_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`jobTypeId`) REFERENCES `jobType` (`jobTypeId`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_ibfk_3` FOREIGN KEY (`driverId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
