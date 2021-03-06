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
-- Table structure for table `dim_airplane`
--

DROP TABLE IF EXISTS `dim_airplane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_airplane` (
  `id` int(11) NOT NULL,
  `manufacturer` text,
  `model_number` text,
  `model_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_airplane`
--

LOCK TABLES `dim_airplane` WRITE;
/*!40000 ALTER TABLE `dim_airplane` DISABLE KEYS */;
INSERT INTO `dim_airplane` VALUES (19393,'Boeing Commercial Airplanes','787',330),(19690,'Boeing Commercial Airplanes','747',580),(19790,'Boeing Commercial Airplanes','777',550),(19805,'Boeing Commercial Airplanes','777',550),(19930,'Boeing Commercial Airplanes','737',215),(19977,'Boeing Commercial Airplanes','767',375),(20304,'Boeing Commercial Airplanes','747',580),(20355,'Airbus','A380',555),(20366,'Airbus','A350',350),(20378,'Airbus','A330',295),(20398,'Airbus','A340',380),(20409,'Airbus','A380',555);
/*!40000 ALTER TABLE `dim_airplane` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-17 15:40:22
