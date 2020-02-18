-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2020 at 03:25 PM
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
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `email`) VALUES
(1, 'awdawdaw', '$2y$10$BeGklG9BmvkmTuT27vUFfOsPdECt2oPTDKK5Wtp7BA5J7oELZQcje', 'alexjay97@g.cpo'),
(2, 'dawdw', '$2y$10$njserPhN7KlY.6mE7LsAyOoiPtG8sMiEKnN9cFnycCXU11/1SRr32', 'dad@g.com'),
(3, 'awdawdaw', '$2y$10$DBsuhbBp5oysbkZEaEyBHesR909aV9UbVHOIpdMPpTmJsdMP43d2e', 'dwdd2@g.com'),
(4, 'high', '$2y$10$sEH6InAVRonabbj7AFWCT.w8j1zvAlwvaGURpPojBDw5MpczMSg1q', 'high@gmail.com'),
(5, 'jaja', '$2y$10$1Srewo67yNm0/PVr21Ne5.MyIR/k64p/6SOPuLg3nqHxt253Evj06', 'awdawd@g.com'),
(6, 'ssdsdsa', '$2y$10$3wn5c/J2hnKkvJC801pgRu8D39detKXf6fNHG8rAjOcG5dbC3mvCG', 'adwawd@g'),
(7, 'ssdsdssssss', '$2y$10$ZDxajClcMN9r9EGX0zxqD.V4g9R85wf.klZiWfn/7E4XAxY3qFDo6', 'sss'),
(8, 'dddd', '$2y$10$igbQZpzXREmSukk2iUBw/.SJbuwspEu.xwrW/xbHal7GxPj6qfaCS', 'sdsdsdsd'),
(9, 'swswsw', '$2y$10$XTqfDsAODCky8dhxWgWqnenpRO/rr757eWzIw7FgJx6YB/FYkmY3S', 'dawdawdawd'),
(10, 'ggfgf', '$2y$10$UrLxnVhFN59701ImHW1xaupPd0LLMD1yE8EoqdCmyGGudmhrthwzu', 'dwadawd'),
(11, 'ako', '$2y$10$wcmHJhYl999BCmU8ZvYrHOfgeA0OXh1sW/5Bz4GBdn7i6U7/PXIM.', 'daddwawd'),
(12, 'kkjjdjsd', '$2y$10$EMXx9U8sEw75oRlCH0TMkuD5OQsTHeesBf6tnA7LlGWLj8cX8.g0e', 'adw@d'),
(13, 'gaga', '$2y$10$OXBeA3vI/.KQHl2jGNtoJOc4HlQF5mi43dRFI0ojoxvOKbyiA21D.', 'afawf'),
(14, 'hasha', '$2y$10$E9zXQ/rnTFdNsZln2E2eLeJvq6raxBGeYX8Qfzgk4iGgvQ5XRqL0q', 'adawdwadwadawddf'),
(15, 'aerty', '$2y$10$bdGRddb.SoqCFDjSB2L6weRdAPeduCl.YlUH0Cji7KE1m2gl.o8Gq', 'dawdaw'),
(16, 'garawe', '$2y$10$CxGMMLTvvvkXxs9TAwXkXOnfynYeksB2COzwc9xCcbD4ndkPIbY1m', 'addawd'),
(17, 'hyt', '$2y$10$iQbGbZ61WL9wv8I7K4fhQO2G626GYtbO6UrI94ARZ1QEtujKCBvxC', 'dwd'),
(18, 'jsaaas', '$2y$10$vprsRcMUwnj2v/0lY0oToO/.hn5swgMtYr0AgSPTsbOSht78w0NBm', 'ddfwedw'),
(19, 'bang', '$2y$10$Id1kFkwxA5/2acBY.mAO/OCqjvzWyimUlT9V6QyrtTenqMOmaDXMe', 'asdadwfwefef@ss.net'),
(20, '$quey =\"drop tb_users\";', '$2y$10$Ji/D8Ap1VVOkYNdh6c7CY.daRMfjMrf2TOioojfqJHDYJTDGxINqe', 'cash@j.com'),
(21, '\';DROP TABLE tbl_users;-- ', '$2y$10$8OpGcjqVLCG9ImDMdp9EBONejGzmXqK38MJ80JzHNMvw.mnIN4cgO', 'wdad@g.com'),
(22, '\';DROP TABLE tbl_users;-- \'', '$2y$10$WlmMp269EupdWzS0PGdb4Op/W58vSaQT4/nWOTKv1t8vPNRGGvpUq', 'kakaka@g.com'),
(23, '\';DROP TABLE tbl_users; -- ', '$2y$10$mSZxnsioaENfgoV5HIzhoeNW.jHaJeUQQyT9Dw/jXv6z.4/vcEVXS', 'daffsg@g.com'),
(24, '\'; DROP TABLE tbl_users; -- ', '$2y$10$l.f2RxVMJwVE6Vb8AjiX7Op/tz4438v1dgA.mB9D/6KSNmFEGoRlW', 'frftuip@g.com');

--
-- Indexes for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
