-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `temprestimo`
--

DROP TABLE IF EXISTS `temprestimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temprestimo` (
  `codEmprestimo` int NOT NULL AUTO_INCREMENT,
  `codLivro` int NOT NULL,
  `codLeitor` int NOT NULL,
  `dataInicio` date NOT NULL,
  `dataPrevisaoFim` date NOT NULL,
  `dataDevolucao` date DEFAULT NULL,
  PRIMARY KEY (`codEmprestimo`),
  KEY `codLivro` (`codLivro`),
  KEY `codLeitor` (`codLeitor`),
  CONSTRAINT `temprestimo_ibfk_1` FOREIGN KEY (`codLivro`) REFERENCES `tlivros` (`codLivro`),
  CONSTRAINT `temprestimo_ibfk_2` FOREIGN KEY (`codLeitor`) REFERENCES `tleitors` (`codLeitor`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temprestimo`
--

LOCK TABLES `temprestimo` WRITE;
/*!40000 ALTER TABLE `temprestimo` DISABLE KEYS */;
INSERT INTO `temprestimo` VALUES (19,3,4,'2020-08-13','2020-08-24','2020-07-03'),(20,3,4,'2020-08-03','2020-08-13','2020-08-03'),(21,5,3,'2020-09-04','2020-09-20','2020-09-20'),(22,5,3,'2020-09-04','2020-09-20','2020-09-20'),(23,5,3,'2020-09-04','2020-09-20','2020-09-20'),(24,5,3,'2020-09-04','2020-09-20','2020-09-20'),(25,3,4,'2020-09-03','2020-09-18','2020-09-17'),(26,3,4,'2020-09-03','2020-09-18','2020-09-17'),(27,3,4,'2020-09-03','2020-09-18','2020-09-17'),(28,3,4,'2020-09-03','2020-09-18','2020-09-17'),(29,3,4,'2020-09-03','2020-09-18','2020-09-17'),(30,3,4,'2020-09-03','2020-09-18','2020-09-17'),(31,3,4,'2020-09-03','2020-09-18','2020-09-17'),(32,3,4,'2020-09-03','2020-09-18','2020-09-17'),(33,3,4,'2020-09-03','2020-09-18','2020-09-19'),(34,3,4,'2020-09-03','2020-09-18','2020-09-19'),(35,3,4,'2020-09-03','2020-09-18','2020-09-19');
/*!40000 ALTER TABLE `temprestimo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tleitors`
--

DROP TABLE IF EXISTS `tleitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tleitors` (
  `nome` varchar(100) NOT NULL,
  `dataNascimento` date NOT NULL,
  `genero` char(1) NOT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `codLeitor` int NOT NULL AUTO_INCREMENT,
  `telefone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`codLeitor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tleitors`
--

LOCK TABLES `tleitors` WRITE;
/*!40000 ALTER TABLE `tleitors` DISABLE KEYS */;
INSERT INTO `tleitors` VALUES ('Baam','2002-03-29','F','',3,'40028921'),('AlessBlauss','2001-01-02','M','',4,''),('Farod','1998-08-13','M','123',5,'123'),('asd','2001-12-29','M','1231',8,'132321'),('Jao','2001-07-13','M','123132',10,'123');
/*!40000 ALTER TABLE `tleitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tlivros`
--

DROP TABLE IF EXISTS `tlivros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tlivros` (
  `titulo` varchar(65) NOT NULL,
  `autor` varchar(40) NOT NULL,
  `editora` varchar(30) DEFAULT NULL,
  `sinopse` varchar(1000) DEFAULT NULL,
  `generos` varchar(100) NOT NULL,
  `codLivro` int NOT NULL AUTO_INCREMENT,
  `situacao` char(1) NOT NULL,
  PRIMARY KEY (`codLivro`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tlivros`
--

LOCK TABLES `tlivros` WRITE;
/*!40000 ALTER TABLE `tlivros` DISABLE KEYS */;
INSERT INTO `tlivros` VALUES ('ALadin','Shazam','Panini','Um garoto mágico e mistico com uma capa da voltas ao mundo.','Aventura,Terror',3,'D'),('jovem Aprendiz Feiticeiro','Baltazares','Mojang','Um jovem garoto Chamado Bascarionte aventurase pelo mundo com sua magia que permite a ele fazer coisas inimaginaveis','Magia,Suspense,Aventura,Emoção',5,'R'),('Harry Potter','Hideo Kojima','blizard','Um grande menino que sonhava em ser um carteiro decide começar a entregar as coisas dos outros','Aventura,Correio,Entrega, Frete Grátis',6,'D'),('Teste da fé','Marcio','Panini','Era outra vez...','Terror,panico',8,'D');
/*!40000 ALTER TABLE `tlivros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tloginfuncionario`
--

DROP TABLE IF EXISTS `tloginfuncionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tloginfuncionario` (
  `codFuncionario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `senha` varchar(18) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codFuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tloginfuncionario`
--

LOCK TABLES `tloginfuncionario` WRITE;
/*!40000 ALTER TABLE `tloginfuncionario` DISABLE KEYS */;
INSERT INTO `tloginfuncionario` VALUES (1,'norem','1234','alessandroeich@hotmail.com'),(2,'adm','321',NULL);
/*!40000 ALTER TABLE `tloginfuncionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treserva`
--

DROP TABLE IF EXISTS `treserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treserva` (
  `codReserva` int NOT NULL AUTO_INCREMENT,
  `codLivro` int NOT NULL,
  `codLeitor` int NOT NULL,
  `dataInicio` date NOT NULL,
  `dataPrevisaoFim` date NOT NULL,
  `dataFinal` date DEFAULT NULL,
  PRIMARY KEY (`codReserva`),
  KEY `codLeitor` (`codLeitor`),
  KEY `codLivro` (`codLivro`),
  CONSTRAINT `treserva_ibfk_1` FOREIGN KEY (`codLeitor`) REFERENCES `tleitors` (`codLeitor`),
  CONSTRAINT `treserva_ibfk_2` FOREIGN KEY (`codLivro`) REFERENCES `tlivros` (`codLivro`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treserva`
--

LOCK TABLES `treserva` WRITE;
/*!40000 ALTER TABLE `treserva` DISABLE KEYS */;
INSERT INTO `treserva` VALUES (22,3,3,'2020-08-03','2020-08-14','2020-07-03'),(23,3,4,'2020-08-03','2020-08-14','2020-07-03'),(24,3,3,'2020-08-03','2020-09-13','2020-07-03'),(25,3,4,'2020-08-03','2020-09-13','2020-07-03'),(26,3,3,'2020-08-04','2020-09-13','2020-08-03'),(28,3,3,'2020-09-03','2020-09-14',NULL),(29,3,3,'2020-09-03','2020-09-16','2020-09-16'),(30,3,3,'2020-09-03','2020-09-20','2020-09-20'),(31,3,3,'2020-09-03','2020-09-18','2020-09-18'),(32,3,3,'2020-09-03','2020-09-18','2020-09-18'),(33,3,3,'2020-09-04','2020-09-19','2020-09-19'),(34,3,3,'2020-09-04','2020-09-19','2020-09-19'),(35,3,3,'2020-09-04','2020-09-19','2020-09-19'),(36,3,4,'2020-09-04','2020-09-18','2020-09-21'),(37,3,4,'2020-09-04','2020-09-18','2020-09-21'),(38,3,4,'2020-09-04','2020-09-18','2020-09-21'),(40,5,3,'2020-09-04','2020-09-18','2020-09-21'),(41,5,3,'2020-09-04','2020-09-18','2020-09-21'),(42,5,3,'2020-09-04','2020-09-18','2020-09-21'),(43,5,3,'2020-09-04','2020-09-20','2020-09-20'),(44,5,3,'2020-09-04','2020-09-20','2020-09-20'),(45,5,3,'2020-09-04','2020-09-20','2020-09-20');
/*!40000 ALTER TABLE `treserva` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-03 21:50:53
