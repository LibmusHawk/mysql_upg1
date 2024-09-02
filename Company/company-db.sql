-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2024 at 09:55 AM
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
-- Database: `company-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `companytable`
--

CREATE TABLE `companytable` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `Inname` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `start_year` int(11) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `street_address` varchar(50) DEFAULT NULL,
  `postal_code` varchar(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companytable`
--

INSERT INTO `companytable` (`id`, `fname`, `Inname`, `title`, `start_year`, `phone`, `email`, `street_address`, `postal_code`, `city`) VALUES
(1, 'Kalle', 'Kehittäjä', 'Developer', 2008, '+358 123123', 'kalle@firma.com', 'Devevägen1', '00100', 'Helsinki'),
(2, 'Teppo', 'Testaaja', 'Test engineer', 2009, '+358 312321', 'teppo@firma.com', 'Testitie', '00100', 'Helsinki'),
(3, 'Derek', 'Dirika', 'CEO', 2002, '+358 312322', 'Derek@firma.com', 'chiefstreet', '00100', 'Helsinki'),
(4, 'Sipe', 'Sihteeri', 'Secretary', 2008, '+358 020202', 'sipe@firma.com', 'Gängvägen1', '01510', 'Vanda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companytable`
--
ALTER TABLE `companytable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companytable`
--
ALTER TABLE `companytable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
