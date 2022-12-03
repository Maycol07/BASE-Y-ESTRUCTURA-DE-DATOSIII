CREATE DATABASE  IF NOT EXISTS `db_buena` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_buena`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: db_buenasalud
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `nro_Departamento` int NOT NULL AUTO_INCREMENT,
  `dpt_Nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`nro_Departamento`),
  UNIQUE KEY `dpt_Nombre_UNIQUE` (`dpt_Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--
LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'HEMATOLOGIA'),(2,'GINECOLOGIA'),(3,'PEDIATRIA'),(4,'PSIQUIATRIA'),(5,'NEUROLOGIA'),(6,'REHABILITACION'),(7,'CUIDADOS INTENSIVOS'),(8,'UNIDAD DE DIALISIS'),(9,'RADIOLOGIA'),(10,'LABORATORIO'),(11,'TOPICO'),(12,'QUIROFANO'),(13,'MATERNIDAD'),(14,'ODONTOLOGIA'),(15,'FARMACIA'),(16,'UROLOGIA'),(17,'OFTAMOLOGIA'),(18,'URGENCIAS'),(19,'LIMPIEZA'),(20,'SEGURIDAD'),(21,'PRUEBA'),(22,'sala espera'),(23,'servicios higuienicos');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `emp_no` int NOT NULL AUTO_INCREMENT,
  `apellido` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `oficio` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `direccion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_alt` date DEFAULT NULL,
  `salario` double DEFAULT NULL,
  `comision` double DEFAULT NULL,
  `dept_no` int DEFAULT NULL,
  PRIMARY KEY (`emp_no`),
  KEY `IND_CLIE_CODI` (`emp_no`) USING BTREE,
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`dept_no`) REFERENCES `departamento` (`nro_Departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=514 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
