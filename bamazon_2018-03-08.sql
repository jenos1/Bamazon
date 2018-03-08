# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.35)
# Database: bamazon
# Generation Time: 2018-03-08 12:15:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `product_name`, `department_name`, `price`, `stock_quantity`)
VALUES
	(1,'Penn Championship Extra Duty Tennis Ball Can, 3 balls','Sports & Outdoors',6.99,97),
	(2,'Wilson Hyper Hammer 5.3 Strung Tennis Racket','Sports & Outdoors',78.60,50),
	(3,'Callaway Hex Chrome Plus Golf Ball (12-Pack)','Sports & Outdoors',15.00,35),
	(4,'KONG Classic Dog Toy, Small, Red','Pet Supplies',4.52,75),
	(5,'Wellness CORE Natural Grain Free Dry Dog Food','Pet Supplies',35.99,200),
	(6,'Wellness Natural WellBites Soft Dog Treats','Pet Supplies',8.49,24),
	(7,'Super Sensitive Dark Violin Rosin','Musical Instruments',2.84,150),
	(8,'DAddario NS Micro Violin Tuner','Musical Instruments',14.99,15),
	(9,'DAddario Helicore 4/4 Size Violin Strings 4/4 Size Set with Steel E String','Musical Instruments',38.99,500),
	(10,'String Swing Home & Studio Violin Hanger','Musical Instruments',11.99,80);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
