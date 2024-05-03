-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2024 a las 23:41:46
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `autores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id`, `nombre`, `apellido`, `nacimiento`) VALUES
(1, 'jane ', 'austen', '1775-12-16'),
(2, 'paulo ', 'cohelo', '1947-08-24'),
(3, 'hermann ', 'hesse', '1877-07-02'),
(4, 'gabriel', 'garcía_marquez', '1927-03-06'),
(5, 'george', 'orwell', '1903-06-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `genero` varchar(100) NOT NULL,
  `precio` double(10,2) NOT NULL,
  `cantidad_pag` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id`, `nombre`, `fecha_publicacion`, `genero`, `precio`, `cantidad_pag`, `id_autor`) VALUES
(1, 'orgullo y prejuicio', '1813-03-04', 'romance', 25000.00, 300, 1),
(2, 'emma', '1815-12-29', 'drama', 30000.00, 400, 1),
(3, 'sentido y sensatez', '1811-12-19', 'romance', 22000.00, 340, 1),
(4, 'persuacion', '1818-06-10', 'Romance', 21700.00, 370, 1),
(5, 'el_zahir', '2005-12-07', 'contemporáneo', 18000.00, 352, 2),
(6, 'brida', '2002-05-23', 'misterio', 14000.00, 360, 2),
(7, 'el_lobo_estepario', '1927-04-09', 'ficcion_filosofica', 5000.00, 380, 3),
(8, 'la_rebelion_en_la_granja', '1945-06-23', 'ficcion_distopica', 5000.00, 92, 5),
(9, '1984', '1949-08-23', 'ciencia_ficcion_politica', 10000.00, 326, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libro_autor` (`id_autor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_autor` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
