-- phpMyAdmin SQL Dump
-- version 4.4.13.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-01-2016 a las 02:57:07
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.5.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `stockbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
  `id` int(11) NOT NULL,
  `referencia` varchar(30) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `categoria` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `nombrearticulo` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `codigobarras` int(50) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `marca` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id`, `referencia`, `categoria`, `nombrearticulo`, `descripcion`, `precio`, `cantidad`, `codigobarras`, `color`, `marca`) VALUES
(1, 'QRFETA', 'camisetas', 'camiseta mayoral', 'talla 14', 13.99, 100, 8425346, 'azul', 'mayoral'),
(2, 'KFTAHE', 'pantalones', 'pantalones chupachups niño', 'talla 12', 14.95, 50, 2147483647, 'negro', 'chupachups');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombrecategoria` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriaarticulo`
--

CREATE TABLE IF NOT EXISTS `categoriaarticulo` (
  `id` int(11) NOT NULL COMMENT 'id',
  `nombre` varchar(255) DEFAULT NULL COMMENT 'nombre',
  `descripcion` varchar(255) DEFAULT NULL COMMENT 'descripcion'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoriaarticulo`
--

INSERT INTO `categoriaarticulo` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Automóviles', 'En esta categoría podrás encontrar todo el contenido sobre automóviles.'),
(2, 'Deportes', 'En esta categoría podrás encontrar todo el contenido sobre deportes.'),
(3, 'Gastronomía', 'En esta categoría podrás encontrar todo el contenido sobre gastronomía.'),
(4, 'Naturaleza', 'En esta categoría podrás encontrar todo el contenido sobre naturaleza.'),
(5, 'Ciencia', 'En esta categoría podrás encontrar todo el contenido sobre ciencias.'),
(6, 'Política', 'En esta categoría podrás encontrar todo el contenido sobre política.'),
(7, 'Libros', 'En esta categoría podrás encontrar todo el contenido sobre libros.'),
(8, 'Cine', 'En esta categoría podrás encontrar todo el contenido sobre cine.'),
(9, 'Videojuegos', 'En esta categoría podrás encontrar todo el contenido sobre videojuegos.'),
(10, 'Tecnología', 'En esta categoría podrás encontrar todo el contenido sobre tecnología.'),
(11, 'Historia', 'En esta categoría podrás encontrar todo el contenido sobre historia.'),
(12, 'Arte', 'En esta categoría podrás encontrar todo el contenido sobre arte.'),
(13, 'Meteorología', 'En esta categoría podrás encontrar todo el contenido sobre meteorología.'),
(14, 'Turismo', 'En esta categoría podrás encontrar todo el contenido sobre zonas turísticas.'),
(15, 'Humor', 'En esta categoría podrás encontrar todo el contenido sobre humor.'),
(16, 'Cultura', 'En esta categoría podrás encontrar todo el contenido sobre cultura.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE IF NOT EXISTS `comentario` (
  `id` int(11) NOT NULL COMMENT 'id',
  `contenido` text COMMENT 'contenido',
  `nombreautor` varchar(255) DEFAULT NULL COMMENT 'nombre autor',
  `id_documento` int(11) DEFAULT NULL COMMENT 'id documento'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`id`, `contenido`, `nombreautor`, `id_documento`) VALUES
(1, 'No me hace mucha gracia que te hagas amigo de mi hermana.', 'Nando Laorden', NULL),
(2, 'Crea tablas pa la estantería del vino', 'Iván García', NULL),
(3, 'Allahu Akbar', 'Santiago Ferrandis', NULL),
(4, 'Normalizao', 'Fernando Cantos', NULL),
(5, '¿Y la europea?', 'Mariano Rajoy', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE IF NOT EXISTS `documento` (
  `id` int(6) NOT NULL COMMENT 'Num.',
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Titulo',
  `contenido` longtext COLLATE utf8_unicode_ci COMMENT 'Contenido',
  `alta` date DEFAULT NULL COMMENT 'Alta',
  `cambio` date DEFAULT NULL COMMENT 'Cambio',
  `hits` int(10) DEFAULT NULL COMMENT 'Hits',
  `id_usuario` int(6) DEFAULT NULL COMMENT 'Usuario',
  `etiquetas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Etiquetas',
  `publicado` tinyint(1) DEFAULT NULL COMMENT 'Publicado',
  `portada` tinyint(1) DEFAULT NULL COMMENT 'Portada',
  `destacado` tinyint(1) DEFAULT NULL COMMENT 'Destacado',
  `id_tipodocumento` int(6) DEFAULT NULL COMMENT 'Tipo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentocategoriaarticulo`
--

CREATE TABLE IF NOT EXISTS `documentocategoriaarticulo` (
  `id` int(11) NOT NULL COMMENT 'id',
  `id_documento` int(11) DEFAULT NULL COMMENT 'id documento',
  `id_categoriaarticulo` int(11) DEFAULT NULL COMMENT 'id categoriaarticulo',
  `descripcion` varchar(255) DEFAULT NULL COMMENT 'descripcion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `id` int(11) NOT NULL COMMENT 'Identificador',
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado'
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `tipo`) VALUES
(1, 'Estoy contento'),
(2, 'Estoy feliz'),
(3, 'Estoy happy'),
(4, 'Estoy triste'),
(5, 'Estoy con fiebre'),
(6, 'Tengo fiebre'),
(7, 'En el gimnasio'),
(8, 'De quintos'),
(9, 'En el cine'),
(10, 'Estudiando'),
(11, 'En el trabajo'),
(12, 'Durmiendo'),
(13, 'En el baño...'),
(14, 'En el medico'),
(15, 'De fiesta'),
(16, 'Confuso'),
(17, 'Deprimido'),
(18, 'Fantastico'),
(19, 'OP'),
(20, 'rafa es el mejor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE IF NOT EXISTS `pregunta` (
  `id` int(11) NOT NULL,
  `id_documento` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id`, `id_documento`, `descripcion`) VALUES
(1, 88, NULL),
(3, 89, NULL),
(4, 90, NULL),
(5, 1, NULL),
(6, 2, NULL),
(7, 3, NULL),
(8, 4, NULL),
(9, 5, NULL),
(10, 6, NULL),
(11, 7, NULL),
(12, 8, NULL),
(13, 9, NULL),
(14, 10, NULL),
(15, 19, NULL),
(16, 88, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE IF NOT EXISTS `tipodocumento` (
  `id` int(6) NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `privado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipodocumento`
--

INSERT INTO `tipodocumento` (`id`, `descripcion`, `privado`) VALUES
(1, 'oferta de trabajo', 1),
(2, 'currículum', 1),
(3, 'actividad', 1),
(4, 'experiencia', 1),
(5, 'formación', 1),
(6, 'valía', 1),
(7, 'inscripción', 1),
(8, 'solicitud', 1),
(9, 'bolsa de trabajo', 1),
(10, 'idiomas', 1),
(11, 'wer', 1),
(12, 'cuestionario', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE IF NOT EXISTS `tipousuario` (
  `id` int(11) NOT NULL COMMENT 'Identificador',
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'Usuario'),
(3, 'Visitante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(6) NOT NULL COMMENT 'Identificador',
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre de usuario',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Contraseña',
  `id_tipousuario` int(11) DEFAULT NULL COMMENT 'Tipo de usuario'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `password`, `id_tipousuario`) VALUES
(1, 'rubocoptero', 'clariruni93', 1),
(2, 'almudena', 'almudena', 2),
(3, 'visitante', 'visitante', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE IF NOT EXISTS `venta` (
  `id_venta` int(11) NOT NULL,
  `id_articulo` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `cantidad` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `categoriaarticulo`
--
ALTER TABLE `categoriaarticulo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documentocategoriaarticulo`
--
ALTER TABLE `documentocategoriaarticulo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categoriaarticulo`
--
ALTER TABLE `categoriaarticulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Num.';
--
-- AUTO_INCREMENT de la tabla `documentocategoriaarticulo`
--
ALTER TABLE `documentocategoriaarticulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id';
--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
