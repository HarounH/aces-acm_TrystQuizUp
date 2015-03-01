-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 01, 2015 at 11:05 AM
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
  `score` int(6) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Members`
--

INSERT INTO `Members` (`id`, `firstname`, `lastname`, `email`, `mobile`, `button_status`, `score`) VALUES
(0, 'Shivanshu', 'Gupta', 'shivanshugupta1995@gmail.com', 9716025857, 1, 0),
(1, 'Shivanshu', 'Gupta', 'icedwingsss@gmail.com', 0, 1, 10),
(3, 'Haroun', 'Habeeb', 'haroun@gmail.com', 1234567890, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Questions`
--

CREATE TABLE IF NOT EXISTS `Questions` (
  `ID` int(2) DEFAULT NULL,
  `question` varchar(520) DEFAULT NULL,
  `A` varchar(82) DEFAULT NULL,
  `B` varchar(71) DEFAULT NULL,
  `C` varchar(101) DEFAULT NULL,
  `D` varchar(89) DEFAULT NULL,
  `correctans` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Questions`
--

INSERT INTO `Questions` (`ID`, `question`, `A`, `B`, `C`, `D`, `correctans`) VALUES
(1, 'What is the time complexity for sorting an array of length n using the Merge Sort Algorithm?', 'O(n)', 'O(nlogn)', 'O(n*n)', 'O(n/(logn))', 'B'),
(2, 'We are given a set of N distinct elements and an unlabeled binary tree with N nodes. In how many ways can we populate the tree with the given set so that it becomes a binary search tree?', 'n!', '1', 'C(n,1)', 'C(2n,n)/(n+1)', 'B'),
(3, 'What is the swap space in the disk used for?', 'Storing the super-block.', 'Dumping RAM for hibernate / deep sleep.', 'Saving process data (extending RAM).', 'Storing device drivers.', 'C'),
(4, 'A computer system supports 32-bit virtual addresses as well as 32-bit physical addresses. Since the virtual address space is of the same size as the physical address space, the operating system designers decide to get rid of the virtual memory entirely. Which one of the following is true?', 'Efficient implementation of multi-user support is no longer possible', 'The processor cache organization can be made more efficient now', 'Hardware support for memory management is no longer needed', 'CPU scheduling can be made more efficient now', 'C'),
(5, 'A process executes the code\n  fork ();\n  fork ();\n  fork ();\nThe total number of child processes created is', '3', '4', '7', '8', 'C'),
(6, 'Using a larger block size in a fixed block size file system leads to', 'better disk throughput but poorer disk space utilization', 'better disk throughput and better disk space utilization', 'poorer disk throughput but better disk space utilization', '', 'A'),
(7, 'Asymmetric key cryptography is used for all of the following except:', 'Encryption of data', 'Access control', 'Nonrepudiation', 'Steganography', 'D'),
(8, 'When a user needs to provide message integrity, what options may be best?', 'Send a digital signature of the message to the recipient', 'Encrypt the message with a symmetric algorithm and send it', 'Encrypt the message with a private key so the recipient can decrypt with the corresponding public key', 'Create a checksum, append it to the message, encrypt the message, then send to recipient.', 'D'),
(9, 'ElGamal encryption system is vulnerable to which of the following attacks?', 'Pre-image attack', 'Brute force attack', 'Meet in the middle attack', 'Man in the middle attack', 'C'),
(10, 'Which one of the following uses UDP as the transport protocol?', 'http', 'telnet', 'DNS', 'SMTP', 'C'),
(11, 'If a class B network on the Internet has a subnet mask of 255.255.248.0, what is the maximum number of hosts per subnet?', '1022', '1024', '2046', '2048', 'C'),
(12, 'What is the size of MAC Address?', '16 Bytes', '32 Bytes', '48 Bytes', '64 Bytes', 'C'),
(13, 'HTTP refers to?', 'Hyper Text Tunnel Protocol', 'Hyper Text Transmission Protocol', 'Hyper Transfer Text Protocol', 'None of the above', 'D'),
(14, 'Which OSI Layer deals with physical addressing of device?', 'Ethernet Layer', 'IP Layer', 'Physical Layer', 'Data Link Layer', 'D'),
(15, 'Which of these is not a valid V that characterises Big Data?', 'Velocity', 'variety', 'veracity', 'vulnerability', 'D'),
(16, 'Which of these is a learner that can be used to solve classification problems?', 'Logistic regression', 'Linear regression', 'Polynomial regression', 'Non-parametric regression', 'A'),
(17, 'In the case of an SVM learning algorithm, the value of the Lagrange multiplier coefficient corresponding to a Support Vector must be', '1', '0', '-1', 'Anything', 'D'),
(18, 'The precision of a learning algorithm is defined as?', 'TN/(TN+FN)', 'TP/(TP+FP)', 'TP/(TP+FN)', 'TN/(TN+FP)', 'B'),
(19, 'Horizontal scaling is an approach that is suggested as a solution to tackle the huge volume associated with Big Data. Which of the following is an approach under Horizontal scaling?', 'increasing the hard disk capacity', 'increasing the RAM of the system', 'increasing the number of systems on which the job is executed parallely', 'increasing the processing speed of the system', 'D'),
(20, 'Which of the following is not an attribute in HTML5?', 'datalist', 'keygen', 'range', 'domain', 'D'),
(21, 'Which of the following is not a valid <li> type of <ol> in HTML?', 'numbered', 'roman', 'circle', 'alphabet', 'C'),
(22, 'Full form of SVG?', 'Simple Vector Graphics', 'Small Vector Graphics', 'Scalable Verifiable Graphics', 'None of these', 'D'),
(23, 'Which one of the following is not a way to declare variable ''a''  in JS?', 'var a = 10', 'let a=10', 'a = 10', '$a = 10', 'D'),
(24, 'Which one of the following gets trashed while closing a tab?', 'sessionStorage', 'session', 'cookie', 'localStorage', 'A'),
(25, 'AOL stands for', 'America Over LAN', 'America Online', 'Arranged Outer Line ', 'Audio Over LAN', 'B'),
(26, 'When was facebook formed?', '2003', '2004', '2005', '2006', 'B'),
(27, 'An auto-associative neural network is:', 'a neural network that contains no loops', 'a neural network that contains feedback', 'a neural network that has only one loop', 'a single layer feed-forward neural network with pre-processing', 'B'),
(28, 'Which of these is not a serial communications architecture?', 'PCIExpress', 'PCMCIA', 'SBus ', 'SATA', 'B'),
(29, 'Which is a Read-Only type of memory?', 'L1 Cache', 'RAM', 'ROM ', 'DRAM', 'C'),
(30, 'Assuming that all operations take their operands from registers, what is the minimum number of registers needed to execute this program without spilling?', '3', '4', '5', '6', 'A'),
(31, 'Which of these is not an example of RDBMS?', 'MySQL', 'PostgreSQL', 'IBM DB2', 'Hbase', 'A'),
(32, 'Which database product was built by Scandinavians David Axmark, Allan Larsson and Michael Widenius?', 'MS SQL Server', 'DB2', 'MYSQL', 'Derby', 'C'),
(33, 'Which of these programming languages was created by Brendan Eich?', 'Javascript', 'C#', 'B', 'BCPL', 'A'),
(34, 'Which of the following pairs have different expressive powers?', 'Deterministic finite automata and Non-deterministic finite automata ', 'Deterministic pushdown automata and Non-deterministic pushdown automata', 'Deterministic single-tape Turing machine and Non-deterministic single-tape Turing machine', 'All of the above pairs have equal expressive power', 'B'),
(35, 'S->aSa | bSb | a | b. The language generated by the above grammar over the alphabet {a,b} is the set of:\nThe language generated by the above grammar over the alphabet {a,b} is the set of:\nThe language generated by the above grammar over the alphabet {a,b} is the set of:\nThe language generated by the above grammar over the alphabet {a,b} is the set of:\nThe language generated by the above grammar over the alphabet {a,b} is the set of:\nThe language generated by the above grammar over the alphabet {a,b} is the set of:\n', 'All palindromes', 'All even length palindromes', 'All odd length palindromes', 'String that begin and end with the same alphabet', 'C'),
(36, 'Which of the following is not a task of the lexical analysis phase?', 'Correlating error messages generated by the compiler with the source code program.', 'Stripping out whitespaces and comments.', 'Construct parse tree', 'Produce tokens for the input source program', 'C'),
(37, 'In 2011, Google acquired DeepMind Technologies, a British startup which built an AI capable of learning how to play Atari games using just the pixel output of the game. What algorithm did they use?', 'Deep Learning', 'Recurrent Neural Network', 'Deep Reinforcement Learning', 'Deep Belief Network', 'C');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
