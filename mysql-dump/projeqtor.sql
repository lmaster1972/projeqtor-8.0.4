use projeqtr;
-- MySQL dump 10.16  Distrib 10.2.24-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: projeqtor
-- ------------------------------------------------------
-- Server version	10.2.24-MariaDB

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
-- Table structure for table `absence`
--

DROP TABLE IF EXISTS `absence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `absence` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absence`
--

LOCK TABLES `absence` WRITE;
/*!40000 ALTER TABLE `absence` DISABLE KEYS */;
/*!40000 ALTER TABLE `absence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accessprofile`
--

DROP TABLE IF EXISTS `accessprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessprofile` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idAccessScopeRead` int(12) DEFAULT NULL,
  `idAccessScopeCreate` int(12) DEFAULT NULL,
  `idAccessScopeUpdate` int(12) DEFAULT NULL,
  `idAccessScopeDelete` int(12) DEFAULT NULL,
  `sortOrder` int(3) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessprofile`
--

LOCK TABLES `accessprofile` WRITE;
/*!40000 ALTER TABLE `accessprofile` DISABLE KEYS */;
INSERT INTO `accessprofile` VALUES (1,'accessProfileRestrictedReader','Read only his projects',3,1,1,1,100,0),(2,'accessProfileGlobalReader','Read all projects',4,1,1,1,150,0),(3,'accessProfileRestrictedUpdater','Read and Update only his projects',3,1,3,1,200,0),(4,'accessProfileGlobalUpdater','Read and Update all projects',4,1,4,1,250,0),(5,'accessProfileRestrictedCreator','Read only his projects\nCan create\nUpdate and delete his own elements',3,3,2,2,300,0),(6,'accessProfileGlobalCreator','Read all projects\nCan create\nUpdate and delete his own elements',4,4,2,2,350,0),(7,'accessProfileRestrictedManager','Read only his projects\nCan create\nUpdate and delete his projects',3,3,3,3,400,0),(8,'accessProfileGlobalManager','Read all projects\nCan create\nUpdate and delete his projects',4,4,4,4,450,0),(9,'accessProfileNoAccess','no access allowed',1,1,1,1,999,0),(10,'accessReadOwnOnly',NULL,2,1,1,1,900,0);
/*!40000 ALTER TABLE `accessprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accessright`
--

DROP TABLE IF EXISTS `accessright`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessright` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProfile` int(12) unsigned DEFAULT NULL,
  `idMenu` int(12) unsigned DEFAULT NULL,
  `idAccessProfile` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accessrightProfile` (`idProfile`),
  KEY `accessrightMenu` (`idMenu`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessright`
--

LOCK TABLES `accessright` WRITE;
/*!40000 ALTER TABLE `accessright` DISABLE KEYS */;
INSERT INTO `accessright` VALUES (1,1,3,8),(2,2,3,2),(3,3,3,7),(4,4,3,1),(5,6,3,1),(6,7,3,1),(7,5,3,1),(8,1,4,8),(9,2,4,4),(10,3,4,7),(11,4,4,3),(12,6,4,3),(13,7,4,1),(14,5,4,1),(15,1,5,8),(16,2,5,2),(17,3,5,7),(18,4,5,1),(19,6,5,1),(20,7,5,1),(21,5,5,1),(22,1,50,8),(23,2,50,2),(24,3,50,7),(25,4,50,1),(26,6,50,9),(27,7,50,9),(28,5,50,9),(29,1,22,8),(30,2,22,2),(31,3,22,7),(32,4,22,7),(33,6,22,7),(34,7,22,5),(35,5,22,1),(36,1,51,8),(37,2,51,9),(38,3,51,7),(39,4,51,9),(40,6,51,9),(41,7,51,9),(42,5,51,9),(43,1,25,8),(44,2,25,2),(45,3,25,7),(46,4,25,3),(47,6,25,1),(48,7,25,1),(49,5,25,1),(50,1,26,8),(51,2,26,2),(52,3,26,7),(53,4,26,3),(54,6,26,1),(55,7,26,1),(56,5,26,1),(57,1,16,8),(58,2,16,2),(59,3,16,7),(60,4,16,9),(61,6,16,9),(62,7,16,9),(63,5,16,9),(64,1,62,8),(65,2,62,2),(66,3,62,7),(67,4,62,1),(68,6,62,1),(69,7,62,1),(70,5,62,1),(71,1,63,8),(72,2,63,2),(73,3,63,7),(74,4,63,1),(75,6,63,1),(76,7,63,1),(77,5,63,1),(78,1,64,8),(79,2,64,2),(80,3,64,7),(81,4,64,1),(82,6,64,1),(83,7,64,1),(84,5,64,1),(85,1,69,2),(86,2,69,9),(87,3,69,1),(88,4,69,1),(89,6,69,9),(90,7,69,9),(91,5,69,9),(92,1,75,8),(93,2,75,2),(94,3,75,7),(95,4,75,5),(96,6,75,9),(97,7,75,9),(98,5,75,9),(99,1,76,8),(100,2,76,2),(101,3,76,7),(102,4,76,9),(103,6,76,9),(104,7,76,9),(105,5,76,9),(106,1,77,8),(107,2,77,2),(108,3,77,7),(109,4,77,9),(110,6,77,9),(111,7,77,9),(112,5,77,9),(113,1,78,8),(114,2,78,2),(115,3,78,7),(116,4,78,9),(117,6,78,9),(118,7,78,9),(119,5,78,9),(120,1,91,2),(121,2,91,1),(122,3,91,1),(123,4,91,10),(124,6,91,10),(125,7,91,10),(126,5,91,10),(127,1,94,8),(128,1,95,1000001),(129,1,96,8),(130,1,97,8),(131,1,98,8),(132,1,99,8),(133,1,100,1000001),(134,1,102,8),(135,2,102,2),(136,3,102,7),(137,4,102,7),(138,6,102,1),(139,7,102,1),(140,5,102,9),(141,1,111,8),(142,2,111,2),(143,3,111,7),(144,4,111,7),(145,6,111,1),(146,7,111,1),(147,5,111,9),(148,1,112,8),(149,2,112,2),(150,3,112,7),(151,4,112,7),(152,6,112,1),(153,7,112,1),(154,5,112,9),(155,1,113,8),(156,2,113,2),(157,3,113,7),(158,4,113,7),(159,6,113,1),(160,7,113,1),(161,5,113,9),(162,1,118,8),(163,2,118,2),(164,3,118,7),(165,4,118,7),(166,6,118,7),(167,7,118,5),(168,5,118,1),(169,1,119,8),(170,2,119,2),(171,3,119,7),(172,4,119,1),(173,6,119,1),(174,7,119,1),(175,5,119,1),(176,1,124,8),(177,2,124,2),(178,3,124,7),(179,4,124,1),(180,6,124,1),(181,7,124,1),(182,5,124,1),(183,1,125,8),(184,1,126,1000001),(185,1,131,8),(186,1,132,1000001),(187,1,153,8),(188,1,154,8),(189,1,158,1000001),(190,2,158,1000002),(191,3,158,1000002),(192,4,158,1000002),(193,5,158,1000002),(194,6,158,1000002),(195,7,158,1000002),(197,1,167,8),(198,2,167,2),(199,3,167,7),(200,4,167,9),(201,6,167,9),(202,7,167,9),(203,5,167,9),(204,1,168,8),(205,2,168,2),(206,3,168,7),(207,4,168,9),(208,6,168,9),(209,7,168,9),(210,5,168,9),(211,1,176,8),(212,2,176,2),(213,3,176,7),(214,1,185,8),(215,2,185,3),(216,3,185,3),(217,4,185,3),(218,5,185,3),(219,6,185,3),(220,7,185,3),(221,1,186,1000001),(222,2,186,1000002),(223,3,186,1000002),(224,4,186,1000002),(225,5,186,1000002),(226,6,186,1000002),(227,7,186,1000002),(228,1,188,1000001),(229,1,190,8),(230,1,191,8),(231,1,193,8),(232,1,194,8),(233,1,195,8),(234,1,201,8),(235,1,202,8),(236,1,192,8),(237,2,192,2),(238,3,192,7),(239,4,192,7),(240,1,196,8),(241,2,196,2),(242,3,196,7),(243,4,196,7),(244,1,203,8),(245,1,204,8),(246,2,204,2);
/*!40000 ALTER TABLE `accessright` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accessscope`
--

DROP TABLE IF EXISTS `accessscope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessscope` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `accessCode` varchar(3) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `isSpecific` int(1) unsigned DEFAULT 1,
  `nameSpecific` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessscope`
--

LOCK TABLES `accessscope` WRITE;
/*!40000 ALTER TABLE `accessscope` DISABLE KEYS */;
INSERT INTO `accessscope` VALUES (1,'accessScopeNo','NO',100,0,1,'accessScopeSpecificNo'),(2,'accessScopeOwn','OWN',200,0,1,'accessScopeSpecificOwn'),(3,'accessScopeProject','PRO',300,0,1,'accessScopeSpecificProject'),(4,'accessScopeAll','ALL',400,0,1,'accessScopeSpecificAll'),(5,'accessScopeResp','RES',250,0,0,NULL);
/*!40000 ALTER TABLE `accessscope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accessscopespecific`
--

DROP TABLE IF EXISTS `accessscopespecific`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessscopespecific` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `accessCode` varchar(5) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessscopespecific`
--

LOCK TABLES `accessscopespecific` WRITE;
/*!40000 ALTER TABLE `accessscopespecific` DISABLE KEYS */;
INSERT INTO `accessscopespecific` VALUES (1,'accessScopeSpecificNo','NO',100,0),(2,'accessScopeSpecificOwn','OWN',200,0),(3,'accessScopeSpecificProject','PRO',300,0),(4,'accessScopeSpecificAll','ALL',400,0),(6,'accessScopeSpecificTeam','TEAM',350,0);
/*!40000 ALTER TABLE `accessscopespecific` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `initialDueDate` date DEFAULT NULL,
  `actualDueDate` date DEFAULT NULL,
  `idleDate` date DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `done` int(1) unsigned DEFAULT 0,
  `doneDate` date DEFAULT NULL,
  `idActionType` int(12) unsigned DEFAULT NULL,
  `idPriority` int(12) unsigned DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `idEfficiency` int(12) unsigned DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `isPrivate` int(1) unsigned DEFAULT 0,
  `idContact` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `actionProject` (`idProject`),
  KEY `actionUser` (`idUser`),
  KEY `actionResource` (`idResource`),
  KEY `actionStatus` (`idStatus`),
  KEY `actionType` (`idActionType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idActivityType` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idActivity` int(12) unsigned DEFAULT NULL,
  `done` int(1) unsigned DEFAULT 0,
  `idleDate` date DEFAULT NULL,
  `doneDate` date DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `idVersion` int(12) unsigned DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `idContact` int(12) unsigned DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `idComponent` int(12) unsigned DEFAULT NULL,
  `idProduct` int(12) unsigned DEFAULT NULL,
  `isPlanningActivity` int(1) unsigned DEFAULT 0,
  `lastUpdateDateTime` datetime DEFAULT NULL,
  `idComponentVersion` int(12) unsigned DEFAULT NULL,
  `idMilestone` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activityProject` (`idProject`),
  KEY `activityUser` (`idUser`),
  KEY `activityResource` (`idResource`),
  KEY `activityStatus` (`idStatus`),
  KEY `activityType` (`idActivityType`),
  KEY `activityActivity` (`idActivity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activityprice`
--

DROP TABLE IF EXISTS `activityprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activityprice` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idActivityType` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `priceCost` decimal(10,2) DEFAULT 0.00,
  `subcontractor` int(1) DEFAULT NULL,
  `sortOrder` int(3) DEFAULT NULL,
  `idle` int(1) DEFAULT 0,
  `subcontractorCost` decimal(10,2) DEFAULT NULL,
  `idTeam` int(12) unsigned DEFAULT NULL,
  `commissionCost` decimal(10,2) DEFAULT NULL,
  `isRef` int(1) NOT NULL DEFAULT 0,
  `pct` int(3) DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activitypriceProject` (`idProject`),
  KEY `activitypriceActivityType` (`idActivityType`),
  KEY `activitypriceTeam` (`idTeam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activityprice`
--

LOCK TABLES `activityprice` WRITE;
/*!40000 ALTER TABLE `activityprice` DISABLE KEYS */;
/*!40000 ALTER TABLE `activityprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affectation`
--

DROP TABLE IF EXISTS `affectation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affectation` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idResource` int(12) unsigned DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `rate` int(3) unsigned DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idRole` int(12) unsigned DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `idContact` int(12) unsigned DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idResourceSelect` int(12) unsigned DEFAULT NULL,
  `idProfile` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `affectationProject` (`idProject`),
  KEY `affectationResource` (`idResource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affectation`
--

LOCK TABLES `affectation` WRITE;
/*!40000 ALTER TABLE `affectation` DISABLE KEYS */;
/*!40000 ALTER TABLE `affectation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alert`
--

DROP TABLE IF EXISTS `alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alert` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned DEFAULT NULL,
  `idIndicatorValue` int(12) unsigned DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `alertType` varchar(10) DEFAULT NULL,
  `alertInitialDateTime` datetime DEFAULT NULL,
  `alertDateTime` datetime DEFAULT NULL,
  `alertReadDateTime` datetime DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `message` varchar(4000) DEFAULT NULL,
  `readFlag` int(1) unsigned DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alert`
--

LOCK TABLES `alert` WRITE;
/*!40000 ALTER TABLE `alert` DISABLE KEYS */;
INSERT INTO `alert` VALUES (1,NULL,NULL,NULL,NULL,1,'INFO','2019-06-13 16:16:19','2019-06-13 16:16:19','2019-06-13 16:16:32','V8.0.4','New version V8.0.4 is available at ProjeQtOr website<br/><a href=\"http://www.projeqtor.org\" target=\"#\">http://www.projeqtor.org</a>',1,0);
/*!40000 ALTER TABLE `alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approver`
--

DROP TABLE IF EXISTS `approver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approver` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned DEFAULT NULL,
  `idAffectable` int(12) unsigned DEFAULT NULL,
  `approved` int(1) unsigned DEFAULT 0,
  `approvedDate` datetime DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `approverRef` (`refType`,`refId`),
  KEY `approverAffectable` (`idAffectable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approver`
--

LOCK TABLES `approver` WRITE;
/*!40000 ALTER TABLE `approver` DISABLE KEYS */;
/*!40000 ALTER TABLE `approver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idResource` int(12) unsigned NOT NULL,
  `idProject` int(12) unsigned NOT NULL,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned NOT NULL,
  `rate` int(3) unsigned DEFAULT 100,
  `assignedWork` decimal(12,5) unsigned DEFAULT NULL,
  `realWork` decimal(12,5) unsigned DEFAULT NULL,
  `leftWork` decimal(12,5) unsigned DEFAULT NULL,
  `plannedWork` decimal(12,5) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `realStartDate` date DEFAULT NULL,
  `realEndDate` date DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `plannedStartDate` date DEFAULT NULL,
  `plannedEndDate` date DEFAULT NULL,
  `idRole` int(12) unsigned DEFAULT NULL,
  `dailyCost` decimal(11,2) unsigned DEFAULT NULL,
  `newDailyCost` decimal(11,2) unsigned DEFAULT NULL,
  `assignedCost` decimal(11,2) DEFAULT NULL,
  `realCost` decimal(11,2) DEFAULT NULL,
  `leftCost` decimal(11,2) DEFAULT NULL,
  `plannedCost` decimal(11,2) DEFAULT NULL,
  `billedWork` decimal(10,2) NOT NULL DEFAULT 0.00,
  `notPlannedWork` decimal(12,5) unsigned DEFAULT 0.00000,
  `plannedStartFraction` decimal(6,5) DEFAULT 0.00000,
  `plannedEndFraction` decimal(6,5) DEFAULT 1.00000,
  `isNotImputable` int(1) unsigned DEFAULT 0,
  `optional` int(1) unsigned DEFAULT 0,
  `isResourceTeam` int(1) unsigned DEFAULT 0,
  `capacity` decimal(5,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assignmentProject` (`idProject`),
  KEY `assignmentResource` (`idResource`),
  KEY `assignmentRef` (`refType`,`refId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignmentrecurring`
--

DROP TABLE IF EXISTS `assignmentrecurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignmentrecurring` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idAssignment` int(12) unsigned DEFAULT NULL,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `day` int(3) DEFAULT NULL,
  `value` decimal(12,5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idAssignmentAssignmentRecurring` (`idAssignment`),
  KEY `referenceAssignmentRecurring` (`refType`,`refId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignmentrecurring`
--

LOCK TABLES `assignmentrecurring` WRITE;
/*!40000 ALTER TABLE `assignmentrecurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignmentrecurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachment`
--

DROP TABLE IF EXISTS `attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachment` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `refType` varchar(100) NOT NULL,
  `refId` int(12) unsigned NOT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `fileName` varchar(1024) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `subDirectory` varchar(100) DEFAULT NULL,
  `mimeType` varchar(100) DEFAULT NULL,
  `fileSize` bigint(12) unsigned DEFAULT NULL,
  `link` varchar(1024) DEFAULT NULL,
  `type` varchar(10) DEFAULT 'file',
  `idPrivacy` int(12) unsigned DEFAULT 1,
  `idTeam` int(12) unsigned DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `attachementUser` (`idUser`),
  KEY `attachementRef` (`refType`,`refId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment`
--

LOCK TABLES `attachment` WRITE;
/*!40000 ALTER TABLE `attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(100) DEFAULT NULL,
  `auditDay` varchar(8) DEFAULT NULL,
  `connectionDateTime` datetime DEFAULT NULL,
  `disconnectionDateTime` datetime DEFAULT NULL,
  `lastAccessDateTime` datetime DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `userName` varchar(100) DEFAULT NULL,
  `userAgent` varchar(400) DEFAULT NULL,
  `platform` varchar(100) DEFAULT NULL,
  `browser` varchar(100) DEFAULT NULL,
  `browserVersion` varchar(100) DEFAULT NULL,
  `requestRefreshParam` int(1) DEFAULT 0,
  `requestDisconnection` int(1) DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  `requestRefreshProject` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `auditUser` (`idUser`),
  KEY `auditSessionId` (`sessionId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
INSERT INTO `audit` VALUES (1,'7tjvb5q95hbkdgq3s5gm4ossdj_20190613161656','20190613','2019-06-13 16:15:04','2019-06-13 16:16:56','2019-06-13 16:16:56','00:01:52',1,'admin','Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0','Linux','Mozilla Firefox','60.0',0,0,1,0),(2,'653jit8sldffm6ug02auo4nbki_20190614094047','20190614','2019-06-14 09:40:19','2019-06-14 09:40:47','2019-06-14 09:40:47','00:00:28',1,'admin','Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0','Linux','Mozilla Firefox','60.0',0,0,1,0);
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditsummary`
--

DROP TABLE IF EXISTS `auditsummary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditsummary` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `auditDay` varchar(8) DEFAULT NULL,
  `firstConnection` datetime DEFAULT NULL,
  `lastConnection` datetime DEFAULT NULL,
  `numberSessions` int(10) DEFAULT NULL,
  `minDuration` time DEFAULT NULL,
  `maxDuration` time DEFAULT NULL,
  `meanDuration` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `auditsummaryAuditDay` (`auditDay`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditsummary`
--

LOCK TABLES `auditsummary` WRITE;
/*!40000 ALTER TABLE `auditsummary` DISABLE KEYS */;
INSERT INTO `auditsummary` VALUES (1,'20190613','2019-06-13 16:15:04','2019-06-13 16:16:56',1,'00:01:52','00:01:52','00:01:52'),(2,'20190614','2019-06-14 09:40:19','2019-06-14 09:40:47',1,'00:00:28','00:00:28','00:00:28');
/*!40000 ALTER TABLE `auditsummary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baseline`
--

DROP TABLE IF EXISTS `baseline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseline` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `baselineNumber` int(3) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `baselineDate` date DEFAULT NULL,
  `creationDateTime` datetime DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idTeam` int(12) unsigned DEFAULT NULL,
  `idPrivacy` int(12) unsigned DEFAULT 1,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `baselineProject` (`idProject`),
  KEY `baselineUser` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baseline`
--

LOCK TABLES `baseline` WRITE;
/*!40000 ALTER TABLE `baseline` DISABLE KEYS */;
/*!40000 ALTER TABLE `baseline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idBillType` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idClient` int(12) unsigned DEFAULT NULL,
  `idContact` int(12) unsigned DEFAULT NULL,
  `idRecipient` int(12) unsigned DEFAULT NULL,
  `billingType` varchar(10) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `done` int(1) unsigned DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  `billId` int(12) unsigned DEFAULT NULL,
  `tax` decimal(5,2) DEFAULT NULL,
  `untaxedAmount` decimal(12,2) DEFAULT NULL,
  `fullAmount` decimal(12,2) DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `idActivityType` int(12) unsigned DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `paymentDone` int(1) unsigned DEFAULT 0,
  `paymentDate` date DEFAULT NULL,
  `paymentAmount` decimal(11,2) unsigned DEFAULT NULL,
  `idPaymentDelay` int(12) unsigned DEFAULT NULL,
  `paymentDueDate` date DEFAULT NULL,
  `idDeliveryMode` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `paymentsCount` int(3) DEFAULT 0,
  `commandAmountPct` int(3) unsigned DEFAULT 100,
  `sendDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `billBillType` (`idBillType`),
  KEY `billProject` (`idProject`),
  KEY `billClient` (`idClient`),
  KEY `billRecipient` (`idRecipient`),
  KEY `billStatus` (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billline`
--

DROP TABLE IF EXISTS `billline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billline` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `line` int(3) unsigned DEFAULT NULL,
  `quantity` decimal(9,2) unsigned DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `detail` varchar(4000) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `refType` varchar(100) NOT NULL,
  `refId` int(12) unsigned NOT NULL,
  `idTerm` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `idActivityPrice` int(12) unsigned DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `idMeasureUnit` int(12) unsigned DEFAULT NULL,
  `extra` int(1) unsigned DEFAULT 0,
  `billingType` varchar(10) DEFAULT NULL,
  `idCatalog` int(12) unsigned DEFAULT NULL,
  `numberDays` decimal(9,2) unsigned DEFAULT NULL,
  `idBillLine` int(12) DEFAULT NULL,
  `rate` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `billlineReference` (`refType`,`refId`),
  KEY `billlineTerm` (`idTerm`),
  KEY `billlineResource` (`idResource`),
  KEY `billlineActivityPrice` (`idActivityPrice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billline`
--

LOCK TABLES `billline` WRITE;
/*!40000 ALTER TABLE `billline` DISABLE KEYS */;
/*!40000 ALTER TABLE `billline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget`
--

DROP TABLE IF EXISTS `budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `idBudgetType` int(12) unsigned DEFAULT NULL,
  `idBudgetOrientation` int(12) unsigned DEFAULT NULL,
  `idBudgetCategory` int(12) unsigned DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `lastUpdateDateTime` datetime DEFAULT NULL,
  `articleNumber` varchar(100) DEFAULT NULL,
  `idOrganization` int(12) unsigned DEFAULT NULL,
  `idClient` int(12) unsigned DEFAULT NULL,
  `clientCode` varchar(100) DEFAULT NULL,
  `idBudget` int(12) unsigned DEFAULT NULL,
  `idSponsor` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `isUnderConstruction` int(1) unsigned DEFAULT 1,
  `handled` int(1) unsigned DEFAULT 1,
  `handledDate` date DEFAULT NULL,
  `done` int(1) unsigned DEFAULT 0,
  `doneDate` date DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idleDate` date DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `bbs` varchar(1000) DEFAULT NULL,
  `bbsSortable` varchar(4000) DEFAULT NULL,
  `budgetStartDate` date DEFAULT NULL,
  `budgetEndDate` date DEFAULT NULL,
  `plannedAmount` decimal(14,2) unsigned DEFAULT NULL,
  `initialAmount` decimal(14,2) unsigned DEFAULT NULL,
  `update1Amount` decimal(14,2) DEFAULT NULL,
  `update2Amount` decimal(14,2) DEFAULT NULL,
  `update3Amount` decimal(14,2) DEFAULT NULL,
  `update4Amount` decimal(14,2) DEFAULT NULL,
  `actualAmount` decimal(14,2) DEFAULT NULL,
  `actualSubAmount` decimal(14,2) DEFAULT NULL,
  `usedAmount` decimal(14,2) unsigned DEFAULT NULL,
  `availableAmount` decimal(14,2) DEFAULT NULL,
  `billedAmount` decimal(14,2) unsigned DEFAULT NULL,
  `leftAmount` decimal(14,2) DEFAULT NULL,
  `plannedFullAmount` decimal(14,2) unsigned DEFAULT NULL,
  `initialFullAmount` decimal(14,2) unsigned DEFAULT NULL,
  `update1FullAmount` decimal(14,2) DEFAULT NULL,
  `update2FullAmount` decimal(14,2) DEFAULT NULL,
  `update3FullAmount` decimal(14,2) DEFAULT NULL,
  `update4FullAmount` decimal(14,2) DEFAULT NULL,
  `actualFullAmount` decimal(14,2) DEFAULT NULL,
  `actualSubFullAmount` decimal(14,2) DEFAULT NULL,
  `usedFullAmount` decimal(14,2) unsigned DEFAULT NULL,
  `availableFullAmount` decimal(14,2) DEFAULT NULL,
  `billedFullAmount` decimal(14,2) unsigned DEFAULT NULL,
  `leftFullAmount` decimal(14,2) DEFAULT NULL,
  `elementary` int(1) unsigned DEFAULT 1,
  `targetAmount` decimal(14,2) unsigned DEFAULT NULL,
  `targetFullAmount` decimal(14,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `budgetBudgetType` (`idBudgetType`),
  KEY `budgetBudget` (`idBudget`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget`
--

LOCK TABLES `budget` WRITE;
/*!40000 ALTER TABLE `budget` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budgetcategory`
--

DROP TABLE IF EXISTS `budgetcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budgetcategory` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budgetcategory`
--

LOCK TABLES `budgetcategory` WRITE;
/*!40000 ALTER TABLE `budgetcategory` DISABLE KEYS */;
INSERT INTO `budgetcategory` VALUES (1,'Information Technology',10,0),(2,'Human Resources',20,0),(3,'Financials',30,0),(4,'Management',40,0);
/*!40000 ALTER TABLE `budgetcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budgetelement`
--

DROP TABLE IF EXISTS `budgetelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budgetelement` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `year` int(4) unsigned DEFAULT NULL,
  `refType` varchar(100) NOT NULL,
  `refId` int(12) unsigned NOT NULL,
  `refName` varchar(100) DEFAULT NULL,
  `budgetWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `validatedWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `assignedWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `realWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `leftWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `plannedWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `topId` int(12) unsigned DEFAULT NULL,
  `topRefType` varchar(100) DEFAULT NULL,
  `topRefId` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT NULL,
  `elementary` int(1) unsigned DEFAULT NULL,
  `budgetCost` decimal(11,2) DEFAULT NULL,
  `validatedCost` decimal(11,2) DEFAULT NULL,
  `assignedCost` decimal(11,2) DEFAULT NULL,
  `realCost` decimal(11,2) DEFAULT NULL,
  `leftCost` decimal(11,2) DEFAULT NULL,
  `plannedCost` decimal(11,2) DEFAULT NULL,
  `progress` int(3) unsigned DEFAULT 0,
  `expenseBudgetAmount` decimal(11,2) unsigned DEFAULT NULL,
  `expenseAssignedAmount` decimal(11,2) unsigned DEFAULT NULL,
  `expensePlannedAmount` decimal(11,2) unsigned DEFAULT NULL,
  `expenseRealAmount` decimal(11,2) unsigned DEFAULT NULL,
  `expenseLeftAmount` decimal(11,2) unsigned DEFAULT NULL,
  `expenseValidatedAmount` decimal(11,2) unsigned DEFAULT NULL,
  `totalBudgetCost` decimal(11,2) unsigned DEFAULT NULL,
  `totalAssignedCost` decimal(12,2) DEFAULT NULL,
  `totalPlannedCost` decimal(12,2) DEFAULT NULL,
  `totalRealCost` decimal(12,2) DEFAULT NULL,
  `totalLeftCost` decimal(12,2) DEFAULT NULL,
  `totalValidatedCost` decimal(12,2) DEFAULT NULL,
  `reserveAmount` decimal(12,2) DEFAULT NULL,
  `idleDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `budgetelementRef` (`refType`,`refId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budgetelement`
--

LOCK TABLES `budgetelement` WRITE;
/*!40000 ALTER TABLE `budgetelement` DISABLE KEYS */;
/*!40000 ALTER TABLE `budgetelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budgetorientation`
--

DROP TABLE IF EXISTS `budgetorientation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budgetorientation` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budgetorientation`
--

LOCK TABLES `budgetorientation` WRITE;
/*!40000 ALTER TABLE `budgetorientation` DISABLE KEYS */;
INSERT INTO `budgetorientation` VALUES (1,'Operation',10,0),(2,'Transformation',20,0);
/*!40000 ALTER TABLE `budgetorientation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businessfeature`
--

DROP TABLE IF EXISTS `businessfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businessfeature` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `idProduct` int(12) NOT NULL,
  `creationDate` date NOT NULL,
  `idUser` int(12) NOT NULL,
  `idle` int(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businessfeature`
--

LOCK TABLES `businessfeature` WRITE;
/*!40000 ALTER TABLE `businessfeature` DISABLE KEYS */;
/*!40000 ALTER TABLE `businessfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `isOffDay` int(1) unsigned DEFAULT 0,
  `calendarDate` date DEFAULT NULL,
  `day` varchar(8) DEFAULT NULL,
  `week` varchar(6) DEFAULT NULL,
  `month` varchar(6) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idCalendarDefinition` int(12) unsigned DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `calendarDay` (`day`),
  KEY `calendarWeek` (`week`),
  KEY `calendarMonth` (`month`),
  KEY `calendarYear` (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendarbankoffdays`
--

DROP TABLE IF EXISTS `calendarbankoffdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendarbankoffdays` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idCalendarDefinition` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `easterDay` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendarbankoffdaysCalendar` (`idCalendarDefinition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendarbankoffdays`
--

LOCK TABLES `calendarbankoffdays` WRITE;
/*!40000 ALTER TABLE `calendarbankoffdays` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendarbankoffdays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendardefinition`
--

DROP TABLE IF EXISTS `calendardefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendardefinition` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `dayOfWeek0` int(1) unsigned DEFAULT 0,
  `dayOfWeek1` int(1) unsigned DEFAULT 0,
  `dayOfWeek2` int(1) unsigned DEFAULT 0,
  `dayOfWeek3` int(1) unsigned DEFAULT 0,
  `dayOfWeek4` int(1) unsigned DEFAULT 0,
  `dayOfWeek5` int(1) unsigned DEFAULT 0,
  `dayOfWeek6` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendardefinition`
--

LOCK TABLES `calendardefinition` WRITE;
/*!40000 ALTER TABLE `calendardefinition` DISABLE KEYS */;
INSERT INTO `calendardefinition` VALUES (1,'default',10,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `calendardefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `callfortender`
--

DROP TABLE IF EXISTS `callfortender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `callfortender` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `idCallForTenderType` int(12) unsigned DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `technicalRequirements` mediumtext DEFAULT NULL,
  `businessRequirements` mediumtext DEFAULT NULL,
  `otherRequirements` mediumtext DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `sendDateTime` datetime DEFAULT NULL,
  `expectedTenderDateTime` datetime DEFAULT NULL,
  `maxAmount` decimal(11,2) unsigned DEFAULT NULL,
  `deliveryDate` date DEFAULT NULL,
  `evaluationMaxValue` decimal(7,2) DEFAULT NULL,
  `fixValue` int(1) unsigned DEFAULT 0,
  `idProduct` int(12) unsigned DEFAULT NULL,
  `idProductVersion` int(12) unsigned DEFAULT NULL,
  `idComponent` int(12) unsigned DEFAULT NULL,
  `idComponentVersion` int(12) unsigned DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `done` int(1) unsigned DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  `cancelled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `doneDate` date DEFAULT NULL,
  `idleDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `callfortenderProject` (`idProject`),
  KEY `callfortenderType` (`idCallForTenderType`),
  KEY `callfortenderStatus` (`idStatus`),
  KEY `callfortenderResource` (`idResource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `callfortender`
--

LOCK TABLES `callfortender` WRITE;
/*!40000 ALTER TABLE `callfortender` DISABLE KEYS */;
/*!40000 ALTER TABLE `callfortender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idCatalogType` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `detail` varchar(400) DEFAULT NULL,
  `nomenclature` varchar(100) DEFAULT NULL,
  `specification` mediumtext DEFAULT NULL,
  `unitCost` decimal(10,2) DEFAULT NULL,
  `idMeasureUnit` int(12) unsigned DEFAULT NULL,
  `idProduct` int(12) unsigned DEFAULT NULL,
  `idProductVersion` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `quantity` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Build',NULL,0),(2,'Run',NULL,0);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checklist`
--

DROP TABLE IF EXISTS `checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checklist` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idChecklistDefinition` int(12) unsigned DEFAULT NULL,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned DEFAULT NULL,
  `checkCount` int(3) DEFAULT 0,
  `comment` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklistReference` (`refType`,`refId`),
  KEY `checklistChecklistDefinition` (`idChecklistDefinition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checklist`
--

LOCK TABLES `checklist` WRITE;
/*!40000 ALTER TABLE `checklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checklistable`
--

DROP TABLE IF EXISTS `checklistable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checklistable` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checklistable`
--

LOCK TABLES `checklistable` WRITE;
/*!40000 ALTER TABLE `checklistable` DISABLE KEYS */;
INSERT INTO `checklistable` VALUES (1,'Ticket',0),(2,'Activity',0),(3,'Milestone',0),(4,'Risk',0),(5,'Action',0),(6,'Issue',0),(7,'Meeting',0),(8,'Decision',0),(9,'Question',0),(10,'Document',0),(11,'Requirement',0),(12,'TestCase',0),(13,'TestSession',0),(14,'Command',0),(15,'Opportunity',0),(16,'Project',0),(17,'ProductVersion',0),(18,'ComponentVersion',0),(19,'Product',0),(20,'Component',0),(21,'Incoming',0),(22,'Deliverable',0),(23,'Delivery',0),(24,'Bill',0),(25,'CallForTender',0),(26,'Client',0),(27,'Contact',0),(28,'IndividualExpense',0),(29,'Payment',0),(30,'ProjectExpense',0),(31,'Provider',0),(32,'Quotation',0),(33,'Tender',0);
/*!40000 ALTER TABLE `checklistable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checklistdefinition`
--

DROP TABLE IF EXISTS `checklistdefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checklistdefinition` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idChecklistable` int(12) unsigned DEFAULT NULL,
  `nameChecklistable` varchar(100) DEFAULT NULL,
  `idType` int(12) unsigned DEFAULT NULL,
  `lineCount` int(3) DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `checklistdefinitionChecklistable` (`idChecklistable`),
  KEY `checklistdefinitionNameChecklistable` (`nameChecklistable`),
  KEY `checklistdefinitionType` (`idType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checklistdefinition`
--

LOCK TABLES `checklistdefinition` WRITE;
/*!40000 ALTER TABLE `checklistdefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `checklistdefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checklistdefinitionline`
--

DROP TABLE IF EXISTS `checklistdefinitionline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checklistdefinitionline` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idChecklistDefinition` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `check01` varchar(100) DEFAULT NULL,
  `check02` varchar(100) DEFAULT NULL,
  `check03` varchar(100) DEFAULT NULL,
  `check04` varchar(100) DEFAULT NULL,
  `check05` varchar(100) DEFAULT NULL,
  `title01` varchar(1000) DEFAULT NULL,
  `title02` varchar(1000) DEFAULT NULL,
  `title03` varchar(1000) DEFAULT NULL,
  `title04` varchar(1000) DEFAULT NULL,
  `title05` varchar(1000) DEFAULT NULL,
  `sortOrder` int(3) DEFAULT 0,
  `exclusive` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `checklistdefinitionlineChecklistDefinition` (`idChecklistDefinition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checklistdefinitionline`
--

LOCK TABLES `checklistdefinitionline` WRITE;
/*!40000 ALTER TABLE `checklistdefinitionline` DISABLE KEYS */;
/*!40000 ALTER TABLE `checklistdefinitionline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checklistline`
--

DROP TABLE IF EXISTS `checklistline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checklistline` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idChecklist` int(12) unsigned DEFAULT NULL,
  `idChecklistDefinitionLine` int(12) unsigned DEFAULT NULL,
  `value01` int(1) unsigned DEFAULT 0,
  `value02` int(1) unsigned DEFAULT 0,
  `value03` int(1) unsigned DEFAULT 0,
  `value04` int(1) unsigned DEFAULT 0,
  `value05` int(1) unsigned DEFAULT 0,
  `idUser` int(12) unsigned DEFAULT NULL,
  `checkTime` datetime DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklistlineChecklist` (`idChecklist`),
  KEY `checklistlineChecklistDefinitionLine` (`idChecklistDefinitionLine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checklistline`
--

LOCK TABLES `checklistline` WRITE;
/*!40000 ALTER TABLE `checklistline` DISABLE KEYS */;
/*!40000 ALTER TABLE `checklistline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `clientCode` varchar(25) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `paymentDelay` int(3) DEFAULT NULL,
  `tax` decimal(5,2) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `complement` varchar(100) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `idClientType` int(12) unsigned DEFAULT NULL,
  `paymentDelayEndOfMonth` int(1) unsigned DEFAULT 0,
  `numTax` varchar(100) DEFAULT NULL,
  `idPaymentDelay` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientClientType` (`idClientType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collapsed`
--

DROP TABLE IF EXISTS `collapsed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collapsed` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(200) NOT NULL,
  `idUser` int(12) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collapsedUser` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collapsed`
--

LOCK TABLES `collapsed` WRITE;
/*!40000 ALTER TABLE `collapsed` DISABLE KEYS */;
INSERT INTO `collapsed` VALUES (1,'Ticket_history',1),(2,'Ticket_history',2),(3,'Activity_history',1),(4,'Activity_history',2),(5,'Milestone_history',1),(6,'Milestone_history',2),(7,'IndividualExpense_history',1),(8,'IndividualExpense_history',2),(9,'ProjectExpense_history',1),(10,'ProjectExpense_history',2),(11,'Risk_history',1),(12,'Risk_history',2),(13,'Action_history',1),(14,'Action_history',2),(15,'Issue_history',1),(16,'Issue_history',2),(17,'Meeting_history',1),(18,'Meeting_history',2),(19,'Decision_history',1),(20,'Decision_history',2),(21,'Question_history',1),(22,'Question_history',2);
/*!40000 ALTER TABLE `collapsed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `columnselector`
--

DROP TABLE IF EXISTS `columnselector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columnselector` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(10) DEFAULT NULL,
  `objectClass` varchar(50) DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `attribute` varchar(100) DEFAULT NULL,
  `hidden` int(1) unsigned DEFAULT 0,
  `sortOrder` int(3) unsigned DEFAULT 0,
  `widthPct` int(3) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subItem` varchar(100) DEFAULT NULL,
  `formatter` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scopeColumnSelector` (`scope`,`objectClass`,`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columnselector`
--

LOCK TABLES `columnselector` WRITE;
/*!40000 ALTER TABLE `columnselector` DISABLE KEYS */;
/*!40000 ALTER TABLE `columnselector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `command`
--

DROP TABLE IF EXISTS `command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `command` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idCommandType` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `additionalInfo` mediumtext DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `idActivity` int(12) unsigned DEFAULT NULL,
  `initialStartDate` date DEFAULT NULL,
  `initialEndDate` date DEFAULT NULL,
  `validatedEndDate` date DEFAULT NULL,
  `initialWork` decimal(14,5) unsigned DEFAULT NULL,
  `initialPricePerDayAmount` decimal(12,2) DEFAULT 0.00,
  `untaxedAmount` decimal(12,2) DEFAULT NULL,
  `addWork` decimal(14,5) unsigned DEFAULT NULL,
  `addPricePerDayAmount` decimal(12,2) DEFAULT 0.00,
  `addUntaxedAmount` decimal(12,2) DEFAULT NULL,
  `validatedWork` decimal(14,5) unsigned DEFAULT NULL,
  `validatedPricePerDayAmount` decimal(12,2) DEFAULT 0.00,
  `totalUntaxedAmount` decimal(12,2) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `done` int(1) unsigned DEFAULT 0,
  `cancelled` int(1) unsigned DEFAULT 0,
  `idleDate` date DEFAULT NULL,
  `doneDate` date DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `validatedStartDate` date DEFAULT NULL,
  `idActivityType` int(12) unsigned DEFAULT NULL,
  `idClient` int(12) unsigned DEFAULT NULL,
  `idContact` int(12) unsigned DEFAULT NULL,
  `idPaymentDelay` int(12) unsigned DEFAULT NULL,
  `tax` decimal(5,2) DEFAULT NULL,
  `fullAmount` decimal(12,2) DEFAULT NULL,
  `addFullAmount` decimal(12,2) DEFAULT NULL,
  `totalFullAmount` decimal(12,2) DEFAULT NULL,
  `idDeliveryMode` int(12) unsigned DEFAULT NULL,
  `receptionDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `commandProject` (`idProject`),
  KEY `commandUser` (`idUser`),
  KEY `commandResource` (`idResource`),
  KEY `commandStatus` (`idStatus`),
  KEY `commandType` (`idCommandType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `command`
--

LOCK TABLES `command` WRITE;
/*!40000 ALTER TABLE `command` DISABLE KEYS */;
/*!40000 ALTER TABLE `command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `context`
--

DROP TABLE IF EXISTS `context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `context` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idContextType` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sortOrder` int(3) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `contextContextType` (`idContextType`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `context`
--

LOCK TABLES `context` WRITE;
/*!40000 ALTER TABLE `context` DISABLE KEYS */;
INSERT INTO `context` VALUES (1,1,'Production',100,0),(2,1,'Validation',200,0),(3,2,'Windows 7',100,0),(4,2,'Windows Vista',110,0),(5,2,'Windows XP',120,0),(6,2,'Mac OS X',200,0),(7,2,'Mac OS <=9',210,0),(8,2,'Linux',210,0),(9,3,'IE 9',100,0),(10,3,'IE 8',110,0),(11,3,'IE 7',120,0),(12,3,'IE <= 6',130,0),(13,3,'FireFox >= 5',200,0),(14,3,'FireFox <= 4',210,0),(15,3,'Chrome',300,0),(16,3,'Safari',400,0);
/*!40000 ALTER TABLE `context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contexttype`
--

DROP TABLE IF EXISTS `contexttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contexttype` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `description` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contexttype`
--

LOCK TABLES `contexttype` WRITE;
/*!40000 ALTER TABLE `contexttype` DISABLE KEYS */;
INSERT INTO `contexttype` VALUES (1,'environment',0,NULL),(2,'OS',0,NULL),(3,'browser',0,NULL);
/*!40000 ALTER TABLE `contexttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copyable`
--

DROP TABLE IF EXISTS `copyable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copyable` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `sortOrder` int(3) DEFAULT NULL,
  `idDefaultCopyable` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copyable`
--

LOCK TABLES `copyable` WRITE;
/*!40000 ALTER TABLE `copyable` DISABLE KEYS */;
INSERT INTO `copyable` VALUES (1,'Ticket',0,10,NULL),(2,'Activity',0,20,NULL),(3,'Milestone',0,30,NULL),(4,'IndividualExpense',0,40,NULL),(5,'ProjectExpense',0,50,NULL),(6,'Risk',0,60,8),(7,'Action',0,32,NULL),(8,'Issue',0,80,NULL),(9,'Meeting',0,90,NULL),(10,'Decision',0,100,NULL),(11,'Question',0,110,NULL),(12,'Requirement',0,35,NULL),(13,'Command',0,36,15),(14,'Quotation',0,37,13),(15,'Bill',0,38,NULL),(16,'Tender',0,120,23),(17,'TestCase',0,900,NULL),(18,'TestSession',0,910,NULL),(19,'Opportunity',0,900,NULL),(20,'Delivery',0,800,NULL),(21,'Deliverable',0,800,NULL),(22,'Incoming',0,800,NULL),(23,'ProviderOrder',0,121,24),(24,'ProviderBill',0,122,26),(25,'ProviderTerm',1,123,26),(26,'ProviderPayment',0,124,NULL);
/*!40000 ALTER TABLE `copyable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `criticality`
--

DROP TABLE IF EXISTS `criticality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `criticality` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `value` int(3) unsigned DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criticality`
--

LOCK TABLES `criticality` WRITE;
/*!40000 ALTER TABLE `criticality` DISABLE KEYS */;
INSERT INTO `criticality` VALUES (1,'Low',1,'#32cd32',10,0),(2,'Medium',2,'#ffd700',20,0),(3,'High',4,'#ff0000',30,0),(4,'Critical',8,'#000000',40,0);
/*!40000 ALTER TABLE `criticality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronautosendreport`
--

DROP TABLE IF EXISTS `cronautosendreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cronautosendreport` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idReport` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `idReceiver` int(12) unsigned DEFAULT NULL,
  `idle` int(1) DEFAULT NULL,
  `sendFrequency` varchar(100) DEFAULT NULL,
  `otherReceiver` varchar(500) DEFAULT NULL,
  `cron` varchar(100) DEFAULT NULL,
  `nextTime` varchar(100) DEFAULT NULL,
  `reportParameter` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronautosendreport`
--

LOCK TABLES `cronautosendreport` WRITE;
/*!40000 ALTER TABLE `cronautosendreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronautosendreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronexecution`
--

DROP TABLE IF EXISTS `cronexecution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cronexecution` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `cron` varchar(100) DEFAULT NULL,
  `fileExecuted` varchar(500) DEFAULT NULL,
  `idle` int(1) DEFAULT NULL,
  `fonctionName` varchar(256) DEFAULT NULL,
  `nextTime` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronexecution`
--

LOCK TABLES `cronexecution` WRITE;
/*!40000 ALTER TABLE `cronexecution` DISABLE KEYS */;
INSERT INTO `cronexecution` VALUES (1,'0 * * * *','../tool/cronExecutionStandard.php',1,'cronPlanningDifferential',NULL),(2,'0 2 * * *','../tool/cronExecutionStandard.php',1,'cronPlanningComplete',NULL),(3,'0 0 1 * *','../tool/generateImputationAlert.php',0,'cronImputationAlertCronResource',NULL),(4,'0 0 1 * *','../tool/generateImputationAlert.php',0,'cronImputationAlertCronProjectLeader',NULL),(5,'0 0 1 * *','../tool/generateImputationAlert.php',0,'cronImputationAlertCronTeamManager',NULL),(6,'0 0 1 * *','../tool/generateImputationAlert.php',1,'cronImputationAlertCronOrganismManager',NULL);
/*!40000 ALTER TABLE `cronexecution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customearnedrulesofemploymentcontracttype`
--

DROP TABLE IF EXISTS `customearnedrulesofemploymentcontracttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customearnedrulesofemploymentcontracttype` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idle` int(1) unsigned NOT NULL DEFAULT 0,
  `name` varchar(100) DEFAULT NULL,
  `rule` varchar(4000) DEFAULT NULL,
  `whereClause` varchar(4000) DEFAULT NULL,
  `idEmploymentContractType` int(12) unsigned DEFAULT NULL,
  `idLeaveType` int(12) unsigned DEFAULT NULL,
  `quantity` decimal(4,1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customearnedrulesofemploymentcontracttype`
--

LOCK TABLES `customearnedrulesofemploymentcontracttype` WRITE;
/*!40000 ALTER TABLE `customearnedrulesofemploymentcontracttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `customearnedrulesofemploymentcontracttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decision`
--

DROP TABLE IF EXISTS `decision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `decision` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idDecisionType` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `decisionDate` date DEFAULT NULL,
  `origin` varchar(100) DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `reference` varchar(100) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `done` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `decisionProject` (`idProject`),
  KEY `decisionType` (`idDecisionType`),
  KEY `decisionUser` (`idUser`),
  KEY `decisionResource` (`idResource`),
  KEY `decisionStatus` (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decision`
--

LOCK TABLES `decision` WRITE;
/*!40000 ALTER TABLE `decision` DISABLE KEYS */;
/*!40000 ALTER TABLE `decision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delay`
--

DROP TABLE IF EXISTS `delay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delay` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(100) DEFAULT NULL,
  `idType` int(12) unsigned DEFAULT NULL,
  `idUrgency` int(12) unsigned DEFAULT NULL,
  `value` decimal(6,3) DEFAULT NULL,
  `idDelayUnit` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idProject` int(12) DEFAULT NULL,
  `isProject` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delay`
--

LOCK TABLES `delay` WRITE;
/*!40000 ALTER TABLE `delay` DISABLE KEYS */;
INSERT INTO `delay` VALUES (1,'Ticket',16,1,2.000,2,0,NULL,0),(2,'Ticket',16,2,1.000,4,0,NULL,0),(3,'Ticket',17,1,1.000,4,0,NULL,0),(4,'Ticket',17,2,4.000,4,0,NULL,0),(5,'Ticket',18,1,4.000,2,0,NULL,0),(6,'Ticket',18,2,2.000,4,0,NULL,0);
/*!40000 ALTER TABLE `delay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delayunit`
--

DROP TABLE IF EXISTS `delayunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delayunit` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `sortOrder` int(3) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delayunit`
--

LOCK TABLES `delayunit` WRITE;
/*!40000 ALTER TABLE `delayunit` DISABLE KEYS */;
INSERT INTO `delayunit` VALUES (1,'HH','hours','delay',100,0),(2,'OH','openHours','delay',200,0),(3,'DD','days','delay',300,0),(4,'OD','openDays','delay',400,0),(5,'PCT','percent','percent',500,0);
/*!40000 ALTER TABLE `delayunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverable`
--

DROP TABLE IF EXISTS `deliverable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliverable` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `idDeliverableType` int(12) unsigned DEFAULT NULL,
  `creationDateTime` datetime DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `plannedDate` date DEFAULT NULL,
  `realDate` date DEFAULT NULL,
  `validationDate` date DEFAULT NULL,
  `impactWork` decimal(5,0) DEFAULT NULL,
  `impactDuration` int(5) DEFAULT NULL,
  `impactCost` decimal(9,0) DEFAULT NULL,
  `idDeliverableWeight` int(12) unsigned DEFAULT NULL,
  `idDeliverableStatus` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idMilestone` int(12) unsigned DEFAULT NULL,
  `initialDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deliverableType` (`idDeliverableType`),
  KEY `deliverableStatusIdx` (`idDeliverableStatus`),
  KEY `deliverableProject` (`idProject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverable`
--

LOCK TABLES `deliverable` WRITE;
/*!40000 ALTER TABLE `deliverable` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliverable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverablestatus`
--

DROP TABLE IF EXISTS `deliverablestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliverablestatus` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` int(3) DEFAULT 0,
  `color` varchar(7) DEFAULT '#FFFFFF',
  `sortOrder` int(3) DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverablestatus`
--

LOCK TABLES `deliverablestatus` WRITE;
/*!40000 ALTER TABLE `deliverablestatus` DISABLE KEYS */;
INSERT INTO `deliverablestatus` VALUES (1,'Deliverable','not done',0,'#ff0000',10,0),(2,'Deliverable','delivery refused (major reservations)',1,'#ff8c00',20,0),(3,'Deliverable','accepted with minor reservations',2,'#ffff00',30,0),(4,'Deliverable','accepted without reservations',3,'#7fff00',40,0),(5,'Incoming','not provided',0,'#ff0000',10,0),(6,'Incoming','not conform',1,'#ff8c00',20,0),(7,'Incoming','accepted with minor reservations',2,'#ffff00',30,0),(8,'Incoming','accepted without reservations',3,'#7fff00',40,0);
/*!40000 ALTER TABLE `deliverablestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverableweight`
--

DROP TABLE IF EXISTS `deliverableweight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliverableweight` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` int(3) unsigned NOT NULL,
  `color` varchar(7) DEFAULT '#FFFFFF',
  `sortOrder` int(3) DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverableweight`
--

LOCK TABLES `deliverableweight` WRITE;
/*!40000 ALTER TABLE `deliverableweight` DISABLE KEYS */;
INSERT INTO `deliverableweight` VALUES (1,'Deliverable','low',0,'#d3d3d3',10,0),(2,'Deliverable','medium',0,'#d3d3d3',20,0),(3,'Deliverable','high',1,'#ffc0cb',30,0),(4,'Incoming','low',0,'#d3d3d3',10,0),(5,'Incoming','medium',0,'#d3d3d3',20,0),(6,'Incoming','high',1,'#ffc0cb',30,0);
/*!40000 ALTER TABLE `deliverableweight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `idDeliveryType` int(12) unsigned DEFAULT NULL,
  `creationDateTime` datetime DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `plannedDate` date DEFAULT NULL,
  `realDate` date DEFAULT NULL,
  `validationDate` date DEFAULT NULL,
  `impactWork` decimal(5,0) DEFAULT NULL,
  `impactDuration` int(5) DEFAULT NULL,
  `impactCost` decimal(9,0) DEFAULT NULL,
  `idDeliverableWeight` int(12) unsigned DEFAULT NULL,
  `idDeliverableStatus` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idProductVersion` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `handledDateTime` datetime DEFAULT NULL,
  `done` int(1) unsigned DEFAULT 0,
  `doneDateTime` datetime DEFAULT NULL,
  `idleDateTime` datetime DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `idMilestone` int(12) unsigned DEFAULT NULL,
  `initialDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deliveryDeliverableTypeIdx` (`idDeliveryType`),
  KEY `deliveryDeliverableStatusIdx` (`idDeliverableStatus`),
  KEY `deliveryProjectIdx` (`idProject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverymode`
--

DROP TABLE IF EXISTS `deliverymode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliverymode` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `sortOrder` int(3) DEFAULT 0,
  `idle` int(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverymode`
--

LOCK TABLES `deliverymode` WRITE;
/*!40000 ALTER TABLE `deliverymode` DISABLE KEYS */;
INSERT INTO `deliverymode` VALUES (1,'email',10,0),(2,'postal mail',20,0),(3,'hand delivered',30,0),(4,'digital deposit',40,0);
/*!40000 ALTER TABLE `deliverymode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependable`
--

DROP TABLE IF EXISTS `dependable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependable` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `scope` varchar(10) DEFAULT 'PE',
  `idDefaultDependable` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependable`
--

LOCK TABLES `dependable` WRITE;
/*!40000 ALTER TABLE `dependable` DISABLE KEYS */;
INSERT INTO `dependable` VALUES (1,'Activity',0,'PE',1),(2,'Milestone',0,'PE',1),(3,'Project',0,'PE',3),(4,'Requirement',0,'R',4),(5,'TestCase',0,'TC',5),(6,'TestSession',0,'PE',6),(7,'Meeting',0,'PE',1);
/*!40000 ALTER TABLE `dependable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependency`
--

DROP TABLE IF EXISTS `dependency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependency` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `predecessorId` int(12) unsigned DEFAULT NULL,
  `predecessorRefType` varchar(100) DEFAULT NULL,
  `predecessorRefId` int(12) unsigned NOT NULL,
  `successorId` int(12) unsigned DEFAULT NULL,
  `successorRefType` varchar(100) DEFAULT NULL,
  `successorRefId` int(12) unsigned NOT NULL,
  `dependencyType` varchar(12) DEFAULT NULL,
  `dependencyDelay` int(3) DEFAULT 0,
  `comment` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dependencyPredecessorRef` (`predecessorRefType`,`predecessorRefId`),
  KEY `dependencyPredecessorId` (`predecessorId`),
  KEY `dependencySuccessorRef` (`successorRefType`,`successorRefId`),
  KEY `dependencySuccessorId` (`successorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependency`
--

LOCK TABLES `dependency` WRITE;
/*!40000 ALTER TABLE `dependency` DISABLE KEYS */;
/*!40000 ALTER TABLE `dependency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idProduct` int(12) unsigned DEFAULT NULL,
  `idDocumentType` int(12) unsigned DEFAULT NULL,
  `idDocumentDirectory` int(12) unsigned DEFAULT NULL,
  `idVersioningType` int(12) unsigned DEFAULT NULL,
  `version` int(3) DEFAULT NULL,
  `revision` int(3) DEFAULT NULL,
  `draft` int(3) DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idDocumentVersion` int(12) unsigned DEFAULT NULL,
  `idDocumentVersionRef` int(12) unsigned DEFAULT NULL,
  `idAuthor` int(12) unsigned DEFAULT NULL,
  `locked` int(1) unsigned DEFAULT 0,
  `idLocker` int(12) unsigned DEFAULT NULL,
  `lockedDate` datetime DEFAULT NULL,
  `fileName` varchar(100) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `documentReference` varchar(400) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `idUser` int(12) unsigned DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentProject` (`idProject`),
  KEY `documentProduct` (`idProduct`),
  KEY `documentDocumentType` (`idDocumentType`),
  KEY `documentDocumentDirectory` (`idDocumentDirectory`),
  KEY `documentVersionType` (`idVersioningType`),
  KEY `documentStatus` (`idStatus`),
  KEY `documentDocumentVersion` (`idDocumentVersion`),
  KEY `documentDocumentVersionRef` (`idDocumentVersionRef`),
  KEY `documentAuthor` (`idAuthor`),
  KEY `documentLocker` (`idLocker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentdirectory`
--

DROP TABLE IF EXISTS `documentdirectory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentdirectory` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(4000) DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idProduct` int(12) unsigned DEFAULT NULL,
  `idDocumentDirectory` int(12) unsigned DEFAULT NULL,
  `idDocumentType` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `documentdirectoryProject` (`idProject`),
  KEY `documentdirectoryProduct` (`idProduct`),
  KEY `documentdirectoryDocumentDirectory` (`idDocumentDirectory`),
  KEY `documentdirectoryDocumentType` (`idDocumentType`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentdirectory`
--

LOCK TABLES `documentdirectory` WRITE;
/*!40000 ALTER TABLE `documentdirectory` DISABLE KEYS */;
INSERT INTO `documentdirectory` VALUES (1,NULL,'Project','/Project',NULL,NULL,NULL,NULL,0),(2,NULL,'Product','/Product',NULL,NULL,NULL,NULL,0),(3,NULL,'Need','/Product/Need',NULL,NULL,2,NULL,0),(4,NULL,'Specification','/Product/Specification',NULL,NULL,2,NULL,0),(5,NULL,'Conception','/Product/Conception',NULL,NULL,2,NULL,0),(7,NULL,'Testing','/Product/Testing',NULL,NULL,2,NULL,0),(8,NULL,'Deployment','/Product/Deployment',NULL,NULL,2,NULL,0),(9,NULL,'Exploitation','/Product/Exploitation',NULL,NULL,2,NULL,0),(10,NULL,'Contract','/Project/Contract',NULL,NULL,1,NULL,0),(11,NULL,'Management','/Project/Management',NULL,NULL,1,NULL,0),(12,NULL,'Reviews','/Project/Reviews',NULL,NULL,1,NULL,0),(13,NULL,'Follow-up','/Project/Follow-up',NULL,NULL,1,NULL,0),(14,NULL,'Financial','/Project/Financial',NULL,NULL,1,NULL,0);
/*!40000 ALTER TABLE `documentdirectory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentversion`
--

DROP TABLE IF EXISTS `documentversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentversion` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `fullName` varchar(200) DEFAULT NULL,
  `version` int(3) DEFAULT NULL,
  `revision` int(3) DEFAULT NULL,
  `draft` int(3) DEFAULT NULL,
  `fileName` varchar(400) DEFAULT NULL,
  `mimeType` varchar(100) DEFAULT NULL,
  `fileSize` bigint(12) unsigned DEFAULT NULL,
  `link` varchar(400) DEFAULT NULL,
  `versionDate` date DEFAULT NULL,
  `createDateTime` datetime DEFAULT NULL,
  `updateDateTime` datetime DEFAULT NULL,
  `extension` varchar(100) DEFAULT NULL,
  `idDocument` int(12) unsigned DEFAULT NULL,
  `idAuthor` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `isRef` int(1) unsigned DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  `approved` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `documentversionDocument` (`idDocument`),
  KEY `documentversionAuthor` (`idAuthor`),
  KEY `documentversionStatus` (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentversion`
--

LOCK TABLES `documentversion` WRITE;
/*!40000 ALTER TABLE `documentversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `efficiency`
--

DROP TABLE IF EXISTS `efficiency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `efficiency` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `efficiency`
--

LOCK TABLES `efficiency` WRITE;
/*!40000 ALTER TABLE `efficiency` DISABLE KEYS */;
INSERT INTO `efficiency` VALUES (1,'fully efficient','#99FF99',100,0),(2,'partially efficient','#87ceeb',200,0),(3,'not efficient','#FF0000',300,0);
/*!40000 ALTER TABLE `efficiency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailtemplate`
--

DROP TABLE IF EXISTS `emailtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailtemplate` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `template` mediumtext DEFAULT NULL,
  `idMailable` int(12) DEFAULT NULL,
  `idType` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `emailtemplateMailable` (`idMailable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailtemplate`
--

LOCK TABLES `emailtemplate` WRITE;
/*!40000 ALTER TABLE `emailtemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailtemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeleaveearned`
--

DROP TABLE IF EXISTS `employeeleaveearned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeeleaveearned` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idEmployee` int(12) unsigned DEFAULT NULL,
  `idLeaveType` int(12) unsigned DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `lastUpdateDate` date DEFAULT NULL,
  `quantity` decimal(4,1) unsigned DEFAULT NULL,
  `leftQuantity` decimal(4,1) DEFAULT NULL,
  `leftQuantityBeforeClose` decimal(4,1) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `employeeleaveearnedEmployee` (`idEmployee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeleaveearned`
--

LOCK TABLES `employeeleaveearned` WRITE;
/*!40000 ALTER TABLE `employeeleaveearned` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeeleaveearned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeleaveperiod`
--

DROP TABLE IF EXISTS `employeeleaveperiod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeeleaveperiod` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idle` int(1) unsigned NOT NULL DEFAULT 0,
  `comment` varchar(255) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `startAMPM` varchar(2) DEFAULT 'AM',
  `endDate` date DEFAULT NULL,
  `endAMPM` varchar(2) DEFAULT 'PM',
  `idLeaveType` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idEmployee` int(12) unsigned DEFAULT NULL,
  `requestDateTime` datetime DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `processingDateTime` datetime DEFAULT NULL,
  `nbDays` decimal(4,1) unsigned DEFAULT NULL,
  `submitted` int(1) unsigned NOT NULL DEFAULT 0,
  `rejected` int(1) unsigned NOT NULL DEFAULT 0,
  `accepted` int(1) unsigned NOT NULL DEFAULT 0,
  `statusOutOfWorkflow` int(1) unsigned NOT NULL DEFAULT 0,
  `statusSetLeaveChange` int(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `employeeleaveperiodEmployee` (`idEmployee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeleaveperiod`
--

LOCK TABLES `employeeleaveperiod` WRITE;
/*!40000 ALTER TABLE `employeeleaveperiod` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeeleaveperiod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeesmanaged`
--

DROP TABLE IF EXISTS `employeesmanaged`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeesmanaged` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idEmployeeManager` int(12) unsigned DEFAULT NULL,
  `idEmployee` int(12) unsigned DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `idle` int(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `employeesManagedEmployee` (`idEmployee`),
  KEY `employeesManagedEmployeeManager` (`idEmployeeManager`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeesmanaged`
--

LOCK TABLES `employeesmanaged` WRITE;
/*!40000 ALTER TABLE `employeesmanaged` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeesmanaged` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employmentcontract`
--

DROP TABLE IF EXISTS `employmentcontract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employmentcontract` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idUser` int(12) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `mission` longtext DEFAULT NULL,
  `idEmployee` int(12) unsigned DEFAULT NULL,
  `idEmploymentContractType` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idEmploymentContractEndReason` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `employmentcontractEmployee` (`idEmployee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employmentcontract`
--

LOCK TABLES `employmentcontract` WRITE;
/*!40000 ALTER TABLE `employmentcontract` DISABLE KEYS */;
/*!40000 ALTER TABLE `employmentcontract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employmentcontractendreason`
--

DROP TABLE IF EXISTS `employmentcontractendreason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employmentcontractendreason` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `final` int(1) unsigned NOT NULL DEFAULT 0,
  `idle` int(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employmentcontractendreason`
--

LOCK TABLES `employmentcontractendreason` WRITE;
/*!40000 ALTER TABLE `employmentcontractendreason` DISABLE KEYS */;
/*!40000 ALTER TABLE `employmentcontractendreason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employmentcontracttype`
--

DROP TABLE IF EXISTS `employmentcontracttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employmentcontracttype` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idle` int(1) unsigned NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL,
  `idRecipient` int(12) unsigned DEFAULT NULL,
  `idWorkflow` int(12) unsigned DEFAULT NULL,
  `idManagementType` int(12) unsigned DEFAULT NULL,
  `isDefault` int(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employmentcontracttype`
--

LOCK TABLES `employmentcontracttype` WRITE;
/*!40000 ALTER TABLE `employmentcontracttype` DISABLE KEYS */;
INSERT INTO `employmentcontracttype` VALUES (1,0,'Default employment contract type',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `employmentcontracttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'responsibleChange',0,60),(2,'noteAdd',0,20),(3,'attachmentAdd',0,10),(4,'noteChange',0,30),(5,'descriptionChange',0,70),(6,'resultChange',0,80),(7,'assignmentAdd',0,40),(8,'assignmentChange',0,50),(9,'anyChange',0,90),(10,'affectationAdd',0,51),(11,'affectationChange',0,52),(12,'linkAdd',0,53),(13,'linkDelete',0,54),(14,'statusChange',0,100);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idExpenseType` int(12) unsigned DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `expensePlannedDate` date DEFAULT NULL,
  `expenseRealDate` date DEFAULT NULL,
  `plannedAmount` decimal(11,2) DEFAULT NULL,
  `realAmount` decimal(11,2) DEFAULT NULL,
  `day` varchar(8) DEFAULT NULL,
  `week` varchar(6) DEFAULT NULL,
  `month` varchar(6) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `reference` varchar(100) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `idDocument` int(12) unsigned DEFAULT NULL,
  `idProvider` int(12) unsigned DEFAULT NULL,
  `sendDate` date DEFAULT NULL,
  `idDeliveryMode` int(12) unsigned DEFAULT NULL,
  `deliveryDelay` varchar(100) DEFAULT NULL,
  `deliveryDate` date DEFAULT NULL,
  `paymentCondition` varchar(100) DEFAULT NULL,
  `receptionDate` date DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `taxPct` decimal(5,2) DEFAULT NULL,
  `plannedFullAmount` decimal(11,2) DEFAULT 0.00,
  `realFullAmount` decimal(11,2) DEFAULT 0.00,
  `idleDate` date DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `done` int(1) unsigned DEFAULT 0,
  `doneDate` date DEFAULT NULL,
  `idResponsible` int(12) unsigned DEFAULT NULL,
  `paymentDone` int(1) unsigned DEFAULT 0,
  `idContact` int(12) unsigned DEFAULT NULL,
  `plannedTaxAmount` decimal(11,2) unsigned DEFAULT NULL,
  `isCalculated` int(1) unsigned DEFAULT 0,
  `realTaxAmount` decimal(11,2) unsigned DEFAULT NULL,
  `idBudgetItem` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expenseProject` (`idProject`),
  KEY `expenseType` (`idExpenseType`),
  KEY `expenseUser` (`idUser`),
  KEY `expenseResource` (`idResource`),
  KEY `expenseStatus` (`idStatus`),
  KEY `expenseDay` (`day`),
  KEY `expenseWeek` (`week`),
  KEY `expenseMonth` (`month`),
  KEY `expenseYear` (`year`),
  KEY `expenseProvider` (`idProvider`),
  KEY `expenseResponsible` (`idResponsible`),
  KEY `expenseBudget` (`idBudgetItem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expensedetail`
--

DROP TABLE IF EXISTS `expensedetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expensedetail` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idExpense` int(12) unsigned DEFAULT NULL,
  `expenseDate` date DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `idExpenseDetailType` int(12) unsigned DEFAULT NULL,
  `value01` decimal(8,2) DEFAULT NULL,
  `value02` decimal(8,2) DEFAULT NULL,
  `value03` decimal(8,2) DEFAULT NULL,
  `unit01` varchar(20) DEFAULT NULL,
  `unit02` varchar(20) DEFAULT NULL,
  `unit03` varchar(20) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `externalReference` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expensedetailProject` (`idProject`),
  KEY `expensedetailExpenseDetailType` (`idExpenseDetailType`),
  KEY `expensedetailExpense` (`idExpense`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expensedetail`
--

LOCK TABLES `expensedetail` WRITE;
/*!40000 ALTER TABLE `expensedetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `expensedetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expensedetailtype`
--

DROP TABLE IF EXISTS `expensedetailtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expensedetailtype` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `sortOrder` int(3) DEFAULT NULL,
  `value01` decimal(8,2) DEFAULT NULL,
  `value02` decimal(8,2) DEFAULT NULL,
  `value03` decimal(8,2) DEFAULT NULL,
  `unit01` varchar(20) DEFAULT NULL,
  `unit02` varchar(20) DEFAULT NULL,
  `unit03` varchar(20) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `description` mediumtext DEFAULT NULL,
  `individual` int(1) unsigned DEFAULT 0,
  `project` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expensedetailtype`
--

LOCK TABLES `expensedetailtype` WRITE;
/*!40000 ALTER TABLE `expensedetailtype` DISABLE KEYS */;
INSERT INTO `expensedetailtype` VALUES (1,'travel by car',10,NULL,0.54,NULL,'km','â‚¬/km',NULL,0,NULL,1,0),(2,'regular mission car travel',20,NULL,NULL,0.54,'days','km/day','â‚¬/km',0,NULL,1,0),(3,'lunch for guests',30,NULL,NULL,NULL,'guests','â‚¬/guest',NULL,0,NULL,1,0),(4,'justified expense',40,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,0),(5,'detail',50,NULL,NULL,NULL,'units','â‚¬ per unit',NULL,0,NULL,0,1);
/*!40000 ALTER TABLE `expensedetailtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extrahiddenfield`
--

DROP TABLE IF EXISTS `extrahiddenfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extrahiddenfield` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(100) DEFAULT NULL,
  `idType` int(12) unsigned DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extrahiddenfield`
--

LOCK TABLES `extrahiddenfield` WRITE;
/*!40000 ALTER TABLE `extrahiddenfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `extrahiddenfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extrareadonlyfield`
--

DROP TABLE IF EXISTS `extrareadonlyfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extrareadonlyfield` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(100) DEFAULT NULL,
  `idType` int(12) unsigned DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extrareadonlyfield`
--

LOCK TABLES `extrareadonlyfield` WRITE;
/*!40000 ALTER TABLE `extrareadonlyfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `extrareadonlyfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extrarequiredfield`
--

DROP TABLE IF EXISTS `extrarequiredfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extrarequiredfield` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(100) DEFAULT NULL,
  `idType` int(12) unsigned DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extrarequiredfield`
--

LOCK TABLES `extrarequiredfield` WRITE;
/*!40000 ALTER TABLE `extrarequiredfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `extrarequiredfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorite` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idUser` int(12) unsigned DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `idReport` int(12) unsigned DEFAULT NULL,
  `idMenu` int(12) unsigned DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `favoriteUser` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favoriteparameter`
--

DROP TABLE IF EXISTS `favoriteparameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favoriteparameter` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idReport` int(12) unsigned DEFAULT NULL,
  `idFavorite` int(12) unsigned DEFAULT NULL,
  `parameterName` varchar(100) DEFAULT NULL,
  `parameterValue` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favoriteParameterUser` (`idUser`),
  KEY `favoriteParameterReport` (`idReport`),
  KEY `favoriteParameterToday` (`idFavorite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favoriteparameter`
--

LOCK TABLES `favoriteparameter` WRITE;
/*!40000 ALTER TABLE `favoriteparameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `favoriteparameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feasibility`
--

DROP TABLE IF EXISTS `feasibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feasibility` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feasibility`
--

LOCK TABLES `feasibility` WRITE;
/*!40000 ALTER TABLE `feasibility` DISABLE KEYS */;
INSERT INTO `feasibility` VALUES (1,'Yes','#00FF00',100,0),(2,'Investigate','#AAAA00',200,0),(3,'No','#FF0000',300,0);
/*!40000 ALTER TABLE `feasibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter`
--

DROP TABLE IF EXISTS `filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `refType` varchar(100) DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `isShared` int(1) unsigned DEFAULT NULL,
  `isDynamic` int(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `filterUser` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter`
--

LOCK TABLES `filter` WRITE;
/*!40000 ALTER TABLE `filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filtercriteria`
--

DROP TABLE IF EXISTS `filtercriteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filtercriteria` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idFilter` int(12) unsigned NOT NULL,
  `dispAttribute` varchar(100) DEFAULT NULL,
  `dispOperator` varchar(100) DEFAULT NULL,
  `dispValue` varchar(4000) DEFAULT NULL,
  `sqlAttribute` varchar(100) DEFAULT NULL,
  `sqlOperator` varchar(100) DEFAULT NULL,
  `sqlValue` varchar(4000) DEFAULT NULL,
  `isDynamic` int(1) DEFAULT 0,
  `orOperator` int(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `filtercriteriaFilter` (`idFilter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filtercriteria`
--

LOCK TABLES `filtercriteria` WRITE;
/*!40000 ALTER TABLE `filtercriteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `filtercriteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globalview`
--

DROP TABLE IF EXISTS `globalview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globalview` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `objectClass` varchar(100) DEFAULT NULL,
  `objectId` int(12) unsigned DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idType` int(12) unsigned DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `done` int(1) unsigned DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  `cancelled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `doneDate` date DEFAULT NULL,
  `idleDate` date DEFAULT NULL,
  `validatedEndDate` date DEFAULT NULL,
  `plannedEndDate` date DEFAULT NULL,
  `realEndDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globalview`
--

LOCK TABLES `globalview` WRITE;
/*!40000 ALTER TABLE `globalview` DISABLE KEYS */;
/*!40000 ALTER TABLE `globalview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habilitation`
--

DROP TABLE IF EXISTS `habilitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habilitation` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProfile` int(12) unsigned DEFAULT NULL,
  `idMenu` int(12) unsigned DEFAULT NULL,
  `allowAccess` int(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `habilitationProfile` (`idProfile`),
  KEY `habilitationMenu` (`idMenu`)
) ENGINE=InnoDB AUTO_INCREMENT=1479 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habilitation`
--

LOCK TABLES `habilitation` WRITE;
/*!40000 ALTER TABLE `habilitation` DISABLE KEYS */;
INSERT INTO `habilitation` VALUES (1,1,14,1),(2,1,13,1),(3,1,21,1),(4,1,17,1),(5,2,20,1),(6,1,1,1),(7,2,1,1),(8,3,1,1),(9,4,1,1),(10,6,1,1),(11,7,1,1),(12,5,1,1),(13,1,2,1),(14,2,2,1),(15,3,2,1),(16,4,2,1),(17,6,2,1),(18,7,2,1),(19,5,2,1),(20,1,3,1),(21,2,3,1),(22,3,3,1),(23,4,3,0),(24,6,3,1),(25,7,3,0),(26,5,3,0),(27,1,4,1),(28,2,4,1),(29,3,4,1),(30,4,4,1),(31,6,4,1),(32,7,4,1),(33,5,4,1),(34,1,5,1),(35,2,5,1),(36,3,5,1),(37,4,5,0),(38,6,5,0),(39,7,5,0),(40,5,5,0),(41,1,6,1),(42,2,6,1),(43,3,6,1),(44,4,6,1),(45,6,6,1),(46,7,6,1),(47,5,6,1),(48,1,7,1),(49,2,7,1),(50,3,7,1),(51,4,7,1),(52,6,7,1),(53,7,7,1),(54,5,7,1),(55,1,8,1),(56,2,8,1),(57,3,8,1),(58,4,8,1),(59,6,8,1),(60,7,8,1),(61,5,8,1),(62,1,9,1),(63,2,9,1),(64,3,9,1),(65,4,9,1),(66,6,9,1),(67,7,9,1),(68,5,9,1),(76,1,11,1),(77,2,11,1),(78,3,11,1),(79,4,11,1),(80,6,11,1),(81,7,11,1),(82,5,11,1),(83,1,12,0),(84,2,12,0),(85,3,12,0),(86,4,12,0),(87,6,12,0),(88,7,12,0),(89,5,12,0),(90,2,13,1),(91,3,13,1),(92,4,13,1),(93,6,13,1),(94,7,13,1),(95,5,13,1),(96,2,14,1),(97,3,14,1),(98,4,14,0),(99,6,14,0),(100,7,14,0),(101,5,14,0),(102,1,15,1),(103,2,15,0),(104,3,15,0),(105,4,15,0),(106,6,15,0),(107,7,15,0),(108,5,15,0),(109,1,16,1),(110,2,16,1),(111,3,16,1),(112,4,16,0),(113,6,16,0),(114,7,16,0),(115,5,16,0),(116,2,17,0),(117,3,17,0),(118,4,17,0),(119,6,17,0),(120,7,17,0),(121,5,17,0),(122,2,21,0),(123,3,21,0),(124,4,21,0),(125,6,21,0),(126,7,21,0),(127,5,21,0),(128,1,18,1),(129,2,18,0),(130,3,18,0),(131,4,18,0),(132,6,18,0),(133,7,18,0),(134,5,18,0),(135,1,19,0),(136,2,19,0),(137,3,19,0),(138,4,19,0),(139,6,19,0),(140,7,19,0),(141,5,19,0),(142,1,20,1),(143,3,20,1),(144,4,20,1),(145,6,20,1),(146,7,20,1),(147,5,20,1),(148,1,22,1),(149,2,22,0),(150,3,22,1),(151,4,22,1),(152,6,22,1),(153,7,22,1),(154,5,22,0),(155,1,23,0),(156,2,23,0),(157,3,23,0),(158,4,23,0),(159,6,23,0),(160,7,23,0),(161,5,23,0),(162,1,24,0),(163,2,24,0),(164,3,24,0),(165,4,24,0),(166,6,24,0),(167,7,24,0),(168,5,24,0),(169,1,25,1),(170,2,25,0),(171,3,25,1),(172,4,25,1),(173,6,25,1),(174,7,25,1),(175,5,25,0),(176,1,26,1),(177,2,26,0),(178,3,26,1),(179,4,26,1),(180,6,26,1),(181,7,26,1),(182,5,26,0),(183,1,32,0),(184,2,32,0),(185,3,32,0),(186,4,32,0),(187,6,32,0),(188,7,32,0),(189,5,32,0),(190,1,33,0),(191,2,33,0),(192,3,33,0),(193,4,33,0),(194,6,33,0),(195,7,33,0),(196,5,33,0),(197,1,34,1),(198,2,34,0),(199,3,34,0),(200,4,34,0),(201,6,34,0),(202,7,34,0),(203,5,34,0),(204,1,36,1),(205,2,36,0),(206,3,36,0),(207,4,36,0),(208,6,36,0),(209,7,36,0),(210,5,36,0),(211,1,37,1),(212,2,37,0),(213,3,37,0),(214,4,37,0),(215,6,37,0),(216,7,37,0),(217,5,37,0),(218,1,38,1),(219,2,38,0),(220,3,38,0),(221,4,38,0),(222,6,38,0),(223,7,38,0),(224,5,38,0),(225,1,39,1),(226,2,39,0),(227,3,39,0),(228,4,39,0),(229,6,39,0),(230,7,39,0),(231,5,39,0),(232,1,40,1),(233,2,40,0),(234,3,40,0),(235,4,40,0),(236,6,40,0),(237,7,40,0),(238,5,40,0),(239,1,42,1),(240,2,42,0),(241,3,42,0),(242,4,42,0),(243,6,42,0),(244,7,42,0),(245,5,42,0),(246,1,41,1),(247,2,41,0),(248,3,41,0),(249,4,41,0),(250,6,41,0),(251,7,41,0),(252,5,41,0),(253,1,43,1),(254,2,43,1),(255,3,43,1),(256,4,43,0),(257,6,43,1),(258,7,43,0),(259,5,43,0),(260,1,44,1),(261,2,44,0),(262,3,44,1),(263,4,44,0),(264,6,44,0),(265,7,44,0),(266,5,44,0),(267,1,45,1),(268,2,45,0),(269,3,45,0),(270,4,45,0),(271,6,45,0),(272,7,45,0),(273,5,45,0),(274,1,46,1),(275,2,46,0),(276,3,46,0),(277,4,46,0),(278,6,46,0),(279,7,46,0),(280,5,46,0),(281,1,50,1),(282,2,50,0),(283,3,50,1),(284,4,50,0),(285,6,50,0),(286,7,50,0),(287,5,50,0),(288,1,49,1),(289,2,49,0),(290,3,49,0),(291,4,49,0),(292,6,49,0),(293,7,49,0),(294,5,49,0),(295,1,47,1),(296,2,47,0),(297,3,47,0),(298,4,47,0),(299,6,47,0),(300,7,47,0),(301,5,47,0),(302,1,48,1),(303,2,48,0),(304,3,48,0),(305,4,48,0),(306,6,48,0),(307,7,48,0),(308,5,48,0),(309,1,51,1),(310,2,51,0),(311,3,51,1),(312,4,51,0),(313,6,51,0),(314,7,51,0),(315,5,51,0),(316,1,52,1),(317,2,52,0),(318,3,52,0),(319,4,52,0),(320,6,52,0),(321,7,52,0),(322,5,52,0),(323,1,53,1),(324,2,53,0),(325,3,53,0),(326,4,53,0),(327,6,53,0),(328,7,53,0),(329,5,53,0),(330,1,55,1),(331,2,55,0),(332,3,55,0),(333,4,55,0),(334,6,55,0),(335,7,55,0),(336,5,55,0),(337,1,56,1),(338,2,56,0),(339,3,56,0),(340,4,56,0),(341,6,56,0),(342,7,56,0),(343,5,56,0),(344,1,57,1),(345,2,57,1),(346,3,57,1),(347,4,57,0),(348,6,57,0),(349,7,57,0),(350,5,57,0),(351,1,58,1),(352,2,58,0),(353,3,58,0),(354,4,58,0),(355,5,58,0),(356,6,58,0),(357,7,58,0),(358,1,59,1),(359,1,60,1),(360,1,61,1),(361,2,61,1),(362,3,61,1),(363,1,62,1),(364,2,62,1),(365,3,62,1),(366,4,62,1),(367,6,62,1),(368,7,62,1),(369,5,62,1),(370,1,63,1),(371,2,63,1),(372,3,63,1),(373,4,63,1),(374,6,63,1),(375,7,63,1),(376,5,63,1),(377,1,64,1),(378,2,64,1),(379,3,64,1),(380,4,64,1),(381,6,64,1),(382,7,64,1),(383,5,64,1),(384,1,65,1),(385,2,65,0),(386,3,65,0),(387,4,65,0),(388,6,65,0),(389,7,65,0),(390,5,65,0),(391,1,66,1),(392,2,66,0),(393,3,66,0),(394,4,66,0),(395,6,66,0),(396,7,66,0),(397,5,66,0),(398,1,67,1),(399,2,67,0),(400,3,67,0),(401,4,67,0),(402,6,67,0),(403,7,67,0),(404,5,67,0),(405,1,68,1),(406,2,68,0),(407,3,68,0),(408,4,68,0),(409,6,68,0),(410,7,68,0),(411,5,68,0),(412,1,69,1),(413,2,69,0),(414,3,69,1),(415,4,69,1),(416,6,69,0),(417,7,69,0),(418,5,69,0),(419,1,70,1),(420,2,70,0),(421,3,70,0),(422,4,70,0),(423,6,70,0),(424,7,70,0),(425,1,71,1),(426,2,71,0),(427,3,71,0),(428,4,71,0),(429,6,71,0),(430,7,71,0),(431,1,72,1),(432,1,73,1),(433,1,74,1),(434,2,74,1),(435,3,74,1),(436,1,75,1),(437,2,75,1),(438,3,75,1),(439,4,75,1),(440,1,76,1),(441,2,76,1),(442,3,76,1),(443,1,77,0),(444,2,77,0),(445,3,77,0),(449,1,79,1),(450,2,79,1),(451,3,79,1),(452,1,80,1),(453,2,80,1),(454,1,81,1),(455,2,81,1),(456,1,82,0),(457,2,82,0),(460,1,84,1),(461,2,84,1),(462,1,85,1),(463,2,85,1),(464,3,85,1),(465,1,86,1),(466,2,86,1),(467,3,86,1),(468,1,87,1),(469,2,87,1),(470,3,87,1),(471,1,88,1),(472,2,88,1),(473,3,88,1),(474,1,89,1),(475,2,89,1),(476,3,89,1),(477,1,90,1),(478,2,90,1),(479,3,90,1),(480,1,91,1),(481,2,91,1),(482,3,91,1),(483,4,91,1),(484,5,91,1),(485,6,91,1),(486,7,91,1),(488,1,92,1),(489,1,93,1),(490,2,93,1),(491,3,93,1),(492,1,94,1),(493,1,95,1),(494,1,96,1),(495,1,97,1),(496,1,98,1),(497,1,99,1),(498,1,100,1),(499,1,101,1),(500,1,102,1),(501,2,102,1),(502,3,102,1),(503,4,102,1),(504,6,102,1),(505,7,102,1),(506,1,103,1),(507,3,103,1),(508,1,104,1),(510,1,105,1),(511,1,106,1),(512,2,106,1),(513,3,106,1),(514,4,106,1),(515,5,106,1),(516,6,106,1),(517,7,106,1),(518,1,107,1),(519,2,107,0),(520,3,107,0),(521,4,107,0),(522,5,107,0),(523,6,107,0),(524,7,107,0),(525,1,108,1),(526,2,108,0),(527,3,108,0),(528,4,108,0),(529,5,108,0),(530,6,108,0),(531,7,108,0),(532,1,109,1),(533,2,109,0),(534,3,109,0),(535,4,109,0),(536,5,109,0),(537,6,109,0),(538,7,109,0),(539,1,111,1),(540,2,111,1),(541,3,111,1),(542,4,111,1),(543,5,111,1),(544,6,111,1),(545,7,111,1),(546,1,112,1),(547,2,112,1),(548,3,112,1),(549,4,112,1),(550,5,112,1),(551,6,112,1),(552,7,112,1),(553,1,113,1),(554,2,113,1),(555,3,113,1),(556,4,113,1),(557,5,113,1),(558,6,113,1),(559,7,113,1),(560,1,114,1),(561,2,114,0),(562,3,114,0),(563,4,114,0),(564,5,114,0),(565,6,114,0),(566,7,114,0),(567,1,115,1),(568,2,115,0),(569,3,115,0),(570,4,115,0),(571,5,115,0),(572,6,115,0),(573,7,115,0),(574,1,116,1),(575,2,116,0),(576,3,116,0),(577,4,116,0),(578,5,116,0),(579,6,116,0),(580,7,116,0),(581,1,117,1),(582,2,117,0),(583,3,117,0),(584,4,117,0),(585,5,117,0),(586,6,117,0),(587,7,117,0),(588,1,118,0),(589,2,118,0),(590,3,118,0),(591,4,118,0),(592,5,118,1),(593,6,118,0),(594,7,118,0),(595,1,119,1),(596,2,119,1),(597,3,119,1),(598,4,119,0),(599,6,119,1),(600,7,119,0),(601,5,119,0),(602,1,120,1),(603,2,120,0),(604,3,120,0),(605,4,120,0),(606,6,120,0),(607,7,120,0),(608,5,120,0),(609,1,121,1),(610,2,121,0),(611,3,121,0),(612,4,121,0),(613,5,121,0),(614,6,121,0),(615,7,121,0),(616,1,122,1),(617,2,122,0),(618,3,122,0),(619,4,122,0),(620,5,122,0),(621,6,122,0),(622,7,122,0),(623,1,123,1),(624,2,123,1),(625,3,123,1),(626,4,123,0),(627,5,123,0),(628,6,123,0),(629,7,123,0),(630,1,124,1),(631,2,124,1),(632,3,124,1),(633,4,124,1),(634,6,124,1),(635,7,124,1),(636,5,124,1),(637,1,125,1),(638,2,125,1),(639,3,125,1),(640,4,125,0),(641,5,125,0),(642,6,125,0),(643,7,125,0),(644,1,126,1),(645,2,126,0),(646,3,126,0),(647,4,126,0),(648,5,126,0),(649,6,126,0),(650,7,126,0),(651,1,127,1),(652,2,127,0),(653,3,127,0),(654,4,127,0),(655,5,127,0),(656,6,127,0),(657,7,127,0),(658,1,128,1),(659,2,128,0),(660,3,128,0),(661,4,128,0),(662,5,128,0),(663,6,128,0),(664,7,128,0),(665,1,129,1),(666,2,129,0),(667,3,129,0),(668,4,129,0),(669,5,129,0),(670,6,129,0),(671,7,129,0),(672,1,130,1),(673,2,130,0),(674,3,130,0),(675,4,130,0),(676,5,130,0),(677,6,130,0),(678,7,130,0),(679,1,131,1),(680,2,131,1),(681,3,131,1),(682,4,131,0),(683,5,131,0),(684,6,131,0),(685,7,131,0),(686,1,132,1),(687,2,132,0),(688,3,132,0),(689,4,132,0),(690,5,132,0),(691,6,132,0),(692,7,132,0),(693,1,133,1),(694,2,133,1),(695,3,133,1),(696,4,133,1),(697,5,133,0),(698,6,133,0),(699,7,133,0),(700,1,134,1),(701,2,134,0),(702,3,134,0),(703,4,134,0),(704,5,134,0),(705,6,134,0),(706,7,134,0),(707,1,135,1),(708,2,135,0),(709,3,135,0),(710,4,135,0),(711,5,135,0),(712,6,135,0),(713,7,135,0),(714,1,136,1),(715,2,136,0),(716,3,136,0),(717,4,136,0),(718,5,136,0),(719,6,136,0),(720,7,136,0),(721,1,137,1),(722,2,137,0),(723,3,137,0),(724,4,137,0),(725,5,137,0),(726,6,137,0),(727,7,137,0),(728,1,138,1),(729,2,138,0),(730,3,138,0),(731,4,138,0),(732,5,138,0),(733,6,138,0),(734,7,138,0),(735,1,139,1),(736,2,139,0),(737,3,139,0),(738,4,139,0),(739,5,139,0),(740,6,139,0),(741,7,139,0),(742,1,140,1),(743,2,140,0),(744,3,140,0),(745,4,140,0),(746,5,140,0),(747,6,140,0),(748,7,140,0),(749,1,78,1),(750,2,78,0),(751,3,78,0),(752,4,78,0),(753,5,78,0),(754,6,78,0),(755,7,78,0),(756,1,83,1),(757,2,83,0),(758,3,83,0),(759,4,83,0),(760,5,83,0),(761,6,83,0),(762,7,83,0),(763,1,141,1),(764,2,141,0),(765,3,141,0),(766,4,141,0),(767,5,141,0),(768,6,141,0),(769,7,141,0),(770,1,142,1),(771,2,142,0),(772,3,142,0),(773,4,142,0),(774,5,142,0),(775,6,142,0),(776,7,142,0),(777,1,143,1),(778,2,143,0),(779,3,143,0),(780,4,143,0),(781,5,143,0),(782,6,143,0),(783,7,143,0),(784,1,144,1),(785,2,144,0),(786,3,144,0),(787,4,144,0),(788,5,144,0),(789,6,144,0),(790,7,144,0),(791,1,145,1),(792,2,145,0),(793,3,145,0),(794,4,145,0),(795,5,145,0),(796,6,145,0),(797,7,145,0),(798,1,146,1),(799,2,146,1),(800,3,146,1),(801,4,146,0),(802,5,146,0),(803,6,146,0),(804,7,146,0),(805,1,150,1),(806,2,150,1),(807,3,150,1),(808,4,150,1),(809,5,150,0),(810,6,150,0),(811,7,150,0),(812,1,147,1),(813,2,147,0),(814,3,147,0),(815,4,147,0),(816,5,147,0),(817,6,147,0),(818,7,147,0),(819,1,148,1),(820,2,148,0),(821,3,148,0),(822,4,148,0),(823,5,148,0),(824,6,148,0),(825,7,148,0),(826,1,149,1),(827,2,149,0),(828,3,149,0),(829,4,149,0),(830,5,149,0),(831,6,149,0),(832,7,149,0),(833,1,153,1),(834,2,153,1),(835,3,153,1),(836,4,153,0),(837,5,153,0),(838,6,153,0),(839,7,153,0),(840,1,154,1),(841,2,154,1),(842,3,154,1),(843,4,154,0),(844,5,154,0),(845,6,154,0),(846,7,154,0),(847,1,155,1),(848,2,155,0),(849,3,155,0),(850,4,155,0),(851,5,155,0),(852,6,155,0),(853,7,155,0),(854,1,156,1),(855,2,156,0),(856,3,156,0),(857,4,156,0),(858,5,156,0),(859,6,156,0),(860,7,156,0),(861,1,157,1),(862,2,157,0),(863,3,157,0),(864,4,157,0),(865,6,157,0),(866,7,157,0),(867,5,157,0),(868,1,158,1),(869,1,159,1),(870,2,159,1),(871,3,159,1),(872,1,160,1),(873,1,161,1),(874,1,162,1),(875,1,163,1),(876,1,164,1),(877,1,165,1),(878,1,166,1),(879,1,167,1),(880,2,167,1),(881,3,167,1),(882,1,168,1),(883,2,168,2),(884,3,168,3),(885,1,169,1),(886,1,171,1),(887,1,172,1),(888,1,170,1),(889,1,174,1),(890,1,175,1),(891,2,175,0),(892,3,175,0),(893,4,175,0),(894,5,175,0),(895,6,175,0),(896,7,175,0),(897,1,176,1),(898,2,176,1),(899,3,176,1),(900,1,177,1),(901,2,177,1),(902,3,177,1),(903,4,177,1),(904,5,177,0),(905,6,177,0),(906,7,177,0),(907,1,178,1),(908,1,179,1),(909,2,179,1),(910,3,179,1),(911,1,180,1),(912,2,180,0),(913,3,180,0),(914,4,180,0),(915,5,180,0),(916,6,180,0),(917,7,180,0),(918,8,180,0),(919,1,181,1),(920,2,181,1),(921,3,181,1),(922,4,181,0),(923,5,181,0),(924,6,181,0),(925,7,181,0),(926,8,181,0),(927,1,182,1),(928,2,182,1),(929,3,182,1),(930,4,182,0),(931,5,182,0),(932,6,182,0),(933,7,182,0),(934,8,182,0),(935,1,183,1),(936,1,184,1),(937,1,185,1),(938,1,186,1),(939,2,185,1),(940,3,185,1),(941,4,185,1),(942,5,185,1),(943,6,185,1),(944,7,185,1),(945,1,187,1),(946,1,188,1),(947,1,189,1),(948,1,190,1),(949,1,191,1),(950,1,193,1),(951,1,194,1),(952,1,195,1),(953,1,201,1),(954,1,202,1),(955,1,197,1),(956,1,198,1),(957,1,199,1),(958,1,200,1),(959,1,192,1),(960,2,192,1),(961,3,192,1),(962,4,192,1),(963,1,196,1),(964,2,196,1),(965,3,196,1),(966,4,196,1),(967,1,203,1),(968,2,203,1),(969,3,203,1),(970,1,204,1),(971,2,204,1),(972,3,204,1),(973,1,205,1),(974,2,205,1),(975,3,205,1),(976,4,205,1),(977,5,205,1),(978,6,205,1),(979,7,205,1),(980,1,221,1),(981,4,74,1),(982,5,74,0),(983,6,74,0),(984,7,74,0),(985,4,88,0),(986,5,88,0),(987,6,88,0),(988,7,88,0),(989,2,92,0),(990,3,92,0),(991,4,92,0),(992,5,92,0),(993,6,92,0),(994,7,92,0),(995,5,102,0),(996,1,110,1),(997,2,110,1),(998,3,110,1),(999,4,110,1),(1000,5,110,1),(1001,6,110,1),(1002,7,110,1),(1003,2,158,0),(1004,3,158,0),(1005,4,158,0),(1006,5,158,0),(1007,6,158,0),(1008,7,158,0),(1009,1,173,1),(1010,2,173,1),(1011,3,173,1),(1012,4,173,0),(1013,5,173,0),(1014,6,173,0),(1015,7,173,0),(1016,1,208,0),(1017,2,208,0),(1018,3,208,0),(1019,4,208,0),(1020,5,208,0),(1021,6,208,0),(1022,7,208,0),(1023,5,192,0),(1024,6,192,0),(1025,7,192,0),(1026,4,167,0),(1027,5,167,0),(1028,6,167,0),(1029,7,167,0),(1030,4,168,0),(1031,5,168,0),(1032,6,168,0),(1033,7,168,0),(1034,4,176,0),(1035,5,176,0),(1036,6,176,0),(1037,7,176,0),(1038,4,61,0),(1039,5,61,0),(1040,6,61,0),(1041,7,61,0),(1042,5,196,0),(1043,6,196,0),(1044,7,196,0),(1045,4,203,0),(1046,5,203,0),(1047,6,203,0),(1048,7,203,0),(1049,4,204,0),(1050,5,204,0),(1051,6,204,0),(1052,7,204,0),(1053,2,187,0),(1054,3,187,0),(1055,4,187,0),(1056,5,187,0),(1057,6,187,0),(1058,7,187,0),(1059,4,79,0),(1060,5,79,0),(1061,6,79,0),(1062,7,79,0),(1063,2,72,0),(1064,3,72,0),(1065,4,72,0),(1066,5,72,0),(1067,6,72,0),(1068,7,72,0),(1069,4,85,0),(1070,5,85,0),(1071,6,85,0),(1072,7,85,0),(1073,2,95,0),(1074,3,95,0),(1075,4,95,0),(1076,5,95,0),(1077,6,95,0),(1078,7,95,0),(1079,2,103,0),(1080,4,103,0),(1081,5,103,0),(1082,6,103,0),(1083,7,103,0),(1084,2,104,0),(1085,3,104,0),(1086,4,104,0),(1087,5,104,0),(1088,6,104,0),(1089,7,104,0),(1090,2,188,0),(1091,3,188,0),(1092,4,188,0),(1093,5,188,0),(1094,6,188,0),(1095,7,188,0),(1096,2,73,0),(1097,3,73,0),(1098,4,73,0),(1099,5,73,0),(1100,6,73,0),(1101,7,73,0),(1102,2,163,0),(1103,3,163,0),(1104,4,163,0),(1105,5,163,0),(1106,6,163,0),(1107,7,163,0),(1108,2,164,0),(1109,3,164,0),(1110,4,164,0),(1111,5,164,0),(1112,6,164,0),(1113,7,164,0),(1114,2,170,0),(1115,3,170,0),(1116,4,170,0),(1117,5,170,0),(1118,6,170,0),(1119,7,170,0),(1120,2,171,0),(1121,3,171,0),(1122,4,171,0),(1123,5,171,0),(1124,6,171,0),(1125,7,171,0),(1126,2,172,0),(1127,3,172,0),(1128,4,172,0),(1129,5,172,0),(1130,6,172,0),(1131,7,172,0),(1132,2,178,0),(1133,3,178,0),(1134,4,178,0),(1135,5,178,0),(1136,6,178,0),(1137,7,178,0),(1138,2,199,0),(1139,3,199,0),(1140,4,199,0),(1141,5,199,0),(1142,6,199,0),(1143,7,199,0),(1144,2,200,0),(1145,3,200,0),(1146,4,200,0),(1147,5,200,0),(1148,6,200,0),(1149,7,200,0),(1150,5,70,0),(1151,5,71,0),(1152,2,221,0),(1153,3,221,0),(1154,4,221,0),(1155,5,221,0),(1156,6,221,0),(1157,7,221,0),(1158,1,151,1),(1159,2,151,1),(1160,3,151,1),(1161,4,151,1),(1162,5,151,0),(1163,6,151,0),(1164,7,151,0),(1165,1,152,1),(1166,2,152,1),(1167,3,152,1),(1168,4,152,0),(1169,5,152,0),(1170,6,152,0),(1171,7,152,0),(1172,2,60,0),(1173,3,60,0),(1174,4,60,0),(1175,5,60,0),(1176,6,60,0),(1177,7,60,0),(1178,3,80,0),(1179,4,80,0),(1180,5,80,0),(1181,6,80,0),(1182,7,80,0),(1183,3,81,0),(1184,4,81,0),(1185,5,81,0),(1186,6,81,0),(1187,7,81,0),(1188,3,82,0),(1189,4,82,0),(1190,5,82,0),(1191,6,82,0),(1192,7,82,0),(1193,3,84,0),(1194,4,84,0),(1195,5,84,0),(1196,6,84,0),(1197,7,84,0),(1198,4,93,0),(1199,5,93,0),(1200,6,93,0),(1201,7,93,0),(1202,2,100,0),(1203,3,100,0),(1204,4,100,0),(1205,5,100,0),(1206,6,100,0),(1207,7,100,0),(1208,2,101,0),(1209,3,101,0),(1210,4,101,0),(1211,5,101,0),(1212,6,101,0),(1213,7,101,0),(1214,2,105,0),(1215,3,105,0),(1216,4,105,0),(1217,5,105,0),(1218,6,105,0),(1219,7,105,0),(1220,4,159,0),(1221,5,159,0),(1222,6,159,0),(1223,7,159,0),(1224,2,160,0),(1225,3,160,0),(1226,4,160,0),(1227,5,160,0),(1228,6,160,0),(1229,7,160,0),(1230,2,161,0),(1231,3,161,0),(1232,4,161,0),(1233,5,161,0),(1234,6,161,0),(1235,7,161,0),(1236,2,165,0),(1237,3,165,0),(1238,4,165,0),(1239,5,165,0),(1240,6,165,0),(1241,7,165,0),(1242,2,166,0),(1243,3,166,0),(1244,4,166,0),(1245,5,166,0),(1246,6,166,0),(1247,7,166,0),(1248,2,183,0),(1249,3,183,0),(1250,4,183,0),(1251,5,183,0),(1252,6,183,0),(1253,7,183,0),(1254,2,190,0),(1255,3,190,0),(1256,4,190,0),(1257,5,190,0),(1258,6,190,0),(1259,7,190,0),(1260,2,193,0),(1261,3,193,0),(1262,4,193,0),(1263,5,193,0),(1264,6,193,0),(1265,7,193,0),(1266,2,198,0),(1267,3,198,0),(1268,4,198,0),(1269,5,198,0),(1270,6,198,0),(1271,7,198,0),(1272,2,202,0),(1273,3,202,0),(1274,4,202,0),(1275,5,202,0),(1276,6,202,0),(1277,7,202,0),(1278,2,59,0),(1279,3,59,0),(1280,4,59,0),(1281,5,59,0),(1282,6,59,0),(1283,7,59,0),(1284,4,89,0),(1285,5,89,0),(1286,6,89,0),(1287,7,89,0),(1288,4,90,0),(1289,5,90,0),(1290,6,90,0),(1291,7,90,0),(1292,2,162,0),(1293,3,162,0),(1294,4,162,0),(1295,5,162,0),(1296,6,162,0),(1297,7,162,0),(1298,2,169,0),(1299,3,169,0),(1300,4,169,0),(1301,5,169,0),(1302,6,169,0),(1303,7,169,0),(1304,2,184,0),(1305,3,184,0),(1306,4,184,0),(1307,5,184,0),(1308,6,184,0),(1309,7,184,0),(1310,2,186,0),(1311,3,186,0),(1312,4,186,0),(1313,5,186,0),(1314,6,186,0),(1315,7,186,0),(1316,2,189,0),(1317,3,189,0),(1318,4,189,0),(1319,5,189,0),(1320,6,189,0),(1321,7,189,0),(1322,5,75,0),(1323,6,75,0),(1324,7,75,0),(1325,4,76,0),(1326,5,76,0),(1327,6,76,0),(1328,7,76,0),(1329,2,191,0),(1330,3,191,0),(1331,4,191,0),(1332,5,191,0),(1333,6,191,0),(1334,7,191,0),(1335,2,194,0),(1336,3,194,0),(1337,4,194,0),(1338,5,194,0),(1339,6,194,0),(1340,7,194,0),(1341,2,195,0),(1342,3,195,0),(1343,4,195,0),(1344,5,195,0),(1345,6,195,0),(1346,7,195,0),(1347,2,197,0),(1348,3,197,0),(1349,4,197,0),(1350,5,197,0),(1351,6,197,0),(1352,7,197,0),(1353,2,201,0),(1354,3,201,0),(1355,4,201,0),(1356,5,201,0),(1357,6,201,0),(1358,7,201,0),(1359,2,94,0),(1360,3,94,0),(1361,4,94,0),(1362,5,94,0),(1363,6,94,0),(1364,7,94,0),(1365,2,96,0),(1366,3,96,0),(1367,4,96,0),(1368,5,96,0),(1369,6,96,0),(1370,7,96,0),(1371,2,97,0),(1372,3,97,0),(1373,4,97,0),(1374,5,97,0),(1375,6,97,0),(1376,7,97,0),(1377,2,174,0),(1378,3,174,0),(1379,4,174,0),(1380,5,174,0),(1381,6,174,0),(1382,7,174,0),(1383,4,86,0),(1384,5,86,0),(1385,6,86,0),(1386,7,86,0),(1387,4,87,0),(1388,5,87,0),(1389,6,87,0),(1390,7,87,0),(1391,4,179,0),(1392,5,179,0),(1393,6,179,0),(1394,7,179,0),(1395,1,209,0),(1396,2,209,0),(1397,3,209,0),(1398,4,209,0),(1399,5,209,0),(1400,6,209,0),(1401,7,209,0),(1402,1,210,0),(1403,2,210,0),(1404,3,210,0),(1405,4,210,0),(1406,5,210,0),(1407,6,210,0),(1408,7,210,0),(1409,1,211,0),(1410,2,211,0),(1411,3,211,0),(1412,4,211,0),(1413,5,211,0),(1414,6,211,0),(1415,7,211,0),(1416,1,212,0),(1417,2,212,0),(1418,3,212,0),(1419,4,212,0),(1420,5,212,0),(1421,6,212,0),(1422,7,212,0),(1423,1,213,0),(1424,2,213,0),(1425,3,213,0),(1426,4,213,0),(1427,5,213,0),(1428,6,213,0),(1429,7,213,0),(1430,1,214,0),(1431,2,214,0),(1432,3,214,0),(1433,4,214,0),(1434,5,214,0),(1435,6,214,0),(1436,7,214,0),(1437,1,215,0),(1438,2,215,0),(1439,3,215,0),(1440,4,215,0),(1441,5,215,0),(1442,6,215,0),(1443,7,215,0),(1444,1,216,0),(1445,2,216,0),(1446,3,216,0),(1447,4,216,0),(1448,5,216,0),(1449,6,216,0),(1450,7,216,0),(1451,1,217,0),(1452,2,217,0),(1453,3,217,0),(1454,4,217,0),(1455,5,217,0),(1456,6,217,0),(1457,7,217,0),(1458,1,218,0),(1459,2,218,0),(1460,3,218,0),(1461,4,218,0),(1462,5,218,0),(1463,6,218,0),(1464,7,218,0),(1465,1,219,0),(1466,2,219,0),(1467,3,219,0),(1468,4,219,0),(1469,5,219,0),(1470,6,219,0),(1471,7,219,0),(1472,1,220,0),(1473,2,220,0),(1474,3,220,0),(1475,4,220,0),(1476,5,220,0),(1477,6,220,0),(1478,7,220,0);
/*!40000 ALTER TABLE `habilitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habilitationother`
--

DROP TABLE IF EXISTS `habilitationother`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habilitationother` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProfile` int(12) unsigned DEFAULT NULL,
  `scope` varchar(20) DEFAULT NULL,
  `rightAccess` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `habilitationotherProfile` (`idProfile`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habilitationother`
--

LOCK TABLES `habilitationother` WRITE;
/*!40000 ALTER TABLE `habilitationother` DISABLE KEYS */;
INSERT INTO `habilitationother` VALUES (1,1,'imputation','4'),(2,2,'imputation','2'),(3,3,'imputation','3'),(4,4,'imputation','2'),(5,6,'imputation','1'),(6,7,'imputation','1'),(7,5,'imputation','1'),(8,1,'work','4'),(9,2,'work','4'),(10,3,'work','4'),(11,4,'work','4'),(12,6,'work','2'),(13,7,'work','1'),(14,5,'work','1'),(15,1,'cost','4'),(16,2,'cost','4'),(17,3,'cost','4'),(18,4,'cost','1'),(19,6,'cost','2'),(20,7,'cost','1'),(21,5,'cost','1'),(22,1,'combo','1'),(23,2,'combo','2'),(24,3,'combo','1'),(25,4,'combo','2'),(26,6,'combo','2'),(27,7,'combo','2'),(28,5,'combo','2'),(29,1,'planning','1'),(30,2,'planning','2'),(31,3,'planning','1'),(32,4,'planning','2'),(33,6,'planning','2'),(34,7,'planning','2'),(35,5,'planning','2'),(36,1,'document','1'),(37,2,'document','2'),(38,3,'document','1'),(39,4,'document','2'),(40,6,'document','2'),(41,7,'document','2'),(42,5,'document','2'),(43,1,'requirement','1'),(44,2,'requirement','2'),(45,3,'requirement','1'),(46,4,'requirement','2'),(47,6,'requirement','2'),(48,7,'requirement','2'),(49,5,'requirement','2'),(50,1,'workValid','4'),(51,2,'workValid','2'),(52,3,'workValid','3'),(53,4,'workValid','1'),(54,6,'workValid','1'),(55,7,'workValid','1'),(56,5,'workValid','1'),(57,1,'checklist','1'),(58,2,'checklist','1'),(59,3,'checklist','1'),(60,4,'checklist','1'),(61,6,'checklist','2'),(62,7,'checklist','2'),(63,5,'checklist','2'),(64,1,'assignmentView','1'),(65,2,'assignmentView','1'),(66,3,'assignmentView','1'),(67,4,'assignmentView','1'),(68,6,'assignmentView','2'),(69,7,'assignmentView','2'),(70,5,'assignmentView','2'),(71,1,'assignmentEdit','1'),(72,2,'assignmentEdit','2'),(73,3,'assignmentEdit','1'),(74,4,'assignmentEdit','2'),(75,6,'assignmentEdit','2'),(76,7,'assignmentEdit','2'),(77,5,'assignmentEdit','2'),(78,1,'diary','4'),(79,2,'diary','2'),(80,3,'diary','3'),(81,4,'diary','2'),(82,6,'diary','1'),(83,7,'diary','1'),(84,5,'diary','1'),(85,1,'resourcePlanning','1'),(86,2,'resourcePlanning','1'),(87,3,'resourcePlanning','1'),(88,4,'resourcePlanning','2'),(89,6,'resourcePlanning','2'),(90,7,'resourcePlanning','2'),(91,5,'resourcePlanning','2'),(92,1,'reportResourceAll','1'),(93,2,'reportResourceAll','1'),(94,3,'reportResourceAll','1'),(95,4,'reportResourceAll','2'),(96,6,'reportResourceAll','2'),(97,7,'reportResourceAll','2'),(98,5,'reportResourceAll','2'),(99,1,'canUpdateCreation','1'),(100,2,'canUpdateCreation','2'),(101,3,'canUpdateCreation','2'),(102,4,'canUpdateCreation','2'),(103,6,'canUpdateCreation','2'),(104,7,'canUpdateCreation','2'),(105,5,'canUpdateCreation','2'),(106,1,'viewComponents','1'),(107,2,'viewComponents','1'),(108,3,'viewComponents','1'),(109,4,'viewComponents','1'),(110,6,'viewComponents','2'),(111,7,'viewComponents','2'),(112,5,'viewComponents','2'),(113,1,'joblist','1'),(114,2,'joblist','1'),(115,3,'joblist','1'),(116,4,'joblist','1'),(117,6,'joblist','2'),(118,7,'joblist','2'),(119,5,'joblist','2'),(120,1,'changeValidatedData','1'),(121,2,'changeValidatedData','1'),(122,3,'changeValidatedData','1'),(123,4,'changeValidatedData','2'),(124,6,'changeValidatedData','2'),(125,7,'changeValidatedData','2'),(126,5,'changeValidatedData','2'),(127,1,'subscription','4'),(128,3,'subscription','3'),(129,1,'multipleUpdate','1'),(130,2,'multipleUpdate','1'),(131,3,'multipleUpdate','1'),(132,4,'multipleUpdate','1'),(133,5,'multipleUpdate','1'),(134,6,'multipleUpdate','1'),(135,7,'multipleUpdate','1'),(136,1,'changeManualProgress','1'),(137,3,'changeManualProgress','1'),(138,1,'changePriority','1'),(139,2,'changePriority','1'),(140,3,'changePriority','1'),(141,4,'changePriority','2'),(142,6,'changePriority','2'),(143,7,'changePriority','2'),(144,5,'changePriority','2'),(145,1,'scheduledReport','4'),(146,2,'scheduledReport','2'),(147,3,'scheduledReport','2'),(148,4,'scheduledReport','2'),(149,5,'scheduledReport','2'),(150,6,'scheduledReport','2'),(151,7,'scheduledReport','2');
/*!40000 ALTER TABLE `habilitationother` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habilitationreport`
--

DROP TABLE IF EXISTS `habilitationreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habilitationreport` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProfile` int(12) unsigned DEFAULT NULL,
  `idReport` int(12) unsigned DEFAULT NULL,
  `allowAccess` int(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `habilitationReportProfile` (`idProfile`),
  KEY `habilitationReportReport` (`idReport`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habilitationreport`
--

LOCK TABLES `habilitationreport` WRITE;
/*!40000 ALTER TABLE `habilitationreport` DISABLE KEYS */;
INSERT INTO `habilitationreport` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,1,4,1),(5,1,5,1),(6,1,6,1),(7,1,7,1),(8,1,8,1),(9,1,9,1),(10,1,10,1),(11,1,11,1),(12,1,12,1),(13,1,13,1),(14,1,14,1),(15,1,15,1),(16,1,16,1),(17,1,17,1),(18,1,18,1),(19,1,19,1),(20,1,20,1),(21,1,21,1),(22,1,22,1),(23,1,23,1),(24,1,24,1),(25,1,25,1),(26,2,1,1),(27,2,2,1),(28,2,3,1),(29,2,4,1),(30,2,5,1),(31,2,6,1),(32,2,7,1),(33,2,8,1),(34,2,9,1),(35,2,10,1),(36,2,11,1),(37,2,12,1),(38,2,13,1),(39,2,14,1),(40,2,15,1),(41,2,16,1),(42,2,17,1),(43,2,18,1),(44,2,19,1),(45,2,20,1),(46,2,21,1),(47,2,22,1),(48,2,23,1),(49,3,1,1),(50,3,2,1),(51,3,3,1),(52,3,4,1),(53,3,5,1),(54,3,6,1),(55,3,7,1),(56,3,8,1),(57,3,9,1),(58,3,10,1),(59,3,11,1),(60,3,12,1),(61,3,13,1),(62,3,14,1),(63,3,15,1),(64,3,16,1),(65,3,17,1),(66,3,18,1),(67,3,19,1),(68,3,20,1),(69,3,21,1),(70,3,22,1),(71,3,23,1),(72,1,26,1),(73,1,27,1),(74,2,26,1),(75,2,27,1),(76,3,26,1),(77,3,27,1),(78,1,28,1),(79,1,29,1),(80,1,30,1),(81,2,28,1),(82,2,29,1),(83,2,30,1),(84,3,28,1),(85,3,29,1),(86,3,30,1),(87,1,31,1),(88,2,31,1),(89,3,31,1),(90,1,32,1),(91,2,32,1),(92,3,32,1),(93,1,33,1),(94,2,33,1),(95,3,33,1),(96,1,34,1),(97,2,34,1),(98,3,34,1),(99,1,35,1),(100,2,35,1),(101,3,35,1),(102,1,36,1),(103,2,36,1),(104,3,36,1),(105,1,37,1),(106,2,37,0),(107,3,37,0),(108,4,37,0),(109,5,37,0),(110,6,37,0),(111,7,37,0),(112,1,38,1),(113,2,38,1),(114,3,38,1),(115,4,38,0),(116,5,38,0),(117,6,38,0),(118,7,38,0),(119,1,39,1),(120,2,39,1),(121,3,39,1),(122,4,39,0),(123,5,39,0),(124,6,39,0),(125,7,39,0),(126,1,40,1),(127,2,40,1),(128,3,40,1),(129,4,40,0),(130,5,40,0),(131,6,40,0),(132,7,40,0),(133,1,44,1),(134,2,44,1),(135,3,44,1),(136,4,44,0),(137,5,44,0),(138,6,44,0),(139,7,44,0),(140,1,41,1),(141,2,41,1),(142,3,41,1),(143,4,41,0),(144,5,41,0),(145,6,41,0),(146,7,41,0),(147,1,42,1),(148,2,42,1),(149,3,42,1),(150,4,42,0),(151,5,42,0),(152,6,42,0),(153,7,42,0),(154,1,43,1),(155,2,43,1),(156,3,43,1),(157,4,43,0),(158,5,43,0),(159,6,43,0),(160,7,43,0),(161,1,45,1),(162,2,45,1),(163,3,45,0),(164,4,45,0),(165,1,46,1),(166,2,46,1),(167,3,46,0),(168,4,46,0),(169,1,48,1),(170,2,48,0),(171,3,48,0),(172,4,48,0),(177,1,49,1),(178,2,49,1),(179,3,49,1),(180,1,50,1),(181,2,50,1),(182,3,50,1),(183,1,52,1),(184,2,52,1),(185,3,52,1),(186,1,53,1),(187,2,53,1),(188,3,53,1),(189,4,53,0),(190,5,53,0),(191,6,53,0),(192,7,53,0),(193,1,54,1),(194,2,54,1),(195,3,54,1),(196,4,54,1),(197,5,54,0),(198,6,54,0),(199,7,54,0),(200,1,55,1),(201,2,55,1),(202,3,55,1),(203,4,55,1),(204,5,55,0),(205,6,55,0),(206,7,55,0),(207,1,56,1),(208,2,56,1),(209,3,56,1),(210,4,56,1),(211,5,56,0),(212,6,56,0),(213,7,56,0),(214,1,57,1),(215,2,57,1),(216,3,57,1),(217,4,57,1),(218,1,58,1),(219,2,58,1),(220,3,58,1),(221,4,58,1),(222,1,59,1),(223,2,59,1),(224,3,59,1),(225,1,60,1),(226,2,60,1),(227,3,60,1),(228,1,61,1),(229,2,61,1),(230,3,61,1),(231,1,62,1),(232,2,62,1),(233,3,62,1),(234,1,63,1),(235,2,63,1),(236,3,63,1),(237,1,64,1),(238,2,64,1),(239,3,64,1),(240,1,65,1),(241,2,65,1),(242,1,66,1),(243,2,66,1),(244,3,66,1),(245,1,67,1),(246,2,67,1),(247,1,68,1),(248,2,68,1),(249,3,68,1),(250,1,69,1),(251,2,69,1),(252,3,69,1),(253,1,70,1),(254,2,70,1),(255,1,71,1),(256,2,71,1),(257,3,71,1),(258,1,72,1),(259,2,72,1),(260,1,73,1),(261,2,73,1),(262,3,73,1),(263,1,74,1),(264,2,74,1),(265,3,74,1),(266,1,75,1),(267,1,76,1),(268,2,76,1),(269,3,76,1),(270,4,76,1),(271,1,77,1),(272,2,77,1),(273,3,77,1),(274,4,77,1),(275,1,78,1),(276,2,78,1),(277,3,78,1),(278,4,78,1),(279,1,79,1),(280,1,80,1),(281,1,81,1),(282,1,82,1),(283,1,83,1),(284,1,84,1),(285,2,84,1),(286,3,84,1),(287,1,86,1),(288,2,86,1),(289,3,86,1),(290,1,87,1),(291,2,87,1),(292,3,87,1),(294,2,81,1),(295,3,81,1),(296,1,88,1),(297,2,88,1),(298,3,88,1),(299,1,89,1),(300,2,89,1),(301,3,89,1),(302,1,90,1),(303,2,90,1),(304,3,90,1),(305,1,91,1),(306,2,91,1),(307,3,91,1),(308,1,92,1),(309,2,92,1),(310,3,92,1);
/*!40000 ALTER TABLE `habilitationreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health`
--

DROP TABLE IF EXISTS `health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `health` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health`
--

LOCK TABLES `health` WRITE;
/*!40000 ALTER TABLE `health` DISABLE KEYS */;
INSERT INTO `health` VALUES (1,'secured','#32CD32',100,0,NULL),(2,'surveyed','#ffd700',200,0,NULL),(3,'in danger','#FF0000',300,0,NULL),(4,'crashed','#000000',400,0,NULL),(5,'paused','#E0E0E0',500,0,NULL);
/*!40000 ALTER TABLE `health` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `refType` varchar(100) NOT NULL,
  `refId` int(12) unsigned NOT NULL,
  `operation` varchar(10) DEFAULT NULL,
  `colName` varchar(200) DEFAULT NULL,
  `oldValue` mediumtext DEFAULT NULL,
  `newValue` mediumtext DEFAULT NULL,
  `operationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `idUser` int(12) unsigned DEFAULT NULL,
  `isWorkHistory` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `historyUser` (`idUser`),
  KEY `historyRef` (`refType`,`refId`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,'User',1,'update','apiKey',NULL,'dfe6ae22e1fe4bb3ddf57e37f984677a','2019-06-13 14:11:46',NULL,0),(2,'User',1,'update','passwordChangeDate',NULL,'2019-06-13','2019-06-13 14:11:46',NULL,0),(3,'User',2,'update','apiKey',NULL,'38acd72bad8332260fb7a13ba11ff3e7','2019-06-13 14:11:46',NULL,0),(4,'User',2,'update','passwordChangeDate',NULL,'2019-06-13','2019-06-13 14:11:46',NULL,0),(5,'DeliveryType',146,'insert',NULL,NULL,NULL,'2019-06-13 14:11:47',NULL,0),(6,'DeliveryType',147,'insert',NULL,NULL,NULL,'2019-06-13 14:11:48',NULL,0),(7,'DeliveryType',148,'insert',NULL,NULL,NULL,'2019-06-13 14:11:48',NULL,0),(8,'CronExecution',3,'update','idle','1','0','2019-06-13 14:11:49',NULL,0),(9,'CronExecution',4,'update','idle','1','0','2019-06-13 14:11:50',NULL,0),(10,'CronExecution',5,'update','idle','1','0','2019-06-13 14:11:51',NULL,0),(11,'Module',13,'update','active','1','0','2019-06-13 14:11:51',NULL,0),(12,'ModuleMenu',56,'update','active','1','0','2019-06-13 14:11:51',NULL,0),(13,'ModuleMenu',64,'update','active','1','0','2019-06-13 14:11:52',NULL,0),(14,'Habilitation',487,'delete',NULL,NULL,NULL,'2019-06-13 14:11:54',NULL,0),(15,'Habilitation',509,'delete',NULL,NULL,NULL,'2019-06-13 14:11:54',NULL,0),(16,'HabilitationReport',173,'delete',NULL,NULL,NULL,'2019-06-13 14:11:54',NULL,0),(17,'HabilitationReport',174,'delete',NULL,NULL,NULL,'2019-06-13 14:11:54',NULL,0),(18,'HabilitationReport',175,'delete',NULL,NULL,NULL,'2019-06-13 14:11:55',NULL,0),(19,'HabilitationReport',176,'delete',NULL,NULL,NULL,'2019-06-13 14:11:55',NULL,0),(20,'HabilitationReport',293,'delete',NULL,NULL,NULL,'2019-06-13 14:11:55',NULL,0),(21,'Module',12,'update','active','0','1','2019-06-13 14:16:08',1,0),(22,'Notifiable',27,'insert',NULL,NULL,NULL,'2019-06-13 14:16:08',1,0),(23,'Notifiable',28,'insert',NULL,NULL,NULL,'2019-06-13 14:16:08',1,0),(24,'Notifiable',29,'insert',NULL,NULL,NULL,'2019-06-13 14:16:08',1,0),(25,'Notifiable',30,'insert',NULL,NULL,NULL,'2019-06-13 14:16:08',1,0),(26,'Notifiable',31,'insert',NULL,NULL,NULL,'2019-06-13 14:16:08',1,0),(27,'Workflow',9,'insert',NULL,NULL,NULL,'2019-06-13 14:16:08',1,0),(28,'Status',15,'insert',NULL,NULL,NULL,'2019-06-13 14:16:08',1,0),(29,'Status',16,'insert',NULL,NULL,NULL,'2019-06-13 14:16:08',1,0),(30,'Status',17,'insert',NULL,NULL,NULL,'2019-06-13 14:16:08',1,0),(31,'Project',1,'insert',NULL,NULL,NULL,'2019-06-13 14:16:08',1,0),(32,'ProjectPlanningElement',1,'insert',NULL,NULL,NULL,'2019-06-13 14:16:08',1,0),(33,'Project',1,'update','sortOrder',NULL,'00001','2019-06-13 14:16:08',1,0),(34,'ProjectPlanningElement',1,'update','needReplan','0','1','2019-06-13 14:16:08',1,0),(35,'Type',149,'insert',NULL,NULL,NULL,'2019-06-13 14:16:08',1,0),(36,'Type',150,'insert',NULL,NULL,NULL,'2019-06-13 14:16:08',1,0),(37,'Type',151,'insert',NULL,NULL,NULL,'2019-06-13 14:16:08',1,0),(38,'EmploymentContractType',1,'insert',NULL,NULL,NULL,'2019-06-13 14:16:09',1,0),(39,'Module',13,'update','active','0','1','2019-06-13 14:16:12',1,0),(40,'ModuleMenu',56,'update','active','0','1','2019-06-13 14:16:12',1,0),(41,'ModuleMenu',64,'update','active','0','1','2019-06-13 14:16:12',1,0),(42,'ProjectPlanningElement',1,'update','needReplan','1','0','2019-06-14 07:39:51',NULL,0);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `importable`
--

DROP TABLE IF EXISTS `importable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `importable` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `importable`
--

LOCK TABLES `importable` WRITE;
/*!40000 ALTER TABLE `importable` DISABLE KEYS */;
INSERT INTO `importable` VALUES (1,'Ticket',0),(2,'Activity',0),(3,'Milestone',0),(4,'Risk',0),(5,'Action',0),(6,'Issue',0),(7,'Meeting',0),(8,'Decision',0),(9,'Question',0),(10,'IndividualExpense',0),(11,'ProjectExpense',0),(12,'Client',0),(13,'Contact',0),(14,'Project',0),(15,'Team',0),(16,'Resource',0),(17,'Affectation',0),(18,'Assignment',0),(19,'Product',0),(20,'ProductVersion',0),(21,'Document',0),(22,'Requirement',0),(23,'TestCase',0),(24,'TestSession',0),(25,'TestCaseRun',0),(26,'Opportunity',0),(27,'Command',0),(28,'Quotation',0),(29,'Work',0),(30,'Component',0),(31,'ComponentVersion',0),(32,'ProductStructure',0),(33,'Bill',0),(34,'Payment',0),(35,'ResourceCost',0),(42,'DocumentDirectory',0),(43,'Provider',0),(44,'User',0),(45,'DocumentVersion',0),(46,'Organization',0),(47,'Deliverable',0),(48,'Incoming',0),(49,'Delivery',0),(50,'Tender',0),(51,'CallForTender',0),(52,'ActivityPrice',0),(53,'Term',0);
/*!40000 ALTER TABLE `importable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `importlog`
--

DROP TABLE IF EXISTS `importlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `importlog` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `mode` varchar(10) DEFAULT 'manual',
  `importDateTime` datetime DEFAULT NULL,
  `importFile` varchar(1000) DEFAULT NULL,
  `importClass` varchar(100) DEFAULT NULL,
  `importStatus` varchar(10) DEFAULT NULL,
  `importTodo` int(6) DEFAULT NULL,
  `importDone` int(6) DEFAULT NULL,
  `importDoneCreated` int(6) DEFAULT NULL,
  `importDoneModified` int(6) DEFAULT NULL,
  `importDoneUnchanged` int(6) DEFAULT NULL,
  `importRejected` int(6) DEFAULT NULL,
  `importRejectedInvalid` int(6) DEFAULT NULL,
  `importRejectedError` int(6) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `importlog`
--

LOCK TABLES `importlog` WRITE;
/*!40000 ALTER TABLE `importlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `importlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicator`
--

DROP TABLE IF EXISTS `indicator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicator` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `sortOrder` int(3) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `targetDateColumnName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicator`
--

LOCK TABLES `indicator` WRITE;
/*!40000 ALTER TABLE `indicator` DISABLE KEYS */;
INSERT INTO `indicator` VALUES (1,'initialDueDateTime','IDDT','delay',110,0,NULL),(2,'actualDueDateTime','ADDT','delay',120,0,NULL),(3,'initialDueDate','IDD','delay',130,0,NULL),(4,'actualDueDate','ADD','delay',140,0,NULL),(5,'initialEndDate','IED','delay',150,0,NULL),(6,'validatedEndDate','VED','delay',160,0,NULL),(7,'plannedEndDate','PED','delay',170,0,NULL),(8,'initialStartDate','ISD','delay',180,0,NULL),(9,'validatedStartDate','VSD','delay',190,0,NULL),(10,'plannedStartDate','PSD','delay',200,0,NULL),(11,'PlannedCostOverValidatedCost','PCOVC','percent',210,0,NULL),(12,'PlannedCostOverAssignedCost','PCOAC','percent',220,0,NULL),(13,'PlannedWorkOverValidatedWork','PWOVW','percent',230,0,NULL),(14,'PlannedWorkOverAssignedWork','PWOAW','percent',240,0,NULL),(15,'RealWorkOverValidatedWork','RWOVW','percent',250,0,NULL),(16,'RealWorkOverAssignedWork','RWOAW','percent',260,0,NULL),(17,'expectedTenderDateTime','DELAY','delay',310,0,'receptionDateTime'),(18,'expensePlannedDate','DELAY','delay',320,0,'expenseRealDate'),(19,'deliveryDate','DELAY','delay',330,0,'receptionDate'),(20,'validityEndDate','DELAY','delay',340,0,'idleDate'),(21,'validatedDate','DELAY','delay',350,0,'idBill'),(22,'plannedDate','DELAY','delay',360,0,'idBill'),(23,'date','DELAY','delay',370,0,'idBill'),(24,'paymentDueDate','DELAY','delay',380,0,'paymentDate'),(25,'meetingDate','DELAY','delay',390,0,'done'),(26,'date','DELAY','delay',400,0,'sendDate'),(27,'deliveryExpectedDate','DELAY','delay',410,0,'deliveryDoneDate'),(28,'date','DELAY','delay',420,0,'isPaid');
/*!40000 ALTER TABLE `indicator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicatorable`
--

DROP TABLE IF EXISTS `indicatorable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicatorable` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicatorable`
--

LOCK TABLES `indicatorable` WRITE;
/*!40000 ALTER TABLE `indicatorable` DISABLE KEYS */;
INSERT INTO `indicatorable` VALUES (1,'Ticket',0),(2,'Activity',0),(3,'Milestone',0),(4,'Risk',0),(5,'Action',0),(6,'Issue',0),(7,'Question',0),(8,'Project',0),(9,'TestSession',0),(12,'Requirement',0),(14,'Tender',0),(15,'IndividualExpense',0),(16,'ProjectExpense',0),(17,'Quotation',0),(18,'Command',0),(19,'Term',0),(20,'Bill',0),(21,'Meeting',0),(22,'ProviderOrder',0),(23,'ProviderTerm',0),(24,'ProviderBill',0);
/*!40000 ALTER TABLE `indicatorable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicatorableindicator`
--

DROP TABLE IF EXISTS `indicatorableindicator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicatorableindicator` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idIndicatorable` int(12) unsigned DEFAULT NULL,
  `nameIndicatorable` varchar(100) DEFAULT NULL,
  `idIndicator` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `indicatorableindicatorIndicatorable` (`idIndicatorable`),
  KEY `indicatorableindicatorIndicator` (`idIndicator`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicatorableindicator`
--

LOCK TABLES `indicatorableindicator` WRITE;
/*!40000 ALTER TABLE `indicatorableindicator` DISABLE KEYS */;
INSERT INTO `indicatorableindicator` VALUES (1,1,'Ticket',1,0),(2,1,'Ticket',2,0),(3,4,'Risk',3,0),(4,5,'Action',3,0),(5,6,'Issue',3,0),(6,7,'Question',3,0),(7,4,'Risk',4,0),(8,5,'Action',4,0),(9,6,'Issue',4,0),(10,7,'Question',4,0),(11,2,'Activity',5,0),(12,3,'Milestone',5,0),(13,8,'Project',5,0),(14,2,'Activity',6,0),(15,3,'Milestone',6,0),(16,8,'Project',6,0),(17,2,'Activity',7,0),(18,3,'Milestone',7,0),(19,8,'Project',7,0),(20,2,'Activity',8,0),(21,8,'Project',8,0),(22,2,'Activity',9,0),(23,8,'Project',9,0),(24,2,'Activity',10,0),(25,8,'Project',10,0),(26,2,'Activity',11,0),(27,8,'Project',11,0),(28,2,'Activity',12,0),(29,8,'Project',12,0),(30,2,'Activity',13,0),(31,8,'Project',13,0),(32,2,'Activity',14,0),(33,8,'Project',14,0),(34,2,'Activity',15,0),(35,8,'Project',15,0),(36,2,'Activity',16,0),(37,8,'Project',16,0),(38,9,'TestSession',6,0),(39,9,'TestSession',7,0),(40,9,'TestSession',8,0),(41,9,'TestSession',9,0),(42,9,'TestSession',10,0),(43,9,'TestSession',11,0),(44,9,'TestSession',12,0),(45,9,'TestSession',13,0),(46,9,'TestSession',14,0),(47,9,'TestSession',15,0),(48,9,'TestSession',16,0),(55,12,'Requirement',3,0),(56,12,'Requirement',4,0),(57,14,'Tender',17,0),(58,15,'IndividualExpense',18,0),(59,16,'ProjectExpense',18,0),(60,16,'ProjectExpense',19,0),(61,17,'Quotation',20,0),(62,18,'Command',5,0),(63,18,'Command',6,0),(64,19,'Term',21,0),(65,19,'Term',22,0),(66,19,'Term',23,0),(67,20,'Bill',24,0),(68,21,'Meeting',25,0),(69,20,'Bill',26,0),(70,22,'ProviderOrder',27,0),(71,24,'ProviderBill',24,0),(72,23,'ProviderTerm',28,0);
/*!40000 ALTER TABLE `indicatorableindicator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicatordefinition`
--

DROP TABLE IF EXISTS `indicatordefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicatordefinition` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idIndicatorable` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `nameIndicatorable` varchar(100) DEFAULT NULL,
  `idIndicator` int(12) unsigned DEFAULT NULL,
  `codeIndicator` varchar(10) DEFAULT NULL,
  `typeIndicator` varchar(10) DEFAULT NULL,
  `idType` int(12) unsigned DEFAULT NULL,
  `warningValue` decimal(6,3) DEFAULT NULL,
  `idWarningDelayUnit` int(12) unsigned DEFAULT NULL,
  `codeWarningDelayUnit` varchar(10) DEFAULT NULL,
  `alertValue` decimal(6,3) DEFAULT NULL,
  `idAlertDelayUnit` int(12) unsigned DEFAULT NULL,
  `codeAlertDelayUnit` varchar(10) DEFAULT NULL,
  `mailToUser` int(1) unsigned DEFAULT 0,
  `mailToResource` int(1) unsigned DEFAULT 0,
  `mailToProject` int(1) unsigned DEFAULT 0,
  `mailToContact` int(1) unsigned DEFAULT 0,
  `mailToLeader` int(1) unsigned DEFAULT 0,
  `mailToOther` int(1) unsigned DEFAULT 0,
  `alertToUser` int(1) unsigned DEFAULT 0,
  `alertToResource` int(1) unsigned DEFAULT 0,
  `alertToProject` int(1) unsigned DEFAULT 0,
  `alertToContact` int(1) unsigned DEFAULT 0,
  `alertToLeader` int(1) unsigned DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  `mailToAssigned` int(1) unsigned DEFAULT 0,
  `mailToManager` int(1) unsigned DEFAULT 0,
  `otherMail` varchar(4000) DEFAULT NULL,
  `alertToAssigned` int(1) unsigned DEFAULT 0,
  `alertToManager` int(1) unsigned DEFAULT 0,
  `mailToSubscribers` int(1) unsigned DEFAULT 0,
  `alertToSubscribers` int(1) unsigned DEFAULT 0,
  `idProject` int(12) DEFAULT NULL,
  `isProject` int(1) unsigned DEFAULT 0,
  `mailToProjectIncludingParentProject` int(1) unsigned DEFAULT 0,
  `alertToProjectIncludingParentProject` int(1) unsigned DEFAULT 0,
  `mailToAccountable` int(1) unsigned DEFAULT 0,
  `alertToAccountable` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `indicatordefinitionIndicatorable` (`idIndicatorable`),
  KEY `indicatordefinitionIndicator` (`idIndicator`),
  KEY `indicatordefinitionType` (`idType`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicatordefinition`
--

LOCK TABLES `indicatordefinition` WRITE;
/*!40000 ALTER TABLE `indicatordefinition` DISABLE KEYS */;
INSERT INTO `indicatordefinition` VALUES (1,1,'actualDueDateTime','Ticket',2,'ADDT','delay',NULL,1.000,1,'HH',0.000,1,'HH',0,0,0,0,0,0,1,1,0,0,1,0,0,0,NULL,0,0,0,0,NULL,0,0,0,0,0),(2,1,'initialDueDateTime','Ticket',1,'IDDT','delay',NULL,0.000,1,'HH',NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,0,0,0,NULL,0,0,0,0,NULL,0,0,0,0,0),(3,2,'validatedEndDate','Activity',6,'VED','delay',NULL,1.000,4,'OD',0.000,1,'HH',0,0,0,0,0,0,1,1,0,0,0,0,0,0,NULL,0,0,0,0,NULL,0,0,0,0,0),(4,2,'PlannedWorkOverValidatedWork','Activity',13,'PWOVW','percent',NULL,100.000,5,'PCT',110.000,5,'PCT',0,0,0,0,0,0,0,1,0,0,1,0,0,0,NULL,0,0,0,0,NULL,0,0,0,0,0),(5,5,'actualDueDate','Action',4,'ADD','delay',NULL,1.000,4,'OD',1.000,2,'OH',0,0,0,0,0,0,0,1,0,0,0,0,0,0,NULL,0,0,0,0,NULL,0,0,0,0,0),(6,3,'validatedEndDate','Milestone',6,'VED','delay',25,1.000,4,'OD',NULL,NULL,NULL,0,0,0,0,1,0,0,1,1,0,1,0,0,0,NULL,0,0,0,0,NULL,0,0,0,0,0);
/*!40000 ALTER TABLE `indicatordefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicatorvalue`
--

DROP TABLE IF EXISTS `indicatorvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicatorvalue` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(10) unsigned DEFAULT NULL,
  `idIndicatorDefinition` int(10) unsigned DEFAULT NULL,
  `targetDateTime` datetime DEFAULT NULL,
  `targetValue` decimal(11,2) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `warningTargetDateTime` datetime DEFAULT NULL,
  `warningTargetValue` decimal(11,2) DEFAULT NULL,
  `warningSent` int(1) unsigned DEFAULT 0,
  `alertTargetDateTime` datetime DEFAULT NULL,
  `alertTargetValue` decimal(11,2) DEFAULT NULL,
  `alertSent` int(1) unsigned DEFAULT 0,
  `handled` int(1) unsigned DEFAULT 0,
  `done` int(1) unsigned DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  `status` varchar(2) DEFAULT NULL,
  `targetDateColumnName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `indicatorvalueIndicatordefinition` (`idIndicatorDefinition`),
  KEY `indicatorvalueReference` (`refType`,`refId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicatorvalue`
--

LOCK TABLES `indicatorvalue` WRITE;
/*!40000 ALTER TABLE `indicatorvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `indicatorvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idIssueType` int(12) unsigned DEFAULT NULL,
  `cause` mediumtext DEFAULT NULL,
  `impact` mediumtext DEFAULT NULL,
  `idPriority` int(12) unsigned DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `initialEndDate` date DEFAULT NULL,
  `actualEndDate` date DEFAULT NULL,
  `idleDate` date DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `done` int(1) unsigned DEFAULT 0,
  `doneDate` date DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `idCriticality` int(12) unsigned DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `issueProject` (`idProject`),
  KEY `issueUser` (`idUser`),
  KEY `issueResource` (`idResource`),
  KEY `issueStatus` (`idStatus`),
  KEY `issueType` (`idIssueType`),
  KEY `issuePriority` (`idPriority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idJoblistDefinition` int(12) unsigned DEFAULT NULL,
  `idJobDefinition` int(12) unsigned DEFAULT NULL,
  `value` int(1) unsigned DEFAULT 0,
  `idUser` int(12) unsigned DEFAULT NULL,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `checkTime` datetime DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jobJobDefinition` (`idJobDefinition`),
  KEY `jobJoblistDefinition` (`idJoblistDefinition`),
  KEY `jobReference` (`refType`,`refId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobdefinition`
--

DROP TABLE IF EXISTS `jobdefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobdefinition` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idJoblistDefinition` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `sortOrder` int(3) DEFAULT 0,
  `daysBeforeWarning` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jobdefinitionJoblistDefinition` (`idJoblistDefinition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobdefinition`
--

LOCK TABLES `jobdefinition` WRITE;
/*!40000 ALTER TABLE `jobdefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobdefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joblistdefinition`
--

DROP TABLE IF EXISTS `joblistdefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joblistdefinition` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idChecklistable` int(12) unsigned DEFAULT NULL,
  `nameChecklistable` varchar(100) DEFAULT NULL,
  `idType` int(12) unsigned DEFAULT NULL,
  `lineCount` int(3) DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `joblistdefinitionChecklistable` (`idChecklistable`),
  KEY `joblistdefinitionNameChecklistable` (`nameChecklistable`),
  KEY `joblistdefinitionType` (`idType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joblistdefinition`
--

LOCK TABLES `joblistdefinition` WRITE;
/*!40000 ALTER TABLE `joblistdefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `joblistdefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpidefinition`
--

DROP TABLE IF EXISTS `kpidefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpidefinition` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `kpidefinitionCode` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpidefinition`
--

LOCK TABLES `kpidefinition` WRITE;
/*!40000 ALTER TABLE `kpidefinition` DISABLE KEYS */;
INSERT INTO `kpidefinition` VALUES (1,'project duration KPI','duration','\n<b>KPI for not ended project = [project planned duration] / [project validated duration]</b><br/>\n<b>KPI for ended project = [project real duration] / [project validated duration]</b><br/>\n<br/>\nKPI < 1 => project is shorter than expected<br/>\nKPI = 1 => project is exactly as long as expected<br/>\nKPI > 1 => project is longer than expected<br/>\n<br/>\nThis indicator is consolidated amongst projects (for organization) without weighting.',0),(2,'project workload KPI','workload','\n<b>KPI for project = ( [project real work] + [project left work] / [project validated work]</b><br/>\n<br/>\nKPI < 1 => project workload is less than expected<br/>\nKPI = 1 => project workload is conform to expected<br/>\nKPI > 1 => project workload is more than expected<br/>\n<br/>\nThis indicator is consolidated amongst projects (for organization) with weighting on [project validated work].',0),(3,'project terms KPI','term','\n<b>KPI for project = [sum of real amount for all project terms] / [sum of validated amount for all project terms]</b><br/>\n<br/>\nThis indicator has no intrinsic meaning but has some compared to project progress.<br/>\nSo for this indicator, thresholds will not be compared to KPI value directly but to : [project progress] - [KPI value] <br/>(that should then be as small as possible).<br/>\n<br/>\nThis indicator is not consolidated amongst projects (for organization).',0),(4,'project deliverables quality KPI','deliverable','\n<b>KPI for deliverable = [Estimated quality value of deliverable] / [Nominal (max) quality value for deliverables]</b><br/>\nQuality value is defined in the deliverable status list, that will be selected on the deliverable.<br/>\nNominal quality value is the max of the values defined in the deliverable status list.<br/>\n<b>KPI consolidated on project = Sum of ([Estimated quality value of deliverables]*[Weighting of deliverable]) / Sum([Nominal (max) quality value of deliverables]*[Weighting of deliverable])</b><br/>\nWeigting value of deliverable is defined in the deliverable weighting list, that will be selected on the deliverable.<br/>\nConsolidated value may not be calculated if all deliverables have zero weight.<br/>\nUnitary value of KPI for single deliverable is not stored in KPI history. Only consolidated value for project is stored is KPI history.<br/>\n<br/>\nThis indicator is consolidated amongst projects (for organization) with weighting on global weight of deliverables on each project.',0),(5,'project incomings quality KPI','incoming','\n<b>KPI for incoming = ( [Estimated Quality value of incoming] / [Nominal (max) Quality value for incomings]</b><br/>\nQuality value is defined in the incoming Status list, that will be selected on the incoming.<br/>\nNominal Quality value is the max of the values defined in the incoming Status list.<br/>\n<b>KPI consolidated on project = ( Sum of ([Estimated Quality value of incomings]*[Weighting of incoming]) / Sum([Nominal (max) Quality value of incomings]*[Weighting of incoming])</b><br/>\nWeigting value of incoming is defined in the incoming Weighting list, that will be selected on the incoming.<br/>\nConsolidated value may not be calculated if all incomings have zero weight.<br/>\nUnitary value of KPI for single incoming is not stored in KPI history. Only consolidated value for project is stored is KPI history.<br/>\n<br/>\nThis indicator is consolidated amongst projects (for organization) with weighting on global weight of incomings on each project.',0);
/*!40000 ALTER TABLE `kpidefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpihistory`
--

DROP TABLE IF EXISTS `kpihistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpihistory` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idKpiDefinition` int(12) unsigned DEFAULT NULL,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned DEFAULT NULL,
  `kpiType` varchar(1) DEFAULT NULL,
  `kpiDate` date DEFAULT NULL,
  `day` varchar(8) DEFAULT NULL,
  `week` varchar(6) DEFAULT NULL,
  `month` varchar(6) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `kpiValue` decimal(5,2) DEFAULT NULL,
  `weight` decimal(14,5) DEFAULT NULL,
  `refDone` int(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `kpihistoryKpiDefinition` (`idKpiDefinition`),
  KEY `kpihistoryReference` (`refType`,`refId`),
  KEY `kpihistoryDate` (`kpiDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpihistory`
--

LOCK TABLES `kpihistory` WRITE;
/*!40000 ALTER TABLE `kpihistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpihistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpithreshold`
--

DROP TABLE IF EXISTS `kpithreshold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpithreshold` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idKpiDefinition` int(12) unsigned DEFAULT NULL,
  `thresholdValue` decimal(5,2) DEFAULT NULL,
  `thresholdColor` varchar(7) DEFAULT '#FFFFFF',
  PRIMARY KEY (`id`),
  KEY `kpithresholdKpiDefinition` (`idKpiDefinition`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpithreshold`
--

LOCK TABLES `kpithreshold` WRITE;
/*!40000 ALTER TABLE `kpithreshold` DISABLE KEYS */;
INSERT INTO `kpithreshold` VALUES (1,'good',1,0.00,'#98fb98'),(2,'acceptable',1,1.20,'#f4a460'),(3,'not acceptable',1,1.50,'#f08080'),(4,'good',2,0.00,'#98fb98'),(5,'acceptable',2,1.20,'#f4a460'),(6,'not acceptable',2,1.50,'#f08080'),(7,'sufficient',3,0.00,'#98fb98'),(8,'partially sufficient',3,0.40,'#f4a460'),(9,'not sufficient',3,0.70,'#f08080'),(10,'not good',4,0.00,'#f08080'),(11,'good',4,0.66,'#98fb98'),(12,'not good',5,0.00,'#f08080'),(13,'good',5,0.66,'#98fb98');
/*!40000 ALTER TABLE `kpithreshold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpivalue`
--

DROP TABLE IF EXISTS `kpivalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpivalue` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idKpiDefinition` int(12) unsigned DEFAULT NULL,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned DEFAULT NULL,
  `kpiType` varchar(1) DEFAULT NULL,
  `kpiDate` date DEFAULT NULL,
  `day` varchar(8) DEFAULT NULL,
  `week` varchar(6) DEFAULT NULL,
  `month` varchar(6) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `kpiValue` decimal(5,2) DEFAULT NULL,
  `weight` decimal(14,5) DEFAULT NULL,
  `refDone` int(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `kpivalueKpiDefinition` (`idKpiDefinition`),
  KEY `kpivalueReference` (`refType`,`refId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpivalue`
--

LOCK TABLES `kpivalue` WRITE;
/*!40000 ALTER TABLE `kpivalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpivalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `sortOrder` int(3) DEFAULT NULL,
  `idle` int(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leavessystemhabilitation`
--

DROP TABLE IF EXISTS `leavessystemhabilitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leavessystemhabilitation` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `menuName` varchar(100) NOT NULL,
  `viewAccess` varchar(10) DEFAULT NULL,
  `readAccess` varchar(10) DEFAULT NULL,
  `createAccess` varchar(10) DEFAULT NULL,
  `updateAccess` varchar(10) DEFAULT NULL,
  `deleteAccess` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leavessystemhabilitationMenu` (`menuName`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leavessystemhabilitation`
--

LOCK TABLES `leavessystemhabilitation` WRITE;
/*!40000 ALTER TABLE `leavessystemhabilitation` DISABLE KEYS */;
INSERT INTO `leavessystemhabilitation` VALUES (1,'menuHumanResource','AME',NULL,NULL,NULL,NULL),(2,'menuHumanResourceParameters','AME',NULL,NULL,NULL,NULL),(3,'menuLeavesSystemHabilitation','A','A','A','A','A'),(4,'menuEmploymentContractType','AM','AM','AM','AM','AM'),(5,'menuLeaveCalendar','E',NULL,NULL,NULL,NULL),(6,'menuLeaveType','A','A','A','A','A'),(7,'menuLeave','E','AmO','E','AmO','AmO'),(8,'menuEmployee','AME','AmO','','AmO',''),(9,'menuEmploymentContract','AME','AmO','AM','AmO','A'),(10,'menuEmployeeLeaveEarned','E','AMO','AM','AM','AM'),(11,'menuEmploymentContractEndReason','A','A','A','A','A'),(12,'menuLeaveTypeOfEmploymentContractType','A','A','A','A','A'),(13,'menuEmployeeManager','AM','AMO','AM','AM','AO'),(14,'menuDelegationManager','AM','AME','AO','AO','AO'),(15,'menuDashboardEmployeeManager','Am',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `leavessystemhabilitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leavetype`
--

DROP TABLE IF EXISTS `leavetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leavetype` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `idActivity` int(12) unsigned DEFAULT NULL,
  `idWorkflow` int(12) unsigned DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `notificationOnCreate` varchar(255) DEFAULT NULL,
  `notificationOnUpdate` varchar(255) DEFAULT NULL,
  `notificationOnDelete` varchar(255) DEFAULT NULL,
  `notificationOnTreatment` varchar(255) DEFAULT NULL,
  `alertOnCreate` varchar(255) DEFAULT NULL,
  `alertOnUpdate` varchar(255) DEFAULT NULL,
  `alertOnDelete` varchar(255) DEFAULT NULL,
  `alertOnTreatment` varchar(255) DEFAULT NULL,
  `emailOnCreate` varchar(255) DEFAULT NULL,
  `emailOnUpdate` varchar(255) DEFAULT NULL,
  `emailOnDelete` varchar(255) DEFAULT NULL,
  `emailOnTreatment` varchar(255) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leavetype`
--

LOCK TABLES `leavetype` WRITE;
/*!40000 ALTER TABLE `leavetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `leavetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leavetypeofemploymentcontracttype`
--

DROP TABLE IF EXISTS `leavetypeofemploymentcontracttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leavetypeofemploymentcontracttype` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idle` int(1) unsigned NOT NULL DEFAULT 0,
  `idEmploymentContractType` int(12) unsigned DEFAULT NULL,
  `idLeaveType` int(12) unsigned DEFAULT NULL,
  `startMonthPeriod` varchar(2) DEFAULT NULL,
  `startDayPeriod` varchar(2) DEFAULT NULL,
  `periodDuration` int(5) unsigned DEFAULT NULL,
  `quantity` decimal(4,1) unsigned DEFAULT NULL,
  `isIntegerQuotity` int(1) unsigned DEFAULT 0,
  `earnedPeriod` int(5) unsigned DEFAULT NULL,
  `isUnpayedAllowed` int(1) unsigned DEFAULT 0,
  `isJustifiable` int(1) unsigned DEFAULT 0,
  `isAnticipated` int(1) unsigned DEFAULT 0,
  `validityDuration` int(5) unsigned DEFAULT 12,
  `nbDaysAfterNowLeaveDemandIsAllowed` int(5) unsigned DEFAULT NULL,
  `nbDaysBeforeNowLeaveDemandIsAllowed` int(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leavetypeofemploymentcontracttype`
--

LOCK TABLES `leavetypeofemploymentcontracttype` WRITE;
/*!40000 ALTER TABLE `leavetypeofemploymentcontracttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `leavetypeofemploymentcontracttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likelihood`
--

DROP TABLE IF EXISTS `likelihood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likelihood` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `value` int(3) unsigned DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `valuePct` int(3) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likelihood`
--

LOCK TABLES `likelihood` WRITE;
/*!40000 ALTER TABLE `likelihood` DISABLE KEYS */;
INSERT INTO `likelihood` VALUES (1,'Low (10%)',1,'#32cd32',10,0,10),(2,'Medium (50%)',2,'#ffd700',20,0,50),(3,'High (90%)',4,'#ff0000',30,0,90);
/*!40000 ALTER TABLE `likelihood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `ref1Type` varchar(100) DEFAULT NULL,
  `ref1Id` int(12) unsigned NOT NULL,
  `ref2Type` varchar(100) DEFAULT NULL,
  `ref2Id` int(12) unsigned NOT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `linkRef1` (`ref1Type`,`ref1Id`),
  KEY `linkRef2` (`ref2Type`,`ref2Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linkable`
--

DROP TABLE IF EXISTS `linkable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linkable` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idDefaultLinkable` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linkable`
--

LOCK TABLES `linkable` WRITE;
/*!40000 ALTER TABLE `linkable` DISABLE KEYS */;
INSERT INTO `linkable` VALUES (1,'Action',0,3),(2,'Issue',0,1),(3,'Risk',0,1),(4,'Meeting',0,5),(5,'Decision',0,4),(6,'Question',0,4),(7,'Ticket',0,7),(8,'Activity',0,8),(9,'Milestone',0,21),(10,'Document',0,10),(11,'Requirement',0,12),(12,'TestCase',0,11),(13,'TestSession',0,8),(14,'Project',0,14),(15,'IndividualExpense',0,4),(16,'ProjectExpense',0,8),(17,'Opportunity',0,1),(18,'Command',0,14),(19,'Quotation',0,18),(21,'Deliverable',0,9),(22,'Incoming',0,9),(23,'Bill',0,18),(24,'Term',0,23),(25,'Product',0,25),(26,'Component',0,26),(27,'ProductVersion',0,27),(28,'ComponentVersion',0,28),(29,'Delivery',NULL,0),(30,'Tender',NULL,0),(31,'ProviderOrder',NULL,0),(32,'ProviderBill',NULL,0),(33,'CallForTender',NULL,0);
/*!40000 ALTER TABLE `linkable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list`
--

DROP TABLE IF EXISTS `list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `list` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `sortOrder` int(3) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `listList` (`list`)
) ENGINE=InnoDB AUTO_INCREMENT=1000003 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
INSERT INTO `list` VALUES (1,'yesNo','displayYes','YES',20,0),(2,'yesNo','displayNo','NO',10,0),(101,'teamOrga','displayAll','all',10,0),(102,'teamOrga','displayOrga','orga',30,0),(103,'teamOrga','displayTeam','team',40,0),(104,'teamOrga','displaySubOrga','subOrga',20,0),(1001,'orgaSubOrga','displayAll','all',10,0),(1002,'orgaSubOrga','displaySubOrga','subOrga',20,0),(1003,'orgaSubOrga','displayOrga','orga',30,0),(1000001,'readWrite','displayWrite','WRITE',10,0),(1000002,'readWrite','displayReadOnly','READ',20,0);
/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `refType` int(12) unsigned DEFAULT NULL,
  `refId` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `mailDateTime` datetime DEFAULT NULL,
  `mailTo` varchar(4000) DEFAULT NULL,
  `mailTitle` varchar(4000) DEFAULT NULL,
  `mailBody` mediumtext DEFAULT NULL,
  `mailStatus` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mailProject` (`idProject`),
  KEY `mailUser` (`idUser`),
  KEY `mailRef` (`refType`,`refId`),
  KEY `mailStatus` (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailable`
--

DROP TABLE IF EXISTS `mailable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailable` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailable`
--

LOCK TABLES `mailable` WRITE;
/*!40000 ALTER TABLE `mailable` DISABLE KEYS */;
INSERT INTO `mailable` VALUES (1,'Ticket',0),(2,'Activity',0),(3,'Milestone',0),(4,'Risk',0),(5,'Action',0),(6,'Issue',0),(7,'Meeting',0),(8,'Decision',0),(9,'Question',0),(10,'Requirement',0),(11,'TestSession',0),(12,'TestCase',0),(13,'Project',0),(14,'Document',0),(15,'IndividualExpense',0),(16,'ProjectExpense',0),(17,'Term',0),(18,'Bill',0),(19,'ActivityPrice',0),(20,'Opportunity',0),(21,'Command',0),(22,'Quotation',0),(23,'Product',0),(24,'ProductVersion',0),(25,'Component',0),(26,'ComponentVersion',0),(27,'Incoming',0),(28,'Deliverable',0),(29,'DocumentDirectory',0),(30,'Delivery',0),(31,'Client',0),(32,'Payment',0),(33,'Provider',0),(34,'Team',0),(35,'Tender',0),(36,'ProviderOrder',0),(37,'ProviderBill',0),(38,'ProviderPayment',0),(39,'Budget',0);
/*!40000 ALTER TABLE `mailable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailtosend`
--

DROP TABLE IF EXISTS `mailtosend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailtosend` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idUser` int(12) unsigned DEFAULT NULL,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned DEFAULT NULL,
  `idEmailTemplate` int(12) unsigned DEFAULT NULL,
  `template` varchar(100) DEFAULT NULL,
  `title` varchar(4000) DEFAULT NULL,
  `dest` varchar(4000) DEFAULT NULL,
  `recordDateTime` datetime DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mailtosendReference` (`refType`,`refId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailtosend`
--

LOCK TABLES `mailtosend` WRITE;
/*!40000 ALTER TABLE `mailtosend` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailtosend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measureunit`
--

DROP TABLE IF EXISTS `measureunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measureunit` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `pluralName` varchar(100) DEFAULT NULL,
  `sortOrder` int(3) DEFAULT 0,
  `idle` int(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measureunit`
--

LOCK TABLES `measureunit` WRITE;
/*!40000 ALTER TABLE `measureunit` DISABLE KEYS */;
INSERT INTO `measureunit` VALUES (1,'piece','pieces',10,0),(2,'lot','lots',20,0),(3,'day','days',30,0),(4,'month','months',40,0);
/*!40000 ALTER TABLE `measureunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting`
--

DROP TABLE IF EXISTS `meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idMeetingType` int(12) unsigned DEFAULT NULL,
  `meetingDate` date DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `attendees` varchar(4000) DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `sendTo` varchar(4000) DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idleDate` date DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `done` int(1) unsigned DEFAULT 0,
  `doneDate` date DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `meetingStartTime` time DEFAULT NULL,
  `meetingEndTime` time DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `idActivity` int(12) unsigned DEFAULT NULL,
  `idPeriodicMeeting` int(12) unsigned DEFAULT NULL,
  `isPeriodic` int(1) unsigned DEFAULT 0,
  `periodicOccurence` int(3) unsigned DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `meetingStartDateTime` datetime DEFAULT NULL,
  `meetingEndDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meetingProject` (`idProject`),
  KEY `meetingType` (`idMeetingType`),
  KEY `meetingUser` (`idUser`),
  KEY `meetingResource` (`idResource`),
  KEY `meetingStatus` (`idStatus`),
  KEY `meetingPeriodicMeeting` (`idPeriodicMeeting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting`
--

LOCK TABLES `meeting` WRITE;
/*!40000 ALTER TABLE `meeting` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idMenu` int(12) unsigned DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `sortOrder` int(5) unsigned DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `menuClass` varchar(400) DEFAULT NULL,
  `isAdminMenu` int(1) DEFAULT 0,
  `isLeavesSystemMenu` int(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `menuMenu` (`idMenu`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'menuToday',0,'item',10,NULL,0,'Work Risk RequirementTest Financial Review ',0,0),(2,'menuWork',0,'menu',40,'Project',1,'Work Risk Review ',0,0),(3,'menuRisk',43,'object',300,'Project',0,'Risk ',0,0),(4,'menuAction',2,'object',90,'Project',0,'Work Risk Review ',0,0),(5,'menuIssue',43,'object',320,'Project',0,'Risk ',0,0),(6,'menuReview',0,'menu',330,NULL,1,'Work Review ',0,0),(7,'menuFollowup',0,'menu',100,NULL,1,'Work Risk RequirementTest Financial ',0,0),(8,'menuImputation',7,'item',110,NULL,0,'Work ',0,0),(9,'menuPlanning',7,'item',120,NULL,0,'Work ',0,0),(11,'menuTool',0,'menu',495,NULL,1,'Admin ',0,0),(13,'menuParameter',0,'menu',800,NULL,1,'Work Risk RequirementTest Financial Review Admin Automation EnvironmentalParameter ListOfValues Type HabilitationParameter ',0,0),(14,'menuEnvironmentalParameter',0,'menu',540,NULL,1,'Work Financial EnvironmentalParameter ',0,0),(15,'menuClient',14,'object',620,'ReadWriteEnvironment',0,'Financial EnvironmentalParameter ',0,0),(16,'menuProject',0,'object',20,'Project',0,'Work Risk RequirementTest Financial Review ',0,0),(17,'menuUser',14,'object',590,'ReadWriteEnvironment',0,'EnvironmentalParameter HabilitationParameter ',1,0),(18,'menuGlobalParameter',13,'item',1085,NULL,0,'Admin EnvironmentalParameter HabilitationParameter ',1,0),(19,'menuProjectParameter',13,'item',1090,NULL,1,'',0,0),(20,'menuUserParameter',13,'item',1095,'',0,'Work Risk RequirementTest Financial Review Admin Automation EnvironmentalParameter ListOfValues Type HabilitationParameter ',0,0),(21,'menuHabilitation',37,'item',1230,NULL,0,'HabilitationParameter ',1,0),(22,'menuTicket',2,'object',50,'Project',0,'Work ',0,0),(25,'menuActivity',2,'object',70,'Project',0,'Work ',0,0),(26,'menuMilestone',2,'object',80,'Project',0,'Work ',0,0),(34,'menuStatus',36,'object',820,'ReadWriteList',0,'ListOfValues ',0,0),(36,'menuListOfValues',13,'menu',805,NULL,1,'ListOfValues ',0,0),(37,'menuHabilitationParameter',0,'menu',1200,NULL,1,'Type ',1,0),(38,'menuSeverity',36,'object',855,'ReadWriteList',0,'ListOfValues ',0,0),(39,'menuLikelihood',36,'object',845,'ReadWriteList',0,'ListOfValues ',0,0),(40,'menuCriticality',36,'object',850,'ReadWriteList',0,'ListOfValues ',0,0),(41,'menuPriority',36,'object',865,'ReadWriteList',0,'ListOfValues ',0,0),(42,'menuUrgency',36,'object',860,'ReadWriteList',0,'ListOfValues ',0,0),(43,'menuRiskManagementPlan',0,'menu',290,NULL,1,'Risk ',0,0),(44,'menuResource',14,'object',600,'ReadWriteEnvironment',0,'Work EnvironmentalParameter ',0,0),(45,'menuRiskType',79,'object',960,'ReadWriteType',0,'Type ',0,0),(46,'menuIssueType',79,'object',975,'ReadWriteType',0,'Type ',0,0),(47,'menuAccessProfile',37,'object',1220,NULL,0,'HabilitationParameter ',1,0),(48,'menuAccessRight',37,'item',1250,NULL,0,'HabilitationParameter ',1,0),(49,'menuProfile',37,'object',1210,NULL,0,'HabilitationParameter ',1,0),(50,'menuAffectation',14,'object',570,'Project',0,'EnvironmentalParameter ',0,0),(51,'menuMessage',11,'object',520,'Project',0,'Admin ',0,0),(52,'menuMessageType',79,'object',995,'ReadWriteType',0,'Type ',0,0),(53,'menuTicketType',79,'object',910,'ReadWriteType',0,'Type ',0,0),(55,'menuActivityType',79,'object',915,'ReadWriteType',0,'Type ',0,0),(56,'menuMilestoneType',79,'object',920,'ReadWriteType',0,'Type ',0,0),(57,'menuTeam',14,'object',640,'ReadWriteEnvironment',0,'EnvironmentalParameter ',0,0),(58,'menuImportData',11,'item',525,NULL,0,'Admin ',0,0),(59,'menuWorkflow',88,'object',680,'ReadWriteEnvironment',0,'Automation ',0,0),(60,'menuActionType',79,'object',970,'ReadWriteType',0,'Type ',0,0),(61,'menuReports',7,'item',150,NULL,0,'Work Risk RequirementTest Financial ',0,0),(62,'menuMeeting',6,'object',340,'Project',0,'Work Review ',0,0),(63,'menuDecision',6,'object',360,'Project',0,'Review ',0,0),(64,'menuQuestion',6,'object',370,'Project',0,'Review ',0,0),(65,'menuMeetingType',79,'object',980,'ReadWriteType',0,'Type ',0,0),(66,'menuDecisionType',79,'object',985,'ReadWriteType',0,'Type ',0,0),(67,'menuQuestionType',79,'object',990,'ReadWriteType',0,'Type ',0,0),(68,'menuStatusMail',88,'object',690,'ReadWriteEnvironment',0,'Automation ',0,0),(69,'menuMail',11,'object',500,'Project',0,'Admin ',0,0),(70,'menuHabilitationReport',37,'item',1240,NULL,0,'HabilitationParameter ',1,0),(71,'menuHabilitationOther',37,'item',1270,NULL,0,'HabilitationParameter ',1,0),(72,'menuContact',14,'object',610,'ReadWriteEnvironment',0,'Financial EnvironmentalParameter ',0,0),(73,'menuRole',36,'object',815,'ReadWriteList',0,'ListOfValues ',0,0),(74,'menuFinancial',0,'menu',200,NULL,1,'Work Financial ',0,0),(75,'menuIndividualExpense',151,'object',210,'Project',0,'Work Financial ',0,0),(76,'menuProjectExpense',151,'object',220,'Project',0,'Financial ',0,0),(78,'menuPayment',152,'object',270,'Project',0,'Financial ',0,0),(79,'menuType',13,'menu',900,NULL,1,'',0,0),(80,'menuIndividualExpenseType',79,'object',933,'ReadWriteType',0,'Type ',0,0),(81,'menuProjectExpenseType',79,'object',937,'ReadWriteType',0,'Type ',0,0),(82,'menuInvoiceType',79,'object',960,'ReadWriteType',1,'Type ',0,0),(83,'menuPaymentType',79,'object',957,'ReadWriteType',0,'Type ',0,0),(84,'menuExpenseDetailType',79,'object',941,'ReadWriteType',0,'Type ',0,0),(85,'menuCalendar',14,'item',660,'ReadWriteEnvironment',0,'Work EnvironmentalParameter ',0,0),(86,'menuProduct',173,'object',382,'ReadWriteEnvironment',0,'Work Configuration EnvironmentalParameter',0,0),(87,'menuProductVersion',173,'object',384,'ReadWriteEnvironment',0,'Work Configuration EnvironmentalParameter',0,0),(88,'menuAutomation',0,'menu',670,NULL,1,'Automation ',0,0),(89,'menuTicketDelay',88,'object',700,'ReadWriteEnvironment',0,'Automation ',0,0),(90,'menuIndicatorDefinition',88,'object',710,'ReadWriteEnvironment',0,'Automation ',0,0),(91,'menuAlert',11,'object',510,'Project',0,'Admin ',0,0),(92,'menuAdmin',0,'item',1300,NULL,0,'Admin ',1,0),(93,'menuProjectType',79,'object',905,'ReadWriteType',0,'Type ',0,0),(94,'menuActivityPrice',152,'object',280,'Project',0,'Financial ',0,0),(95,'menuRecipient',14,'object',630,'ReadWriteEnvironment',0,'Financial EnvironmentalParameter ',0,0),(96,'menuTerm',152,'object',250,'Project',0,'Financial ',0,0),(97,'menuBill',152,'object',260,'Project',0,'Financial ',0,0),(100,'menuBillType',79,'object',953,'ReadWriteType',0,'Type ',0,0),(101,'menuDocumentType',79,'object',1000,'ReadWriteType',0,'Type ',0,0),(102,'menuDocument',0,'object',30,'Project',0,'Work Risk RequirementTest Financial Review ',0,0),(103,'menuDocumentDirectory',14,'object',650,'ReadWriteEnvironment',0,'EnvironmentalParameter ',0,0),(104,'menuContext',14,'object',580,NULL,0,'EnvironmentalParameter ',0,0),(105,'menuContextType',79,'object',1005,'ReadWriteType',0,'Type ',0,0),(106,'menuResourcePlanning',7,'item',140,NULL,0,'Work ',0,0),(107,'menuRequirementType',79,'object',1010,'ReadWriteType',0,'Type ',0,0),(108,'menuTestCaseType',79,'object',1015,'ReadWriteType',0,'Type ',0,0),(109,'menuTestSessionType',79,'object',1020,'ReadWriteType',0,'Type ',0,0),(110,'menuRequirementTest',0,'menu',160,NULL,1,'Work RequirementTest ',0,0),(111,'menuRequirement',110,'object',170,'Project',0,'RequirementTest ',0,0),(112,'menuTestCase',110,'object',180,'Project',0,'RequirementTest ',0,0),(113,'menuTestSession',110,'object',190,'Project',0,'RequirementTest ',0,0),(114,'menuRiskLevel',36,'object',870,'ReadWriteList',0,'ListOfValues ',0,0),(115,'menuFeasibility',36,'object',875,'ReadWriteList',0,'ListOfValues ',0,0),(116,'menuPredefinedNote',88,'object',720,'ReadWriteEnvironment',0,'Automation ',0,0),(117,'menuEfficiency',36,'object',880,'ReadWriteList',0,'ListOfValues ',0,0),(118,'menuTicketSimple',2,'object',60,'Project',0,'Work ',0,0),(119,'menuOpportunity',43,'object',310,'Project',0,'Risk ',0,0),(120,'menuOpportunityType',79,'object',965,'ReadWriteType',0,'Type ',0,0),(121,'menuHealth',36,'object',830,'ReadWriteList',0,'ListOfValues ',0,0),(122,'menuAudit',11,'object',535,NULL,0,'Admin ',0,0),(123,'menuPortfolioPlanning',7,'item',130,NULL,0,'Work ',0,0),(124,'menuPeriodicMeeting',6,'object',350,'Project',0,'Review ',0,0),(125,'menuCommand',152,'object',240,'Project',0,'Financial ',0,0),(126,'menuCommandType',79,'object',949,'ReadWriteType',0,'Type ',0,0),(127,'menuOverallProgress',36,'object',835,'ReadWriteList',0,'ListOfValues ',0,0),(128,'menuQuality',36,'object',825,'ReadWriteList',0,'ListOfValues ',0,0),(129,'menuTrend',36,'object',840,'ReadWriteList',0,'ListOfValues ',0,0),(130,'menuChecklistDefinition',88,'object',730,'ReadWriteEnvironment',0,'Automation ',0,0),(131,'menuQuotation',152,'object',230,'Project',0,'Financial ',0,0),(132,'menuQuotationType',79,'object',945,'ReadWriteType',0,'Type ',0,0),(133,'menuDiary',7,'item',145,NULL,0,'Work ',0,0),(134,'menuClientType',79,'object',1025,'ReadWriteType',0,'Type ',0,0),(135,'menuAccessRightNoProject',37,'item',1260,NULL,0,'HabilitationParameter ',1,0),(136,'menuPluginManagement',143,'item',9110,NULL,0,'Admin ',1,0),(137,'menuPaymentDelay',36,'object',885,'ReadWriteList',0,'ListOfValues ',0,0),(138,'menuPaymentMode',36,'object',886,'ReadWriteList',0,'ListOfValues ',0,0),(139,'menuDeliveryMode',36,'object',887,'ReadWriteList',0,'ListOfValues ',0,0),(140,'menuMeasureUnit',36,'object',888,'ReadWriteList',0,'ListOfValues ',0,0),(141,'menuComponent',173,'object',386,'ReadWriteEnvironment',0,'Work Configuration EnvironmentalParameter',0,0),(142,'menuComponentVersion',173,'object',388,'ReadWriteEnvironment',0,'Work Configuration EnvironmentalParameter',0,0),(143,'menuPlugin',NULL,'menu',9100,NULL,1,'Admin',1,0),(144,'menuProductType',79,'object',1030,'ReadWriteType',0,'Type ',0,0),(145,'menuComponentType',79,'object',1032,'ReadWriteType',0,'Type ',0,0),(146,'menuGallery',152,'item',285,NULL,0,'Financial',0,0),(147,'menuProviderType',79,'object',1027,'ReadWriteType',0,'Type ',0,0),(148,'menuProvider',14,'object',625,'ReadWriteEnvironment',0,'Financial EnvironmentalParameter ',0,0),(149,'menuResolution',36,'object',822,'ReadWriteList',0,'ListOfValues ',0,0),(150,'menuDashboardTicket',0,'item',15,NULL,0,'Work Risk RequirementTest Financial Review ',0,0),(151,'menuExpenses',74,'menu',202,NULL,1,'',0,0),(152,'menuIncomes',74,'menu',225,NULL,1,'',0,0),(153,'menuCallForTender',151,'object',204,'Project',0,'Financial ',0,0),(154,'menuTender',151,'object',206,'Project',0,'Financial ',0,0),(155,'menuCallForTenderType',79,'object',925,'ReadWriteType',0,'Type ',0,0),(156,'menuTenderType',79,'object',929,'ReadWriteType',0,'Type ',0,0),(157,'menuTenderStatus',36,'object',890,NULL,0,'ListOfValues ',0,0),(158,'menuOrganization',0,'object',18,'ReadWriteEnvironment',0,'EnvironmentalParameter',0,0),(159,'menuOrganizationType',79,'object',903,'ReadWriteType',0,'Type',0,0),(160,'menuProductVersionType',79,'object',1033,'ReadWriteType',0,'Type',0,0),(161,'menuComponentVersionType',79,'object',1034,'ReadWriteType',0,'Type',0,0),(162,'menuJoblistDefinition',88,'object',740,'ReadWriteEnvironment',0,'Automation ',0,0),(163,'menuDeliverableWeight',36,'object',892,'ReadWriteList',0,'ListOfValues',0,0),(164,'menuDeliverableStatus',36,'object',894,'ReadWriteList',0,'ListOfValues',0,0),(165,'menuDeliverableType',79,'object',1038,'ReadWriteType',0,'Type',0,0),(166,'menuIncomingType',79,'object',1036,'ReadWriteType',0,'Type',0,0),(167,'menuDeliverable',6,'object',374,'Project',0,'Work Review',0,0),(168,'menuIncoming',6,'object',372,'Project',0,'Work Review',0,0),(169,'menuKpiDefinition',88,'object',715,'ReadWriteEnvironment',0,'Automation',0,0),(170,'menuCategory',36,'object',891,'ReadWriteType',0,' ListOfValues',0,0),(171,'menuIncomingWeight',36,'object',891,'ReadWriteList',0,'ListOfValues',0,0),(172,'menuIncomingStatus',36,'object',893,'ReadWriteList',0,'ListOfValues',0,0),(173,'menuConfiguration',0,'menu',380,NULL,1,'Work Review EnvironmentalParameter',0,0),(174,'menuCatalog',152,'object',286,'Project',0,'Financial',0,0),(175,'menuCatalogType',79,'object',958,'ReadWriteType',0,'Type',0,0),(176,'menuDelivery',6,'object',375,'Project',0,'Work Review',0,0),(177,'menuActivityStream',0,'item',19,NULL,0,'Work Risk RequirementTest Financial Review',0,0),(178,'menuLanguage',36,'object',895,'ReadWriteList',0,'ListOfValues',0,0),(179,'menuVersionsPlanning',173,'item',390,NULL,0,'Work Configuration EnvironmentalParameter',0,0),(180,'menuStatusMailPerProject',88,'object',691,'Project',0,'Automation',0,0),(181,'menuIndicatorDefinitionPerProject',88,'object',711,'Project',0,'Automation',0,0),(182,'menuTicketDelayPerProject',88,'object',701,'Project',0,'Automation',0,0),(183,'menuDeliveryType',79,'object',1040,'ReadWriteType',0,'Type',0,0),(184,'menuEmailTemplate',88,'object',685,'ReadWriteEnvironment',0,'Automation',0,0),(185,'menuNotification',11,'object',531,'Project',0,'Admin Notification',0,0),(186,'menuNotificationDefinition',88,'object',772,'ReadWriteEnvironment',0,'Automation Notification',0,0),(187,'menuMailToSend',11,'object',502,'',0,'Admin',0,0),(188,'menuResourceTeam',14,'object',605,'ReadWriteEnvironment',0,'Work EnvironmentalParameter',0,0),(189,'menuDashboardRequirement',110,'item',165,NULL,0,'RequirementTest',0,0),(190,'menuProviderOrderType',79,'object',930,'Project',0,'Type ',0,0),(191,'menuProviderOrder',151,'object',206,'Project',0,'Financial ',0,0),(192,'menuGlobalView',2,'object',95,'Project',0,'Work',0,0),(193,'menuProviderBillType',79,'object',931,'Project',0,'Type ',0,0),(194,'menuProviderBill',151,'object',208,'Project',0,'Financial ',0,0),(195,'menuProviderTerm',151,'object',207,'Project',0,'Financial ',0,0),(196,'menuGlobalPlanning',7,'item',125,NULL,0,'Work',0,0),(197,'menuBudget',151,'object',203,'ReadWriteEnvironment',0,'Financial',0,0),(198,'menuBudgetType',79,'object',924,'ReadWriteType',0,'Type',0,0),(199,'menuBudgetOrientation',36,'object',889,'ReadWriteList',0,'ListOfValues',0,0),(200,'menuBudgetCategory',36,'object',889,'ReadWriteList',0,'ListOfValues',0,0),(201,'menuProviderPayment',151,'object',209,'Project',0,'Financial ',0,0),(202,'menuProviderPaymentType',79,'object',932,'Project',0,'Type ',0,0),(203,'menuAbsence',7,'item',115,NULL,0,'Work',0,0),(204,'menuImputationValidation',7,'item',118,NULL,0,'Work',0,0),(205,'menuAutoSendReport',11,'item',505,NULL,0,'Work',0,0),(208,'menuHumanResource',0,'menu',400,NULL,1,'HumanResource',0,1),(209,'menuLeaveCalendar',208,'item',405,NULL,0,'HumanResource',0,1),(210,'menuLeave',208,'object',410,NULL,0,'HumanResource',0,1),(211,'menuEmployeeLeaveEarned',208,'object',420,NULL,0,'HumanResource',0,1),(212,'menuEmployee',208,'object',425,NULL,0,'HumanResource',0,1),(213,'menuEmploymentContract',208,'object',430,NULL,0,'HumanResource',0,1),(214,'menuEmployeeManager',208,'object',435,NULL,0,'HumanResource',0,1),(215,'menuDashboardEmployeeManager',208,'item',440,NULL,0,'HumanResource',0,1),(216,'menuHumanResourceParameters',208,'menu',445,NULL,1,'HumanResource',0,1),(217,'menuLeaveType',216,'object',450,NULL,0,'HumanResource',0,1),(218,'menuEmploymentContractType',216,'object',455,NULL,0,'HumanResource',0,1),(219,'menuEmploymentContractEndReason',216,'object',460,NULL,0,'HumanResource',0,1),(220,'menuLeavesSystemHabilitation',216,'item',465,NULL,0,'HumanResource',0,1),(221,'menuModule',37,'item',1205,NULL,0,'Admin HabilitationParameter',0,0);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menucustom`
--

DROP TABLE IF EXISTS `menucustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menucustom` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idMenu` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `menucustomUser` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menucustom`
--

LOCK TABLES `menucustom` WRITE;
/*!40000 ALTER TABLE `menucustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `menucustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuselector`
--

DROP TABLE IF EXISTS `menuselector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menuselector` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuselector`
--

LOCK TABLES `menuselector` WRITE;
/*!40000 ALTER TABLE `menuselector` DISABLE KEYS */;
/*!40000 ALTER TABLE `menuselector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `idMessageType` int(12) unsigned DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idProfile` int(12) unsigned DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `showOnLogin` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `messageProject` (`idProject`),
  KEY `messageUser` (`idUser`),
  KEY `messageType` (`idMessageType`),
  KEY `messageProfile` (`idProfile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,NULL,'Welcome',15,'Welcome to ProjeQtOr web application',NULL,NULL,0,0);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestone`
--

DROP TABLE IF EXISTS `milestone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `milestone` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idMilestoneType` int(12) unsigned DEFAULT NULL,
  `idActivity` int(12) unsigned DEFAULT NULL,
  `done` int(1) unsigned DEFAULT 0,
  `idleDate` date DEFAULT NULL,
  `doneDate` date DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `idVersion` int(12) unsigned DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `milestoneProject` (`idProject`),
  KEY `milestoneUser` (`idUser`),
  KEY `milestoneResource` (`idResource`),
  KEY `milestoneStatus` (`idStatus`),
  KEY `milestoneType` (`idMilestoneType`),
  KEY `milestoneActivity` (`idActivity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestone`
--

LOCK TABLES `milestone` WRITE;
/*!40000 ALTER TABLE `milestone` DISABLE KEYS */;
/*!40000 ALTER TABLE `milestone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `sortOrder` int(5) DEFAULT NULL,
  `idModule` int(12) unsigned DEFAULT NULL,
  `idle` int(1) DEFAULT 0,
  `active` int(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'modulePlanning',100,NULL,0,1),(2,'moduleTicket',200,NULL,0,1),(3,'moduleImputation',300,NULL,0,1),(4,'moduleRequirement',400,NULL,0,1),(5,'moduleFinancial',500,NULL,0,1),(6,'moduleExpenses',510,5,0,1),(7,'moduleIncomes',520,5,0,1),(8,'moduleRisk',600,NULL,0,1),(9,'moduleMeeting',700,NULL,0,1),(10,'moduleReview',710,NULL,0,1),(11,'moduleConfiguration',800,NULL,0,1),(12,'moduleHumanResource',900,NULL,0,1),(13,'moduleNotification',1600,NULL,0,1),(14,'moduleOrganization',1100,NULL,0,1),(15,'moduleDocument',1000,NULL,0,1),(16,'moduleActivityStream',1500,NULL,0,1);
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulemenu`
--

DROP TABLE IF EXISTS `modulemenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulemenu` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idModule` int(12) unsigned DEFAULT NULL,
  `idMenu` int(12) unsigned DEFAULT NULL,
  `hidden` int(1) DEFAULT 1,
  `active` int(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `moduleMenuMenu` (`idMenu`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulemenu`
--

LOCK TABLES `modulemenu` WRITE;
/*!40000 ALTER TABLE `modulemenu` DISABLE KEYS */;
INSERT INTO `modulemenu` VALUES (1,2,150,0,1),(2,14,158,0,1),(3,16,177,0,1),(4,15,102,0,1),(5,2,22,0,1),(6,2,118,0,1),(7,1,25,0,1),(8,1,26,0,1),(9,9,4,0,1),(10,8,4,0,1),(11,8,192,0,1),(12,10,192,0,1),(13,2,192,0,1),(14,3,8,0,1),(15,3,203,0,1),(16,1,196,0,1),(17,1,123,0,1),(18,1,106,0,1),(19,1,133,0,1),(20,4,189,0,1),(21,4,111,0,1),(22,4,112,0,1),(23,4,113,0,1),(24,6,197,0,1),(25,6,153,0,1),(26,6,154,0,1),(27,6,191,0,1),(28,6,195,0,1),(29,6,194,0,1),(30,6,201,0,1),(31,6,75,0,1),(32,6,76,0,1),(33,7,131,0,1),(34,7,125,0,1),(35,7,96,0,1),(36,7,97,0,1),(37,7,78,0,1),(38,7,94,0,1),(39,7,146,0,1),(40,7,174,0,1),(41,8,3,0,1),(42,8,119,0,1),(43,8,5,0,1),(44,9,62,0,1),(45,9,124,0,1),(46,10,63,0,1),(47,10,64,0,1),(48,10,168,0,1),(49,10,167,0,1),(50,10,176,0,1),(51,11,86,0,1),(52,11,87,0,1),(53,11,141,0,1),(54,11,142,0,1),(55,11,179,0,1),(56,13,185,0,1),(57,2,104,0,1),(58,6,148,0,1),(59,7,95,0,1),(60,15,103,0,1),(61,2,89,0,1),(62,2,182,0,1),(63,1,162,0,1),(64,13,186,0,1),(65,2,149,1,1),(66,8,39,1,1),(67,7,39,1,1),(68,8,40,1,1),(69,4,40,1,1),(70,2,40,1,1),(71,8,38,1,1),(72,4,42,1,1),(73,2,42,1,1),(74,8,41,1,1),(75,9,41,1,1),(76,4,41,1,1),(77,2,41,1,1),(78,4,114,1,1),(79,4,115,1,1),(80,9,117,1,1),(81,8,117,1,1),(82,6,137,1,1),(83,7,137,1,1),(84,6,138,1,1),(85,7,138,1,1),(86,6,139,1,1),(87,7,139,1,1),(88,6,140,1,1),(89,7,140,1,1),(90,6,199,1,1),(91,6,200,1,1),(92,6,157,1,1),(93,10,171,1,1),(94,10,163,1,1),(95,10,172,1,1),(96,10,164,1,1),(97,11,178,1,1),(98,14,159,1,1),(99,2,53,1,1),(100,1,55,1,1),(101,1,56,1,1),(102,6,198,1,1),(103,6,155,1,1),(104,6,156,1,1),(105,6,190,1,1),(106,6,193,1,1),(107,6,202,1,1),(108,6,80,1,1),(109,6,81,1,1),(110,6,84,1,1),(111,7,132,1,1),(112,7,126,1,1),(113,7,100,1,1),(114,7,83,1,1),(115,7,175,1,1),(116,8,45,1,1),(117,7,82,1,1),(118,8,120,1,1),(119,9,60,1,1),(120,8,60,1,1),(121,8,46,1,1),(122,9,65,1,1),(123,10,66,1,1),(124,10,67,1,1),(125,15,101,1,1),(126,2,105,1,1),(127,4,107,1,1),(128,4,108,1,1),(129,4,109,1,1),(130,6,147,1,1),(131,11,144,1,1),(132,11,145,1,1),(133,11,160,1,1),(134,11,161,1,1),(135,7,166,1,1),(136,10,165,1,1),(137,10,183,1,1),(138,1,9,0,1),(139,12,209,0,1),(140,12,210,0,1),(141,12,211,0,1),(142,12,212,0,1),(143,12,213,0,1),(144,12,214,0,1),(145,12,215,0,1),(146,12,216,1,1),(147,12,217,1,1),(148,12,218,1,1),(149,12,219,1,1),(150,12,220,1,1),(151,3,204,0,1);
/*!40000 ALTER TABLE `modulemenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulereport`
--

DROP TABLE IF EXISTS `modulereport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulereport` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idModule` int(12) unsigned DEFAULT NULL,
  `idReport` int(12) unsigned DEFAULT NULL,
  `hidden` int(1) DEFAULT 1,
  `active` int(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `moduleReportReport` (`idReport`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulereport`
--

LOCK TABLES `modulereport` WRITE;
/*!40000 ALTER TABLE `modulereport` DISABLE KEYS */;
INSERT INTO `modulereport` VALUES (1,3,1,0,1),(2,3,2,0,1),(3,3,3,0,1),(4,3,28,0,1),(5,3,29,0,1),(6,3,30,0,1),(7,3,54,0,1),(8,3,55,0,1),(9,3,56,0,1),(10,1,7,0,1),(11,1,49,0,1),(12,1,8,0,1),(13,1,78,0,1),(14,1,5,0,1),(15,1,6,0,1),(16,1,42,0,1),(17,1,31,0,1),(18,1,57,0,1),(19,1,58,0,1),(20,1,19,0,1),(21,1,20,0,1),(22,1,76,0,1),(23,1,77,0,1),(24,1,32,0,1),(25,1,52,0,1),(26,1,4,0,1),(27,1,60,0,1),(28,2,9,0,1),(29,2,10,0,1),(30,2,11,0,1),(31,2,12,0,1),(32,2,13,0,1),(33,2,17,0,1),(34,2,14,0,1),(35,2,15,0,1),(36,2,16,0,1),(37,2,18,0,1),(38,2,73,0,1),(39,2,74,0,1),(40,2,80,0,1),(41,2,83,0,1),(42,2,21,0,1),(43,1,21,0,1),(44,2,22,0,1),(45,1,22,0,1),(46,8,23,0,1),(47,8,47,0,1),(48,11,39,0,1),(49,1,63,0,1),(50,1,26,0,1),(51,6,26,0,1),(52,1,27,0,1),(53,6,27,0,1),(54,6,33,0,1),(55,6,34,0,1),(56,6,35,0,1),(57,1,36,0,1),(58,6,36,0,1),(59,7,37,0,1),(60,7,45,0,1),(61,7,46,0,1),(62,6,86,0,1),(63,6,87,0,1),(64,4,44,0,1),(65,4,41,0,1),(66,4,53,0,1),(67,4,43,0,1),(68,4,81,0,1),(69,4,82,0,1),(70,4,88,0,1),(71,4,79,0,1),(72,4,84,0,1),(73,4,89,0,1),(74,4,90,0,1),(75,4,91,0,1),(76,4,92,0,1),(77,1,59,0,1),(78,1,61,0,1),(79,1,62,0,1),(80,1,75,0,1),(81,2,75,0,1),(82,1,64,0,1),(83,1,65,0,1),(84,3,66,0,1),(85,3,67,0,1),(86,10,69,0,1),(87,10,70,0,1),(88,10,71,0,1),(89,10,72,0,1),(90,7,68,0,1);
/*!40000 ALTER TABLE `modulereport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mutex`
--

DROP TABLE IF EXISTS `mutex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mutex` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mutex`
--

LOCK TABLES `mutex` WRITE;
/*!40000 ALTER TABLE `mutex` DISABLE KEYS */;
/*!40000 ALTER TABLE `mutex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `refType` varchar(100) NOT NULL,
  `refId` int(12) unsigned NOT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `note` mediumtext DEFAULT NULL,
  `idPrivacy` int(12) unsigned DEFAULT 1,
  `idTeam` int(12) unsigned DEFAULT 1,
  `fromEmail` int(1) unsigned DEFAULT 0,
  `idProject` int(12) DEFAULT NULL,
  `idle` int(1) DEFAULT 0,
  `idNote` int(12) DEFAULT NULL,
  `replyLevel` int(12) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `noteUser` (`idUser`),
  KEY `noteRef` (`refType`,`refId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noteflux`
--

DROP TABLE IF EXISTS `noteflux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noteflux` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noteflux`
--

LOCK TABLES `noteflux` WRITE;
/*!40000 ALTER TABLE `noteflux` DISABLE KEYS */;
/*!40000 ALTER TABLE `noteflux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifiable`
--

DROP TABLE IF EXISTS `notifiable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifiable` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `notifiableItem` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `idle` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifiable`
--

LOCK TABLES `notifiable` WRITE;
/*!40000 ALTER TABLE `notifiable` DISABLE KEYS */;
INSERT INTO `notifiable` VALUES (1,'Action','Action',0),(3,'Bill','Bill',0),(4,'Command','Command',0),(5,'Deliverable','Deliverable',0),(6,'Incoming','Incoming',0),(7,'Issue','Issue',0),(8,'Meeting','Meeting',0),(10,'Opportunity','Opportunity',0),(11,'ProjectExpense','ProjectExpense',0),(12,'Quotation','Quotation',0),(13,'Requirement','Requirement',0),(14,'Risk','Risk',0),(15,'Ticket','Ticket',0),(16,'Term','Term',0),(17,'Delivery','Delivery',0),(18,'ProviderOrder','ProviderOrder',0),(19,'ProviderTerm','ProviderTerm',0),(20,'ProviderBill','ProviderBill',0),(21,'Tender','Tender',0),(22,'Leave','Leave',0),(23,'EmployeeLeaveEarned','Leave Earned',0),(24,'Workflow','Workflow',0),(25,'Status','Status',0),(26,'LeaveType','Leave Type',0),(27,'Leave','leave period',0),(28,'EmployeeLeaveEarned','leave rights earned',0),(29,'Workflow','Workflow',0),(30,'Status','Status',0),(31,'LeaveType','Leave type',0);
/*!40000 ALTER TABLE `notifiable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idNotificationDefinition` int(12) unsigned DEFAULT NULL,
  `idNotifiable` int(12) unsigned DEFAULT NULL,
  `idMenu` int(12) unsigned DEFAULT NULL,
  `idNotificationType` int(12) unsigned DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `idStatusNotification` int(12) unsigned DEFAULT NULL,
  `title` varchar(4000) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `creationDateTime` datetime DEFAULT NULL,
  `notificationDate` date DEFAULT NULL,
  `notificationTime` time DEFAULT NULL,
  `notifiedObjectId` int(12) unsigned DEFAULT NULL,
  `sendEmail` int(1) NOT NULL DEFAULT 0,
  `emailSent` int(1) NOT NULL DEFAULT 0,
  `idle` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `notificationHasNotificationDefinition_idx` (`idNotificationDefinition`),
  KEY `notificationNotifiable_idx` (`idNotifiable`),
  KEY `notificationStatusNotification_idx` (`idStatusNotification`),
  KEY `notificationNotificationType_idx` (`idNotificationType`),
  KEY `notificationMenu_idx` (`idMenu`),
  KEY `notificationResource_idx` (`idResource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationdefinition`
--

DROP TABLE IF EXISTS `notificationdefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificationdefinition` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idNotifiable` int(12) unsigned DEFAULT NULL,
  `idMenu` int(12) unsigned DEFAULT NULL,
  `idNotificationType` int(12) unsigned DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `notificationRule` varchar(400) DEFAULT NULL,
  `notificationReceivers` varchar(400) DEFAULT NULL,
  `sendEmail` int(1) NOT NULL DEFAULT 0,
  `targetDateNotifiableField` varchar(100) DEFAULT NULL,
  `everyDay` int(1) NOT NULL DEFAULT 0,
  `everyWeek` int(1) NOT NULL DEFAULT 0,
  `everyMonth` int(1) NOT NULL DEFAULT 0,
  `everyYear` int(1) NOT NULL DEFAULT 0,
  `fixedDay` int(5) DEFAULT NULL,
  `fixedMonth` int(5) DEFAULT NULL,
  `notificationNbRepeatsBefore` int(5) DEFAULT NULL,
  `notificationGenerateBefore` int(5) DEFAULT NULL,
  `notificationGenerateBeforeInMin` int(5) DEFAULT NULL,
  `idle` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `notificationdefinitionNotifiable_idx` (`idNotifiable`),
  KEY `notificationdefinitionNotificationType_idx` (`idNotificationType`),
  KEY `notificationdefinitionMenu_idx` (`idMenu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationdefinition`
--

LOCK TABLES `notificationdefinition` WRITE;
/*!40000 ALTER TABLE `notificationdefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificationdefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunity`
--

DROP TABLE IF EXISTS `opportunity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunity` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idOpportunityType` int(12) unsigned DEFAULT NULL,
  `cause` mediumtext DEFAULT NULL,
  `impact` mediumtext DEFAULT NULL,
  `idSeverity` int(12) unsigned DEFAULT NULL,
  `idLikelihood` int(12) unsigned DEFAULT NULL,
  `idCriticality` int(12) unsigned DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `initialEndDate` date DEFAULT NULL,
  `actualEndDate` date DEFAULT NULL,
  `idleDate` date DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `done` int(1) unsigned DEFAULT 0,
  `doneDate` date DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `idPriority` int(12) unsigned DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `impactCost` decimal(11,2) unsigned DEFAULT 0.00,
  `projectReserveAmount` decimal(11,2) unsigned DEFAULT 0.00,
  PRIMARY KEY (`id`),
  KEY `opportunityProject` (`idProject`),
  KEY `opportunityUser` (`idUser`),
  KEY `opportunityResource` (`idResource`),
  KEY `opportunityStatus` (`idStatus`),
  KEY `opportunityType` (`idOpportunityType`),
  KEY `opportunitySeverity` (`idSeverity`),
  KEY `opportunityLikelihood` (`idLikelihood`),
  KEY `opportunityCriticality` (`idCriticality`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunity`
--

LOCK TABLES `opportunity` WRITE;
/*!40000 ALTER TABLE `opportunity` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `sortOrder` varchar(400) DEFAULT NULL,
  `idOrganizationType` int(12) unsigned DEFAULT NULL,
  `idOrganization` int(12) unsigned DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `lastUpdateDateTime` datetime DEFAULT NULL,
  `alertOverPct` int(3) unsigned NOT NULL DEFAULT 0,
  `warningOverPct` int(3) unsigned NOT NULL DEFAULT 0,
  `okUnderPct` int(3) unsigned NOT NULL DEFAULT 0,
  `idleDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resourceOrganization` (`idResource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origin`
--

DROP TABLE IF EXISTS `origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `origin` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `originType` varchar(100) DEFAULT NULL,
  `originId` int(12) unsigned DEFAULT NULL,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `originOrigin` (`originType`,`originId`),
  KEY `originRef` (`refType`,`refId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origin`
--

LOCK TABLES `origin` WRITE;
/*!40000 ALTER TABLE `origin` DISABLE KEYS */;
/*!40000 ALTER TABLE `origin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `originable`
--

DROP TABLE IF EXISTS `originable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `originable` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `originable`
--

LOCK TABLES `originable` WRITE;
/*!40000 ALTER TABLE `originable` DISABLE KEYS */;
INSERT INTO `originable` VALUES (1,'Ticket',0),(2,'Activity',0),(3,'Milestone',0),(4,'IndividualExpense',0),(5,'ProjectExpense',0),(6,'Risk',0),(7,'Action',0),(8,'Issue',0),(9,'Meeting',0),(10,'Decision',0),(11,'Question',0),(12,'Project',0),(13,'Document',0),(14,'Requirement',0),(15,'TestSession',0),(16,'TestCase',0),(17,'Command',0),(18,'Quotation',0),(19,'Bill',0),(20,'Deliverable',0),(21,'Delivery',0),(22,'Incoming',0),(23,'Opportunity',0),(24,'Tender',0);
/*!40000 ALTER TABLE `originable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otherclient`
--

DROP TABLE IF EXISTS `otherclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otherclient` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned NOT NULL,
  `idClient` int(12) unsigned NOT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `otherclientRef` (`refType`,`refId`),
  KEY `otherclientVersion` (`idClient`),
  KEY `otherclientUser` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otherclient`
--

LOCK TABLES `otherclient` WRITE;
/*!40000 ALTER TABLE `otherclient` DISABLE KEYS */;
/*!40000 ALTER TABLE `otherclient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otherversion`
--

DROP TABLE IF EXISTS `otherversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otherversion` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned NOT NULL,
  `idVersion` int(12) unsigned NOT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `otherversionRef` (`refType`,`refId`),
  KEY `otherversionVersion` (`idVersion`),
  KEY `otherversionUser` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otherversion`
--

LOCK TABLES `otherversion` WRITE;
/*!40000 ALTER TABLE `otherversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `otherversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overallprogress`
--

DROP TABLE IF EXISTS `overallprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `overallprogress` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overallprogress`
--

LOCK TABLES `overallprogress` WRITE;
/*!40000 ALTER TABLE `overallprogress` DISABLE KEYS */;
INSERT INTO `overallprogress` VALUES (1,'0%',100,0),(2,'10%',200,0),(3,'25%',300,0),(4,'50%',400,0),(5,'75%',500,0),(6,'90%',600,0),(7,'100%',700,0);
/*!40000 ALTER TABLE `overallprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parameter`
--

DROP TABLE IF EXISTS `parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parameter` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `parameterCode` varchar(100) DEFAULT NULL,
  `parameterValue` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parameterProject` (`idProject`),
  KEY `parameterUser` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parameter`
--

LOCK TABLES `parameter` WRITE;
/*!40000 ALTER TABLE `parameter` DISABLE KEYS */;
INSERT INTO `parameter` VALUES (1,NULL,NULL,'dbVersion','V8.0.4'),(2,1,NULL,'destinationWidth','847'),(3,1,NULL,'theme','ProjeQtOrFlatBlue'),(4,1,NULL,'lang','en'),(5,1,NULL,'defaultProject','3'),(6,1,NULL,'displayAttachment','YES_CLOSED'),(7,1,NULL,'displayNote','YES_CLOSED'),(8,1,NULL,'displayHistory','YES'),(9,1,NULL,'refreshUpdates','YES'),(10,3,NULL,'destinationWidth','719'),(11,3,NULL,'theme','ProjeQtOrFlatBlue'),(12,3,NULL,'lang','en'),(13,3,NULL,'defaultProject','3'),(14,3,NULL,'displayAttachment','YES_CLOSED'),(15,3,NULL,'displayNote','YES_CLOSED'),(16,3,NULL,'displayHistory','YES'),(17,3,NULL,'refreshUpdates','YES'),(18,NULL,NULL,'isManualProgress','YES'),(19,NULL,NULL,'startAM','08:00'),(20,NULL,NULL,'endAM','12:00'),(21,NULL,NULL,'startPM','14:00'),(22,NULL,NULL,'endPM','18:00'),(23,NULL,NULL,'dayTime','8.00'),(24,NULL,NULL,'alertCheckTime','60'),(25,NULL,NULL,'cronSleepTime','10'),(26,NULL,NULL,'cronCheckDates','30'),(27,NULL,NULL,'ldapDefaultProfile','5'),(28,NULL,NULL,'ldapMsgOnUserCreation','NO'),(29,NULL,NULL,'csvSeparator',';'),(30,NULL,NULL,'referenceFormatPrefix','{PROJ}-{TYPE}-'),(31,NULL,NULL,'changeReferenceOnTypeChange','NO'),(32,NULL,NULL,'draftSeparator','_draft'),(33,NULL,NULL,'documentRoot','../files/documents'),(34,NULL,NULL,'billPrefix','BILL'),(35,NULL,NULL,'billSuffix','_FR'),(36,NULL,NULL,'billNumSize','5'),(37,NULL,NULL,'billNumStart','10000'),(38,NULL,NULL,'displayResourcePlan','initials'),(39,NULL,NULL,'maxProjectsToDisplay','25'),(40,NULL,NULL,'paramMailTitleStatus','[${dbName}] ${item} #${id} moved to status \'${status}\' : \"${name}\"'),(41,NULL,NULL,'paramMailTitleResponsible','[${dbName}] ${responsible} is now responsible of ${item} #${id} : \"${name}\"'),(42,NULL,NULL,'paramMailTitleNote','[${dbName}] New note has been posted on ${item} #${id} : \"${name}\"'),(43,NULL,NULL,'paramMailTitleAttachment','[${dbName}] New attachment has been posted on ${item} #${id} : \"${name}\"'),(44,NULL,NULL,'paramMailTitleNew','[${dbName}] ${item} #${id} has been created : \"${name}\"'),(45,NULL,NULL,'cronCheckImport','60'),(46,NULL,NULL,'cronImportDirectory','../files/import'),(47,NULL,NULL,'cronImportLogDestination','file'),(48,NULL,NULL,'cronImportMailList',''),(49,NULL,NULL,'cronDirectory','../files/cron'),(50,NULL,NULL,'paramMailTitleDirect','[${dbName}] message from ${sender} : ${item} #${id}'),(51,NULL,NULL,'maxItemsInTodayLists','100'),(52,NULL,NULL,'msgClosedApplication','Application is closed. \nOnly admin user can connect. \nPlease come back later.'),(53,NULL,NULL,'paramMailBodyUser','You are welcome to ${dbName} at <a href=\"${url}\">${url}</a>.<br/>Your login is <b>${login}</b>.<br/>Your password is initialized to <b>${password}</b><br/>You will have to change it on first connection.<br/><br/>In case of an issue contact your administrator at <b>${adminMail}</b>.'),(54,NULL,NULL,'paramMailTitleUser','[${dbName}] message from ${sender} : Your account information'),(55,NULL,NULL,'paramMailTitleNoteChange','[${dbName}] A note has been modified on ${item} #${id} : \"${name}\"'),(56,NULL,NULL,'paramMailTitleDescription','[${dbName}] Description has been modified on ${item} #${id} : \"${name}\"'),(57,NULL,NULL,'paramMailTitleResult','[${dbName}] Result has been modified on ${item} #${id} : \"${name}'),(58,NULL,NULL,'paramMailTitleAssignment','[${dbName}] New assignment has been added on ${item} #${id} : \"${name}\"'),(59,NULL,NULL,'paramMailTitleAssignmentChange','[${dbName}] An assignment has been modified on ${item} #${id} : \"${name}\"'),(60,NULL,NULL,'paramMailTitleAnyChange','[${dbName}] ${item} #${id} has been modified : \"${name}\"'),(61,NULL,NULL,'documentReferenceFormat','{PROJ}-{TYPE}-{NUM}-{NAME}'),(62,NULL,NULL,'versionReferenceSuffix','-{VERS}'),(63,NULL,NULL,'realWorkOnlyForResponsible','NO'),(64,NULL,NULL,'maxDaysToBookWork','7'),(65,NULL,NULL,'cronCheckEmails','-1'),(66,NULL,NULL,'paramTopIconSize','16'),(67,NULL,NULL,'paramMailTitleApprover','[${dbName}] message from ${sender} : You need to approve a document'),(68,NULL,NULL,'paramMailBodyApprover','[${dbName}] You are approver of <a href=\"${url}\" > Document #${id}</a> : \"${name}\".<br/>Please access <a href=\"${url}\" >this document</a> and follow approval process.'),(69,NULL,NULL,'startPage','today.php'),(70,NULL,NULL,'setDoneOnNoLeftWork','YES'),(71,NULL,NULL,'messageAlertImputationResource','Your real work allocation is not complete up to ${DAY}'),(72,NULL,NULL,'messageAlertImputationProjectLeader','Some of your resources did not enter real work up to ${DAY}'),(73,NULL,NULL,'imputationAlertGenerationDay','5'),(74,NULL,NULL,'imputationAlertGenerationHour','17:00'),(75,NULL,NULL,'imputationAlertControlDay','current'),(76,NULL,NULL,'imputationAlertControlNumberOfDays','7'),(77,NULL,NULL,'imputationAlertSendToResource','MAIL'),(78,NULL,NULL,'imputationAlertSendToProjectLeader','MAIL'),(79,NULL,NULL,'imputationAlertSendToTeamManager','MAIL'),(80,NULL,NULL,'OpenDaySunday','offDays'),(81,NULL,NULL,'OpenDaySaturday','offDays'),(82,NULL,NULL,'OpenDayFriday','openDays'),(83,NULL,NULL,'OpenDayThursday','openDays'),(84,NULL,NULL,'OpenDayWednesday','openDays'),(85,NULL,NULL,'OpenDayTuesday','openDays'),(86,NULL,NULL,'OpenDayMonday','openDays'),(87,1,NULL,'planningHideColumnValidatedCost','1'),(88,2,NULL,'planningHideColumnValidatedCost','1'),(90,1,NULL,'planningHideColumnAssignedCost','1'),(91,2,NULL,'planningHideColumnAssignedCost','1'),(93,1,NULL,'planningHideColumnRealCost','1'),(94,2,NULL,'planningHideColumnRealCost','1'),(96,1,NULL,'planningHideColumnLeftCost','1'),(97,2,NULL,'planningHideColumnLeftCost','1'),(99,1,NULL,'planningHideColumnPlannedCost','1'),(100,2,NULL,'planningHideColumnPlannedCost','1'),(102,1,NULL,'planningHideColumnIdStatus','1'),(103,2,NULL,'planningHideColumnIdStatus','1'),(105,1,NULL,'planningHideColumnType','1'),(106,2,NULL,'planningHideColumnType','1'),(108,NULL,NULL,'useOrganizationBudgetElement','NO'),(109,NULL,NULL,'paramMailTitleAffectationAdd','[${dbName}] New allocation of resource ${responsible} has been created on Project ${project}'),(110,NULL,NULL,'paramMailTitleAffectationChange','[${dbName}] Allocation of resource ${responsible} has been changed on Project ${project}'),(111,NULL,NULL,'paramMailTitleLinkAdd','[${dbName}] New link #${id} has been created on ${item} #${id} '),(112,NULL,NULL,'paramMailTitleLinkDelete','[${dbName}] Link #${id} has been removed from ${item} #${id}'),(113,NULL,NULL,'mailerTestTitle','[${dbName}] test email sent at ${date}'),(114,NULL,NULL,'mailerTestMessage','This is a test email sent from ${dbName} at ${date}.<br/>Receiving this email means that counfiguration is correct.'),(115,NULL,NULL,'autoSetAssignmentByResponsible','YES'),(116,NULL,NULL,'notificationSystemActiv','NO'),(117,NULL,NULL,'cronCheckNotifications','3600'),(118,NULL,NULL,'mailGroupPeriod','60'),(119,NULL,NULL,'mailGroupActive','NO'),(120,NULL,NULL,'mailGroupDifferent','ALL'),(121,NULL,NULL,'ImputOfAmountProvider','HT'),(122,NULL,NULL,'ImputOfBillLineProvider','HT'),(123,NULL,NULL,'ImputOfAmountClient','HT'),(124,NULL,NULL,'ImputOfBillLineClient','HT'),(125,NULL,NULL,'authorizeActivityOnDeliveredProduct','YES'),(126,NULL,NULL,'paramMailBodyReport','[${dbName}] Report ${report} - ${date}'),(127,NULL,NULL,'paramMailTitleReport','[${dbName}] Report ${report} - ${date}'),(128,NULL,NULL,'leavesSystemActiv','NO'),(129,NULL,NULL,'leavesSystemAdmin','1'),(130,NULL,NULL,'typeExportXLSorODS','Excel'),(131,NULL,NULL,'consolidateValidated','IFSET'),(132,1,NULL,'startPage','startGuide.php'),(133,NULL,NULL,'paramDbDisplayName','ProjeQtOr'),(134,NULL,NULL,'paramMailTitle',NULL),(135,NULL,NULL,'paramMailMessage',NULL),(136,NULL,NULL,'paramMailSender',NULL),(137,NULL,NULL,'paramMailReplyTo',NULL),(138,NULL,NULL,'paramAdminMail',NULL),(139,NULL,NULL,'paramMailSmtpServer','localhost'),(140,NULL,NULL,'paramMailSmtpPort','25'),(141,NULL,NULL,'paramMailSendmailPath',NULL),(142,NULL,NULL,'paramMailShowDetail',NULL),(143,NULL,NULL,'paramLdap_allow_login','false'),(144,NULL,NULL,'paramLdap_base_dn','dc=mydomain,dc=com'),(145,NULL,NULL,'paramLdap_host','localhost'),(146,NULL,NULL,'paramLdap_port','389'),(147,NULL,NULL,'paramLdap_version','3'),(148,NULL,NULL,'paramLdap_search_user','cn=Manager,dc=mydomain,dc=com'),(149,NULL,NULL,'paramLdap_search_pass','secret'),(150,NULL,NULL,'paramLdap_user_filter','uid=%USERNAME%'),(151,NULL,NULL,'paramDefaultPassword','projeqtor'),(152,NULL,NULL,'paramPasswordMinLength','5'),(153,NULL,NULL,'lockPassword',NULL),(154,NULL,NULL,'paramDefaultLocale','en'),(155,NULL,NULL,'paramDefaultTimezone','Europe/Paris'),(156,NULL,NULL,'currency','â‚¬'),(157,NULL,NULL,'currencyPosition','after'),(158,NULL,NULL,'paramFadeLoadingMode','true'),(159,NULL,NULL,'paramRowPerPage',NULL),(160,NULL,NULL,'paramIconSize','22'),(161,NULL,NULL,'defaultTheme','ProjeQtOrFlatBlue'),(162,NULL,NULL,'paramPathSeparator','/'),(163,NULL,NULL,'paramAttachmentDirectory','../files/attach/'),(164,NULL,NULL,'paramAttachmentMaxSize','2097152'),(165,NULL,NULL,'paramReportTempDirectory','../files/report/'),(166,NULL,NULL,'paramMemoryLimitForPDF','512'),(167,NULL,NULL,'defaultBillCode',NULL),(168,NULL,NULL,'paramMailEol','CRLF'),(169,NULL,NULL,'defaultProfile','5'),(170,NULL,NULL,'billReferenceFormat','{NUME}'),(171,NULL,NULL,'imputationAlertSendToOrganismManager',NULL),(172,NULL,NULL,'imputationAlertControlDayResource',NULL),(173,NULL,NULL,'imputationAlertControlNumberOfDaysResource',NULL),(174,NULL,NULL,'imputationAlertControlDayProjectLeader',NULL),(175,NULL,NULL,'imputationAlertControlNumberOfDaysProjectLeader',NULL),(176,NULL,NULL,'imputationAlertControlDayTeamManager',NULL),(177,NULL,NULL,'imputationAlertControlNumberOfDaysTeamManager',NULL),(178,NULL,NULL,'imputationAlertControlDayOrganismManager',NULL),(179,NULL,NULL,'imputationAlertControlNumberOfDaysOrganismManager',NULL),(180,1,NULL,'accordionPaneBottom','projectLinkDiv'),(181,1,NULL,'contentPaneLeftBottomDivHeight','300'),(182,1,NULL,'accordionPaneTop','messageDiv'),(183,1,NULL,'contentPaneLeftDivWidth','384');
/*!40000 ALTER TABLE `parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idBill` int(12) unsigned DEFAULT NULL,
  `paymentDate` date DEFAULT NULL,
  `idPaymentMode` int(12) unsigned DEFAULT NULL,
  `idle` int(1) DEFAULT 0,
  `idPaymentType` int(12) unsigned DEFAULT NULL,
  `paymentAmount` decimal(11,2) unsigned DEFAULT NULL,
  `paymentFeeAmount` decimal(11,2) unsigned DEFAULT NULL,
  `paymentCreditAmount` decimal(11,2) unsigned DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `referenceBill` varchar(100) DEFAULT NULL,
  `idClient` int(12) unsigned DEFAULT NULL,
  `idRecipient` int(12) unsigned DEFAULT NULL,
  `billAmount` decimal(11,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paymentBill` (`idBill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentdelay`
--

DROP TABLE IF EXISTS `paymentdelay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymentdelay` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `days` int(3) unsigned DEFAULT NULL,
  `endOfMonth` int(1) DEFAULT 0,
  `sortOrder` int(3) DEFAULT 0,
  `idle` int(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentdelay`
--

LOCK TABLES `paymentdelay` WRITE;
/*!40000 ALTER TABLE `paymentdelay` DISABLE KEYS */;
INSERT INTO `paymentdelay` VALUES (1,'15 days',15,0,10,0),(2,'15 days end of month',15,1,20,0),(3,'30 days',30,0,30,0),(4,'30 days end of month',30,1,40,0),(5,'45 days',45,0,50,0),(6,'45 days end of month',45,1,60,0),(7,'60 days',60,0,70,0),(8,'on order',0,0,80,0);
/*!40000 ALTER TABLE `paymentdelay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmode`
--

DROP TABLE IF EXISTS `paymentmode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymentmode` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `sortOrder` int(3) DEFAULT 0,
  `idle` int(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmode`
--

LOCK TABLES `paymentmode` WRITE;
/*!40000 ALTER TABLE `paymentmode` DISABLE KEYS */;
INSERT INTO `paymentmode` VALUES (1,'bank transfer',10,0),(2,'cheque',20,0),(3,'credit card',30,0),(4,'virtual payment terminal',40,0),(5,'paypal',50,0);
/*!40000 ALTER TABLE `paymentmode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodicity`
--

DROP TABLE IF EXISTS `periodicity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodicity` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `periodicityCode` varchar(10) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodicity`
--

LOCK TABLES `periodicity` WRITE;
/*!40000 ALTER TABLE `periodicity` DISABLE KEYS */;
INSERT INTO `periodicity` VALUES (1,'periodicityDaily','DAY',100,0),(2,'periodicityWeekly','WEEK',200,0),(3,'periodicityMonthlyDay','MONTHDAY',300,0),(4,'periodicityMonthlyWeek','MONTHWEEK',400,0),(5,'periodicityYearly','YEAR',500,1);
/*!40000 ALTER TABLE `periodicity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodicmeeting`
--

DROP TABLE IF EXISTS `periodicmeeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodicmeeting` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idMeetingType` int(12) unsigned DEFAULT NULL,
  `idActivity` int(12) unsigned DEFAULT NULL,
  `periodicityStartDate` date DEFAULT NULL,
  `periodicityEndDate` date DEFAULT NULL,
  `meetingStartTime` time DEFAULT NULL,
  `meetingEndTime` time DEFAULT NULL,
  `periodicityTimes` int(3) DEFAULT NULL,
  `idPeriodicity` int(12) unsigned DEFAULT NULL,
  `periodicityDailyFrequency` int(2) DEFAULT NULL,
  `periodicityWeeklyFrequency` int(2) DEFAULT NULL,
  `periodicityWeeklyDay` int(1) DEFAULT NULL,
  `periodicityMonthlyDayFrequency` int(2) DEFAULT NULL,
  `periodicityMonthlyDayDay` int(2) DEFAULT NULL,
  `periodicityMonthlyWeekFrequency` int(2) DEFAULT NULL,
  `periodicityMonthlyWeekNumber` int(1) DEFAULT NULL,
  `periodicityMonthlyWeekDay` int(2) DEFAULT NULL,
  `periodicityYearlyDay` int(2) DEFAULT NULL,
  `periodicityYearlyMonth` int(2) DEFAULT NULL,
  `periodicityOpenDays` int(1) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `attendees` varchar(4000) DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `periodicmeetingProject` (`idProject`),
  KEY `periodicmeetingType` (`idMeetingType`),
  KEY `periodicmeetingUser` (`idUser`),
  KEY `periodicmeetingResource` (`idResource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodicmeeting`
--

LOCK TABLES `periodicmeeting` WRITE;
/*!40000 ALTER TABLE `periodicmeeting` DISABLE KEYS */;
/*!40000 ALTER TABLE `periodicmeeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plannedwork`
--

DROP TABLE IF EXISTS `plannedwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plannedwork` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idResource` int(12) unsigned NOT NULL,
  `idProject` int(12) unsigned NOT NULL,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned NOT NULL,
  `idAssignment` int(12) unsigned DEFAULT NULL,
  `work` decimal(8,5) unsigned DEFAULT NULL,
  `workDate` date DEFAULT NULL,
  `day` varchar(8) DEFAULT NULL,
  `week` varchar(6) DEFAULT NULL,
  `month` varchar(6) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `dailyCost` decimal(7,2) DEFAULT NULL,
  `cost` decimal(11,2) DEFAULT NULL,
  `idLeave` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plannedworkDay` (`day`),
  KEY `plannedworkWeek` (`week`),
  KEY `plannedworkMonth` (`month`),
  KEY `plannedworkYear` (`year`),
  KEY `plannedworkRef` (`refType`,`refId`),
  KEY `plannedworkResource` (`idResource`),
  KEY `plannedworkAssignment` (`idAssignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plannedwork`
--

LOCK TABLES `plannedwork` WRITE;
/*!40000 ALTER TABLE `plannedwork` DISABLE KEYS */;
/*!40000 ALTER TABLE `plannedwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plannedworkbaseline`
--

DROP TABLE IF EXISTS `plannedworkbaseline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plannedworkbaseline` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idBaseline` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned NOT NULL,
  `idProject` int(12) unsigned NOT NULL,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned NOT NULL,
  `idAssignment` int(12) unsigned DEFAULT NULL,
  `work` decimal(8,5) unsigned DEFAULT NULL,
  `workDate` date DEFAULT NULL,
  `day` varchar(8) DEFAULT NULL,
  `week` varchar(6) DEFAULT NULL,
  `month` varchar(6) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `dailyCost` decimal(7,2) DEFAULT NULL,
  `cost` decimal(11,2) DEFAULT NULL,
  `isRealWork` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `plannedworkbaselineWorkDate` (`workDate`),
  KEY `plannedworkbaselineRef` (`refType`,`refId`),
  KEY `plannedworkbaselineBaseline` (`idBaseline`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plannedworkbaseline`
--

LOCK TABLES `plannedworkbaseline` WRITE;
/*!40000 ALTER TABLE `plannedworkbaseline` DISABLE KEYS */;
/*!40000 ALTER TABLE `plannedworkbaseline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planningelement`
--

DROP TABLE IF EXISTS `planningelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planningelement` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `refType` varchar(100) NOT NULL,
  `refId` int(12) unsigned NOT NULL,
  `refName` varchar(100) DEFAULT NULL,
  `initialStartDate` date DEFAULT NULL,
  `validatedStartDate` date DEFAULT NULL,
  `plannedStartDate` date DEFAULT NULL,
  `realStartDate` date DEFAULT NULL,
  `initialEndDate` date DEFAULT NULL,
  `validatedEndDate` date DEFAULT NULL,
  `plannedEndDate` date DEFAULT NULL,
  `realEndDate` date DEFAULT NULL,
  `initialDuration` int(5) DEFAULT NULL,
  `validatedDuration` int(5) unsigned DEFAULT NULL,
  `plannedDuration` int(5) DEFAULT NULL,
  `realDuration` int(5) DEFAULT NULL,
  `initialWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `validatedWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `plannedWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `realWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `wbs` varchar(100) DEFAULT NULL,
  `wbsSortable` varchar(600) DEFAULT NULL,
  `topId` int(12) unsigned DEFAULT NULL,
  `topRefType` varchar(100) DEFAULT NULL,
  `topRefId` int(12) unsigned DEFAULT NULL,
  `priority` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT NULL,
  `elementary` int(1) unsigned DEFAULT NULL,
  `leftWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `assignedWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `dependencyLevel` decimal(3,0) unsigned DEFAULT NULL,
  `idPlanningMode` int(12) DEFAULT NULL,
  `done` int(1) unsigned DEFAULT 0,
  `initialCost` decimal(11,2) DEFAULT NULL,
  `validatedCost` decimal(11,2) DEFAULT NULL,
  `assignedCost` decimal(11,2) DEFAULT NULL,
  `realCost` decimal(11,2) DEFAULT NULL,
  `leftCost` decimal(11,2) DEFAULT NULL,
  `plannedCost` decimal(11,2) DEFAULT NULL,
  `idBill` int(12) unsigned DEFAULT NULL,
  `progress` int(3) unsigned DEFAULT 0,
  `expectedProgress` int(6) unsigned DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `validatedCalculated` int(1) unsigned DEFAULT 0,
  `workElementEstimatedWork` decimal(9,5) unsigned DEFAULT NULL,
  `workElementRealWork` decimal(9,5) unsigned DEFAULT NULL,
  `workElementLeftWork` decimal(9,5) unsigned DEFAULT NULL,
  `workElementCount` decimal(5,0) unsigned DEFAULT NULL,
  `expenseAssignedAmount` decimal(11,2) unsigned DEFAULT NULL,
  `expensePlannedAmount` decimal(11,2) unsigned DEFAULT NULL,
  `expenseRealAmount` decimal(11,2) unsigned DEFAULT NULL,
  `expenseLeftAmount` decimal(11,2) unsigned DEFAULT NULL,
  `expenseValidatedAmount` decimal(11,2) unsigned DEFAULT NULL,
  `totalAssignedCost` decimal(12,2) DEFAULT NULL,
  `totalPlannedCost` decimal(12,2) DEFAULT NULL,
  `totalRealCost` decimal(12,2) DEFAULT NULL,
  `totalLeftCost` decimal(12,2) DEFAULT NULL,
  `totalValidatedCost` decimal(12,2) DEFAULT NULL,
  `notPlannedWork` decimal(12,5) unsigned DEFAULT 0.00000,
  `marginWork` decimal(14,5) DEFAULT NULL,
  `marginCost` decimal(14,5) DEFAULT NULL,
  `marginWorkPct` int(6) DEFAULT NULL,
  `marginCostPct` int(6) DEFAULT NULL,
  `plannedStartFraction` decimal(6,5) DEFAULT 0.00000,
  `plannedEndFraction` decimal(6,5) DEFAULT 1.00000,
  `validatedStartFraction` decimal(6,5) DEFAULT 0.00000,
  `validatedEndFraction` decimal(6,5) DEFAULT 1.00000,
  `reserveAmount` decimal(12,2) DEFAULT NULL,
  `validatedExpenseCalculated` int(1) unsigned DEFAULT 0,
  `needReplan` int(1) unsigned DEFAULT 0,
  `idOrganization` int(12) unsigned DEFAULT NULL,
  `organizationInherited` int(1) unsigned DEFAULT NULL,
  `organizationElementary` int(1) unsigned DEFAULT NULL,
  `latestStartDate` date DEFAULT NULL,
  `latestEndDate` date DEFAULT NULL,
  `isOnCriticalPath` int(1) unsigned DEFAULT 0,
  `isManualProgress` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `planningelementReference` (`refType`,`refId`),
  KEY `planningelementTopId` (`topId`),
  KEY `planningelementTopRef` (`topRefType`,`topRefId`),
  KEY `planningelementProject` (`idProject`),
  KEY `planningelementWbsSortable` (`wbsSortable`(255)),
  KEY `planningElementDependencyLevel` (`dependencyLevel`),
  KEY `planningelementPlanningMode` (`idPlanningMode`),
  KEY `planningelementBill` (`idBill`),
  KEY `planningelementOrganization` (`idOrganization`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planningelement`
--

LOCK TABLES `planningelement` WRITE;
/*!40000 ALTER TABLE `planningelement` DISABLE KEYS */;
INSERT INTO `planningelement` VALUES (1,1,'Project',1,'PROJECT - LEAVE PERIOD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00000,0.00000,0.00000,0.00000,'1','00001',NULL,NULL,NULL,500,0,1,0.00000,0.00000,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00000,NULL,NULL,NULL,NULL,0.00000,1.00000,0.00000,1.00000,NULL,0,0,NULL,0,0,NULL,NULL,0,0);
/*!40000 ALTER TABLE `planningelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planningelementbaseline`
--

DROP TABLE IF EXISTS `planningelementbaseline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planningelementbaseline` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idBaseline` int(12) unsigned DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `refType` varchar(100) NOT NULL,
  `refId` int(12) unsigned NOT NULL,
  `refName` varchar(100) DEFAULT NULL,
  `initialStartDate` date DEFAULT NULL,
  `validatedStartDate` date DEFAULT NULL,
  `plannedStartDate` date DEFAULT NULL,
  `realStartDate` date DEFAULT NULL,
  `initialEndDate` date DEFAULT NULL,
  `validatedEndDate` date DEFAULT NULL,
  `plannedEndDate` date DEFAULT NULL,
  `realEndDate` date DEFAULT NULL,
  `initialDuration` int(5) DEFAULT NULL,
  `validatedDuration` int(5) unsigned DEFAULT NULL,
  `plannedDuration` int(5) DEFAULT NULL,
  `realDuration` int(5) DEFAULT NULL,
  `initialWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `validatedWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `plannedWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `realWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `wbs` varchar(100) DEFAULT NULL,
  `wbsSortable` varchar(600) DEFAULT NULL,
  `topId` int(12) unsigned DEFAULT NULL,
  `topRefType` varchar(100) DEFAULT NULL,
  `topRefId` int(12) unsigned DEFAULT NULL,
  `priority` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT NULL,
  `elementary` int(1) unsigned DEFAULT NULL,
  `leftWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `assignedWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `dependencyLevel` decimal(3,0) unsigned DEFAULT NULL,
  `idPlanningMode` int(12) DEFAULT NULL,
  `done` int(1) unsigned DEFAULT 0,
  `initialCost` decimal(11,2) DEFAULT NULL,
  `validatedCost` decimal(11,2) DEFAULT NULL,
  `assignedCost` decimal(11,2) DEFAULT NULL,
  `realCost` decimal(11,2) DEFAULT NULL,
  `leftCost` decimal(11,2) DEFAULT NULL,
  `plannedCost` decimal(11,2) DEFAULT NULL,
  `idBill` int(12) unsigned DEFAULT NULL,
  `progress` int(3) unsigned DEFAULT 0,
  `expectedProgress` int(6) unsigned DEFAULT 0,
  `cancelled` int(1) unsigned DEFAULT 0,
  `validatedCalculated` int(1) unsigned DEFAULT 0,
  `workElementEstimatedWork` decimal(9,5) unsigned DEFAULT NULL,
  `workElementRealWork` decimal(9,5) unsigned DEFAULT NULL,
  `workElementLeftWork` decimal(9,5) unsigned DEFAULT NULL,
  `workElementCount` decimal(5,0) unsigned DEFAULT NULL,
  `expenseAssignedAmount` decimal(11,2) unsigned DEFAULT NULL,
  `expensePlannedAmount` decimal(11,2) unsigned DEFAULT NULL,
  `expenseRealAmount` decimal(11,2) unsigned DEFAULT NULL,
  `expenseLeftAmount` decimal(11,2) unsigned DEFAULT NULL,
  `expenseValidatedAmount` decimal(11,2) unsigned DEFAULT NULL,
  `totalAssignedCost` decimal(11,2) unsigned DEFAULT NULL,
  `totalPlannedCost` decimal(11,2) unsigned DEFAULT NULL,
  `totalRealCost` decimal(11,2) unsigned DEFAULT NULL,
  `totalLeftCost` decimal(11,2) unsigned DEFAULT NULL,
  `totalValidatedCost` decimal(11,2) unsigned DEFAULT NULL,
  `notPlannedWork` decimal(12,5) unsigned DEFAULT 0.00000,
  `marginWork` decimal(14,5) DEFAULT NULL,
  `marginCost` decimal(14,5) DEFAULT NULL,
  `marginWorkPct` int(6) DEFAULT NULL,
  `marginCostPct` int(6) DEFAULT NULL,
  `plannedStartFraction` decimal(6,5) DEFAULT 0.00000,
  `plannedEndFraction` decimal(6,5) DEFAULT 1.00000,
  `validatedStartFraction` decimal(6,5) DEFAULT 0.00000,
  `validatedEndFraction` decimal(6,5) DEFAULT 1.00000,
  `reserveAmount` decimal(11,2) unsigned DEFAULT 0.00,
  `validatedExpenseCalculated` int(1) unsigned DEFAULT 0,
  `needReplan` int(1) unsigned DEFAULT 0,
  `latestStartDate` date DEFAULT NULL,
  `latestEndDate` date DEFAULT NULL,
  `isOnCriticalPath` int(1) unsigned DEFAULT 0,
  `isGlobal` int(1) unsigned DEFAULT 0,
  `idType` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `isManualProgress` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `planningelementbaselineBaseline` (`idBaseline`),
  KEY `planningelementbaselineRef` (`refType`,`refId`),
  KEY `planningelementbaselineProject` (`idProject`),
  KEY `planningelementbaselineWbsSortable` (`wbsSortable`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planningelementbaseline`
--

LOCK TABLES `planningelementbaseline` WRITE;
/*!40000 ALTER TABLE `planningelementbaseline` DISABLE KEYS */;
/*!40000 ALTER TABLE `planningelementbaseline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planningelementextension`
--

DROP TABLE IF EXISTS `planningelementextension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planningelementextension` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned DEFAULT NULL,
  `topId` int(12) unsigned DEFAULT NULL,
  `topRefType` varchar(100) DEFAULT NULL,
  `topRefId` int(12) unsigned DEFAULT NULL,
  `wbs` varchar(100) DEFAULT NULL,
  `wbsSortable` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `planningelementextensionReference` (`refType`,`refId`),
  KEY `planningelementextensionTopReference` (`topRefType`,`topRefId`),
  KEY `planningelementextensionWbsSortable` (`wbsSortable`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planningelementextension`
--

LOCK TABLES `planningelementextension` WRITE;
/*!40000 ALTER TABLE `planningelementextension` DISABLE KEYS */;
/*!40000 ALTER TABLE `planningelementextension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planningmode`
--

DROP TABLE IF EXISTS `planningmode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planningmode` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `mandatoryStartDate` int(1) unsigned DEFAULT 0,
  `mandatoryEndDate` int(1) unsigned DEFAULT 0,
  `applyTo` varchar(20) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `mandatoryDuration` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `planningmodeApplyTo` (`applyTo`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planningmode`
--

LOCK TABLES `planningmode` WRITE;
/*!40000 ALTER TABLE `planningmode` DISABLE KEYS */;
INSERT INTO `planningmode` VALUES (1,'PlanningModeASAP','ASAP',100,0,0,'Activity',0,0),(2,'PlanningModeREGUL','REGUL',700,1,1,'Activity',0,0),(3,'PlanningModeFULL','FULL',710,1,1,'Activity',0,0),(4,'PlanningModeALAP','ALAP',500,0,1,'Activity',0,0),(5,'PlanningModeFLOAT','FLOAT',100,0,0,'Milestone',0,0),(6,'PlanningModeFIXED','FIXED',200,0,1,'Milestone',0,0),(7,'PlanningModeHALF','HALF',720,1,1,'Activity',0,0),(8,'PlanningModeFDUR','FDUR',300,0,0,'Activity',0,1),(9,'PlanningModeASAP','ASAP',100,0,0,'TestSession',0,0),(10,'PlanningModeREGUL','REGUL',700,1,1,'TestSession',0,0),(11,'PlanningModeFULL','FULL',710,1,1,'TestSession',0,0),(12,'PlanningModeALAP','ALAP',500,0,1,'TestSession',0,0),(13,'PlanningModeHALF','HALF',720,1,1,'TestSession',0,0),(14,'PlanningModeFDUR','FDUR',300,0,0,'TestSession',0,1),(16,'PlanningModeFIXED','FIXED',100,1,0,'Meeting',0,0),(17,'PlanningModeGROUP','GROUP',200,0,0,'Activity',0,0),(18,'PlanningModeGROUP','GROUP',200,0,0,'TestSession',0,0),(19,'PlanningModeSTART','START',400,1,0,'Activity',0,0),(20,'PlanningModeQUART','QUART',730,1,1,'Activity',0,0),(21,'PlanningModeSTART','START',400,1,0,'TestSession',0,0),(22,'PlanningModeRECW','RECW',800,0,0,'Activity',0,0);
/*!40000 ALTER TABLE `planningmode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `description` mediumtext DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `zipFile` varchar(4000) DEFAULT NULL,
  `deploymentDate` date DEFAULT NULL,
  `isDeployed` int(1) unsigned DEFAULT 0,
  `deploymentVersion` varchar(100) DEFAULT NULL,
  `compatibilityVersion` varchar(100) DEFAULT NULL,
  `pluginVersion` varchar(100) DEFAULT NULL,
  `idle` int(1) DEFAULT 0,
  `comment` varchar(4000) DEFAULT NULL,
  `uniqueCode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pluginName` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluginbutton`
--

DROP TABLE IF EXISTS `pluginbutton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluginbutton` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idPlugin` int(12) unsigned DEFAULT NULL,
  `buttonName` varchar(100) DEFAULT NULL,
  `className` varchar(100) DEFAULT NULL,
  `scriptJS` varchar(255) DEFAULT NULL,
  `scriptPHP` varchar(255) DEFAULT NULL,
  `iconClass` varchar(100) DEFAULT NULL,
  `scope` varchar(10) DEFAULT NULL,
  `sortOrder` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `pluginbuttonplugin` (`idPlugin`),
  KEY `pluginbuttonclassname` (`className`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluginbutton`
--

LOCK TABLES `pluginbutton` WRITE;
/*!40000 ALTER TABLE `pluginbutton` DISABLE KEYS */;
/*!40000 ALTER TABLE `pluginbutton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugintriggeredevent`
--

DROP TABLE IF EXISTS `plugintriggeredevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugintriggeredevent` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idPlugin` int(12) unsigned DEFAULT NULL,
  `event` varchar(100) DEFAULT NULL,
  `className` varchar(100) DEFAULT NULL,
  `script` varchar(255) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `plugintriggeredeventPlugin` (`idPlugin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugintriggeredevent`
--

LOCK TABLES `plugintriggeredevent` WRITE;
/*!40000 ALTER TABLE `plugintriggeredevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugintriggeredevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predefinedaction`
--

DROP TABLE IF EXISTS `predefinedaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predefinedaction` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `idActionType` int(12) unsigned DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idContact` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `initialDueDateDelay` int(3) unsigned DEFAULT NULL,
  `actualDueDateDelay` int(3) unsigned DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `idPriority` int(12) unsigned DEFAULT NULL,
  `idEfficiency` int(12) unsigned DEFAULT NULL,
  `isPrivate` int(1) unsigned DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predefinedaction`
--

LOCK TABLES `predefinedaction` WRITE;
/*!40000 ALTER TABLE `predefinedaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `predefinedaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predefinedtext`
--

DROP TABLE IF EXISTS `predefinedtext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predefinedtext` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(100) DEFAULT NULL,
  `idTextable` int(12) unsigned DEFAULT NULL,
  `idType` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `text` mediumtext DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predefinedtext`
--

LOCK TABLES `predefinedtext` WRITE;
/*!40000 ALTER TABLE `predefinedtext` DISABLE KEYS */;
/*!40000 ALTER TABLE `predefinedtext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priority` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `value` int(3) unsigned DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority`
--

LOCK TABLES `priority` WRITE;
/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
INSERT INTO `priority` VALUES (1,'Low priority',1,'#32cd32',40,0),(2,'Medium priority',2,'#ffd700',30,0),(3,'High priority',4,'#ff0000',20,0),(4,'Critical priority',8,'#000000',10,0);
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacy`
--

DROP TABLE IF EXISTS `privacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privacy` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privacy`
--

LOCK TABLES `privacy` WRITE;
/*!40000 ALTER TABLE `privacy` DISABLE KEYS */;
INSERT INTO `privacy` VALUES (1,'public','#003399',100,0),(2,'team','#99FF99',200,0),(3,'private','#FF9966',300,0);
/*!40000 ALTER TABLE `privacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idClient` int(12) unsigned DEFAULT NULL,
  `idContact` int(12) unsigned DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idProduct` int(12) unsigned DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `idProductType` int(12) unsigned DEFAULT NULL,
  `idComponentType` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productClient` (`idClient`),
  KEY `pruductContact` (`idContact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcontext`
--

DROP TABLE IF EXISTS `productcontext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcontext` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProduct` int(12) unsigned NOT NULL,
  `idContext` int(12) unsigned NOT NULL,
  `creationDate` date NOT NULL,
  `idUser` int(12) unsigned NOT NULL,
  `idle` int(1) unsigned NOT NULL DEFAULT 0,
  `scope` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcontext`
--

LOCK TABLES `productcontext` WRITE;
/*!40000 ALTER TABLE `productcontext` DISABLE KEYS */;
/*!40000 ALTER TABLE `productcontext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productlanguage`
--

DROP TABLE IF EXISTS `productlanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productlanguage` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProduct` int(12) unsigned NOT NULL,
  `idLanguage` int(12) unsigned NOT NULL,
  `creationDate` date NOT NULL,
  `idUser` int(12) unsigned NOT NULL,
  `idle` int(1) unsigned NOT NULL DEFAULT 0,
  `scope` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productlanguage`
--

LOCK TABLES `productlanguage` WRITE;
/*!40000 ALTER TABLE `productlanguage` DISABLE KEYS */;
/*!40000 ALTER TABLE `productlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productproject`
--

DROP TABLE IF EXISTS `productproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productproject` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idProduct` int(12) unsigned DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `productprojectProject` (`idProject`),
  KEY `productprojectProduct` (`idProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productproject`
--

LOCK TABLES `productproject` WRITE;
/*!40000 ALTER TABLE `productproject` DISABLE KEYS */;
/*!40000 ALTER TABLE `productproject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productstructure`
--

DROP TABLE IF EXISTS `productstructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productstructure` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProduct` int(12) unsigned DEFAULT NULL,
  `idComponent` int(12) unsigned DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ProductStructureProduct` (`idProduct`),
  KEY `ProductStructureComponent` (`idComponent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productstructure`
--

LOCK TABLES `productstructure` WRITE;
/*!40000 ALTER TABLE `productstructure` DISABLE KEYS */;
/*!40000 ALTER TABLE `productstructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productversionstructure`
--

DROP TABLE IF EXISTS `productversionstructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productversionstructure` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProductVersion` int(12) unsigned DEFAULT NULL,
  `idComponentVersion` int(12) unsigned DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ProductVersionStructureProduct` (`idProductVersion`),
  KEY `ProductVersionStructureComponent` (`idComponentVersion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productversionstructure`
--

LOCK TABLES `productversionstructure` WRITE;
/*!40000 ALTER TABLE `productversionstructure` DISABLE KEYS */;
/*!40000 ALTER TABLE `productversionstructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `profileCode` varchar(3) DEFAULT NULL,
  `sortOrder` int(3) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,'profileAdministrator','Has a visibility over all the projects','ADM',100,0),(2,'profileSupervisor','Has a visibility over all the projects','SUP',200,0),(3,'profileProjectLeader','Leads his owns project','PL',310,0),(4,'profileTeamMember','Works for a project','TM',320,0),(5,'profileGuest','Has limited visibility to a project','G',500,0),(6,'profileExternalProjectLeader',NULL,'EPL',410,0),(7,'profileExternalTeamMember',NULL,'ETM',420,0);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `idClient` int(12) DEFAULT NULL,
  `projectCode` varchar(25) DEFAULT NULL,
  `contractCode` varchar(25) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idUser` int(12) unsigned DEFAULT NULL,
  `done` int(1) unsigned DEFAULT 0,
  `idleDate` date DEFAULT NULL,
  `doneDate` date DEFAULT NULL,
  `idContact` int(12) unsigned DEFAULT NULL,
  `sortOrder` varchar(600) DEFAULT NULL,
  `idProjectType` int(12) unsigned DEFAULT NULL,
  `codeType` varchar(10) DEFAULT 'OPE',
  `idRecipient` int(12) unsigned DEFAULT NULL,
  `paymentDelay` int(3) DEFAULT NULL,
  `longitude` decimal(15,12) DEFAULT NULL,
  `latitude` decimal(15,12) DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idHealth` int(12) unsigned DEFAULT NULL,
  `fixPlanning` int(1) unsigned DEFAULT 0,
  `clientCode` varchar(25) DEFAULT NULL,
  `idOverallProgress` int(12) unsigned DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `idQuality` int(12) unsigned DEFAULT NULL,
  `idTrend` int(12) unsigned DEFAULT NULL,
  `idSponsor` int(12) unsigned DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `objectives` mediumtext DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `isUnderConstruction` int(1) unsigned DEFAULT 0,
  `lastUpdateDateTime` datetime DEFAULT NULL,
  `idOrganization` int(12) unsigned DEFAULT NULL,
  `organizationInherited` int(1) unsigned DEFAULT NULL,
  `organizationElementary` int(1) unsigned DEFAULT NULL,
  `idCategory` int(12) unsigned DEFAULT NULL,
  `handled` int(1) DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `excludeFromGlobalPlanning` int(1) unsigned DEFAULT 0,
  `fixPerimeter` int(1) unsigned DEFAULT 0,
  `isLeaveMngProject` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `projectProject` (`idProject`),
  KEY `projectClient` (`idClient`),
  KEY `projectUser` (`idUser`),
  KEY `projectContact` (`idContact`),
  KEY `projectRecipient` (`idRecipient`),
  KEY `projectStatus` (`idStatus`),
  KEY `projectOrganization` (`idOrganization`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'PROJECT - LEAVE PERIOD','[leaveProjectDescription]',NULL,NULL,NULL,NULL,NULL,0,1,0,NULL,NULL,NULL,'00001',52,'ADM',NULL,NULL,NULL,NULL,1,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'2019-06-13 16:16:08',NULL,0,0,NULL,0,NULL,0,0,1);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projecthistory`
--

DROP TABLE IF EXISTS `projecthistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projecthistory` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `day` varchar(10) DEFAULT NULL,
  `realWork` decimal(14,5) unsigned DEFAULT NULL,
  `leftWork` decimal(14,5) unsigned DEFAULT NULL,
  `realCost` decimal(11,2) unsigned DEFAULT NULL,
  `leftCost` decimal(11,2) unsigned DEFAULT NULL,
  `totalRealCost` decimal(11,2) unsigned DEFAULT NULL,
  `totalLeftCost` decimal(11,2) unsigned DEFAULT NULL,
  `validatedWork` decimal(9,5) unsigned DEFAULT NULL,
  `validatedCost` decimal(11,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projecthistoryProjectDay` (`idProject`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projecthistory`
--

LOCK TABLES `projecthistory` WRITE;
/*!40000 ALTER TABLE `projecthistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `projecthistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `idProviderType` int(12) unsigned DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `providerCode` varchar(25) DEFAULT NULL,
  `idPaymentDelay` int(12) unsigned DEFAULT NULL,
  `numTax` varchar(100) DEFAULT NULL,
  `tax` decimal(5,2) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `complement` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `providerProviderType` (`idProviderType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providerbill`
--

DROP TABLE IF EXISTS `providerbill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providerbill` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `idProviderBillType` int(12) unsigned DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `idProvider` int(12) unsigned DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `additionalInfo` mediumtext DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `idContact` int(12) unsigned DEFAULT NULL,
  `sendDate` datetime DEFAULT NULL,
  `evaluationValue` decimal(7,2) DEFAULT NULL,
  `evaluationRank` int(3) DEFAULT NULL,
  `totalUntaxedAmount` decimal(11,2) unsigned DEFAULT NULL,
  `taxPct` decimal(5,2) DEFAULT NULL,
  `totalTaxAmount` decimal(11,2) unsigned DEFAULT NULL,
  `totalFullAmount` decimal(11,2) unsigned DEFAULT NULL,
  `untaxedAmount` decimal(11,2) unsigned DEFAULT NULL,
  `taxAmount` decimal(11,2) unsigned DEFAULT NULL,
  `fullAmount` decimal(11,2) unsigned DEFAULT NULL,
  `discountAmount` decimal(11,2) DEFAULT NULL,
  `discountRate` decimal(5,2) DEFAULT NULL,
  `discountFrom` varchar(10) DEFAULT NULL,
  `lastPaymentDate` date DEFAULT NULL,
  `paymentAmount` decimal(11,2) DEFAULT NULL,
  `paymentCondition` varchar(100) DEFAULT NULL,
  `paymentDate` date DEFAULT NULL,
  `idPaymentDelay` int(12) unsigned DEFAULT NULL,
  `paymentDueDate` date DEFAULT NULL,
  `paymentsCount` int(3) DEFAULT 0,
  `paymentDone` int(1) unsigned DEFAULT 0,
  `comment` mediumtext DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `done` int(1) unsigned DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  `cancelled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `doneDate` date DEFAULT NULL,
  `idleDate` date DEFAULT NULL,
  `idProjectExpense` int(12) unsigned DEFAULT NULL,
  `discountFullAmount` decimal(11,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `providerbillProject` (`idProject`),
  KEY `providerbillUser` (`idUser`),
  KEY `providerbillResource` (`idResource`),
  KEY `providerbillStatus` (`idStatus`),
  KEY `providerbillType` (`idProviderBillType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providerbill`
--

LOCK TABLES `providerbill` WRITE;
/*!40000 ALTER TABLE `providerbill` DISABLE KEYS */;
/*!40000 ALTER TABLE `providerbill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providerorder`
--

DROP TABLE IF EXISTS `providerorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providerorder` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `idProviderOrderType` int(12) unsigned DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idProvider` int(12) unsigned DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `additionalInfo` mediumtext DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `idContact` int(12) unsigned DEFAULT NULL,
  `sendDate` datetime DEFAULT NULL,
  `evaluationValue` decimal(7,2) DEFAULT NULL,
  `evaluationRank` int(3) DEFAULT NULL,
  `totalUntaxedAmount` decimal(11,2) unsigned DEFAULT NULL,
  `taxPct` decimal(5,2) DEFAULT NULL,
  `totalTaxAmount` decimal(11,2) unsigned DEFAULT NULL,
  `totalFullAmount` decimal(11,2) unsigned DEFAULT NULL,
  `untaxedAmount` decimal(11,2) unsigned DEFAULT NULL,
  `taxAmount` decimal(11,2) unsigned DEFAULT NULL,
  `fullAmount` decimal(11,2) unsigned DEFAULT NULL,
  `discountAmount` decimal(11,2) DEFAULT NULL,
  `discountRate` decimal(5,2) DEFAULT NULL,
  `discountFrom` varchar(10) DEFAULT NULL,
  `deliveryDelay` varchar(100) DEFAULT NULL,
  `deliveryExpectedDate` date DEFAULT NULL,
  `deliveryDoneDate` date DEFAULT NULL,
  `deliveryValidationDate` date DEFAULT NULL,
  `paymentCondition` varchar(100) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `done` int(1) unsigned DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  `cancelled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `doneDate` date DEFAULT NULL,
  `idleDate` date DEFAULT NULL,
  `idProjectExpense` int(12) unsigned DEFAULT NULL,
  `discountFullAmount` decimal(11,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `providerorderProject` (`idProject`),
  KEY `providerorderUser` (`idUser`),
  KEY `providerorderResource` (`idResource`),
  KEY `providerorderStatus` (`idStatus`),
  KEY `providerorderType` (`idProviderOrderType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providerorder`
--

LOCK TABLES `providerorder` WRITE;
/*!40000 ALTER TABLE `providerorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `providerorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providerpayment`
--

DROP TABLE IF EXISTS `providerpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providerpayment` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idProviderBill` int(12) unsigned DEFAULT NULL,
  `idProviderTerm` int(12) unsigned DEFAULT NULL,
  `paymentDate` date DEFAULT NULL,
  `idPaymentMode` int(12) unsigned DEFAULT NULL,
  `idle` int(1) DEFAULT 0,
  `idProviderPaymentType` int(12) unsigned DEFAULT NULL,
  `paymentAmount` decimal(11,2) unsigned DEFAULT NULL,
  `paymentFeeAmount` decimal(11,2) unsigned DEFAULT NULL,
  `paymentCreditAmount` decimal(11,2) unsigned DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `referenceProviderBill` varchar(100) DEFAULT NULL,
  `idProvider` int(12) unsigned DEFAULT NULL,
  `providerBillAmount` decimal(11,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `providerpaymentBill` (`idProviderBill`),
  KEY `providerpaymentProvider` (`idProvider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providerpayment`
--

LOCK TABLES `providerpayment` WRITE;
/*!40000 ALTER TABLE `providerpayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `providerpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providerterm`
--

DROP TABLE IF EXISTS `providerterm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providerterm` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `done` int(1) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT NULL,
  `idProviderOrder` int(12) unsigned DEFAULT NULL,
  `idProviderBill` int(12) unsigned DEFAULT NULL,
  `untaxedAmount` decimal(11,2) unsigned DEFAULT NULL,
  `taxPct` decimal(5,2) DEFAULT NULL,
  `taxAmount` decimal(11,2) unsigned DEFAULT NULL,
  `fullAmount` decimal(11,2) unsigned DEFAULT NULL,
  `date` date DEFAULT NULL,
  `idProjectExpense` int(12) unsigned DEFAULT NULL,
  `isBilled` int(1) unsigned DEFAULT NULL,
  `isPaid` int(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `providertermProject` (`idProject`),
  KEY `providertermOrder` (`idProviderOrder`),
  KEY `providertermBill` (`idProviderBill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providerterm`
--

LOCK TABLES `providerterm` WRITE;
/*!40000 ALTER TABLE `providerterm` DISABLE KEYS */;
/*!40000 ALTER TABLE `providerterm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quality`
--

DROP TABLE IF EXISTS `quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quality` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quality`
--

LOCK TABLES `quality` WRITE;
/*!40000 ALTER TABLE `quality` DISABLE KEYS */;
INSERT INTO `quality` VALUES (1,'conform','#32CD32',100,'smileyGreen.png',0),(2,'some remarks','#ffd700',200,'smileyYellow.png',0),(3,'not conform','#FF0000',300,'smileyRed.png',0);
/*!40000 ALTER TABLE `quality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idQuestionType` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `sendMail` varchar(100) DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `replier` varchar(100) DEFAULT NULL,
  `initialDueDate` date DEFAULT NULL,
  `actualDueDate` date DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `done` int(1) unsigned DEFAULT 0,
  `doneDate` date DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idleDate` date DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `questionProject` (`idProject`),
  KEY `questionType` (`idQuestionType`),
  KEY `questionUser` (`idUser`),
  KEY `questionResource` (`idResource`),
  KEY `questionStatus` (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotation`
--

DROP TABLE IF EXISTS `quotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotation` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idQuotationType` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `idClient` int(12) unsigned DEFAULT NULL,
  `idContact` int(12) unsigned DEFAULT NULL,
  `additionalInfo` mediumtext DEFAULT NULL,
  `initialEndDate` date DEFAULT NULL,
  `untaxedAmount` decimal(12,2) DEFAULT NULL,
  `initialPricePerDayAmount` decimal(12,2) DEFAULT 0.00,
  `initialAmount` decimal(12,2) DEFAULT 0.00,
  `comment` mediumtext DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `done` int(1) unsigned DEFAULT 0,
  `cancelled` int(1) unsigned DEFAULT 0,
  `idleDate` date DEFAULT NULL,
  `doneDate` date DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `sendDate` date DEFAULT NULL,
  `validityEndDate` date DEFAULT NULL,
  `idActivityType` int(12) unsigned DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `idPaymentDelay` int(12) unsigned DEFAULT NULL,
  `tax` decimal(5,2) DEFAULT NULL,
  `fullAmount` decimal(12,2) DEFAULT NULL,
  `idDeliveryMode` int(12) unsigned DEFAULT NULL,
  `idLikelihood` int(12) unsigned DEFAULT NULL,
  `plannedWork` decimal(12,2) DEFAULT 0.00,
  `idRecipient` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quotationProject` (`idProject`),
  KEY `quotationUser` (`idUser`),
  KEY `quotationResource` (`idResource`),
  KEY `quotationStatus` (`idStatus`),
  KEY `quotationType` (`idQuotationType`),
  KEY `quotationClient` (`idClient`),
  KEY `quotationContact` (`idContact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotation`
--

LOCK TABLES `quotation` WRITE;
/*!40000 ALTER TABLE `quotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipient`
--

DROP TABLE IF EXISTS `recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipient` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `companyNumber` varchar(100) DEFAULT NULL,
  `numTax` varchar(100) DEFAULT NULL,
  `bankName` varchar(100) DEFAULT NULL,
  `ibanCountry` varchar(2) DEFAULT NULL,
  `ibanKey` varchar(2) DEFAULT NULL,
  `ibanBban` varchar(34) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `complement` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `taxFree` int(1) unsigned DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  `legalNotice` varchar(1000) DEFAULT NULL,
  `contactName` varchar(100) DEFAULT NULL,
  `contactEmail` varchar(100) DEFAULT NULL,
  `contactPhone` varchar(100) DEFAULT NULL,
  `contactMobile` varchar(100) DEFAULT NULL,
  `bankNationalAccountNumber` varchar(100) DEFAULT NULL,
  `bankInternationalAccountNumber` varchar(100) DEFAULT NULL,
  `bankIdentificationCode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipient`
--

LOCK TABLES `recipient` WRITE;
/*!40000 ALTER TABLE `recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencable`
--

DROP TABLE IF EXISTS `referencable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referencable` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencable`
--

LOCK TABLES `referencable` WRITE;
/*!40000 ALTER TABLE `referencable` DISABLE KEYS */;
INSERT INTO `referencable` VALUES (1,'Ticket',0),(2,'Activity',0),(3,'Milestone',0),(4,'IndividualExpense',0),(5,'ProjectExpense',0),(6,'Risk',0),(7,'Action',0),(8,'Issue',0),(9,'Meeting',0),(10,'Decision',0),(11,'Question',0),(12,'Document',0),(13,'Requirement',0),(14,'TestCase',0),(15,'TestSession',0),(16,'Command',0),(17,'Opportunity',0),(18,'Quotation',0),(19,'Bill',0),(20,'CallForTender',0),(21,'Deliverable',0),(22,'Delivery',0),(23,'Incoming',0),(24,'Payment',0),(25,'Tender',0);
/*!40000 ALTER TABLE `referencable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idReportCategory` int(12) unsigned NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `sortOrder` int(5) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `orientation` varchar(1) DEFAULT 'L',
  `hasCsv` int(1) unsigned DEFAULT 0,
  `hasView` int(1) DEFAULT 1,
  `hasPrint` int(1) DEFAULT 1,
  `hasPdf` int(1) DEFAULT 1,
  `hasToday` int(1) DEFAULT 1,
  `hasFavorite` int(1) DEFAULT 1,
  `hasWord` int(1) DEFAULT 0,
  `hasExcel` int(1) DEFAULT 0,
  `filterClass` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reportReportCategory` (`idReportCategory`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,'reportWorkWeekly',1,'work.php',110,0,'L',0,1,1,1,1,1,0,0,NULL),(2,'reportWorkMonthly',1,'work.php',120,0,'L',0,1,1,1,1,1,0,0,NULL),(3,'reportWorkYearly',1,'work.php',130,0,'L',0,1,1,1,1,1,0,0,NULL),(4,'reportPlanColoredMonthly',2,'colorPlan.php',283,0,'L',0,1,1,1,1,1,0,0,NULL),(5,'reportPlanResourceMonthly',2,'resourcePlan.php',240,0,'L',0,1,1,1,1,1,0,0,NULL),(6,'reportPlanProjectMonthly',2,'projectPlan.php',250,0,'L',0,1,1,1,1,1,0,0,NULL),(7,'reportPlanGantt',2,'../tool/jsonPlanning.php?print=true',210,0,'L',1,1,1,1,1,1,0,0,NULL),(8,'reportWorkPlan',2,'workPlan.php',220,0,'L',0,1,1,1,1,1,0,0,NULL),(9,'reportTicketYearly',3,'ticketYearlyReport.php',310,0,'L',0,1,1,1,1,1,0,0,'Ticket'),(10,'reportTicketYearlyByType',3,'ticketYearlyReportByType.php',320,0,'L',0,1,1,1,1,1,0,0,'Ticket'),(11,'reportTicketWeeklyCrossReport',3,'ticketReport.php',330,0,'L',0,1,1,1,1,1,0,0,'Ticket'),(12,'reportTicketMonthlyCrossReport',3,'ticketReport.php',340,0,'L',0,1,1,1,1,1,0,0,'Ticket'),(13,'reportTicketYearlyCrossReport',3,'ticketReport.php',350,0,'L',0,1,1,1,1,1,0,0,'Ticket'),(14,'reportTicketWeeklySynthesis',3,'ticketSynthesis.php',360,0,'L',0,1,1,1,1,1,0,0,'Ticket'),(15,'reportTicketMonthlySynthesis',3,'ticketSynthesis.php',370,0,'L',0,1,1,1,1,1,0,0,'Ticket'),(16,'reportTicketYearlySynthesis',3,'ticketSynthesis.php',380,0,'L',0,1,1,1,1,1,0,0,'Ticket'),(17,'reportTicketGlobalCrossReport',3,'ticketReport.php',355,0,'L',0,1,1,1,1,1,0,0,'Ticket'),(18,'reportTicketGlobalSynthesis',3,'ticketSynthesis.php',390,0,'L',0,1,1,1,1,1,0,0,'Ticket'),(19,'reportGlobalWorkPlanningWeekly',2,'globalWorkPlanning.php?scale=week',260,0,'L',0,1,1,1,1,1,0,0,NULL),(20,'reportGlobalWorkPlanningMonthly',2,'globalWorkPlanning.php?scale=month',270,0,'L',0,1,1,1,1,1,0,0,NULL),(21,'reportStatusOngoing',4,'status.php',410,0,'L',0,1,1,1,1,1,0,0,NULL),(22,'reportStatusAll',4,'status.php?showIdle=true',420,0,'L',0,1,1,1,1,1,0,0,NULL),(23,'reportRiskManagementPlan',4,'riskManagementPlan.php',430,0,'L',0,1,1,1,1,1,0,0,NULL),(24,'reportHistoryDeteled',9,'history.php?scope=deleted',920,0,'L',0,1,1,1,1,1,0,0,NULL),(25,'reportHistoryDetail',9,'history.php?scope=item',910,0,'L',0,1,1,1,1,1,0,0,NULL),(26,'reportCostDetail',6,'costPlan.php',610,0,'L',0,1,1,1,1,1,0,0,NULL),(27,'reportCostMonthly',6,'globalCostPlanning.php?scale=month',620,0,'L',0,1,1,1,1,1,0,0,NULL),(28,'reportWorkDetailWeekly',1,'workDetail.php?scale=week',140,0,'L',0,1,1,1,1,1,0,0,NULL),(29,'reportWorkDetailMonthly',1,'workDetail.php?scale=month',150,0,'L',0,1,1,1,1,1,0,0,NULL),(30,'reportWorkDetailYearly',1,'workDetail.php?scale=year',160,0,'L',0,1,1,1,1,1,0,0,NULL),(31,'reportPlanDetail',2,'detailPlan.php',255,0,'L',0,1,1,1,1,1,0,0,NULL),(32,'reportAvailabilityPlan',2,'availabilityPlan.php',280,0,'L',0,1,1,1,1,1,0,0,NULL),(33,'reportExpenseProject',6,'expensePlan.php?scale=month&scope=Project',660,0,'L',0,1,1,1,1,1,0,0,NULL),(34,'reportExpenseResource',6,'expensePlan.php?scale=month&scope=Individual',670,0,'L',0,1,1,1,1,1,0,0,NULL),(35,'reportExpenseTotal',6,'expensePlan.php?scale=month',680,0,'L',0,1,1,1,1,1,0,0,NULL),(36,'reportExpenseCostTotal',6,'expenseCostTotalPlan.php?scale=month',690,0,'L',0,1,1,1,1,1,0,0,NULL),(37,'reportBill',7,'bill.php',710,0,'L',0,1,1,1,1,1,0,0,NULL),(38,'reportVersionStatus',4,'versionReport.php',440,0,'L',0,1,1,1,1,1,0,0,NULL),(39,'reportVersionDetail',4,'versionDetail.php',450,0,'L',0,1,1,1,1,1,0,0,NULL),(40,'reportWorkPerActivity',1,'workPerActivity.php',170,0,'L',0,1,1,1,1,1,0,0,NULL),(41,'reportProductTest',8,'productTest.php',820,0,'L',0,1,1,1,1,1,0,0,NULL),(42,'reportPlanActivityMonthly',2,'activityPlan.php',252,0,'L',0,1,1,1,1,1,0,0,NULL),(43,'reportTestSession',8,'testSession.php',830,0,'L',0,1,1,1,1,1,0,0,NULL),(44,'reportRequirementTest',8,'requirementTest.php',810,0,'L',0,1,1,1,1,1,0,0,NULL),(45,'reportTermMonthly',7,'term.php',720,0,'L',0,1,1,1,1,1,0,0,NULL),(46,'reportTermWeekly',7,'term.php',730,0,'L',0,1,1,1,1,1,0,0,NULL),(47,'reportOpportunityPlan',4,'opportunityPlan.php',440,0,'L',0,1,1,1,1,1,0,0,NULL),(48,'reportAudit',9,'audit.php',910,0,'L',0,1,1,1,1,1,0,0,NULL),(49,'reportPortfolioGantt',2,'../tool/jsonPlanning.php?print=true&portfolio=true',215,0,'L',1,1,1,1,1,1,0,0,NULL),(50,'reportProject',9,'projectDashboard.php',920,0,'L',0,1,1,1,1,1,0,0,NULL),(52,'reportAvailabilitySynthesis',2,'availabilitySynthesis.php',282,0,'L',0,1,1,1,1,1,0,0,NULL),(53,'reportProductTestDetail',8,'productTestDetail.php',825,0,'L',0,1,1,1,1,1,0,0,NULL),(54,'reportWorkWeeklyResource',1,'work.php',170,0,'L',0,1,1,1,1,1,0,0,NULL),(55,'reportWorkMonthlyResource',1,'work.php',180,0,'L',0,1,1,1,1,1,0,0,NULL),(56,'reportWorkYearlyResource',1,'work.php',190,0,'L',0,1,1,1,1,1,0,0,NULL),(57,'reportPlanDetailPerResource',2,'detailPlan.php',256,0,'L',0,1,1,1,1,1,0,0,NULL),(58,'reportPlanProjectDetailPerResource',2,'activityPlan.php',257,0,'L',0,1,1,1,1,1,0,0,NULL),(59,'reportBurndownChart',10,'burndownChart.php',1010,0,'L',0,1,1,1,1,1,0,0,NULL),(60,'reportPlanProjectPerRessourceAndMonth',2,'reportPlanProjectPerRessourceAndMonth.php',284,0,'L',0,1,1,1,1,1,0,0,NULL),(61,'reportSCurveChart',10,'reportSCurveChart.php',1020,0,'L',0,1,1,1,1,1,0,0,NULL),(62,'report45DegreeChart',10,'report45DegreeChart.php',1030,0,'L',0,1,1,1,1,1,0,0,NULL),(63,'reportMacroJoblist',4,'joblist.php',460,0,'L',1,1,1,1,1,1,0,0,NULL),(64,'reportKpiDurationProject',11,'kpiDuration.php?scope=Project',1110,0,'P',0,1,1,1,1,1,0,0,NULL),(65,'reportKpiDurationOrganization',11,'kpiDuration.php?scope=Organization',1115,0,'P',0,1,1,1,1,1,0,0,NULL),(66,'reportKpiWorkloadProject',11,'kpiWorkload.php?scope=Project',1120,0,'P',0,1,1,1,1,1,0,0,NULL),(67,'reportKpiWorkloadOrganization',11,'kpiWorkload.php?scope=Organization',1125,0,'P',0,1,1,1,1,1,0,0,NULL),(68,'reportKpiTerm',11,'kpiTerm.php',1150,0,'P',0,1,1,1,1,1,0,0,NULL),(69,'reportKpiDeliverableProject',11,'kpiDeliverable.php?class=Deliverable&scope=Project',1130,0,'P',0,1,1,1,1,1,0,0,NULL),(70,'reportKpiDeliverableOrganization',11,'kpiDeliverable.php?scope=Organization',1135,0,'P',0,1,1,1,1,1,0,0,NULL),(71,'reportKpiIncomingProject',11,'kpiDeliverable.php?class=Incoming&scope=Project',1140,0,'P',0,1,1,1,1,1,0,0,NULL),(72,'reportKpiIncomingOrganization',11,'kpiDeliverable.php?class=Incoming&scope=Organization',1145,0,'P',0,1,1,1,1,1,0,0,NULL),(73,'reportTicketOpenedClosed',3,'ticketOpenedClosedReport.php',392,0,'L',0,1,1,1,1,1,0,0,'Ticket'),(74,'reportTicketYearlyByProduct',3,'ticketYearlyReportByProduct.php',395,0,'L',0,1,1,1,1,1,0,0,'Ticket'),(75,'performanceIndicator',10,'performanceIndicator.php',1040,0,'L',0,1,1,1,1,1,0,0,NULL),(76,'reportGlobalWorkPlanningPerResourceWeekly',2,'globalWorkPlanningPerResource.php?scale=week',276,0,'L',0,1,1,1,1,1,0,0,NULL),(77,'reportGlobalWorkPlanningPerResourceMonthly',2,'globalWorkPlanningPerResource.php?scale=month',277,0,'L',0,1,1,1,1,1,0,0,NULL),(78,'reportWorkPlanPerTicket',2,'workPlanPerTicket.php',225,0,'L',0,1,1,1,1,1,0,0,NULL),(79,'burnDownCurve',8,'burnDownCurve.php',860,0,'L',0,1,1,1,1,1,0,0,NULL),(80,'curveOfTicketsBurndown',3,'curveOfTickets.php',398,0,'L',0,1,1,1,1,1,0,0,'Ticket'),(81,'reportRequirementCumulatedAnnual',8,'requirementCumulatedAnualReport.php',840,0,'L',0,1,1,1,1,1,0,0,NULL),(82,'reportRequirementCumulatedNbOfDays',8,'requirementNbOfDays.php',850,0,'L',0,1,1,1,1,1,0,0,NULL),(83,'clientsForVersion',3,'clientsForVersion.php',399,0,'L',1,1,1,1,1,1,0,0,'Ticket'),(84,'reportRequirementOpenQuestion',8,'requirementOpenQuestion.php',880,0,'L',0,1,1,1,1,1,0,0,NULL),(86,'financialExpenseBoard',7,'financialExpenseBoard.php',740,0,'L',0,1,1,1,1,1,0,0,NULL),(87,'financialExpenseSynthesis',7,'financialExpenseSynthesis.php',750,0,'L',0,1,1,1,1,1,0,0,NULL),(88,'reportRequirementYearlyByType',8,'requirementYearlyByTypeReport.php',850,0,'L',0,1,1,1,1,1,0,0,NULL),(89,'reportRequirementWeeklySynthesis',8,'RequirementOpenedSynthesis.php',885,0,'L',0,1,1,1,1,1,0,0,NULL),(90,'reportRequirementMonthlySynthesis',8,'RequirementOpenedSynthesis.php',886,0,'L',0,1,1,1,1,1,0,0,NULL),(91,'reportRequirementYearlySynthesis',8,'RequirementOpenedSynthesis.php',887,0,'L',0,1,1,1,1,1,0,0,NULL),(92,'reportRequirementGlobalSynthesis',8,'RequirementOpenedSynthesis.php',888,0,'L',0,1,1,1,1,1,0,0,NULL);
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportcategory`
--

DROP TABLE IF EXISTS `reportcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportcategory` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `sortOrder` int(5) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportcategory`
--

LOCK TABLES `reportcategory` WRITE;
/*!40000 ALTER TABLE `reportcategory` DISABLE KEYS */;
INSERT INTO `reportcategory` VALUES (1,'reportCategoryWork',10,0),(2,'reportCategoryPlan',20,0),(3,'reportCategoryTicket',30,0),(4,'reportCategoryStatus',40,0),(6,'reportCategoryCost',50,0),(7,'reportCategoryBill',60,0),(8,'reportCategoryRequirementTest',70,0),(9,'reportCategoryMisc',80,0),(10,'reportCategorySteeringCharts',25,0),(11,'reportCategoryKpi',27,0);
/*!40000 ALTER TABLE `reportcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportparameter`
--

DROP TABLE IF EXISTS `reportparameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportparameter` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idReport` int(12) unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `paramType` varchar(100) DEFAULT NULL,
  `sortOrder` int(5) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `defaultValue` varchar(100) DEFAULT NULL,
  `multiple` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `reportparameterReport` (`idReport`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportparameter`
--

LOCK TABLES `reportparameter` WRITE;
/*!40000 ALTER TABLE `reportparameter` DISABLE KEYS */;
INSERT INTO `reportparameter` VALUES (1,1,'week','week',10,0,'currentWeek',0),(2,2,'month','month',10,0,'currentMonth',0),(3,3,'year','year',10,0,'currentYear',0),(4,4,'month','month',10,0,'currentMonth',0),(5,5,'month','month',10,0,'currentMonth',0),(6,6,'month','month',10,0,'currentMonth',0),(7,7,'startDate','date',20,0,'today',0),(8,7,'endDate','date',40,0,NULL,0),(9,7,'format','periodScale',40,0,'day',0),(10,7,'idProject','projectList',10,0,'currentProject',0),(11,8,'idProject','projectList',10,0,'currentProject',0),(12,9,'idProject','projectList',10,0,'currentProject',0),(13,9,'year','year',20,0,'currentYear',0),(14,9,'idTicketType','ticketType',30,0,NULL,0),(15,9,'issuer','userList',40,0,NULL,0),(16,9,'responsible','resourceList',50,0,NULL,0),(17,10,'idProject','projectList',10,0,'currentProject',0),(18,10,'year','year',20,0,'currentYear',0),(19,10,'issuer','userList',40,0,NULL,0),(20,10,'responsible','resourceList',50,0,NULL,0),(21,11,'idProject','projectList',10,0,'currentProject',0),(22,11,'week','week',20,0,'currentWeek',0),(23,11,'issuer','userList',30,0,NULL,0),(24,11,'responsible','resourceList',40,0,NULL,0),(25,12,'idProject','projectList',10,0,'currentProject',0),(26,12,'month','month',20,0,'currentMonth',0),(27,12,'issuer','userList',30,0,NULL,0),(28,12,'responsible','resourceList',40,0,NULL,0),(29,13,'idProject','projectList',10,0,'currentProject',0),(30,13,'year','year',20,0,'currentYear',0),(31,13,'issuer','userList',30,0,NULL,0),(32,13,'responsible','resourceList',40,0,NULL,0),(33,14,'idProject','projectList',10,0,'currentProject',0),(34,14,'week','week',20,0,'currentWeek',0),(35,14,'issuer','userList',30,0,NULL,0),(36,14,'responsible','resourceList',40,0,NULL,0),(37,15,'idProject','projectList',10,0,'currentProject',0),(38,15,'month','month',20,0,'currentMonth',0),(39,15,'issuer','userList',30,0,NULL,0),(40,15,'responsible','resourceList',40,0,NULL,0),(41,16,'idProject','projectList',10,0,'currentProject',0),(42,16,'year','year',20,0,'currentYear',0),(43,16,'issuer','userList',30,0,NULL,0),(44,16,'responsible','resourceList',40,0,NULL,0),(45,17,'idProject','projectList',10,0,'currentProject',0),(46,17,'issuer','userList',20,0,NULL,0),(47,17,'responsible','resourceList',30,0,NULL,0),(48,18,'idProject','projectList',10,0,'currentProject',0),(49,18,'issuer','userList',20,0,NULL,0),(50,18,'responsible','resourceList',30,0,NULL,0),(51,19,'idProject','projectList',10,0,'currentProject',0),(52,20,'idProject','projectList',10,0,'currentProject',0),(53,21,'idProject','projectList',10,0,'currentProject',0),(54,21,'issuer','userList',20,0,NULL,0),(55,21,'responsible','resourceList',30,0,NULL,0),(56,22,'idProject','projectList',10,0,'currentProject',0),(57,22,'issuer','userList',20,0,NULL,0),(58,22,'responsible','resourceList',30,0,NULL,0),(59,23,'idProject','projectList',10,0,'currentProject',0),(61,25,'refType','objectList',10,0,NULL,0),(62,25,'refId','id',20,0,NULL,0),(63,26,'idProject','projectList',10,0,'currentProject',0),(64,27,'idProject','projectList',10,0,'currentProject',0),(65,28,'week','week',10,0,'currentWeek',0),(66,29,'month','month',10,0,'currentMonth',0),(67,30,'year','year',10,0,'currentYear',0),(68,31,'idProject','projectList',10,0,'currentProject',0),(69,31,'month','month',20,0,'currentMonth',0),(70,32,'month','month',10,0,'currentMonth',0),(71,33,'idProject','projectList',10,0,'currentProject',0),(72,34,'idProject','projectList',10,0,'currentProject',0),(73,35,'idProject','projectList',10,0,'currentProject',0),(74,36,'idProject','projectList',10,0,'currentProject',0),(75,34,'idResource','resourceList',20,0,NULL,0),(76,9,'requestor','requestorList',35,0,NULL,0),(77,10,'requestor','requestorList',35,0,NULL,0),(78,11,'requestor','requestorList',25,0,NULL,0),(79,12,'requestor','requestorList',25,0,NULL,0),(80,13,'requestor','requestorList',25,0,NULL,0),(81,14,'requestor','requestorList',25,0,NULL,0),(82,15,'requestor','requestorList',25,0,NULL,0),(83,16,'requestor','requestorList',25,0,NULL,0),(84,17,'requestor','requestorList',15,0,NULL,0),(85,18,'requestor','requestorList',15,0,NULL,0),(86,37,'idBill','billList',10,0,NULL,0),(87,37,'idProject','projectList',20,0,'currentProject',0),(88,37,'idClient','clientList',30,0,NULL,0),(89,1,'idProject','projectList',1,0,'currentProject',0),(90,2,'idProject','projectList',1,0,'currentProject',0),(91,3,'idProject','projectList',1,0,'currentProject',0),(92,28,'idProject','projectList',1,0,'currentProject',0),(93,29,'idProject','projectList',1,0,'currentProject',0),(94,30,'idProject','projectList',1,0,'currentProject',0),(95,4,'idProject','projectList',1,0,'currentProject',0),(96,5,'idProject','projectList',1,0,'currentProject',0),(97,6,'idProject','projectList',1,0,'currentProject',0),(98,38,'idProject','projectList',10,0,'currentProject',0),(99,38,'idTicketType','ticketType',20,0,NULL,0),(100,38,'responsible','resourceList',30,0,NULL,0),(101,39,'idProject','projectList',10,0,'currentProject',0),(102,39,'idVersion','versionList',20,0,NULL,0),(103,39,'responsible','resourceList',30,0,NULL,0),(104,40,'idProject','projectList',10,0,'currentProject',0),(105,44,'idProduct','productList',20,0,NULL,0),(106,44,'idVersion','versionList',30,0,NULL,0),(107,44,'showDetail','showDetail',40,0,NULL,0),(108,41,'idProject','projectList',10,0,'currentProject',0),(109,41,'idProduct','productList',20,0,NULL,0),(110,41,'idVersion','versionList',30,0,NULL,0),(111,41,'showDetail','showDetail',40,0,NULL,0),(112,42,'idProject','projectList',10,0,'currentProject',0),(113,42,'month','month',20,0,'currentMonth',0),(114,43,'idProject','projectList',10,0,'currentProject',0),(115,43,'idProduct','productList',20,0,NULL,0),(116,43,'idVersion','versionList',30,0,NULL,0),(117,43,'idTestSession','testSessionList',40,0,NULL,0),(118,43,'showDetail','showDetail',50,0,NULL,0),(119,44,'idProject','projectList',10,0,'currentProject',0),(120,1,'idTeam','teamList',5,0,NULL,0),(121,2,'idTeam','teamList',5,0,NULL,0),(122,3,'idTeam','teamList',5,0,NULL,0),(123,28,'idTeam','teamList',5,0,NULL,0),(124,29,'idTeam','teamList',5,0,NULL,0),(125,30,'idTeam','teamList',5,0,NULL,0),(126,4,'idTeam','teamList',5,0,NULL,0),(127,5,'idTeam','teamList',5,0,NULL,0),(128,6,'idTeam','teamList',5,0,NULL,0),(129,42,'idTeam','teamList',15,0,NULL,0),(130,31,'idTeam','teamList',15,0,NULL,0),(131,32,'idTeam','teamList',20,0,NULL,0),(132,38,'otherVersions','boolean',900,0,NULL,0),(133,39,'otherVersions','boolean',900,0,NULL,0),(134,45,'idProject','projectList',10,0,'currentProject',0),(135,45,'month','month',20,0,'currentMonth',0),(136,46,'idProject','projectList',10,0,'currentProject',0),(137,46,'week','week',20,0,'currentWeek',0),(138,19,'idTeam','teamList',20,0,NULL,0),(139,19,'week','week',30,0,'currentYear',0),(140,20,'idTeam','teamList',20,0,NULL,0),(141,20,'month','month',30,0,'currentYear',0),(142,27,'idTeam','teamList',20,0,NULL,0),(143,27,'month','month',30,0,'currentYear',0),(144,47,'idProject','projectList',10,0,'currentProject',0),(145,48,'month','month',10,0,'currentMonth',0),(146,49,'idProject','projectList',10,0,'currentProject',0),(147,49,'startDate','date',20,0,'today',0),(148,49,'endDate','date',30,0,NULL,0),(149,49,'format','periodScale',40,0,'week',0),(150,49,'listShowMilestone','milestoneTypeList',50,0,'',0),(151,50,'idProject','projectList',10,0,'currentProject',0),(152,52,'period','nextPeriod',10,0,'10/month',0),(153,52,'idTeam','teamList',20,0,NULL,0),(154,53,'idProject','projectList',10,0,'currentProject',0),(155,53,'idProduct','productList',20,0,NULL,0),(156,53,'idVersion','versionList',30,0,NULL,0),(157,54,'week','week',30,0,'currentWeek',0),(158,55,'month','month',30,0,'currentMonth',0),(159,56,'year','year',30,0,'currentYear',0),(160,54,'idProject','projectList',10,0,'currentProject',0),(161,55,'idProject','projectList',10,0,'currentProject',0),(162,56,'idProject','projectList',10,0,'currentProject',0),(163,54,'idResource','resourceList',20,0,'currentResource',0),(164,55,'idResource','resourceList',20,0,'currentResource',0),(165,56,'idResource','resourceList',20,0,'currentResource',0),(166,38,'showDoneVersions','boolean',850,0,NULL,0),(167,39,'showDoneVersions','boolean',850,0,NULL,0),(168,57,'month','month',20,0,'currentMonth',0),(169,57,'idResource','resourceList',10,0,'currentResource',0),(170,31,'idResource','resourceList',17,0,NULL,0),(171,42,'idResource','resourceList',17,0,NULL,0),(172,58,'month','month',20,0,'currentMonth',0),(173,58,'idResource','resourceList',10,0,'currentResource',0),(174,31,'includeNextMonth','boolean',50,0,NULL,0),(175,57,'includeNextMonth','boolean',50,0,NULL,0),(176,4,'includeNextMonth','boolean',50,0,NULL,0),(177,5,'includeNextMonth','boolean',50,0,NULL,0),(178,6,'includeNextMonth','boolean',50,0,NULL,0),(179,42,'includeNextMonth','boolean',50,0,NULL,0),(180,58,'includeNextMonth','boolean',50,0,NULL,0),(181,59,'idProject','projectList',10,0,'currentProject',0),(182,59,'format','periodScale',20,0,'day',0),(183,59,'startDate','date',30,0,NULL,0),(184,59,'endDate','date',40,0,NULL,0),(185,59,'showBurndownActivities','boolean',50,0,'1',0),(186,59,'showBurndownToday','boolean',60,0,'1',0),(187,59,'showBurndownLegendOnTop','boolean',70,0,'0',0),(188,8,'showIdle','boolean',20,0,'currentProject',0),(189,60,'idProject','projectList',10,0,'currentProject',0),(190,60,'idTeam','teamList',20,0,NULL,0),(191,60,'month','month',40,0,NULL,0),(192,61,'idProject','projectList',10,0,'currentProject',0),(193,61,'idBaselineSelect','baselineList',20,0,NULL,0),(194,61,'format','periodScale',30,0,'day',0),(195,61,'startDate','date',40,0,NULL,0),(196,61,'endDate','date',50,0,NULL,0),(197,61,'showBurndownToday','boolean',60,0,'1',0),(198,61,'showBurndownLegendOnTop','boolean',70,0,'0',0),(199,62,'idProject','projectList',10,0,'currentProject',0),(200,62,'format','periodScale',20,0,'day',0),(201,62,'idMilestoneType','milestoneList',30,0,NULL,0),(202,62,'startDate','date',40,0,NULL,0),(203,62,'endDate','date',45,0,NULL,0),(204,62,'showBurndownToday','boolean',60,0,'1',0),(205,63,'idActivity','activityList',20,0,NULL,0),(206,63,'idProject','projectList',10,0,'currentProject',0),(207,64,'idProject','projectList',10,0,'currentProject',0),(208,64,'month','month',20,0,NULL,0),(209,64,'showThreshold','boolean',30,0,'1',0),(210,65,'idOrganization','organizationList',10,0,'currentOrganization',0),(211,65,'idProjectType','projectTypeList',20,0,NULL,0),(212,65,'month','month',30,0,'currentYear',0),(213,65,'showThreshold','boolean',40,0,'1',0),(214,65,'onlyFinished','boolean',50,0,'1',0),(215,66,'idProject','projectList',10,0,'currentProject',0),(216,66,'month','month',20,0,NULL,0),(217,66,'showThreshold','boolean',30,0,'1',0),(218,67,'idOrganization','organizationList',10,0,'currentOrganization',0),(219,67,'idProjectType','projectTypeList',20,0,NULL,0),(220,67,'idCategory','categoryList',30,0,NULL,0),(221,67,'month','month',40,0,'currentYear',0),(222,67,'showThreshold','boolean',50,0,'1',0),(223,67,'onlyFinished','boolean',60,0,'1',0),(224,68,'idProject','projectList',10,0,'currentProject',0),(225,68,'month','month',20,0,NULL,0),(226,69,'idProject','projectList',10,0,'currentProject',0),(227,69,'month','month',20,0,NULL,0),(228,69,'showThreshold','boolean',30,0,'1',0),(229,70,'idOrganization','organizationList',10,0,'currentOrganization',0),(230,70,'idProjectType','projectTypeList',20,0,NULL,0),(231,70,'month','month',30,0,'currentYear',0),(232,70,'showThreshold','boolean',40,0,'1',0),(233,70,'onlyFinished','boolean',50,0,'1',0),(234,71,'idProject','projectList',10,0,'currentProject',0),(235,71,'month','month',20,0,NULL,0),(236,71,'showThreshold','boolean',30,0,'1',0),(237,72,'idOrganization','organizationList',10,0,'currentOrganization',0),(238,72,'idProjectType','projectTypeList',20,0,NULL,0),(239,72,'month','month',30,0,'currentYear',0),(240,72,'showThreshold','boolean',40,0,'1',0),(241,72,'onlyFinished','boolean',50,0,'1',0),(242,62,'showIdle','boolean',70,0,'0',0),(243,9,'priority','priorityList',60,0,NULL,0),(244,10,'priority','priorityList',60,0,NULL,0),(245,11,'priority','priorityList',50,0,NULL,0),(246,12,'priority','priorityList',50,0,NULL,0),(247,13,'priority','priorityList',50,0,NULL,0),(248,14,'priority','priorityList',50,0,NULL,0),(249,15,'priority','priorityList',50,0,NULL,0),(250,16,'priority','priorityList',50,0,NULL,0),(251,17,'priority','priorityList',40,0,NULL,0),(252,18,'priority','priorityList',40,0,NULL,0),(253,73,'idProject','projectList',10,0,'currentProject',0),(254,73,'idTicketType','ticketType',20,0,NULL,0),(255,73,'idProduct','productList',30,0,NULL,0),(256,73,'nbOfDays','intInput',40,0,'30',0),(257,73,'priority','priorityList',50,0,NULL,0),(258,74,'idProduct','productList',10,0,NULL,0),(259,74,'idVersion','versionList',20,0,NULL,0),(260,74,'year','year',30,0,'currentYear',0),(261,74,'idTicketType','ticketType',40,0,NULL,0),(262,74,'requestor','requestorList',40,0,NULL,0),(263,74,'issuer','userList',60,0,NULL,0),(264,74,'responsible','resourceList',70,0,NULL,0),(265,74,'priority','priorityList',80,0,NULL,0),(266,4,'showAdminProj','boolean',60,0,'0',0),(267,23,'showClosedItems','boolean',850,0,NULL,0),(268,75,'idProject','projectList',10,0,'currentProject',0),(269,75,'format','periodScale',30,0,'week',0),(270,75,'startDate','date',40,0,NULL,0),(271,75,'endDate','date',50,0,NULL,0),(272,75,'activityOrTicket','element',60,0,NULL,0),(273,75,'idTeam','teamList',70,0,NULL,0),(274,75,'idResource','resourceList',80,0,NULL,0),(275,76,'idResource','resourceList',10,0,NULL,0),(276,76,'idTeam','teamList',20,0,NULL,0),(277,76,'week','week',30,0,NULL,0),(278,77,'idResource','resourceList',10,0,NULL,0),(279,77,'idTeam','teamList',20,0,NULL,0),(280,77,'month','month',30,0,NULL,0),(281,78,'showIdle','boolean',20,0,'0',0),(282,78,'idProject','projectList',10,0,'currentProject',0),(283,79,'idProject','projectList',10,0,'currentProject',0),(284,79,'idProduct','productList',20,0,NULL,0),(285,79,'idVersion','versionList',30,0,NULL,0),(286,79,'IdUrgency','urgencyList',40,0,NULL,0),(287,79,'idCriticality','criticalityList',50,0,NULL,0),(288,80,'idProject','projectList',10,0,'currentProject',0),(289,80,'idProduct','productList',20,0,NULL,0),(290,80,'idVersion','versionList',30,0,NULL,0),(291,80,'idPriority','priorityList',50,0,NULL,0),(292,81,'idProject','projectList',10,0,'currentProject',0),(293,81,'idProduct','productList',20,0,NULL,0),(294,81,'idVersion','versionList',30,0,NULL,0),(295,81,'year','year',40,0,'currentYear',0),(296,81,'idPriority','priorityList',50,0,NULL,0),(297,82,'idProject','projectList',10,0,'currentProject',0),(298,82,'idProduct','productList',20,0,NULL,0),(299,82,'idVersion','versionList',30,0,NULL,0),(300,82,'nbOfDays','intInput',40,0,'30',0),(301,82,'idPriority','priorityList',50,0,NULL,0),(302,83,'idProduct','productList',10,0,NULL,0),(303,83,'idProductVersion','productVersionList',20,0,NULL,0),(304,83,'listTickets','boolean',30,0,NULL,0),(305,83,'idStatus','statusList',40,0,NULL,1),(306,84,'idProject','projectList',10,0,'currentProject',0),(307,84,'idProduct','productList',20,0,NULL,0),(308,84,'idVersion','versionList',30,0,NULL,0),(309,83,'showDetail','showDetail',35,0,NULL,0),(310,86,'idProject','projectList',10,0,'currentProject',0),(311,86,'idProjectType','projectTypeList',20,0,NULL,0),(312,86,'idOrganization','organizationList',30,0,NULL,0),(313,86,'showExpense','boolean',35,0,'1',0),(314,86,'showClosedItems','boolean',40,0,NULL,0),(315,87,'idProject','projectList',10,0,'currentProject',0),(316,87,'idProjectType','projectTypeList',20,0,NULL,0),(317,87,'idOrganization','organizationList',30,0,NULL,0),(318,81,'idRequirementType','requirementTypeList',50,0,NULL,0),(319,81,'responsible','resourceList',60,0,NULL,0),(320,81,'requestor','requestorList',70,0,NULL,0),(321,88,'idProject','projectList',10,0,'currentProject',0),(322,88,'idProduct','productList',20,0,NULL,0),(323,88,'idVersion','versionList',30,0,NULL,0),(324,88,'year','year',40,0,'currentYear',0),(325,88,'responsible','resourceList',50,0,NULL,0),(326,88,'requestor','requestorList',60,0,NULL,0),(327,88,'issuer','userList',70,0,NULL,0),(328,88,'idPriority','priorityList',80,0,NULL,0),(329,89,'idProject','projectList',10,0,'currentProject',0),(330,89,'week','week',20,0,'currentWeek',0),(331,89,'issuer','userList',30,0,NULL,0),(332,89,'responsible','resourceList',40,0,NULL,0),(333,89,'requestor','requestorList',50,0,NULL,0),(334,90,'idProject','projectList',10,0,'currentProject',0),(335,90,'month','month',20,0,'currentMonth',0),(336,90,'issuer','userList',30,0,NULL,0),(337,90,'responsible','resourceList',40,0,NULL,0),(338,90,'requestor','requestorList',50,0,NULL,0),(339,91,'idProject','projectList',10,0,'currentProject',0),(340,91,'year','year',20,0,'currentYear',0),(341,91,'issuer','userList',30,0,NULL,0),(342,91,'responsible','resourceList',40,0,NULL,0),(343,91,'requestor','requestorList',50,0,NULL,0),(344,92,'idProject','projectList',10,0,'currentProject',0),(345,92,'issuer','userList',20,0,NULL,0),(346,92,'responsible','resourceList',30,0,NULL,0),(347,92,'requestor','requestorList',40,0,NULL,0);
/*!40000 ALTER TABLE `reportparameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requirement`
--

DROP TABLE IF EXISTS `requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requirement` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idProduct` int(12) unsigned DEFAULT NULL,
  `idVersion` int(12) unsigned DEFAULT NULL,
  `idRequirementType` int(12) unsigned DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `creationDateTime` datetime DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idRequirement` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `done` int(1) unsigned DEFAULT 0,
  `doneDate` date DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idleDate` date DEFAULT NULL,
  `idTargetProductVersion` int(12) unsigned DEFAULT NULL,
  `plannedWork` decimal(14,5) unsigned DEFAULT 0.00000,
  `idUrgency` int(12) unsigned DEFAULT NULL,
  `idCriticality` int(12) unsigned DEFAULT NULL,
  `idFeasibility` int(12) unsigned DEFAULT NULL,
  `idRiskLevel` int(12) unsigned DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `countPassed` int(5) DEFAULT 0,
  `countFailed` int(5) DEFAULT 0,
  `countBlocked` int(5) DEFAULT 0,
  `countPlanned` int(5) DEFAULT 0,
  `countLinked` int(5) DEFAULT 0,
  `countIssues` int(5) DEFAULT 0,
  `countTotal` int(5) DEFAULT 0,
  `idRunStatus` int(12) unsigned DEFAULT NULL,
  `idContact` int(12) unsigned DEFAULT NULL,
  `locked` int(1) unsigned DEFAULT 0,
  `idLocker` int(12) unsigned DEFAULT NULL,
  `lockedDate` datetime DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `initialDueDate` date DEFAULT NULL,
  `actualDueDate` date DEFAULT NULL,
  `idBusinessFeature` int(12) DEFAULT NULL,
  `idPriority` int(12) unsigned DEFAULT NULL,
  `idComponent` int(12) unsigned DEFAULT NULL,
  `idTargetComponentVersion` int(12) unsigned DEFAULT NULL,
  `idMilestone` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requirementProject` (`idProject`),
  KEY `requirementProduct` (`idProduct`),
  KEY `requirementVersion` (`idVersion`),
  KEY `requirementType` (`idRequirementType`),
  KEY `requirementUser` (`idUser`),
  KEY `requirementRequirement` (`idRequirement`),
  KEY `requirementStatus` (`idStatus`),
  KEY `requirementResource` (`idResource`),
  KEY `requirementTargetVersion` (`idTargetProductVersion`),
  KEY `requirementUrgency` (`idUrgency`),
  KEY `requirementCriticality` (`idCriticality`),
  KEY `requirementFeasibility` (`idFeasibility`),
  KEY `requiremenRiskLevel` (`idRiskLevel`),
  KEY `requirementPriority` (`idPriority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requirement`
--

LOCK TABLES `requirement` WRITE;
/*!40000 ALTER TABLE `requirement` DISABLE KEYS */;
/*!40000 ALTER TABLE `requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resolution`
--

DROP TABLE IF EXISTS `resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resolution` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `solved` int(1) unsigned DEFAULT 0,
  `color` varchar(7) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolution`
--

LOCK TABLES `resolution` WRITE;
/*!40000 ALTER TABLE `resolution` DISABLE KEYS */;
INSERT INTO `resolution` VALUES (1,'not resolved',1,'#eeeeee',10,0),(2,'fixed',1,'#00ff00',20,0),(3,'already fixed',1,'#00ff00',30,0),(4,'duplicate',0,'#ff0000',40,0),(5,'rejected',0,'#ff0000',50,0),(6,'support provided',1,'#00ff00',60,0),(7,'workaround provided',1,'#00ff00',70,0),(8,'evolution done',1,'#00ff00',80,0);
/*!40000 ALTER TABLE `resolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `idProfile` int(12) DEFAULT NULL,
  `isResource` int(1) unsigned DEFAULT 0,
  `isUser` int(1) unsigned DEFAULT 0,
  `locked` int(1) unsigned DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `idTeam` int(12) unsigned DEFAULT NULL,
  `capacity` decimal(8,5) DEFAULT NULL,
  `address` varchar(4000) DEFAULT NULL,
  `isContact` int(1) unsigned DEFAULT 0,
  `idClient` int(12) unsigned DEFAULT NULL,
  `idRole` int(12) unsigned DEFAULT NULL,
  `isLdap` int(1) unsigned DEFAULT 0,
  `initials` varchar(10) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `complement` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `idRecipient` int(12) unsigned DEFAULT NULL,
  `loginTry` int(5) unsigned DEFAULT 0,
  `salt` varchar(100) DEFAULT NULL,
  `crypto` varchar(100) DEFAULT 'md5',
  `idCalendarDefinition` int(12) unsigned DEFAULT 1,
  `cookieHash` varchar(400) DEFAULT NULL,
  `passwordChangeDate` date DEFAULT NULL,
  `apiKey` varchar(400) DEFAULT NULL,
  `dontReceiveTeamMails` int(1) unsigned DEFAULT 0,
  `function` varchar(100) DEFAULT NULL,
  `idProvider` int(12) unsigned DEFAULT NULL,
  `idOrganization` int(12) unsigned DEFAULT NULL,
  `idLanguage` int(12) DEFAULT NULL,
  `isResourceTeam` int(1) unsigned DEFAULT 0,
  `isEmployee` int(1) unsigned DEFAULT 0,
  `isLeaveManager` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `userProfile` (`idProfile`),
  KEY `userTeam` (`idTeam`),
  KEY `userIsResource` (`isResource`),
  KEY `userIsUser` (`isUser`),
  KEY `userIsContact` (`isContact`),
  KEY `userRecipient` (`idRecipient`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,'admin',NULL,NULL,NULL,'21232f297a57a5a743894a0e4a801fc3',1,0,1,0,0,NULL,NULL,NULL,NULL,1.00000,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'md5',1,NULL,'2019-06-13','dfe6ae22e1fe4bb3ddf57e37f984677a',0,NULL,NULL,NULL,NULL,0,0,0),(2,'guest',NULL,NULL,NULL,'084e0343a0486ff05530df6c705c8bb4',5,0,1,0,0,NULL,NULL,NULL,NULL,1.00000,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'md5',1,NULL,'2019-06-13','38acd72bad8332260fb7a13ba11ff3e7',0,NULL,NULL,NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourcecapacity`
--

DROP TABLE IF EXISTS `resourcecapacity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourcecapacity` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idResource` int(12) NOT NULL,
  `capacity` decimal(8,5) unsigned DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resourcevariablecapacity` (`idResource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcecapacity`
--

LOCK TABLES `resourcecapacity` WRITE;
/*!40000 ALTER TABLE `resourcecapacity` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourcecapacity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourcecost`
--

DROP TABLE IF EXISTS `resourcecost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourcecost` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idResource` int(12) unsigned DEFAULT NULL,
  `idRole` int(12) unsigned DEFAULT NULL,
  `cost` decimal(11,2) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `resourcecostResource` (`idResource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcecost`
--

LOCK TABLES `resourcecost` WRITE;
/*!40000 ALTER TABLE `resourcecost` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourcecost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceteamaffectation`
--

DROP TABLE IF EXISTS `resourceteamaffectation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourceteamaffectation` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idResourceTeam` int(12) unsigned NOT NULL,
  `idResource` int(12) unsigned NOT NULL,
  `rate` int(3) unsigned DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceteamaffectation`
--

LOCK TABLES `resourceteamaffectation` WRITE;
/*!40000 ALTER TABLE `resourceteamaffectation` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourceteamaffectation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restrictlist`
--

DROP TABLE IF EXISTS `restrictlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restrictlist` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProfile` int(12) unsigned DEFAULT NULL,
  `showAll` int(1) DEFAULT NULL,
  `showStarted` int(1) DEFAULT NULL,
  `showDelivered` int(1) DEFAULT NULL,
  `showInService` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restrictlist`
--

LOCK TABLES `restrictlist` WRITE;
/*!40000 ALTER TABLE `restrictlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `restrictlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restricttype`
--

DROP TABLE IF EXISTS `restricttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restricttype` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProjectType` int(12) unsigned DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `className` varchar(100) DEFAULT NULL,
  `idType` int(12) unsigned DEFAULT NULL,
  `idProfile` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restricttypeProjectType` (`idProjectType`,`className`,`idType`),
  KEY `restricttypeProject` (`idProject`,`className`,`idType`),
  KEY `restricttypeProfile` (`idProfile`,`className`,`idType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restricttype`
--

LOCK TABLES `restricttype` WRITE;
/*!40000 ALTER TABLE `restricttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `restricttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk`
--

DROP TABLE IF EXISTS `risk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `risk` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idRiskType` int(12) unsigned DEFAULT NULL,
  `cause` mediumtext DEFAULT NULL,
  `impact` mediumtext DEFAULT NULL,
  `idSeverity` int(12) unsigned DEFAULT NULL,
  `idLikelihood` int(12) unsigned DEFAULT NULL,
  `idCriticality` int(12) unsigned DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `initialEndDate` date DEFAULT NULL,
  `actualEndDate` date DEFAULT NULL,
  `idleDate` date DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `done` int(1) unsigned DEFAULT 0,
  `doneDate` date DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `idPriority` int(12) unsigned DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `impactCost` decimal(11,2) unsigned DEFAULT 0.00,
  `projectReserveAmount` decimal(11,2) unsigned DEFAULT 0.00,
  `mitigationPlan` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `riskProject` (`idProject`),
  KEY `riskUser` (`idUser`),
  KEY `riskResource` (`idResource`),
  KEY `riskStatus` (`idStatus`),
  KEY `riskType` (`idRiskType`),
  KEY `riskSeverity` (`idSeverity`),
  KEY `riskLikelihood` (`idLikelihood`),
  KEY `riskCriticality` (`idCriticality`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk`
--

LOCK TABLES `risk` WRITE;
/*!40000 ALTER TABLE `risk` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risklevel`
--

DROP TABLE IF EXISTS `risklevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `risklevel` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risklevel`
--

LOCK TABLES `risklevel` WRITE;
/*!40000 ALTER TABLE `risklevel` DISABLE KEYS */;
INSERT INTO `risklevel` VALUES (1,'Very Low','#00FF00',100,0),(2,'Low','#00AAAA',200,0),(3,'Average','#AAAAAA',300,0),(4,'High','#AAAA00',400,0),(5,'Very High','#FF0000',500,0);
/*!40000 ALTER TABLE `risklevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `sortOrder` int(3) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `defaultCost` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Manager','Leader/Manager of the project',10,0,NULL),(2,'Analyst','Responsible of specifications',20,0,NULL),(3,'Developer','Sowftware developer',30,0,NULL),(4,'Expert','Technical expert',40,0,NULL),(5,'Machine','Non human resource',50,0,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rulableforempcontracttype`
--

DROP TABLE IF EXISTS `rulableforempcontracttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rulableforempcontracttype` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `rulableItem` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rulableforempcontracttype`
--

LOCK TABLES `rulableforempcontracttype` WRITE;
/*!40000 ALTER TABLE `rulableforempcontracttype` DISABLE KEYS */;
INSERT INTO `rulableforempcontracttype` VALUES (1,'Employee','Employee',0),(2,'EmploymentContract','EmploymentContract',0),(3,'EmployeeLeaveEarned','EmployeeLeaveEarned',0),(4,'Leave','Leave',0);
/*!40000 ALTER TABLE `rulableforempcontracttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `runstatus`
--

DROP TABLE IF EXISTS `runstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `runstatus` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `runstatus`
--

LOCK TABLES `runstatus` WRITE;
/*!40000 ALTER TABLE `runstatus` DISABLE KEYS */;
INSERT INTO `runstatus` VALUES (1,'planned','#FFFFFF',200,0),(2,'passed','#32CD32',300,0),(3,'failed','#FF0000',500,0),(4,'blocked','#FFA500',400,0),(5,'notPlanned','#BB64BB',100,1);
/*!40000 ALTER TABLE `runstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `severity`
--

DROP TABLE IF EXISTS `severity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `severity` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `value` int(3) unsigned DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `severity`
--

LOCK TABLES `severity` WRITE;
/*!40000 ALTER TABLE `severity` DISABLE KEYS */;
INSERT INTO `severity` VALUES (1,'Low',1,'#32cd32',10,0),(2,'Medium',2,'#ffd700',20,0),(3,'High',4,'#ff0000',30,0);
/*!40000 ALTER TABLE `severity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sla`
--

DROP TABLE IF EXISTS `sla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sla` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idTicketType` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `durationSla` double DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sla`
--

LOCK TABLES `sla` WRITE;
/*!40000 ALTER TABLE `sla` DISABLE KEYS */;
/*!40000 ALTER TABLE `sla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `setDoneStatus` int(1) unsigned DEFAULT 0,
  `setIdleStatus` int(1) unsigned DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `setHandledStatus` int(1) unsigned DEFAULT 0,
  `isCopyStatus` int(1) unsigned DEFAULT 0,
  `setCancelledStatus` int(1) unsigned DEFAULT 0,
  `setIntoserviceStatus` int(1) unsigned DEFAULT 0,
  `setSubmittedLeave` int(1) DEFAULT 0,
  `setAcceptedLeave` int(1) DEFAULT 0,
  `setRejectedLeave` int(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'recorded',0,0,'#ffa500',100,0,0,0,0,0,0,0,0),(2,'qualified',0,0,'#87ceeb',200,0,0,0,0,0,0,0,0),(3,'in progress',0,0,'#d2691e',300,0,1,0,0,0,0,0,0),(4,'done',1,0,'#afeeee',400,0,1,0,0,0,0,0,0),(5,'verified',1,0,'#32cd32',500,0,1,0,0,0,0,0,0),(6,'delivered',1,0,'#4169e1',600,0,1,0,0,0,0,0,0),(7,'closed',1,1,'#c0c0c0',700,0,1,0,0,0,0,0,0),(8,'re-opened',0,0,'#ff0000',250,0,0,0,0,0,0,0,0),(9,'cancelled',0,1,'#c0c0c0',999,0,1,0,1,0,0,0,0),(10,'assigned',0,0,'#8b4513',275,0,1,0,0,0,0,0,0),(11,'accepted',0,0,'#a52a2a',220,0,0,0,0,0,0,0,0),(12,'validated',1,0,'#98fb98',650,0,1,0,0,0,0,0,0),(13,'prepared',0,0,'#d2691e',290,0,1,0,0,0,0,0,0),(14,'copied',0,0,'#ffffff',999,1,0,1,0,0,0,0,0),(15,'submitted',0,0,'#0000ff',990,0,0,0,0,0,1,0,0),(16,'accepted',0,0,'#00ff00',992,0,0,0,0,0,0,1,0),(17,'rejected',0,0,'#ff0000',994,0,0,0,0,0,0,0,1);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusmail`
--

DROP TABLE IF EXISTS `statusmail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statusmail` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idMailable` int(12) unsigned DEFAULT NULL,
  `mailToUser` int(1) unsigned DEFAULT 0,
  `mailToResource` int(1) unsigned DEFAULT 0,
  `mailToProject` int(1) unsigned DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  `mailToContact` int(1) unsigned DEFAULT 0,
  `mailToLeader` int(1) unsigned DEFAULT 0,
  `mailToOther` int(1) unsigned DEFAULT 0,
  `otherMail` varchar(4000) DEFAULT NULL,
  `idEvent` int(12) unsigned DEFAULT NULL,
  `mailToManager` int(1) unsigned DEFAULT 0,
  `mailToAssigned` int(1) unsigned DEFAULT 0,
  `idType` int(12) unsigned DEFAULT NULL,
  `mailToSubscribers` int(1) unsigned DEFAULT 0,
  `mailToProjectIncludingParentProject` int(1) unsigned DEFAULT 0,
  `idProject` int(12) DEFAULT NULL,
  `isProject` int(1) unsigned DEFAULT 0,
  `mailToAccountable` int(1) unsigned DEFAULT 0,
  `idEmailTemplate` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `statusmailStatus` (`idStatus`),
  KEY `statusmailMailable` (`idMailable`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusmail`
--

LOCK TABLES `statusmail` WRITE;
/*!40000 ALTER TABLE `statusmail` DISABLE KEYS */;
INSERT INTO `statusmail` VALUES (1,1,1,1,1,1,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(2,2,1,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(3,11,1,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(4,8,1,1,1,1,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(5,10,1,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(6,3,1,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(7,4,1,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(8,5,1,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(9,6,1,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(10,12,1,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(11,7,1,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(12,9,1,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(13,8,2,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(14,10,2,0,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(15,3,2,1,0,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(16,4,2,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(17,12,2,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(18,7,2,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(19,9,2,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(20,8,3,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(21,10,3,0,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(22,3,3,1,0,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(23,4,3,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(24,12,3,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(25,7,3,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(26,9,3,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(27,8,4,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(28,10,4,0,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(29,3,4,1,0,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(30,4,4,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(31,12,4,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(32,7,4,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(33,9,4,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(34,8,5,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(35,10,5,0,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(36,3,5,1,0,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(37,4,5,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(38,12,5,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(39,7,5,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(40,9,5,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(41,8,6,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(42,10,6,0,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(43,3,6,1,0,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(44,4,6,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(45,12,6,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(46,7,6,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(47,9,6,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(48,13,7,0,0,1,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(49,6,7,0,0,1,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(50,12,8,0,0,1,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(51,9,8,0,0,1,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(52,1,9,1,1,1,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(53,2,9,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(54,11,9,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(55,8,9,1,1,1,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(56,10,9,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(57,3,9,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(58,4,9,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(59,5,9,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(60,6,9,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(61,12,9,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(62,7,9,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(63,9,9,1,1,0,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(64,4,10,0,1,1,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(65,12,10,0,1,1,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(66,3,11,0,1,1,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL),(67,4,11,0,1,1,0,0,0,0,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL);
/*!40000 ALTER TABLE `statusmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusnotification`
--

DROP TABLE IF EXISTS `statusnotification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statusnotification` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusnotification`
--

LOCK TABLES `statusnotification` WRITE;
/*!40000 ALTER TABLE `statusnotification` DISABLE KEYS */;
INSERT INTO `statusnotification` VALUES (1,'unread','#ff7f50'),(2,'read','#32CD32');
/*!40000 ALTER TABLE `statusnotification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idAffectable` int(12) unsigned DEFAULT NULL,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned DEFAULT NULL,
  `creationDateTime` datetime DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `isAutoSub` int(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `subscriptionAffectable` (`idAffectable`),
  KEY `subscriptionReference` (`refType`,`refId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idResource` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempupdate`
--

DROP TABLE IF EXISTS `tempupdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempupdate` (
  `id` int(12) DEFAULT NULL,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) DEFAULT NULL,
  `idOther` int(12) unsigned DEFAULT NULL,
  `workValue` decimal(8,5) unsigned DEFAULT NULL,
  `costValue` decimal(12,2) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempupdate`
--

LOCK TABLES `tempupdate` WRITE;
/*!40000 ALTER TABLE `tempupdate` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempupdate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tender`
--

DROP TABLE IF EXISTS `tender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tender` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `idTenderType` int(12) unsigned DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idCallForTender` int(12) unsigned DEFAULT NULL,
  `idTenderStatus` int(12) unsigned DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idProvider` int(12) unsigned DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `idContact` int(12) unsigned DEFAULT NULL,
  `requestDateTime` datetime DEFAULT NULL,
  `expectedTenderDateTime` datetime DEFAULT NULL,
  `receptionDateTime` datetime DEFAULT NULL,
  `evaluationValue` decimal(7,2) DEFAULT NULL,
  `evaluationRank` int(3) DEFAULT NULL,
  `offerValidityEndDate` date DEFAULT NULL,
  `totalUntaxedAmount` decimal(11,2) unsigned DEFAULT NULL,
  `taxPct` decimal(5,2) DEFAULT NULL,
  `totalTaxAmount` decimal(11,2) unsigned DEFAULT NULL,
  `totalFullAmount` decimal(11,2) unsigned DEFAULT NULL,
  `untaxedAmount` decimal(11,2) unsigned DEFAULT NULL,
  `taxAmount` decimal(11,2) unsigned DEFAULT NULL,
  `fullAmount` decimal(11,2) unsigned DEFAULT NULL,
  `deliveryDelay` varchar(100) DEFAULT NULL,
  `deliveryDate` date DEFAULT NULL,
  `paymentCondition` varchar(100) DEFAULT NULL,
  `evaluation` decimal(7,2) DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `done` int(1) unsigned DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  `cancelled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `doneDate` date DEFAULT NULL,
  `idleDate` date DEFAULT NULL,
  `discountAmount` decimal(11,2) DEFAULT NULL,
  `discountRate` decimal(5,2) DEFAULT NULL,
  `idProjectExpense` int(12) unsigned DEFAULT NULL,
  `discountFrom` varchar(10) DEFAULT NULL,
  `discountFullAmount` decimal(11,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tenderProject` (`idProject`),
  KEY `tenderType` (`idTenderType`),
  KEY `tenderProvider` (`idProvider`),
  KEY `tenderStatusIndex` (`idStatus`),
  KEY `tenderTenderStatus` (`idTenderStatus`),
  KEY `tenderCallForTender` (`idCallForTender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tender`
--

LOCK TABLES `tender` WRITE;
/*!40000 ALTER TABLE `tender` DISABLE KEYS */;
/*!40000 ALTER TABLE `tender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenderevaluation`
--

DROP TABLE IF EXISTS `tenderevaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenderevaluation` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idTenderEvaluationCriteria` int(12) unsigned DEFAULT NULL,
  `idTender` int(12) unsigned DEFAULT NULL,
  `evaluationValue` decimal(5,2) DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tenderevaluationTenderEvaluationCriteria` (`idTenderEvaluationCriteria`),
  KEY `tenderevaluationTender` (`idTender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenderevaluation`
--

LOCK TABLES `tenderevaluation` WRITE;
/*!40000 ALTER TABLE `tenderevaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenderevaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenderevaluationcriteria`
--

DROP TABLE IF EXISTS `tenderevaluationcriteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenderevaluationcriteria` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idCallForTender` int(12) unsigned DEFAULT NULL,
  `criteriaName` varchar(100) DEFAULT NULL,
  `criteriaMaxValue` int(3) unsigned DEFAULT 10,
  `criteriaCoef` int(3) unsigned DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `tenderevaluationcriteriaCallForTender` (`idCallForTender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenderevaluationcriteria`
--

LOCK TABLES `tenderevaluationcriteria` WRITE;
/*!40000 ALTER TABLE `tenderevaluationcriteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenderevaluationcriteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenderstatus`
--

DROP TABLE IF EXISTS `tenderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenderstatus` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `isWaiting` int(1) unsigned DEFAULT 0,
  `isReceived` int(1) unsigned DEFAULT 0,
  `isNotSelect` int(1) unsigned DEFAULT 0,
  `isSelected` int(1) unsigned DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenderstatus`
--

LOCK TABLES `tenderstatus` WRITE;
/*!40000 ALTER TABLE `tenderstatus` DISABLE KEYS */;
INSERT INTO `tenderstatus` VALUES (1,'request to send','#ffa500',10,0,0,0,0,0),(2,'waiting for reply','#f08080',20,1,0,0,0,0),(3,'out of date answer','#c0c0c0',30,0,1,1,0,0),(4,'incomplete file','#c0c0c0',40,0,1,1,0,0),(5,'admissible','#87ceeb',50,0,1,0,0,0),(6,'short list','#4169e1',60,0,1,0,0,0),(7,'not selected','#c0c0c0',70,0,1,1,0,0),(8,'selected','#98fb98',80,0,1,0,1,0);
/*!40000 ALTER TABLE `tenderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term`
--

DROP TABLE IF EXISTS `term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `validatedAmount` decimal(10,2) DEFAULT NULL,
  `plannedAmount` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `validatedDate` date DEFAULT NULL,
  `plannedDate` date DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT NULL,
  `idBill` int(12) unsigned DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `termProject` (`idProject`),
  KEY `termBill` (`idBill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term`
--

LOCK TABLES `term` WRITE;
/*!40000 ALTER TABLE `term` DISABLE KEYS */;
/*!40000 ALTER TABLE `term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testcase`
--

DROP TABLE IF EXISTS `testcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testcase` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idProduct` int(12) unsigned DEFAULT NULL,
  `idVersion` int(12) unsigned DEFAULT NULL,
  `idTestCaseType` int(12) unsigned DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `creationDateTime` datetime DEFAULT NULL,
  `idContext1` int(12) unsigned DEFAULT NULL,
  `idContext2` int(12) unsigned DEFAULT NULL,
  `idContext3` int(12) unsigned DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idTestCase` int(12) unsigned DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `done` int(1) unsigned DEFAULT 0,
  `doneDate` date DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idleDate` date DEFAULT NULL,
  `idPriority` int(12) unsigned DEFAULT NULL,
  `prerequisite` mediumtext DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `sessionCount` int(5) DEFAULT 0,
  `runCount` int(5) DEFAULT 0,
  `lastRunDate` date DEFAULT NULL,
  `idRunStatus` int(12) unsigned DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `idBusinessFeature` int(12) DEFAULT NULL,
  `idComponentVersion` int(12) DEFAULT NULL,
  `plannedWork` decimal(14,5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `testcaseProject` (`idProject`),
  KEY `testcaseProduct` (`idProduct`),
  KEY `testcaseVersion` (`idVersion`),
  KEY `testcaseType` (`idTestCaseType`),
  KEY `testcaseUser` (`idUser`),
  KEY `testcaseTestCase` (`idTestCase`),
  KEY `testcaseStatus` (`idStatus`),
  KEY `testcaseResource` (`idResource`),
  KEY `testcasePriority` (`idPriority`),
  KEY `testcaseRunStatus` (`idRunStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testcase`
--

LOCK TABLES `testcase` WRITE;
/*!40000 ALTER TABLE `testcase` DISABLE KEYS */;
/*!40000 ALTER TABLE `testcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testcaserun`
--

DROP TABLE IF EXISTS `testcaserun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testcaserun` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idTestCase` int(12) unsigned DEFAULT NULL,
  `idTestSession` int(12) unsigned DEFAULT NULL,
  `idRunStatus` int(12) unsigned DEFAULT NULL,
  `idTicket` int(12) unsigned DEFAULT NULL,
  `statusDateTime` datetime DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `sortOrder` int(3) DEFAULT 0,
  `result` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `testcaserunTestCase` (`idTestCase`),
  KEY `testcaserunTestSession` (`idTestSession`),
  KEY `testcaserunRunStatus` (`idRunStatus`),
  KEY `testcaserunTicket` (`idTicket`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testcaserun`
--

LOCK TABLES `testcaserun` WRITE;
/*!40000 ALTER TABLE `testcaserun` DISABLE KEYS */;
/*!40000 ALTER TABLE `testcaserun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testsession`
--

DROP TABLE IF EXISTS `testsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testsession` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idProduct` int(12) unsigned DEFAULT NULL,
  `idVersion` int(12) unsigned DEFAULT NULL,
  `idTestSessionType` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `creationDateTime` datetime DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `handledDate` date DEFAULT NULL,
  `done` int(1) unsigned DEFAULT 0,
  `doneDate` date DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idleDate` date DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `countPassed` int(5) DEFAULT 0,
  `countFailed` int(5) DEFAULT 0,
  `countBlocked` int(5) DEFAULT 0,
  `countTotal` int(5) DEFAULT 0,
  `countIssues` int(5) DEFAULT 0,
  `countPlanned` int(5) DEFAULT 0,
  `idRunStatus` int(12) unsigned DEFAULT NULL,
  `idTestSession` int(12) unsigned DEFAULT NULL,
  `idActivity` int(12) unsigned DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `sumPlannedWork` decimal(14,5) DEFAULT 0.00000,
  PRIMARY KEY (`id`),
  KEY `testsessionProject` (`idProject`),
  KEY `testsessionProduct` (`idProduct`),
  KEY `testsessionVersion` (`idVersion`),
  KEY `testsessionType` (`idTestSessionType`),
  KEY `testsessionUser` (`idUser`),
  KEY `testsessionStatus` (`idStatus`),
  KEY `testsessionResource` (`idResource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testsession`
--

LOCK TABLES `testsession` WRITE;
/*!40000 ALTER TABLE `testsession` DISABLE KEYS */;
/*!40000 ALTER TABLE `testsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `textable`
--

DROP TABLE IF EXISTS `textable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `textable` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textable`
--

LOCK TABLES `textable` WRITE;
/*!40000 ALTER TABLE `textable` DISABLE KEYS */;
INSERT INTO `textable` VALUES (1,'Action',0),(2,'Activity',0),(3,'Bill',0),(4,'Decision',0),(5,'IndividualExpense',0),(6,'Issue',0),(7,'Meeting',0),(8,'Milestone',0),(9,'Product',0),(10,'Project',0),(11,'ProjectExpense',0),(12,'Question',0),(13,'Requirement',0),(14,'Risk',0),(15,'Term',0),(16,'TestCase',0),(17,'TestSession',0),(18,'Ticket',0),(20,'Quotation',0),(21,'CallForTender',0),(22,'Client',0),(23,'Command',0),(24,'Component',0),(25,'ComponentVersion',0),(26,'Deliverable',0),(27,'Delivery',0),(28,'Document',0),(29,'Incoming',0),(30,'Notification',0),(31,'Opportunity',0),(32,'Organization',0),(33,'Payment',0),(34,'PeriodicMeeting',0),(35,'ProductVersion',0),(36,'Provider',0),(37,'Team',0),(38,'Tender',0),(39,'ActivityPrice',0);
/*!40000 ALTER TABLE `textable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idTicketType` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `creationDateTime` datetime DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `initialDueDateTime` datetime DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `actualDueDateTime` datetime DEFAULT NULL,
  `idleDateTime` datetime DEFAULT NULL,
  `result` mediumtext DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `idActivity` int(12) unsigned DEFAULT NULL,
  `idCriticality` int(12) unsigned DEFAULT NULL,
  `idUrgency` int(12) unsigned DEFAULT NULL,
  `idPriority` int(12) unsigned DEFAULT NULL,
  `done` int(1) unsigned DEFAULT 0,
  `doneDateTime` datetime DEFAULT NULL,
  `handled` int(1) unsigned DEFAULT 0,
  `handledDateTime` datetime DEFAULT NULL,
  `idContact` int(12) unsigned DEFAULT NULL,
  `idTargetProductVersion` int(12) unsigned DEFAULT NULL,
  `idOriginalProductVersion` int(12) unsigned DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `externalReference` varchar(100) DEFAULT NULL,
  `idTicket` int(12) unsigned DEFAULT NULL,
  `idContext1` int(12) unsigned DEFAULT NULL,
  `idContext2` int(12) unsigned DEFAULT NULL,
  `idContext3` int(12) unsigned DEFAULT NULL,
  `idProduct` int(12) unsigned DEFAULT NULL,
  `cancelled` int(1) unsigned DEFAULT 0,
  `idComponent` int(12) unsigned DEFAULT NULL,
  `idOriginalComponentVersion` int(12) unsigned DEFAULT NULL,
  `idTargetComponentVersion` int(12) unsigned DEFAULT NULL,
  `idResolution` int(12) unsigned DEFAULT NULL,
  `solved` int(1) unsigned DEFAULT 0,
  `lastUpdateDateTime` datetime DEFAULT NULL,
  `idBusinessFeature` int(12) DEFAULT NULL,
  `delayReadOnly` int(1) DEFAULT 0,
  `isRegression` int(1) unsigned DEFAULT 0,
  `idAccountable` int(12) DEFAULT NULL,
  `idMilestone` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticketProject` (`idProject`),
  KEY `ticketUser` (`idUser`),
  KEY `ticketResource` (`idResource`),
  KEY `ticketStatus` (`idStatus`),
  KEY `ticketType` (`idTicketType`),
  KEY `ticketActivity` (`idActivity`),
  KEY `ticketUrgency` (`idUrgency`),
  KEY `ticketPriority` (`idPriority`),
  KEY `ticketCriticality` (`idCriticality`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `today`
--

DROP TABLE IF EXISTS `today`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `today` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idUser` int(12) unsigned DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `staticSection` varchar(100) DEFAULT NULL,
  `idReport` int(12) unsigned DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `todayUser` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `today`
--

LOCK TABLES `today` WRITE;
/*!40000 ALTER TABLE `today` DISABLE KEYS */;
INSERT INTO `today` VALUES (1,1,'static','Projects',NULL,1,0),(2,2,'static','Projects',NULL,1,0),(4,1,'static','AssignedTasks',NULL,2,0),(5,2,'static','AssignedTasks',NULL,2,0),(7,1,'static','ResponsibleTasks',NULL,3,0),(8,2,'static','ResponsibleTasks',NULL,3,0),(10,1,'static','IssuerRequestorTasks',NULL,4,0),(11,2,'static','IssuerRequestorTasks',NULL,4,0),(13,1,'static','ProjectsTasks',NULL,5,0),(14,2,'static','ProjectsTasks',NULL,5,0),(16,1,'static','Documents',NULL,6,0),(17,2,'static','Documents',NULL,6,0);
/*!40000 ALTER TABLE `today` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todayparameter`
--

DROP TABLE IF EXISTS `todayparameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todayparameter` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idReport` int(12) unsigned DEFAULT NULL,
  `idToday` int(12) unsigned DEFAULT NULL,
  `parameterName` varchar(100) DEFAULT NULL,
  `parameterValue` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `todayParameterUser` (`idUser`),
  KEY `todayParameterReport` (`idReport`),
  KEY `todayParameterToday` (`idToday`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todayparameter`
--

LOCK TABLES `todayparameter` WRITE;
/*!40000 ALTER TABLE `todayparameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `todayparameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trend`
--

DROP TABLE IF EXISTS `trend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trend` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trend`
--

LOCK TABLES `trend` WRITE;
/*!40000 ALTER TABLE `trend` DISABLE KEYS */;
INSERT INTO `trend` VALUES (1,'increasing','#32CD32',100,'arrowUpGreen.png',0),(2,'even','#ffd700',200,'arrowRightGrey.png',0),(3,'decreasing','#FF0000',300,'arrowDownRed.png',0);
/*!40000 ALTER TABLE `trend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `color` varchar(7) DEFAULT NULL,
  `idWorkflow` int(12) unsigned DEFAULT NULL,
  `mandatoryDescription` int(1) unsigned DEFAULT 0,
  `mandatoryResultOnDone` int(1) unsigned DEFAULT 0,
  `mandatoryResourceOnHandled` int(1) unsigned DEFAULT 0,
  `lockHandled` int(1) unsigned DEFAULT 0,
  `lockDone` int(1) unsigned DEFAULT 0,
  `lockIdle` int(1) unsigned DEFAULT 0,
  `code` varchar(10) DEFAULT NULL,
  `internalData` varchar(1) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `lockCancelled` int(1) unsigned DEFAULT 0,
  `showInFlash` int(1) unsigned DEFAULT 0,
  `idPlanningMode` int(12) unsigned DEFAULT NULL,
  `mandatoryResolutionOnDone` int(1) unsigned DEFAULT 0,
  `lockSolved` int(1) unsigned DEFAULT 0,
  `idCategory` int(12) unsigned DEFAULT NULL,
  `lockNoLeftOnDone` int(1) unsigned DEFAULT 0,
  `priority` int(3) unsigned DEFAULT NULL,
  `lockIntoservice` int(1) unsigned DEFAULT 0,
  `lockUseOnlyForCC` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `typeScope` (`scope`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Risk','Contractual',10,0,NULL,1,0,1,1,1,1,1,'CON',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(2,'Risk','Operational',20,0,NULL,1,0,1,1,1,1,1,'OPE',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(3,'Risk','Technical',30,0,NULL,1,0,1,1,1,1,1,'TEC',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(4,'Issue','Technical issue',10,0,NULL,1,0,1,1,1,1,1,'TEC',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(5,'Issue','Process non conformity',30,0,NULL,1,0,1,1,1,1,1,'PRO',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(6,'Issue','Quality non conformity',40,0,NULL,1,0,1,1,1,1,1,'QUA',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(7,'Issue','Process non appliability',20,0,NULL,1,0,1,1,1,1,1,'PRO',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(8,'Issue','Customer complaint',90,0,NULL,1,0,1,1,1,1,1,'CUS',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(9,'Issue','Delay non respect',50,0,NULL,1,0,1,1,1,1,1,'DEL',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(10,'Issue','Resource management issue',70,0,NULL,1,0,1,1,1,1,1,'RES',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(12,'Issue','Financial loss',80,0,NULL,1,0,1,1,1,1,1,'FIN',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(13,'Message','ALERT',10,0,'#ff0000',1,0,1,1,1,1,1,'ALE',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(14,'Message','WARNING',10,0,'#ffa500',1,0,1,1,1,1,1,'WAR',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(15,'Message','INFO',30,0,'#0000ff',1,0,1,1,1,1,1,'INF',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(16,'Ticket','Incident',10,0,NULL,1,0,1,1,1,1,1,'INC',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(17,'Ticket','Support / Assistance',20,0,NULL,1,0,1,1,1,1,1,'SUP',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(18,'Ticket','Anomaly / Bug',30,0,NULL,1,0,1,1,1,1,1,'ANO',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(19,'Activity','Development',10,0,NULL,1,0,1,1,1,1,1,'DEV',NULL,NULL,1,0,1,0,0,NULL,0,NULL,0,0),(20,'Activity','Evolution',20,0,NULL,1,0,1,1,1,1,1,'EVO',NULL,NULL,1,0,1,0,0,NULL,0,NULL,0,0),(21,'Activity','Management',30,0,NULL,1,0,1,1,1,1,1,'MAN',NULL,NULL,1,0,1,0,0,NULL,0,NULL,0,0),(22,'Activity','Phase',40,0,NULL,1,0,1,1,1,1,1,'PHA',NULL,NULL,1,0,1,0,0,NULL,0,NULL,0,0),(23,'Milestone','Deliverable',10,0,NULL,1,0,1,1,1,1,1,'DEL',NULL,NULL,1,0,5,0,0,NULL,0,NULL,0,0),(24,'Milestone','Incoming',20,0,NULL,1,0,1,1,1,1,1,'INC',NULL,NULL,1,0,5,0,0,NULL,0,NULL,0,0),(25,'Milestone','Key date',30,0,NULL,1,0,1,1,1,1,1,'KEY',NULL,NULL,1,0,5,0,0,NULL,0,NULL,0,0),(26,'Activity','Task',1,0,NULL,1,0,1,1,1,1,1,'TAS',NULL,NULL,1,0,1,0,0,NULL,0,NULL,0,0),(27,'Action','Project',10,0,NULL,1,0,1,1,1,1,1,'PRO',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(28,'Action','Internal',20,0,NULL,1,0,1,1,1,1,1,'INT',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(29,'Action','Customer',20,0,NULL,1,0,1,1,1,1,1,'CUS',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(30,'Meeting','Steering Committee',10,0,NULL,7,0,1,1,1,1,1,'STE',NULL,NULL,1,0,16,0,0,NULL,0,NULL,0,0),(31,'Meeting','Progress Metting',20,0,NULL,7,0,1,1,1,1,1,'PRO',NULL,NULL,1,0,16,0,0,NULL,0,NULL,0,0),(32,'Meeting','Team meeting',30,0,NULL,7,0,1,1,1,1,1,'TEA',NULL,NULL,1,0,16,0,0,NULL,0,NULL,0,0),(33,'Decision','Functional',10,0,NULL,6,0,1,1,1,1,1,'FUN',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(34,'Decision','Operational',20,0,NULL,6,0,1,1,1,1,1,'OPE',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(35,'Decision','Contractual',30,0,NULL,6,0,1,1,1,1,1,'CON',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(36,'Decision','Strategic',40,0,NULL,6,0,1,1,1,1,1,'STR',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(37,'Question','Functional',10,0,NULL,5,0,1,1,1,1,1,'FUN',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(38,'Question','Technical',20,0,NULL,5,0,1,1,1,1,1,'TEC',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(39,'IndividualExpense','Expense report',10,0,NULL,8,0,0,0,0,0,0,'EXP',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(40,'ProjectExpense','Machine expense',10,0,NULL,8,0,0,0,0,0,0,'MAC',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(41,'ProjectExpense','Office expense',20,0,NULL,8,0,0,0,0,0,0,'OFF',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(46,'Payment','partial payment',20,0,NULL,8,0,0,0,0,0,0,'PAR',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(47,'Payment','final payment',10,0,NULL,8,0,0,0,0,0,0,'FIN',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(48,'Project','Fixed Price',10,0,NULL,1,0,0,0,0,0,0,'OPE','E',NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(49,'Project','Time & Materials',20,0,NULL,1,0,0,0,0,0,0,'OPE','R',NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(50,'Project','Capped Time & Materials',30,0,NULL,1,0,0,0,0,0,0,'OPE','P',NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(51,'Project','Internal',40,0,NULL,1,0,0,0,0,0,0,'OPE','N',NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(52,'Project','Administrative',80,0,NULL,1,0,0,0,0,0,0,'ADM','N',NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(53,'Project','Template',90,0,NULL,1,0,0,0,0,0,0,'TMP','N',NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(54,'Document','Need expression',210,0,NULL,1,0,0,0,0,0,0,'NEEDEXP',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(55,'Document','General Specification',220,0,NULL,1,0,0,0,0,0,0,'GENSPEC',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(56,'Document','Detailed Specification',230,0,NULL,1,0,0,0,0,0,0,'DETSPEC',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(57,'Document','General Conception',240,0,NULL,1,0,0,0,0,0,0,'GENCON',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(58,'Document','Detail Conception',250,0,NULL,1,0,0,0,0,0,0,'DETCON',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(59,'Document','Test Plan',260,0,NULL,1,0,0,0,0,0,0,'TEST',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(60,'Document','Installaton manual',270,0,NULL,1,0,0,0,0,0,0,'INST',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(61,'Document','Exploitation manual',280,0,NULL,1,0,0,0,0,0,0,'EXPL',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(62,'Document','User manual',290,0,NULL,1,0,0,0,0,0,0,'MANUAL',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(63,'Document','Contract',110,0,NULL,1,0,0,0,0,0,0,'CTRCT',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(64,'Document','Management',120,0,NULL,1,0,0,0,0,0,0,'MGT',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(65,'Document','Meeting Review',130,0,NULL,1,0,0,0,0,0,0,'MEETREV',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(66,'Document','Follow-up',140,0,NULL,1,0,0,0,0,0,0,'F-UP',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(67,'Document','Financial',150,0,NULL,1,0,0,0,0,0,0,'FIN',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(68,'Versioning','evolutive',10,0,NULL,1,0,0,0,0,0,0,'EVO',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(69,'Versioning','chronological',20,0,NULL,1,0,0,0,0,0,0,'EVT',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(70,'Versioning','sequential',30,0,NULL,1,0,0,0,0,0,0,'SEQ',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(71,'Versioning','external',40,0,NULL,1,0,0,0,0,0,0,'EXT',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(72,'Bill','Partial bill',100,0,NULL,1,0,0,0,0,1,1,'PARTIAL',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(73,'Bill','Final bill',200,0,NULL,1,0,0,0,0,1,1,'FINAL',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(74,'Bill','Complete bill',300,0,NULL,1,0,0,0,0,1,1,'COMPLETE',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(75,'Requirement','Functional',10,0,NULL,1,1,0,1,1,1,1,'FUNC',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(76,'Requirement','Technical',20,0,NULL,1,1,0,1,1,1,1,'TECH',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(77,'Requirement','Security',30,0,NULL,1,1,0,1,1,1,1,'SECU',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(78,'Requirement','Regulatory',40,0,NULL,1,1,0,1,1,1,1,'REGL',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(79,'TestCase','Requirement test',10,0,NULL,1,1,1,1,1,1,1,'REQU',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(80,'TestCase','Non regression',30,0,NULL,1,1,1,1,1,1,1,'NR',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(81,'TestCase','Unit test',20,0,NULL,1,1,1,1,1,1,1,'UT',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(82,'TestSession','Evolution test session',10,0,NULL,1,1,1,1,1,1,1,'EVO',NULL,NULL,1,0,9,0,0,NULL,0,NULL,0,0),(83,'TestSession','Development test session',20,0,NULL,1,1,1,1,1,1,1,'DEV',NULL,NULL,1,0,9,0,0,NULL,0,NULL,0,0),(84,'TestSession','Non regression test session',30,0,NULL,1,1,1,1,1,1,1,'NR',NULL,NULL,1,0,9,0,0,NULL,0,NULL,0,0),(85,'TestSession','Unitary case test session',40,0,NULL,1,1,1,1,1,1,1,'UT',NULL,NULL,1,0,9,0,0,NULL,0,NULL,0,0),(86,'Opportunity','Contractual',10,0,NULL,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(87,'Opportunity','Operational',20,0,NULL,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(88,'Opportunity','Technical',30,0,NULL,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(89,'Command','Fixed Price',10,0,NULL,1,0,0,0,0,1,1,'',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(90,'Command','Per day',20,0,NULL,1,0,0,0,0,1,1,'',NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(91,'Quotation','Fixed Price',10,0,NULL,1,0,0,0,0,1,1,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(92,'Quotation','Per day',20,0,NULL,1,0,0,0,0,1,1,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(93,'Quotation','Per month',30,0,NULL,1,0,0,0,0,1,1,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(94,'Quotation','Per year',40,0,NULL,1,0,0,0,0,1,1,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(95,'Command','Per month',30,0,NULL,1,0,0,0,0,1,1,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(96,'Command','Per year',40,0,NULL,1,0,0,0,0,1,1,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(97,'Client','business prospect',10,0,NULL,1,0,0,0,0,1,1,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(98,'Client','customer',10,0,NULL,1,0,0,0,0,1,1,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(99,'Product','software',10,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(100,'Product','service',20,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(101,'Component','specific',10,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(102,'Component','on the shelf',20,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(103,'Provider','wholesaler',10,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(104,'Provider','retailer',20,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(105,'Provider','service provider',30,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(106,'Provider','subcontractor',40,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(107,'Provider','central purchasing',50,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(108,'CallForTender','by mutual agreement',10,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(109,'CallForTender','adapted procedure',20,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(110,'CallForTender','open call for tender',30,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(111,'CallForTender','restricted call for tender',40,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(112,'Tender','by mutual agreement',10,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(113,'Tender','adapted procedure',20,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(114,'Tender','open call for tender',30,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(115,'Tender','restricted call for tender',40,0,NULL,1,0,0,0,0,0,0,'',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(116,'Organization','Department',10,0,NULL,NULL,0,0,0,0,0,0,'DEPT',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(117,'Organization','Unit',20,0,NULL,NULL,0,0,0,0,0,0,'UNIT',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(118,'Organization','Location',30,0,NULL,NULL,0,0,0,0,0,0,'LOC',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(119,'ProductVersion','Major Version',10,0,NULL,1,0,0,0,0,0,0,'MAJ',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(120,'ProductVersion','Minor Version',20,0,NULL,1,0,0,0,0,0,0,'MIN',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(121,'ProductVersion','Patch',30,0,NULL,1,0,0,0,0,0,0,'PATCH',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(122,'ComponentVersion','Major Version',10,0,NULL,1,0,0,0,0,0,0,'maj',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(123,'ComponentVersion','Minor Version',20,0,NULL,1,0,0,0,0,0,0,'min',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(124,'ComponentVersion','Patch',30,0,NULL,1,0,0,0,0,0,0,'patch',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(125,'Deliverable','document',10,0,NULL,NULL,0,0,0,0,0,0,'DOC',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(126,'Deliverable','software',20,0,NULL,NULL,0,0,0,0,0,0,'SOFT',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(127,'Deliverable','hardware',30,0,NULL,NULL,0,0,0,0,0,0,'HARD',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(128,'Incoming','document',10,0,NULL,NULL,0,0,0,0,0,0,'DOC',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(129,'Incoming','software',20,0,NULL,NULL,0,0,0,0,0,0,'SOFT',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(130,'Incoming','hardware',30,0,NULL,NULL,0,0,0,0,0,0,'HARD',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(131,'Catalog','Product',NULL,0,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(132,'Catalog','Service',NULL,0,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(133,'Notification','ALERT',10,0,'#ff0000',NULL,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(134,'Notification','WARNING',20,0,'#ffa500',NULL,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(135,'Notification','INFO',30,0,'#0000ff',NULL,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(136,'ProviderOrder','Product',10,0,NULL,1,0,0,0,1,1,1,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(137,'ProviderOrder','Service',20,0,NULL,1,0,0,0,1,1,1,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(138,'ProviderBill','Partial bill',10,0,NULL,1,0,0,0,1,1,1,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(139,'ProviderBill','Final bill',20,0,NULL,1,0,0,0,1,1,1,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(140,'ProviderBill','Complete bill',30,0,NULL,1,0,0,0,1,1,1,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(141,'ProviderPayment','event payment',10,0,NULL,8,0,0,0,1,1,1,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(142,'ProviderPayment','partial payment',20,0,NULL,8,0,0,0,1,1,1,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(143,'ProviderPayment','final payment',30,0,NULL,8,0,0,0,1,1,1,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,NULL,0,0),(144,'Budget','Initial',10,0,NULL,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(145,'Budget','Additional',20,0,NULL,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(146,'Delivery','document',10,0,NULL,1,0,0,0,0,0,0,'DOC',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(147,'Delivery','software',20,0,NULL,1,0,0,0,0,0,0,'SOFT',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(148,'Delivery','hardware',30,0,NULL,1,0,0,0,0,0,0,'HARD',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(149,'Activity','leave period',100,1,NULL,9,0,0,0,0,0,0,'LEAVESYST',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(150,'Manager','Administrative',100,0,NULL,9,0,0,0,0,0,0,'LEAVESYST',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0),(151,'Manager','Hierarchical',101,0,NULL,9,0,0,0,0,0,0,'LEAVESYST',NULL,NULL,0,0,NULL,0,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urgency`
--

DROP TABLE IF EXISTS `urgency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urgency` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `value` int(3) unsigned DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urgency`
--

LOCK TABLES `urgency` WRITE;
/*!40000 ALTER TABLE `urgency` DISABLE KEYS */;
INSERT INTO `urgency` VALUES (1,'Blocking',4,'#ff0000',30,0),(2,'Urgent',2,'#ffd700',20,0),(3,'Not urgent',1,'#32cd32',10,0);
/*!40000 ALTER TABLE `urgency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProduct` int(12) unsigned DEFAULT NULL,
  `idContact` int(12) unsigned DEFAULT NULL,
  `idResource` int(12) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `initialEisDate` date DEFAULT NULL,
  `plannedEisDate` date DEFAULT NULL,
  `realEisDate` date DEFAULT NULL,
  `initialEndDate` date DEFAULT NULL,
  `plannedEndDate` date DEFAULT NULL,
  `realEndDate` date DEFAULT NULL,
  `isEis` int(1) unsigned DEFAULT 0,
  `scope` varchar(100) DEFAULT NULL,
  `versionNumber` varchar(100) DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idVersionType` int(12) unsigned DEFAULT NULL,
  `isStarted` int(1) unsigned DEFAULT 0,
  `realStartDate` date DEFAULT NULL,
  `plannedStartDate` date DEFAULT NULL,
  `initialStartDate` date DEFAULT NULL,
  `isDelivered` int(1) unsigned DEFAULT 0,
  `realDeliveryDate` date DEFAULT NULL,
  `plannedDeliveryDate` date DEFAULT NULL,
  `initialDeliveryDate` date DEFAULT NULL,
  `idStatus` int(12) unsigned DEFAULT NULL,
  `idMilestone` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `versionProduct` (`idProduct`),
  KEY `versionContact` (`idContact`),
  KEY `versionResource` (`idResource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versioncompatibility`
--

DROP TABLE IF EXISTS `versioncompatibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versioncompatibility` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idVersionA` int(12) unsigned DEFAULT NULL,
  `idVersionB` int(12) unsigned DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idle` int(1) DEFAULT 0,
  `comment` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versioncompatibility`
--

LOCK TABLES `versioncompatibility` WRITE;
/*!40000 ALTER TABLE `versioncompatibility` DISABLE KEYS */;
/*!40000 ALTER TABLE `versioncompatibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versioncontext`
--

DROP TABLE IF EXISTS `versioncontext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versioncontext` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idVersion` int(12) unsigned DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `idContext` int(12) unsigned NOT NULL,
  `creationDate` date NOT NULL,
  `idUser` int(12) unsigned NOT NULL,
  `idle` int(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versioncontext`
--

LOCK TABLES `versioncontext` WRITE;
/*!40000 ALTER TABLE `versioncontext` DISABLE KEYS */;
/*!40000 ALTER TABLE `versioncontext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versionlanguage`
--

DROP TABLE IF EXISTS `versionlanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versionlanguage` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idVersion` int(12) unsigned DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `idLanguage` int(12) unsigned NOT NULL,
  `creationDate` date NOT NULL,
  `idUser` int(12) unsigned NOT NULL,
  `idle` int(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versionlanguage`
--

LOCK TABLES `versionlanguage` WRITE;
/*!40000 ALTER TABLE `versionlanguage` DISABLE KEYS */;
/*!40000 ALTER TABLE `versionlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versionproject`
--

DROP TABLE IF EXISTS `versionproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versionproject` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idProject` int(12) unsigned DEFAULT NULL,
  `idVersion` int(12) unsigned DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `versionprojectProject` (`idProject`),
  KEY `versionprojectVersion` (`idVersion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versionproject`
--

LOCK TABLES `versionproject` WRITE;
/*!40000 ALTER TABLE `versionproject` DISABLE KEYS */;
/*!40000 ALTER TABLE `versionproject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visibilityscope`
--

DROP TABLE IF EXISTS `visibilityscope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visibilityscope` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `accessCode` varchar(3) DEFAULT NULL,
  `sortOrder` int(3) unsigned DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visibilityscope`
--

LOCK TABLES `visibilityscope` WRITE;
/*!40000 ALTER TABLE `visibilityscope` DISABLE KEYS */;
INSERT INTO `visibilityscope` VALUES (1,'visibilityScopeNo','NO',100,0),(2,'visibilityScopeValid','VAL',200,0),(4,'visibilityScopeAll','ALL',400,0);
/*!40000 ALTER TABLE `visibilityscope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idResource` int(12) unsigned NOT NULL,
  `idProject` int(12) unsigned NOT NULL,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned NOT NULL,
  `idAssignment` int(12) unsigned DEFAULT NULL,
  `work` decimal(8,5) unsigned DEFAULT NULL,
  `workDate` date DEFAULT NULL,
  `day` varchar(8) DEFAULT NULL,
  `week` varchar(6) DEFAULT NULL,
  `month` varchar(6) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `dailyCost` decimal(11,2) unsigned DEFAULT NULL,
  `cost` decimal(11,2) DEFAULT NULL,
  `idBill` int(12) unsigned DEFAULT NULL,
  `idWorkElement` int(12) unsigned DEFAULT NULL,
  `idLeave` int(12) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `workReference` (`idAssignment`,`workDate`,`idWorkElement`),
  KEY `workDay` (`day`),
  KEY `workWeek` (`week`),
  KEY `workMonth` (`month`),
  KEY `workYear` (`year`),
  KEY `workRef` (`refType`,`refId`),
  KEY `workResource` (`idResource`),
  KEY `workAssignment` (`idAssignment`),
  KEY `workBill` (`idBill`),
  KEY `workWorkelement` (`idWorkElement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
/*!40000 ALTER TABLE `work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workelement`
--

DROP TABLE IF EXISTS `workelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workelement` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `refType` varchar(100) DEFAULT NULL,
  `refId` int(12) unsigned DEFAULT NULL,
  `refName` varchar(100) DEFAULT NULL,
  `plannedWork` decimal(9,5) unsigned DEFAULT 0.00000,
  `realWork` decimal(9,5) unsigned DEFAULT 0.00000,
  `leftWork` decimal(9,5) unsigned DEFAULT 0.00000,
  `done` int(1) unsigned DEFAULT 0,
  `idle` int(1) unsigned DEFAULT 0,
  `ongoing` int(1) unsigned DEFAULT 0,
  `ongoingStartDateTime` datetime DEFAULT NULL,
  `idUser` int(12) unsigned DEFAULT NULL,
  `idActivity` int(12) unsigned DEFAULT NULL,
  `idProject` int(12) unsigned DEFAULT NULL,
  `realCost` decimal(11,2) DEFAULT NULL,
  `leftCost` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `workelementReference` (`refType`,`refId`),
  KEY `workelementUser` (`idUser`),
  KEY `workelementActivity` (`idActivity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workelement`
--

LOCK TABLES `workelement` WRITE;
/*!40000 ALTER TABLE `workelement` DISABLE KEYS */;
/*!40000 ALTER TABLE `workelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow`
--

DROP TABLE IF EXISTS `workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  `workflowUpdate` varchar(100) DEFAULT NULL,
  `sortOrder` int(3) DEFAULT NULL,
  `isLeaveWorkflow` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow`
--

LOCK TABLES `workflow` WRITE;
/*!40000 ALTER TABLE `workflow` DISABLE KEYS */;
INSERT INTO `workflow` VALUES (1,'Default','Default workflow with just logic constraints.\nAnyone can change status.',0,'[     ]',NULL,0),(2,'Simple','Simple workflow with limited status.\nAnyone can change status.',0,'[      ]',NULL,0),(3,'External validation','Elaborated workflow with internal team treatment and external validation.',0,'[      ]',NULL,0),(4,'External acceptation & validation','Elaborated workflow with external acceptation, internal team treatment and external validation.',0,'[     ]',NULL,0),(5,'Simple with validation','Simple workflow with limited status, including validation.\nAnyone can change status.',0,'[     ]',NULL,0),(6,'Validation','Short workflow with only validation or cancel possibility.\nRestricted validation rights.',0,'[      ]',NULL,0),(7,'Simple with preparation','Simple workflow with limited status, including preparation.\nAnyone can change status.',0,'[     ]',NULL,0),(8,'Simple with Project Leader validation','Simple workflow with limited status, including Project Leader validation.\nAnyone can change status, except validation : only Project Leader.',0,'[     ]',NULL,0),(9,'For leaves',NULL,0,NULL,999,1);
/*!40000 ALTER TABLE `workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowprofile`
--

DROP TABLE IF EXISTS `workflowprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowprofile` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idWorkflow` int(12) unsigned DEFAULT NULL,
  `idProfile` int(12) unsigned DEFAULT NULL,
  `checked` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowprofile`
--

LOCK TABLES `workflowprofile` WRITE;
/*!40000 ALTER TABLE `workflowprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowstatus`
--

DROP TABLE IF EXISTS `workflowstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowstatus` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idWorkflow` int(12) unsigned NOT NULL,
  `idStatusFrom` int(12) unsigned NOT NULL,
  `idStatusTo` int(12) unsigned NOT NULL,
  `idProfile` int(12) unsigned NOT NULL,
  `allowed` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `workflowstatusProfile` (`idProfile`),
  KEY `workflowstatusWorkflow` (`idWorkflow`),
  KEY `workflowstatusStatusFrom` (`idStatusFrom`),
  KEY `workflowstatusStatusTo` (`idStatusTo`)
) ENGINE=InnoDB AUTO_INCREMENT=676 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowstatus`
--

LOCK TABLES `workflowstatus` WRITE;
/*!40000 ALTER TABLE `workflowstatus` DISABLE KEYS */;
INSERT INTO `workflowstatus` VALUES (1,0,1,8,1,1),(2,0,1,8,2,1),(3,0,1,8,3,1),(4,3,1,2,4,1),(5,1,1,11,3,1),(6,1,1,11,4,1),(7,1,1,11,6,1),(8,1,1,11,7,1),(9,1,1,11,5,1),(10,1,1,10,1,1),(11,1,1,10,2,1),(12,1,1,10,3,1),(13,1,1,10,4,1),(14,1,1,10,6,1),(15,1,1,10,7,1),(16,1,1,10,5,1),(17,1,1,11,1,1),(18,1,1,11,2,1),(19,1,2,10,1,1),(20,1,2,3,1,1),(21,1,2,3,2,1),(22,1,2,3,3,1),(23,1,2,3,4,1),(24,1,2,3,6,1),(25,1,2,3,7,1),(26,1,2,3,5,1),(27,2,1,10,1,1),(28,2,1,10,2,1),(29,2,1,10,3,1),(30,2,1,10,4,1),(31,2,1,10,6,1),(32,2,1,10,7,1),(33,2,1,10,5,1),(34,1,1,3,1,1),(35,1,1,3,4,1),(36,1,1,4,3,1),(37,1,1,2,3,1),(38,1,1,2,7,1),(39,1,1,4,2,1),(40,1,1,3,2,1),(41,1,1,3,7,1),(42,1,1,3,3,1),(43,1,1,4,4,1),(44,1,1,4,1,1),(45,1,1,4,7,1),(46,3,1,10,3,1),(47,3,1,10,4,1),(48,3,1,3,3,1),(49,3,1,3,4,1),(71,1,4,5,2,1),(72,1,4,5,3,1),(73,1,4,5,4,1),(74,1,4,5,6,1),(75,1,4,5,7,1),(76,1,4,5,5,1),(77,1,1,2,1,1),(78,1,1,2,2,1),(79,1,1,2,4,1),(80,1,1,2,6,1),(81,1,1,2,5,1),(82,1,1,3,6,1),(83,1,1,3,5,1),(84,1,1,4,6,1),(85,1,1,4,5,1),(86,1,1,9,1,1),(87,1,1,9,2,1),(88,1,1,9,3,1),(89,1,1,9,4,1),(90,1,1,9,6,1),(91,1,1,9,7,1),(92,1,1,9,5,1),(93,1,2,11,1,1),(94,1,2,11,2,1),(95,1,2,11,3,1),(96,1,2,11,4,1),(97,1,2,11,6,1),(98,1,2,11,7,1),(99,1,2,11,5,1),(100,1,2,10,2,1),(101,1,2,10,3,1),(102,1,2,10,4,1),(103,1,2,10,6,1),(104,1,2,10,7,1),(105,1,2,10,5,1),(106,1,2,4,1,1),(107,1,2,4,2,1),(108,1,2,4,3,1),(109,1,2,4,4,1),(110,1,2,4,6,1),(111,1,2,4,7,1),(112,1,2,4,5,1),(113,1,2,9,1,1),(114,1,2,9,2,1),(115,1,2,9,3,1),(116,1,2,9,4,1),(117,1,2,9,6,1),(118,1,2,9,7,1),(119,1,2,9,5,1),(120,1,11,10,1,1),(121,1,11,10,2,1),(122,1,11,10,3,1),(123,1,11,10,4,1),(124,1,11,10,6,1),(125,1,11,10,7,1),(126,1,11,10,5,1),(127,1,11,3,1,1),(128,1,11,3,2,1),(129,1,11,3,3,1),(130,1,11,3,4,1),(131,1,11,3,6,1),(132,1,11,3,7,1),(133,1,11,3,5,1),(134,1,11,4,1,1),(135,1,11,4,2,1),(136,1,11,4,3,1),(137,1,11,4,4,1),(138,1,11,4,6,1),(139,1,11,4,7,1),(140,1,11,4,5,1),(141,1,11,9,1,1),(142,1,11,9,2,1),(143,1,11,9,3,1),(144,1,11,9,4,1),(145,1,11,9,6,1),(146,1,11,9,7,1),(147,1,11,9,5,1),(148,1,8,10,1,1),(149,1,8,10,2,1),(150,1,8,10,3,1),(151,1,8,10,4,1),(152,1,8,10,6,1),(153,1,8,10,7,1),(154,1,8,10,5,1),(155,1,8,3,1,1),(156,1,8,3,2,1),(157,1,8,3,3,1),(158,1,8,3,4,1),(159,1,8,3,6,1),(160,1,8,3,7,1),(161,1,8,3,5,1),(162,1,8,4,1,1),(163,1,8,4,2,1),(164,1,8,4,3,1),(165,1,8,4,4,1),(166,1,8,4,6,1),(167,1,8,4,7,1),(168,1,8,4,5,1),(169,1,8,5,1,1),(170,1,8,5,2,1),(171,1,8,5,3,1),(172,1,8,5,4,1),(173,1,8,5,6,1),(174,1,8,5,7,1),(175,1,8,5,5,1),(176,1,8,6,1,1),(177,1,8,6,2,1),(178,1,8,6,3,1),(179,1,8,6,4,1),(180,1,8,6,6,1),(181,1,8,6,7,1),(182,1,8,6,5,1),(183,1,8,12,1,1),(184,1,8,12,2,1),(185,1,8,12,3,1),(186,1,8,12,4,1),(187,1,8,12,6,1),(188,1,8,12,7,1),(189,1,8,12,5,1),(190,1,8,7,1,1),(191,1,8,7,2,1),(192,1,8,7,3,1),(193,1,8,7,4,1),(194,1,8,7,6,1),(195,1,8,7,7,1),(196,1,8,7,5,1),(197,1,8,9,1,1),(198,1,8,9,2,1),(199,1,8,9,3,1),(200,1,8,9,4,1),(201,1,8,9,6,1),(202,1,8,9,7,1),(203,1,8,9,5,1),(204,1,10,3,1,1),(205,1,10,3,2,1),(206,1,10,3,3,1),(207,1,10,3,4,1),(208,1,10,3,6,1),(209,1,10,3,7,1),(210,1,10,3,5,1),(211,1,10,4,1,1),(212,1,10,4,2,1),(213,1,10,4,3,1),(214,1,10,4,4,1),(215,1,10,4,6,1),(216,1,10,4,7,1),(217,1,10,4,5,1),(218,1,10,9,1,1),(219,1,10,9,2,1),(220,1,10,9,3,1),(221,1,10,9,4,1),(222,1,10,9,6,1),(223,1,10,9,7,1),(224,1,10,9,5,1),(225,1,3,4,1,1),(226,1,3,4,2,1),(227,1,3,4,3,1),(228,1,3,4,4,1),(229,1,3,4,6,1),(230,1,3,4,7,1),(231,1,3,4,5,1),(232,1,3,9,1,1),(233,1,3,9,2,1),(234,1,3,9,3,1),(235,1,3,9,4,1),(236,1,3,9,6,1),(237,1,3,9,7,1),(238,1,3,9,5,1),(239,1,4,8,1,1),(240,1,4,8,2,1),(241,1,4,8,3,1),(242,1,4,8,4,1),(243,1,4,8,6,1),(244,1,4,8,7,1),(245,1,4,8,5,1),(246,1,4,5,1,1),(247,1,4,6,1,1),(248,1,4,6,2,1),(249,1,4,6,3,1),(250,1,4,6,4,1),(251,1,4,6,6,1),(252,1,4,6,7,1),(253,1,4,6,5,1),(254,1,4,12,1,1),(255,1,4,12,2,1),(256,1,4,12,3,1),(257,1,4,12,4,1),(258,1,4,12,6,1),(259,1,4,12,7,1),(260,1,4,12,5,1),(261,1,4,7,1,1),(262,1,4,7,2,1),(263,1,4,7,3,1),(264,1,4,7,4,1),(265,1,4,7,6,1),(266,1,4,7,7,1),(267,1,4,7,5,1),(268,1,5,8,1,1),(269,1,5,8,2,1),(270,1,5,8,3,1),(271,1,5,8,4,1),(272,1,5,8,6,1),(273,1,5,8,7,1),(274,1,5,8,5,1),(275,1,5,6,1,1),(276,1,5,6,2,1),(277,1,5,6,3,1),(278,1,5,6,4,1),(279,1,5,6,6,1),(280,1,5,6,7,1),(281,1,5,6,5,1),(282,1,5,12,1,1),(283,1,5,12,2,1),(284,1,5,12,3,1),(285,1,5,12,4,1),(286,1,5,12,6,1),(287,1,5,12,7,1),(288,1,5,12,5,1),(289,1,5,7,1,1),(290,1,5,7,2,1),(291,1,5,7,3,1),(292,1,5,7,4,1),(293,1,5,7,6,1),(294,1,5,7,7,1),(295,1,5,7,5,1),(296,1,6,8,1,1),(297,1,6,8,2,1),(298,1,6,8,3,1),(299,1,6,8,4,1),(300,1,6,8,6,1),(301,1,6,8,7,1),(302,1,6,8,5,1),(303,1,6,12,1,1),(304,1,6,12,2,1),(305,1,6,12,3,1),(306,1,6,12,4,1),(307,1,6,12,6,1),(308,1,6,12,7,1),(309,1,6,12,5,1),(310,1,6,7,1,1),(311,1,6,7,2,1),(312,1,6,7,3,1),(313,1,6,7,4,1),(314,1,6,7,6,1),(315,1,6,7,7,1),(316,1,6,7,5,1),(317,1,12,8,1,1),(318,1,12,8,2,1),(319,1,12,8,3,1),(320,1,12,8,4,1),(321,1,12,8,6,1),(322,1,12,8,7,1),(323,1,12,8,5,1),(324,1,12,7,1,1),(325,1,12,7,2,1),(326,1,12,7,3,1),(327,1,12,7,4,1),(328,1,12,7,6,1),(329,1,12,7,7,1),(330,1,12,7,5,1),(331,1,7,8,1,1),(332,1,7,8,2,1),(333,1,7,8,3,1),(334,1,7,8,4,1),(335,1,7,8,6,1),(336,1,7,8,7,1),(337,1,7,8,5,1),(338,1,9,8,1,1),(339,1,9,8,2,1),(340,1,9,8,3,1),(341,1,9,8,4,1),(342,1,9,8,6,1),(343,1,9,8,7,1),(344,1,9,8,5,1),(345,2,1,9,1,1),(346,2,1,9,2,1),(347,2,1,9,3,1),(348,2,1,9,4,1),(349,2,1,9,6,1),(350,2,1,9,7,1),(351,2,1,9,5,1),(352,2,8,10,1,1),(353,2,8,10,2,1),(354,2,8,10,3,1),(355,2,8,10,4,1),(356,2,8,10,6,1),(357,2,8,10,7,1),(358,2,8,10,5,1),(359,2,8,9,1,1),(360,2,8,9,2,1),(361,2,8,9,3,1),(362,2,8,9,4,1),(363,2,8,9,6,1),(364,2,8,9,7,1),(365,2,8,9,5,1),(366,2,10,3,1,1),(367,2,10,3,2,1),(368,2,10,3,3,1),(369,2,10,3,4,1),(370,2,10,3,6,1),(371,2,10,3,7,1),(372,2,10,3,5,1),(373,2,10,9,1,1),(374,2,10,9,2,1),(375,2,10,9,3,1),(376,2,10,9,4,1),(377,2,10,9,6,1),(378,2,10,9,7,1),(379,2,10,9,5,1),(380,2,3,4,1,1),(381,2,3,4,2,1),(382,2,3,4,3,1),(383,2,3,4,4,1),(384,2,3,4,6,1),(385,2,3,4,7,1),(386,2,3,4,5,1),(387,2,3,9,1,1),(388,2,3,9,2,1),(389,2,3,9,3,1),(390,2,3,9,4,1),(391,2,3,9,6,1),(392,2,3,9,7,1),(393,2,3,9,5,1),(394,2,4,8,1,1),(395,2,4,8,2,1),(396,2,4,8,3,1),(397,2,4,8,4,1),(398,2,4,8,6,1),(399,2,4,8,7,1),(400,2,4,8,5,1),(401,2,4,7,1,1),(402,2,4,7,2,1),(403,2,4,7,3,1),(404,2,4,7,4,1),(405,2,4,7,6,1),(406,2,4,7,7,1),(407,2,4,7,5,1),(408,2,7,8,1,1),(409,2,7,8,2,1),(410,2,7,8,3,1),(411,2,7,8,4,1),(412,2,7,8,6,1),(413,2,7,8,7,1),(414,2,7,8,5,1),(415,2,9,8,1,1),(416,2,9,8,2,1),(417,2,9,8,3,1),(418,2,9,8,4,1),(419,2,9,8,6,1),(420,2,9,8,7,1),(421,2,9,8,5,1),(422,3,1,2,3,1),(423,3,1,9,3,1),(424,3,1,9,4,1),(425,3,2,10,3,1),(426,3,2,10,4,1),(427,3,2,3,3,1),(428,3,2,3,4,1),(429,3,2,9,3,1),(430,3,2,9,4,1),(431,3,8,10,3,1),(432,3,8,10,4,1),(433,3,8,3,3,1),(434,3,8,3,4,1),(435,3,8,9,3,1),(436,3,8,9,4,1),(437,3,10,3,3,1),(438,3,10,3,4,1),(439,3,10,9,3,1),(440,3,10,9,4,1),(441,3,3,4,3,1),(442,3,3,4,4,1),(443,3,3,9,3,1),(444,3,3,9,4,1),(445,3,4,3,3,1),(446,3,4,3,4,1),(447,3,4,5,3,1),(448,3,4,5,4,1),(449,3,4,6,3,1),(450,3,5,6,3,1),(451,3,6,8,6,1),(452,3,6,8,7,1),(453,3,6,12,6,1),(454,3,6,12,7,1),(455,3,12,7,3,1),(456,3,12,7,4,1),(457,3,12,7,6,1),(458,3,12,7,7,1),(459,3,7,8,3,1),(460,3,7,8,4,1),(461,3,7,8,6,1),(462,3,7,8,7,1),(463,3,9,8,3,1),(464,3,9,8,4,1),(465,3,9,8,6,1),(466,3,9,8,7,1),(467,4,1,2,3,1),(468,4,1,2,4,1),(469,4,2,11,6,1),(470,4,2,11,7,1),(471,4,2,9,6,1),(472,4,2,9,7,1),(473,4,11,10,3,1),(474,4,11,10,4,1),(475,4,11,3,3,1),(476,4,11,3,4,1),(477,4,8,10,3,1),(478,4,8,10,4,1),(479,4,8,3,3,1),(480,4,8,3,4,1),(481,4,10,3,3,1),(482,4,10,3,4,1),(483,4,3,4,3,1),(484,4,3,4,4,1),(485,4,11,2,3,1),(486,4,4,5,3,1),(487,4,4,5,4,1),(488,4,5,6,3,1),(489,4,4,10,3,1),(490,4,4,10,4,1),(491,4,4,3,3,1),(492,4,4,3,4,1),(493,4,6,8,6,1),(494,4,6,8,7,1),(495,4,6,12,6,1),(496,4,6,12,7,1),(497,4,12,7,3,1),(498,4,12,7,4,1),(499,4,12,7,6,1),(500,4,12,7,7,1),(501,4,7,8,3,1),(502,4,7,8,6,1),(503,4,9,8,6,1),(504,5,1,10,1,1),(505,5,1,10,2,1),(506,5,1,10,3,1),(507,5,1,10,4,1),(508,5,1,10,6,1),(509,5,1,10,7,1),(510,5,1,10,5,1),(511,5,1,9,1,1),(512,5,1,9,2,1),(513,5,1,9,3,1),(514,5,1,9,4,1),(515,5,1,9,6,1),(516,5,1,9,7,1),(517,5,1,9,5,1),(518,5,8,10,1,1),(519,5,8,10,2,1),(520,5,8,10,3,1),(521,5,8,10,4,1),(522,5,8,10,6,1),(523,5,8,10,7,1),(524,5,8,10,5,1),(525,5,8,9,1,1),(526,5,8,9,2,1),(527,5,8,9,3,1),(528,5,8,9,4,1),(529,5,8,9,6,1),(530,5,8,9,7,1),(531,5,8,9,5,1),(532,5,10,3,1,1),(533,5,10,3,2,1),(534,5,10,3,3,1),(535,5,10,3,4,1),(536,5,10,3,6,1),(537,5,10,3,7,1),(538,5,10,3,5,1),(539,5,10,9,1,1),(540,5,10,9,2,1),(541,5,10,9,3,1),(542,5,10,9,4,1),(543,5,10,9,6,1),(544,5,10,9,7,1),(545,5,10,9,5,1),(546,5,3,4,1,1),(547,5,3,4,2,1),(548,5,3,4,3,1),(549,5,3,4,4,1),(550,5,3,4,6,1),(551,5,3,4,7,1),(552,5,3,4,5,1),(553,5,3,9,1,1),(554,5,3,9,2,1),(555,5,3,9,3,1),(556,5,3,9,4,1),(557,5,3,9,6,1),(558,5,3,9,7,1),(559,5,3,9,5,1),(560,5,4,8,1,1),(561,5,4,8,2,1),(562,5,4,8,3,1),(563,5,4,8,4,1),(564,5,4,8,6,1),(565,5,4,8,7,1),(566,5,4,8,5,1),(567,5,4,12,1,1),(568,5,4,12,2,1),(569,5,4,12,3,1),(570,5,4,12,4,1),(571,5,4,12,6,1),(572,5,4,12,7,1),(573,5,4,12,5,1),(574,5,12,8,1,1),(575,5,12,8,2,1),(576,5,12,8,3,1),(577,5,12,8,4,1),(578,5,12,8,6,1),(579,5,12,8,7,1),(580,5,12,8,5,1),(581,5,12,7,1,1),(582,5,12,7,2,1),(583,5,12,7,3,1),(584,5,12,7,4,1),(585,5,12,7,6,1),(586,5,12,7,7,1),(587,5,12,7,5,1),(588,5,7,8,1,1),(589,5,7,8,2,1),(590,5,7,8,3,1),(591,5,7,8,4,1),(592,5,7,8,6,1),(593,5,7,8,7,1),(594,5,7,8,5,1),(595,5,9,8,1,1),(596,5,9,8,2,1),(597,5,9,8,3,1),(598,5,9,8,4,1),(599,5,9,8,6,1),(600,5,9,8,7,1),(601,5,9,8,5,1),(602,7,1,13,1,1),(603,7,1,13,2,1),(604,7,1,13,3,1),(605,7,1,13,4,1),(606,7,1,13,6,1),(607,7,1,13,7,1),(608,7,1,13,5,1),(609,7,1,9,1,1),(610,7,1,9,2,1),(611,7,1,9,3,1),(612,7,1,9,4,1),(613,7,1,9,6,1),(614,7,1,9,7,1),(615,7,1,9,5,1),(616,7,13,9,1,1),(617,7,13,9,2,1),(618,7,13,9,3,1),(619,7,13,9,4,1),(620,7,13,9,6,1),(621,7,13,9,7,1),(622,7,13,9,5,1),(623,7,13,4,1,1),(624,7,13,4,2,1),(625,7,13,4,3,1),(626,7,13,4,4,1),(627,7,13,4,6,1),(628,7,13,4,7,1),(629,7,13,4,5,1),(630,7,4,6,1,1),(631,7,4,6,2,1),(632,7,4,6,3,1),(633,7,4,6,4,1),(634,7,4,6,6,1),(635,7,4,6,7,1),(636,7,4,6,5,1),(637,7,6,12,1,1),(638,7,6,12,2,1),(639,7,6,12,3,1),(640,7,6,12,6,1),(641,7,6,12,6,1),(642,7,6,12,7,1),(643,7,6,12,5,1),(644,6,1,12,1,1),(645,6,1,12,3,1),(646,6,1,9,1,1),(647,6,1,9,3,1),(648,8,1,3,1,1),(649,8,1,3,2,1),(650,8,1,3,3,1),(651,8,1,3,4,1),(652,8,1,3,6,1),(653,8,1,3,7,1),(654,8,1,3,5,1),(655,8,3,4,1,1),(656,8,3,4,2,1),(657,8,3,4,3,1),(658,8,3,4,4,1),(659,8,3,4,6,1),(660,8,3,4,7,1),(661,8,3,4,5,1),(662,8,4,3,3,1),(663,8,4,12,3,1),(664,8,12,7,3,1),(665,9,1,15,1,1),(666,9,15,16,1,1),(667,9,15,17,1,1),(668,9,1,15,2,1),(669,9,1,15,3,1),(670,9,15,16,3,1),(671,9,15,17,3,1),(672,9,1,15,4,1),(673,9,1,15,6,1),(674,9,1,15,7,1),(675,9,1,15,5,1);
/*!40000 ALTER TABLE `workflowstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workperiod`
--

DROP TABLE IF EXISTS `workperiod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workperiod` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `idResource` int(12) unsigned DEFAULT NULL,
  `periodRange` varchar(10) DEFAULT NULL,
  `periodValue` varchar(10) DEFAULT NULL,
  `submitted` int(1) unsigned DEFAULT 0,
  `submittedDate` datetime DEFAULT NULL,
  `validated` int(1) unsigned DEFAULT 0,
  `validatedDate` datetime DEFAULT NULL,
  `idLocker` int(12) unsigned DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `idle` int(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `workperiodResource` (`idResource`),
  KEY `workperiodPeriod` (`periodRange`,`periodValue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workperiod`
--

LOCK TABLES `workperiod` WRITE;
/*!40000 ALTER TABLE `workperiod` DISABLE KEYS */;
/*!40000 ALTER TABLE `workperiod` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-14  9:47:02
