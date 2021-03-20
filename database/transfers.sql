-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2021 at 08:38 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id16401102_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `ID` varchar(10) NOT NULL,
  `sender` varchar(100) DEFAULT NULL,
  `receiver` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dates` varchar(22) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`ID`, `sender`, `receiver`, `amount`, `email`, `dates`) VALUES
('575b14fdfb', 'Aviral Shukla', 'Aman Maurya', 12, 'c@gmail.com', '03/21/2021 01:20:39 am'),
('442b8e4e86', 'Aman  Maurya', 'Aman  Maurya', 1100, 'a@gmail.com', '03/20/2021 01:03:24 am'),
('36a7c17f33', 'Aviral Shukla', 'Aman Maurya', 100, 'c@gmail.com', '03/19/2021 11:21:24 pm'),
('b0586d57dd', 'Aviral Shukla', 'Aman Maurya', 12, 'a@xyz.com', '03/21/2021 01:16:09 am'),
('c298d5d094', 'Aviral Shukla', 'Aman Maurya', 12, 'c@gmail.com', '03/21/2021 01:14:07 am'),
('4ffce5f1f6', 'Aviral Shukla', 'Aman Maurya', 1000, 'c@gmail.com', '03/20/2021 02:01:58 am'),
('96df2094c0', 'Devesh Srivastav', 'Adhyan Gupta', 1000, 'e@gmail.com', '03/20/2021 02:03:13 am'),
('c85b1aeda5', 'Aviral Shukla', 'Aman Maurya', 10, 'c@gmail.com', '03/21/2021 12:48:19 am'),
('4c181feb30', 'Aviral Shukla', 'Aman Maurya', 10, 'c@gmail.com', '03/21/2021 01:22:33 am'),
('07d8428b0f', 'Aviral Shukla', 'Aman Maurya', 100, 'c@gmail.com', '03/21/2021 01:34:53 am'),
('912315c310', 'Aman Maurya', 'Adhyan Gupta', 500, 'a@gmail.com', '03/21/2021 01:35:55 am'),
('2c670a16f6', 'Aman Maurya', 'Adhyan Gupta', 500, 'a@gmail.com', '03/21/2021 01:38:24 am'),
('521fa1d502', 'Aman Maurya', 'Adhyan Gupta', 500, 'a@gmail.com', '03/21/2021 01:43:44 am'),
('05e276953e', 'Aviral Shukla', 'Devesh Srivastav', 100, 'c@gmail.com', '03/21/2021 01:47:10 am'),
('e316dade8f', 'Devesh Srivastav', 'Adhyan Gupta', 200, 'd@gmail.com', '03/21/2021 01:47:39 am'),
('5178a3c5ab', 'Aviral Shukla', 'Aman Maurya', 100, 'c@gmail.com', '03/21/2021 01:51:06 am');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`ID`);
ALTER TABLE `transfers` ADD FULLTEXT KEY `sender` (`sender`);
ALTER TABLE `transfers` ADD FULLTEXT KEY `receiver` (`receiver`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
