-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: jatekbolt_db
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jatekok`
--

DROP TABLE IF EXISTS `jatekok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jatekok` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cim` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `mufaj` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `ar` int NOT NULL,
  `ertekeles` decimal(2,1) NOT NULL,
  `raktaron` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jatekok`
--

LOCK TABLES `jatekok` WRITE;
/*!40000 ALTER TABLE `jatekok` DISABLE KEYS */;
INSERT INTO `jatekok` VALUES (1,'The Witcher 3: Wild Hunt','RPG',8990,4.9,1),(2,'Cyberpunk 2077','RPG',14990,4.5,1),(3,'Elden Ring','RPG',19990,4.8,1),(4,'Baldur\'s Gate 3','RPG',21990,5.0,0),(5,'God of War Ragnarök','Akció',22990,4.9,1),(6,'Red Dead Redemption 2','Akció',15990,4.9,1),(7,'Grand Theft Auto V','Akció',7990,4.7,1),(8,'Hollow Knight','Akció',4990,4.8,0),(9,'Civilization VI','Stratégia',9990,4.6,1),(10,'Age of Empires IV','Stratégia',13990,4.4,1),(11,'Cities: Skylines II','Stratégia',17990,3.9,0),(12,'StarCraft II','Stratégia',3990,4.8,1),(13,'EA Sports FC 25','Sport',24990,4.1,1),(14,'F1 24','Sport',18990,4.2,1),(15,'NBA 2K25','Sport',21990,3.8,0);
/*!40000 ALTER TABLE `jatekok` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-17  9:37:50
