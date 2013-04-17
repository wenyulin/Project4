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
-- Table structure for table `dim_airport`
--

DROP TABLE IF EXISTS `dim_airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_airport` (
  `id` int(11) NOT NULL,
  `airport_state` text,
  `airport_city` text,
  `airport_name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_airport`
--

LOCK TABLES `dim_airport` WRITE;
/*!40000 ALTER TABLE `dim_airport` DISABLE KEYS */;
INSERT INTO `dim_airport` VALUES (10001,'CA','San Jose','San Jose International Airport'),(10002,'CA','San Jose','Evergreen Regional Airport'),(10003,'CA','San Francisco','San Francisco International Airport'),(10004,'CA','Los Angeles','Los Angeles International Airport'),(10005,'NY','New York','John F. Kennedy International Airport'),(10006,'IL','Chicago','Chicago Midway International Airport'),(10007,'FL','Miami','Miami International Airport'),(10008,'FL','Orlando','Orlando Executive Airport'),(10009,'NV','Las Vegas','McCarran International Airport'),(10010,'UT','Salt Lake City','Salt Lake City International Airport'),(10011,'OR','Portland','Portland International Airport');
/*!40000 ALTER TABLE `dim_airport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-16 22:16:49
