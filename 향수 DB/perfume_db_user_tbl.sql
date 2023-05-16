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
-- Table structure for table `user_tbl`
--

DROP TABLE IF EXISTS `user_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tbl` (
  `userID` varchar(20) NOT NULL,
  `userPW` binary(60) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userNickname` varchar(20) NOT NULL,
  `userEmail` varchar(45) NOT NULL,
  `userTel` varchar(13) NOT NULL,
  `registerDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(10) DEFAULT 'USER',
  PRIMARY KEY (`userID`),
  UNIQUE KEY `user_nickname_UNIQUE` (`userNickname`),
  KEY `fk_user_role_idx` (`role`),
  CONSTRAINT `fk_user_role` FOREIGN KEY (`role`) REFERENCES `role_tbl` (`role`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tbl`
--

LOCK TABLES `user_tbl` WRITE;
/*!40000 ALTER TABLE `user_tbl` DISABLE KEYS */;
INSERT INTO `user_tbl` VALUES ('e77rice',_binary '$2a$10$eI0ueeT4nvez1vc7jBWZ/eBvS4QBkc3qBtcKTBNqh0YAtwjsZJiR.','김광석','광석','guswns8782@naver.com','01033300123','2022-12-28 15:50:05','USER'),('e88rice',_binary '$2a$10$bUMqInRxPz9fy6rh0YYc7uvoiuNW.YF.HqQLwXGE7vydjh82l9ri2','이현준','관리자','guswns8780@naver.com','01036972115','2022-12-28 16:56:14','ADMIN'),('testman1',_binary '$2a$10$Y2NfyvJUHEl5Z8mq/o6fwOtQoOqKVfqv6B3xVid6N7B.vC6FS76/i','임시완','시완','siwhan0112@google.com','01038881127','2023-01-04 15:30:46','USER'),('testman2',_binary '$2a$10$W6ixhcxHlWJtu8.F0weKq.Zr5wo3mBzUK.vsYHc5aej9o1tTErh9S','탱탱볼','탱탱볼','emaoemaoeamo@naver.com','01041444944','2023-01-07 20:56:10','USER');
/*!40000 ALTER TABLE `user_tbl` ENABLE KEYS */;
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
