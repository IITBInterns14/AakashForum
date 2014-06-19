-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 19, 2014 at 04:58 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aakash`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `Prof` varchar(30) NOT NULL,
  `Dept` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`,`Prof`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`ID`, `Prof`, `Dept`) VALUES
(1, 'Sachdev', 'Computer Science'),
(2, 'Bhatia', 'Computer Science'),
(3, 'Renu', 'Computer Science'),
(4, 'Dayal', 'Computer Science'),
(8, 'Swati', 'Computer Science'),
(9, 'Sachdev', 'Computer Science'),
(11, 'Ankit', 'Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `lec`
--

CREATE TABLE IF NOT EXISTS `lec` (
  `SessionId` int(4) NOT NULL,
  `Prof` varchar(20) NOT NULL,
  `Lecture` varchar(50) NOT NULL,
  `lecpath` varchar(20) NOT NULL DEFAULT 'lec.jsp',
  PRIMARY KEY (`SessionId`),
  KEY `Prof` (`Prof`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lec`
--

INSERT INTO `lec` (`SessionId`, `Prof`, `Lecture`, `lecpath`) VALUES
(1, 'Swati', 'Android', 'lec.jsp'),
(2, 'SWaralai', 'adfdf', 'lec.jsp'),
(3, 'asdf', 'sdfsdf', 'lec.jsp'),
(4, 'Swati', 'Java', 'lec.jsp'),
(5, 'Swati', 'CG', 'lec.jsp'),
(6, 'Swati', 'DS', 'lec.jsp'),
(7, 'Swati', 'Algorithm', 'lec.jsp'),
(8, 'Swati', 'JSP', 'lec.jsp'),
(9, 'Swati', 'HTML5 and ', 'lec.jsp'),
(10, 'Swati', 'JSP', 'lec.jsp'),
(11, 'Swati', 'HTML5 and ', 'lec.jsp');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `password`, `email`, `name`) VALUES
('Ankit@iitb.com', '123', NULL, 'Ankit'),
('sachdev @iitb.com', '123', NULL, 'Sachdev'),
('swati@iitb.com', '123', 'swati@gmail.com', 'Swati');

-- --------------------------------------------------------

--
-- Table structure for table `qa`
--

CREATE TABLE IF NOT EXISTS `qa` (
  `id` int(11) DEFAULT NULL,
  `que` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL,
  `student` varchar(50) DEFAULT NULL,
  `ta` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qa`
--

INSERT INTO `qa` (`id`, `que`, `ans`, `student`, `ta`) VALUES
(2, 'What is Os handler', 'abcde....', 'Lavish', 'Ankit'),
(5, 'What is CSE?', 'abc', 'Mohit', 'Ankit'),
(3, 'What is PC?', 'abc', 'Kaushik', 'Ankit'),
(1, 'What is Android', 'ANdroid is .......', 'Kaushik', 'Ankit'),
(6, 'What is jvm?', 'abc', 'Mohit', 'Ankit');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
