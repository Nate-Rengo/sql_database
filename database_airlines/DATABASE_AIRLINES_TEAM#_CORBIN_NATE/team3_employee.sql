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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `employee_type` char(1) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` char(2) NOT NULL,
  `zipcode` varchar(5) NOT NULL,
  `street` varchar(40) NOT NULL,
  `onboard_date` date NOT NULL,
  PRIMARY KEY (`employee_id`),
  CONSTRAINT `employee_type` CHECK (`employee_type` = 'P' or `employee_type` = 'A')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'John','Doe','P','1234567890','john.doe@email.com','New York','NY','10001','Broadway St 123','2022-01-15'),(2,'Jane','Smith','P','2345678901','jane.smith@email.com','Los Angeles','CA','90001','Hollywood Blvd 456','2022-02-20'),(3,'David','Miller','P','3456789012','david.miller@email.com','Chicago','IL','60601','Michigan Ave 789','2022-03-25'),(4,'Emily','Jones','P','4567890123','emily.jones@email.com','Houston','TX','77001','Main St 1011','2022-04-30'),(5,'Michael','Johnson','P','5678901234','michael.johnson@email.com','San Francisco','CA','94101','Market St 1213','2022-05-15'),(6,'Olivia','Davis','P','6789012345','olivia.davis@email.com','Miami','FL','33101','Ocean Dr 1415','2022-06-20'),(7,'Daniel','Martinez','P','7890123456','daniel.martinez@email.com','Seattle','WA','98101','Pike Pl 1617','2022-07-25'),(8,'Sophia','Clark','P','8901234567','sophia.clark@email.com','Denver','CO','80201','16th St 1819','2022-08-30'),(9,'James','Taylor','P','9012345678','james.taylor@email.com','Orlando','FL','32801','Orange Ave 2021','2022-09-15'),(10,'Ava','Wilson','P','1234567890','ava.wilson@email.com','Dallas','TX','75201','Main St 2223','2022-10-20'),(11,'Alexander','Brown','P','2345678901','alexander.brown@email.com','Phoenix','AZ','85001','Camelback Rd 2425','2022-11-25'),(12,'Mia','Moore','P','3456789012','mia.moore@email.com','Boston','MA','02101','Boylston St 2627','2022-12-30'),(13,'Liam','Anderson','P','4567890123','liam.anderson@email.com','Atlanta','GA','30301','Peachtree St 2829','2023-01-15'),(14,'Ella','Thomas','P','5678901234','ella.thomas@email.com','Las Vegas','NV','89101','The Strip 3031','2023-02-20'),(15,'William','Harris','P','6789012345','william.harris@email.com','Philadelphia','PA','19101','Market St 3233','2023-03-25'),(16,'Sophie','Brown','A','7890123456','sophie.brown@email.com','San Diego','CA','92101','Gaslamp Quarter 3435','2022-04-01'),(17,'Jack','Garcia','A','8901234567','jack.garcia@email.com','New Orleans','LA','70112','Bourbon St 3637','2022-05-05'),(18,'Grace','Rodriguez','A','9012345678','grace.rodriguez@email.com','Minneapolis','MN','55401','Nicollet Mall 3839','2022-06-10'),(19,'Aiden','Lopez','A','1234567890','aiden.lopez@email.com','Portland','OR','97201','Pearl District 4041','2022-07-15'),(20,'Aria','Perez','A','2345678901','aria.perez@email.com','Salt Lake City','UT','84101','Temple Square 4243','2022-08-20'),(21,'Logan','Wright','A','3456789012','logan.wright@email.com','Detroit','MI','48201','Woodward Ave 4445','2022-09-25'),(22,'Zoe','Young','A','4567890123','zoe.young@email.com','Austin','TX','78701','6th St 4647','2022-10-30'),(23,'Lucas','King','A','5678901234','lucas.king@email.com','Nashville','TN','37201','Broadway 4849','2022-11-04'),(24,'Lily','Scott','A','6789012345','lily.scott@email.com','Raleigh','NC','27601','Fayetteville St 5051','2022-12-09'),(25,'Caleb','Turner','A','7890123456','caleb.turner@email.com','San Antonio','TX','78201','River Walk 5253','2023-01-14'),(26,'Hailey','Diaz','A','8901234567','hailey.diaz@email.com','Memphis','TN','38101','Beale St 5455','2023-02-19'),(27,'Henry','Hernandez','A','9012345678','henry.hernandez@email.com','Tampa','FL','33601','Channelside Dr 5657','2023-03-26'),(28,'Nora','Fisher','A','1234567890','nora.fisher@email.com','St. Louis','MO','63101','Delmar Blvd 5859','2023-04-30'),(29,'Eli','Reyes','A','2345678901','eli.reyes@email.com','Cleveland','OH','44101','Euclid Ave 6061','2023-05-05'),(30,'Mila','Ramirez','A','3456789012','mila.ramirez@email.com','Kansas City','MO','64101','Country Club Plaza 6263','2023-06-10');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
