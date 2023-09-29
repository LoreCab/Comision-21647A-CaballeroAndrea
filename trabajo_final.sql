-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 29-09-2023 a las 04:57:26
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
-- Base de datos: `trabajo_final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `imagen` varchar(300) NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id`, `nombre`, `descripcion`, `imagen`, `fecha_creacion`) VALUES
(1, 'FNE 2023: el lunes será asueto escolar', 'El Gobierno de Jujuy confirmó que este lunes 2 de octubre habrá asueto escolar en todos los niveles por la FNE 2023.\r\n\r\nAsí lo dispuso el gobernador Gerardo Morales, con el propósito de acompañar a la juventud y a la familia jujeña en las diferentes instancias de la Fiesta Nacional de los Estudiantes 2023, como así también facilitar el normal desar', '', '2023-09-28 23:26:41'),
(2, 'Una fuerte explosión en Uzbekistán deja un muerto y más de 160 heridos', 'Una potente explosión se produjo en la madrugada de este jueves en un depósito de la empresa Inter Logistics, situado en el distrito Sergeli de Taskent, capital de Uzbekistán. Como consecuencia de la explosión, un adolescente de 15 años murió y un total de 163 personas resultaron heridas, según el Ministerio de Salud.', '', '2023-09-28 23:26:41'),
(3, 'Docentes de Jujuy paran por 48 horas en reclamo al gobierno provincial por \"descuentos indebidos\" en los salarios', 'Docentes de nivel inicial y primario de Jujuy realizarán desde el lunes un paro de 48 horas sin asistencia a los lugares de trabajo para reclamar al gobierno de Gerardo Morales \"la devolución de los días de paro y la exigencia de pago inmediato de los descuentos indebidos\". ', '', '2023-09-28 23:26:41'),
(4, 'El Gobierno de Japón aprueba un nuevo fármaco contra el alzhéimer', 'Tokio, 25 de septiembre (Jiji Press)—El Ministerio de Salud de Japón aprobó el lunes un nuevo fármaco contra el alzhéimer desarrollado conjuntamente por la empresa farmacéutica japonesa Eisai Co. y su socia estadounidense Biogen Inc.', '', '2023-09-28 23:26:41');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
