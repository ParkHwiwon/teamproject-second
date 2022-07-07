-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: workjob
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminseq` varchar(45) NOT NULL,
  `id` varchar(15) NOT NULL,
  `pw` varchar(12) NOT NULL,
  `name` varchar(10) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `lgnFailCnt` int DEFAULT NULL,
  PRIMARY KEY (`adminseq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('1','raid','1234','관리자','01012345678',30000000),('2','ㄱ먕','1234','오타관리자','01011112222',303030);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dismember`
--

DROP TABLE IF EXISTS `dismember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dismember` (
  `memberseq` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `personid1` varchar(6) NOT NULL,
  `personid2` varchar(7) NOT NULL,
  `area` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `discase` varchar(15) NOT NULL,
  `disgrade` varchar(10) NOT NULL,
  `interestcompany` varchar(45) DEFAULT NULL,
  `proposecompany` varchar(45) DEFAULT NULL,
  `gender` varchar(45) NOT NULL,
  `birthyearday` varchar(45) DEFAULT NULL,
  `military` varchar(45) DEFAULT NULL,
  `helptool` varchar(90) DEFAULT NULL,
  `helptoolcase` varchar(90) DEFAULT NULL,
  `school` varchar(90) DEFAULT NULL,
  `department` varchar(90) DEFAULT NULL,
  `studycase` varchar(90) DEFAULT NULL,
  `comname` varchar(90) DEFAULT NULL,
  `emploperiod` varchar(90) DEFAULT NULL,
  `responsibilities` varchar(90) DEFAULT NULL,
  `etc` varchar(90) DEFAULT NULL,
  `licensecase` varchar(90) DEFAULT NULL,
  `licensegrade` varchar(90) DEFAULT NULL,
  `licensenumber` varchar(90) DEFAULT NULL,
  `publisher` varchar(90) DEFAULT NULL,
  `issuedate` varchar(90) DEFAULT NULL,
  `edutraining` varchar(90) DEFAULT NULL,
  `edudate` varchar(90) DEFAULT NULL,
  `educontent` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`memberseq`),
  UNIQUE KEY `personid2` (`personid2`),
  UNIQUE KEY `mobile_UNIQUE` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dismember`
--

LOCK TABLES `dismember` WRITE;
/*!40000 ALTER TABLE `dismember` DISABLE KEYS */;
INSERT INTO `dismember` VALUES (1,'자바스크립트','880212','1234567','김해','01012345678','지체','안심함',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'유승기','501225','1278903','경남 김해시','01011112222','안면장애','심한 정도',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'철판','123456','1231451','동래구','01072728282','안면장애','심한 정도',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'666버거','666666','6666666','부산진구','66666666666','시각장애','심하지 않은 정도',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'맥도날드','111231','1234251','기장군','11211211211','언어장애','심한 정도',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'맘스터치','123124','1246782','해운대구','11111111111','신장장애','심한 정도',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dismember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mjt`
--

DROP TABLE IF EXISTS `mjt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mjt` (
  `companyseq` int NOT NULL AUTO_INCREMENT,
  `logo` varchar(60) DEFAULT NULL,
  `companyname` varchar(45) NOT NULL,
  `emplodate` varchar(80) DEFAULT NULL,
  `ceo` varchar(45) NOT NULL,
  `createyear` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `homepage` varchar(45) DEFAULT NULL,
  `companytype` varchar(45) NOT NULL,
  `companycontent` varchar(45) NOT NULL,
  `companysize` varchar(45) NOT NULL,
  `recrutype` varchar(45) DEFAULT NULL,
  `workcontent` varchar(45) DEFAULT NULL,
  `graduate` varchar(45) DEFAULT NULL,
  `employcase` varchar(45) DEFAULT NULL,
  `paytype` varchar(45) DEFAULT NULL,
  `severance` varchar(45) DEFAULT NULL,
  `worktime` varchar(45) DEFAULT NULL,
  `etc` varchar(100) DEFAULT NULL,
  `recrusize` int DEFAULT NULL,
  `workarea` varchar(45) DEFAULT NULL,
  `career` varchar(45) DEFAULT NULL,
  `worktype` varchar(45) DEFAULT NULL,
  `insurance` varchar(45) DEFAULT NULL,
  `bonus` varchar(45) DEFAULT NULL,
  `addwork` varchar(45) DEFAULT NULL,
  `major` varchar(45) DEFAULT NULL,
  `computer` varchar(45) DEFAULT NULL,
  `welfare` varchar(45) DEFAULT NULL,
  `license` varchar(45) DEFAULT NULL,
  `facil` varchar(45) DEFAULT NULL,
  `treatment` varchar(45) DEFAULT NULL,
  `comid` varchar(75) NOT NULL,
  `compw` varchar(75) NOT NULL,
  PRIMARY KEY (`companyname`),
  UNIQUE KEY `companyseq_UNIQUE` (`companyseq`),
  UNIQUE KEY `comid_UNIQUE` (`comid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mjt`
--

LOCK TABLES `mjt` WRITE;
/*!40000 ALTER TABLE `mjt` DISABLE KEYS */;
INSERT INTO `mjt` VALUES (11,'outback.png','(유)아웃백스테이크하우스코리아 남포점','2022.06.27 ~ 2022.07.12','이상일','1996년 8월 28일','부산 중구 구덕로 54-1, 3층(남포동5가, 피닉스호텔)','http://www.outback.co.kr/','서비스업','식품접객업','5~49인','설거지 및 홀 오픈','설거지 및 홀 오픈','무관','기간의 정함이 없는 근로계약','시급','퇴직금','시간협의','1식 제공',1,'중구','무관','주3~4일','국민연금, 건강보험, 고용보험, 산재보험',NULL,'무',NULL,NULL,NULL,NULL,NULL,NULL,'com11','com11'),(12,'outbackcentom.png','(유)아웃백스테이크하우스코리아 센텀시티점','2022.06.27 ~ 2022.07.12','이상일','1996년 8월 28일','부산 해운대구 센텀4로 15, 센텀시티몰 4층','	http://www.outback.co.kr/','서비스업','식품접객업','50~299인','주방보조','식기세척, 청소, 식자재 계량 및 포장','무관','기간의 정함이 없는 근로계약','시급','퇴직금, 퇴직연금','시간협의','1식 제공',1,'해운대구','무관','주5일','국민연금, 건강보험, 고용보험, 산재보험','기본급 기준','무',NULL,NULL,NULL,NULL,NULL,NULL,'com12','com12'),(17,'nova.png','㈜노바인터내쇼널','2022.06.27 ~ 2022.07.12','이 효','1994년 4월 4일','부산 사상구 사상로 433번길 26(모라동)','','도매업, 제조, 도매, 서비스','신발 제조 및 수출','50~299인','생산직','보니스(재봉)','무관','기간의 정함이 있는 근로계약','시급','퇴직연금','08:00~17:00',NULL,5,'사상구','무관','주5일','국민연금, 건강보험, 고용보험, 산재보험',NULL,'유(17:00~19:00)',NULL,NULL,'통근버스, 차량유지비, 교육비, 자녀학자금',NULL,'주차장, 승강기, 화장실, 경사로','여성, 인근거주자','com17','com17'),(10,'dongawith.png','㈜동아위드','2022.06.27 ~ 2022.07.12','이경숙, 이경희','2016년 11월 16일','부산 사하구 낙동대로 542, 지하층 301호(하단동, 대우에덴프라자)','http://www.dongawith.com','제조업','인쇄, 출력','50~299인','단순 생산직','인쇄 후 가공, 작업복 미싱','무관','기간의 정함이 있는 근로계약','월급(915,600원 이상)','퇴직금','시간협의','1식 제공',5,'사하구','무관','주5일','국민연금, 건강보험, 고용보험, 산재보험',NULL,'무',NULL,NULL,NULL,NULL,'주차장, 승강기, 화장실, 경사로','청년층, 장년(고령자), 여성','com10','com10'),(1,'mjt.png','㈜엠제이티','2022.06.27 ~ 2022.07.12','진종호','2012년 7월 3일','부산 사상구 새벽로 77번길 74, 82',NULL,'제조업','기계부품','50~299인','CNC제조 가공 및 가공후처리	','CNC, MCT. 가공후처리(버핑)	','무관','기간의 정함이 없는 근로계약(수습 3개월 있음)','시급','퇴직연금','08:30~17:30',NULL,6,'사상구','무관','주5일','국민연금, 건강보험, 고용보험, 산재보험',NULL,'유(18:00~20:30)',NULL,NULL,NULL,NULL,NULL,NULL,'com1','com1'),(2,'cheongdam.png','㈜청담아이앤씨	','2022.06.27 ~ 2022.07.12','최용우','2020년 1월 21일','부산 남구 황령대로 319번나길 57, 1층(대연동)',NULL,'서비스','청소, 경비, 방역','1~4인','청소원 청소관리자	','청소방역 업무 및 현장총괄','무관','기간의 정함이 있는 근로계약	','월급(180~300만원)','퇴직금, 퇴직연금','시간협의','각 현장 및 역할에 따라 근무시간 및 조건 상이',3,'부산전체','무관','주5~6일','국민연금, 건강보험, 고용보험, 산재보험','기본급 50%','무',NULL,NULL,NULL,NULL,NULL,'청년층, 장년(고령자), 여성, 고용촉진지원금대상자, 차량소지자, 운전가능자','com2','com2'),(26,NULL,'com26',NULL,'com26','com26','com26com26','com26','com26','com26','com26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'com26','com26'),(27,NULL,'com28',NULL,'com28','com28','com28com28','com28','com28','com28','com28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'com28','com28'),(29,NULL,'com31',NULL,'com31','com31','com31com31','com31','com31','com31','com31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'com31','com31'),(28,'nova1.png','com40',NULL,'com40','com40','com40com40','com40','com40','com40','com40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'com40','com40'),(30,'songminyeong1.png','start',NULL,'start','start','startstart','start','start','start','start',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'start','start'),(8,'futuerland.png','미래부동산','2022.06.27 ~ 2022.07.12','신선자','2017년 3월 6일','부산 부산진구 서면문화로 14, 3층',NULL,'부동산 중개','중개업, 컨설팅','5~49인','인터넷 광고','인터넷 광고','무관','시간제','시급(80~100만원)','해당없음','시간협의(주 20시간)',NULL,1,'재택근무','무관','주5일','국민연금, 건강보험, 고용보험, 산재보험',NULL,'무',NULL,NULL,NULL,NULL,NULL,NULL,'com8','com8'),(5,'busancoffee.png','부산커피협동조합','2022.06.27 ~ 2022.07.12','이성록','2014년 10월 16일','부산 남구 황령대로 319번가길 53, 1층(대연동)','http://www.busancoffee.com','도소매, 제조업','원두커피, 커피가공','5~49인','바리스타, 머신 관리','카페 바리스타, 머신 관리','무관','기간의 정함이 있는 근로계약','월급','퇴직금','09:00~18:00','식사 미제공',1,'남구','무관','주5일','국민연금, 건강보험, 고용보험, 산재보험','기본급 기준','무',NULL,'문서작성, 표계산, 프레젠테이션	',NULL,NULL,'주차장, 화장실','운전가능자','com5','com5'),(15,'bnb.png','비엔비메디칼','2022.06.27 ~ 2022.07.12','김성기','2014년 4월 2일','부산 사하구 사리로 63-1, 2층(괴정동)','http://www.bnbmedical.com','제조업','의료기기 개발 및 생산','1~4인','생산 관리	','제품 관리 및 생산','무관','기간의 정함이 없는 근로계약','월급(190~200만원)','퇴직금','09:00~18:00','중식비 지급',2,'사하구','무관','주5일','국민연금, 건강보험, 고용보험, 산재보험','기본급 기준','무','산업디자인','문서작성','차량유지비, 교육비',NULL,NULL,NULL,'com15','com15'),(13,'bnp.png','비엔피협동조합','2022.06.27 ~ 2022.07.12','변상환','2013년 6월 13일','부산 사상구 사상로 250번길 63, 1층(괘법동)','http://ithe.co.kr','컴퓨터, 재생토너','재생토너, 사무용품','1~4인','생산, 온라인 마케팅','재제조 생산, 온라인(광고,포토샵)','무관','기간의 정함이 없는 근로계약','월급(912,000원 이상)','퇴직금','14:00~18:00(시간협의)',NULL,3,'사상구','무관','주5일','국민연금, 건강보험, 고용보험, 산재보험',NULL,'무',NULL,NULL,NULL,NULL,NULL,NULL,'com13','com13'),(19,'seung.png','세웅병원	','2022.06.27 ~ 2022.07.12','배재웅','1980년 2월 4일','부산 금정구 서동로 162(서동)','http://www.sewoongh.co.kr','보건업','병원','50~299인','주차관리','타워주차장 입출차관리 및 노면주차장 교통정리','무관','기간의 정함이 없는 근로계약','월급(190~205만원)','퇴직금','06:00~15:00','1식 제공',1,'금정구','무관','주6일','국민연금, 건강보험, 고용보험, 산재보험',NULL,'무',NULL,'','자녀학자금',NULL,'화장실, 경사로','인근거주자','com19','com19'),(25,NULL,'슈퍼마리오',NULL,'슈퍼마리오','슈퍼마리오','슈퍼마리오슈퍼마리오','슈퍼마리오','슈퍼마리오','슈퍼마리오','슈퍼마리오',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'슈퍼마리오','슈퍼마리오'),(3,'sgnc.png','에스지씨앤씨 주식회사','2022.06.27 ~ 2022.07.12','최준완','2016년 8월 30일	','부산 수영구 민락로 19번길 21, 3층(민락동)','	http://sgcnc.kr','정보통신업','소프트웨어 개발','5~49인','소프트웨어 개발자 및 웹디자이너','웹 프로그램 개발 및 웹 디자인 업무','무관','기간의 정함이 없는 근로계약	','월급(사규에 따름)	','퇴직금','09:00~18:00','면접 후 본사/재택근무 결정, 재택근무 시 업무에 필요한 기자재(컴퓨터 및 전화기) 제공',5,'수영구, 재택근무','무관','주5일','국민연금, 건강보험, 고용보험, 산재보험','기본급 50%','무','컴퓨터공학, 웹디자인','문서작성, 표계산, 프리젠테이션',NULL,'정보처리산업기사',NULL,NULL,'com3','com3'),(6,'youngil.png','영일신소재','2022.06.27 ~ 2022.07.12','김명수','2021년 10월 1일','부산 사상구 낙동대로 1338번길 60(삼락동)',NULL,'제조업, 신발부품창','신발창 제조','5~49인','고무제품 프레스 조작 생산직','프레스','무관','기간의 정함이 없는 근로계약','시급(290만원이상)','퇴직금','08:00~17:00(주간), 17:00~04:00(야간)','1식 제공',2,'사상구','무관','주5일','국민연금, 건강보험, 고용보험, 산재보험',NULL,'유(22:00~04:00)',NULL,NULL,NULL,NULL,NULL,'인근거주자','com6','com6'),(9,'osstem.png','오스템임플란트㈜','2022.06.27 ~ 2022.07.12','엄태관','2002년 8월 20일','부산 해운대구 반송로 513번길 66-16(석대동)','	http://www.osstem.com','치과 의료기기 제조업','치아 임플란트 등 제조','300인 이상','제조직','조립, 포장, 검사 등	','무관','기간의 정함이 있는 근로계약','시급','퇴직금','08:30~17:30','2식 제공, 야간 근로시 식대 지급',8,'해운대구','무관','주5일','국민연금, 건강보험, 고용보험, 산재보험',NULL,'유(17:30~20:00)',NULL,NULL,NULL,NULL,'주차장, 승강기, 화장실, 경사로',NULL,'com9','com9'),(20,'inje.png','인제대학교 해운대백병원','2022.06.27 ~ 2022.07.12','이순형','2009년 9월 1일','부산 해운대구 해운대로 875(좌동)','http://www.paik.ac.kr/haeundae/','보건업','종합병원','300인 이상','업무보조','기구세척, 및 포장, 운송','고졸','기간의 정함이 있는 근로계약','월급(100만원)','퇴직금','시간협의',NULL,2,'해운대구','무관','주5일(주20시간)','국민연금, 건강보험, 고용보험, 산재보험',NULL,'무','업무보조','기구세척, 및 포장, 운송','진료비 감면',NULL,'주차장, 승강기, 화장실',NULL,'coim20','com20'),(14,'glob.png','주식회사 글로브임펙트','2022.06.27 ~ 2022.07.12','조중호','2015년 10월 30일','부산 부산진구 부전로 29, 2층(부전동, KT&G 부산부전지사)','http://www.globeimpact.co.kr','서비스','디자인, 마케팅, 행사기획, 웹개발','5~49인','(웹)디자인','편집디자인 혹은 웹디자인','무관','기간의 정함이 없는 근로계약 (수습 기간 있음)','월급(200만원 이상)','퇴직금','09:00~18:00',NULL,1,'부산진구','무관','주5일','국민연금, 건강보험, 고용보험, 산재보험',NULL,'무','디자인 관련','문서작성, 프레젠테이션',NULL,NULL,'승강기, 경사로',NULL,'com14','com14'),(7,'adella7.png','주식회사 아델라7','2022.06.30 ~ 2022.07.15','서홍원','2019년 3월 1일','부산 남구 황령대로 319번나길 30(대연동)','http://blog.naver.com/adelady1','제조업','제과제빵','5~49인','생산직','제과제빵 보조','무관','기간의 정함이 있는 근로계약','월급(100만원 이상)	','퇴직금','시간협의','식사 미제공',4,'남구','무관','주5일','국민연금, 건강보험, 고용보험, 산재보험',NULL,'무',NULL,NULL,NULL,NULL,NULL,'인근거주자, 운전가능자','com7','com7'),(16,'ildeng.png','주식회사 일등나눔','2022.06.30 ~ 2022.07.15','장성완','2019년 5월 29일','부산 기장군 정관읍 정관로 929-4(A, C)',NULL,'제조업','식초, 발표 및 화학 조미료 제조업 등','5~49인','포장 및 제조(재료 손질)','소스 포장,소스제조(재료 손질)','무관','기간의 정함이 없는 근로계약','월급(92만원이상)','퇴직금','09:30~14:00, 14:00~18:00','식사 미제공',7,'기장군 정관읍','무관','주5일','국민연금, 건강보험, 고용보험, 산재보험',NULL,'무',NULL,NULL,'자녀학자금, 기타',NULL,'주차장, 화장실','인근거주자, 차량소지자, 운전가능자','com16','com16'),(18,'ks.png','주식회사 케이에스','2022.06.30 ~ 2022.07.15','신지운','2018년 9월 18일','부산 사상구 대동로 199-12(학장동)',NULL,'제조업','자동차부품 운송장비 정밀가공업','5~49인','단순조립, 바리스타, 웹디자인','단순조립, 바리스타, 웹디자인','무관','기간의 정함이 없는 근로계약','연봉(2400~2600만원)','퇴직금','시간협의','1식 제공',2,'사상구','무관','주3~4일','국민연금, 건강보험, 고용보험, 산재보험','기본급 기준','무',NULL,NULL,NULL,NULL,NULL,NULL,'com18','com18'),(22,NULL,'카카오',NULL,'givemechocolate','2022년07월04일','부산광역시 범내골역','www.naver.com','웹서비스','웹서비스','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'com24','com24'),(4,'koreamobility.png','코리아모빌리티 주식회사','2022.06.30 ~ 2022.07.15','이호준','2019년 5월 28일','부산 강서구 경전철로 188번길 125-7(대저동)','	http://korea-mobility.com','제조업, 도소매','자동차용 부품, 장애인용 차량 부품 제조','5~49인','사무 및 생산보조','문서작업 및 정리, 조립보조','고졸','기간의 정함이 있는 근로계약','시급','퇴직금','08:30~17:30',NULL,2,'강서구','무관','주5일','국민연금, 건강보험, 고용보험, 산재보험',NULL,'무','이공계 학사','문서작성, 표계산, 회계프로그램',NULL,'자동차 정비기능사','주차장, 화장실','운전가능자','com4','com4');
/*!40000 ALTER TABLE `mjt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-07  9:41:15
