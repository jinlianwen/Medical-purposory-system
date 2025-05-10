-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2022 at 09:26 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpleinvoicephp`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoice_order`
--

CREATE TABLE `invoice_order` (
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_receiver_name` varchar(255) NOT NULL,
  `order_receiver_address` varchar(255) NOT NULL,
  `order_total_before_tax` varchar(255) NOT NULL,
  `order_total_tax` varchar(255) NOT NULL,
  `order_tax_per` varchar(255) NOT NULL,
  `order_total_after_tax` varchar(255) NOT NULL,
  `order_amount_paid` varchar(255) NOT NULL,
  `order_total_amount_due` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `invoice_order`
--

INSERT INTO `invoice_order` (`user_id`, `order_id`, `order_receiver_name`, `order_receiver_address`, `order_total_before_tax`, `order_total_tax`, `order_tax_per`, `order_total_after_tax`, `order_amount_paid`, `order_total_amount_due`, `order_date`, `note`) VALUES
(1, 1, 'Ragu', 'Nalroad', '144', '1.44', '1', '145.44', '1', '144.44', '2022-05-22 09:42:25', 'good'),
(1, 2, 'Empty', 'Melkaraipatti', '672', '0', '', '672', '', '672', '2022-05-22 09:42:59', ''),
(0, 100, 'Thana', 'karur', '', '', '', '', '', 'mkce', '2022-05-22 10:20:20', '160'),
(0, 101, 'Ragu', 'Nalroad', '', '', '', '', '', 'karur', '2022-05-22 10:17:26', '20'),
(1, 102, 'Arun', 'Palani', '2000', '0', '', '2000', '', '2000', '2022-05-22 10:21:57', 'Arun'),
(1, 103, 'rrr', 'rrr', '240', '0', '', '240', '', '240', '2022-05-22 11:35:48', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_order_item`
--

CREATE TABLE `invoice_order_item` (
  `order_id` int(11) NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `order_item_quantity` varchar(255) NOT NULL,
  `order_item_price` varchar(255) NOT NULL,
  `order_item_final_amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `invoice_order_item`
--

INSERT INTO `invoice_order_item` (`order_id`, `item_code`, `item_name`, `order_item_quantity`, `order_item_price`, `order_item_final_amount`) VALUES
(1, '101', 'Ragumedicion', '12', '12', '144'),
(2, '102', 'EmotyMedi', '21', '32', '672'),
(100, '100', 'deplat-2.5 - 20', '10', '16', '160'),
(102, '111', 'Arun', '20', '100', '2000'),
(103, '1000', 'empty', '20', '12', '240'),
(0, '', 'deplat-2.5 - 20', '1', '16', '16');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_user`
--

CREATE TABLE `invoice_user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `invoice_user`
--

INSERT INTO `invoice_user` (`id`, `email`, `password`, `first_name`, `last_name`, `address`, `mobile`) VALUES
(1, 'demo@demo.com', 'Password@123', 'Demo', 'Account', 'demo address', '7412580000');

-- --------------------------------------------------------

--
-- Table structure for table `own`
--

CREATE TABLE `own` (
  `order_id` int(11) NOT NULL,
  `item_code` int(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `order_item_quantity` int(255) NOT NULL,
  `order_item_price` int(255) NOT NULL,
  `order_item_final_amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `own`
--

INSERT INTO `own` (`order_id`, `item_code`, `item_name`, `order_item_quantity`, `order_item_price`, `order_item_final_amount`) VALUES
(1, 0, '1', 16, 16, 103),
(101, 102, 'deplat-2.5 - 20', 1, 16, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoice_order`
--
ALTER TABLE `invoice_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `invoice_user`
--
ALTER TABLE `invoice_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `own`
--
ALTER TABLE `own`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoice_order`
--
ALTER TABLE `invoice_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `invoice_user`
--
ALTER TABLE `invoice_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
