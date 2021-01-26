-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: edu
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_attach`
--

DROP TABLE IF EXISTS `tbl_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_attach` (
  `save_file_name` varchar(255) NOT NULL COMMENT '서버에 저장되는 한글명이 아닌 파일명',
  `real_file_name` varchar(255) DEFAULT NULL COMMENT '여러분 PC에서 한글로된 진짜 파일명',
  `bno` int(11) NOT NULL COMMENT '부모게시물의 일련번호 ',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  PRIMARY KEY (`save_file_name`),
  KEY `fk_tbl_attach_tbl_board_idx` (`bno`),
  CONSTRAINT `fk_tbl_attach_tbl_board` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시물첨부파일';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_attach`
--

LOCK TABLES `tbl_attach` WRITE;
/*!40000 ALTER TABLE `tbl_attach` DISABLE KEYS */;
INSERT INTO `tbl_attach` VALUES ('41ebf108-c410-4685-be3a-111549de9d7f.jpeg','58b8ae18a2cbd0fc85637ce4d0b20c1c_t.jpeg',115,'2021-01-05 00:26:46'),('54f47db9-684a-41c0-ab46-da72167342b2.jpg','i16177558238.jpg',115,'2021-01-05 00:26:46'),('9f3733ae-82f8-4b28-9a40-d690742e339a.jpg','DSC_0016-편집-편집.jpg',116,'2021-01-05 00:45:52'),('d766b0d7-f685-404b-b408-33b2a24e66f6.jpg','pretty-drops-of-water-droplets-closeup-blue-background-picture.jpg',116,'2021-01-05 00:45:52');
/*!40000 ALTER TABLE `tbl_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board`
--

DROP TABLE IF EXISTS `tbl_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board` (
  `bno` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시물일련번호, AI(Auto Increment)일련번호를 자동증가기능',
  `board_type` varchar(45) DEFAULT NULL COMMENT '게시판타입:tbl_board_type테이블의 값을 가져다 사용',
  `title` varchar(255) DEFAULT NULL COMMENT '게시물제목',
  `content` text DEFAULT NULL COMMENT '게시물내용',
  `writer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `view_count` int(11) DEFAULT 0 COMMENT '게시글조회수 ',
  `reply_count` int(11) DEFAULT 0 COMMENT '댓글개수',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시 ',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일시',
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COMMENT='게시물관리 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board`
--

LOCK TABLES `tbl_board` WRITE;
/*!40000 ALTER TABLE `tbl_board` DISABLE KEYS */;
INSERT INTO `tbl_board` VALUES (1,'notice','1번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:20:59','2020-12-23 03:20:59'),(2,'gallery','수============정 55 갤러리 게시물 입니다.','게시물 내용 입니다.','admin',21,0,'2020-12-23 04:59:00','2021-01-25 02:14:08'),(3,'notice','3 번째 게시물 입니다.','게시물 내용 입니다.','admin',1,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(4,'notice','4 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(5,'notice','5 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(6,'notice','6 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(7,'notice','7 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(8,'notice','8 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(11,'notice','11 번째 게시물 입니다.','게시물 내용 입니다.','admin',1,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(12,'notice','12 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(13,'notice','13 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(14,'notice','14 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(15,'notice','15 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(16,'notice','16 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(17,'notice','17 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(18,'notice','18 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(19,'notice','19 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(20,'notice','20 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(21,'notice','21 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(22,'notice','22 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(23,'notice','23 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(24,'notice','24 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(25,'notice','25 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(26,'notice','26 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(27,'notice','27 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(28,'notice','28 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(29,'notice','29 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(30,'notice','30 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(31,'notice','31 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(32,'notice','32 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(33,'notice','33 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(34,'notice','34 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(35,'notice','35 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(36,'notice','36 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(37,'notice','37 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(38,'notice','38 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(39,'notice','39 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(40,'notice','40 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(41,'notice','41 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(42,'notice','42 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(43,'notice','43 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(44,'notice','44 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(45,'notice','45 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(46,'notice','46 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(47,'notice','47 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(48,'notice','48 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(49,'notice','49 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(50,'notice','50 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(51,'notice','51 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(52,'notice','52 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(53,'notice','53 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(54,'notice','54 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(55,'notice','55 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(56,'notice','56 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(57,'notice','57 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(58,'notice','58 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(59,'notice','59 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(60,'notice','60 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(61,'notice','61 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(62,'notice','62 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(63,'notice','63 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(64,'notice','64 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(65,'notice','65 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(66,'notice','66 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(67,'notice','67 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(68,'notice','68 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(69,'notice','69 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(70,'notice','70 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(71,'notice','71 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(72,'notice','72 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(73,'notice','73 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(74,'notice','74 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(75,'notice','75 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(76,'notice','76 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(77,'notice','77 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(78,'notice','78 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(79,'notice','79 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(80,'notice','80 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(81,'notice','81 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(82,'notice','82 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(83,'notice','83 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(84,'notice','84 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(85,'notice','85 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(86,'notice','86 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(87,'notice','87 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(88,'notice','88 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(89,'notice','89 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(90,'notice','90 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(91,'notice','91 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(92,'notice','92 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(93,'notice','93 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(94,'notice','94 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(95,'notice','95 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(96,'notice','96 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(97,'notice','97 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(98,'notice','98 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(99,'notice','99 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(100,'notice','100 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(101,'notice','101 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(102,'notice','102 번째 게시물 입니다.','게시물 내용 입니다.','admin',2,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(103,'notice','103 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(104,'notice','104 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(105,'notice','105 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(106,'notice','106 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(107,'notice','107 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(108,'notice','108 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(109,'notice','109 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(110,'notice','110 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 04:59:00','2020-12-23 04:59:00'),(111,'notice','글 수정 입니다.2','<p><span style=\'font-family: \"궁서\";\'>안녕하세요.</span></p><p><span style=\'font-family: \"궁서\";\'><span style=\'font-family: \"궁서\";\'><span style=\"font-size: 22px;\">궁서체로</span> 수정 합니다.<br></span></span></p><p><span style=\'font-family: \"궁서\";\'></span><br></p><h2><br></h2>','아무개',15,0,'2020-12-29 03:21:05','2020-12-30 01:22:29'),(112,'notice','트랜젝션 테스트','<p>트랜젝션이 먹힐까요?<br></p>','작성자',2,0,'2020-12-30 07:24:06','2020-12-30 07:24:06'),(115,'notice','글입력번호출력','<p>글입력번호출력<br></p>','작성자',3,0,'2021-01-05 00:26:46','2021-01-05 00:26:46'),(116,'notice','글입력번호출력','<p>글입력번호출력<br></p>','작성자',43,2,'2021-01-05 00:45:52','2021-01-05 00:45:52'),(119,'test','테스트 게시판의 글','<p>테스트 게시판의 글</p><p>등록 테스트<br></p>','아무개',0,0,'2021-01-26 01:10:47','2021-01-26 01:10:47');
/*!40000 ALTER TABLE `tbl_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board_type`
--

DROP TABLE IF EXISTS `tbl_board_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board_type` (
  `board_type` varchar(45) NOT NULL COMMENT '게시판타입: notice,gallery,qna',
  `board_name` varchar(45) DEFAULT NULL COMMENT '게시판 이름',
  `board_sun` int(11) DEFAULT NULL COMMENT '게시판 출력 순서',
  PRIMARY KEY (`board_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시판생성:게시판타입생성';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board_type`
--

LOCK TABLES `tbl_board_type` WRITE;
/*!40000 ALTER TABLE `tbl_board_type` DISABLE KEYS */;
INSERT INTO `tbl_board_type` VALUES ('gallery','갤러리',2),('notice','이벤트',1),('test','테스트',3);
/*!40000 ALTER TABLE `tbl_board_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_member` (
  `user_id` varchar(45) NOT NULL COMMENT '회원아이디',
  `user_pw` varchar(255) DEFAULT NULL COMMENT '회원 로그인 암호 ',
  `user_name` varchar(255) DEFAULT NULL COMMENT '회원 이름',
  `email` varchar(255) NOT NULL COMMENT '회원 이메일 ',
  `point` int(11) DEFAULT 0 COMMENT '회원 적립포인트 ',
  `enabled` int(1) DEFAULT 1 COMMENT '인증값(Authentication),활동 가능한 회원 여부, 0 로그인불가능, 1 로그인가능',
  `levels` varchar(45) DEFAULT 'ROLE_USER' COMMENT '권한값(Authority),2가지 레벨, ROLE_ADMIN(관리자), ROLE_USER(사용자)',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일자,1970부터 초단위로 현재까지 계산한 값',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일자 ',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='회원관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES ('admin','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','최고관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:03:09','2021-01-22 05:35:08'),('dummy_10','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_100','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_101','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_102','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_103','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_104','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_105','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_106','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_107','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_108','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_109','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_11','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_110','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_12','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_13','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_14','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_15','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_16','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_17','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_18','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_19','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_2','1234','홍길동','admin@abc.com',0,1,'ROLE_USER','2020-12-23 05:04:11','2020-12-23 05:11:54'),('dummy_20','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_21','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_22','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_23','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_24','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_25','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_26','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_27','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_28','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_29','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_3','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_30','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_31','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_32','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_33','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_34','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_35','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_36','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_37','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_38','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_39','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_4','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_40','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_41','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_42','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_43','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_44','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_45','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_46','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_47','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_48','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_49','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_5','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_50','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_51','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_52','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_53','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_54','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_55','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_56','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_57','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_58','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_59','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_6','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_60','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_61','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_62','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_63','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_64','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_65','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_66','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_67','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_68','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_69','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_7','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_70','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_71','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_72','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_73','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_74','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_75','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_76','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_77','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_78','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_79','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_8','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_80','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_81','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_82','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_83','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_84','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_85','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_86','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_87','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_88','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_89','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_9','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_90','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_91','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_92','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_93','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_94','$2a$10$lf9JOjNzgfrfyniYFdFUm0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','수정관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_95','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_96','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_97','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_98','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('dummy_99','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:04:11','2020-12-23 05:04:11'),('user_20201230094740759','1234','사용자03','user03@abc.com',100,1,'ROLE_USER','2020-12-30 00:47:40','2020-12-30 00:47:40');
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reply`
--

DROP TABLE IF EXISTS `tbl_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reply` (
  `rno` int(11) NOT NULL AUTO_INCREMENT COMMENT '댓글의 일련번호',
  `bno` int(11) NOT NULL COMMENT '부모게시물의 일련번호',
  `reply_text` varchar(1000) DEFAULT NULL COMMENT '댓글내용',
  `replyer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일시',
  PRIMARY KEY (`rno`),
  KEY `fk_tbl_reply_tbl_board1_idx` (`bno`),
  CONSTRAINT `fk_tbl_reply_tbl_board1` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='댓글관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reply`
--

LOCK TABLES `tbl_reply` WRITE;
/*!40000 ALTER TABLE `tbl_reply` DISABLE KEYS */;
INSERT INTO `tbl_reply` VALUES (17,116,'댓글 내용 수정','작성자','2021-01-07 05:03:49','2021-01-07 06:13:23'),(18,116,'댓글 내용 수정','작성자','2021-01-13 07:02:55','2021-01-13 07:02:55');
/*!40000 ALTER TABLE `tbl_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'edu'
--
/*!50003 DROP PROCEDURE IF EXISTS `dummyBoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyBoard`(IN p_loop int)
BEGIN
		declare cnt int default 2;
		delete from tbl_board where bno > 1;
		while cnt <= p_loop do
		INSERT INTO tbl_board(bno,title,content,writer)
		VALUES
		(cnt, concat(cnt,' 번째 게시물 입니다.'), '게시물 내용 입니다.', 'admin');
		set cnt = cnt + 1;
    end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dummyMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyMember`(IN p_loop int)
BEGIN
	declare cnt int default 1;#반복문 변수선언
    delete from tbl_member where user_id like 'dummy%';
    while cnt <= p_loop do
		INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels) 
		VALUES 
		(concat('dummy_', cnt) , '1234', '관리자', 'admin@abc.com', '0', '1', 'ROLE_ADMIN');
        set cnt = cnt + 1;
    end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-26 15:55:56
