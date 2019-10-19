-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 19, 2019 at 03:55 AM
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
(1, 'Admin', 'admin@admin.com', '$2y$10$RTG0LIJMlWZc0/0bGSvD..LO2SAIA9FAE7CwffXp9ztNA1Wlbcmey', 1, '', '(111) 111-1111', 1, '87c61163b21cc0fec903a4bef4c1164abe402f39', 'e5309a9e62031ca2acfe429e2930c5a2a90dcf1d', '2019-08-01 13:15:47', '2019-10-19 09:44:22'),
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
(5, 5, 18, '2019-08-08', '2019-08-08 13:00:50', '2019-10-03 11:53:26');

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
(12, 14, '149 High St, Yarm, UK', '149', 'High Street', '', 'England', 'TS159A', 'United Kingdom', '54.51137924', '-1.35624695'),
(13, 19, 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720790', '75.86841130'),
(14, 19, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '809', 'Agra Bombay Road', 'Indore', 'MP', '452003', 'India', '22.72272700', '75.88707100'),
(15, 5, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(16, 5, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(17, 7, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(18, 7, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(19, 2, 'The Gatehouse, 84 Billingham Road, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410'),
(20, 5, 'Shekhawat Marg, Banni Ki Dhani, Harnathapura, Jhotwara, Jaipur, Rajasthan, India', '', 'Shekhawat Marg', 'Jaipur', 'RJ', '302032', 'India', '26.95181710', '75.72730960'),
(21, 5, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(22, 5, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(23, 3, 'Palasia Square, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452001', 'India', '22.72408670', '75.88598180'),
(24, 13, 'Palasia, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452001', 'India', '22.72435500', '75.88389440'),
(25, 7, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(26, 5, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(27, 13, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(28, 2, '7 Middleton Ave, Billingham, UK', '', 'Middleton Avenue', 'Stockton-on-Tees', 'England', '', 'United Kingdom', '54.61283050', '-1.30712640');

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
(12, 14, 0, '149 High St, Yarm, UK', '149', 'High Street', '', 'England', 'TS159A', 'United Kingdom', '54.51137924', '-1.35624695', '149 High St, Yarm, UK', '149', 'High Street', '', 'England', 'TS159A', 'United Kingdom', '54.51137924', '-1.35624695'),
(13, 19, 0, 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720790', '75.86841130', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '809', 'Agra Bombay Road', 'Indore', 'MP', '452003', 'India', '22.72272700', '75.88707100');

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
(4, 17, '1234567890', '(12345) 678900', '2019-09-16', '2019-09-03', '132312123123123123123123123', '2019-09-30', 'India Gate, New Delhi, Delhi, India', '', '', 'New Delhi', 'DL', '', 'India', '28.61108780', '77.23451996'),
(5, 18, 'Laneo', '(01642) 123456', '2019-02-02', '2019-10-01', '902024', '2021-01-14', '25 Ambleside Road, Middlesbrough, UK', '25', 'Ambleside Road', '', 'England', 'TS6 0ET', 'United Kingdom', '54.55839250', '-1.15857330');

-- --------------------------------------------------------

--
-- Table structure for table `jobQuestionAnswer`
--

CREATE TABLE `jobQuestionAnswer` (
  `answerId` bigint(20) NOT NULL,
  `jobId` bigint(20) NOT NULL,
  `jobTypeId` bigint(20) NOT NULL,
  `questionId` bigint(20) NOT NULL,
  `answer` text NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobQuestionAnswer`
--

INSERT INTO `jobQuestionAnswer` (`answerId`, `jobId`, `jobTypeId`, `questionId`, `answer`, `crd`, `upd`) VALUES
(1, 88, 4, 1, '', '2019-10-19 09:46:02', '2019-10-19 09:46:02'),
(2, 88, 4, 2, '', '2019-10-19 09:46:02', '2019-10-19 09:46:02'),
(3, 88, 4, 3, '', '2019-10-19 09:46:02', '2019-10-19 09:46:02'),
(4, 88, 4, 4, '', '2019-10-19 09:46:02', '2019-10-19 09:46:02');

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
(4, 'Test user', 2, 3, 4, '2019-08-08 00:00:00', '3:45 PM', 'Curitiba, State of ParanÃ¡, Brazil', '', '', 'Curitiba', 'PR', '', 'Brazil', '-25.42895317', '-49.26713562', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"\",\"driverSignature\":null,\"workImage\":null},\"afterWork\":{\"endDateTime\":\"2019-10-09 12:00:00 AM\",\"comments\":\"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"customerSignature\":\"1568204571.\",\"workImage\":[\"1568204563.jpg\",\"1568204566.jpg\"]}}', '2019-09-11 12:22:55', '2019-08-10 10:11:38'),
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
(29, 'Test Job 101', 1, 14, 4, '2019-09-18 00:00:00', '11:00 AM', '149 High St, Yarm, UK', '149', 'High Street', '', 'England', 'TS15 9', 'United Kingdom', '54.51139832', '-1.35625005', 0, 1, '22.812008,75.645554|22.800615,75.97789|22.677759,75.97377|22.656217,75.815842|22.724635,75.667526|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0Ts¹ÁPéR@\"œÁßÏ6@xEğ¿•şR@â¯É\ZõÌ6@Üôg?RşR@Õ‘#­6@-]Á6ôR@IZÖı§6@³Îø¾¸êR@v‰ê­¹6@Ts¹ÁPéR@\"œÁßÏ6@', '', '2019-09-17 09:36:20', '2019-09-17 09:14:42'),
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
(44, 'Test Job 20-8', 1, 13, 16, '2019-09-17 00:00:00', '3:30 PM', 'Razzmatazz, Carrer dels AlmogÃ vers, Barcelona, Spain', '122', 'Carrer dels AlmogÃ vers', 'Barcelona', 'CT', '08018', 'Spain', '41.39772034', '2.19110560', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test\",\"driverSignature\":\"1569318742.\",\"workImage\":[\"1569318736.\",\"1569318738.\",\"1569318740.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test job\",\"customerSignature\":\"1569318962.\",\"workImage\":[\"1569318955.\",\"1569318958.\",\"1569318960.\"]}}', '2019-09-24 09:56:04', '2019-09-24 09:47:02'),
(45, 'Test Job 20-9', 4, 13, 16, '2019-09-24 00:00:00', '3:30 PM', 'Razwada Jeweles Pvt. Ltd., Turner Road, Bandra West, Mumbai, Maharashtra, India', '', 'Turner Road', 'Mumbai', 'MH', '400050', 'India', '19.05930710', '72.83294678', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test 85\",\"driverSignature\":\"1569318962.\",\"workImage\":[\"1569318956.\",\"1569318957.\",\"1569318960.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test\",\"customerSignature\":\"1569319518.\",\"workImage\":[\"1569319512.\",\"1569319515.\",\"1569319516.\"]}}', '2019-09-24 10:05:20', '2019-09-24 09:47:46'),
(46, 'Test Job 20-10', 1, 13, 16, '2019-09-25 00:00:00', '3:30 PM', 'Vijayawada International Airport, National Highway 16, Gannavaram, Andhra Pradesh, India', '', 'National Highway 16', 'Gannavaram', 'AP', '521102', 'India', '16.52383804', '80.79141998', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Drags sdfsadfasf add\",\"driverSignature\":\"1569318750.\",\"workImage\":[\"1569318743.\",\"1569318746.\",\"1569318747.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Dada dsafasdf \",\"customerSignature\":\"1569318970.\",\"workImage\":[\"1569318964.\",\"1569318966.\",\"1569318968.\"]}}', '2019-09-24 09:56:11', '2019-09-24 09:48:33'),
(47, 'Test Job 21', 1, 13, 16, '2019-09-24 00:00:00', '3:45 PM', 'Razzmatazz, Carrer dels AlmogÃ vers, Barcelona, Spain', '122', 'Carrer dels AlmogÃ vers', 'Barcelona', 'CT', '08018', 'Spain', '41.39770126', '2.19110990', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test job\",\"driverSignature\":\"1569321293.\",\"workImage\":[\"1569321286.\",\"1569321288.\",\"1569321290.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test jobs\",\"customerSignature\":\"1569321300.\",\"workImage\":[\"1569321294.\",\"1569321296.\",\"1569321298.\"]}}', '2019-09-24 10:35:02', '2019-09-24 10:14:39'),
(48, 'Test Job 21-1', 2, 13, 16, '2019-09-24 00:00:00', '4:00 PM', 'Asheville, NC, USA', '', '', 'Asheville', 'NC', '', 'United States', '35.59505844', '-82.55148315', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test job\",\"driverSignature\":\"1569322405.\",\"workImage\":[\"1569322400.\",\"1569322401.\",\"1569322403.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Can we get some more money from my mom today \",\"customerSignature\":\"1569326288.\",\"workImage\":[\"1569326281.\",\"1569326283.\",\"1569326285.\"]}}', '2019-09-24 11:58:10', '2019-09-24 10:17:47'),
(49, 'Test Job 21-2', 1, 13, 16, '2019-09-25 00:00:00', '4:00 PM', 'Arcachon, France', '', '', 'Arcachon', 'Nouvelle-Aquitaine', '33120', 'France', '44.65229797', '-1.17850161', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Gggg\",\"driverSignature\":\"1569326146.\",\"workImage\":[\"1569326140.\",\"1569326142.\",\"1569326144.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test the day and I have to work tomorrow night at three or five minutes ago so I\\u2019ll just take it home then I\\u2019m not going \",\"customerSignature\":\"1569326278.\",\"workImage\":[\"1569326273.\",\"1569326275.\",\"1569326276.\"]}}', '2019-09-24 11:58:01', '2019-09-24 10:18:12'),
(50, 'Test Job 21-3', 3, 13, 16, '2019-09-17 00:00:00', '4:00 PM', 'Dubai International Airport (DXB) - Dubai - United Arab Emirates', '', '', 'Dubai', 'Dubai', '', 'United Arab E', '25.25320053', '55.36569977', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-24 12:00:00 AM\",\"comments\":\"Test added sadf as\",\"driverSignature\":\"1569321309.\",\"workImage\":[\"1569321302.\",\"1569321304.\",\"1569321307.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 03:39:00 PM\",\"comments\":\"Check out the images.\",\"customerSignature\":\"1569579063.jpg\",\"workImage\":[\"1569579051.jpg\",\"1569579054.jpg\",\"1569579059.jpg\"]}}', '2019-09-27 10:11:05', '2019-09-24 10:18:55'),
(51, 'Test Job 21-4', 2, 13, 16, '2019-09-24 00:00:00', '7:00 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '1', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272682', '75.88706970', 2, 0, '', '', '', '{\"beforeWork\":{\"startDateTime\":\"2019-09-25 12:00:00 AM\",\"comments\":\"31223564567789\",\"driverSignature\":\"1569401683.\",\"workImage\":[\"1569401677.\",\"1569401679.\",\"1569401681.\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 12:00:00 AM\",\"comments\":\"Gfgfg\\nGfgfg\\nGfgfg\\nGfgfg\\nGfgfg\\nGfgfg\\n\",\"customerSignature\":\"1569576195.\",\"workImage\":[\"1569576189.\",\"1569576191.\",\"1569576193.\"]}}', '2019-09-27 09:23:17', '2019-09-24 13:23:59'),
(52, 'New Android Job', 3, 5, 16, '2019-09-26 00:00:00', '11:30 AM', 'Indore Jn Bg, Chhoti Gwaltoli, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452007', 'India', '22.71719933', '75.86830139', 2, 1, '22.829729,75.651047|22.628333,75.428574|22.530695,75.907852|22.677759,75.987503|22.796817,75.755417|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0,J	ÁªéR@ôŠ§iÔ6@z¤ÁmÛR@aÿunÚ 6@ífF?\ZúR@–&¥ Û‡6@ìlÈ?3ÿR@Õ‘#­6@êu‹ÀXğR@—åë2üË6@,J	ÁªéR@ôŠ§iÔ6@', '{\"beforeWork\":{\"startDateTime\":\"1970-01-01 12:00:00 AM\",\"comments\":\"this is my first job\",\"driverSignature\":\"1569491348.PNG\",\"workImage\":[]},\"afterWork\":{\"endDateTime\":\"1970-01-01 12:00:00 AM\",\"comments\":\"this is my first job\",\"customerSignature\":\"1569505098.PNG\",\"workImage\":[]}}', '2019-09-26 13:38:20', '2019-09-26 05:57:18'),
(53, 'New And', 4, 5, 16, '2019-09-26 00:00:00', '1:45 PM', 'Palasia ibus stop, Agra Bombay Road, New Palasia, Indore, Madhya Pradesh, India', '38', 'Agra Bombay Road', 'Indore', 'MP', '452016', 'India', '22.72489548', '75.88694763', 2, 1, '22.774027,75.830948|22.737301,75.942184|22.695498,75.929825|22.662553,75.894119|22.679027,75.793869|22.711967,75.793869|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0N+…@.õR@“8+¢&Æ6@ ´¾LüR@ßN\"Â¿¼6@4€·@‚ûR@ôn,(²6@İîå>9ùR@ßİÊ©6@ºì¿ÎòR@Û¦¶Ô­6@ºì¿ÎòR@ÌÔ$xC¶6@N+…@.õR@“8+¢&Æ6@', '{\"beforeWork\":{\"startDateTime\":\"2019-09-26 03:12:00 PM\",\"comments\":\"test new \",\"driverSignature\":\"1569490970.jpg\",\"workImage\":[]},\"afterWork\":{\"endDateTime\":\"2019-09-27 04:10:00 PM\",\"comments\":\"cheers vh j know c\\nXu ink ix\",\"customerSignature\":\"1569580872.jpg\",\"workImage\":[\"1569580862.jpg\",\"1569580866.jpeg\",\"1569580868.jpg\"]}}', '2019-09-27 10:41:14', '2019-09-26 08:12:37'),
(54, 'New job tracking', 1, 7, 15, '2019-09-28 00:00:00', '2:30 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272682', '75.88706970', 2, 1, '22.723108,75.886952|22.72291,75.887638|22.722722,75.88781|22.722256,75.888464|22.721455,75.887982|22.721069,75.887724|22.721376,75.887145|22.721772,75.887263|22.721989,75.886801|22.722167,75.886458|22.722256,75.886361|22.722534,75.886651|22.72283,75.886812|', '#FF0000', '\0\0\0\0\0\0\0\0\0\0\0\0\0ËGRÒÃøR@Ùy›¹6@õ+ÏøR@Œó7¡¹6@ôÃáÑøR@‡\ZO¹6@ë˜ÜøR@üVëÄå¸6@ò[t²ÔøR@\"‰^F±¸6@õ÷RxĞøR@Ğ(]ú—¸6@ÖsÒûÆøR@Šø¬¸6@Ûü¿êÈøR@$+¿Æ¸6@ÙCûXÁøR@^gEÔ¸6@ÄÑUº»øR@@¿ïß¸6@ÊÜ|#ºøR@üVëÄå¸6@ÎıÕã¾øR@?üü÷¸6@Ól‡ÁøR@S‘\nc¹6@ËGRÒÃøR@Ùy›¹6@', '{\"beforeWork\":{\"startDateTime\":\"1970-01-01 12:00:00 AM\",\"comments\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"driverSignature\":\"1569489822.jpg\",\"workImage\":[\"1569489817.jpg\",\"1569489819.jpg\",\"1569489820.jpg\"]},\"afterWork\":{\"endDateTime\":\"1970-01-01 12:00:00 AM\",\"comments\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"customerSignature\":\"1569490704.jpg\",\"workImage\":[\"1569490700.jpg\",\"1569490702.jpg\"]}}', '2019-09-26 09:38:26', '2019-09-26 08:49:59'),
(55, 'Tracking Job', 2, 7, 16, '2019-09-28 00:00:00', '3:45 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.744885,75.883142|22.739502,75.926744|22.717494,75.898763|22.718286,75.880052|22.727945,75.879365|22.732378,75.887262|22.740769,75.877992|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0Wîf…øR@íGŠÈ°¾6@éğÆOûR@œSÉ\0P½6@¶ö>U…ùR@ƒÑ¯­·6@â±ŸÅRøR@¶,_—á·6@Ğ#„GøR@fI€šZº6@ó>æÈøR@UOæ}»6@”‰[1øR@\0ä„	£½6@Wîf…øR@íGŠÈ°¾6@', '{\"beforeWork\":{\"startDateTime\":\"2019-09-27 03:50:00 PM\",\"comments\":\"sgkvxfb\\ncvkkmmhll\",\"driverSignature\":\"1569579710.jpg\",\"workImage\":[\"1569579700.jpg\",\"1569579704.png\",\"1569579706.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 05:07:00 PM\",\"comments\":\"six\\nDulux\\nfox\\nstill\\nfunk\\nFinn\",\"customerSignature\":\"1569584243.jpg\",\"workImage\":[\"1569584237.jpg\",\"1569584239.jpg\",\"1569584241.jpg\"]}}', '2019-09-27 11:37:24', '2019-09-26 10:16:27'),
(56, 'Clear snow from carpark 1', 3, 2, 4, '2019-09-30 00:00:00', '3:00 PM', 'The Gatehouse, 84 Billingham Rd, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410', 0, 1, '54.590588,-1.305485|54.590568,-1.305439|54.59056,-1.305431|54.590559,-1.305394|54.590525,-1.305368|54.590486,-1.305359|54.590495,-1.305378|54.590508,-1.305397|54.590507,-1.305459|54.590435,-1.305578|54.590361,-1.305517|54.590349,-1.305583|54.590397,-1.305628|54.590455,-1.305713|54.590478,-1.305669|54.590493,-1.305687|54.590552,-1.30559|54.590564,-1.305595|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0l²F=Dãô¿|´8c˜KK@aÄ>ãô¿5s»—KK@ôÂãô¿³)Wx—KK@aP¦Ñäâô¿â­óo—KK@:ëSÉâô¿6<½R–KK@Ó hÀâô¿x_••KK@«¯®\nÔâô¿Ë¹W•KK@ƒ¾ôöçâô¿`\"Ä•KK@DMôù(ãô¿‡¾»•KK@ÆÁ¥ãô¿ö´Ã_“KK@Øó5Ëeãô¿¼êóKK@Æjóÿªãô¿øXKK@ÆŞ‹/Úãô¿	Tÿ ’KK@ŒdP3äô¿=a‰”KK@˜jf-äô¿õ€yÈ”KK@eÿ<\räô¿+ÂMF•KK@ÁÿV²ãô¿0K;5—KK@O#-•·ãô¿ôå™—KK@l²F=Dãô¿|´8c˜KK@', '', '2019-09-26 14:00:12', '2019-09-26 14:00:12'),
(57, 'Test Job 100', 3, 2, 4, '2019-09-26 00:00:00', '4:15 PM', 'Darlington Mowden Park Rugby Club, The Northern Echo Arena, Neasham Road, Darlington, UK', '', 'Neasham Road', '', 'England', 'DL2 1DL', 'United Kingdom', '54.50798330', '-1.53497350', 0, 1, '54.510242,-1.537531|54.508647,-1.531458|54.507812,-1.532059|54.507987,-1.532896|54.507887,-1.533175|54.507688,-1.533025|54.507364,-1.533218|54.507239,-1.533454|54.507289,-1.534698|54.50765,-1.535471|54.508024,-1.53605|54.509208,-1.537144|54.510005,-1.537767|54.510155,-1.537788|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0ú`º™ø¿×…œOAK@=)“\ZÚ€ø¿±\ZKXAK@ï­HLPƒø¿BÎûÿ@K@µÂô½†ø¿†åÏ·AK@€·@‚â‡ø¿\"ˆópAK@×4ï8E‡ø¿,Iëû@K@i7ú˜ˆø¿y•µMñ@K@å¹¾‰ø¿¼ \"5í@K@%És}ø¿nOØî@K@{M\nJ‘ø¿>èÙ¬ú@K@2U0*©“ø¿£Ê0îAK@Êá“N$˜ø¿HnMº-AK@vãİ‘±šø¿óåØGAK@dæ—Çšø¿rPÂLAK@ú`º™ø¿×…œOAK@', '', '2019-09-26 14:04:02', '2019-09-26 14:04:02'),
(58, 'New test And Job', 1, 3, 15, '2019-09-27 00:00:00', '12:15 PM', 'GEETA BHAVAN SQUARE, Gita Bhawan Road, South Tukoganj, Indore, Madhya Pradesh, India', '', 'Gita Bhawan Road', 'Indore', 'MP', '452001', 'India', '22.71843200', '75.88429860', 2, 1, '22.718724,75.877967|22.72102,75.882302|22.717299,75.888911|22.710253,75.886293|22.709263,75.878268|22.711638,75.876937|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0çıœ0øR@®ÙÊKş·6@ÌÎ¢wøR@\rÃGÄ”¸6@ƒöêãøR@tBè ·6@kF¹øR@Êâş#Óµ6@åGüŠ5øR@JCB’µ6@Àé]¼øR@B—pè-¶6@çıœ0øR@®ÙÊKş·6@', '{\"beforeWork\":{\"startDateTime\":\"2019-09-27 12:06:00 PM\",\"comments\":\"did\\ncubist\\nFujitsu\\ncoz\\ndiff BBC\\nDimitar\\nfifty\\ndj loc\",\"driverSignature\":\"1569566242.jpg\",\"workImage\":[\"1569566234.jpg\",\"1569566236.jpg\",\"1569566239.png\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 12:25:00 PM\",\"comments\":\"Arvid\\nfig\\nfig\\nFinn\\ngong\\nfiks\\nskudd\\nsinus\",\"customerSignature\":\"1569567406.jpg\",\"workImage\":[\"1569567397.jpg\",\"1569567400.jpg\",\"1569567402.jpg\"]}}', '2019-09-27 06:56:47', '2019-09-27 06:35:03'),
(59, 'Job Image Size', 1, 5, 16, '2019-09-27 00:00:00', '5:30 PM', 'Indore Bypass Road, County Walk Township, Indore, Madhya Pradesh, India', '', 'Indore Bypass Road', '', 'MP', '', 'India', '22.71139850', '75.88320000', 2, 1, '22.75573,75.846808|22.782321,75.8729|22.759529,75.916846|22.715199,75.898993|22.702531,75.882513|22.713932,75.860541|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0o.\Z2öR@(›r…wÁ6@k+ö—İ÷R@Yùe0FÈ6@û]Øš­úR@]~pÂ6@O•ï‰ùR@Ä!H·6@ßRÎ{øR@\ZmUÙ³6@÷\Z÷R@`‘_?Ä¶6@o.\Z2öR@(›r…wÁ6@', '{\"beforeWork\":{\"startDateTime\":\"2019-09-27 06:37:00 PM\",\"comments\":\"did\\nFujifilm\\nFuji oh\\nFuji\\nfind\",\"driverSignature\":\"1569589678.jpg\",\"workImage\":[\"1569589671.png\",\"1569589673.jpg\",\"1569589675.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-09-27 06:44:00 PM\",\"comments\":\"did aug\\nXbox\\ndid\\n\",\"customerSignature\":\"1569590070.jpg\",\"workImage\":[\"1569590063.jpg\",\"1569590065.jpg\",\"1569590068.jpg\"]}}', '2019-09-27 13:14:33', '2019-09-27 11:58:49'),
(60, 'Test Job 3', 3, 2, 4, '2019-09-30 00:00:00', '12:30 PM', 'The Gatehouse, 84 Billingham Road, Stockton-on-Tees, UK', '84', 'Billingham Road', '', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410', 0, 1, '54.59065,-1.305599|54.590559,-1.305388|54.590478,-1.305361|54.590352,-1.305483|54.590393,-1.305645|54.590442,-1.305717|54.590475,-1.305672|54.590529,-1.305786|54.590651,-1.305597|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\n\0\0\0|ëÆ»ãô¿ò°PkšKK@t	‡Şâô¿â­óo—KK@ê”G7Ââô¿õ€yÈ”KK@U¾g$Bãô¿i‚§KK@‡ùòìãô¿Çdqÿ‘KK@ºLM‚7äô¿©|š“KK@ºØ´Räô¿„\rO¯”KK@Ê1YÜäô¿w+Kt–KK@e®¹ãô¿Ã,´sšKK@|ëÆ»ãô¿ò°PkšKK@', '', '2019-09-30 11:29:43', '2019-09-30 11:29:43'),
(61, 'sas', 4, 14, 17, '2019-09-06 00:00:00', '5:15 PM', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', '7', 'Indore', 'MP', '452003', 'India', '22.71720790', '75.86841130', 0, 1, '22.718281,75.867966|22.717818,75.867951|22.718051,75.867964|22.717939,75.868009|22.718034,75.868015|22.717826,75.867972|22.717776,75.868154|22.718281,75.868347|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0	\0\0\0DÁŒ÷R@“V|Cá·6@ôáY‚Œ÷R@êz¢ëÂ·6@¾†à¸Œ÷R@/Ü¹0Ò·6@èu÷R@à…­ÙÊ·6@ÿ[É÷R@ƒjƒÑ·6@ÿunÚŒ÷R@ï7ÚqÃ·6@yËÕ÷R@ŒÚı*À·6@\Z¥Kÿ’÷R@“V|Cá·6@DÁŒ÷R@“V|Cá·6@', '', '2019-09-30 11:42:51', '2019-09-30 11:40:50'),
(62, 'Testing Job By Piyush', 4, 14, 15, '2019-10-22 00:00:00', '5:30 PM', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71720790', '75.86841130', 2, 1, '22.719338,75.868229|22.716092,75.866244|22.715864,75.870804|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0^‘÷R@\"Å\0‰&¸6@Ì–¬Šp÷R@_í(ÎQ·6@wN³@»÷R@=bôÜB·6@^‘÷R@\"Å\0‰&¸6@', '{\"beforeWork\":{\"startDateTime\":\"2019-09-30 05:35:00 PM\",\"comments\":\"Piyush Created the job.\",\"driverSignature\":\"1569845143.jpg\",\"workImage\":[\"1569845135.jpg\",\"1569845138.jpg\",\"1569845141.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-09-30 05:37:00 PM\",\"comments\":\"Piyush completed the process.\",\"customerSignature\":\"1569845252.jpg\",\"workImage\":[\"1569845244.jpg\",\"1569845246.jpg\",\"1569845249.jpg\"]}}', '2019-09-30 12:07:34', '2019-09-30 12:01:03'),
(63, 'New And FInish', 1, 3, 16, '2019-09-30 00:00:00', '7:00 PM', 'Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '', 'India', '22.71956870', '75.85772580', 2, 1, '22.719905,75.857167|22.71995,75.858108|22.719606,75.857885|22.719767,75.857397|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0x\rúÒÛöR@:¯±K¸6@çÑ=ëöR@UÁ¨¤N¸6@§®|–çöR@`L8¸6@¬ª—ßöR@s½m¦B¸6@x\rúÒÛöR@:¯±K¸6@', '{\"beforeWork\":{\"startDateTime\":\"2019-09-30 06:59:00 PM\",\"comments\":\"synlig synlig\\nCox\\nfull\\nsynlig\",\"driverSignature\":\"1569850197.jpg\",\"workImage\":[\"1569850192.jpg\",\"1569850194.jpg\",\"1569850196.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-03 02:26:00 PM\",\"comments\":\"Finnskog g\",\"customerSignature\":\"1570092975.jpg\",\"workImage\":[\"1570092969.jpg\",\"1570092970.jpg\",\"1570092973.jpg\"]}}', '2019-10-03 08:56:16', '2019-09-30 13:28:47'),
(64, 'Job And  Track 1', 1, 3, 16, '2019-10-03 00:00:00', '2:15 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722738,75.887072|22.722678,75.887243|22.722743,75.887404|22.723114,75.887324|22.723173,75.886927|22.72297,75.886954|22.722767,75.886965|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0¡L£ÉÅøR@’“‰[¹6@·&İ–ÈøR@ç‰çl¹6@¼•%:ËøR@¶il¯¹6@.=šêÉøR@GÅÿ¹6@¼viÃøR@§Y İ!¹6@œÃµÚÃøR@7ıÙ¹6@–ìØÄøR@Ç B¹6@¡L£ÉÅøR@’“‰[¹6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-03 02:18:00 PM\",\"comments\":\"serviser Nick\",\"driverSignature\":\"1570092536.jpg\",\"workImage\":[\"1570092531.jpg\",\"1570092533.jpg\",\"1570092535.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-03 02:32:00 PM\",\"comments\":\"synliggj\\u00f8ring\",\"customerSignature\":\"1570093363.jpg\",\"workImage\":[\"1570093357.jpg\",\"1570093358.jpg\",\"1570093361.jpg\"]}}', '2019-10-03 09:02:45', '2019-10-03 08:43:05'),
(65, 'Job And  Track 2', 3, 9, 16, '2019-10-03 00:00:00', '2:15 PM', 'Palasia, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452001', 'India', '22.72435500', '75.88389440', 2, 1, '22.72291,75.886394|22.722237,75.886459|22.722198,75.887274|22.722692,75.887768|22.723425,75.887553|22.723326,75.88678|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0¸Wæ­ºøR@Œó7¡¹6@¬‡¾»øR@ö&†ä¸6@Õ%ãÉøR@’<×÷á¸6@Ü›ß0ÑøR@±ÉW¹6@Ş«ÍøR@Ú|a2¹6@Í¯æ\0ÁøR@´XŠä+¹6@¸Wæ­ºøR@Œó7¡¹6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-03 02:35:00 PM\",\"comments\":\"rustic hj\",\"driverSignature\":\"1570093538.jpg\",\"workImage\":[\"1570093532.jpg\",\"1570093534.jpg\",\"1570093536.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-03 02:53:00 PM\",\"comments\":\"disc vjk cumming\",\"customerSignature\":\"1570094615.jpg\",\"workImage\":[\"1570094610.jpg\",\"1570094612.jpg\",\"1570094613.jpg\"]}}', '2019-10-03 09:23:37', '2019-10-03 08:45:34'),
(66, 'Job And  Track 3', 4, 7, 16, '2019-10-03 00:00:00', '2:15 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.7227,75.886759|22.72293,75.886911|22.723108,75.886978|22.722984,75.887343|22.72267,75.887231|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0ÁÒ¨ÀøR@·Ñ\0Ş¹6@œİZ&ÃøR@LÃğ¹6@`‘_?ÄøR@Ùy›¹6@iUK:ÊøR@ˆ»z¹6@Õ?ˆdÈøR@âÌ¯æ\0¹6@ÁÒ¨ÀøR@·Ñ\0Ş¹6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-03 03:15:00 PM\",\"comments\":\"Siggerud j\\u00f8diske sgkvxfb\",\"driverSignature\":\"1570095959.jpg\",\"workImage\":[\"1570095952.jpg\",\"1570095954.jpg\",\"1570095957.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-03 03:43:00 PM\",\"comments\":\"din Clooney\",\"customerSignature\":\"1570097606.jpg\",\"workImage\":[\"1570097599.jpg\",\"1570097601.jpg\",\"1570097603.jpg\"]}}', '2019-10-03 10:13:28', '2019-10-03 08:47:13'),
(67, 'Job And 4', 2, 5, 16, '2019-10-03 00:00:00', '4:00 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722791,75.886809|22.723054,75.886965|22.722957,75.887316|22.722875,75.887523|22.722643,75.887434|22.722611,75.8873|22.722685,75.886785|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0\Z3‰zÁøR@Ø×ºÔ¹6@–ìØÄøR@ó=#\Z¹6@ìMÉÉøR@j¿µ¹6@©ÜD-ÍøR@“V¹6@ñÖù·ËøR@ï®³!ÿ¸6@ioğ…ÉøR@ØºÔı¸6@VeßÁøR@LOXâ¹6@\Z3‰zÁøR@Ø×ºÔ¹6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-03 06:22:00 PM\",\"comments\":\"sudah Sukoco Synn\\u00f8ve\",\"driverSignature\":\"1570107146.jpg\",\"workImage\":[\"1570107140.jpg\",\"1570107142.jpg\",\"1570107144.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-03 06:46:00 PM\",\"comments\":\"skyv\",\"customerSignature\":\"1570108577.jpg\",\"workImage\":[\"1570108572.jpg\",\"1570108574.jpg\",\"1570108576.jpg\"]}}', '2019-10-03 13:16:20', '2019-10-03 10:31:01'),
(68, 'Remove Snow in car park 1', 3, 2, 18, '2019-10-03 00:00:00', '1:30 PM', 'The Gatehouse, 84 Billingham Rd, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410', 2, 1, '54.5905,-1.304989|54.590502,-1.304241|54.589905,-1.304209|54.589898,-1.305032|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0d<J%<áô¿İ$•KK@+£‘Ï+Şô¿~Í‘•KK@¿a¢A\nŞô¿š_Í‚KK@M¼<iáô¿çüÇKK@d<J%<áô¿İ$•KK@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-03 12:41:00 PM\",\"comments\":\"Deano deano\",\"driverSignature\":\"1570102878.jpg\",\"workImage\":[\"1570102872.jpg\",\"1570102874.jpg\",\"1570102876.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-03 12:47:00 PM\",\"comments\":\"Feel sick\",\"customerSignature\":\"1570103248.jpg\",\"workImage\":[\"1570103243.jpg\",\"1570103245.jpg\",\"1570103247.jpg\"]}}', '2019-10-03 11:47:30', '2019-10-03 11:31:11'),
(69, 'Job And Track 5', 3, 5, 16, '2019-10-03 00:00:00', '5:30 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722794,75.886828|22.723059,75.886995|22.722885,75.887536|22.722742,75.887719|22.722621,75.887587|22.722561,75.887563|22.722655,75.886823|22.722705,75.886772|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0	\0\0\0UK:ÊÁøR@º¾	¹6@Ë-­†ÄøR@e\Z¹6@sËcÍøR@ÛÄÉı¹6@lBZcĞøR@r¥¹6@´V´9ÎøR@gš°ı¸6@ğˆ\nÕÍøR@t]øÁù¸6@Í•AµÁøR@wJëÿ¸6@‹ÀXßÀøR@Û§ã1¹6@UK:ÊÁøR@º¾	¹6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-03 06:48:00 PM\",\"comments\":\"sac John xiv zero\",\"driverSignature\":\"1570108693.jpg\",\"workImage\":[\"1570108687.jpg\",\"1570108689.jpg\",\"1570108691.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-03 07:10:00 PM\",\"comments\":\"dj gag gh ju\",\"customerSignature\":\"1570110032.jpg\",\"workImage\":[\"1570110027.png\",\"1570110029.jpg\",\"1570110030.jpg\"]}}', '2019-10-03 13:40:33', '2019-10-03 11:51:34'),
(70, 'Job And Track 6', 3, 3, 16, '2019-10-04 00:00:00', '5:30 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722645,75.88715|22.72295,75.887182|22.722801,75.888167|22.722321,75.888086|22.722168,75.886901|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0_)ËÇøR@0ACÿ¸6@dæ—ÇøR@©¤N@¹6@»˜fº×øR@„€|	¹6@E‚©fÖøR@Ê6pê¸6@ŠriüÂøR@½7†\0à¸6@_)ËÇøR@0ACÿ¸6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-03 06:56:00 PM\",\"comments\":\"stova all del dl\",\"driverSignature\":\"1570109178.jpg\",\"workImage\":[\"1570109170.jpg\",\"1570109173.jpg\",\"1570109175.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-03 07:06:00 PM\",\"comments\":\"tuh hjj nih si di\",\"customerSignature\":\"1570109796.jpg\",\"workImage\":[\"1570109790.jpg\",\"1570109792.jpg\",\"1570109794.jpg\"]}}', '2019-10-03 13:36:37', '2019-10-03 11:52:32'),
(71, 'Job Track 7', 2, 5, 16, '2019-10-04 00:00:00', '11:15 AM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722833,75.887027|22.722712,75.887062|22.72271,75.887105|22.722621,75.887107|22.722675,75.886804|22.722878,75.886882|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0ÑêäÅøR@6x_•¹6@á±ŸÅøR@@mT§¹6@ÇTÆøR@ş}Æ…¹6@_Cp\\ÆøR@gš°ı¸6@‘}eÁøR@£’:¹6@OZ¸¬ÂøR@vÿXˆ¹6@ÑêäÅøR@6x_•¹6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-04 11:17:00 AM\",\"comments\":\"doi zoo xls XL\",\"driverSignature\":\"1570168058.jpg\",\"workImage\":[\"1570168051.jpg\",\"1570168054.jpg\",\"1570168056.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-04 11:29:00 AM\",\"comments\":\"Xbox si\",\"customerSignature\":\"1570168768.jpg\",\"workImage\":[\"1570168763.jpg\",\"1570168765.jpg\",\"1570168767.jpg\"]}}', '2019-10-04 05:59:30', '2019-10-04 05:46:23');
INSERT INTO `jobs` (`jobId`, `jobName`, `jobTypeId`, `customerId`, `driverId`, `startDate`, `startTime`, `address`, `street`, `street2`, `city`, `state`, `zip`, `country`, `latitude`, `longitude`, `jobStatus`, `geoFencing`, `points`, `polygonColor`, `boundary`, `jobReport`, `crd`, `upd`) VALUES
(72, 'Job And Track 8', 1, 5, 16, '2019-10-04 00:00:00', '11:45 AM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722762,75.887043|22.7227,75.887051|22.722702,75.887126|22.722638,75.887335|22.722668,75.886826|22.722888,75.886885|22.722878,75.887051|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0TÉ\0PÅøR@£Ê0î¹6@•¸qÅøR@·Ñ\0Ş¹6@š[!¬ÆøR@ùÀÿ¹6@\'f½ÊøR@ËØĞÍş¸6@…ÏÖÁÁøR@ İ!Å\0¹6@”M¹ÂøR@½«0¹6@•¸qÅøR@vÿXˆ¹6@TÉ\0PÅøR@£Ê0î¹6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-04 11:33:00 AM\",\"comments\":\"serbisk Blix du XL\",\"driverSignature\":\"1570169024.jpg\",\"workImage\":[\"1570169017.jpg\",\"1570169020.jpg\",\"1570169022.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-04 12:00:00 PM\",\"comments\":\"c chic stk jl St grunn\",\"customerSignature\":\"1570170641.jpg\",\"workImage\":[\"1570170633.jpg\",\"1570170636.jpg\",\"1570170639.jpg\"]}}', '2019-10-04 06:30:43', '2019-10-04 06:02:47'),
(73, 'Job And Track 9 ', 2, 5, 16, '2019-10-04 00:00:00', '12:15 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722833,75.887032|22.722707,75.887037|22.722702,75.887107|22.72265,75.887137|22.722697,75.886882|22.722856,75.886946|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0Z İ!ÅøR@6x_•¹6@ãUÖ6ÅøR@—qS¹6@_Cp\\ÆøR@ùÀÿ¹6@”„DÚÆøR@Tt$—ÿ¸6@OZ¸¬ÂøR@Õê««¹6@ZÔ\'¹ÃøR@¦·?\r¹6@Z İ!ÅøR@6x_•¹6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-04 12:09:00 PM\",\"comments\":\"Saeed cm e eh jl ju GSM\",\"driverSignature\":\"1570171166.jpg\",\"workImage\":[\"1570171159.jpg\",\"1570171161.jpg\",\"1570171164.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-04 12:26:00 PM\",\"comments\":\"serupa chic dog\",\"customerSignature\":\"1570172222.jpg\",\"workImage\":[\"1570172216.jpg\",\"1570172218.jpg\",\"1570172219.jpg\"]}}', '2019-10-04 06:57:04', '2019-10-04 06:38:23'),
(74, 'Job And Track 11', 3, 5, 16, '2019-10-04 00:00:00', '12:45 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722997,75.887046|22.722764,75.887013|22.722742,75.887048|22.722685,75.887086|22.722685,75.887217|22.722606,75.887204|22.722685,75.886783|22.723004,75.886954|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0	\0\0\0–\\ÅøR@*ÖT¹6@ˆ,ÒÄøR@å¹¾¹6@Ü~ùdÅøR@r¥¹6@S¯[ÆøR@LOXâ¹6@#İÏ)ÈøR@LOXâ¹6@X8IóÇøR@´äñ´ü¸6@…é{\rÁøR@LOXâ¹6@œÃµÚÃøR@àFÊ¹6@–\\ÅøR@*ÖT¹6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-04 12:36:00 PM\",\"comments\":\"dkn K dykk og db\",\"driverSignature\":\"1570172816.jpg\",\"workImage\":[\"1570172809.jpg\",\"1570172811.jpg\",\"1570172815.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-04 12:54:00 PM\",\"comments\":\"dgn di dunk j Sumut dgn\",\"customerSignature\":\"1570173876.jpg\",\"workImage\":[\"1570173871.jpg\",\"1570173873.jpg\",\"1570173875.jpg\"]}}', '2019-10-04 07:24:38', '2019-10-04 07:05:52'),
(75, 'Job Track 12', 3, 7, 16, '2019-10-04 00:00:00', '2:15 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722846,75.887035|22.722631,75.887005|22.722697,75.886764|22.722885,75.886895|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0Úr.ÅøR@_zo¹6@İ˜°ÄøR@f`Xş¸6@JÑÊ½ÀøR@Õê««¹6@ÿ>ãÂøR@ÛÄÉı¹6@Úr.ÅøR@_zo¹6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-04 02:12:00 PM\",\"comments\":\"did all gone vi\",\"driverSignature\":\"1570178547.jpg\",\"workImage\":[\"1570178541.jpg\",\"1570178543.jpg\",\"1570178545.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-04 02:21:00 PM\",\"comments\":\"R\\u00f8rvik vel ckckck click\",\"customerSignature\":\"1570179101.jpg\",\"workImage\":[\"1570179095.jpg\",\"1570179097.jpg\",\"1570179099.jpg\"]}}', '2019-10-04 08:51:43', '2019-10-04 08:32:20'),
(76, 'Job Track And 11', 3, 7, 16, '2019-10-04 00:00:00', '2:45 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722853,75.887048|22.72271,75.887003|22.722759,75.886863|22.72289,75.886938|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0Ü~ùdÅøR@ÄĞêä¹6@\r;¨ÄøR@ş}Æ…¹6@B]ÂøR@ÁãÛ»¹6@å™—ÃøR@şš¬Q¹6@Ü~ùdÅøR@ÄĞêä¹6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-04 02:40:00 PM\",\"comments\":\"etnis sih\",\"driverSignature\":\"1570180235.jpg\",\"workImage\":[\"1570180230.jpg\",\"1570180231.jpg\",\"1570180233.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-04 04:10:00 PM\",\"comments\":\"suka week Dul STM \",\"customerSignature\":\"1570185628.jpg\",\"workImage\":[\"1570185620.jpg\",\"1570185623.jpg\",\"1570185626.jpg\"]}}', '2019-10-04 10:40:30', '2019-10-04 09:06:07'),
(77, 'Test Job 101', 1, 2, 18, '2019-10-04 00:00:00', '12:00 PM', 'The Gatehouse, 84 Billingham Road, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410', 1, 1, '54.590611,-1.305207|54.590385,-1.30495|54.590363,-1.304349|54.590227,-1.304268|54.590075,-1.304282|54.589991,-1.304365|54.589939,-1.304574|54.589932,-1.304748|54.589974,-1.304872|54.590046,-1.304955|54.590092,-1.304998|54.590161,-1.305489|54.590112,-1.305663|54.589983,-1.305894|54.59009,-1.306082|54.590172,-1.305878|54.590235,-1.305746|54.59031,-1.305505|54.590429,-1.305376|54.590541,-1.305349|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0*8¼ âô¿5Ô($™KK@©¤N@áô¿D†U¼‘KK@÷™Şô¿]âÈ‘KK@^‚SHŞô¿¬ïŒKK@ı.lÍVŞô¿ö—İ“‡KK@­ÀÕ­Şô¿˜÷8Ó„KK@õc“üˆßô¿FÑƒKK@°WXp?àô¿“nKä‚KK@2uWvÁàô¿Â¾D„KK@â|~áô¿\\‘˜ †KK@Ë†5•Eáô¿ÌĞx\"ˆKK@™šoHãô¿õ/IeŠKK@TÉâşãô¿}>ÊˆKK@—®`ñäô¿„KK@ğN>=¶åô¿+Ù±ˆKK@á\riTàäô¿éÁŠKK@ îêUäô¿/ú\nÒŒKK@O;ü5Yãô¿:@0GKK@•»ÏñÑâô¿În-“KK@bÜ\r¢µâô¿<ùôØ–KK@*8¼ âô¿5Ô($™KK@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-10 08:52:00 AM\",\"comments\":\"test\",\"driverSignature\":\"1570693951.jpg\",\"workImage\":[\"1570693943.jpg\",\"1570693945.jpg\",\"1570693948.jpg\"]}}', '2019-10-10 07:52:32', '2019-10-04 11:00:35'),
(78, 'Job Track And 17', 1, 5, 15, '2019-10-07 00:00:00', '2:45 PM', 'Shekhawat Marg, Banni Ki Dhani, Harnathapura, Jhotwara, Jaipur, Rajasthan, India', '', 'Shekhawat Marg', 'Jaipur', 'RJ', '302032', 'India', '26.95181710', '75.72730960', 2, 1, '26.951936,75.727094|26.951707,75.727073|26.951738,75.727274|26.951936,75.727234|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0ŠÇEµˆîR@“âã²ó:@31]ˆîR@Ğ_è£ó:@ÊN?¨‹îR@F\\\0\Z¥ó:@ƒ¢y\0‹îR@“âã²ó:@ŠÇEµˆîR@“âã²ó:@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-10 04:30:00 PM\",\"comments\":\"see this till\",\"driverSignature\":\"1570705217.jpg\",\"workImage\":[\"1570705211.jpg\",\"1570705213.jpg\",\"1570705215.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-10 04:39:00 PM\",\"comments\":\"did kick\",\"customerSignature\":\"1570705796.jpg\",\"workImage\":[\"1570705790.jpg\",\"1570705792.jpg\",\"1570705794.jpg\"]}}', '2019-10-10 11:09:57', '2019-10-07 09:15:11'),
(79, 'Test new And 21', 2, 5, 15, '2019-10-10 00:00:00', '5:30 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722851,75.887024|22.722712,75.887035|22.722695,75.886809|22.722772,75.886378|22.723185,75.886504|22.723296,75.886641|22.723106,75.887046|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0±O\0ÅøR@‚á\\Ã¹6@Úr.ÅøR@@mT§¹6@\Z3‰zÁøR@”ûŠ¹6@5yÊjºøR@êvö•¹6@|ñE{¼øR@0õó¦\"¹6@¼’ä¹¾øR@ßS9í)¹6@–\\ÅøR@˜Šy¹6@±O\0ÅøR@‚á\\Ã¹6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-10 06:04:00 PM\",\"comments\":\"drum jus M dkk\",\"driverSignature\":\"1570783082.jpg\",\"workImage\":[\"1570783074.jpg\",\"1570783077.jpg\",\"1570783080.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-11 02:07:16 PM\",\"comments\":\"funny dj\",\"customerSignature\":\"1570783091.jpg\",\"workImage\":[\"1570783086.jpg\",\"1570783088.jpg\",\"1570783090.jpg\"]}}', '2019-10-11 08:38:13', '2019-10-10 12:01:26'),
(80, 'Job local 1', 1, 5, 15, '2019-10-10 00:00:00', '6:15 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722927,75.887109|22.72269,75.88703|22.722681,75.886801|22.722976,75.886638|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0/¿ÓdÆøR@8en¾¹6@‰$zÅøR@p%;6¹6@ÙCûXÁøR@Êp<Ÿ¹6@YO­¾øR@ûÊƒô¹6@/¿ÓdÆøR@8en¾¹6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-10 06:43:00 PM\",\"comments\":\"servis\",\"driverSignature\":\"1570776482.jpg\",\"workImage\":[\"1570776475.jpg\",\"1570776478.jpg\",\"1570776480.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-11 11:47:22 AM\",\"comments\":\"dll\",\"customerSignature\":\"1570776493.jpg\",\"workImage\":[\"1570776487.jpg\",\"1570776488.jpg\",\"1570776490.jpg\"]}}', '2019-10-11 06:48:14', '2019-10-10 12:41:30'),
(81, 'Local Job 2', 3, 3, 15, '2019-10-11 00:00:00', '2:30 PM', 'Palasia Square, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452001', 'India', '22.72408670', '75.88598180', 2, 1, '22.723933,75.88568|22.723535,75.885962|22.723963,75.886852|22.724069,75.885305|22.723562,75.885015|22.723513,75.885388|22.723488,75.885785|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0)®*û®øR@Ã~O¬S¹6@ìßõ™³øR@è‚ú–9¹6@\Zä.ÂøR@™ƒ £U¹6@MÖ¨øR@$–\\¹6@^ô¤øR@Ü ö[;¹6@Vn2ªøR@;á%8¹6@d’‘³°øR@gs‚6¹6@)®*û®øR@Ã~O¬S¹6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-11 02:22:19 PM\",\"comments\":\"all all all com dj\",\"driverSignature\":\"1570784421.jpg\",\"workImage\":[\"1570784415.jpg\",\"1570784417.jpg\",\"1570784419.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-11 02:25:03 PM\",\"comments\":\"dgn bill so\",\"customerSignature\":\"1570784430.jpg\",\"workImage\":[\"1570784425.jpg\",\"1570784427.jpg\",\"1570784428.jpg\"]}}', '2019-10-11 09:00:32', '2019-10-11 08:49:55'),
(82, 'Local Job 3', 4, 13, 15, '2019-10-11 00:00:00', '4:15 PM', 'Palasia, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452001', 'India', '22.72435500', '75.88389440', 2, 1, '22.724412,75.883818|22.724023,75.882614|22.724736,75.882598|22.724959,75.884837|22.724085,75.884928|22.724558,75.883949|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0og_yøR@xÔ˜s¹6@y?n¿|øR@CB’Y¹6@ö`R||øR@Ş;jLˆ¹6@œR^+¡øR@Üğ»é–¹6@$Ô©¢øR@/†r¢]¹6@>•Ó’øR@¢|¹6@og_yøR@xÔ˜s¹6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-11 04:15:48 PM\",\"comments\":\"so do\",\"driverSignature\":\"1570790844.jpg\",\"workImage\":[\"1570790838.jpg\",\"1570790840.jpg\",\"1570790842.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-11 04:16:33 PM\",\"comments\":\"so lmk\",\"customerSignature\":\"1570790853.jpg\",\"workImage\":[\"1570790848.jpg\",\"1570790849.jpg\",\"1570790851.jpg\"]}}', '2019-10-11 10:47:34', '2019-10-11 10:44:32'),
(83, 'Grit Lucid Roundabout', 1, 2, 18, '2019-10-14 00:00:00', '11:00 AM', 'The Gatehouse, 84 Billingham Road, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410', 1, 1, '54.590053,-1.306261|54.589906,-1.306031|54.590119,-1.305499|54.590103,-1.30517|54.590053,-1.305041|54.59,-1.304984|54.589952,-1.30492|54.589934,-1.304821|54.589914,-1.304657|54.58991,-1.304432|54.590016,-1.304201|54.590121,-1.304121|54.590244,-1.30407|54.590312,-1.304107|54.590398,-1.304207|54.590422,-1.304354|54.590464,-1.304561|54.590482,-1.304783|54.59042,-1.304917|54.590383,-1.305062|54.590402,-1.30525|54.590297,-1.30584|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0ã¤0ïqæô¿ôPÛ†KK@¬şÃ€åô¿jÛ0\n‚KK@__ëRãô¿Æßö‰KK@n†ğùáô¿À\"¿~ˆKK@³ï«ráô¿ôPÛ†KK@+Úç6áô¿ìQ¸…KK@TW>Ëóàô¿Ú\ZŒƒKK@î$\"ü‹àô¿4fõ‚KK@¥õ·àßô¿í¹LM‚KK@§±½ôŞô¿¬Ê¾+‚KK@d‘&ŞŞô¿ñğ¤…KK@×mPû­İô¿g×½‰KK@“xİô¿‚TŠKK@7Á7MŸİô¿Ú7÷WKK@¨mÃ(Şô¿ÙÏb)’KK@0‚ÆL¢Şô¿ak¶ò’KK@b1êZ{ßô¿»S”KK@>–#dàô¿7pê”KK@2éï¥ğàô¿Ásïá’KK@¢	±ˆáô¿¤«‘KK@ü©ñÒMâô¿\Z¿ğJ’KK@0ğÜ{¸äô¿¥ö\"ÚKK@ã¤0ïqæô¿ôPÛ†KK@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-14 11:03:00 AM\",\"comments\":\"test\\n\",\"driverSignature\":\"1571047407.jpg\",\"workImage\":[\"1571047393.jpg\",\"1571047397.jpg\",\"1571047404.jpg\"]}}', '2019-10-14 10:03:28', '2019-10-14 10:00:54'),
(84, 'Job Local 4', 1, 7, 15, '2019-10-15 00:00:00', '11:45 AM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, '22.722828,75.88726|22.722846,75.886992|22.72269,75.886992|22.722658,75.887381|22.722121,75.887279|22.722212,75.885678|22.722593,75.885804|22.723333,75.886453|22.723207,75.887078|22.723323,75.888312|22.722165,75.888202|22.722168,75.887394|22.722814,75.887523|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0\"Ã*ŞÈøR@¢|A¹6@ôzÄøR@_zo¹6@ôzÄøR@p%;6¹6@à…­ÙÊøR@Y1\\\0¹6@^ÛÛ-ÉøR@<ÁşëÜ¸6@Y2Çò®øR@\\Ç¸ââ¸6@ŸªB±øR@‹Q×Úû¸6@;]¥»øR@ûY,¹6@ÀÍâÅøR@ÿ<\r$¹6@=)“\ZÚøR@Òq5²+¹6@z3MØøR@ÛP1Îß¸6@ª*4ËøR@½7†\0à¸6@©ÜD-ÍøR@H›V\n¹6@\"Ã*ŞÈøR@¢|A¹6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-15 11:59:03 AM\",\"comments\":\"sh Jill so XL f gm\",\"driverSignature\":\"1571123251.jpg\",\"workImage\":[\"1571123246.jpg\",\"1571123248.jpg\",\"1571123250.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-15 12:10:02 PM\",\"comments\":\"Dyno if sh fun on gjj lo fun\",\"customerSignature\":\"1571123264.jpg\",\"workImage\":[\"1571123257.jpg\",\"1571123259.jpg\",\"1571123262.jpg\"]}}', '2019-10-15 07:07:46', '2019-10-15 06:04:52'),
(85, 'Job Local 5', 1, 5, 15, '2019-10-15 00:00:00', '3:45 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 0, 1, '22.722653,75.886968|22.720847,75.886508|22.722153,75.882431|22.723628,75.882753|22.725062,75.88375|22.726824,75.882597|22.727418,75.884206|22.729219,75.884861|22.727715,75.889281|22.725498,75.887522|22.723321,75.886105|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0N&nÄøR@6[yÉÿ¸6@éŒ¼øR@rkÒm‰¸6@€~ß¿yøR@Rµİß¸6@‰\\pøR@KxB¯?¹6@Ãõ(\\øR@†’É©¹6@£ x|øR@ªò=#º6@T;ÃÔ–øR@…è8º6@` ¡øR@0Ÿ¬®º6@ıÚúéøR@Ï½‡Kº6@Á)ÍøR@<P§<º¹6@ô¾ñµøR@‚§+¹6@N&nÄøR@6[yÉÿ¸6@', '', '2019-10-15 10:13:05', '2019-10-15 10:13:05'),
(86, 'And Local 6', 2, 13, 16, '2019-10-18 00:00:00', '12:30 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 0, 1, '22.723034,75.887126|22.722712,75.886995|22.722702,75.887271|22.722581,75.887641|22.722428,75.888269|22.719837,75.887339|22.721005,75.881353|22.727457,75.883927|22.728902,75.888122|22.726567,75.893315|22.723321,75.890783|22.725023,75.886706|22.722806,75.885891|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0š[!¬ÆøR@då—Á¹6@Ë-­†ÄøR@@mT§¹6@ìMÉøR@ùÀÿ¹6@®e2ÏøR@¶ƒû¸6@=C8fÙøR@ö¶™\nñ¸6@È]„)ÊøR@dsÕ<G¸6@ÑÎihøR@£@ŸÈ“¸6@JCB’øR@?8Ÿ:º6@ë6¨ıÖøR@/ıKR™º6@®­,ùR@SZK\0º6@L5³–ùR@‚§+¹6@°Ê…Ê¿øR@\nÙy›¹6@‡4*p²øR@BZcĞ	¹6@š[!¬ÆøR@då—Á¹6@', '', '2019-10-18 06:54:12', '2019-10-18 06:54:12'),
(87, 'Man Guard visit', 5, 2, 18, '2019-10-18 00:00:00', '1:00 PM', '7 Middleton Ave, Billingham, UK', '', 'Middleton Avenue', 'Stockton-on-Tees', 'England', '', 'United Kingdom', '54.61283050', '-1.30712640', 1, 1, '54.612671,-1.307215|54.612675,-1.307037|54.612583,-1.307027|54.612587,-1.307223|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0CsFZêô¿“\ZÚ\0lNK@[—\Z¡Ÿéô¿Õ	h\"lNK@éÒ¿$•éô¿ôŠ§iNK@Cªbêô¿5z5@iNK@CsFZêô¿“\ZÚ\0lNK@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-18 01:55:00 PM\",\"comments\":\"etst\",\"driverSignature\":\"1571403351.jpg\",\"workImage\":[\"1571403342.jpg\",\"1571403346.jpg\",\"1571403349.jpg\"]}}', '2019-10-18 12:55:53', '2019-10-18 11:54:21'),
(88, 'jobType question', 4, 5, 15, '2019-10-18 00:00:00', '3:15 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 0, 1, '22.723159,75.886322|22.723055,75.887802|22.722474,75.887633|22.722326,75.886145|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0lîè¹øR@İÎ¾ò ¹6@²Ôz¿ÑøR@“5ê!\Z¹6@lv¤úÎøR@Ö5Zô¸6@ä „™¶øR@íS[ê¸6@lîè¹øR@İÎ¾ò ¹6@', '', '2019-10-19 09:46:02', '2019-10-19 09:46:02'),
(89, 'Test job19', 3, 3, 16, '2019-10-19 00:00:00', '3:45 PM', 'Indore Railway Station, Nehru Park Road, Vallabh Nagar, Indore, Madhya Pradesh, India', '7', 'Nehru Park Road', 'Indore', 'MP', '452003', 'India', '22.71719933', '75.86840057', 2, 1, '22.717078,75.868515|22.716915,75.86904|22.717076,75.869193|22.717217,75.869107|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0xEğ¿•÷R@\\®~l’·6@ºòY÷R@Ï½‡·6@`:­Û ÷R@\Z¿ğJ’·6@an÷rŸ÷R@Ÿ\"‡ˆ›·6@xEğ¿•÷R@\\®~l’·6@', '{\"beforeWork\":{\"startDateTime\":\"2019-10-19 04:11:00 PM\",\"comments\":\"test\",\"driverSignature\":\"1571481721.jpg\",\"workImage\":[\"1571481717.jpg\",\"1571481718.jpg\",\"1571481720.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-10-19 04:13:00 PM\",\"comments\":\"test data\",\"customerSignature\":\"1571481814.jpg\",\"workImage\":[\"1571481809.png\",\"1571481811.jpg\",\"1571481812.jpg\"]}}', '2019-10-19 10:43:35', '2019-10-19 10:04:23');

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
(6, 54, 15, '2019-09-26 09:37:16', '2019-09-26 09:38:26', '2019-09-26 09:37:16', '2019-09-26 09:38:26'),
(7, 67, 16, '2019-10-03 12:52:28', '2019-10-03 13:16:20', '2019-10-03 12:52:28', '2019-10-03 13:16:20'),
(8, 69, 16, '2019-10-03 13:18:16', '2019-10-03 13:40:33', '2019-10-03 13:18:16', '2019-10-03 13:40:33'),
(9, 71, 16, '2019-10-04 05:47:40', '2019-10-04 05:52:47', '2019-10-04 05:47:40', '2019-10-04 05:52:47'),
(10, 72, 16, '2019-10-04 06:03:46', '2019-10-04 06:06:01', '2019-10-04 06:03:46', '2019-10-04 06:06:01'),
(11, 73, 16, '2019-10-04 06:39:29', '2019-10-04 06:39:29', '2019-10-04 06:39:29', '2019-10-04 06:39:29'),
(12, 74, 16, '2019-10-04 07:08:28', '2019-10-04 07:20:49', '2019-10-04 07:08:28', '2019-10-04 07:20:49'),
(13, 74, 16, '2019-10-04 07:09:23', '2019-10-04 07:20:49', '2019-10-04 07:09:23', '2019-10-04 07:20:49'),
(14, 74, 16, '2019-10-04 07:10:05', '2019-10-04 07:20:49', '2019-10-04 07:10:05', '2019-10-04 07:20:49'),
(15, 74, 16, '2019-10-04 07:13:54', '2019-10-04 07:20:49', '2019-10-04 07:13:54', '2019-10-04 07:20:49'),
(16, 74, 16, '2019-10-04 07:19:56', '2019-10-04 07:20:49', '2019-10-04 07:19:56', '2019-10-04 07:20:49'),
(17, 75, 16, '2019-10-04 08:42:45', '2019-10-04 08:44:37', '2019-10-04 08:42:45', '2019-10-04 08:44:37'),
(18, 75, 16, '2019-10-04 08:44:24', '2019-10-04 08:44:37', '2019-10-04 08:44:24', '2019-10-04 08:44:37'),
(19, 76, 16, '2019-10-04 09:12:21', '2019-10-04 10:29:32', '2019-10-04 09:12:21', '2019-10-04 10:29:32'),
(20, 76, 16, '2019-10-04 09:19:53', '2019-10-04 10:29:32', '2019-10-04 09:19:53', '2019-10-04 10:29:32'),
(21, 76, 16, '2019-10-04 09:20:55', '2019-10-04 10:29:32', '2019-10-04 09:20:55', '2019-10-04 10:29:32'),
(22, 76, 16, '2019-10-04 09:22:45', '2019-10-04 10:29:32', '2019-10-04 09:22:45', '2019-10-04 10:29:32'),
(23, 76, 16, '2019-10-04 09:23:48', '2019-10-04 10:29:32', '2019-10-04 09:23:48', '2019-10-04 10:29:32'),
(24, 76, 16, '2019-10-04 09:24:39', '2019-10-04 10:29:32', '2019-10-04 09:24:39', '2019-10-04 10:29:32'),
(25, 76, 16, '2019-10-04 09:25:20', '2019-10-04 10:29:32', '2019-10-04 09:25:20', '2019-10-04 10:29:32'),
(26, 76, 16, '2019-10-04 09:26:10', '2019-10-04 10:29:32', '2019-10-04 09:26:10', '2019-10-04 10:29:32'),
(27, 76, 16, '2019-10-04 09:27:22', '2019-10-04 10:29:32', '2019-10-04 09:27:22', '2019-10-04 10:29:32'),
(28, 76, 16, '2019-10-04 09:28:55', '2019-10-04 10:29:32', '2019-10-04 09:28:55', '2019-10-04 10:29:32'),
(29, 76, 16, '2019-10-04 09:29:39', '2019-10-04 10:29:32', '2019-10-04 09:29:39', '2019-10-04 10:29:32'),
(30, 76, 16, '2019-10-04 09:30:28', '2019-10-04 10:29:32', '2019-10-04 09:30:28', '2019-10-04 10:29:32'),
(31, 76, 16, '2019-10-04 09:31:41', '2019-10-04 10:29:32', '2019-10-04 09:31:41', '2019-10-04 10:29:32'),
(32, 76, 16, '2019-10-04 09:32:43', '2019-10-04 10:29:32', '2019-10-04 09:32:43', '2019-10-04 10:29:32'),
(33, 76, 16, '2019-10-04 09:34:47', '2019-10-04 10:29:32', '2019-10-04 09:34:47', '2019-10-04 10:29:32'),
(34, 76, 16, '2019-10-04 09:38:30', '2019-10-04 10:29:32', '2019-10-04 09:38:30', '2019-10-04 10:29:32'),
(35, 76, 16, '2019-10-04 09:43:29', '2019-10-04 10:29:32', '2019-10-04 09:43:29', '2019-10-04 10:29:32'),
(36, 76, 16, '2019-10-04 10:01:42', '2019-10-04 10:29:32', '2019-10-04 10:01:42', '2019-10-04 10:29:32'),
(37, 76, 16, '2019-10-04 10:03:07', '2019-10-04 10:29:32', '2019-10-04 10:03:07', '2019-10-04 10:29:32'),
(38, 76, 16, '2019-10-04 10:03:53', '2019-10-04 10:29:32', '2019-10-04 10:03:53', '2019-10-04 10:29:32'),
(39, 76, 16, '2019-10-04 10:05:03', '2019-10-04 10:29:32', '2019-10-04 10:05:03', '2019-10-04 10:29:32'),
(40, 76, 16, '2019-10-04 10:05:23', '2019-10-04 10:29:32', '2019-10-04 10:05:23', '2019-10-04 10:29:32'),
(41, 76, 16, '2019-10-04 10:06:27', '2019-10-04 10:29:32', '2019-10-04 10:06:27', '2019-10-04 10:29:32'),
(42, 76, 16, '2019-10-04 10:07:28', '2019-10-04 10:29:32', '2019-10-04 10:07:28', '2019-10-04 10:29:32'),
(43, 76, 16, '2019-10-04 10:08:21', '2019-10-04 10:29:32', '2019-10-04 10:08:21', '2019-10-04 10:29:32'),
(44, 76, 16, '2019-10-04 10:18:11', '2019-10-04 10:29:32', '2019-10-04 10:18:11', '2019-10-04 10:29:32'),
(45, 76, 16, '2019-10-04 10:21:01', '2019-10-04 10:29:32', '2019-10-04 10:21:01', '2019-10-04 10:29:32'),
(46, 76, 16, '2019-10-04 10:21:55', '2019-10-04 10:29:32', '2019-10-04 10:21:55', '2019-10-04 10:29:32'),
(47, 76, 16, '2019-10-04 10:23:00', '2019-10-04 10:29:32', '2019-10-04 10:23:00', '2019-10-04 10:29:32'),
(48, 76, 16, '2019-10-04 10:24:01', '2019-10-04 10:29:32', '2019-10-04 10:24:01', '2019-10-04 10:29:32'),
(49, 76, 16, '2019-10-04 10:29:21', '2019-10-04 10:29:32', '2019-10-04 10:29:21', '2019-10-04 10:29:32'),
(50, 79, 15, '2019-10-10 12:40:03', '2019-10-11 08:38:04', '2019-10-10 12:40:03', '2019-10-11 08:38:04'),
(51, 79, 15, '2019-10-11 08:32:39', '2019-10-11 08:38:04', '2019-10-11 08:32:39', '2019-10-11 08:38:04'),
(52, 83, 18, '2019-10-15 09:28:45', '2019-10-15 09:28:50', '2019-10-15 09:28:45', '2019-10-15 09:28:50');

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
(4, 'Hand Gritting', 1, '2019-08-08 13:05:27', '2019-08-08 13:05:27'),
(5, 'Manguarding Visit', 1, '2019-10-18 11:52:36', '2019-10-18 11:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `jobTypeQuestions`
--

CREATE TABLE `jobTypeQuestions` (
  `questionId` bigint(20) NOT NULL,
  `jobTypeId` bigint(20) NOT NULL,
  `question` text NOT NULL,
  `type` enum('text','radio','checkbox') NOT NULL,
  `options` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Active',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobTypeQuestions`
--

INSERT INTO `jobTypeQuestions` (`questionId`, `jobTypeId`, `question`, `type`, `options`, `status`, `crd`, `upd`) VALUES
(1, 4, 'test Question1', 'text', '', 1, '2019-10-15 13:23:25', '2019-10-15 13:23:25'),
(2, 4, 'Question 2', 'radio', '[\"opt1\",\"opt2\"]', 1, '2019-10-15 13:23:25', '2019-10-15 13:23:25'),
(3, 4, 'Question 3', 'checkbox', '[\"opt\",\"opt1\"]', 1, '2019-10-15 13:23:25', '2019-10-15 13:23:25'),
(4, 4, 'Question 4', 'radio', '[\"r1\",\"r4\"]', 1, '2019-10-18 08:23:00', '2019-10-18 08:23:00'),
(5, 5, 'Was building secure', 'radio', '[\"Yes\",\"No\"]', 1, '2019-10-18 11:52:36', '2019-10-18 11:52:36'),
(6, 5, 'Any indicents', 'text', '', 1, '2019-10-18 11:52:36', '2019-10-18 11:52:36');

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
(13, 'Ved Sharma', 'ved@gmail.com', '$2y$10$4dvEJwNbe0cmwL8iYxrcpefUmIZ6EjYgxSeAn1EIGyw6khd/NHGIe', '', '(123) 456-7890', 1, 1, '052bd1336e10b003b4e7a039dbb6d68d75579aba', '5d729aa707af9b4c51a199799a4bbdcd7ba17212', 1, '', 0, '2019-09-11 06:13:14', '2019-10-11 10:31:44'),
(14, 'Yarm Computers Ltd', 'dean@yc.uk.com', '$2y$10$DxFpzfLJxbQkDGjVCTKrJ.CAR.IgWf144Tj5WBxcg.pA4VHP7cRG6', '', '(016) 427-8692', 1, 1, '05deb206af19ef93f0f49c4c76e7f4ce52df6ded', '179842a26a6eadc9ff417acb25a1a24b7d115136', 0, '', 0, '2019-09-17 08:16:32', '2019-09-17 08:16:32'),
(15, 'New Driver', 'Newdriver@gmail.com', '$2y$10$2FNDQ/f8FUqEF3guLx.jUehmRVoaGbsmVGCiTDSTspHwbFsB0HkhG', 'KDuUgWPJ04vSVHks.png', '(123) 456-7890', 2, 1, '198fa1df5d51846cb4873d5e1f0141bd4c0da907', '5009cf96bbf30938ec104429d082472b8ab31c3b', 1, '', 0, '2019-09-17 09:35:38', '2019-10-19 10:12:23'),
(16, 'NKP', 'nkp.otc@gmail.com', '$2y$10$U.4lTVxGBvcJNVKcppkkvOVSQc5clbcyzd0ydkRTpClGeUPojSp62', '', '(12345) 678900', 2, 1, 'fb60edd15df2d413e47224b1ed5621f4c63465c5', '', 1, '98765432456hcbcgfbccvbcbcbc', 0, '2019-09-19 08:32:25', '2019-10-19 10:39:58'),
(17, 'Ved', 'otc.ved@gmail.com', '$2y$10$SzXO0oW0GfasB8ep.u9v/u0jyd0IuXwUjTED25dZFBqZh/4l1Axhu', '', '(12345) 678900', 2, 1, '84d31bb01bdee93422fb27112d5c5b782e35acc2', '4265825e6a9091e3883a8aac6c65daa3a78f9cfa', 2, '(null)', 0, '2019-09-23 12:47:28', '2019-09-27 09:25:33'),
(18, 'James Laville', 'james.laville@lucidgrp.co.uk', '$2y$10$1Xc.QO.q3dKjYrIiJcHaxeTRlulyizMyQJeoP5d5DfF8GHQMnwxF2', '', '(01642) 792567', 2, 1, 'bed7a1be645c02b6fab07ec20e3dcf6e37fd656f', '4510feb6f53fb108dbb093dd19b7b2a9bc220ce1', 1, '', 0, '2019-10-03 11:29:07', '2019-10-15 06:05:48'),
(19, 'test otc', 'testotc@gmail.com', '$2y$10$tIhgepbqG.PVq8x9SI6MzeAi6KC3t7ZWQUBsAifj9n.wVbMJZnDGK', '', '(34535) 435345', 1, 1, '5a912c98ffdbead619331bc24227f07063077dde', '496b7972aed450184875a944864901dfe35effdf', 0, '', 0, '2019-10-04 06:31:26', '2019-10-04 06:31:26');

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
(2, 5, 3, '2019-09-18', '1569832675.png', 'image', 1, '2019-09-30 08:37:57', '2019-09-30 08:37:57'),
(3, 5, 1, '2019-10-21', '1571399757.pdf', 'application', 1, '2019-10-18 11:56:00', '2019-10-18 11:56:00');

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
-- Indexes for table `jobQuestionAnswer`
--
ALTER TABLE `jobQuestionAnswer`
  ADD PRIMARY KEY (`answerId`),
  ADD KEY `jobId` (`jobId`),
  ADD KEY `questionId` (`questionId`),
  ADD KEY `jobTypeId` (`jobTypeId`);

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
-- Indexes for table `jobTypeQuestions`
--
ALTER TABLE `jobTypeQuestions`
  ADD PRIMARY KEY (`questionId`),
  ADD KEY `jobTypeId` (`jobTypeId`);

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
  MODIFY `addressId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customerMeta`
--
ALTER TABLE `customerMeta`
  MODIFY `customerMetaId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `driverMeta`
--
ALTER TABLE `driverMeta`
  MODIFY `driverMetaId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobQuestionAnswer`
--
ALTER TABLE `jobQuestionAnswer`
  MODIFY `answerId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `jobTiming`
--
ALTER TABLE `jobTiming`
  MODIFY `jobTimeId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `jobType`
--
ALTER TABLE `jobType`
  MODIFY `jobTypeId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobTypeQuestions`
--
ALTER TABLE `jobTypeQuestions`
  MODIFY `questionId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `vehicleColors`
--
ALTER TABLE `vehicleColors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `vehicleHistory`
--
ALTER TABLE `vehicleHistory`
  MODIFY `historyId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Constraints for table `jobQuestionAnswer`
--
ALTER TABLE `jobQuestionAnswer`
  ADD CONSTRAINT `jobQuestionAnswer_ibfk_1` FOREIGN KEY (`jobId`) REFERENCES `jobs` (`jobId`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobQuestionAnswer_ibfk_2` FOREIGN KEY (`jobTypeId`) REFERENCES `jobType` (`jobTypeId`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobQuestionAnswer_ibfk_3` FOREIGN KEY (`questionId`) REFERENCES `jobTypeQuestions` (`questionId`) ON DELETE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`jobTypeId`) REFERENCES `jobType` (`jobTypeId`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_ibfk_3` FOREIGN KEY (`driverId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobTypeQuestions`
--
ALTER TABLE `jobTypeQuestions`
  ADD CONSTRAINT `jobTypeQuestions_ibfk_1` FOREIGN KEY (`jobTypeId`) REFERENCES `jobType` (`jobTypeId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
