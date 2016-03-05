-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Feb 27, 2016 at 12:50 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=409 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Members`
--

INSERT INTO `Members` (`id`, `firstname`, `lastname`, `email`, `mobile`, `button_status`, `score`) VALUES
(101, 'Shubham', 'Garg', '[value-4]', 0, 1, 90),
(102, 'Sampada', 'Bhatnagar', '[value-4]', 0, 1, 110),
(103, 'Himani', 'Goyal', '[value-4]', 0, 1, 0),
(104, 'Narsi', 'Jindal', '[value-4]', 0, 0, 70),
(105, 'Navneet', 'Kaur', '[value-4]', 0, 0, 70),
(106, 'Sonali', 'Goyal', '[value-4]', 0, 1, 0),
(107, 'Prince', '-', '[value-4]', 0, 0, 60),
(108, 'Manoj', 'Rawat', '[value-4]', 0, 0, 110),
(109, 'Navdeep', 'Singh', '[value-4]', 0, 0, 60),
(110, 'Shubham', 'Sagar', '[value-4]', 0, 0, 110),
(111, 'Chetan', 'Junagale', '[value-4]', 0, 0, 80),
(201, 'Diksha', 'Bamboriya', '[value-4]', 0, 0, 60),
(202, 'Twinkle', 'Janajal', '[value-4]', 0, 0, 80),
(203, 'Sahitya', 'Sharma', '[value-4]', 0, 0, 70),
(204, 'Arun', 'Singh', '[value-4]', 0, 1, 0),
(205, 'Sumit', 'Banerjee', '[value-4]', 0, 1, 140),
(206, 'Rishil', 'Antony', '[value-4]', 0, 0, 120),
(207, 'Nidhi', 'Ojha', '[value-4]', 0, 1, 100),
(208, 'Anubhav', 'Thakur', '[value-4]', 0, 1, 90),
(209, 'Saurabh', 'Singh', '[value-4]', 0, 1, 0),
(210, 'Shubham', 'Gupta', '[value-4]', 0, 1, 100),
(211, 'Vivek', 'Rai', '[value-4]', 0, 1, 120),
(212, 'Shubham', 'Kumar', '[value-4]', 0, 1, 80),
(301, 'Tarun', 'Gupta', 'abcd', 0, 1, 50),
(302, 'Madhur', 'Singhal', '[value-4]', 0, 0, 150),
(303, 'Divyansh', 'Shukla', '[value-4]', 0, 0, 140),
(304, 'Ashish', 'Rai', '[value-4]', 0, 1, 100),
(305, 'Kunal', 'Aggarwal', '[value-4]', 0, 1, 60),
(306, 'Kartik', 'Goyal', '[value-4]', 0, 0, 70),
(307, 'Shobhit', 'Jain', '[value-4]', 0, 1, 120),
(308, 'Ayush', 'Gupta', '[value-4]', 0, 1, 140),
(309, 'Rishabh', 'Sikka', '[value-4]', 0, 1, 70),
(310, 'Satvik', 'Narang', '[value-4]', 0, 1, 80),
(401, 'Nikhil', 'Goyal', '[value-4]', 0, 1, 120),
(402, 'Mukund', 'Mundhra', '[value-4]', 0, 1, 130),
(403, 'Manu', 'Mitraan', '[value-4]', 0, 1, 140),
(404, 'Aditya', 'Kumar', '[value-4]', 0, 1, 0),
(405, 'Nimish', 'Goyal', '[value-4]', 0, 0, 130),
(406, 'Suyash', 'Agrawal', '[value-4]', 0, 0, 100),
(407, 'Akshit', 'Tyagi', '[value-4]', 0, 0, 130),
(408, 'Kapil', 'Ahuja', '[value-4]', 0, 0, 140),
(1111, 'Bot', 'Sample', '', 0, 1, 0);

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
MODIFY `id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=409;