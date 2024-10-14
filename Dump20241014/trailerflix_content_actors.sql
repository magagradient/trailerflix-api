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
-- Table structure for table `content_actors`
--

DROP TABLE IF EXISTS `content_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_actors` (
  `id_content` int NOT NULL,
  `id_actor` int NOT NULL,
  PRIMARY KEY (`id_content`,`id_actor`),
  KEY `id_actor` (`id_actor`),
  CONSTRAINT `content_actors_ibfk_1` FOREIGN KEY (`id_content`) REFERENCES `contents` (`idContent`) ON DELETE CASCADE,
  CONSTRAINT `content_actors_ibfk_2` FOREIGN KEY (`id_actor`) REFERENCES `actors` (`idActor`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_actors`
--

LOCK TABLES `content_actors` WRITE;
/*!40000 ALTER TABLE `content_actors` DISABLE KEYS */;
INSERT INTO `content_actors` VALUES (1,1),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(5,13),(5,14),(5,15),(5,16),(5,17),(5,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(1,25),(1,26),(1,27),(1,28),(1,29),(6,31),(6,32),(6,33),(6,34),(6,35),(7,36),(7,37),(7,38),(7,39),(7,40),(7,41),(9,42),(9,43),(9,44),(9,45),(9,46),(9,47),(10,48),(10,49),(10,50),(10,51),(10,52),(10,53),(11,54),(11,55),(11,56),(11,57),(11,58),(11,59),(11,60),(12,61),(12,62),(12,63),(12,64),(12,65),(12,66),(13,67);
/*!40000 ALTER TABLE `content_actors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-14 14:39:03
