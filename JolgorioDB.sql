-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql5.freemysqlhosting.net
-- Generation Time: Feb 03, 2021 at 12:04 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql5389294`
--

-- --------------------------------------------------------

--
-- Table structure for table `Actividad`
--

CREATE TABLE `Actividad` (
  `idActividad` int(11) NOT NULL,
  `tipo` int(45) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `enlace` varchar(50) NOT NULL,
  `descripcion_tmp` varchar(45) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Actividad`
--

INSERT INTO `Actividad` (`idActividad`, `tipo`, `titulo`, `descripcion`, `enlace`, `descripcion_tmp`, `estado`) VALUES
(1, 1, 'Botella decorada', 'Decoración de botella', 'https://www.youtube.com/watch?v=U2g9KANuHuQ', 'Debería tardar un par de horas', 1),
(2, 1, 'Pintar en óleo', 'Hacer pinturas abstractas', 'https://www.youtube.com/watch?v=L_dI1xZCOGY', 'Debería tardar unos minutos', 1),
(3, 2, 'Ejercitar memoria', 'Ejercicios de memoria', 'https://www.youtube.com/watch?v=M3Lgiq9E_Fk', 'Debería durar cerca de media hora', 1),
(4, 1, 'Pintar cartón', 'Hacer pinturas/arte en cartón', 'https://www.youtube.com/watch?v=er3yXr13Eww', 'Mínimo, 11 minutos de duración', 1),
(5, 1, 'ArtAttack Totem', 'Crear un TOTEM como en art attack', 'https://www.youtube.com/watch?v=H7fnni4eBh4', 'Al menos, 10 minutos', 0),
(6, 1, 'Puntillismo', 'dibujos puntillistas', 'https://www.youtube.com/watch?v=0z4aWdyItJw', 'cuchao', 1),
(7, 2, 'Mejorar la Coordinación ', 'Actividad física para adultos mayores para mejorar la capacidad de coordinación motora. ', 'https://www.youtube.com/watch?v=kQW22D36Yxw', 'Entre 15 min a 20 min', 1),
(11, 1, 'Pintura de jarrones de barro', 'Decorar macetas', 'https://www.youtube.com/watch?v=CM3Ywjynkm8', '30 minutos de video y 1 hora de pintura', 1),
(12, 1, 'Jarrones decorativos', 'Jarrones para decorar habitación', 'https://www.youtube.com/watch?v=CKKCjyAn4MY', '14 minutos de video  y 20 más de manualidad', 1),
(13, 1, 'Dibujo de paisaje', 'Pintar paisaje a lapiz', 'https://www.youtube.com/watch?v=9CzSz0dVAbo', '20 minutos de video más 40 minutos artísitcos', 1),
(14, 2, 'Taichí ', '¡Anímate a ser parte de las clases de taichí y conoce los beneficios que trae practicarlo!', 'https://www.youtube.com/watch?v=7_5G999h8EQ', '15 minutos', 1),
(15, 2, 'Entrenamiento Cognitivo', '3 Actividades físicas para llevar a cabo con adultos mayores con deterioro cognitivo. Estas actividades pueden formar parte de una rutina de activación física en conjunto con las otras que puedes encontrar en este canal.', 'https://www.youtube.com/watch?v=F_kC7hC4VCo', '15 minutos a 20 minutos', 1),
(16, 3, 'Música clásica', '2 Horas de la mejor y mas famosa música clásica de los grandes compositores de la historia como Mozart, Beethoven, Bach, Chopin, etc. Este playlist es perfecto para estudiar y concentrarse o trabajar mientras se escuchan estas piezas clásicas legendarias.', 'https://www.youtube.com/watch?v=Fe9LYCorfiE', '2 horas y media de música relajante', 1),
(17, 3, 'Rock clásico', 'Rock Clasicos en Ingles de los 60 y 70 y 80 - Canciones De Rock Clasico', 'https://www.youtube.com/watch?v=C8Ne6MUseaY', '2 horas de rock clásico', 1),
(18, 3, 'Cuentos de mi tía Panchita', 'Un cuento de Carmen Lyra para disfrutar', 'https://www.youtube.com/watch?v=PH2zamjPwnk&t=1s', '15 minutos de tío coyote y tío conejo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Actividad_has_Material`
--

CREATE TABLE `Actividad_has_Material` (
  `Actividad_idActividad` int(11) NOT NULL,
  `Material_idMaterial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Actividad_has_Material`
--

INSERT INTO `Actividad_has_Material` (`Actividad_idActividad`, `Material_idMaterial`) VALUES
(1, 2),
(12, 2),
(1, 3),
(1, 4),
(5, 4),
(1, 5),
(5, 5),
(4, 6),
(12, 6),
(5, 7),
(4, 8),
(5, 8),
(1, 9),
(4, 9),
(5, 9),
(11, 9),
(12, 9),
(13, 9),
(1, 10),
(4, 10),
(5, 10),
(11, 10),
(13, 10),
(7, 11),
(15, 11),
(7, 12),
(14, 12),
(13, 14),
(11, 16),
(15, 18),
(16, 20),
(17, 20),
(18, 20),
(16, 21),
(17, 21),
(18, 21);

-- --------------------------------------------------------

--
-- Table structure for table `Canton`
--

CREATE TABLE `Canton` (
  `idCanton` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL DEFAULT 'DEFAULT',
  `idProvincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Canton`
--

INSERT INTO `Canton` (`idCanton`, `nombre`, `idProvincia`) VALUES
(101, 'San José', 1),
(102, 'Escazú', 1),
(103, 'Desamparados', 1),
(104, 'Puriscal', 1),
(105, 'Tarrazú', 1),
(106, 'Aserrí', 1),
(107, 'Mora', 1),
(108, 'Goicoechea', 1),
(109, 'Santa Ana', 1),
(110, 'Alajuelita', 1),
(111, 'Vasquez de Coronado', 1),
(112, 'Acosta', 1),
(113, 'Tibás', 1),
(114, 'Moravia', 1),
(115, 'Montes de Oca', 1),
(116, 'Turrubares', 1),
(117, 'Dota', 1),
(118, 'Curridabat', 1),
(119, 'Pérez Zeledón', 1),
(120, 'León Cortés', 1),
(201, 'Alajuela', 2),
(202, 'San Ramón', 2),
(203, 'Grecia', 2),
(204, 'San Mateo', 2),
(205, 'Atenas', 2),
(206, 'Naranjo', 2),
(207, 'Palmares', 2),
(208, 'Poás', 2),
(209, 'Orotina', 2),
(210, 'San Carlos', 2),
(211, 'Alfaro Ruiz', 2),
(212, 'Valverde Vega', 2),
(213, 'Upala', 2),
(214, 'Los Chiles', 2),
(215, 'Guatuso', 2),
(301, 'Cartago', 3),
(302, 'Paraíso', 3),
(303, 'La Unión', 3),
(304, 'Jiménez', 3),
(305, 'Turrialba', 3),
(306, 'Alvarado', 3),
(307, 'Oreamuno', 3),
(308, 'El Guarco', 3),
(401, 'Heredia', 4),
(402, 'Barva', 4),
(403, 'Santo Domingo', 4),
(404, 'Santa Bárbara', 4),
(405, 'San Rafael', 4),
(406, 'San Isidro', 4),
(407, 'Belén', 4),
(408, 'Flores', 4),
(409, 'San Pablo', 4),
(410, 'Sarapiquí ', 4),
(501, 'Liberia', 5),
(502, 'Nicoya', 5),
(503, 'Santa Cruz', 5),
(504, 'Bagaces', 5),
(505, 'Carrillo', 5),
(506, 'Cañas', 5),
(507, 'Abangares', 5),
(508, 'Tilarán', 5),
(509, 'Nandayure', 5),
(510, 'La Cruz', 5),
(511, 'Hojancha', 5),
(601, 'Puntarenas', 6),
(602, 'Esparza', 6),
(603, 'Buenos Aires', 6),
(604, 'Montes de Oro', 6),
(605, 'Osa', 6),
(606, 'Aguirre', 6),
(607, 'Golfito', 6),
(608, 'Coto Brus', 6),
(609, 'Parrita', 6),
(610, 'Corredores', 6),
(611, 'Garabito', 6),
(701, 'Limón', 7),
(702, 'Pococí', 7),
(703, 'Siquirres ', 7),
(704, 'Talamanca', 7),
(705, 'Matina', 7),
(706, 'Guácimo', 7);

-- --------------------------------------------------------

--
-- Table structure for table `Distrito`
--

CREATE TABLE `Distrito` (
  `idDistrito` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL DEFAULT 'DEFAULT',
  `idCanton` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Distrito`
--

INSERT INTO `Distrito` (`idDistrito`, `nombre`, `idCanton`) VALUES
(10101, 'Carmen', 101),
(10102, 'Merced', 101),
(10103, 'Hospital', 101),
(10104, 'Catedral', 101),
(10105, 'Zapote', 101),
(10106, 'San Francisco de Dos Ríos', 101),
(10107, 'Uruca', 101),
(10108, 'Mata Redonda', 101),
(10109, 'Pavas', 101),
(10110, 'Hatillo', 101),
(10111, 'San Sebastián', 101),
(10201, 'Escazú', 102),
(10202, 'San Antonio', 102),
(10203, 'San Rafael', 102),
(10301, 'Desamparados', 103),
(10302, 'San Miguel', 103),
(10303, 'San Juan de Dios', 103),
(10304, 'San Rafael Arriba', 103),
(10305, 'San Antonio', 103),
(10306, 'Frailes', 103),
(10307, 'Patarrá', 103),
(10308, 'San Cristóbal', 103),
(10309, 'Rosario', 103),
(10310, 'Damas', 103),
(10311, 'San Rafael Abajo', 103),
(10312, 'Gravilias', 103),
(10313, 'Los Guido', 103),
(10401, 'Santiago', 104),
(10402, 'Mercedes Sur', 104),
(10403, 'Barbacoas', 104),
(10404, 'Grifo Alto', 104),
(10405, 'San Rafael', 104),
(10406, 'Candelaria', 104),
(10407, 'Desamparaditos', 104),
(10408, 'San Antonio', 104),
(10409, 'Chires', 104),
(10501, 'San Marcos', 105),
(10502, 'San Lorenzo', 105),
(10503, 'San Carlos', 105),
(10601, 'Aserrí', 106),
(10602, 'Tarbaca o Praga', 106),
(10603, 'Vuelta de Jorco', 106),
(10604, 'San Gabriel', 106),
(10605, 'La Legua', 106),
(10606, 'Monterrey', 106),
(10607, 'Salitrillos', 106),
(10701, 'Colón', 107),
(10702, 'Guayabo', 107),
(10703, 'Tabarcia', 107),
(10704, 'Piedras Negras', 107),
(10705, 'Picagres', 107),
(10801, 'Guadalupe', 108),
(10802, 'San Francisco', 108),
(10803, 'Calle Blancos', 108),
(10804, 'Mata de Plátano', 108),
(10805, 'Ipís', 108),
(10806, 'Rancho Redondo', 108),
(10807, 'Purral', 108),
(10901, 'Santa Ana', 109),
(10902, 'Salitral', 109),
(10903, 'Pozos o Concepción', 109),
(10904, 'Uruca o San Joaquín', 109),
(10905, 'Piedades', 109),
(10906, 'Brasil', 109),
(11001, 'Alajuelita', 110),
(11002, 'San Josecito', 110),
(11003, 'San Antonio', 110),
(11004, 'Concepción', 110),
(11005, 'San Felipe', 110),
(11101, 'San Isidro', 111),
(11102, 'San Rafael', 111),
(11103, 'Dulce Nombre de Jesús', 111),
(11104, 'Patalillo', 111),
(11105, 'Cascajal', 111),
(11201, 'San Ignacio', 112),
(11202, 'Guaitil', 112),
(11203, 'Palmichal', 112),
(11204, 'Cangrejal', 112),
(11205, 'Sabanillas', 112),
(11301, 'San Juan', 113),
(11302, 'Cinco Esquinas', 113),
(11303, 'Anselmo Llorente', 113),
(11304, 'León XIII', 113),
(11305, 'Colima', 113),
(11401, 'San Vicente', 114),
(11402, 'San Jerónimo', 114),
(11403, 'Trinidad', 114),
(11501, 'San Pedro', 115),
(11502, 'Sabanilla', 115),
(11503, 'Mercedes o Betania', 115),
(11504, 'San Rafael', 115),
(11601, 'San Pablo', 116),
(11602, 'San Pedro', 116),
(11603, 'San Juan de Mata', 116),
(11604, 'San Luis', 116),
(11605, 'Cárara', 116),
(11701, 'Santa María', 117),
(11702, 'Jardín', 117),
(11703, 'Copey', 117),
(11801, 'Curridabat', 118),
(11802, 'Granadilla', 118),
(11803, 'Sánchez', 118),
(11804, 'Tirrases', 118),
(11901, 'San Isidro de el General', 119),
(11902, 'General', 119),
(11903, 'Daniel Flores', 119),
(11904, 'Rivas', 119),
(11905, 'San Pedro', 119),
(11906, 'Platanares', 119),
(11907, 'Pejibaye', 119),
(11908, 'Cajón', 119),
(11909, 'Barú', 119),
(11910, 'Río Nuevo', 119),
(11911, 'Páramo', 119),
(12001, 'San Pablo', 120),
(12002, 'San Andrés', 120),
(12003, 'Llano Bonito', 120),
(12004, 'San Isidro', 120),
(12005, 'Santa Cruz', 120),
(12006, 'San Antonio', 120),
(20101, 'Alajuela', 201),
(20102, 'San José', 201),
(20103, 'Carrizal', 201),
(20104, 'San Antonio', 201),
(20105, 'Guácima', 201),
(20106, 'San Isidro', 201),
(20107, 'Sabanilla', 201),
(20108, 'San Rafael', 201),
(20109, 'Río Segundo', 201),
(20110, 'Desamparados', 201),
(20111, 'Turrucares', 201),
(20112, 'Tambor', 201),
(20113, 'La Garita', 201),
(20114, 'Sarapiquí', 201),
(20201, 'San Ramón', 202),
(20202, 'Santiago', 202),
(20203, 'San Juan', 202),
(20204, 'Piedades Norte', 202),
(20205, 'Piedades Sur', 202),
(20206, 'San Rafael', 202),
(20207, 'San Isidro', 202),
(20208, 'Angeles', 202),
(20209, 'Alfaro', 202),
(20210, 'Volio', 202),
(20211, 'Concepción', 202),
(20212, 'Zapotal', 202),
(20213, 'San Isidro de Peñas Blancas', 202),
(20301, 'Grecia', 203),
(20302, 'San Isidro', 203),
(20303, 'San José', 203),
(20304, 'San Roque', 203),
(20305, 'Tacares', 203),
(20306, 'Río Cuarto', 203),
(20307, 'Puente Piedra', 203),
(20308, 'Bolívar', 203),
(20401, 'San Mateo', 204),
(20402, 'Desmonte', 204),
(20403, 'Jesús María', 204),
(20501, 'Atenas', 205),
(20502, 'Jesús', 205),
(20503, 'Mercedes', 205),
(20504, 'San Isidro', 205),
(20505, 'Concepción', 205),
(20506, 'San José', 205),
(20507, 'Santa Eulalia', 205),
(20508, 'Escobal', 205),
(20601, 'Naranjo', 206),
(20602, 'San Miguel', 206),
(20603, 'San José', 206),
(20604, 'Cirrí Sur', 206),
(20605, 'San Jerónimo', 206),
(20606, 'San Juan', 206),
(20607, 'Rosario', 206),
(20701, 'Palmares', 207),
(20702, 'Zaragoza', 207),
(20703, 'Buenos Aires', 207),
(20704, 'Santiago', 207),
(20705, 'Candelaria', 207),
(20706, 'Esquipulas', 207),
(20707, 'La Granja', 207),
(20801, 'San Pedro', 208),
(20802, 'San Juan', 208),
(20803, 'San Rafael', 208),
(20804, 'Carrillos', 208),
(20805, 'Sabana Redonda', 208),
(20901, 'Orotina', 209),
(20902, 'Mastate', 209),
(20903, 'Hacienda Vieja', 209),
(20904, 'Coyolar', 209),
(20905, 'Ceiba', 209),
(21001, 'Quesada', 210),
(21002, 'Florencia', 210),
(21003, 'Buenavista', 210),
(21004, 'Aguas Zarcas', 210),
(21005, 'Venecia', 210),
(21006, 'Pital', 210),
(21007, 'Fortuna', 210),
(21008, 'Tigra', 210),
(21009, 'Palmera', 210),
(21010, 'Venado', 210),
(21011, 'Cutris', 210),
(21012, 'Monterrey', 210),
(21013, 'Pocosol', 210),
(21101, 'Zarcero', 211),
(21102, 'Laguna', 211),
(21103, 'Tapezco', 211),
(21104, 'Guadalupe', 211),
(21105, 'Palmira', 211),
(21106, 'Zapote', 211),
(21107, 'Las Brisas', 211),
(21201, 'Sarchí Norte', 212),
(21202, 'Sarchí Sur', 212),
(21203, 'Toro Amarillo', 212),
(21204, 'San Pedro', 212),
(21205, 'Rodríguez', 212),
(21301, 'Upala', 213),
(21302, 'Aguas Claras', 213),
(21303, 'San José o Pizote', 213),
(21304, 'Bijagua', 213),
(21305, 'Delicias', 213),
(21306, 'Dos Ríos', 213),
(21307, 'Yolillal', 213),
(21401, 'Los Chiles', 214),
(21402, 'Caño Negro', 214),
(21403, 'Amparo', 214),
(21404, 'San Jorge', 214),
(21501, 'San Rafael', 215),
(21502, 'Buenavista', 215),
(21503, 'Cote', 215),
(30101, 'Oriental', 301),
(30102, 'Occidental', 301),
(30103, 'Carmen', 301),
(30104, 'San Nicolás', 301),
(30105, 'Aguacaliente o San Francisco', 301),
(30106, 'Guadalupe o Arenilla', 301),
(30107, 'Corralillo', 301),
(30108, 'Tierra Blanca', 301),
(30109, 'Dulce Nombre', 301),
(30110, 'Llano Grande', 301),
(30111, 'Quebradilla', 301),
(30201, 'Paraíso', 302),
(30202, 'Santiago', 302),
(30203, 'Orosi', 302),
(30204, 'Cachí', 302),
(30205, 'Los Llanos de Santa Lucía', 302),
(30301, 'Tres Ríos', 303),
(30302, 'San Diego', 303),
(30303, 'San Juan', 303),
(30304, 'San Rafael', 303),
(30305, 'Concepción', 303),
(30306, 'Dulce Nombre', 303),
(30307, 'San Ramón', 303),
(30308, 'Río Azul', 303),
(30401, 'Juan Viñas', 304),
(30402, 'Tucurrique', 304),
(30403, 'Pejibaye', 304),
(30501, 'Turrialba', 305),
(30502, 'La Suiza', 305),
(30503, 'Peralta', 305),
(30504, 'Santa Cruz', 305),
(30505, 'Santa Teresita', 305),
(30506, 'Pavones', 305),
(30507, 'Tuis', 305),
(30508, 'Tayutic', 305),
(30509, 'Santa Rosa', 305),
(30510, 'Tres Equis', 305),
(30511, 'La Isabel', 305),
(30512, 'Chirripó', 305),
(30601, 'Pacayas', 306),
(30602, 'Cervantes', 306),
(30603, 'Capellades', 306),
(30701, 'San Rafael', 307),
(30702, 'Cot', 307),
(30703, 'Potrero Cerrado', 307),
(30704, 'Cipreses', 307),
(30705, 'Santa Rosa', 307),
(30801, 'El Tejar', 308),
(30802, 'San Isidro', 308),
(30803, 'Tobosi', 308),
(30804, 'Patio de Agua', 308),
(40101, 'Heredia', 401),
(40102, 'Mercedes', 401),
(40103, 'San Francisco', 401),
(40104, 'Ulloa', 401),
(40105, 'Varablanca', 401),
(40201, 'Barva', 402),
(40202, 'San Pedro', 402),
(40203, 'San Pablo', 402),
(40204, 'San Roque', 402),
(40205, 'Santa Lucía', 402),
(40206, 'San José de la Montaña', 402),
(40301, 'Santo Domingo', 403),
(40302, 'San Vicente', 403),
(40303, 'San Miguel', 403),
(40304, 'Paracito', 403),
(40305, 'Santo Tomás', 403),
(40306, 'Santa Rosa', 403),
(40307, 'Tures', 403),
(40308, 'Pará', 403),
(40401, 'Santa Bárbara', 404),
(40402, 'San Pedro', 404),
(40403, 'San Juan', 404),
(40404, 'Jesús', 404),
(40405, 'Santo Domingo del Roble', 404),
(40406, 'Puraba', 404),
(40501, 'San Rafael', 405),
(40502, 'San Josecito', 405),
(40503, 'Santiago', 405),
(40504, 'Angeles', 405),
(40505, 'Concepción', 405),
(40601, 'San Isidro', 406),
(40602, 'San José', 406),
(40603, 'Concepción', 406),
(40604, 'San Francisco', 406),
(40701, 'San Antonio', 407),
(40702, 'La Ribera', 407),
(40703, 'Asunción', 407),
(40801, 'San Joaquín', 408),
(40802, 'Barrantes', 408),
(40803, 'Llorente', 408),
(40901, 'San Pablo', 409),
(41001, 'Puerto Viejo', 410),
(41002, 'La Virgen', 410),
(41003, 'Horquetas', 410),
(41004, 'Llanuras de Gaspar', 410),
(41005, 'Cureña', 410),
(50101, 'Liberia', 501),
(50102, 'Cañas Dulces', 501),
(50103, 'Mayorga', 501),
(50104, 'Nacascolo', 501),
(50105, 'Curubande', 501),
(50201, 'Nicoya', 502),
(50202, 'Mansión', 502),
(50203, 'San Antonio', 502),
(50204, 'Quebrada Honda', 502),
(50205, 'Sámara', 502),
(50206, 'Nósara', 502),
(50207, 'Belén de Nosarita', 502),
(50301, 'Santa Cruz', 503),
(50302, 'Bolsón', 503),
(50303, 'Veintisiete de Abril', 503),
(50304, 'Tempate', 503),
(50305, 'Cartagena', 503),
(50306, 'Cuajiniquil', 503),
(50307, 'Diriá', 503),
(50308, 'Cabo Velas', 503),
(50309, 'Tamarindo', 503),
(50401, 'Bagaces', 504),
(50402, 'Fortuna', 504),
(50403, 'Mogote', 504),
(50404, 'Río Naranjo', 504),
(50501, 'Filadelfia', 505),
(50502, 'Palmira', 505),
(50503, 'Sardinal', 505),
(50504, 'Belén', 505),
(50601, 'Cañas', 506),
(50602, 'Palmira', 506),
(50603, 'San Miguel', 506),
(50604, 'Bebedero', 506),
(50605, 'Porozal', 506),
(50701, 'Juntas', 507),
(50702, 'Sierra', 507),
(50703, 'San Juan', 507),
(50704, 'Colorado', 507),
(50801, 'Tilarán', 508),
(50802, 'Quebrada Grande', 508),
(50803, 'Tronadora', 508),
(50804, 'Santa Rosa', 508),
(50805, 'Líbano', 508),
(50806, 'Tierras Morenas', 508),
(50807, 'Arenal', 508),
(50901, 'Carmona', 509),
(50902, 'Santa Rita', 509),
(50903, 'Zapotal', 509),
(50904, 'San Pablo', 509),
(50905, 'Porvenir', 509),
(50906, 'Bejuco', 509),
(51001, 'La Cruz', 510),
(51002, 'Santa Cecilia', 510),
(51003, 'Garita', 510),
(51004, 'Santa Elena', 510),
(51101, 'Hojancha', 511),
(51102, 'Monte Romo', 511),
(51103, 'Puerto Carrillo', 511),
(51104, 'Huacas', 511),
(60101, 'Puntarenas', 601),
(60102, 'Pitahaya', 601),
(60103, 'Chomes', 601),
(60104, 'Lepanto', 601),
(60105, 'Paquera', 601),
(60106, 'Manzanillo', 601),
(60107, 'Guacimal', 601),
(60108, 'Barranca', 601),
(60109, 'Monte Verde', 601),
(60110, 'Isla del Coco', 601),
(60111, 'Cóbano', 601),
(60112, 'Chacarita', 601),
(60113, 'Chira', 601),
(60114, 'Acapulco', 601),
(60115, 'Roble', 601),
(60116, 'Arancibia', 601),
(60201, 'Espíritu Santo', 602),
(60202, 'San Juan Grande', 602),
(60203, 'Macacona', 602),
(60204, 'San Rafael', 602),
(60205, 'San Jerónimo', 602),
(60301, 'Buenos Aires', 603),
(60302, 'Volcán', 603),
(60303, 'Potrero Grande', 603),
(60304, 'Boruca', 603),
(60305, 'Pilas', 603),
(60306, 'Colinas o Bajo de Maíz', 603),
(60307, 'Chánguena', 603),
(60308, 'Bioley', 603),
(60309, 'Brunka', 603),
(60401, 'Miramar', 604),
(60402, 'Unión', 604),
(60403, 'San Isidro', 604),
(60501, 'Puerto Cortés', 605),
(60502, 'Palmar', 605),
(60503, 'Sierpe', 605),
(60504, 'Bahía Ballena', 605),
(60505, 'Piedras Blancas', 605),
(60601, 'Quepos', 606),
(60602, 'Savegre', 606),
(60603, 'Naranjito', 606),
(60701, 'Golfito', 607),
(60702, 'Puerto Jiménez', 607),
(60703, 'Guaycará', 607),
(60704, 'Pavon', 607),
(60801, 'San Vito', 608),
(60802, 'Sabalito', 608),
(60803, 'Agua Buena', 608),
(60804, 'Limoncito', 608),
(60805, 'Pittier', 608),
(60901, 'Parrita', 609),
(61001, 'Corredor', 610),
(61002, 'La Cuesta', 610),
(61003, 'Paso Canoas', 610),
(61004, 'Laurel', 610),
(61101, 'Jacó', 611),
(61102, 'Tárcoles', 611),
(70101, 'Limón', 701),
(70102, 'Valle La Estrella', 701),
(70103, 'Río Blanco', 701),
(70104, 'Matama', 701),
(70201, 'Guápiles', 702),
(70202, 'Jiménez', 702),
(70203, 'Rita', 702),
(70204, 'Roxana', 702),
(70205, 'Cariari', 702),
(70206, 'Colorado', 702),
(70301, 'Siquirres', 703),
(70302, 'Pacuarito', 703),
(70303, 'Florida', 703),
(70304, 'Germania', 703),
(70305, 'Cairo', 703),
(70306, 'Alegría', 703),
(70401, 'Bratsi', 704),
(70402, 'Sixaola', 704),
(70403, 'Cahuita', 704),
(70404, 'Telire', 704),
(70501, 'Matina', 705),
(70502, 'Batán', 705),
(70503, 'Carrandí', 705),
(70601, 'Guácimo', 706),
(70602, 'Mercedes', 706),
(70603, 'Pocora', 706),
(70604, 'Río Jiménez', 706),
(70605, 'Duacarí', 706);

-- --------------------------------------------------------

--
-- Table structure for table `Logro`
--

CREATE TABLE `Logro` (
  `idLogro` int(11) NOT NULL,
  `tipo` int(45) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Logro`
--

INSERT INTO `Logro` (`idLogro`, `tipo`, `descripcion`) VALUES
(1, 1, 'Primera manualidad!'),
(2, 2, 'Maestro del Arte!'),
(3, 3, 'Ver un video de entretenimiento'),
(4, 2, 'Ver 5 videos de entretenimiento'),
(5, 1, 'Super Mente!! Ha completado una actividad de desarrollo cognitivo!');

-- --------------------------------------------------------

--
-- Table structure for table `Material`
--

CREATE TABLE `Material` (
  `idMaterial` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Material`
--

INSERT INTO `Material` (`idMaterial`, `nombre`) VALUES
(2, 'Botella Plástica'),
(3, 'Agua'),
(4, 'Goma'),
(5, 'Periódico'),
(6, 'Tijeras'),
(7, 'Pintura negra'),
(8, 'Cartón'),
(9, 'Pinturas de colores'),
(10, 'Pincel'),
(11, 'Silla'),
(12, 'Ropa cómoda'),
(13, 'Lapiz de dibujo'),
(14, 'Lienzo en blanco'),
(15, 'Pintura blanca'),
(16, 'Jarrones de barro'),
(17, 'Maceteros pequeños'),
(18, 'Bola'),
(19, 'Bola de yoga'),
(20, 'Audífonos'),
(21, 'Parlantes');

-- --------------------------------------------------------

--
-- Table structure for table `Pais`
--

CREATE TABLE `Pais` (
  `idPais` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL DEFAULT 'DEFAULT'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Pais`
--

INSERT INTO `Pais` (`idPais`, `nombre`) VALUES
(1, 'Costa Rica');

-- --------------------------------------------------------

--
-- Table structure for table `Provincia`
--

CREATE TABLE `Provincia` (
  `idProvincia` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL DEFAULT 'DEFAULT',
  `idPais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Provincia`
--

INSERT INTO `Provincia` (`idProvincia`, `nombre`, `idPais`) VALUES
(1, 'San José', 1),
(2, 'Alajuela', 1),
(3, 'Cartago', 1),
(4, 'Heredia', 1),
(5, 'Guanacaste', 1),
(6, 'Puntarenas', 1),
(7, 'Limón', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Usuario`
--

CREATE TABLE `Usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL DEFAULT 'DEFAULT',
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) NOT NULL,
  `idDistrito` int(11) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT 'DEFAULT',
  `fechaNac` date NOT NULL,
  `numero` varchar(8) NOT NULL,
  `sexo` int(11) NOT NULL,
  `urlFoto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Usuario`
--

INSERT INTO `Usuario` (`idUsuario`, `nombre`, `apellido1`, `apellido2`, `idDistrito`, `email`, `fechaNac`, `numero`, `sexo`, `urlFoto`) VALUES
(1, 'José Armando', 'Oviedo', 'Barquero', 20105, 'marucho147@gmail.com', '1999-01-11', '82554055', 2, ''),
(2, 'Alejandro', 'Alfaro', 'Vargas', 20209, 'alealfaro64@gmail.com', '1999-05-03', '87763023', 2, ''),
(3, 'Rodrigo Isaac', 'Venegas', 'Vega', 60114, 'risaacvene24@gmail.com', '1999-01-24', '88674282', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `Usuario_has_Actividad`
--

CREATE TABLE `Usuario_has_Actividad` (
  `Usuario_idUsuario` int(11) NOT NULL,
  `Actividad_idActividad` int(11) NOT NULL,
  `fechaCompletado` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Usuario_has_Actividad`
--

INSERT INTO `Usuario_has_Actividad` (`Usuario_idUsuario`, `Actividad_idActividad`, `fechaCompletado`) VALUES
(1, 2, '2021-02-02'),
(1, 3, '2021-02-02'),
(1, 6, '2021-02-02'),
(2, 4, '2021-01-12'),
(2, 5, '2021-01-12'),
(3, 1, '2021-01-23'),
(3, 2, '2021-01-06'),
(3, 3, '2021-01-21'),
(3, 4, '2021-01-18'),
(3, 5, '2021-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `Usuario_has_Logro`
--

CREATE TABLE `Usuario_has_Logro` (
  `Logro_idLogro` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Usuario_has_Logro`
--

INSERT INTO `Usuario_has_Logro` (`Logro_idLogro`, `Usuario_idUsuario`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Actividad`
--
ALTER TABLE `Actividad`
  ADD PRIMARY KEY (`idActividad`);

--
-- Indexes for table `Actividad_has_Material`
--
ALTER TABLE `Actividad_has_Material`
  ADD PRIMARY KEY (`Actividad_idActividad`,`Material_idMaterial`),
  ADD KEY `fk_Actividad_has_Material1_Material2` (`Material_idMaterial`);

--
-- Indexes for table `Canton`
--
ALTER TABLE `Canton`
  ADD PRIMARY KEY (`idCanton`),
  ADD KEY `idProvinciaFK` (`idProvincia`);

--
-- Indexes for table `Distrito`
--
ALTER TABLE `Distrito`
  ADD PRIMARY KEY (`idDistrito`),
  ADD KEY `idCantonFK` (`idCanton`);

--
-- Indexes for table `Logro`
--
ALTER TABLE `Logro`
  ADD PRIMARY KEY (`idLogro`);

--
-- Indexes for table `Material`
--
ALTER TABLE `Material`
  ADD PRIMARY KEY (`idMaterial`);

--
-- Indexes for table `Pais`
--
ALTER TABLE `Pais`
  ADD PRIMARY KEY (`idPais`);

--
-- Indexes for table `Provincia`
--
ALTER TABLE `Provincia`
  ADD PRIMARY KEY (`idProvincia`),
  ADD KEY `idPaisFK` (`idPais`);

--
-- Indexes for table `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idDistritoFK` (`idDistrito`);

--
-- Indexes for table `Usuario_has_Actividad`
--
ALTER TABLE `Usuario_has_Actividad`
  ADD PRIMARY KEY (`Usuario_idUsuario`,`Actividad_idActividad`),
  ADD KEY `fk_Usuario_has_Actividad1_Actividad1` (`Actividad_idActividad`);

--
-- Indexes for table `Usuario_has_Logro`
--
ALTER TABLE `Usuario_has_Logro`
  ADD PRIMARY KEY (`Logro_idLogro`,`Usuario_idUsuario`),
  ADD KEY `fk_Logro_has_Usuario_Usuario1` (`Usuario_idUsuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Actividad`
--
ALTER TABLE `Actividad`
  MODIFY `idActividad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `Canton`
--
ALTER TABLE `Canton`
  MODIFY `idCanton` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=707;
--
-- AUTO_INCREMENT for table `Distrito`
--
ALTER TABLE `Distrito`
  MODIFY `idDistrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70606;
--
-- AUTO_INCREMENT for table `Logro`
--
ALTER TABLE `Logro`
  MODIFY `idLogro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Material`
--
ALTER TABLE `Material`
  MODIFY `idMaterial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `Pais`
--
ALTER TABLE `Pais`
  MODIFY `idPais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Provincia`
--
ALTER TABLE `Provincia`
  MODIFY `idProvincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Actividad_has_Material`
--
ALTER TABLE `Actividad_has_Material`
  ADD CONSTRAINT `fk_Actividad_has_Material1_Actividad2` FOREIGN KEY (`Actividad_idActividad`) REFERENCES `Actividad` (`idActividad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Actividad_has_Material1_Material2` FOREIGN KEY (`Material_idMaterial`) REFERENCES `Material` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Canton`
--
ALTER TABLE `Canton`
  ADD CONSTRAINT `idProvinciaFK` FOREIGN KEY (`idProvincia`) REFERENCES `Provincia` (`idProvincia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Distrito`
--
ALTER TABLE `Distrito`
  ADD CONSTRAINT `idCantonFK` FOREIGN KEY (`idCanton`) REFERENCES `Canton` (`idCanton`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Provincia`
--
ALTER TABLE `Provincia`
  ADD CONSTRAINT `idPaisFK` FOREIGN KEY (`idPais`) REFERENCES `Pais` (`idPais`);

--
-- Constraints for table `Usuario`
--
ALTER TABLE `Usuario`
  ADD CONSTRAINT `idDistritoFK` FOREIGN KEY (`idDistrito`) REFERENCES `Distrito` (`idDistrito`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Usuario_has_Actividad`
--
ALTER TABLE `Usuario_has_Actividad`
  ADD CONSTRAINT `fk_Usuario_has_Actividad1_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Usuario_has_Actividad1_Actividad1` FOREIGN KEY (`Actividad_idActividad`) REFERENCES `Actividad` (`idActividad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Usuario_has_Logro`
--
ALTER TABLE `Usuario_has_Logro`
  ADD CONSTRAINT `fk_Logro_has_Usuario_Logro1` FOREIGN KEY (`Logro_idLogro`) REFERENCES `Logro` (`idLogro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Logro_has_Usuario_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
