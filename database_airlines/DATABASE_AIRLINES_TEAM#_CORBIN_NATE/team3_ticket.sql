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
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `customer_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `ticket_type` varchar(20) NOT NULL,
  `price_usd` float NOT NULL,
  `pay_status` tinyint(1) NOT NULL,
  `notes` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,1,'2023-12-01','Economy',1500,1,'Wheelchair'),(31,2,'2023-12-02','First Class',1800,1,NULL),(32,3,'2023-12-03','Economy',1200,1,NULL),(33,4,'2023-12-04','First Class',1900,0,NULL),(34,5,'2023-12-05','Economy',800,1,NULL),(35,6,'2023-12-06','First Class',2000,1,NULL),(36,7,'2023-12-07','Economy',1300,1,NULL),(37,8,'2023-12-08','First Class',1700,1,'Blind'),(38,9,'2023-12-09','Economy',900,0,NULL),(39,10,'2023-12-10','First Class',1600,1,NULL),(40,11,'2023-12-11','Economy',1100,1,NULL),(41,12,'2023-12-12','First Class',2000,1,'Wheelchair'),(42,13,'2023-12-13','Economy',1000,1,NULL),(43,14,'2023-12-14','First Class',1500,0,NULL),(44,15,'2023-12-15','Economy',1400,1,NULL),(45,16,'2023-12-16','First Class',1800,1,NULL),(46,17,'2023-12-17','Economy',950,1,'Hearing Impaired'),(47,18,'2023-12-18','First Class',1700,1,NULL),(48,19,'2023-12-19','Economy',1300,0,NULL),(49,20,'2023-12-20','First Class',2000,1,NULL),(50,21,'2023-12-21','Economy',850,1,NULL),(51,22,'2023-12-22','First Class',1900,1,NULL),(52,23,'2023-12-23','Economy',1100,1,NULL),(53,24,'2023-12-24','First Class',1800,1,NULL),(54,25,'2023-12-25','Economy',1200,1,NULL),(55,26,'2023-12-26','First Class',1500,0,NULL),(56,27,'2023-12-27','Economy',1000,1,NULL),(57,28,'2023-12-28','First Class',1600,1,NULL),(58,29,'2023-12-29','Economy',950,1,NULL),(59,30,'2023-12-30','First Class',1700,1,'Blind'),(1,31,'2022-05-15','Economy',1500,1,NULL),(1,32,'2022-06-20','First Class',1800,1,NULL),(1,33,'2022-07-25','Economy',1200,1,NULL),(1,34,'2022-08-30','First Class',1900,0,NULL),(31,35,'2022-09-05','Economy',800,1,NULL),(31,36,'2022-10-10','First Class',2000,1,NULL),(31,37,'2022-11-15','Economy',1300,1,NULL),(31,38,'2022-12-20','First Class',1700,1,'Blind'),(32,39,'2023-01-25','Economy',900,0,NULL),(32,40,'2023-02-22','First Class',1600,1,NULL),(32,41,'2023-03-05','Economy',1100,1,NULL),(32,42,'2023-04-10','First Class',2000,1,'Wheelchair'),(33,43,'2023-05-15','Economy',1000,1,NULL),(33,44,'2023-06-20','First Class',1500,0,NULL),(33,45,'2023-07-25','Economy',1400,1,NULL),(33,46,'2023-08-30','First Class',1800,1,NULL),(34,47,'2023-09-05','Economy',950,1,'Hearing Impaired'),(34,48,'2023-10-10','First Class',1700,1,NULL),(34,49,'2023-11-15','Economy',1300,0,NULL),(34,50,'2023-12-20','First Class',2000,1,NULL),(35,51,'2024-01-25','Economy',850,1,NULL),(35,52,'2024-02-22','First Class',1900,1,NULL),(35,53,'2024-03-05','Economy',1100,1,NULL),(35,54,'2024-04-10','First Class',1800,1,NULL),(36,55,'2024-05-15','Economy',1200,1,NULL),(36,56,'2024-06-20','First Class',1500,0,NULL),(36,57,'2024-07-25','Economy',1000,1,NULL),(36,58,'2024-08-30','First Class',1600,1,NULL),(37,59,'2024-09-05','Economy',950,1,NULL),(37,60,'2024-10-10','First Class',1700,1,'Blind'),(45,89,'2020-03-05','Economy',950,1,NULL),(45,90,'2020-04-10','First Class',1600,1,NULL),(45,91,'2020-05-15','Economy',1300,1,NULL),(45,92,'2020-06-20','First Class',1700,1,NULL),(46,93,'2021-07-25','Economy',800,1,'Wheelchair'),(46,94,'2021-08-30','First Class',1500,0,NULL),(46,95,'2021-09-05','Economy',1400,1,NULL),(46,96,'2021-10-10','First Class',2000,1,NULL),(47,97,'2022-11-15','Economy',1000,1,NULL),(47,98,'2022-12-20','First Class',1400,1,'Blind'),(47,99,'2023-01-25','Economy',900,1,NULL),(47,100,'2023-02-28','First Class',1600,1,NULL),(48,101,'2023-03-05','Economy',850,1,'Hearing Impaired'),(48,102,'2023-04-10','First Class',1800,1,NULL),(48,103,'2023-05-15','Economy',1200,1,NULL),(48,104,'2023-06-20','First Class',1700,1,NULL),(49,105,'2023-07-25','Economy',1000,0,NULL),(49,106,'2023-08-30','First Class',1500,1,'Wheelchair'),(49,107,'2023-09-05','Economy',1400,1,NULL),(49,108,'2023-10-10','First Class',2000,1,NULL),(50,109,'2023-11-15','Economy',1100,1,NULL),(50,110,'2023-12-20','First Class',1800,1,NULL),(50,111,'2024-01-25','Economy',1200,0,NULL),(50,112,'2024-02-29','First Class',1900,1,'Hearing Impaired'),(51,113,'2020-03-05','Economy',950,1,'Blind'),(51,114,'2020-04-10','First Class',1600,1,NULL),(51,115,'2020-05-15','Economy',1300,1,NULL),(51,116,'2020-06-20','First Class',1700,1,NULL),(52,117,'2021-07-25','Economy',800,1,NULL),(52,118,'2021-08-30','First Class',1500,0,NULL),(52,119,'2021-09-05','Economy',1400,1,NULL),(52,120,'2021-10-10','First Class',2000,1,NULL),(53,121,'2022-11-15','Economy',1000,1,'Hearing Impaired'),(53,122,'2022-12-20','First Class',1400,1,NULL),(53,123,'2023-01-25','Economy',900,1,NULL),(53,124,'2023-02-28','First Class',1600,1,NULL),(54,125,'2023-03-05','Economy',850,1,NULL),(54,126,'2023-04-10','First Class',1800,1,'Blind'),(54,127,'2023-05-15','Economy',1200,1,NULL),(54,128,'2023-06-20','First Class',1700,1,NULL),(55,129,'2023-07-25','Economy',1000,0,NULL),(55,130,'2023-08-30','First Class',1500,1,'Wheelchair'),(55,131,'2023-09-05','Economy',1400,1,NULL),(55,132,'2023-10-10','First Class',2000,1,NULL),(56,133,'2023-11-15','Economy',1100,1,NULL),(56,134,'2023-12-20','First Class',1800,1,NULL),(56,135,'2024-01-25','Economy',1200,0,NULL),(56,136,'2024-02-29','First Class',1900,1,'Hearing Impaired'),(57,137,'2020-03-05','Economy',950,1,NULL),(57,138,'2020-03-05','First Class',1600,1,NULL),(57,139,'2020-04-10','Economy',1300,1,NULL),(57,140,'2020-04-10','First Class',1700,1,NULL),(58,141,'2021-07-25','Economy',800,1,'Wheelchair'),(58,142,'2021-07-25','First Class',1500,0,NULL),(58,143,'2021-08-30','Economy',1400,1,NULL),(58,144,'2021-08-30','First Class',2000,1,NULL),(59,145,'2022-11-15','Economy',1000,1,NULL),(59,146,'2022-11-15','First Class',1400,1,'Blind'),(59,147,'2022-12-20','Economy',900,1,NULL),(59,148,'2022-12-20','First Class',1600,1,NULL),(45,149,'2023-03-05','Economy',850,1,'Hearing Impaired'),(45,150,'2023-03-05','First Class',1800,1,NULL),(45,151,'2023-04-10','Economy',1200,1,NULL),(31,152,'2023-04-10','First Class',1700,1,NULL),(32,153,'2023-07-25','Economy',1000,0,NULL),(35,154,'2023-07-25','First Class',1500,1,'Wheelchair'),(35,155,'2023-08-30','Economy',1400,1,NULL),(34,156,'2023-08-30','First Class',2000,1,NULL),(34,157,'2023-11-15','Economy',1100,1,NULL),(34,158,'2023-11-15','First Class',1800,1,NULL),(34,159,'2023-12-20','Economy',1200,0,NULL),(1,160,'2023-12-20','First Class',1900,1,'Hearing Impaired'),(1,161,'2020-03-05','Economy',950,1,NULL),(1,162,'2020-03-05','First Class',1600,1,NULL),(1,163,'2020-04-10','Economy',1300,1,NULL),(1,164,'2020-04-10','First Class',1700,1,NULL),(31,165,'2021-07-25','Economy',800,1,'Wheelchair'),(31,166,'2021-07-25','First Class',1500,0,NULL),(31,167,'2021-08-30','Economy',1400,1,NULL),(31,168,'2021-08-30','First Class',2000,1,NULL),(32,169,'2022-11-15','Economy',1000,1,NULL),(32,170,'2022-11-15','First Class',1400,1,'Blind'),(32,171,'2022-12-20','Economy',900,1,NULL),(32,172,'2022-12-20','First Class',1600,1,NULL),(33,173,'2023-03-05','Economy',850,1,'Hearing Impaired'),(33,174,'2023-03-05','First Class',1800,1,NULL),(33,175,'2023-04-10','Economy',1200,1,NULL),(33,176,'2023-04-10','First Class',1700,1,NULL),(34,177,'2023-07-25','Economy',1000,0,NULL),(34,178,'2023-07-25','First Class',1500,1,'Wheelchair'),(34,179,'2023-08-30','Economy',1400,1,NULL),(34,180,'2023-08-30','First Class',2000,1,NULL),(35,181,'2023-11-15','Economy',1100,1,NULL),(35,182,'2023-11-15','First Class',1800,1,NULL),(35,183,'2023-12-20','Economy',1200,0,NULL),(35,184,'2023-12-20','First Class',1900,1,'Hearing Impaired');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
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
