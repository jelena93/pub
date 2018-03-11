-- DROP TABLE user;

-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2015 at 01:28 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iteh`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', '$2a$04$RNs5Xtjo7F3upPGzSbVPTOfEOPkevYQYk96t82l4A47UenCK6l9Ou');

-- --------------------------------------------------------

--
-- Table structure for table `drink`
--

CREATE TABLE IF NOT EXISTS `drink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `drink_type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `drink_type` (`drink_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drink`
--

INSERT INTO `drink` (`name`, `price`, `drink_type`) VALUES
('Absinth', 270, 2),
('Aqua Viva', 130, 1),
('Čaj', 115, 4),
('Čaj sa medom', 130, 4),
('Čaj sa rumom', 170, 4),
('Cappucino', 159, 4),
('Cockta', 195, 1),
('Dupli espreso', 160, 4),
('Espresso', 139, 4),
('Espresso sa mlekom', 150, 4),
('Fanta', 195, 1),
('Gin', 225, 2),
('Gorki list', 185, 2),
('Guarana', 190, 3),
('Ice tea', 160, 1),
('Jelen', 180, 2),
('Knjaz Miloš', 140, 1),
('Liker', 240, 2),
('Limunada', 140, 1),
('Martini', 280, 2),
('Nescafe', 160, 4),
('Nescafe sa šlagom', 180, 4),
('Nikšićko svetlo', 180, 2),
('Nikšićko tamno', 180, 2),
('Rakija', 170, 2),
('Red Bull', 250, 3),
('Schweppes', 195, 1),
('Staropramen', 200, 2),
('Tequilla', 230, 2),
('Točeno pivo', 185, 2),
('Topla čokolada', 170, 4),
('Ultra', 180, 3),
('Vinjak', 150, 2),
('Vodka', 230, 2),
('Whiskey', 260, 2);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `person_number` int(11) NOT NULL,
  `reservation_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`person`, `person_number`, `reservation_date`) VALUES
('Marija Stojanovic', 2, '2015-12-23'),
('Marko Markovic', 5, '2015-12-12'),
('Petar Petrovic', 3, '2015-12-18');

-- --------------------------------------------------------

--
-- Table structure for table `drink_type`
--

CREATE TABLE IF NOT EXISTS `drink_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drink_type`
--

INSERT INTO `drink_type` (`drink_type`, `name`) VALUES
(1, 'Bezalkoholno drink'),
(2, 'Alkoholno drink'),
(3, 'Energetski napitak'),
(4, 'Topli napitak');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `drink`
--
ALTER TABLE `drink`
  ADD CONSTRAINT `drink_ibfk_1` FOREIGN KEY (`drink_type`) REFERENCES `drink_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
