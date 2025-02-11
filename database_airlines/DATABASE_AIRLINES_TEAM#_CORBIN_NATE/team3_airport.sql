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
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airport` (
  `airport_id` int(11) NOT NULL AUTO_INCREMENT,
  `longitude` varchar(20) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `airport_code` char(4) NOT NULL,
  `airport_name` varchar(100) NOT NULL,
  `airport_type` varchar(15) NOT NULL,
  PRIMARY KEY (`airport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES (1,'-73.778139','40.641311','JFK','John F. Kennedy International Airport','International'),(2,'-118.407962','33.941589','LAX','Los Angeles International Airport','International'),(3,'-87.904842','41.978611','PHX','Phoenix Sky Harbor International Airport','International'),(4,'-84.428067','33.640063','ATL','Hartsfield-Jackson Atlanta International Airport','International'),(5,'-95.336782','29.984433','IAH','George Bush Intercontinental Airport','International'),(6,'-80.152224','25.795865','MIA','Miami International Airport','International'),(7,'-71.020061','42.365613','BOS','Logan International Airport','International'),(8,'-87.902323','41.979595','MDW','Chicago Midway International Airport','International'),(9,'-118.144515','33.938238','SNA','John Wayne Airport','Regional'),(10,'-84.667822','39.901113','CVG','Cincinnati/Northern Kentucky International Airport','Regional'),(11,'-80.943139','35.214011','CLT','Charlotte Douglas International Airport','Regional'),(12,'-122.365666','47.450744','SEA','Seattle-Tacoma International Airport','Regional'),(13,'-73.872608','40.777245','LGA','LaGuardia Airport','Regional'),(14,'-97.037486','32.896828','DFW','Dallas/Fort Worth International Airport','Regional'),(15,'2.596506','49.012779','CDG','Charles de Gaulle Airport','International'),(16,'13.291822','52.558832','TXL','Berlin Tegel Airport','International'),(17,'121.790817','25.077731','TPE','Taiwan Taoyuan International Airport','International'),(18,'144.843581','-37.673333','MEL','Melbourne Airport','International'),(19,'-0.461389','51.471111','LGW','London Gatwick Airport','International'),(20,'-87.907321','41.974162','MDH','Southern Illinois Airport','Regional'),(21,'-116.529558','33.829937','LAS','McCarran International Airport','International');
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
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
