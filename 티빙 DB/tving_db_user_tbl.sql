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
-- Table structure for table `user_tbl`
--

DROP TABLE IF EXISTS `user_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tbl` (
  `id` varchar(12) NOT NULL,
  `password` binary(60) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `nickName` varchar(12) NOT NULL,
  `email` varchar(60) NOT NULL,
  `tel` varchar(13) DEFAULT NULL,
  `registerDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isSocial` tinyint NOT NULL DEFAULT '0',
  `role` varchar(10) DEFAULT 'USER',
  PRIMARY KEY (`id`),
  KEY `fk_user_role_idx` (`role`),
  CONSTRAINT `fk_user_role` FOREIGN KEY (`role`) REFERENCES `role_tbl` (`role`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tbl`
--

LOCK TABLES `user_tbl` WRITE;
/*!40000 ALTER TABLE `user_tbl` DISABLE KEYS */;
INSERT INTO `user_tbl` VALUES ('testman1',_binary '$2a$10$uJLb/Z.Edoi3y/9.ydxJQORMecxz59ifIrEVkU50oit83hh5nyAJ6',NULL,'testman1','test123@naver.com','010-4444-7777','2022-12-20 15:37:07',0,'BASIC'),('testman2',_binary '$2a$10$FBDwG6HHE6V0rrHUX6Gxtejg0yozXddN2.KgvyzIUiEfGJHTYLWBe',NULL,'testman2','testman2@kakao.com','010-1234-5678','2022-12-20 17:51:23',0,'BASIC'),('testman3',_binary '$2a$10$//pVAnRU0gSnyXw1qZNIq.A99BJ85G6zYKnXpWbX9cl66x1tDDzfu','asd','testman3','testman3@naver.com','010-1234-4348','2022-12-20 17:52:11',0,'BASIC'),('testman4',_binary '$2a$10$3uNSRmCj4jys6VpVzdz3j.AeUUfSqcHlqEsnusrlASlLw7rIG8Yeq',NULL,'testman4','testman4@kakao.com',NULL,'2022-12-23 15:50:33',0,'USER'),('testman5',_binary '$2a$10$KZbczMVsyyPDnmmrcbFOgurwRBf0tv3gc6XmPLhIXs.jxQNJSMNNS',NULL,'testman5','testman5@kakao.com',NULL,'2022-12-23 15:51:20',0,'BASIC');
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

-- Dump completed on 2023-05-16 12:42:31
