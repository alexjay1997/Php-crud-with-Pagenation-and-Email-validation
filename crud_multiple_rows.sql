-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2020 at 05:16 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_multiple_rows`
--

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `role_id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL,
  `salary` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`role_id`, `role`, `salary`) VALUES
(1, 'manager', 25000),
(2, 'staff', 13000),
(3, 'Janitor', 8000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `email`, `role`) VALUES
(25, 'John', '$2y$10$Acbh7P9fADVXl6KyW50SNOb7.UTT7vhyloa92OOGNZnoNq9rKSNeS', 'john@g.com', 1),
(27, 'James', '$2y$10$5ueyxV3NgW39IRWSU9sHseSDmSy3UbnFxnd3zx5WFdLL5zG2OXDCK', 'james@gmail.com', 2),
(29, 'Anna', '$2y$10$eSp1qvONTagbDGIAU5A6M.3TEmrJTUKsKcbnUAQ7aDcJgSBTBkvRO', 'anna@g.com', 1),
(30, 'josh', '$2y$10$ma23YSeP2FbA293EB5uaAeHQB4C1baulO2hVqEQF6poykmFaZZoVe', 'josh@g.com', 2),
(31, 'max', '$2y$10$YGt94uWz5lOez0p.udGpkOc3Qc.qvxO9D9wOtZ/VlvsOAiPhdi1vO', 'max@gmail.com', 3),
(32, 'johnny', '$2y$10$G5/kwHlxoD5rZg7LjXkHLOc8zjWqE2Fwtkz1sOvoc576Ch9/hBwp.', 'johnny@gmail.com', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
