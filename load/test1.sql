-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: test1
-- ------------------------------------------------------
-- Server version	5.6.51

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `captcha_codes`
--

DROP TABLE IF EXISTS `captcha_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `captcha_codes` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_codes`
--

LOCK TABLES `captcha_codes` WRITE;
/*!40000 ALTER TABLE `captcha_codes` DISABLE KEYS */;
INSERT INTO `captcha_codes` VALUES (6,'qalalukida','ca57c257-fdae-4ef0-abc1-a7a4b9f965c9','2023-06-01 22:22:45'),(7,'cixevusubi','cebf5c7f-eb60-41da-926c-84a5a96c3c62','2023-06-01 22:22:54'),(11,'piyosiyoqe','5870a44c-8607-4a89-81e5-f2c7cb196c34','2023-06-01 22:36:48'),(24,'dudasovava','f93dfb10-bb0e-41cb-b24e-84df45a64d45','2023-06-01 22:52:18'),(25,'pemasojama','dd67feac-da47-44c6-8299-0183dd6a1352','2023-06-01 22:52:29'),(26,'somihasih','50545436-02eb-4101-8aa7-d092e4b7d768','2023-06-01 22:52:33'),(42,'tosaramoyu','d5d24168-9c18-4d62-968a-942014ba5e9a','2023-06-01 23:10:27'),(43,'gihirotoz','68d51bf0-506d-4855-bf95-947e38723718','2023-06-01 23:11:07');
/*!40000 ALTER TABLE `captcha_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_settings`
--

DROP TABLE IF EXISTS `global_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_settings` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_settings`
--

LOCK TABLES `global_settings` WRITE;
/*!40000 ALTER TABLE `global_settings` DISABLE KEYS */;
INSERT INTO `global_settings` VALUES (1,'MULTIUSER_MODE','MULTIUSER_MODE','YES'),(2,'POST_PREMODERATION','POST_PREMODERATION','YES'),(3,'STATISTICS_IS_PUBLIC','STATISTICS_IS_PUBLIC','YES');
/*!40000 ALTER TABLE `global_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (44);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_comments`
--

DROP TABLE IF EXISTS `post_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_comments` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_comments`
--

LOCK TABLES `post_comments` WRITE;
/*!40000 ALTER TABLE `post_comments` DISABLE KEYS */;
INSERT INTO `post_comments` VALUES (5,NULL,1,'sddssd','2023-06-01 22:16:26',1),(22,5,1,'<strong>qwerty</strong>,соси','2023-06-01 22:46:58',12),(37,NULL,35,'Дауннн','2023-06-01 23:04:40',1),(38,NULL,35,'<ul><li>ууууууууууууууууууууууууууууууууууууу</li></ul><h5><ul><li>уууууууууууууууууууууууууу</li></ul></h5>','2023-06-01 23:05:21',1),(39,NULL,35,'<img src=\"/upload\\image\\52c2\\4bab\\8b27\\I3NFxS4ByPKr.com (10)\">','2023-06-01 23:05:45',1),(40,NULL,35,'<img src=\"/upload\\image\\a144\\4de6\\9eb4\\Na860rPmni9s.jpg\">','2023-06-01 23:06:09',1);
/*!40000 ALTER TABLE `post_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_votes`
--

DROP TABLE IF EXISTS `post_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_votes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_votes`
--

LOCK TABLES `post_votes` WRITE;
/*!40000 ALTER TABLE `post_votes` DISABLE KEYS */;
INSERT INTO `post_votes` VALUES (1,1,'2023-06-01 20:35:15',1,1),(9,1,'2023-06-01 22:35:37',2,1),(13,1,'2023-06-01 22:38:24',12,-1),(28,20,'2023-06-01 22:55:05',27,-1),(36,35,'2023-06-01 23:04:25',1,-1);
/*!40000 ALTER TABLE `post_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `is_active` smallint(6) DEFAULT NULL,
  `moderation_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moderator_id` int(11) DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5lidm6cqbc7u4xhqpxm898qme` (`user_id`),
  CONSTRAINT `FK5lidm6cqbc7u4xhqpxm898qme` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'ACCEPTED',1,'NEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEW','2023-06-01 20:35:15','NEW',5,2),(14,0,'ACCEPTED',0,'<img src=\"/upload\\image\\da1e\\43fa\\bc20\\l3gKm9YIDTjF.jpg\">','2023-06-01 22:48:16','gjhbjhjhb',0,12),(20,1,'ACCEPTED',1,'<img src=\"/upload\\image\\6f1a\\42b8\\a62a\\bXb4rsfZIGhz.jpg\"><br>','2023-06-01 22:43:47','hgtfhgfchgf',1,12),(21,1,'DECLINED',1,'lololoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo','2023-06-01 22:46:00','dobre',0,12),(31,1,'ACCEPTED',1,'dfgggggggggdfgdfgdfgasdfsadsdfsdfsdfsdfsdfaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2023-06-01 22:58:44','Я бритва',0,27),(34,1,'ACCEPTED',1,'JAVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA<br>sdddddddddddddddd','2023-06-01 23:01:28','JAVA',0,27),(35,1,'ACCEPTED',0,'poidksnsoidhvsoudhvlsahvcusdviujsvi;ujsdkjvhnask;jdvaksjdhcvkjsadhfckjsadhfckjshdfkjshdafkjsdfkjhsdkjcvhhsdfjkhvbdsfjhvbasdfjhbvsadfjkvbaskdj;nvaskjdfvnas;kjfnvksjafdnvajksfdnvlaskdnvclksadmclksdncvkjasdfbvhjsbfa','2023-06-01 23:08:18','jjdfkjsdhf',0,1),(41,1,'ACCEPTED',0,'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq','2023-06-01 23:08:15','qqqqqqqq',0,1);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag2post`
--

DROP TABLE IF EXISTS `tag2post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag2post` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `FKjou6suf2w810t2u3l96uasw3r` (`tag_id`),
  CONSTRAINT `FKjou6suf2w810t2u3l96uasw3r` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
  CONSTRAINT `FKpjoedhh4h917xf25el3odq20i` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag2post`
--

LOCK TABLES `tag2post` WRITE;
/*!40000 ALTER TABLE `tag2post` DISABLE KEYS */;
INSERT INTO `tag2post` VALUES (1,1,1);
/*!40000 ALTER TABLE `tag2post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'java');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_moderator` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'1','sasha87255@gmail.com',1,'qwerty','$2a$12$kIGEExJNMV7oyLRvC5UECu8tYZz4vCFwuNSNNFF/DZnpx/vElfIMS','/upload\\profile\\7088\\47e4\\b42c\\2bc1bd30-57d0-4b14-a67a-cd8fb484eab4-fdvdfv.jpg','2023-06-14 20:12:19'),(2,'4b8c83201574426aa5f0b291f48da5ae','sashacs2000@gmail.com',0,'alex','$2a$12$kIGEExJNMV7oyLRvC5UECu8tYZz4vCFwuNSNNFF/DZnpx/vElfIMS','/upload\\profile\\bd28\\46ac\\bb3f\\fsdfsdf.jfif','2023-06-14 20:12:19'),(12,NULL,'isip_a.yu.ivanov@mpt.ru',0,'Александр','$2a$12$jDPptp1n0NzkfA.ss99Ha.bkR1P6GIHNnc11K.ic57ovZxfP/RtTS',NULL,'2023-06-01 22:38:00'),(27,'3630d6c4664f4dd7af67ddf9f88f8962','artyom.5or@yandex.ru',0,'Артем','$2a$12$OktxkQO3O2Bp1JuuGhQVaeZ5zhhsFIKYxkDJdwk02LCuYTkr/YqMq','/upload\\profile\\086b\\488c\\b756\\pepe.jpg','2023-06-01 22:53:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'test1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-02  0:04:08
