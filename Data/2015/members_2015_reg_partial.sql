-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Mar 01, 2015 at 07:39 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `myDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Members`
--

CREATE TABLE `Members` (
`id` int(6) unsigned NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` bigint(10) NOT NULL,
  `button_status` tinyint(1) NOT NULL DEFAULT '0',
  `score` int(6) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=656 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Members`
--

INSERT INTO `Members` (`id`, `firstname`, `lastname`, `email`, `mobile`, `button_status`, `score`) VALUES
(4, 'firstname', 'lastname', 'email', 0, 1, 0),
(12, 'Prachi', 'Singh', '', 0, 1, 0),
(123, 'Jyoti', 'Kumari', 'jyotirai439@gmail.com', 7062831816, 1, 0),
(213, 'Aishwarya', 'Smriti', '', 9654156140, 1, 0),
(234, 'Mayank', 'Sharan', '', 9560505791, 1, 0),
(324, 'Shubendu', '', '', 9555910305, 1, 0),
(342, 'Shubham', '', '', 9873327929, 1, 0),
(432, 'Akshit', '', '', 8527505197, 1, 0),
(434, 'Shaina', 'Agwan', '', 8952863201, 1, 0),
(435, '', '', '', 0, 1, 0),
(453, 'Mukund', '', '', 9971743559, 1, 0),
(455, 'aayan', '', '', 9971812278, 1, 0),
(534, '', '', '', 0, 1, 0),
(557, 'pratyush', 'goel', 'ch1130098@iitd.acin', 8860890997, 1, 0),
(654, '', '', '', 0, 1, 0),
(655, 'firstname', 'lastname', 'email', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Members`
--
ALTER TABLE `Members`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Members`
--
ALTER TABLE `Members`
MODIFY `id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=656;