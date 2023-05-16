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
-- Table structure for table `order_tbl`
--

DROP TABLE IF EXISTS `order_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_tbl` (
  `index` int NOT NULL AUTO_INCREMENT,
  `orderUserID` varchar(20) NOT NULL,
  `orderPerfumeID` int NOT NULL,
  `orderCount` int NOT NULL,
  `orderDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`index`),
  KEY `fk_order_user_idx` (`orderUserID`),
  KEY `fk_order_perfume_idx` (`orderPerfumeID`),
  CONSTRAINT `fk_order_perfume` FOREIGN KEY (`orderPerfumeID`) REFERENCES `perfume_tbl` (`perfumeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_order_user` FOREIGN KEY (`orderUserID`) REFERENCES `user_tbl` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tbl`
--

LOCK TABLES `order_tbl` WRITE;
/*!40000 ALTER TABLE `order_tbl` DISABLE KEYS */;
INSERT INTO `order_tbl` VALUES (19,'e77rice',21,1,'2023-01-07 14:42:19'),(20,'e77rice',27,1,'2023-01-07 14:48:43'),(21,'testman2',14,1,'2023-01-07 20:59:24'),(22,'testman2',26,1,'2023-01-07 20:59:24'),(23,'testman2',82,1,'2023-01-07 20:59:24'),(24,'e88rice',68,1,'2023-01-09 03:25:53'),(25,'e88rice',14,1,'2023-01-09 03:25:53'),(26,'e88rice',16,1,'2023-01-09 03:25:53'),(27,'e88rice',17,1,'2023-01-09 03:25:53'),(28,'e88rice',22,1,'2023-01-09 03:25:53'),(29,'e88rice',22,1,'2023-01-09 03:25:53');
/*!40000 ALTER TABLE `order_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16 12:42:12
