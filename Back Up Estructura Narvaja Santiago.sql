CREATE DATABASE  IF NOT EXISTS `sql_coderhouse_narvaja_santiago` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sql_coderhouse_narvaja_santiago`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sql_coderhouse_narvaja_santiago
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulos` (
  `id_articulo` int NOT NULL,
  `grupo` tinytext NOT NULL,
  `familia` tinytext NOT NULL,
  `sector` tinytext NOT NULL,
  `nombre` text NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`id_articulo`),
  UNIQUE KEY `id_articulo_UNIQUE` (`id_articulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `articulos_en_promocion`
--

DROP TABLE IF EXISTS `articulos_en_promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulos_en_promocion` (
  `id_articulo_promocion` int NOT NULL AUTO_INCREMENT,
  `id_articulo` bigint NOT NULL,
  `nombre_articulo` text NOT NULL,
  `porcentaje_descuento` float NOT NULL,
  `tope_descuento` float NOT NULL,
  PRIMARY KEY (`id_articulo_promocion`),
  UNIQUE KEY `id_articulo_promocion_UNIQUE` (`id_articulo_promocion`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `detalle_compra`
--

DROP TABLE IF EXISTS `detalle_compra`;
/*!50001 DROP VIEW IF EXISTS `detalle_compra`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `detalle_compra` AS SELECT 
 1 AS `numero_ticket`,
 1 AS `id_cliente`,
 1 AS `sucursal`,
 1 AS `id_articulo`,
 1 AS `articulo`,
 1 AS `total_unidades`,
 1 AS `precio`,
 1 AS `valor_subtotal`,
 1 AS `descuento`,
 1 AS `descuento_aplicado`,
 1 AS `valor_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `detalle_tickets`
--

DROP TABLE IF EXISTS `detalle_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_tickets` (
  `id_detalle_ticket` int NOT NULL AUTO_INCREMENT,
  `numero_ticket` varchar(30) NOT NULL,
  `id_sucursal` int NOT NULL,
  `id_cliente` varchar(25) NOT NULL,
  `id_articulo` bigint NOT NULL,
  `unidades` int NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_detalle_ticket`),
  UNIQUE KEY `id_detalle_ticket_UNIQUE` (`id_detalle_ticket`)
) ENGINE=InnoDB AUTO_INCREMENT=997 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_clientes`
--

DROP TABLE IF EXISTS `perfil_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_clientes` (
  `id_cliente` varchar(25) NOT NULL,
  `tipo_dni` tinytext NOT NULL,
  `numero_dni` bigint NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `antiguedad` int DEFAULT NULL,
  `empresa_b2b` varchar(100) DEFAULT NULL,
  `segmento_RFM` tinytext NOT NULL,
  `condicion_cliente` tinytext NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `id_cliente_UNIQUE` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursales` (
  `id_sucursal` int NOT NULL,
  `region` tinytext NOT NULL,
  `nombre` tinytext NOT NULL,
  PRIMARY KEY (`id_sucursal`),
  UNIQUE KEY `id_sucursal_UNIQUE` (`id_sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `ventas_por_articulos`
--

DROP TABLE IF EXISTS `ventas_por_articulos`;
/*!50001 DROP VIEW IF EXISTS `ventas_por_articulos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_por_articulos` AS SELECT 
 1 AS `grupo`,
 1 AS `familia`,
 1 AS `sector`,
 1 AS `nombre`,
 1 AS `precio`,
 1 AS `unidades_vendidas`,
 1 AS `ventas_por_articulo`,
 1 AS `total_descuento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ventas_por_clientes`
--

DROP TABLE IF EXISTS `ventas_por_clientes`;
/*!50001 DROP VIEW IF EXISTS `ventas_por_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_por_clientes` AS SELECT 
 1 AS `id_cliente`,
 1 AS `fecha_nacimiento`,
 1 AS `edad`,
 1 AS `rango_edad`,
 1 AS `condicion_cliente`,
 1 AS `segmento_RFM`,
 1 AS `cantidad_compras`,
 1 AS `ventas_por_cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ventas_por_condicion_cliente`
--

DROP TABLE IF EXISTS `ventas_por_condicion_cliente`;
/*!50001 DROP VIEW IF EXISTS `ventas_por_condicion_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_por_condicion_cliente` AS SELECT 
 1 AS `condicion_cliente`,
 1 AS `total_ventas`,
 1 AS `total_transacciones`,
 1 AS `ticket_promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ventas_por_sucursal`
--

DROP TABLE IF EXISTS `ventas_por_sucursal`;
/*!50001 DROP VIEW IF EXISTS `ventas_por_sucursal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_por_sucursal` AS SELECT 
 1 AS `sucursal`,
 1 AS `cantidad_clientes`,
 1 AS `total_ventas`,
 1 AS `ticket_promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `detalle_compra`
--

/*!50001 DROP VIEW IF EXISTS `detalle_compra`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `detalle_compra` AS select `dt`.`numero_ticket` AS `numero_ticket`,`dt`.`id_cliente` AS `id_cliente`,`suc`.`nombre` AS `sucursal`,`ar`.`id_articulo` AS `id_articulo`,`ar`.`nombre` AS `articulo`,`dt`.`unidades` AS `total_unidades`,`ar`.`precio` AS `precio`,truncate((`dt`.`unidades` * `ar`.`precio`),3) AS `valor_subtotal`,ifnull(concat((`promo`.`porcentaje_descuento` * 100),'%'),'N/A') AS `descuento`,truncate(ifnull(if((((`dt`.`unidades` * `ar`.`precio`) * `promo`.`porcentaje_descuento`) < `promo`.`tope_descuento`),((`dt`.`unidades` * `ar`.`precio`) * `promo`.`porcentaje_descuento`),`promo`.`tope_descuento`),'-'),3) AS `descuento_aplicado`,truncate(((`dt`.`unidades` * `ar`.`precio`) - if(((((`dt`.`unidades` * `ar`.`precio`) * `promo`.`porcentaje_descuento`) is null) = true),0,if((((`dt`.`unidades` * `ar`.`precio`) * `promo`.`porcentaje_descuento`) < `promo`.`tope_descuento`),((`dt`.`unidades` * `ar`.`precio`) * `promo`.`porcentaje_descuento`),`promo`.`tope_descuento`))),3) AS `valor_total` from (((`detalle_tickets` `dt` join `sucursales` `suc` on((`dt`.`id_sucursal` = `suc`.`id_sucursal`))) join `articulos` `ar` on((`dt`.`id_articulo` = `ar`.`id_articulo`))) left join `articulos_en_promocion` `promo` on((`dt`.`id_articulo` = `promo`.`id_articulo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_por_articulos`
--

/*!50001 DROP VIEW IF EXISTS `ventas_por_articulos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_por_articulos` AS select `ar`.`grupo` AS `grupo`,`ar`.`familia` AS `familia`,`ar`.`sector` AS `sector`,`ar`.`nombre` AS `nombre`,`ar`.`precio` AS `precio`,ifnull(sum(`dc`.`total_unidades`),0) AS `unidades_vendidas`,truncate((`ar`.`precio` * sum(`dc`.`total_unidades`)),3) AS `ventas_por_articulo`,truncate(sum(`dc`.`descuento_aplicado`),3) AS `total_descuento` from (`articulos` `ar` left join `detalle_compra` `dc` on((`ar`.`id_articulo` = `dc`.`id_articulo`))) group by `ar`.`id_articulo` order by `unidades_vendidas` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_por_clientes`
--

/*!50001 DROP VIEW IF EXISTS `ventas_por_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_por_clientes` AS select `pc`.`id_cliente` AS `id_cliente`,`pc`.`fecha_nacimiento` AS `fecha_nacimiento`,(year(curdate()) - year(`pc`.`fecha_nacimiento`)) AS `edad`,if(((year(curdate()) - year(`pc`.`fecha_nacimiento`)) <= 25),'18 - 25',if(((year(curdate()) - year(`pc`.`fecha_nacimiento`)) <= 35),'26 - 35',if(((year(curdate()) - year(`pc`.`fecha_nacimiento`)) <= 45),'36 - 45',if(((year(curdate()) - year(`pc`.`fecha_nacimiento`)) <= 55),'46 - 55',if(((year(curdate()) - year(`pc`.`fecha_nacimiento`)) <= 65),'56 - 65',if(((year(curdate()) - year(`pc`.`fecha_nacimiento`)) <= 75),'66 - 75',if(((year(curdate()) - year(`pc`.`fecha_nacimiento`)) <= 85),'76 - 85','Otro'))))))) AS `rango_edad`,`pc`.`condicion_cliente` AS `condicion_cliente`,`pc`.`segmento_RFM` AS `segmento_RFM`,count(distinct `dt`.`numero_ticket`) AS `cantidad_compras`,truncate(avg(`dt`.`valor_total`),3) AS `ventas_por_cliente` from (`perfil_clientes` `pc` join `detalle_compra` `dt` on((`pc`.`id_cliente` = `dt`.`id_cliente`))) group by `pc`.`id_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_por_condicion_cliente`
--

/*!50001 DROP VIEW IF EXISTS `ventas_por_condicion_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_por_condicion_cliente` AS select `vpc`.`condicion_cliente` AS `condicion_cliente`,truncate(sum(`vpc`.`ventas_por_cliente`),3) AS `total_ventas`,sum(`vpc`.`cantidad_compras`) AS `total_transacciones`,truncate((sum(`vpc`.`ventas_por_cliente`) / sum(`vpc`.`cantidad_compras`)),3) AS `ticket_promedio` from `ventas_por_clientes` `vpc` group by `vpc`.`condicion_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_por_sucursal`
--

/*!50001 DROP VIEW IF EXISTS `ventas_por_sucursal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_por_sucursal` AS select `detalle_compra`.`sucursal` AS `sucursal`,count(distinct `detalle_compra`.`id_cliente`) AS `cantidad_clientes`,truncate(sum(`detalle_compra`.`valor_total`),3) AS `total_ventas`,truncate((sum(`detalle_compra`.`valor_total`) / count(distinct `detalle_compra`.`id_cliente`)),3) AS `ticket_promedio` from `detalle_compra` group by `detalle_compra`.`sucursal` order by `total_ventas` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-01 19:37:33
