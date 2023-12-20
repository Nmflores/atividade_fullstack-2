-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: atividade
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

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
-- Table structure for table `filmes`
--

DROP TABLE IF EXISTS `filmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmes` (
  `id_filmes` int(11) NOT NULL AUTO_INCREMENT,
  `nome_filmes` varchar(100) DEFAULT NULL,
  `diretor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_filmes`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmes`
--

LOCK TABLES `filmes` WRITE;
/*!40000 ALTER TABLE `filmes` DISABLE KEYS */;
INSERT INTO `filmes` VALUES (1,'Shrek','Andrew Adamson,Vicky Jenson'),(2,'Mystery Men','Kinka Usher'),(3,'Saturday Night Fever','John Badham'),(4,'Barbie','Greta Gerwig');
/*!40000 ALTER TABLE `filmes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musica`
--

DROP TABLE IF EXISTS `musica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musica` (
  `id_musica` int(11) NOT NULL AUTO_INCREMENT,
  `nome_musicas` varchar(100) DEFAULT NULL,
  `artista` varchar(100) NOT NULL,
  PRIMARY KEY (`id_musica`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musica`
--

LOCK TABLES `musica` WRITE;
/*!40000 ALTER TABLE `musica` DISABLE KEYS */;
INSERT INTO `musica` VALUES (1,'All Star','Smash Mouth'),(2,'I\'m a Believer','Smash Mouth'),(3,'Like Wow!','Leslie Carter'),(4,'Is It You (I Have Loved)','Dana Glover'),(5,'Best Years of Our Lives','Baha Men'),(6,'My Beloved Monster','Eels'),(7,'You Belong to Me','Jason Wade'),(8,'Hallelujah','Rufus Wainwright'),(9,'I\'m On My Way','The Proclaimers'),(10,'The Love\'s First Kiss','Harry Williams & John Powell'),(11,'Back In 1999','John Oszajca'),(12,'Keep Keep Movin','Dub Pistols'),(13,'The Mystery Men Mantra (feat. Terry Bradford, Will Wheaton & Nancye Ferguson)','Mark Mothersbaugh'),(14,'No Way','Freak Power'),(15,'Who Are Those Mystery Men','Kel and the M.A.F.T. Emcees Feat. Romaine Jones'),(16,'Rainy Day Parade','Jill Sobule'),(17,'Sometimes','Michael Franti & Spearhead'),(18,'Won\'t You Come Down','Spy'),(19,'Gangster','Citizen King'),(20,'No More Heroes','Violent Femmes'),(21,'Indigo','Moloko'),(22,'Disco Inferno','The Trammps'),(23,'Night Fever','Bee Gees'),(24,'Mystery Men Oath','Ben Stiller & William H. Macy'),(25,'Staying\' Alive','Bee Gees'),(26,'How Deep Is Your Love','Bee Gees');
/*!40000 ALTER TABLE `musica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soundtracks`
--

DROP TABLE IF EXISTS `soundtracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soundtracks` (
  `id_soundtrack` int(11) NOT NULL AUTO_INCREMENT,
  `id_filmes` int(11) DEFAULT NULL,
  `id_musica` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_soundtrack`),
  KEY `id_filmes` (`id_filmes`),
  KEY `id_musica` (`id_musica`),
  CONSTRAINT `soundtracks_ibfk_1` FOREIGN KEY (`id_filmes`) REFERENCES `filmes` (`id_filmes`),
  CONSTRAINT `soundtracks_ibfk_2` FOREIGN KEY (`id_musica`) REFERENCES `musica` (`id_musica`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soundtracks`
--

LOCK TABLES `soundtracks` WRITE;
/*!40000 ALTER TABLE `soundtracks` DISABLE KEYS */;
INSERT INTO `soundtracks` VALUES (1,1,1),(2,2,1),(3,1,2),(4,1,3),(5,1,4),(6,1,5),(7,1,6),(8,1,7),(9,2,11),(10,2,12),(11,2,13),(12,2,14),(13,2,15),(14,3,25),(15,3,26),(16,3,22),(17,2,22);
/*!40000 ALTER TABLE `soundtracks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-20 16:22:03
