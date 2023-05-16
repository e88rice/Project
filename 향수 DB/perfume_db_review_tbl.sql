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
-- Table structure for table `review_tbl`
--

DROP TABLE IF EXISTS `review_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_tbl` (
  `reviewPerfumeID` int NOT NULL,
  `reviewNo` int NOT NULL AUTO_INCREMENT,
  `reviewContent` text NOT NULL,
  `reviewGrade` tinyint NOT NULL,
  `reviewDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `reviewUserNick` varchar(20) NOT NULL,
  `filename` varchar(150) DEFAULT NULL,
  `filepath` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`reviewNo`,`reviewPerfumeID`),
  KEY `fk_review_perfume_idx` (`reviewPerfumeID`),
  KEY `fk_review_user_idx` (`reviewUserNick`),
  CONSTRAINT `fk_review_perfume` FOREIGN KEY (`reviewPerfumeID`) REFERENCES `perfume_tbl` (`perfumeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_review_user` FOREIGN KEY (`reviewUserNick`) REFERENCES `user_tbl` (`userNickname`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_tbl`
--

LOCK TABLES `review_tbl` WRITE;
/*!40000 ALTER TABLE `review_tbl` DISABLE KEYS */;
INSERT INTO `review_tbl` VALUES (1,19,'좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉좋네요잉',9,'2023-01-03 12:55:28','관리자',NULL,NULL),(1,20,'좋네요잉',9,'2023-01-03 14:40:52','관리자',NULL,NULL),(1,24,'잘쓸게요잉~~',10,'2023-01-03 16:34:29','광석','8b87374e-d437-40dd-ba87-f6eeefde5743_9c94a321-c51a-41c9-b3db-db65dab263a7_main_232001000006.jpg','/image/review/8b87374e-d437-40dd-ba87-f6eeefde5743_9c94a321-c51a-41c9-b3db-db65dab263a7_main_232001000006.jpg'),(1,25,'ㅇㅅㅇ',10,'2023-01-04 15:31:24','시완','50571e6f-6a00-40d6-bd7e-ee57430f2860_9c94a321-c51a-41c9-b3db-db65dab263a7_main_232001000006.jpg','/image/review/50571e6f-6a00-40d6-bd7e-ee57430f2860_9c94a321-c51a-41c9-b3db-db65dab263a7_main_232001000006.jpg'),(16,26,'ㅇㅅㅇ',10,'2023-01-04 15:35:30','시완','ae31dd2b-2ffe-4291-b826-5772a40e5a78_9c94a321-c51a-41c9-b3db-db65dab263a7_main_232001000006.jpg','/image/review/ae31dd2b-2ffe-4291-b826-5772a40e5a78_9c94a321-c51a-41c9-b3db-db65dab263a7_main_232001000006.jpg');
/*!40000 ALTER TABLE `review_tbl` ENABLE KEYS */;
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
