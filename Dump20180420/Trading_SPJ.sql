-- MySQL dump 10.16  Distrib 10.1.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Trading
-- ------------------------------------------------------
-- Server version	10.1.29-MariaDB-6

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
-- Table structure for table `SPJ`
--

DROP TABLE IF EXISTS `SPJ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SPJ` (
  `П` char(5) NOT NULL,
  `Д` char(5) NOT NULL,
  `J` char(5) NOT NULL,
  `КОЛИЧЕСТВО` int(11) DEFAULT NULL,
  PRIMARY KEY (`П`,`Д`,`J`),
  KEY `Д` (`Д`),
  KEY `J` (`J`),
  CONSTRAINT `SPJ_ibfk_1` FOREIGN KEY (`П`) REFERENCES `S` (`П`),
  CONSTRAINT `SPJ_ibfk_2` FOREIGN KEY (`Д`) REFERENCES `P` (`Д`),
  CONSTRAINT `SPJ_ibfk_3` FOREIGN KEY (`J`) REFERENCES `J` (`J`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPJ`
--

LOCK TABLES `SPJ` WRITE;
/*!40000 ALTER TABLE `SPJ` DISABLE KEYS */;
INSERT INTO `SPJ` VALUES ('S1','P1','J1',200),('S1','P1','J4',100),('S2','P3','J1',400),('S2','P3','J2',200),('S2','P3','J4',500),('S2','P3','J5',600),('S2','P3','J6',400),('S2','P3','J7',800),('S2','P5','J2',100),('S3','P3','J1',200),('S3','P4','J2',500),('S4','P4','J3',300),('S4','P6','J7',300),('S5','P1','J4',100),('S5','P2','J2',200),('S5','P2','J4',100),('S5','P3','J4',200),('S5','P4','J4',800),('S5','P5','J4',400),('S5','P5','J5',500),('S5','P5','J7',100),('S5','P6','J2',200),('S5','P6','J4',500);
/*!40000 ALTER TABLE `SPJ` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-20 10:16:50
