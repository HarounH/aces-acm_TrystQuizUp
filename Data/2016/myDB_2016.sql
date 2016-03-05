-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Mar 05, 2016 at 10:45 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=1112 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Members`
--

INSERT INTO `Members` (`id`, `firstname`, `lastname`, `email`, `mobile`, `button_status`, `score`) VALUES
(101, 'Shubham', 'Garg', '[value-4]', 0, 1, 0),
(102, 'Sampada', 'Bhatnagar', '[value-4]', 0, 1, 0),
(103, 'Himani', 'Goyal', '[value-4]', 0, 1, 0),
(104, 'Narsi', 'Jindal', '[value-4]', 0, 1, 0),
(105, 'Navneet', 'Kaur', '[value-4]', 0, 1, 0),
(106, 'Sonali', 'Goyal', '[value-4]', 0, 1, 0),
(107, 'Prince', '-', '[value-4]', 0, 1, 0),
(108, 'Manoj', 'Rawat', '[value-4]', 0, 1, 0),
(109, 'Navdeep', 'Singh', '[value-4]', 0, 1, 0),
(110, 'Shubham', 'Sagar', '[value-4]', 0, 1, 0),
(111, 'Chetan', 'Junagale', '[value-4]', 0, 1, 0),
(201, 'Diksha', 'Bamboriya', '[value-4]', 0, 1, 0),
(202, 'Twinkle', 'Janajal', '[value-4]', 0, 1, 0),
(203, 'Sahitya', 'Sharma', '[value-4]', 0, 1, 0),
(204, 'Arun', 'Singh', '[value-4]', 0, 1, 0),
(205, 'Sumit', 'Banerjee', '[value-4]', 0, 1, 20),
(206, 'Rishil', 'Antony', '[value-4]', 0, 1, 0),
(207, 'Nidhi', 'Ojha', '[value-4]', 0, 1, 0),
(208, 'Anubhav', 'Thakur', '[value-4]', 0, 1, 0),
(209, 'Saurabh', 'Singh', '[value-4]', 0, 1, 0),
(210, 'Shubham', 'Gupta', '[value-4]', 0, 1, 0),
(211, 'Vivek', 'Rai', '[value-4]', 0, 1, 0),
(212, 'Shubham', 'Kumar', '[value-4]', 0, 1, 0),
(301, 'Tarun', 'Gupta', 'abcd', 0, 1, 0),
(302, 'Madhur', 'Singhal', '[value-4]', 0, 1, 0),
(303, 'Divyansh', 'Shukla', '[value-4]', 0, 1, 20),
(304, 'Ashish', 'Rai', '[value-4]', 0, 1, 0),
(305, 'Kunal', 'Aggarwal', '[value-4]', 0, 1, 0),
(306, 'Kartik', 'Goyal', '[value-4]', 0, 1, 0),
(307, 'Shobhit', 'Jain', '[value-4]', 0, 1, 0),
(308, 'Ayush', 'Gupta', '[value-4]', 0, 1, 40),
(309, 'Rishabh', 'Sikka', '[value-4]', 0, 1, 0),
(310, 'Satvik', 'Narang', '[value-4]', 0, 1, 0),
(401, 'Nikhil', 'Goyal', '[value-4]', 0, 1, 0),
(402, 'Mukund', 'Mundhra', '[value-4]', 0, 1, 0),
(403, 'Manu', 'Mitraan', '[value-4]', 0, 0, 80),
(404, 'Aditya', 'Kumar', '[value-4]', 0, 1, 0),
(405, 'Nimish', 'Goyal', '[value-4]', 0, 1, 0),
(406, 'Suyash', 'Agrawal', '[value-4]', 0, 1, 0),
(407, 'Akshit', 'Tyagi', '[value-4]', 0, 1, 0),
(408, 'Kapil', 'Ahuja', '[value-4]', 0, 0, 70),
(1111, 'Bot', 'Sample', '', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Questions`
--

CREATE TABLE `Questions` (
  `ID` int(2) NOT NULL DEFAULT '0',
  `question` varchar(520) DEFAULT NULL,
  `A` varchar(82) DEFAULT NULL,
  `B` varchar(71) DEFAULT NULL,
  `C` varchar(101) DEFAULT NULL,
  `D` varchar(89) DEFAULT NULL,
  `correctans` varchar(1) DEFAULT NULL,
  `current` int(11) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Questions`
--

INSERT INTO `Questions` (`ID`, `question`, `A`, `B`, `C`, `D`, `correctans`, `current`, `points`) VALUES
(1, 'What is the time complexity for sorting an array of length n using the Merge Sort Algorithm?', 'O(n)', 'O(nlogn)', 'O(n*n)', 'O(n/(logn))', 'B', 0, 10),
(2, 'We are given a set of N distinct elements and an unlabeled binary tree with N nodes. In how many ways can we populate the tree with the given set so that it becomes a binary search tree?', 'n!', '1', 'C(n,1)', 'C(2n,n)/(n+1)', 'B', 0, 10),
(3, 'What is the swap space in the disk used for?', 'Storing the super-block.', 'Dumping RAM for hibernate / deep sleep.', 'Saving process data (extending RAM).', 'Storing device drivers.', 'C', 0, 10),
(4, 'A computer system supports 32-bit virtual addresses as well as 32-bit physical addresses. Since the virtual address space is of the same size as the physical address space, the operating system designers decide to get rid of the virtual memory entirely. Which one of the following is true?', 'Efficient implementation of multi-user support is no longer possible', 'The processor cache organization can be made more efficient now', 'Hardware support for memory management is no longer needed', 'CPU scheduling can be made more efficient now', 'C', 0, 10),
(5, 'A process executes the code\n  fork ();\n  fork ();\n  fork ();\nThe total number of child processes created is', '3', '4', '7', '8', 'C', 0, 10),
(6, 'Using a larger block size in a fixed block size file system leads to', 'better disk throughput but poorer disk space utilization', 'better disk throughput and better disk space utilization', 'poorer disk throughput but better disk space utilization', '', 'A', 0, 10),
(7, 'Asymmetric key cryptography is used for all of the following except:', 'Encryption of data', 'Access control', 'Nonrepudiation', 'Steganography', 'D', 0, 10),
(8, 'When a user needs to provide message integrity, what options may be best?', 'Send a digital signature of the message to the recipient', 'Encrypt the message with a symmetric algorithm and send it', 'Encrypt the message with a private key so the recipient can decrypt with the corresponding public key', 'Create a checksum, append it to the message, encrypt the message, then send to recipient.', 'D', 0, 10),
(9, 'ElGamal encryption system is vulnerable to which of the following attacks?', 'Pre-image attack', 'Brute force attack', 'Meet in the middle attack', 'Man in the middle attack', 'C', 0, 10),
(10, 'Which one of the following uses UDP as the transport protocol?', 'http', 'telnet', 'DNS', 'SMTP', 'C', 0, 10),
(11, 'If a class B network on the Internet has a subnet mask of 255.255.248.0, what is the maximum number of hosts per subnet?', '1022', '1024', '2046', '2048', 'C', 0, 10),
(12, 'What is the size of MAC Address?', '16 Bytes', '32 Bytes', '48 Bytes', '64 Bytes', 'C', 0, 10),
(13, 'HTTP refers to?', 'Hyper Text Tunnel Protocol', 'Hyper Text Transmission Protocol', 'Hyper Transfer Text Protocol', 'None of the above', 'D', 0, 10),
(14, 'Which OSI Layer deals with physical addressing of device?', 'Ethernet Layer', 'IP Layer', 'Physical Layer', 'Data Link Layer', 'D', 0, 10),
(15, 'Which of these is not a valid V that characterises Big Data?', 'Velocity', 'variety', 'veracity', 'vulnerability', 'D', 0, 10),
(16, 'Which of these is a learner that can be used to solve classification problems?', 'Logistic regression', 'Linear regression', 'Polynomial regression', 'Non-parametric regression', 'A', 1, 10),
(17, 'In the case of an SVM learning algorithm, the value of the Lagrange multiplier coefficient corresponding to a Support Vector must be', '1', '0', '-1', 'Anything', 'D', 0, 10),
(18, 'The precision of a learning algorithm is defined as?', 'TN/(TN+FN)', 'TP/(TP+FP)', 'TP/(TP+FN)', 'TN/(TN+FP)', 'B', 0, 10),
(19, 'Horizontal scaling is an approach that is suggested as a solution to tackle the huge volume associated with Big Data. Which of the following is an approach under Horizontal scaling?', 'increasing the hard disk capacity', 'increasing the RAM of the system', 'increasing the number of systems on which the job is executed parallely', 'increasing the processing speed of the system', 'D', 0, 10),
(20, 'Which of the following is not an attribute in HTML5?', 'datalist', 'keygen', 'range', 'domain', 'D', 0, 10),
(21, 'Which of the following is not a valid <li> type of <ol> in HTML?', 'numbered', 'roman', 'circle', 'alphabet', 'C', 0, 10),
(22, 'Full form of SVG?', 'Simple Vector Graphics', 'Small Vector Graphics', 'Scalable Verifiable Graphics', 'None of these', 'D', 0, 10),
(23, 'Which one of the following is not a way to declare variable ''a''  in JS?', 'var a = 10', 'let a=10', 'a = 10', '$a = 10', 'D', 0, 10),
(24, 'Which one of the following gets trashed while closing a tab?', 'sessionStorage', 'session', 'cookie', 'localStorage', 'A', 0, 10),
(25, 'AOL stands for', 'America Over LAN', 'America Online', 'Arranged Outer Line ', 'Audio Over LAN', 'B', 0, 10),
(26, 'When was facebook formed?', '2003', '2004', '2005', '2006', 'B', 0, 10),
(27, 'An auto-associative neural network is:', 'a neural network that contains no loops', 'a neural network that contains feedback', 'a neural network that has only one loop', 'a single layer feed-forward neural network with pre-processing', 'B', 0, 10),
(28, 'Which of these is not a serial communications architecture?', 'PCIExpress', 'PCMCIA', 'SBus ', 'SATA', 'B', 0, 10),
(29, 'Which is a Read-Only type of memory?', 'L1 Cache', 'RAM', 'ROM ', 'DRAM', 'C', 0, 10),
(30, 'Assuming that all operations take their operands from registers, what is the minimum number of registers needed to execute this program without spilling?', '3', '4', '5', '6', 'A', 0, 10),
(31, 'Which of these is not an example of RDBMS?', 'MySQL', 'PostgreSQL', 'IBM DB2', 'Hbase', 'A', 0, 10),
(32, 'Which database product was built by Scandinavians David Axmark, Allan Larsson and Michael Widenius?', 'MS SQL Server', 'DB2', 'MYSQL', 'Derby', 'C', 0, 10),
(33, 'Which of these programming languages was created by Brendan Eich?', 'Javascript', 'C#', 'B', 'BCPL', 'A', 0, 10),
(34, 'Which of the following pairs have different expressive powers?', 'Deterministic finite automata and Non-deterministic finite automata ', 'Deterministic pushdown automata and Non-deterministic pushdown automata', 'Deterministic single-tape Turing machine and Non-deterministic single-tape Turing machine', 'All of the above pairs have equal expressive power', 'B', 0, 10),
(35, 'S->aSa | bSb | a | b. The language generated by the above grammar over the alphabet {a,b} is the set of:\nThe language generated by the above grammar over the alphabet {a,b} is the set of:\nThe language generated by the above grammar over the alphabet {a,b} is the set of:\nThe language generated by the above grammar over the alphabet {a,b} is the set of:\nThe language generated by the above grammar over the alphabet {a,b} is the set of:\nThe language generated by the above grammar over the alphabet {a,b} is the set of:\n', 'All palindromes', 'All even length palindromes', 'All odd length palindromes', 'String that begin and end with the same alphabet', 'C', 0, 10),
(36, 'Which of the following is not a task of the lexical analysis phase?', 'Correlating error messages generated by the compiler with the source code program.', 'Stripping out whitespaces and comments.', 'Construct parse tree', 'Produce tokens for the input source program', 'C', 0, 10),
(37, 'In 2011, Google acquired DeepMind Technologies, a British startup which built an AI capable of learning how to play Atari games using just the pixel output of the game. What algorithm did they use?', 'Deep Learning', 'Recurrent Neural Network', 'Deep Reinforcement Learning', 'Deep Belief Network', 'C', 0, 10),
(38, 'Thank you!', '', '', '', '', NULL, 0, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Members`
--
ALTER TABLE `Members`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `Questions`
--
ALTER TABLE `Questions`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Members`
--
ALTER TABLE `Members`
MODIFY `id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1112;