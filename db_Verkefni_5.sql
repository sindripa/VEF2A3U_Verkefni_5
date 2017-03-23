-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 23, 2017 at 02:02 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.13-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_Verkefni_5`
--

-- --------------------------------------------------------

--
-- Table structure for table `myndir`
--

CREATE TABLE `myndir` (
  `imgID` int(11) NOT NULL,
  `imgFileName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `imgName` varchar(255) DEFAULT NULL,
  `imgDescription` varchar(255) DEFAULT NULL,
  `imgNotandi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myndir`
--

INSERT INTO `myndir` (`imgID`, `imgFileName`, `imgName`, `imgDescription`, `imgNotandi`) VALUES
(1, 'deus_vult.jpg', 'Deus Vult', 'God\'s Will!', 1),
(2, 'pudis.gif', 'Pudis', 'Put dispenser here!', 2),
(3, 'nope.jpg', 'NOPE', 'NOPE!!!', 1),
(4, 'dieded.jpg', 'Dieded', 'Dead < Deader < Deadest < Dieded', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notandi`
--

CREATE TABLE `notandi` (
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notandi`
--

INSERT INTO `notandi` (`userID`, `userName`, `userEmail`) VALUES
(1, 'Sigurður Orri Hjaltason', 'askurinnminn@gmail.com'),
(2, 'Sindri Pálsson', 'sindripa@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `myndir`
--
ALTER TABLE `myndir`
  ADD PRIMARY KEY (`imgID`),
  ADD KEY `notandi` (`imgNotandi`);

--
-- Indexes for table `notandi`
--
ALTER TABLE `notandi`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myndir`
--
ALTER TABLE `myndir`
  MODIFY `imgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `notandi`
--
ALTER TABLE `notandi`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `myndir`
--
ALTER TABLE `myndir`
  ADD CONSTRAINT `myndir_ibfk_1` FOREIGN KEY (`imgNotandi`) REFERENCES `notandi` (`userID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
