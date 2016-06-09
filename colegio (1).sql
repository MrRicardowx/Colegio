-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2016 a las 21:52:15
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE IF NOT EXISTS `alumno` (
  `RUT_Alumno` varchar(20) NOT NULL,
  `Nombre_Alumno` varchar(20) NOT NULL,
  `ApellidoP_Alumno` varchar(20) NOT NULL,
  `ApellidoM_Alumno` varchar(20) NOT NULL,
  `FechaNac_Alumno` date NOT NULL,
  `Dias_Presente` int(11) NOT NULL,
  `Dias_Ausente` int(11) NOT NULL,
  `Dias_Justificados` int(11) NOT NULL,
  `RUT_Apoderado` varchar(20) NOT NULL,
  `id_Curso` int(11) NOT NULL,
  PRIMARY KEY (`RUT_Alumno`),
  KEY `id_Curso_idx` (`id_Curso`),
  KEY `RUT_Apoderado_idx` (`RUT_Apoderado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anotacion`
--

CREATE TABLE IF NOT EXISTS `anotacion` (
  `id_Anotacion` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(20) NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  `Fecha` date NOT NULL,
  `RUT_Alumno` varchar(20) NOT NULL,
  PRIMARY KEY (`id_Anotacion`),
  KEY `id_Anotacion` (`id_Anotacion`),
  KEY `RUT_Alumnos_idx` (`RUT_Alumno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apoderado`
--

CREATE TABLE IF NOT EXISTS `apoderado` (
  `RUT_Apoderado` varchar(20) NOT NULL,
  `Nombre_Apoderado` varchar(20) NOT NULL,
  `ApellidoP_Apoderado` varchar(20) NOT NULL,
  `ApellidoM_Apoderado` varchar(20) NOT NULL,
  `FechaNac_Apoderado` date NOT NULL,
  `Telefono_Apoderado` int(11) NOT NULL,
  `Correo_Apoderado` varchar(20) NOT NULL,
  PRIMARY KEY (`RUT_Apoderado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE IF NOT EXISTS `asignatura` (
  `id_Asignatura` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Alumno` varchar(20) NOT NULL,
  `ApellidoP_Alumno` varchar(20) NOT NULL,
  `ApellidoM_Alumno` varchar(20) NOT NULL,
  `FechaNac_Alumno` date NOT NULL,
  `Dias_Presente` int(11) NOT NULL,
  `Dias_Ausente` int(11) NOT NULL,
  `Dias_Justificados` int(11) NOT NULL,
  `RUT_Profesor` varchar(20) NOT NULL,
  PRIMARY KEY (`id_Asignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `id_Curso` int(11) NOT NULL AUTO_INCREMENT,
  `Nivel` varchar(5) NOT NULL,
  `Letra` varchar(1) NOT NULL,
  `CantAlumnos` int(11) NOT NULL,
  `RUT_Profesor` varchar(20) NOT NULL,
  PRIMARY KEY (`id_Curso`),
  KEY `RUT_Profesor_idx` (`RUT_Profesor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE IF NOT EXISTS `notas` (
  `id_Notas` int(11) NOT NULL AUTO_INCREMENT,
  `N1` int(11) DEFAULT NULL,
  `N2` int(11) DEFAULT NULL,
  `N3` int(11) DEFAULT NULL,
  `N4` int(11) DEFAULT NULL,
  `N5` int(11) DEFAULT NULL,
  `N6` int(11) DEFAULT NULL,
  `N7` int(11) DEFAULT NULL,
  `N8` int(11) DEFAULT NULL,
  `N9` int(11) DEFAULT NULL,
  `N10` int(11) DEFAULT NULL,
  `RUT_Alumno` varchar(20) NOT NULL,
  `id_Asignatura` int(11) NOT NULL,
  PRIMARY KEY (`id_Notas`),
  KEY `RUT_Alumno_idx` (`RUT_Alumno`),
  KEY `id_Asignatura_idx` (`id_Asignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE IF NOT EXISTS `profesor` (
  `RUT_Profesor` varchar(20) NOT NULL,
  `Nombre_Profesor` varchar(20) NOT NULL,
  `ApellidoP_Profesor` varchar(20) NOT NULL,
  `ApellidoM_Profesor` varchar(20) NOT NULL,
  `FechaNac_Profesor` date NOT NULL,
  `Telefono_Profesor` int(11) NOT NULL,
  `Correo_Profesor` varchar(20) NOT NULL,
  PRIMARY KEY (`RUT_Profesor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `id_Curso` FOREIGN KEY (`id_Curso`) REFERENCES `curso` (`id_Curso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `RUT_Apoderado` FOREIGN KEY (`RUT_Apoderado`) REFERENCES `apoderado` (`RUT_Apoderado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `anotacion`
--
ALTER TABLE `anotacion`
  ADD CONSTRAINT `RUT_Alumnos` FOREIGN KEY (`RUT_Alumno`) REFERENCES `alumno` (`RUT_Alumno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `RUT_Profesor` FOREIGN KEY (`RUT_Profesor`) REFERENCES `profesor` (`RUT_Profesor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `RUT_Alumno` FOREIGN KEY (`RUT_Alumno`) REFERENCES `alumno` (`RUT_Alumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_Asignatura` FOREIGN KEY (`id_Asignatura`) REFERENCES `asignatura` (`id_Asignatura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
