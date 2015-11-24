-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2015 at 07:53 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nearstation`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `brandid` int(10) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(30) NOT NULL,
  PRIMARY KEY (`brandid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brandid`, `brand_name`) VALUES
(1, 'Total'),
(2, 'Shell'),
(3, 'Oil Libya'),
(4, 'Essar'),
(5, 'Hash Energy'),
(6, 'Kennol'),
(7, 'Kobil'),
(8, 'National Oil'),
(9, 'Engen');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `locationid` int(10) NOT NULL AUTO_INCREMENT,
  `locationname` varchar(40) NOT NULL,
  PRIMARY KEY (`locationid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`locationid`, `locationname`) VALUES
(1, 'Baringo '),
(2, 'Bomet '),
(3, 'Bungoma '),
(4, 'Busia '),
(5, 'Elgeyo Marakwet '),
(6, 'Embu '),
(7, 'Garissa '),
(8, 'Homa Bay '),
(9, 'Isiolo '),
(10, 'Kajiado '),
(11, 'Kakamega '),
(12, 'Kericho '),
(13, 'Kiambu '),
(14, 'Kilifi '),
(15, 'Kirinyaga '),
(16, 'Kisii '),
(17, 'Kisumu '),
(18, 'Kitui '),
(19, 'Kwale '),
(20, 'Laikipia '),
(21, 'Lamu '),
(22, 'Machakos '),
(23, 'Makueni '),
(24, 'Mandera '),
(25, 'Meru '),
(26, 'Migori '),
(27, 'Marsabit '),
(28, 'Mombasa '),
(29, 'Muranga '),
(30, 'Nairobi '),
(31, 'Nakuru '),
(32, 'Nandi '),
(33, 'Narok '),
(34, 'Nyamira '),
(35, 'Nyandarua '),
(36, 'Nyeri '),
(37, 'Samburu '),
(38, 'Siaya '),
(39, 'Taita Taveta '),
(40, 'Tana River '),
(41, 'Tharaka Nithi '),
(42, 'Trans Nzoia '),
(43, 'Turkana '),
(44, 'Uasin Gishu '),
(45, 'Vihiga '),
(46, 'Wajir '),
(47, 'West Pokot ');

-- --------------------------------------------------------

--
-- Table structure for table `petrostations`
--

CREATE TABLE IF NOT EXISTS `petrostations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `brandid` int(10) NOT NULL,
  `stationname` varchar(50) NOT NULL,
  `latlong` varchar(40) NOT NULL,
  `locationid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `petrostations`
--

INSERT INTO `petrostations` (`id`, `brandid`, `stationname`, `latlong`, `locationid`) VALUES
(1, 1, 'Ngong Road', '-1.2988654,36.7594331', 30),
(2, 1, 'Lower Kabete', '-1.2986523,36.6896686', 30),
(3, 1, 'Opposite Garden City,Thika Road', '-1.2986523,36.6896686', 30),
(4, 1, 'Argwings Kodhek', '-1.2986523,36.6896686', 30),
(5, 1, 'Mbagathi', '-1.3061176,36.7509517', 30),
(6, 1, 'pioneer phase 2', '-1.2855236,36.785284', 30),
(7, 1, 'Kenya Pipeline', '-1.248879,36.8508996', 30),
(8, 1, 'Ngara Road', '-1.2776374,36.829705', 30),
(9, 1, 'General Waruinge Road', '-1.2764693,36.8352561', 30),
(10, 1, 'Kayole Junction Kangundo Road', '-1.2578579,36.9226657', 30),
(11, 1, 'Tsavo Road', '-1.3080337,36.8331614', 30),
(12, 1, 'Woodly Estate', '-1.2986883,36.7809141', 30),
(13, 1, 'Outering Road', '-1.338497, 36.739769', 30),
(14, 1, 'Koma Rock ,Nairobi Kenya', '-1.2504852,36.8428578', 30),
(15, 1, 'DonHolm Road', '-1.300555, 36.888133', 30),
(16, 1, 'Kangemi', '-1.2544826,36.6788663', 30),
(17, 1, 'Mkoma Road', '-1.310652, 36.837304', 30),
(18, 1, 'Waiyaki way', '-1.258676, 36.781317', 30),
(19, 1, 'Waiyaki way', '-1.259663, 36.778528', 30),
(20, 1, 'Mbotela', '-1.297978, 36.868376', 30),
(21, 1, 'Rabai Road', '-1.296616, 36.876920', 30),
(22, 1, 'Karen C', '-1.339457, 36.740489', 30),
(23, 1, 'Naivasha road', '-1.263259, 36.720232', 30),
(24, 1, 'South B', '-1.307991, 36.833302', 30),
(25, 1, 'Mathare', '-1.266705, 36.844992', 30),
(26, 2, 'Bernard Estate', '-1.2806332,36.7671369', 30),
(27, 2, 'Limuru Road', '-1.228599, 36.803137', 30),
(28, 2, 'Waiyaki way', '-1.259919, 36.785702', 30),
(29, 2, 'Nairobi West ', '-1.310702, 36.817606', 30),
(30, 2, 'Ngong Road', '-1.2988973,36.7636815', 30),
(31, 2, 'Suna Road', '-1.300508, 36.779732', 30),
(32, 2, 'Argwings Kodhek', '-1.295122, 36.799420', 30),
(33, 2, 'Madaraka Estate', '-1.310578, 36.817144', 30),
(34, 2, 'Nairobi West Estate', '-1.310702, 36.817642', 30),
(35, 2, 'South B', '-1.305561, 36.827268', 30),
(36, 2, 'Tena Road Outer Ring Road', '-1.293895, 36.886370', 30),
(37, 2, 'Kuwinda ,Nairobi City', '-1.316619, 36.718413', 30),
(38, 2, 'Ngara', '-1.272469, 36.831829', 30),
(39, 2, 'Karen ', '-1.321881, 36.706660', 30),
(40, 2, 'Westlands', '-1.268975, 36.817296', 30),
(41, 2, 'City Square', '-1.280708, 36.827893', 30),
(42, 2, 'City Square', '-1.292429, 36.821789', 30),
(43, 2, 'Thome', '-1.232526, 36.875087', 30),
(44, 2, 'Ngong Road', '-1.341366, 36.666834', 30);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
