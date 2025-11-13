-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: ponencias_pair
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `ponencias_ponentes`
--

DROP TABLE IF EXISTS `ponencias_ponentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ponencias_ponentes` (
  `PONENCIAS_idponencia` int NOT NULL,
  `PONENCIAS_SESIONES_idsesiones` int NOT NULL,
  `PONENCIAS_SESIONES_CONFERENCIAS_idconferencias` int NOT NULL,
  `PONENTES_idponentes` int NOT NULL,
  PRIMARY KEY (`PONENCIAS_idponencia`,`PONENCIAS_SESIONES_idsesiones`,`PONENCIAS_SESIONES_CONFERENCIAS_idconferencias`,`PONENTES_idponentes`),
  KEY `fk_PONENCIAS_has_PONENTES_PONENTES1_idx` (`PONENTES_idponentes`),
  KEY `fk_PONENCIAS_has_PONENTES_PONENCIAS1_idx` (`PONENCIAS_idponencia`,`PONENCIAS_SESIONES_idsesiones`,`PONENCIAS_SESIONES_CONFERENCIAS_idconferencias`),
  CONSTRAINT `fk_PONENCIAS_has_PONENTES_PONENCIAS1` FOREIGN KEY (`PONENCIAS_idponencia`, `PONENCIAS_SESIONES_idsesiones`, `PONENCIAS_SESIONES_CONFERENCIAS_idconferencias`) REFERENCES `ponencias` (`idponencia`, `SESIONES_idsesiones`, `SESIONES_CONFERENCIAS_idconferencias`),
  CONSTRAINT `fk_PONENCIAS_has_PONENTES_PONENTES1` FOREIGN KEY (`PONENTES_idponentes`) REFERENCES `ponentes` (`idponentes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ponencias_ponentes`
--

LOCK TABLES `ponencias_ponentes` WRITE;
/*!40000 ALTER TABLE `ponencias_ponentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ponencias_ponentes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-13 21:30:58
