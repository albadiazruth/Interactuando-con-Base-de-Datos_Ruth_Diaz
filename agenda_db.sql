-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2019 a las 03:29:05
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `hora_inicio` varchar(20) DEFAULT NULL,
  `fecha_finalizacion` varchar(20) DEFAULT NULL,
  `hora_finalizacion` varchar(20) DEFAULT NULL,
  `allday` tinyint(1) NOT NULL,
  `fk_usuarios` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `titulo`, `fecha_inicio`, `hora_inicio`, `fecha_finalizacion`, `hora_finalizacion`, `allday`, `fk_usuarios`) VALUES
(11, 'Presentacion de Proyecto', '2019-05-15', '17:00:00', '2019-05-16', '20:00:00', 0, 'albadiazruth@gmail.com'),
(12, 'CumpleaÃ±os de Belkis', '2019-05-06', ':00', '', ':00', 1, 'albadiazruth@gmail.com'),
(13, 'CumpleaÃ±os de Genezaret', '2019-05-19', ':00', '', ':00', 1, 'albadiazruth@gmail.com'),
(14, 'CumpleaÃ±os de Madelin', '2019-05-19', ':00', '', ':00', 1, 'albadiazruth@gmail.com'),
(15, 'CumpleaÃ±os de Tio Juan', '2019-05-15', ':00', '', ':00', 1, 'albadiazruth@gmail.com'),
(16, 'CumpleaÃ±os de Javier', '2019-06-10', ':00', '', ':00', 1, 'flow_stargirl@hotmail.com'),
(17, 'CumpleaÃ±os de Oandy', '2019-06-13', ':00', '', ':00', 1, 'flow_stargirl@hotmail.com'),
(18, 'Enviar tarea de NextU', '2019-05-14', '10:30:00', '2019-05-14', '11:00:00', 0, 'rutu.justdance@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `email` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`email`, `nombre`, `password`, `fecha_nacimiento`) VALUES
('albadiazruth@gmail.com', 'Alba D. Ruth', '$2y$10$oC2yCL/hw5/qpzztSMbZu.0lfKfUpbEfXYOK6LlbTsPqj488iJnhq', '1994-07-18'),
('flow_stargirl@hotmail.com', 'Ruth Diaz', '$2y$10$yTmfo.KKJX1aFbHp3gXvy.TSqFxClOjY4BgtI7tdVS952NaxeSWfC', '1994-07-18'),
('rutu.justdance@gmail.com', 'Rutu Dance', '$2y$10$vJXk5jnNYGPFXslxtrzxMe7dF8E4gRxq4OGtRGUikKg4JjUGvcc7.', '1994-07-18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuarios` (`fk_usuarios`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `fk_usuarioemail_evento` FOREIGN KEY (`fk_usuarios`) REFERENCES `usuarios` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
