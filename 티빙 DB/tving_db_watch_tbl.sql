-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: tving_db
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
-- Table structure for table `watch_tbl`
--

DROP TABLE IF EXISTS `watch_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watch_tbl` (
  `userID` varchar(12) NOT NULL,
  `programName` varchar(45) NOT NULL,
  `watchOrder` tinyint NOT NULL,
  `watchDate` date NOT NULL,
  PRIMARY KEY (`userID`,`programName`,`watchOrder`),
  KEY `fk_watch_contents_idx` (`watchOrder`),
  KEY `fk_watch_contents_idx1` (`watchOrder`,`programName`),
  CONSTRAINT `fk_watch_user` FOREIGN KEY (`userID`) REFERENCES `user_tbl` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watch_tbl`
--

LOCK TABLES `watch_tbl` WRITE;
/*!40000 ALTER TABLE `watch_tbl` DISABLE KEYS */;
INSERT INTO `watch_tbl` VALUES ('testman1','재벌집막내아들',1,'2022-12-23'),('testman1','짱구는못말려',2,'2022-12-22'),('testman1','짱구는못말려',3,'2022-12-23'),('testman1','짱구는못말려',5,'2022-12-22'),('testman2','재벌집막내아들',1,'2022-12-23'),('testman2','짱구는못말려',2,'2022-12-23'),('testman3','재벌집막내아들',2,'2022-12-23'),('testman5','재벌집막내아들',2,'2022-12-23'),('testman5','재벌집막내아들',3,'2022-12-23');
/*!40000 ALTER TABLE `watch_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16 12:42:31
