-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2017 a las 19:48:22
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bilbioteca_utt`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `Id_actividad` int(11) NOT NULL,
  `Actividad` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`Id_actividad`, `Actividad`) VALUES
(1, 'Leer'),
(2, 'Consultar o Invetigar'),
(3, 'Tarea o Trabajos'),
(4, 'Prestamos o Entrega de Libros'),
(5, 'otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `DNI_Alumno` int(11) NOT NULL,
  `Id_carrera` int(11) NOT NULL,
  `Id_actividad` int(11) NOT NULL,
  `Matricula` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Nvl_Academico` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Sexo` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`DNI_Alumno`, `Id_carrera`, `Id_actividad`, `Matricula`, `Nvl_Academico`, `Sexo`) VALUES
(1, 1, 2, '3516110104', 'TSU', 'Hombre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `Id_carrera` int(11) NOT NULL,
  `Carrera` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`Id_carrera`, `Carrera`) VALUES
(1, 'Agricultura'),
(2, 'Desarrollo de Negocios'),
(3, 'Energias'),
(4, 'Mecatronica'),
(5, 'Procesos Alimentarios '),
(6, 'Procesos Industriales'),
(7, 'Tics');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `DNI_Docente` int(11) NOT NULL,
  `Id_actividad` int(11) NOT NULL,
  `Clave` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Sexo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada_salida`
--

CREATE TABLE `entrada_salida` (
  `Id_E/S` int(11) NOT NULL,
  `DNI_Alumno` int(11) NOT NULL,
  `DNI_Docente` int(11) NOT NULL,
  `DNI_Grupos` int(11) NOT NULL,
  `Entrada/Salida` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `DNI_Grupos` int(11) NOT NULL,
  `Id_actividad` int(11) NOT NULL,
  `Id_carrera` int(11) NOT NULL,
  `Grupo` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Num_Hombres` int(11) NOT NULL,
  `Num_Mujeres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`Id_actividad`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`DNI_Alumno`),
  ADD KEY `Id_carrera` (`Id_carrera`),
  ADD KEY `Id_actividad` (`Id_actividad`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`Id_carrera`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`DNI_Docente`),
  ADD KEY `Id_actividad` (`Id_actividad`);

--
-- Indices de la tabla `entrada_salida`
--
ALTER TABLE `entrada_salida`
  ADD PRIMARY KEY (`Id_E/S`),
  ADD KEY `DNI_Alumno` (`DNI_Alumno`),
  ADD KEY `DNI_Docente` (`DNI_Docente`),
  ADD KEY `DNI_Grupos` (`DNI_Grupos`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`DNI_Grupos`),
  ADD KEY `Id_actividad` (`Id_actividad`),
  ADD KEY `Id_carrera` (`Id_carrera`),
  ADD KEY `Id_actividad_2` (`Id_actividad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `Id_actividad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `DNI_Alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `Id_carrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `DNI_Docente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `entrada_salida`
--
ALTER TABLE `entrada_salida`
  MODIFY `Id_E/S` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `DNI_Grupos` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`Id_carrera`) REFERENCES `carreras` (`Id_carrera`),
  ADD CONSTRAINT `alumnos_ibfk_2` FOREIGN KEY (`Id_actividad`) REFERENCES `actividades` (`Id_actividad`);

--
-- Filtros para la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD CONSTRAINT `docentes_ibfk_1` FOREIGN KEY (`Id_actividad`) REFERENCES `actividades` (`Id_actividad`);

--
-- Filtros para la tabla `entrada_salida`
--
ALTER TABLE `entrada_salida`
  ADD CONSTRAINT `entrada_salida_ibfk_1` FOREIGN KEY (`DNI_Alumno`) REFERENCES `alumnos` (`DNI_Alumno`),
  ADD CONSTRAINT `entrada_salida_ibfk_2` FOREIGN KEY (`DNI_Grupos`) REFERENCES `grupos` (`DNI_Grupos`),
  ADD CONSTRAINT `entrada_salida_ibfk_3` FOREIGN KEY (`DNI_Docente`) REFERENCES `docentes` (`DNI_Docente`);

--
-- Filtros para la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD CONSTRAINT `grupos_ibfk_1` FOREIGN KEY (`Id_actividad`) REFERENCES `actividades` (`Id_actividad`),
  ADD CONSTRAINT `grupos_ibfk_2` FOREIGN KEY (`Id_carrera`) REFERENCES `carreras` (`Id_carrera`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
