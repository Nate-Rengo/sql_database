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
-- Table structure for table `ticket_flight`
--

DROP TABLE IF EXISTS `ticket_flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_flight` (
  `flight_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `seat_num` varchar(4) NOT NULL,
  PRIMARY KEY (`flight_id`,`ticket_id`),
  KEY `ticket_id` (`ticket_id`),
  CONSTRAINT `ticket_flight_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`ticket_id`),
  CONSTRAINT `ticket_flight_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_flight`
--

LOCK TABLES `ticket_flight` WRITE;
/*!40000 ALTER TABLE `ticket_flight` DISABLE KEYS */;
INSERT INTO `ticket_flight` VALUES (1,39,'37A'),(1,42,'65B'),(1,93,'49E'),(1,169,'52A'),(1,180,'31D'),(2,9,'99D'),(3,56,'5A'),(3,104,'7D'),(3,112,'17A'),(3,122,'19C'),(3,136,'31B'),(3,183,'32A'),(4,109,'88C'),(4,123,'13C'),(4,147,'16C'),(5,37,'84C'),(5,184,'51E'),(6,4,'60C'),(6,17,'52C'),(6,59,'79B'),(6,108,'11E'),(6,171,'44C'),(6,176,'41B'),(7,29,'99D'),(7,33,'60A'),(7,90,'70B'),(7,127,'28C'),(8,36,'53A'),(8,151,'18E'),(8,175,'51C'),(9,51,'67E'),(9,95,'16C'),(9,100,'79C'),(9,117,'51C'),(9,141,'73C'),(9,173,'57C'),(10,12,'95E'),(10,40,'36E'),(10,126,'6A'),(10,142,'35C'),(10,155,'16E'),(11,1,'20B'),(11,7,'30B'),(11,15,'18A'),(11,22,'73A'),(11,30,'14B'),(11,31,'19E'),(11,48,'92E'),(11,53,'45B'),(11,106,'10A'),(11,113,'56E'),(11,119,'81E'),(11,120,'11A'),(11,124,'32D'),(11,129,'46B'),(12,14,'54D'),(12,60,'81C'),(12,91,'63D'),(12,139,'71A'),(12,144,'84C'),(13,118,'55A'),(13,179,'1C'),(14,32,'20B'),(14,46,'55C'),(14,50,'9B'),(14,128,'77C'),(14,130,'78B'),(14,143,'91E'),(14,152,'17D'),(14,165,'42E'),(14,181,'16C'),(15,35,'10E'),(15,101,'53E'),(15,153,'16B'),(16,13,'34E'),(16,55,'16A'),(16,103,'34E'),(16,125,'1C'),(16,145,'32B'),(17,54,'36D'),(17,107,'21E'),(17,138,'53E'),(18,2,'62C'),(18,16,'12B'),(18,24,'45C'),(18,28,'21E'),(18,44,'100B'),(18,92,'82B'),(18,98,'12D'),(18,149,'69E'),(18,160,'58A'),(19,8,'57D'),(19,20,'43E'),(19,25,'33C'),(19,27,'65D'),(19,164,'23C'),(19,166,'68D'),(20,156,'58E'),(20,157,'49E'),(20,158,'9B'),(20,174,'78C'),(20,178,'97E'),(21,19,'16D'),(21,111,'28E'),(21,167,'50C'),(22,23,'37E'),(22,41,'7E'),(22,99,'15C'),(22,114,'9A'),(22,132,'36C'),(22,177,'25D'),(23,26,'88D'),(23,52,'58E'),(23,115,'3A'),(23,159,'85B'),(23,168,'84E'),(24,18,'25C'),(24,57,'6D'),(24,97,'51D'),(25,49,'10E'),(25,89,'4D'),(25,105,'36A'),(25,135,'74C'),(25,140,'16C'),(25,146,'8E'),(25,148,'98E'),(25,161,'59D'),(26,47,'25E'),(26,121,'59A'),(26,182,'46D'),(27,11,'86E'),(27,21,'3A'),(27,102,'70D'),(27,133,'35D'),(27,137,'69D'),(27,150,'77B'),(27,163,'65E'),(28,3,'47E'),(28,10,'27D'),(28,43,'57C'),(28,45,'65B'),(28,94,'14D'),(28,110,'61B'),(28,134,'36C'),(29,6,'57D'),(29,34,'76E'),(29,116,'1C'),(29,131,'11B'),(30,5,'69E'),(30,38,'25D'),(30,58,'16E'),(30,96,'42B'),(30,154,'91A'),(30,162,'99D'),(30,170,'86B'),(30,172,'51B');
/*!40000 ALTER TABLE `ticket_flight` ENABLE KEYS */;
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
