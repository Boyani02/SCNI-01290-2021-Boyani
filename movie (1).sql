-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 08:52 PM
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
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `audittrail`
--

CREATE TABLE `audittrail` (
  `auditid` int(11) NOT NULL,
  `action` varchar(50) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `dateaction` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tablename` varchar(100) DEFAULT NULL,
  `recordid` int(11) DEFAULT NULL,
  `oldvalue` varchar(1000) DEFAULT NULL,
  `newvalue` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE `cast` (
  `castid` int(11) NOT NULL,
  `movieid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  `rolename` varchar(50) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `starid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `directorid` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `mugshot` varchar(1000) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `addedby` int(10) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genreid` int(11) NOT NULL,
  `genrename` varchar(50) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted` tinyint(1) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languageid` int(11) NOT NULL,
  `languagename` varchar(50) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `mediaid` int(11) NOT NULL,
  `medianame` varchar(50) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `moviegenres`
--

CREATE TABLE `moviegenres` (
  `movieid` int(11) NOT NULL,
  `genreid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted` tinyint(1) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movielanguages`
--

CREATE TABLE `movielanguages` (
  `movieid` int(11) NOT NULL,
  `languageid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `moviemedia`
--

CREATE TABLE `moviemedia` (
  `movieid` int(11) NOT NULL,
  `mediaid` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movieproductioncompanies`
--

CREATE TABLE `movieproductioncompanies` (
  `movieid` int(11) NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted` tinyint(1) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movierating`
--

CREATE TABLE `movierating` (
  `movieid` int(11) NOT NULL,
  `ratingid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `datedadded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted` tinyint(1) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movieresolution`
--

CREATE TABLE `movieresolution` (
  `movieid` int(11) NOT NULL,
  `resolutionid` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted` tinyint(1) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movieroles`
--

CREATE TABLE `movieroles` (
  `roleid` int(11) NOT NULL,
  `rolename` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movieid` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `releasedate` date DEFAULT NULL,
  `synopsis` varchar(2000) DEFAULT NULL,
  `poster` varchar(1000) DEFAULT NULL,
  `trailer` varchar(1000) DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `directorid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `moviestars`
--

CREATE TABLE `moviestars` (
  `starid` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `nationalityid` int(11) DEFAULT NULL,
  `alist` tinyint(1) DEFAULT NULL,
  `mugshot` varchar(2000) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `nationalityid` int(11) NOT NULL,
  `nationalityname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE `objects` (
  `objectid` int(11) NOT NULL,
  `objectname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `userid` int(11) NOT NULL,
  `objectid` int(11) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `addedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productioncompanies`
--

CREATE TABLE `productioncompanies` (
  `companyid` int(11) NOT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted` tinyint(1) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `ratingid` int(11) NOT NULL,
  `value` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resolution`
--

CREATE TABLE `resolution` (
  `resolutionid` int(11) NOT NULL,
  `resolutionname` varchar(50) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `systemadmin` tinyint(1) DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audittrail`
--
ALTER TABLE `audittrail`
  ADD PRIMARY KEY (`auditid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `cast`
--
ALTER TABLE `cast`
  ADD PRIMARY KEY (`castid`),
  ADD KEY `movieid` (`movieid`),
  ADD KEY `deletedby` (`deletedby`),
  ADD KEY `starid` (`starid`),
  ADD KEY `roleid` (`roleid`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`directorid`),
  ADD KEY `deletedby` (`deletedby`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genreid`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languageid`),
  ADD KEY `deletedby` (`deletedby`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`mediaid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `moviegenres`
--
ALTER TABLE `moviegenres`
  ADD PRIMARY KEY (`movieid`),
  ADD KEY `genreid` (`genreid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `movielanguages`
--
ALTER TABLE `movielanguages`
  ADD PRIMARY KEY (`movieid`),
  ADD KEY `languageid` (`languageid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `moviemedia`
--
ALTER TABLE `moviemedia`
  ADD PRIMARY KEY (`movieid`),
  ADD KEY `mediaid` (`mediaid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `movieproductioncompanies`
--
ALTER TABLE `movieproductioncompanies`
  ADD PRIMARY KEY (`movieid`),
  ADD KEY `companyid` (`companyid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `movierating`
--
ALTER TABLE `movierating`
  ADD PRIMARY KEY (`movieid`),
  ADD KEY `ratingid` (`ratingid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `movieresolution`
--
ALTER TABLE `movieresolution`
  ADD PRIMARY KEY (`movieid`),
  ADD KEY `resolutionid` (`resolutionid`);

--
-- Indexes for table `movieroles`
--
ALTER TABLE `movieroles`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieid`);

--
-- Indexes for table `moviestars`
--
ALTER TABLE `moviestars`
  ADD PRIMARY KEY (`starid`),
  ADD KEY `nationalityid` (`nationalityid`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`nationalityid`);

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`objectid`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `objectid` (`objectid`);

--
-- Indexes for table `productioncompanies`
--
ALTER TABLE `productioncompanies`
  ADD PRIMARY KEY (`companyid`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`ratingid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `resolution`
--
ALTER TABLE `resolution`
  ADD PRIMARY KEY (`resolutionid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audittrail`
--
ALTER TABLE `audittrail`
  MODIFY `auditid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cast`
--
ALTER TABLE `cast`
  MODIFY `castid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `directorid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `genreid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languageid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `mediaid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `moviegenres`
--
ALTER TABLE `moviegenres`
  MODIFY `movieid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movielanguages`
--
ALTER TABLE `movielanguages`
  MODIFY `movieid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `moviemedia`
--
ALTER TABLE `moviemedia`
  MODIFY `movieid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movieproductioncompanies`
--
ALTER TABLE `movieproductioncompanies`
  MODIFY `movieid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movierating`
--
ALTER TABLE `movierating`
  MODIFY `movieid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movieresolution`
--
ALTER TABLE `movieresolution`
  MODIFY `movieid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movieroles`
--
ALTER TABLE `movieroles`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movieid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `moviestars`
--
ALTER TABLE `moviestars`
  MODIFY `starid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `nationalityid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `objects`
--
ALTER TABLE `objects`
  MODIFY `objectid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productioncompanies`
--
ALTER TABLE `productioncompanies`
  MODIFY `companyid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `ratingid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resolution`
--
ALTER TABLE `resolution`
  MODIFY `resolutionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audittrail`
--
ALTER TABLE `audittrail`
  ADD CONSTRAINT `audittrail_ibfk_1` FOREIGN KEY (`auditid`) REFERENCES `privileges` (`userid`),
  ADD CONSTRAINT `audittrail_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `cast`
--
ALTER TABLE `cast`
  ADD CONSTRAINT `cast_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `cast_ibfk_2` FOREIGN KEY (`deletedby`) REFERENCES `genres` (`genreid`),
  ADD CONSTRAINT `cast_ibfk_3` FOREIGN KEY (`starid`) REFERENCES `moviestars` (`starid`),
  ADD CONSTRAINT `cast_ibfk_4` FOREIGN KEY (`roleid`) REFERENCES `movieroles` (`roleid`);

--
-- Constraints for table `directors`
--
ALTER TABLE `directors`
  ADD CONSTRAINT `directors_ibfk_1` FOREIGN KEY (`deletedby`) REFERENCES `cast` (`deletedby`),
  ADD CONSTRAINT `directors_ibfk_2` FOREIGN KEY (`directorid`) REFERENCES `nationality` (`nationalityid`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`deletedby`) REFERENCES `genres` (`genreid`),
  ADD CONSTRAINT `languages_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`mediaid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `moviegenres`
--
ALTER TABLE `moviegenres`
  ADD CONSTRAINT `moviegenres_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `moviegenres_ibfk_2` FOREIGN KEY (`genreid`) REFERENCES `genres` (`genreid`),
  ADD CONSTRAINT `moviegenres_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `movielanguages`
--
ALTER TABLE `movielanguages`
  ADD CONSTRAINT `movielanguages_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `movielanguages_ibfk_2` FOREIGN KEY (`languageid`) REFERENCES `languages` (`languageid`),
  ADD CONSTRAINT `movielanguages_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `moviemedia`
--
ALTER TABLE `moviemedia`
  ADD CONSTRAINT `moviemedia_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `moviemedia_ibfk_2` FOREIGN KEY (`mediaid`) REFERENCES `media` (`mediaid`),
  ADD CONSTRAINT `moviemedia_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `movieproductioncompanies`
--
ALTER TABLE `movieproductioncompanies`
  ADD CONSTRAINT `movieproductioncompanies_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `movieproductioncompanies_ibfk_2` FOREIGN KEY (`companyid`) REFERENCES `productioncompanies` (`companyid`),
  ADD CONSTRAINT `movieproductioncompanies_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `movierating`
--
ALTER TABLE `movierating`
  ADD CONSTRAINT `movierating_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `movierating_ibfk_2` FOREIGN KEY (`ratingid`) REFERENCES `ratings` (`ratingid`),
  ADD CONSTRAINT `movierating_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `movieresolution`
--
ALTER TABLE `movieresolution`
  ADD CONSTRAINT `movieresolution_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `movieresolution_ibfk_2` FOREIGN KEY (`resolutionid`) REFERENCES `resolution` (`resolutionid`);

--
-- Constraints for table `movieroles`
--
ALTER TABLE `movieroles`
  ADD CONSTRAINT `movieroles_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `moviestars` (`starid`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `directors` (`directorid`),
  ADD CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`movieid`) REFERENCES `genres` (`genreid`),
  ADD CONSTRAINT `movies_ibfk_3` FOREIGN KEY (`movieid`) REFERENCES `languages` (`languageid`),
  ADD CONSTRAINT `movies_ibfk_4` FOREIGN KEY (`movieid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `moviestars`
--
ALTER TABLE `moviestars`
  ADD CONSTRAINT `moviestars_ibfk_1` FOREIGN KEY (`nationalityid`) REFERENCES `nationality` (`nationalityid`),
  ADD CONSTRAINT `moviestars_ibfk_2` FOREIGN KEY (`starid`) REFERENCES `movies` (`movieid`);

--
-- Constraints for table `privileges`
--
ALTER TABLE `privileges`
  ADD CONSTRAINT `privileges_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `privileges_ibfk_2` FOREIGN KEY (`objectid`) REFERENCES `objects` (`objectid`);

--
-- Constraints for table `productioncompanies`
--
ALTER TABLE `productioncompanies`
  ADD CONSTRAINT `productioncompanies_ibfk_1` FOREIGN KEY (`companyid`) REFERENCES `movies` (`movieid`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`ratingid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `resolution`
--
ALTER TABLE `resolution`
  ADD CONSTRAINT `resolution_ibfk_1` FOREIGN KEY (`resolutionid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `resolution_ibfk_2` FOREIGN KEY (`resolutionid`) REFERENCES `media` (`mediaid`),
  ADD CONSTRAINT `resolution_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `genres` (`genreid`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `objects` (`objectid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
