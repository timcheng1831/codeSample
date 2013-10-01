-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2013 at 09:14 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `data`
--
CREATE DATABASE IF NOT EXISTS `data` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `data`;

-- --------------------------------------------------------

--
-- Table structure for table `daily_expense`
--

CREATE TABLE IF NOT EXISTS `daily_expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `daily_expense_types_id` int(11) NOT NULL,
  `date_submiited` datetime DEFAULT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_expense_types`
--

CREATE TABLE IF NOT EXISTS `daily_expense_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `active` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `active`) VALUES
(1, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(2, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(3, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(4, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(5, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(6, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(7, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(8, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(9, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(10, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(11, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(12, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(13, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(14, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(15, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(16, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(17, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(18, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(19, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(20, 'tian', 'cheng', 'gry260@berkeley.edu', '1'),
(21, 'tian', 'cheng', 'gry260@berkeley.edu', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
