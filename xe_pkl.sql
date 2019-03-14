-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2019 at 04:28 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xe_pkl`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(1, 'HONDA'),
(2, 'Kawasaki');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(13) DEFAULT NULL,
  `made_in` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `capacity` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `model_year` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(100) DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `made_in`, `capacity`, `color`, `created_at`, `model_year`, `location`, `type`, `avatar`, `brand`, `content`) VALUES
(4, 'HONDA SH 150i 2016', 80000000, 'Vietnam', '150cc', 'red', '2019-02-08', '2016', 'Đống Đa , Hà Nội', 2, '../imager/dat-bien-so-xe-pkl-28704-1451232869-56800e65bee92.jpeg', 2, NULL),
(5, 'dfg', 12, 'sd', 'ds', 'sd', NULL, 'sd', 'sd', 1, '../imager/4-1.jpg', 1, 'sd'),
(29, 'thánh', 2232, 'fsd', 'sdf', 'dsf', '2019-02-24', 'dsf', 'dsf', 2, '../imager/dat-bien-so-xe-pkl-28704-1451232869-56800e65bee92.jpeg', 1, 'fds'),
(50, '1233', 12, '', '', '', '2019-03-09', '', '', 0, '../imager/4-1.jpg', 0, ''),
(51, '12', 12, '12', '1212', '21', '2019-03-09', '12', '12', 1, '../imager/4-1.jpg', 1, '21'),
(52, 'tÃªn', 120000, 'noi sáº£n xuáº¥t', 'phÃ¢n khÃ´i', 'mÃ u', '2019-03-10', 'model year', 'Äáº¡i chá»', 1, '../imager/4-1.jpg', 1, 'ná»i dung'),
(53, 'thÃ¡nh', 12, '12', '21', '12', '2019-03-10', '21', '21', 1, '../imager/4-1.jpg', 1, '12'),
(56, 'hÃÂÃÂÃÂ', 12, 'fa', 'sdf', 'ÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ¡d', '2019-03-12', 'fsda', 'fasd', 1, '../imager/1518911051875.jpg', 1, 'fds');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'Naked bike'),
(2, 'Sport bike'),
(10, 'dfdffddsf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` int(1) DEFAULT NULL,
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `permissions`, `avatar`) VALUES
(1, 'thanh', 'pnthanh22121999@gmail.com', '123456', 1, '../imager_user/Deodar_Cedar_(Cedrus_deodara)_(3502433476).jpg'),
(2, 'link', 'admin@gmail.com', '123456', 1, '../imager_user/1518911050787.jpg'),
(3, 'employ', 'sinhsongtu55@gmail.com', '123456', 0, '../imager/1518927039108.jpg'),
(4, 'thanh phan Ädf', 'pnthanh22121999@gmail.com', '1212', 0, '../imager/../imager/1518911051875.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
