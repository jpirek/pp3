-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: pp3
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (5,'Ant'),(6,'Productivity'),(20,'Build');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_version`
--

DROP TABLE IF EXISTS `nb_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `verifiable` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_version`
--

LOCK TABLES `nb_version` WRITE;
/*!40000 ALTER TABLE `nb_version` DISABLE KEYS */;
INSERT INTO `nb_version` VALUES (1,'9.0',1),(2,'10.0',0),(3,'11',1),(4,'12',1);
/*!40000 ALTER TABLE `nb_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_version_plugin_version`
--

DROP TABLE IF EXISTS `nb_version_plugin_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_version_plugin_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nb_version_id` int(11) NOT NULL,
  `plugin_version_id` int(11) NOT NULL,
  `verification_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_version_plugin_version`
--

LOCK TABLES `nb_version_plugin_version` WRITE;
/*!40000 ALTER TABLE `nb_version_plugin_version` DISABLE KEYS */;
INSERT INTO `nb_version_plugin_version` VALUES (42,1,65,29),(43,2,65,30),(44,1,67,31),(45,2,67,49),(46,3,66,50),(47,1,68,51),(48,2,68,52),(49,2,70,53),(50,1,77,54),(51,4,77,55),(52,3,78,NULL),(53,4,78,NULL),(54,4,75,NULL);
/*!40000 ALTER TABLE `nb_version_plugin_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `artifactid` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL,
  `added_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `latest_version` varchar(11) COLLATE utf8_czech_ci DEFAULT NULL,
  `release_version` varchar(11) COLLATE utf8_czech_ci DEFAULT NULL,
  `description` text COLLATE utf8_czech_ci,
  `short_description` text COLLATE utf8_czech_ci,
  `image` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL,
  `homepage` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL,
  `downloads` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
INSERT INTO `plugin` VALUES (33,'mig layout edited','lib-miglayout-NB80','mit','jan.pirek@gmail.com','2019-04-05 14:39:53','2019-05-09 09:38:51','https://repo1.maven.org/maven2/com/miglayout/lib-miglayout-NB80/maven-metadata.xml',2,'5.2','5.2','dsdsdsdsd',',ig layput desc',NULL,NULL,2),(34,'Gradle image builder plugin XXX','lib-miglayout-NB80','MIT','jan.pirek@gmail.com','2019-04-09 13:57:59','2019-05-09 09:25:49','http://localhost/checkout/maven-metadata.xml',2,'5.2','5.2','pecnamspadla suydgu sgfduy gduy gsduyfg uysdgf\n\niu gfuyd gusdgu gfuysdgfgy su gdfugfuy gsdfugu sgdfu gsufg','lorem ipsum fudf syd fgsuydgf   iuysdgfuyg  suygf suyf dfguy sgdfu g suygfuy sgufg uysd',NULL,'http://localhost/prd.dom',10),(35,'XXXx','lib-miglayout-NB80','MIT','jan.pirek@gmail.com','2019-04-11 09:05:17','2019-05-06 14:48:51','http://localhost/checkout/maven-metadata.xml',2,'5.2','5.2','xxx','<p>para</p>\n<i>italic</i>\n<b>bold</b>\n<ul><li>liii</li></ul>','backround.png',NULL,NULL),(36,'qaqa','lib-miglayout-NB80','aaa','jan.pirek@gmail.com','2019-05-07 09:18:43','2019-05-09 09:32:16','http://localhost/checkout/maven-metadata.xml',2,'5.2','5.2','aaa','aa',NULL,NULL,NULL),(37,'vvv','lib-miglayout-NB80','vv','jan.pirek@gmail.com','2019-05-07 09:20:24','2019-05-07 09:20:24','http://localhost/checkout/maven-metadata.xml',1,'5.2','5.2','vv','vv',NULL,NULL,NULL),(38,'Qsasas as as ','lib-miglayout-NB80','dsf','jan.pirek@gmail.com','2019-05-07 09:22:10','2019-05-07 10:15:27','http://localhost/checkout/maven-metadata.xml',1,'5.2','5.2','sdffdsf','fsfsaf sadffs d',NULL,NULL,NULL),(39,'ds rfgdf g','lib-miglayout-NB80','dsfg','jan.pirek@gmail.com','2019-05-07 09:22:47','2019-05-09 08:28:02','http://localhost/checkout/maven-metadata.xml',1,'5.2','5.2','sdfg','dfgsdfg','Capture.JPG','https://prd.com',NULL);
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_category`
--

DROP TABLE IF EXISTS `plugin_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_category` (
  `plugin_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`plugin_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_category`
--

LOCK TABLES `plugin_category` WRITE;
/*!40000 ALTER TABLE `plugin_category` DISABLE KEYS */;
INSERT INTO `plugin_category` VALUES (33,20),(34,5),(34,6),(35,5),(36,5),(37,5),(38,20),(39,5);
/*!40000 ALTER TABLE `plugin_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_version`
--

DROP TABLE IF EXISTS `plugin_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL,
  `relnotes` text COLLATE utf8_czech_ci,
  `plugin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_version`
--

LOCK TABLES `plugin_version` WRITE;
/*!40000 ALTER TABLE `plugin_version` DISABLE KEYS */;
INSERT INTO `plugin_version` VALUES (65,'5.1','https://repo1.maven.org/maven2/com/miglayout/lib-miglayout-NB80/5.1/lib-miglayout-NB80-5.1.nbm',NULL,33),(66,'5.2','https://repo1.maven.org/maven2/com/miglayout/lib-miglayout-NB80/5.2/lib-miglayout-NB80-5.2.nbm',NULL,33),(67,'5.1','http://localhost/checkout/5.1/lib-miglayout-NB80-5.1.nbm',NULL,34),(68,'5.2','http://localhost/checkout/5.2/lib-miglayout-NB80-5.2.nbm',NULL,34),(69,'5.1','http://localhost/checkout/5.1/lib-miglayout-NB80-5.1.nbm',NULL,35),(70,'5.2','http://localhost/checkout/5.2/lib-miglayout-NB80-5.2.nbm',NULL,35),(71,'5.1','http://localhost/checkout/5.1/lib-miglayout-NB80-5.1.nbm',NULL,36),(72,'5.2','http://localhost/checkout/5.2/lib-miglayout-NB80-5.2.nbm',NULL,36),(73,'5.1','http://localhost/checkout/5.1/lib-miglayout-NB80-5.1.nbm',NULL,37),(74,'5.2','http://localhost/checkout/5.2/lib-miglayout-NB80-5.2.nbm',NULL,37),(75,'5.1','http://localhost/checkout/5.1/lib-miglayout-NB80-5.1.nbm',NULL,38),(76,'5.2','http://localhost/checkout/5.2/lib-miglayout-NB80-5.2.nbm',NULL,38),(77,'5.1','http://localhost/checkout/5.1/lib-miglayout-NB80-5.1.nbm',NULL,39),(78,'5.2','http://localhost/checkout/5.2/lib-miglayout-NB80-5.2.nbm',NULL,39);
/*!40000 ALTER TABLE `plugin_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification`
--

DROP TABLE IF EXISTS `verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `plugin_version_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification`
--

LOCK TABLES `verification` WRITE;
/*!40000 ALTER TABLE `verification` DISABLE KEYS */;
INSERT INTO `verification` VALUES (29,1,'2019-04-08 14:01:27',NULL),(30,-1,'2019-04-08 15:34:09',NULL),(31,0,'2019-04-10 13:20:54',NULL),(32,0,'2019-04-10 13:38:23',NULL),(33,0,'2019-04-10 13:45:05',NULL),(34,0,'2019-04-10 13:45:27',NULL),(35,0,'2019-04-10 13:46:00',NULL),(36,0,'2019-04-10 13:48:03',NULL),(37,0,'2019-04-10 13:48:20',NULL),(38,0,'2019-04-10 13:48:42',NULL),(39,0,'2019-04-10 13:52:41',NULL),(40,0,'2019-04-10 13:57:47',NULL),(41,0,'2019-04-10 13:58:17',NULL),(42,0,'2019-04-10 13:58:28',NULL),(43,0,'2019-04-10 13:59:05',NULL),(44,0,'2019-04-10 13:59:07',NULL),(45,0,'2019-04-10 13:59:21',NULL),(46,0,'2019-04-10 13:59:42',NULL),(47,0,'2019-04-10 14:00:40',NULL),(48,0,'2019-04-10 14:00:49',NULL),(49,2,'2019-04-10 14:01:30',NULL),(50,-1,'2019-04-11 08:37:42',NULL),(51,0,'2019-04-11 13:10:48',NULL),(52,0,'2019-04-11 13:10:49',NULL),(53,0,'2019-04-11 13:11:42',NULL),(54,0,'2019-05-07 09:31:14',NULL),(55,0,'2019-05-07 09:31:17',NULL);
/*!40000 ALTER TABLE `verification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification_request`
--

DROP TABLE IF EXISTS `verification_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verification_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `vote` int(11) DEFAULT NULL,
  `voted_at` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_czech_ci,
  `verification_id` int(11) DEFAULT NULL,
  `verifier_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification_request`
--

LOCK TABLES `verification_request` WRITE;
/*!40000 ALTER TABLE `verification_request` DISABLE KEYS */;
INSERT INTO `verification_request` VALUES (44,'2019-04-08 15:34:09',0,NULL,NULL,30,1),(45,'2019-04-08 15:34:09',-1,'2019-04-11 08:43:38',NULL,30,2),(46,'2019-04-10 13:20:54',0,NULL,NULL,31,2),(47,'2019-04-10 13:45:27',0,NULL,NULL,34,2),(48,'2019-04-10 13:46:00',0,NULL,NULL,35,2),(49,'2019-04-10 13:48:03',0,NULL,NULL,36,2),(50,'2019-04-10 13:48:20',0,NULL,NULL,37,2),(51,'2019-04-10 13:48:42',0,NULL,NULL,38,2),(52,'2019-04-10 13:52:41',0,NULL,NULL,39,2),(53,'2019-04-10 14:01:30',1,'2019-04-11 08:57:08',NULL,49,2),(54,'2019-04-11 08:37:42',-1,'2019-04-11 08:44:06',NULL,50,2),(55,'2019-04-11 13:10:48',0,NULL,NULL,51,2),(56,'2019-04-11 13:10:49',0,NULL,NULL,52,2),(57,'2019-04-11 13:11:42',0,NULL,NULL,53,2),(58,'2019-04-11 13:11:42',0,NULL,NULL,53,6),(59,'2019-05-07 09:31:14',0,NULL,NULL,54,8),(60,'2019-05-07 09:31:17',0,NULL,NULL,55,8);
/*!40000 ALTER TABLE `verification_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifier`
--

DROP TABLE IF EXISTS `verifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verifier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifier`
--

LOCK TABLES `verifier` WRITE;
/*!40000 ALTER TABLE `verifier` DISABLE KEYS */;
INSERT INTO `verifier` VALUES (8,'jan.pirek@gmail.com');
/*!40000 ALTER TABLE `verifier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-03 10:21:43

ALTER TABLE `plugin` ADD `groupid` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL AFTER `downloads`;
