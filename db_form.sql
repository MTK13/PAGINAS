-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2021 a las 04:59:43
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_form`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_form`
--

CREATE TABLE `tabla_form` (
  `id` int(5) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `apellido` varchar(150) NOT NULL,
  `documento` varchar(12) NOT NULL,
  `edad` varchar(3) NOT NULL,
  `tipo_sangre` varchar(20) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `direccion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_form`
--

INSERT INTO `tabla_form` (`id`, `nombre`, `apellido`, `documento`, `edad`, `tipo_sangre`, `sexo`, `telefono`, `direccion`) VALUES
(22, 'Melissa', 'Sanchez', '101515153', '17', 'O+', 'Femenino', '5287964', '0'),
(24, 'meli', 'Diaz', '1000292821', '20', 'A+--B-', '52', '5287567', 'direccion'),
(25, 'meli', 'Diaz', '1000292821', '20', 'A+--B-', '52', '5287567', 'direccion'),
(26, 'JENNY JOHANNA GALLEGO ZAPATA', 'Gallego', '1000292821', '20', 'A+', 'Maculino', '5287567', 'direccion'),
(27, 'JENNY JOHANNA GALLEGO ZAPATA', 'Gallego', '1000292821', '20', 'A+', 'Maculino', '5287567', 'direccion'),
(28, '000000', 'Diaz', '1000292821', '20', 'A+', 'Maculino', '5287567', 'direccion'),
(29, '000000', 'Diaz', '1000292821', '20', 'A+', 'Maculino', '5287567', 'direccion'),
(30, 'kevin gallego', 'Gallego', '1000292821', '20', 'A+', 'Maculino', '5287567', 'direccion');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tabla_form`
--
ALTER TABLE `tabla_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tabla_form`
--
ALTER TABLE `tabla_form`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
