-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-08-2018 a las 19:27:49
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hueplainning`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `in_tinpr`
--

CREATE TABLE `in_tinpr` (
  `INPR_INPR` int(22) NOT NULL,
  `INPR_CANT` int(22) NOT NULL,
  `TPHU_TPHU` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `le_tlote`
--

CREATE TABLE `le_tlote` (
  `LOTE_LOTE` int(22) NOT NULL,
  `LOTE_CNTG` int(22) NOT NULL,
  `LOTE_DTCR` varchar(50) NOT NULL,
  `RGAL_RGAL` int(22) NOT NULL,
  `LOTE_NAME` varchar(50) NOT NULL,
  `PROV_PROV` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `le_tprov`
--

CREATE TABLE `le_tprov` (
  `PROV_PROV` int(22) NOT NULL,
  `PROV_NAME` varchar(50) NOT NULL,
  `PROV_APDO` varchar(50) NOT NULL,
  `PROV_DIRC` varchar(50) NOT NULL,
  `PROV_TELF` varchar(50) NOT NULL,
  `PROV_EMAL` varchar(50) NOT NULL,
  `PROV_STDO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `le_trgal`
--

CREATE TABLE `le_trgal` (
  `RGAL_RGAL` int(22) NOT NULL,
  `RGAL_RAZA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ne_tclsf`
--

CREATE TABLE `ne_tclsf` (
  `CLSF_CLSF` int(22) NOT NULL,
  `CLSF_CANT` varchar(50) NOT NULL,
  `CLSF_DATE` date NOT NULL,
  `TPHU_TPHU` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ne_tprcl`
--

CREATE TABLE `ne_tprcl` (
  `PRCL_PRCL` int(22) NOT NULL,
  `PROD_PROD` int(22) NOT NULL,
  `CLSF_CLSF` int(22) NOT NULL,
  `USER_USER` int(22) NOT NULL,
  `LOTE_LOTE` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ne_tprod`
--

CREATE TABLE `ne_tprod` (
  `PROD_PROD` int(22) NOT NULL,
  `PROD_CANT` varchar(50) NOT NULL,
  `PROD_DATE` varchar(50) NOT NULL,
  `PROD_JORN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ne_ttphu`
--

CREATE TABLE `ne_ttphu` (
  `TTPHU_TTPHU` int(22) NOT NULL,
  `TTPHU_TNOM` varchar(50) NOT NULL,
  `TTPHU_DESC` varchar(50) NOT NULL,
  `TTPHU_PESO` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `us_ttprl`
--

CREATE TABLE `us_ttprl` (
  `TPRL_TPRL` int(22) NOT NULL,
  `TPRL_NAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `us_tuser`
--

CREATE TABLE `us_tuser` (
  `USER_USER` int(22) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `USER_APDO` varchar(50) NOT NULL,
  `USER_DIRC` varchar(50) NOT NULL,
  `USER_TELF` varchar(30) NOT NULL,
  `USER_EMAL` varchar(50) NOT NULL,
  `USER_PSWD` varchar(50) NOT NULL,
  `USER_STDO` varchar(50) NOT NULL,
  `TPRL_TPRL` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `in_tinpr`
--
ALTER TABLE `in_tinpr`
  ADD PRIMARY KEY (`INPR_INPR`);

--
-- Indices de la tabla `le_tlote`
--
ALTER TABLE `le_tlote`
  ADD PRIMARY KEY (`LOTE_LOTE`);

--
-- Indices de la tabla `le_tprov`
--
ALTER TABLE `le_tprov`
  ADD PRIMARY KEY (`PROV_PROV`);

--
-- Indices de la tabla `le_trgal`
--
ALTER TABLE `le_trgal`
  ADD PRIMARY KEY (`RGAL_RGAL`);

--
-- Indices de la tabla `ne_tclsf`
--
ALTER TABLE `ne_tclsf`
  ADD PRIMARY KEY (`CLSF_CLSF`);

--
-- Indices de la tabla `ne_tprcl`
--
ALTER TABLE `ne_tprcl`
  ADD PRIMARY KEY (`PRCL_PRCL`),
  ADD KEY `USER_USER` (`USER_USER`),
  ADD KEY `CLSF_CLSF` (`CLSF_CLSF`);

--
-- Indices de la tabla `ne_tprod`
--
ALTER TABLE `ne_tprod`
  ADD PRIMARY KEY (`PROD_PROD`);

--
-- Indices de la tabla `ne_ttphu`
--
ALTER TABLE `ne_ttphu`
  ADD PRIMARY KEY (`TTPHU_TTPHU`);

--
-- Indices de la tabla `us_ttprl`
--
ALTER TABLE `us_ttprl`
  ADD PRIMARY KEY (`TPRL_TPRL`);

--
-- Indices de la tabla `us_tuser`
--
ALTER TABLE `us_tuser`
  ADD PRIMARY KEY (`USER_USER`),
  ADD KEY `TPRL_TPRL` (`TPRL_TPRL`) USING BTREE;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ne_tprcl`
--
ALTER TABLE `ne_tprcl`
  ADD CONSTRAINT `ne_tprcl_ibfk_1` FOREIGN KEY (`USER_USER`) REFERENCES `us_tuser` (`USER_USER`),
  ADD CONSTRAINT `ne_tprcl_ibfk_2` FOREIGN KEY (`CLSF_CLSF`) REFERENCES `ne_tclsf` (`CLSF_CLSF`);

--
-- Filtros para la tabla `us_tuser`
--
ALTER TABLE `us_tuser`
  ADD CONSTRAINT `us_tuser_ibfk_1` FOREIGN KEY (`TPRL_TPRL`) REFERENCES `in_tinpr` (`INPR_INPR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;