-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2026 at 03:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `persona fusions`
--
CREATE DATABASE IF NOT EXISTS `persona fusions` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `persona fusions`;

-- --------------------------------------------------------

--
-- Table structure for table `arcana`
--

DROP TABLE IF EXISTS `arcana`;
CREATE TABLE `arcana` (
  `ID` int(11) NOT NULL,
  `Arcananame` varchar(45) NOT NULL,
  `Hex` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fusion`
--

DROP TABLE IF EXISTS `fusion`;
CREATE TABLE `fusion` (
  `ID` int(11) NOT NULL,
  `FusResult` int(11) NOT NULL,
  `Persona1` int(11) NOT NULL,
  `Persona2` int(11) NOT NULL,
  `Persona3` int(11) DEFAULT NULL,
  `Persona4` int(11) DEFAULT NULL,
  `Persona5` int(11) DEFAULT NULL,
  `Persona6` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona` (
  `ID` int(11) NOT NULL,
  `Level` int(2) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Beschreibung` varchar(255) DEFAULT NULL,
  `fk_arcana` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arcana`
--
ALTER TABLE `arcana`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `fusion`
--
ALTER TABLE `fusion`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_per2` (`Persona2`),
  ADD KEY `fk_per3` (`Persona3`),
  ADD KEY `fk_per4` (`Persona4`),
  ADD KEY `fk_per5` (`Persona5`),
  ADD KEY `fk_per6` (`Persona6`),
  ADD KEY `fk_per1` (`Persona1`),
  ADD KEY `fk_perResult` (`FusResult`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_arcana` (`fk_arcana`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arcana`
--
ALTER TABLE `arcana`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fusion`
--
ALTER TABLE `fusion`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fusion`
--
ALTER TABLE `fusion`
  ADD CONSTRAINT `fk_per1` FOREIGN KEY (`Persona1`) REFERENCES `persona` (`ID`),
  ADD CONSTRAINT `fk_per2` FOREIGN KEY (`Persona2`) REFERENCES `persona` (`ID`),
  ADD CONSTRAINT `fk_per3` FOREIGN KEY (`Persona3`) REFERENCES `persona` (`ID`),
  ADD CONSTRAINT `fk_per4` FOREIGN KEY (`Persona4`) REFERENCES `persona` (`ID`),
  ADD CONSTRAINT `fk_per5` FOREIGN KEY (`Persona5`) REFERENCES `persona` (`ID`),
  ADD CONSTRAINT `fk_per6` FOREIGN KEY (`Persona6`) REFERENCES `persona` (`ID`),
  ADD CONSTRAINT `fk_perResult` FOREIGN KEY (`FusResult`) REFERENCES `persona` (`ID`);

--
-- Constraints for table `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_arcana` FOREIGN KEY (`fk_arcana`) REFERENCES `arcana` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
