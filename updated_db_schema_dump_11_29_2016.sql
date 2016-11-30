-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: home_service_db
-- ------------------------------------------------------
-- Server version	5.5.53

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
  `ScheduleDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_request`
--

LOCK TABLES `service_request` WRITE;
/*!40000 ALTER TABLE `service_request` DISABLE KEYS */;
INSERT INTO `service_request` VALUES (1,2221,2,22,1,1,'1000-01-01','1000-01-01','aaa','2016-11-27 01:43:38',1000,'2016-11-27 01:58:40',NULL),(2,0,1,1,1,1,'1000-01-01','1000-01-01','aaa','2016-11-27 01:46:16',1000,'1000-01-01 00:00:00',NULL),(3,0,3,1,1,1,'1000-01-01','1000-01-01','aaa','2016-11-27 01:46:32',1000,'1000-01-01 00:00:00',NULL),(4,11,3,1,1,1,'1000-01-01','1000-01-01','aaa','2016-11-27 11:55:39',1000,'1000-01-01 00:00:00',NULL),(5,12,3,2,121,1,'1000-01-01','1000-01-01','aaa','2016-11-27 12:15:44',1000,'2016-11-27 12:18:44',NULL),(6,12,3,2,121,1,'1000-01-01','1000-01-01','aaa','2016-11-27 14:48:49',1000,'1000-01-01 00:00:00',NULL),(7,12,3,2,121,1,'1000-01-01','1000-01-01','aaa','2016-11-27 14:49:10',1000,'1000-01-01 00:00:00',NULL),(8,123,22,121,1,1,'1000-01-01','1000-01-01','aaa','2016-11-27 17:26:19',1000,'1000-01-01 00:00:00',NULL),(9,123,22,121,1,1,'1000-01-01','1000-01-01','aaa','2016-11-27 17:27:37',1,'0001-01-01 00:00:00',NULL),(10,123,22,121,1,1,'1000-01-01','1000-01-01',NULL,'2016-11-27 17:27:59',1,'0001-01-01 00:00:00',NULL),(11,1,2,1,1,1,'1000-01-01','1000-01-01','aaa','2016-11-28 02:38:32',1000,'1000-01-01 00:00:00',NULL),(12,2,2,1,1,1,'1000-01-01','1000-01-01','aaa','2016-11-28 18:55:58',1000,'1000-01-01 00:00:00',NULL),(13,1,2,1,1,1,'1000-01-01','1000-01-01','aaa','2016-11-28 18:56:24',1000,'1000-01-01 00:00:00',NULL),(14,3,1,2,1,1,'1000-01-01','1000-01-01','CBGGa','2016-11-29 18:06:20',1,'2016-11-29 18:09:45',NULL),(15,0,0,0,0,0,'11:11','14:22',NULL,'2016-11-29 22:07:53',1,'0001-01-01 00:00:00','1111-11-11'),(16,0,0,0,0,0,'11:11','14:22',NULL,'2016-11-29 22:08:24',1,'0001-01-01 00:00:00','1111-11-11'),(17,0,0,0,0,0,'11:11','14:22',NULL,'2016-11-29 22:23:51',0,'2016-11-29 22:23:51','1111-11-11'),(18,0,0,0,0,0,'11:11','12:22',NULL,'2016-11-29 22:33:45',1,'2016-11-29 22:33:45','1111-11-11'),(19,0,0,0,0,0,'11:11','14:22',NULL,'2016-11-29 22:35:12',1,'2016-11-29 22:35:12','0001-11-11'),(20,0,0,0,0,0,'14:20','14:30',NULL,'2016-11-29 22:41:05',1,'2016-11-29 22:41:05','2016-03-22');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'swe','description',0),(2,'wwww','description',1),(3,'swe','description',0),(4,'swe','description',0);
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
  `IsActive` bit(1) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Sex` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'ankur',NULL,NULL,0,NULL,'2016-11-22 14:52:42',0,'2016-11-28 17:26:13',0,NULL,'test','\0','address','vikas','vikas','Male'),(2,'Vikas','vj@iastate.edu','7735100198',1,'777888999','2016-11-22 14:52:44',1,'2016-11-22 14:52:44',1,'test','test','',NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,0,NULL,'2016-11-28 00:33:25',0,'0001-01-01 00:00:00',0,'ankur','test','\0','abcd','ankur','agarwal','Male'),(4,NULL,NULL,NULL,0,NULL,'2016-11-28 01:07:42',0,'0001-01-01 00:00:00',0,'11','test','\0','ab','ankur','agarwal','Male'),(5,'ank',NULL,NULL,0,NULL,'2016-11-28 18:14:19',0,'0001-01-01 00:00:00',0,NULL,'test','\0','address','ankur','agarwal','Male'),(6,'ankur123',NULL,NULL,0,NULL,'2016-11-28 18:16:13',0,'0001-01-01 00:00:00',0,NULL,'password','\0','address123','ankur','agarwal','Male');
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
INSERT INTO `user_role` VALUES (1,'admin',''),(2,'caregiver',''),(3,'user','');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'home_service_db'
--

--
-- Dumping routines for database 'home_service_db'
--
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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getalluser`(
_UserRoleId int
)
BEGIN
	SELECT 
    idUser ,
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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getrequestbyfilters`(
 in _CaregiverId int ,
 in _requesterId int ,
 in _status int
)
BEGIN
	SELECT sv.servicename, u.address, s.id, s.RequesterId, s.RoleId, 
    s.CaregiverId, s.ServiceId ,s.Status, s.ScheduleDate, 
    s.StartTime, 
    s.EndTime, s.Comments, s.ModifiedBy, s.ModifiedOn
	FROM home_service_db.service_request s
    inner join services sv on sv.id = s.serviceid
    inner join user u on u.idUser = s.RequesterId
	WHERE (s.CaregiverId = _CaregiverId OR _CaregiverId = -1)
    AND (s.RequesterId = _requesterId OR _requesterId = -1)
    AND (s.Status = _status OR _status = -1);
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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_update_request`(
 in _id int(11) ,
 in RoleId int(11),
 in RequesterId int(11)  ,
 in CaregiverId int(11) ,
 in ServiceId int(11) ,
 in Status int(11)  ,
 in ScheduleDate date  ,
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

-- Dump completed on 2016-11-29 22:44:23
