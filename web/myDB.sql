-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 25, 2015 at 11:45 PM
-- Server version: 5.6.23
-- PHP Version: 5.5.9-1ubuntu4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `myDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Members`
--

CREATE TABLE IF NOT EXISTS `Members` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` bigint(10) NOT NULL,
  `button_status` tinyint(1) NOT NULL DEFAULT '0',
  `Score` int(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Members`
--

INSERT INTO `Members` (`id`, `firstname`, `lastname`, `email`, `mobile`, `button_status`, `Score`) VALUES
(0, 'Shivanshu', 'Gupta', 'shivanshugupta1995@gmail.com', 9716025857, 1, NULL),
(1, 'Shivanshu', 'Gupta', 'icedwingsss@gmail.com', 0, 0, NULL),
(3, 'Haroun', 'Habeeb', 'haroun@gmail.com', 1234567890, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Questions`
--

CREATE TABLE IF NOT EXISTS `Questions` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `A` text NOT NULL,
  `B` text NOT NULL,
  `C` text NOT NULL,
  `D` text NOT NULL,
  `correct_option` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Questions`
--

INSERT INTO `Questions` (`id`, `question`, `A`, `B`, `C`, `D`, `correct_option`) VALUES
(1, '2=2', 'no', 'nah', 'maybe', 'yes!!!!', 'D'),
(2, '2=3', 'what??', 'yes!!', 'dude please!!', 'why am i here??', 'C');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
