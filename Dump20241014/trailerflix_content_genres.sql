-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: trailerflix
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `content_genres`
--

DROP TABLE IF EXISTS `content_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_genres` (
  `id_content` int NOT NULL,
  `id_genre` int NOT NULL,
  PRIMARY KEY (`id_content`,`id_genre`),
  UNIQUE KEY `id_content` (`id_content`,`id_genre`),
  KEY `id_genre` (`id_genre`),
  CONSTRAINT `content_genres_ibfk_1` FOREIGN KEY (`id_content`) REFERENCES `contents` (`idContent`) ON DELETE CASCADE,
  CONSTRAINT `content_genres_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `genres` (`idGenre`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_genres`
--

LOCK TABLES `content_genres` WRITE;
/*!40000 ALTER TABLE `content_genres` DISABLE KEYS */;
INSERT INTO `content_genres` VALUES (3,1),(4,1),(8,1),(10,1),(14,1),(16,1),(20,1),(22,1),(3,2),(4,2),(9,2),(23,2),(24,2),(1,3),(2,3),(5,3),(7,3),(9,3),(13,3),(17,3),(5,4),(5,5),(15,5),(2,6),(14,6),(7,7),(19,7),(7,8),(18,8),(22,8),(23,8),(6,9),(11,9),(12,9),(21,9),(6,10),(8,10),(9,10),(21,10),(24,10),(8,11),(10,11),(18,11),(19,11),(24,11),(1,12),(13,12),(15,12),(13,13),(16,15),(17,15),(20,16),(23,16);
/*!40000 ALTER TABLE `content_genres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-14 14:39:04
