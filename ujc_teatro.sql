-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 08:07 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujc_teatro`
--

-- --------------------------------------------------------

--
-- Table structure for table `bilhete`
--

CREATE TABLE `bilhete` (
  `codigo` int(11) NOT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `data_compra` datetime DEFAULT NULL,
  `tipo_bilhete` varchar(50) DEFAULT NULL,
  `quantidade` int(11) NOT NULL,
  `espectador_id` int(11) DEFAULT NULL,
  `evento_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bilhete`
--

INSERT INTO `bilhete` (`codigo`, `estado`, `data_compra`, `tipo_bilhete`, `quantidade`, `espectador_id`, `evento_id`) VALUES
(13, 'pago', '2022-11-08 00:00:00', 'normal', 2, 20, 1),
(14, 'pago', '2022-11-08 00:00:00', 'vip', 3, 20, 1),
(15, 'pago', '2022-11-08 00:00:00', 'normal', 5, 20, 1),
(16, 'pago', '2022-11-08 00:00:00', 'normal', 4, 20, 2),
(17, 'pago', '2022-11-08 00:00:00', 'vip', 6, 20, 2),
(18, 'pago', '2022-11-08 00:00:00', 'normal', 1, 20, 2),
(19, 'pago', '2022-11-08 00:00:00', 'normal', 3, 20, 3),
(20, 'pago', '2022-11-08 00:00:00', 'normal', 5, 20, 3),
(21, 'pago', '2022-11-08 00:00:00', 'vip', 10, 20, 3),
(25, 'pago', '2022-11-08 00:00:00', 'normal', 1, 19, 1),
(26, 'pago', '2022-11-08 00:00:00', 'vip', 4, 19, 1),
(27, 'pago', '2022-11-08 00:00:00', 'vip', 6, 19, 1),
(28, 'pago', '2022-11-08 00:00:00', 'normal', 3, 19, 2),
(29, 'pago', '2022-11-08 00:00:00', 'vip', 6, 19, 2),
(30, 'pago', '2022-11-08 00:00:00', 'normal', 1, 19, 2),
(31, 'pago', '2022-11-08 00:00:00', 'normal', 1, 19, 3),
(32, 'pago', '2022-11-08 00:00:00', 'vip', 3, 19, 3),
(33, 'pago', '2022-11-08 00:00:00', '', 1, 19, 3);

-- --------------------------------------------------------

--
-- Table structure for table `espectador`
--

CREATE TABLE `espectador` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `espectador_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `espectador`
--

INSERT INTO `espectador` (`codigo`, `nome`, `bairro`, `cidade`, `telefone`, `espectador_id`) VALUES
(1, 'Antonio', 'Patrice', 'Matola', '842749396', 14),
(2, 'Abílio ', 'Magoanine', 'Maputo', '847596325', 1),
(3, 'Amélia ', 'Intaka', 'Matola', '456768556', 15),
(4, 'Hidelgio Novela', '1 de Maio', 'Matola', '842749396', 19),
(5, 'Gabriela', 'Zimpeto', 'Maputo', '845697812', 20),
(6, 'Teste2', 'teste2', 'teste2', '12345', 21),
(7, 'Abc', 'Matola', 'Maputo', '8412', 24);

-- --------------------------------------------------------

--
-- Table structure for table `evento`
--

CREATE TABLE `evento` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_fim` time DEFAULT NULL,
  `data_evento` date DEFAULT NULL,
  `numero_bilhete` int(100) DEFAULT NULL,
  `local_evento` varchar(200) DEFAULT NULL,
  `promotor` varchar(200) DEFAULT NULL,
  `cartaz` varchar(100) DEFAULT NULL,
  `valor_evento` double DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evento`
--

INSERT INTO `evento` (`codigo`, `nome`, `hora_inicio`, `hora_fim`, `data_evento`, `numero_bilhete`, `local_evento`, `promotor`, `cartaz`, `valor_evento`, `admin_id`, `descricao`) VALUES
(1, 'Os Resistentes da Towen', '18:30:18', '20:00:18', '2022-11-18', 79, 'Cine teatro Gungu, Maputo, Mozambique', 'Gilberto Mendes', 'evento-1.jpg', 350, 1, 'Companhia de Teatro Gungu é uma companhia de teatro profissional de Maputo, Moçambique fundada em 1992 por Gilberto Mendes. Apresenta Os Resistentes da Towen !!! Não perca por nada este evento esperamos por ti. Até lá...\r\n\r\n'),
(2, 'O Profeta', '18:30:18', '20:00:18', '2022-11-18', 79, 'Cine teatro Gungu, Maputo, Mozambique', 'Gilberto Mendes', 'evento-2.jpg', 350, 1, 'Companhia de Teatro Gungu é uma companhia de teatro profissional de Maputo, Moçambique fundada em 1992 por Gilberto Mendes. Apresenta O Profeta!!! Não perca por nada este evento esperamos por ti. Até lá...\r\n\r\n'),
(3, 'Mulheres de fibra', '18:30:18', '20:00:18', '2022-11-18', 77, 'Cine teatro Gungu, Maputo, Mozambique', 'Gilberto Mendes', 'evento-3.jpg', 350, 1, 'Companhia de Teatro Gungu é uma companhia de teatro profissional de Maputo, Moçambique fundada em 1992 por Gilberto Mendes. Apresenta Mulheres de fibra !!! Não perca por nada este evento esperamos por ti. Até lá...\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `utilizador`
--

CREATE TABLE `utilizador` (
  `codigo` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `perfil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `utilizador`
--

INSERT INTO `utilizador` (`codigo`, `email`, `senha`, `perfil`) VALUES
(1, 'emuculo25@gmail.com', 'elio1234', 'admin'),
(14, 'emuculo00@gmail.com', '$2a$10$i.Yq..8IdOwUqzL0c0YQ2OaB8SGt2P4uCDq2ANAobS7aa4NFF1Jcu', 'espectador'),
(15, 'hidelgio@gmail.com', '1234', 'admin'),
(19, 'hidelgionovela@gmail.com', '$2a$10$M0W.MXG8IZTpqcM57/gbz.mmz3XLZp.bKgkc7MDj2JHh16b9BhT7W', 'espectador'),
(20, 'gabriela@hotmail.com', '$2a$10$MC6v5qhNWNPgebckSKzLiOlp8iaM2Z4tOLja.k1yziluCEUD7OU0C', 'espectador'),
(21, 'teste@gmail.com', '$2a$10$IevW1TLHrVzqJkGXPktaOOnFQvx8RHhno9U8PCGGQwUyLTWRNDFlW', 'espectador'),
(23, 'teste2@gmail.com', '$2a$10$DLps5s9OxJcrVVT7bTjJieVCjEWSf6d32RtQCbGVmlQEArnPUUfqe', 'espectador'),
(24, 'abc@gmail.com', '$2a$10$lHPHeP/Ep9/MZnC9ZZULkOkYyj5aiqx1yxRi1gArLFuoNoFyO90bm', 'espectador'),
(25, 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bilhete`
--
ALTER TABLE `bilhete`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `evento_id` (`evento_id`),
  ADD KEY `bilhete_ibfk_2` (`espectador_id`);

--
-- Indexes for table `espectador`
--
ALTER TABLE `espectador`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `espectador_id` (`espectador_id`);

--
-- Indexes for table `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `utilizador`
--
ALTER TABLE `utilizador`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bilhete`
--
ALTER TABLE `bilhete`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `espectador`
--
ALTER TABLE `espectador`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `evento`
--
ALTER TABLE `evento`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `utilizador`
--
ALTER TABLE `utilizador`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bilhete`
--
ALTER TABLE `bilhete`
  ADD CONSTRAINT `bilhete_ibfk_1` FOREIGN KEY (`evento_id`) REFERENCES `evento` (`codigo`),
  ADD CONSTRAINT `bilhete_ibfk_2` FOREIGN KEY (`espectador_id`) REFERENCES `utilizador` (`codigo`);

--
-- Constraints for table `espectador`
--
ALTER TABLE `espectador`
  ADD CONSTRAINT `espectador_ibfk_1` FOREIGN KEY (`espectador_id`) REFERENCES `utilizador` (`codigo`);

--
-- Constraints for table `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `utilizador` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
