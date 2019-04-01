-- MySQL dump 10.13  Distrib 5.7.21, for osx10.12 (x86_64)
--
-- Host: localhost    Database: bapco
-- ------------------------------------------------------
-- Server version	5.5.5-10.2.16-MariaDB

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
-- Table structure for table `ab_permission`
--

DROP TABLE IF EXISTS `ab_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ab_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ab_permission`
--

LOCK TABLES `ab_permission` WRITE;
/*!40000 ALTER TABLE `ab_permission` DISABLE KEYS */;
INSERT INTO `ab_permission` VALUES (5,'can_add'),(20,'can_ajax_upload_form'),(15,'can_chart'),(8,'can_delete'),(3,'can_download'),(9,'can_edit'),(4,'can_list'),(16,'can_oldcodes'),(7,'can_show'),(1,'can_this_form_get'),(2,'can_this_form_post'),(19,'can_upload_form'),(21,'can_upload_setting'),(6,'can_userinfo'),(14,'Copy Role'),(17,'export'),(23,'export_all'),(13,'menu_access'),(22,'muldelete'),(10,'resetmypassword'),(11,'resetpasswords'),(18,'support'),(12,'userinfoedit');
/*!40000 ALTER TABLE `ab_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ab_permission_view`
--

DROP TABLE IF EXISTS `ab_permission_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ab_permission_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) DEFAULT NULL,
  `view_menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_id` (`permission_id`,`view_menu_id`),
  KEY `view_menu_id` (`view_menu_id`),
  CONSTRAINT `ab_permission_view_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `ab_permission` (`id`),
  CONSTRAINT `ab_permission_view_ibfk_2` FOREIGN KEY (`view_menu_id`) REFERENCES `ab_view_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ab_permission_view`
--

LOCK TABLES `ab_permission_view` WRITE;
/*!40000 ALTER TABLE `ab_permission_view` DISABLE KEYS */;
INSERT INTO `ab_permission_view` VALUES (1,1,4),(3,1,5),(5,1,6),(2,2,4),(4,2,5),(6,2,6),(7,3,8),(19,3,11),(38,3,24),(79,3,47),(87,3,49),(95,3,51),(103,3,53),(111,3,55),(119,3,57),(127,3,59),(135,3,61),(143,3,63),(8,4,8),(20,4,11),(29,4,15),(31,4,17),(33,4,19),(39,4,24),(46,4,26),(51,4,29),(54,4,31),(56,4,33),(59,4,35),(66,4,38),(77,4,45),(80,4,47),(88,4,49),(96,4,51),(104,4,53),(112,4,55),(120,4,57),(128,4,59),(136,4,61),(144,4,63),(150,4,65),(153,4,66),(160,4,68),(163,4,70),(170,4,76),(176,4,78),(182,4,80),(188,4,82),(9,5,8),(21,5,11),(40,5,24),(45,5,26),(50,5,29),(81,5,47),(89,5,49),(97,5,51),(105,5,53),(113,5,55),(121,5,57),(129,5,59),(137,5,61),(145,5,63),(10,6,8),(11,7,8),(22,7,11),(41,7,24),(47,7,26),(52,7,29),(57,7,33),(60,7,35),(67,7,38),(82,7,47),(90,7,49),(98,7,51),(106,7,53),(114,7,55),(122,7,57),(130,7,59),(138,7,61),(146,7,63),(151,7,65),(154,7,66),(171,7,76),(177,7,78),(183,7,80),(189,7,82),(12,8,8),(23,8,11),(42,8,24),(83,8,47),(91,8,49),(99,8,51),(107,8,53),(115,8,55),(123,8,57),(131,8,59),(139,8,61),(147,8,63),(152,8,65),(156,8,66),(13,9,8),(24,9,11),(43,9,24),(61,9,35),(68,9,38),(84,9,47),(92,9,49),(100,9,51),(108,9,53),(116,9,55),(124,9,57),(132,9,59),(140,9,61),(148,9,63),(155,9,66),(172,9,76),(178,9,78),(184,9,80),(190,9,82),(14,10,8),(15,11,8),(16,12,8),(17,13,9),(18,13,10),(26,13,12),(28,13,14),(30,13,16),(32,13,18),(34,13,20),(36,13,22),(37,13,23),(44,13,25),(48,13,27),(49,13,28),(53,13,30),(55,13,32),(58,13,34),(64,13,36),(65,13,37),(70,13,39),(73,13,41),(75,13,43),(76,13,44),(78,13,46),(86,13,48),(94,13,50),(102,13,52),(110,13,54),(118,13,56),(126,13,58),(134,13,60),(142,13,62),(149,13,64),(159,13,67),(162,13,69),(165,13,71),(167,13,73),(169,13,75),(175,13,77),(181,13,79),(187,13,81),(193,13,83),(25,14,11),(27,15,13),(166,15,72),(168,15,74),(35,16,21),(62,17,35),(69,17,38),(157,17,66),(173,17,76),(179,17,78),(185,17,80),(191,17,82),(63,18,35),(174,18,76),(180,18,78),(186,18,80),(192,18,82),(71,19,40),(72,20,40),(74,21,42),(85,22,47),(93,22,49),(101,22,51),(109,22,53),(117,22,55),(125,22,57),(133,22,59),(141,22,61),(161,22,68),(164,22,70),(158,23,66);
/*!40000 ALTER TABLE `ab_permission_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ab_permission_view_role`
--

DROP TABLE IF EXISTS `ab_permission_view_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ab_permission_view_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_view_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_view_id` (`permission_view_id`,`role_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `ab_permission_view_role_ibfk_1` FOREIGN KEY (`permission_view_id`) REFERENCES `ab_permission_view` (`id`),
  CONSTRAINT `ab_permission_view_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `ab_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ab_permission_view_role`
--

LOCK TABLES `ab_permission_view_role` WRITE;
/*!40000 ALTER TABLE `ab_permission_view_role` DISABLE KEYS */;
INSERT INTO `ab_permission_view_role` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,1),(19,19,1),(20,20,1),(21,21,1),(22,22,1),(23,23,1),(24,24,1),(25,25,1),(26,26,1),(27,27,1),(28,28,1),(29,29,1),(30,30,1),(31,31,1),(32,32,1),(33,33,1),(34,34,1),(35,35,1),(36,36,1),(37,37,1),(38,38,1),(39,39,1),(40,40,1),(41,41,1),(42,42,1),(43,43,1),(44,44,1),(45,45,1),(46,46,1),(47,47,1),(48,48,1),(49,49,1),(50,50,1),(51,51,1),(52,52,1),(53,53,1),(54,54,1),(55,55,1),(56,56,1),(57,57,1),(58,58,1),(59,59,1),(60,60,1),(61,61,1),(62,62,1),(63,63,1),(64,64,1),(65,65,1),(66,66,1),(67,67,1),(68,68,1),(69,69,1),(70,70,1),(71,71,1),(72,72,1),(73,73,1),(74,74,1),(75,75,1),(76,76,1),(77,77,1),(78,78,1),(79,79,1),(80,80,1),(81,81,1),(82,82,1),(83,83,1),(84,84,1),(85,85,1),(86,86,1),(87,87,1),(88,88,1),(89,89,1),(90,90,1),(91,91,1),(92,92,1),(93,93,1),(94,94,1),(95,95,1),(96,96,1),(97,97,1),(98,98,1),(99,99,1),(100,100,1),(101,101,1),(102,102,1),(103,103,1),(104,104,1),(105,105,1),(106,106,1),(107,107,1),(108,108,1),(109,109,1),(110,110,1),(111,111,1),(112,112,1),(113,113,1),(114,114,1),(115,115,1),(116,116,1),(117,117,1),(118,118,1),(119,119,1),(120,120,1),(121,121,1),(122,122,1),(123,123,1),(124,124,1),(125,125,1),(126,126,1),(127,127,1),(128,128,1),(129,129,1),(130,130,1),(131,131,1),(132,132,1),(133,133,1),(134,134,1),(135,135,1),(136,136,1),(137,137,1),(138,138,1),(139,139,1),(140,140,1),(141,141,1),(142,142,1),(143,143,1),(144,144,1),(145,145,1),(146,146,1),(147,147,1),(148,148,1),(149,149,1),(150,150,1),(151,151,1),(152,152,1),(153,153,1),(154,154,1),(155,155,1),(156,156,1),(157,157,1),(158,158,1),(159,159,1),(160,160,1),(161,161,1),(162,162,1),(163,163,1),(164,164,1),(165,165,1),(166,166,1),(167,167,1),(168,168,1),(169,169,1),(170,170,1),(171,171,1),(172,172,1),(173,173,1),(174,174,1),(175,175,1),(176,176,1),(177,177,1),(178,178,1),(179,179,1),(180,180,1),(181,181,1),(182,182,1),(183,183,1),(184,184,1),(185,185,1),(186,186,1),(187,187,1),(188,188,1),(189,189,1),(190,190,1),(191,191,1),(192,192,1),(193,193,1);
/*!40000 ALTER TABLE `ab_permission_view_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ab_register_user`
--

DROP TABLE IF EXISTS `ab_register_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ab_register_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(256) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `registration_date` datetime DEFAULT NULL,
  `registration_hash` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ab_register_user`
--

LOCK TABLES `ab_register_user` WRITE;
/*!40000 ALTER TABLE `ab_register_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ab_register_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ab_role`
--

DROP TABLE IF EXISTS `ab_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ab_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ab_role`
--

LOCK TABLES `ab_role` WRITE;
/*!40000 ALTER TABLE `ab_role` DISABLE KEYS */;
INSERT INTO `ab_role` VALUES (1,'Admin'),(2,'Public');
/*!40000 ALTER TABLE `ab_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ab_user`
--

DROP TABLE IF EXISTS `ab_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ab_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(256) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `login_count` int(11) DEFAULT NULL,
  `fail_login_count` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `changed_on` datetime DEFAULT NULL,
  `created_by_fk` int(11) DEFAULT NULL,
  `changed_by_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `created_by_fk` (`created_by_fk`),
  KEY `changed_by_fk` (`changed_by_fk`),
  CONSTRAINT `ab_user_ibfk_1` FOREIGN KEY (`created_by_fk`) REFERENCES `ab_user` (`id`),
  CONSTRAINT `ab_user_ibfk_2` FOREIGN KEY (`changed_by_fk`) REFERENCES `ab_user` (`id`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`active` in (0,1))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ab_user`
--

LOCK TABLES `ab_user` WRITE;
/*!40000 ALTER TABLE `ab_user` DISABLE KEYS */;
INSERT INTO `ab_user` VALUES (1,'admin','user','admin','pbkdf2:sha256:50000$NDNx0mIO$5238ba4f0a8ae72848f79716d753494a6a9a2e90791930512e25a4915ac6b1b5',1,'admin@fab.org','2018-09-23 19:58:57',2,0,'2018-09-23 17:42:03','2018-09-23 17:42:03',NULL,NULL);
/*!40000 ALTER TABLE `ab_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ab_user_role`
--

DROP TABLE IF EXISTS `ab_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ab_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`role_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `ab_user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ab_user` (`id`),
  CONSTRAINT `ab_user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `ab_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ab_user_role`
--

LOCK TABLES `ab_user_role` WRITE;
/*!40000 ALTER TABLE `ab_user_role` DISABLE KEYS */;
INSERT INTO `ab_user_role` VALUES (1,1,1);
/*!40000 ALTER TABLE `ab_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ab_view_menu`
--

DROP TABLE IF EXISTS `ab_view_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ab_view_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ab_view_menu`
--

LOCK TABLES `ab_view_menu` WRITE;
/*!40000 ALTER TABLE `ab_view_menu` DISABLE KEYS */;
INSERT INTO `ab_view_menu` VALUES (67,'All Codes'),(81,'All Engineering Codes'),(34,'All Requests'),(83,'All Vendor Codes'),(36,'All Your Codes'),(31,'AskBapcoView'),(7,'AuthDBView'),(16,'Base Permissions'),(56,'CDRL Item'),(55,'CdrlitemView'),(71,'Codes Generated by Partner'),(69,'Codes Generated by User'),(25,'Comments'),(24,'CommentsView'),(26,'DocRequestsView'),(52,'DocType'),(51,'DoctypeView'),(58,'Document Class'),(57,'DocumentclassView'),(35,'DocumentView'),(76,'EngDocumentView'),(27,'Engineering Code Request'),(77,'Engineering Codes'),(12,'List Roles'),(9,'List Users'),(33,'ListRequest'),(3,'LocaleView'),(50,'Material Class'),(49,'MaterialclassView'),(64,'Matrix View'),(63,'MatrixView'),(62,'MR'),(61,'MrView'),(45,'MultipleViewsExp'),(1,'MyIndexView'),(32,'N Request'),(73,'Naming Requests Chart'),(22,'Old Codes Upload'),(21,'Oldcodes'),(39,'Only Pending Codes'),(54,'Partner'),(70,'PartnerRequestView'),(53,'PartnerView'),(38,'PendingView'),(20,'Permission on Views/Menus'),(15,'PermissionModelView'),(19,'PermissionViewModelView'),(72,'RequestChartView'),(28,'Requests'),(5,'ResetMyPasswordView'),(4,'ResetPasswordView'),(11,'RoleModelView'),(10,'Security'),(44,'Settings'),(42,'Setting_updateView'),(46,'Smart Settings'),(66,'SuperDocumentView'),(80,'SuperEngDocumentView'),(65,'SuperListRequest'),(82,'SuperVendorDocumentView'),(23,'Supervisor'),(75,'Timeline Request Chart'),(74,'TimelineChart'),(48,'Unit'),(47,'UnitView'),(41,'Update Codes (Excel)'),(43,'Update Setting (Excel)'),(40,'Uploadcodes'),(14,'User\'s Statistics'),(8,'UserDBModelView'),(68,'UserDocumentView'),(6,'UserInfoEditView'),(13,'UserStatsChartView'),(2,'UtilView'),(60,'Vendor'),(30,'Vendor Code Request'),(79,'Vendor Codes'),(78,'VendorDocumentView'),(29,'VendorRequestsView'),(59,'VendorView'),(17,'ViewMenuModelView'),(18,'Views/Menus'),(37,'Your Codes');
/*!40000 ALTER TABLE `ab_view_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdrlitem`
--

DROP TABLE IF EXISTS `cdrlitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdrlitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cdrlitem` varchar(35) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cdrlitem` (`cdrlitem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdrlitem`
--

LOCK TABLES `cdrlitem` WRITE;
/*!40000 ALTER TABLE `cdrlitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdrlitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `created_on` datetime NOT NULL,
  `changed_on` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) NOT NULL,
  `comment` varchar(250) DEFAULT NULL,
  `closed` varchar(3) DEFAULT NULL,
  `created_by_fk` int(11) NOT NULL,
  `changed_by_fk` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `doc_id` (`doc_id`),
  KEY `created_by_fk` (`created_by_fk`),
  KEY `changed_by_fk` (`changed_by_fk`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `document` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`created_by_fk`) REFERENCES `ab_user` (`id`),
  CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`changed_by_fk`) REFERENCES `ab_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docrequests`
--

DROP TABLE IF EXISTS `docrequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docrequests` (
  `created_on` datetime NOT NULL,
  `changed_on` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_id` int(11) NOT NULL,
  `materialclass_id` int(11) NOT NULL,
  `doctype_id` int(11) NOT NULL,
  `sheet` varchar(3) DEFAULT NULL,
  `partner_id` int(11) NOT NULL,
  `cdrlitem_id` int(11) DEFAULT NULL,
  `documentclass_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `mr_id` int(11) DEFAULT NULL,
  `matrix_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `request_type` varchar(20) DEFAULT NULL,
  `created_by_fk` int(11) NOT NULL,
  `changed_by_fk` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  KEY `materialclass_id` (`materialclass_id`),
  KEY `doctype_id` (`doctype_id`),
  KEY `partner_id` (`partner_id`),
  KEY `cdrlitem_id` (`cdrlitem_id`),
  KEY `documentclass_id` (`documentclass_id`),
  KEY `vendor_id` (`vendor_id`),
  KEY `mr_id` (`mr_id`),
  KEY `matrix_id` (`matrix_id`),
  KEY `created_by_fk` (`created_by_fk`),
  KEY `changed_by_fk` (`changed_by_fk`),
  CONSTRAINT `docrequests_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`),
  CONSTRAINT `docrequests_ibfk_10` FOREIGN KEY (`created_by_fk`) REFERENCES `ab_user` (`id`),
  CONSTRAINT `docrequests_ibfk_11` FOREIGN KEY (`changed_by_fk`) REFERENCES `ab_user` (`id`),
  CONSTRAINT `docrequests_ibfk_2` FOREIGN KEY (`materialclass_id`) REFERENCES `materialclass` (`id`),
  CONSTRAINT `docrequests_ibfk_3` FOREIGN KEY (`doctype_id`) REFERENCES `doctype` (`id`),
  CONSTRAINT `docrequests_ibfk_4` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`),
  CONSTRAINT `docrequests_ibfk_5` FOREIGN KEY (`cdrlitem_id`) REFERENCES `cdrlitem` (`id`),
  CONSTRAINT `docrequests_ibfk_6` FOREIGN KEY (`documentclass_id`) REFERENCES `documentclass` (`id`),
  CONSTRAINT `docrequests_ibfk_7` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`),
  CONSTRAINT `docrequests_ibfk_8` FOREIGN KEY (`mr_id`) REFERENCES `mr` (`id`),
  CONSTRAINT `docrequests_ibfk_9` FOREIGN KEY (`matrix_id`) REFERENCES `matrix` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docrequests`
--

LOCK TABLES `docrequests` WRITE;
/*!40000 ALTER TABLE `docrequests` DISABLE KEYS */;
INSERT INTO `docrequests` VALUES ('2018-09-25 12:32:50','2018-09-25 12:32:50',1,3,1,1,'001',1,NULL,NULL,NULL,NULL,NULL,20,'engineering',1,1),('2018-09-25 12:33:08','2018-09-25 12:33:08',2,3,1,1,'001',1,NULL,NULL,NULL,NULL,NULL,20,NULL,1,1),('2018-09-25 12:33:34','2018-09-25 12:33:34',3,3,1,1,'001',1,NULL,NULL,NULL,NULL,1,20,'engineering',1,1),('2018-11-11 21:57:16','2018-11-11 21:57:16',4,1,1,1,'001',1,NULL,NULL,NULL,NULL,NULL,1,'engineering',1,1),('2018-11-11 22:19:59','2018-11-11 22:19:59',5,1,1,1,'001',1,NULL,NULL,1,1,2,1,'vendor',1,1);
/*!40000 ALTER TABLE `docrequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctype`
--

DROP TABLE IF EXISTS `doctype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctype` varchar(3) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `doctype` (`doctype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctype`
--

LOCK TABLES `doctype` WRITE;
/*!40000 ALTER TABLE `doctype` DISABLE KEYS */;
INSERT INTO `doctype` VALUES (1,'DAT','','');
/*!40000 ALTER TABLE `doctype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `created_on` datetime NOT NULL,
  `changed_on` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(35) DEFAULT NULL,
  `oldcode` varchar(35) DEFAULT NULL,
  `docrequests_id` int(11) DEFAULT NULL,
  `notes` varchar(150) DEFAULT NULL,
  `unit_id` int(11) NOT NULL,
  `materialclass_id` int(11) NOT NULL,
  `doctype_id` int(11) NOT NULL,
  `sheet` varchar(3) DEFAULT NULL,
  `partner_id` int(11) NOT NULL,
  `cdrlitem_id` int(11) DEFAULT NULL,
  `documentclass_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `mr_id` int(11) DEFAULT NULL,
  `matrix_id` int(11) DEFAULT NULL,
  `created_by_fk` int(11) NOT NULL,
  `changed_by_fk` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `docrequests_id` (`docrequests_id`),
  KEY `unit_id` (`unit_id`),
  KEY `materialclass_id` (`materialclass_id`),
  KEY `doctype_id` (`doctype_id`),
  KEY `partner_id` (`partner_id`),
  KEY `cdrlitem_id` (`cdrlitem_id`),
  KEY `documentclass_id` (`documentclass_id`),
  KEY `vendor_id` (`vendor_id`),
  KEY `mr_id` (`mr_id`),
  KEY `matrix_id` (`matrix_id`),
  KEY `created_by_fk` (`created_by_fk`),
  KEY `changed_by_fk` (`changed_by_fk`),
  CONSTRAINT `document_ibfk_1` FOREIGN KEY (`docrequests_id`) REFERENCES `docrequests` (`id`),
  CONSTRAINT `document_ibfk_10` FOREIGN KEY (`matrix_id`) REFERENCES `matrix` (`id`),
  CONSTRAINT `document_ibfk_11` FOREIGN KEY (`created_by_fk`) REFERENCES `ab_user` (`id`),
  CONSTRAINT `document_ibfk_12` FOREIGN KEY (`changed_by_fk`) REFERENCES `ab_user` (`id`),
  CONSTRAINT `document_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`),
  CONSTRAINT `document_ibfk_3` FOREIGN KEY (`materialclass_id`) REFERENCES `materialclass` (`id`),
  CONSTRAINT `document_ibfk_4` FOREIGN KEY (`doctype_id`) REFERENCES `doctype` (`id`),
  CONSTRAINT `document_ibfk_5` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`),
  CONSTRAINT `document_ibfk_6` FOREIGN KEY (`cdrlitem_id`) REFERENCES `cdrlitem` (`id`),
  CONSTRAINT `document_ibfk_7` FOREIGN KEY (`documentclass_id`) REFERENCES `documentclass` (`id`),
  CONSTRAINT `document_ibfk_8` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`),
  CONSTRAINT `document_ibfk_9` FOREIGN KEY (`mr_id`) REFERENCES `mr` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES ('2018-11-11 21:57:16','2018-11-11 21:57:16',22,'001-P-DAT-00001-001','empty',4,NULL,1,1,1,'001',1,NULL,NULL,NULL,NULL,2,1,1),('2018-11-11 22:19:59','2018-11-11 22:22:48',23,'001-P-DAT-00002-001','001-P-DAT-00002-ABV',5,'Some note for this document.',1,1,1,'001',1,NULL,NULL,1,1,2,1,1);
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentclass`
--

DROP TABLE IF EXISTS `documentclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documentclass` varchar(1) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documentclass` (`documentclass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentclass`
--

LOCK TABLES `documentclass` WRITE;
/*!40000 ALTER TABLE `documentclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialclass`
--

DROP TABLE IF EXISTS `materialclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `materialclass` varchar(1) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `materialclass` (`materialclass`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialclass`
--

LOCK TABLES `materialclass` WRITE;
/*!40000 ALTER TABLE `materialclass` DISABLE KEYS */;
INSERT INTO `materialclass` VALUES (1,'P','','');
/*!40000 ALTER TABLE `materialclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matrix`
--

DROP TABLE IF EXISTS `matrix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matrix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matrix` varchar(50) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matrix`
--

LOCK TABLES `matrix` WRITE;
/*!40000 ALTER TABLE `matrix` DISABLE KEYS */;
INSERT INTO `matrix` VALUES (1,'018-P-DAT',21),(2,'001-P-DAT',2);
/*!40000 ALTER TABLE `matrix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mr`
--

DROP TABLE IF EXISTS `mr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mr` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mr` (`mr`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mr`
--

LOCK TABLES `mr` WRITE;
/*!40000 ALTER TABLE `mr` DISABLE KEYS */;
INSERT INTO `mr` VALUES (1,'MR-DOCTYPE-CLASS','','');
/*!40000 ALTER TABLE `mr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner`
--

DROP TABLE IF EXISTS `partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partner` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `common_start` int(11) DEFAULT NULL,
  `common_stop` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `partner` (`partner`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner`
--

LOCK TABLES `partner` WRITE;
/*!40000 ALTER TABLE `partner` DISABLE KEYS */;
INSERT INTO `partner` VALUES (1,'ROC','Rome OP','',0,0);
/*!40000 ALTER TABLE `partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` varchar(3) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `stop` int(11) DEFAULT NULL,
  `unit_type` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unit` (`unit`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (1,'001','Uno',0,99999,'standard',NULL),(2,'002','Fue',0,99999,'standard',NULL),(3,'018','',0,99999,'standard',NULL);
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendor` (`vendor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'Vendor','','');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-31 21:20:10
