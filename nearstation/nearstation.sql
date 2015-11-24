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

CREATE DATABASE IF NOT EXISTS nearstation;

USE nearstation;

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
(5, 'Eldoret '),
(6, 'Elgeyo Marakwet '),
(7, 'Embu '),
(8, 'Garissa '),
(9, 'Homa Bay '),
(10, 'Isiolo '),
(11, 'Kajiado '),
(12, 'Kakamega '),
(13, 'Kericho '),
(14, 'Kiambu '),
(15, 'Kilifi '),
(16, 'Kirinyaga '),
(17, 'Kisii '),
(18, 'Kisumu '),
(19, 'Kitui '),
(20, 'Kwale '),
(21, 'Laikipia '),
(22, 'Lamu '),
(23, 'Machakos '),
(24, 'Makueni '),
(25, 'Mandera '),
(26, 'Meru '),
(27, 'Migori '),
(28, 'Marsabit '),
(29, 'Mombasa '),
(30, 'Muranga '),
(31, 'Nairobi '),
(32, 'Nakuru '),
(33, 'Nandi '),
(34, 'Narok '),
(35, 'Nyamira '),
(36, 'Nyandarua '),
(37, 'Nyeri '),
(38, 'Samburu '),
(39, 'Siaya '),
(40, 'Taita Taveta '),
(41, 'Tana River '),
(42, 'Tharaka Nithi '),
(43, 'Trans Nzoia '),
(44, 'Turkana '),
(45, 'Uasin Gishu '),
(46, 'Vihiga '),
(47, 'Wajir '),
(48, 'West Pokot ');

-- --------------------------------------------------------

--
-- Table structure for table `petrostations`
--

CREATE TABLE IF NOT EXISTS `petrostations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `brandid` int(10) NOT NULL,
  `stationname` varchar(50) NOT NULL,
  `long` varchar(40) NOT NULL,
  `lat` varchar(40) NOT NULL,
  `locationid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `petrostations`
--

INSERT INTO `petrostations` (`id`, `brandid`, `stationname`, `long`,`lat`, `locationid`) VALUES
(1, 1, 'Ngong Road', '-1.2988654','36.7594331', 30),
(2, 1, 'Lower Kabete', '-1.2986523','36.6896686', 30),
(3, 1, 'Opposite Garden City,Thika Road', '-1.2986523','36.6896686', 30),
(4, 1, 'Argwings Kodhek', '-1.2986523','36.6896686', 30),
(5, 1, 'Mbagathi', '-1.3061176','36.7509517', 30),
(6, 1, 'pioneer phase 2', '-1.2855236','36.785284', 30),
(7, 1, 'Kenya Pipeline', '-1.248879','36.8508996', 30),
(8, 1, 'Ngara Road', '-1.2776374','36.829705', 30),
(9, 1, 'General Waruinge Road', '-1.2764693','36.8352561', 30),
(10, 1, 'Kayole Junction Kangundo Road', '-1.2578579','36.9226657', 30),
(11, 1, 'Tsavo Road', '-1.3080337','36.8331614', 30),
(12, 1, 'Woodly Estate', '-1.2986883','36.7809141', 30),
(13, 1, 'Outering Road', '-1.338497','36.739769', 30),
(14, 1, 'Koma Rock ,Nairobi Kenya', '-1.2504852','36.8428578', 30),
(15, 1, 'DonHolm Road', '-1.300555','36.888133', 30),
(16, 1, 'Kangemi', '-1.2544826','36.6788663', 30),
(17, 1, 'Mkoma Road', '-1.310652','36.837304', 30),
(18, 1, 'Waiyaki way', '-1.258676','36.781317', 30),
(19, 1, 'Waiyaki way', '-1.259663','36.778528', 30),
(20, 1, 'Mbotela', '-1.297978','36.868376', 30),
(21, 1, 'Rabai Road', '-1.296616','36.876920', 30),
(22, 1, 'Karen C', '-1.339457','36.740489', 30),
(23, 1, 'Naivasha road', '-1.263259','36.720232', 30),
(24, 1, 'South B', '-1.307991','36.833302', 30),
(25, 1, 'Mathare', '-1.266705','36.844992', 30),
(26, 2, 'Bernard Estate', '-1.2806332','36.7671369', 30),
(27, 2, 'Limuru Road', '-1.228599','36.803137', 30),
(28, 2, 'Waiyaki way', '-1.259919','36.785702', 30),
(29, 2, 'Nairobi West ', '-1.310702','36.817606', 30),
(30, 2, 'Ngong Road', '-1.2988973','36.7636815', 30),
(31, 2, 'Suna Road', '-1.300508','36.779732', 30),
(32, 2, 'Argwings Kodhek', '-1.295122','36.799420', 30),
(33, 2, 'Madaraka Estate', '-1.310578','36.817144', 30),
(34, 2, 'Nairobi West Estate', '-1.310702','36.817642', 30),
(35, 2, 'South B', '-1.305561','36.827268', 30),
(36, 2, 'Tena Road Outer Ring Road', '-1.293895','36.886370', 30),
(37, 2, 'Kuwinda ,Nairobi City', '-1.316619','36.718413', 30),
(38, 2, 'Ngara', '-1.272469','36.831829', 30),
(39, 2, 'Karen ', '-1.321881','36.706660', 30),
(40, 2, 'Westlands', '-1.268975','36.817296', 30),
(41, 2, 'City Square', '-1.280708','36.827893', 30),
(42, 2, 'City Square', '-1.292429','36.821789', 30),
(43, 2, 'Thome', '-1.232526', '36.875087', 30),
(44, 2, 'Ngong Road', '-1.341366', '36.666834', 30),
(45, 3, 'Jomo Kenyatta Rd, Mombasa', '-4.043131', '39.658855', 28),
(46, 3, 'Nyali Bridge', '-4.038841', '39.680103', 28),
(47, 3, 'Abdula Naser Street', '-4.055993', '39.67241', 28),
(48, 3, 'The Kwa Shibu Road Junction, Mombasa CBD, Shimoni ', '-4.05946', '39.668631', 28),
(49, 8, 'Better Living Access Rd, Kisumu', '-0.095306', '34.72928', 17),
(50, 8, 'Near Kingways Tyre, West Down Town, Obote Rd, Kisu', '-0.097865', '34.750304', 17),
(51, 8, 'Oginga Odinga Rd, Kisumu', '-0.098716', '34.750139', 17),
(52, 8, 'Opposite Kigomi Ltd, National Oil, Kisumu - Busia ', '-0.088708', '34.757332', 17),
(53, 3, 'Nakuru-Eldoret Highway', '-0.2938204', '36.038426', 31),
(54, 3, 'Nakuru-Kenyatta Avenue', '-0.2871686', '36.0492407', 31),
(55, 2, 'Nakuru-Mennengai', '-0.2822119', '36.0770116', 31),
(56, 2, 'Nakuru-Biashara', '-0.2821261', '36.0770116', 31),
(57, 7, 'Eldoret', '0.5122703', '35.1991705', 5),
(58, 7, 'Eldoret-Malaba Road', '0.5126129', '35.1991703', 5),
(59, 7, 'Off Eldoret-Malaba road, Turbo', '0.633448', '34.9820315', 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
