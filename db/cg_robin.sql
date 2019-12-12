-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2019 at 11:02 PM
-- Server version: 5.6.46-cll-lve
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
(1, 'Admin', 'admin@admin.com', '$2y$10$WxJ3MaIi0KH.taEVTnIf8usaC4fv.Gri/GJXZFliekZgP7FDDUiWi', 1, '', '(01642) 792566', 1, '22c3f3b8f8109e9a7e69e8de31dd4a14fa2811c9', 'e5309a9e62031ca2acfe429e2930c5a2a90dcf1d', '2019-08-01 13:15:47', '2019-12-11 13:36:40'),
(2, 'Vaibhav', 'vaibhavsharma.otc@gmail.com', '$2y$10$94HB8LW1aF0Ak9Sm5L3PvOZMc4Vu9eVi4WodjHo8bd9sOIw3AI38C', 1, 'dG8hgf6oaIqcwRD5.jpg', '(121) 212-1212', 1, 'c62d4a8735a6b908e4880acde5bcd86ceb89212f', 'f039aff9f58a4ed5150ab364b410681f7f7d23db', '2019-08-01 14:03:16', '2019-11-11 11:57:19');

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
(1, 1, 5, '2019-12-03', '2019-12-03 09:30:29', '2019-12-03 09:30:29');

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
(1, 2, '149 High Street, Bendigo VIC, Australia', '149', 'High Street', 'Bendigo', 'VIC', '3550', 'Australia', '-36.76299630', '144.27142800'),
(2, 2, '149 High Street, Bendigo VIC, Australia', '149', 'High Street', 'Bendigo', 'VIC', '3550', 'Australia', '-36.76299630', '144.27142800'),
(3, 2, '84 Billingham Road, Stockton-on-Tees, UK', '84', 'Billingham Road', 'STOCKTON-ON-TEES', 'England', 'TS20 2SA', 'United Kingdom', '54.59047090', '-1.30572360'),
(4, 4, '7 Middleton Ave, Billingham, UK', '', 'Middleton Avenue', 'stockton', 'England', 'TS22 5HL', 'United Kingdom', '54.61283050', '-1.30712640'),
(5, 4, '7 Middleton Ave, Billingham, UK', '', 'Middleton Avenue', 'Stockton', 'England', 'TS22 5HL', 'United Kingdom', '54.61283050', '-1.30712640'),
(6, 2, 'The Gatehouse, 84 Billingham Rd, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410'),
(7, 2, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', 'Agra Bombay Road', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(8, 6, 'Sekhar central, Manorama Ganj, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452001', 'India', '22.72286270', '75.88695110'),
(9, 6, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452001', 'India', '22.72272700', '75.88707100'),
(10, 6, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(11, 4, 'Shekhar central, AB Road, Manorama Ganj, Indore, Madhya Pradesh, India', 'Shekhar central, Agr', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(12, 6, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(13, 6, 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100'),
(14, 6, 'The New India Assurance Company, Shekhar central, New, Palasia Square, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'New', 'Indore', 'MP', '452018', 'India', '22.72288030', '75.88705070'),
(15, 6, 'Sarwate Bus Stand, Chhoti Gwaltoli, Indore, Madhya Pradesh, India', 'Agra Bombay Road', 'Agra Bombay Road', 'Indore', 'MP', '452001', 'India', '22.71368720', '75.86856960'),
(16, 2, 'Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '', 'India', '22.71956870', '75.85772580');

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
(1, 2, 0, '149 High Street, Bendigo VIC, Australia', '149', 'High Street', 'Bendigo', 'VIC', '3550', 'Australia', '-36.76299630', '144.27142800', '149 High Street, Bendigo VIC, Australia', '149', 'High Street', 'Bendigo', 'VIC', '3550', 'Australia', '-36.76299630', '144.27142800'),
(2, 4, 0, '7 Middleton Ave, Billingham, UK', '', 'Middleton Avenue', 'stockton', 'England', 'TS22 5HL', 'United Kingdom', '54.61283050', '-1.30712640', '7 Middleton Ave, Billingham, UK', '', 'Middleton Avenue', 'Stockton', 'England', 'TS22 5HL', 'United Kingdom', '54.61283050', '-1.30712640'),
(3, 6, 0, 'Sekhar central, Manorama Ganj, Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '452001', 'India', '22.72286270', '75.88695110', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452001', 'India', '22.72272700', '75.88707100');

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
(1, 1, 'Jonathan Alsop', '(07754) 497575', '2019-11-20', '2019-11-20', '66796767', '2019-11-20', '149 High Street, Thomastown VIC, Australia', '149', 'High Street', 'Thomastown', 'VIC', '3074', 'Australia', '-37.68227630', '145.01340420'),
(2, 3, 'His Mam', '(01642) 789789', '1960-01-11', '2019-10-01', '123456', '2021-04-30', 'Sycamore Road, Stockton-on-Tees, UK', '', 'Sycamore Road', '', 'England', '', 'United Kingdom', '54.53595370', '-1.34260230'),
(3, 5, 'dfdfdf', '(12345) 678901', '2001-11-07', '2019-11-29', '1234566', '2020-08-20', 'Shekhawati Hospital & Research Centre, Sector 2, Vijay Bari, Vidyadhar Nagar, Jaipur, Rajasthan, India', 'Agra Bombay Road', 'Agra Bombay Road', 'Jaipur', 'RJ', '302039', 'India', '26.95979460', '75.77740840');

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
  `workPriority` tinyint(4) NOT NULL COMMENT '0:Low,1:Medium,2:High	',
  `geoFencing` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1:Yes ,0:No',
  `points` text NOT NULL,
  `polygonColor` varchar(255) NOT NULL,
  `boundary` geometry NOT NULL,
  `jobReport` text NOT NULL,
  `parentId` bigint(20) NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jobId`, `jobName`, `jobTypeId`, `customerId`, `driverId`, `startDate`, `startTime`, `address`, `street`, `street2`, `city`, `state`, `zip`, `country`, `latitude`, `longitude`, `jobStatus`, `workPriority`, `geoFencing`, `points`, `polygonColor`, `boundary`, `jobReport`, `parentId`, `crd`, `upd`) VALUES
(1, 'test', 1, 2, 1, '2019-11-20 00:00:00', '4:00 PM', '84 Billingham Road, Stockton-on-Tees, UK', '84', 'Billingham Road', 'STOCKTON-ON-TEES', 'England', 'TS20 2SA', 'United Kingdom', '54.59047090', '-1.30572360', 0, 0, 1, '51.509935,-0.116422|51.50986,-0.117493|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0˛Ôà\n’ÕΩø˙\n“åE¡I@IÇpæøƒ¨C¡I@˛Ôà\n’ÕΩø˙\n“åE¡I@', '', 0, '2019-11-20 15:55:10', '2019-11-20 15:55:10'),
(2, 'Gritting 2', 1, 2, 1, '2019-11-21 00:00:00', '9:15 AM', '84 Billingham Road, Stockton-on-Tees, UK', '84', 'Billingham Road', 'STOCKTON-ON-TEES', 'England', 'TS20 2SA', 'United Kingdom', '54.59047090', '-1.30572360', 0, 0, 1, '54.590497,-1.305679|54.590561,-1.305569|54.590576,-1.3055|54.590559,-1.305441|54.590486,-1.305352|54.590407,-1.305398|54.590354,-1.305462|54.590346,-1.305494|54.590383,-1.305543|54.590423,-1.305577|54.590398,-1.305631|54.590442,-1.305709|', '#FF0000', '\0\0\0\0\0\0\0\0\0\0\r\0\0\0\n/¡©‰Ùøl±€gïKK@\'æ⁄Qú„ÙøÉ•∫ÄóKK@ŸŒ˜S„Ùø∏Êé˛óKK@x∏\Z„Ùø‚≠ÛoóKK@ÑJ\\«∏‚Ùøx_ïïKK@è8dÈ‚Ùø,*‚tíKK@fªB,„Ùø	àI∏êKK@“¸1≠M„ÙøÜ©-uêKK@ˇXàÅ„Ùø§éé´ëKK@ÇéVµ§„Ùø2Á˚íKK@ËL⁄T›„ÙøŸœb)íKK@_|—/‰Ùø©|öìKK@\n/¡©‰Ùøl±€gïKK@', '', 0, '2019-11-21 09:05:15', '2019-11-21 09:05:15'),
(3, 'Job 1', 1, 2, 3, '2019-11-22 00:00:00', '2:45 PM', 'The Gatehouse, 84 Billingham Rd, Stockton-on-Tees, UK', '84', 'Billingham Road', 'Norton', 'England', 'TS20 2SA', 'United Kingdom', '54.59029030', '-1.30595410', 2, 0, 1, '54.590659,-1.305117|54.590435,-1.30428|54.592499,-1.297242|54.592648,-1.296534|54.592437,-1.296084|54.593966,-1.289796|54.594948,-1.288294|54.594811,-1.287501|54.594414,-1.287672|54.594016,-1.28853|54.593332,-1.290719|54.592822,-1.292758|54.592325,-1.294903|54.592139,-1.296019|54.592064,-1.296963|54.592163,-1.297435|54.590311,-1.303744|54.590075,-1.304087|54.589863,-1.304431|54.589863,-1.304903|54.590062,-1.30531|54.590298,-1.305203|', '#32CD32', '\0\0\0\0\0\0\0\0\0\0\0\0\0B]¬·ÙøF–∂öKK@Á:ç¥TﬁÙøˆ¥√_ìKK@Mˆœ”Ä¡Ùø”ÙŸ◊KK@€nÇoöæÙø¡„€KK@ﬁÊçì¬ºÙø]¯¡˘‘KK@î/h!£ÙøÕwLK@ﬁ Z+⁄úÙø\niçA\'LK@•	¶öôÙøâ&Pƒ\"LK@=ôÙMöÙøl$	¬LK@Y£¢—ùÙø¶^∑LK@ì6U˜»¶ÙøÀ’èMÚKK@$G:#ØÙø∂,_ó·KK@i‡G5Ï∑Ùø6Õ;N—KK@˚È?k~ºÙø‘◊Û5ÀKK@ÈÛQF\\¿Ùø…ëŒ¿»KK@ﬂ¯⁄3K¬Ùø\\sGˇÀKK@≥%´\"‹Ùø\nºìOèKK@T8ÇTä›Ùøˆó›ìáKK@õ7N\nÛﬁÙøk{°ÄKK@í<◊˜·‡Ùøk{°ÄKK@¶DΩå‚ÙøbN–&áKK@ÂAzä‚ÙøurÜ‚éKK@B]¬·ÙøF–∂öKK@', '{\"beforeWork\":{\"startDateTime\":\"2019-11-22 03:14:00 PM\",\"comments\":\"yfucutdtudutd\\n\",\"driverSignature\":\"1574435673.jpg\",\"workImage\":[\"1574435665.jpg\",\"1574435668.jpg\",\"1574435670.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-11-27 11:03:00 AM\",\"comments\":\"gihvyi \",\"customerSignature\":\"1574852630.jpg\",\"workImage\":[\"1574852623.jpg\",\"1574852625.jpg\",\"1574852628.jpg\"]}}', 0, '2019-11-27 11:03:52', '2019-11-22 15:05:52'),
(5, 'Gritting of Middleton Ave', 1, 4, 3, '2019-11-27 00:00:00', '1:45 PM', '7 Middleton Ave, Billingham, UK', '', 'Middleton Avenue', 'Stockton', 'England', 'TS22 5HL', 'United Kingdom', '54.61283050', '-1.30712640', 2, 0, 1, '54.612986,-1.307156|54.612929,-1.307915|54.612128,-1.308089|54.611994,-1.307883|54.611923,-1.307446|54.611945,-1.306796|54.612046,-1.30659|54.612991,-1.306987|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0	\0\0\0§RÏhÍÙøÛsCSvNK@Z*oG8ÌÙøè‚utNK@4ªÓÌÙø¢{÷5ZNK@ÓËπÌÙøì¨√—UNK@Üì4LÎÙø…U,~SNK@ß≤(Ï¢ËÙø±˘∏6TNK@Ä}tÍ ÁÙøÂ“¯ÖWNK@\"¡T3kÈÙøﬂ4}vNK@§RÏhÍÙøÛsCSvNK@', '{\"beforeWork\":{\"startDateTime\":\"2019-11-27 01:42:00 PM\",\"comments\":\"gcutdryxgjcytsxjtctud\",\"driverSignature\":\"1574862179.jpg\",\"workImage\":[\"1574862171.jpg\",\"1574862175.jpg\",\"1574862177.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-11-27 02:18:00 PM\",\"comments\":\"tdutdytctcy\",\"customerSignature\":\"1574864350.jpg\",\"workImage\":[\"1574864343.jpg\",\"1574864345.jpg\",\"1574864347.jpg\"]}}', 0, '2019-11-27 14:19:12', '2019-11-27 13:33:39'),
(6, 'Android Test Job', 2, 6, 5, '2019-11-29 00:00:00', '3:30 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 0, 1, '22.723063,75.887088|22.722697,75.886954|22.722588,75.887585|22.722153,75.887107|22.722363,75.885726|22.723091,75.885922|22.723308,75.886305|22.723207,75.886874|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0	\0\0\0$+ø∆¯R@ôÚ!®\Zπ6@ú√µ⁄√¯R@’Í´´π6@‰⁄P1Œ¯R@g{ÙÜ˚∏6@_Cp\\∆¯R@Rµ›ﬂ∏6@‚Õ\ZºØ¯R@(◊»Ï∏6@§30Ú≤¯R@-Â}π6@\0Rõ8π¯R@gÔå∂*π6@k*ã¬¯R@ˇ<\r$π6@$+ø∆¯R@ôÚ!®\Zπ6@', '{\"beforeWork\":{\"startDateTime\":\"2019-11-29 03:30:00 PM\",\"comments\":\"testing \",\"driverSignature\":\"1575022221.jpg\",\"workImage\":[\"1575022214.png\",\"1575022216.jpg\",\"1575022219.png\"]},\"afterWork\":{\"endDateTime\":\"2019-11-29 03:38:20 PM\",\"comments\":\"completed offline\",\"customerSignature\":\"1575022232.jpg\",\"workImage\":[\"1575022226.png\",\"1575022228.png\",\"1575022230.png\"]}}', 0, '2019-11-29 10:10:34', '2019-11-29 09:59:00'),
(7, 'Android Test 1', 3, 6, 5, '2019-11-29 00:00:00', '6:30 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 0, 1, '22.722922,75.887078|22.722673,75.887032|22.722678,75.887182|22.722564,75.887512|22.722499,75.885804|22.723029,75.8859|22.72317,75.886807|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0¿Õ‚≈¯R@èãjπ6@Z†›!≈¯R@ƒ≥π6@dÊó«¯R@ÁâÁlπ6@Ø≥!ˇÃ¯R@VDMÙ˘∏6@ü™B±¯R@àd»±ı∏6@±·Èï≤¯R@Aµmπ6@J∑%r¡¯R@≈rK´!π6@¿Õ‚≈¯R@èãjπ6@', '{\"beforeWork\":{\"startDateTime\":\"2019-11-29 06:22:00 PM\",\"comments\":\"test start offline\",\"driverSignature\":\"1575033518.jpg\",\"workImage\":[\"1575033510.jpg\",\"1575033513.png\",\"1575033515.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-11-29 06:47:58 PM\",\"comments\":\"job ended offline.\",\"customerSignature\":\"1575033530.jpg\",\"workImage\":[\"1575033524.jpg\",\"1575033526.jpg\",\"1575033528.png\"]}}', 0, '2019-11-29 13:18:52', '2019-11-29 12:50:21'),
(8, 'Android Job 2', 3, 6, 5, '2019-11-29 00:00:00', '7:00 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 0, 1, '22.72292,75.887046|22.72269,75.886925|22.722606,75.887636|22.722188,75.886498|22.723066,75.88579|22.723281,75.886906|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0ñ\\≈¯R@”ü˝Hπ6@O@a√¯R@p%;6π6@%∞9œ¯R@¥‰Ò¥¸∏6@~bº¯R@KêP·∏6@ÌGä»∞¯R@{Ÿv⁄\Zπ6@(b√¯R@t—êÒ(π6@ñ\\≈¯R@”ü˝Hπ6@', '{\"beforeWork\":{\"startDateTime\":\"2019-11-29 07:02:15 PM\",\"comments\":\"start job\",\"driverSignature\":\"1575034461.jpg\",\"workImage\":[\"1575034454.png\",\"1575034456.jpg\",\"1575034458.jpg\"]},\"afterWork\":{\"endDateTime\":\"2019-11-29 07:03:38 PM\",\"comments\":\"end job. offline\",\"customerSignature\":\"1575034478.jpg\",\"workImage\":[\"1575034471.png\",\"1575034473.jpg\",\"1575034476.jpg\"]}}', 0, '2019-11-29 13:34:40', '2019-11-29 13:30:40'),
(12, '2 dec 19', 1, 6, 5, '2019-12-02 00:00:00', '3:45 PM', 'Shekhar central, Agra Bombay Road, Manorama Ganj, Indore, Madhya Pradesh, India', '', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 2, 1, 1, '22.723054,75.886984|22.723012,75.886968|22.722982,75.886949|22.72295,75.886917|22.722908,75.886895|22.7229,75.886938|22.722769,75.886868|22.72272,75.887003|22.722678,75.886984|22.722707,75.886788|22.722685,75.886775|22.722678,75.886858|22.722623,75.886788|22.722509,75.887539|22.722569,75.887598|22.722643,75.887611|22.722717,75.887392|22.722747,75.887279|22.722754,75.887096|22.722764,75.887032|22.722895,75.887113|22.722974,75.887164|22.723004,75.887078|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0—äXƒ¯R@Û=#\Zπ6@N&nƒ¯R@ïù~Pπ6@Ω≈√¯R@øò-Yπ6@\rQÖ?√¯R@©§N@π6@ˇ>„¬¯R@K™π6@Âôó√¯R@EGr˘π6@ù˜ˇq¬¯R@ê°cπ6@\r;®ƒ¯R@E*å-π6@—äXƒ¯R@ÁâÁlπ6@üt\"¡¯R@óqSπ6@D˙ÌÎ¿¯R@LOX‚π6@ãåH¬¯R@ÁâÁlπ6@üt\"¡¯R@`V(“˝∏6@,ª`pÕ¯R@œéYˆ∏6@Æ◊gŒ¯R@z\Z0H˙∏6@y$^ûŒ¯R@ÔÆ≥!ˇ∏6@⁄Æ–À¯R@cC7˚π6@^€€-…¯R@8HàÚπ6@e\ZM.∆¯R@ù\r˘gπ6@Z†›!≈¯R@Âπæπ6@–∂öu∆¯R@\"qè•π6@åÉK«¯R@∫€ı“π6@¿Õ‚≈¯R@è‡F π6@—äXƒ¯R@Û=#\Zπ6@', '{\"beforeWork\":{\"startDateTime\":\"2019-12-02 03:40:06 PM\",\"comments\":\"tsisydshzyd\",\"driverSignature\":\"1575289213.jpg\",\"workImage\":[\"1575289208.jpeg\",\"1575289210.jpeg\",\"1575289211.jpeg\"]},\"afterWork\":{\"endDateTime\":\"2019-12-02 03:42:20 PM\",\"comments\":\"sgbfjofbrvi\",\"customerSignature\":\"1575289221.jpg\",\"workImage\":[\"1575289216.jpeg\",\"1575289217.jpeg\",\"1575289219.jpeg\"]}}', 0, '2019-12-02 12:20:23', '2019-12-02 10:09:08'),
(13, 'Job And1', 2, 4, 5, '2019-12-03 00:00:00', '11:30 AM', 'Shekhar central, AB Road, Manorama Ganj, Indore, Madhya Pradesh, India', 'Shekhar central, Agr', 'Agra Bombay Road', 'Indore', 'MP', '452018', 'India', '22.72272700', '75.88707100', 1, 2, 1, '22.723709,75.887012|22.723494,75.887242|22.723331,75.887602|22.723181,75.88785|22.723012,75.888099|22.72242,75.887637|22.722395,75.887546|22.722466,75.886937|22.722531,75.886312|22.722569,75.886169|22.72263,75.885966|22.723092,75.886229|22.723597,75.886464|22.723847,75.886496|22.723792,75.88627|22.723474,75.885003|22.72369,75.884925|22.723873,75.886035|22.724142,75.886561|22.724705,75.886847|22.724551,75.887385|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\06 ˙Õƒ¯R@$“6˛Dπ6@œh´í»¯R@+⁄Á6π6@OwûxŒ¯R@ÿ.m8,π6@;pŒà“¯R@≠ÿc\"π6@\'0ù÷¯R@ïù~Pπ6@\rnkœ¯R@˘aÑ∏6@ÖÏºçÕ¯R@>ÀÛ‡Ó∏6@1\'hì√¯R@—x\"àÛ∏6@ZÉ˜Uπ¯R@üXß ˜∏6@®n.˛∂¯R@z\Z0H˙∏6@å◊º™≥¯R@≈ôG˛∏6@Ò÷˘∑¯R@Œˇ´éπ6@5EÄ”ª¯R@’{*ß=π6@:∏Yº¯R@∆Nx	Nπ6@B[Œ•∏¯R@?πnJπ6@)wü„£¯R@ùÅëó5π6@köwú¢¯R@7qrøCπ6@!%Ã¥¯R@u≠ΩOπ6@.:YjΩ¯R@¯®ø^aπ6@ëcÎ¬¯R@h?RDÜπ6@Ä}tÍ ¯R@ªH°,|π6@6 ˙Õƒ¯R@$“6˛Dπ6@', '{\"beforeWork\":{\"startDateTime\":\"2019-12-03 04:24:00 PM\",\"comments\":\"start\",\"driverSignature\":\"1575370505.jpg\",\"workImage\":[\"1575370500.jpeg\",\"1575370502.jpeg\",\"1575370503.jpeg\"]}}', 0, '2019-12-06 07:21:46', '2019-12-03 05:56:53'),
(14, 'Job And CC', 2, 6, 5, '2019-12-13 00:00:00', '11:15 AM', 'Sarwate Bus Stand, Chhoti Gwaltoli, Indore, Madhya Pradesh, India', 'Agra Bombay Road', 'Agra Bombay Road', 'Indore', 'MP', '452001', 'India', '22.71368720', '75.86856960', 0, 2, 1, '22.714827,75.868148|22.714883,75.868361|22.714942,75.868559|22.715153,75.868873|22.714711,75.868523|22.714194,75.868977|22.713905,75.86924|22.713523,75.869596|22.713453,75.869745|22.712759,75.869841|22.712034,75.869989|22.712147,75.869663|22.712405,75.868947|22.712678,75.868153|22.712778,75.867525|22.71302,75.867435|22.713083,75.867367|22.713251,75.867474|22.713413,75.867641|22.713756,75.867812|22.714188,75.867897|22.714814,75.867992|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0ü°ºè˜R@<L˚Ê˛∂6@Ã:ì˜R@dwÅí∑6@`È|xñ˜R@nâ\\p∑6@\'ÿùõ˜R@‰¢ZD∑6@π4~·ï˜R@j”L˜∂6@z˛¥Qù˜R@⁄ˇ\0k’∂6@œ†°˜R@mscz¬∂6@‡.˚uß˜R@ùÒ}q©∂6@∑ÓÊ©˜R@¨;€§∂6@Óïy´˜R@˛Ì≤_w∂6@N∏WÊ≠˜R@€£7‹G∂6@§‚ˇé®˜R@ÃÒ\nDO∂6@EΩ‡”ú˜R@√Åê,`∂6@(ªô—è˜R@%îær∂6@ò›ìáÖ˜R@ÏNwûx∂6@¯Ñ˜R@ÿdçzà∂6@L®‡Ç˜R@eUÑõå∂6@W´±Ñ˜R@‹÷ûó∂6@ÕÍná˜R@èäˇ;¢∂6@„ƒW;ä˜R@„Rï∂∏∂6@˙“€üã˜R@2W’∂6@#LQ.ç˜R@π‡˛∂6@ü°ºè˜R@<L˚Ê˛∂6@', '', 13, '2019-12-05 09:06:16', '2019-12-05 05:40:31'),
(15, 'new test', 1, 2, 5, '2019-12-19 00:00:00', '7:00 PM', 'Indore, Madhya Pradesh, India', '', '', 'Indore', 'MP', '', 'India', '22.71956870', '75.85772580', 0, 0, 1, '22.719517,75.857606|22.719294,75.857389|22.719133,75.857848|22.719727,75.858543|22.719833,75.858339|22.719853,75.857783|22.719581,75.857765|', '#1E90FF', '\0\0\0\0\0\0\0\0\0\0\0\0\0û∂F„ˆR@ÅÍD2∏6@œºvﬂˆR@É5Œ¶#∏6@<L˚ÊˆR@py¨∏6@lÕV^ÚˆR@VW@∏6@hx≥ÔˆR@‚îπ˘F∏6@%´ÍÂˆR@pÌDIH∏6@“©+üÂˆR@Ø“›u6∏6@û∂F„ˆR@ÅÍD2∏6@', '', 0, '2019-12-10 13:20:11', '2019-12-10 13:20:11');

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
(1, 5, 3, '2019-11-27 13:43:38', '2019-11-27 13:46:19', '2019-11-27 13:43:38', '2019-11-27 13:46:19'),
(2, 5, 3, '2019-11-27 13:46:25', '2019-11-27 14:19:12', '2019-11-27 13:46:25', '2019-11-27 14:19:12'),
(3, 13, 5, '2019-12-03 10:55:07', '0000-00-00 00:00:00', '2019-12-03 10:55:07', '2019-12-03 10:55:07');

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
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
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

INSERT INTO `users` (`id`, `fullName`, `email`, `password`, `profileImage`, `contactNumber`, `userType`, `latitude`, `longitude`, `status`, `authToken`, `passToken`, `deviceType`, `deviceToken`, `verifyEmail`, `crd`, `upd`) VALUES
(1, 'Paul Alsop', 'paul@yc.uk.com', '$2y$10$ZpNy0aMlCLA1Na8/4bacuOT8eRl1oKdSHFbJoHvZIo8o8rF.PUS0W', '', '(07753) 497474', 2, '0.00000000', '0.00000000', 1, '9310daf02be8f97e4af0d398ddecc6f1a98ede7f', '55589a11d03978db11b684688f306318c4a7fe80', 0, '', 0, '2019-11-20 15:48:20', '2019-11-20 15:48:20'),
(2, 'customer 1', 'paul@lucidgrp.co.uk', '$2y$10$OCWELYffBz4fw0AHo4Tq1OMx90MACA7rJZBJmJhdcm/2Wp2yUPg1S', '', '(01642) 786922', 1, '0.00000000', '0.00000000', 1, 'c1b4bc5648c980744b6ee32c1d7fdc1e6e983f54', '9e9ab2b084bfb13a5b4648c0bc8c449d1bd523d0', 0, '', 0, '2019-11-20 15:51:36', '2019-11-20 15:51:36'),
(3, 'Ben Biggin', 'ben@lucidgrp.co.uk', '$2y$10$nIuDEGLLgX5hfqAYBOUYTe3SfPe473mfbmPonxqBtpJDN1YyUj0IK', '', '(01642) 792567', 2, '0.00000000', '0.00000000', 1, '4fea8dc3cab068cf08476e171c7c7884acd84c66', 'eb58b6760003e42d05088e57fc36a223675a98e9', 1, '', 0, '2019-11-22 14:07:46', '2019-12-02 06:32:13'),
(4, 'Customer 2', 'deano.clarke@gmail.com', '$2y$10$AI.B51BPQb/naf.Yage4aerE2sXxrQSP62KIkZv5SlTt0TYC.dc56', '', '(07809) 143391', 1, '0.00000000', '0.00000000', 1, '92ed8bf9b6e835731fd49a264637190ead1ebf2e', '2c0585c7c4ace9059d9c7ace301baa5b63c035d9', 0, '', 0, '2019-11-22 14:11:24', '2019-11-22 14:11:24'),
(5, 'Android Tester', 'nkp.otc@gmail.com', '$2y$10$yC5LnRt4.t3IqKDq8X5cDuH0/Xff5/kL4rdS4iB4QoOp/6MAiu1Oe', '', '(12345) 678900', 2, '22.72278660', '75.88707260', 1, 'bf0e0aae794653aeae025b89b02c40897552ec70', '6867ffc145e4e55afac9f12eb60cb2b3773a7c03', 1, '98765432456hcbcgfbccvbcbcbc', 0, '2019-11-29 09:46:18', '2019-12-11 13:42:37'),
(6, 'Android Customer', 'pp02@yopmail.com', '$2y$10$26E1n3VuUt/hpxqD0s/3XukA3PK1NzgUWTk9lKarFE7vtU11nvSuC', '', '(12345) 678903', 1, '0.00000000', '0.00000000', 1, '6b1220b7744fae9ffbeb9c482b3590c595a9f344', 'e3e6d3f4131d8de9c64b6532882590e31cb8853b', 1, '', 0, '2019-11-29 09:57:31', '2019-12-11 06:08:05');

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
(1, '2018', 'Audi', 'ML', 'VIN', 'PLATE', 'Brown', 'AR', 1, '2019-12-05 11:37:50', '2019-12-03 09:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `weatherNotification`
--

CREATE TABLE `weatherNotification` (
  `notificationId` bigint(20) NOT NULL,
  `addressId` bigint(20) NOT NULL,
  `customerId` bigint(20) NOT NULL,
  `temperature` varchar(255) NOT NULL,
  `alertDate` date NOT NULL,
  `alertTime` varchar(22) NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `weatherNotification`
--
ALTER TABLE `weatherNotification`
  ADD PRIMARY KEY (`notificationId`);

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
  MODIFY `assignVehicleId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carManufacturers`
--
ALTER TABLE `carManufacturers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `customerAddress`
--
ALTER TABLE `customerAddress`
  MODIFY `addressId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customerMeta`
--
ALTER TABLE `customerMeta`
  MODIFY `customerMetaId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `driverMeta`
--
ALTER TABLE `driverMeta`
  MODIFY `driverMetaId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobQuestionAnswer`
--
ALTER TABLE `jobQuestionAnswer`
  MODIFY `answerId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jobTiming`
--
ALTER TABLE `jobTiming`
  MODIFY `jobTimeId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobType`
--
ALTER TABLE `jobType`
  MODIFY `jobTypeId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobTypeQuestions`
--
ALTER TABLE `jobTypeQuestions`
  MODIFY `questionId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicleColors`
--
ALTER TABLE `vehicleColors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `vehicleHistory`
--
ALTER TABLE `vehicleHistory`
  MODIFY `historyId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicleJobType`
--
ALTER TABLE `vehicleJobType`
  MODIFY `vjobTypeId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `vehicleId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `weatherNotification`
--
ALTER TABLE `weatherNotification`
  MODIFY `notificationId` bigint(20) NOT NULL AUTO_INCREMENT;

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
