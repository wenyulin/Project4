CREATE DATABASE  IF NOT EXISTS `star` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `star`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: star
-- ------------------------------------------------------
-- Server version	5.5.29-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `air_ticket`
--

DROP TABLE IF EXISTS `air_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `air_ticket` (
  `id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `profit` int(11) DEFAULT NULL,
  `dim_airport_id` int(11) NOT NULL,
  `dim_time_id` int(11) NOT NULL,
  `dim_airplane_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_air_ticket_dim_airport_idx` (`dim_airport_id`),
  KEY `fk_air_ticket_dim_time1_idx` (`dim_time_id`),
  KEY `fk_air_ticket_dim_airplane1_idx` (`dim_airplane_id`),
  CONSTRAINT `fk_air_ticket_dim_airport` FOREIGN KEY (`dim_airport_id`) REFERENCES `dim_airport` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_air_ticket_dim_time1` FOREIGN KEY (`dim_time_id`) REFERENCES `dim_time` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_air_ticket_dim_airplane1` FOREIGN KEY (`dim_airplane_id`) REFERENCES `dim_airplane` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `air_ticket`
--

LOCK TABLES `air_ticket` WRITE;
/*!40000 ALTER TABLE `air_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `air_ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-16 22:16:46
