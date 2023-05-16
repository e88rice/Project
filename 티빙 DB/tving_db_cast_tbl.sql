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
-- Table structure for table `cast_tbl`
--

DROP TABLE IF EXISTS `cast_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cast_tbl` (
  `programName` varchar(45) NOT NULL,
  `castName` varchar(45) NOT NULL,
  PRIMARY KEY (`programName`,`castName`),
  CONSTRAINT `fk_cast_contents` FOREIGN KEY (`programName`) REFERENCES `program_tbl` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast_tbl`
--

LOCK TABLES `cast_tbl` WRITE;
/*!40000 ALTER TABLE `cast_tbl` DISABLE KEYS */;
INSERT INTO `cast_tbl` VALUES ('나를찾아줘','로자먼드 파이크'),('나를찾아줘','벤 애플렉'),('담보','김희원'),('담보','박소이'),('담보','성동일'),('담보','하지원'),('소리도없이','문승아'),('소리도없이','유아인'),('소리도없이','유재명'),('재벌집막내아들','송중기'),('재벌집막내아들','신현빈'),('재벌집막내아들','이성민'),('재벌집막내아들','조한철'),('짱구는못말려','강희선'),('짱구는못말려','김환진'),('짱구는못말려','박영남'),('짱구는못말려','여민정'),('짱구는못말려','이용신'),('짱구는못말려','정유미'),('짱구는못말려','정혜옥'),('짱구는못말려','현경수'),('캅시크릿','에길 에이나르손'),('캅시크릿','오둔 블뢴달'),('허리케인쓰나미','드진 브라운'),('허리케인쓰나미','서미 스피로'),('허리케인쓰나미','제이슨 토비아스'),('헤어질결심','고경표'),('헤어질결심','박해일'),('헤어질결심','이정현'),('헤어질결심','탕웨이');
/*!40000 ALTER TABLE `cast_tbl` ENABLE KEYS */;
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
