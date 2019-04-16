-- MySQL dump 10.13  Distrib 5.1.61, for Win32 (ia32)
--
-- Host: localhost    Database: evoting
-- ------------------------------------------------------
-- Server version	5.1.61-community

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
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidate` (
  `society_id` int(11) DEFAULT NULL,
  `regis` enum('yes','no') DEFAULT NULL,
  `member_name` varchar(20) DEFAULT NULL,
  `symbol` varchar(20) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  KEY `society_id` (`society_id`),
  CONSTRAINT `candidate_ibfk_1` FOREIGN KEY (`society_id`) REFERENCES `society` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_user`
--

DROP TABLE IF EXISTS `member_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_user` (
  `society_id` int(11) DEFAULT NULL,
  `regis` enum('yes','no') DEFAULT NULL,
  `member_name` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  KEY `society_id` (`society_id`),
  CONSTRAINT `member_user_ibfk_1` FOREIGN KEY (`society_id`) REFERENCES `society` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_user`
--

LOCK TABLES `member_user` WRITE;
/*!40000 ALTER TABLE `member_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `society`
--

DROP TABLE IF EXISTS `society`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `society` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `no_of_member` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `society`
--

LOCK TABLES `society` WRITE;
/*!40000 ALTER TABLE `society` DISABLE KEYS */;
/*!40000 ALTER TABLE `society` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-05 12:25:18
