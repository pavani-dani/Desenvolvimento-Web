-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Nov-2024 às 00:13
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `contatos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `amigos`
--

CREATE TABLE `amigos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `dataAniversario` date NOT NULL,
  `login` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `amigos`
--

INSERT INTO `amigos` (`id`, `nome`, `telefone`, `endereco`, `dataAniversario`, `login`) VALUES
(2, 'Gui', '19991806463', 'Verinaud', '1998-03-03', 'gui@email.com'),
(3, 'User', '1987652345', 'Flores', '2012-01-15', 'usr@example.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `foto` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `email`, `senha`, `nome`, `foto`) VALUES
(1, 'usr@example.com', '123456', 'User', 'foto_exemplo.jpg'),
(2, 'dani@email.com', '123456', 'Dani', 'foto_exemplo.jpg'),
(3, 'gui@email.com', '123456', 'Gui', 'foto_exemplo.jpg'),
(4, 'ro@email.com', '123456', 'Ro', 'foto.jpg'),
(6, 'zeca@email.com', '123456', 'Zeca', 'foto.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `amigos`
--
ALTER TABLE `amigos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login` (`login`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `amigos`
--
ALTER TABLE `amigos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `amigos`
--
ALTER TABLE `amigos`
  ADD CONSTRAINT `amigos_ibfk_1` FOREIGN KEY (`login`) REFERENCES `login` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
