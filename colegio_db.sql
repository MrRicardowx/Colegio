-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2016 a las 05:55:45
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `colegio_db`
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

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`RUT_Alumno`, `Nombre_Alumno`, `ApellidoP_Alumno`, `ApellidoM_Alumno`, `FechaNac_Alumno`, `Dias_Presente`, `Dias_Ausente`, `Dias_Justificados`, `RUT_Apoderado`, `id_Curso`) VALUES
('18.661.111-7', 'Fernando', 'Handal', 'Jandal', '2000-03-12', 10, 6, 3, '12.311.725-7', 2),
('18.712.123-4', 'Pablo', 'Zuri', 'Suri', '1998-05-07', 12, 3, 2, '14.332.445-2', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `anotacion`
--

INSERT INTO `anotacion` (`id_Anotacion`, `Tipo`, `Descripcion`, `Fecha`, `RUT_Alumno`) VALUES
(1, 'POSITIVA', 'Niño bueno', '2015-03-15', '18.712.123-4'),
(2, 'NEGATIVA', 'Escupe a la profesora', '2015-05-12', '18.661.111-7');

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

--
-- Volcado de datos para la tabla `apoderado`
--

INSERT INTO `apoderado` (`RUT_Apoderado`, `Nombre_Apoderado`, `ApellidoP_Apoderado`, `ApellidoM_Apoderado`, `FechaNac_Apoderado`, `Telefono_Apoderado`, `Correo_Apoderado`) VALUES
('12.311.725-7', 'Papá', 'Hand', 'Jand', '1990-03-12', 85937841, 'd@d.com'),
('14.332.445-2', 'Mamá', 'Zuri', 'Suri', '1991-05-11', 75643542, 'c@c.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE IF NOT EXISTS `asignatura` (
  `id_Asignatura` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Asignatura` varchar(50) NOT NULL,
  `RUT_Profesor` varchar(20) NOT NULL,
  PRIMARY KEY (`id_Asignatura`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`id_Asignatura`, `Nombre_Asignatura`, `RUT_Profesor`) VALUES
(1, 'Comprensión del Medio', '10.111.222-3'),
(2, 'Educación Tecnológica', '11.222.333-3');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id_Curso`, `Nivel`, `Letra`, `CantAlumnos`, `RUT_Profesor`) VALUES
(1, '2', 'A', 15, '10.111.222-3'),
(2, '8', 'B', 21, '11.222.333-3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE IF NOT EXISTS `notas` (
  `id_Notas` int(11) NOT NULL AUTO_INCREMENT,
  `N1` float DEFAULT NULL,
  `N2` float DEFAULT NULL,
  `N3` float DEFAULT NULL,
  `N4` float DEFAULT NULL,
  `N5` float DEFAULT NULL,
  `N6` float DEFAULT NULL,
  `N7` float DEFAULT NULL,
  `N8` float DEFAULT NULL,
  `N9` float DEFAULT NULL,
  `N10` float DEFAULT NULL,
  `RUT_Alumno` varchar(20) NOT NULL,
  `id_Asignatura` int(11) NOT NULL,
  PRIMARY KEY (`id_Notas`),
  KEY `RUT_Alumno_idx` (`RUT_Alumno`),
  KEY `id_Asignatura_idx` (`id_Asignatura`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id_Notas`, `N1`, `N2`, `N3`, `N4`, `N5`, `N6`, `N7`, `N8`, `N9`, `N10`, `RUT_Alumno`, `id_Asignatura`) VALUES
(1, 5.3, 6.1, 1.8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18.661.111-7', 2),
(2, 6.2, 3.9, 3.8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18.712.123-4', 1);

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
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`RUT_Profesor`, `Nombre_Profesor`, `ApellidoP_Profesor`, `ApellidoM_Profesor`, `FechaNac_Profesor`, `Telefono_Profesor`, `Correo_Profesor`) VALUES
('10.111.222-3', 'JuanManuel', 'Zolezzi', 'Solesi', '1966-06-06', 74567564, 'solesi@s.com'),
('11.222.333-3', 'Sebastian', 'Piñera', 'Piñi', '1977-07-07', 84927495, 'piñi@p.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
