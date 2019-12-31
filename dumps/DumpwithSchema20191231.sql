CREATE DATABASE  IF NOT EXISTS `depo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `depo`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: depo
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add config item',1,'add_configitem'),(2,'Can change config item',1,'change_configitem'),(3,'Can delete config item',1,'delete_configitem'),(4,'Can view config item',1,'view_configitem'),(5,'Can add config item attribute',2,'add_configitemattribute'),(6,'Can change config item attribute',2,'change_configitemattribute'),(7,'Can delete config item attribute',2,'delete_configitemattribute'),(8,'Can view config item attribute',2,'view_configitemattribute'),(9,'Can add config item attribute value',3,'add_configitemattributevalue'),(10,'Can change config item attribute value',3,'change_configitemattributevalue'),(11,'Can delete config item attribute value',3,'delete_configitemattributevalue'),(12,'Can view config item attribute value',3,'view_configitemattributevalue'),(13,'Can add log entry',4,'add_logentry'),(14,'Can change log entry',4,'change_logentry'),(15,'Can delete log entry',4,'delete_logentry'),(16,'Can view log entry',4,'view_logentry'),(17,'Can add permission',5,'add_permission'),(18,'Can change permission',5,'change_permission'),(19,'Can delete permission',5,'delete_permission'),(20,'Can view permission',5,'view_permission'),(21,'Can add group',6,'add_group'),(22,'Can change group',6,'change_group'),(23,'Can delete group',6,'delete_group'),(24,'Can view group',6,'view_group'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add content type',8,'add_contenttype'),(30,'Can change content type',8,'change_contenttype'),(31,'Can delete content type',8,'delete_contenttype'),(32,'Can view content type',8,'view_contenttype'),(33,'Can add session',9,'add_session'),(34,'Can change session',9,'change_session'),(35,'Can delete session',9,'delete_session'),(36,'Can view session',9,'view_session'),(37,'Can add config item tree',10,'add_configitemtree'),(38,'Can change config item tree',10,'change_configitemtree'),(39,'Can delete config item tree',10,'delete_configitemtree'),(40,'Can view config item tree',10,'view_configitemtree'),(41,'Can add credential',11,'add_credential'),(42,'Can change credential',11,'change_credential'),(43,'Can delete credential',11,'delete_credential'),(44,'Can view credential',11,'view_credential'),(45,'Can add credential set',12,'add_credentialset'),(46,'Can change credential set',12,'change_credentialset'),(47,'Can delete credential set',12,'delete_credentialset'),(48,'Can view credential set',12,'view_credentialset'),(49,'Can add credential set',13,'add_credentialset'),(50,'Can change credential set',13,'change_credentialset'),(51,'Can delete credential set',13,'delete_credentialset'),(52,'Can view credential set',13,'view_credentialset'),(53,'Can add jstree',14,'add_jstree'),(54,'Can change jstree',14,'change_jstree'),(55,'Can delete jstree',14,'delete_jstree'),(56,'Can view jstree',14,'view_jstree'),(57,'Can add node type',15,'add_nodetype'),(58,'Can change node type',15,'change_nodetype'),(59,'Can delete node type',15,'delete_nodetype'),(60,'Can view node type',15,'view_nodetype'),(61,'Can add node type popup menu item',16,'add_nodetypepopupmenuitem'),(62,'Can change node type popup menu item',16,'change_nodetypepopupmenuitem'),(63,'Can delete node type popup menu item',16,'delete_nodetypepopupmenuitem'),(64,'Can view node type popup menu item',16,'view_nodetypepopupmenuitem'),(65,'Can add popup menu item',17,'add_popupmenuitem'),(66,'Can change popup menu item',17,'change_popupmenuitem'),(67,'Can delete popup menu item',17,'delete_popupmenuitem'),(68,'Can view popup menu item',17,'view_popupmenuitem'),(69,'Can add config item role',18,'add_configitemrole'),(70,'Can change config item role',18,'change_configitemrole'),(71,'Can delete config item role',18,'delete_configitemrole'),(72,'Can view config item role',18,'view_configitemrole'),(73,'Can add config item config item role',19,'add_configitemconfigitemrole'),(74,'Can change config item config item role',19,'change_configitemconfigitemrole'),(75,'Can delete config item config item role',19,'delete_configitemconfigitemrole'),(76,'Can view config item config item role',19,'view_configitemconfigitemrole');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$xZqFAUMojJTf$YmUNaDYmX06UqNWY68DigupzEKtzq9iODoUkMpPoVI0=','2019-12-23 16:03:24.570107',1,'admin','','','networkteam@primerica.com',1,1,'2019-11-25 20:35:56.892799');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depo_configitem`
--

DROP TABLE IF EXISTS `depo_configitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depo_configitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `description` longtext NOT NULL,
  `owner` varchar(25) NOT NULL,
  `manager` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depo_configitem`
--

LOCK TABLES `depo_configitem` WRITE;
/*!40000 ALTER TABLE `depo_configitem` DISABLE KEYS */;
INSERT INTO `depo_configitem` VALUES (1,'A1','','ap879','ap879'),(2,'A2','','ap879','ap879'),(3,'Server 1','','dc1234','dc1234'),(4,'Server 2','','dc2345','dc1234'),(5,'Adobe Acrobat License','','dc8789','dc8789');
/*!40000 ALTER TABLE `depo_configitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depo_configitemattribute`
--

DROP TABLE IF EXISTS `depo_configitemattribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depo_configitemattribute` (
  `path` varchar(255) NOT NULL,
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `description` longtext NOT NULL,
  `valueType` varchar(25) NOT NULL,
  `valuePrompt` varchar(254) NOT NULL,
  `valueDefault` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  CONSTRAINT `depo_configitemattribute_chk_1` CHECK ((`depth` >= 0)),
  CONSTRAINT `depo_configitemattribute_chk_2` CHECK ((`numchild` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depo_configitemattribute`
--

LOCK TABLES `depo_configitemattribute` WRITE;
/*!40000 ALTER TABLE `depo_configitemattribute` DISABLE KEYS */;
INSERT INTO `depo_configitemattribute` VALUES ('0002',1,4,1,'Item','Base Config Item','','',''),('00020002',2,0,2,'AssetNumber','','Char','asset number',''),('00020008',2,0,3,'Owner','Config Item Owner','UserList','config item owner',''),('00020007',2,0,4,'Manager','','UserList','','config item manager'),('00020006',2,1,5,'ConfigItemType','','Choice','what type of configuration item is this',''),('000200060003',3,4,6,'Hardware','','','',''),('0002000600030002',4,0,7,'ConfigBackup','','YesNo','back up config',''),('0002000600030004',4,0,8,'ManagePortSecurity','','YesNo','manage port security',''),('0002000600030006',4,2,9,'Manufacturer','','Choice','manufacturer',''),('000200060003000600040002',6,5,10,'OperatingSystem','','Choice','',''),('0002000600030006000400020008',7,1,11,'IOS','','','',''),('0002000600030006000400020003',7,0,12,'ACI','','','',''),('00020006000300060004',5,2,13,'Cisco','','','',''),('00020006000300060003',5,0,14,'APC','','','',''),('000200060003000600040002000C',7,0,15,'WLC','','','',''),('0002000600030006000400020007',7,0,16,'ASA','','','',''),('00020006000300060004000200080002',8,1,17,'AccessMethod','','Choice','access method',''),('000200060003000600040002000800020004',9,2,18,'SSH','','','',''),('0002000600030006000400020008000200040003',10,0,19,'Credentials','','Credential','',''),('0002000600030006000400020008000200040004',10,0,20,'IPAddress','','GenericIPAddress','ip address',''),('000200060003000600040002000B',7,0,21,'NXOS','','','',''),('000200060003000600040004',6,0,22,'OSVersion','','','',''),('0002000600030008',4,0,23,'SerialNumber','','','serial number','');
/*!40000 ALTER TABLE `depo_configitemattribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depo_configitemattributevalue`
--

DROP TABLE IF EXISTS `depo_configitemattributevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depo_configitemattributevalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` longtext NOT NULL,
  `configItem_id` int(11) NOT NULL,
  `configItemAttributeType_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `depo_configitemattri_configItem_id_c4d15b2b_fk_depo_conf` (`configItem_id`),
  KEY `depo_configitemattri_configItemAttributeT_25c30929_fk_depo_conf` (`configItemAttributeType_id`),
  CONSTRAINT `depo_configitemattri_configItemAttributeT_25c30929_fk_depo_conf` FOREIGN KEY (`configItemAttributeType_id`) REFERENCES `depo_configitemattribute` (`id`),
  CONSTRAINT `depo_configitemattri_configItem_id_c4d15b2b_fk_depo_conf` FOREIGN KEY (`configItem_id`) REFERENCES `depo_configitem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depo_configitemattributevalue`
--

LOCK TABLES `depo_configitemattributevalue` WRITE;
/*!40000 ALTER TABLE `depo_configitemattributevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `depo_configitemattributevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depo_configitemconfigitemrole`
--

DROP TABLE IF EXISTS `depo_configitemconfigitemrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depo_configitemconfigitemrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolePriority` int(11) NOT NULL,
  `ConfigItem_id` int(11) NOT NULL,
  `ConfigItemRole_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `depo_configitemconfi_ConfigItem_id_522ba019_fk_depo_conf` (`ConfigItem_id`),
  KEY `depo_configitemconfi_ConfigItemRole_id_b9b21f50_fk_depo_conf` (`ConfigItemRole_id`),
  CONSTRAINT `depo_configitemconfi_ConfigItemRole_id_b9b21f50_fk_depo_conf` FOREIGN KEY (`ConfigItemRole_id`) REFERENCES `depo_configitemrole` (`id`),
  CONSTRAINT `depo_configitemconfi_ConfigItem_id_522ba019_fk_depo_conf` FOREIGN KEY (`ConfigItem_id`) REFERENCES `depo_configitem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depo_configitemconfigitemrole`
--

LOCK TABLES `depo_configitemconfigitemrole` WRITE;
/*!40000 ALTER TABLE `depo_configitemconfigitemrole` DISABLE KEYS */;
INSERT INTO `depo_configitemconfigitemrole` VALUES (3,100,2,2),(4,0,4,4),(5,0,3,3),(6,0,5,5),(7,0,1,2);
/*!40000 ALTER TABLE `depo_configitemconfigitemrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depo_configitemrole`
--

DROP TABLE IF EXISTS `depo_configitemrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depo_configitemrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depo_configitemrole`
--

LOCK TABLES `depo_configitemrole` WRITE;
/*!40000 ALTER TABLE `depo_configitemrole` DISABLE KEYS */;
INSERT INTO `depo_configitemrole` VALUES (1,'Switch',''),(2,'Router',''),(3,'Infrastructure Server',''),(4,'Application Server',''),(5,'License','');
/*!40000 ALTER TABLE `depo_configitemrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depo_configitemtree`
--

DROP TABLE IF EXISTS `depo_configitemtree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depo_configitemtree` (
  `path` varchar(255) NOT NULL,
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `description` longtext NOT NULL,
  `leafType` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  CONSTRAINT `depo_configitemtree_chk_1` CHECK ((`depth` >= 0)),
  CONSTRAINT `depo_configitemtree_chk_2` CHECK ((`numchild` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depo_configitemtree`
--

LOCK TABLES `depo_configitemtree` WRITE;
/*!40000 ALTER TABLE `depo_configitemtree` DISABLE KEYS */;
INSERT INTO `depo_configitemtree` VALUES ('0003',1,4,1,'Primerica','','static'),('00030006',2,2,2,'Network Devices','','static'),('00030004',2,0,3,'Desktop','','static'),('000300070001',3,2,4,'Server','','static'),('00030007',2,1,5,'Operations','','static'),('00030005',2,0,6,'Facilities','','static'),('0002',1,0,7,'Incorrect','','static'),('000300060006',3,0,8,'Switches','','static'),('000300060002',3,0,9,'Routers','','static'),('0003000700010004',4,0,10,'Unix','','static'),('0003000700010006',4,0,11,'Windows','','static');
/*!40000 ALTER TABLE `depo_configitemtree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depo_configitemtree_configitems`
--

DROP TABLE IF EXISTS `depo_configitemtree_configitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depo_configitemtree_configitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `configitemtree_id` int(11) NOT NULL,
  `configitem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `depo_configitemtree_conf_configitemtree_id_config_f04d7f0a_uniq` (`configitemtree_id`,`configitem_id`),
  KEY `depo_configitemtree__configitem_id_cb4fe91e_fk_depo_conf` (`configitem_id`),
  CONSTRAINT `depo_configitemtree__configitem_id_cb4fe91e_fk_depo_conf` FOREIGN KEY (`configitem_id`) REFERENCES `depo_configitem` (`id`),
  CONSTRAINT `depo_configitemtree__configitemtree_id_99387680_fk_depo_conf` FOREIGN KEY (`configitemtree_id`) REFERENCES `depo_configitemtree` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depo_configitemtree_configitems`
--

LOCK TABLES `depo_configitemtree_configitems` WRITE;
/*!40000 ALTER TABLE `depo_configitemtree_configitems` DISABLE KEYS */;
INSERT INTO `depo_configitemtree_configitems` VALUES (7,3,5),(1,8,1),(2,8,2),(5,10,3),(6,11,4);
/*!40000 ALTER TABLE `depo_configitemtree_configitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depo_credentials_credentialset`
--

DROP TABLE IF EXISTS `depo_credentials_credentialset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depo_credentials_credentialset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `description` longtext NOT NULL,
  `user` varchar(25) NOT NULL,
  `userPass` longblob NOT NULL,
  `privUser` varchar(25) NOT NULL,
  `privUserPass` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depo_credentials_credentialset`
--

LOCK TABLES `depo_credentials_credentialset` WRITE;
/*!40000 ALTER TABLE `depo_credentials_credentialset` DISABLE KEYS */;
INSERT INTO `depo_credentials_credentialset` VALUES (1,'Ciscowrk','','ciscowrk',_binary 'gAAAAABd8Sw2L-cc0TEfiqDwcX788RR-Gju2GQUsCXQP_GMxmGigwcUUL7FcGfmUMOhdOJFLGX5OHA0F6RslVlocmP9BHaYgJg==','',_binary 'gAAAAABd8Sw2TprvsJvPAJS8g9ezLXbycGszOALAPzAfYgv70XwZCqpjy6bpq41hwXUc8KcEFwSYK2m-anwITpC2dEgY_4y7Xg==');
/*!40000 ALTER TABLE `depo_credentials_credentialset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-11-25 20:36:30.012094','1','Device',1,'[{\"added\": {}}]',2,1),(2,'2019-11-25 20:36:55.406360','2','Type',1,'[{\"added\": {}}]',2,1),(3,'2019-11-25 20:37:27.010105','3','Switch',1,'[{\"added\": {}}]',2,1),(4,'2019-11-25 20:37:36.629936','4','Router',1,'[{\"added\": {}}]',2,1),(5,'2019-11-25 21:24:46.887096','1','Device',1,'[{\"added\": {}}]',2,1),(6,'2019-11-25 21:24:57.150760','1','Device',2,'[]',2,1),(7,'2019-11-25 21:25:14.302787','2','Software',1,'[{\"added\": {}}]',2,1),(8,'2019-11-25 21:25:38.466553','3','Manufacturer',1,'[{\"added\": {}}]',2,1),(9,'2019-11-26 20:57:32.510563','4','Operating System',1,'[{\"added\": {}}]',2,1),(10,'2019-11-26 20:58:22.917793','5','Cisco',1,'[{\"added\": {}}]',2,1),(11,'2019-11-26 20:58:47.925786','6','APC',1,'[{\"added\": {}}]',2,1),(12,'2019-11-26 20:59:05.788294','7','ACI',1,'[{\"added\": {}}]',2,1),(13,'2019-11-26 20:59:21.800583','8','IOS/IOS-X?',1,'[{\"added\": {}}]',2,1),(14,'2019-11-26 20:59:42.682196','8','IOS/IOS-X?',2,'[{\"changed\": {\"fields\": [\"parent\"]}}]',2,1),(15,'2019-11-26 21:00:21.397523','9','Device Type',1,'[{\"added\": {}}]',2,1),(16,'2019-11-26 21:00:57.893682','9','Device Type',2,'[{\"changed\": {\"fields\": [\"valueType\"]}}]',2,1),(17,'2019-11-26 21:01:45.168328','9','Device Type',3,'',2,1),(18,'2019-11-26 21:01:55.249420','8','IOS',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',2,1),(19,'2019-11-26 21:02:04.144234','10','NXOS',1,'[{\"added\": {}}]',2,1),(20,'2019-11-26 21:02:11.905354','11','WLC',1,'[{\"added\": {}}]',2,1),(21,'2019-11-26 21:02:24.741222','12','ASA',1,'[{\"added\": {}}]',2,1),(22,'2019-11-26 21:03:01.366580','13','Access Method',1,'[{\"added\": {}}]',2,1),(23,'2019-11-26 21:03:13.337156','14','SSH',1,'[{\"added\": {}}]',2,1),(24,'2019-11-26 21:03:22.312667','15','Telnet',1,'[{\"added\": {}}]',2,1),(25,'2019-11-26 21:07:44.106430','3','Manufacturer',2,'[{\"changed\": {\"fields\": [\"valueType\"]}}]',2,1),(26,'2019-11-26 21:09:29.322896','13','Access Method',2,'[{\"changed\": {\"fields\": [\"valueType\"]}}]',2,1),(27,'2019-11-27 13:44:58.720352','16','AssignedTo',1,'[{\"added\": {}}]',2,1),(28,'2019-11-27 13:45:13.267277','16','Owner',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',2,1),(29,'2019-11-27 13:45:26.577253','17','Manager',1,'[{\"added\": {}}]',2,1),(30,'2019-11-27 13:47:16.178236','17','Manager',2,'[{\"changed\": {\"fields\": [\"valueType\"]}}]',2,1),(31,'2019-11-27 13:47:22.207287','16','Owner',2,'[{\"changed\": {\"fields\": [\"valueType\"]}}]',2,1),(32,'2019-11-27 13:47:39.975550','18','Device Type',1,'[{\"added\": {}}]',2,1),(33,'2019-11-27 13:48:10.091535','18','Config Item Type',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',2,1),(34,'2019-11-27 13:48:33.476375','1','Hardware',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',2,1),(35,'2019-11-27 13:49:25.175298','19','SerialNumber',1,'[{\"added\": {}}]',2,1),(36,'2019-11-27 13:51:07.745291','20','AssetNumber',1,'[{\"added\": {}}]',2,1),(37,'2019-11-27 14:25:33.759046','1','Primerica',1,'[{\"added\": {}}]',10,1),(38,'2019-11-27 16:05:40.984573','20','AssetNumber',2,'[{\"changed\": {\"fields\": [\"valueType\"]}}]',2,1),(39,'2019-11-27 16:06:17.306039','1','Primerica',2,'[]',10,1),(40,'2019-11-27 16:06:30.638184','2','Network Devices',1,'[{\"added\": {}}]',10,1),(41,'2019-11-27 16:07:11.393686','1','A1',1,'[{\"added\": {}}]',1,1),(42,'2019-11-27 16:22:51.300147','2','Network Devices',2,'[{\"changed\": {\"fields\": [\"configItems\"]}}]',10,1),(43,'2019-12-02 13:13:29.490765','21','IP Address',1,'[{\"added\": {}}]',2,1),(44,'2019-12-02 13:15:35.677611','22','IP Address',1,'[{\"added\": {}}]',2,1),(45,'2019-12-03 21:24:48.660685','1','ciscowrk',1,'[{\"added\": {}}]',12,1),(46,'2019-12-03 21:34:29.763684','1','ConfigItemAttributeValue object (1)',1,'[{\"added\": {}}]',3,1),(47,'2019-12-03 21:36:40.647110','2','A1 - IP Address - 172.17.40.9',1,'[{\"added\": {}}]',3,1),(48,'2019-12-03 21:38:05.732271','23','credentials',1,'[{\"added\": {}}]',2,1),(49,'2019-12-03 21:38:14.277845','23','Credentials',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',2,1),(50,'2019-12-03 21:39:06.190381','3','A1 - Manufacturer - Cisco',1,'[{\"added\": {}}]',3,1),(51,'2019-12-03 21:39:24.149526','4','A1 - Credentials - 1',1,'[{\"added\": {}}]',3,1),(52,'2019-12-03 21:39:59.631791','5','A1 - Config Item Type - Hardware',1,'[{\"added\": {}}]',3,1),(53,'2019-12-03 21:40:08.673045','6','A1 - Operating System - IOS',1,'[{\"added\": {}}]',3,1),(54,'2019-12-04 13:37:43.861722','24','Config Backup',1,'[{\"added\": {}}]',2,1),(55,'2019-12-04 13:38:27.751879','25','ManagePortSecurity',1,'[{\"added\": {}}]',2,1),(56,'2019-12-04 13:39:18.726413','24','Config Backup',2,'[{\"changed\": {\"fields\": [\"valueType\"]}}]',2,1),(57,'2019-12-04 13:39:28.163697','25','ManagePortSecurity',2,'[{\"changed\": {\"fields\": [\"valueType\"]}}]',2,1),(58,'2019-12-04 13:39:33.674402','24','ConfigBackup',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',2,1),(59,'2019-12-04 13:39:39.528683','18','ConfigItemType',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',2,1),(60,'2019-12-04 13:39:49.281048','4','OperatingSystem',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',2,1),(61,'2019-12-04 13:39:55.549844','13','AccessMethod',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',2,1),(62,'2019-12-04 13:40:01.312199','21','IPAddress',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',2,1),(63,'2019-12-04 13:40:43.146415','22','IPAddress',2,'[{\"changed\": {\"fields\": [\"name\", \"valuePrompt\"]}}]',2,1),(64,'2019-12-04 13:40:51.290971','22','IPAddress',2,'[]',2,1),(65,'2019-12-04 16:41:25.915327','26','Version',1,'[{\"added\": {}}]',2,1),(66,'2019-12-05 18:43:33.041385','27','Primerica',1,'[{\"added\": {}}]',2,1),(67,'2019-12-05 18:43:49.571383','27','Asset',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',2,1),(68,'2019-12-05 18:44:07.203961','27','Item',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',2,1),(69,'2019-12-05 19:14:38.256148','27','Item',2,'[{\"changed\": {\"fields\": [\"ValueType\", \"ValuePrompt\"]}}]',2,1),(70,'2019-12-05 19:14:57.717253','20','AssetNumber',2,'[]',2,1),(71,'2019-12-05 19:50:14.250496','1','Item',1,'[{\"added\": {}}]',2,1),(72,'2019-12-05 19:50:45.380470','2','AssetNumber',1,'[{\"added\": {}}]',2,1),(73,'2019-12-05 19:51:20.878971','3','Owner',1,'[{\"added\": {}}]',2,1),(74,'2019-12-05 19:51:46.438088','4','Manager',1,'[{\"added\": {}}]',2,1),(75,'2019-12-05 19:52:25.846668','5','ConfigItemType',1,'[{\"added\": {}}]',2,1),(76,'2019-12-05 19:52:54.178460','6','Hardwar',1,'[{\"added\": {}}]',2,1),(77,'2019-12-05 19:53:00.137657','6','Hardware',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',2,1),(78,'2019-12-05 19:56:33.240193','7','ConfigBackup',1,'[{\"added\": {}}]',2,1),(79,'2019-12-05 19:57:08.104667','8','ManagePortSecurity',1,'[{\"added\": {}}]',2,1),(80,'2019-12-05 19:57:36.485103','9','Manufacturer',1,'[{\"added\": {}}]',2,1),(81,'2019-12-05 19:57:54.455713','10','OperatingSystem',1,'[{\"added\": {}}]',2,1),(82,'2019-12-05 19:58:27.282057','11','IOS',1,'[{\"added\": {}}]',2,1),(83,'2019-12-05 19:58:42.793727','12','ACI',1,'[{\"added\": {}}]',2,1),(84,'2019-12-05 19:58:54.453780','13','Cisco',1,'[{\"added\": {}}]',2,1),(85,'2019-12-05 19:59:20.229789','14','APC',1,'[{\"added\": {}}]',2,1),(86,'2019-12-05 19:59:49.593702','15','WLC',1,'[{\"added\": {}}]',2,1),(87,'2019-12-05 20:00:00.876369','16','ASA',1,'[{\"added\": {}}]',2,1),(88,'2019-12-05 20:00:30.737602','17','AccessMethod',1,'[{\"added\": {}}]',2,1),(89,'2019-12-05 20:00:48.253722','18','SSH',1,'[{\"added\": {}}]',2,1),(90,'2019-12-05 20:01:06.022783','19','Credentials',1,'[{\"added\": {}}]',2,1),(91,'2019-12-05 20:01:12.385088','19','Credentials',2,'[{\"changed\": {\"fields\": [\"ValueType\"]}}]',2,1),(92,'2019-12-05 20:01:21.031387','18','SSH',2,'[]',2,1),(93,'2019-12-05 20:01:21.234365','18','SSH',2,'[]',2,1),(94,'2019-12-05 20:01:34.382642','20','IPAddress',1,'[{\"added\": {}}]',2,1),(95,'2019-12-05 20:01:57.926185','21','NXOS',1,'[{\"added\": {}}]',2,1),(96,'2019-12-05 20:02:11.626902','22','Version',1,'[{\"added\": {}}]',2,1),(97,'2019-12-05 20:02:51.025882','22','OSVersion',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',2,1),(98,'2019-12-05 20:03:17.781472','23','SerialNumber',1,'[{\"added\": {}}]',2,1),(99,'2019-12-05 20:39:01.357771','1','Primerica',1,'[{\"added\": {}}]',10,1),(100,'2019-12-05 20:39:21.057802','2','Network Devices',1,'[{\"added\": {}}]',10,1),(101,'2019-12-06 18:39:59.375945','3','Desktop',1,'[{\"added\": {}}]',10,1),(102,'2019-12-06 18:40:16.995769','4','Server',1,'[{\"added\": {}}]',10,1),(103,'2019-12-06 18:40:30.204416','5','Operations',1,'[{\"added\": {}}]',10,1),(104,'2019-12-06 18:40:51.723614','6','Facilities',1,'[{\"added\": {}}]',10,1),(105,'2019-12-06 18:41:25.652909','7','Incorrect',1,'[{\"added\": {}}]',10,1),(106,'2019-12-06 20:36:20.557690','8','Switches',1,'[{\"added\": {}}]',10,1),(107,'2019-12-06 20:36:29.172581','9','Routers',1,'[{\"added\": {}}]',10,1),(108,'2019-12-09 17:24:33.012906','1','A1',1,'[{\"added\": {}}]',1,1),(109,'2019-12-09 17:27:41.075993','8','Switches',2,'[{\"changed\": {\"fields\": [\"ConfigItems\"]}}]',10,1),(110,'2019-12-09 17:27:45.133809','8','Switches',2,'[]',10,1),(111,'2019-12-11 17:49:42.701442','1','Ciscowrk',1,'[{\"added\": {}}]',13,1),(112,'2019-12-27 21:16:57.991764','1','ConfigItemTree',1,'[{\"added\": {}}]',14,1),(113,'2019-12-27 21:17:25.971532','1','ConfigItemTree',2,'[{\"changed\": {\"fields\": [\"Add node type?\", \"Enable Context Menu Popup?\", \"Enable search functionality for this tree?\", \"Remember Node State?\", \"Require unique names of sibling nodes?\"]}}]',14,1),(114,'2019-12-30 21:09:01.992229','1','ConfigItem',1,'[{\"added\": {}}]',15,1),(115,'2019-12-30 21:09:43.529922','1','Add',1,'[{\"added\": {}}]',17,1),(116,'2019-12-30 21:10:00.201511','2','Edit',1,'[{\"added\": {}}]',17,1),(117,'2019-12-30 21:10:09.695303','1','Add',2,'[{\"changed\": {\"fields\": [\"Menu Text Class\"]}}]',17,1),(118,'2019-12-30 21:10:39.123374','3','Clone',1,'[{\"added\": {}}]',17,1),(119,'2019-12-30 21:11:08.807271','4','Delete',1,'[{\"added\": {}}]',17,1),(120,'2019-12-30 21:11:10.327792','1','ConfigItem',2,'[{\"added\": {\"name\": \"node type popup menu item\", \"object\": \"nodeTypePopupMenuItem object (1)\"}}, {\"added\": {\"name\": \"node type popup menu item\", \"object\": \"nodeTypePopupMenuItem object (2)\"}}, {\"added\": {\"name\": \"node type popup menu item\", \"object\": \"nodeTypePopupMenuItem object (3)\"}}, {\"added\": {\"name\": \"node type popup menu item\", \"object\": \"nodeTypePopupMenuItem object (4)\"}}]',15,1),(121,'2019-12-30 21:11:41.252519','1','ConfigItem',2,'[{\"changed\": {\"name\": \"node type popup menu item\", \"object\": \"nodeTypePopupMenuItem object (1)\", \"fields\": [\"Display order\"]}}, {\"changed\": {\"name\": \"node type popup menu item\", \"object\": \"nodeTypePopupMenuItem object (2)\", \"fields\": [\"Display order\"]}}, {\"changed\": {\"name\": \"node type popup menu item\", \"object\": \"nodeTypePopupMenuItem object (3)\", \"fields\": [\"Display order\"]}}, {\"changed\": {\"name\": \"node type popup menu item\", \"object\": \"nodeTypePopupMenuItem object (4)\", \"fields\": [\"Display order\"]}}]',15,1),(122,'2019-12-30 21:11:56.567676','1','ConfigItem',2,'[{\"changed\": {\"name\": \"node type popup menu item\", \"object\": \"nodeTypePopupMenuItem object (1)\", \"fields\": [\"Display order\"]}}, {\"changed\": {\"name\": \"node type popup menu item\", \"object\": \"nodeTypePopupMenuItem object (2)\", \"fields\": [\"Display order\"]}}, {\"changed\": {\"name\": \"node type popup menu item\", \"object\": \"nodeTypePopupMenuItem object (3)\", \"fields\": [\"Display order\"]}}, {\"changed\": {\"name\": \"node type popup menu item\", \"object\": \"nodeTypePopupMenuItem object (4)\", \"fields\": [\"Display order\"]}}]',15,1),(123,'2019-12-30 21:12:09.169875','1','ConfigItem',2,'[{\"changed\": {\"name\": \"node type popup menu item\", \"object\": \"nodeTypePopupMenuItem object (2)\", \"fields\": [\"Display order\"]}}, {\"changed\": {\"name\": \"node type popup menu item\", \"object\": \"nodeTypePopupMenuItem object (4)\", \"fields\": [\"Display order\"]}}, {\"changed\": {\"name\": \"node type popup menu item\", \"object\": \"nodeTypePopupMenuItem object (1)\", \"fields\": [\"Display order\"]}}, {\"changed\": {\"name\": \"node type popup menu item\", \"object\": \"nodeTypePopupMenuItem object (3)\", \"fields\": [\"Display order\"]}}]',15,1),(124,'2019-12-30 21:27:17.873706','1','ConfigItemTree',2,'[{\"changed\": {\"fields\": [\"Only show matches when searching?\", \"Show the children of matches when searching?\"]}}]',14,1),(125,'2019-12-30 21:27:29.967382','1','ConfigItemTree',2,'[{\"changed\": {\"fields\": [\"Add checkboxes before node?\"]}}]',14,1),(126,'2019-12-30 21:27:47.992339','1','ConfigItemTree',2,'[{\"changed\": {\"fields\": [\"Add checkboxes before node?\"]}}]',14,1),(127,'2019-12-31 13:25:38.443455','2','A2',1,'[{\"added\": {}}]',1,1),(128,'2019-12-31 13:25:55.402995','8','Switches',2,'[{\"changed\": {\"fields\": [\"ConfigItems\"]}}]',10,1),(129,'2019-12-31 13:49:43.560457','3','Server 1',1,'[{\"added\": {}}]',1,1),(130,'2019-12-31 13:50:04.892839','4','Server 2',1,'[{\"added\": {}}]',1,1),(131,'2019-12-31 13:50:07.305717','4','Server',2,'[{\"changed\": {\"fields\": [\"ConfigItems\"]}}]',10,1),(132,'2019-12-31 13:50:51.046175','10','Unix',1,'[{\"added\": {}}]',10,1),(133,'2019-12-31 13:51:04.717237','11','Windows',1,'[{\"added\": {}}]',10,1),(134,'2019-12-31 13:51:14.096355','10','Unix',2,'[{\"changed\": {\"fields\": [\"ConfigItems\"]}}]',10,1),(135,'2019-12-31 13:51:17.446547','11','Windows',2,'[{\"changed\": {\"fields\": [\"ConfigItems\"]}}]',10,1),(136,'2019-12-31 13:51:30.543724','4','Server',2,'[{\"changed\": {\"fields\": [\"ConfigItems\"]}}]',10,1),(137,'2019-12-31 14:35:42.608516','3','Router',1,'[{\"added\": {}}]',18,1),(138,'2019-12-31 14:35:50.219286','4','Switch',1,'[{\"added\": {}}]',18,1),(139,'2019-12-31 14:41:15.245592','1','Switch',1,'[{\"added\": {}}]',18,1),(140,'2019-12-31 14:41:19.805303','2','Router',1,'[{\"added\": {}}]',18,1),(141,'2019-12-31 14:41:26.430001','3','Application Server',1,'[{\"added\": {}}]',18,1),(142,'2019-12-31 14:41:41.466154','3','Windows Server',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',18,1),(143,'2019-12-31 14:43:02.066517','3','Server 1',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',1,1),(144,'2019-12-31 14:43:29.374485','4','Unix Server',1,'[{\"added\": {}}]',18,1),(145,'2019-12-31 14:43:38.428503','5','License',1,'[{\"added\": {}}]',18,1),(146,'2019-12-31 14:43:52.619588','4','Application Server',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',18,1),(147,'2019-12-31 14:44:01.523318','3','Infrastructure Server',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',18,1),(148,'2019-12-31 14:44:15.112198','3','Server 1',2,'[]',1,1),(149,'2019-12-31 14:44:20.419790','4','Server 2',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',1,1),(150,'2019-12-31 14:45:15.089906','5','Adobe Acrobat License',1,'[{\"added\": {}}]',1,1),(151,'2019-12-31 14:45:26.252330','3','Desktop',2,'[{\"changed\": {\"fields\": [\"ConfigItems\"]}}]',10,1),(152,'2019-12-31 15:10:25.348366','2','A2',2,'[{\"changed\": {\"fields\": [\"Roles\"]}}]',1,1),(153,'2019-12-31 15:10:29.767250','1','A1',2,'[{\"changed\": {\"fields\": [\"Roles\"]}}]',1,1),(154,'2019-12-31 15:10:35.459536','3','Server 1',2,'[{\"changed\": {\"fields\": [\"Roles\"]}}]',1,1),(155,'2019-12-31 15:10:39.033638','4','Server 2',2,'[{\"changed\": {\"fields\": [\"Roles\"]}}]',1,1),(156,'2019-12-31 15:10:42.379986','5','Adobe Acrobat License',2,'[{\"changed\": {\"fields\": [\"Roles\"]}}]',1,1),(157,'2019-12-31 16:21:30.926326','6','Application Server',1,'[{\"added\": {}}]',18,1),(158,'2019-12-31 16:21:37.466693','7','Infrastructure Server',1,'[{\"added\": {}}]',18,1),(159,'2019-12-31 16:21:39.393819','3','Server 1',2,'[{\"added\": {\"name\": \"config item config item role\", \"object\": \"ConfigItemConfigItemRole object (1)\"}}]',1,1),(160,'2019-12-31 16:21:46.915915','3','Server 1',2,'[{\"changed\": {\"name\": \"config item config item role\", \"object\": \"ConfigItemConfigItemRole object (1)\", \"fields\": [\"Role Priority\"]}}]',1,1),(161,'2019-12-31 16:21:55.300962','8','Router',1,'[{\"added\": {}}]',18,1),(162,'2019-12-31 16:21:58.629084','1','A1',2,'[{\"added\": {\"name\": \"config item config item role\", \"object\": \"ConfigItemConfigItemRole object (2)\"}}]',1,1),(163,'2019-12-31 16:22:03.544560','1','A1',2,'[]',1,1),(164,'2019-12-31 16:22:09.929763','2','A2',2,'[{\"added\": {\"name\": \"config item config item role\", \"object\": \"ConfigItemConfigItemRole object (3)\"}}]',1,1),(165,'2019-12-31 16:22:43.235614','8','Router',3,'',18,1),(166,'2019-12-31 16:22:43.282238','7','Infrastructure Server',3,'',18,1),(167,'2019-12-31 16:22:43.308307','6','Application Server',3,'',18,1),(168,'2019-12-31 16:22:56.111206','4','Server 2',2,'[{\"added\": {\"name\": \"config item config item role\", \"object\": \"ConfigItemConfigItemRole object (4)\"}}]',1,1),(169,'2019-12-31 16:23:00.929891','3','Server 1',2,'[{\"added\": {\"name\": \"config item config item role\", \"object\": \"ConfigItemConfigItemRole object (5)\"}}]',1,1),(170,'2019-12-31 16:23:06.351437','5','Adobe Acrobat License',2,'[{\"added\": {\"name\": \"config item config item role\", \"object\": \"ConfigItemConfigItemRole object (6)\"}}]',1,1),(171,'2019-12-31 16:23:09.636172','2','A2',2,'[]',1,1),(172,'2019-12-31 16:23:15.056293','1','A1',2,'[{\"added\": {\"name\": \"config item config item role\", \"object\": \"ConfigItemConfigItemRole object (7)\"}}]',1,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (4,'admin','logentry'),(6,'auth','group'),(5,'auth','permission'),(7,'auth','user'),(8,'contenttypes','contenttype'),(1,'depo','configitem'),(2,'depo','configitemattribute'),(3,'depo','configitemattributevalue'),(19,'depo','configitemconfigitemrole'),(18,'depo','configitemrole'),(10,'depo','configitemtree'),(11,'depo','credential'),(12,'depo','credentialset'),(13,'depo_credentials','credentialset'),(14,'django_jstree','jstree'),(15,'django_jstree','nodetype'),(16,'django_jstree','nodetypepopupmenuitem'),(17,'django_jstree','popupmenuitem'),(9,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_jstree_jstree`
--

DROP TABLE IF EXISTS `django_jstree_jstree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_jstree_jstree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `description` longtext NOT NULL,
  `appname` varchar(255) NOT NULL,
  `treemodelname` varchar(255) NOT NULL,
  `applyTypes` tinyint(1) NOT NULL,
  `enableContextmenu` tinyint(1) NOT NULL,
  `enableSearch` tinyint(1) NOT NULL,
  `enableFuzzySearch` tinyint(1) NOT NULL,
  `enableCheckbox` tinyint(1) NOT NULL,
  `enableDND` tinyint(1) NOT NULL,
  `enableState` tinyint(1) NOT NULL,
  `enableUnique` tinyint(1) NOT NULL,
  `enableWholerow` tinyint(1) NOT NULL,
  `additionalJS` longtext NOT NULL,
  `leaffieldname` longtext NOT NULL,
  `enableChanged` tinyint(1) NOT NULL,
  `enableSort` tinyint(1) NOT NULL,
  `showOnlyMatches` tinyint(1) NOT NULL,
  `showOnlyMatchesChildren` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_jstree_jstree`
--

LOCK TABLES `django_jstree_jstree` WRITE;
/*!40000 ALTER TABLE `django_jstree_jstree` DISABLE KEYS */;
INSERT INTO `django_jstree_jstree` VALUES (1,'ConfigItemTree','','depo','ConfigItemTree',1,1,1,0,0,0,1,1,0,'','configItems',0,0,1,1);
/*!40000 ALTER TABLE `django_jstree_jstree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_jstree_nodetype`
--

DROP TABLE IF EXISTS `django_jstree_nodetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_jstree_nodetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `description` longtext NOT NULL,
  `maxChildren` int(11) NOT NULL,
  `maxDepth` int(11) NOT NULL,
  `aAttributes` longtext NOT NULL,
  `iconClass` varchar(30) NOT NULL,
  `liAttributes` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_jstree_nodetype`
--

LOCK TABLES `django_jstree_nodetype` WRITE;
/*!40000 ALTER TABLE `django_jstree_nodetype` DISABLE KEYS */;
INSERT INTO `django_jstree_nodetype` VALUES (1,'ConfigItem','',-1,-1,'','','');
/*!40000 ALTER TABLE `django_jstree_nodetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_jstree_nodetype_childnodetypes`
--

DROP TABLE IF EXISTS `django_jstree_nodetype_childnodetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_jstree_nodetype_childnodetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_nodetype_id` int(11) NOT NULL,
  `to_nodetype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_jstree_nodetype_c_from_nodetype_id_to_node_20324707_uniq` (`from_nodetype_id`,`to_nodetype_id`),
  KEY `django_jstree_nodety_to_nodetype_id_1a40a309_fk_django_js` (`to_nodetype_id`),
  CONSTRAINT `django_jstree_nodety_from_nodetype_id_671433ca_fk_django_js` FOREIGN KEY (`from_nodetype_id`) REFERENCES `django_jstree_nodetype` (`id`),
  CONSTRAINT `django_jstree_nodety_to_nodetype_id_1a40a309_fk_django_js` FOREIGN KEY (`to_nodetype_id`) REFERENCES `django_jstree_nodetype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_jstree_nodetype_childnodetypes`
--

LOCK TABLES `django_jstree_nodetype_childnodetypes` WRITE;
/*!40000 ALTER TABLE `django_jstree_nodetype_childnodetypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_jstree_nodetype_childnodetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_jstree_nodetype_jstrees`
--

DROP TABLE IF EXISTS `django_jstree_nodetype_jstrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_jstree_nodetype_jstrees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nodetype_id` int(11) NOT NULL,
  `jstree_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_jstree_nodetype_j_nodetype_id_jstree_id_c72a5038_uniq` (`nodetype_id`,`jstree_id`),
  KEY `django_jstree_nodety_jstree_id_ed679a08_fk_django_js` (`jstree_id`),
  CONSTRAINT `django_jstree_nodety_jstree_id_ed679a08_fk_django_js` FOREIGN KEY (`jstree_id`) REFERENCES `django_jstree_jstree` (`id`),
  CONSTRAINT `django_jstree_nodety_nodetype_id_c5b02edd_fk_django_js` FOREIGN KEY (`nodetype_id`) REFERENCES `django_jstree_nodetype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_jstree_nodetype_jstrees`
--

LOCK TABLES `django_jstree_nodetype_jstrees` WRITE;
/*!40000 ALTER TABLE `django_jstree_nodetype_jstrees` DISABLE KEYS */;
INSERT INTO `django_jstree_nodetype_jstrees` VALUES (1,1,1);
/*!40000 ALTER TABLE `django_jstree_nodetype_jstrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_jstree_nodetypepopupmenuitem`
--

DROP TABLE IF EXISTS `django_jstree_nodetypepopupmenuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_jstree_nodetypepopupmenuitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayOrder` int(11) NOT NULL,
  `nodeType_id` int(11) NOT NULL,
  `popupMenuItem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_jstree_nodety_nodeType_id_28ad7d75_fk_django_js` (`nodeType_id`),
  KEY `django_jstree_nodety_popupMenuItem_id_50752686_fk_django_js` (`popupMenuItem_id`),
  CONSTRAINT `django_jstree_nodety_nodeType_id_28ad7d75_fk_django_js` FOREIGN KEY (`nodeType_id`) REFERENCES `django_jstree_nodetype` (`id`),
  CONSTRAINT `django_jstree_nodety_popupMenuItem_id_50752686_fk_django_js` FOREIGN KEY (`popupMenuItem_id`) REFERENCES `django_jstree_popupmenuitem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_jstree_nodetypepopupmenuitem`
--

LOCK TABLES `django_jstree_nodetypepopupmenuitem` WRITE;
/*!40000 ALTER TABLE `django_jstree_nodetypepopupmenuitem` DISABLE KEYS */;
INSERT INTO `django_jstree_nodetypepopupmenuitem` VALUES (1,1,1,1),(2,2,1,2),(3,3,1,3),(4,4,1,4);
/*!40000 ALTER TABLE `django_jstree_nodetypepopupmenuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_jstree_popupmenuitem`
--

DROP TABLE IF EXISTS `django_jstree_popupmenuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_jstree_popupmenuitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `description` longtext NOT NULL,
  `menuText` varchar(255) NOT NULL,
  `menuTextClass` varchar(255) NOT NULL,
  `menuClickJSFunction` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_jstree_popupmenuitem`
--

LOCK TABLES `django_jstree_popupmenuitem` WRITE;
/*!40000 ALTER TABLE `django_jstree_popupmenuitem` DISABLE KEYS */;
INSERT INTO `django_jstree_popupmenuitem` VALUES (1,'Add','','Add','add-configitem','add_configitem'),(2,'Edit','','Edit','edit-configitem','edit_configitem'),(3,'Clone','','Clone','clone-configitem','clone_configitem'),(4,'Delete','','Delete','delete-configitem','delete_configitem');
/*!40000 ALTER TABLE `django_jstree_popupmenuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-11-25 20:32:58.552174'),(2,'auth','0001_initial','2019-11-25 20:33:04.310770'),(3,'admin','0001_initial','2019-11-25 20:33:27.445318'),(4,'admin','0002_logentry_remove_auto_add','2019-11-25 20:33:38.329874'),(5,'admin','0003_logentry_add_action_flag_choices','2019-11-25 20:33:38.549467'),(6,'contenttypes','0002_remove_content_type_name','2019-11-25 20:33:42.102558'),(7,'auth','0002_alter_permission_name_max_length','2019-11-25 20:33:45.125650'),(8,'auth','0003_alter_user_email_max_length','2019-11-25 20:33:45.637886'),(9,'auth','0004_alter_user_username_opts','2019-11-25 20:33:45.710083'),(10,'auth','0005_alter_user_last_login_null','2019-11-25 20:33:48.142260'),(11,'auth','0006_require_contenttypes_0002','2019-11-25 20:33:48.413912'),(12,'auth','0007_alter_validators_add_error_messages','2019-11-25 20:33:48.611447'),(13,'auth','0008_alter_user_username_max_length','2019-11-25 20:33:54.870891'),(14,'auth','0009_alter_user_last_name_max_length','2019-11-25 20:33:59.613234'),(15,'auth','0010_alter_group_name_max_length','2019-11-25 20:34:00.677963'),(16,'auth','0011_update_proxy_permissions','2019-11-25 20:34:00.764198'),(18,'sessions','0001_initial','2019-11-25 20:34:16.517847'),(20,'depo','0002_auto_20191125_1623','2019-11-25 21:24:05.320380'),(21,'depo','0003_configitemattribute_valuetype','2019-11-25 21:24:39.633606'),(22,'depo','0004_auto_20191127_0853','2019-11-27 13:54:00.803198'),(23,'depo','0005_auto_20191127_0858','2019-11-27 13:58:35.554546'),(24,'depo','0006_configitemtree','2019-11-27 14:22:57.321439'),(25,'depo','0007_auto_20191127_0928','2019-11-27 14:28:46.376950'),(26,'depo','0008_auto_20191202_0815','2019-12-02 13:15:08.503919'),(27,'depo','0009_auto_20191202_0835','2019-12-02 13:35:50.955579'),(28,'depo','0010_credential','2019-12-02 13:35:57.598304'),(29,'depo','0011_auto_20191202_0838','2019-12-02 13:38:20.568309'),(30,'depo','0012_auto_20191202_1212','2019-12-02 17:12:28.275170'),(31,'depo','0013_auto_20191203_1633','2019-12-03 21:34:01.116389'),(32,'depo','0014_auto_20191204_1128','2019-12-04 16:34:43.129694'),(34,'depo','0001_initial','2019-12-05 19:49:14.594046'),(35,'depo_credentials','0001_initial','2019-12-11 16:36:51.283505'),(36,'django_jstree','0001_initial','2019-12-27 20:16:16.035250'),(37,'django_jstree','0002_auto_20191227_1610','2019-12-27 21:11:45.948852'),(38,'django_jstree','0003_auto_20191228_2140','2019-12-30 20:55:39.973737'),(39,'django_jstree','0004_auto_20191228_2312','2019-12-30 20:55:40.363645'),(40,'django_jstree','0005_auto_20191229_1006','2019-12-30 20:55:54.616868'),(41,'django_jstree','0006_auto_20191230_1550','2019-12-30 20:56:16.640916'),(42,'django_jstree','0007_auto_20191230_1620','2019-12-30 21:21:19.072418'),(43,'django_jstree','0008_auto_20191231_0122','2019-12-31 13:18:07.833271'),(44,'depo','0002_auto_20191231_0932','2019-12-31 14:40:23.092484'),(45,'django_jstree','0009_auto_20191231_0932','2019-12-31 14:40:23.134083'),(46,'depo','0003_configitem_role','2019-12-31 14:42:36.017771'),(47,'depo','0004_auto_20191231_1009','2019-12-31 15:09:28.643721'),(48,'depo','0005_auto_20191231_1109','2019-12-31 16:15:33.708048'),(49,'depo','0005_auto_20191231_1116','2019-12-31 16:18:06.428687'),(50,'depo','0007_configitem_roles','2019-12-31 16:20:47.055413'),(51,'depo','0006_remove_configitem_roles','2019-12-31 16:20:47.145628'),(52,'depo','0008_merge_20191231_1120','2019-12-31 16:20:47.196765');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ey7e8kznm8f3pzhj6vrk2kr349gmg7b0','NmM4MzM3ZWVjZTY3MGFhZWYzY2RhY2ZjYThlZDY2ZGIwYjY4MDY2Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzBjNDdhYWM4YTRkNWQ2MzUyMzkwMWY4YTBjMmE5NDRhMGEwOTRkIn0=','2019-12-18 16:33:28.859659'),('g7yw8wh95mw98z53m64vsdpxmopx35vf','NmM4MzM3ZWVjZTY3MGFhZWYzY2RhY2ZjYThlZDY2ZGIwYjY4MDY2Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzBjNDdhYWM4YTRkNWQ2MzUyMzkwMWY4YTBjMmE5NDRhMGEwOTRkIn0=','2020-01-06 16:03:24.865848'),('se3eqa9bds1tgtyml55echa3bd51cry4','ZTNiMGU2MjJlYzVkNjcwNDQ2NWM0Yjg5YWVkMzgzYTY5MDgwMjA3YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4M2Y4NjFmMDZmY2VhZDRhYWYyMjAyYjU2OTNlNjdkYjlhY2I0YTBkIn0=','2019-12-10 19:33:47.586289');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'depo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-31 12:59:36
