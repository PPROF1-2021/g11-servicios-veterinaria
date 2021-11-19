-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-11-2021 a las 15:18:06
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
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `idArticulos` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `idOperacion` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `idArticulo` int(11) DEFAULT NULL,
  `idLogin` int(11) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producto/servicio` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(10, 'Malvina ', 'mal@gmail.com', '356478512', 'Opinion', 'que linda pagina!'),
(11, 'Pablo Perez', 'pperez@gmail.com', '353689755', 'Pedido', 'quiero comprar un gato siamés.'),
(12, 'Julia Fuentes', 'julif2q@hotmail.com.ar', '351246968', 'Reclamo', 'No me llegó la camita. '),
(13, 'Julian Fuentes', 'fuente@gmail.com', '3514789657', 'Consulta', 'venden conejos ??'),
(14, 'Matias Lucco', 'ml2@gmail.com', '356871542', 'Opinion', 'Muy linda la web'),
(15, 'Luz Vdal', 'Vida@hotmail.com', '3514759', 'Consulta', 'tienen ropa para caniche?'),
(16, 'romina molina', 'rominamolina_4@hotmail.com', '0353715517280', 'Opinion', 'todo bien'),
(17, 'Camila', 'rominamolina_4@hotmail.com', '356467', 'Consulta', 'que lindo'),
(18, 'Carlos Juarez', 'cristianrey_14@hotmail.com', '3537517280', 'Opinion', 'Muy Lindo'),
(19, 'Carlos Juarez', 'cristianrey_14@hotmail.com', '3537517280', 'Opinion', 'Muy Lindo'),
(20, 'Juan riquelme', 'silvia_molina@live.com', '357895469', 'Reclamo', 'Cuando llega'),
(21, 'Juan riquelme', 'silvia_molina@live.com', '357895469', 'Reclamo', 'Cuando llega'),
(22, 'Pedro Cachin', 'p@gmail.com', '351478289', 'Opinion', 'quiero probar'),
(25, 'Luciana Palo', 'pp@gmail.com', '3547889965', 'Reclamo', 'Que lindo todo'),
(26, 'pris', 'pris@gmail.com', '351273625', 'Reclamo', 'hola'),
(27, 'Juan Roman', 'JR@gmail.com', '351245632', 'Opinion', 'Muy linda pagina');

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
(5850, 'Rio Tercero', 'Rio Tercero', 'Córdoba', 'Argentina'),
(5856, 'Embalse', 'Calamuchita ', 'Córdoba', 'Argentina'),
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

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`IdLogin`, `IdAcceso`, `fechaHora`) VALUES
(1, 1, '2021-11-30 22:46:04'),
(2, 1, '2021-11-14 06:31:43'),
(3, 1, '2021-11-14 06:33:09'),
(4, 1, '2021-11-14 06:46:51'),
(5, 2, '2021-11-14 06:52:47'),
(6, 1, '2021-11-14 07:03:20'),
(7, 11, '2021-11-15 06:13:54'),
(8, 1, '2021-11-16 01:23:26'),
(9, 1, '2021-11-16 01:25:16'),
(10, 1, '2021-11-16 01:26:32'),
(11, 1, '2021-11-16 01:37:20'),
(12, 1, '2021-11-16 01:39:03'),
(13, 1, '2021-11-16 01:39:35'),
(14, 1, '2021-11-16 02:52:09'),
(15, 1, '2021-11-18 07:20:53'),
(16, 1, '2021-11-18 07:23:20'),
(17, 47, '2021-11-18 11:33:22'),
(18, 4, '2021-11-19 02:40:15'),
(19, 4, '2021-11-19 02:40:56'),
(20, 7, '2021-11-19 02:51:24'),
(21, 7, '2021-11-19 02:51:48');

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
  `contrasena` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_de_baja` date NOT NULL,
  `domicilio` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `dni` int(11) NOT NULL,
  `tipo_dni` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IdAcceso`, `nombre`, `apellido`, `fecha_de_nacimiento`, `telefono`, `localidad_CP`, `correo_electronico`, `contrasena`, `fecha_de_baja`, `domicilio`, `dni`, `tipo_dni`) VALUES
(1, 'Romina ', 'Molina', '1986-04-16', '3537517280', 2550, 'rominamolina_4@hotmail.com', '123456ro', '2021-11-16', 'Malharro 76', 32080820, 'DNI'),
(2, 'Juan ', 'Ramirez', '1970-05-08', '351234567543', 5000, 'juanp@gmail.com', 'juan234', '0000-00-00', 'Casilda 78', 16838719, 'DNI'),
(3, 'Silvia', 'Molina', '1986-05-20', '03517489554', 2550, 'rominam@hotmail.com', '124566369', '0000-00-00', 'Barcia 870', 16838719, 'DNI'),
(4, 'MarianoJesus', 'Bustos', '2000-04-16', '3537514289', 2550, 'marian3@gmail.com', '124563', '0000-00-00', 'Rivadavia 50', 25789632, 'DNI'),
(5, 'MarianoJesus', 'Bustos', '2000-04-16', '3537514289', 2550, 'marian1@gmail.com', '124563', '2021-11-16', 'Rivadavia 50', 25789632, 'DNI'),
(6, 'MarianoJesus', 'Bustos', '2000-04-16', '3537514289', 2550, 'marian2@gmail.com', '124563', '2021-11-18', 'Rivadavia 50', 25789632, 'DNI'),
(7, 'MarianoJesus', 'Bustos', '2000-04-16', '3537514289', 2550, 'marian@gmail.com', '124563', '0000-00-00', 'Rivadavia 50', 25789632, 'DNI'),
(8, 'MarianoJesus', 'Bustos', '2000-04-16', '3537514289', 2550, 'marian8@gmail.com', '124563', '2021-11-16', 'Rivadavia 50', 25789632, 'DNI'),
(9, 'MarianoJesus', 'Bustos', '2000-04-16', '3537514289', 2550, 'marian9@gmail.com', '124563', '2021-11-16', 'Rivadavia 50', 25789632, 'DNI'),
(10, 'MarianoJesus', 'Bustos', '2000-04-16', '3537514289', 2550, 'marian10@gmail.com', '124563', '2021-11-16', 'Rivadavia 50', 25789632, 'DNI'),
(11, 'priscilla', 'mingo', '1997-09-08', '12334567', 5000, 'hola@gmail.com', '123hola', '0000-00-00', 'Sucre', 40298267, 'din'),
(22, 'priscilla', 'fdasd', '1998-09-06', '345267356', 5000, 'holii@gmail.com', '123hola', '0000-00-00', 'Sucre', 40296677, 'dni'),
(25, 'cuti', 'qewrw', '1995-07-31', '23457545', 5000, 'hola22@gmail.com', '123hola', '2021-11-16', 'hola2', 40298278, 'dni'),
(26, 'culñop ', 'asdas', '1999-09-04', '7465284758', 5000, 'hola123@gmail.com', '123holas', '0000-00-00', 'Sggg', 53645826, 'dni'),
(28, 'tryrty', 'tyrty', '1990-05-04', '3664748329', 5000, 'hola234@gmail.com', '123hola', '0000-00-00', 'Sucreqq ', 40298200, 'dni'),
(29, 'mina', 'jskdu', '1998-12-10', '3516482333', 5000, 'lumoloutre@hotmail.com', '124juhgs', '0000-00-00', 'rio nrgoi', 25465851, 'dni'),
(30, 'cecilia', 'leloutre', '1995-10-10', '3518889555', 5000, 'c3leloutre@gmail.com', 'guaws12', '2021-11-16', 'tafi', 18558798, 'dni'),
(31, 'juju', 'kiki', '2000-09-08', '1234562735', 5000, 'hola234w@gmail.com', '123holaa66', '0000-00-00', 'Sucreuu', 23456789, 'dni'),
(32, 'catalina', 'pucha', '1996-02-02', '3517679856', 5000, 'catalina@gmail.com', 'wowki152', '0000-00-00', 'tafi', 18556235, 'dni'),
(33, 'holauyt', 'ytuty', '1999-04-04', '536598389', 5000, 'hola22@gmail.com', '123holaa66', '0000-00-00', 'yyyytr', 43856366, '79869839'),
(34, 'romina', 'mokilam', '1998-02-12', '3572456999', 5000, 'romina@gmail.com', '4562lordes', '0000-00-00', 'tafi', 18558799, 'dni'),
(35, 'trt', 'rte', '1990-08-07', '2123452356', 5000, 'ewew@gmail.com', 'werwerwe', '2021-11-16', 'Sucrettt', 46578294, 'dni'),
(36, 'priscila', 'erw', '2000-03-12', '123124356', 5000, 'pris44@gmail.com', 'werwerwe', '0000-00-00', 'Sucreee', 60594955, 'dni'),
(37, 'fdgdfs', 'gdf', '1990-05-04', '234345457', 5000, 'pris34@gmail.com', '123hola', '0000-00-00', 'hola', 36482320, 'dni'),
(38, 'hola', 'carola', '2000-08-09', '32623248', 5000, 'hola234@gmail.com', 'hola1234', '0000-00-00', 'sucreeee', 36475903, 'dni'),
(39, 'lautaro', 'canto', '1999-12-02', '3578453222', 5000, 'lautaro@gmail.com', 'mirta123', '0000-00-00', 'tafi', 41623369, 'dni'),
(40, 'tomas', 'canto', '1998-01-01', '3547856222', 5000, 'tomascanto@gmail.com', '1235Lumon', '0000-00-00', 'tafi', 18445785, 'dni'),
(41, 'hgjghj', 'ghjgh', '2000-05-04', '2346238253', 5000, 'holaaaa@gmail.com', '123holaa66', '0000-00-00', 'Sucrerrer', 5638554, 'dni'),
(42, 'leandro', 'porta', '1998-01-01', '3574856222', 5000, 'leandroporta@gmail.com', 'holaco12', '0000-00-00', 'tafi', 17885754, 'dni'),
(43, 'pris', 'mingorance', '1997-09-08', '3512739261', 5000, 'pris@gmail.com', '1234hola', '0000-00-00', 'Sucre', 40298267, 'dni'),
(44, 'Damian', 'Fabio', '1955-04-14', '3514449887', 5000, 'dami@gmail.com.ar', '123456TU', '0000-00-00', 'Sucre', 165908607, 'DNI'),
(45, 'Romina Gisela', 'Molina', '1986-04-16', '3537517280', 2550, 'rominamolina_4@hotmail.com', '123456ro', '0000-00-00', 'Rivadavia 50', 32080820, 'dni'),
(46, 'Ramiro', 'Martinez', '1980-12-12', '354685126', 5000, 'ramim@gmail.com', '123456', '0000-00-00', 'Barcia 870', 36547965, 'DNI'),
(47, 'Facu', 'Perez', '1990-08-09', '1235637483', 5000, 'facu@gmail.com', '123hola', '2021-11-18', 'Sucre', 40743492, 'dni');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`idArticulos`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`idOperacion`),
  ADD KEY `IdArticulo` (`idArticulo`),
  ADD KEY `IdLogin` (`idLogin`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

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
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `idArticulos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `idOperacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `IdLogin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IdAcceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `idCategoria` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`);

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `IdArticulo` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`idArticulos`),
  ADD CONSTRAINT `IdLogin` FOREIGN KEY (`idLogin`) REFERENCES `login` (`IdLogin`);

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
