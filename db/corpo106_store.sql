-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 07-04-2020 a las 20:45:00
-- Versión del servidor: 5.7.29
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `corpo106_store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `id` int(11) NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `ubicacion` varchar(254) NOT NULL,
  `telefono` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `almacen` (`id`, `nombre`, `ubicacion`, `telefono`) VALUES
(1, 'Almacen 1', 'ubicacion', '000'),
(2, 'ABARROTERA AMAVAL', 'VIRREY DE MENDOZA 528', ''),
(3, 'SPORT AMAVAL', 'VIRREY DE MENDOZA 528', '3516882396'),
(4, 'SALUD AMAVAL', 'VIRREY DE MENDOZA 528', '3516882396');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `annuities`
--

CREATE TABLE `annuities` (
  `id` int(11) NOT NULL,
  `client` int(11) NOT NULL,
  `concepto` varchar(254) NOT NULL,
  `price` float NOT NULL,
  `date_ini` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_last` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `direccion` varchar(254) NOT NULL,
  `telefono` varchar(254) NOT NULL,
  `descuento` int(11) NOT NULL,
  `rfc` varchar(254) NOT NULL,
  `razon_social` varchar(254) NOT NULL,
  `correo` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `nombre`, `direccion`, `telefono`, `descuento`, `rfc`, `razon_social`, `correo`) VALUES
(1, 'PUBLICO EN GENERAL', 'DIRECCION GENERICA', '00000', 0, 'XEXX010101000', 'PUBLICO EN GENERAL', ''),
(2, 'FRANCISCO HERRERA ARRIAGA', 'COLON PTE 166', '3511046078', 60, 'HEAF800903668', 'FRANCISCO HERRERA ARRIAGA', 'zhero49@hotmail.com'),
(3, 'NANCY PAULINA NAVARRO CERVANTES - JARDINADAS', 'JARDINADAS', '3515480013', 20, 'NACN860125A44', 'NANCY PAULINA NAVARRO CERVANTES', 'facturas-nacn960125a44@hotmail.com'),
(4, 'NANCY PAULINA NAVARRO CERVANTES - 5 DE MAYO', '5 DE MAYO ESQ AV. BENITO JUAREZ', '', 20, 'NACN860125A44', 'NANCY PAULINA NAVARRO CERVANTES', ''),
(5, 'ALEJANDRO AMEZCUA', 'DOMICILIO CONOCIDO', '03516882396', 0, '', 'ALEJANDRO AMEZCUA', ''),
(6, 'GALLO CERVEZERO ', 'OSLO 11 ESQUINA CON VIRREY ', '351000000', 0, '', 'GALLO CERVECERO', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `descripcion` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Multiple', 'Productos varios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `nombre_corto` varchar(254) NOT NULL,
  `direccion` varchar(254) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `telefono` varchar(254) NOT NULL,
  `mision` longtext NOT NULL,
  `vision` longtext NOT NULL,
  `contacto` longtext NOT NULL,
  `facebook` varchar(254) NOT NULL,
  `twitter` varchar(254) NOT NULL,
  `youtube` varchar(254) NOT NULL,
  `iva` int(11) NOT NULL,
  `footer` longtext NOT NULL,
  `cfdi_lugare_expedicion` varchar(254) NOT NULL,
  `cfdi_rfc` varchar(254) NOT NULL,
  `cfdi_regimen` varchar(254) NOT NULL,
  `cfdi_cer` varchar(254) NOT NULL,
  `cfdi_key` varchar(254) NOT NULL,
  `cfdi_pass` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `nombre_corto`, `direccion`, `correo`, `telefono`, `mision`, `vision`, `contacto`, `facebook`, `twitter`, `youtube`, `iva`, `footer`, `cfdi_lugare_expedicion`, `cfdi_rfc`, `cfdi_regimen`, `cfdi_cer`, `cfdi_key`, `cfdi_pass`) VALUES
(1, 'Corporativo Amaval', 'Amaval', 'Virrey de Mendoza 528', 'a@a.com', '3516882396', 'Mision, de la empresa', 'Vision de la empresa', 'Información de contacto', '', '', '', 0, 'pie de pagina, reportes', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `serie` varchar(254) NOT NULL,
  `folio` varchar(254) NOT NULL,
  `estatus` varchar(254) NOT NULL,
  `cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folio_venta`
--

CREATE TABLE `folio_venta` (
  `folio` varchar(254) NOT NULL,
  `vendedor` int(11) NOT NULL,
  `client` int(11) NOT NULL,
  `descuento` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `open` tinyint(1) NOT NULL,
  `cobrado` float DEFAULT NULL,
  `fecha_venta` datetime DEFAULT NULL,
  `cut` tinyint(1) DEFAULT '0',
  `sucursal` int(11) NOT NULL,
  `cut_global` int(11) NOT NULL DEFAULT '0',
  `iva` int(11) NOT NULL DEFAULT '0',
  `t_pago` varchar(254) NOT NULL DEFAULT 'Ninguno',
  `pedido` tinyint(1) NOT NULL DEFAULT '0',
  `folio_venta_ini` varchar(254) DEFAULT NULL,
  `cotizacion` tinyint(1) NOT NULL DEFAULT '0',
  `concepto` varchar(254) DEFAULT NULL,
  `comision_pagada` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `folio_venta`
--

INSERT INTO `folio_venta` (`folio`, `vendedor`, `client`, `descuento`, `fecha`, `open`, `cobrado`, `fecha_venta`, `cut`, `sucursal`, `cut_global`, `iva`, `t_pago`, `pedido`, `folio_venta_ini`, `cotizacion`, `concepto`, `comision_pagada`) VALUES
('120200225124240', 1, 3, 20, '2020-02-25 12:42:40', 0, 1902.4, '2020-02-25 12:44:44', 0, 1, 0, 16, 'efectivo', 0, '120200225124240', 0, NULL, 0),
('120200225124713', 1, 3, 20, '2020-02-25 12:47:13', 0, 9640.8, '2020-02-25 13:00:47', 0, 1, 0, 16, 'efectivo', 0, NULL, 0, NULL, 0),
('120200324031233', 1, 2, 1, '2020-03-24 03:12:33', 1, NULL, NULL, 0, 1, 0, 1, 'efectivo', 0, NULL, 0, NULL, 0),
('120200324031327', 1, 1, 0, '2020-03-24 03:13:27', 1, NULL, NULL, 0, 1, 0, 16, 'efectivo', 0, NULL, 0, NULL, 0),
('4220200224120034', 42, 3, 20, '2020-02-24 12:00:34', 0, 0, NULL, 0, 1, 0, 1, 'transferencia', 1, '4220200224120034', 0, NULL, 0),
('4220200224120809', 42, 3, 20, '2020-02-24 12:00:34', 0, 12631.2, '2020-02-24 12:08:09', 0, 1, 0, 1, 'transferencia', 1, '4220200224120034', 0, NULL, 0),
('4220200225130330', 42, 3, 20, '2020-02-25 13:03:30', 0, 12631.2, '2020-02-25 13:06:57', 0, 1, 0, 1, 'transferencia', 0, '4220200225130330', 0, NULL, 0),
('4220200302091230', 42, 3, 20, '2020-03-02 09:12:30', 0, 7051.2, '2020-03-02 09:16:36', 0, 1, 0, 1, 'transferencia', 0, '4220200302091230', 0, NULL, 0),
('4220200304093532', 42, 3, 10, '2020-03-04 09:35:32', 0, 81785.3, '2020-03-04 10:06:28', 0, 1, 0, 1, 'efectivo', 0, '4220200304093532', 0, NULL, 0),
('4220200309100030', 42, 3, 20, '2020-03-09 10:00:30', 1, 0, NULL, 0, 1, 0, 1, 'transferencia', 0, '4220200309100030', 1, NULL, 0),
('4220200312090818', 42, 3, 20, '2020-03-12 09:08:18', 1, 0, NULL, 0, 1, 0, 1, 'transferencia', 0, '4220200312090818', 1, NULL, 0),
('4220200312125720', 42, 4, 20, '2020-03-12 12:57:20', 1, 0, NULL, 0, 1, 0, 1, 'transferencia', 0, '4220200312125720', 1, NULL, 0),
('4220200312130620', 42, 4, 10, '2020-03-12 13:06:20', 0, 79293.2, '2020-03-12 13:39:57', 0, 1, 0, 1, 'transferencia', 0, '4220200312130620', 0, NULL, 0),
('4220200312161405', 42, 4, 10, '2020-03-12 16:14:05', 0, 63512, '2020-03-12 16:42:22', 0, 1, 0, 1, 'transferencia', 0, '4220200312161405', 0, NULL, 0),
('4220200313090910', 42, 4, 20, '2020-03-13 09:09:10', 1, 0, NULL, 0, 1, 0, 1, 'transferencia', 0, '4220200313090910', 1, NULL, 0),
('4220200313092217', 42, 4, 10, '2020-03-13 09:22:17', 0, 32700.1, '2020-03-13 09:35:17', 0, 1, 0, 1, 'transferencia', 0, '4220200313092217', 0, NULL, 0),
('4220200313101024', 42, 4, 10, '2020-03-13 10:10:24', 1, 0, NULL, 0, 1, 0, 1, 'transferencia', 0, '4220200313101024', 1, NULL, 0),
('4220200313110034', 42, 4, 10, '2020-03-13 11:00:34', 1, 0, NULL, 0, 1, 0, 1, 'transferencia', 0, '4220200313110034', 1, NULL, 0),
('5120200326173150', 51, 5, 0, '2020-03-26 17:31:50', 0, 780, '2020-03-26 17:33:20', 0, 3, 0, 1, 'efectivo', 0, '5120200326173150', 0, NULL, 0),
('5120200326174222', 51, 6, 0, '2020-03-26 17:42:22', 0, 780, '2020-03-26 17:43:14', 0, 3, 0, 1, 'efectivo', 0, '5120200326174222', 0, NULL, 0),
('5120200407125207', 51, 1, 0, '2020-04-07 12:52:07', 1, NULL, NULL, 0, 2, 0, 16, 'efectivo', 0, NULL, 0, NULL, 0),
('5120200407125535', 51, 5, 0, '2020-04-07 12:55:35', 0, 440, '2020-04-07 12:57:08', 0, 2, 0, 1, 'efectivo', 0, '5120200407125535', 0, NULL, 0),
('5120200407125849', 51, 5, 0, '2020-04-07 12:58:49', 1, 0, NULL, 0, 2, 0, 1, 'efectivo', 0, '5120200407125849', 1, NULL, 0),
('5120200407125904', 51, 5, 0, '2020-04-07 12:59:04', 0, 90, '2020-04-07 13:03:00', 0, 2, 0, 1, 'efectivo', 0, '5120200407125904', 0, NULL, 0),
('5220200326174702', 52, 4, 20, '2020-03-26 17:47:02', 0, 624, '2020-03-26 17:48:12', 0, 3, 0, 1, 'efectivo', 0, '5220200326174702', 0, NULL, 0),
('5220200326174843', 52, 3, 20, '2020-03-26 17:48:43', 0, 624, '2020-03-26 17:49:22', 0, 3, 0, 1, 'efectivo', 0, '5220200326174843', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `no. De parte` varchar(254) NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `descripcion` longtext NOT NULL,
  `almacen` int(11) NOT NULL,
  `departamento` int(11) NOT NULL,
  `loc_almacen` varchar(254) NOT NULL,
  `marca` varchar(254) NOT NULL,
  `proveedor` varchar(254) NOT NULL,
  `foto0` varchar(254) NOT NULL,
  `foto1` varchar(254) NOT NULL,
  `foto2` varchar(254) NOT NULL,
  `foto3` varchar(254) NOT NULL,
  `oferta` tinyint(1) NOT NULL DEFAULT '0',
  `precio_normal` float NOT NULL DEFAULT '0',
  `precio_oferta` float NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL,
  `tiempo de entrega` varchar(254) NOT NULL,
  `stock_min` int(11) NOT NULL,
  `stock_max` int(11) NOT NULL,
  `precio_costo` float NOT NULL DEFAULT '0',
  `cv` varchar(254) NOT NULL DEFAULT '01010101',
  `um` varchar(254) NOT NULL DEFAULT 'H87',
  `um_des` varchar(254) NOT NULL DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `no. De parte`, `nombre`, `descripcion`, `almacen`, `departamento`, `loc_almacen`, `marca`, `proveedor`, `foto0`, `foto1`, `foto2`, `foto3`, `oferta`, `precio_normal`, `precio_oferta`, `stock`, `tiempo de entrega`, `stock_min`, `stock_max`, `precio_costo`, `cv`, `um`, `um_des`) VALUES
(2, '710779560383', 'LABRADA 100% WHEY PROTEIN POWDER CHOCOLATE 4.13lb. (1875g) ', '4.13lb. (1875g) CHOCOLATE', 3, 1, 'VIRREY DE MENDOZA 528', 'LABRADA', '', '', '', '', '', 0, 689, 610, 2, '', 10, 100, 529.72, '01010101', 'H87', 'PIEZA'),
(4, '710779560376', 'LABRADA 100% WHEY PROTEIN POWDER VANILLA 4.13lb. (1875g)', '4.13 lb. (1875g) VANILLA', 3, 1, 'Virrey de Mendoza 528', 'LABRADA', '', '', '', '', '', 0, 689, 610, 2, '', 10, 100, 539.72, '01010101', 'H87', 'PIEZA'),
(8, '631656709568', 'NITROTECH RIPPED 4 LBS CHOCOLATE FUDGE', 'CHOCOLATE 4 LBS', 3, 1, 'VIRREY DE MENDOZA 528', 'MUSCLETECH', 'ATOMOZ', '', '', '', '', 0, 1038, 918, 20, '', 3, 25, 798, '', 'H87', 'PZA'),
(9, '631656709612', 'NITROTECH 10 LBS CHOCOLATE', 'COSTAL 10 LBS MUSCLETECH', 3, 1, 'VIRREY DE MENDOZA 528\r\n\r\n', 'MUSCLETECH', '', '', '', '', '', 0, 1631, 1443, 2, '', 3, 10, 1254, '', 'H87', 'PIEZA'),
(11, '089094022310', 'ISOPURE WITH COFFE 3.3 LB COLOMBIAN', 'NATUREST BETS 3.3 LB SABOR COLOMBIAN COFEE', 3, 1, '', 'NATURES BETS', '', '', '', '', '', 0, 991, 876, 2, '', 3, 10, 761.67, '01010101', 'H87', 'PIEZA'),
(12, '089094021153', 'ISOPURE ZERO 3.3 LBS VANILLA', 'NATURES BEST VAINILLA 3.3 LBS', 3, 1, 'VIRREY DE MENDOZA 528', 'NATURES BETS', 'ATOMOZ', '', '', '', '', 0, 991, 876, 2, '', 3, 20, 761.67, '', 'H87', 'PIEZA'),
(13, '089094021559', 'ISOPURE ZERO CARB 7.5 LBS STRAWBERRY', 'CUBETA INSOPURE ZERO 7.5 lb FRESA', 3, 1, 'VIRREY DE MENDOZA 528', 'NATURE BEST', '', '', '', '', '', 0, 1771.83, 2, 2, '', 3, 10, 1, '01010101', 'H87', 'PZA'),
(14, '857084000569', 'LIPODRENE 100 CT', 'LIPODRENE 100 PASTILLAS ', 3, 1, 'VIRREY DE MENDOZA 528', 'HI-TECH', 'ATOMOZ', '', '', '', '', 0, 519, 458.85, 6, '', 3, 12, 399, '01010101', 'H87', 'PIEZA'),
(15, '859613648884', 'NITRAFLEX 30 SER MANZANA ', 'NITRAFLEX MANZANA VERDE 30 SERVICIOS ', 3, 1, '', 'GAT', 'ATOMOZ', '', '', '', '', 0, 577, 509.98, 4, '', 3, 10, 443.46, '01010101', 'H87', 'PZA'),
(16, 'ARVEN', 'STANOZOLOL 50MG', 'ARVEN VIAL', 3, 1, 'Virrey de Mendoza 528', 'ARVEN', '', '', '', '', '', 0, 600, 600, 1, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(17, 'OMEGA', 'ALPHASTAN 10MG', 'ALPHASTAN 10MG', 3, 1, 'VIRREY DE MENDOZA 528', 'OMEGA', '', '', '', '', '', 0, 600, 600, 4, '', 10, 30, 0, '', 'H87', 'PIEZA'),
(18, 'ARVEN', 'SUSTANON 250MG', 'ARVEN VIAL', 3, 1, 'Virrey de Mendoza 528', 'ARVEN', 'ARVEN', '', '', '', '', 0, 600, 600, 3, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(22, 'OMEGA', 'ALPHANAVAR 10MG', 'ALPHANAVAR DE 10MG', 3, 1, 'Virrey de Mendoza 528', 'OMEGA', '', '', '', '', '', 0, 600, 600, 6, '', 10, 30, 0, '', 'H87', 'PIEZA'),
(23, 'OMEGA', 'ALPHANABOL 20MG', 'ALPHANABOL DE 20MG', 3, 1, 'Virrey de Mendoza 528', 'OMEGA', '', '', '', '', '', 0, 600, 600, 5, '', 10, 30, 0, '', 'H87', 'PIEZA'),
(24, 'ARVEN', 'TESTOSTERONE PROPIONATE 100MG', 'ARVEN VIAL', 3, 1, 'Virrey de Mendoza 528', 'ARVEN', '', '', '', '', '', 0, 600, 600, 3, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(25, 'OMEGA', 'ALPHANADROL', 'ALPHANADROL', 3, 1, 'Virrey de Mendoza 528', 'OMEGA', '', '', '', '', '', 0, 600, 600, 1, '', 10, 30, 0, '', 'H87', 'PIEZA'),
(26, 'ARVEN', 'BOLDENONE 200MG', 'BOLDENONE 200MG', 3, 1, 'Virrey de Mendoza 528', 'ARVEN', 'ARVEN', '', '', '', '', 0, 600, 600, 4, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(27, 'OMEGA', 'TENBOL 75MG', 'TRENBOL 75MG', 3, 1, 'Virrey de Mendoza 528', 'OMEGA', '', '', '', '', '', 0, 600, 600, 3, '', 10, 30, 0, '', 'H87', 'PIEZA'),
(28, 'ARVEN', 'DECANOATE 200 MG', 'DECANOATE 200 MG', 3, 1, 'Virrey de Mendoza 528', 'ARVEN', 'ARVEN', '', '', '', '', 0, 600, 600, 5, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(29, 'OMEGA', '4TEST 250MG', '4TEST DE 250MG', 3, 1, 'Virrey de Mendoza 528', 'OMEGA', '', '', '', '', '', 0, 600, 600, 2, '', 10, 30, 0, '', 'H87', 'PIEZA'),
(30, 'ARVEN', 'CLENBUTEROL 0.02MG', 'CLENBUTEROL 0.02MG', 3, 1, 'Virrey de Mendoza 528', 'ARVEN', 'ARVEN', '', '', '', '', 0, 600, 600, 5, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(31, 'OMEGA', 'BOLDEBOLD 200MG', 'BOLDEBOLD DE 200MG', 3, 1, 'Virrey de Mendoza 528', 'OMEGA', '', '', '', '', '', 0, 600, 600, 2, '', 10, 30, 0, '', 'H87', 'PIEZA'),
(32, 'ARVEN', 'STANOZOLOL 10MG ', 'ARVEN VIAL', 3, 1, 'Virrey de Mendoza 528', 'ARVEN', 'ARVEN', '', '', '', '', 0, 600, 600, 2, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(33, 'ARVEN', 'ANADROL 50MG ', 'ARVEN VIAL', 3, 1, 'Virrey de Mendoza 528', 'ARVEN', 'ARVEN', '', '', '', '', 0, 600, 600, 2, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(34, 'ARVEN', 'DIANABOL 10 MG', 'ARVEN VIAL', 3, 1, 'Virrey de Mendoza 528', 'ARVEN', 'ARVEN', '', '', '', '', 0, 600, 600, 3, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(35, 'EUROLAB', 'WINNY 100', 'WINNY100', 3, 1, 'Virrey de Mendoza 528', 'EUROLAB', '', '', '', '', '', 0, 820, 820, 8, '', 3, 20, 0, '', 'H87', 'PIEZA'),
(36, 'ARVEN', 'ANAVAR 10 MG', 'ARVEN VIAL', 3, 1, 'Virrey de mendoza 528', 'ARVEN', 'ARVEN', '', '', '', '', 0, 600, 600, 3, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(37, 'EUROLAB', 'WINNY PRO', 'WINNYPRO', 3, 1, 'Virrey de Mendoza 528', 'EUROLAB', '', '', '', '', '', 0, 1000, 1000, 2, '', 3, 20, 0, '', 'H87', 'PIEZA'),
(38, 'ROTTEDAM', 'ANAVAR', 'ANAVAR', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 13, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(39, 'BULL PHARMA', 'ANASTROBULL 1MG', 'BULL PHARMA  VIAL', 3, 1, 'Virrey de Mendoza 528', 'BULL PHARMA ', 'BULL PHARMA ', '', '', '', '', 0, 600, 600, 3, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(40, 'ROTTEDAM', 'ANABOL', 'ANABOL', 3, 1, 'Virrey de mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 17, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(41, 'MEDICAL PRO', 'CYPIO PRO 300', 'MEDICAL PRO ', 3, 1, 'Virrey de Mendoza 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 3, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(42, 'ROTTEDAM', 'ANADROL', 'ANADROL', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 14, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(43, 'MEDICAL PRO', 'DIANA PRO 50', 'MEDICAL PRO ', 3, 1, 'Virrey de Mendoza 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 2, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(44, 'ROTTEDAM', 'WINSTROL', 'WINSTROL', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 15, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(45, 'MEDICAL PRO', 'ENAN PRO 300', 'MEDICAL PRO', 3, 1, 'Virrey de Mendoza 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 3, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(46, 'MEDICAL PRO', 'MASTE PRO 100', 'MEDICAL PRO', 3, 1, 'Virrey de Mendoza 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 1, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(47, 'MEDICAL PRO', 'SUSTA PRO 300', 'MEDICAL PRO', 3, 1, 'VIRREY DE MENDOZA 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 3, '', 10, 50, 0, '01010101', 'H87', 'PZA'),
(48, 'ROTTEDAM', 'SPIROPENT', 'SPIROPENT', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 12, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(49, 'MEDICAL PRO', 'PRIMO PRO 100', 'MEDICAL PRO ', 3, 1, 'Virrey de Mendoza 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 2, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(50, 'ROTTEDAM', 'PARABOLAN 100', 'PARABOLAN100', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 12, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(51, 'ROTTEDAM', 'TEXTEX 100 ', 'TEXTEX 100', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 16, '', 5, 30, 0, '01010101', 'H87', 'PIEZA'),
(52, 'MEDICAL PRO', 'TREMBO PRO 100', 'MEDICAL PRO ', 3, 1, 'Virrey de Mendoza 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 2, '', 10, 50, 0, '01010101', 'H87', 'PIEZA'),
(54, 'ROTTEDAM', 'TESTOVIRON 250', 'TESTOVIRON 250', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 15, '', 0, 0, 0, '', 'H87', 'PIEZA'),
(55, 'MEDICAL PRO', 'TESTO BLEND PRO 400', 'MEDICAL PRO ', 3, 1, 'VIRREY DE MENDOZA 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 3, '', 10, 50, 0, '01010101', 'H87', 'PZA'),
(56, 'ROTTEDAM', 'PRIMOBOLAN 100', 'PRIMOBOLAN 100', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 15, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(57, 'MEDICAL PRO', 'BOLDE PRO 200', 'MEDICAL PRO ', 3, 1, 'Virrey de Mendoza528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 3, '', 10, 50, 0, '', 'H87', 'PIEZA'),
(58, 'ROTTEDAM', 'ANABOL 50', 'ANABOL 50', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 6, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(59, 'MEDICAL PRO ', 'DECA PRO 300', 'MEDICAL PRO', 3, 1, 'VIRREY DE MENDOZA 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 2, '', 10, 50, 0, '01010101', 'H87', 'PZA'),
(60, 'ROTTEDAM', 'AQCUAVIRON', 'AQCUAVIRON', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 5, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(61, 'ROTTEDAM', 'LEBIDO', 'LEBIDO', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 6, '', 0, 0, 0, '', 'H87', 'PIEZA'),
(62, 'ROTTEDAM', 'AQCUAWINN', 'AQCUAWINN', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 18, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(63, 'ROTTEDAM', 'DURATESTON 350', 'DURASTESTON350', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 7, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(64, 'ROTTEDAM', 'MASTERON 100', 'MASTERON 100', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 6, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(65, 'ROTTEDAM', 'NANDRO 300', 'NANDRO 300', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 11, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(66, 'ROTTEDAM', 'DEPOSTERON 250', 'DEPOSTERON 250', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 6, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(68, 'ROTTEDAM', 'NANOBOLDE 200', 'NANOBOLDE 200', 3, 1, 'Virrey de Mendoza 258', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 15, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(69, 'ROTTEDAM', 'FINAJET 100', 'FINAJET 100', 3, 1, 'Virrey de Mendoza 528', 'ROTTEDAM', '', '', '', '', '', 0, 800, 800, 1, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(70, 'OMEGA', 'DECABOLD 300MG', 'DECABOLD300MG', 3, 1, 'Virrey de Mendoza 528', 'OMEGA', '', '', '', '', '', 0, 600, 600, 1, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(71, 'OMEGA', 'PRIMOBOLD 100MG', 'PRIMOBOLD100MG', 3, 1, 'Virrey de Mendoza 528', 'OMEGA', '', '', '', '', '', 0, 600, 600, 2, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(72, 'OMEGA', 'StanOil 100MG', 'STANOIL 100MG', 3, 1, 'Virrey de Mendoza 528', 'OMEGA', '', '', '', '', '', 0, 600, 600, 2, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(73, 'PROCHOICE', 'MAXX CUTBLEND 300', 'MAXX CUTBLEND 300', 3, 1, 'VIRREY DE MENDOZA 528', 'PROCHOICE', '', '', '', '', '', 0, 1750, 1750, 0, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(74, 'PROCHOICE', 'MAXX BULK BLEND 500', 'MAXX BULK BLEND 500', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE', '', '', '', '', '', 0, 1699, 1699, 1, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(75, 'PROCHOICE', 'MASTERON 100', 'MASTERON 100', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE', '', '', '', '', '', 0, 1049, 1049, 4, '', 5, 30, 0, '01010101', 'H87', 'PIEZA'),
(76, 'PROCHOICE', 'TENT PROPIONATE 100', 'TEST PROPIONATE 100', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 849, 849, 2, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(77, 'PROCHOICE', 'WINSTROL 50', 'WINSTROL 50', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 949, 949, 0, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(78, 'PROCHOICE PHARMA', 'BOLDENONE 300', 'BOLDENONE 300', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 1049, 1049, 3, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(79, 'PROCHOICE PHARMA', 'TEST ENANTHATE 300', 'TEST ENANTHATE 300', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 949, 949, 3, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(80, 'PROCHOICE PHARMA', 'TREN ACETATE 100', 'TREN ACETATE 100', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 1299, 1299, 4, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(81, 'PROCHOICE PHARMA', 'SUSTANONE 250', '', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 949, 949, 2, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(82, 'PROCHOICE PHARMA', 'TREN ENANTHATE 200', 'TREN ENANTHATE 200', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 949, 949, 4, '', 5, 30, 0, '', 'H87', 'PIEZA'),
(83, 'PROCHOICE PHARMA', 'TEST CYPIONATE 250', 'TEST CYPIONATE 250', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 949, 949, 3, '', 3, 30, 0, '', 'H87', 'PIEZA'),
(85, 'PROCHOICE', 'H20 TEST 50', 'H20 TEST 50', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 949, 949, 3, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(86, 'PROCHOICE PHARMA', 'ANADROL 50MG ', 'ANADROL 50MG', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 1399, 1399, 4, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(87, 'PROCHOICE PHARMA', 'PROVIRON 25MG', 'PROVIRON25MG', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 1149, 1149, 5, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(88, 'MEDICAL PRO', 'WINS PRO 100', 'WINTROL MEDICAL PRO ', 3, 1, 'Virrey de Mendoza 528', 'MEDICAL PRO', '', '', '', '', '', 0, 600, 600, 2, '', 10, 50, 0, '01010101', 'H87', 'PIEZA'),
(89, 'PROCHOICE PHARMA', 'CLOMID 50MG', 'CLOMID 50MG', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 899, 899, 4, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(90, 'PROCHOICE PHARMA', 'AROMASIN 12.5MG', 'AROMASIN 12.5MG', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 949, 949, 4, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(91, 'PROCHOICE PHARMA', 'PRIMOBOLAN 10MG', 'PRIMOBOLAN 10MG', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 1399, 1399, 3, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(92, 'PROCHOICE PHARMA', 'DIANABOL 25MG', 'DIANABOL 25MG', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 1399, 1399, 4, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(93, 'PROCHOICE PHARMA', 'ANAVAR 10MG', 'ANAVAR DE 10 mg', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 1399, 1399, 1, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(94, 'PROCHOICE PHARMA', 'TURINABOL 10MG', 'TURINABOL 10MG', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 1399, 1399, 1, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(95, 'MEDICAL PRO', 'PROPIO PRO 100', 'PROPIO PRO 100', 3, 1, 'Virrey de Mendoza 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 3, '', 10, 50, 0, '01010101', 'H87', 'PZA'),
(96, 'EUROLAB', 'SUSTA 350', 'SUSTA 350', 3, 1, 'Virrey de Mendoza 528', 'EUROLAB', '', '', '', '', '', 0, 820, 820, 2, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(97, 'EUROLAB', 'DECA 300', 'DECA 300', 3, 1, 'Virrey de Mendoza 528', 'EUROLAB', '', '', '', '', '', 0, 820, 820, 4, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(98, 'MEDICAL PRO', 'CLEMBU PRO 20 MG', 'CLEMBU PRO MEDICAL PRO ', 3, 1, 'Virrey de Mendoza 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 1, '', 10, 50, 0, '01010101', 'H87', 'PZA'),
(99, 'EUROLAB', 'TESTO-C 350', 'TESTO C 350', 3, 1, 'Virrey de Mendoza 528', 'EUROLAB', '', '', '', '', '', 0, 820, 820, 8, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(102, 'EUROLAB', 'CUT PRO 400', 'CUT PRO 400', 3, 1, 'Virrey de Mendoza 528', 'EUROLAB', '', '', '', '', '', 0, 900, 900, 1, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(103, 'MEDICAL PRO', 'TAMOX PRO 20MG', 'TAMOX PRO 20MG MEDICAL PRO', 3, 1, 'Virrey de Mendoza 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 2, '', 10, 50, 0, '01010101', 'H87', 'PZA'),
(104, 'EUROLAB', 'PRIMO 100', 'PRIMO 100', 3, 1, 'Virrey de Mendoza 528', 'EUROLAB', '', '', '', '', '', 0, 820, 820, 6, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(105, 'MEDICAL PRO ', 'OXA PRO 10MG', 'OXA PRO 10MG MEDICAL PRO', 3, 1, 'VIRREY DE MENDOZA 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 1, '', 10, 50, 0, '01010101', 'H87', 'PZA'),
(106, 'EUROLAB', 'TESTO-S 100', 'TESTO-S 100', 3, 1, 'Virrey de Mendoza 528', 'EUROLAB', '', '', '', '', '', 0, 950, 950, 3, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(107, 'EUROLAB', 'TESTO-P 100', 'TESTO-P 100', 3, 1, 'Virrey de Mendoza 528', 'EUROLAB', '', '', '', '', '', 0, 820, 820, 8, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(108, 'MEDICAL PRO', 'OXI PRO 50 MG', 'OXI PRO 10 MG MEDICAL PRO', 3, 1, 'VIRREY DE MENDOZA 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 1, '', 10, 50, 0, '01010101', 'H87', 'PZA'),
(109, 'MEDICAL PRO', 'ANASTRO PRO 10 MG', 'ANASTRO PRO MEDICAL PRO ', 3, 1, 'VIRREY DE MENDOZA 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 1, '', 10, 50, 0, '01010101', 'H87', 'PZA'),
(110, 'EUROLAB', 'DIANA 100', 'DIANA 100', 3, 1, 'Virrey de Mendoza 528', 'EUROLAB', '', '', '', '', '', 0, 820, 820, 5, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(111, 'MEDICAL PRO', 'WINS PRO 20MG', 'WINS PRO MEDICAL PRO', 3, 1, 'Virrey de Mendoza 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 2, '', 10, 50, 0, '01010101', 'H87', 'PIEZA'),
(112, 'EUROLAB', 'BOLDENON 300', 'BOLDENON 300', 3, 1, 'Virrey de Mendoza 528', 'EUROLAB', '', '', '', '', '', 0, 820, 820, 7, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(113, 'MEDICAL PRO', 'PROVI PRO 25MG', 'PROVI PRO 2 MG MEDICAL PRO', 3, 1, 'Virrey de Mendoza 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 2, '', 10, 50, 0, '01010101', 'H87', 'PZA'),
(114, 'MEDICAL PRO', 'DIANA PRO 20MG', 'DIANA PRO 20MG MEDICAL PRO', 3, 1, 'Virrey de Mendoza 528', 'MEDICAL PRO', 'MEDICAL PRO', '', '', '', '', 0, 600, 600, 1, '', 10, 50, 0, '01010101', 'H87', 'PZA'),
(115, 'EUROLAB', 'TESTO 500', 'TESTO 500', 3, 1, 'Virrey de Mendoza 528', 'EUROLAB', '', '', '', '', '', 0, 820, 820, 2, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(116, 'EUROLAB', 'PRE-WORKOUT 100', 'PRE-WORKOUT 100', 3, 1, 'Virrey de Mendoza 528', 'EUROLAB', '', '', '', '', '', 0, 820, 820, 2, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(117, 'EUROLAB', 'TREN-A 100', 'TREN-A 100', 3, 1, 'Virrey de Mendoza 528', 'EUROLAB', '', '', '', '', '', 0, 820, 820, 4, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(118, 'PROCHOICE PHARMA', 'NPP 100', 'NPP 100', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 1049, 1049, 1, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(119, 'PROCHOICE PHARMA', 'HALOTESTI 10MG', 'HALOTESTI 10MG', 3, 1, 'Virrey de Mendoza 528', 'PROCHOICE PHARMA', '', '', '', '', '', 0, 1399, 1399, 4, '', 2, 30, 0, '01010101', 'H87', 'PIEZA'),
(120, 'BESTLABS', 'TESTOSTERONE P100', 'TESTOSTERONE P100', 3, 1, 'Virrey de Mendoza 528', 'BESTLABS', '', '', '', '', '', 0, 970, 970, 5, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(121, 'BESTLABS', 'TESTOSTERONE E300', 'TESTOSTERONE E300', 3, 1, 'Virrey de Mendoza 528', 'BESTLABS', '', '', '', '', '', 0, 970, 970, 1, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(122, 'BESTLABS', 'TESTOSTERONE E300', 'TESTOSTERONE E300', 3, 1, 'Virrey de Mendoza 528', 'BESTLABS', '', '', '', '', '', 0, 970, 970, 1, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(123, 'BESTLABS', 'Testosterone C250', 'TESTOSTERONE C250', 3, 1, 'Virrey de Mendoza 528', 'BESTLABS', '', '', '', '', '', 0, 970, 970, 1, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(124, 'BESTLABS', 'WINSTROL 100', 'WINSTROL 100', 3, 1, 'Virrey de Mendoza 528', 'BESTLABS', '', '', '', '', '', 0, 990, 990, 4, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(125, 'BESTLABS', 'TRENB 100', 'TRENB 100', 3, 1, 'Virrey de Mendoza 528', 'BESTLABS', '', '', '', '', '', 0, 1190, 1190, 7, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(126, 'BESTLABS', 'DECA DURABOLIN 300', 'DECA DURABOLIN 300', 3, 1, 'Virrey de Mendoza 528', 'BESTLABS', '', '', '', '', '', 0, 980, 980, 4, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(127, 'BESTLABS', 'SUSTANON 350', 'SUSTANON 350', 3, 1, 'Virrey de Mendoza 528', 'BESTLABS', '', '', '', '', '', 0, 970, 970, 8, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(128, 'BESTLABS', 'PRIMOBOLAN D100', 'PRIMOBOLAN D100', 3, 1, 'Virrey de Mendoza 528', 'BESTLABS', '', '', '', '', '', 0, 1250, 1250, 6, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(129, 'BESTLABS', 'MASTERON 100', 'MASTERON 100', 3, 1, 'Virrey de Mendoza 528', 'BESTLABS', '', '', '', '', '', 0, 970, 970, 3, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(130, 'BESTLABS', 'OXANDROBEST 10', 'OXANDROBEST 10', 3, 1, 'Virrey de Mendoza 528', 'BESTLABS', '', '', '', '', '', 0, 870, 870, 7, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(131, 'BESTLABS', 'CLAMBUBEST 40', 'CLAMBUBEST 40', 3, 1, 'Virrey de Mendoza 528', 'BESTLABS', '', '', '', '', '', 0, 750, 750, 8, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(132, 'BESTLABS', 'OXIBEST 50', 'OXIBEST', 3, 1, 'Virrey de Mendoza 528', 'BESTLABS', '', '', '', '', '', 0, 810, 810, 1, '', 3, 30, 0, '01010101', 'H87', 'PIEZA'),
(133, '631656603361', 'HYDROXYCUT ELITE 100CT', 'MUSCLETECH CAPSULAS PARA PERDER MASA GRASA', 3, 1, 'VIRREY DE MENDOZA 528', 'MUSCLETECH', 'PALAFOOX', '', '', '', '', 0, 252.24, 2, 228, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(134, '631656710489', 'NITROTECH 100%WHEY GOLD COOKIES AND CREAM 5.51 LB', 'PROTEÍNA SUERO LECHE 5.5LB', 3, 1, 'VIRREY DE MENDOZA 528', 'MUSCLETECH', 'PALAFOOX', '', '', '', '', 0, 858.85, 2, 46, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(135, '631656710496', 'NITROTECH 100%WHEY GOLD DOUBLE RICH CHOCOLATE 5.53 LB', 'PROTEÍNA DE SUERO DE LECHE ', 3, 1, 'VIRREY DE MENDOZA 614', 'MUSCLETECH', 'PALAFOOX', '', '', '', '', 0, 858.58, 2, 38, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(136, '631656710519', 'NITROTECH 100%WHEY FRENCH VAINILLA 5.53 LB', 'PROTEINA DE SUERO LECHE 5.5LB ', 3, 1, 'VIRREY DE MENDOZA 528', 'MUSCLETECH', 'PALAFOOX', '', '', '', '', 0, 858.58, 2, 56, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(138, '631656703290', 'NITROTECH 4LB VAINILLA', 'SUREO DE LECHE DE 4LB', 3, 1, 'VIRREY DE MENDOZA 528', 'MUSCLETECH', 'PALAFOOX', '', '', '', '', 0, 738, 2, 110, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(139, '705016331505', 'SUPER MASS GAINER VAINILLA 12 LB', 'GANADOR DE MASA MUSCULAR DE 12 LB', 3, 1, 'VIRREY DE MENDOZA 528', 'DYMATIZE', 'PALAFOOX', '', '', '', '', 0, 793.63, 2, 18, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(140, '748927028669', '100%WHEY GOLD DOUBLE RICH CHOCOLATE 5LB', 'SUERO DDE LECHE DE 5LB', 3, 1, 'VIRREY DE MENDOZA 528', 'OPTIMUM NUTRITION ', 'PALAFOOX', '', '', '', '', 0, 947.94, 885, 46, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(141, '748927024142', '100 %WHEY GOLD  EXTREME MILK CHOCOLATE 5LB', 'PROTEINA SUERO DE LECHE DE 5B ', 3, 1, 'VIRREY DE MENDOZA 528', 'OPTIMUM NUTRITION ', 'PALAFOOX', '', '', '', '', 0, 947.94, 2, 110, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(142, '748927029574', '100 %WHEY GOLD BANANA CEAM 5LB', 'PROTEINA DE SUERO DE LECHE DE 5LB', 3, 1, 'VIRREY DE MENDOZA 528', 'OPTIMUM NUTRITION ', 'PALAFOOX', '', '', '', '', 0, 947.94, 2, 110, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(143, '748927026450', '100 %WHEY GOLD CAKE BATTER 5LB', 'PROTEINA SUERO DE LECHE DE 5LB ', 3, 1, 'VIRREY DE MENDOZA 528', 'OPTIMUM NUTRITION ', 'PALAFOOX', '', '', '', '', 0, 947.94, 2, 111, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(145, '748927028683', '100 %WHEY GOLD GF C&C 5LB', 'SUERO DE LECHE DE 5 LB', 3, 1, 'VIRREY DE MENDOZA 528', 'OPTIMUM NUTRITION ', 'PALAFOOX', '', '', '', '', 0, 947.94, 2, 111, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(146, '748927026290', '100 %WHEY GOLD WHITE CHOCOLATE  5LB', 'PROTEINA SUERO DE LECHE DE 5LB', 3, 1, 'VIRREY DE EMNDOZA 528', 'OPTIMUM NUTRITION ', 'PALAFOOX', '', '', '', '', 0, 947.94, 2, 112, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(147, '748927023190', 'AMINO ENERGY BLUE RASPBERRY 1.29 LBS 65 SER', 'AMINOACIDOS CON 65 SERVICOS 1.29 LBS', 3, 1, 'VIRREY DE MENDOZA 528', 'OPTIMUM NUTRITION ', 'PALAFOOX', '', '', '', '', 0, 596.76, 2, 10, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(148, '748927023374', 'AMINO ENERGY FRUIT FUSION 1.29 LBS 65 SER', 'AMINO ÁCIDOS CON 65 SERVICIOS ', 3, 1, 'VIRREY DE MENDOZA 528', 'OPTIMUM NUTRITION ', 'PALAFOOX', '', '', '', '', 0, 596.76, 2, 16, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(149, '748927055351', 'AMINO ENERGY GREE APPLE 1.29 LBS 65 SER', 'AMINO ÁCIDOS CON 65 SERVICIOS', 3, 1, 'VIRREY DE MENDOZA 528', 'OPTIMUM NUTRITION ', 'PALAFOOX', '', '', '', '', 0, 596.76, 2, 16, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(150, '748927051308', 'AMINO ENERGY WATER MELON 1.29 LBS 65 SER', 'AMINO ÁCIDOS CON 65 SER', 3, 1, 'VIRREY DE EMNDOZA 528', 'OPTIMUM NUTRITION ', 'PALAFOOX', '', '', '', '', 0, 596.76, 2, 16, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(151, '834266003389', 'AMINO X BLUE RASPBERRY 30 SER', 'AMINO ÁCIDOS CON 30 SERVICIOS', 3, 1, 'VIRREY DE MENDOZA 528', 'BSN ', 'PALAFOOX', '', '', '', '', 0, 301.46, 2, 0, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(152, '834266063383', 'AMINO X BLUE RASPBERRY 70 SER', 'AMINO ÁCIDOS CON 70 SERVICIOS', 3, 1, 'VIRREY DE MENDOZA 528', 'BSN ', 'PALAFOOX', '', '', '', '', 0, 621.37, 2, 16, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(153, '834266004225', 'AMINO X STRAWBERRY ORANGE 70 SER', 'AMINO ACIDOS CON 70 SERVICIOS', 3, 1, 'VIRREY DE MENDOZA 528', 'BSN ', 'PALAFOOX', '', '', '', '', 0, 621.37, 2, 10, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(154, '089094021535', 'ISOPURE ZERO CARB CHOCOLATE 7.5 LB', 'PROTEINA ZERO CARBOHIDRATOS 7.5LB', 3, 1, 'VIRREY DE MENDOZA 528', 'NATURES BETS', 'PALAFOOX', '', '', '', '', 0, 1771.83, 1639, 6, '', 10, 50, 1424.81, '01010101', 'H87', 'PZA'),
(155, '089094021573', 'ISOPURE ZERO C&C 7.5 LB', 'PROTEINA CERO CAHBOHIDRATOS 75 LB', 3, 1, 'VIRREY DE MENDOZA 528', 'NATURES BETS', 'PALAFOOX', '', '', '', '', 0, 1771.83, 1480, 6, '', 10, 50, 1424.81, '01010101', 'H87', 'PZA'),
(156, '705016331529', 'SUPER MASS GAINER CHOCOLATE 12 LB', 'GANADOR DE MASA MUSCULAR DE 12 LB', 3, 1, 'VIRREY DE MENDOZA 528', 'DYMATIZE', 'PALAFOOX', '', '', '', '', 0, 793.63, 2, 94, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(157, '688397792465', 'HYSTERICAL NEUROTIC 300G SER FRUIT PUNCH', 'PRE ENTRENAMINETO  CON 300', 3, 1, 'VIRREY DE MENDOZA 528', 'SCIENCE LABS', 'PALAFOOX', '', '', '', '', 0, 258.39, 2, 128, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(158, '688397792472', 'HYSTERICAL NEUROTIC 300G SER GRAPE', 'PRE ENTRENAMIENTO CON 300 GR', 3, 1, 'VIRREY DE MENDOZA 528', 'SCIENCE LABS', 'PALAFOOX', '', '', '', '', 0, 258.39, 2, 128, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(160, '688397792489', 'HYSTERICAL NEUROTIC 300G SER COTTON CANDY', 'PRE ENTRENAMIENTO CON 300 GR ', 3, 1, 'VIRREY DE MENDOZA 528', 'SCIENCE LABS', 'PALAFOOX', '', '', '', '', 0, 258.39, 2, 128, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(162, '688397792496', 'HYSTERICAL NEUROTIC 300G SER WATERMELON ', 'PRE ENTRENAMIENTO CON 300 GR', 3, 1, 'VIRREY DE MENDOZA 528', 'SCIENCE LABS', 'PALAFOOX', '', '', '', '', 0, 258.39, 2, 128, '', 10, 50, 1, '01010101', 'H87', 'PZA'),
(164, '631656709575', 'NITROTECH RIPPED FRENCH VANILLA 4 LBS', '', 3, 1, 'Virrey de mendoza 528', 'MUSCLETECH', '', '', '', '', '', 0, 1038, 830.4, 52, '', 0, 0, 798, '01010101', 'H87', 'PIEZA'),
(165, 'GABSO12164700', 'GEL ANTIBACTERIAL SIN OLOR NI COLOR', 'GEL ANTIBACTERIAL DE TRAPEZA SIN OLOR NI COLOR', 4, 1, 'BODEGA 8', 'TRAPEZA', 'TRAPEZA', '', '', '', '', 0, 78, 75, 400, '', 10, 500, 60, '01010101', 'H87', 'PIEZA'),
(166, 'GABSO12164700', 'GEL ANTIBACTERIAL SIN OLOR NI COLOR', 'GEL ANTIBACTERIAL DE TRAPEZA SIN OLOR NI COLOR', 4, 1, 'BODEGA 8', 'TRAPEZA', 'TRAPEZA', '', '', '', '', 0, 78, 75, 360, '', 10, 500, 60, '01010101', 'H87', 'PIEZA'),
(167, '7501035012028', 'TEQUILA JOSE CUERVO TRADICIONAL REPOSADO 695 ML', 'UNA BOTELLA DE JOSE CUERVO TRADICIONAL REPOSADO  695ML', 2, 1, 'BODEGA -7', 'TEQUILA JOSE CUERVO TRADICIONAL', '', '', '', '', '', 0, 253.04, 270, 149, '', 50, 500, 218.15, '50202206', 'H87', 'PIEZA'),
(168, '7501035013483', 'TEQUILA CRISTALINO AÑEJO 1800 700ML', 'UNA BOTELLA TEQUILA RESERVA CRISTALINO 1800 700ML', 2, 1, 'BODEGA -7', '1800 CRISTALINO', '', '', '', '', '', 0, 559.3, 600, 106, '', 50, 500, 482.15, '50202206', 'H87', 'PIEZA'),
(169, '7501048840205', 'GRAN CENTENARIO AZUL 700ML', 'TEQUILA  GRAN CENTENARIO AZUL  700ML', 2, 1, 'BODEGA -7', 'GRAN CENTENARIO AZUL', '', '', '', '', '', 0, 452.08, 500, 24, '', 50, 500, 389.72, '50202206', 'H87', 'PIEZA'),
(170, '7501048810307', 'CENTENARIO PLATA 700ML', 'UNA BOTELLA DE GRAN CENTENARIO PLATA DE 700ML', 2, 1, 'BODEGA -7', '', '', '', '', '', '', 0, 232.34, 270, 342, '', 50, 500, 200.29, '50202206', 'H87', 'PIEZA'),
(171, '744607003551', 'TEQUILA HERRADURA ULTRA AÑEJO 750ML', 'UNA BOTELLA DE TEQUILA HERRADURA ULTRA AÑEJO DE 750 ML', 2, 1, 'BODEGA 7', 'HERRADURA', '', '', '', '', '', 0, 608.03, 660, 52, '', 50, 500, 524.16, '50202206', 'H87', 'PIEZA'),
(173, '7501048810208', 'TEQUILA GRAN CENTENARIO REPOSADO DE 700ML', 'UNA BOTELLA DE TEQUILA GRAN CENTENARIO REPOSADO DE 700ML', 2, 1, 'BODEGA 7', 'CENTENARIO', '', '', '', '', '', 0, 308.12, 360, 229, '', 50, 500, 232.33, '50202206', 'H87', 'PIEZA'),
(174, '744607004107', 'TEQUILA HERRADURA ANTIGUO REPOSADO 700ML', 'UNA BOTELLA DE TEQUILA HERRADURA ANTIGUO REPOSADO DE 700 ML', 2, 1, 'BODEGA 7', 'HERRADURA', '', '', '', '', '', 0, 256.39, 310, 39, '', 50, 500, 221.02, '50202206', 'H87', 'PIEZA'),
(175, '5000267014203', 'JOHNNIE WALKER RED LABEL 700ML', 'UNA BOTELLA DE WHISKY JOHNNIE WALKER ETIQUETA ROJA 700ML', 2, 1, 'BODEGA 7', 'RED LABEL', '', '', '', '', '', 0, 247.62, 300, 172, '', 50, 500, 213.46, '50202206', 'H87', 'PIEZA'),
(176, '5000281056265', 'TEQUILA DON JULIO 70 AÑEJO CRISTALINO', 'UNA BOTELLA DE TEQUILA DON JULIO 70 AÑEJO CRISTALINO DE 700ML', 2, 1, 'BODEGA 7', 'DON JULIO 70', '', '', '', '', '', 0, 643.44, 700, 81, '', 50, 500, 554.69, '50202206', 'H87', 'PIEZA'),
(177, '5000281056272', 'TEQUILA DON JULIO BLANCO DE 700ML', 'UNA BOTELLA DE TEQUILA DON JULIO BLANCO DE 700ML', 2, 1, 'BODEGA  7', 'DON JULIO', '', '', '', '', '', 0, 388.09, 450, 11, '', 50, 50, 334.56, '50202206', 'H87', 'PIEZA'),
(178, '50196388', 'BUCHANANS 12 AÑOS 750ML', 'UNA BOTELLA DE WISKY BUCHANANS DE LUXE 12 AÑOS DE 750 ML', 2, 1, 'BODEGA 7', 'BUCHANANS', '', '', '', '', '', 0, 626.77, 750, 87, '', 50, 500, 540.31, '50202206', 'H87', 'PIEZA'),
(179, '7501048810406', 'TEQUILA GRAN CENTENARIO AÑEJO 695ML', 'UNA BOTELLA DE TEQUILA GRAN CENTENARIO AÑEJO DE 695 ML', 2, 1, 'BODEGA 7', 'CENTENARIO', '', '', '', '', '', 0, 452.08, 520, 13, '', 50, 500, 389.72, '50202206', 'H87', 'PIEZA'),
(180, '7503007479259', 'LICOR DON CLEOFAS DE CAFE 750ML', 'UNA BOTELLA DE LICOR DON CLEOFAS DE 750ML', 2, 1, 'BODEGA 7', 'DON CLEOFAS', '', '', '', '', '', 0, 68.69, 80, 19, '', 50, 500, 59.12, '50202206', 'H87', 'PIEZA'),
(181, '7503007479259', 'LICOR DON CLEOFAS DE CAFE 750ML', 'UNA BOTELLA DE LICOR DON CLEOFAS DE 750ML', 2, 1, 'BODEGA 7', 'DON CLEOFAS', '', '', '', '', '', 0, 68.69, 80, 19, '', 50, 500, 59.12, '50202206', 'H87', 'PIEZA'),
(182, '8410113000019', 'BRANDY TORRES 5 SOLERA', 'UNA BOTELLA DE BRANDY TORRES 5 SOLERA IMPERIAL DE 700 ML', 2, 1, 'BODEGA 7', 'TORRES ', '', '', '', '', '', 0, 164.11, 200, 184, '', 50, 500, 141.47, '50202206', 'H87', 'PIEZA'),
(183, '50196135', 'WHISKI BLACK Y WHITE 700ML', 'UNA BOTELLA DE WHISKY BLACK Y WHITE DE 700ML', 2, 1, 'BODEGA 7', 'BLACK Y WHITE', '', '', '', '', '', 0, 156.55, 250, 138, '', 50, 500, 134.95, '50202206', 'H87', 'PIEZA'),
(184, '75027278', 'CERVEZA MODELO ESPECIAL', 'CERVEZA MODELO ESPECIAL 355ML', 2, 1, 'BODEGA 9', 'MODELO', '', '', '', '', '', 0, 25, 30, 36, '', 50, 500, 15.41, '5202201', 'H87', 'PIEZA'),
(185, '75027285', 'CERVEZA MODELO NEGRA', 'CERVEZA MODELO NEGRA DE 355 ML', 2, 1, 'BODEGA 9', 'MODELO', '', '', '', '', '', 0, 25, 30, 12, '', 50, 500, 15.41, '5202201', 'H87', 'PIEZA'),
(186, '7501064101410', 'CERVEZA CORONA CLARA', 'CERVEZA CORONA CLARA EXTRA DE 355 ML', 2, 1, 'BODEGA 9', 'CORONA', '', '', '', '', '', 0, 23, 25, 1248, '', 50, 500, 14.08, '5202201', 'H87', 'PIEZA'),
(187, '7501064101465', 'CERVEZA CORONA OSCURA', 'CERVEZA CORONA OSCURA EXTRA DE 355 ML', 2, 1, 'BODEGA 9', 'CORONA', '', '', '', '', '', 0, 23, 25, 414, '', 50, 500, 14.08, '5202201', 'H87', 'PIEZA'),
(188, '7501064101205', 'CORONA MEGA OSCURA 1,2 L', 'CORONA MEGA OSCURA 1,2 L', 2, 1, 'BODEGA 9', 'CORONA', '', '', '', '', '', 0, 45, 50, 72, '', 50, 50, 27.6, '5202201', 'H87', 'PIEZA'),
(189, '7501064197680', 'CERVEZA BUD LIGHT 355 ML', 'CERVEZA BUD LIGHT DE 355 ML', 2, 1, 'BODEGA 9', 'BUD LIGHT', '', '', '', '', '', 0, 25, 30, 24, '', 50, 500, 14.58, '01010101', 'H87', 'PIEZA'),
(190, '7501064198168', 'CERVEZA MICHELOB ULTRA 355ML', 'CERVEZA MICHELOB ULTRA 355 ML', 2, 1, 'BODEGA 9', 'MICHELOB ULTRA', '', '', '', '', '', 0, 30, 35, 24, '', 50, 500, 15.04, '01010101', 'H87', 'PIEZA'),
(191, '5410228141266', 'CERVEZA STELLA ARTOIS 330 ML', 'CERVEZA STELLA ARTOIS DE 330 ML', 2, 1, 'BODEGA 9', 'STELLA ARTOIS', '', '', '', '', '', 0, 36, 40, 24, '', 50, 500, 18.2, '01010101', 'H87', 'PIEZA'),
(192, '7500327067975', 'GEL ANTIBACTERIAL ANTI-B 1L', 'GEL ANTIBACTERIAL ANTI-B 1LT', 4, 1, 'BODEGA 3', 'SUPER LIM-8', '', '', '', '', '', 0, 90, 140, 1350, '', 50, 500, 90, '53131626', 'H87', 'PIEZA'),
(194, '7501064193460', 'CERVEZA PACIFICO CLARA 355ML ', 'CERVEZA CLARA PACIFICO 355ML', 2, 1, 'BODEGA -9', 'MODELO', '', '', '', '', '', 0, 23, 25, 264, '', 50, 500, 14.08, '5202201', 'H87', 'PIEZA'),
(195, '7501064173400', 'CERVEZA NEGRA LEON 355ML', 'CERVEZA NEGRA  LEON 355ML', 2, 1, 'BODEGA-9', 'MODELO ', '', '', '', '', '', 0, 25, 30, 72, '', 50, 500, 12.04, '5202201', 'H87', 'PIEZA'),
(196, '3185370000335', 'CHAMP MOET Y CHANDON BRUT IMPERIAL 750ML', 'BOTELLA CHAMPAGNE MOET Y CHANDON BRUT IMPERIAL DE 750ML', 2, 1, 'BODEGA 7', 'MOET Y CHANDON', '', '', '', '', '', 0, 1005.31, 1250, 30, '', 50, 500, 866.64, '50202206', 'H87', 'PIEZA'),
(197, '7501035046016', 'BOOST ACTIVE ENERGY 235ML', 'BEBIDA ENERGETIZANTE BOOST DE 235 ML', 2, 1, 'BODEGA 7', 'BOOST', '', '', '', '', '', 0, 19.3, 25, 50, '', 50, 500, 16.7, '5202309', 'H87', 'PIEZA'),
(198, '7501008660201', 'BACARDI CARTA BLANCA 980 ML ', 'BACARDI CARTA BLANCA 980 ML ', 2, 1, 'BODEGA - 7', 'BACARDI ', '', '', '', '', '', 0, 180, 220, 19, '', 50, 500, 162, '50202206', 'H87', 'PIEZA'),
(199, '080480401030', 'BACARDI CARTA BLANCA 750 ML', 'BACARDI BIG APPLE 750 ML ', 2, 1, 'BODEGA- 7', 'BACARDI ', '', '', '', '', '', 0, 147, 170, 2, '', 50, 500, 132.3, '50202206', 'H87', 'PIEZA'),
(200, '744607049108', 'EL JIMADOR TEQUILA REPOSADO 700 ML ', 'DE AGAVE TE QUILA EL JIMADOR REPOSADO 700 ML ', 2, 1, 'BODEGA-7', 'EL JIMADOR ', '', '', '', '', '', 0, 189, 220, 1, '', 50, 500, 170.1, '50202206', 'H87', 'PIEZA'),
(201, '744607049801', 'TEQUILA EL JIMADOR REPOSADO 950 ML ', 'TE QUILA EL JIMADOR DE 950 ML REPOSADO DE AGAVE ', 2, 1, 'BODEGA-7', 'EL JIMADOR ', '', '', '', '', '', 0, 251, 300, 1, '', 50, 500, 225.9, '50202206', 'H87', 'PIEZA'),
(202, '7501151075013', 'TE QUILA BLANCO SIETE LEGUAS 750 ML ', 'TEQUILA BLANCO  SIETE LEGUAS DE 750 ML DE  AGAVE ', 2, 1, 'BODEGA-7', 'SIETE LEGUAS ', '', '', '', '', '', 0, 369, 380, 4, '', 50, 500, 332, '50202206', 'H87', 'PIEZA'),
(203, '744607000109', 'HERRADURA TEQUILA BLANCO 700 ML ', 'TEQUILA BLANCO DE AGAVE  HERRADURA 700ML ', 2, 1, 'BODEGA-7', 'HERRADURA ', '', '', '', '', '', 0, 439, 470, 3, '', 50, 500, 395, '50202206', 'H87', 'PIEZA'),
(204, '744607002806', 'TEQUILA HERRADURA REPOSADO 950ML ', 'TEQUILA HERRADURA REPOSADO 950ML ', 2, 1, 'BODEGA-7', 'HERRADURA', '', '', '', '', '', 0, 769, 800, 1, '', 50, 500, 692, '50202206', 'H87', 'PIEZA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_sub`
--

CREATE TABLE `productos_sub` (
  `id` int(11) NOT NULL,
  `padre` int(11) NOT NULL,
  `almacen` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `ubicacion` varchar(254) NOT NULL,
  `max` int(11) NOT NULL DEFAULT '0',
  `min` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_pedido`
--

CREATE TABLE `product_pedido` (
  `id` int(11) NOT NULL,
  `folio_venta` varchar(254) NOT NULL,
  `product` int(11) DEFAULT NULL,
  `unidades` int(11) NOT NULL,
  `precio` float NOT NULL,
  `p_generico` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product_pedido`
--

INSERT INTO `product_pedido` (`id`, `folio_venta`, `product`, `unidades`, `precio`, `p_generico`) VALUES
(1, '4220200224120034', 9, 2, 1631, NULL),
(2, '4220200224120034', 8, 2, 1038, NULL),
(3, '4220200224120034', 4, 1, 689, NULL),
(4, '4220200224120034', 2, 1, 689, NULL),
(5, '4220200224120034', 12, 2, 991, NULL),
(6, '4220200224120034', 13, 2, 2161, NULL),
(7, '4220200224120034', 15, 3, 577, NULL),
(8, '4220200224120034', 14, 2, 519, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_venta`
--

CREATE TABLE `product_venta` (
  `id` int(11) NOT NULL,
  `folio_venta` varchar(254) NOT NULL,
  `product` int(11) DEFAULT NULL,
  `unidades` int(11) NOT NULL,
  `precio` float NOT NULL,
  `product_sub` int(11) DEFAULT NULL,
  `p_generico` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product_venta`
--

INSERT INTO `product_venta` (`id`, `folio_venta`, `product`, `unidades`, `precio`, `product_sub`, `p_generico`) VALUES
(16, '120200225124240', 2, 2, 689, NULL, NULL),
(17, '120200225124240', NULL, 1, 1000, NULL, 'producto'),
(18, '120200225124713', 138, 2, 800, NULL, NULL),
(19, '120200225124713', 4, 1, 689, NULL, NULL),
(20, '120200225124713', 2, 1, 689, NULL, NULL),
(21, '120200225124713', 11, 2, 991, NULL, NULL),
(22, '120200225124713', 13, 2, 2161, NULL, NULL),
(23, '120200225124713', 15, 3, 577, NULL, NULL),
(24, '120200225124713', 14, 2, 519, NULL, NULL),
(25, '4220200225130330', 9, 2, 1631, NULL, NULL),
(26, '4220200225130330', 8, 2, 1038, NULL, NULL),
(27, '4220200225130330', 4, 1, 689, NULL, NULL),
(28, '4220200225130330', 2, 1, 689, NULL, NULL),
(29, '4220200225130330', 11, 2, 991, NULL, NULL),
(30, '4220200225130330', 13, 2, 2161, NULL, NULL),
(31, '4220200225130330', 15, 3, 577, NULL, NULL),
(32, '4220200225130330', 14, 2, 519, NULL, NULL),
(33, '4220200302091230', 9, 2, 1631, NULL, NULL),
(34, '4220200302091230', 4, 1, 689, NULL, NULL),
(35, '4220200302091230', 2, 1, 689, NULL, NULL),
(36, '4220200302091230', 12, 1, 991, NULL, NULL),
(37, '4220200302091230', 11, 1, 991, NULL, NULL),
(38, '4220200302091230', 15, 2, 577, NULL, NULL),
(39, '4220200302091230', 14, 2, 519, NULL, NULL),
(40, '4220200304093532', 154, 4, 1771.83, NULL, NULL),
(41, '4220200304093532', 155, 4, 1771.83, NULL, NULL),
(42, '4220200304093532', 12, 1, 991, NULL, NULL),
(43, '4220200304093532', 11, 1, 991, NULL, NULL),
(44, '4220200304093532', 4, 1, 689, NULL, NULL),
(45, '4220200304093532', 2, 1, 689, NULL, NULL),
(46, '4220200304093532', 140, 4, 947.94, NULL, NULL),
(47, '4220200304093532', 143, 3, 947.94, NULL, NULL),
(48, '4220200304093532', 146, 3, 947.94, NULL, NULL),
(49, '4220200304093532', 141, 4, 947.94, NULL, NULL),
(50, '4220200304093532', 142, 4, 947.94, NULL, NULL),
(51, '4220200304093532', 145, 3, 947.94, NULL, NULL),
(52, '4220200304093532', 138, 6, 738, NULL, NULL),
(53, '4220200304093532', 136, 2, 858.58, NULL, NULL),
(54, '4220200304093532', 133, 12, 252.24, NULL, NULL),
(55, '4220200304093532', 148, 6, 596.76, NULL, NULL),
(56, '4220200304093532', 149, 6, 596.76, NULL, NULL),
(57, '4220200304093532', 147, 6, 596.76, NULL, NULL),
(58, '4220200304093532', 150, 6, 596.76, NULL, NULL),
(59, '4220200304093532', 156, 2, 793.63, NULL, NULL),
(60, '4220200304093532', 139, 2, 793.63, NULL, NULL),
(61, '4220200304093532', 153, 6, 621.37, NULL, NULL),
(62, '4220200304093532', 152, 6, 621.37, NULL, NULL),
(63, '4220200304093532', 14, 2, 519, NULL, NULL),
(64, '4220200304093532', 15, 3, 577, NULL, NULL),
(65, '4220200304093532', 158, 16, 258.39, NULL, NULL),
(66, '4220200304093532', 162, 16, 258.39, NULL, NULL),
(67, '4220200304093532', 160, 16, 258.39, NULL, NULL),
(68, '4220200304093532', 157, 16, 258.39, NULL, NULL),
(74, '4220200309100030', 9, 2, 1631, NULL, NULL),
(75, '4220200312090818', 9, 2, 1631, NULL, NULL),
(77, '4220200312125720', 4, 1, 689, NULL, NULL),
(78, '4220200312125720', 2, 1, 689, NULL, NULL),
(79, '4220200312125720', 12, 1, 991, NULL, NULL),
(80, '4220200312125720', 11, 1, 991, NULL, NULL),
(81, '4220200312125720', 15, 3, 577, NULL, NULL),
(82, '4220200312125720', 14, 2, 519, NULL, NULL),
(83, '4220200312130620', 154, 4, 1771.83, NULL, NULL),
(84, '4220200312130620', 155, 4, 1771.83, NULL, NULL),
(85, '4220200312130620', 12, 1, 991, NULL, NULL),
(86, '4220200312130620', 11, 1, 991, NULL, NULL),
(89, '4220200312130620', 4, 1, 689, NULL, NULL),
(90, '4220200312130620', 2, 1, 689, NULL, NULL),
(91, '4220200312130620', 140, 4, 947.94, NULL, NULL),
(92, '4220200312130620', 143, 3, 947.94, NULL, NULL),
(93, '4220200312130620', 146, 3, 947.94, NULL, NULL),
(94, '4220200312130620', 141, 4, 947.94, NULL, NULL),
(95, '4220200312130620', 142, 4, 947.94, NULL, NULL),
(96, '4220200312130620', 145, 3, 947.94, NULL, NULL),
(97, '4220200312130620', 138, 6, 738, NULL, NULL),
(98, '4220200312130620', 136, 2, 858.58, NULL, NULL),
(99, '4220200312130620', 133, 12, 252.24, NULL, NULL),
(100, '4220200312130620', 148, 6, 596.76, NULL, NULL),
(103, '4220200312130620', 149, 6, 596.76, NULL, NULL),
(104, '4220200312130620', 147, 6, 596.76, NULL, NULL),
(105, '4220200312130620', 150, 6, 596.76, NULL, NULL),
(107, '4220200312130620', 139, 2, 793.63, NULL, NULL),
(108, '4220200312130620', 156, 2, 793.63, NULL, NULL),
(109, '4220200312130620', 153, 6, 621.37, NULL, NULL),
(110, '4220200312130620', 152, 6, 621.37, NULL, NULL),
(111, '4220200312130620', 158, 16, 258.39, NULL, NULL),
(112, '4220200312130620', 162, 16, 258.39, NULL, NULL),
(113, '4220200312130620', 160, 16, 258.39, NULL, NULL),
(114, '4220200312130620', 157, 16, 258.39, NULL, NULL),
(115, '4220200312161405', 140, 4, 947.94, NULL, NULL),
(116, '4220200312161405', 143, 3, 947.94, NULL, NULL),
(117, '4220200312161405', 146, 3, 947.94, NULL, NULL),
(118, '4220200312161405', 141, 4, 947.94, NULL, NULL),
(119, '4220200312161405', 142, 4, 947.94, NULL, NULL),
(120, '4220200312161405', 145, 3, 947.94, NULL, NULL),
(121, '4220200312161405', 138, 6, 738, NULL, NULL),
(122, '4220200312161405', 136, 2, 858.58, NULL, NULL),
(123, '4220200312161405', 133, 12, 252.24, NULL, NULL),
(124, '4220200312161405', 148, 6, 596.76, NULL, NULL),
(125, '4220200312161405', 149, 6, 596.76, NULL, NULL),
(126, '4220200312161405', 147, 6, 596.76, NULL, NULL),
(127, '4220200312161405', 150, 6, 596.76, NULL, NULL),
(128, '4220200312161405', 139, 2, 793.63, NULL, NULL),
(129, '4220200312161405', 156, 2, 793.63, NULL, NULL),
(130, '4220200312161405', 153, 6, 621.37, NULL, NULL),
(131, '4220200312161405', 152, 6, 621.37, NULL, NULL),
(132, '4220200312161405', 158, 16, 258.39, NULL, NULL),
(133, '4220200312161405', 162, 16, 258.39, NULL, NULL),
(134, '4220200312161405', 160, 16, 258.39, NULL, NULL),
(135, '4220200312161405', 157, 16, 258.39, NULL, NULL),
(138, '4220200313090910', 4, 2, 689, NULL, NULL),
(139, '4220200313090910', 2, 2, 689, NULL, NULL),
(140, '4220200313090910', 14, 2, 519, NULL, NULL),
(141, '4220200313090910', 15, 2, 577, NULL, NULL),
(142, '4220200313090910', 12, 2, 991, NULL, NULL),
(143, '4220200313090910', 11, 2, 991, NULL, NULL),
(148, '4220200313092217', 146, 2, 947.94, NULL, NULL),
(149, '4220200313092217', 145, 2, 947.94, NULL, NULL),
(150, '4220200313092217', 143, 2, 947.94, NULL, NULL),
(151, '4220200313092217', 8, 2, 1038, NULL, NULL),
(152, '4220200313092217', 164, 2, 1038, NULL, NULL),
(153, '4220200313092217', 138, 2, 738, NULL, NULL),
(154, '4220200313092217', 156, 2, 793.63, NULL, NULL),
(155, '4220200313092217', 139, 2, 793.63, NULL, NULL),
(156, '4220200313092217', 142, 2, 947.94, NULL, NULL),
(157, '4220200313092217', 140, 2, 947.94, NULL, NULL),
(158, '4220200313092217', 141, 2, 947.94, NULL, NULL),
(159, '4220200313092217', 151, 6, 301.46, NULL, NULL),
(160, '4220200313092217', 155, 2, 1771.83, NULL, NULL),
(161, '4220200313092217', 154, 2, 1771.83, NULL, NULL),
(162, '4220200313092217', 153, 2, 621.37, NULL, NULL),
(163, '4220200313092217', 152, 2, 621.37, NULL, NULL),
(164, '4220200313092217', 150, 2, 596.76, NULL, NULL),
(165, '4220200313092217', 147, 2, 596.76, NULL, NULL),
(166, '4220200313092217', 148, 2, 596.76, NULL, NULL),
(167, '4220200313092217', 149, 2, 596.76, NULL, NULL),
(168, '4220200313101024', 154, 4, 1771.83, NULL, NULL),
(169, '4220200313101024', 155, 4, 1771.83, NULL, NULL),
(170, '4220200313110034', 13, 2, 1771.83, NULL, NULL),
(171, '4220200313110034', 136, 2, 858.58, NULL, NULL),
(172, '4220200313110034', 134, 2, 858.85, NULL, NULL),
(173, '4220200313110034', 135, 2, 858.58, NULL, NULL),
(178, '5120200326173150', 166, 10, 78, NULL, NULL),
(179, '5120200326174222', 166, 10, 78, NULL, NULL),
(180, '5220200326174702', 166, 10, 78, NULL, NULL),
(181, '5220200326174843', 166, 10, 78, NULL, NULL),
(182, '5120200407125535', 192, 4, 110, NULL, NULL),
(183, '5120200407125904', 192, 1, 90, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id` int(11) NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `direccion` varchar(254) NOT NULL,
  `telefono` varchar(254) NOT NULL,
  `cfdi_serie` varchar(254) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `nombre`, `direccion`, `telefono`, `cfdi_serie`) VALUES
(1, 'SPORT AMAVAL', 'Virrey de Mendoza 528', '3516882396', ''),
(2, 'Abarrotera Amaval', 'Virrey de Mendoza 528', '3516882396', ''),
(3, 'SALUD AMAVAL', 'VIRREY DE MENDOZA 528', '3516882396', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `imagen` varchar(254) NOT NULL,
  `product_add` tinyint(1) NOT NULL DEFAULT '0',
  `product_gest` tinyint(1) NOT NULL DEFAULT '0',
  `gen_orden_compra` tinyint(1) NOT NULL DEFAULT '0',
  `client_add` tinyint(1) NOT NULL DEFAULT '0',
  `client_guest` tinyint(1) NOT NULL DEFAULT '0',
  `almacen_add` tinyint(1) NOT NULL DEFAULT '0',
  `almacen_guest` tinyint(1) NOT NULL DEFAULT '0',
  `depa_add` tinyint(1) NOT NULL DEFAULT '0',
  `depa_guest` tinyint(1) NOT NULL DEFAULT '0',
  `propiedades` tinyint(1) NOT NULL DEFAULT '0',
  `usuarios` tinyint(1) NOT NULL DEFAULT '0',
  `finanzas` tinyint(1) NOT NULL DEFAULT '0',
  `descripcion` longtext NOT NULL,
  `sucursal` int(11) NOT NULL,
  `change_suc` tinyint(1) NOT NULL,
  `sucursal_gest` tinyint(1) NOT NULL DEFAULT '0',
  `caja` tinyint(1) NOT NULL DEFAULT '0',
  `super_pedidos` tinyint(1) NOT NULL DEFAULT '0',
  `comision` int(11) DEFAULT '5',
  `sueldo` float NOT NULL DEFAULT '0',
  `vtd_pg` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nombre`, `imagen`, `product_add`, `product_gest`, `gen_orden_compra`, `client_add`, `client_guest`, `almacen_add`, `almacen_guest`, `depa_add`, `depa_guest`, `propiedades`, `usuarios`, `finanzas`, `descripcion`, `sucursal`, `change_suc`, `sucursal_gest`, `caja`, `super_pedidos`, `comision`, `sueldo`, `vtd_pg`) VALUES
(1, 'root', '63a9f0ea7bb98050796b649e85481845', 'Super Administrador', 'users/usuario20200218222052.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Admin', 1, 1, 1, 1, 1, 5, 1800, 1),
(40, 'JUAN SORIA', 'bcca101d6eeeca26ce2b24cc26fa0d7b', 'LCP Juan Soria', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', 1, 1, 1, 1, 1, 5, 0, 0),
(41, 'ALEJANDRO', '85055ea15b6a6d365cbf7ccc9bacc3cb', 'PROF. ALEJANDRO AMEZCUA VALENCIA', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', 1, 1, 1, 1, 1, 5, 0, 0),
(42, 'MAYRA', '7d15ace53e5985eb5fb86957f9fbf9f3', 'Mayra Yazmin Acevedo Rubio', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', 1, 1, 0, 1, 1, 5, 0, 0),
(43, 'DULCE', 'd9fa0a707c8862fca154ce06671d0735', 'Dulce Maria Garcia Ramirez', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', 1, 1, 1, 1, 1, 5, 0, 0),
(44, 'DULCE', 'd9fa0a707c8862fca154ce06671d0735', 'Dulce Maria Garcia Ramirez', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', 1, 1, 1, 1, 1, 5, 0, 0),
(46, 'PEPE', '7009acadcd19cb7f8762b9a2f49a7cad', 'JOSE MANUEL GARCIA GALINDO', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', 1, 1, 1, 1, 1, 5, 0, 0),
(47, 'Leonel', '9fab6415e5994a4a3b8a3533b6af78b3', 'JOSE LEONEL CHAVEZ ORTEGA', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 'GERENTE DE VENTAS', 1, 1, 1, 1, 1, 5, 0, 0),
(48, 'JMANUEL', 'ba795159e4ac8e729207bbd8fb90383a', 'JUAN MANUEL GARCIA VILLANUEVA', '', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'VENTAS', 1, 1, 0, 1, 1, 5, 0, 0),
(49, 'JMANUEL', 'ba795159e4ac8e729207bbd8fb90383a', 'JUAN MANUEL GARCIA VILLANUEVA', '', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'VENTAS', 1, 1, 0, 1, 1, 5, 0, 0),
(50, 'MIGUEL', 'ed076108b16766112ce2b31dff1a5c8b', 'MIGUEL ANGEL FAMOSO TOVAR', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 'GERENTE DE VENTAS', 1, 1, 1, 1, 1, 5, 0, 0),
(51, 'LUCY', '26b30285820f18f14371718b3dc4fd0f', 'LUZ MARIA PULIDO DIAZ', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 'VENTAS', 2, 1, 0, 1, 1, 5, 0, 0),
(52, 'CLAUDIA', '08cd504cdcf88776c82641742c364b03', 'CLAUDIA RAMIREZ VEGA', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 'VENTAS', 2, 1, 1, 1, 1, 5, 0, 0),
(53, 'YESS', 'a36d49b23b865426c86d090e32b7ee35', 'YESSICA ELIZABETH MIRANDA MTZ', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 'ADMINISTRACION', 3, 1, 1, 1, 1, 5, 0, 0),
(54, 'DENISSE', 'b731d6c910a3336823785f10fec6b83e', 'DENISSE BERENICE GARCIA MTZ', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 'ADMINISTRACION', 3, 1, 1, 1, 1, 5, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `annuities`
--
ALTER TABLE `annuities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `annuity_client` (`client`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`folio`),
  ADD KEY `cliente_cliente` (`cliente`);

--
-- Indices de la tabla `folio_venta`
--
ALTER TABLE `folio_venta`
  ADD PRIMARY KEY (`folio`),
  ADD KEY `client_folio` (`client`),
  ADD KEY `vendedor_folio` (`vendedor`),
  ADD KEY `sale_sucursal` (`sucursal`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_almacen` (`almacen`),
  ADD KEY `producto_departamento` (`departamento`);

--
-- Indices de la tabla `productos_sub`
--
ALTER TABLE `productos_sub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `padre_hijo` (`padre`),
  ADD KEY `hijo_almacen` (`almacen`);

--
-- Indices de la tabla `product_pedido`
--
ALTER TABLE `product_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto` (`product`),
  ADD KEY `folio` (`folio_venta`);

--
-- Indices de la tabla `product_venta`
--
ALTER TABLE `product_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folio_venta` (`folio_venta`),
  ADD KEY `sale_product` (`product`),
  ADD KEY `hijo` (`product_sub`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendedor_sucursal` (`sucursal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacen`
--
ALTER TABLE `almacen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `annuities`
--
ALTER TABLE `annuities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT de la tabla `productos_sub`
--
ALTER TABLE `productos_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_pedido`
--
ALTER TABLE `product_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `product_venta`
--
ALTER TABLE `product_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `annuities`
--
ALTER TABLE `annuities`
  ADD CONSTRAINT `annuity_client` FOREIGN KEY (`client`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `cliente_cliente` FOREIGN KEY (`cliente`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `folio_venta`
--
ALTER TABLE `folio_venta`
  ADD CONSTRAINT `client_folio` FOREIGN KEY (`client`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_sucursal` FOREIGN KEY (`sucursal`) REFERENCES `sucursales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vendedor_folio` FOREIGN KEY (`vendedor`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `producto_almacen` FOREIGN KEY (`almacen`) REFERENCES `almacen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_departamento` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos_sub`
--
ALTER TABLE `productos_sub`
  ADD CONSTRAINT `hijo_almacen` FOREIGN KEY (`almacen`) REFERENCES `almacen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `padre_hijo` FOREIGN KEY (`padre`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `product_pedido`
--
ALTER TABLE `product_pedido`
  ADD CONSTRAINT `folio` FOREIGN KEY (`folio_venta`) REFERENCES `folio_venta` (`folio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto` FOREIGN KEY (`product`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `product_venta`
--
ALTER TABLE `product_venta`
  ADD CONSTRAINT `folio_venta` FOREIGN KEY (`folio_venta`) REFERENCES `folio_venta` (`folio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hijo` FOREIGN KEY (`product_sub`) REFERENCES `productos_sub` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_product` FOREIGN KEY (`product`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
