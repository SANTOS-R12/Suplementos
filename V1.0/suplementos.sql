-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2022 a las 20:25:53
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `suplementos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `dui` varchar(15) DEFAULT NULL,
  `edad` date DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `adicional` varchar(500) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `estado` varchar(10) DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellidos`, `dui`, `edad`, `telefono`, `correo`, `sexo`, `adicional`, `avatar`, `estado`) VALUES
(1, 'Gabriela', 'Martinez', '12345678-9', '1990-02-06', '12345678', 'gaby@gmail.com', 'Femenino', 'informacion adicional del cliente', 'default.jpg', 'e'),
(2, 'Juan', 'Peres', '32432432', '2021-02-01', '56465443', 'juan@gmail.com', 'masculino', 'info', 'default.jpg', 'e'),
(3, 'njnjnjn', 'jnnjnnjn', '868676767', '2021-01-31', '7667565650000', 'holajnjnj@gmail.com', 'nnjnjn', 'njnnjnjnjhola', 'default.jpg', 'e'),
(4, 'neto', 'caso', '1234567', '2022-04-13', '45', 'marvin64@gmail.com', 'k', 'c', 'default.jpg', 'e'),
(5, 'alexander', '', '', '0000-00-00', '', '', '', '', 'default.jpg', 'e'),
(6, 'santos', '', '', '0000-00-00', '', '', '', '', 'default.jpg', 'e'),
(7, 'CLIENTE', '', '', '0000-00-00', '', '', '', '', 'default.jpg', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_detalle` int(11) NOT NULL,
  `det_cantidad` int(11) NOT NULL,
  `det_vencimiento` date NOT NULL,
  `id__det_lote` int(11) NOT NULL,
  `id__det_prod` int(11) NOT NULL,
  `lote_id_prov` int(255) NOT NULL,
  `id_det_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_detalle`, `det_cantidad`, `det_vencimiento`, `id__det_lote`, `id__det_prod`, `lote_id_prov`, `id_det_venta`) VALUES
(14, 1, '2022-01-21', 25, 16, 1, 20),
(16, 10, '2022-01-23', 26, 2, 3, 21),
(17, 1, '2020-10-31', 23, 10, 1, 21),
(18, 9, '2022-01-21', 25, 16, 1, 22),
(20, 1, '2020-10-31', 23, 10, 1, 23),
(21, 1, '2020-10-31', 23, 10, 1, 25),
(22, 1, '2022-05-31', 39, 10, 2, 26),
(23, 1, '2022-05-25', 38, 21, 2, 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorio`
--

CREATE TABLE `laboratorio` (
  `id_laboratorio` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `laboratorio`
--

INSERT INTO `laboratorio` (`id_laboratorio`, `nombre`, `avatar`, `estado`) VALUES
(1, 'AllMax', '6281772e3c2a8-allmax-logo.png', 'a'),
(3, 'MK', '625ac9e5ae238-png-transparent-online-food-ordering-food-delivery-grubhub-others-food-service-logo-removebg-preview.png', 'e'),
(13, 'MuscleTech', '62817938bc321-17-removebg-preview.png', 'a'),
(14, 'MusclePharm', '6281781b17afc-musclepharm-logo-1.png', 'a'),
(15, 'USN', '628178ebe75c2-usn_logo.jpg', 'a'),
(16, 'BPI', '62817a05b691b-Captura_de_pantalla_2022-05-15_160841-removebg-preview.png', 'a'),
(17, 'Barebells', '62817a8144bbd-barebells_logo-removebg-preview.png', 'a'),
(18, 'Optimum Nutrition', 'lab_default.jpg', 'a'),
(19, 'Dymatize', 'lab_default.jpg', 'e'),
(20, 'Myprotein', 'lab_default.jpg', 'a'),
(21, 'Rule 1', 'lab_default.jpg', 'a'),
(22, 'Scivation ', 'lab_default.jpg', 'a'),
(23, 'Fizzique ', 'lab_default.jpg', 'a'),
(24, 'Nutrex ', 'lab_default.jpg', 'a'),
(25, 'JNX ', 'lab_default.jpg', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lote`
--

CREATE TABLE `lote` (
  `id_lote` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `vencimiento` date NOT NULL,
  `lote_id_prod` int(11) NOT NULL,
  `lote_id_prov` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lote`
--

INSERT INTO `lote` (`id_lote`, `stock`, `vencimiento`, `lote_id_prod`, `lote_id_prov`) VALUES
(42, 50, '2023-04-05', 24, 2),
(43, 25, '2022-11-25', 25, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentacion`
--

CREATE TABLE `presentacion` (
  `id_presentacion` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `presentacion`
--

INSERT INTO `presentacion` (`id_presentacion`, `nombre`, `estado`) VALUES
(1, 'Bote', 'a'),
(3, 'Bolsa', 'a'),
(5, 'Barra', 'a'),
(6, 'Lata', 'a'),
(9, 'Caja', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `concentracion` varchar(255) DEFAULT NULL,
  `adicional` varchar(500) DEFAULT NULL,
  `precio` float NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'a',
  `prod_lab` int(11) NOT NULL,
  `prod_tip_prod` int(11) NOT NULL,
  `prod_present` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `concentracion`, `adicional`, `precio`, `avatar`, `estado`, `prod_lab`, `prod_tip_prod`, `prod_present`) VALUES
(10, 'Proteina', '50 ml', 'sopera', 5, '62817ace9203c-png-clipart-peppermint-herb-leaf-illustration-white-tablet-electronics-white-removebg-preview.png', 'e', 1, 1, 3),
(16, 'Vitamina', '150 gramos', 'papel', 5, '62817b159c981-png-clipart-peppermint-herb-leaf-illustration-white-tablet-electronics-white-removebg-preview.png', 'e', 1, 4, 1),
(17, 'Panadol fuerte', '500 mg', 'caja', 0.5, 'prod_default.png', 'e', 1, 2, 3),
(18, 'Rabano Yodado', '100 ml', 'Frasco mediano', 7.25, 'prod_default.png', 'e', 1, 2, 6),
(19, 'yodoclorina', '100 ml', 'pastillas para la diarrea', 1, 'prod_default.png', 'e', 1, 4, 3),
(20, 'Vorogrip', '1', '\r\n', 1, '62817b1d499e1-png-clipart-peppermint-herb-leaf-illustration-white-tablet-electronics-white-removebg-preview.png', 'e', 3, 3, 5),
(21, 'AllMax Nutrition IsoFlex', '24g', 'HD23JK5QJVEEG', 49.99, '62817b2479b14-png-clipart-peppermint-herb-leaf-illustration-white-tablet-electronics-white-removebg-preview.png', 'e', 3, 2, 5),
(22, 'Proteinas CC', '50g', '6AJT3PGNKTFZU', 25.95, 'prod_default.png', 'e', 14, 1, 1),
(23, 'Vitaminas CC', '25g', 'LMFESBX8L9C92', 60, 'prod_default.png', 'e', 17, 4, 9),
(24, 'Optimum Nutrition Gold Standard 100% Whey', '2 lb', 'XPPRM292KBE7S', 35, '62854dd6d5c70-Optimum Nutrition Gold 100 whey.png', 'a', 18, 1, 1),
(25, 'MuscleTech Nitro-Tech Ripped', '2 lb', 'L8Q3QBRTPBGDE', 30, '6286cf8a7eb69-MuscleTech Nitro-Tech Ripped.png', 'a', 13, 1, 1),
(26, 'MusclePharm Combat 100% Whey', '2 lb', 'J6YYQANXDY6GA', 33, '6286d11bd4c29-MusclePharm Combat 100 Whey.png', 'a', 14, 1, 1),
(27, 'BPI Sports Whey-HD', '4 lb', 'QH2GHUNGMDGRN', 68, '6286d1ad3b823-BPI Sports Whey-HD.png', 'a', 16, 1, 1),
(28, 'MuscleTech Phase8 Platinum 8-Hour Protein', '4 lb', '7RAYZ9Y6S6Z9C', 40, '6286d240c695b-MuscleTech Phase8 Platinum 8-Hour Protein.png', 'a', 13, 1, 3),
(29, 'MusclePharm Combat Protein Powder', '2 lb', '7PEP8N39J7UDE', 33, '6286d348de231-MusclePharm Combat Protein Powder.png', 'a', 14, 1, 1),
(30, 'Myprotein Impact Whey', '2 lb', 'QM9UQCLK497J6', 33, '6286d4855d7ca-Myprotein Impact Whey.png', 'a', 20, 1, 3),
(31, 'AllMax Nutrition IsoFlex', '2 lb', '6VAMQU7M8TEVA', 50, '6286d54c7e0b1-AllMax Nutrition IsoFlex.png', 'a', 1, 1, 1),
(32, 'Rule 1 R1 Whey Blend', '2 lb', '4DK8CX4P3HR9N', 45, '6286d61630f03-Rule 1 R1 Whey Blend.png', 'a', 21, 1, 1),
(33, 'Scivation Xtend Pro Whey Isolate', '2 lb', 'CKFXBY6RZ7DB8', 40, '6286d6efc16ec-Scivation Xtend Pro Whey Isolate.png', 'a', 22, 1, 1),
(34, 'AllMax Nutrition Protein Snack Bar', '12 barras', 'MP5DL6G7M2WUL', 30, '6286d7af5aacf-AllMax Nutrition Protein Snack Bar.png', 'a', 1, 1, 5),
(35, 'Fizzique Sparkling Protein Water', '12 latas', '9V9M9BYYW5L9J', 42, '6286d855e9eff-Fizzique Sparkling Protein Water.png', 'a', 23, 1, 6),
(37, 'Nutrex ISOFIT', '2 lb', 'DZJEVVGKPXV44', 45, '6286d91acab42-Nutrex ISOFIT.png', 'a', 24, 1, 1),
(38, 'Rule 1 baR1 Crunch Bars', '12 barras', '4DCAYEVFZC6CE', 30, '6286dbd49d44a-Rule 1 baR1 Crunch Bars.png', 'a', 21, 1, 5),
(39, 'BPI Sports Nite-Burn', '30 capsulas', '4G36N25TSMWZ2', 24, '6286dc73b04a4-BPI Sports Nite-Burn.png', 'a', 16, 6, 9),
(40, 'JNX Sports The Omen', '100 capsulas', 'MD9W9NTPST356', 27, '6286dce46cc31-JNX Sports The Omen.png', 'a', 25, 6, 9),
(41, 'MuscleTech Hydroxycut Hardcore Elite', '100 capsulas', 'MGEVDKZR73QCY', 30, '6286dd5d9b593-MuscleTech Hydroxycut Hardcore Elite.png', 'a', 13, 6, 1),
(42, 'Nutrex Lipo-6 Black Ultra Concentrate', '60 capsulas', 'QBMB5HWQBYTU4', 30, '6286ddb3225c2-Nutrex Lipo-6 Black Ultra Concentrate.png', 'a', 24, 6, 9),
(43, 'USN 3XT Max Energy', '30 porciones', 'W2LN7292HD9FC', 30, '6286decf348de-USN 3XT Max Energy.png', 'a', 15, 2, 1),
(44, 'JNX Sports The Shadow', '30 porciones', '734XA3P44CZKW', 30, '6286df687a122-JNX Sports The Shadow.png', 'a', 25, 2, 1),
(45, 'AllMax Nutrition AminoCuts', '30 porciones', 'GMZVNR6QX7HRN', 22, '6286e02c1a7ed-AllMax Nutrition AminoCuts.png', 'a', 1, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` char(15) NOT NULL DEFAULT '',
  `correo` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `estado` varchar(10) DEFAULT 'a' COMMENT 'a=activo, i=inactivo, e=eliminado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre`, `telefono`, `correo`, `direccion`, `avatar`, `estado`) VALUES
(1, 'Aeroflash', '12345', 'aeroflash@gmail.com', 'san salvador', '62881b3c4b48b-kisspng-vendor-computer-icons-clip-art-supplier-5b2510f7f09647.0643124815291558319855-removebg-preview.png', 'a'),
(2, 'AeroEnvios', '12345', 'comedor@gmail.com', 'santa ana', '62881b441d86e-kisspng-vendor-computer-icons-clip-art-supplier-5b2510f7f09647.0643124815291558319855-removebg-preview.png', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_producto`
--

CREATE TABLE `tipo_producto` (
  `id_tip_prod` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_producto`
--

INSERT INTO `tipo_producto` (`id_tip_prod`, `nombre`, `estado`) VALUES
(1, 'Proteina', 'a'),
(2, 'Entrenamiento Previo', 'a'),
(3, 'Salud y Bienestar', 'a'),
(4, 'Vitaminas y Minerales', 'a'),
(6, 'Perdida de Grasa', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_us`
--

CREATE TABLE `tipo_us` (
  `id_tipo_us` int(11) NOT NULL,
  `nombre_tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_us`
--

INSERT INTO `tipo_us` (`id_tipo_us`, `nombre_tipo`) VALUES
(1, 'Administrador'),
(2, 'Cliente'),
(3, 'Root');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_us` varchar(45) NOT NULL,
  `apellidos_us` varchar(45) NOT NULL,
  `edad` date NOT NULL,
  `dui_us` varchar(45) NOT NULL,
  `contrasena_us` varchar(255) NOT NULL,
  `telefono_us` varchar(50) DEFAULT NULL,
  `residencia_us` varchar(50) DEFAULT NULL,
  `correo_us` varchar(50) DEFAULT NULL,
  `sexo_us` varchar(25) DEFAULT NULL,
  `adicional_us` varchar(500) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT '',
  `us_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_us`, `apellidos_us`, `edad`, `dui_us`, `contrasena_us`, `telefono_us`, `residencia_us`, `correo_us`, `sexo_us`, `adicional_us`, `avatar`, `us_tipo`) VALUES
(3, 'Admin Root', 'Root', '1999-07-12', '00000', '$2y$10$Fj0REj6oGVzhkivF4zmrheVFlbhJozkmTUYECw8Oa57imEPXtKJ2W', '70248886', 'El Salvador', 'marvinalexander62@hotmail.com', 'Masculino', 'Programador', '5f823b7d90669-av6.png', 3),
(12, 'Wilfredo', 'Figueroa', '2022-04-10', '057873226', 'admin', NULL, NULL, NULL, NULL, NULL, '625a3ad458dd1-png-transparent-online-food-ordering-food-delivery-grubhub-others-food-service-logo-removebg-preview.png', 3),
(16, 'marvin', 'sab', '2022-05-03', '0202', 'admin', '70248886', 'av morazan ahuachapan', 'marvinalexander6200@gmail.com', 'masculino', 'ahuachapan', '628087a5de2b5-oooo.jpg', 2),
(29, 'wilfredo', 'figueroa', '1998-09-21', 'wilfredo', 'admin', NULL, NULL, NULL, NULL, NULL, '6281220631c55-Captura_de_pantalla_2022-05-15_013802-removebg-preview.png', 2),
(30, 'Rafael', 'Jimenez', '2020-02-13', 'rafael', '1111', NULL, NULL, NULL, NULL, NULL, 'default.jpg', 2),
(31, 'ruiz', 'santos', '2022-05-13', 'santosr12', 'admin', NULL, NULL, NULL, NULL, NULL, '6288327c11b62-avatar2.png', 2),
(32, 'sss', 'sss', '2022-05-12', 'as', 'admin', NULL, NULL, NULL, NULL, NULL, 'default.jpg', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `cliente` varchar(45) DEFAULT NULL,
  `dui` char(10) DEFAULT '0',
  `total` float DEFAULT NULL,
  `vendedor` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `fecha`, `cliente`, `dui`, `total`, `vendedor`, `id_cliente`) VALUES
(20, '2021-03-23 19:52:10', NULL, '0', 2, 3, 7),
(21, '2021-03-23 21:14:40', NULL, '0', 32, 3, 7),
(22, '2022-04-16 07:15:46', NULL, '0', 18, 3, 7),
(23, '2022-04-16 07:20:23', NULL, '0', 5.5, 3, 7),
(25, '2022-05-15 09:17:28', NULL, '0', 5, 3, 7),
(26, '2022-05-15 15:03:39', NULL, '0', 54.99, 3, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_producto`
--

CREATE TABLE `venta_producto` (
  `id_ventaproducto` int(11) NOT NULL,
  `precio` float DEFAULT 0,
  `cantidad` int(11) NOT NULL,
  `subtotal` float NOT NULL,
  `producto_id_producto` int(11) NOT NULL,
  `venta_id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta_producto`
--

INSERT INTO `venta_producto` (`id_ventaproducto`, `precio`, `cantidad`, `subtotal`, `producto_id_producto`, `venta_id_venta`) VALUES
(21, 5, 1, 5, 10, 25),
(22, 5, 1, 5, 10, 26),
(23, 49.99, 1, 49.99, 21, 26);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_det_venta_idx` (`id_det_venta`);

--
-- Indices de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`id_laboratorio`);

--
-- Indices de la tabla `lote`
--
ALTER TABLE `lote`
  ADD PRIMARY KEY (`id_lote`),
  ADD KEY `lote_id_prod_idx` (`lote_id_prod`),
  ADD KEY `lote_id_prov_idx` (`lote_id_prov`);

--
-- Indices de la tabla `presentacion`
--
ALTER TABLE `presentacion`
  ADD PRIMARY KEY (`id_presentacion`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `prod_lab_idx` (`prod_lab`),
  ADD KEY `prod_tip_prod_idx` (`prod_tip_prod`),
  ADD KEY `prod_present_idx` (`prod_present`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  ADD PRIMARY KEY (`id_tip_prod`);

--
-- Indices de la tabla `tipo_us`
--
ALTER TABLE `tipo_us`
  ADD PRIMARY KEY (`id_tipo_us`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `us_tipo_idx` (`us_tipo`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `vendedor` (`vendedor`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `venta_producto`
--
ALTER TABLE `venta_producto`
  ADD PRIMARY KEY (`id_ventaproducto`),
  ADD KEY `fk_venta_has_producto_producto1_idx` (`producto_id_producto`),
  ADD KEY `fk_venta_has_producto_venta1_idx` (`venta_id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  MODIFY `id_laboratorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `lote`
--
ALTER TABLE `lote`
  MODIFY `id_lote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `presentacion`
--
ALTER TABLE `presentacion`
  MODIFY `id_presentacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  MODIFY `id_tip_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo_us`
--
ALTER TABLE `tipo_us`
  MODIFY `id_tipo_us` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `venta_producto`
--
ALTER TABLE `venta_producto`
  MODIFY `id_ventaproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `id_det_venta` FOREIGN KEY (`id_det_venta`) REFERENCES `venta` (`id_venta`);

--
-- Filtros para la tabla `lote`
--
ALTER TABLE `lote`
  ADD CONSTRAINT `lote_id_prod` FOREIGN KEY (`lote_id_prod`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `lote_id_prov` FOREIGN KEY (`lote_id_prov`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `prod_lab` FOREIGN KEY (`prod_lab`) REFERENCES `laboratorio` (`id_laboratorio`),
  ADD CONSTRAINT `prod_present` FOREIGN KEY (`prod_present`) REFERENCES `presentacion` (`id_presentacion`),
  ADD CONSTRAINT `prod_tip_prod` FOREIGN KEY (`prod_tip_prod`) REFERENCES `tipo_producto` (`id_tip_prod`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `us_tipo` FOREIGN KEY (`us_tipo`) REFERENCES `tipo_us` (`id_tipo_us`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`vendedor`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `venta_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `venta_producto`
--
ALTER TABLE `venta_producto`
  ADD CONSTRAINT `fk_venta_has_producto_producto1` FOREIGN KEY (`producto_id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `fk_venta_has_producto_venta1` FOREIGN KEY (`venta_id_venta`) REFERENCES `venta` (`id_venta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
