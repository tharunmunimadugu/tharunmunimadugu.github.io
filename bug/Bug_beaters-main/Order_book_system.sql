-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.5-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for order_book_system
DROP DATABASE IF EXISTS `order_book_system`;
CREATE DATABASE IF NOT EXISTS `order_book_system` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `order_book_system`;

-- Dumping structure for table order_book_system.customer
DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `Stock_name` varchar(15) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table order_book_system.customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table order_book_system.order_details
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `order_id` int(11) NOT NULL,
  `Stock_name` varchar(10) DEFAULT NULL,
  `order_quantity` int(11) DEFAULT NULL,
  `order_type` varchar(10) DEFAULT NULL,
  `Executed_qnty` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `order_status` varchar(10) DEFAULT NULL,
  `order_date` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table order_book_system.order_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` (`order_id`, `Stock_name`, `order_quantity`, `order_type`, `Executed_qnty`, `price`, `order_status`, `order_date`) VALUES
	(1, 'DBS', 50, 'LIMIT', 0, 150, 'PLACED', '21FEB2021'),
	(2, 'DBS', 50, 'market', 0, NULL, 'PLACED', '21FEB2021'),
	(3, 'DBS', 50, 'LIMIT', 0, 140, 'PLACED', '21FEB2021'),
	(4, 'DBS', 50, 'LIMIT', 30, 150, 'ACCEPTED', '21FEB2021'),
	(5, 'DBS', 50, 'market', 30, NULL, 'ACCEPTED', '21FEB2021'),
	(6, 'DBS', 50, 'limit', 0, 140, 'REJECTED', '21FEB2021'),
	(7, 'DBS', 50, 'limit', 50, 150, 'EXECUTED', '21FEB2021'),
	(8, 'DBS', 50, 'MARKET', 50, NULL, 'EXECUTED', '21FEB2021'),
	(9, 'DBS', 50, 'LIMIT', 0, 140, 'REJECTED', '21FEB2021');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
