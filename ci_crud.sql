-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2017 at 07:07 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ci_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_curd`
--

CREATE TABLE IF NOT EXISTS `ci_curd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `facebook_link` varchar(255) NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `ci_curd`
--

INSERT INTO `ci_curd` (`id`, `name`, `email`, `contact`, `facebook_link`, `created`) VALUES
(25, 'try catch', 'trycatchclasses@gmail.com', '9987554212', 'asdasdasda', '2017-10-14'),
(26, 'ramesh', 'ramesh@gmail.com', '9987554212', 'asdasd', '2017-10-14'),
(27, 'suresh', 'suresh@rediff.com', '9987554212', 'asdasasd', '2017-10-14'),
(28, 'kalpesh', 'kalpesh@gmail.com', '9987554212', 'twitter link', '2017-10-14'),
(29, 'johny', 'johny@rediff.com', '9987554212', 'facebook link', '2017-10-14'),
(30, 'kamal', 'kamal@gmail.com', '9987554212', 'facebook link', '2017-10-14');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
