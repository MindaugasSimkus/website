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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `id_group` int(11) NOT NULL DEFAULT '0',
  `banner_pic` text CHARACTER SET latin1,
  `banner_link` text CHARACTER SET latin1,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table mindaugassimkus.banners: 9 rows
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` (`id`, `banner_name`, `id_group`, `banner_pic`, `banner_link`) VALUES
	(1, '', 1, 'banners/samsung_S8_111122.jpg', 'https://samsunggift.lt/s8vr/?gclid=EAIaIQobChMIt83y-_mU1QIVEUMYCh0HUQVwEAAYASAAEgJzmvD_BwE'),
	(2, '', 1, 'banners/Galaxy_7_235971.jpg', 'https://shop.telia.lt/telefonai/samsung-galaxy-s7-edge-g935/'),
	(3, '', 1, 'banners/galaxy_S6_125891.jpg', 'https://www.telia.lt/privatiems/telefonai/samsung/galaxy-s6-edge-32gb-g925'),
	(4, '', 2, 'banners/bmw_258963.jpg', 'http://www.krasta-auto.lt/'),
	(5, '', 2, 'banners/audi_693412.jpg', 'http://www.audi.lt/lt/web/lt/new-client/offers/a6-offer.html?csref=dsp:Initiative:A6sed:Sales:s:Adwords:Adwords:p~Desktop:fn~Text%20Ad'),
	(6, '', 3, 'banners/dell_214587.jpg', 'https://www.dellshop.lt/?gclid=CO-2vcqlldUCFQ4TGwodpUABcg'),
	(7, '', 3, 'banners/hp_214987.jpg', 'https://www.hpstore.lt/'),
	(8, '', 3, 'banners/asus_853692.jpg', 'https://www.asusshop.lt/'),
	(9, '', 3, 'banners/toshiba_564987.jpg', 'https://www.varle.lt/nesiojami-kompiuteriai/nesiojami-kompiuteriai/?f.s-gamintojas=Toshiba');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;

-- Dumping structure for table mindaugassimkus.config
CREATE TABLE IF NOT EXISTS `config` (
  `site_name` varchar(50) DEFAULT NULL,
  `footer` varchar(50) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table mindaugassimkus.config: 1 rows
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`site_name`, `footer`, `owner`) VALUES
	('Mindaugo svetainė\r\n', 'Šis puslapis sukurtas su PHP 2017', 'Mindaugas Š.');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;

-- Dumping structure for table mindaugassimkus.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `surname` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `is_confirmed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table mindaugassimkus.customers: 0 rows
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table mindaugassimkus.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table mindaugassimkus.messages: 14 rows
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` (`id`, `body`, `time`) VALUES
	(1, 'Hello!! My first message in sql database.', '0000-00-00 00:00:00'),
	(2, 'Second message in sql database.', '0000-00-00 00:00:00'),
	(3, 'Third message in sql database.', '0000-00-00 00:00:00'),
	(4, 'zxcbxczvn', '2017-07-05 20:19:52'),
	(5, 'Fifth message.', '2017-07-05 20:21:20'),
	(6, ' fgasdfh', '2017-07-05 21:11:02'),
	(7, ' Hello again friend!', '2017-07-05 21:11:29'),
	(8, ' dghw435427338qwerÅ¡Ä™Ä—Ä¯', '2017-07-05 21:13:19'),
	(9, ' alachu akbar', '2017-07-05 21:17:57'),
	(10, ' ergjeyjÄ—Å¡ukÄ¯Å³Å³ikkfÄ™Ä—jbn  trju krÄ¯Å³ik Ä—Å¡ki ,ghk, tiu ', '2017-07-05 21:20:38'),
	(11, ' asdgasfg', '2017-07-05 21:22:27'),
	(12, ' asdgasfg', '2017-07-05 21:22:53'),
	(13, ' ndfghm', '2017-07-05 21:22:55'),
	(14, 'fdgsegh', '2017-07-10 18:29:22');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;

-- Dumping structure for table mindaugassimkus.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(50) COLLATE utf8_bin NOT NULL,
  `title` varchar(50) CHARACTER SET latin1 NOT NULL,
  `body` text CHARACTER SET latin1 NOT NULL,
  `banner_id` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='This is my pages table for my portfolio web';

-- Dumping data for table mindaugassimkus.pages: 3 rows
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `slug`, `title`, `body`, `banner_id`) VALUES
	(1, 'home', 'home', 'Hello, you are visiting my website!', 1),
	(2, 'about-me', 'about me', 'I am junior programmer.', 2),
	(3, 'contacts', 'contacts', 'You can call me on +37068888888', 3);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Dumping structure for table mindaugassimkus.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` text COLLATE utf8_bin,
  `product` text COLLATE utf8_bin,
  `brand` text COLLATE utf8_bin,
  `price` decimal(10,2) DEFAULT NULL,
  `weigth` decimal(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table mindaugassimkus.products: 5 rows
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `date`, `email`, `product`, `brand`, `price`, `weigth`, `description`) VALUES
	(1, '2017-07-08 10:28:10', 'add@added.com', 'Sneakers', 'Nike', 129.99, 0.36, 'Brand new sneakers by Nike.'),
	(2, '2017-07-08 10:44:09', 'hello@kitty.com', 'Doll', 'HelloKitty', 25.59, 0.26, 'New doll by HelloKitty.'),
	(3, '2017-07-08 11:03:13', 'info@bmw.eu', 'Vehicle', 'BMW', 59.96, 1796.00, 'Brand new BMW series 5 car.'),
	(4, '2017-07-08 11:14:05', 'juods@balts.com', 'PieniÅ³ vynas', 'KerbedÅ¾io', 66.36, 10.65, 'PieniÅ³ vynas mane svaigina. Lieva daina.'),
	(5, '2017-07-08 11:22:34', 'Piens@rugstus.eu', 'SÅ«relis', 'VilkyÅ¡kiÅ³', 0.35, 0.04, 'Skanus sÅ«relis iÅ¡ vilkiÅ¡kiÅ³.');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table mindaugassimkus.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `level` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table mindaugassimkus.users: 2 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `level`) VALUES
	(1, 'Mindaugas', 'code', 'admin'),
	(2, 'Petras', 'slaptas', 'user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
