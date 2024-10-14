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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors` (
  `idActor` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idActor`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Pedro Pascal'),(2,'Carl Weathers'),(3,'Misty Rosas'),(4,'Chris Bartlett'),(5,'Rio Hackford'),(6,'Giancarlo Esposito'),(7,'Tom Hopper'),(8,'David Castañeda'),(9,'Emmy Raver-Lampman'),(10,'Robert Sheehan'),(11,'Aidan Gallagher'),(12,'Elliot Page'),(13,'Anya Taylor-Joy'),(14,'Thomas Brodie-Sangster'),(15,'Harry Melling'),(16,'Moses Ingram'),(17,'Chloe Pirrie'),(18,'Janina Elkin'),(19,'Lili Reinhart'),(20,'Casey Cott'),(21,'Camila Mendes'),(22,'Marisol Nichols'),(23,'Madelaine Petsch'),(24,'Mädchen Amick'),(25,'Claire Fox'),(26,'Olivia Colman'),(27,'Matt Smith'),(28,'Tobias Menzies'),(29,'Vanessa Kirby'),(30,'Helena Bonham Carter'),(31,'Millie Bobby Brown'),(32,'Henry Cavill'),(33,'Sam Claflin'),(34,'Louis Partridge'),(35,'Adeel Akhtar'),(36,'Joaquin Phoenix'),(37,'Robert De Niro'),(38,'Zazie Beetz'),(39,'Frances Conroy'),(40,'Brett Cullen'),(41,'Shea Whigham'),(42,'Emilia Clarke'),(43,'Lena Headey'),(44,'Sophie Turner'),(45,'Kit Harington'),(46,'Peter Dinklage'),(47,'Nikolaj Coster-Waldau'),(48,'Grant Gustin'),(49,'Carlos Valdes'),(50,'Danielle Panabaker'),(51,'Candice Patton'),(52,'Jesse L. Martin'),(53,'Tom Cavanagh'),(54,'Jim Parsons'),(55,'Johnny Galecki'),(56,'Kaley Cuoco'),(57,'Simon Helberg'),(58,'Kunal Nayyar'),(59,'Melissa Rauch'),(60,'Mayim Bialik'),(61,'Jennifer Aniston'),(62,'Courteney Cox'),(63,'Lisa Kudrow'),(64,'Matt LeBlanc'),(65,'Matthew Perry'),(66,'David Schwimmer'),(67,'Amybeth McNulty'),(68,'Lucas Jade Zumann'),(69,'Geraldine James'),(70,'R. H. Thomson'),(71,'Dalila Bela'),(72,'Kyla Matthews');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
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
