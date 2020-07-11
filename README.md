-- MySQL dump 10.13  Distrib 5.7.29, for Win64 (x86_64)
--
-- Host: localhost    Database: db_estetica
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `c_estilistas`
--

DROP TABLE IF EXISTS `c_estilistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c_estilistas` (
  `pk_i_estilista` int(11) NOT NULL AUTO_INCREMENT,
  `pk_i_sucursal` int(11) NOT NULL,
  `d_v_nombre` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `d_v_paterno` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `d_v_materno` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `w_v_status` varchar(1) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`pk_i_estilista`),
  KEY `pk_i_sucursal_idx` (`pk_i_sucursal`),
  CONSTRAINT `fk_i_sucursal` FOREIGN KEY (`pk_i_sucursal`) REFERENCES `c_sucursales` (`pk_i_sucursal`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_estilistas`
--

LOCK TABLES `c_estilistas` WRITE;
/*!40000 ALTER TABLE `c_estilistas` DISABLE KEYS */;
INSERT INTO `c_estilistas` VALUES (1,1,'ELIZABETH','LAUREANO','RUIZ','A'),(2,1,'NICOLAS','RUIZ','SOBERANO','A'),(3,1,'ELENA','GARCIA','TORRES','A'),(4,1,'PAMELA','OCAMPO','SANCHEZ','A');
/*!40000 ALTER TABLE `c_estilistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c_servicios`
--

DROP TABLE IF EXISTS `c_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c_servicios` (
  `pk_i_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `d_v_detalle` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  `d_i_duracion` int(11) NOT NULL,
  `d_c_precio` decimal(6,2) NOT NULL,
  `w_v_status` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`pk_i_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_servicios`
--

LOCK TABLES `c_servicios` WRITE;
/*!40000 ALTER TABLE `c_servicios` DISABLE KEYS */;
INSERT INTO `c_servicios` VALUES (1,'Premium Makeup de día ',60,1400.00,'A'),(2,'Premium Makeup con aerógrafo ',70,1650.00,'A'),(3,'Premium Makeup de noche ',80,1750.00,'A'),(4,'Esmalte natural en manos ',20,340.00,'A'),(5,'Esmalte natural en pies ',20,350.00,'A'),(6,'Gel en manos ',40,460.00,'A'),(7,'Gel en pies ',45,480.00,'A'),(8,'Manicure para caballero ',30,500.00,'A'),(9,'Manicure ',45,500.00,'A'),(10,'Pedicure para caballero ',65,520.00,'A'),(11,'Pedicure ',65,520.00,'A'),(12,'Gel en manos con decoración ',60,580.00,'A'),(13,'Acrílico y gel en manos ',60,580.00,'A'),(14,'Manicure gel ',55,580.00,'A'),(15,'Pedicure gel ',75,620.00,'A'),(16,'Gel en manos y pies ',70,650.00,'A'),(17,'Manicure y pedicure para caballero ',100,720.00,'A'),(18,'Manicure y pedicure ',120,720.00,'A'),(19,'Manicure y pedicure gel ',140,880.00,'A'),(20,'Estilizado de extensiones ',35,140.00,'A'),(21,'Aplicación de pestañas ',20,210.00,'A'),(22,'Alaciado con plancha ',50,490.00,'A'),(23,'Moldeado con secadora ',50,490.00,'A'),(24,'Ondas surfer ',60,490.00,'A'),(25,'Ondas vintage ',60,490.00,'A'),(26,'Peinado sencillo ',45,530.00,'A'),(27,'Peinado recogido ',60,640.00,'A'),(28,'Maquillaje de día sin pestañas ',50,800.00,'A'),(29,'Maquillaje de día con pestañas ',60,920.00,'A'),(30,'Alto peinado ',60,930.00,'A'),(31,'Maquillaje de noche sin pestañas ',50,990.00,'A'),(32,'Maquillaje de noche con pestañas ',60,1180.00,'A'),(33,'Estilizado de extensiones ',35,140.00,'A'),(34,'Paquete maquillaje de día y Ondas ',120,1150.00,'A'),(35,'Paquete maquillaje de día y peinado recogido ',120,1350.00,'A'),(36,'Paquete maquillaje de noche y ondas ',130,1380.00,'A'),(37,'Paquete maquillaje de noche y peinado recogido ',130,1600.00,'A'),(38,'Corte individual ',30,490.00,'A'),(39,'Paquete 2 cortes ',50,890.00,'A'),(40,'Paquete 3 cortes ',70,1090.00,'A'),(41,'Paquete 4 cortes ',90,1190.00,'A'),(42,'Tratamiento de hidratación con Olaplex ',30,390.00,'A');
/*!40000 ALTER TABLE `c_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c_sucursales`
--

DROP TABLE IF EXISTS `c_sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c_sucursales` (
  `pk_i_sucursal` int(11) NOT NULL,
  `d_v_nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `d_v_direccion` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `w_v_status` varchar(1) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`pk_i_sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_sucursales`
--

LOCK TABLES `c_sucursales` WRITE;
/*!40000 ALTER TABLE `c_sucursales` DISABLE KEYS */;
INSERT INTO `c_sucursales` VALUES (1,'ARGOS NEZA','Calle Mixcoac 8 Col. Metropolitana 3ra. Secc. Netzahualcoyotl Estado de México 57750 México','A'),(2,'CENTRO','Republica De Guatemala . 10 A Y C Col. Centro Ciudad de México Ciudad de México 06020 México','A'),(3,'CANAL DEL NORTE','Av. Ing. Eduardo Molina No. 429 Col. 20 De Noviembre Venustiano Carranza CDMX 15300 México','A'),(4,'BUENAVISTA','Eje 1 Nte. 259, Local Pb-68 Buenavista Cuauhtémoc, CDMX. Centro comercial Forum Buenavista CDMX 6350 México','A');
/*!40000 ALTER TABLE `c_sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c_tipousuario`
--

DROP TABLE IF EXISTS `c_tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c_tipousuario` (
  `pk_i_rolusu` int(11) NOT NULL,
  `d_v_descripcion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `w_v_status` varchar(1) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`pk_i_rolusu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_tipousuario`
--

LOCK TABLES `c_tipousuario` WRITE;
/*!40000 ALTER TABLE `c_tipousuario` DISABLE KEYS */;
INSERT INTO `c_tipousuario` VALUES (1,'Administrador','A'),(2,'Cliente','A');
/*!40000 ALTER TABLE `c_tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c_usuarios`
--

DROP TABLE IF EXISTS `c_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c_usuarios` (
  `pk_i_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `pk_i_rolusu` int(11) NOT NULL,
  `d_v_correo` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `d_v_clave` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `d_v_nombre` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `d_v_paterno` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `d_v_materno` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `d_v_telefono` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `d_v_direccion` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `w_v_status` varchar(1) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`pk_i_usuario`),
  KEY `fk_i_rolusu_idx` (`pk_i_rolusu`),
  CONSTRAINT `fk_i_rolusu` FOREIGN KEY (`pk_i_rolusu`) REFERENCES `c_tipousuario` (`pk_i_rolusu`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_usuarios`
--

LOCK TABLES `c_usuarios` WRITE;
/*!40000 ALTER TABLE `c_usuarios` DISABLE KEYS */;
INSERT INTO `c_usuarios` VALUES (1,1,'rafael.juarez.laureano@gmail.com','123','RAFAEL','JUAREZ','LAUREANO','5587277559','ORQUIDEAS MZ 20 LT. 32 CS 1 COL. LOS HEROES TEMAC II SECCION FLORES CP 56356 TECAMAC ESTADO DE MEXICO','A');
/*!40000 ALTER TABLE `c_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_reservacion`
--

DROP TABLE IF EXISTS `d_reservacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_reservacion` (
  `pk_i_reserva` int(11) NOT NULL,
  `pk_i_servicio` int(11) NOT NULL,
  `pk_i_estilista` int(11) NOT NULL,
  `f_d_fechcap` datetime NOT NULL,
  `w_v_status` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`pk_i_reserva`,`pk_i_servicio`),
  KEY `fk_i_servicio_idx` (`pk_i_servicio`),
  KEY `fk_i_estilista_idx` (`pk_i_estilista`),
  CONSTRAINT `fk_i_estilista` FOREIGN KEY (`pk_i_estilista`) REFERENCES `c_estilistas` (`pk_i_estilista`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_i_reserva` FOREIGN KEY (`pk_i_reserva`) REFERENCES `m_reservacion` (`pk_i_reserva`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_i_servicio` FOREIGN KEY (`pk_i_servicio`) REFERENCES `c_servicios` (`pk_i_servicio`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_reservacion`
--

LOCK TABLES `d_reservacion` WRITE;
/*!40000 ALTER TABLE `d_reservacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_reservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_reservacion`
--

DROP TABLE IF EXISTS `m_reservacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_reservacion` (
  `pk_i_reserva` int(11) NOT NULL AUTO_INCREMENT,
  `pk_i_usuario` int(11) NOT NULL,
  `f_d_fecha` date NOT NULL,
  `f_d_horaini` time NOT NULL,
  `f_d_horafin` time NOT NULL,
  `d_c_total` decimal(11,0) NOT NULL,
  `d_n_pagado` tinyint(1) NOT NULL DEFAULT '0',
  `d_v_observa` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `f_d_fechcap` datetime NOT NULL,
  `w_v_status` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`pk_i_reserva`),
  KEY `fk_i_usuario_idx` (`pk_i_usuario`),
  CONSTRAINT `fk_i_usuario` FOREIGN KEY (`pk_i_usuario`) REFERENCES `c_usuarios` (`pk_i_usuario`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_reservacion`
--

LOCK TABLES `m_reservacion` WRITE;
/*!40000 ALTER TABLE `m_reservacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_reservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o_pagos`
--

DROP TABLE IF EXISTS `o_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o_pagos` (
  `pk_i_pago` int(11) NOT NULL,
  `pk_i_reserva` int(11) NOT NULL,
  `d_c_pago` decimal(11,0) NOT NULL,
  `f_d_fechcap` datetime NOT NULL,
  `w_v_status` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`pk_i_pago`),
  KEY `pk_i_reserva_idx` (`pk_i_reserva`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o_pagos`
--

LOCK TABLES `o_pagos` WRITE;
/*!40000 ALTER TABLE `o_pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `o_pagos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-10 20:24:22
