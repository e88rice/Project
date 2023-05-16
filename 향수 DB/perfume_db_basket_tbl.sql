-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: perfume_db
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `basket_tbl`
--

DROP TABLE IF EXISTS `basket_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basket_tbl` (
  `index` int NOT NULL AUTO_INCREMENT,
  `basketUserID` varchar(20) NOT NULL,
  `basketPerfumeID` int NOT NULL,
  PRIMARY KEY (`index`),
  KEY `fk_basket_user_idx` (`basketUserID`),
  KEY `fk_basket_perfume_idx` (`basketPerfumeID`),
  CONSTRAINT `fk_basket_perfume` FOREIGN KEY (`basketPerfumeID`) REFERENCES `perfume_tbl` (`perfumeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_basket_user` FOREIGN KEY (`basketUserID`) REFERENCES `user_tbl` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basket_tbl`
--

LOCK TABLES `basket_tbl` WRITE;
/*!40000 ALTER TABLE `basket_tbl` DISABLE KEYS */;
INSERT INTO `basket_tbl` VALUES (44,'e88rice',14),(45,'e88rice',1),(46,'e88rice',17),(47,'e88rice',87),(48,'e88rice',86),(49,'e88rice',28),(50,'e88rice',25),(51,'e88rice',30),(52,'e88rice',44),(53,'e88rice',23),(54,'e88rice',43),(55,'e88rice',24);
/*!40000 ALTER TABLE `basket_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16 12:42:13
