CREATE DATABASE  IF NOT EXISTS `team3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `team3`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: radyweb.wsc.western.edu    Database: team3
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.38-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aircraft`
--

DROP TABLE IF EXISTS `aircraft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aircraft` (
  `aircraft_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(50) NOT NULL,
  `manufacturer` varchar(50) NOT NULL,
  `capacity_persons` int(11) NOT NULL,
  `range_miles` int(11) NOT NULL,
  `tail_number` varchar(6) NOT NULL,
  PRIMARY KEY (`aircraft_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aircraft`
--

LOCK TABLES `aircraft` WRITE;
/*!40000 ALTER TABLE `aircraft` DISABLE KEYS */;
INSERT INTO `aircraft` VALUES (1,'Boeing 737','Boeing',150,2900,'N123AB'),(2,'Airbus A220','Airbus',140,3400,'N456CD'),(3,'Airbus A320','Airbus',160,3200,'N789EF'),(4,'Embraer E175','Embraer',76,1800,'N012XY'),(5,'Boeing 747','Boeing',660,8000,'N345FG'),(6,'Airbus A380','Airbus',853,8200,'N678HI'),(7,'Airbus A350','Airbus',440,8100,'N901LM'),(8,'Boeing 757','Boeing',200,3900,'N234JK'),(9,'Boeing 767','Boeing',245,4400,'N567LN'),(10,'Boeing 717','Boeing',110,1500,'N890DF'),(11,'Embraer E190','Embraer',100,2500,'N123PH'),(12,'Bombardier CRJ700','Bombardier',78,1700,'N456CR'),(13,'Boeing 737','Boeing',160,3100,'N789BJ'),(14,'Airbus A220','Airbus',135,3300,'N012AC'),(15,'Airbus A320','Airbus',168,3300,'N345DL');
/*!40000 ALTER TABLE `aircraft` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-08 11:05:39
