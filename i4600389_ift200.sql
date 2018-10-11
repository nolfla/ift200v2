-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 03, 2018 at 11:30 PM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `i4600389_ift200`
--

-- --------------------------------------------------------

--
-- Table structure for table `electronics`
--

CREATE TABLE `electronics` (
  `ID` int(1) DEFAULT NULL,
  `Item` varchar(20) DEFAULT NULL,
  `Quantity` varchar(2) DEFAULT NULL,
  `Item Description` varchar(15) DEFAULT NULL,
  `Purchase Location` varchar(10) DEFAULT NULL,
  `Release Year` int(4) DEFAULT NULL,
  `Discontinued?` varchar(3) DEFAULT NULL,
  `Bar Code Number` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `electronics`
--

INSERT INTO `electronics` (`ID`, `Item`, `Quantity`, `Item Description`, `Purchase Location`, `Release Year`, `Discontinued?`, `Bar Code Number`) VALUES
(4, 'Nokia Flip Phone', '1x', 'Outdated', 'Amazon', 2004, 'Yes', 26467258),
(6, '550W PSU', '1x', 'Not relaible', 'Fry\'s Tech', 2009, 'Yes', 75872565),
(5, 'HP Printer', '1x', 'Dead', 'Fry\'s Tech', 2006, 'Yes', 85325922),
(2, 'GIGABYTE Motherboard', '1x', 'Older product', 'eBay', 2010, 'Yes', 88535849),
(1, 'MSI Grapics Card', '1x', 'Poor Peformance', 'eBay', 2014, 'Yes', 92952928),
(3, '8 GB RAM Stick(s)', '2x', 'Not compatible', 'Amazon', 2008, 'Yes', 99739398);

-- --------------------------------------------------------

--
-- Table structure for table `footwear`
--

CREATE TABLE `footwear` (
  `ID` int(1) DEFAULT NULL,
  `Item` varchar(12) DEFAULT NULL,
  `Quantity` varchar(9) DEFAULT NULL,
  `Item Description` varchar(19) DEFAULT NULL,
  `Purchase Location` varchar(10) DEFAULT NULL,
  `Release Year` int(4) DEFAULT NULL,
  `Bar Code Number` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `footwear`
--

INSERT INTO `footwear` (`ID`, `Item`, `Quantity`, `Item Description`, `Purchase Location`, `Release Year`, `Bar Code Number`) VALUES
(1, 'Track Cleats', '1x (Pair)', 'Blue Nike Cleats', 'Best Buy', 2015, 56762997),
(3, 'Sandals', '1x (Pair)', 'Brown', 'Craigslist', 2014, 74782799),
(2, 'Sneakers', '1x (Pair)', 'Black Nike Sneakers', 'Best Buy', 2016, 86977999);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ID` int(2) DEFAULT NULL,
  `Item` varchar(20) DEFAULT NULL,
  `Category` varchar(11) DEFAULT NULL,
  `Quantity` varchar(9) DEFAULT NULL,
  `Item Description` varchar(20) DEFAULT NULL,
  `Purchase Location` varchar(21) DEFAULT NULL,
  `Release Year` int(4) DEFAULT NULL,
  `Bar Code Number` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ID`, `Item`, `Category`, `Quantity`, `Item Description`, `Purchase Location`, `Release Year`, `Bar Code Number`) VALUES
(14, 'Red Shirts', 'Shirts', '4x', 'Red', 'Walmart', 1998, 22428384),
(15, 'Blue Shirts', 'Shirts', '3x', 'Blue', 'Walmart', 1965, 22939955),
(18, 'Tank Top', 'Shirts', '2x', 'Black & White', 'Jet.com', 1930, 24252673),
(11, 'Hangers', 'Utility', '30x', 'Transparent', 'Target', 2011, 25737598),
(4, 'Nokia Flip Phone', 'Electronics', '1x', 'Outdated', 'Amazon', 2004, 26467258),
(19, 'Suit Jacket', 'Shirts', '1x', 'Dark Blue', 'Burlington\'s', 2001, 34346569),
(17, 'Jackets', 'Shirts', '5x', 'Black & White', 'Jet.com', 1949, 35758863),
(22, 'Basketball Shorts', 'Shorts', '4x', 'Black & White', 'Walmart', 2006, 43253639),
(25, 'Jean Pants', 'Pants', '3x', 'Dark Blue', 'Walmart', 2013, 49733883),
(26, 'Sweat Pants', 'Pants', '4x', 'White, Gray, & Black', 'Dick\'s Sporting Goods', 1990, 49942368),
(23, 'Swim Trunks', 'Shorts', '1x', 'Black', 'Quiksilver', 2008, 53892597),
(7, 'Track Cleats', 'Footwear', '1x (Pair)', 'Blue Nike Cleats', 'Best Buy', 2015, 56762997),
(16, 'Sweaters', 'Shirts', '3x', 'Gray', 'Dick\'s Sporting Goods', 1985, 72382686),
(9, 'Sandals', 'Footwear', '1x (Pair)', 'Brown', 'Craigslist', 2014, 74782799),
(6, '550W PSU', 'Electronics', '1x', 'Not relaible', 'Fry\'s Tech', 2009, 75872565),
(20, 'Plaid Shorts', 'Shorts', '3x', 'White & Gray', 'Burlington\'s', 2003, 77973768),
(13, 'Pliers', 'Utility', '1x', 'Green', 'Walmart', 2000, 82389586),
(21, 'Cargo Shorts', 'Shorts', '2x', 'Black', 'Target', 2004, 83739295),
(5, 'HP Printer', 'Electronics', '1x', 'Dead', 'Fry\'s Tech', 2006, 85325922),
(12, 'Ruler', 'Utility', '1x', 'Light Brown', 'Target', 2012, 85792654),
(8, 'Sneakers', 'Footwear', '1x (Pair)', 'Black Nike Sneakers', 'Best Buy', 2016, 86977999),
(2, 'GIGABYTE Motherboard', 'Electronics', '1x', 'Older product', 'eBay', 2010, 88535849),
(1, 'MSI Grapics Card', 'Electronics', '1x', 'Poor Peformance', 'eBay', 2014, 92952928),
(24, 'Suit Pants', 'Pants', '1x', 'Dark Blue', 'Burlington\'s', 2014, 99256662),
(10, 'Flashlight', 'Utility', '1x', 'Black', 'Craigslist', 2013, 99728794),
(3, '8 GB RAM Stick(s)', 'Electronics', '2x', 'Not compatible', 'Amazon', 2008, 99739398);

-- --------------------------------------------------------

--
-- Table structure for table `pants`
--

CREATE TABLE `pants` (
  `ID` int(1) DEFAULT NULL,
  `Item` varchar(11) DEFAULT NULL,
  `Quantity` varchar(2) DEFAULT NULL,
  `Item Description` varchar(20) DEFAULT NULL,
  `Purchase Location` varchar(21) DEFAULT NULL,
  `Release Year` int(4) DEFAULT NULL,
  `Bar Code Number` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pants`
--

INSERT INTO `pants` (`ID`, `Item`, `Quantity`, `Item Description`, `Purchase Location`, `Release Year`, `Bar Code Number`) VALUES
(2, 'Jean Pants', '3x', 'Dark Blue', 'Walmart', 2013, 49733883),
(3, 'Sweat Pants', '4x', 'White, Gray, & Black', 'Dick\'s Sporting Goods', 1990, 49942368),
(1, 'Suit Pants', '1x', 'Dark Blue', 'Burlington\'s', 2014, 99256662);

-- --------------------------------------------------------

--
-- Table structure for table `shirts`
--

CREATE TABLE `shirts` (
  `ID` int(1) DEFAULT NULL,
  `Item` varchar(11) DEFAULT NULL,
  `Quantity` varchar(2) DEFAULT NULL,
  `Item Description` varchar(13) DEFAULT NULL,
  `Purchase Location` varchar(21) DEFAULT NULL,
  `Release Year` int(4) DEFAULT NULL,
  `Bar Code Number` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shirts`
--

INSERT INTO `shirts` (`ID`, `Item`, `Quantity`, `Item Description`, `Purchase Location`, `Release Year`, `Bar Code Number`) VALUES
(1, 'Red Shirts', '4x', 'Red', 'Walmart', 1998, 22428384),
(2, 'Blue Shirts', '3x', 'Blue', 'Walmart', 1965, 22939955),
(5, 'Suit Jacket', '1x', 'Dark Blue', 'Burlington\'s', 2001, 24252673),
(6, 'Sweater', '3x', 'Gray', 'Dick\'s Sporting Goods', 1985, 34346569),
(4, 'Tank Top', '2x', 'Black & White', 'Jet.com', 1930, 35758863),
(3, 'Jackets', '5x', 'Black & White', 'Jet.com', 1949, 72382686);

-- --------------------------------------------------------

--
-- Table structure for table `shorts`
--

CREATE TABLE `shorts` (
  `ID` int(1) DEFAULT NULL,
  `Item` varchar(17) DEFAULT NULL,
  `Quantity` varchar(2) DEFAULT NULL,
  `Item Description` varchar(13) DEFAULT NULL,
  `Purchase Location` varchar(12) DEFAULT NULL,
  `Release Year` int(4) DEFAULT NULL,
  `Bar Code Number` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shorts`
--

INSERT INTO `shorts` (`ID`, `Item`, `Quantity`, `Item Description`, `Purchase Location`, `Release Year`, `Bar Code Number`) VALUES
(3, 'Basketball Shorts', '4x', 'Black & White', 'Walmart', 2006, 43253639),
(4, 'Swim Trunks', '1x', 'Black', 'Quiksilver', 2008, 53892597),
(1, 'Plaid Shorts', '3x', 'White & Gray', 'Burlington\'s', 2003, 77973768),
(2, 'Cargo Shorts', '2x', 'Black', 'Target', 2004, 83739295);

-- --------------------------------------------------------

--
-- Table structure for table `utility`
--

CREATE TABLE `utility` (
  `ID` int(1) DEFAULT NULL,
  `Item` varchar(10) DEFAULT NULL,
  `Quantity` varchar(3) DEFAULT NULL,
  `Item Description` varchar(11) DEFAULT NULL,
  `Purchase Location` varchar(10) DEFAULT NULL,
  `Release Year` int(4) DEFAULT NULL,
  `Bar Code Number` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `utility`
--

INSERT INTO `utility` (`ID`, `Item`, `Quantity`, `Item Description`, `Purchase Location`, `Release Year`, `Bar Code Number`) VALUES
(2, 'Hangers', '30x', 'Transparent', 'Target', 2011, 25737598),
(4, 'Pliers', '1x', 'Green', 'Walmart', 2000, 82389586),
(3, 'Ruler', '1x', 'Light Brown', 'Target', 2012, 85792654),
(1, 'Flashlight', '1x', 'Black', 'Craigslist', 2013, 99728794);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `electronics`
--
ALTER TABLE `electronics`
  ADD PRIMARY KEY (`Bar Code Number`),
  ADD UNIQUE KEY `Item` (`Item`);

--
-- Indexes for table `footwear`
--
ALTER TABLE `footwear`
  ADD PRIMARY KEY (`Bar Code Number`),
  ADD UNIQUE KEY `Item` (`Item`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`Bar Code Number`),
  ADD UNIQUE KEY `Item` (`Item`);

--
-- Indexes for table `pants`
--
ALTER TABLE `pants`
  ADD PRIMARY KEY (`Bar Code Number`),
  ADD UNIQUE KEY `Item` (`Item`);

--
-- Indexes for table `shirts`
--
ALTER TABLE `shirts`
  ADD PRIMARY KEY (`Bar Code Number`),
  ADD UNIQUE KEY `Item` (`Item`);

--
-- Indexes for table `shorts`
--
ALTER TABLE `shorts`
  ADD PRIMARY KEY (`Bar Code Number`) USING BTREE,
  ADD UNIQUE KEY `Item` (`Item`) USING BTREE;

--
-- Indexes for table `utility`
--
ALTER TABLE `utility`
  ADD PRIMARY KEY (`Bar Code Number`),
  ADD UNIQUE KEY `Item` (`Item`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `electronics`
--
ALTER TABLE `electronics`
  ADD CONSTRAINT `electronics_ibfk_1` FOREIGN KEY (`Bar Code Number`) REFERENCES `inventory` (`Bar Code Number`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `footwear`
--
ALTER TABLE `footwear`
  ADD CONSTRAINT `footwear_ibfk_1` FOREIGN KEY (`Bar Code Number`) REFERENCES `inventory` (`Bar Code Number`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pants`
--
ALTER TABLE `pants`
  ADD CONSTRAINT `pants_ibfk_1` FOREIGN KEY (`Bar Code Number`) REFERENCES `inventory` (`Bar Code Number`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `shirts`
--
ALTER TABLE `shirts`
  ADD CONSTRAINT `shirts_ibfk_1` FOREIGN KEY (`Bar Code Number`) REFERENCES `inventory` (`Bar Code Number`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `shorts`
--
ALTER TABLE `shorts`
  ADD CONSTRAINT `shorts_ibfk_1` FOREIGN KEY (`Bar Code Number`) REFERENCES `inventory` (`Bar Code Number`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `utility`
--
ALTER TABLE `utility`
  ADD CONSTRAINT `utility_ibfk_1` FOREIGN KEY (`Bar Code Number`) REFERENCES `inventory` (`Bar Code Number`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
