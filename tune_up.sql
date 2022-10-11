-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2019 at 10:35 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tune_up`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Rates` int(3) NOT NULL,
  `Time Period` int(2) NOT NULL,
  `Approval_Art` tinyint(1) NOT NULL,
  `Approval_Song` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `album_table`
--

CREATE TABLE `album_table` (
  `Album_Name` varchar(14) NOT NULL,
  `Songs` int(2) NOT NULL,
  `Artist_Name` varchar(20) NOT NULL,
  `Total_Duration` time NOT NULL,
  `Album_ID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `artist_table`
--

CREATE TABLE `artist_table` (
  `User_ID` varchar(15) NOT NULL,
  `Artist_Name` varchar(20) NOT NULL,
  `Songs_Uploaded` int(3) NOT NULL,
  `Artitst_ID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `band _table`
--

CREATE TABLE `band _table` (
  `Band Name` varchar(18) NOT NULL,
  `Members` int(2) NOT NULL,
  `User_ID` varchar(15) NOT NULL,
  `Band_ID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback table`
--

CREATE TABLE `feedback table` (
  `Feedback_No` int(12) NOT NULL,
  `Feedback` varchar(70) NOT NULL,
  `Ratings` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `genre_table`
--

CREATE TABLE `genre_table` (
  `Genre_Name` varchar(10) NOT NULL,
  `No_Artist` int(3) NOT NULL,
  `No_Songs` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `song_detail`
--

CREATE TABLE `song_detail` (
  `Song_Name` varchar(15) NOT NULL,
  `Artist_Name` varchar(18) NOT NULL,
  `Song_Duration` time NOT NULL,
  `Album` tinyint(1) NOT NULL,
  `Song_ID` varchar(15) NOT NULL,
  `Genre_S` varchar(12) NOT NULL,
  `Artist_ID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `User_ID` varchar(15) NOT NULL,
  `Email_ID` varchar(25) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Artist` varchar(18) NOT NULL,
  `Prime_User` tinyint(1) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `From` date NOT NULL,
  `To` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album_table`
--
ALTER TABLE `album_table`
  ADD PRIMARY KEY (`Album_Name`,`Artist_Name`,`Album_ID`);

--
-- Indexes for table `artist_table`
--
ALTER TABLE `artist_table`
  ADD PRIMARY KEY (`User_ID`,`Artist_Name`,`Artitst_ID`),
  ADD UNIQUE KEY `Artist_Name` (`Artist_Name`),
  ADD UNIQUE KEY `Artitst_ID` (`Artitst_ID`);

--
-- Indexes for table `band _table`
--
ALTER TABLE `band _table`
  ADD PRIMARY KEY (`User_ID`,`Band_ID`);

--
-- Indexes for table `feedback table`
--
ALTER TABLE `feedback table`
  ADD PRIMARY KEY (`Feedback_No`),
  ADD UNIQUE KEY `Feedback` (`Feedback`),
  ADD UNIQUE KEY `Ratings` (`Ratings`);

--
-- Indexes for table `genre_table`
--
ALTER TABLE `genre_table`
  ADD PRIMARY KEY (`Genre_Name`);

--
-- Indexes for table `song_detail`
--
ALTER TABLE `song_detail`
  ADD PRIMARY KEY (`Song_ID`,`Artist_ID`),
  ADD UNIQUE KEY `Artist_ID` (`Artist_ID`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`User_ID`,`Email_ID`,`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
