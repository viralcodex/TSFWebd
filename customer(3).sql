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
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_email` varchar(50) DEFAULT NULL,
  `curr_bal` double NOT NULL,
  `acc_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_email`, `curr_bal`, `acc_date`) VALUES
(1, 'Aman Maurya', 'a@gmail.com', 856, '2020-01-01'),
(2, 'Adhyan Gupta', 'b@gmail.com', 4700, '2020-02-01'),
(3, 'Aviral Shukla', 'c@gmail.com', 1544, '2020-03-01'),
(4, 'Devesh Srivastav', 'd@gmail.com', 2900, '2020-04-01'),
(5, 'Bharat Singh', 'e@gmail.com', 5000, '2020-05-01'),
(6, 'Anushka Shukla', 'f@gmail.com', 6000, '2020-06-01'),
(7, 'Mathew Richards', 'g@gmail.com', 7000, '2020-07-01'),
(8, 'Erwin Smith', 'h@gmail.com', 8000, '2020-08-01'),
(9, 'Mark Boulder', 'i@gmail.com', 9000, '2020-09-01'),
(10, 'Louise Wits', 'j@gmail.com', 10000, '2020-10-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `cust_email` (`cust_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
