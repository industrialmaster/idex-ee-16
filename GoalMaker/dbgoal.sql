-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.18-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema dbgoal
--

CREATE DATABASE IF NOT EXISTS dbgoal;
USE dbgoal;

--
-- Definition of table `contribute`
--

DROP TABLE IF EXISTS `contribute`;
CREATE TABLE `contribute` (
  `id` int(11) NOT NULL auto_increment,
  `goal` int(11) NOT NULL,
  `amount` double NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_1_idx` (`goal`),
  CONSTRAINT `fk_1` FOREIGN KEY (`goal`) REFERENCES `goal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contribute`
--

/*!40000 ALTER TABLE `contribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `contribute` ENABLE KEYS */;


--
-- Definition of table `goal`
--

DROP TABLE IF EXISTS `goal`;
CREATE TABLE `goal` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `target_value` double NOT NULL,
  `target_date` date NOT NULL,
  `created_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goal`
--

/*!40000 ALTER TABLE `goal` DISABLE KEYS */;
INSERT INTO `goal` (`id`,`name`,`target_value`,`target_date`,`created_date`,`status`) VALUES 
 (1,'Become a Millionare',1000000,'2020-01-01','2018-05-27 13:14:18',1);
/*!40000 ALTER TABLE `goal` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
