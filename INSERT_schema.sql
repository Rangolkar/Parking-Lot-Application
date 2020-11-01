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
-- Dumping data for table `authenticate`
--

LOCK TABLES `authenticate` WRITE;
/*!40000 ALTER TABLE `authenticate` DISABLE KEYS */;
INSERT INTO `authenticate` VALUES (1000000,'abc123'),(1006003,'abc123'),(1006020,'abc123'),(1006022,'abc123'),(1006135,'abc123'),(1007999,'abc123');
/*!40000 ALTER TABLE `authenticate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `citation`
--

LOCK TABLES `citation` WRITE;
/*!40000 ALTER TABLE `citation` DISABLE KEYS */;
INSERT INTO `citation` VALUES (10001,'TRK1093','expired','25','14:40:00','justice lot','paid','2020-08-14','2020-09-13','rio','blue'),(10002,'UGY9123','expired','25','12:55:00','justice lot','unpaid','2020-08-17','2020-09-16','maxima','black'),(10003,'AKL1732','expired','25','13:00:00','justice lot','unpaid','2020-08-17','2020-09-16','model x','silver'),(10004,'NEV9889','invalid','20','15:50:00','justice lot','unpaid','2020-09-10','2020-10-09','elantra','red'),(10005,'PTL5642','nopermit','40','10:05:00','freedom lot','paid','2020-09-14','2020-10-13','sentra','black'),(10006,'TRK1093','expired','25','14:00:00','premiere lot','unpaid','2020-09-21','2020-10-20','rio','blue');
/*!40000 ALTER TABLE `citation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (10001,'9875698989',NULL),(10002,'3659856464',NULL),(10003,'5586947895',NULL),(10004,NULL,1006135),(10005,'7777777777',NULL),(10006,'9875698989',NULL);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `nvpermit`
--

LOCK TABLES `nvpermit` WRITE;
/*!40000 ALTER TABLE `nvpermit` DISABLE KEYS */;
INSERT INTO `nvpermit` VALUES ('20A0052A',1006022,'A','2020-07-29','2021-07-28','23:59:59','regular'),('20AS016S',1006135,'AS','2020-09-01','2020-12-31','23:59:59','regular'),('20B0001B',1007999,'B','2020-08-10','2021-08-09','23:59:59','electric'),('20CS001C',1006003,'CS','2020-08-15','2020-12-14','23:59:59','handicapped'),('20D0021D',1006020,'D','2020-07-10','2021-07-09','23:59:59','regular');
/*!40000 ALTER TABLE `nvpermit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `nvuser`
--

LOCK TABLES `nvuser` WRITE;
/*!40000 ALTER TABLE `nvuser` DISABLE KEYS */;
INSERT INTO `nvuser` VALUES (1000000,'admin'),(1006003,'student'),(1006020,'employee'),(1006022,'employee'),(1006135,'student'),(1007999,'employee');
/*!40000 ALTER TABLE `nvuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `parkinglot`
--

LOCK TABLES `parkinglot` WRITE;
/*!40000 ALTER TABLE `parkinglot` DISABLE KEYS */;
INSERT INTO `parkinglot` VALUES ('freedom lot','2105 Daniel Allen Sr, NC 27505',150),('justice lot','2704 Ben Clark St, NC 26701',175),('premiere lot','2108 McKent St, NC 27505',200);
/*!40000 ALTER TABLE `parkinglot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `space`
--

LOCK TABLES `space` WRITE;
/*!40000 ALTER TABLE `space` DISABLE KEYS */;
INSERT INTO `space` VALUES ('freedom lot',0,0,0,0,0,0),('premiere lot',1,0,0,200,0,0),('justice lot',25,5,4,156,151,172);
/*!40000 ALTER TABLE `space` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES ('AKL1732',2019,'model x','silver','tesla',NULL),('CDF5731',2018,'camry','red','toyota',NULL),('KTP2003',2009,'rdx','black','acura',1006022),('NEV9889',2011,'elantra','red','hyundai',1006135),('RPU1824',2016,'odyssey','blue','honda',1006020),('TIR3487',2017,'x5','white','bmw',1006020),('TRK1093',2017,'rio','blue','kia',NULL),('UGB9020',2014,'cruze','silver','chevrolet',1006003),('UGY9123',2015,'maxima','black','nissan',NULL),('UWA1118',2016,'q3','white','audi',NULL),('VTZ87543',2018,'leaf','black','nissan',1007999);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vpermit`
--

LOCK TABLES `vpermit` WRITE;
/*!40000 ALTER TABLE `vpermit` DISABLE KEYS */;
INSERT INTO `vpermit` VALUES ('20V0001A','V','CDF5731','2020-08-12','2020-08-12','14:00:00','16:00:00','regular',200,'premiere lot'),('20V0012B','V','TRK1093','2020-08-14','2020-08-14','11:00:00','14:00:00','regular',160,'premiere lot'),('20V0015J','V','UGY9123','2020-08-17','2020-08-17','10:10:00','12:10:00','handicapped',151,'justice lot'),('20V0021L','V','AKL1732','2020-08-17','2020-08-17','11:45:00','12:45:00','electric',173,'justice lot'),('20V0025B','V','TRK1093','2020-09-21','2020-09-21','09:30:00','13:30:00','regular',200,'premiere lot'),('20V0026P','V','UWA1118','2020-08-19','2020-08-19','14:50:00','16:50:00','handicapped',153,'justice lot');
/*!40000 ALTER TABLE `vpermit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vuser`
LOCK TABLES `space` WRITE;
UPDATE `dbms`.`space` SET `visitor_spaces` = 0,`visitor_handicap_space` = 0,`visitor_electric_space` = 0,`starting_space_visitor` = 0,`starting_space_handicap` = 0,`starting_space_electric` = 0 WHERE `parkinglot` = 'freedom lot';

UPDATE `dbms`.`space` SET `visitor_spaces` = 1,`visitor_handicap_space` = 0,`visitor_electric_space` = 0,`starting_space_visitor` = 200,`starting_space_handicap` = 0,`starting_space_electric` = 0 WHERE `parkinglot` = 'premiere lot';

UPDATE `dbms`.`space` SET `visitor_spaces` = 25,`visitor_handicap_space` = 5,`visitor_electric_space` = 4,`starting_space_visitor` = 156,`starting_space_handicap` = 151,`starting_space_electric` = 172 WHERE `parkinglot` = 'justice lot';
--
UNLOCK TABLES;

LOCK TABLES `vuser` WRITE;
/*!40000 ALTER TABLE `vuser` DISABLE KEYS */;
INSERT INTO `vuser` VALUES ('3356214585','UWA1118'),('3659856464','UGY9123'),('5586947895','AKL1732'),('9199317878','CDF5731'),('9875698989','TRK1093');
/*!40000 ALTER TABLE `vuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT INTO `zone` VALUES ('freedom lot','A'),('freedom lot','B'),('freedom lot','C'),('freedom lot','D'),('justice lot','AS'),('justice lot','BS'),('justice lot','CS'),('justice lot','DS'),('justice lot','V'),('premiere lot','A'),('premiere lot','AS'),('premiere lot','B'),('premiere lot','BS'),('premiere lot','C'),('premiere lot','CS'),('premiere lot','D'),('premiere lot','DS'),('premiere lot','V');
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-20  6:25:45
