-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 03, 2023 at 03:03 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scarf`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact us`
--

DROP TABLE IF EXISTS `contact us`;
CREATE TABLE IF NOT EXISTS `contact us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_persian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_persian_ci NOT NULL,
  `title` varchar(32) COLLATE utf8mb4_persian_ci NOT NULL,
  `text` text COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `contact us`
--

INSERT INTO `contact us` (`id`, `name`, `email`, `title`, `text`) VALUES
(1, 'mahdi khazan', 'mahdikhazan@gmail.com', 'test', 'Test text for inserting messages in the contact table'),
(3, 'mohammad reza', 'mohammadreza@gmail.com', 'test', 'Test text for inserting messages in the contact table');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_persian_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_persian_ci NOT NULL,
  `email` text COLLATE utf8mb4_persian_ci NOT NULL,
  `password` text COLLATE utf8mb4_persian_ci NOT NULL,
  `status` enum('active','deactive') COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`(100))
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `password`, `status`) VALUES
(1, 'mohammad mahdi', 'khazan', 'mahdikhazan@gmail.com', '2966', 'active'),
(3, 'ali', 'mehrabi', 'ali@gmail.com', '1380', 'active'),
(4, 'mohamad', 'behroz', 'mohamad@gmail.com', '11022', 'deactive'),
(5, 'mahdi', 'zamani', 'mahdi@gmail.com', '112233', 'deactive');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
