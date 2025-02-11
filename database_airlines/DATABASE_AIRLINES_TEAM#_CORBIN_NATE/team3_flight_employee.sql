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
-- Table structure for table `flight_employee`
--

DROP TABLE IF EXISTS `flight_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_employee` (
  `flight_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`flight_id`,`employee_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `flight_employee_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `flight_employee_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_employee`
--

LOCK TABLES `flight_employee` WRITE;
/*!40000 ALTER TABLE `flight_employee` DISABLE KEYS */;
INSERT INTO `flight_employee` VALUES (1,1),(1,4),(1,16),(1,19),(2,3),(2,7),(2,9),(2,29),(3,5),(3,6),(3,20),(3,27),(4,8),(4,10),(4,15),(4,23),(5,2),(5,11),(5,24),(5,25),(6,2),(6,7),(6,12),(6,21),(7,1),(7,8),(7,14),(7,28),(8,9),(8,16),(8,18),(8,30),(9,3),(9,4),(9,17),(9,26),(10,5),(10,15),(10,19),(10,21),(11,6),(11,10),(11,11),(11,27),(12,13),(12,14),(12,23),(12,26),(13,1),(13,20),(13,25),(13,27),(14,2),(14,7),(14,8),(14,13),(15,12),(15,15),(15,29),(15,30),(16,3),(16,4),(16,17),(16,18),(17,5),(17,6),(17,20),(17,21),(18,9),(18,10),(18,22),(18,23),(19,2),(19,11),(19,24),(19,25),(20,13),(20,14),(20,26),(20,27),(21,8),(21,19),(21,28),(21,29),(22,7),(22,12),(22,14),(22,15),(23,3),(23,15),(23,16),(23,23),(24,4),(24,5),(24,9),(24,20),(25,6),(25,17),(25,21),(25,22),(26,8),(26,9),(26,23),(26,24),(27,10),(27,11),(27,25),(27,26),(28,12),(28,13),(28,27),(28,28),(29,14),(29,15),(29,29),(29,30),(30,1),(30,2),(30,16),(30,17);
/*!40000 ALTER TABLE `flight_employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-08 11:05:38
