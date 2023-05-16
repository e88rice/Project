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
-- Table structure for table `program_tbl`
--

DROP TABLE IF EXISTS `program_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program_tbl` (
  `name` varchar(45) NOT NULL,
  `age` tinyint NOT NULL,
  `time` varchar(12) NOT NULL,
  `genre` varchar(10) DEFAULT NULL,
  `distributor` varchar(20) DEFAULT NULL,
  `introduce` text NOT NULL,
  `classification` varchar(10) NOT NULL,
  PRIMARY KEY (`name`),
  KEY `fk_contents_class_idx` (`classification`),
  CONSTRAINT `fk_contents_class` FOREIGN KEY (`classification`) REFERENCES `class_tbl` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_tbl`
--

LOCK TABLES `program_tbl` WRITE;
/*!40000 ALTER TABLE `program_tbl` DISABLE KEYS */;
INSERT INTO `program_tbl` VALUES ('나를찾아줘',18,'2014','스릴러','FOX','우리부부는 누구나 부러워하는 ‘완벽한 커플’이었다.\n그날, 아내가 사라지기 전까지...\n모두가 부러워하는 삶을 살아가는 완벽한 커플 닉, 에이미.\n결혼 5주년 기념일 아침, 에이미가 흔적도 없이 실종된다.\n유년시절 어린이 동화시리즈 ‘어메이징 에이미’의 실제 여주인공이었던\n유명인사 아내가 사라지자, 세상은 그녀의 실종사건으로 떠들썩해진다.\n한편, 경찰은 에이미가 결혼기념일 선물로 숨겨뒀던 편지들을 통해\n그들이 권태기를 겪는 쇼윈도 커플임을 알게 되고\n드러나는 단서들은 남편 닉을 유력한 용의자로 가리킨다.\n취재거리가 생긴 미디어들은 닉의 일거수일투족을 보도하면서 그를 살인용의자로 지목하는데...\n과연 닉은 아내를 죽였을까? 서로를 의심하는 순간에 찾아온 진실은 밝혀질까?','영화'),('담보',12,'2020','','CJ','빚 떼려다 혹 붙였다!\n책임지고 받아(X) 키워 드립니다!\n\n1993년 인천\n거칠고 까칠한 사채업자 두석(성동일)과 종배(김희원)는\n떼인 돈 받으러 갔다가 얼떨결에 9살 승이(박소이)를 담보로 맡게 된다.\n\n“담보가 무슨 뜻이에요?”\n\n뜻도 모른 채 담보가 된 승이와 승이 엄마의 사정으로 아이의 입양까지 책임지게 된 두석과 종배.\n하지만 부잣집으로 간 줄 알았던 승이가 엉뚱한 곳에 있다는 것을 알게 된 두 사람은\n승이를 데려와 돌보게 된다.\n\n예고 없이 찾아온 아이에게 인생을 담보 잡힌 두석과 종배.\n빚 때문에 아저씨들에게 맡겨진 담보 승이.\n두석, 종배, 승이 세 사람은 어느덧 서로에게 특별한 존재가 되는데..\n\n돈 받으러 갔다가 인생의 보물을 만났다!\n올 가을, 담보가 보물이 됩니다!','영화'),('소리도없이',15,'2020',NULL,'에이스메이커무비웍스','악의 없이, 계획에 없던 유괴범이 되다!\n\n범죄 조직의 하청을 받아 근면성실하고 전문적으로 시체 수습을 하며 살아가는 ‘태인’과 ‘창복’. \n어느 날 단골이었던 범죄 조직의 실장 ‘용석’에게 부탁을 받고 \n유괴된 11살 아이 ‘초희’를 억지로 떠맡게 된다. \n  \n그런데 다음 날 다시 아이를 돌려주려던 두 사람 앞에 ′용석′이 시체로 나타나고, \n두 사람은 예기치 못한 사건에 휘말리게 되는데','영화'),('재벌집막내아들',15,'금토일 오후10:30','드라마','JTBC','재벌 총수 일가의 오너리스크를 관리하는 비서가 \n재벌가의 막내아들로 회귀하여 인생 2회차를 사는 판타지 드라마','드라마'),('짱구는못말려',12,'금 오후7:30','애니메이션','Tooniverse','예쁜 누나와 초코비를 좋아하는 5살 짱구와 살인적인 발 냄새를 가진 아버지 \n그리고 세일과 미남을 좋아하는 엄마, 귀여운 여동생 짱아와 강아지 흰둥이와 함께\n행복한 나날을 보내고 있는 평범하지만 신나는 가족의 일상을 그린 애니메이션','애니메이션'),('캅시크릿',15,'2022','영화','SamFilm','\"앙숙 형사들의 짜릿한 공조!\"','영화'),('허리케인쓰나미',15,'2022','액션','FOX','지구가 화성처럼 되버릴겁니다! 산소와 생명이 전혀없는 상태가 된다고!′ 과학자 ′조쉬′는 최근 발생하는 이상기후현상을 연구하던 중 사상 최악의 홍수와 함께 전세계가 바닷속으로 가라앉는 대재앙이 올 것을 예측한다. 하지만 누구도 ′조쉬′의 예측을 믿어주지 않고 ′조쉬′는 대홍수를 대비하기 위한 배를 만들겠다며 홀로 떠나버린다. 3년 후, 세계 각 곳에서 ′조쉬′가 예견했던 대재앙의 징후들이 하나 둘 씩 나타나기 시작하는데...','영화'),('헤어질결심',15,'2022','로맨스','CJ','산 정상에서 추락한 한 남자의 변사 사건.\n담당 형사 ′해준′(박해일)은\n사망자의 아내 ′서래′(탕웨이)와 마주하게 된다.\n\n\"산에 가서 안 오면 걱정했어요, 마침내 죽을까 봐.\"\n\n남편의 죽음 앞에서 특별한 동요를 보이지 않는 ′서래′.\n경찰은 보통의 유가족과는 다른 ′서래′를 용의선상에 올린다.\n′해준′은 사건 당일의 알리바이 탐문과 신문,\n잠복수사를 통해 ′서래′를 알아가면서\n그녀에 대한 관심이 점점 커져가는 것을 느낀다.\n\n한편, 좀처럼 속을 짐작하기 어려운 ′서래′는\n상대가 자신을 의심한다는 것을 알면서도\n조금의 망설임도 없이 ′해준′을 대하는데….\n\n진심을 숨기는 용의자\n용의자에게 의심과 관심을 동시에 느끼는 형사\n그들의 <헤어질 결심>','영화');
/*!40000 ALTER TABLE `program_tbl` ENABLE KEYS */;
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
