-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2016 a las 17:03:02
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
-- Estructura de tabla para la tabla `Alumno`
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Anotacion`
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


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Apoderado`
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Curso`
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Profesor`
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Asignatura`
--

CREATE TABLE `Asignatura` (
  `id_Asignatura` int(11) NOT NULL,
  `Nombre_Asignatura` varchar(50) NOT NULL,
  `RUT_Profesor` varchar(20) NOT NULL,
  PRIMARY KEY (`id_Asignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Notas`
--

CREATE TABLE `Notas` (
  `id_Notas` int(11) NOT NULL,
  `N1` int(11),
  `N2` int(11),
  `N3` int(11),
  `N4` int(11),
  `N5` int(11),
  `N6` int(11),
  `N7` int(11),
  `N8` int(11),
  `N9` int(11),
  `N10` int(11),
  `RUT_Alumno` varchar(20) NOT NULL,
  `id_Asignatura` int(11) NOT NULL,
  PRIMARY KEY (`id_Notas`),
  KEY `RUT_Alumno_idx` (`RUT_Alumno`),
  KEY `id_Asignatura_idx` (`id_Asignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-------------------------------------------------------------



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
