CREATE DATABASE  IF NOT EXISTS `udg_e1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `udg_e1`;
-- MySQL dump 10.13  Distrib 5.7.25, for Win64 (x86_64)
--
-- Host: localhost    Database: udg_e1
-- ------------------------------------------------------
-- Server version	5.7.25-log

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
-- Table structure for table `dim_canal`
--

DROP TABLE IF EXISTS `dim_canal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_canal` (
  `ID_CANAL0` int(11) NOT NULL,
  `NOMBRE_CANAL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_CANAL0`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_cliente`
--

DROP TABLE IF EXISTS `dim_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_cliente` (
  `ID_CLIENTE0` int(11) NOT NULL,
  `APELLIDO` varchar(255) DEFAULT NULL,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `NRO_DOCUMENTO` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_CLIENTE0`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_medio_pago`
--

DROP TABLE IF EXISTS `dim_medio_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_medio_pago` (
  `ID_MEDIO_PAGO0` int(11) NOT NULL,
  `FORMA_PAGO` varchar(255) DEFAULT NULL,
  `OPCION_PAGO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_MEDIO_PAGO0`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_producto`
--

DROP TABLE IF EXISTS `dim_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_producto` (
  `ID_PRODUCTO0` int(11) NOT NULL,
  `RUBRO` varchar(255) DEFAULT NULL,
  `SUB_RUBRO` varchar(255) DEFAULT NULL,
  `MARCA` varchar(255) DEFAULT NULL,
  `NOMBRE_PRODUCTO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_PRODUCTO0`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_sucursal`
--

DROP TABLE IF EXISTS `dim_sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_sucursal` (
  `ID_SUCURSAL0` int(11) NOT NULL,
  `PROVINCIA` varchar(255) DEFAULT NULL,
  `CIUDAD` varchar(255) DEFAULT NULL,
  `ZONA` varchar(255) DEFAULT NULL,
  `SUCURSAL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_SUCURSAL0`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_tiempocomparativo`
--

DROP TABLE IF EXISTS `dim_tiempocomparativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_tiempocomparativo` (
  `ID_TIMPOCOMPARATIVO` int(11) NOT NULL,
  `TC_ANIO` int(11) DEFAULT NULL,
  `TC_SEMESTRE` int(11) DEFAULT NULL,
  `TC_TRIMESTRE` int(11) DEFAULT NULL,
  `TC_MES` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TIMPOCOMPARATIVO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_tiempodiario`
--

DROP TABLE IF EXISTS `dim_tiempodiario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_tiempodiario` (
  `ID_TIEMPO1` int(11) NOT NULL,
  `ANIO1` int(11) DEFAULT NULL,
  `SEMESTRE1` int(11) DEFAULT NULL,
  `TRIMESTRE1` int(11) DEFAULT NULL,
  `MES1` int(11) DEFAULT NULL,
  `DIA_DEL_MES1` int(11) DEFAULT NULL,
  `FECHA1` date DEFAULT NULL,
  PRIMARY KEY (`ID_TIEMPO1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fact__item_vendido`
--

DROP TABLE IF EXISTS `fact__item_vendido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact__item_vendido` (
  `ID_FACT_ITEM_VTA` int(11) NOT NULL,
  `ID_CLIENTE0` int(11) DEFAULT NULL,
  `ID_PRODUCTO0` int(11) DEFAULT NULL,
  `ID_SUCURSAL0` int(11) DEFAULT NULL,
  `ID_CANAL0` int(11) DEFAULT NULL,
  `ID_TIEMPO1` int(11) DEFAULT NULL,
  `NRO_FACTURA` varchar(255) DEFAULT NULL,
  `UNIDAD_VENDIDA` int(11) DEFAULT NULL,
  `MONTO_VENDIDO` decimal(10,0) DEFAULT NULL,
  `BENEFICIO_VENDIDO` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_FACT_ITEM_VTA`),
  KEY `FK_RELATIONSHIP_1` (`ID_CLIENTE0`),
  KEY `FK_RELATIONSHIP_14` (`ID_TIEMPO1`),
  KEY `FK_RELATIONSHIP_2` (`ID_PRODUCTO0`),
  KEY `FK_RELATIONSHIP_3` (`ID_SUCURSAL0`),
  KEY `FK_RELATIONSHIP_4` (`ID_CANAL0`),
  CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`ID_CLIENTE0`) REFERENCES `dim_cliente` (`ID_CLIENTE0`),
  CONSTRAINT `FK_RELATIONSHIP_14` FOREIGN KEY (`ID_TIEMPO1`) REFERENCES `dim_tiempodiario` (`ID_TIEMPO1`),
  CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`ID_PRODUCTO0`) REFERENCES `dim_producto` (`ID_PRODUCTO0`),
  CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`ID_SUCURSAL0`) REFERENCES `dim_sucursal` (`ID_SUCURSAL0`),
  CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`ID_CANAL0`) REFERENCES `dim_canal` (`ID_CANAL0`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fact_comarativo_vta_proyectado_vs_real`
--

DROP TABLE IF EXISTS `fact_comarativo_vta_proyectado_vs_real`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_comarativo_vta_proyectado_vs_real` (
  `ID_FACT_CVTA_PROY_REAL` int(11) NOT NULL,
  `ID_CANAL0` int(11) DEFAULT NULL,
  `ID_PRODUCTO0` int(11) DEFAULT NULL,
  `ID_SUCURSAL0` int(11) DEFAULT NULL,
  `ID_TIMPOCOMPARATIVO` int(11) DEFAULT NULL,
  `MONTO_PROYECTADO` decimal(10,0) DEFAULT NULL,
  `MONTO_REAL` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_FACT_CVTA_PROY_REAL`),
  KEY `FK_RELATIONSHIP_15` (`ID_TIMPOCOMPARATIVO`),
  KEY `FK_RELATIONSHIP_6` (`ID_CANAL0`),
  KEY `FK_RELATIONSHIP_8` (`ID_PRODUCTO0`),
  KEY `FK_RELATIONSHIP_9` (`ID_SUCURSAL0`),
  CONSTRAINT `FK_RELATIONSHIP_15` FOREIGN KEY (`ID_TIMPOCOMPARATIVO`) REFERENCES `dim_tiempocomparativo` (`ID_TIMPOCOMPARATIVO`),
  CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`ID_CANAL0`) REFERENCES `dim_canal` (`ID_CANAL0`),
  CONSTRAINT `FK_RELATIONSHIP_8` FOREIGN KEY (`ID_PRODUCTO0`) REFERENCES `dim_producto` (`ID_PRODUCTO0`),
  CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`ID_SUCURSAL0`) REFERENCES `dim_sucursal` (`ID_SUCURSAL0`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fact_medio_pago_facturacion`
--

DROP TABLE IF EXISTS `fact_medio_pago_facturacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_medio_pago_facturacion` (
  `ID_FACT_MEDIO_PAG_FACT` int(11) NOT NULL,
  `ID_SUCURSAL0` int(11) DEFAULT NULL,
  `ID_CANAL0` int(11) DEFAULT NULL,
  `ID_TIEMPO1` int(11) DEFAULT NULL,
  `ID_MEDIO_PAGO0` int(11) DEFAULT NULL,
  `MONTO_FACTURADO` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_FACT_MEDIO_PAG_FACT`),
  KEY `FK_RELATIONSHIP_10` (`ID_SUCURSAL0`),
  KEY `FK_RELATIONSHIP_11` (`ID_CANAL0`),
  KEY `FK_RELATIONSHIP_12` (`ID_TIEMPO1`),
  KEY `FK_RELATIONSHIP_13` (`ID_MEDIO_PAGO0`),
  CONSTRAINT `FK_RELATIONSHIP_10` FOREIGN KEY (`ID_SUCURSAL0`) REFERENCES `dim_sucursal` (`ID_SUCURSAL0`),
  CONSTRAINT `FK_RELATIONSHIP_11` FOREIGN KEY (`ID_CANAL0`) REFERENCES `dim_canal` (`ID_CANAL0`),
  CONSTRAINT `FK_RELATIONSHIP_12` FOREIGN KEY (`ID_TIEMPO1`) REFERENCES `dim_tiempodiario` (`ID_TIEMPO1`),
  CONSTRAINT `FK_RELATIONSHIP_13` FOREIGN KEY (`ID_MEDIO_PAGO0`) REFERENCES `dim_medio_pago` (`ID_MEDIO_PAGO0`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-14 11:33:45