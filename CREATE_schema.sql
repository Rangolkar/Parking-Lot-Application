CREATE DATABASE  IF NOT EXISTS `dbms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbms`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: dbms
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `authenticate`
--

DROP TABLE IF EXISTS `authenticate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authenticate` (
  `id` int NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='User Authentication';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `citation`
--

DROP TABLE IF EXISTS `citation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citation` (
  `citationno` int NOT NULL AUTO_INCREMENT,
  `carlicenseno` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `fine` varchar(45) NOT NULL,
  `time` time NOT NULL,
  `lot` varchar(45) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `due_date` date NOT NULL,
  `model` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  PRIMARY KEY (`citationno`)
) ENGINE=InnoDB AUTO_INCREMENT=10007 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Citations created are updated here';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `citationno` int NOT NULL,
  `phoneno` varchar(45) DEFAULT NULL,
  `univid` int DEFAULT NULL,
  KEY `Fknoti_idx` (`citationno`),
  CONSTRAINT `Fknoti` FOREIGN KEY (`citationno`) REFERENCES `citation` (`citationno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Notification table for indicating status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nvpermit`
--

DROP TABLE IF EXISTS `nvpermit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nvpermit` (
  `permitid` varchar(45) NOT NULL,
  `univid` int NOT NULL,
  `zoneid` varchar(45) NOT NULL,
  `startdate` date NOT NULL,
  `expdate` date NOT NULL,
  `exptime` time NOT NULL,
  `type` varchar(45) NOT NULL DEFAULT 'regular',
  PRIMARY KEY (`permitid`),
  KEY `for1_idx` (`univid`),
  CONSTRAINT `for2` FOREIGN KEY (`univid`) REFERENCES `nvuser` (`univid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Non Visitor Permits issued ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nvuser`
--

DROP TABLE IF EXISTS `nvuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nvuser` (
  `univid` int NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`univid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Non-Visitor User database';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `parkinglot`
--

DROP TABLE IF EXISTS `parkinglot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parkinglot` (
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `totalspaces` int NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Information of Parking lot';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `space`
--

DROP TABLE IF EXISTS `space`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `space` (
  `parkinglot` varchar(45) NOT NULL,
  `visitor_spaces` int DEFAULT NULL,
  `visitor_handicap_space` int DEFAULT NULL,
  `visitor_electric_space` int DEFAULT NULL,
  `starting_space_visitor` int DEFAULT NULL,
  `starting_space_handicap` int DEFAULT NULL,
  `starting_space_electric` int DEFAULT NULL,
  KEY `prim_idx` (`parkinglot`),
  CONSTRAINT `prim` FOREIGN KEY (`parkinglot`) REFERENCES `parkinglot` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Spaces allocation count table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `carlicenseno` varchar(45) NOT NULL,
  `year` int NOT NULL,
  `model` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `manufacturer` varchar(45) NOT NULL,
  `univid` int DEFAULT NULL,
  PRIMARY KEY (`carlicenseno`),
  KEY `for1_idx` (`univid`),
  CONSTRAINT `for1` FOREIGN KEY (`univid`) REFERENCES `nvuser` (`univid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Vehicle information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vpermit`
--

DROP TABLE IF EXISTS `vpermit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vpermit` (
  `permitid` varchar(45) NOT NULL,
  `zoneid` varchar(45) NOT NULL,
  `licenseno` varchar(45) NOT NULL,
  `startdate` date NOT NULL,
  `expdate` date NOT NULL,
  `starttime` time NOT NULL,
  `exptime` time NOT NULL,
  `type` varchar(45) NOT NULL DEFAULT 'regular',
  `spaceno` int NOT NULL,
  `lotname` varchar(45) NOT NULL,
  PRIMARY KEY (`permitid`),
  KEY `for11_idx` (`licenseno`),
  KEY `for12_idx` (`lotname`),
  CONSTRAINT `for11` FOREIGN KEY (`licenseno`) REFERENCES `vehicles` (`carlicenseno`),
  CONSTRAINT `for12` FOREIGN KEY (`lotname`) REFERENCES `parkinglot` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Visitor Permit issued';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `vuser`
--

DROP TABLE IF EXISTS `vuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vuser` (
  `phoneno` varchar(45) NOT NULL,
  `carlicenseno` varchar(45) NOT NULL,
  PRIMARY KEY (`phoneno`),
  UNIQUE KEY `phoneno_UNIQUE` (`phoneno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Visitor user database';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zone` (
  `name` varchar(45) NOT NULL,
  `zones` varchar(45) NOT NULL,
  PRIMARY KEY (`name`,`zones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Parking lot to zone mappings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'dbms'
--

--
-- Dumping routines for database 'dbms'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-20  7:04:49
