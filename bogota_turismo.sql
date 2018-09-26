-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-04-2018 a las 15:31:42
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bogota_turismo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos`
--

DROP TABLE IF EXISTS `codigos`;
CREATE TABLE IF NOT EXISTS `codigos` (
  `COD_PARK` varchar(40) NOT NULL,
  `COD_TURISM_PARK` varchar(40) NOT NULL,
  `COD_EVENT_PARK` varchar(40) NOT NULL,
  `FECHA_EVENT_PARK` varchar(100) NOT NULL,
  `COD_MUS` varchar(40) NOT NULL,
  `COD_TURISM_MUS` varchar(80) NOT NULL,
  `COD_EVENTO_MUS` varchar(70) NOT NULL,
  `FECHA_EVENT_MUS` varchar(80) NOT NULL,
  PRIMARY KEY (`COD_PARK`,`COD_TURISM_PARK`,`COD_EVENT_PARK`,`FECHA_EVENT_PARK`,`COD_MUS`,`COD_TURISM_MUS`,`COD_EVENTO_MUS`,`FECHA_EVENT_MUS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_ubc_turismo`
--

DROP TABLE IF EXISTS `horario_ubc_turismo`;
CREATE TABLE IF NOT EXISTS `horario_ubc_turismo` (
  `NOM_PARK` varchar(70) NOT NULL,
  `TPO_TURISM_PARK` varchar(40) DEFAULT NULL,
  `UBC_PARK` varchar(80) NOT NULL,
  `HOR_PARK` varchar(80) DEFAULT NULL,
  `NOM_MUS` varchar(80) NOT NULL,
  `TPO_TURISM_MUS` varchar(80) DEFAULT NULL,
  `UBC_MUS` varchar(80) DEFAULT NULL,
  `HOR_MUS` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`NOM_PARK`,`NOM_MUS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario_ubc_turismo`
--

INSERT INTO `horario_ubc_turismo` (`NOM_PARK`, `TPO_TURISM_PARK`, `UBC_PARK`, `HOR_PARK`, `NOM_MUS`, `TPO_TURISM_MUS`, `UBC_MUS`, `HOR_MUS`) VALUES
('', NULL, '45', NULL, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_eventos`
--

DROP TABLE IF EXISTS `tipos_eventos`;
CREATE TABLE IF NOT EXISTS `tipos_eventos` (
  `TPO_EVENTO_PARK` varchar(40) DEFAULT NULL,
  `TPO_EVENTO_MUS` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `COD_USUARIO` varchar(15) NOT NULL,
  `COD_RESGIST` varchar(15) NOT NULL,
  `NOM_USUARIO` varchar(7) NOT NULL,
  `CTS_USUARIO` varchar(30) NOT NULL,
  `ID_USUARIO` varchar(11) NOT NULL,
  `COD_TURISM_PARK` varchar(60) NOT NULL,
  `COD_TURISM_MUS` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`COD_USUARIO`,`COD_RESGIST`,`NOM_USUARIO`,`CTS_USUARIO`,`ID_USUARIO`),
  KEY `COD_TURISM_PARK` (`COD_TURISM_PARK`,`COD_TURISM_MUS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valor_turismo`
--

DROP TABLE IF EXISTS `valor_turismo`;
CREATE TABLE IF NOT EXISTS `valor_turismo` (
  `TPO_TURISM_PARK` varchar(40) NOT NULL,
  `TPO_EVENTO_PARK` varchar(70) DEFAULT NULL,
  `VAL_TURISM_PARK` varchar(65) DEFAULT NULL,
  `TPO_TURISM_MUS` varchar(80) DEFAULT NULL,
  `TPO_EVENTO_MUS` varchar(40) NOT NULL,
  `VAL_MUS_PARK` varchar(65) DEFAULT NULL,
  `COD_USUARIO` varchar(15) NOT NULL,
  KEY `TPO_TURISM_PARK` (`TPO_TURISM_PARK`,`TPO_EVENTO_PARK`,`VAL_TURISM_PARK`,`TPO_TURISM_MUS`,`TPO_EVENTO_MUS`,`VAL_MUS_PARK`,`COD_USUARIO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
