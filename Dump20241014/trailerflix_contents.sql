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
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contents` (
  `idContent` int NOT NULL AUTO_INCREMENT,
  `poster` varchar(255) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `resumen` text,
  `temporadas` int DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idContent`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (1,'/posters/1.jpg','The Crown','Serie','Este drama narra las rivalidades políticas y el romance de la reina Isabel II...',4,'https://www.youtube.com/embed/aOC8E8z_ifw'),(2,'/posters/2.jpg','Riverdale','Serie','El paso a la edad adulta incluye sexo, romance, escuela y familia...',5,NULL),(3,'/posters/3.jpg','The Mandalorian','Serie','Ambientada tras la caída del Imperio...',2,'https://www.youtube.com/embed/aOC8E8z_ifw'),(4,'/posters/4.jpg','The Umbrella Academy','Serie','La muerte de su padre reúne a unos hermanos distanciados...',1,NULL),(5,'/posters/5.jpg','Gambito de Dama','Serie','En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez...',1,NULL),(6,'/posters/6.jpg','Enola Holmes','Película','La hermana menor de Sherlock...',NULL,NULL),(7,'/posters/7.jpg','Guasón','Película','Arthur Fleck es un hombre ignorado por la sociedad...',NULL,'https://www.youtube.com/embed/zAGVQLHvwOY'),(8,'/posters/8.jpg','Avengers: End Game','Película','Después de los devastadores eventos de los Vengadores: Infinity War...',NULL,NULL),(9,'/posters/9.jpg','Juego de tronos','Serie','En un mundo fantástico y en un contexto medieval varias familias...',8,NULL),(10,'/posters/10.jpg','The Flash','Serie','Sigue las veloces aventuras de Barry Allen...',6,NULL),(11,'/posters/11.jpg','The Big Bang Theory','Serie','Leonard y Sheldon son dos físicos que comparten trabajo y apartamento...',12,'https://www.youtube.com/embed/WBb3fojgW0Q'),(12,'/posters/12.jpg','Friends','Serie','Friends narra las aventuras y desventuras de seis jóvenes de Nueva York...',10,NULL),(13,'/posters/13.jpg','Anne with an \"E\"','Serie','Anne Shirley es una niña huérfana que vive en un pequeño pueblo...',2,NULL),(14,'/posters/14.jpg','Expedientes Secretos \"X\"','Serie','Fox Mulder y Dana Scully son dos investigadores del FBI...',11,'https://www.youtube.com/embed/KKziOmsJxzE'),(15,'/posters/15.jpg','Chernobyl','Serie','Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre...',1,'https://www.youtube.com/embed/s9APLXM9Ei8'),(16,'/posters/16.jpg','Westworld','Serie','Westworld es una oscura odisea acerca del amanecer de la conciencia artificial...',3,'https://www.youtube.com/embed/qLFBcdd6Qw0'),(17,'/posters/17.jpg','Halt and Catch Fire','Serie','Situada en los inicios de la década de 1980, un visionario ficticio...',4,'https://www.youtube.com/embed/pWrioRji60A'),(18,'/posters/18.jpg','Ava','Película','Ava es una mortífera asesina a sueldo...',NULL,NULL),(19,'/posters/19.jpg','Aves de presa y la fantabulosa emancipación de una Harley Quinn','Película','Después de separarse de Joker...',NULL,NULL),(20,'/posters/20.jpg','Archivo','Película','2038: George Almore está trabajando en una verdadera IA...',NULL,'https://www.youtube.com/embed/VHSoCnDioAo'),(21,'/posters/21.jpg','Jumanji - The next level','Película','Las aventuras continúan en el fantástico mundo del video juego Jumanji...',NULL,'https://www.youtube.com/embed/rBxcF-r9Ibs'),(22,'/posters/22.jpg','3022','Película','La película está ambientada en una estación espacial en el futuro...',NULL,'https://www.youtube.com/embed/AGQ7OkmIx4Q'),(23,'/posters/23.jpg','IT - Capítulo 2','Película','En este segundo capítulo han pasado 27 años desde que el \"Club de los Perdedores\"...',NULL,'https://www.youtube.com/embed/hZeFeYSmBcg'),(24,'/posters/24.jpg','Pantera Negra','Película','T’Challa regresa a su hogar en la apartada nación africana de Wakanda...',NULL,'https://www.youtube.com/embed/BE6inv8Xh4A'),(25,'/posters/25.jpg','Contra lo imposible (Ford versus Ferrari)','Película','Los ganadores del Premio de la Academia Matt Damon y Christian Bale protagonizan...',NULL,'https://www.youtube.com/embed/SOVb0-2g1Q0'),(26,'/posters/26.jpg','Centígrados','Película','Una joven pareja estadounidense viaja a las montañas árticas de Noruega...',NULL,NULL),(27,'/posters/27.jpg','DOOM: Aniquilación','Película','Doom: Aniquilación sigue a un grupo de marines espaciales...',NULL,'https://www.youtube.com/embed/nat3u3gAVLE'),(28,'/posters/28.jpg','Contagio','Película','De repente, sin saber cuál es su origen, un virus mortal comienza a propagarse...',NULL,'https://www.youtube.com/embed/4sYSyuuLk5g'),(29,'/posters/29.jpg','Viuda Negra','Película','Primera película individual de la Viuda Negra en el universo cinematográfico de Marvel...',NULL,'https://www.youtube.com/embed/BIn8iANwEog'),(30,'/posters/30.jpg','The Martian','Película','Durante una misión a Marte de la nave tripulada Ares III...',NULL,'https://www.youtube.com/embed/XvB58bCVfng'),(31,'/posters/31.jpg','Ex-Machina','Película','Un programador multimillonario selecciona a Caleb, un joven empleado...',NULL,'https://www.youtube.com/embed/XRYL5spvEcI'),(32,'/posters/32.jpg','Jurassic World','Película','Veintidós años después de lo ocurrido en Jurassic Park...',NULL,NULL),(33,'/posters/33.jpg','Soy leyenda','Película','Años después de que una plaga mate a la mayoría de la humanidad...',NULL,'https://www.youtube.com/embed/dtKMEAXyPkg'),(34,'/posters/34.jpg','El primer hombre en la luna','Película','Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna...',NULL,NULL),(35,'/posters/35.jpg','Titanes del pacífico - La insurrección','Película','Han pasado 10 años tras la primera invasión que sufrió la humanidad...',NULL,NULL),(36,'/posters/36.jpg','The Witcher','Serie','Geralt de Rivia, cazador de monstruos, busca su lugar en un mundo caótico...',2,NULL),(37,'/posters/37.jpg','Dark','Serie','Un enigmático viaje a través del tiempo que involucra cuatro familias...',3,NULL),(38,'/posters/38.jpg','Stranger Things','Serie','Un grupo de amigos se enfrenta a eventos sobrenaturales en su ciudad...',4,NULL);
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
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
