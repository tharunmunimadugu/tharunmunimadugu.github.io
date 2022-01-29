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
CREATE DATABASE IF NOT EXISTS `order_book_system` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `order_book_system`;

-- Dumping structure for table order_book_system.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `Admin_id` int(11) DEFAULT NULL,
  `Admin_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- Dumping data for table order_book_system.admin: ~0 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table order_book_system.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `Customer_name` varchar(15) DEFAULT NULL,
  `Customer_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `customer` (`Customer_name`, `Customer_id`) VALUES
	('Hrudeestha', 9831)
	('Aditya', 9123);



-- Dumping data for table order_book_system.customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
CREATE TABLE IF NOT EXISTS `stock` (
  `Stock_name` varchar(50) DEFAULT NULL,
  `Stock_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table order_book_system.stock: ~5 rows (approximately)
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` (`Stock_name`, `Stock_id`) VALUES
	('DBS', 156),
	('chit_fund', 156),
	('jewellery', 121),
	('KCS', 164),
	('BRS', 102);

-- Dumping structure for table order_book_system.customer_order
CREATE TABLE IF NOT EXISTS `customer_order` (
  `order_id` int(11) NOT NULL,
  `Stock_name` varchar(10) DEFAULT NULL,
  `Order_qty` int(11) DEFAULT NULL,
  `Order_type` varchar(10) DEFAULT NULL,
  `Exec_qty` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Order_status` varchar(10) DEFAULT NULL,
  `Order_date` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table order_book_system.customer_order: ~8 rows (approximately)
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
INSERT INTO `customer_order` (`Order_id`, `Stock_name`, `Order_qty`, `Order_type`, `Exec_qty`, `Price`, `Order_status`, `Order_date`) VALUES
	(1, 'DBS', 50, 'LIMIT', 0, 150, 'PLACED', '21FEB2021'),
	(2, 'DBS', 50, 'market', 0, NULL, 'PLACED', '21FEB2021'),
	(3, 'DBS', 50, 'LIMIT', 0, 140, 'PLACED', '21FEB2021'),
	
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;

-- Dumping structure for table order_book_system.order_customer

-- Dumping data for table order_book_system.order_customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `order_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_customer` ENABLE KEYS */;

-- Dumping structure for table order_book_system.order_execution
CREATE TABLE IF NOT EXISTS `order_execution1` (
  `Order_id` int(11) DEFAULT NULL,
  `Stock_name` varchar(50) DEFAULT NULL,
  `Order_qty` int(11) DEFAULT NULL,
  `Order_type` varchar(50) DEFAULT NULL,
  `Exec_qty` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Order_status` varchar(50) DEFAULT NULL,
  `Order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `order_execution1` (`Order_id`, `Stock_name`, `Order_qty`, `Order_type`, `Exec_qty`, `Price`, `Order_status`, `Order_date`) VALUES
	(1, 'DBS', 50, 'LIMIT', 30, 150, 'ACCEPTED', '21FEB2021'),
	(2, 'DBS', 50, 'market', 30, NULL, 'ACCEPTED', '21FEB2021'),
	(3, 'DBS', 50, 'limit', 0, 140, 'REJECTED', '21FEB2021');
	
CREATE TABLE IF NOT EXISTS `order_execution2` (
  `Sno` int(11) DEFAULT NULL,
  `Stock_name` varchar(50) DEFAULT NULL,
  `Order_qty` int(11) DEFAULT NULL,
  `Order_type` varchar(50) DEFAULT NULL,
  `Exec_qty` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Order_status` varchar(50) DEFAULT NULL,
  `Order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;	

INSERT INTO `order_execution2` (`Sno`,`Order_id`, `Stock_name`, `Order_qty`, `Order_type`, `Exec_qty`, `Price`, `Order_status`, `Order_date`) VALUES
	(1, 'DBS', 50, 'limit', 50, 150, 'EXECUTED', '21FEB2021'),
	(2, 'DBS', 50, 'MARKET', 50, NULL, 'EXECUTED', '21FEB2021'),
	(3, 'DBS', 50, 'LIMIT', 0, 140, 'REJECTED', '21FEB2021');


-- Dumping data for table order_book_system.order_execution: ~0 rows (approximately)
/*!40000 ALTER TABLE `order_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_execution` ENABLE KEYS */;

-- Dumping structure for table order_book_system.stock

/*!40000 ALTER TABLE `stock` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
