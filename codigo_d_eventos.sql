-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2024 a las 00:36:00
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `codigo d'eventos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbusuario`
--

CREATE TABLE `tbusuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `gmail` varchar(20) NOT NULL,
  `telefono` int(10) NOT NULL,
  `direccion` varchar(20) NOT NULL,
  `clave` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbusuario`
--

INSERT INTO `tbusuario` (`id_usuario`, `nombre`, `apellido`, `gmail`, `telefono`, `direccion`, `clave`) VALUES
(1, 'tomas', 'tordecilla', 'toma@gmail', 3042142, 'nfihuES', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` int(20) NOT NULL,
  `fecha_nacimiento` int(10) NOT NULL,
  `direccion` varchar(20) NOT NULL,
  `numero_cedula` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_reserva`
--

CREATE TABLE `tb_reserva` (
  `id_reserva` int(11) NOT NULL,
  `tipo_evento` varchar(20) NOT NULL,
  `precio_total` int(11) NOT NULL,
  `agendar_reserva` datetime NOT NULL,
  `tipo_decoracion` varchar(30) NOT NULL,
  `informacion_reserva` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_servicio`
--

CREATE TABLE `tb_servicio` (
  `id_servicio` int(11) NOT NULL,
  `nombre_servicio` varchar(20) NOT NULL,
  `precio_servicio` int(11) NOT NULL,
  `descripcion_servicio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbusuario`
--
ALTER TABLE `tbusuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `tb_reserva`
--
ALTER TABLE `tb_reserva`
  ADD PRIMARY KEY (`id_reserva`);

--
-- Indices de la tabla `tb_servicio`
--
ALTER TABLE `tb_servicio`
  ADD PRIMARY KEY (`id_servicio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbusuario`
--
ALTER TABLE `tbusuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_cliente`
--
ALTER TABLE `tb_cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_reserva`
--
ALTER TABLE `tb_reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_servicio`
--
ALTER TABLE `tb_servicio`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
