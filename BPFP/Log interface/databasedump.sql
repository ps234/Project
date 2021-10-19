-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: hacdata
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
-- Table structure for table `cluster`
--

DROP TABLE IF EXISTS `cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cluster` (
  `cluster_id` varchar(20) NOT NULL,
  `cluster_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cluster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cluster`
--

LOCK TABLES `cluster` WRITE;
/*!40000 ALTER TABLE `cluster` DISABLE KEYS */;
INSERT INTO `cluster` VALUES ('cluster1','ERP');
/*!40000 ALTER TABLE `cluster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration` (
  `resource_id` varchar(16) NOT NULL,
  `resource_name` varchar(30) DEFAULT NULL,
  `HAC_resource_name` varchar(30) DEFAULT NULL,
  `group_group_id` varchar(20) NOT NULL,
  `cluster_cluster_id` varchar(20) NOT NULL,
  `node_node_id` int(11) NOT NULL,
  `resource_type_resource_type` varchar(20) NOT NULL,
  `reinitialization_factor` int(11) DEFAULT NULL,
  `redundancy_factor` int(11) DEFAULT NULL,
  `dependency_type` int(11) DEFAULT NULL,
  `critical_factor` int(11) DEFAULT NULL,
  `dependency_level` int(11) DEFAULT NULL,
  `dependency_depth` int(11) DEFAULT NULL,
  `dependency_levels_up` int(11) DEFAULT NULL,
  `dependency_levels_down` int(11) DEFAULT NULL,
  PRIMARY KEY (`resource_id`),
  KEY `fk_configuration_group_idx` (`group_group_id`),
  KEY `fk_configuration_cluster1_idx` (`cluster_cluster_id`),
  KEY `fk_configuration_node1_idx` (`node_node_id`),
  KEY `fk_configuration_resource_type1_idx` (`resource_type_resource_type`),
  CONSTRAINT `fk_configuration_cluster1` FOREIGN KEY (`cluster_cluster_id`) REFERENCES `cluster` (`cluster_id`),
  CONSTRAINT `fk_configuration_group` FOREIGN KEY (`group_group_id`) REFERENCES `group` (`group_id`),
  CONSTRAINT `fk_configuration_node1` FOREIGN KEY (`node_node_id`) REFERENCES `node` (`node_id`),
  CONSTRAINT `fk_configuration_resource_type1` FOREIGN KEY (`resource_type_resource_type`) REFERENCES `resource_type` (`resource_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
INSERT INTO `configuration` VALUES ('C1G1A1B1','application core','rsc_sap_I40_ASCS80','C1G1A1','cluster1',1,'service',1,2,1,1,2,3,1,1),('C1G1A1B1C1','file system','fs_I40_ASCS','C1G1A1','cluster1',1,'file system',1,2,1,1,3,3,2,0),('C1G1A1B1C2','VIP','nc_I40_ASCS','C1G1A1','cluster1',1,'VIP',1,2,1,1,3,3,2,0),('C1G1A1B1C3','load balancer','vip_I40_ASCS','C1G1A1','cluster1',1,'load balancer',3,1,1,1,3,3,2,0),('C1G2A1B1','database resource','rsc_sap_I40_database','C1G2A1','cluster1',1,'service',1,2,1,1,2,3,1,1),('C1G2A1B1C1','file system','fs_I40_database','C1G2A1','cluster1',1,'file system',1,2,1,1,3,3,2,0),('C1G2A1B1C2','VIP','nc_I40_database','C1G2A1','cluster1',1,'VIP',1,2,1,1,3,3,2,0),('C1G2A1B1C3','load balancer','vip_I40_database','C1G2A1','cluster1',1,'load balancer',3,1,1,1,3,3,2,0),('C1G3A1B1','application','rsc_sap_I40_PAS','C1G3A1','cluster1',1,'service',1,2,1,1,2,3,1,1),('C1G3A1B1C1','file system','fs_I40_PAS','C1G3A1','cluster1',1,'file system',1,2,1,1,3,3,2,0),('C1G3A1B1C2','VIP','nc_I40_PAS','C1G3A1','cluster1',1,'VIP',1,2,1,1,3,3,2,0),('C1G3A1B1C3','load balancer','vip_I40_PAS','C1G3A1','cluster1',1,'load balancer',3,1,1,1,3,3,2,0),('C1G4A1B1','enqueue ','rsc_sap_I40_ERS81','C1G4A1','cluster1',1,'service',1,2,1,1,2,3,1,1),('C1G4A1B1C1','file system','fs_I40_ERS','C1G4A1','cluster1',1,'file system',1,2,1,1,3,3,2,0),('C1G4A1B1C2','VIP','vip_I40_ERS','C1G4A1','cluster1',1,'VIP',1,2,1,1,3,3,2,0),('C1G4A1B1C3','load balancer','nc_I40_ERS','C1G4A1','cluster1',1,'load balancer',3,1,1,1,3,3,2,0);
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group` (
  `group_id` varchar(20) NOT NULL,
  `group_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES ('C1G1A1','grp_sap_I40_ascs'),('C1G2A1','grp_sap_I40_database'),('C1G3A1','grp_sap_I41_pas'),('C1G4A1','grp_sap_I40_ers');
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hac_main`
--

DROP TABLE IF EXISTS `hac_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hac_main` (
  `entry_id` varchar(8) NOT NULL,
  `configuration_resource_id` varchar(16) NOT NULL,
  `resource_name` varchar(30) DEFAULT NULL,
  `HAC_resource_name` varchar(30) DEFAULT NULL,
  `group_id` varchar(20) DEFAULT NULL,
  `cluster_id` varchar(20) DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL,
  `error_message` varchar(100) DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `current_state` varchar(16) DEFAULT NULL,
  `aggeregated_failure_count` int(11) DEFAULT NULL,
  `failure_repetition` int(11) DEFAULT NULL,
  `error_rating` int(11) DEFAULT NULL,
  `dependency_factor` int(11) DEFAULT NULL,
  PRIMARY KEY (`entry_id`),
  KEY `fk_HAC_main_configuration1_idx` (`configuration_resource_id`),
  CONSTRAINT `fk_HAC_main_configuration1` FOREIGN KEY (`configuration_resource_id`) REFERENCES `configuration` (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hac_main`
--

LOCK TABLES `hac_main` WRITE;
/*!40000 ALTER TABLE `hac_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `hac_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node`
--

DROP TABLE IF EXISTS `node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node` (
  `node_id` int(11) NOT NULL,
  `server` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node`
--

LOCK TABLES `node` WRITE;
/*!40000 ALTER TABLE `node` DISABLE KEYS */;
INSERT INTO `node` VALUES (1,'server1'),(2,'server2');
/*!40000 ALTER TABLE `node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_type`
--

DROP TABLE IF EXISTS `resource_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_type` (
  `resource_type` varchar(20) NOT NULL,
  `reinitialization_factor` int(11) DEFAULT NULL,
  PRIMARY KEY (`resource_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_type`
--

LOCK TABLES `resource_type` WRITE;
/*!40000 ALTER TABLE `resource_type` DISABLE KEYS */;
INSERT INTO `resource_type` VALUES ('CPU',3),('disk',3),('file system',1),('heartbeat',3),('host bus adapter',3),('iSCSI ',3),('load balancer',3),('LVM',1),('memory',3),('network interface',3),('NFS',2),('process',2),('quorum',2),('SAN',3),('service',1),('VIP',1);
/*!40000 ALTER TABLE `resource_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-26 12:23:21
