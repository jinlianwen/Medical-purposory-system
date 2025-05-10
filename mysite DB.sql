-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2022 at 10:28 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysite`
--

-- --------------------------------------------------------

--
-- Table structure for table `consumer`
--

CREATE TABLE `consumer` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consumer`
--

INSERT INTO `consumer` (`userid`, `username`, `email`, `password`) VALUES
(1, 'good', 'nragunath2001@gmail.com', '755f85c2723bb39381c7379a604160d8'),
(2, '18BCS4075', 'nragunath2018@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` int(255) NOT NULL,
  `manu_date` varchar(100) NOT NULL,
  `ex_date` varchar(100) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `Prescription` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`id`, `name`, `price`, `manu_date`, `ex_date`, `shop_name`, `Prescription`, `quantity`) VALUES
(102, 'deplat-2.5', 16, '12/02/2022', '12/02/2024', 'A R Medicine', 'Needed', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `email`, `password`) VALUES
(1, 'dfdfdf', 'dfdf@fgfg', 'c20ad4d76fe97759aa27a0c99bff6710'),
(2, 'ra', 'ra@gmail.com', 'db26ee047a4c86fbd2fba73503feccb6'),
(3, 'rabbani', 'rabbani@gmail', 'c20ad4d76fe97759aa27a0c99bff6710'),
(4, 'd', 'd@gmail', 'c4ca4238a0b923820dcc509a6f75849b'),
(5, 'rabbani1', 'rabbani@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710'),
(6, 'RAGUNATH', 'nragunath2018@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(7, '18BCS4075', 'nragunath2018@gmail.com', '7a90f0d355f53c3d7438f6efda0d74b1'),
(51, 'arunass', 'arunass2003@gmail.com', 'Arunass@2003');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consumer`
--
ALTER TABLE `consumer`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consumer`
--
ALTER TABLE `consumer`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
