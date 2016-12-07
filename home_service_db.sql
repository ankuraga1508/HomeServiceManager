CREATE DATABASE  IF NOT EXISTS `home_service_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `home_service_db`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: home_service_db
-- ------------------------------------------------------
-- Server version	5.7.14-log

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
-- Table structure for table `service_request`
--

DROP TABLE IF EXISTS `service_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `RequesterId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL,
  `CaregiverId` int(11) DEFAULT NULL,
  `ServiceId` int(11) NOT NULL,
  `Status` int(11) DEFAULT NULL,
  `StartTime` varchar(10) DEFAULT NULL,
  `EndTime` varchar(10) DEFAULT NULL,
  `Comments` varchar(200) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `ScheduleDate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_request`
--

LOCK TABLES `service_request` WRITE;
/*!40000 ALTER TABLE `service_request` DISABLE KEYS */;
INSERT INTO `service_request` VALUES (1,1,3,0,1,6,'15:30','16:30',NULL,'2016-11-29 23:14:35',4,'2016-12-01 00:40:27','2016-12-03'),(2,1,1,1,3,3,'12:30','14:30','Need help with transfer and positioning','2016-11-29 23:14:35',3,'2016-11-29 23:14:19','2016-12-05'),(3,1,1,1,2,2,'13:30','15:00','Require help in mobility assistance.','2016-11-29 23:14:35',3,'2016-11-29 23:14:19','2016-12-06'),(4,1,1,1,1,4,'13:30','15:00','Need help with transfer and positioning','2016-11-29 23:14:35',3,'2016-11-29 23:14:19','2016-12-07'),(5,1,1,1,2,5,'13:30','15:00','Require help in mobility assistance.','2016-11-29 23:14:35',3,'2016-11-29 23:14:19','2016-12-08'),(6,1,1,1,3,6,'13:30','15:00','Require help in mobility assistance.','2016-11-29 23:14:35',3,'2016-11-29 23:14:19','2016-12-09'),(22,0,0,3,1,2,'15:30','16:30',NULL,'2016-11-30 22:46:43',0,'2016-11-30 22:46:43','2016-12-03'),(23,0,0,3,1,2,'15:30','16:30',NULL,'2016-11-30 22:47:49',0,'2016-11-30 22:47:49','2016-12-03'),(24,0,0,3,1,2,'15:30','16:30',NULL,'2016-11-30 22:48:46',0,'2016-11-30 22:48:46','2016-12-03'),(25,0,0,3,1,2,'15:30','16:30',NULL,'2016-11-30 22:52:05',0,'2016-11-30 22:52:05','2016-12-03'),(26,0,0,3,1,2,'15:30','16:30',NULL,'2016-11-30 22:56:04',0,'2016-11-30 22:56:04','2016-12-03'),(27,0,3,3,3,2,'22:10','23:10',NULL,'2016-11-30 23:04:00',4,'2016-12-01 00:33:15','2017-02-22'),(28,1,3,14,3,2,'13:00','13:01',NULL,'2016-11-30 23:09:08',4,'2016-12-01 03:05:11','2017-02-28'),(29,1,3,3,4,2,'14:00','14:01',NULL,'2016-11-30 23:09:49',4,'2016-12-01 00:36:43','2017-03-21'),(30,0,3,3,3,2,'22:10','23:10',NULL,'2016-11-30 23:12:43',4,'2016-11-30 23:12:43','2017-02-22'),(31,0,3,0,4,6,'14:00','14:01',NULL,'2016-11-30 23:19:45',4,'2016-11-30 23:19:45','2017-03-21'),(32,0,3,3,3,2,'22:10','23:10',NULL,'2016-12-01 00:27:48',4,'2016-12-01 00:27:48','2017-02-22'),(33,0,3,3,3,2,'22:10','23:10',NULL,'2016-12-01 00:30:52',4,'2016-12-01 00:30:52','2017-02-22'),(34,1,3,36,1,2,'13:00','14:00',NULL,'2016-12-01 01:10:53',4,'2016-12-06 00:33:27','2016-12-11'),(35,1,1,0,2,1,'15:30','16:00',NULL,'2016-12-01 01:11:30',1,'2016-12-01 01:11:30','2016-12-15'),(36,1,3,0,4,6,'12:00','13:00',NULL,'2016-12-01 01:12:00',4,'2016-12-01 01:21:07','2016-12-31'),(37,10,3,15,2,2,'15:00','16:00',NULL,'2016-12-01 01:12:45',4,'2016-12-01 01:21:59','2016-12-12'),(38,10,3,0,3,6,'14:30','15:30',NULL,'2016-12-01 01:13:08',4,'2016-12-01 03:05:45','2016-12-15'),(40,7,1,0,1,1,'14:00','15:00',NULL,'2016-12-01 01:14:01',7,'2016-12-01 01:14:01','2016-12-15'),(42,7,3,15,4,4,'12:00','14:00',NULL,'2016-12-01 01:14:35',15,'2016-12-07 02:15:50','2016-12-17'),(43,11,3,15,2,2,'16:00','17:00',NULL,'2016-12-01 01:15:06',4,'2016-12-07 02:13:39','2016-12-25'),(44,11,1,0,4,1,'14:00','16:00',NULL,'2016-12-01 01:15:31',11,'2016-12-01 01:15:31','2016-12-12'),(46,9,1,0,4,1,'13:00','13:30',NULL,'2016-12-01 01:17:19',9,'2016-12-01 01:17:19','2016-12-27'),(47,9,1,0,2,1,'17:00','18:00',NULL,'2016-12-01 01:17:46',9,'2016-12-01 01:17:46','2016-02-21'),(48,12,1,0,4,1,'17:00','18:00',NULL,'2016-12-01 01:18:55',12,'2016-12-01 01:18:55','2016-12-21'),(50,12,1,0,4,1,'06:00','07:00',NULL,'2016-12-01 01:19:46',12,'2016-12-01 01:19:46','2016-02-11'),(51,12,1,0,1,1,'12:00','13:00',NULL,'2016-12-01 01:20:06',12,'2016-12-01 01:20:06','2016-12-16'),(52,20,1,0,1,1,'12:20','13:30',NULL,'2016-12-01 01:56:24',20,'2016-12-01 01:56:24','2016-12-15'),(53,21,3,15,1,2,'12:00','13:00',NULL,'2016-12-01 02:00:46',4,'2016-12-01 02:04:32','2016-12-14'),(54,22,2,1,1,2,'13:00','14:00','aabbcc','2016-12-01 02:27:01',2,'2016-12-01 02:46:52','2016-12-15'),(55,20,3,0,3,6,'12:00','13:00',NULL,'2016-12-01 04:17:15',4,'2016-12-01 04:20:54','2017-02-22'),(56,20,2,1,4,3,'05:00','06:00','aabbcc','2016-12-01 04:21:48',2,'2016-12-01 04:23:21','2017-12-11'),(57,20,1,0,1,1,'12:00','13:00',NULL,'2016-12-01 04:25:53',20,'2016-12-01 04:25:53','2017-03-03'),(58,20,1,0,1,1,'12:00','13:00',NULL,'2016-12-01 04:29:10',20,'2016-12-01 04:29:10','2016-12-09'),(59,20,1,0,2,1,'11:00','12:00',NULL,'2016-12-01 04:31:00',20,'2016-12-01 04:31:00','2016-12-04'),(60,20,1,0,3,1,'06:00','09:00',NULL,'2016-12-01 04:31:32',20,'2016-12-01 04:31:32','2016-12-09'),(61,20,1,0,2,1,'04:00','05:00',NULL,'2016-12-01 04:33:46',20,'2016-12-01 04:33:46','2016-12-04'),(62,25,3,0,2,6,'13:00','14:00',NULL,'2016-12-01 05:00:47',4,'2016-12-01 05:05:44','2016-12-15'),(63,25,2,1,3,2,'03:00','04:00','aabbcc','2016-12-01 05:01:28',2,'2016-12-01 05:06:43','2016-12-16'),(64,25,2,1,4,3,'09:00','10:00','aabbcc','2016-12-01 05:01:47',2,'2016-12-01 05:09:31','2016-12-22'),(65,27,3,15,2,2,'08:00','09:00',NULL,'2016-12-01 05:49:25',4,'2016-12-01 06:02:34','2016-12-02'),(66,27,3,15,3,2,'13:00','14:00',NULL,'2016-12-01 05:50:15',4,'2016-12-01 06:02:56','2016-12-17'),(67,27,3,0,4,6,'13:00','13:30',NULL,'2016-12-01 05:50:41',4,'2016-12-01 06:03:18','2016-12-21'),(68,28,2,1,1,2,'10:00','11:00','aabbcc','2016-12-01 06:07:48',2,'2016-12-01 06:12:49','2016-12-02'),(69,28,3,19,2,2,'13:00','14:00',NULL,'2016-12-01 06:08:16',4,'2016-12-01 06:17:02','2016-12-07'),(70,28,3,0,3,6,'16:30','17:00',NULL,'2016-12-01 06:08:38',4,'2016-12-01 06:11:29','2016-12-22'),(71,28,2,1,4,3,'08:00','09:00','aabbcc','2016-12-01 06:09:06',2,'2016-12-01 06:14:28','2016-12-28'),(72,30,2,1,1,2,'13:00','14:00','aabbcc','2016-12-01 06:31:08',2,'2016-12-01 06:35:14','2016-12-02'),(73,30,2,1,2,3,'12:00','14:00','aabbcc','2016-12-01 06:31:34',2,'2016-12-01 06:35:47','2016-12-08'),(74,30,3,0,3,6,'15:00','15:30',NULL,'2016-12-01 06:31:53',4,'2016-12-01 06:34:04','2016-12-16'),(75,30,2,1,4,2,'08:00','09:00','aabbcc','2016-12-01 06:32:19',2,'2016-12-01 06:35:26','2016-12-21'),(76,31,3,15,2,2,'09:00','10:00',NULL,'2016-12-01 06:46:09',4,'2016-12-01 06:48:23','2016-12-02'),(77,31,1,0,1,1,'08:00','10:00',NULL,'2016-12-01 06:46:30',31,'2016-12-01 06:46:30','2016-12-08'),(78,31,1,0,3,1,'12:00','13:00',NULL,'2016-12-01 06:46:46',31,'2016-12-01 06:46:46','2016-12-15'),(79,31,1,0,4,1,'07:00','08:00',NULL,'2016-12-01 06:47:11',31,'2016-12-01 06:47:11','2016-12-06'),(80,32,2,1,1,2,'12:00','13:00','aabbcc','2016-12-01 06:50:37',2,'2016-12-01 06:54:23','2016-12-02'),(81,32,3,15,2,4,'13:00','14:00',NULL,'2016-12-01 06:51:00',15,'2016-12-01 06:54:44','2016-12-08'),(82,32,3,0,3,6,'15:00','16:30',NULL,'2016-12-01 06:51:19',4,'2016-12-01 06:53:25','2016-12-15'),(83,32,3,15,4,2,'07:00','08:00',NULL,'2016-12-01 06:51:40',4,'2016-12-01 06:53:36','2016-12-30'),(84,33,2,1,1,2,'13:00','14:00','aabbcc','2016-12-01 06:58:07',2,'2016-12-01 07:01:41','2016-12-02'),(85,33,3,26,2,2,'09:00','10:00',NULL,'2016-12-01 06:58:43',4,'2016-12-01 07:07:53','2016-12-09'),(86,33,3,0,3,6,'08:30','10:30',NULL,'2016-12-01 06:59:12',4,'2016-12-01 07:00:55','2016-12-15'),(87,33,2,1,4,3,'07:00','08:00','aabbcc','2016-12-01 07:02:56',2,'2016-12-01 07:03:48','2016-12-02'),(88,7,1,0,2,1,'12:00','13:00',NULL,'2016-12-05 22:43:07',7,'2016-12-05 22:43:07','2016-12-24'),(89,7,1,0,5,1,'12:00','13:00',NULL,'2016-12-06 01:09:34',7,'2016-12-06 01:09:34','2016-12-25'),(90,0,0,0,5,1,'13:00','14:00',NULL,'2016-12-06 01:11:53',0,'2016-12-06 01:11:53','2016-12-12'),(91,7,3,0,1,6,'14:00','15:00',NULL,'2016-12-06 01:14:46',4,'2016-12-07 02:13:02','2016-12-13'),(92,7,2,1,5,2,'12:01','12:02','aabbcc','2016-12-07 02:09:54',2,'2016-12-07 02:15:59','2016-12-12'),(93,7,2,1,1,2,'12:01','12:02','aabbcc','2016-12-07 02:10:20',2,'2016-12-07 02:16:13','2016-12-12'),(94,7,2,1,2,3,'12:01','12:02','aabbcc','2016-12-07 02:10:34',2,'2016-12-07 02:16:20','2016-12-12');
/*!40000 ALTER TABLE `service_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_request_status`
--

DROP TABLE IF EXISTS `service_request_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_request_status` (
  `Status_id` int(11) NOT NULL AUTO_INCREMENT,
  `StatusName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_request_status`
--

LOCK TABLES `service_request_status` WRITE;
/*!40000 ALTER TABLE `service_request_status` DISABLE KEYS */;
INSERT INTO `service_request_status` VALUES (1,'Requested'),(2,'Assigned'),(3,'Completed'),(4,'Declined'),(5,'Cancelled'),(6,'Rejected');
/*!40000 ALTER TABLE `service_request_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ServiceName` varchar(45) DEFAULT NULL,
  `ServicesDesc` varchar(500) DEFAULT NULL,
  `IsActive` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Grooming and Hygiene','Comfort Keepers’ goal is to assist our clients with their personal care routines so they can look and feel their best. Studies have proven how effective and positive it is for seniors to have regular hygiene and grooming.  For clients who fear falling while bathing, or have physical or cognitive limitations that make bath-time difficult, our caregivers are there to help. We can assist with shampooing, shaving (with an electric shaver), hair combing and styling, and other grooming needs.',1),(2,'Mobility Assistance','Remaining active in your golden years is one of the best ways to maintain the quality of life. Our caregivers help seniors remain active by assisting them in getting from place to place in comfort and safety.',1),(3,'Transferring and Positioning','One of our top priorities is helping our clients move around their homes. This may include getting in and out of bed, chairs, and wheelchairs.  Proper transferring and positioning can contribute to reducing bedsore risks. This also helps reduce muscle atrophy, while encouraging proper breathing and digestion. It can also lower the risk of falls and injuries, as well as keep our clients as comfortable as possible',1),(4,'Toileting and Incontinence Care','We understand the sensitive nature of toileting and incontinence care for our clients. Without proper help, seniors can face many issues. These may include skin infections, unpleasant odors, and general hygiene problems. Our caregivers offer compassionate, dignified help with these personal aspects of daily living.',1),(5,'Cooking','Too lazy to enter the kitchen ? We have a team of trained chefs waiting for your order! Just click and get your favorite food delivered at your doorstep.',1),(10,'Plumbing','We have partnerships with the most reliable plumbing contractors in town. Have a leaking pipe? Help is just a click away.',1);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) DEFAULT NULL,
  `UserEmail` varchar(45) DEFAULT NULL,
  `UserMobile` varchar(20) DEFAULT NULL,
  `UserRoleId` int(11) DEFAULT NULL,
  `UserSSN` varchar(10) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `LoginId` varchar(45) DEFAULT NULL,
  `LoginPassword` varchar(200) DEFAULT NULL,
  `IsActive` int(11) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Sex` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'david','david@gmail.com','9999999999',1,'777888999','2016-11-22 14:52:42',3,'2016-11-28 17:26:13',1,'1','test',1,'Campus Ave','David','Jones','Male'),(2,'Vikas','vj@iastate.edu','7735100198',1,'777888999','2016-11-22 14:52:44',3,'2016-11-22 14:52:44',1,'2','test',1,'Campus Ave','Vikas','Jyoti','Male'),(3,'michael','michael@gmail.com','7735100198',2,'777888999','2016-11-22 14:52:44',3,'2016-11-22 14:52:44',2,'3','test',1,'Campus Ave','Michael','Phelps','Male'),(4,'admin','admin@gmail.com','7735100198',3,'777888999','2016-11-22 14:52:44',3,'2016-11-22 14:52:44',3,'4','test',1,'Campus Ave','Ankur','Agarwal','Male'),(5,'Simon','simon@gmail.com','7735100198',1,'777888999','2016-11-22 14:52:44',3,'2016-11-22 14:52:44',3,'5','test',1,'Campus Ave','Simon','cowell','Male'),(7,'smich',NULL,'5154567890',1,NULL,'2016-12-01 00:49:25',1,'2016-11-04 00:49:16',1,NULL,'test',1,'431, Lincoln Way, Ames, Iowa','Shaun','Michaels','M'),(8,'vgough',NULL,'787654457',1,NULL,'2016-12-01 00:52:07',1,'2016-11-04 00:52:03',1,NULL,'test',1,'213, Duff Avenue, Ames','Van','Gough','M'),(9,'cstevens',NULL,'76566543',1,NULL,'2016-12-01 00:53:26',1,'2016-11-04 00:53:23',1,NULL,'test',1,'66, Beedle Drive, Ames, Iowa','Carla','Stevens','F'),(10,'lkarate',NULL,'899865430',1,NULL,'2016-12-01 00:55:38',1,'2016-11-04 00:55:30',1,NULL,'test',1,'9, University Boulevard, Unit 4, Ames','Layla','Karate','F'),(11,'bgold',NULL,'677539792',1,NULL,'2016-12-01 01:00:20',1,'2016-11-04 01:00:20',1,NULL,'test',1,'22, South Duff Av, Ames, Iowa','Bill','Goldberg','M'),(12,'kdavid',NULL,'9798876975',1,NULL,'2016-12-01 01:01:27',1,'2016-11-04 01:01:27',1,NULL,'test',1,'51, Grand Avenue, Ames, Iowa','Kim','Davidson','F'),(13,'ssmith',NULL,NULL,2,NULL,'2016-12-01 01:02:28',23,'0001-01-01 00:00:00',23,NULL,'test',1,NULL,'Steven','Smith',NULL),(14,'mroll',NULL,NULL,2,NULL,'2016-12-01 01:04:42',23,'0001-01-01 00:00:00',23,NULL,'test',1,NULL,'Matt','Rollins',NULL),(15,'suzy',NULL,NULL,2,NULL,'2016-12-01 01:05:03',23,'0001-01-01 00:00:00',23,NULL,'test',1,NULL,'Suzanne','Jones',NULL),(16,'samgrey',NULL,NULL,2,NULL,'2016-12-01 01:05:24',23,'0001-01-01 00:00:00',23,NULL,'test',1,NULL,'Samantha','Grey',NULL),(17,'wesbr',NULL,NULL,2,NULL,'2016-12-01 01:05:45',23,'2016-12-06 23:05:35',4,NULL,'test',1,NULL,'Wesley','Brown',NULL),(18,'jdoe',NULL,NULL,2,NULL,'2016-12-01 01:06:04',23,'2016-12-06 23:04:34',4,NULL,'test',1,NULL,'Johnny','Doe',NULL),(19,'philm',NULL,NULL,2,NULL,'2016-12-01 01:06:28',23,'0001-01-01 00:00:00',23,NULL,'test',1,NULL,'Philip','Murray',NULL),(20,'mattg',NULL,'6765554576',1,NULL,'2016-12-01 01:55:19',1,'2016-11-04 01:55:18',1,NULL,'mattg',1,'36, South Duff Avenue, Ames, Iowa','Matthew','Gates','M'),(21,'billsan',NULL,'763485993',1,NULL,'2016-12-01 01:59:54',1,'2016-11-04 01:59:54',1,NULL,'test',1,'45, South Duff Avenue, Ames, Iowa','Billy','Sanderson','M'),(22,'billjohn',NULL,'8987665345',1,NULL,'2016-12-01 02:26:08',1,'2016-11-04 02:26:05',1,NULL,'test',1,'77, North Dakota Avenue, Ames, Iowa','Bill','Johnson','M'),(23,'mackj',NULL,NULL,2,NULL,'2016-12-01 03:09:10',23,'0001-01-01 00:00:00',23,NULL,'test',1,NULL,'Mack','Johnston',NULL),(24,'macj',NULL,NULL,2,NULL,'2016-12-01 03:18:26',23,'0001-01-01 00:00:00',23,NULL,'test',1,NULL,'Mack','Johnston',NULL),(25,'johnmc',NULL,'677899965',1,NULL,'2016-12-01 04:59:55',1,'2016-11-04 04:59:54',1,NULL,'test',1,'234, University Boulevard, Ames, Iowa','John','McEnroe','M'),(26,'davidc',NULL,NULL,2,NULL,'2016-12-01 05:13:03',23,'0001-01-01 00:00:00',23,NULL,'test',1,NULL,'David','Copperfield',NULL),(27,'gregp',NULL,'8876663789',1,NULL,'2016-12-01 05:48:36',1,'2016-11-04 05:48:36',1,NULL,'test',1,'76, South Duff Avenue, Ames, Iowa','Greg','Powell','M'),(28,'billyt',NULL,'466788996',1,NULL,'2016-12-01 06:06:58',1,'2016-11-04 06:06:57',1,NULL,'test',1,'335, North Dakota Avenue, Ames, Iowa','Billy','Thompson','M'),(29,'stacyg',NULL,NULL,2,NULL,'2016-12-01 06:17:50',23,'0001-01-01 00:00:00',23,NULL,'test',1,NULL,'Stacy','George',NULL),(30,'briana',NULL,'66478826',1,NULL,'2016-12-01 06:30:29',1,'2016-11-04 06:30:29',1,NULL,'test',1,'234, South Dakota Avenue','Brian','Anderson','M'),(31,'joem',NULL,'3548708665',1,NULL,'2016-12-01 06:45:26',1,'2016-11-04 06:45:25',1,NULL,'test',1,'222, South Duff Avenue','Joe','Miller','M'),(32,'shanew',NULL,'51597897986',1,NULL,'2016-12-01 06:49:55',1,'2016-11-04 06:49:55',1,NULL,'test',1,'54, South Duff Av, Ames','Shane','Williams','M'),(33,'jimd',NULL,'787255726',1,NULL,'2016-12-01 06:57:26',1,'2016-11-04 06:57:26',1,NULL,'test',1,'77, North Loop Dr, Ames','Jim','Downy','M'),(34,'34',NULL,NULL,2,NULL,'2016-12-01 07:09:22',23,'2016-12-06 22:59:55',0,NULL,'test',1,NULL,'Shane','Williamson',NULL),(35,'lauren',NULL,NULL,2,NULL,'2016-12-06 00:29:53',0,'0001-01-01 00:00:00',0,NULL,'test',1,NULL,'Lauren','Bauer',NULL),(36,'premc',NULL,NULL,2,NULL,'2016-12-06 00:31:24',0,'0001-01-01 00:00:00',0,NULL,'test',1,NULL,'Prem','Chopra',NULL),(37,'zackc',NULL,NULL,2,NULL,'2016-12-07 02:28:54',0,'2016-12-07 02:35:27',4,NULL,'test',1,NULL,'Zachary','Clattenberg',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `RoleId` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(45) DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`RoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'user',''),(2,'caregiver',''),(3,'admin','');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'home_service_db'
--

--
-- Dumping routines for database 'home_service_db'
--
/*!50003 DROP FUNCTION IF EXISTS `SPLIT_STR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `SPLIT_STR`(
  x VARCHAR(255),
  delim VARCHAR(12),
  pos INT
) RETURNS varchar(255) CHARSET latin1
RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos),
       LENGTH(SUBSTRING_INDEX(x, delim, pos -1)) + 1),
       delim, '') ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `SPLIT_STRING` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `SPLIT_STRING`( s VARCHAR(1024) , del CHAR(1) , i INT) RETURNS varchar(1024) CHARSET latin1
    DETERMINISTIC
BEGIN

        DECLARE n INT ;

        
        SET n = LENGTH(s) - LENGTH(REPLACE(s, del, '')) + 1;

        IF i > n THEN
            RETURN NULL ;
        ELSE
            RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(s, del, i) , del , -1 ) ;        
        END IF;

    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `SPLIT_STRR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `SPLIT_STRR`(
  x VARCHAR(255),
  delim VARCHAR(12),
  pos INT
) RETURNS varchar(255) CHARSET latin1
RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos),
       LENGTH(SUBSTRING_INDEX(x, delim, pos -1)) + 1),
       delim, '') ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addservice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addservice`(
 in _id int(11) ,
 in serviceName varchar(45)  ,
 in servicesDesc varchar(500) ,
 in IsActive bit
)
BEGIN
	IF (_id IS NULL) THEN
		INSERT INTO home_service_db.services (
			ServiceName
			,ServicesDesc
			,IsActive
			)
		VALUES (
			serviceName
			,servicesDesc
			,IsActive
			);
	ELSE
		UPDATE home_service_db.services
		SET ServiceName = serviceName
			,ServicesDesc = servicesDesc
			,IsActive = IsActive
		WHERE id = _id;
		END

	IF ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getallservices` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getallservices`()
BEGIN
	SELECT *
	FROM home_service_db.services;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getalluser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getalluser`(
_UserRoleId int(11)
)
BEGIN
	SELECT 
    idUser ,
	UserName ,
	UserEmail ,
	UserMobile ,
	UserSSN ,
	CreatedOn ,
	CreatedBy ,
	ModifiedOn ,
	ModifiedBy ,
	LoginId ,
	LoginPassword ,
    IsActive,
    Address ,
    FirstName , 
    LastName ,
    Sex
	FROM home_service_db.user
    WHERE UserRoleId= _UserRoleId OR _UserRoleId = -1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getrequestbyfilters` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getrequestbyfilters`(
 in _CaregiverId int ,
 in _requesterId int ,
 in _status varchar(20)
)
BEGIN
	SELECT u.FirstName, u.LastName, sv.servicename, u.address, s.id, s.RequesterId, s.RoleId, 
    s.CaregiverId, s.ServiceId ,s.Status, s.ScheduleDate, 
    s.StartTime, 
    s.EndTime, s.Comments, s.ModifiedBy, s.ModifiedOn
	FROM home_service_db.service_request s
    inner join services sv on sv.id = s.serviceid
    inner join user u on u.idUser = s.RequesterId
	WHERE (s.CaregiverId = _CaregiverId OR _CaregiverId = -1)
    AND (s.RequesterId = _requesterId OR _requesterId = -1)

	AND (s.Status = _status OR _status = '');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getuserbyid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getuserbyid`(
 idUser int(11)
)
BEGIN
	SELECT 
    idUser,
	UserName ,
	UserEmail ,
	UserMobile ,
	UserRoleId ,
	UserSSN ,
	CreatedOn ,
	CreatedBy ,
	ModifiedOn ,
	ModifiedBy ,
	LoginId ,
	LoginPassword ,
    IsActive, 
    Address,
    FirstName,
    LastName,
    Sex
	FROM home_service_db.user
	WHERE idUser = idUser;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getuserbyusername` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getuserbyusername`(
 _UserName varchar(45)
)
BEGIN
	SELECT *
	FROM home_service_db.user
	WHERE UserName = _UserName;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertorupdate_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertorupdate_user`(
 in _idUser int(11) ,
 in UserName varchar(45)  ,
 in UserEmail varchar(45)  ,
 in UserMobile varchar(20)  ,
 in UserRoleId int(11)  ,
 in UserSSN varchar(10)  ,
 in CreatedBy int(11)  ,
 in ModifiedOn datetime  ,
 in ModifiedBy int(11)  ,
 in LoginId varchar(45)  ,
 in LoginPassword varchar(200) ,
 in IsActive bit,
 in Address varchar(200)  ,
 in FirstName varchar(45)  ,
 in LastName varchar(45)  ,
 in Sex varchar(45) 
)
BEGIN


	IF (_idUser IS NULL OR _idUser = 0) THEN
		INSERT INTO home_service_db.user (
			UserName
			,UserEmail
			,UserMobile
			,UserRoleId
			,UserSSN
			,CreatedOn
			,CreatedBy
			,ModifiedOn
			,ModifiedBy
			,LoginId
			,LoginPassword
			,IsActive
            ,Address
            ,FirstName
            ,LastName
            ,Sex
			)
		VALUES (
			UserName
			,UserEmail
			,UserMobile
			,UserRoleId
			,UserSSN
			,now()
			,CreatedBy
			,ModifiedOn
			,ModifiedBy
			,LoginId
			,LoginPassword
			,IsActive
            ,Address
            ,FirstName
            ,LastName
            ,Sex
			);
	ELSE
		UPDATE home_service_db.user
		SET UserName = UserName
			,UserEmail = UserEmail
			,UserMobile = UserMobile
			,UserRoleId = UserRoleId
			,UserSSN = UserSSN
			,CreatedBy = CreatedBy
			,ModifiedOn = now()
			,ModifiedBy = ModifiedBy
			,LoginId = LoginId
			,LoginPassword = LoginPassword
			,IsActive = IsActive
            ,Address = Address
            ,FirstName = FirstName
            ,LastName = LastName
            ,Sex = Sex
		WHERE idUser = _idUser;
		END

	IF ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_update_request` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_update_request`(
 in _id int(11) ,
 in RoleId int(11),
 in RequesterId int(11)  ,
 in CaregiverId int(11) ,
 in ServiceId int(11) ,
 in Status int(11)  ,
 in ScheduleDate varchar(20)  ,
 in StartTime varchar(10)  ,
in EndTime varchar(10)  ,
 in Comments varchar(200)  ,
 in ModifiedBy int 
)
BEGIN
	IF (_id = 0 OR _id IS NULL) THEN
		INSERT INTO home_service_db.service_request (
			RequesterId
            ,RoleId
			,CaregiverId
			,ServiceId
			,Status
            ,ScheduleDate
			,StartTime
			,EndTime
			,Comments
            ,CreatedOn
			,ModifiedOn
			,ModifiedBy
			)
		VALUES (
			RequesterId
            ,RoleId
			,CaregiverId
			,ServiceId
			,Status
			,ScheduleDate
			,StartTime
			,EndTime
			,Comments
            ,now()
			,now()
			,ModifiedBy
			);
	ELSE
		UPDATE home_service_db.service_request
		SET RequesterId = RequesterId
			,RoleId = RoleId
			,CaregiverId = CaregiverId
			,ServiceId = ServiceId
			,Status = Status
            ,ScheduleDate = ScheduleDate
			,StartTime = StartTime
			,EndTime = EndTime
			,Comments = Comments
			,ModifiedOn = now()
			,ModifiedBy = ModifiedBy
		WHERE id = _id;
		END

	IF ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userlogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userlogin`(_username varchar(45), _password varchar(200))
BEGIN
SELECT *
	FROM home_service_db.user
    WHERE UserName = _username AND LoginPassword = _password;
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

-- Dump completed on 2016-12-07 17:23:32
