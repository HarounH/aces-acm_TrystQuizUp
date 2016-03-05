-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Feb 27, 2016 at 12:47 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `myDB`
--

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
(1, 'When was facebook formed?', '2003', '2004', '2005', '2006', 'B', 0, 10),
(2, 'What was the original business of NOKIA?', 'Cable', 'Electricity', 'Pulp Mills', 'Telephones', 'C', 0, 10),
(3, 'How much did the first Kindle Cost?', '$299', '$120', '$489', '$399', 'D', 0, 10),
(4, 'What is the optimal time complexity of making a heap given an array of size n ?', 'O(n*loge(n))', 'O(loge(n))', 'O(n)', 'O(n^2)', 'C', 0, 10),
(5, 'We are given a set of N distinct elements and an unlabeled binary tree with N nodes. In how many ways can we populate the tree with the given set so that it becomes a binary search tree?', 'n!', '1', 'nC1', '(2nCn)/(n+1)', 'B', 0, 10),
(6, 'What is F1 Score?', '2*precision*recall/(precision + recall)', 'precision*recall/(precision + recall)', '(precision + recall)/2', '(precision + recall)/(2*precision*recall)', 'A', 0, 10),
(7, 'Horizontal scaling is an approach that is suggested as a solution to tackle the huge volume associated with Big Data. Which of the following is an approach under Horizontal scaling?', 'increasing the hard disk capacity', 'increasing the RAM of the system', 'increasing the number of systems on which the job is executed parallely', 'increasing the processing speed of the system', 'C', 0, 10),
(8, 'Which of these cannot be represented using a single perceptron?', 'boolean NAND', 'boolean NOR', 'boolean XOR', 'boolean NOT', 'C', 0, 10),
(9, 'Which of these is an Open Source Library for Machine Learning?', 'MatrixSink', 'TensorFlow', 'VectorReduce', 'MapBuffer', 'B', 0, 10),
(10, 'Which of these was the program that beat the European Go Champion in 2015?', 'AlphaGo', 'GoChamp!', 'Zen', 'Crazy Stone', 'A', 0, 10),
(11, 'An auto-associative neural network is:', 'a neural network that contains no loops', 'a neural network that contains feedback', 'a neural network that has only one loop', 'a single layer feed-forward neural network with pre-processing', 'B', 0, 10),
(12, 'Which of the following does NOT use UDP?', 'DNS', 'DHCP', 'RIP', 'SMTP', 'D', 0, 10),
(13, 'If a class B network on the Internet has a subnet mask of 255.255.248.0, what is the maximum number of hosts per subnet?', '1022', '1024', '2046', '2048', 'C', 0, 10),
(14, 'What is your physical address?', '127.0.0.1', 'IP Address', 'MAC Address', 'Gateway', 'C', 0, 10),
(15, 'Which OSI Layer deals with physical addressing of device?', 'Ethernet Layer', 'IP Layer', 'Physical Layer', 'Data Link Layer', 'D', 0, 10),
(16, 'What port does FTP use?', '80', '8080', '21', '3074', 'C', 0, 10),
(17, 'Heartbleed was caused due to poorly written code in:', 'ClosedSSL', 'OpenSSL', 'MySQL', 'OpenSLL', 'B', 0, 10),
(18, 'Which of these is the full form of IDEA, a symmetric-key block cipher?', 'International Data Encryption Algorithm', 'Internet Data Encryption Algorithm', 'Integer Data Encryption Algorithm', 'Insider Data Encryption Algorithm', 'A', 0, 10),
(19, 'Which algorithm does HTTPS use for encryption?', 'RSA', 'TCP', 'Euclidean Modulo', 'Network Flow', 'A', 0, 10),
(20, 'Which is a “Read-Only” type of memory?', 'L1 Cache', 'RAM', 'ROM', 'DRAM', 'C', 0, 10),
(21, 'Which of these is not a processor for phones?', 'Nvidia Tegra', 'Samsung Exynos', 'Intel Atom', 'AMD BlueChip', 'D', 0, 10),
(22, 'Which of these is not a serial communications architecture?', 'PCIExpress', 'PCMCIA', 'SBus', 'SATA', 'B', 0, 10),
(23, 'A process executes the code\r\n		  fork ();\r\n		  fork ();\r\n		  fork ();\r\n		The total number of child processes created is', '3', '4', '7', '8', 'C', 0, 10),
(24, 'Which of these is not a filesystem?', 'ext3', 'minix', 'NTFS', 'NIC', 'D', 0, 10),
(25, 'What is the swap space in the disk used for?', 'Storing the super-block.', 'Dumping RAM for hibernate / deep sleep', 'Saving process data (extending RAM)', 'Storing device drivers', 'C', 0, 10),
(26, 'What do the Therac-25 and Cobalt-60 have in common?', 'They are elements on the periodic table', 'They contained bugs that resulted in the death of patients', 'They were vulnerabilities which were exploited to steal credit cards', 'They caused the Stock Markets to crash due to bugs contained in them', 'B', 0, 10),
(27, 'Which of the following esoteric languages use MIDI files as source code?', 'Velato', 'INTERCAL', 'Befunge', 'Piet', 'A', 0, 10),
(28, 'Which of the following languages was created by Jane Street?', 'Java', 'LOLCODE', 'OCaML', 'SML', 'C', 0, 10),
(29, 'Which of the following is a famous software company that specializes in data analysis?', 'Palantir', 'Y Combinator', 'Tesla', 'Debian', 'A', 0, 10),
(30, 'What is Baidu, Inc?', 'A phone manufacturer', 'Web Services Provider', 'Networking Equipment Manufacturer', 'Game Development Studio', 'B', 0, 10),
(31, 'When was Nintendo founded?', '2004', '1996', '1889', '1969', 'C', 0, 10),
(32, 'Thank you!', '', '', '', '', NULL, 1, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Questions`
--
ALTER TABLE `Questions`
 ADD PRIMARY KEY (`ID`);
