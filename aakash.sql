-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jul 03, 2014 at 03:20 AM
-- Server version: 5.0.45
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `aakash`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `department`
-- 

CREATE TABLE `department` (
  `ID` int(4) NOT NULL auto_increment,
  `Prof` varchar(30) NOT NULL,
  `Dept` varchar(20) NOT NULL,
  PRIMARY KEY  (`ID`,`Prof`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

-- 
-- Dumping data for table `department`
-- 

INSERT INTO `department` (`ID`, `Prof`, `Dept`) VALUES 
(1, 'Sachdev', 'Computer Science'),
(2, 'Bhatia', 'Computer Science'),
(4, 'Dayal', 'Computer Science'),
(8, 'Swati', 'Computer Science'),
(9, 'Sachdev', 'Computer Science'),
(11, 'Ankit', 'Computer Science'),
(19, 'Ankita', 'Computer Science'),
(20, 'Narayan', 'Computer Science'),
(21, 'Narayan', 'Computer Science'),
(22, 'Bhatia Sir', 'Computer Science'),
(23, 'Suresh', 'Computer Science'),
(24, 'Anuresh', 'Computer Science'),
(25, 'Anuresh', 'Computer Science'),
(26, 'Anuradha', 'Computer Science'),
(27, 'Swati', 'Computer Science'),
(28, 'Suresh', 'Computer Science'),
(29, 'Suresh', 'Computer Science'),
(30, 'Suresh', 'Computer Science'),
(31, 'Suresh', 'Computer Science'),
(32, 'Suresh', 'Computer Science'),
(33, 'Suresh', 'Computer Science'),
(34, 'Suresh', 'Computer Science'),
(35, 'Suresh', 'Computer Science'),
(36, 'Suresh', 'Computer Science'),
(37, 'Suresh', 'Computer Science'),
(38, 'Kalidas', 'Computer Science'),
(39, 'Kaalidas', 'Computer Science'),
(40, 'Kaalidas', 'Computer Science'),
(41, 'Kalidas', 'Computer Science'),
(42, 'adivasi', 'Computer Science'),
(43, 'sunil', 'Computer Science');

-- --------------------------------------------------------

-- 
-- Table structure for table `deptlist`
-- 

CREATE TABLE `deptlist` (
  `id` int(4) NOT NULL auto_increment,
  `dept` varchar(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `deptlist`
-- 

INSERT INTO `deptlist` (`id`, `dept`) VALUES 
(1, 'Computer Science'),
(2, 'Mechanical'),
(3, 'Aerospace'),
(4, 'Extc'),
(5, 'Electronics'),
(6, 'Civil'),
(7, 'Information Technology'),
(8, 'Production'),
(9, 'Mettallurgy'),
(10, 'BioTechnology'),
(11, 'Environmental Science'),
(12, 'Mathematics'),
(13, 'Electrical'),
(14, 'Textile'),
(15, 'Mining');

-- --------------------------------------------------------

-- 
-- Table structure for table `lec`
-- 

CREATE TABLE `lec` (
  `SessionId` int(4) NOT NULL auto_increment,
  `Prof` varchar(20) NOT NULL,
  `Lecture` varchar(50) NOT NULL,
  `lecpath` varchar(100) NOT NULL default 'lec.jsp',
  `date` varchar(20) NOT NULL,
  PRIMARY KEY  (`SessionId`),
  KEY `Prof` (`Prof`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

-- 
-- Dumping data for table `lec`
-- 

INSERT INTO `lec` (`SessionId`, `Prof`, `Lecture`, `lecpath`, `date`) VALUES 
(1, 'Sachdev', 'Android', 'lec.jsp', 'mon 2/2/2'),
(2, 'Swati', 'Java', 'lec.jsp', 'mon 2/2/3'),
(21, 'Swati', 'Android', 'lec.jsp', 'mon 2/2/5'),
(22, 'Suresh', 'BCDE', 'lec.jsp', 'tue 2/2/5'),
(24, 'Kalidas', 'Bhoot', 'lec15.jsp', 'Sun 29/06/2014'),
(25, 'mlmlmlkm', 'mk', 'lec12.jsp', 'Thu 03/07/2014'),
(26, 'adivasi', 'abcc', 'lec13.jsp', 'Thu 03/07/2014'),
(27, 'sunil', 'bbbbbb', 'lec14.jsp', 'Thu 03/07/2014');

-- --------------------------------------------------------

-- 
-- Table structure for table `login`
-- 

CREATE TABLE `login` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) default NULL,
  `name` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `login`
-- 

INSERT INTO `login` (`id`, `password`, `email`, `name`) VALUES 
('Ankit@iitb.com', '123', NULL, 'Ankit'),
('anuradha@iitb.com', '123', 'anuradha', 'Anuradha'),
('kalidas@iitb.com', '123', 'kadfd@fdsf.comf', 'Kalidas'),
('sachdev @iitb.com', '123', NULL, 'Sachdev'),
('sunil@iitb.com', '123', 'sunil', 'sunil'),
('swati@iitb.com', '123', 'swati@gmail.com', 'Swati');

-- --------------------------------------------------------

-- 
-- Table structure for table `qa`
-- 

CREATE TABLE `qa` (
  `id` int(11) NOT NULL auto_increment,
  `que` varchar(100) default NULL,
  `ans` varchar(100) default NULL,
  `student` varchar(50) default NULL,
  `ta` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

-- 
-- Dumping data for table `qa`
-- 

INSERT INTO `qa` (`id`, `que`, `ans`, `student`, `ta`) VALUES 
(1, 'Whats java', 'abcsdffdsf', 'Mohit', 'Ankit'),
(46, 'Whats androiddddd', 'a', 'ankit', 'mohit'),
(48, ' whatsPp', 'hii', 'ankit ', 'haha'),
(50, ' what is abc?', 'oyyeeeee', 'lavish ', NULL),
(51, ' what is hacking?', NULL, 'kaushik ', NULL),
(52, ' what is cde?', NULL, 'Ankit ', NULL),
(53, ' what is abc?', NULL, 'lavish ', NULL),
(54, ' what is hacking?', NULL, 'kaushik ', NULL),
(55, ' what is cde?', NULL, 'Ankit ', NULL),
(56, ' what is abc?', NULL, 'lavish ', NULL),
(57, ' what is hacking?', NULL, 'kaushik ', NULL),
(58, ' what is cde?', NULL, 'Ankit ', NULL),
(59, ' what is abc?', NULL, 'lavish ', NULL),
(60, ' what is hacking?', NULL, 'kaushik ', NULL),
(61, ' what is cde?', NULL, 'Ankit ', NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `qa2`
-- 

CREATE TABLE `qa2` (
  `id` int(11) NOT NULL auto_increment,
  `que` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `student` varchar(30) NOT NULL,
  `ta` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `qa2`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `qa22`
-- 

CREATE TABLE `qa22` (
  `id` int(11) NOT NULL auto_increment,
  `que` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `student` varchar(30) NOT NULL,
  `ta` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `qa22`
-- 

INSERT INTO `qa22` (`id`, `que`, `ans`, `student`, `ta`) VALUES 
(1, ' what is abc?', 'abc', 'lavish ', 'ANkit'),
(2, ' what is hacking?', 'abc', 'kaushik ', 'ANkit'),
(3, ' what is cde?', 'abc', 'Ankit ', 'ANkit'),
(4, ' what is ffff?', 'abc', 'lavish ', 'ANkit'),
(5, ' what is ooooo?', 'abc', 'kaushik ', 'ANkit'),
(6, ' what is lllll?', 'abc', 'Ankit ', 'ANkit'),
(7, ' whts aaaj', 'Ans:', 'mohit ', 'Kaalidas'),
(8, ' oyeee', 'Ans:', 'mohit ', 'Kaalidas'),
(9, ' wtf', 'Ans:', 'mohit ', 'Kaalidas'),
(10, ' whts aaaj', 'Ans:', 'mohit ', 'Kaalidas'),
(11, ' oyeee', 'Ans:', 'mohit ', 'Kaalidas'),
(12, ' wtf', 'Ans:', 'mohit ', 'Kaalidas'),
(13, ' whts aaaj', 'Ans:', 'mohit ', 'Kaalidas'),
(14, ' oyeee', 'Ans:', 'mohit ', 'Kaalidas'),
(15, ' wtf', 'Ans:', 'mohit ', 'Kaalidas');

-- --------------------------------------------------------

-- 
-- Table structure for table `qa24`
-- 

CREATE TABLE `qa24` (
  `id` int(11) NOT NULL auto_increment,
  `que` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `student` varchar(30) NOT NULL,
  `ta` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `qa24`
-- 

INSERT INTO `qa24` (`id`, `que`, `ans`, `student`, `ta`) VALUES 
(2, ' dddd', 'Ans:goood', 'mohitg ', 'Kalidas'),
(3, ' sjdjjd', 'Ans:omggg', 'mohitg ', 'Kalidas');

-- --------------------------------------------------------

-- 
-- Table structure for table `qa25`
-- 

CREATE TABLE `qa25` (
  `id` int(11) NOT NULL auto_increment,
  `que` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `student` varchar(30) NOT NULL,
  `ta` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `qa25`
-- 

INSERT INTO `qa25` (`id`, `que`, `ans`, `student`, `ta`) VALUES 
(1, ' j$', 'Ans:', 'k ', 'mlmlmlkm'),
(2, ' je$', 'Ans:', 'k ', 'mlmlmlkm');

-- --------------------------------------------------------

-- 
-- Table structure for table `qa26`
-- 

CREATE TABLE `qa26` (
  `id` int(11) NOT NULL auto_increment,
  `que` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `student` varchar(30) NOT NULL,
  `ta` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `qa26`
-- 

INSERT INTO `qa26` (`id`, `que`, `ans`, `student`, `ta`) VALUES 
(1, ' djdjd', 'Ans:', 'mohit ', 'adivasi'),
(2, ' djdjxjx', 'Ans:', 'mohit ', 'adivasi');

-- --------------------------------------------------------

-- 
-- Table structure for table `qa27`
-- 

CREATE TABLE `qa27` (
  `id` int(11) NOT NULL auto_increment,
  `que` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `student` varchar(30) NOT NULL,
  `ta` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `qa27`
-- 

INSERT INTO `qa27` (`id`, `que`, `ans`, `student`, `ta`) VALUES 
(1, '12', '121', '12121212', '12121212121');
