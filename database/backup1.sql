-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: free1db.zikum.cz    Database: tipovacka_tk
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.48-MariaDB-1~jessie

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `team_home_id` tinyint(4) NOT NULL,
  `team_away_id` tinyint(4) NOT NULL,
  `match_time` timestamp NOT NULL DEFAULT '1979-12-31 23:00:00',
  `city` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES (1,1,2,'2021-05-21 13:15:00',''),(2,9,10,'2021-05-21 13:15:00',''),(3,3,4,'2021-05-21 17:15:00',''),(4,11,12,'2021-05-21 17:15:00',''),(5,5,6,'2021-05-22 09:15:00',''),(6,13,9,'2021-05-22 09:15:00',''),(7,7,1,'2021-05-22 13:15:00',''),(8,14,15,'2021-05-22 13:15:00',''),(9,2,8,'2021-05-22 17:15:00',''),(10,12,16,'2021-05-22 17:15:00',''),(11,7,4,'2021-05-23 09:15:00',''),(12,13,10,'2021-05-23 09:15:00',''),(13,6,3,'2021-05-23 13:15:00',''),(14,16,14,'2021-05-23 13:15:00',''),(15,5,8,'2021-05-23 17:15:00',''),(16,11,15,'2021-05-23 17:15:00',''),(17,4,1,'2021-05-24 13:15:00',''),(18,12,10,'2021-05-24 13:15:00',''),(19,2,3,'2021-05-24 17:15:00',''),(20,9,11,'2021-05-24 17:15:00',''),(21,7,5,'2021-05-25 13:15:00',''),(22,15,16,'2021-05-25 13:15:00',''),(23,8,6,'2021-05-25 17:15:00',''),(24,14,13,'2021-05-25 17:15:00',''),(25,1,5,'2021-05-26 13:15:00',''),(26,16,9,'2021-05-26 13:15:00',''),(27,3,7,'2021-05-26 17:15:00',''),(28,11,13,'2021-05-26 17:15:00',''),(29,8,4,'2021-05-27 13:15:00',''),(30,15,12,'2021-05-27 13:15:00',''),(31,6,2,'2021-05-27 17:15:00',''),(32,14,10,'2021-05-27 17:15:00',''),(33,6,7,'2021-05-28 13:15:00',''),(34,16,11,'2021-05-28 13:15:00',''),(35,5,3,'2021-05-28 17:15:00',''),(36,12,13,'2021-05-28 17:15:00',''),(37,2,7,'2021-05-29 09:15:00',''),(38,10,16,'2021-05-29 09:15:00',''),(39,8,1,'2021-05-29 13:15:00',''),(40,13,15,'2021-05-29 13:15:00',''),(41,4,5,'2021-05-29 17:15:00',''),(42,9,14,'2021-05-29 17:15:00',''),(43,3,8,'2021-05-30 13:15:00',''),(44,10,11,'2021-05-30 13:15:00',''),(45,6,4,'2021-05-30 17:15:00',''),(46,14,12,'2021-05-30 17:15:00',''),(47,2,5,'2021-05-31 13:15:00',''),(48,15,9,'2021-05-31 13:15:00',''),(49,1,6,'2021-05-31 17:15:00',''),(50,13,16,'2021-05-31 17:15:00',''),(51,8,7,'2021-06-01 09:15:00',''),(52,11,14,'2021-06-01 09:15:00',''),(53,4,2,'2021-06-01 13:15:00',''),(54,10,15,'2021-06-01 13:15:00',''),(55,1,3,'2021-06-01 17:15:00',''),(56,9,12,'2021-06-01 17:15:00','');
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_resets_table',1),(6,'2019_08_19_000000_create_failed_jobs_table',1),(10,'2020_03_10_122353_create_matches_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `score` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participants`
--

LOCK TABLES `participants` WRITE;
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;
INSERT INTO `participants` VALUES (33,1,0,'2021-05-19 09:11:34','2021-05-19 10:09:51'),(34,57,0,'2021-05-19 12:09:03','2021-05-19 12:09:03'),(35,59,0,'2021-05-19 13:16:55','2021-05-19 13:16:55'),(36,60,0,'2021-05-19 13:55:44','2021-05-19 13:55:44'),(37,62,0,'2021-05-19 16:36:20','2021-05-19 16:36:20'),(38,58,0,'2021-05-19 17:04:54','2021-05-19 17:04:54'),(39,52,0,'2021-05-19 17:14:06','2021-05-19 17:14:06'),(40,61,0,'2021-05-19 17:36:12','2021-05-19 17:36:12'),(41,66,0,'2021-05-20 04:18:49','2021-05-20 04:18:49'),(42,65,0,'2021-05-20 04:18:54','2021-05-20 04:18:54'),(43,69,0,'2021-05-20 07:30:56','2021-05-20 07:30:56'),(44,68,0,'2021-05-20 07:31:00','2021-05-20 07:31:00'),(45,63,0,'2021-05-20 08:15:33','2021-05-20 08:15:33'),(46,67,0,'2021-05-20 08:37:03','2021-05-20 08:37:03'),(47,70,0,'2021-05-20 12:13:58','2021-05-20 12:13:58'),(48,64,0,'2021-05-20 12:14:08','2021-05-20 12:14:08'),(49,71,0,'2021-05-20 14:41:08','2021-05-20 14:41:08'),(50,72,0,'2021-05-20 16:49:59','2021-05-20 16:49:59'),(51,50,0,'2021-05-20 17:35:41','2021-05-20 17:35:41'),(52,55,0,'2021-05-20 17:36:22','2021-05-20 17:36:22'),(53,73,0,'2021-05-20 17:36:31','2021-05-20 17:36:31'),(54,74,0,'2021-05-20 17:36:40','2021-05-20 17:36:40'),(55,75,0,'2021-05-20 17:36:44','2021-05-20 17:36:44'),(56,76,0,'2021-05-20 17:48:47','2021-05-20 17:48:47'),(57,78,0,'2021-05-20 18:04:05','2021-05-20 18:04:05');
/*!40000 ALTER TABLE `participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('david.fibr@gmail.com','$2y$10$o.tnI4YrVUnaeQG1v1TUweaAl9J4azxABM6iJj/BDtj3xD2iqea2C','2020-03-10 09:31:36');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (24,1,'Ahoj, já vás zdravim. ?','2021-05-19 09:09:49','2021-05-19 09:09:49'),(25,51,'letos jsi to teda pozvednul na další level :-)','2021-05-19 10:20:12','2021-05-19 10:20:12'),(27,59,'Šikovný si Davide','2021-05-19 19:10:50','2021-05-19 19:10:50');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `results` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `match_id` tinyint(3) unsigned NOT NULL,
  `score` char(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `match_id` (`match_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `team` varchar(20) NOT NULL,
  `abbreviation` varchar(3) NOT NULL,
  `grupa` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Rusko','RUS','A'),(2,'Česká Republika','CZE','A'),(3,'Bělorusko','BLR','A'),(4,'Slovensko','SVK','A'),(5,'Dánsko','DEN','A'),(6,'Švédsko','SWE','A'),(7,'Velká Británie','GBR','A'),(8,'Švýcarsko','SWI','A'),(9,'Německo','GER','B'),(10,'Itálie','ITA','B'),(11,'Kanada','CAN','B'),(12,'Lotyšsko','LAT','B'),(13,'Norsko','NOR','B'),(14,'Finsko','FIN','B'),(15,'USA','USA','B'),(16,'Kazachstán','KAZ','B');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tips`
--

DROP TABLE IF EXISTS `tips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tips` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `score` varchar(255) NOT NULL,
  `placement` varchar(255) DEFAULT NULL,
  `players` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tips`
--

LOCK TABLES `tips` WRITE;
/*!40000 ALTER TABLE `tips` DISABLE KEYS */;
INSERT INTO `tips` VALUES (49,48,'12-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00','15-2-5-1-9-16-8-4','test-1-5-dement-1-2','2021-05-19 07:44:43','2021-05-19 09:07:39'),(50,1,'10-01-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00','16-10-7-13-3-6-9-1','Jaromír-68-2-Jaromír-68-2','2021-05-19 09:11:12','2021-05-20 15:14:51'),(51,52,'24-51-23-54-15-23-16-32-31-62-13-22-41-04-22-53-24-40-62-35-23-51-44-51-42-24-42-41-21-41-23-50-51-18-43-53-73-30-35-13-31-25-24-28-62-52-41-42-32-22-51-32-34-25-61-54','11-2-14-1-6-8-15-9','Jakub Vrána-13-2-Jarda Jágr-68-2','2021-05-19 10:50:00','2021-05-19 10:50:00'),(52,57,'23-21-13-41-14-12-04-43-32-31-02-21-41-03-13-42-24-31-30-15-02-30-33-31-30-02-21-62-22-31-23-40-40-16-33-32-51-41-34-14-32-25-15-17-41-41-42-31-42-30-41-31-24-14-62-32','11-6-1-2-14-4-8-15','Filip-11-2-Filip-11-2','2021-05-19 12:07:59','2021-05-20 17:23:00'),(55,59,'13-41-24-51-05-13-17-35-42-22-15-24-31-04-23-33-24-22-31-16-13-61-32-62-41-22-31-51-33-52-33-61-50-14-11-32-71-21-24-25-41-34-23-15-23-51-51-41-33-22-31-44-24-00-31-22','2-11-15-6-14-4-8-12','Jakub Vrána-15-2-Jakub Vrána-15-2','2021-05-19 13:15:21','2021-05-19 13:15:21'),(56,58,'41-50-13-31-15-22-07-32-33-31-15-31-51-06-15-43-05-41-51-22-04-50-33-51-61-05-41-42-31-22-33-70-80-05-23-32-70-23-15-15-32-14-04-08-51-41-50-33-22-42-50-31-13-06-51-22','14-6-11-1-2-8-15-12','Brown-10-11-Burdasov-11-1','2021-05-19 13:40:27','2021-05-19 13:46:14'),(57,60,'41-50-21-61-04-12-09-22-32-30-03-40-41-04-02-21-04-30-21-14-12-41-23-21-31-23-31-51-31-22-22-40-40-06-23-31-60-13-13-12-21-13-22-08-30-31-41-21-33-21-40-31-13-06-41-22','11-1-14-2-9-8-12-13','Adam Henrique-14-11-Adam Henrique-14-11','2021-05-19 13:42:05','2021-05-19 13:42:05'),(58,61,'23-40-22-63-25-33-09-31-13-42-25-30-62-07-22-32-24-41-31-37-15-52-23-32-72-03-63-61-23-41-33-70-81-06-11-33-50-12-22-21-43-25-02-16-30-50-20-31-53-20-31-44-15-06-42-22','14-11-2-1-6-15-12-8','Sekáč-92-2-Okulov-21-1','2021-05-19 14:30:45','2021-05-20 16:44:42'),(59,62,'34-31-22-42-24-22-05-23-32-51-13-32-33-05-22-22-23-32-22-24-12-60-22-33-41-13-42-41-31-32-24-41-41-06-22-32-31-32-34-35-22-23-33-15-22-32-32-42-33-42-41-33-23-04-42-23','2-1-11-15-6-5-14-8','Jiri Sekáč-92-2-Jiri Sekáč-92-2','2021-05-19 16:09:01','2021-05-19 16:09:01'),(60,63,'22-70-22-52-13-22-08-13-41-42-15-31-32-14-23-35-14-51-51-24-13-51-13-31-40-24-51-41-32-52-24-61-50-15-24-31-81-23-24-25-22-24-13-25-41-33-52-52-32-33-52-42-15-08-51-33','1-15-2-11-6-8-9-14','Jakub Vrána-20-2-Konstantin Okulov-21-1','2021-05-19 17:56:33','2021-05-19 17:56:33'),(61,64,'42-51-22-42-13-10-16-22-31-32-12-20-31-13-33-22-23-21-40-24-14-51-22-21-42-33-31-42-11-30-22-51-40-13-22-31-52-24-23-33-22-13-13-16-41-21-32-33-32-22-41-43-25-25-42-22','11-2-6-1-14-8-9-13','Mikhail Grigorenko-25-1-Dominik Kubalík-8-2','2021-05-19 17:59:49','2021-05-19 17:59:49'),(62,65,'23-32-30-51-24-02-04-23-21-42-12-30-32-20-23-53-31-31-31-23-21-42-24-33-34-13-42-52-34-34-34-21-30-13-34-23-51-30-52-35-24-33-31-03-52-34-20-34-23-20-31-32-24-23-22-41','2-11-1-15-4-5-6-9','Jakub Vrána-13-2-Gabriel-13-11','2021-05-20 02:59:30','2021-05-20 05:43:32'),(63,66,'33-41-22-51-24-12-07-24-32-42-14-41-42-13-24-31-14-32-42-15-25-20-34-21-31-22-40-41-53-41-24-52-70-25-22-24-51-13-33-14-24-23-14-17-33-20-42-31-43-00-41-42-25-14-40-30','2-11-6-1-14-15-8-9','Filip Zadina-11-2-Filip Zadina-11-2','2021-05-20 03:48:28','2021-05-20 03:48:28'),(64,67,'24-40-12-41-13-02-08-32-42-20-14-40-30-03-24-32-25-40-41-34-14-31-32-20-30-14-21-31-31-20-23-60-50-04-31-02-61-13-24-23-22-32-02-07-31-20-31-53-23-20-50-23-24-06-52-31','2-1-9-6-11-14-15-8','Jakub Vraná-13-2-Filip Zadina-11-2','2021-05-20 06:10:07','2021-05-20 06:10:07'),(65,56,'20-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00','1-2-4-5-7-12-15-16','Pepa--1-Jarka-1-1','2021-05-20 06:46:28','2021-05-20 15:37:07'),(66,68,'22-50-22-33-14-22-07-33-22-22-16-31-51-13-14-42-24-51-51-22-14-31-11-40-51-13-51-41-42-22-22-70-80-04-33-31-90-14-22-03-42-22-13-07-33-32-51-33-22-11-70-22-14-05-52-11','6-2-8-1-14-11-15-9','Kempe-99-6-Olofsson-98-6','2021-05-20 07:07:54','2021-05-20 07:07:54'),(67,69,'35-51-33-63-16-33-27-22-31-44-25-61-61-15-11-23-25-40-34-36-22-70-22-53-42-24-31-52-32-51-33-81-70-25-25-44-73-13-45-16-42-36-33-29-31-31-44-32-34-22-52-54-25-17-32-22','6-1-2-11-15-4-14-9','Anton Burdasov-71-1-Jakub Vrána-13-2','2021-05-20 07:28:34','2021-05-20 07:28:34'),(68,70,'24-80-15-71-14-05-09-23-62-30-16-50-61-16-25-31-15-41-62-15-23-70-25-52-70-15-51-50-33-62-24-60-70-17-33-23-80-13-26-26-42-24-14-09-42-50-61-63-32-30-52-42-25-09-71-52','2-11-6-1-15-14-9-8','Jakub Vrána-13-2-Jakub Vrána-13-2','2021-05-20 11:49:41','2021-05-20 11:49:41'),(69,71,'24-52-34-71-26-54-19-32-21-31-07-71-62-34-25-41-15-41-63-25-04-41-32-54-61-35-50-53-43-41-23-51-70-25-24-36-80-14-34-43-32-34-35-07-31-43-41-43-43-52-70-53-25-16-53-54','11-1-2-13-6-8-9-15','Vrana Jakub-13-2-Vrana Jakub-13-2','2021-05-20 14:23:56','2021-05-20 14:52:31'),(70,72,'24-62-15-91-35-14-09-33-31-42-25-30-61-16-14-53-14-42-61-26-25-72-45-32-44-24-22-11-40-51-22-40-61-07-20-33-50-33-21-12-20-12-14-08-13-21-42-32-11-53-42-32-16-13-62-21','11-2-1-6-8-14-15-4','Zadina-1-2-Voronkov-2-1','2021-05-20 16:09:23','2021-05-20 16:12:18'),(71,55,'22-51-13-80-15-12-06-22-42-20-03-21-50-00-22-53-15-31-40-16-14-50-15-40-40-03-00-60-22-41-12-70-70-09-00-21-50-00-15-15-30-13-33-09-52-62-40-62-33-31-00-32-03-07-80-51','11-1-2-6-14-15-9-12','Maxime Comtois--11-Kevin Labanc--15','2021-05-20 16:11:27','2021-05-20 16:11:27'),(72,50,'13-40-23-50-14-24-07-22-21-30-04-41-52-04-14-32-13-30-42-25-12-40-22-31-50-12-32-60-31-30-21-60-80-09-24-11-60-04-13-14-30-13-02-07-31-51-40-23-34-13-60-43-24-06-51-31','2-14-6-9-8-15-1-11','Dominik Kubalík--2-Ryan Donato--15','2021-05-20 16:35:34','2021-05-20 16:35:34'),(73,73,'34-52-13-63-23-22-16-34-42-33-25-33-42-25-23-42-25-22-41-25-14-51-24-52-42-35-51-62-24-51-24-72-52-36-33-12-61-32-34-23-12-34-23-26-42-32-43-43-42-11-31-43-24-23-52-31','2-11-6-1-9-15-14-4','Kempe adr.--6-Špaček--2','2021-05-20 16:47:42','2021-05-20 16:47:42'),(74,75,'24-51-34-81-24-13-17-43-43-52-17-50-41-08-14-53-14-30-61-14-15-90-25-40-51-17-40-61-32-70-43-90-71-09-24-13-70-32-14-05-42-23-25-09-31-51-60-42-34-41-70-53-23-19-61-42','11-2-15-6-9-1-14-8','Mangiamang--1-Jason Robertson--1','2021-05-20 17:15:53','2021-05-20 17:34:46'),(75,74,'32-41-23-60-15-42-09-42-42-40-15-50-51-07-35-53-16-00-41-26-24-61-24-52-40-32-42-51-43-42-34-70-90-27-42-43-80-25-23-24-31-14-25-09-51-42-61-52-34-31-61-33-25-18-41-22','11-6-1-2-8-14-15-12','Burdasov--1-Rakell--1','2021-05-20 17:30:15','2021-05-20 17:30:15'),(76,76,'14-80-13-62-15-24-09-43-31-30-14-41-31-18-23-32-24-30-41-34-14-70-23-51-51-15-31-52-23-42-34-80-60-09-13-32-61-12-23-24-32-25-34-09-31-42-51-43-43-40-40-34-24-09-42-32','14-11-2-1-4-9-15-6','Maxime Controis--11-Hannes Bjorninnen--14','2021-05-20 17:46:19','2021-05-20 18:03:43'),(77,78,'12-31-04-62-03-21-52-23-42-41-13-21-52-06-24-43-23-42-52-00-28-71-13-41-42-13-20-20-13-41-31-51-70-91-23-32-51-32-24-25-31-24-13-04-31-42-31-62-23-21-42-31-25-15-42-32','11-2-15-6-1-8-14-13','Nick Paul--11-Ryan Dovialo--15','2021-05-20 18:02:09','2021-05-20 18:02:09');
/*!40000 ALTER TABLE `tips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'img/avatars/svg/048-groom.svg',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'fabry.d@seznam.cz','David','Fábry','fibrdav','$2y$10$hWpkrA1xU9ABJdx27XP5DO6S8dWYZ0vrwYXyNqM0OUKfAzs0zf9ka','img/avatars/svg/037-scientist.svg','Z7Hn1DtA3F6PopvluBo9Lf0zrwmih5qwfu9CCfO6GjQnIlFR7ab5acHFgLhT','2020-03-11 14:15:16','2021-05-20 15:02:24'),(50,'hanuscik10@seznam.cz','Jakub','Hanuščík','hanusjak','$2y$10$1gtrsnr2YTtz2nEk/5n3e.YCoIR2pSQRkjYTlDvvJ/yTLNPcEHk4K','img/avatars/svg/020-man-7.svg',NULL,'2021-05-19 09:58:40','2021-05-19 09:58:40'),(51,'krejsa.pepa@gmail.com','Josef','Krejsa','krejsjos','$2y$10$adouVq15L4Szpfhv.9gXx.66UsJqxwpgP76JcP.7V2cfKha8uHo5C','img/avatars/svg/095-man-30.svg',NULL,'2021-05-19 10:19:42','2021-05-19 10:20:34'),(52,'dmp.cups@gmail.com','Tomáš','Bureš','burestom','$2y$10$OX1/paBBZbMpkYXtuXwAxO.G1V.gtSmCCYTBV/zyX985tD1UC5J8m','img/avatars/svg/020-man-7.svg',NULL,'2021-05-19 10:34:01','2021-05-19 10:34:01'),(53,'milanprask@seznam.cz','Josef','Kučera','kucerjos','$2y$10$6H08e9SzMAepk5mMNKJf1.VYt87FMU8vSgfDQWKP8oposdZrBxEBe','img/avatars/svg/020-man-7.svg',NULL,'2021-05-19 10:41:39','2021-05-19 10:41:39'),(54,'lincbratro@gmail.com','Radim','Linc','lincrad','$2y$10$Vmh1xwQ8lLZ94PTqNFNkQu5bg3epwqCdHIXUX4Nlow0keHkxLhXzK','img/avatars/svg/020-man-7.svg',NULL,'2021-05-19 10:42:11','2021-05-19 10:42:11'),(55,'viduna1996@seznam.cz','David','Viduna','vidundav','$2y$10$bSlpv7pFy0Cz/cLZoPbM2.dDXur4tqVdYEsZU4rK5FdcD8u87jm7S','img/avatars/svg/068-check.svg',NULL,'2021-05-19 10:42:54','2021-05-20 16:31:23'),(56,'admin@admin.admin','Admin','Admin','adminadm','$2y$10$rq1d.j1MSkgumx2zpEH08OETvFISF2Dn2qntE97eNwBsUDnjIxspS','img/avatars/svg/020-man-7.svg',NULL,'2021-05-19 11:34:58','2021-05-19 11:34:58'),(57,'stefan2630@seznam.cz','Filip','Štefan','stefafil','$2y$10$3ribYOJ9ww.aIq/3wuR1S.wVdEK7Ia2LzUdDNpFFYS0Sq0eQ5WtbW','img/avatars/svg/020-man-7.svg',NULL,'2021-05-19 11:51:13','2021-05-19 11:51:13'),(58,'ivohro@post.cz','Ivo','Hromádka','hromaivo','$2y$10$5XRRdf6EwikwY.qhQYTHsuUv92isuUwJZzQ1XFC6RgS61y2EHTfY2','img/avatars/svg/097-boy-3.svg',NULL,'2021-05-19 12:29:42','2021-05-19 13:38:13'),(59,'Davids117@seznam.cz','David','Kohout','kohoudav','$2y$10$/.04bcF/vMrPgfWNvJqClO.aVTScd9jZLhrCfToqoTowry7R6Bhke','img/avatars/svg/063-man-23.svg',NULL,'2021-05-19 12:47:59','2021-05-19 12:49:59'),(60,'jiribrucek@seznam.cz','Jiri','Brucek','brucejir','$2y$10$7H4mO3Uf5KD//rBz7yyGQukVmyPvjgUEWSpkUyTJw2wH2tP7UbVf2','img/avatars/svg/020-man-7.svg',NULL,'2021-05-19 13:23:01','2021-05-19 13:23:01'),(61,'miksovsky.martin@gmail.com','Martin','Mikš','miksmar','$2y$10$WnzmxU4nxls0zd6hmRxdNOu3zNoX4THK4Snoj6CEwe.J9/77t0Wx2','img/avatars/svg/020-man-7.svg',NULL,'2021-05-19 13:50:50','2021-05-19 13:50:50'),(62,'mazanekjonny@seznam.cz','Jan','Bartoň','bartojan','$2y$10$8B.0.O8LWSY0V5Uv5hvTJeQ6zKFY8xBKyCkF2wsjEZyZcpAAl2QH2','img/avatars/svg/020-man-7.svg',NULL,'2021-05-19 15:41:44','2021-05-19 15:41:44'),(63,'jarda.95@seznam.cz','Jaroslav','Trnka','trnkajar','$2y$10$3v8xSkw4YFZlz/8MZGPjsO6po1wrFZOr93N.879EedF4VpWrPWfhu','img/avatars/svg/020-man-7.svg',NULL,'2021-05-19 17:33:53','2021-05-19 17:33:53'),(64,'ondrej.zila@seznam.cz','Ondřej','Žíla','zilaond','$2y$10$T8qRDIw0DXt0nt/8kraumOnZUl4ez5vKYB7qRLJWHTNY0V2LxtikG','img/avatars/svg/048-groom.svg',NULL,'2021-05-19 17:37:24','2021-05-19 17:39:04'),(65,'aneta.bauerovaa@gmail.com','Aneta','Bauerová','bauerane','$2y$10$9BtJCp4TEmUvaK4LWS/wwOsfKMP.T4q6a5E15O7iFvOvjYt5es6qW','img/avatars/svg/030-king.svg',NULL,'2021-05-20 02:37:23','2021-05-20 03:01:22'),(66,'martin.ruzicka86@seznam.cz','Martin','Růžička','ruzicmar','$2y$10$Dck68z/2Dfxq/UChQOslPOMKEwozbhvVyC3tMnVIeWeypjQU/UKUG','img/avatars/svg/020-man-7.svg',NULL,'2021-05-20 03:34:59','2021-05-20 03:34:59'),(67,'MichalVilda@seznam.cz','Michal','Vilda','vildamic','$2y$10$DkWPaRxqjKyyqihELbqoIeGU12igNpwqB9uZKT13qIZVvUdPLwjW.','img/avatars/svg/020-man-7.svg',NULL,'2021-05-20 05:29:34','2021-05-20 05:29:34'),(68,'pavel.krejci@hotmail.com','Pavel','Krejčí','krejcpav','$2y$10$NrsSVz2/RnrcJ5rNBrf6Rer6MZ02aEYwh3c/S0UujzkCsbssNHR3G','img/avatars/svg/020-man-7.svg',NULL,'2021-05-20 06:06:09','2021-05-20 06:06:09'),(69,'mirekfabry@seznam.cz','Mirek','Fábry','fabrymir','$2y$10$As0fubiNI6i06yHF8hJlQuhVr/e9C.bmWZ4MTrvAdaLSR3lA4SgwS','img/avatars/svg/020-man-7.svg',NULL,'2021-05-20 06:44:37','2021-05-20 06:44:37'),(70,'navrca29@seznam.cz','Jaroslav','Navrátil','navrajar','$2y$10$gj2VnIUFKes3BOhSkIOQUOyVkbfF2pzJLvv0rgPzgLbbTYzwofR2a','img/avatars/svg/020-man-7.svg',NULL,'2021-05-20 11:31:11','2021-05-20 11:31:11'),(71,'jakubkasparek@seznam.cz','Jakub','Kasparek','kaspajak','$2y$10$es625unj1jbJfOx4Pd1zeerojChb6hlXNUAevA/CQovs7.gRtpEYq','img/avatars/svg/088-man-29.svg',NULL,'2021-05-20 13:43:27','2021-05-20 14:54:24'),(72,'dbauer@seznam.cz','David','Bauer','bauerdav','$2y$10$Lo0xD2FBQ4BjC5JlXnU0B.7TEa2InPbmd0/nnul/fpkJsSfnaf1km','img/avatars/svg/091-professor-1.svg',NULL,'2021-05-20 14:28:12','2021-05-20 16:14:21'),(73,'MichaelHanuscik@seznam.cz','Michael','Hanuščík','hanusmic','$2y$10$.avKDR3eA1OwkQsci7LCJOUscvpSfpGDEmbpOBffr/0OKHxe6zNi2','img/avatars/svg/020-man-7.svg',NULL,'2021-05-20 16:38:25','2021-05-20 16:38:25'),(74,'lukaskrupicka@seznam.cz','Lukáš','Krupička','krupiluk','$2y$10$Z6acXCpeUd/yAmpx2V4BS.uNziMYIwgozwZhD7PvBVM830qFyjt9m','img/avatars/svg/088-man-29.svg',NULL,'2021-05-20 17:03:12','2021-05-20 17:04:07'),(75,'stepanhanuscik@seznam.cz','Štěpán','Hanuščík','hanusste','$2y$10$q6vbO17Muy8FV6.agmBSHu9PsWh4EWWv6LUsuOkau1Wq93u.aQJ.G','img/avatars/svg/020-man-7.svg',NULL,'2021-05-20 17:16:29','2021-05-20 17:16:29'),(76,'lukasjanega@seznam.cz','Lukáš','Janega','janegluk','$2y$10$h6UwrDaCfvqFcHpiMQ.V.OAz2THyAzqyzRkMSLSPG7xzbHep0TWaq','img/avatars/svg/020-man-7.svg',NULL,'2021-05-20 17:38:39','2021-05-20 17:38:39'),(77,'kuba.krupicka@centrum.cz','Jakub','Krupička','krupijak','$2y$10$QVDZb5az8uLD7grczP38Q.GXo9uKEjNhTwP2X74Uo1mV.lFfNOEj6','img/avatars/svg/020-man-7.svg',NULL,'2021-05-20 17:51:19','2021-05-20 17:51:19'),(78,'jakubdosek@seznam.cz','Jakub','Došek','dosekjak','$2y$10$DhSnKYCtjv/g2JfLQTtkjuV5m3dLrAHIgAAkck5Am8LEeQb4XVqP2','img/avatars/svg/020-man-7.svg',NULL,'2021-05-20 17:54:34','2021-05-20 17:54:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tipovacka_tk'
--

--
-- Dumping routines for database 'tipovacka_tk'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 22:16:47
