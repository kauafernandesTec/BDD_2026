-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06/08/2026 às 17:23
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `veterinaria`
--
CREATE DATABASE IF NOT EXISTS `veterinaria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `veterinaria`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `animais`
--

CREATE TABLE `animais` (
  `idani` int(11) NOT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `nomeanimal` varchar(255) NOT NULL,
  `especie` varchar(255) NOT NULL,
  `raca` varchar(100) NOT NULL,
  `datanascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `animais`
--

INSERT INTO `animais` (`idani`, `idcliente`, `nomeanimal`, `especie`, `raca`, `datanascimento`) VALUES
(1, 1, 'Bilu', 'Cachorro', 'Shih Tzu', '2017-07-26'),
(2, 1, 'Brady', 'Gato', 'SRD', '2015-03-10'),
(3, 2, 'Amarildo', 'Cachorro', 'Bulldog', '2019-02-20'),
(4, 2, 'Billy', 'Cachorro', 'Shih Tzu', '2024-01-19'),
(5, 3, 'Davi Brito', 'Cavalo', 'Mangalarga', '2017-07-26'),
(6, 3, 'Bolsonaro', 'Cachorro', 'Golden Retriever', '2019-01-01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimentos`
--

CREATE TABLE `atendimentos` (
  `idate` int(11) NOT NULL,
  `idanimal` int(11) DEFAULT NULL,
  `idveterinario` int(11) DEFAULT NULL,
  `dataatendimento` date NOT NULL,
  `horaatendimento` time NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `valor` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimentos`
--

INSERT INTO `atendimentos` (`idate`, `idanimal`, `idveterinario`, `dataatendimento`, `horaatendimento`, `descricao`, `valor`) VALUES
(1, 1, 1, '2026-08-27', '09:00:00', 'O animal foi atendido apresentando um ferimento profundo na pata, que necessitava de intervenção cirúrgica. Após a avaliação clínica e a realização dos exames necessários, foi realizada a cirurgia para limpeza, reparação dos tecidos e sutura do local.', 250.00),
(2, 1, 3, '2026-08-31', '12:00:00', 'O animal foi atendido apresentando vermelhidão, lacrimejamento excessivo e dificuldade para manter o olho aberto. Após o exame oftalmológico, foi diagnosticada uma irritação ocular. Foi realizada a limpeza da região afetada e prescritos colírios para o tr', 100.00),
(3, 3, 2, '2026-09-11', '16:00:00', 'O animal foi atendido apresentando dificuldade para apoiar a pata traseira e sinais de dor ao caminhar após uma queda. Durante o exame ortopédico, foi constatada uma suspeita de fratura. A pata foi imobilizada para evitar agravamento da lesão.', 300.00),
(4, 6, 1, '2026-09-25', '14:00:00', 'Um cachorro foi atendido com um pequeno ferimento no abdômen após um acidente. Após a avaliação clínica, foi realizada uma cirurgia para limpeza e sutura da lesão. O procedimento ocorreu sem complicações, e o tutor recebeu orientações sobre os cuidados pó', 800.00),
(5, 3, 3, '2026-08-24', '19:00:00', 'Um cão da raça Bulldog foi atendido com irritação e vermelhidão no olho. Após a avaliação, foi realizada a limpeza da região e aplicado um colírio para o tratamento. O tutor foi orientado sobre os cu', 600.00),
(6, 2, 3, '2026-10-08', '20:00:00', 'Um gato foi atendido apresentando secreção e vermelhidão em um dos olhos. Após a avaliação, foi realizada a limpeza da região e aplicada a medicação adequada. O tutor recebeu orientações sobre os cuidados em casa e o uso do colírio conforme prescrição.', 100.00),
(7, 4, 1, '2026-08-23', '10:30:00', 'Um cachorro foi atendido com um corte profundo na pata após um acidente. Após a avaliação, foi realizada uma cirurgia para limpeza do ferimento e aplicação de pontos. O procedimento foi concluído com sucesso, e o tutor recebeu orientações sobre os cuidado', 800.00),
(8, 5, 2, '2026-09-25', '13:00:00', 'Um cavalo foi atendido apresentando dificuldade para caminhar após uma lesão na pata dianteira. Após a avaliação, foi identificada uma lesão ortopédica, sendo realizado o tratamento inicial com imobilização e medicação para alívio da dor. O responsável re', 350.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nomecli` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cpf` varchar(100) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nomecli`, `telefone`, `email`, `cpf`, `endereco`) VALUES
(1, 'Kauã Fernandes', '11 99329-7551', 'kaua.fernandestec@gmail.com', '487.486.838-09', 'Rua Belterra, num 291, Santo Amaro - SP'),
(2, 'Artur Pra', '11 96376-8761', 'artur.pra@gmail.com', '297.387.839-07', 'Rua General Osório, 37, São Paulo - SP'),
(3, 'Livia Maria', '11 99119-8067', 'livia.lgd@gmail.com', '321.455.221-09', 'Rua Itapira, num 69, Palmeiras - SP');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veterinarios`
--

CREATE TABLE `veterinarios` (
  `idvet` int(11) NOT NULL,
  `nomevet` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `especialidade` varchar(100) NOT NULL,
  `crmv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veterinarios`
--

INSERT INTO `veterinarios` (`idvet`, `nomevet`, `telefone`, `especialidade`, `crmv`) VALUES
(1, 'Isabella Peixera', '11 91129-1414', 'Cirurgia', '25477'),
(2, 'Henrique Batista', '11 90901-7411', 'Ortopedia', '12433'),
(3, 'Laura Reis', '11 98755-1455', 'Oftamologia', '36742');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `animais`
--
ALTER TABLE `animais`
  ADD PRIMARY KEY (`idani`),
  ADD KEY `idcliente` (`idcliente`);

--
-- Índices de tabela `atendimentos`
--
ALTER TABLE `atendimentos`
  ADD PRIMARY KEY (`idate`),
  ADD KEY `idanimal` (`idanimal`),
  ADD KEY `idveterinario` (`idveterinario`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices de tabela `veterinarios`
--
ALTER TABLE `veterinarios`
  ADD PRIMARY KEY (`idvet`),
  ADD UNIQUE KEY `especialidade` (`especialidade`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `animais`
--
ALTER TABLE `animais`
  MODIFY `idani` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `atendimentos`
--
ALTER TABLE `atendimentos`
  MODIFY `idate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `veterinarios`
--
ALTER TABLE `veterinarios`
  MODIFY `idvet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `animais`
--
ALTER TABLE `animais`
  ADD CONSTRAINT `animais_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`);

--
-- Restrições para tabelas `atendimentos`
--
ALTER TABLE `atendimentos`
  ADD CONSTRAINT `atendimentos_ibfk_1` FOREIGN KEY (`idanimal`) REFERENCES `animais` (`idani`),
  ADD CONSTRAINT `atendimentos_ibfk_2` FOREIGN KEY (`idveterinario`) REFERENCES `veterinarios` (`idvet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
