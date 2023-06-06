-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: perfume
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
INSERT INTO `hibernate_sequence` VALUES (18),(18);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_index` int(11) NOT NULL,
  `total_price` double DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7ncuqw9n77odylknbo8aikc9w` (`user_id`),
  CONSTRAINT `FK7ncuqw9n77odylknbo8aikc9w` FOREIGN KEY (`user_id`) REFERENCES `usr` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Ул. Грекова, д.13','Москва','2023-05-17','sasha87255@gmail.com','Александр','Иванов','+7(916)-474-90-55',127225,2716,2),(2,'ул. Малыгина, дом 32','Москва','2023-05-17','sasha87255@gmail.com','Александр','Иванов','+7(916)-474-90-55',127225,34399,2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_perfume_list`
--

DROP TABLE IF EXISTS `orders_perfume_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_perfume_list` (
  `order_id` bigint(20) NOT NULL,
  `perfume_list_id` bigint(20) NOT NULL,
  `perfume_list_order` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`perfume_list_order`),
  KEY `FKi6hpa14qaenek8pc9pf3vmlei` (`perfume_list_id`),
  CONSTRAINT `FK8jft4d30d5dgvauht7ssndwau` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKi6hpa14qaenek8pc9pf3vmlei` FOREIGN KEY (`perfume_list_id`) REFERENCES `perfume` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_perfume_list`
--

LOCK TABLES `orders_perfume_list` WRITE;
/*!40000 ALTER TABLE `orders_perfume_list` DISABLE KEYS */;
INSERT INTO `orders_perfume_list` VALUES (1,3,0),(1,4,1),(2,8,0),(2,9,1);
/*!40000 ALTER TABLE `orders_perfume_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfume`
--

DROP TABLE IF EXISTS `perfume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfume` (
  `id` bigint(20) NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fragrance_base_notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fragrance_middle_notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fragrance_top_notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perfume_gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perfume_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perfumer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `volume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfume`
--

LOCK TABLES `perfume` WRITE;
/*!40000 ALTER TABLE `perfume` DISABLE KEYS */;
INSERT INTO `perfume` VALUES (3,'Китай',NULL,'0dd2d62b-6867-4509-b9b6-275a634fa4f2.pngwing.com (9).png','13','18','алюминий/медь','мужской','Кулер для процессора','Deepcool',2367,'вентилятор; документация; радиатор; набор креплений; Термопаста','865',12),(4,'Китай',NULL,'efa5f860-1a99-45aa-8bf5-e032c7decb51.pngwing.com (12).png','10','15','синтетика','женский','Плющевый мишка','Noname',349,'Мягкая игрушка, упаковка','250',6),(6,'Польша',NULL,'886fe6be-bb53-496f-8e1d-3e28d9869b57.pngwing.com (13).png','3','12','Натрий','Мужской','Зубная паста','Colgate',150,'Упаковка, паста','15',1),(7,'США',NULL,'3d066092-f7e8-4448-b49e-6a4a2977efbb.pngwing.com (14).png','46','30','Синтетика','Мужской','Нижнее белье (трусы)','Calvin Klein',899,'Упаковка, 3 пары трусов','60',3),(8,'Португалия',NULL,'fb209d7e-e900-477a-bd91-77371d326d69.pngwing.com (15).png','50','40','Пластик','Мужской','Ноутбук','Acer',32999,'Упаковка, зарядное устройство, ноутбук, инструкция, гарантийный талон, наклейка','1400',23),(9,'Китай',NULL,'bc554381-6c46-40cd-9a2f-66f29a020a5c.pngwing.com (18).png','1.4','12','Металл','Мужской','Бритва','Gillette',1400,'Упаковка, станок, сменные лезвия (2шт.)','150',2),(10,'Япония',NULL,'cb65ebe1-5cd3-4213-9363-cfe60dd1a038.pngwing.com (17).png','4','7','Стекло','Мужской','Духи','Hugo Boss',900,'Упаковка, флакон','80',4),(11,'Китай',NULL,'cdb497b2-34dc-4f21-bb67-a3af3cde2189.pngwing.com (19).png','40','37','Кожа','Жеский','Сумка','Zara',3200,'Сумка, сменные ручки','200',6),(12,'Китай',NULL,'3bd78164-9a98-454c-8bc6-0a9f9c4ab879.pngwing.com (20).png','400','900','Мех','Жеский','Куртка','Zara',7789,'Куртка','400',7),(13,'Китай',NULL,'abd1163a-0fd6-430b-bc48-3c8c60675ac6.pngwing.com (21).png','4','10','Стекло','Жеский','Духи','Chanel',1400,'Флакон','300',7),(14,'Киатай',NULL,'9bf7c9b0-edf6-4fd0-bad9-e3d9e5e87ccf.pngwing.com (22).png','4','12','Плакстик','Мужской','Телефон Redmi Note 4 ','Xiaomi',7800,'Коробка, з/у, телефон, инструкция','300',7),(15,'Китай',NULL,'d0544620-f05b-45d3-9da4-c0afe1ab93a1.pngwing.com (23).png','5','13','Пластик','Женский','Телефон Galaxy J2','Samsung',3000,'Телефон','200',7),(16,'Швеция',NULL,'eb2c13fe-6324-40cc-872c-8cba81de132a.pngwing.com (25).png','4','10','Заменитель кожи','Мужской','Кросовки','Puma',800,'Кросовки, коробка','100',7),(17,'Китай',NULL,'3c9a443b-3003-4adf-acb4-b63b21158473.pngwing.com (23).png','4','1','Металл','Мужской','Процессорррр','Intel',37999,'Процессор, коробка, кулер','300',5);
/*!40000 ALTER TABLE `perfume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `FKfpm8swft53ulq2hl11yplpr5` (`user_id`),
  CONSTRAINT `FKfpm8swft53ulq2hl11yplpr5` FOREIGN KEY (`user_id`) REFERENCES `usr` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'ADMIN'),(2,'USER'),(5,'PRODA');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usr`
--

DROP TABLE IF EXISTS `usr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usr` (
  `id` bigint(20) NOT NULL,
  `activation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr`
--

LOCK TABLES `usr` WRITE;
/*!40000 ALTER TABLE `usr` DISABLE KEYS */;
INSERT INTO `usr` VALUES (1,NULL,_binary '','sasha87255@gmail.com','$2a$08$6QSAf.1Hp1QvP4J/.9Z8v.Y3NjuozsCDh2wPba8n5bs6pnFBgXW0m','admin'),(2,'86f14a3d-ad92-4415-968b-21585e46256e',_binary '','sasha872555@gmail.com','$2a$08$XZ/M1QnvyrEAsvOD4hrjYOveh06Skk9OqemlBBzhpdTxs9kNdsnf6','user'),(5,NULL,_binary '','sasha87255@gmail.com','$2a$08$YZiIe/gCRA5AwopeOZbZBOoFEvBqp2btyKibOY45qnRi5cyMKs9AW','proda');
/*!40000 ALTER TABLE `usr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usr_perfume_list`
--

DROP TABLE IF EXISTS `usr_perfume_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usr_perfume_list` (
  `user_id` bigint(20) NOT NULL,
  `perfume_list_id` bigint(20) NOT NULL,
  KEY `FK1n7n8prjoexkp1twc9f6kgbtm` (`perfume_list_id`),
  KEY `FKc5b4lo20noteewtlrq1kd8nhs` (`user_id`),
  CONSTRAINT `FK1n7n8prjoexkp1twc9f6kgbtm` FOREIGN KEY (`perfume_list_id`) REFERENCES `perfume` (`id`),
  CONSTRAINT `FKc5b4lo20noteewtlrq1kd8nhs` FOREIGN KEY (`user_id`) REFERENCES `usr` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr_perfume_list`
--

LOCK TABLES `usr_perfume_list` WRITE;
/*!40000 ALTER TABLE `usr_perfume_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `usr_perfume_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'perfume'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-17  5:10:27
