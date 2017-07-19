-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.14 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for mindaugassimkus
CREATE DATABASE IF NOT EXISTS `mindaugassimkus` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mindaugassimkus`;

-- Dumping structure for table mindaugassimkus.banners
CREATE TABLE IF NOT EXISTS `banners` (
  `id_group` int(11) NOT NULL DEFAULT '0',
  `banner_pic` text,
  `banner_link` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table mindaugassimkus.banners: 1 rows
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` (`id_group`, `banner_pic`, `banner_link`) VALUES
	(1, 'banners/samsung_S8_111122.jpg', 'https://samsunggift.lt/s8vr/?gclid=EAIaIQobChMIt83y-_mU1QIVEUMYCh0HUQVwEAAYASAAEgJzmvD_BwE'),
	(1, 'banners/Galaxy_7_235971.jpg', 'https://shop.telia.lt/telefonai/samsung-galaxy-s7-edge-g935/'),
	(1, 'banners/galaxy_S6_125891.jpg', 'https://www.telia.lt/privatiems/telefonai/samsung/galaxy-s6-edge-32gb-g925'),
	(2, 'banners/bmw_258963.jpg', 'http://www.krasta-auto.lt/'),
	(2, 'banners/audi_693412.jpg', 'http://www.audi.lt/lt/web/lt/new-client/offers/a6-offer.html?csref=dsp:Initiative:A6sed:Sales:s:Adwords:Adwords:p~Desktop:fn~Text%20Ad'),
	(3, 'banners/dell_214587.jpg', 'https://www.dellshop.lt/?gclid=CO-2vcqlldUCFQ4TGwodpUABcg'),
	(3, 'banners/hp_214987.jpg', 'https://www.hpstore.lt/'),
	(3, 'banners/asus_853692.jpg', 'https://www.asusshop.lt/'),
	(3, 'banners/toshiba_564987.jpg', 'https://www.varle.lt/nesiojami-kompiuteriai/nesiojami-kompiuteriai/?f.s-gamintojas=Toshiba');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;

-- Dumping structure for table mindaugassimkus.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `banner_id` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='This is my pages table for my portfolio web';

-- Dumping data for table mindaugassimkus.pages: 3 rows
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `title`, `body`, `banner_id`) VALUES
	(1, 'home', 'Hello, you are visiting my website!', 1),
	(2, 'about me', 'I am junior programmer.', 2),
	(3, 'contacts', 'You can call me on +37068888888', 3);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
