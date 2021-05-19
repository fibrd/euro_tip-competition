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
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_home_id` tinyint(4) NOT NULL,
  `team_away_id` tinyint(4) NOT NULL,
  `match_time` timestamp NULL DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES (1,3,1,'2020-06-12 19:00:00','Rome'),(2,4,2,'2020-06-13 13:00:00','Baku'),(3,6,7,'2020-06-13 16:00:00','Copenhagen'),(4,5,8,'2020-06-13 19:00:00','Saint Petersburg'),(5,15,13,'2020-06-14 13:00:00','London'),(6,9,11,'2020-05-14 16:00:00','Bucharest '),(7,10,12,'2020-06-14 19:00:00','Amsterdam'),(8,16,14,'2020-06-15 13:00:00','Glasgow'),(9,18,17,'2020-06-15 16:00:00','Dublin'),(10,19,20,'2020-06-15 19:00:00','Bilbao'),(11,23,24,'2020-06-16 16:00:00','Budapest'),(12,21,22,'2020-06-16 19:00:00','Munich'),(13,7,8,'2020-06-17 13:00:00','Saint Petersburg'),(14,3,4,'2020-06-17 16:00:00','Baku'),(15,1,2,'2020-06-17 19:00:00','Rome'),(16,12,11,'2020-06-18 13:00:00','Bucharest '),(17,6,5,'2020-06-18 16:00:00','Copenhagen'),(18,10,9,'2020-06-18 19:00:00','Amsterdam'),(19,20,17,'2020-06-19 13:00:00','Dublin'),(20,13,14,'2020-06-19 16:00:00','Glasgow'),(21,15,16,'2020-06-19 19:00:00','London'),(22,23,21,'2020-06-20 13:00:00','Budapest'),(23,24,22,'2020-06-20 16:00:00','Munich'),(24,19,18,'2020-06-20 19:00:00','Bilbao'),(25,1,4,'2020-06-21 16:00:00','Rome'),(26,2,3,'2020-06-21 16:00:00','Baku'),(27,11,9,'2020-04-01 16:58:09','Bucharest'),(28,12,10,'2020-06-22 16:00:00','Amsterdam'),(29,8,6,'2020-04-01 16:58:43','Copenhagen'),(30,7,5,'2020-04-01 16:58:38','Saint Petersburg'),(31,14,15,'2020-04-01 16:58:27','London'),(32,13,16,'2020-06-23 19:00:00','Glasgow'),(33,17,19,'2020-06-24 16:00:00','Bilbao'),(34,20,18,'2020-06-24 16:00:00','Dublin'),(35,22,23,'2020-04-01 16:58:24','Munich'),(36,24,21,'2020-04-01 16:58:16','Budapest');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (40,'2014_10_12_000000_create_users_table',1),(41,'2014_10_12_100000_create_password_resets_table',1),(42,'2019_08_19_000000_create_failed_jobs_table',1),(43,'2020_03_26_083324_create_posts_table',1),(44,'2020_03_26_094440_create_matches_table',1),(45,'2020_03_26_094456_create_tips_table',1),(46,'2020_03_26_094515_create_results_table',1),(47,'2020_03_26_094544_create_teams_table',1),(48,'2020_03_26_094618_create_participants_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participants` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `score` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `participants_user_id_foreign` (`user_id`),
  CONSTRAINT `participants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participants`
--

LOCK TABLES `participants` WRITE;
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;
INSERT INTO `participants` VALUES (1,1,3,'2020-04-01 15:16:30','2020-04-06 09:21:27'),(2,2,2,'2020-04-01 15:24:29','2020-04-01 15:24:40'),(3,3,5,'2020-04-01 15:24:32','2020-04-01 15:26:47');
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
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `post` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'Hello, this is my first post. ?','2020-04-01 15:16:04','2020-04-01 15:16:04'),(2,2,'Hi everybody, how are you?','2020-04-01 15:19:27','2020-04-01 15:19:27'),(3,3,'Well, I am really good. Thanks. ?','2020-04-01 15:21:03','2020-04-01 15:21:03'),(4,1,'?','2020-09-28 15:40:13','2020-09-28 15:40:13'),(5,4,'?','2021-02-19 12:56:49','2021-02-19 12:56:49'),(6,4,'Neumite nic. ?','2021-02-19 13:00:13','2021-02-19 13:00:13');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `results` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `match_id` bigint(20) unsigned NOT NULL,
  `score` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (1,1,'2:0'),(2,2,'0:2'),(3,3,'1:0'),(4,4,'0:0'),(5,5,'2:0'),(6,6,'3:1'),(8,7,'2:0'),(9,8,'1:0');
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupa` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Italy','ITA','A'),(2,'Switzerland','SWI','A'),(3,'Turkey','TUR','A'),(4,'Wales','WAL','A'),(5,'Belgium','BEL','B'),(6,'Denmark','DEN','B'),(7,'Finland','FIN','B'),(8,'Russia','RUS','B'),(9,'Austria','AUS','C'),(10,'Netherland','NET','C'),(11,'WinnerD','WID','C'),(12,'Ukraine','UKR','C'),(13,'Croatia','CRO','D'),(14,'Czech Republic','CZE','D'),(15,'England','ENG','D'),(16,'WinnerC','WIC','D'),(17,'WinnerB','WIB','E'),(18,'Poland','POL','E'),(19,'Spain','SPA','E'),(20,'Sweden','SWE','E'),(21,'France','FRA','F'),(22,'Germany','GER','F'),(23,'WinnerA','WIA','F'),(24,'Portugal','POR','F');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tips`
--

DROP TABLE IF EXISTS `tips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tips` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `score` char(107) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `tips_user_id_foreign` (`user_id`),
  CONSTRAINT `tips_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tips`
--

LOCK TABLES `tips` WRITE;
/*!40000 ALTER TABLE `tips` DISABLE KEYS */;
INSERT INTO `tips` VALUES (1,1,'21-01-11-12-11-11-11-21-11-22-11-11-31-11-12-11-11-12-12-11-11-11-12-11-21-21-21-21-11-11-11-11-12-11-11-12','2020-04-01 15:15:42','2020-12-10 22:26:36'),(2,2,'11-11-12-11-11-11-12-11-11-11-11-12-11-11-21-01-01-12-11-11-11-21-11-11-12-13-00-01-00-00-00-11-12-00-00-01','2020-04-01 15:18:19','2020-04-01 15:18:19'),(3,3,'11-11-00-00-11-11-21-00-11-01-01-11-01-11-12-12-31-01-12-01-42-10-12-21-01-51-21-11-21-21-20-21-22-11-31-11','2020-04-01 15:21:33','2020-04-01 15:21:33'),(4,5,'00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00','2020-04-01 15:46:27','2020-04-01 15:46:27'),(5,7,'44-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00','2020-07-17 06:47:01','2020-07-17 06:47:01'),(6,4,'40-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00','2021-02-19 12:59:35','2021-02-19 12:59:48');
/*!40000 ALTER TABLE `tips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','Admin','admin@admin.admin','$2y$10$Fqgyfe67Qm6WTf/XcTLNG.Sv8gIrNqiiO2PUInXfC5VUU58J5oe/.','adminadm','img/avatars/svg/005-woman-2.svg',NULL,'2020-04-01 15:15:15','2020-12-10 22:27:50'),(2,'Random','User','random@user.com','$2y$10$U9aspm/.2ApImP1tJUhlpueaHmeN0d9r6y4F/a3H8vExjwpQANvzG','userran','img/avatars/svg/088-man-29.svg',NULL,'2020-04-01 15:17:56','2020-04-01 15:19:40'),(3,'Test','User','test@user.com','$2y$10$kBPmEbLsVjUhuSitxB96D.6V0xdfofHKRxnZyyGlReroJspJNRjZm','usertester','img/avatars/svg/064-woman-24.svg',NULL,'2020-04-01 15:20:18','2020-04-01 15:27:02'),(4,'Guest','Guest','guest@guest.guest','$2y$10$Dzz/hHbUJe7DoYOW5c/3Ou.CMHBh6sr4CpP9bI14w8OTZrqvLkxv2','guestgue','img/avatars/svg/030-king.svg',NULL,'2020-04-01 15:22:36','2021-02-19 12:58:05'),(5,'David','Fábry','fabry.d@seznam.cz','$2y$10$v4JEaHH.RMkN3AokPLVGC.EfWDVrDKvMm8uujBXJ18IjmsdojsOda','fabrydav','img/avatars/svg/016-woman-10.svg','iQMEE8fk82Id5fzdSBrAvVYn6VQZPtopaTz7hHCv70mLnw3mUidnS6s52Ur9','2020-04-01 15:36:50','2020-05-06 09:10:24'),(6,'Helen','Martinazziwitz','cpupeiijqc_1574354907@tfbnw.net','$2y$10$q8TLq2FNJe1JKTSQSvjeeOl4JhtMSOgwGHjjn99xfxHPmsJqMteaO','martihel','img/avatars/svg/020-man-7.svg','CisaEz15lcsCoABYavAOjTFQrrriwtGUCcDUUoL7kZEjSitfKuiOXkTkT2EE','2020-05-13 04:33:47','2020-05-13 04:33:47'),(7,'Nancy','Fotinatosescu','dwawgecfik_1576839170@tfbnw.net','$2y$10$1Pj9Rh/WoSMRkIWNi0/CvebA6ilMmiFL3NmLG4ecp8RxazIC7viee','fotinnan','img/avatars/svg/020-man-7.svg','KLzX3A0qzP5QOU08JEug84g4tM2FGy9MYd0ZEOlcwWyOF5fOxRWcMQkBFS93','2020-07-17 06:45:03','2020-07-17 06:45:03'),(8,'Susan','Oniki','lfwbgqsbwg_1579518275@tfbnw.net','$2y$10$es.zaDXay3BU1YvojaPOgukTCt2ajct/8.wPsZ0YJ0WwZlosuzslW','onikisus','img/avatars/svg/020-man-7.svg','jdrFUTs45w8HRsiGPKrkkD3xHQNsd9v5gtH6m3xrI2Q0DY5gw45vMALNYtyE','2020-07-21 11:15:58','2020-07-21 11:15:58');
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

-- Dump completed on 2021-05-19  0:49:24
