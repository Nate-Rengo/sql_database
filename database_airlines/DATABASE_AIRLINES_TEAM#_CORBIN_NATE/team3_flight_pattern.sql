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
-- Table structure for table `flight_pattern`
--

DROP TABLE IF EXISTS `flight_pattern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_pattern` (
  `flight_id` int(11) NOT NULL,
  `airport_id` int(11) NOT NULL,
  `pattern_type` varchar(15) NOT NULL,
  PRIMARY KEY (`flight_id`,`airport_id`),
  KEY `airport_id` (`airport_id`),
  CONSTRAINT `flight_pattern_ibfk_1` FOREIGN KEY (`airport_id`) REFERENCES `airport` (`airport_id`),
  CONSTRAINT `flight_pattern_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_pattern`
--

LOCK TABLES `flight_pattern` WRITE;
/*!40000 ALTER TABLE `flight_pattern` DISABLE KEYS */;
INSERT INTO `flight_pattern` VALUES (1,1,'Departure'),(1,8,'Arrival'),(2,8,'Departure'),(2,13,'Arrival'),(3,7,'Departure'),(3,16,'Arrival'),(4,2,'Arrival'),(4,4,'Departure'),(5,6,'Departure'),(5,15,'Arrival'),(6,2,'Arrival'),(6,7,'Departure'),(7,9,'Departure'),(7,13,'Arrival'),(8,5,'Departure'),(8,6,'Arrival'),(9,3,'Arrival'),(9,11,'Departure'),(10,5,'Arrival'),(10,6,'Departure'),(11,8,'Arrival'),(11,12,'Departure'),(12,10,'Arrival'),(12,15,'Departure'),(13,4,'Departure'),(13,20,'Arrival'),(14,10,'Departure'),(14,21,'Arrival'),(15,7,'Arrival'),(15,13,'Departure'),(16,3,'Arrival'),(16,9,'Departure'),(17,3,'Departure'),(17,18,'Arrival'),(18,2,'Arrival'),(18,7,'Departure'),(19,4,'Departure'),(19,20,'Arrival'),(20,6,'Departure'),(20,15,'Arrival'),(21,8,'Arrival'),(21,12,'Departure'),(22,2,'Departure'),(22,16,'Arrival'),(23,5,'Arrival'),(23,6,'Departure'),(24,1,'Departure'),(24,13,'Arrival'),(25,7,'Arrival'),(25,13,'Departure'),(26,3,'Arrival'),(26,10,'Departure'),(27,6,'Arrival'),(27,8,'Departure'),(28,15,'Departure'),(28,20,'Arrival'),(29,4,'Departure'),(29,21,'Arrival'),(30,10,'Arrival'),(30,11,'Departure');
/*!40000 ALTER TABLE `flight_pattern` ENABLE KEYS */;
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
