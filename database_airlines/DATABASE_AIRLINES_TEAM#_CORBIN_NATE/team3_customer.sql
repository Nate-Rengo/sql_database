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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `street` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` char(2) NOT NULL,
  `zipcode` varchar(5) NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `membership` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`membership` = 'Bronze' or `membership` = 'Silver' or `membership` = 'Elite' or `membership` = 'Gold')
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Alice','Johnson','123 Main St','New York','NY','10001','5555551234','Gold'),(31,'Bob','Smith','456 Oak St','Los Angeles','CA','90001','5555555678','Silver'),(32,'Charlie','Williams','789 Pine St','Chicago','IL','60601','5555559876','Bronze'),(33,'David','Jones','101 Elm St','Houston','TX','77001','5555554321','Elite'),(34,'Emily','Taylor','202 Cedar St','Phoenix','AZ','85001','5555557890',NULL),(35,'Frank','Anderson','303 Maple St','Philadelphia','PA','19101','5555552345','Gold'),(36,'Grace','Thomas','404 Walnut St','San Antonio','TX','78201','5555556789','Silver'),(37,'Henry','Harris','505 Cherry St','San Diego','CA','92101','5555558765','Bronze'),(38,'Isabel','Miller','606 Birch St','Dallas','TX','75201','5555553210','Elite'),(39,'Jack','Young','707 Pine St','San Jose','CA','95101','5555556789',NULL),(40,'Liam','Brown','111 Oak St','Seattle','WA','98101','5555559876','Gold'),(41,'Olivia','Davis','222 Pine St','Denver','CO','80201','5555552345','Silver'),(42,'Noah','Moore','333 Maple St','Atlanta','GA','30301','5555557890','Bronze'),(43,'Ava','Wilson','444 Cedar St','Miami','FL','33101','5555555432','Elite'),(44,'Ethan','Clark','555 Elm St','Boston','MA','02101','5555558765',NULL),(45,'Sophia','Rodriguez','666 Birch St','San Francisco','CA','94101','5555554321','Gold'),(46,'Mia','Garcia','777 Walnut St','Detroit','MI','48201','5555557890','Silver'),(47,'Jackson','Martinez','888 Cherry St','Minneapolis','MN','55401','5555552345','Bronze'),(48,'Amelia','Taylor','999 Cedar St','Charlotte','NC','28201','5555556789','Elite'),(49,'Logan','Anderson','123 Pine St','Portland','OR','97201','5555559876','Gold'),(50,'William','White','234 Maple St','Nashville','TN','37201','5555557890','Bronze'),(51,'Scarlett','Hernandez','345 Cedar St','Austin','TX','78701','5555552345','Elite'),(52,'James','Martin','456 Walnut St','Raleigh','NC','27601','5555555432','Gold'),(53,'Lily','Perez','567 Pine St','Louisville','KY','40201','5555558765','Silver'),(54,'Benjamin','Turner','678 Oak St','Milwaukee','WI','53201','5555554321','Bronze'),(55,'Aria','Harris','789 Birch St','Las Vegas','NV','89101','5555557890','Elite'),(56,'Henry','Robinson','890 Cherry St','Memphis','TN','38101','5555552345',NULL),(57,'Grace','Lopez','901 Cedar St','Oklahoma City','OK','73101','5555556789','Gold'),(58,'Mason','King','012 Elm St','Albuquerque','NM','87101','5555559876','Silver'),(59,'Avery','Baker','123 Walnut St','Tucson','AZ','85701','5555554321','Bronze');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-08 11:05:37
