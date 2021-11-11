-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-11-2021 a las 15:40:04
-- Versión del servidor: 10.5.12-MariaDB
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id17593546_veterinariapatitas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `ID` int(11) NOT NULL,
  `nombreapellido` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `motivo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mensaje` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`ID`, `nombreapellido`, `correo`, `telefono`, `motivo`, `mensaje`) VALUES
(1, 'Camila', 'cami@mil.com', '44444', 'consulta', 'muy buenos productos'),
(2, 'romina', 'gapalvarez@hotmail.com', '999', 'Consulta', '999'),
(3, 'romina', 'gapalvarez@hotmail.com', '999', 'Consulta', '999'),
(4, 'Ariel', 'gapalvarez@hotmail.com', '35378526', 'Pedido', 'Holaaa quiero pedir 10 kg. de alimentos'),
(5, 'Ariel', 'gapalvarez@hotmail.com', '35378526', 'Pedido', 'Holaaa quiero pedir 10 kg. de alimentos'),
(6, 'Luci', 'silvia_molina@live.com', '357896', 'Reclamo', 'no me llego el producto'),
(7, 'Diego', 'lacasa@live.com.ar', '356878569', 'Reclamo', 'la correa se corto'),
(8, 'Malvina ', 'mal@gmail.com', '356478512', 'Opinion', 'que linda pagina!'),
(9, 'Lourdes', 'lumontileloutre@hotmail.com', '3517506980', 'Consulta', 'Hola'),
(10, 'Malvina ', 'mal@gmail.com', '356478512', 'Opinion', 'que linda pagina!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `IdCP` int(255) NOT NULL,
  `localidad` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `departamento` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `provincia` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `país` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`IdCP`, `localidad`, `departamento`, `provincia`, `país`) VALUES
(2550, 'Bell Ville', 'Unión', 'Córdoba ', 'Argentina'),
(2568, 'Justiniano Posse', 'Unión', 'Córdoba', 'Argentina'),
(5000, 'Cordoba Capital', 'Unión', 'Córdoba ', 'Argentina'),
(5900, 'Villa Maria', 'Gral. San Martin', 'Córdoba', 'Argentina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `IdLogin` int(11) NOT NULL,
  `IdAcceso` int(11) NOT NULL,
  `fechaHora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IdAcceso` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `telefono` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `localidad_CP` int(255) NOT NULL,
  `correo_electronico` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `contraseña` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_de_baja` date NOT NULL,
  `domicilio` int(200) NOT NULL,
  `dni` int(11) NOT NULL,
  `tipo_dni` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`IdCP`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`IdLogin`),
  ADD KEY `IdAcceso` (`IdAcceso`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IdAcceso`),
  ADD KEY `localidad_CP` (`localidad_CP`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `IdLogin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IdAcceso` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `IdAcceso` FOREIGN KEY (`IdAcceso`) REFERENCES `usuario` (`IdAcceso`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `localidad_CP` FOREIGN KEY (`localidad_CP`) REFERENCES `localidad` (`IdCP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
