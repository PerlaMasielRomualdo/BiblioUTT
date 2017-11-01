-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2017 a las 14:23:41
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registrobiblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `Id_Actividad` smallint(6) NOT NULL,
  `Acitividad` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `Id_Carrera` smallint(11) NOT NULL,
  `Carrera` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrogeneral`
--

CREATE TABLE `registrogeneral` (
  `Id_RegistroGeneral` int(11) NOT NULL,
  `Tipo_Registro` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `Id_TipoUsuario` smallint(6) NOT NULL,
  `Clave` int(11) NOT NULL,
  `Nivel` varchar(3) COLLATE utf8_spanish2_ci NOT NULL,
  `Id_Carrera` smallint(6) NOT NULL,
  `Sexo` varchar(2) COLLATE utf8_spanish2_ci NOT NULL,
  `Id_Actividad` smallint(6) NOT NULL,
  `Fecha` date NOT NULL,
  `HoraEntrada` time NOT NULL,
  `HoraSalida` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrogrupal`
--

CREATE TABLE `registrogrupal` (
  `Id_RegistroGrupal` int(11) NOT NULL,
  `Nivel` varchar(3) COLLATE utf8_spanish2_ci NOT NULL,
  `Id_Carrera` smallint(6) NOT NULL,
  `Num_Hombres` int(5) NOT NULL,
  `Num_Mujeres` int(5) NOT NULL,
  `Id_Actividad` smallint(6) NOT NULL,
  `Fecha` date NOT NULL,
  `HoraEntrada` time NOT NULL,
  `HoraSalida` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `Id_TipoUsuario` smallint(6) NOT NULL,
  `Tipo_Usuario` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`Id_Actividad`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`Id_Carrera`);

--
-- Indices de la tabla `registrogeneral`
--
ALTER TABLE `registrogeneral`
  ADD PRIMARY KEY (`Id_RegistroGeneral`),
  ADD KEY `Tipo_Usuario` (`Id_TipoUsuario`),
  ADD KEY `Carrera` (`Id_Carrera`),
  ADD KEY `Actividad` (`Id_Actividad`);

--
-- Indices de la tabla `registrogrupal`
--
ALTER TABLE `registrogrupal`
  ADD PRIMARY KEY (`Id_RegistroGrupal`),
  ADD KEY `Carrera` (`Id_Carrera`),
  ADD KEY `Actividad` (`Id_Actividad`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`Id_TipoUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `Id_Actividad` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `Id_Carrera` smallint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `registrogeneral`
--
ALTER TABLE `registrogeneral`
  MODIFY `Id_RegistroGeneral` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `registrogrupal`
--
ALTER TABLE `registrogrupal`
  MODIFY `Id_RegistroGrupal` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `Id_TipoUsuario` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registrogeneral`
--
ALTER TABLE `registrogeneral`
  ADD CONSTRAINT `registrogeneral_ibfk_1` FOREIGN KEY (`Id_TipoUsuario`) REFERENCES `tipo_usuario` (`Id_TipoUsuario`),
  ADD CONSTRAINT `registrogeneral_ibfk_2` FOREIGN KEY (`Id_Carrera`) REFERENCES `carrera` (`Id_Carrera`),
  ADD CONSTRAINT `registrogeneral_ibfk_3` FOREIGN KEY (`Id_Actividad`) REFERENCES `actividad` (`Id_Actividad`);

--
-- Filtros para la tabla `registrogrupal`
--
ALTER TABLE `registrogrupal`
  ADD CONSTRAINT `registrogrupal_ibfk_1` FOREIGN KEY (`Id_Carrera`) REFERENCES `carrera` (`Id_Carrera`),
  ADD CONSTRAINT `registrogrupal_ibfk_2` FOREIGN KEY (`Id_Actividad`) REFERENCES `actividad` (`Id_Actividad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
