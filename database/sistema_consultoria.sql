-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2023 a las 23:25:06
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_consultoria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(7) NOT NULL,
  `nombre_empresa` varchar(50) NOT NULL,
  `direccion_empresa` varchar(50) NOT NULL,
  `correo_empresa` varchar(50) NOT NULL,
  `rubro_empresa` varchar(50) NOT NULL,
  `fecha_solicitud` date NOT NULL,
  `rut_empresa` int(8) NOT NULL,
  `dv_empresa` varchar(1) NOT NULL,
  `telefono_empresa` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(7) NOT NULL,
  `nombre_tipo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_tipo_usuario`, `nombre_tipo`) VALUES
(1, 'admin'),
(2, 'profesor'),
(3, 'alumno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `apellido_usuario` varchar(50) NOT NULL,
  `correo_usuario` varchar(50) NOT NULL,
  `direccion_usuario` varchar(50) NOT NULL,
  `fecha_solicitud` date NOT NULL,
  `rut_usuario` int(8) NOT NULL,
  `dv_usuario` varchar(1) NOT NULL,
  `contraseña_usuario` varchar(20) NOT NULL,
  `telefono_usuario` int(9) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `apellido_usuario`, `correo_usuario`, `direccion_usuario`, `fecha_solicitud`, `rut_usuario`, `dv_usuario`, `contraseña_usuario`, `telefono_usuario`, `rol`) VALUES
(1, 'Rogers', 'Alejandro', 'roshepss@gmail.com', 'Las acacias 390', '2023-05-16', 20835097, '8', '', 56828735, 'admin'),
(2, 'Martin', 'Castellano', 'aaaaaa@gmail.com', 'viña del mar', '2023-05-03', 12986374, '3', '', 76230945, 'profesor'),
(3, 'Vicente', 'Montenegro', 'bbbbb@gmail.com', 'Limache', '2023-05-10', 36876309, '1', '', 23874509, 'alumno'),
(4, 'asd', '', '', '', '0000-00-00', 0, '', '', 0, 'admin'),
(5, 'erertert', '', '', '', '0000-00-00', 0, '', '', 0, 'admin'),
(6, 'rrrrrrrrrrrrrrrrrrrrrrrrrr', '', '', '', '0000-00-00', 0, '', '', 0, 'profesor'),
(7, 'sss', 'sss', '', '', '0000-00-00', 0, '', '', 0, 'alumno'),
(8, 'asdasd', 'asdasd', 'asdasd', '', '0000-00-00', 0, '', '', 0, 'alumno'),
(9, 'asdasdasdasd', 'asdasdasdasd', 'asdasdasdasdasd', 'asdasdasdasdasd', '0000-00-00', 20835096, '1', '', 123454536, 'alumno'),
(10, 'qweqweqweqwe', 'qweqweqwe', 'qweqweqwe', 'qweqwe', '0000-00-00', 123123123, '1', '', 123123, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
