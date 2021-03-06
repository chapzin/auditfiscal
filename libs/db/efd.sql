-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25-Abr-2016 às 21:03
-- Versão do servidor: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `efd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque_qtd`
--

CREATE TABLE `estoque_qtd` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) CHARACTER SET latin1 NOT NULL,
  `descricao` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `inv_ini` decimal(23,5) DEFAULT NULL,
  `entradas` decimal(23,5) DEFAULT NULL,
  `entrada_terceiro` decimal(23,5) DEFAULT NULL,
  `saidas_nf` decimal(23,5) DEFAULT NULL,
  `saidas_cf` decimal(23,5) DEFAULT NULL,
  `inv_final` decimal(23,5) DEFAULT NULL,
  `vl_unit` decimal(23,2) DEFAULT NULL,
  `diferenca` decimal(23,5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ibge_uf`
--

CREATE TABLE `ibge_uf` (
  `cod_mun` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `cod_uf` int(11) NOT NULL,
  `seila` int(11) NOT NULL,
  `regiao` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `estado` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `uf` varchar(3) COLLATE latin1_general_ci NOT NULL,
  `municipio` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `ibge_uf`
--

INSERT INTO `ibge_uf` (`cod_mun`, `cod_uf`, `seila`, `regiao`, `estado`, `uf`, `municipio`, `id`) VALUES
('1100015', 11, 15, '1 - Norte', 'Rond?nia', 'RO', 'Alta Floresta D''Oeste', 1),
('1100023', 11, 23, '1 - Norte', 'Rond?nia', 'RO', 'Ariquemes', 2),
('1100031', 11, 31, '1 - Norte', 'Rond?nia', 'RO', 'Cabixi', 3),
('1100049', 11, 49, '1 - Norte', 'Rond?nia', 'RO', 'Cacoal', 4),
('1100056', 11, 56, '1 - Norte', 'Rond?nia', 'RO', 'Cerejeiras', 5),
('1100064', 11, 64, '1 - Norte', 'Rond?nia', 'RO', 'Colorado do Oeste', 6),
('1100072', 11, 72, '1 - Norte', 'Rond?nia', 'RO', 'Corumbiara', 7),
('1100080', 11, 80, '1 - Norte', 'Rond?nia', 'RO', 'Costa Marques', 8),
('1100098', 11, 98, '1 - Norte', 'Rond?nia', 'RO', 'Espig?o D''Oeste', 9),
('1100106', 11, 106, '1 - Norte', 'Rond?nia', 'RO', 'Guajar?-Mirim', 10),
('1100114', 11, 114, '1 - Norte', 'Rond?nia', 'RO', 'Jaru', 11),
('1100015', 11, 15, '1 - Norte', 'Rondônia', 'RO', 'Alta Floresta D''Oeste', 12),
('1100023', 11, 23, '1 - Norte', 'Rondônia', 'RO', 'Ariquemes', 13),
('1100031', 11, 31, '1 - Norte', 'Rondônia', 'RO', 'Cabixi', 14),
('1100049', 11, 49, '1 - Norte', 'Rondônia', 'RO', 'Cacoal', 15),
('1100056', 11, 56, '1 - Norte', 'Rondônia', 'RO', 'Cerejeiras', 16),
('1100064', 11, 64, '1 - Norte', 'Rondônia', 'RO', 'Colorado do Oeste', 17),
('1100072', 11, 72, '1 - Norte', 'Rondônia', 'RO', 'Corumbiara', 18),
('1100080', 11, 80, '1 - Norte', 'Rondônia', 'RO', 'Costa Marques', 19),
('1100098', 11, 98, '1 - Norte', 'Rondônia', 'RO', 'Espigão D''Oeste', 20),
('1100106', 11, 106, '1 - Norte', 'Rondônia', 'RO', 'Guajará-Mirim', 21),
('1100114', 11, 114, '1 - Norte', 'Rondônia', 'RO', 'Jaru', 22),
('1100122', 11, 122, '1 - Norte', 'Rondônia', 'RO', 'Ji-Paraná', 23),
('1100130', 11, 130, '1 - Norte', 'Rondônia', 'RO', 'Machadinho D''Oeste', 24),
('1100148', 11, 148, '1 - Norte', 'Rondônia', 'RO', 'Nova Brasilândia D''Oeste', 25),
('1100155', 11, 155, '1 - Norte', 'Rondônia', 'RO', 'Ouro Preto do Oeste', 26),
('1100189', 11, 189, '1 - Norte', 'Rondônia', 'RO', 'Pimenta Bueno', 27),
('1100205', 11, 205, '1 - Norte', 'Rondônia', 'RO', 'Porto Velho', 28),
('1100254', 11, 254, '1 - Norte', 'Rondônia', 'RO', 'Presidente Médici', 29),
('1100262', 11, 262, '1 - Norte', 'Rondônia', 'RO', 'Rio Crespo', 30),
('1100288', 11, 288, '1 - Norte', 'Rondônia', 'RO', 'Rolim de Moura', 31),
('1100296', 11, 296, '1 - Norte', 'Rondônia', 'RO', 'Santa Luzia D''Oeste', 32),
('1100304', 11, 304, '1 - Norte', 'Rondônia', 'RO', 'Vilhena', 33),
('1100320', 11, 320, '1 - Norte', 'Rondônia', 'RO', 'São Miguel do Guaporé', 34),
('1100338', 11, 338, '1 - Norte', 'Rondônia', 'RO', 'Nova Mamoré', 35),
('1100346', 11, 346, '1 - Norte', 'Rondônia', 'RO', 'Alvorada D''Oeste', 36),
('1100379', 11, 379, '1 - Norte', 'Rondônia', 'RO', 'Alto Alegre dos Parecis', 37),
('1100403', 11, 403, '1 - Norte', 'Rondônia', 'RO', 'Alto Paraíso', 38),
('1100452', 11, 452, '1 - Norte', 'Rondônia', 'RO', 'Buritis', 39),
('1100502', 11, 502, '1 - Norte', 'Rondônia', 'RO', 'Novo Horizonte do Oeste', 40),
('1100601', 11, 601, '1 - Norte', 'Rondônia', 'RO', 'Cacaulândia', 41),
('1100700', 11, 700, '1 - Norte', 'Rondônia', 'RO', 'Campo Novo de Rondônia', 42),
('1100809', 11, 809, '1 - Norte', 'Rondônia', 'RO', 'Candeias do Jamari', 43),
('1100908', 11, 908, '1 - Norte', 'Rondônia', 'RO', 'Castanheiras', 44),
('1100924', 11, 924, '1 - Norte', 'Rondônia', 'RO', 'Chupinguaia', 45),
('1100940', 11, 940, '1 - Norte', 'Rondônia', 'RO', 'Cujubim', 46),
('1101005', 11, 1005, '1 - Norte', 'Rondônia', 'RO', 'Governador Jorge Teixeira', 47),
('1101104', 11, 1104, '1 - Norte', 'Rondônia', 'RO', 'Itapuã do Oeste', 48),
('1101203', 11, 1203, '1 - Norte', 'Rondônia', 'RO', 'Ministro Andreazza', 49),
('1101302', 11, 1302, '1 - Norte', 'Rondônia', 'RO', 'Mirante da Serra', 50),
('1101401', 11, 1401, '1 - Norte', 'Rondônia', 'RO', 'Monte Negro', 51),
('1101435', 11, 1435, '1 - Norte', 'Rondônia', 'RO', 'Nova União', 52),
('1101450', 11, 1450, '1 - Norte', 'Rondônia', 'RO', 'Parecis', 53),
('1101468', 11, 1468, '1 - Norte', 'Rondônia', 'RO', 'Pimenteiras do Oeste', 54),
('1101476', 11, 1476, '1 - Norte', 'Rondônia', 'RO', 'Primavera de Rondônia', 55),
('1101484', 11, 1484, '1 - Norte', 'Rondônia', 'RO', 'São Felipe D''Oeste', 56),
('1101492', 11, 1492, '1 - Norte', 'Rondônia', 'RO', 'São Francisco do Guaporé', 57),
('1101500', 11, 1500, '1 - Norte', 'Rondônia', 'RO', 'Seringueiras', 58),
('1101559', 11, 1559, '1 - Norte', 'Rondônia', 'RO', 'Teixeirópolis', 59),
('1101609', 11, 1609, '1 - Norte', 'Rondônia', 'RO', 'Theobroma', 60),
('1101708', 11, 1708, '1 - Norte', 'Rondônia', 'RO', 'Urupá', 61),
('1101757', 11, 1757, '1 - Norte', 'Rondônia', 'RO', 'Vale do Anari', 62),
('1101807', 11, 1807, '1 - Norte', 'Rondônia', 'RO', 'Vale do Paraíso', 63),
('1200013', 12, 13, '1 - Norte', 'Acre', 'AC', 'Acrelândia', 64),
('1200054', 12, 54, '1 - Norte', 'Acre', 'AC', 'Assis Brasil', 65),
('1200104', 12, 104, '1 - Norte', 'Acre', 'AC', 'Brasiléia', 66),
('1200138', 12, 138, '1 - Norte', 'Acre', 'AC', 'Bujari', 67),
('1200179', 12, 179, '1 - Norte', 'Acre', 'AC', 'Capixaba', 68),
('1200203', 12, 203, '1 - Norte', 'Acre', 'AC', 'Cruzeiro do Sul', 69),
('1200252', 12, 252, '1 - Norte', 'Acre', 'AC', 'Epitaciolândia', 70),
('1200302', 12, 302, '1 - Norte', 'Acre', 'AC', 'Feijó', 71),
('1200328', 12, 328, '1 - Norte', 'Acre', 'AC', 'Jordão', 72),
('1200336', 12, 336, '1 - Norte', 'Acre', 'AC', 'Mâncio Lima', 73),
('1200344', 12, 344, '1 - Norte', 'Acre', 'AC', 'Manoel Urbano', 74),
('1200351', 12, 351, '1 - Norte', 'Acre', 'AC', 'Marechal Thaumaturgo', 75),
('1200385', 12, 385, '1 - Norte', 'Acre', 'AC', 'Plácido de Castro', 76),
('1200393', 12, 393, '1 - Norte', 'Acre', 'AC', 'Porto Walter', 77),
('1200401', 12, 401, '1 - Norte', 'Acre', 'AC', 'Rio Branco', 78),
('1200427', 12, 427, '1 - Norte', 'Acre', 'AC', 'Rodrigues Alves', 79),
('1200435', 12, 435, '1 - Norte', 'Acre', 'AC', 'Santa Rosa do Purus', 80),
('1200450', 12, 450, '1 - Norte', 'Acre', 'AC', 'Senador Guiomard', 81),
('1200500', 12, 500, '1 - Norte', 'Acre', 'AC', 'Sena Madureira', 82),
('1200609', 12, 609, '1 - Norte', 'Acre', 'AC', 'Tarauacá', 83),
('1200708', 12, 708, '1 - Norte', 'Acre', 'AC', 'Xapuri', 84),
('1200807', 12, 807, '1 - Norte', 'Acre', 'AC', 'Porto Acre', 85),
('1300029', 13, 29, '1 - Norte', 'Amazonas', 'AM', 'Alvarães', 86),
('1300060', 13, 60, '1 - Norte', 'Amazonas', 'AM', 'Amaturá', 87),
('1300086', 13, 86, '1 - Norte', 'Amazonas', 'AM', 'Anamã', 88),
('1300102', 13, 102, '1 - Norte', 'Amazonas', 'AM', 'Anori', 89),
('1300144', 13, 144, '1 - Norte', 'Amazonas', 'AM', 'Apuí', 90),
('1300201', 13, 201, '1 - Norte', 'Amazonas', 'AM', 'Atalaia do Norte', 91),
('1300300', 13, 300, '1 - Norte', 'Amazonas', 'AM', 'Autazes', 92),
('1300409', 13, 409, '1 - Norte', 'Amazonas', 'AM', 'Barcelos', 93),
('1300508', 13, 508, '1 - Norte', 'Amazonas', 'AM', 'Barreirinha', 94),
('1300607', 13, 607, '1 - Norte', 'Amazonas', 'AM', 'Benjamin Constant', 95),
('1300631', 13, 631, '1 - Norte', 'Amazonas', 'AM', 'Beruri', 96),
('1300680', 13, 680, '1 - Norte', 'Amazonas', 'AM', 'Boa Vista do Ramos', 97),
('1300706', 13, 706, '1 - Norte', 'Amazonas', 'AM', 'Boca do Acre', 98),
('1300805', 13, 805, '1 - Norte', 'Amazonas', 'AM', 'Borba', 99),
('1300839', 13, 839, '1 - Norte', 'Amazonas', 'AM', 'Caapiranga', 100),
('1300904', 13, 904, '1 - Norte', 'Amazonas', 'AM', 'Canutama', 101),
('1301001', 13, 1001, '1 - Norte', 'Amazonas', 'AM', 'Carauari', 102),
('1301100', 13, 1100, '1 - Norte', 'Amazonas', 'AM', 'Careiro', 103),
('1301159', 13, 1159, '1 - Norte', 'Amazonas', 'AM', 'Careiro da Várzea', 104),
('1301209', 13, 1209, '1 - Norte', 'Amazonas', 'AM', 'Coari', 105),
('1301308', 13, 1308, '1 - Norte', 'Amazonas', 'AM', 'Codajás', 106),
('1301407', 13, 1407, '1 - Norte', 'Amazonas', 'AM', 'Eirunepé', 107),
('1301506', 13, 1506, '1 - Norte', 'Amazonas', 'AM', 'Envira', 108),
('1301605', 13, 1605, '1 - Norte', 'Amazonas', 'AM', 'Fonte Boa', 109),
('1301654', 13, 1654, '1 - Norte', 'Amazonas', 'AM', 'Guajará', 110),
('1301704', 13, 1704, '1 - Norte', 'Amazonas', 'AM', 'Humaitá', 111),
('1301803', 13, 1803, '1 - Norte', 'Amazonas', 'AM', 'Ipixuna', 112),
('1301852', 13, 1852, '1 - Norte', 'Amazonas', 'AM', 'Iranduba', 113),
('1301902', 13, 1902, '1 - Norte', 'Amazonas', 'AM', 'Itacoatiara', 114),
('1301951', 13, 1951, '1 - Norte', 'Amazonas', 'AM', 'Itamarati', 115),
('1302009', 13, 2009, '1 - Norte', 'Amazonas', 'AM', 'Itapiranga', 116),
('1302108', 13, 2108, '1 - Norte', 'Amazonas', 'AM', 'Japurá', 117),
('1302207', 13, 2207, '1 - Norte', 'Amazonas', 'AM', 'Juruá', 118),
('1302306', 13, 2306, '1 - Norte', 'Amazonas', 'AM', 'Jutaí', 119),
('1302405', 13, 2405, '1 - Norte', 'Amazonas', 'AM', 'Lábrea', 120),
('1302504', 13, 2504, '1 - Norte', 'Amazonas', 'AM', 'Manacapuru', 121),
('1302553', 13, 2553, '1 - Norte', 'Amazonas', 'AM', 'Manaquiri', 122),
('1302603', 13, 2603, '1 - Norte', 'Amazonas', 'AM', 'Manaus', 123),
('1302702', 13, 2702, '1 - Norte', 'Amazonas', 'AM', 'Manicoré', 124),
('1302801', 13, 2801, '1 - Norte', 'Amazonas', 'AM', 'Maraã', 125),
('1302900', 13, 2900, '1 - Norte', 'Amazonas', 'AM', 'Maués', 126),
('1303007', 13, 3007, '1 - Norte', 'Amazonas', 'AM', 'Nhamundá', 127),
('1303106', 13, 3106, '1 - Norte', 'Amazonas', 'AM', 'Nova Olinda do Norte', 128),
('1303205', 13, 3205, '1 - Norte', 'Amazonas', 'AM', 'Novo Airão', 129),
('1303304', 13, 3304, '1 - Norte', 'Amazonas', 'AM', 'Novo Aripuanã', 130),
('1303403', 13, 3403, '1 - Norte', 'Amazonas', 'AM', 'Parintins', 131),
('1303502', 13, 3502, '1 - Norte', 'Amazonas', 'AM', 'Pauini', 132),
('1303536', 13, 3536, '1 - Norte', 'Amazonas', 'AM', 'Presidente Figueiredo', 133),
('1303569', 13, 3569, '1 - Norte', 'Amazonas', 'AM', 'Rio Preto da Eva', 134),
('1303601', 13, 3601, '1 - Norte', 'Amazonas', 'AM', 'Santa Isabel do Rio Negro', 135),
('1303700', 13, 3700, '1 - Norte', 'Amazonas', 'AM', 'Santo Antônio do Içá', 136),
('1303809', 13, 3809, '1 - Norte', 'Amazonas', 'AM', 'São Gabriel da Cachoeira', 137),
('1303908', 13, 3908, '1 - Norte', 'Amazonas', 'AM', 'São Paulo de Olivença', 138),
('1303957', 13, 3957, '1 - Norte', 'Amazonas', 'AM', 'São Sebastião do Uatumã', 139),
('1304005', 13, 4005, '1 - Norte', 'Amazonas', 'AM', 'Silves', 140),
('1304062', 13, 4062, '1 - Norte', 'Amazonas', 'AM', 'Tabatinga', 141),
('1304104', 13, 4104, '1 - Norte', 'Amazonas', 'AM', 'Tapauá', 142),
('1304203', 13, 4203, '1 - Norte', 'Amazonas', 'AM', 'Tefé', 143),
('1304237', 13, 4237, '1 - Norte', 'Amazonas', 'AM', 'Tonantins', 144),
('1304260', 13, 4260, '1 - Norte', 'Amazonas', 'AM', 'Uarini', 145),
('1304302', 13, 4302, '1 - Norte', 'Amazonas', 'AM', 'Urucará', 146),
('1304401', 13, 4401, '1 - Norte', 'Amazonas', 'AM', 'Urucurituba', 147),
('1400027', 14, 27, '1 - Norte', 'Roraima', 'RR', 'Amajari', 148),
('1400050', 14, 50, '1 - Norte', 'Roraima', 'RR', 'Alto Alegre', 149),
('1400100', 14, 100, '1 - Norte', 'Roraima', 'RR', 'Boa Vista', 150),
('1400159', 14, 159, '1 - Norte', 'Roraima', 'RR', 'Bonfim', 151),
('1400175', 14, 175, '1 - Norte', 'Roraima', 'RR', 'Cantá', 152),
('1400209', 14, 209, '1 - Norte', 'Roraima', 'RR', 'Caracaraí', 153),
('1400233', 14, 233, '1 - Norte', 'Roraima', 'RR', 'Caroebe', 154),
('1400282', 14, 282, '1 - Norte', 'Roraima', 'RR', 'Iracema', 155),
('1400308', 14, 308, '1 - Norte', 'Roraima', 'RR', 'Mucajaí', 156),
('1400407', 14, 407, '1 - Norte', 'Roraima', 'RR', 'Normandia', 157),
('1400456', 14, 456, '1 - Norte', 'Roraima', 'RR', 'Pacaraima', 158),
('1400472', 14, 472, '1 - Norte', 'Roraima', 'RR', 'Rorainópolis', 159),
('1400506', 14, 506, '1 - Norte', 'Roraima', 'RR', 'São João da Baliza', 160),
('1400605', 14, 605, '1 - Norte', 'Roraima', 'RR', 'São Luiz', 161),
('1400704', 14, 704, '1 - Norte', 'Roraima', 'RR', 'Uiramutã', 162),
('1500107', 15, 107, '1 - Norte', 'Pará', 'PA', 'Abaetetuba', 163),
('1500131', 15, 131, '1 - Norte', 'Pará', 'PA', 'Abel Figueiredo', 164),
('1500206', 15, 206, '1 - Norte', 'Pará', 'PA', 'Acará', 165),
('1500305', 15, 305, '1 - Norte', 'Pará', 'PA', 'Afuá', 166),
('1500347', 15, 347, '1 - Norte', 'Pará', 'PA', 'Água Azul do Norte', 167),
('1500404', 15, 404, '1 - Norte', 'Pará', 'PA', 'Alenquer', 168),
('1500503', 15, 503, '1 - Norte', 'Pará', 'PA', 'Almeirim', 169),
('1500602', 15, 602, '1 - Norte', 'Pará', 'PA', 'Altamira', 170),
('1500701', 15, 701, '1 - Norte', 'Pará', 'PA', 'Anajás', 171),
('1500800', 15, 800, '1 - Norte', 'Pará', 'PA', 'Ananindeua', 172),
('1500859', 15, 859, '1 - Norte', 'Pará', 'PA', 'Anapu', 173),
('1500909', 15, 909, '1 - Norte', 'Pará', 'PA', 'Augusto Corrêa', 174),
('1500958', 15, 958, '1 - Norte', 'Pará', 'PA', 'Aurora do Pará', 175),
('1501006', 15, 1006, '1 - Norte', 'Pará', 'PA', 'Aveiro', 176),
('1501105', 15, 1105, '1 - Norte', 'Pará', 'PA', 'Bagre', 177),
('1501204', 15, 1204, '1 - Norte', 'Pará', 'PA', 'Baião', 178),
('1501253', 15, 1253, '1 - Norte', 'Pará', 'PA', 'Bannach', 179),
('1501303', 15, 1303, '1 - Norte', 'Pará', 'PA', 'Barcarena', 180),
('1501402', 15, 1402, '1 - Norte', 'Pará', 'PA', 'Belém', 181),
('1501451', 15, 1451, '1 - Norte', 'Pará', 'PA', 'Belterra', 182),
('1501501', 15, 1501, '1 - Norte', 'Pará', 'PA', 'Benevides', 183),
('1501576', 15, 1576, '1 - Norte', 'Pará', 'PA', 'Bom Jesus do Tocantins', 184),
('1501600', 15, 1600, '1 - Norte', 'Pará', 'PA', 'Bonito', 185),
('1501709', 15, 1709, '1 - Norte', 'Pará', 'PA', 'Bragança', 186),
('1501725', 15, 1725, '1 - Norte', 'Pará', 'PA', 'Brasil Novo', 187),
('1501758', 15, 1758, '1 - Norte', 'Pará', 'PA', 'Brejo Grande do Araguaia', 188),
('1501782', 15, 1782, '1 - Norte', 'Pará', 'PA', 'Breu Branco', 189),
('1501808', 15, 1808, '1 - Norte', 'Pará', 'PA', 'Breves', 190),
('1501907', 15, 1907, '1 - Norte', 'Pará', 'PA', 'Bujaru', 191),
('1501956', 15, 1956, '1 - Norte', 'Pará', 'PA', 'Cachoeira do Piriá', 192),
('1502004', 15, 2004, '1 - Norte', 'Pará', 'PA', 'Cachoeira do Arari', 193),
('1502103', 15, 2103, '1 - Norte', 'Pará', 'PA', 'Cametá', 194),
('1502152', 15, 2152, '1 - Norte', 'Pará', 'PA', 'Canaã dos Carajás', 195),
('1502202', 15, 2202, '1 - Norte', 'Pará', 'PA', 'Capanema', 196),
('1502301', 15, 2301, '1 - Norte', 'Pará', 'PA', 'Capitão Poço', 197),
('1502400', 15, 2400, '1 - Norte', 'Pará', 'PA', 'Castanhal', 198),
('1502509', 15, 2509, '1 - Norte', 'Pará', 'PA', 'Chaves', 199),
('1502608', 15, 2608, '1 - Norte', 'Pará', 'PA', 'Colares', 200),
('1502707', 15, 2707, '1 - Norte', 'Pará', 'PA', 'Conceição do Araguaia', 201),
('1502756', 15, 2756, '1 - Norte', 'Pará', 'PA', 'Concórdia do Pará', 202),
('1502764', 15, 2764, '1 - Norte', 'Pará', 'PA', 'Cumaru do Norte', 203),
('1502772', 15, 2772, '1 - Norte', 'Pará', 'PA', 'Curionópolis', 204),
('1502806', 15, 2806, '1 - Norte', 'Pará', 'PA', 'Curralinho', 205),
('1502855', 15, 2855, '1 - Norte', 'Pará', 'PA', 'Curuá', 206),
('1502905', 15, 2905, '1 - Norte', 'Pará', 'PA', 'Curuçá', 207),
('1502939', 15, 2939, '1 - Norte', 'Pará', 'PA', 'Dom Eliseu', 208),
('1502954', 15, 2954, '1 - Norte', 'Pará', 'PA', 'Eldorado do Carajás', 209),
('1503002', 15, 3002, '1 - Norte', 'Pará', 'PA', 'Faro', 210),
('1503044', 15, 3044, '1 - Norte', 'Pará', 'PA', 'Floresta do Araguaia', 211),
('1503077', 15, 3077, '1 - Norte', 'Pará', 'PA', 'Garrafão do Norte', 212),
('1503093', 15, 3093, '1 - Norte', 'Pará', 'PA', 'Goianésia do Pará', 213),
('1503101', 15, 3101, '1 - Norte', 'Pará', 'PA', 'Gurupá', 214),
('1503200', 15, 3200, '1 - Norte', 'Pará', 'PA', 'Igarapé-Açu', 215),
('1503309', 15, 3309, '1 - Norte', 'Pará', 'PA', 'Igarapé-Miri', 216),
('1503408', 15, 3408, '1 - Norte', 'Pará', 'PA', 'Inhangapi', 217),
('1503457', 15, 3457, '1 - Norte', 'Pará', 'PA', 'Ipixuna do Pará', 218),
('1503507', 15, 3507, '1 - Norte', 'Pará', 'PA', 'Irituia', 219),
('1503606', 15, 3606, '1 - Norte', 'Pará', 'PA', 'Itaituba', 220),
('1503705', 15, 3705, '1 - Norte', 'Pará', 'PA', 'Itupiranga', 221),
('1503754', 15, 3754, '1 - Norte', 'Pará', 'PA', 'Jacareacanga', 222),
('1503804', 15, 3804, '1 - Norte', 'Pará', 'PA', 'Jacundá', 223),
('1503903', 15, 3903, '1 - Norte', 'Pará', 'PA', 'Juruti', 224),
('1504000', 15, 4000, '1 - Norte', 'Pará', 'PA', 'Limoeiro do Ajuru', 225),
('1504059', 15, 4059, '1 - Norte', 'Pará', 'PA', 'Mãe do Rio', 226),
('1504109', 15, 4109, '1 - Norte', 'Pará', 'PA', 'Magalhães Barata', 227),
('1504208', 15, 4208, '1 - Norte', 'Pará', 'PA', 'Marabá', 228),
('1504307', 15, 4307, '1 - Norte', 'Pará', 'PA', 'Maracanã', 229),
('1504406', 15, 4406, '1 - Norte', 'Pará', 'PA', 'Marapanim', 230),
('1504422', 15, 4422, '1 - Norte', 'Pará', 'PA', 'Marituba', 231),
('1504455', 15, 4455, '1 - Norte', 'Pará', 'PA', 'Medicilândia', 232),
('1504505', 15, 4505, '1 - Norte', 'Pará', 'PA', 'Melgaço', 233),
('1504604', 15, 4604, '1 - Norte', 'Pará', 'PA', 'Mocajuba', 234),
('1504703', 15, 4703, '1 - Norte', 'Pará', 'PA', 'Moju', 235),
('1504752', 15, 4752, '1 - Norte', 'Pará', 'PA', 'Mojuí dos Campos', 236),
('1504802', 15, 4802, '1 - Norte', 'Pará', 'PA', 'Monte Alegre', 237),
('1504901', 15, 4901, '1 - Norte', 'Pará', 'PA', 'Muaná', 238),
('1504950', 15, 4950, '1 - Norte', 'Pará', 'PA', 'Nova Esperança do Piriá', 239),
('1504976', 15, 4976, '1 - Norte', 'Pará', 'PA', 'Nova Ipixuna', 240),
('1505007', 15, 5007, '1 - Norte', 'Pará', 'PA', 'Nova Timboteua', 241),
('1505031', 15, 5031, '1 - Norte', 'Pará', 'PA', 'Novo Progresso', 242),
('1505064', 15, 5064, '1 - Norte', 'Pará', 'PA', 'Novo Repartimento', 243),
('1505106', 15, 5106, '1 - Norte', 'Pará', 'PA', 'Óbidos', 244),
('1505205', 15, 5205, '1 - Norte', 'Pará', 'PA', 'Oeiras do Pará', 245),
('1505304', 15, 5304, '1 - Norte', 'Pará', 'PA', 'Oriximiná', 246),
('1505403', 15, 5403, '1 - Norte', 'Pará', 'PA', 'Ourém', 247),
('1505437', 15, 5437, '1 - Norte', 'Pará', 'PA', 'Ourilândia do Norte', 248),
('1505486', 15, 5486, '1 - Norte', 'Pará', 'PA', 'Pacajá', 249),
('1505494', 15, 5494, '1 - Norte', 'Pará', 'PA', 'Palestina do Pará', 250),
('1505502', 15, 5502, '1 - Norte', 'Pará', 'PA', 'Paragominas', 251),
('1505536', 15, 5536, '1 - Norte', 'Pará', 'PA', 'Parauapebas', 252),
('1505551', 15, 5551, '1 - Norte', 'Pará', 'PA', 'Pau D''Arco', 253),
('1505601', 15, 5601, '1 - Norte', 'Pará', 'PA', 'Peixe-Boi', 254),
('1505635', 15, 5635, '1 - Norte', 'Pará', 'PA', 'Piçarra', 255),
('1505650', 15, 5650, '1 - Norte', 'Pará', 'PA', 'Placas', 256),
('1505700', 15, 5700, '1 - Norte', 'Pará', 'PA', 'Ponta de Pedras', 257),
('1505809', 15, 5809, '1 - Norte', 'Pará', 'PA', 'Portel', 258),
('1505908', 15, 5908, '1 - Norte', 'Pará', 'PA', 'Porto de Moz', 259),
('1506005', 15, 6005, '1 - Norte', 'Pará', 'PA', 'Prainha', 260),
('1506104', 15, 6104, '1 - Norte', 'Pará', 'PA', 'Primavera', 261),
('1506112', 15, 6112, '1 - Norte', 'Pará', 'PA', 'Quatipuru', 262),
('1506138', 15, 6138, '1 - Norte', 'Pará', 'PA', 'Redenção', 263),
('1506161', 15, 6161, '1 - Norte', 'Pará', 'PA', 'Rio Maria', 264),
('1506187', 15, 6187, '1 - Norte', 'Pará', 'PA', 'Rondon do Pará', 265),
('1506195', 15, 6195, '1 - Norte', 'Pará', 'PA', 'Rurópolis', 266),
('1506203', 15, 6203, '1 - Norte', 'Pará', 'PA', 'Salinópolis', 267),
('1506302', 15, 6302, '1 - Norte', 'Pará', 'PA', 'Salvaterra', 268),
('1506351', 15, 6351, '1 - Norte', 'Pará', 'PA', 'Santa Bárbara do Pará', 269),
('1506401', 15, 6401, '1 - Norte', 'Pará', 'PA', 'Santa Cruz do Arari', 270),
('1506500', 15, 6500, '1 - Norte', 'Pará', 'PA', 'Santa Izabel do Pará', 271),
('1506559', 15, 6559, '1 - Norte', 'Pará', 'PA', 'Santa Luzia do Pará', 272),
('1506583', 15, 6583, '1 - Norte', 'Pará', 'PA', 'Santa Maria das Barreiras', 273),
('1506609', 15, 6609, '1 - Norte', 'Pará', 'PA', 'Santa Maria do Pará', 274),
('1506708', 15, 6708, '1 - Norte', 'Pará', 'PA', 'Santana do Araguaia', 275),
('1506807', 15, 6807, '1 - Norte', 'Pará', 'PA', 'Santarém', 276),
('1506906', 15, 6906, '1 - Norte', 'Pará', 'PA', 'Santarém Novo', 277),
('1507003', 15, 7003, '1 - Norte', 'Pará', 'PA', 'Santo Antônio do Tauá', 278),
('1507102', 15, 7102, '1 - Norte', 'Pará', 'PA', 'São Caetano de Odivelas', 279),
('1507151', 15, 7151, '1 - Norte', 'Pará', 'PA', 'São Domingos do Araguaia', 280),
('1507201', 15, 7201, '1 - Norte', 'Pará', 'PA', 'São Domingos do Capim', 281),
('1507300', 15, 7300, '1 - Norte', 'Pará', 'PA', 'São Félix do Xingu', 282),
('1507409', 15, 7409, '1 - Norte', 'Pará', 'PA', 'São Francisco do Pará', 283),
('1507458', 15, 7458, '1 - Norte', 'Pará', 'PA', 'São Geraldo do Araguaia', 284),
('1507466', 15, 7466, '1 - Norte', 'Pará', 'PA', 'São João da Ponta', 285),
('1507474', 15, 7474, '1 - Norte', 'Pará', 'PA', 'São João de Pirabas', 286),
('1507508', 15, 7508, '1 - Norte', 'Pará', 'PA', 'São João do Araguaia', 287),
('1507607', 15, 7607, '1 - Norte', 'Pará', 'PA', 'São Miguel do Guamá', 288),
('1507706', 15, 7706, '1 - Norte', 'Pará', 'PA', 'São Sebastião da Boa Vista', 289),
('1507755', 15, 7755, '1 - Norte', 'Pará', 'PA', 'Sapucaia', 290),
('1507805', 15, 7805, '1 - Norte', 'Pará', 'PA', 'Senador José Porfírio', 291),
('1507904', 15, 7904, '1 - Norte', 'Pará', 'PA', 'Soure', 292),
('1507953', 15, 7953, '1 - Norte', 'Pará', 'PA', 'Tailândia', 293),
('1507961', 15, 7961, '1 - Norte', 'Pará', 'PA', 'Terra Alta', 294),
('1507979', 15, 7979, '1 - Norte', 'Pará', 'PA', 'Terra Santa', 295),
('1508001', 15, 8001, '1 - Norte', 'Pará', 'PA', 'Tomé-Açu', 296),
('1508035', 15, 8035, '1 - Norte', 'Pará', 'PA', 'Tracuateua', 297),
('1508050', 15, 8050, '1 - Norte', 'Pará', 'PA', 'Trairão', 298),
('1508084', 15, 8084, '1 - Norte', 'Pará', 'PA', 'Tucumã', 299),
('1508100', 15, 8100, '1 - Norte', 'Pará', 'PA', 'Tucuruí', 300),
('1508126', 15, 8126, '1 - Norte', 'Pará', 'PA', 'Ulianópolis', 301),
('1508159', 15, 8159, '1 - Norte', 'Pará', 'PA', 'Uruará', 302),
('1508209', 15, 8209, '1 - Norte', 'Pará', 'PA', 'Vigia', 303),
('1508308', 15, 8308, '1 - Norte', 'Pará', 'PA', 'Viseu', 304),
('1508357', 15, 8357, '1 - Norte', 'Pará', 'PA', 'Vitória do Xingu', 305),
('1508407', 15, 8407, '1 - Norte', 'Pará', 'PA', 'Xinguara', 306),
('1600055', 16, 55, '1 - Norte', 'Amapá', 'AP', 'Serra do Navio', 307),
('1600105', 16, 105, '1 - Norte', 'Amapá', 'AP', 'Amapá', 308),
('1600154', 16, 154, '1 - Norte', 'Amapá', 'AP', 'Pedra Branca do Amapari', 309),
('1600204', 16, 204, '1 - Norte', 'Amapá', 'AP', 'Calçoene', 310),
('1600212', 16, 212, '1 - Norte', 'Amapá', 'AP', 'Cutias', 311),
('1600238', 16, 238, '1 - Norte', 'Amapá', 'AP', 'Ferreira Gomes', 312),
('1600253', 16, 253, '1 - Norte', 'Amapá', 'AP', 'Itaubal', 313),
('1600279', 16, 279, '1 - Norte', 'Amapá', 'AP', 'Laranjal do Jari', 314),
('1600303', 16, 303, '1 - Norte', 'Amapá', 'AP', 'Macapá', 315),
('1600402', 16, 402, '1 - Norte', 'Amapá', 'AP', 'Mazagão', 316),
('1600501', 16, 501, '1 - Norte', 'Amapá', 'AP', 'Oiapoque', 317),
('1600535', 16, 535, '1 - Norte', 'Amapá', 'AP', 'Porto Grande', 318),
('1600550', 16, 550, '1 - Norte', 'Amapá', 'AP', 'Pracuúba', 319),
('1600600', 16, 600, '1 - Norte', 'Amapá', 'AP', 'Santana', 320),
('1600709', 16, 709, '1 - Norte', 'Amapá', 'AP', 'Tartarugalzinho', 321),
('1600808', 16, 808, '1 - Norte', 'Amapá', 'AP', 'Vitória do Jari', 322),
('1700251', 17, 251, '1 - Norte', 'Tocantins', 'TO', 'Abreulândia', 323),
('1700301', 17, 301, '1 - Norte', 'Tocantins', 'TO', 'Aguiarnópolis', 324),
('1700350', 17, 350, '1 - Norte', 'Tocantins', 'TO', 'Aliança do Tocantins', 325),
('1700400', 17, 400, '1 - Norte', 'Tocantins', 'TO', 'Almas', 326),
('1700707', 17, 707, '1 - Norte', 'Tocantins', 'TO', 'Alvorada', 327),
('1701002', 17, 1002, '1 - Norte', 'Tocantins', 'TO', 'Ananás', 328),
('1701051', 17, 1051, '1 - Norte', 'Tocantins', 'TO', 'Angico', 329),
('1701101', 17, 1101, '1 - Norte', 'Tocantins', 'TO', 'Aparecida do Rio Negro', 330),
('1701309', 17, 1309, '1 - Norte', 'Tocantins', 'TO', 'Aragominas', 331),
('1701903', 17, 1903, '1 - Norte', 'Tocantins', 'TO', 'Araguacema', 332),
('1702000', 17, 2000, '1 - Norte', 'Tocantins', 'TO', 'Araguaçu', 333),
('1702109', 17, 2109, '1 - Norte', 'Tocantins', 'TO', 'Araguaína', 334),
('1702158', 17, 2158, '1 - Norte', 'Tocantins', 'TO', 'Araguanã', 335),
('1702208', 17, 2208, '1 - Norte', 'Tocantins', 'TO', 'Araguatins', 336),
('1702307', 17, 2307, '1 - Norte', 'Tocantins', 'TO', 'Arapoema', 337),
('1702406', 17, 2406, '1 - Norte', 'Tocantins', 'TO', 'Arraias', 338),
('1702554', 17, 2554, '1 - Norte', 'Tocantins', 'TO', 'Augustinópolis', 339),
('1702703', 17, 2703, '1 - Norte', 'Tocantins', 'TO', 'Aurora do Tocantins', 340),
('1702901', 17, 2901, '1 - Norte', 'Tocantins', 'TO', 'Axixá do Tocantins', 341),
('1703008', 17, 3008, '1 - Norte', 'Tocantins', 'TO', 'Babaçulândia', 342),
('1703057', 17, 3057, '1 - Norte', 'Tocantins', 'TO', 'Bandeirantes do Tocantins', 343),
('1703073', 17, 3073, '1 - Norte', 'Tocantins', 'TO', 'Barra do Ouro', 344),
('1703107', 17, 3107, '1 - Norte', 'Tocantins', 'TO', 'Barrolândia', 345),
('1703206', 17, 3206, '1 - Norte', 'Tocantins', 'TO', 'Bernardo Sayão', 346),
('1703305', 17, 3305, '1 - Norte', 'Tocantins', 'TO', 'Bom Jesus do Tocantins', 347),
('1703602', 17, 3602, '1 - Norte', 'Tocantins', 'TO', 'Brasilândia do Tocantins', 348),
('1703701', 17, 3701, '1 - Norte', 'Tocantins', 'TO', 'Brejinho de Nazaré', 349),
('1703800', 17, 3800, '1 - Norte', 'Tocantins', 'TO', 'Buriti do Tocantins', 350),
('1703826', 17, 3826, '1 - Norte', 'Tocantins', 'TO', 'Cachoeirinha', 351),
('1703842', 17, 3842, '1 - Norte', 'Tocantins', 'TO', 'Campos Lindos', 352),
('1703867', 17, 3867, '1 - Norte', 'Tocantins', 'TO', 'Cariri do Tocantins', 353),
('1703883', 17, 3883, '1 - Norte', 'Tocantins', 'TO', 'Carmolândia', 354),
('1703891', 17, 3891, '1 - Norte', 'Tocantins', 'TO', 'Carrasco Bonito', 355),
('1703909', 17, 3909, '1 - Norte', 'Tocantins', 'TO', 'Caseara', 356),
('1704105', 17, 4105, '1 - Norte', 'Tocantins', 'TO', 'Centenário', 357),
('1704600', 17, 4600, '1 - Norte', 'Tocantins', 'TO', 'Chapada de Areia', 358),
('1705102', 17, 5102, '1 - Norte', 'Tocantins', 'TO', 'Chapada da Natividade', 359),
('1705508', 17, 5508, '1 - Norte', 'Tocantins', 'TO', 'Colinas do Tocantins', 360),
('1705557', 17, 5557, '1 - Norte', 'Tocantins', 'TO', 'Combinado', 361),
('1705607', 17, 5607, '1 - Norte', 'Tocantins', 'TO', 'Conceição do Tocantins', 362),
('1706001', 17, 6001, '1 - Norte', 'Tocantins', 'TO', 'Couto Magalhães', 363),
('1706100', 17, 6100, '1 - Norte', 'Tocantins', 'TO', 'Cristalândia', 364),
('1706258', 17, 6258, '1 - Norte', 'Tocantins', 'TO', 'Crixás do Tocantins', 365),
('1706506', 17, 6506, '1 - Norte', 'Tocantins', 'TO', 'Darcinópolis', 366),
('1707009', 17, 7009, '1 - Norte', 'Tocantins', 'TO', 'Dianópolis', 367),
('1707108', 17, 7108, '1 - Norte', 'Tocantins', 'TO', 'Divinópolis do Tocantins', 368),
('1707207', 17, 7207, '1 - Norte', 'Tocantins', 'TO', 'Dois Irmãos do Tocantins', 369),
('1707306', 17, 7306, '1 - Norte', 'Tocantins', 'TO', 'Dueré', 370),
('1707405', 17, 7405, '1 - Norte', 'Tocantins', 'TO', 'Esperantina', 371),
('1707553', 17, 7553, '1 - Norte', 'Tocantins', 'TO', 'Fátima', 372),
('1707652', 17, 7652, '1 - Norte', 'Tocantins', 'TO', 'Figueirópolis', 373),
('1707702', 17, 7702, '1 - Norte', 'Tocantins', 'TO', 'Filadélfia', 374),
('1708205', 17, 8205, '1 - Norte', 'Tocantins', 'TO', 'Formoso do Araguaia', 375),
('1708254', 17, 8254, '1 - Norte', 'Tocantins', 'TO', 'Fortaleza do Tabocão', 376),
('1708304', 17, 8304, '1 - Norte', 'Tocantins', 'TO', 'Goianorte', 377),
('1709005', 17, 9005, '1 - Norte', 'Tocantins', 'TO', 'Goiatins', 378),
('1709302', 17, 9302, '1 - Norte', 'Tocantins', 'TO', 'Guaraí', 379),
('1709500', 17, 9500, '1 - Norte', 'Tocantins', 'TO', 'Gurupi', 380),
('1709807', 17, 9807, '1 - Norte', 'Tocantins', 'TO', 'Ipueiras', 381),
('1710508', 17, 10508, '1 - Norte', 'Tocantins', 'TO', 'Itacajá', 382),
('1710706', 17, 10706, '1 - Norte', 'Tocantins', 'TO', 'Itaguatins', 383),
('1710904', 17, 10904, '1 - Norte', 'Tocantins', 'TO', 'Itapiratins', 384),
('1711100', 17, 11100, '1 - Norte', 'Tocantins', 'TO', 'Itaporã do Tocantins', 385),
('1711506', 17, 11506, '1 - Norte', 'Tocantins', 'TO', 'Jaú do Tocantins', 386),
('1711803', 17, 11803, '1 - Norte', 'Tocantins', 'TO', 'Juarina', 387),
('1711902', 17, 11902, '1 - Norte', 'Tocantins', 'TO', 'Lagoa da Confusão', 388),
('1711951', 17, 11951, '1 - Norte', 'Tocantins', 'TO', 'Lagoa do Tocantins', 389),
('1712009', 17, 12009, '1 - Norte', 'Tocantins', 'TO', 'Lajeado', 390),
('1712157', 17, 12157, '1 - Norte', 'Tocantins', 'TO', 'Lavandeira', 391),
('1712405', 17, 12405, '1 - Norte', 'Tocantins', 'TO', 'Lizarda', 392),
('1712454', 17, 12454, '1 - Norte', 'Tocantins', 'TO', 'Luzinópolis', 393),
('1712504', 17, 12504, '1 - Norte', 'Tocantins', 'TO', 'Marianópolis do Tocantins', 394),
('1712702', 17, 12702, '1 - Norte', 'Tocantins', 'TO', 'Mateiros', 395),
('1712801', 17, 12801, '1 - Norte', 'Tocantins', 'TO', 'Maurilândia do Tocantins', 396),
('1713205', 17, 13205, '1 - Norte', 'Tocantins', 'TO', 'Miracema do Tocantins', 397),
('1713304', 17, 13304, '1 - Norte', 'Tocantins', 'TO', 'Miranorte', 398),
('1713601', 17, 13601, '1 - Norte', 'Tocantins', 'TO', 'Monte do Carmo', 399),
('1713700', 17, 13700, '1 - Norte', 'Tocantins', 'TO', 'Monte Santo do Tocantins', 400),
('1713809', 17, 13809, '1 - Norte', 'Tocantins', 'TO', 'Palmeiras do Tocantins', 401),
('1713957', 17, 13957, '1 - Norte', 'Tocantins', 'TO', 'Muricilândia', 402),
('1714203', 17, 14203, '1 - Norte', 'Tocantins', 'TO', 'Natividade', 403),
('1714302', 17, 14302, '1 - Norte', 'Tocantins', 'TO', 'Nazaré', 404),
('1714880', 17, 14880, '1 - Norte', 'Tocantins', 'TO', 'Nova Olinda', 405),
('1715002', 17, 15002, '1 - Norte', 'Tocantins', 'TO', 'Nova Rosalândia', 406),
('1715101', 17, 15101, '1 - Norte', 'Tocantins', 'TO', 'Novo Acordo', 407),
('1715150', 17, 15150, '1 - Norte', 'Tocantins', 'TO', 'Novo Alegre', 408),
('1715259', 17, 15259, '1 - Norte', 'Tocantins', 'TO', 'Novo Jardim', 409),
('1715507', 17, 15507, '1 - Norte', 'Tocantins', 'TO', 'Oliveira de Fátima', 410),
('1715705', 17, 15705, '1 - Norte', 'Tocantins', 'TO', 'Palmeirante', 411),
('1715754', 17, 15754, '1 - Norte', 'Tocantins', 'TO', 'Palmeirópolis', 412),
('1716109', 17, 16109, '1 - Norte', 'Tocantins', 'TO', 'Paraíso do Tocantins', 413),
('1716208', 17, 16208, '1 - Norte', 'Tocantins', 'TO', 'Paranã', 414),
('1716307', 17, 16307, '1 - Norte', 'Tocantins', 'TO', 'Pau D''Arco', 415),
('1716505', 17, 16505, '1 - Norte', 'Tocantins', 'TO', 'Pedro Afonso', 416),
('1716604', 17, 16604, '1 - Norte', 'Tocantins', 'TO', 'Peixe', 417),
('1716653', 17, 16653, '1 - Norte', 'Tocantins', 'TO', 'Pequizeiro', 418),
('1716703', 17, 16703, '1 - Norte', 'Tocantins', 'TO', 'Colméia', 419),
('1717008', 17, 17008, '1 - Norte', 'Tocantins', 'TO', 'Pindorama do Tocantins', 420),
('1717206', 17, 17206, '1 - Norte', 'Tocantins', 'TO', 'Piraquê', 421),
('1717503', 17, 17503, '1 - Norte', 'Tocantins', 'TO', 'Pium', 422),
('1717800', 17, 17800, '1 - Norte', 'Tocantins', 'TO', 'Ponte Alta do Bom Jesus', 423),
('1717909', 17, 17909, '1 - Norte', 'Tocantins', 'TO', 'Ponte Alta do Tocantins', 424),
('1718006', 17, 18006, '1 - Norte', 'Tocantins', 'TO', 'Porto Alegre do Tocantins', 425),
('1718204', 17, 18204, '1 - Norte', 'Tocantins', 'TO', 'Porto Nacional', 426),
('1718303', 17, 18303, '1 - Norte', 'Tocantins', 'TO', 'Praia Norte', 427),
('1718402', 17, 18402, '1 - Norte', 'Tocantins', 'TO', 'Presidente Kennedy', 428),
('1718451', 17, 18451, '1 - Norte', 'Tocantins', 'TO', 'Pugmil', 429),
('1718501', 17, 18501, '1 - Norte', 'Tocantins', 'TO', 'Recursolândia', 430),
('1718550', 17, 18550, '1 - Norte', 'Tocantins', 'TO', 'Riachinho', 431),
('1718659', 17, 18659, '1 - Norte', 'Tocantins', 'TO', 'Rio da Conceição', 432),
('1718709', 17, 18709, '1 - Norte', 'Tocantins', 'TO', 'Rio dos Bois', 433),
('1718758', 17, 18758, '1 - Norte', 'Tocantins', 'TO', 'Rio Sono', 434),
('1718808', 17, 18808, '1 - Norte', 'Tocantins', 'TO', 'Sampaio', 435),
('1718840', 17, 18840, '1 - Norte', 'Tocantins', 'TO', 'Sandolândia', 436),
('1718865', 17, 18865, '1 - Norte', 'Tocantins', 'TO', 'Santa Fé do Araguaia', 437),
('1718881', 17, 18881, '1 - Norte', 'Tocantins', 'TO', 'Santa Maria do Tocantins', 438),
('1718899', 17, 18899, '1 - Norte', 'Tocantins', 'TO', 'Santa Rita do Tocantins', 439),
('1718907', 17, 18907, '1 - Norte', 'Tocantins', 'TO', 'Santa Rosa do Tocantins', 440),
('1719004', 17, 19004, '1 - Norte', 'Tocantins', 'TO', 'Santa Tereza do Tocantins', 441),
('1720002', 17, 20002, '1 - Norte', 'Tocantins', 'TO', 'Santa Terezinha do Tocantins', 442),
('1720101', 17, 20101, '1 - Norte', 'Tocantins', 'TO', 'São Bento do Tocantins', 443),
('1720150', 17, 20150, '1 - Norte', 'Tocantins', 'TO', 'São Félix do Tocantins', 444),
('1720200', 17, 20200, '1 - Norte', 'Tocantins', 'TO', 'São Miguel do Tocantins', 445),
('1720259', 17, 20259, '1 - Norte', 'Tocantins', 'TO', 'São Salvador do Tocantins', 446),
('1720309', 17, 20309, '1 - Norte', 'Tocantins', 'TO', 'São Sebastião do Tocantins', 447),
('1720499', 17, 20499, '1 - Norte', 'Tocantins', 'TO', 'São Valério', 448),
('1720655', 17, 20655, '1 - Norte', 'Tocantins', 'TO', 'Silvanópolis', 449),
('1720804', 17, 20804, '1 - Norte', 'Tocantins', 'TO', 'Sítio Novo do Tocantins', 450),
('1720853', 17, 20853, '1 - Norte', 'Tocantins', 'TO', 'Sucupira', 451),
('1720903', 17, 20903, '1 - Norte', 'Tocantins', 'TO', 'Taguatinga', 452),
('1720937', 17, 20937, '1 - Norte', 'Tocantins', 'TO', 'Taipas do Tocantins', 453),
('1720978', 17, 20978, '1 - Norte', 'Tocantins', 'TO', 'Talismã', 454),
('1721000', 17, 21000, '1 - Norte', 'Tocantins', 'TO', 'Palmas', 455),
('1721109', 17, 21109, '1 - Norte', 'Tocantins', 'TO', 'Tocantínia', 456),
('1721208', 17, 21208, '1 - Norte', 'Tocantins', 'TO', 'Tocantinópolis', 457),
('1721257', 17, 21257, '1 - Norte', 'Tocantins', 'TO', 'Tupirama', 458),
('1721307', 17, 21307, '1 - Norte', 'Tocantins', 'TO', 'Tupiratins', 459),
('1722081', 17, 22081, '1 - Norte', 'Tocantins', 'TO', 'Wanderlândia', 460),
('1722107', 17, 22107, '1 - Norte', 'Tocantins', 'TO', 'Xambioá', 461),
('2100055', 21, 55, '2 - Nordeste', 'Maranhão', 'MA', 'Açailândia', 462),
('2100105', 21, 105, '2 - Nordeste', 'Maranhão', 'MA', 'Afonso Cunha', 463),
('2100154', 21, 154, '2 - Nordeste', 'Maranhão', 'MA', 'Água Doce do Maranhão', 464),
('2100204', 21, 204, '2 - Nordeste', 'Maranhão', 'MA', 'Alcântara', 465),
('2100303', 21, 303, '2 - Nordeste', 'Maranhão', 'MA', 'Aldeias Altas', 466),
('2100402', 21, 402, '2 - Nordeste', 'Maranhão', 'MA', 'Altamira do Maranhão', 467),
('2100436', 21, 436, '2 - Nordeste', 'Maranhão', 'MA', 'Alto Alegre do Maranhão', 468),
('2100477', 21, 477, '2 - Nordeste', 'Maranhão', 'MA', 'Alto Alegre do Pindaré', 469),
('2100501', 21, 501, '2 - Nordeste', 'Maranhão', 'MA', 'Alto Parnaíba', 470),
('2100550', 21, 550, '2 - Nordeste', 'Maranhão', 'MA', 'Amapá do Maranhão', 471),
('2100600', 21, 600, '2 - Nordeste', 'Maranhão', 'MA', 'Amarante do Maranhão', 472),
('2100709', 21, 709, '2 - Nordeste', 'Maranhão', 'MA', 'Anajatuba', 473),
('2100808', 21, 808, '2 - Nordeste', 'Maranhão', 'MA', 'Anapurus', 474),
('2100832', 21, 832, '2 - Nordeste', 'Maranhão', 'MA', 'Apicum-Açu', 475),
('2100873', 21, 873, '2 - Nordeste', 'Maranhão', 'MA', 'Araguanã', 476),
('2100907', 21, 907, '2 - Nordeste', 'Maranhão', 'MA', 'Araioses', 477),
('2100956', 21, 956, '2 - Nordeste', 'Maranhão', 'MA', 'Arame', 478),
('2101004', 21, 1004, '2 - Nordeste', 'Maranhão', 'MA', 'Arari', 479),
('2101103', 21, 1103, '2 - Nordeste', 'Maranhão', 'MA', 'Axixá', 480),
('2101202', 21, 1202, '2 - Nordeste', 'Maranhão', 'MA', 'Bacabal', 481),
('2101251', 21, 1251, '2 - Nordeste', 'Maranhão', 'MA', 'Bacabeira', 482),
('2101301', 21, 1301, '2 - Nordeste', 'Maranhão', 'MA', 'Bacuri', 483),
('2101350', 21, 1350, '2 - Nordeste', 'Maranhão', 'MA', 'Bacurituba', 484),
('2101400', 21, 1400, '2 - Nordeste', 'Maranhão', 'MA', 'Balsas', 485),
('2101509', 21, 1509, '2 - Nordeste', 'Maranhão', 'MA', 'Barão de Grajaú', 486),
('2101608', 21, 1608, '2 - Nordeste', 'Maranhão', 'MA', 'Barra do Corda', 487),
('2101707', 21, 1707, '2 - Nordeste', 'Maranhão', 'MA', 'Barreirinhas', 488),
('2101731', 21, 1731, '2 - Nordeste', 'Maranhão', 'MA', 'Belágua', 489),
('2101772', 21, 1772, '2 - Nordeste', 'Maranhão', 'MA', 'Bela Vista do Maranhão', 490),
('2101806', 21, 1806, '2 - Nordeste', 'Maranhão', 'MA', 'Benedito Leite', 491),
('2101905', 21, 1905, '2 - Nordeste', 'Maranhão', 'MA', 'Bequimão', 492),
('2101939', 21, 1939, '2 - Nordeste', 'Maranhão', 'MA', 'Bernardo do Mearim', 493),
('2101970', 21, 1970, '2 - Nordeste', 'Maranhão', 'MA', 'Boa Vista do Gurupi', 494),
('2102002', 21, 2002, '2 - Nordeste', 'Maranhão', 'MA', 'Bom Jardim', 495),
('2102036', 21, 2036, '2 - Nordeste', 'Maranhão', 'MA', 'Bom Jesus das Selvas', 496),
('2102077', 21, 2077, '2 - Nordeste', 'Maranhão', 'MA', 'Bom Lugar', 497),
('2102101', 21, 2101, '2 - Nordeste', 'Maranhão', 'MA', 'Brejo', 498),
('2102150', 21, 2150, '2 - Nordeste', 'Maranhão', 'MA', 'Brejo de Areia', 499),
('2102200', 21, 2200, '2 - Nordeste', 'Maranhão', 'MA', 'Buriti', 500),
('2102309', 21, 2309, '2 - Nordeste', 'Maranhão', 'MA', 'Buriti Bravo', 501),
('2102325', 21, 2325, '2 - Nordeste', 'Maranhão', 'MA', 'Buriticupu', 502),
('2102358', 21, 2358, '2 - Nordeste', 'Maranhão', 'MA', 'Buritirana', 503),
('2102374', 21, 2374, '2 - Nordeste', 'Maranhão', 'MA', 'Cachoeira Grande', 504),
('2102408', 21, 2408, '2 - Nordeste', 'Maranhão', 'MA', 'Cajapió', 505),
('2102507', 21, 2507, '2 - Nordeste', 'Maranhão', 'MA', 'Cajari', 506),
('2102556', 21, 2556, '2 - Nordeste', 'Maranhão', 'MA', 'Campestre do Maranhão', 507),
('2102606', 21, 2606, '2 - Nordeste', 'Maranhão', 'MA', 'Cândido Mendes', 508),
('2102705', 21, 2705, '2 - Nordeste', 'Maranhão', 'MA', 'Cantanhede', 509),
('2102754', 21, 2754, '2 - Nordeste', 'Maranhão', 'MA', 'Capinzal do Norte', 510),
('2102804', 21, 2804, '2 - Nordeste', 'Maranhão', 'MA', 'Carolina', 511),
('2102903', 21, 2903, '2 - Nordeste', 'Maranhão', 'MA', 'Carutapera', 512),
('2103000', 21, 3000, '2 - Nordeste', 'Maranhão', 'MA', 'Caxias', 513),
('2103109', 21, 3109, '2 - Nordeste', 'Maranhão', 'MA', 'Cedral', 514),
('2103125', 21, 3125, '2 - Nordeste', 'Maranhão', 'MA', 'Central do Maranhão', 515),
('2103158', 21, 3158, '2 - Nordeste', 'Maranhão', 'MA', 'Centro do Guilherme', 516),
('2103174', 21, 3174, '2 - Nordeste', 'Maranhão', 'MA', 'Centro Novo do Maranhão', 517),
('2103208', 21, 3208, '2 - Nordeste', 'Maranhão', 'MA', 'Chapadinha', 518),
('2103257', 21, 3257, '2 - Nordeste', 'Maranhão', 'MA', 'Cidelândia', 519),
('2103307', 21, 3307, '2 - Nordeste', 'Maranhão', 'MA', 'Codó', 520),
('2103406', 21, 3406, '2 - Nordeste', 'Maranhão', 'MA', 'Coelho Neto', 521),
('2103505', 21, 3505, '2 - Nordeste', 'Maranhão', 'MA', 'Colinas', 522),
('2103554', 21, 3554, '2 - Nordeste', 'Maranhão', 'MA', 'Conceição do Lago-Açu', 523),
('2103604', 21, 3604, '2 - Nordeste', 'Maranhão', 'MA', 'Coroatá', 524),
('2103703', 21, 3703, '2 - Nordeste', 'Maranhão', 'MA', 'Cururupu', 525),
('2103752', 21, 3752, '2 - Nordeste', 'Maranhão', 'MA', 'Davinópolis', 526),
('2103802', 21, 3802, '2 - Nordeste', 'Maranhão', 'MA', 'Dom Pedro', 527),
('2103901', 21, 3901, '2 - Nordeste', 'Maranhão', 'MA', 'Duque Bacelar', 528),
('2104008', 21, 4008, '2 - Nordeste', 'Maranhão', 'MA', 'Esperantinópolis', 529),
('2104057', 21, 4057, '2 - Nordeste', 'Maranhão', 'MA', 'Estreito', 530),
('2104073', 21, 4073, '2 - Nordeste', 'Maranhão', 'MA', 'Feira Nova do Maranhão', 531),
('2104081', 21, 4081, '2 - Nordeste', 'Maranhão', 'MA', 'Fernando Falcão', 532),
('2104099', 21, 4099, '2 - Nordeste', 'Maranhão', 'MA', 'Formosa da Serra Negra', 533),
('2104107', 21, 4107, '2 - Nordeste', 'Maranhão', 'MA', 'Fortaleza dos Nogueiras', 534),
('2104206', 21, 4206, '2 - Nordeste', 'Maranhão', 'MA', 'Fortuna', 535),
('2104305', 21, 4305, '2 - Nordeste', 'Maranhão', 'MA', 'Godofredo Viana', 536),
('2104404', 21, 4404, '2 - Nordeste', 'Maranhão', 'MA', 'Gonçalves Dias', 537),
('2104503', 21, 4503, '2 - Nordeste', 'Maranhão', 'MA', 'Governador Archer', 538),
('2104552', 21, 4552, '2 - Nordeste', 'Maranhão', 'MA', 'Governador Edison Lobão', 539),
('2104602', 21, 4602, '2 - Nordeste', 'Maranhão', 'MA', 'Governador Eugênio Barros', 540),
('2104628', 21, 4628, '2 - Nordeste', 'Maranhão', 'MA', 'Governador Luiz Rocha', 541),
('2104651', 21, 4651, '2 - Nordeste', 'Maranhão', 'MA', 'Governador Newton Bello', 542),
('2104677', 21, 4677, '2 - Nordeste', 'Maranhão', 'MA', 'Governador Nunes Freire', 543),
('2104701', 21, 4701, '2 - Nordeste', 'Maranhão', 'MA', 'Graça Aranha', 544),
('2104800', 21, 4800, '2 - Nordeste', 'Maranhão', 'MA', 'Grajaú', 545),
('2104909', 21, 4909, '2 - Nordeste', 'Maranhão', 'MA', 'Guimarães', 546),
('2105005', 21, 5005, '2 - Nordeste', 'Maranhão', 'MA', 'Humberto de Campos', 547),
('2105104', 21, 5104, '2 - Nordeste', 'Maranhão', 'MA', 'Icatu', 548),
('2105153', 21, 5153, '2 - Nordeste', 'Maranhão', 'MA', 'Igarapé do Meio', 549),
('2105203', 21, 5203, '2 - Nordeste', 'Maranhão', 'MA', 'Igarapé Grande', 550),
('2105302', 21, 5302, '2 - Nordeste', 'Maranhão', 'MA', 'Imperatriz', 551),
('2105351', 21, 5351, '2 - Nordeste', 'Maranhão', 'MA', 'Itaipava do Grajaú', 552),
('2105401', 21, 5401, '2 - Nordeste', 'Maranhão', 'MA', 'Itapecuru Mirim', 553),
('2105427', 21, 5427, '2 - Nordeste', 'Maranhão', 'MA', 'Itinga do Maranhão', 554),
('2105450', 21, 5450, '2 - Nordeste', 'Maranhão', 'MA', 'Jatobá', 555),
('2105476', 21, 5476, '2 - Nordeste', 'Maranhão', 'MA', 'Jenipapo dos Vieiras', 556),
('2105500', 21, 5500, '2 - Nordeste', 'Maranhão', 'MA', 'João Lisboa', 557),
('2105609', 21, 5609, '2 - Nordeste', 'Maranhão', 'MA', 'Joselândia', 558),
('2105658', 21, 5658, '2 - Nordeste', 'Maranhão', 'MA', 'Junco do Maranhão', 559),
('2105708', 21, 5708, '2 - Nordeste', 'Maranhão', 'MA', 'Lago da Pedra', 560),
('2105807', 21, 5807, '2 - Nordeste', 'Maranhão', 'MA', 'Lago do Junco', 561),
('2105906', 21, 5906, '2 - Nordeste', 'Maranhão', 'MA', 'Lago Verde', 562),
('2105922', 21, 5922, '2 - Nordeste', 'Maranhão', 'MA', 'Lagoa do Mato', 563),
('2105948', 21, 5948, '2 - Nordeste', 'Maranhão', 'MA', 'Lago dos Rodrigues', 564),
('2105963', 21, 5963, '2 - Nordeste', 'Maranhão', 'MA', 'Lagoa Grande do Maranhão', 565),
('2105989', 21, 5989, '2 - Nordeste', 'Maranhão', 'MA', 'Lajeado Novo', 566),
('2106003', 21, 6003, '2 - Nordeste', 'Maranhão', 'MA', 'Lima Campos', 567),
('2106102', 21, 6102, '2 - Nordeste', 'Maranhão', 'MA', 'Loreto', 568),
('2106201', 21, 6201, '2 - Nordeste', 'Maranhão', 'MA', 'Luís Domingues', 569),
('2106300', 21, 6300, '2 - Nordeste', 'Maranhão', 'MA', 'Magalhães de Almeida', 570),
('2106326', 21, 6326, '2 - Nordeste', 'Maranhão', 'MA', 'Maracaçumé', 571),
('2106359', 21, 6359, '2 - Nordeste', 'Maranhão', 'MA', 'Marajá do Sena', 572),
('2106375', 21, 6375, '2 - Nordeste', 'Maranhão', 'MA', 'Maranhãozinho', 573),
('2106409', 21, 6409, '2 - Nordeste', 'Maranhão', 'MA', 'Mata Roma', 574),
('2106508', 21, 6508, '2 - Nordeste', 'Maranhão', 'MA', 'Matinha', 575),
('2106607', 21, 6607, '2 - Nordeste', 'Maranhão', 'MA', 'Matões', 576),
('2106631', 21, 6631, '2 - Nordeste', 'Maranhão', 'MA', 'Matões do Norte', 577),
('2106672', 21, 6672, '2 - Nordeste', 'Maranhão', 'MA', 'Milagres do Maranhão', 578),
('2106706', 21, 6706, '2 - Nordeste', 'Maranhão', 'MA', 'Mirador', 579),
('2106755', 21, 6755, '2 - Nordeste', 'Maranhão', 'MA', 'Miranda do Norte', 580),
('2106805', 21, 6805, '2 - Nordeste', 'Maranhão', 'MA', 'Mirinzal', 581),
('2106904', 21, 6904, '2 - Nordeste', 'Maranhão', 'MA', 'Monção', 582),
('2107001', 21, 7001, '2 - Nordeste', 'Maranhão', 'MA', 'Montes Altos', 583),
('2107100', 21, 7100, '2 - Nordeste', 'Maranhão', 'MA', 'Morros', 584),
('2107209', 21, 7209, '2 - Nordeste', 'Maranhão', 'MA', 'Nina Rodrigues', 585),
('2107258', 21, 7258, '2 - Nordeste', 'Maranhão', 'MA', 'Nova Colinas', 586),
('2107308', 21, 7308, '2 - Nordeste', 'Maranhão', 'MA', 'Nova Iorque', 587),
('2107357', 21, 7357, '2 - Nordeste', 'Maranhão', 'MA', 'Nova Olinda do Maranhão', 588),
('2107407', 21, 7407, '2 - Nordeste', 'Maranhão', 'MA', 'Olho d''Água das Cunhãs', 589),
('2107456', 21, 7456, '2 - Nordeste', 'Maranhão', 'MA', 'Olinda Nova do Maranhão', 590),
('2107506', 21, 7506, '2 - Nordeste', 'Maranhão', 'MA', 'Paço do Lumiar', 591),
('2107605', 21, 7605, '2 - Nordeste', 'Maranhão', 'MA', 'Palmeirândia', 592),
('2107704', 21, 7704, '2 - Nordeste', 'Maranhão', 'MA', 'Paraibano', 593),
('2107803', 21, 7803, '2 - Nordeste', 'Maranhão', 'MA', 'Parnarama', 594),
('2107902', 21, 7902, '2 - Nordeste', 'Maranhão', 'MA', 'Passagem Franca', 595),
('2108009', 21, 8009, '2 - Nordeste', 'Maranhão', 'MA', 'Pastos Bons', 596),
('2108058', 21, 8058, '2 - Nordeste', 'Maranhão', 'MA', 'Paulino Neves', 597),
('2108108', 21, 8108, '2 - Nordeste', 'Maranhão', 'MA', 'Paulo Ramos', 598),
('2108207', 21, 8207, '2 - Nordeste', 'Maranhão', 'MA', 'Pedreiras', 599),
('2108256', 21, 8256, '2 - Nordeste', 'Maranhão', 'MA', 'Pedro do Rosário', 600),
('2108306', 21, 8306, '2 - Nordeste', 'Maranhão', 'MA', 'Penalva', 601),
('2108405', 21, 8405, '2 - Nordeste', 'Maranhão', 'MA', 'Peri Mirim', 602),
('2108454', 21, 8454, '2 - Nordeste', 'Maranhão', 'MA', 'Peritoró', 603),
('2108504', 21, 8504, '2 - Nordeste', 'Maranhão', 'MA', 'Pindaré-Mirim', 604),
('2108603', 21, 8603, '2 - Nordeste', 'Maranhão', 'MA', 'Pinheiro', 605),
('2108702', 21, 8702, '2 - Nordeste', 'Maranhão', 'MA', 'Pio XII', 606),
('2108801', 21, 8801, '2 - Nordeste', 'Maranhão', 'MA', 'Pirapemas', 607),
('2108900', 21, 8900, '2 - Nordeste', 'Maranhão', 'MA', 'Poção de Pedras', 608),
('2109007', 21, 9007, '2 - Nordeste', 'Maranhão', 'MA', 'Porto Franco', 609),
('2109056', 21, 9056, '2 - Nordeste', 'Maranhão', 'MA', 'Porto Rico do Maranhão', 610),
('2109106', 21, 9106, '2 - Nordeste', 'Maranhão', 'MA', 'Presidente Dutra', 611),
('2109205', 21, 9205, '2 - Nordeste', 'Maranhão', 'MA', 'Presidente Juscelino', 612),
('2109239', 21, 9239, '2 - Nordeste', 'Maranhão', 'MA', 'Presidente Médici', 613),
('2109270', 21, 9270, '2 - Nordeste', 'Maranhão', 'MA', 'Presidente Sarney', 614),
('2109304', 21, 9304, '2 - Nordeste', 'Maranhão', 'MA', 'Presidente Vargas', 615),
('2109403', 21, 9403, '2 - Nordeste', 'Maranhão', 'MA', 'Primeira Cruz', 616),
('2109452', 21, 9452, '2 - Nordeste', 'Maranhão', 'MA', 'Raposa', 617),
('2109502', 21, 9502, '2 - Nordeste', 'Maranhão', 'MA', 'Riachão', 618),
('2109551', 21, 9551, '2 - Nordeste', 'Maranhão', 'MA', 'Ribamar Fiquene', 619),
('2109601', 21, 9601, '2 - Nordeste', 'Maranhão', 'MA', 'Rosário', 620),
('2109700', 21, 9700, '2 - Nordeste', 'Maranhão', 'MA', 'Sambaíba', 621),
('2109759', 21, 9759, '2 - Nordeste', 'Maranhão', 'MA', 'Santa Filomena do Maranhão', 622),
('2109809', 21, 9809, '2 - Nordeste', 'Maranhão', 'MA', 'Santa Helena', 623),
('2109908', 21, 9908, '2 - Nordeste', 'Maranhão', 'MA', 'Santa Inês', 624),
('2110005', 21, 10005, '2 - Nordeste', 'Maranhão', 'MA', 'Santa Luzia', 625),
('2110039', 21, 10039, '2 - Nordeste', 'Maranhão', 'MA', 'Santa Luzia do Paruá', 626),
('2110104', 21, 10104, '2 - Nordeste', 'Maranhão', 'MA', 'Santa Quitéria do Maranhão', 627),
('2110203', 21, 10203, '2 - Nordeste', 'Maranhão', 'MA', 'Santa Rita', 628),
('2110237', 21, 10237, '2 - Nordeste', 'Maranhão', 'MA', 'Santana do Maranhão', 629),
('2110278', 21, 10278, '2 - Nordeste', 'Maranhão', 'MA', 'Santo Amaro do Maranhão', 630),
('2110302', 21, 10302, '2 - Nordeste', 'Maranhão', 'MA', 'Santo Antônio dos Lopes', 631),
('2110401', 21, 10401, '2 - Nordeste', 'Maranhão', 'MA', 'São Benedito do Rio Preto', 632),
('2110500', 21, 10500, '2 - Nordeste', 'Maranhão', 'MA', 'São Bento', 633),
('2110609', 21, 10609, '2 - Nordeste', 'Maranhão', 'MA', 'São Bernardo', 634),
('2110658', 21, 10658, '2 - Nordeste', 'Maranhão', 'MA', 'São Domingos do Azeitão', 635),
('2110708', 21, 10708, '2 - Nordeste', 'Maranhão', 'MA', 'São Domingos do Maranhão', 636),
('2110807', 21, 10807, '2 - Nordeste', 'Maranhão', 'MA', 'São Félix de Balsas', 637),
('2110856', 21, 10856, '2 - Nordeste', 'Maranhão', 'MA', 'São Francisco do Brejão', 638),
('2110906', 21, 10906, '2 - Nordeste', 'Maranhão', 'MA', 'São Francisco do Maranhão', 639),
('2111003', 21, 11003, '2 - Nordeste', 'Maranhão', 'MA', 'São João Batista', 640),
('2111029', 21, 11029, '2 - Nordeste', 'Maranhão', 'MA', 'São João do Carú', 641),
('2111052', 21, 11052, '2 - Nordeste', 'Maranhão', 'MA', 'São João do Paraíso', 642),
('2111078', 21, 11078, '2 - Nordeste', 'Maranhão', 'MA', 'São João do Soter', 643),
('2111102', 21, 11102, '2 - Nordeste', 'Maranhão', 'MA', 'São João dos Patos', 644),
('2111201', 21, 11201, '2 - Nordeste', 'Maranhão', 'MA', 'São José de Ribamar', 645),
('2111250', 21, 11250, '2 - Nordeste', 'Maranhão', 'MA', 'São José dos Basílios', 646),
('2111300', 21, 11300, '2 - Nordeste', 'Maranhão', 'MA', 'São Luís', 647),
('2111409', 21, 11409, '2 - Nordeste', 'Maranhão', 'MA', 'São Luís Gonzaga do Maranhão', 648),
('2111508', 21, 11508, '2 - Nordeste', 'Maranhão', 'MA', 'São Mateus do Maranhão', 649),
('2111532', 21, 11532, '2 - Nordeste', 'Maranhão', 'MA', 'São Pedro da Água Branca', 650),
('2111573', 21, 11573, '2 - Nordeste', 'Maranhão', 'MA', 'São Pedro dos Crentes', 651),
('2111607', 21, 11607, '2 - Nordeste', 'Maranhão', 'MA', 'São Raimundo das Mangabeiras', 652),
('2111631', 21, 11631, '2 - Nordeste', 'Maranhão', 'MA', 'São Raimundo do Doca Bezerra', 653),
('2111672', 21, 11672, '2 - Nordeste', 'Maranhão', 'MA', 'São Roberto', 654),
('2111706', 21, 11706, '2 - Nordeste', 'Maranhão', 'MA', 'São Vicente Ferrer', 655),
('2111722', 21, 11722, '2 - Nordeste', 'Maranhão', 'MA', 'Satubinha', 656),
('2111748', 21, 11748, '2 - Nordeste', 'Maranhão', 'MA', 'Senador Alexandre Costa', 657),
('2111763', 21, 11763, '2 - Nordeste', 'Maranhão', 'MA', 'Senador La Rocque', 658),
('2111789', 21, 11789, '2 - Nordeste', 'Maranhão', 'MA', 'Serrano do Maranhão', 659),
('2111805', 21, 11805, '2 - Nordeste', 'Maranhão', 'MA', 'Sítio Novo', 660),
('2111904', 21, 11904, '2 - Nordeste', 'Maranhão', 'MA', 'Sucupira do Norte', 661),
('2111953', 21, 11953, '2 - Nordeste', 'Maranhão', 'MA', 'Sucupira do Riachão', 662),
('2112001', 21, 12001, '2 - Nordeste', 'Maranhão', 'MA', 'Tasso Fragoso', 663),
('2112100', 21, 12100, '2 - Nordeste', 'Maranhão', 'MA', 'Timbiras', 664),
('2112209', 21, 12209, '2 - Nordeste', 'Maranhão', 'MA', 'Timon', 665),
('2112233', 21, 12233, '2 - Nordeste', 'Maranhão', 'MA', 'Trizidela do Vale', 666),
('2112274', 21, 12274, '2 - Nordeste', 'Maranhão', 'MA', 'Tufilândia', 667),
('2112308', 21, 12308, '2 - Nordeste', 'Maranhão', 'MA', 'Tuntum', 668),
('2112407', 21, 12407, '2 - Nordeste', 'Maranhão', 'MA', 'Turiaçu', 669),
('2112456', 21, 12456, '2 - Nordeste', 'Maranhão', 'MA', 'Turilândia', 670),
('2112506', 21, 12506, '2 - Nordeste', 'Maranhão', 'MA', 'Tutóia', 671),
('2112605', 21, 12605, '2 - Nordeste', 'Maranhão', 'MA', 'Urbano Santos', 672),
('2112704', 21, 12704, '2 - Nordeste', 'Maranhão', 'MA', 'Vargem Grande', 673),
('2112803', 21, 12803, '2 - Nordeste', 'Maranhão', 'MA', 'Viana', 674),
('2112852', 21, 12852, '2 - Nordeste', 'Maranhão', 'MA', 'Vila Nova dos Martírios', 675),
('2112902', 21, 12902, '2 - Nordeste', 'Maranhão', 'MA', 'Vitória do Mearim', 676),
('2113009', 21, 13009, '2 - Nordeste', 'Maranhão', 'MA', 'Vitorino Freire', 677);
INSERT INTO `ibge_uf` (`cod_mun`, `cod_uf`, `seila`, `regiao`, `estado`, `uf`, `municipio`, `id`) VALUES
('2114007', 21, 14007, '2 - Nordeste', 'Maranhão', 'MA', 'Zé Doca', 678),
('2200053', 22, 53, '2 - Nordeste', 'Piauí', 'PI', 'Acauã', 679),
('2200103', 22, 103, '2 - Nordeste', 'Piauí', 'PI', 'Agricolândia', 680),
('2200202', 22, 202, '2 - Nordeste', 'Piauí', 'PI', 'Água Branca', 681),
('2200251', 22, 251, '2 - Nordeste', 'Piauí', 'PI', 'Alagoinha do Piauí', 682),
('2200277', 22, 277, '2 - Nordeste', 'Piauí', 'PI', 'Alegrete do Piauí', 683),
('2200301', 22, 301, '2 - Nordeste', 'Piauí', 'PI', 'Alto Longá', 684),
('2200400', 22, 400, '2 - Nordeste', 'Piauí', 'PI', 'Altos', 685),
('2200459', 22, 459, '2 - Nordeste', 'Piauí', 'PI', 'Alvorada do Gurguéia', 686),
('2200509', 22, 509, '2 - Nordeste', 'Piauí', 'PI', 'Amarante', 687),
('2200608', 22, 608, '2 - Nordeste', 'Piauí', 'PI', 'Angical do Piauí', 688),
('2200707', 22, 707, '2 - Nordeste', 'Piauí', 'PI', 'Anísio de Abreu', 689),
('2200806', 22, 806, '2 - Nordeste', 'Piauí', 'PI', 'Antônio Almeida', 690),
('2200905', 22, 905, '2 - Nordeste', 'Piauí', 'PI', 'Aroazes', 691),
('2200954', 22, 954, '2 - Nordeste', 'Piauí', 'PI', 'Aroeiras do Itaim', 692),
('2201002', 22, 1002, '2 - Nordeste', 'Piauí', 'PI', 'Arraial', 693),
('2201051', 22, 1051, '2 - Nordeste', 'Piauí', 'PI', 'Assunção do Piauí', 694),
('2201101', 22, 1101, '2 - Nordeste', 'Piauí', 'PI', 'Avelino Lopes', 695),
('2201150', 22, 1150, '2 - Nordeste', 'Piauí', 'PI', 'Baixa Grande do Ribeiro', 696),
('2201176', 22, 1176, '2 - Nordeste', 'Piauí', 'PI', 'Barra D''Alcântara', 697),
('2201200', 22, 1200, '2 - Nordeste', 'Piauí', 'PI', 'Barras', 698),
('2201309', 22, 1309, '2 - Nordeste', 'Piauí', 'PI', 'Barreiras do Piauí', 699),
('2201408', 22, 1408, '2 - Nordeste', 'Piauí', 'PI', 'Barro Duro', 700),
('2201507', 22, 1507, '2 - Nordeste', 'Piauí', 'PI', 'Batalha', 701),
('2201556', 22, 1556, '2 - Nordeste', 'Piauí', 'PI', 'Bela Vista do Piauí', 702),
('2201572', 22, 1572, '2 - Nordeste', 'Piauí', 'PI', 'Belém do Piauí', 703),
('2201606', 22, 1606, '2 - Nordeste', 'Piauí', 'PI', 'Beneditinos', 704),
('2201705', 22, 1705, '2 - Nordeste', 'Piauí', 'PI', 'Bertolínia', 705),
('2201739', 22, 1739, '2 - Nordeste', 'Piauí', 'PI', 'Betânia do Piauí', 706),
('2201770', 22, 1770, '2 - Nordeste', 'Piauí', 'PI', 'Boa Hora', 707),
('2201804', 22, 1804, '2 - Nordeste', 'Piauí', 'PI', 'Bocaina', 708),
('2201903', 22, 1903, '2 - Nordeste', 'Piauí', 'PI', 'Bom Jesus', 709),
('2201919', 22, 1919, '2 - Nordeste', 'Piauí', 'PI', 'Bom Princípio do Piauí', 710),
('2201929', 22, 1929, '2 - Nordeste', 'Piauí', 'PI', 'Bonfim do Piauí', 711),
('2201945', 22, 1945, '2 - Nordeste', 'Piauí', 'PI', 'Boqueirão do Piauí', 712),
('2201960', 22, 1960, '2 - Nordeste', 'Piauí', 'PI', 'Brasileira', 713),
('2201988', 22, 1988, '2 - Nordeste', 'Piauí', 'PI', 'Brejo do Piauí', 714),
('2202000', 22, 2000, '2 - Nordeste', 'Piauí', 'PI', 'Buriti dos Lopes', 715),
('2202026', 22, 2026, '2 - Nordeste', 'Piauí', 'PI', 'Buriti dos Montes', 716),
('2202059', 22, 2059, '2 - Nordeste', 'Piauí', 'PI', 'Cabeceiras do Piauí', 717),
('2202075', 22, 2075, '2 - Nordeste', 'Piauí', 'PI', 'Cajazeiras do Piauí', 718),
('2202083', 22, 2083, '2 - Nordeste', 'Piauí', 'PI', 'Cajueiro da Praia', 719),
('2202091', 22, 2091, '2 - Nordeste', 'Piauí', 'PI', 'Caldeirão Grande do Piauí', 720),
('2202109', 22, 2109, '2 - Nordeste', 'Piauí', 'PI', 'Campinas do Piauí', 721),
('2202117', 22, 2117, '2 - Nordeste', 'Piauí', 'PI', 'Campo Alegre do Fidalgo', 722),
('2202133', 22, 2133, '2 - Nordeste', 'Piauí', 'PI', 'Campo Grande do Piauí', 723),
('2202174', 22, 2174, '2 - Nordeste', 'Piauí', 'PI', 'Campo Largo do Piauí', 724),
('2202208', 22, 2208, '2 - Nordeste', 'Piauí', 'PI', 'Campo Maior', 725),
('2202251', 22, 2251, '2 - Nordeste', 'Piauí', 'PI', 'Canavieira', 726),
('2202307', 22, 2307, '2 - Nordeste', 'Piauí', 'PI', 'Canto do Buriti', 727),
('2202406', 22, 2406, '2 - Nordeste', 'Piauí', 'PI', 'Capitão de Campos', 728),
('2202455', 22, 2455, '2 - Nordeste', 'Piauí', 'PI', 'Capitão Gervásio Oliveira', 729),
('2202505', 22, 2505, '2 - Nordeste', 'Piauí', 'PI', 'Caracol', 730),
('2202539', 22, 2539, '2 - Nordeste', 'Piauí', 'PI', 'Caraúbas do Piauí', 731),
('2202554', 22, 2554, '2 - Nordeste', 'Piauí', 'PI', 'Caridade do Piauí', 732),
('2202604', 22, 2604, '2 - Nordeste', 'Piauí', 'PI', 'Castelo do Piauí', 733),
('2202653', 22, 2653, '2 - Nordeste', 'Piauí', 'PI', 'Caxingó', 734),
('2202703', 22, 2703, '2 - Nordeste', 'Piauí', 'PI', 'Cocal', 735),
('2202711', 22, 2711, '2 - Nordeste', 'Piauí', 'PI', 'Cocal de Telha', 736),
('2202729', 22, 2729, '2 - Nordeste', 'Piauí', 'PI', 'Cocal dos Alves', 737),
('2202737', 22, 2737, '2 - Nordeste', 'Piauí', 'PI', 'Coivaras', 738),
('2202752', 22, 2752, '2 - Nordeste', 'Piauí', 'PI', 'Colônia do Gurguéia', 739),
('2202778', 22, 2778, '2 - Nordeste', 'Piauí', 'PI', 'Colônia do Piauí', 740),
('2202802', 22, 2802, '2 - Nordeste', 'Piauí', 'PI', 'Conceição do Canindé', 741),
('2202851', 22, 2851, '2 - Nordeste', 'Piauí', 'PI', 'Coronel José Dias', 742),
('2202901', 22, 2901, '2 - Nordeste', 'Piauí', 'PI', 'Corrente', 743),
('2203008', 22, 3008, '2 - Nordeste', 'Piauí', 'PI', 'Cristalândia do Piauí', 744),
('2203107', 22, 3107, '2 - Nordeste', 'Piauí', 'PI', 'Cristino Castro', 745),
('2203206', 22, 3206, '2 - Nordeste', 'Piauí', 'PI', 'Curimatá', 746),
('2203230', 22, 3230, '2 - Nordeste', 'Piauí', 'PI', 'Currais', 747),
('2203255', 22, 3255, '2 - Nordeste', 'Piauí', 'PI', 'Curralinhos', 748),
('2203271', 22, 3271, '2 - Nordeste', 'Piauí', 'PI', 'Curral Novo do Piauí', 749),
('2203305', 22, 3305, '2 - Nordeste', 'Piauí', 'PI', 'Demerval Lobão', 750),
('2203354', 22, 3354, '2 - Nordeste', 'Piauí', 'PI', 'Dirceu Arcoverde', 751),
('2203404', 22, 3404, '2 - Nordeste', 'Piauí', 'PI', 'Dom Expedito Lopes', 752),
('2203420', 22, 3420, '2 - Nordeste', 'Piauí', 'PI', 'Domingos Mourão', 753),
('2203453', 22, 3453, '2 - Nordeste', 'Piauí', 'PI', 'Dom Inocêncio', 754),
('2203503', 22, 3503, '2 - Nordeste', 'Piauí', 'PI', 'Elesbão Veloso', 755),
('2203602', 22, 3602, '2 - Nordeste', 'Piauí', 'PI', 'Eliseu Martins', 756),
('2203701', 22, 3701, '2 - Nordeste', 'Piauí', 'PI', 'Esperantina', 757),
('2203750', 22, 3750, '2 - Nordeste', 'Piauí', 'PI', 'Fartura do Piauí', 758),
('2203800', 22, 3800, '2 - Nordeste', 'Piauí', 'PI', 'Flores do Piauí', 759),
('2203859', 22, 3859, '2 - Nordeste', 'Piauí', 'PI', 'Floresta do Piauí', 760),
('2203909', 22, 3909, '2 - Nordeste', 'Piauí', 'PI', 'Floriano', 761),
('2204006', 22, 4006, '2 - Nordeste', 'Piauí', 'PI', 'Francinópolis', 762),
('2204105', 22, 4105, '2 - Nordeste', 'Piauí', 'PI', 'Francisco Ayres', 763),
('2204154', 22, 4154, '2 - Nordeste', 'Piauí', 'PI', 'Francisco Macedo', 764),
('2204204', 22, 4204, '2 - Nordeste', 'Piauí', 'PI', 'Francisco Santos', 765),
('2204303', 22, 4303, '2 - Nordeste', 'Piauí', 'PI', 'Fronteiras', 766),
('2204352', 22, 4352, '2 - Nordeste', 'Piauí', 'PI', 'Geminiano', 767),
('2204402', 22, 4402, '2 - Nordeste', 'Piauí', 'PI', 'Gilbués', 768),
('2204501', 22, 4501, '2 - Nordeste', 'Piauí', 'PI', 'Guadalupe', 769),
('2204550', 22, 4550, '2 - Nordeste', 'Piauí', 'PI', 'Guaribas', 770),
('2204600', 22, 4600, '2 - Nordeste', 'Piauí', 'PI', 'Hugo Napoleão', 771),
('2204659', 22, 4659, '2 - Nordeste', 'Piauí', 'PI', 'Ilha Grande', 772),
('2204709', 22, 4709, '2 - Nordeste', 'Piauí', 'PI', 'Inhuma', 773),
('2204808', 22, 4808, '2 - Nordeste', 'Piauí', 'PI', 'Ipiranga do Piauí', 774),
('2204907', 22, 4907, '2 - Nordeste', 'Piauí', 'PI', 'Isaías Coelho', 775),
('2205003', 22, 5003, '2 - Nordeste', 'Piauí', 'PI', 'Itainópolis', 776),
('2205102', 22, 5102, '2 - Nordeste', 'Piauí', 'PI', 'Itaueira', 777),
('2205151', 22, 5151, '2 - Nordeste', 'Piauí', 'PI', 'Jacobina do Piauí', 778),
('2205201', 22, 5201, '2 - Nordeste', 'Piauí', 'PI', 'Jaicós', 779),
('2205250', 22, 5250, '2 - Nordeste', 'Piauí', 'PI', 'Jardim do Mulato', 780),
('2205276', 22, 5276, '2 - Nordeste', 'Piauí', 'PI', 'Jatobá do Piauí', 781),
('2205300', 22, 5300, '2 - Nordeste', 'Piauí', 'PI', 'Jerumenha', 782),
('2205359', 22, 5359, '2 - Nordeste', 'Piauí', 'PI', 'João Costa', 783),
('2205409', 22, 5409, '2 - Nordeste', 'Piauí', 'PI', 'Joaquim Pires', 784),
('2205458', 22, 5458, '2 - Nordeste', 'Piauí', 'PI', 'Joca Marques', 785),
('2205508', 22, 5508, '2 - Nordeste', 'Piauí', 'PI', 'José de Freitas', 786),
('2205516', 22, 5516, '2 - Nordeste', 'Piauí', 'PI', 'Juazeiro do Piauí', 787),
('2205524', 22, 5524, '2 - Nordeste', 'Piauí', 'PI', 'Júlio Borges', 788),
('2205532', 22, 5532, '2 - Nordeste', 'Piauí', 'PI', 'Jurema', 789),
('2205540', 22, 5540, '2 - Nordeste', 'Piauí', 'PI', 'Lagoinha do Piauí', 790),
('2205557', 22, 5557, '2 - Nordeste', 'Piauí', 'PI', 'Lagoa Alegre', 791),
('2205565', 22, 5565, '2 - Nordeste', 'Piauí', 'PI', 'Lagoa do Barro do Piauí', 792),
('2205573', 22, 5573, '2 - Nordeste', 'Piauí', 'PI', 'Lagoa de São Francisco', 793),
('2205581', 22, 5581, '2 - Nordeste', 'Piauí', 'PI', 'Lagoa do Piauí', 794),
('2205599', 22, 5599, '2 - Nordeste', 'Piauí', 'PI', 'Lagoa do Sítio', 795),
('2205607', 22, 5607, '2 - Nordeste', 'Piauí', 'PI', 'Landri Sales', 796),
('2205706', 22, 5706, '2 - Nordeste', 'Piauí', 'PI', 'Luís Correia', 797),
('2205805', 22, 5805, '2 - Nordeste', 'Piauí', 'PI', 'Luzilândia', 798),
('2205854', 22, 5854, '2 - Nordeste', 'Piauí', 'PI', 'Madeiro', 799),
('2205904', 22, 5904, '2 - Nordeste', 'Piauí', 'PI', 'Manoel Emídio', 800),
('2205953', 22, 5953, '2 - Nordeste', 'Piauí', 'PI', 'Marcolândia', 801),
('2206001', 22, 6001, '2 - Nordeste', 'Piauí', 'PI', 'Marcos Parente', 802),
('2206050', 22, 6050, '2 - Nordeste', 'Piauí', 'PI', 'Massapê do Piauí', 803),
('2206100', 22, 6100, '2 - Nordeste', 'Piauí', 'PI', 'Matias Olímpio', 804),
('2206209', 22, 6209, '2 - Nordeste', 'Piauí', 'PI', 'Miguel Alves', 805),
('2206308', 22, 6308, '2 - Nordeste', 'Piauí', 'PI', 'Miguel Leão', 806),
('2206357', 22, 6357, '2 - Nordeste', 'Piauí', 'PI', 'Milton Brandão', 807),
('2206407', 22, 6407, '2 - Nordeste', 'Piauí', 'PI', 'Monsenhor Gil', 808),
('2206506', 22, 6506, '2 - Nordeste', 'Piauí', 'PI', 'Monsenhor Hipólito', 809),
('2206605', 22, 6605, '2 - Nordeste', 'Piauí', 'PI', 'Monte Alegre do Piauí', 810),
('2206654', 22, 6654, '2 - Nordeste', 'Piauí', 'PI', 'Morro Cabeça no Tempo', 811),
('2206670', 22, 6670, '2 - Nordeste', 'Piauí', 'PI', 'Morro do Chapéu do Piauí', 812),
('2206696', 22, 6696, '2 - Nordeste', 'Piauí', 'PI', 'Murici dos Portelas', 813),
('2206704', 22, 6704, '2 - Nordeste', 'Piauí', 'PI', 'Nazaré do Piauí', 814),
('2206720', 22, 6720, '2 - Nordeste', 'Piauí', 'PI', 'Nazária', 815),
('2206753', 22, 6753, '2 - Nordeste', 'Piauí', 'PI', 'Nossa Senhora de Nazaré', 816),
('2206803', 22, 6803, '2 - Nordeste', 'Piauí', 'PI', 'Nossa Senhora dos Remédios', 817),
('2206902', 22, 6902, '2 - Nordeste', 'Piauí', 'PI', 'Novo Oriente do Piauí', 818),
('2206951', 22, 6951, '2 - Nordeste', 'Piauí', 'PI', 'Novo Santo Antônio', 819),
('2207009', 22, 7009, '2 - Nordeste', 'Piauí', 'PI', 'Oeiras', 820),
('2207108', 22, 7108, '2 - Nordeste', 'Piauí', 'PI', 'Olho D''Água do Piauí', 821),
('2207207', 22, 7207, '2 - Nordeste', 'Piauí', 'PI', 'Padre Marcos', 822),
('2207306', 22, 7306, '2 - Nordeste', 'Piauí', 'PI', 'Paes Landim', 823),
('2207355', 22, 7355, '2 - Nordeste', 'Piauí', 'PI', 'Pajeú do Piauí', 824),
('2207405', 22, 7405, '2 - Nordeste', 'Piauí', 'PI', 'Palmeira do Piauí', 825),
('2207504', 22, 7504, '2 - Nordeste', 'Piauí', 'PI', 'Palmeirais', 826),
('2207553', 22, 7553, '2 - Nordeste', 'Piauí', 'PI', 'Paquetá', 827),
('2207603', 22, 7603, '2 - Nordeste', 'Piauí', 'PI', 'Parnaguá', 828),
('2207702', 22, 7702, '2 - Nordeste', 'Piauí', 'PI', 'Parnaíba', 829),
('2207751', 22, 7751, '2 - Nordeste', 'Piauí', 'PI', 'Passagem Franca do Piauí', 830),
('2207777', 22, 7777, '2 - Nordeste', 'Piauí', 'PI', 'Patos do Piauí', 831),
('2207793', 22, 7793, '2 - Nordeste', 'Piauí', 'PI', 'Pau D''Arco do Piauí', 832),
('2207801', 22, 7801, '2 - Nordeste', 'Piauí', 'PI', 'Paulistana', 833),
('2207850', 22, 7850, '2 - Nordeste', 'Piauí', 'PI', 'Pavussu', 834),
('2207900', 22, 7900, '2 - Nordeste', 'Piauí', 'PI', 'Pedro II', 835),
('2207934', 22, 7934, '2 - Nordeste', 'Piauí', 'PI', 'Pedro Laurentino', 836),
('2207959', 22, 7959, '2 - Nordeste', 'Piauí', 'PI', 'Nova Santa Rita', 837),
('2208007', 22, 8007, '2 - Nordeste', 'Piauí', 'PI', 'Picos', 838),
('2208106', 22, 8106, '2 - Nordeste', 'Piauí', 'PI', 'Pimenteiras', 839),
('2208205', 22, 8205, '2 - Nordeste', 'Piauí', 'PI', 'Pio IX', 840),
('2208304', 22, 8304, '2 - Nordeste', 'Piauí', 'PI', 'Piracuruca', 841),
('2208403', 22, 8403, '2 - Nordeste', 'Piauí', 'PI', 'Piripiri', 842),
('2208502', 22, 8502, '2 - Nordeste', 'Piauí', 'PI', 'Porto', 843),
('2208551', 22, 8551, '2 - Nordeste', 'Piauí', 'PI', 'Porto Alegre do Piauí', 844),
('2208601', 22, 8601, '2 - Nordeste', 'Piauí', 'PI', 'Prata do Piauí', 845),
('2208650', 22, 8650, '2 - Nordeste', 'Piauí', 'PI', 'Queimada Nova', 846),
('2208700', 22, 8700, '2 - Nordeste', 'Piauí', 'PI', 'Redenção do Gurguéia', 847),
('2208809', 22, 8809, '2 - Nordeste', 'Piauí', 'PI', 'Regeneração', 848),
('2208858', 22, 8858, '2 - Nordeste', 'Piauí', 'PI', 'Riacho Frio', 849),
('2208874', 22, 8874, '2 - Nordeste', 'Piauí', 'PI', 'Ribeira do Piauí', 850),
('2208908', 22, 8908, '2 - Nordeste', 'Piauí', 'PI', 'Ribeiro Gonçalves', 851),
('2209005', 22, 9005, '2 - Nordeste', 'Piauí', 'PI', 'Rio Grande do Piauí', 852),
('2209104', 22, 9104, '2 - Nordeste', 'Piauí', 'PI', 'Santa Cruz do Piauí', 853),
('2209153', 22, 9153, '2 - Nordeste', 'Piauí', 'PI', 'Santa Cruz dos Milagres', 854),
('2209203', 22, 9203, '2 - Nordeste', 'Piauí', 'PI', 'Santa Filomena', 855),
('2209302', 22, 9302, '2 - Nordeste', 'Piauí', 'PI', 'Santa Luz', 856),
('2209351', 22, 9351, '2 - Nordeste', 'Piauí', 'PI', 'Santana do Piauí', 857),
('2209377', 22, 9377, '2 - Nordeste', 'Piauí', 'PI', 'Santa Rosa do Piauí', 858),
('2209401', 22, 9401, '2 - Nordeste', 'Piauí', 'PI', 'Santo Antônio de Lisboa', 859),
('2209450', 22, 9450, '2 - Nordeste', 'Piauí', 'PI', 'Santo Antônio dos Milagres', 860),
('2209500', 22, 9500, '2 - Nordeste', 'Piauí', 'PI', 'Santo Inácio do Piauí', 861),
('2209559', 22, 9559, '2 - Nordeste', 'Piauí', 'PI', 'São Braz do Piauí', 862),
('2209609', 22, 9609, '2 - Nordeste', 'Piauí', 'PI', 'São Félix do Piauí', 863),
('2209658', 22, 9658, '2 - Nordeste', 'Piauí', 'PI', 'São Francisco de Assis do Piauí', 864),
('2209708', 22, 9708, '2 - Nordeste', 'Piauí', 'PI', 'São Francisco do Piauí', 865),
('2209757', 22, 9757, '2 - Nordeste', 'Piauí', 'PI', 'São Gonçalo do Gurguéia', 866),
('2209807', 22, 9807, '2 - Nordeste', 'Piauí', 'PI', 'São Gonçalo do Piauí', 867),
('2209856', 22, 9856, '2 - Nordeste', 'Piauí', 'PI', 'São João da Canabrava', 868),
('2209872', 22, 9872, '2 - Nordeste', 'Piauí', 'PI', 'São João da Fronteira', 869),
('2209906', 22, 9906, '2 - Nordeste', 'Piauí', 'PI', 'São João da Serra', 870),
('2209955', 22, 9955, '2 - Nordeste', 'Piauí', 'PI', 'São João da Varjota', 871),
('2209971', 22, 9971, '2 - Nordeste', 'Piauí', 'PI', 'São João do Arraial', 872),
('2210003', 22, 10003, '2 - Nordeste', 'Piauí', 'PI', 'São João do Piauí', 873),
('2210052', 22, 10052, '2 - Nordeste', 'Piauí', 'PI', 'São José do Divino', 874),
('2210102', 22, 10102, '2 - Nordeste', 'Piauí', 'PI', 'São José do Peixe', 875),
('2210201', 22, 10201, '2 - Nordeste', 'Piauí', 'PI', 'São José do Piauí', 876),
('2210300', 22, 10300, '2 - Nordeste', 'Piauí', 'PI', 'São Julião', 877),
('2210359', 22, 10359, '2 - Nordeste', 'Piauí', 'PI', 'São Lourenço do Piauí', 878),
('2210375', 22, 10375, '2 - Nordeste', 'Piauí', 'PI', 'São Luis do Piauí', 879),
('2210383', 22, 10383, '2 - Nordeste', 'Piauí', 'PI', 'São Miguel da Baixa Grande', 880),
('2210391', 22, 10391, '2 - Nordeste', 'Piauí', 'PI', 'São Miguel do Fidalgo', 881),
('2210409', 22, 10409, '2 - Nordeste', 'Piauí', 'PI', 'São Miguel do Tapuio', 882),
('2210508', 22, 10508, '2 - Nordeste', 'Piauí', 'PI', 'São Pedro do Piauí', 883),
('2210607', 22, 10607, '2 - Nordeste', 'Piauí', 'PI', 'São Raimundo Nonato', 884),
('2210623', 22, 10623, '2 - Nordeste', 'Piauí', 'PI', 'Sebastião Barros', 885),
('2210631', 22, 10631, '2 - Nordeste', 'Piauí', 'PI', 'Sebastião Leal', 886),
('2210656', 22, 10656, '2 - Nordeste', 'Piauí', 'PI', 'Sigefredo Pacheco', 887),
('2210706', 22, 10706, '2 - Nordeste', 'Piauí', 'PI', 'Simões', 888),
('2210805', 22, 10805, '2 - Nordeste', 'Piauí', 'PI', 'Simplício Mendes', 889),
('2210904', 22, 10904, '2 - Nordeste', 'Piauí', 'PI', 'Socorro do Piauí', 890),
('2210938', 22, 10938, '2 - Nordeste', 'Piauí', 'PI', 'Sussuapara', 891),
('2210953', 22, 10953, '2 - Nordeste', 'Piauí', 'PI', 'Tamboril do Piauí', 892),
('2210979', 22, 10979, '2 - Nordeste', 'Piauí', 'PI', 'Tanque do Piauí', 893),
('2211001', 22, 11001, '2 - Nordeste', 'Piauí', 'PI', 'Teresina', 894),
('2211100', 22, 11100, '2 - Nordeste', 'Piauí', 'PI', 'União', 895),
('2211209', 22, 11209, '2 - Nordeste', 'Piauí', 'PI', 'Uruçuí', 896),
('2211308', 22, 11308, '2 - Nordeste', 'Piauí', 'PI', 'Valença do Piauí', 897),
('2211357', 22, 11357, '2 - Nordeste', 'Piauí', 'PI', 'Várzea Branca', 898),
('2211407', 22, 11407, '2 - Nordeste', 'Piauí', 'PI', 'Várzea Grande', 899),
('2211506', 22, 11506, '2 - Nordeste', 'Piauí', 'PI', 'Vera Mendes', 900),
('2211605', 22, 11605, '2 - Nordeste', 'Piauí', 'PI', 'Vila Nova do Piauí', 901),
('2211704', 22, 11704, '2 - Nordeste', 'Piauí', 'PI', 'Wall Ferraz', 902),
('2300101', 23, 101, '2 - Nordeste', 'Ceará', 'CE', 'Abaiara', 903),
('2300150', 23, 150, '2 - Nordeste', 'Ceará', 'CE', 'Acarape', 904),
('2300200', 23, 200, '2 - Nordeste', 'Ceará', 'CE', 'Acaraú', 905),
('2300309', 23, 309, '2 - Nordeste', 'Ceará', 'CE', 'Acopiara', 906),
('2300408', 23, 408, '2 - Nordeste', 'Ceará', 'CE', 'Aiuaba', 907),
('2300507', 23, 507, '2 - Nordeste', 'Ceará', 'CE', 'Alcântaras', 908),
('2300606', 23, 606, '2 - Nordeste', 'Ceará', 'CE', 'Altaneira', 909),
('2300705', 23, 705, '2 - Nordeste', 'Ceará', 'CE', 'Alto Santo', 910),
('2300754', 23, 754, '2 - Nordeste', 'Ceará', 'CE', 'Amontada', 911),
('2300804', 23, 804, '2 - Nordeste', 'Ceará', 'CE', 'Antonina do Norte', 912),
('2300903', 23, 903, '2 - Nordeste', 'Ceará', 'CE', 'Apuiarés', 913),
('2301000', 23, 1000, '2 - Nordeste', 'Ceará', 'CE', 'Aquiraz', 914),
('2301109', 23, 1109, '2 - Nordeste', 'Ceará', 'CE', 'Aracati', 915),
('2301208', 23, 1208, '2 - Nordeste', 'Ceará', 'CE', 'Aracoiaba', 916),
('2301257', 23, 1257, '2 - Nordeste', 'Ceará', 'CE', 'Ararendá', 917),
('2301307', 23, 1307, '2 - Nordeste', 'Ceará', 'CE', 'Araripe', 918),
('2301406', 23, 1406, '2 - Nordeste', 'Ceará', 'CE', 'Aratuba', 919),
('2301505', 23, 1505, '2 - Nordeste', 'Ceará', 'CE', 'Arneiroz', 920),
('2301604', 23, 1604, '2 - Nordeste', 'Ceará', 'CE', 'Assaré', 921),
('2301703', 23, 1703, '2 - Nordeste', 'Ceará', 'CE', 'Aurora', 922),
('2301802', 23, 1802, '2 - Nordeste', 'Ceará', 'CE', 'Baixio', 923),
('2301851', 23, 1851, '2 - Nordeste', 'Ceará', 'CE', 'Banabuiú', 924),
('2301901', 23, 1901, '2 - Nordeste', 'Ceará', 'CE', 'Barbalha', 925),
('2301950', 23, 1950, '2 - Nordeste', 'Ceará', 'CE', 'Barreira', 926),
('2302008', 23, 2008, '2 - Nordeste', 'Ceará', 'CE', 'Barro', 927),
('2302057', 23, 2057, '2 - Nordeste', 'Ceará', 'CE', 'Barroquinha', 928),
('2302107', 23, 2107, '2 - Nordeste', 'Ceará', 'CE', 'Baturité', 929),
('2302206', 23, 2206, '2 - Nordeste', 'Ceará', 'CE', 'Beberibe', 930),
('2302305', 23, 2305, '2 - Nordeste', 'Ceará', 'CE', 'Bela Cruz', 931),
('2302404', 23, 2404, '2 - Nordeste', 'Ceará', 'CE', 'Boa Viagem', 932),
('2302503', 23, 2503, '2 - Nordeste', 'Ceará', 'CE', 'Brejo Santo', 933),
('2302602', 23, 2602, '2 - Nordeste', 'Ceará', 'CE', 'Camocim', 934),
('2302701', 23, 2701, '2 - Nordeste', 'Ceará', 'CE', 'Campos Sales', 935),
('2302800', 23, 2800, '2 - Nordeste', 'Ceará', 'CE', 'Canindé', 936),
('2302909', 23, 2909, '2 - Nordeste', 'Ceará', 'CE', 'Capistrano', 937),
('2303006', 23, 3006, '2 - Nordeste', 'Ceará', 'CE', 'Caridade', 938),
('2303105', 23, 3105, '2 - Nordeste', 'Ceará', 'CE', 'Cariré', 939),
('2303204', 23, 3204, '2 - Nordeste', 'Ceará', 'CE', 'Caririaçu', 940),
('2303303', 23, 3303, '2 - Nordeste', 'Ceará', 'CE', 'Cariús', 941),
('2303402', 23, 3402, '2 - Nordeste', 'Ceará', 'CE', 'Carnaubal', 942),
('2303501', 23, 3501, '2 - Nordeste', 'Ceará', 'CE', 'Cascavel', 943),
('2303600', 23, 3600, '2 - Nordeste', 'Ceará', 'CE', 'Catarina', 944),
('2303659', 23, 3659, '2 - Nordeste', 'Ceará', 'CE', 'Catunda', 945),
('2303709', 23, 3709, '2 - Nordeste', 'Ceará', 'CE', 'Caucaia', 946),
('2303808', 23, 3808, '2 - Nordeste', 'Ceará', 'CE', 'Cedro', 947),
('2303907', 23, 3907, '2 - Nordeste', 'Ceará', 'CE', 'Chaval', 948),
('2303931', 23, 3931, '2 - Nordeste', 'Ceará', 'CE', 'Choró', 949),
('2303956', 23, 3956, '2 - Nordeste', 'Ceará', 'CE', 'Chorozinho', 950),
('2304004', 23, 4004, '2 - Nordeste', 'Ceará', 'CE', 'Coreaú', 951),
('2304103', 23, 4103, '2 - Nordeste', 'Ceará', 'CE', 'Crateús', 952),
('2304202', 23, 4202, '2 - Nordeste', 'Ceará', 'CE', 'Crato', 953),
('2304236', 23, 4236, '2 - Nordeste', 'Ceará', 'CE', 'Croatá', 954),
('2304251', 23, 4251, '2 - Nordeste', 'Ceará', 'CE', 'Cruz', 955),
('2304269', 23, 4269, '2 - Nordeste', 'Ceará', 'CE', 'Deputado Irapuan Pinheiro', 956),
('2304277', 23, 4277, '2 - Nordeste', 'Ceará', 'CE', 'Ererê', 957),
('2304285', 23, 4285, '2 - Nordeste', 'Ceará', 'CE', 'Eusébio', 958),
('2304301', 23, 4301, '2 - Nordeste', 'Ceará', 'CE', 'Farias Brito', 959),
('2304350', 23, 4350, '2 - Nordeste', 'Ceará', 'CE', 'Forquilha', 960),
('2304400', 23, 4400, '2 - Nordeste', 'Ceará', 'CE', 'Fortaleza', 961),
('2304459', 23, 4459, '2 - Nordeste', 'Ceará', 'CE', 'Fortim', 962),
('2304509', 23, 4509, '2 - Nordeste', 'Ceará', 'CE', 'Frecheirinha', 963),
('2304608', 23, 4608, '2 - Nordeste', 'Ceará', 'CE', 'General Sampaio', 964),
('2304657', 23, 4657, '2 - Nordeste', 'Ceará', 'CE', 'Graça', 965),
('2304707', 23, 4707, '2 - Nordeste', 'Ceará', 'CE', 'Granja', 966),
('2304806', 23, 4806, '2 - Nordeste', 'Ceará', 'CE', 'Granjeiro', 967),
('2304905', 23, 4905, '2 - Nordeste', 'Ceará', 'CE', 'Groaíras', 968),
('2304954', 23, 4954, '2 - Nordeste', 'Ceará', 'CE', 'Guaiúba', 969),
('2305001', 23, 5001, '2 - Nordeste', 'Ceará', 'CE', 'Guaraciaba do Norte', 970),
('2305100', 23, 5100, '2 - Nordeste', 'Ceará', 'CE', 'Guaramiranga', 971),
('2305209', 23, 5209, '2 - Nordeste', 'Ceará', 'CE', 'Hidrolândia', 972),
('2305233', 23, 5233, '2 - Nordeste', 'Ceará', 'CE', 'Horizonte', 973),
('2305266', 23, 5266, '2 - Nordeste', 'Ceará', 'CE', 'Ibaretama', 974),
('2305308', 23, 5308, '2 - Nordeste', 'Ceará', 'CE', 'Ibiapina', 975),
('2305332', 23, 5332, '2 - Nordeste', 'Ceará', 'CE', 'Ibicuitinga', 976),
('2305357', 23, 5357, '2 - Nordeste', 'Ceará', 'CE', 'Icapuí', 977),
('2305407', 23, 5407, '2 - Nordeste', 'Ceará', 'CE', 'Icó', 978),
('2305506', 23, 5506, '2 - Nordeste', 'Ceará', 'CE', 'Iguatu', 979),
('2305605', 23, 5605, '2 - Nordeste', 'Ceará', 'CE', 'Independência', 980),
('2305654', 23, 5654, '2 - Nordeste', 'Ceará', 'CE', 'Ipaporanga', 981),
('2305704', 23, 5704, '2 - Nordeste', 'Ceará', 'CE', 'Ipaumirim', 982),
('2305803', 23, 5803, '2 - Nordeste', 'Ceará', 'CE', 'Ipu', 983),
('2305902', 23, 5902, '2 - Nordeste', 'Ceará', 'CE', 'Ipueiras', 984),
('2306009', 23, 6009, '2 - Nordeste', 'Ceará', 'CE', 'Iracema', 985),
('2306108', 23, 6108, '2 - Nordeste', 'Ceará', 'CE', 'Irauçuba', 986),
('2306207', 23, 6207, '2 - Nordeste', 'Ceará', 'CE', 'Itaiçaba', 987),
('2306256', 23, 6256, '2 - Nordeste', 'Ceará', 'CE', 'Itaitinga', 988),
('2306306', 23, 6306, '2 - Nordeste', 'Ceará', 'CE', 'Itapagé', 989),
('2306405', 23, 6405, '2 - Nordeste', 'Ceará', 'CE', 'Itapipoca', 990),
('2306504', 23, 6504, '2 - Nordeste', 'Ceará', 'CE', 'Itapiúna', 991),
('2306553', 23, 6553, '2 - Nordeste', 'Ceará', 'CE', 'Itarema', 992),
('2306603', 23, 6603, '2 - Nordeste', 'Ceará', 'CE', 'Itatira', 993),
('2306702', 23, 6702, '2 - Nordeste', 'Ceará', 'CE', 'Jaguaretama', 994),
('2306801', 23, 6801, '2 - Nordeste', 'Ceará', 'CE', 'Jaguaribara', 995),
('2306900', 23, 6900, '2 - Nordeste', 'Ceará', 'CE', 'Jaguaribe', 996),
('2307007', 23, 7007, '2 - Nordeste', 'Ceará', 'CE', 'Jaguaruana', 997),
('2307106', 23, 7106, '2 - Nordeste', 'Ceará', 'CE', 'Jardim', 998),
('2307205', 23, 7205, '2 - Nordeste', 'Ceará', 'CE', 'Jati', 999),
('2307254', 23, 7254, '2 - Nordeste', 'Ceará', 'CE', 'Jijoca de Jericoacoara', 1000),
('2307304', 23, 7304, '2 - Nordeste', 'Ceará', 'CE', 'Juazeiro do Norte', 1001),
('2307403', 23, 7403, '2 - Nordeste', 'Ceará', 'CE', 'Jucás', 1002),
('2307502', 23, 7502, '2 - Nordeste', 'Ceará', 'CE', 'Lavras da Mangabeira', 1003),
('2307601', 23, 7601, '2 - Nordeste', 'Ceará', 'CE', 'Limoeiro do Norte', 1004),
('2307635', 23, 7635, '2 - Nordeste', 'Ceará', 'CE', 'Madalena', 1005),
('2307650', 23, 7650, '2 - Nordeste', 'Ceará', 'CE', 'Maracanaú', 1006),
('2307700', 23, 7700, '2 - Nordeste', 'Ceará', 'CE', 'Maranguape', 1007),
('2307809', 23, 7809, '2 - Nordeste', 'Ceará', 'CE', 'Marco', 1008),
('2307908', 23, 7908, '2 - Nordeste', 'Ceará', 'CE', 'Martinópole', 1009),
('2308005', 23, 8005, '2 - Nordeste', 'Ceará', 'CE', 'Massapê', 1010),
('2308104', 23, 8104, '2 - Nordeste', 'Ceará', 'CE', 'Mauriti', 1011),
('2308203', 23, 8203, '2 - Nordeste', 'Ceará', 'CE', 'Meruoca', 1012),
('2308302', 23, 8302, '2 - Nordeste', 'Ceará', 'CE', 'Milagres', 1013),
('2308351', 23, 8351, '2 - Nordeste', 'Ceará', 'CE', 'Milhã', 1014),
('2308377', 23, 8377, '2 - Nordeste', 'Ceará', 'CE', 'Miraíma', 1015),
('2308401', 23, 8401, '2 - Nordeste', 'Ceará', 'CE', 'Missão Velha', 1016),
('2308500', 23, 8500, '2 - Nordeste', 'Ceará', 'CE', 'Mombaça', 1017),
('2308609', 23, 8609, '2 - Nordeste', 'Ceará', 'CE', 'Monsenhor Tabosa', 1018),
('2308708', 23, 8708, '2 - Nordeste', 'Ceará', 'CE', 'Morada Nova', 1019),
('2308807', 23, 8807, '2 - Nordeste', 'Ceará', 'CE', 'Moraújo', 1020),
('2308906', 23, 8906, '2 - Nordeste', 'Ceará', 'CE', 'Morrinhos', 1021),
('2309003', 23, 9003, '2 - Nordeste', 'Ceará', 'CE', 'Mucambo', 1022),
('2309102', 23, 9102, '2 - Nordeste', 'Ceará', 'CE', 'Mulungu', 1023),
('2309201', 23, 9201, '2 - Nordeste', 'Ceará', 'CE', 'Nova Olinda', 1024),
('2309300', 23, 9300, '2 - Nordeste', 'Ceará', 'CE', 'Nova Russas', 1025),
('2309409', 23, 9409, '2 - Nordeste', 'Ceará', 'CE', 'Novo Oriente', 1026),
('2309458', 23, 9458, '2 - Nordeste', 'Ceará', 'CE', 'Ocara', 1027),
('2309508', 23, 9508, '2 - Nordeste', 'Ceará', 'CE', 'Orós', 1028),
('2309607', 23, 9607, '2 - Nordeste', 'Ceará', 'CE', 'Pacajus', 1029),
('2309706', 23, 9706, '2 - Nordeste', 'Ceará', 'CE', 'Pacatuba', 1030),
('2309805', 23, 9805, '2 - Nordeste', 'Ceará', 'CE', 'Pacoti', 1031),
('2309904', 23, 9904, '2 - Nordeste', 'Ceará', 'CE', 'Pacujá', 1032),
('2310001', 23, 10001, '2 - Nordeste', 'Ceará', 'CE', 'Palhano', 1033),
('2310100', 23, 10100, '2 - Nordeste', 'Ceará', 'CE', 'Palmácia', 1034),
('2310209', 23, 10209, '2 - Nordeste', 'Ceará', 'CE', 'Paracuru', 1035),
('2310258', 23, 10258, '2 - Nordeste', 'Ceará', 'CE', 'Paraipaba', 1036),
('2310308', 23, 10308, '2 - Nordeste', 'Ceará', 'CE', 'Parambu', 1037),
('2310407', 23, 10407, '2 - Nordeste', 'Ceará', 'CE', 'Paramoti', 1038),
('2310506', 23, 10506, '2 - Nordeste', 'Ceará', 'CE', 'Pedra Branca', 1039),
('2310605', 23, 10605, '2 - Nordeste', 'Ceará', 'CE', 'Penaforte', 1040),
('2310704', 23, 10704, '2 - Nordeste', 'Ceará', 'CE', 'Pentecoste', 1041),
('2310803', 23, 10803, '2 - Nordeste', 'Ceará', 'CE', 'Pereiro', 1042),
('2310852', 23, 10852, '2 - Nordeste', 'Ceará', 'CE', 'Pindoretama', 1043),
('2310902', 23, 10902, '2 - Nordeste', 'Ceará', 'CE', 'Piquet Carneiro', 1044),
('2310951', 23, 10951, '2 - Nordeste', 'Ceará', 'CE', 'Pires Ferreira', 1045),
('2311009', 23, 11009, '2 - Nordeste', 'Ceará', 'CE', 'Poranga', 1046),
('2311108', 23, 11108, '2 - Nordeste', 'Ceará', 'CE', 'Porteiras', 1047),
('2311207', 23, 11207, '2 - Nordeste', 'Ceará', 'CE', 'Potengi', 1048),
('2311231', 23, 11231, '2 - Nordeste', 'Ceará', 'CE', 'Potiretama', 1049),
('2311264', 23, 11264, '2 - Nordeste', 'Ceará', 'CE', 'Quiterianópolis', 1050),
('2311306', 23, 11306, '2 - Nordeste', 'Ceará', 'CE', 'Quixadá', 1051),
('2311355', 23, 11355, '2 - Nordeste', 'Ceará', 'CE', 'Quixelô', 1052),
('2311405', 23, 11405, '2 - Nordeste', 'Ceará', 'CE', 'Quixeramobim', 1053),
('2311504', 23, 11504, '2 - Nordeste', 'Ceará', 'CE', 'Quixeré', 1054),
('2311603', 23, 11603, '2 - Nordeste', 'Ceará', 'CE', 'Redenção', 1055),
('2311702', 23, 11702, '2 - Nordeste', 'Ceará', 'CE', 'Reriutaba', 1056),
('2311801', 23, 11801, '2 - Nordeste', 'Ceará', 'CE', 'Russas', 1057),
('2311900', 23, 11900, '2 - Nordeste', 'Ceará', 'CE', 'Saboeiro', 1058),
('2311959', 23, 11959, '2 - Nordeste', 'Ceará', 'CE', 'Salitre', 1059),
('2312007', 23, 12007, '2 - Nordeste', 'Ceará', 'CE', 'Santana do Acaraú', 1060),
('2312106', 23, 12106, '2 - Nordeste', 'Ceará', 'CE', 'Santana do Cariri', 1061),
('2312205', 23, 12205, '2 - Nordeste', 'Ceará', 'CE', 'Santa Quitéria', 1062),
('2312304', 23, 12304, '2 - Nordeste', 'Ceará', 'CE', 'São Benedito', 1063),
('2312403', 23, 12403, '2 - Nordeste', 'Ceará', 'CE', 'São Gonçalo do Amarante', 1064),
('2312502', 23, 12502, '2 - Nordeste', 'Ceará', 'CE', 'São João do Jaguaribe', 1065),
('2312601', 23, 12601, '2 - Nordeste', 'Ceará', 'CE', 'São Luís do Curu', 1066),
('2312700', 23, 12700, '2 - Nordeste', 'Ceará', 'CE', 'Senador Pompeu', 1067),
('2312809', 23, 12809, '2 - Nordeste', 'Ceará', 'CE', 'Senador Sá', 1068),
('2312908', 23, 12908, '2 - Nordeste', 'Ceará', 'CE', 'Sobral', 1069),
('2313005', 23, 13005, '2 - Nordeste', 'Ceará', 'CE', 'Solonópole', 1070),
('2313104', 23, 13104, '2 - Nordeste', 'Ceará', 'CE', 'Tabuleiro do Norte', 1071),
('2313203', 23, 13203, '2 - Nordeste', 'Ceará', 'CE', 'Tamboril', 1072),
('2313252', 23, 13252, '2 - Nordeste', 'Ceará', 'CE', 'Tarrafas', 1073),
('2313302', 23, 13302, '2 - Nordeste', 'Ceará', 'CE', 'Tauá', 1074),
('2313351', 23, 13351, '2 - Nordeste', 'Ceará', 'CE', 'Tejuçuoca', 1075),
('2313401', 23, 13401, '2 - Nordeste', 'Ceará', 'CE', 'Tianguá', 1076),
('2313500', 23, 13500, '2 - Nordeste', 'Ceará', 'CE', 'Trairi', 1077),
('2313559', 23, 13559, '2 - Nordeste', 'Ceará', 'CE', 'Tururu', 1078),
('2313609', 23, 13609, '2 - Nordeste', 'Ceará', 'CE', 'Ubajara', 1079),
('2313708', 23, 13708, '2 - Nordeste', 'Ceará', 'CE', 'Umari', 1080),
('2313757', 23, 13757, '2 - Nordeste', 'Ceará', 'CE', 'Umirim', 1081),
('2313807', 23, 13807, '2 - Nordeste', 'Ceará', 'CE', 'Uruburetama', 1082),
('2313906', 23, 13906, '2 - Nordeste', 'Ceará', 'CE', 'Uruoca', 1083),
('2313955', 23, 13955, '2 - Nordeste', 'Ceará', 'CE', 'Varjota', 1084),
('2314003', 23, 14003, '2 - Nordeste', 'Ceará', 'CE', 'Várzea Alegre', 1085),
('2314102', 23, 14102, '2 - Nordeste', 'Ceará', 'CE', 'Viçosa do Ceará', 1086),
('2400109', 24, 109, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Acari', 1087),
('2400208', 24, 208, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Açu', 1088),
('2400307', 24, 307, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Afonso Bezerra', 1089),
('2400406', 24, 406, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Água Nova', 1090),
('2400505', 24, 505, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Alexandria', 1091),
('2400604', 24, 604, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Almino Afonso', 1092),
('2400703', 24, 703, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Alto do Rodrigues', 1093),
('2400802', 24, 802, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Angicos', 1094),
('2400901', 24, 901, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Antônio Martins', 1095),
('2401008', 24, 1008, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Apodi', 1096),
('2401107', 24, 1107, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Areia Branca', 1097),
('2401206', 24, 1206, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Arês', 1098),
('2401305', 24, 1305, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Augusto Severo', 1099),
('2401404', 24, 1404, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Baía Formosa', 1100),
('2401453', 24, 1453, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Baraúna', 1101),
('2401503', 24, 1503, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Barcelona', 1102),
('2401602', 24, 1602, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Bento Fernandes', 1103),
('2401651', 24, 1651, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Bodó', 1104),
('2401701', 24, 1701, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Bom Jesus', 1105),
('2401800', 24, 1800, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Brejinho', 1106),
('2401859', 24, 1859, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Caiçara do Norte', 1107),
('2401909', 24, 1909, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Caiçara do Rio do Vento', 1108),
('2402006', 24, 2006, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Caicó', 1109),
('2402105', 24, 2105, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Campo Redondo', 1110),
('2402204', 24, 2204, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Canguaretama', 1111),
('2402303', 24, 2303, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Caraúbas', 1112),
('2402402', 24, 2402, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Carnaúba dos Dantas', 1113),
('2402501', 24, 2501, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Carnaubais', 1114),
('2402600', 24, 2600, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Ceará-Mirim', 1115),
('2402709', 24, 2709, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Cerro Corá', 1116),
('2402808', 24, 2808, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Coronel Ezequiel', 1117),
('2402907', 24, 2907, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Coronel João Pessoa', 1118),
('2403004', 24, 3004, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Cruzeta', 1119),
('2403103', 24, 3103, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Currais Novos', 1120),
('2403202', 24, 3202, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Doutor Severiano', 1121),
('2403251', 24, 3251, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Parnamirim', 1122),
('2403301', 24, 3301, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Encanto', 1123),
('2403400', 24, 3400, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Equador', 1124),
('2403509', 24, 3509, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Espírito Santo', 1125),
('2403608', 24, 3608, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Extremoz', 1126),
('2403707', 24, 3707, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Felipe Guerra', 1127),
('2403756', 24, 3756, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Fernando Pedroza', 1128),
('2403806', 24, 3806, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Florânia', 1129),
('2403905', 24, 3905, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Francisco Dantas', 1130),
('2404002', 24, 4002, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Frutuoso Gomes', 1131),
('2404101', 24, 4101, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Galinhos', 1132),
('2404200', 24, 4200, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Goianinha', 1133),
('2404309', 24, 4309, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Governador Dix-Sept Rosado', 1134),
('2404408', 24, 4408, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Grossos', 1135),
('2404507', 24, 4507, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Guamaré', 1136),
('2404606', 24, 4606, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Ielmo Marinho', 1137),
('2404705', 24, 4705, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Ipanguaçu', 1138),
('2404804', 24, 4804, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Ipueira', 1139),
('2404853', 24, 4853, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Itajá', 1140),
('2404903', 24, 4903, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Itaú', 1141),
('2405009', 24, 5009, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Jaçanã', 1142),
('2405108', 24, 5108, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Jandaíra', 1143),
('2405207', 24, 5207, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Janduís', 1144),
('2405306', 24, 5306, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Januário Cicco', 1145),
('2405405', 24, 5405, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Japi', 1146),
('2405504', 24, 5504, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Jardim de Angicos', 1147),
('2405603', 24, 5603, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Jardim de Piranhas', 1148),
('2405702', 24, 5702, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Jardim do Seridó', 1149),
('2405801', 24, 5801, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'João Câmara', 1150),
('2405900', 24, 5900, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'João Dias', 1151),
('2406007', 24, 6007, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'José da Penha', 1152),
('2406106', 24, 6106, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Jucurutu', 1153),
('2406155', 24, 6155, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Jundiá', 1154),
('2406205', 24, 6205, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Lagoa d''Anta', 1155),
('2406304', 24, 6304, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Lagoa de Pedras', 1156),
('2406403', 24, 6403, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Lagoa de Velhos', 1157),
('2406502', 24, 6502, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Lagoa Nova', 1158),
('2406601', 24, 6601, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Lagoa Salgada', 1159),
('2406700', 24, 6700, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Lajes', 1160),
('2406809', 24, 6809, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Lajes Pintadas', 1161),
('2406908', 24, 6908, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Lucrécia', 1162),
('2407005', 24, 7005, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Luís Gomes', 1163),
('2407104', 24, 7104, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Macaíba', 1164),
('2407203', 24, 7203, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Macau', 1165),
('2407252', 24, 7252, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Major Sales', 1166),
('2407302', 24, 7302, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Marcelino Vieira', 1167),
('2407401', 24, 7401, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Martins', 1168),
('2407500', 24, 7500, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Maxaranguape', 1169),
('2407609', 24, 7609, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Messias Targino', 1170),
('2407708', 24, 7708, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Montanhas', 1171),
('2407807', 24, 7807, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Monte Alegre', 1172),
('2407906', 24, 7906, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Monte das Gameleiras', 1173),
('2408003', 24, 8003, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Mossoró', 1174),
('2408102', 24, 8102, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Natal', 1175),
('2408201', 24, 8201, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Nísia Floresta', 1176),
('2408300', 24, 8300, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Nova Cruz', 1177),
('2408409', 24, 8409, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Olho-d''Água do Borges', 1178),
('2408508', 24, 8508, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Ouro Branco', 1179),
('2408607', 24, 8607, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Paraná', 1180),
('2408706', 24, 8706, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Paraú', 1181),
('2408805', 24, 8805, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Parazinho', 1182),
('2408904', 24, 8904, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Parelhas', 1183),
('2408953', 24, 8953, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Rio do Fogo', 1184),
('2409100', 24, 9100, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Passa e Fica', 1185),
('2409209', 24, 9209, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Passagem', 1186),
('2409308', 24, 9308, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Patu', 1187),
('2409332', 24, 9332, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Santa Maria', 1188),
('2409407', 24, 9407, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Pau dos Ferros', 1189),
('2409506', 24, 9506, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Pedra Grande', 1190),
('2409605', 24, 9605, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Pedra Preta', 1191),
('2409704', 24, 9704, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Pedro Avelino', 1192),
('2409803', 24, 9803, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Pedro Velho', 1193),
('2409902', 24, 9902, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Pendências', 1194),
('2410009', 24, 10009, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Pilões', 1195),
('2410108', 24, 10108, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Poço Branco', 1196),
('2410207', 24, 10207, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Portalegre', 1197),
('2410256', 24, 10256, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Porto do Mangue', 1198),
('2410306', 24, 10306, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Serra Caiada', 1199),
('2410405', 24, 10405, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Pureza', 1200),
('2410504', 24, 10504, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Rafael Fernandes', 1201),
('2410603', 24, 10603, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Rafael Godeiro', 1202),
('2410702', 24, 10702, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Riacho da Cruz', 1203),
('2410801', 24, 10801, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Riacho de Santana', 1204),
('2410900', 24, 10900, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Riachuelo', 1205),
('2411007', 24, 11007, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Rodolfo Fernandes', 1206),
('2411056', 24, 11056, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Tibau', 1207),
('2411106', 24, 11106, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Ruy Barbosa', 1208),
('2411205', 24, 11205, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Santa Cruz', 1209),
('2411403', 24, 11403, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Santana do Matos', 1210),
('2411429', 24, 11429, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Santana do Seridó', 1211),
('2411502', 24, 11502, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Santo Antônio', 1212),
('2411601', 24, 11601, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'São Bento do Norte', 1213),
('2411700', 24, 11700, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'São Bento do Trairí', 1214),
('2411809', 24, 11809, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'São Fernando', 1215),
('2411908', 24, 11908, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'São Francisco do Oeste', 1216),
('2412005', 24, 12005, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'São Gonçalo do Amarante', 1217),
('2412104', 24, 12104, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'São João do Sabugi', 1218),
('2412203', 24, 12203, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'São José de Mipibu', 1219),
('2412302', 24, 12302, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'São José do Campestre', 1220),
('2412401', 24, 12401, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'São José do Seridó', 1221),
('2412500', 24, 12500, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'São Miguel', 1222),
('2412559', 24, 12559, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'São Miguel do Gostoso', 1223),
('2412609', 24, 12609, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'São Paulo do Potengi', 1224),
('2412708', 24, 12708, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'São Pedro', 1225),
('2412807', 24, 12807, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'São Rafael', 1226),
('2412906', 24, 12906, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'São Tomé', 1227),
('2413003', 24, 13003, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'São Vicente', 1228),
('2413102', 24, 13102, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Senador Elói de Souza', 1229),
('2413201', 24, 13201, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Senador Georgino Avelino', 1230),
('2413300', 24, 13300, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Serra de São Bento', 1231),
('2413359', 24, 13359, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Serra do Mel', 1232),
('2413409', 24, 13409, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Serra Negra do Norte', 1233),
('2413508', 24, 13508, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Serrinha', 1234),
('2413557', 24, 13557, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Serrinha dos Pintos', 1235),
('2413607', 24, 13607, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Severiano Melo', 1236),
('2413706', 24, 13706, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Sítio Novo', 1237),
('2413805', 24, 13805, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Taboleiro Grande', 1238),
('2413904', 24, 13904, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Taipu', 1239),
('2414001', 24, 14001, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Tangará', 1240),
('2414100', 24, 14100, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Tenente Ananias', 1241),
('2414159', 24, 14159, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Tenente Laurentino Cruz', 1242),
('2414209', 24, 14209, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Tibau do Sul', 1243),
('2414308', 24, 14308, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Timbaúba dos Batistas', 1244),
('2414407', 24, 14407, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Touros', 1245),
('2414456', 24, 14456, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Triunfo Potiguar', 1246),
('2414506', 24, 14506, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Umarizal', 1247),
('2414605', 24, 14605, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Upanema', 1248),
('2414704', 24, 14704, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Várzea', 1249),
('2414753', 24, 14753, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Venha-Ver', 1250),
('2414803', 24, 14803, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Vera Cruz', 1251),
('2414902', 24, 14902, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Viçosa', 1252),
('2415008', 24, 15008, '2 - Nordeste', 'Rio Grande do Norte', 'RN', 'Vila Flor', 1253),
('2500106', 25, 106, '2 - Nordeste', 'Paraíba', 'PB', 'Água Branca', 1254),
('2500205', 25, 205, '2 - Nordeste', 'Paraíba', 'PB', 'Aguiar', 1255),
('2500304', 25, 304, '2 - Nordeste', 'Paraíba', 'PB', 'Alagoa Grande', 1256),
('2500403', 25, 403, '2 - Nordeste', 'Paraíba', 'PB', 'Alagoa Nova', 1257),
('2500502', 25, 502, '2 - Nordeste', 'Paraíba', 'PB', 'Alagoinha', 1258),
('2500536', 25, 536, '2 - Nordeste', 'Paraíba', 'PB', 'Alcantil', 1259),
('2500577', 25, 577, '2 - Nordeste', 'Paraíba', 'PB', 'Algodão de Jandaíra', 1260),
('2500601', 25, 601, '2 - Nordeste', 'Paraíba', 'PB', 'Alhandra', 1261),
('2500700', 25, 700, '2 - Nordeste', 'Paraíba', 'PB', 'São João do Rio do Peixe', 1262),
('2500734', 25, 734, '2 - Nordeste', 'Paraíba', 'PB', 'Amparo', 1263),
('2500775', 25, 775, '2 - Nordeste', 'Paraíba', 'PB', 'Aparecida', 1264),
('2500809', 25, 809, '2 - Nordeste', 'Paraíba', 'PB', 'Araçagi', 1265),
('2500908', 25, 908, '2 - Nordeste', 'Paraíba', 'PB', 'Arara', 1266),
('2501005', 25, 1005, '2 - Nordeste', 'Paraíba', 'PB', 'Araruna', 1267),
('2501104', 25, 1104, '2 - Nordeste', 'Paraíba', 'PB', 'Areia', 1268),
('2501153', 25, 1153, '2 - Nordeste', 'Paraíba', 'PB', 'Areia de Baraúnas', 1269),
('2501203', 25, 1203, '2 - Nordeste', 'Paraíba', 'PB', 'Areial', 1270),
('2501302', 25, 1302, '2 - Nordeste', 'Paraíba', 'PB', 'Aroeiras', 1271),
('2501351', 25, 1351, '2 - Nordeste', 'Paraíba', 'PB', 'Assunção', 1272),
('2501401', 25, 1401, '2 - Nordeste', 'Paraíba', 'PB', 'Baía da Traição', 1273),
('2501500', 25, 1500, '2 - Nordeste', 'Paraíba', 'PB', 'Bananeiras', 1274),
('2501534', 25, 1534, '2 - Nordeste', 'Paraíba', 'PB', 'Baraúna', 1275),
('2501575', 25, 1575, '2 - Nordeste', 'Paraíba', 'PB', 'Barra de Santana', 1276),
('2501609', 25, 1609, '2 - Nordeste', 'Paraíba', 'PB', 'Barra de Santa Rosa', 1277),
('2501708', 25, 1708, '2 - Nordeste', 'Paraíba', 'PB', 'Barra de São Miguel', 1278),
('2501807', 25, 1807, '2 - Nordeste', 'Paraíba', 'PB', 'Bayeux', 1279),
('2501906', 25, 1906, '2 - Nordeste', 'Paraíba', 'PB', 'Belém', 1280),
('2502003', 25, 2003, '2 - Nordeste', 'Paraíba', 'PB', 'Belém do Brejo do Cruz', 1281),
('2502052', 25, 2052, '2 - Nordeste', 'Paraíba', 'PB', 'Bernardino Batista', 1282),
('2502102', 25, 2102, '2 - Nordeste', 'Paraíba', 'PB', 'Boa Ventura', 1283),
('2502151', 25, 2151, '2 - Nordeste', 'Paraíba', 'PB', 'Boa Vista', 1284),
('2502201', 25, 2201, '2 - Nordeste', 'Paraíba', 'PB', 'Bom Jesus', 1285),
('2502300', 25, 2300, '2 - Nordeste', 'Paraíba', 'PB', 'Bom Sucesso', 1286),
('2502409', 25, 2409, '2 - Nordeste', 'Paraíba', 'PB', 'Bonito de Santa Fé', 1287),
('2502508', 25, 2508, '2 - Nordeste', 'Paraíba', 'PB', 'Boqueirão', 1288),
('2502607', 25, 2607, '2 - Nordeste', 'Paraíba', 'PB', 'Igaracy', 1289),
('2502706', 25, 2706, '2 - Nordeste', 'Paraíba', 'PB', 'Borborema', 1290),
('2502805', 25, 2805, '2 - Nordeste', 'Paraíba', 'PB', 'Brejo do Cruz', 1291),
('2502904', 25, 2904, '2 - Nordeste', 'Paraíba', 'PB', 'Brejo dos Santos', 1292),
('2503001', 25, 3001, '2 - Nordeste', 'Paraíba', 'PB', 'Caaporã', 1293),
('2503100', 25, 3100, '2 - Nordeste', 'Paraíba', 'PB', 'Cabaceiras', 1294),
('2503209', 25, 3209, '2 - Nordeste', 'Paraíba', 'PB', 'Cabedelo', 1295),
('2503308', 25, 3308, '2 - Nordeste', 'Paraíba', 'PB', 'Cachoeira dos Índios', 1296),
('2503407', 25, 3407, '2 - Nordeste', 'Paraíba', 'PB', 'Cacimba de Areia', 1297),
('2503506', 25, 3506, '2 - Nordeste', 'Paraíba', 'PB', 'Cacimba de Dentro', 1298),
('2503555', 25, 3555, '2 - Nordeste', 'Paraíba', 'PB', 'Cacimbas', 1299),
('2503605', 25, 3605, '2 - Nordeste', 'Paraíba', 'PB', 'Caiçara', 1300),
('2503704', 25, 3704, '2 - Nordeste', 'Paraíba', 'PB', 'Cajazeiras', 1301),
('2503753', 25, 3753, '2 - Nordeste', 'Paraíba', 'PB', 'Cajazeirinhas', 1302),
('2503803', 25, 3803, '2 - Nordeste', 'Paraíba', 'PB', 'Caldas Brandão', 1303),
('2503902', 25, 3902, '2 - Nordeste', 'Paraíba', 'PB', 'Camalaú', 1304),
('2504009', 25, 4009, '2 - Nordeste', 'Paraíba', 'PB', 'Campina Grande', 1305),
('2504033', 25, 4033, '2 - Nordeste', 'Paraíba', 'PB', 'Capim', 1306),
('2504074', 25, 4074, '2 - Nordeste', 'Paraíba', 'PB', 'Caraúbas', 1307),
('2504108', 25, 4108, '2 - Nordeste', 'Paraíba', 'PB', 'Carrapateira', 1308),
('2504157', 25, 4157, '2 - Nordeste', 'Paraíba', 'PB', 'Casserengue', 1309),
('2504207', 25, 4207, '2 - Nordeste', 'Paraíba', 'PB', 'Catingueira', 1310),
('2504306', 25, 4306, '2 - Nordeste', 'Paraíba', 'PB', 'Catolé do Rocha', 1311),
('2504355', 25, 4355, '2 - Nordeste', 'Paraíba', 'PB', 'Caturité', 1312),
('2504405', 25, 4405, '2 - Nordeste', 'Paraíba', 'PB', 'Conceição', 1313),
('2504504', 25, 4504, '2 - Nordeste', 'Paraíba', 'PB', 'Condado', 1314),
('2504603', 25, 4603, '2 - Nordeste', 'Paraíba', 'PB', 'Conde', 1315),
('2504702', 25, 4702, '2 - Nordeste', 'Paraíba', 'PB', 'Congo', 1316),
('2504801', 25, 4801, '2 - Nordeste', 'Paraíba', 'PB', 'Coremas', 1317),
('2504850', 25, 4850, '2 - Nordeste', 'Paraíba', 'PB', 'Coxixola', 1318),
('2504900', 25, 4900, '2 - Nordeste', 'Paraíba', 'PB', 'Cruz do Espírito Santo', 1319),
('2505006', 25, 5006, '2 - Nordeste', 'Paraíba', 'PB', 'Cubati', 1320),
('2505105', 25, 5105, '2 - Nordeste', 'Paraíba', 'PB', 'Cuité', 1321),
('2505204', 25, 5204, '2 - Nordeste', 'Paraíba', 'PB', 'Cuitegi', 1322);
INSERT INTO `ibge_uf` (`cod_mun`, `cod_uf`, `seila`, `regiao`, `estado`, `uf`, `municipio`, `id`) VALUES
('2505238', 25, 5238, '2 - Nordeste', 'Paraíba', 'PB', 'Cuité de Mamanguape', 1323),
('2505279', 25, 5279, '2 - Nordeste', 'Paraíba', 'PB', 'Curral de Cima', 1324),
('2505303', 25, 5303, '2 - Nordeste', 'Paraíba', 'PB', 'Curral Velho', 1325),
('2505352', 25, 5352, '2 - Nordeste', 'Paraíba', 'PB', 'Damião', 1326),
('2505402', 25, 5402, '2 - Nordeste', 'Paraíba', 'PB', 'Desterro', 1327),
('2505501', 25, 5501, '2 - Nordeste', 'Paraíba', 'PB', 'Vista Serrana', 1328),
('2505600', 25, 5600, '2 - Nordeste', 'Paraíba', 'PB', 'Diamante', 1329),
('2505709', 25, 5709, '2 - Nordeste', 'Paraíba', 'PB', 'Dona Inês', 1330),
('2505808', 25, 5808, '2 - Nordeste', 'Paraíba', 'PB', 'Duas Estradas', 1331),
('2505907', 25, 5907, '2 - Nordeste', 'Paraíba', 'PB', 'Emas', 1332),
('2506004', 25, 6004, '2 - Nordeste', 'Paraíba', 'PB', 'Esperança', 1333),
('2506103', 25, 6103, '2 - Nordeste', 'Paraíba', 'PB', 'Fagundes', 1334),
('2506202', 25, 6202, '2 - Nordeste', 'Paraíba', 'PB', 'Frei Martinho', 1335),
('2506251', 25, 6251, '2 - Nordeste', 'Paraíba', 'PB', 'Gado Bravo', 1336),
('2506301', 25, 6301, '2 - Nordeste', 'Paraíba', 'PB', 'Guarabira', 1337),
('2506400', 25, 6400, '2 - Nordeste', 'Paraíba', 'PB', 'Gurinhém', 1338),
('2506509', 25, 6509, '2 - Nordeste', 'Paraíba', 'PB', 'Gurjão', 1339),
('2506608', 25, 6608, '2 - Nordeste', 'Paraíba', 'PB', 'Ibiara', 1340),
('2506707', 25, 6707, '2 - Nordeste', 'Paraíba', 'PB', 'Imaculada', 1341),
('2506806', 25, 6806, '2 - Nordeste', 'Paraíba', 'PB', 'Ingá', 1342),
('2506905', 25, 6905, '2 - Nordeste', 'Paraíba', 'PB', 'Itabaiana', 1343),
('2507002', 25, 7002, '2 - Nordeste', 'Paraíba', 'PB', 'Itaporanga', 1344),
('2507101', 25, 7101, '2 - Nordeste', 'Paraíba', 'PB', 'Itapororoca', 1345),
('2507200', 25, 7200, '2 - Nordeste', 'Paraíba', 'PB', 'Itatuba', 1346),
('2507309', 25, 7309, '2 - Nordeste', 'Paraíba', 'PB', 'Jacaraú', 1347),
('2507408', 25, 7408, '2 - Nordeste', 'Paraíba', 'PB', 'Jericó', 1348),
('2507507', 25, 7507, '2 - Nordeste', 'Paraíba', 'PB', 'João Pessoa', 1349),
('2507606', 25, 7606, '2 - Nordeste', 'Paraíba', 'PB', 'Juarez Távora', 1350),
('2507705', 25, 7705, '2 - Nordeste', 'Paraíba', 'PB', 'Juazeirinho', 1351),
('2507804', 25, 7804, '2 - Nordeste', 'Paraíba', 'PB', 'Junco do Seridó', 1352),
('2507903', 25, 7903, '2 - Nordeste', 'Paraíba', 'PB', 'Juripiranga', 1353),
('2508000', 25, 8000, '2 - Nordeste', 'Paraíba', 'PB', 'Juru', 1354),
('2508109', 25, 8109, '2 - Nordeste', 'Paraíba', 'PB', 'Lagoa', 1355),
('2508208', 25, 8208, '2 - Nordeste', 'Paraíba', 'PB', 'Lagoa de Dentro', 1356),
('2508307', 25, 8307, '2 - Nordeste', 'Paraíba', 'PB', 'Lagoa Seca', 1357),
('2508406', 25, 8406, '2 - Nordeste', 'Paraíba', 'PB', 'Lastro', 1358),
('2508505', 25, 8505, '2 - Nordeste', 'Paraíba', 'PB', 'Livramento', 1359),
('2508554', 25, 8554, '2 - Nordeste', 'Paraíba', 'PB', 'Logradouro', 1360),
('2508604', 25, 8604, '2 - Nordeste', 'Paraíba', 'PB', 'Lucena', 1361),
('2508703', 25, 8703, '2 - Nordeste', 'Paraíba', 'PB', 'Mãe d''Água', 1362),
('2508802', 25, 8802, '2 - Nordeste', 'Paraíba', 'PB', 'Malta', 1363),
('2508901', 25, 8901, '2 - Nordeste', 'Paraíba', 'PB', 'Mamanguape', 1364),
('2509008', 25, 9008, '2 - Nordeste', 'Paraíba', 'PB', 'Manaíra', 1365),
('2509057', 25, 9057, '2 - Nordeste', 'Paraíba', 'PB', 'Marcação', 1366),
('2509107', 25, 9107, '2 - Nordeste', 'Paraíba', 'PB', 'Mari', 1367),
('2509156', 25, 9156, '2 - Nordeste', 'Paraíba', 'PB', 'Marizópolis', 1368),
('2509206', 25, 9206, '2 - Nordeste', 'Paraíba', 'PB', 'Massaranduba', 1369),
('2509305', 25, 9305, '2 - Nordeste', 'Paraíba', 'PB', 'Mataraca', 1370),
('2509339', 25, 9339, '2 - Nordeste', 'Paraíba', 'PB', 'Matinhas', 1371),
('2509370', 25, 9370, '2 - Nordeste', 'Paraíba', 'PB', 'Mato Grosso', 1372),
('2509396', 25, 9396, '2 - Nordeste', 'Paraíba', 'PB', 'Maturéia', 1373),
('2509404', 25, 9404, '2 - Nordeste', 'Paraíba', 'PB', 'Mogeiro', 1374),
('2509503', 25, 9503, '2 - Nordeste', 'Paraíba', 'PB', 'Montadas', 1375),
('2509602', 25, 9602, '2 - Nordeste', 'Paraíba', 'PB', 'Monte Horebe', 1376),
('2509701', 25, 9701, '2 - Nordeste', 'Paraíba', 'PB', 'Monteiro', 1377),
('2509800', 25, 9800, '2 - Nordeste', 'Paraíba', 'PB', 'Mulungu', 1378),
('2509909', 25, 9909, '2 - Nordeste', 'Paraíba', 'PB', 'Natuba', 1379),
('2510006', 25, 10006, '2 - Nordeste', 'Paraíba', 'PB', 'Nazarezinho', 1380),
('2510105', 25, 10105, '2 - Nordeste', 'Paraíba', 'PB', 'Nova Floresta', 1381),
('2510204', 25, 10204, '2 - Nordeste', 'Paraíba', 'PB', 'Nova Olinda', 1382),
('2510303', 25, 10303, '2 - Nordeste', 'Paraíba', 'PB', 'Nova Palmeira', 1383),
('2510402', 25, 10402, '2 - Nordeste', 'Paraíba', 'PB', 'Olho d''Água', 1384),
('2510501', 25, 10501, '2 - Nordeste', 'Paraíba', 'PB', 'Olivedos', 1385),
('2510600', 25, 10600, '2 - Nordeste', 'Paraíba', 'PB', 'Ouro Velho', 1386),
('2510659', 25, 10659, '2 - Nordeste', 'Paraíba', 'PB', 'Parari', 1387),
('2510709', 25, 10709, '2 - Nordeste', 'Paraíba', 'PB', 'Passagem', 1388),
('2510808', 25, 10808, '2 - Nordeste', 'Paraíba', 'PB', 'Patos', 1389),
('2510907', 25, 10907, '2 - Nordeste', 'Paraíba', 'PB', 'Paulista', 1390),
('2511004', 25, 11004, '2 - Nordeste', 'Paraíba', 'PB', 'Pedra Branca', 1391),
('2511103', 25, 11103, '2 - Nordeste', 'Paraíba', 'PB', 'Pedra Lavrada', 1392),
('2511202', 25, 11202, '2 - Nordeste', 'Paraíba', 'PB', 'Pedras de Fogo', 1393),
('2511301', 25, 11301, '2 - Nordeste', 'Paraíba', 'PB', 'Piancó', 1394),
('2511400', 25, 11400, '2 - Nordeste', 'Paraíba', 'PB', 'Picuí', 1395),
('2511509', 25, 11509, '2 - Nordeste', 'Paraíba', 'PB', 'Pilar', 1396),
('2511608', 25, 11608, '2 - Nordeste', 'Paraíba', 'PB', 'Pilões', 1397),
('2511707', 25, 11707, '2 - Nordeste', 'Paraíba', 'PB', 'Pilõezinhos', 1398),
('2511806', 25, 11806, '2 - Nordeste', 'Paraíba', 'PB', 'Pirpirituba', 1399),
('2511905', 25, 11905, '2 - Nordeste', 'Paraíba', 'PB', 'Pitimbu', 1400),
('2512002', 25, 12002, '2 - Nordeste', 'Paraíba', 'PB', 'Pocinhos', 1401),
('2512036', 25, 12036, '2 - Nordeste', 'Paraíba', 'PB', 'Poço Dantas', 1402),
('2512077', 25, 12077, '2 - Nordeste', 'Paraíba', 'PB', 'Poço de José de Moura', 1403),
('2512101', 25, 12101, '2 - Nordeste', 'Paraíba', 'PB', 'Pombal', 1404),
('2512200', 25, 12200, '2 - Nordeste', 'Paraíba', 'PB', 'Prata', 1405),
('2512309', 25, 12309, '2 - Nordeste', 'Paraíba', 'PB', 'Princesa Isabel', 1406),
('2512408', 25, 12408, '2 - Nordeste', 'Paraíba', 'PB', 'Puxinanã', 1407),
('2512507', 25, 12507, '2 - Nordeste', 'Paraíba', 'PB', 'Queimadas', 1408),
('2512606', 25, 12606, '2 - Nordeste', 'Paraíba', 'PB', 'Quixabá', 1409),
('2512705', 25, 12705, '2 - Nordeste', 'Paraíba', 'PB', 'Remígio', 1410),
('2512721', 25, 12721, '2 - Nordeste', 'Paraíba', 'PB', 'Pedro Régis', 1411),
('2512747', 25, 12747, '2 - Nordeste', 'Paraíba', 'PB', 'Riachão', 1412),
('2512754', 25, 12754, '2 - Nordeste', 'Paraíba', 'PB', 'Riachão do Bacamarte', 1413),
('2512762', 25, 12762, '2 - Nordeste', 'Paraíba', 'PB', 'Riachão do Poço', 1414),
('2512788', 25, 12788, '2 - Nordeste', 'Paraíba', 'PB', 'Riacho de Santo Antônio', 1415),
('2512804', 25, 12804, '2 - Nordeste', 'Paraíba', 'PB', 'Riacho dos Cavalos', 1416),
('2512903', 25, 12903, '2 - Nordeste', 'Paraíba', 'PB', 'Rio Tinto', 1417),
('2513000', 25, 13000, '2 - Nordeste', 'Paraíba', 'PB', 'Salgadinho', 1418),
('2513109', 25, 13109, '2 - Nordeste', 'Paraíba', 'PB', 'Salgado de São Félix', 1419),
('2513158', 25, 13158, '2 - Nordeste', 'Paraíba', 'PB', 'Santa Cecília', 1420),
('2513208', 25, 13208, '2 - Nordeste', 'Paraíba', 'PB', 'Santa Cruz', 1421),
('2513307', 25, 13307, '2 - Nordeste', 'Paraíba', 'PB', 'Santa Helena', 1422),
('2513356', 25, 13356, '2 - Nordeste', 'Paraíba', 'PB', 'Santa Inês', 1423),
('2513406', 25, 13406, '2 - Nordeste', 'Paraíba', 'PB', 'Santa Luzia', 1424),
('2513505', 25, 13505, '2 - Nordeste', 'Paraíba', 'PB', 'Santana de Mangueira', 1425),
('2513604', 25, 13604, '2 - Nordeste', 'Paraíba', 'PB', 'Santana dos Garrotes', 1426),
('2513653', 25, 13653, '2 - Nordeste', 'Paraíba', 'PB', 'Joca Claudino', 1427),
('2513703', 25, 13703, '2 - Nordeste', 'Paraíba', 'PB', 'Santa Rita', 1428),
('2513802', 25, 13802, '2 - Nordeste', 'Paraíba', 'PB', 'Santa Teresinha', 1429),
('2513851', 25, 13851, '2 - Nordeste', 'Paraíba', 'PB', 'Santo André', 1430),
('2513901', 25, 13901, '2 - Nordeste', 'Paraíba', 'PB', 'São Bento', 1431),
('2513927', 25, 13927, '2 - Nordeste', 'Paraíba', 'PB', 'São Bentinho', 1432),
('2513943', 25, 13943, '2 - Nordeste', 'Paraíba', 'PB', 'São Domingos do Cariri', 1433),
('2513968', 25, 13968, '2 - Nordeste', 'Paraíba', 'PB', 'São Domingos', 1434),
('2513984', 25, 13984, '2 - Nordeste', 'Paraíba', 'PB', 'São Francisco', 1435),
('2514008', 25, 14008, '2 - Nordeste', 'Paraíba', 'PB', 'São João do Cariri', 1436),
('2514107', 25, 14107, '2 - Nordeste', 'Paraíba', 'PB', 'São João do Tigre', 1437),
('2514206', 25, 14206, '2 - Nordeste', 'Paraíba', 'PB', 'São José da Lagoa Tapada', 1438),
('2514305', 25, 14305, '2 - Nordeste', 'Paraíba', 'PB', 'São José de Caiana', 1439),
('2514404', 25, 14404, '2 - Nordeste', 'Paraíba', 'PB', 'São José de Espinharas', 1440),
('2514453', 25, 14453, '2 - Nordeste', 'Paraíba', 'PB', 'São José dos Ramos', 1441),
('2514503', 25, 14503, '2 - Nordeste', 'Paraíba', 'PB', 'São José de Piranhas', 1442),
('2514552', 25, 14552, '2 - Nordeste', 'Paraíba', 'PB', 'São José de Princesa', 1443),
('2514602', 25, 14602, '2 - Nordeste', 'Paraíba', 'PB', 'São José do Bonfim', 1444),
('2514651', 25, 14651, '2 - Nordeste', 'Paraíba', 'PB', 'São José do Brejo do Cruz', 1445),
('2514701', 25, 14701, '2 - Nordeste', 'Paraíba', 'PB', 'São José do Sabugi', 1446),
('2514800', 25, 14800, '2 - Nordeste', 'Paraíba', 'PB', 'São José dos Cordeiros', 1447),
('2514909', 25, 14909, '2 - Nordeste', 'Paraíba', 'PB', 'São Mamede', 1448),
('2515005', 25, 15005, '2 - Nordeste', 'Paraíba', 'PB', 'São Miguel de Taipu', 1449),
('2515104', 25, 15104, '2 - Nordeste', 'Paraíba', 'PB', 'São Sebastião de Lagoa de Roça', 1450),
('2515203', 25, 15203, '2 - Nordeste', 'Paraíba', 'PB', 'São Sebastião do Umbuzeiro', 1451),
('2515302', 25, 15302, '2 - Nordeste', 'Paraíba', 'PB', 'Sapé', 1452),
('2515401', 25, 15401, '2 - Nordeste', 'Paraíba', 'PB', 'São Vicente do Seridó', 1453),
('2515500', 25, 15500, '2 - Nordeste', 'Paraíba', 'PB', 'Serra Branca', 1454),
('2515609', 25, 15609, '2 - Nordeste', 'Paraíba', 'PB', 'Serra da Raiz', 1455),
('2515708', 25, 15708, '2 - Nordeste', 'Paraíba', 'PB', 'Serra Grande', 1456),
('2515807', 25, 15807, '2 - Nordeste', 'Paraíba', 'PB', 'Serra Redonda', 1457),
('2515906', 25, 15906, '2 - Nordeste', 'Paraíba', 'PB', 'Serraria', 1458),
('2515930', 25, 15930, '2 - Nordeste', 'Paraíba', 'PB', 'Sertãozinho', 1459),
('2515971', 25, 15971, '2 - Nordeste', 'Paraíba', 'PB', 'Sobrado', 1460),
('2516003', 25, 16003, '2 - Nordeste', 'Paraíba', 'PB', 'Solânea', 1461),
('2516102', 25, 16102, '2 - Nordeste', 'Paraíba', 'PB', 'Soledade', 1462),
('2516151', 25, 16151, '2 - Nordeste', 'Paraíba', 'PB', 'Sossêgo', 1463),
('2516201', 25, 16201, '2 - Nordeste', 'Paraíba', 'PB', 'Sousa', 1464),
('2516300', 25, 16300, '2 - Nordeste', 'Paraíba', 'PB', 'Sumé', 1465),
('2516409', 25, 16409, '2 - Nordeste', 'Paraíba', 'PB', 'Tacima', 1466),
('2516508', 25, 16508, '2 - Nordeste', 'Paraíba', 'PB', 'Taperoá', 1467),
('2516607', 25, 16607, '2 - Nordeste', 'Paraíba', 'PB', 'Tavares', 1468),
('2516706', 25, 16706, '2 - Nordeste', 'Paraíba', 'PB', 'Teixeira', 1469),
('2516755', 25, 16755, '2 - Nordeste', 'Paraíba', 'PB', 'Tenório', 1470),
('2516805', 25, 16805, '2 - Nordeste', 'Paraíba', 'PB', 'Triunfo', 1471),
('2516904', 25, 16904, '2 - Nordeste', 'Paraíba', 'PB', 'Uiraúna', 1472),
('2517001', 25, 17001, '2 - Nordeste', 'Paraíba', 'PB', 'Umbuzeiro', 1473),
('2517100', 25, 17100, '2 - Nordeste', 'Paraíba', 'PB', 'Várzea', 1474),
('2517209', 25, 17209, '2 - Nordeste', 'Paraíba', 'PB', 'Vieirópolis', 1475),
('2517407', 25, 17407, '2 - Nordeste', 'Paraíba', 'PB', 'Zabelê', 1476),
('2600054', 26, 54, '2 - Nordeste', 'Pernambuco', 'PE', 'Abreu e Lima', 1477),
('2600104', 26, 104, '2 - Nordeste', 'Pernambuco', 'PE', 'Afogados da Ingazeira', 1478),
('2600203', 26, 203, '2 - Nordeste', 'Pernambuco', 'PE', 'Afrânio', 1479),
('2600302', 26, 302, '2 - Nordeste', 'Pernambuco', 'PE', 'Agrestina', 1480),
('2600401', 26, 401, '2 - Nordeste', 'Pernambuco', 'PE', 'Água Preta', 1481),
('2600500', 26, 500, '2 - Nordeste', 'Pernambuco', 'PE', 'Águas Belas', 1482),
('2600609', 26, 609, '2 - Nordeste', 'Pernambuco', 'PE', 'Alagoinha', 1483),
('2600708', 26, 708, '2 - Nordeste', 'Pernambuco', 'PE', 'Aliança', 1484),
('2600807', 26, 807, '2 - Nordeste', 'Pernambuco', 'PE', 'Altinho', 1485),
('2600906', 26, 906, '2 - Nordeste', 'Pernambuco', 'PE', 'Amaraji', 1486),
('2601003', 26, 1003, '2 - Nordeste', 'Pernambuco', 'PE', 'Angelim', 1487),
('2601052', 26, 1052, '2 - Nordeste', 'Pernambuco', 'PE', 'Araçoiaba', 1488),
('2601102', 26, 1102, '2 - Nordeste', 'Pernambuco', 'PE', 'Araripina', 1489),
('2601201', 26, 1201, '2 - Nordeste', 'Pernambuco', 'PE', 'Arcoverde', 1490),
('2601300', 26, 1300, '2 - Nordeste', 'Pernambuco', 'PE', 'Barra de Guabiraba', 1491),
('2601409', 26, 1409, '2 - Nordeste', 'Pernambuco', 'PE', 'Barreiros', 1492),
('2601508', 26, 1508, '2 - Nordeste', 'Pernambuco', 'PE', 'Belém de Maria', 1493),
('2601607', 26, 1607, '2 - Nordeste', 'Pernambuco', 'PE', 'Belém do São Francisco', 1494),
('2601706', 26, 1706, '2 - Nordeste', 'Pernambuco', 'PE', 'Belo Jardim', 1495),
('2601805', 26, 1805, '2 - Nordeste', 'Pernambuco', 'PE', 'Betânia', 1496),
('2601904', 26, 1904, '2 - Nordeste', 'Pernambuco', 'PE', 'Bezerros', 1497),
('2602001', 26, 2001, '2 - Nordeste', 'Pernambuco', 'PE', 'Bodocó', 1498),
('2602100', 26, 2100, '2 - Nordeste', 'Pernambuco', 'PE', 'Bom Conselho', 1499),
('2602209', 26, 2209, '2 - Nordeste', 'Pernambuco', 'PE', 'Bom Jardim', 1500),
('2602308', 26, 2308, '2 - Nordeste', 'Pernambuco', 'PE', 'Bonito', 1501),
('2602407', 26, 2407, '2 - Nordeste', 'Pernambuco', 'PE', 'Brejão', 1502),
('2602506', 26, 2506, '2 - Nordeste', 'Pernambuco', 'PE', 'Brejinho', 1503),
('2602605', 26, 2605, '2 - Nordeste', 'Pernambuco', 'PE', 'Brejo da Madre de Deus', 1504),
('2602704', 26, 2704, '2 - Nordeste', 'Pernambuco', 'PE', 'Buenos Aires', 1505),
('2602803', 26, 2803, '2 - Nordeste', 'Pernambuco', 'PE', 'Buíque', 1506),
('2602902', 26, 2902, '2 - Nordeste', 'Pernambuco', 'PE', 'Cabo de Santo Agostinho', 1507),
('2603009', 26, 3009, '2 - Nordeste', 'Pernambuco', 'PE', 'Cabrobó', 1508),
('2603108', 26, 3108, '2 - Nordeste', 'Pernambuco', 'PE', 'Cachoeirinha', 1509),
('2603207', 26, 3207, '2 - Nordeste', 'Pernambuco', 'PE', 'Caetés', 1510),
('2603306', 26, 3306, '2 - Nordeste', 'Pernambuco', 'PE', 'Calçado', 1511),
('2603405', 26, 3405, '2 - Nordeste', 'Pernambuco', 'PE', 'Calumbi', 1512),
('2603454', 26, 3454, '2 - Nordeste', 'Pernambuco', 'PE', 'Camaragibe', 1513),
('2603504', 26, 3504, '2 - Nordeste', 'Pernambuco', 'PE', 'Camocim de São Félix', 1514),
('2603603', 26, 3603, '2 - Nordeste', 'Pernambuco', 'PE', 'Camutanga', 1515),
('2603702', 26, 3702, '2 - Nordeste', 'Pernambuco', 'PE', 'Canhotinho', 1516),
('2603801', 26, 3801, '2 - Nordeste', 'Pernambuco', 'PE', 'Capoeiras', 1517),
('2603900', 26, 3900, '2 - Nordeste', 'Pernambuco', 'PE', 'Carnaíba', 1518),
('2603926', 26, 3926, '2 - Nordeste', 'Pernambuco', 'PE', 'Carnaubeira da Penha', 1519),
('2604007', 26, 4007, '2 - Nordeste', 'Pernambuco', 'PE', 'Carpina', 1520),
('2604106', 26, 4106, '2 - Nordeste', 'Pernambuco', 'PE', 'Caruaru', 1521),
('2604155', 26, 4155, '2 - Nordeste', 'Pernambuco', 'PE', 'Casinhas', 1522),
('2604205', 26, 4205, '2 - Nordeste', 'Pernambuco', 'PE', 'Catende', 1523),
('2604304', 26, 4304, '2 - Nordeste', 'Pernambuco', 'PE', 'Cedro', 1524),
('2604403', 26, 4403, '2 - Nordeste', 'Pernambuco', 'PE', 'Chã de Alegria', 1525),
('2604502', 26, 4502, '2 - Nordeste', 'Pernambuco', 'PE', 'Chã Grande', 1526),
('2604601', 26, 4601, '2 - Nordeste', 'Pernambuco', 'PE', 'Condado', 1527),
('2604700', 26, 4700, '2 - Nordeste', 'Pernambuco', 'PE', 'Correntes', 1528),
('2604809', 26, 4809, '2 - Nordeste', 'Pernambuco', 'PE', 'Cortês', 1529),
('2604908', 26, 4908, '2 - Nordeste', 'Pernambuco', 'PE', 'Cumaru', 1530),
('2605004', 26, 5004, '2 - Nordeste', 'Pernambuco', 'PE', 'Cupira', 1531),
('2605103', 26, 5103, '2 - Nordeste', 'Pernambuco', 'PE', 'Custódia', 1532),
('2605152', 26, 5152, '2 - Nordeste', 'Pernambuco', 'PE', 'Dormentes', 1533),
('2605202', 26, 5202, '2 - Nordeste', 'Pernambuco', 'PE', 'Escada', 1534),
('2605301', 26, 5301, '2 - Nordeste', 'Pernambuco', 'PE', 'Exu', 1535),
('2605400', 26, 5400, '2 - Nordeste', 'Pernambuco', 'PE', 'Feira Nova', 1536),
('2605459', 26, 5459, '2 - Nordeste', 'Pernambuco', 'PE', 'Fernando de Noronha', 1537),
('2605509', 26, 5509, '2 - Nordeste', 'Pernambuco', 'PE', 'Ferreiros', 1538),
('2605608', 26, 5608, '2 - Nordeste', 'Pernambuco', 'PE', 'Flores', 1539),
('2605707', 26, 5707, '2 - Nordeste', 'Pernambuco', 'PE', 'Floresta', 1540),
('2605806', 26, 5806, '2 - Nordeste', 'Pernambuco', 'PE', 'Frei Miguelinho', 1541),
('2605905', 26, 5905, '2 - Nordeste', 'Pernambuco', 'PE', 'Gameleira', 1542),
('2606002', 26, 6002, '2 - Nordeste', 'Pernambuco', 'PE', 'Garanhuns', 1543),
('2606101', 26, 6101, '2 - Nordeste', 'Pernambuco', 'PE', 'Glória do Goitá', 1544),
('2606200', 26, 6200, '2 - Nordeste', 'Pernambuco', 'PE', 'Goiana', 1545),
('2606309', 26, 6309, '2 - Nordeste', 'Pernambuco', 'PE', 'Granito', 1546),
('2606408', 26, 6408, '2 - Nordeste', 'Pernambuco', 'PE', 'Gravatá', 1547),
('2606507', 26, 6507, '2 - Nordeste', 'Pernambuco', 'PE', 'Iati', 1548),
('2606606', 26, 6606, '2 - Nordeste', 'Pernambuco', 'PE', 'Ibimirim', 1549),
('2606705', 26, 6705, '2 - Nordeste', 'Pernambuco', 'PE', 'Ibirajuba', 1550),
('2606804', 26, 6804, '2 - Nordeste', 'Pernambuco', 'PE', 'Igarassu', 1551),
('2606903', 26, 6903, '2 - Nordeste', 'Pernambuco', 'PE', 'Iguaracy', 1552),
('2607000', 26, 7000, '2 - Nordeste', 'Pernambuco', 'PE', 'Inajá', 1553),
('2607109', 26, 7109, '2 - Nordeste', 'Pernambuco', 'PE', 'Ingazeira', 1554),
('2607208', 26, 7208, '2 - Nordeste', 'Pernambuco', 'PE', 'Ipojuca', 1555),
('2607307', 26, 7307, '2 - Nordeste', 'Pernambuco', 'PE', 'Ipubi', 1556),
('2607406', 26, 7406, '2 - Nordeste', 'Pernambuco', 'PE', 'Itacuruba', 1557),
('2607505', 26, 7505, '2 - Nordeste', 'Pernambuco', 'PE', 'Itaíba', 1558),
('2607604', 26, 7604, '2 - Nordeste', 'Pernambuco', 'PE', 'Ilha de Itamaracá', 1559),
('2607653', 26, 7653, '2 - Nordeste', 'Pernambuco', 'PE', 'Itambé', 1560),
('2607703', 26, 7703, '2 - Nordeste', 'Pernambuco', 'PE', 'Itapetim', 1561),
('2607752', 26, 7752, '2 - Nordeste', 'Pernambuco', 'PE', 'Itapissuma', 1562),
('2607802', 26, 7802, '2 - Nordeste', 'Pernambuco', 'PE', 'Itaquitinga', 1563),
('2607901', 26, 7901, '2 - Nordeste', 'Pernambuco', 'PE', 'Jaboatão dos Guararapes', 1564),
('2607950', 26, 7950, '2 - Nordeste', 'Pernambuco', 'PE', 'Jaqueira', 1565),
('2608008', 26, 8008, '2 - Nordeste', 'Pernambuco', 'PE', 'Jataúba', 1566),
('2608057', 26, 8057, '2 - Nordeste', 'Pernambuco', 'PE', 'Jatobá', 1567),
('2608107', 26, 8107, '2 - Nordeste', 'Pernambuco', 'PE', 'João Alfredo', 1568),
('2608206', 26, 8206, '2 - Nordeste', 'Pernambuco', 'PE', 'Joaquim Nabuco', 1569),
('2608255', 26, 8255, '2 - Nordeste', 'Pernambuco', 'PE', 'Jucati', 1570),
('2608305', 26, 8305, '2 - Nordeste', 'Pernambuco', 'PE', 'Jupi', 1571),
('2608404', 26, 8404, '2 - Nordeste', 'Pernambuco', 'PE', 'Jurema', 1572),
('2608453', 26, 8453, '2 - Nordeste', 'Pernambuco', 'PE', 'Lagoa do Carro', 1573),
('2608503', 26, 8503, '2 - Nordeste', 'Pernambuco', 'PE', 'Lagoa de Itaenga', 1574),
('2608602', 26, 8602, '2 - Nordeste', 'Pernambuco', 'PE', 'Lagoa do Ouro', 1575),
('2608701', 26, 8701, '2 - Nordeste', 'Pernambuco', 'PE', 'Lagoa dos Gatos', 1576),
('2608750', 26, 8750, '2 - Nordeste', 'Pernambuco', 'PE', 'Lagoa Grande', 1577),
('2608800', 26, 8800, '2 - Nordeste', 'Pernambuco', 'PE', 'Lajedo', 1578),
('2608909', 26, 8909, '2 - Nordeste', 'Pernambuco', 'PE', 'Limoeiro', 1579),
('2609006', 26, 9006, '2 - Nordeste', 'Pernambuco', 'PE', 'Macaparana', 1580),
('2609105', 26, 9105, '2 - Nordeste', 'Pernambuco', 'PE', 'Machados', 1581),
('2609154', 26, 9154, '2 - Nordeste', 'Pernambuco', 'PE', 'Manari', 1582),
('2609204', 26, 9204, '2 - Nordeste', 'Pernambuco', 'PE', 'Maraial', 1583),
('2609303', 26, 9303, '2 - Nordeste', 'Pernambuco', 'PE', 'Mirandiba', 1584),
('2609402', 26, 9402, '2 - Nordeste', 'Pernambuco', 'PE', 'Moreno', 1585),
('2609501', 26, 9501, '2 - Nordeste', 'Pernambuco', 'PE', 'Nazaré da Mata', 1586),
('2609600', 26, 9600, '2 - Nordeste', 'Pernambuco', 'PE', 'Olinda', 1587),
('2609709', 26, 9709, '2 - Nordeste', 'Pernambuco', 'PE', 'Orobó', 1588),
('2609808', 26, 9808, '2 - Nordeste', 'Pernambuco', 'PE', 'Orocó', 1589),
('2609907', 26, 9907, '2 - Nordeste', 'Pernambuco', 'PE', 'Ouricuri', 1590),
('2610004', 26, 10004, '2 - Nordeste', 'Pernambuco', 'PE', 'Palmares', 1591),
('2610103', 26, 10103, '2 - Nordeste', 'Pernambuco', 'PE', 'Palmeirina', 1592),
('2610202', 26, 10202, '2 - Nordeste', 'Pernambuco', 'PE', 'Panelas', 1593),
('2610301', 26, 10301, '2 - Nordeste', 'Pernambuco', 'PE', 'Paranatama', 1594),
('2610400', 26, 10400, '2 - Nordeste', 'Pernambuco', 'PE', 'Parnamirim', 1595),
('2610509', 26, 10509, '2 - Nordeste', 'Pernambuco', 'PE', 'Passira', 1596),
('2610608', 26, 10608, '2 - Nordeste', 'Pernambuco', 'PE', 'Paudalho', 1597),
('2610707', 26, 10707, '2 - Nordeste', 'Pernambuco', 'PE', 'Paulista', 1598),
('2610806', 26, 10806, '2 - Nordeste', 'Pernambuco', 'PE', 'Pedra', 1599),
('2610905', 26, 10905, '2 - Nordeste', 'Pernambuco', 'PE', 'Pesqueira', 1600),
('2611002', 26, 11002, '2 - Nordeste', 'Pernambuco', 'PE', 'Petrolândia', 1601),
('2611101', 26, 11101, '2 - Nordeste', 'Pernambuco', 'PE', 'Petrolina', 1602),
('2611200', 26, 11200, '2 - Nordeste', 'Pernambuco', 'PE', 'Poção', 1603),
('2611309', 26, 11309, '2 - Nordeste', 'Pernambuco', 'PE', 'Pombos', 1604),
('2611408', 26, 11408, '2 - Nordeste', 'Pernambuco', 'PE', 'Primavera', 1605),
('2611507', 26, 11507, '2 - Nordeste', 'Pernambuco', 'PE', 'Quipapá', 1606),
('2611533', 26, 11533, '2 - Nordeste', 'Pernambuco', 'PE', 'Quixaba', 1607),
('2611606', 26, 11606, '2 - Nordeste', 'Pernambuco', 'PE', 'Recife', 1608),
('2611705', 26, 11705, '2 - Nordeste', 'Pernambuco', 'PE', 'Riacho das Almas', 1609),
('2611804', 26, 11804, '2 - Nordeste', 'Pernambuco', 'PE', 'Ribeirão', 1610),
('2611903', 26, 11903, '2 - Nordeste', 'Pernambuco', 'PE', 'Rio Formoso', 1611),
('2612000', 26, 12000, '2 - Nordeste', 'Pernambuco', 'PE', 'Sairé', 1612),
('2612109', 26, 12109, '2 - Nordeste', 'Pernambuco', 'PE', 'Salgadinho', 1613),
('2612208', 26, 12208, '2 - Nordeste', 'Pernambuco', 'PE', 'Salgueiro', 1614),
('2612307', 26, 12307, '2 - Nordeste', 'Pernambuco', 'PE', 'Saloá', 1615),
('2612406', 26, 12406, '2 - Nordeste', 'Pernambuco', 'PE', 'Sanharó', 1616),
('2612455', 26, 12455, '2 - Nordeste', 'Pernambuco', 'PE', 'Santa Cruz', 1617),
('2612471', 26, 12471, '2 - Nordeste', 'Pernambuco', 'PE', 'Santa Cruz da Baixa Verde', 1618),
('2612505', 26, 12505, '2 - Nordeste', 'Pernambuco', 'PE', 'Santa Cruz do Capibaribe', 1619),
('2612554', 26, 12554, '2 - Nordeste', 'Pernambuco', 'PE', 'Santa Filomena', 1620),
('2612604', 26, 12604, '2 - Nordeste', 'Pernambuco', 'PE', 'Santa Maria da Boa Vista', 1621),
('2612703', 26, 12703, '2 - Nordeste', 'Pernambuco', 'PE', 'Santa Maria do Cambucá', 1622),
('2612802', 26, 12802, '2 - Nordeste', 'Pernambuco', 'PE', 'Santa Terezinha', 1623),
('2612901', 26, 12901, '2 - Nordeste', 'Pernambuco', 'PE', 'São Benedito do Sul', 1624),
('2613008', 26, 13008, '2 - Nordeste', 'Pernambuco', 'PE', 'São Bento do Una', 1625),
('2613107', 26, 13107, '2 - Nordeste', 'Pernambuco', 'PE', 'São Caitano', 1626),
('2613206', 26, 13206, '2 - Nordeste', 'Pernambuco', 'PE', 'São João', 1627),
('2613305', 26, 13305, '2 - Nordeste', 'Pernambuco', 'PE', 'São Joaquim do Monte', 1628),
('2613404', 26, 13404, '2 - Nordeste', 'Pernambuco', 'PE', 'São José da Coroa Grande', 1629),
('2613503', 26, 13503, '2 - Nordeste', 'Pernambuco', 'PE', 'São José do Belmonte', 1630),
('2613602', 26, 13602, '2 - Nordeste', 'Pernambuco', 'PE', 'São José do Egito', 1631),
('2613701', 26, 13701, '2 - Nordeste', 'Pernambuco', 'PE', 'São Lourenço da Mata', 1632),
('2613800', 26, 13800, '2 - Nordeste', 'Pernambuco', 'PE', 'São Vicente Ferrer', 1633),
('2613909', 26, 13909, '2 - Nordeste', 'Pernambuco', 'PE', 'Serra Talhada', 1634),
('2614006', 26, 14006, '2 - Nordeste', 'Pernambuco', 'PE', 'Serrita', 1635),
('2614105', 26, 14105, '2 - Nordeste', 'Pernambuco', 'PE', 'Sertânia', 1636),
('2614204', 26, 14204, '2 - Nordeste', 'Pernambuco', 'PE', 'Sirinhaém', 1637),
('2614303', 26, 14303, '2 - Nordeste', 'Pernambuco', 'PE', 'Moreilândia', 1638),
('2614402', 26, 14402, '2 - Nordeste', 'Pernambuco', 'PE', 'Solidão', 1639),
('2614501', 26, 14501, '2 - Nordeste', 'Pernambuco', 'PE', 'Surubim', 1640),
('2614600', 26, 14600, '2 - Nordeste', 'Pernambuco', 'PE', 'Tabira', 1641),
('2614709', 26, 14709, '2 - Nordeste', 'Pernambuco', 'PE', 'Tacaimbó', 1642),
('2614808', 26, 14808, '2 - Nordeste', 'Pernambuco', 'PE', 'Tacaratu', 1643),
('2614857', 26, 14857, '2 - Nordeste', 'Pernambuco', 'PE', 'Tamandaré', 1644),
('2615003', 26, 15003, '2 - Nordeste', 'Pernambuco', 'PE', 'Taquaritinga do Norte', 1645),
('2615102', 26, 15102, '2 - Nordeste', 'Pernambuco', 'PE', 'Terezinha', 1646),
('2615201', 26, 15201, '2 - Nordeste', 'Pernambuco', 'PE', 'Terra Nova', 1647),
('2615300', 26, 15300, '2 - Nordeste', 'Pernambuco', 'PE', 'Timbaúba', 1648),
('2615409', 26, 15409, '2 - Nordeste', 'Pernambuco', 'PE', 'Toritama', 1649),
('2615508', 26, 15508, '2 - Nordeste', 'Pernambuco', 'PE', 'Tracunhaém', 1650),
('2615607', 26, 15607, '2 - Nordeste', 'Pernambuco', 'PE', 'Trindade', 1651),
('2615706', 26, 15706, '2 - Nordeste', 'Pernambuco', 'PE', 'Triunfo', 1652),
('2615805', 26, 15805, '2 - Nordeste', 'Pernambuco', 'PE', 'Tupanatinga', 1653),
('2615904', 26, 15904, '2 - Nordeste', 'Pernambuco', 'PE', 'Tuparetama', 1654),
('2616001', 26, 16001, '2 - Nordeste', 'Pernambuco', 'PE', 'Venturosa', 1655),
('2616100', 26, 16100, '2 - Nordeste', 'Pernambuco', 'PE', 'Verdejante', 1656),
('2616183', 26, 16183, '2 - Nordeste', 'Pernambuco', 'PE', 'Vertente do Lério', 1657),
('2616209', 26, 16209, '2 - Nordeste', 'Pernambuco', 'PE', 'Vertentes', 1658),
('2616308', 26, 16308, '2 - Nordeste', 'Pernambuco', 'PE', 'Vicência', 1659),
('2616407', 26, 16407, '2 - Nordeste', 'Pernambuco', 'PE', 'Vitória de Santo Antão', 1660),
('2616506', 26, 16506, '2 - Nordeste', 'Pernambuco', 'PE', 'Xexéu', 1661),
('2700102', 27, 102, '2 - Nordeste', 'Alagoas', 'AL', 'Água Branca', 1662),
('2700201', 27, 201, '2 - Nordeste', 'Alagoas', 'AL', 'Anadia', 1663),
('2700300', 27, 300, '2 - Nordeste', 'Alagoas', 'AL', 'Arapiraca', 1664),
('2700409', 27, 409, '2 - Nordeste', 'Alagoas', 'AL', 'Atalaia', 1665),
('2700508', 27, 508, '2 - Nordeste', 'Alagoas', 'AL', 'Barra de Santo Antônio', 1666),
('2700607', 27, 607, '2 - Nordeste', 'Alagoas', 'AL', 'Barra de São Miguel', 1667),
('2700706', 27, 706, '2 - Nordeste', 'Alagoas', 'AL', 'Batalha', 1668),
('2700805', 27, 805, '2 - Nordeste', 'Alagoas', 'AL', 'Belém', 1669),
('2700904', 27, 904, '2 - Nordeste', 'Alagoas', 'AL', 'Belo Monte', 1670),
('2701001', 27, 1001, '2 - Nordeste', 'Alagoas', 'AL', 'Boca da Mata', 1671),
('2701100', 27, 1100, '2 - Nordeste', 'Alagoas', 'AL', 'Branquinha', 1672),
('2701209', 27, 1209, '2 - Nordeste', 'Alagoas', 'AL', 'Cacimbinhas', 1673),
('2701308', 27, 1308, '2 - Nordeste', 'Alagoas', 'AL', 'Cajueiro', 1674),
('2701357', 27, 1357, '2 - Nordeste', 'Alagoas', 'AL', 'Campestre', 1675),
('2701407', 27, 1407, '2 - Nordeste', 'Alagoas', 'AL', 'Campo Alegre', 1676),
('2701506', 27, 1506, '2 - Nordeste', 'Alagoas', 'AL', 'Campo Grande', 1677),
('2701605', 27, 1605, '2 - Nordeste', 'Alagoas', 'AL', 'Canapi', 1678),
('2701704', 27, 1704, '2 - Nordeste', 'Alagoas', 'AL', 'Capela', 1679),
('2701803', 27, 1803, '2 - Nordeste', 'Alagoas', 'AL', 'Carneiros', 1680),
('2701902', 27, 1902, '2 - Nordeste', 'Alagoas', 'AL', 'Chã Preta', 1681),
('2702009', 27, 2009, '2 - Nordeste', 'Alagoas', 'AL', 'Coité do Nóia', 1682),
('2702108', 27, 2108, '2 - Nordeste', 'Alagoas', 'AL', 'Colônia Leopoldina', 1683),
('2702207', 27, 2207, '2 - Nordeste', 'Alagoas', 'AL', 'Coqueiro Seco', 1684),
('2702306', 27, 2306, '2 - Nordeste', 'Alagoas', 'AL', 'Coruripe', 1685),
('2702355', 27, 2355, '2 - Nordeste', 'Alagoas', 'AL', 'Craíbas', 1686),
('2702405', 27, 2405, '2 - Nordeste', 'Alagoas', 'AL', 'Delmiro Gouveia', 1687),
('2702504', 27, 2504, '2 - Nordeste', 'Alagoas', 'AL', 'Dois Riachos', 1688),
('2702553', 27, 2553, '2 - Nordeste', 'Alagoas', 'AL', 'Estrela de Alagoas', 1689),
('2702603', 27, 2603, '2 - Nordeste', 'Alagoas', 'AL', 'Feira Grande', 1690),
('2702702', 27, 2702, '2 - Nordeste', 'Alagoas', 'AL', 'Feliz Deserto', 1691),
('2702801', 27, 2801, '2 - Nordeste', 'Alagoas', 'AL', 'Flexeiras', 1692),
('2702900', 27, 2900, '2 - Nordeste', 'Alagoas', 'AL', 'Girau do Ponciano', 1693),
('2703007', 27, 3007, '2 - Nordeste', 'Alagoas', 'AL', 'Ibateguara', 1694),
('2703106', 27, 3106, '2 - Nordeste', 'Alagoas', 'AL', 'Igaci', 1695),
('2703205', 27, 3205, '2 - Nordeste', 'Alagoas', 'AL', 'Igreja Nova', 1696),
('2703304', 27, 3304, '2 - Nordeste', 'Alagoas', 'AL', 'Inhapi', 1697),
('2703403', 27, 3403, '2 - Nordeste', 'Alagoas', 'AL', 'Jacaré dos Homens', 1698),
('2703502', 27, 3502, '2 - Nordeste', 'Alagoas', 'AL', 'Jacuípe', 1699),
('2703601', 27, 3601, '2 - Nordeste', 'Alagoas', 'AL', 'Japaratinga', 1700),
('2703700', 27, 3700, '2 - Nordeste', 'Alagoas', 'AL', 'Jaramataia', 1701),
('2703759', 27, 3759, '2 - Nordeste', 'Alagoas', 'AL', 'Jequiá da Praia', 1702),
('2703809', 27, 3809, '2 - Nordeste', 'Alagoas', 'AL', 'Joaquim Gomes', 1703),
('2703908', 27, 3908, '2 - Nordeste', 'Alagoas', 'AL', 'Jundiá', 1704),
('2704005', 27, 4005, '2 - Nordeste', 'Alagoas', 'AL', 'Junqueiro', 1705),
('2704104', 27, 4104, '2 - Nordeste', 'Alagoas', 'AL', 'Lagoa da Canoa', 1706),
('2704203', 27, 4203, '2 - Nordeste', 'Alagoas', 'AL', 'Limoeiro de Anadia', 1707),
('2704302', 27, 4302, '2 - Nordeste', 'Alagoas', 'AL', 'Maceió', 1708),
('2704401', 27, 4401, '2 - Nordeste', 'Alagoas', 'AL', 'Major Isidoro', 1709),
('2704500', 27, 4500, '2 - Nordeste', 'Alagoas', 'AL', 'Maragogi', 1710),
('2704609', 27, 4609, '2 - Nordeste', 'Alagoas', 'AL', 'Maravilha', 1711),
('2704708', 27, 4708, '2 - Nordeste', 'Alagoas', 'AL', 'Marechal Deodoro', 1712),
('2704807', 27, 4807, '2 - Nordeste', 'Alagoas', 'AL', 'Maribondo', 1713),
('2704906', 27, 4906, '2 - Nordeste', 'Alagoas', 'AL', 'Mar Vermelho', 1714),
('2705002', 27, 5002, '2 - Nordeste', 'Alagoas', 'AL', 'Mata Grande', 1715),
('2705101', 27, 5101, '2 - Nordeste', 'Alagoas', 'AL', 'Matriz de Camaragibe', 1716),
('2705200', 27, 5200, '2 - Nordeste', 'Alagoas', 'AL', 'Messias', 1717),
('2705309', 27, 5309, '2 - Nordeste', 'Alagoas', 'AL', 'Minador do Negrão', 1718),
('2705408', 27, 5408, '2 - Nordeste', 'Alagoas', 'AL', 'Monteirópolis', 1719),
('2705507', 27, 5507, '2 - Nordeste', 'Alagoas', 'AL', 'Murici', 1720),
('2705606', 27, 5606, '2 - Nordeste', 'Alagoas', 'AL', 'Novo Lino', 1721),
('2705705', 27, 5705, '2 - Nordeste', 'Alagoas', 'AL', 'Olho d''Água das Flores', 1722),
('2705804', 27, 5804, '2 - Nordeste', 'Alagoas', 'AL', 'Olho d''Água do Casado', 1723),
('2705903', 27, 5903, '2 - Nordeste', 'Alagoas', 'AL', 'Olho d''Água Grande', 1724),
('2706000', 27, 6000, '2 - Nordeste', 'Alagoas', 'AL', 'Olivença', 1725),
('2706109', 27, 6109, '2 - Nordeste', 'Alagoas', 'AL', 'Ouro Branco', 1726),
('2706208', 27, 6208, '2 - Nordeste', 'Alagoas', 'AL', 'Palestina', 1727),
('2706307', 27, 6307, '2 - Nordeste', 'Alagoas', 'AL', 'Palmeira dos Índios', 1728),
('2706406', 27, 6406, '2 - Nordeste', 'Alagoas', 'AL', 'Pão de Açúcar', 1729),
('2706422', 27, 6422, '2 - Nordeste', 'Alagoas', 'AL', 'Pariconha', 1730),
('2706448', 27, 6448, '2 - Nordeste', 'Alagoas', 'AL', 'Paripueira', 1731),
('2706505', 27, 6505, '2 - Nordeste', 'Alagoas', 'AL', 'Passo de Camaragibe', 1732),
('2706604', 27, 6604, '2 - Nordeste', 'Alagoas', 'AL', 'Paulo Jacinto', 1733),
('2706703', 27, 6703, '2 - Nordeste', 'Alagoas', 'AL', 'Penedo', 1734),
('2706802', 27, 6802, '2 - Nordeste', 'Alagoas', 'AL', 'Piaçabuçu', 1735),
('2706901', 27, 6901, '2 - Nordeste', 'Alagoas', 'AL', 'Pilar', 1736),
('2707008', 27, 7008, '2 - Nordeste', 'Alagoas', 'AL', 'Pindoba', 1737),
('2707107', 27, 7107, '2 - Nordeste', 'Alagoas', 'AL', 'Piranhas', 1738),
('2707206', 27, 7206, '2 - Nordeste', 'Alagoas', 'AL', 'Poço das Trincheiras', 1739),
('2707305', 27, 7305, '2 - Nordeste', 'Alagoas', 'AL', 'Porto Calvo', 1740),
('2707404', 27, 7404, '2 - Nordeste', 'Alagoas', 'AL', 'Porto de Pedras', 1741),
('2707503', 27, 7503, '2 - Nordeste', 'Alagoas', 'AL', 'Porto Real do Colégio', 1742),
('2707602', 27, 7602, '2 - Nordeste', 'Alagoas', 'AL', 'Quebrangulo', 1743),
('2707701', 27, 7701, '2 - Nordeste', 'Alagoas', 'AL', 'Rio Largo', 1744),
('2707800', 27, 7800, '2 - Nordeste', 'Alagoas', 'AL', 'Roteiro', 1745),
('2707909', 27, 7909, '2 - Nordeste', 'Alagoas', 'AL', 'Santa Luzia do Norte', 1746),
('2708006', 27, 8006, '2 - Nordeste', 'Alagoas', 'AL', 'Santana do Ipanema', 1747),
('2708105', 27, 8105, '2 - Nordeste', 'Alagoas', 'AL', 'Santana do Mundaú', 1748),
('2708204', 27, 8204, '2 - Nordeste', 'Alagoas', 'AL', 'São Brás', 1749),
('2708303', 27, 8303, '2 - Nordeste', 'Alagoas', 'AL', 'São José da Laje', 1750),
('2708402', 27, 8402, '2 - Nordeste', 'Alagoas', 'AL', 'São José da Tapera', 1751),
('2708501', 27, 8501, '2 - Nordeste', 'Alagoas', 'AL', 'São Luís do Quitunde', 1752),
('2708600', 27, 8600, '2 - Nordeste', 'Alagoas', 'AL', 'São Miguel dos Campos', 1753),
('2708709', 27, 8709, '2 - Nordeste', 'Alagoas', 'AL', 'São Miguel dos Milagres', 1754),
('2708808', 27, 8808, '2 - Nordeste', 'Alagoas', 'AL', 'São Sebastião', 1755),
('2708907', 27, 8907, '2 - Nordeste', 'Alagoas', 'AL', 'Satuba', 1756),
('2708956', 27, 8956, '2 - Nordeste', 'Alagoas', 'AL', 'Senador Rui Palmeira', 1757),
('2709004', 27, 9004, '2 - Nordeste', 'Alagoas', 'AL', 'Tanque d''Arca', 1758),
('2709103', 27, 9103, '2 - Nordeste', 'Alagoas', 'AL', 'Taquarana', 1759),
('2709152', 27, 9152, '2 - Nordeste', 'Alagoas', 'AL', 'Teotônio Vilela', 1760),
('2709202', 27, 9202, '2 - Nordeste', 'Alagoas', 'AL', 'Traipu', 1761),
('2709301', 27, 9301, '2 - Nordeste', 'Alagoas', 'AL', 'União dos Palmares', 1762),
('2709400', 27, 9400, '2 - Nordeste', 'Alagoas', 'AL', 'Viçosa', 1763),
('2800100', 28, 100, '2 - Nordeste', 'Sergipe', 'SE', 'Amparo de São Francisco', 1764),
('2800209', 28, 209, '2 - Nordeste', 'Sergipe', 'SE', 'Aquidabã', 1765),
('2800308', 28, 308, '2 - Nordeste', 'Sergipe', 'SE', 'Aracaju', 1766),
('2800407', 28, 407, '2 - Nordeste', 'Sergipe', 'SE', 'Arauá', 1767),
('2800506', 28, 506, '2 - Nordeste', 'Sergipe', 'SE', 'Areia Branca', 1768),
('2800605', 28, 605, '2 - Nordeste', 'Sergipe', 'SE', 'Barra dos Coqueiros', 1769),
('2800670', 28, 670, '2 - Nordeste', 'Sergipe', 'SE', 'Boquim', 1770),
('2800704', 28, 704, '2 - Nordeste', 'Sergipe', 'SE', 'Brejo Grande', 1771),
('2801009', 28, 1009, '2 - Nordeste', 'Sergipe', 'SE', 'Campo do Brito', 1772),
('2801108', 28, 1108, '2 - Nordeste', 'Sergipe', 'SE', 'Canhoba', 1773),
('2801207', 28, 1207, '2 - Nordeste', 'Sergipe', 'SE', 'Canindé de São Francisco', 1774),
('2801306', 28, 1306, '2 - Nordeste', 'Sergipe', 'SE', 'Capela', 1775),
('2801405', 28, 1405, '2 - Nordeste', 'Sergipe', 'SE', 'Carira', 1776),
('2801504', 28, 1504, '2 - Nordeste', 'Sergipe', 'SE', 'Carmópolis', 1777),
('2801603', 28, 1603, '2 - Nordeste', 'Sergipe', 'SE', 'Cedro de São João', 1778),
('2801702', 28, 1702, '2 - Nordeste', 'Sergipe', 'SE', 'Cristinápolis', 1779),
('2801900', 28, 1900, '2 - Nordeste', 'Sergipe', 'SE', 'Cumbe', 1780),
('2802007', 28, 2007, '2 - Nordeste', 'Sergipe', 'SE', 'Divina Pastora', 1781),
('2802106', 28, 2106, '2 - Nordeste', 'Sergipe', 'SE', 'Estância', 1782),
('2802205', 28, 2205, '2 - Nordeste', 'Sergipe', 'SE', 'Feira Nova', 1783),
('2802304', 28, 2304, '2 - Nordeste', 'Sergipe', 'SE', 'Frei Paulo', 1784),
('2802403', 28, 2403, '2 - Nordeste', 'Sergipe', 'SE', 'Gararu', 1785),
('2802502', 28, 2502, '2 - Nordeste', 'Sergipe', 'SE', 'General Maynard', 1786),
('2802601', 28, 2601, '2 - Nordeste', 'Sergipe', 'SE', 'Gracho Cardoso', 1787),
('2802700', 28, 2700, '2 - Nordeste', 'Sergipe', 'SE', 'Ilha das Flores', 1788),
('2802809', 28, 2809, '2 - Nordeste', 'Sergipe', 'SE', 'Indiaroba', 1789),
('2802908', 28, 2908, '2 - Nordeste', 'Sergipe', 'SE', 'Itabaiana', 1790),
('2803005', 28, 3005, '2 - Nordeste', 'Sergipe', 'SE', 'Itabaianinha', 1791),
('2803104', 28, 3104, '2 - Nordeste', 'Sergipe', 'SE', 'Itabi', 1792),
('2803203', 28, 3203, '2 - Nordeste', 'Sergipe', 'SE', 'Itaporanga d''Ajuda', 1793),
('2803302', 28, 3302, '2 - Nordeste', 'Sergipe', 'SE', 'Japaratuba', 1794),
('2803401', 28, 3401, '2 - Nordeste', 'Sergipe', 'SE', 'Japoatã', 1795),
('2803500', 28, 3500, '2 - Nordeste', 'Sergipe', 'SE', 'Lagarto', 1796),
('2803609', 28, 3609, '2 - Nordeste', 'Sergipe', 'SE', 'Laranjeiras', 1797),
('2803708', 28, 3708, '2 - Nordeste', 'Sergipe', 'SE', 'Macambira', 1798),
('2803807', 28, 3807, '2 - Nordeste', 'Sergipe', 'SE', 'Malhada dos Bois', 1799),
('2803906', 28, 3906, '2 - Nordeste', 'Sergipe', 'SE', 'Malhador', 1800),
('2804003', 28, 4003, '2 - Nordeste', 'Sergipe', 'SE', 'Maruim', 1801),
('2804102', 28, 4102, '2 - Nordeste', 'Sergipe', 'SE', 'Moita Bonita', 1802),
('2804201', 28, 4201, '2 - Nordeste', 'Sergipe', 'SE', 'Monte Alegre de Sergipe', 1803),
('2804300', 28, 4300, '2 - Nordeste', 'Sergipe', 'SE', 'Muribeca', 1804),
('2804409', 28, 4409, '2 - Nordeste', 'Sergipe', 'SE', 'Neópolis', 1805),
('2804458', 28, 4458, '2 - Nordeste', 'Sergipe', 'SE', 'Nossa Senhora Aparecida', 1806),
('2804508', 28, 4508, '2 - Nordeste', 'Sergipe', 'SE', 'Nossa Senhora da Glória', 1807),
('2804607', 28, 4607, '2 - Nordeste', 'Sergipe', 'SE', 'Nossa Senhora das Dores', 1808),
('2804706', 28, 4706, '2 - Nordeste', 'Sergipe', 'SE', 'Nossa Senhora de Lourdes', 1809),
('2804805', 28, 4805, '2 - Nordeste', 'Sergipe', 'SE', 'Nossa Senhora do Socorro', 1810),
('2804904', 28, 4904, '2 - Nordeste', 'Sergipe', 'SE', 'Pacatuba', 1811),
('2805000', 28, 5000, '2 - Nordeste', 'Sergipe', 'SE', 'Pedra Mole', 1812),
('2805109', 28, 5109, '2 - Nordeste', 'Sergipe', 'SE', 'Pedrinhas', 1813),
('2805208', 28, 5208, '2 - Nordeste', 'Sergipe', 'SE', 'Pinhão', 1814),
('2805307', 28, 5307, '2 - Nordeste', 'Sergipe', 'SE', 'Pirambu', 1815),
('2805406', 28, 5406, '2 - Nordeste', 'Sergipe', 'SE', 'Poço Redondo', 1816),
('2805505', 28, 5505, '2 - Nordeste', 'Sergipe', 'SE', 'Poço Verde', 1817),
('2805604', 28, 5604, '2 - Nordeste', 'Sergipe', 'SE', 'Porto da Folha', 1818),
('2805703', 28, 5703, '2 - Nordeste', 'Sergipe', 'SE', 'Propriá', 1819),
('2805802', 28, 5802, '2 - Nordeste', 'Sergipe', 'SE', 'Riachão do Dantas', 1820),
('2805901', 28, 5901, '2 - Nordeste', 'Sergipe', 'SE', 'Riachuelo', 1821),
('2806008', 28, 6008, '2 - Nordeste', 'Sergipe', 'SE', 'Ribeirópolis', 1822),
('2806107', 28, 6107, '2 - Nordeste', 'Sergipe', 'SE', 'Rosário do Catete', 1823),
('2806206', 28, 6206, '2 - Nordeste', 'Sergipe', 'SE', 'Salgado', 1824),
('2806305', 28, 6305, '2 - Nordeste', 'Sergipe', 'SE', 'Santa Luzia do Itanhy', 1825),
('2806404', 28, 6404, '2 - Nordeste', 'Sergipe', 'SE', 'Santana do São Francisco', 1826),
('2806503', 28, 6503, '2 - Nordeste', 'Sergipe', 'SE', 'Santa Rosa de Lima', 1827),
('2806602', 28, 6602, '2 - Nordeste', 'Sergipe', 'SE', 'Santo Amaro das Brotas', 1828),
('2806701', 28, 6701, '2 - Nordeste', 'Sergipe', 'SE', 'São Cristóvão', 1829),
('2806800', 28, 6800, '2 - Nordeste', 'Sergipe', 'SE', 'São Domingos', 1830),
('2806909', 28, 6909, '2 - Nordeste', 'Sergipe', 'SE', 'São Francisco', 1831),
('2807006', 28, 7006, '2 - Nordeste', 'Sergipe', 'SE', 'São Miguel do Aleixo', 1832),
('2807105', 28, 7105, '2 - Nordeste', 'Sergipe', 'SE', 'Simão Dias', 1833),
('2807204', 28, 7204, '2 - Nordeste', 'Sergipe', 'SE', 'Siriri', 1834),
('2807303', 28, 7303, '2 - Nordeste', 'Sergipe', 'SE', 'Telha', 1835),
('2807402', 28, 7402, '2 - Nordeste', 'Sergipe', 'SE', 'Tobias Barreto', 1836),
('2807501', 28, 7501, '2 - Nordeste', 'Sergipe', 'SE', 'Tomar do Geru', 1837),
('2807600', 28, 7600, '2 - Nordeste', 'Sergipe', 'SE', 'Umbaúba', 1838),
('2900108', 29, 108, '2 - Nordeste', 'Bahia', 'BA', 'Abaíra', 1839),
('2900207', 29, 207, '2 - Nordeste', 'Bahia', 'BA', 'Abaré', 1840),
('2900306', 29, 306, '2 - Nordeste', 'Bahia', 'BA', 'Acajutiba', 1841),
('2900355', 29, 355, '2 - Nordeste', 'Bahia', 'BA', 'Adustina', 1842),
('2900405', 29, 405, '2 - Nordeste', 'Bahia', 'BA', 'Água Fria', 1843),
('2900504', 29, 504, '2 - Nordeste', 'Bahia', 'BA', 'Érico Cardoso', 1844),
('2900603', 29, 603, '2 - Nordeste', 'Bahia', 'BA', 'Aiquara', 1845),
('2900702', 29, 702, '2 - Nordeste', 'Bahia', 'BA', 'Alagoinhas', 1846),
('2900801', 29, 801, '2 - Nordeste', 'Bahia', 'BA', 'Alcobaça', 1847),
('2900900', 29, 900, '2 - Nordeste', 'Bahia', 'BA', 'Almadina', 1848),
('2901007', 29, 1007, '2 - Nordeste', 'Bahia', 'BA', 'Amargosa', 1849),
('2901106', 29, 1106, '2 - Nordeste', 'Bahia', 'BA', 'Amélia Rodrigues', 1850),
('2901155', 29, 1155, '2 - Nordeste', 'Bahia', 'BA', 'América Dourada', 1851),
('2901205', 29, 1205, '2 - Nordeste', 'Bahia', 'BA', 'Anagé', 1852),
('2901304', 29, 1304, '2 - Nordeste', 'Bahia', 'BA', 'Andaraí', 1853),
('2901353', 29, 1353, '2 - Nordeste', 'Bahia', 'BA', 'Andorinha', 1854),
('2901403', 29, 1403, '2 - Nordeste', 'Bahia', 'BA', 'Angical', 1855),
('2901502', 29, 1502, '2 - Nordeste', 'Bahia', 'BA', 'Anguera', 1856),
('2901601', 29, 1601, '2 - Nordeste', 'Bahia', 'BA', 'Antas', 1857),
('2901700', 29, 1700, '2 - Nordeste', 'Bahia', 'BA', 'Antônio Cardoso', 1858),
('2901809', 29, 1809, '2 - Nordeste', 'Bahia', 'BA', 'Antônio Gonçalves', 1859),
('2901908', 29, 1908, '2 - Nordeste', 'Bahia', 'BA', 'Aporá', 1860),
('2901957', 29, 1957, '2 - Nordeste', 'Bahia', 'BA', 'Apuarema', 1861),
('2902005', 29, 2005, '2 - Nordeste', 'Bahia', 'BA', 'Aracatu', 1862),
('2902054', 29, 2054, '2 - Nordeste', 'Bahia', 'BA', 'Araças', 1863),
('2902104', 29, 2104, '2 - Nordeste', 'Bahia', 'BA', 'Araci', 1864),
('2902203', 29, 2203, '2 - Nordeste', 'Bahia', 'BA', 'Aramari', 1865),
('2902252', 29, 2252, '2 - Nordeste', 'Bahia', 'BA', 'Arataca', 1866),
('2902302', 29, 2302, '2 - Nordeste', 'Bahia', 'BA', 'Aratuípe', 1867),
('2902401', 29, 2401, '2 - Nordeste', 'Bahia', 'BA', 'Aurelino Leal', 1868),
('2902500', 29, 2500, '2 - Nordeste', 'Bahia', 'BA', 'Baianópolis', 1869),
('2902609', 29, 2609, '2 - Nordeste', 'Bahia', 'BA', 'Baixa Grande', 1870),
('2902658', 29, 2658, '2 - Nordeste', 'Bahia', 'BA', 'Banzaê', 1871),
('2902708', 29, 2708, '2 - Nordeste', 'Bahia', 'BA', 'Barra', 1872),
('2902807', 29, 2807, '2 - Nordeste', 'Bahia', 'BA', 'Barra da Estiva', 1873),
('2902906', 29, 2906, '2 - Nordeste', 'Bahia', 'BA', 'Barra do Choça', 1874),
('2903003', 29, 3003, '2 - Nordeste', 'Bahia', 'BA', 'Barra do Mendes', 1875),
('2903102', 29, 3102, '2 - Nordeste', 'Bahia', 'BA', 'Barra do Rocha', 1876),
('2903201', 29, 3201, '2 - Nordeste', 'Bahia', 'BA', 'Barreiras', 1877),
('2903235', 29, 3235, '2 - Nordeste', 'Bahia', 'BA', 'Barro Alto', 1878),
('2903276', 29, 3276, '2 - Nordeste', 'Bahia', 'BA', 'Barrocas', 1879),
('2903300', 29, 3300, '2 - Nordeste', 'Bahia', 'BA', 'Barro Preto', 1880),
('2903409', 29, 3409, '2 - Nordeste', 'Bahia', 'BA', 'Belmonte', 1881),
('2903508', 29, 3508, '2 - Nordeste', 'Bahia', 'BA', 'Belo Campo', 1882),
('2903607', 29, 3607, '2 - Nordeste', 'Bahia', 'BA', 'Biritinga', 1883),
('2903706', 29, 3706, '2 - Nordeste', 'Bahia', 'BA', 'Boa Nova', 1884),
('2903805', 29, 3805, '2 - Nordeste', 'Bahia', 'BA', 'Boa Vista do Tupim', 1885),
('2903904', 29, 3904, '2 - Nordeste', 'Bahia', 'BA', 'Bom Jesus da Lapa', 1886),
('2903953', 29, 3953, '2 - Nordeste', 'Bahia', 'BA', 'Bom Jesus da Serra', 1887),
('2904001', 29, 4001, '2 - Nordeste', 'Bahia', 'BA', 'Boninal', 1888),
('2904050', 29, 4050, '2 - Nordeste', 'Bahia', 'BA', 'Bonito', 1889),
('2904100', 29, 4100, '2 - Nordeste', 'Bahia', 'BA', 'Boquira', 1890),
('2904209', 29, 4209, '2 - Nordeste', 'Bahia', 'BA', 'Botuporã', 1891),
('2904308', 29, 4308, '2 - Nordeste', 'Bahia', 'BA', 'Brejões', 1892),
('2904407', 29, 4407, '2 - Nordeste', 'Bahia', 'BA', 'Brejolândia', 1893),
('2904506', 29, 4506, '2 - Nordeste', 'Bahia', 'BA', 'Brotas de Macaúbas', 1894),
('2904605', 29, 4605, '2 - Nordeste', 'Bahia', 'BA', 'Brumado', 1895),
('2904704', 29, 4704, '2 - Nordeste', 'Bahia', 'BA', 'Buerarema', 1896),
('2904753', 29, 4753, '2 - Nordeste', 'Bahia', 'BA', 'Buritirama', 1897),
('2904803', 29, 4803, '2 - Nordeste', 'Bahia', 'BA', 'Caatiba', 1898),
('2904852', 29, 4852, '2 - Nordeste', 'Bahia', 'BA', 'Cabaceiras do Paraguaçu', 1899),
('2904902', 29, 4902, '2 - Nordeste', 'Bahia', 'BA', 'Cachoeira', 1900),
('2905008', 29, 5008, '2 - Nordeste', 'Bahia', 'BA', 'Caculé', 1901),
('2905107', 29, 5107, '2 - Nordeste', 'Bahia', 'BA', 'Caém', 1902),
('2905156', 29, 5156, '2 - Nordeste', 'Bahia', 'BA', 'Caetanos', 1903),
('2905206', 29, 5206, '2 - Nordeste', 'Bahia', 'BA', 'Caetité', 1904),
('2905305', 29, 5305, '2 - Nordeste', 'Bahia', 'BA', 'Cafarnaum', 1905),
('2905404', 29, 5404, '2 - Nordeste', 'Bahia', 'BA', 'Cairu', 1906),
('2905503', 29, 5503, '2 - Nordeste', 'Bahia', 'BA', 'Caldeirão Grande', 1907),
('2905602', 29, 5602, '2 - Nordeste', 'Bahia', 'BA', 'Camacan', 1908),
('2905701', 29, 5701, '2 - Nordeste', 'Bahia', 'BA', 'Camaçari', 1909),
('2905800', 29, 5800, '2 - Nordeste', 'Bahia', 'BA', 'Camamu', 1910),
('2905909', 29, 5909, '2 - Nordeste', 'Bahia', 'BA', 'Campo Alegre de Lourdes', 1911),
('2906006', 29, 6006, '2 - Nordeste', 'Bahia', 'BA', 'Campo Formoso', 1912),
('2906105', 29, 6105, '2 - Nordeste', 'Bahia', 'BA', 'Canápolis', 1913),
('2906204', 29, 6204, '2 - Nordeste', 'Bahia', 'BA', 'Canarana', 1914),
('2906303', 29, 6303, '2 - Nordeste', 'Bahia', 'BA', 'Canavieiras', 1915),
('2906402', 29, 6402, '2 - Nordeste', 'Bahia', 'BA', 'Candeal', 1916),
('2906501', 29, 6501, '2 - Nordeste', 'Bahia', 'BA', 'Candeias', 1917),
('2906600', 29, 6600, '2 - Nordeste', 'Bahia', 'BA', 'Candiba', 1918),
('2906709', 29, 6709, '2 - Nordeste', 'Bahia', 'BA', 'Cândido Sales', 1919),
('2906808', 29, 6808, '2 - Nordeste', 'Bahia', 'BA', 'Cansanção', 1920),
('2906824', 29, 6824, '2 - Nordeste', 'Bahia', 'BA', 'Canudos', 1921),
('2906857', 29, 6857, '2 - Nordeste', 'Bahia', 'BA', 'Capela do Alto Alegre', 1922),
('2906873', 29, 6873, '2 - Nordeste', 'Bahia', 'BA', 'Capim Grosso', 1923),
('2906899', 29, 6899, '2 - Nordeste', 'Bahia', 'BA', 'Caraíbas', 1924),
('2906907', 29, 6907, '2 - Nordeste', 'Bahia', 'BA', 'Caravelas', 1925),
('2907004', 29, 7004, '2 - Nordeste', 'Bahia', 'BA', 'Cardeal da Silva', 1926),
('2907103', 29, 7103, '2 - Nordeste', 'Bahia', 'BA', 'Carinhanha', 1927),
('2907202', 29, 7202, '2 - Nordeste', 'Bahia', 'BA', 'Casa Nova', 1928),
('2907301', 29, 7301, '2 - Nordeste', 'Bahia', 'BA', 'Castro Alves', 1929),
('2907400', 29, 7400, '2 - Nordeste', 'Bahia', 'BA', 'Catolândia', 1930),
('2907509', 29, 7509, '2 - Nordeste', 'Bahia', 'BA', 'Catu', 1931),
('2907558', 29, 7558, '2 - Nordeste', 'Bahia', 'BA', 'Caturama', 1932),
('2907608', 29, 7608, '2 - Nordeste', 'Bahia', 'BA', 'Central', 1933),
('2907707', 29, 7707, '2 - Nordeste', 'Bahia', 'BA', 'Chorrochó', 1934),
('2907806', 29, 7806, '2 - Nordeste', 'Bahia', 'BA', 'Cícero Dantas', 1935),
('2907905', 29, 7905, '2 - Nordeste', 'Bahia', 'BA', 'Cipó', 1936),
('2908002', 29, 8002, '2 - Nordeste', 'Bahia', 'BA', 'Coaraci', 1937),
('2908101', 29, 8101, '2 - Nordeste', 'Bahia', 'BA', 'Cocos', 1938),
('2908200', 29, 8200, '2 - Nordeste', 'Bahia', 'BA', 'Conceição da Feira', 1939),
('2908309', 29, 8309, '2 - Nordeste', 'Bahia', 'BA', 'Conceição do Almeida', 1940),
('2908408', 29, 8408, '2 - Nordeste', 'Bahia', 'BA', 'Conceição do Coité', 1941),
('2908507', 29, 8507, '2 - Nordeste', 'Bahia', 'BA', 'Conceição do Jacuípe', 1942),
('2908606', 29, 8606, '2 - Nordeste', 'Bahia', 'BA', 'Conde', 1943),
('2908705', 29, 8705, '2 - Nordeste', 'Bahia', 'BA', 'Condeúba', 1944),
('2908804', 29, 8804, '2 - Nordeste', 'Bahia', 'BA', 'Contendas do Sincorá', 1945),
('2908903', 29, 8903, '2 - Nordeste', 'Bahia', 'BA', 'Coração de Maria', 1946),
('2909000', 29, 9000, '2 - Nordeste', 'Bahia', 'BA', 'Cordeiros', 1947),
('2909109', 29, 9109, '2 - Nordeste', 'Bahia', 'BA', 'Coribe', 1948),
('2909208', 29, 9208, '2 - Nordeste', 'Bahia', 'BA', 'Coronel João Sá', 1949),
('2909307', 29, 9307, '2 - Nordeste', 'Bahia', 'BA', 'Correntina', 1950),
('2909406', 29, 9406, '2 - Nordeste', 'Bahia', 'BA', 'Cotegipe', 1951),
('2909505', 29, 9505, '2 - Nordeste', 'Bahia', 'BA', 'Cravolândia', 1952),
('2909604', 29, 9604, '2 - Nordeste', 'Bahia', 'BA', 'Crisópolis', 1953),
('2909703', 29, 9703, '2 - Nordeste', 'Bahia', 'BA', 'Cristópolis', 1954),
('2909802', 29, 9802, '2 - Nordeste', 'Bahia', 'BA', 'Cruz das Almas', 1955),
('2909901', 29, 9901, '2 - Nordeste', 'Bahia', 'BA', 'Curaçá', 1956),
('2910008', 29, 10008, '2 - Nordeste', 'Bahia', 'BA', 'Dário Meira', 1957),
('2910057', 29, 10057, '2 - Nordeste', 'Bahia', 'BA', 'Dias d''Ávila', 1958),
('2910107', 29, 10107, '2 - Nordeste', 'Bahia', 'BA', 'Dom Basílio', 1959),
('2910206', 29, 10206, '2 - Nordeste', 'Bahia', 'BA', 'Dom Macedo Costa', 1960),
('2910305', 29, 10305, '2 - Nordeste', 'Bahia', 'BA', 'Elísio Medrado', 1961),
('2910404', 29, 10404, '2 - Nordeste', 'Bahia', 'BA', 'Encruzilhada', 1962),
('2910503', 29, 10503, '2 - Nordeste', 'Bahia', 'BA', 'Entre Rios', 1963),
('2910602', 29, 10602, '2 - Nordeste', 'Bahia', 'BA', 'Esplanada', 1964),
('2910701', 29, 10701, '2 - Nordeste', 'Bahia', 'BA', 'Euclides da Cunha', 1965),
('2910727', 29, 10727, '2 - Nordeste', 'Bahia', 'BA', 'Eunápolis', 1966),
('2910750', 29, 10750, '2 - Nordeste', 'Bahia', 'BA', 'Fátima', 1967),
('2910776', 29, 10776, '2 - Nordeste', 'Bahia', 'BA', 'Feira da Mata', 1968),
('2910800', 29, 10800, '2 - Nordeste', 'Bahia', 'BA', 'Feira de Santana', 1969),
('2910859', 29, 10859, '2 - Nordeste', 'Bahia', 'BA', 'Filadélfia', 1970),
('2910909', 29, 10909, '2 - Nordeste', 'Bahia', 'BA', 'Firmino Alves', 1971),
('2911006', 29, 11006, '2 - Nordeste', 'Bahia', 'BA', 'Floresta Azul', 1972),
('2911105', 29, 11105, '2 - Nordeste', 'Bahia', 'BA', 'Formosa do Rio Preto', 1973),
('2911204', 29, 11204, '2 - Nordeste', 'Bahia', 'BA', 'Gandu', 1974),
('2911253', 29, 11253, '2 - Nordeste', 'Bahia', 'BA', 'Gavião', 1975),
('2911303', 29, 11303, '2 - Nordeste', 'Bahia', 'BA', 'Gentio do Ouro', 1976),
('2911402', 29, 11402, '2 - Nordeste', 'Bahia', 'BA', 'Glória', 1977),
('2911501', 29, 11501, '2 - Nordeste', 'Bahia', 'BA', 'Gongogi', 1978),
('2911600', 29, 11600, '2 - Nordeste', 'Bahia', 'BA', 'Governador Mangabeira', 1979),
('2911659', 29, 11659, '2 - Nordeste', 'Bahia', 'BA', 'Guajeru', 1980),
('2911709', 29, 11709, '2 - Nordeste', 'Bahia', 'BA', 'Guanambi', 1981),
('2911808', 29, 11808, '2 - Nordeste', 'Bahia', 'BA', 'Guaratinga', 1982);
INSERT INTO `ibge_uf` (`cod_mun`, `cod_uf`, `seila`, `regiao`, `estado`, `uf`, `municipio`, `id`) VALUES
('2911857', 29, 11857, '2 - Nordeste', 'Bahia', 'BA', 'Heliópolis', 1983),
('2911907', 29, 11907, '2 - Nordeste', 'Bahia', 'BA', 'Iaçu', 1984),
('2912004', 29, 12004, '2 - Nordeste', 'Bahia', 'BA', 'Ibiassucê', 1985),
('2912103', 29, 12103, '2 - Nordeste', 'Bahia', 'BA', 'Ibicaraí', 1986),
('2912202', 29, 12202, '2 - Nordeste', 'Bahia', 'BA', 'Ibicoara', 1987),
('2912301', 29, 12301, '2 - Nordeste', 'Bahia', 'BA', 'Ibicuí', 1988),
('2912400', 29, 12400, '2 - Nordeste', 'Bahia', 'BA', 'Ibipeba', 1989),
('2912509', 29, 12509, '2 - Nordeste', 'Bahia', 'BA', 'Ibipitanga', 1990),
('2912608', 29, 12608, '2 - Nordeste', 'Bahia', 'BA', 'Ibiquera', 1991),
('2912707', 29, 12707, '2 - Nordeste', 'Bahia', 'BA', 'Ibirapitanga', 1992),
('2912806', 29, 12806, '2 - Nordeste', 'Bahia', 'BA', 'Ibirapuã', 1993),
('2912905', 29, 12905, '2 - Nordeste', 'Bahia', 'BA', 'Ibirataia', 1994),
('2913002', 29, 13002, '2 - Nordeste', 'Bahia', 'BA', 'Ibitiara', 1995),
('2913101', 29, 13101, '2 - Nordeste', 'Bahia', 'BA', 'Ibititá', 1996),
('2913200', 29, 13200, '2 - Nordeste', 'Bahia', 'BA', 'Ibotirama', 1997),
('2913309', 29, 13309, '2 - Nordeste', 'Bahia', 'BA', 'Ichu', 1998),
('2913408', 29, 13408, '2 - Nordeste', 'Bahia', 'BA', 'Igaporã', 1999),
('2913457', 29, 13457, '2 - Nordeste', 'Bahia', 'BA', 'Igrapiúna', 2000),
('2913507', 29, 13507, '2 - Nordeste', 'Bahia', 'BA', 'Iguaí', 2001),
('2913606', 29, 13606, '2 - Nordeste', 'Bahia', 'BA', 'Ilhéus', 2002),
('2913705', 29, 13705, '2 - Nordeste', 'Bahia', 'BA', 'Inhambupe', 2003),
('2913804', 29, 13804, '2 - Nordeste', 'Bahia', 'BA', 'Ipecaetá', 2004),
('2913903', 29, 13903, '2 - Nordeste', 'Bahia', 'BA', 'Ipiaú', 2005),
('2914000', 29, 14000, '2 - Nordeste', 'Bahia', 'BA', 'Ipirá', 2006),
('2914109', 29, 14109, '2 - Nordeste', 'Bahia', 'BA', 'Ipupiara', 2007),
('2914208', 29, 14208, '2 - Nordeste', 'Bahia', 'BA', 'Irajuba', 2008),
('2914307', 29, 14307, '2 - Nordeste', 'Bahia', 'BA', 'Iramaia', 2009),
('2914406', 29, 14406, '2 - Nordeste', 'Bahia', 'BA', 'Iraquara', 2010),
('2914505', 29, 14505, '2 - Nordeste', 'Bahia', 'BA', 'Irará', 2011),
('2914604', 29, 14604, '2 - Nordeste', 'Bahia', 'BA', 'Irecê', 2012),
('2914653', 29, 14653, '2 - Nordeste', 'Bahia', 'BA', 'Itabela', 2013),
('2914703', 29, 14703, '2 - Nordeste', 'Bahia', 'BA', 'Itaberaba', 2014),
('2914802', 29, 14802, '2 - Nordeste', 'Bahia', 'BA', 'Itabuna', 2015),
('2914901', 29, 14901, '2 - Nordeste', 'Bahia', 'BA', 'Itacaré', 2016),
('2915007', 29, 15007, '2 - Nordeste', 'Bahia', 'BA', 'Itaeté', 2017),
('2915106', 29, 15106, '2 - Nordeste', 'Bahia', 'BA', 'Itagi', 2018),
('2915205', 29, 15205, '2 - Nordeste', 'Bahia', 'BA', 'Itagibá', 2019),
('2915304', 29, 15304, '2 - Nordeste', 'Bahia', 'BA', 'Itagimirim', 2020),
('2915353', 29, 15353, '2 - Nordeste', 'Bahia', 'BA', 'Itaguaçu da Bahia', 2021),
('2915403', 29, 15403, '2 - Nordeste', 'Bahia', 'BA', 'Itaju do Colônia', 2022),
('2915502', 29, 15502, '2 - Nordeste', 'Bahia', 'BA', 'Itajuípe', 2023),
('2915601', 29, 15601, '2 - Nordeste', 'Bahia', 'BA', 'Itamaraju', 2024),
('2915700', 29, 15700, '2 - Nordeste', 'Bahia', 'BA', 'Itamari', 2025),
('2915809', 29, 15809, '2 - Nordeste', 'Bahia', 'BA', 'Itambé', 2026),
('2915908', 29, 15908, '2 - Nordeste', 'Bahia', 'BA', 'Itanagra', 2027),
('2916005', 29, 16005, '2 - Nordeste', 'Bahia', 'BA', 'Itanhém', 2028),
('2916104', 29, 16104, '2 - Nordeste', 'Bahia', 'BA', 'Itaparica', 2029),
('2916203', 29, 16203, '2 - Nordeste', 'Bahia', 'BA', 'Itapé', 2030),
('2916302', 29, 16302, '2 - Nordeste', 'Bahia', 'BA', 'Itapebi', 2031),
('2916401', 29, 16401, '2 - Nordeste', 'Bahia', 'BA', 'Itapetinga', 2032),
('2916500', 29, 16500, '2 - Nordeste', 'Bahia', 'BA', 'Itapicuru', 2033),
('2916609', 29, 16609, '2 - Nordeste', 'Bahia', 'BA', 'Itapitanga', 2034),
('2916708', 29, 16708, '2 - Nordeste', 'Bahia', 'BA', 'Itaquara', 2035),
('2916807', 29, 16807, '2 - Nordeste', 'Bahia', 'BA', 'Itarantim', 2036),
('2916856', 29, 16856, '2 - Nordeste', 'Bahia', 'BA', 'Itatim', 2037),
('2916906', 29, 16906, '2 - Nordeste', 'Bahia', 'BA', 'Itiruçu', 2038),
('2917003', 29, 17003, '2 - Nordeste', 'Bahia', 'BA', 'Itiúba', 2039),
('2917102', 29, 17102, '2 - Nordeste', 'Bahia', 'BA', 'Itororó', 2040),
('2917201', 29, 17201, '2 - Nordeste', 'Bahia', 'BA', 'Ituaçu', 2041),
('2917300', 29, 17300, '2 - Nordeste', 'Bahia', 'BA', 'Ituberá', 2042),
('2917334', 29, 17334, '2 - Nordeste', 'Bahia', 'BA', 'Iuiú', 2043),
('2917359', 29, 17359, '2 - Nordeste', 'Bahia', 'BA', 'Jaborandi', 2044),
('2917409', 29, 17409, '2 - Nordeste', 'Bahia', 'BA', 'Jacaraci', 2045),
('2917508', 29, 17508, '2 - Nordeste', 'Bahia', 'BA', 'Jacobina', 2046),
('2917607', 29, 17607, '2 - Nordeste', 'Bahia', 'BA', 'Jaguaquara', 2047),
('2917706', 29, 17706, '2 - Nordeste', 'Bahia', 'BA', 'Jaguarari', 2048),
('2917805', 29, 17805, '2 - Nordeste', 'Bahia', 'BA', 'Jaguaripe', 2049),
('2917904', 29, 17904, '2 - Nordeste', 'Bahia', 'BA', 'Jandaíra', 2050),
('2918001', 29, 18001, '2 - Nordeste', 'Bahia', 'BA', 'Jequié', 2051),
('2918100', 29, 18100, '2 - Nordeste', 'Bahia', 'BA', 'Jeremoabo', 2052),
('2918209', 29, 18209, '2 - Nordeste', 'Bahia', 'BA', 'Jiquiriçá', 2053),
('2918308', 29, 18308, '2 - Nordeste', 'Bahia', 'BA', 'Jitaúna', 2054),
('2918357', 29, 18357, '2 - Nordeste', 'Bahia', 'BA', 'João Dourado', 2055),
('2918407', 29, 18407, '2 - Nordeste', 'Bahia', 'BA', 'Juazeiro', 2056),
('2918456', 29, 18456, '2 - Nordeste', 'Bahia', 'BA', 'Jucuruçu', 2057),
('2918506', 29, 18506, '2 - Nordeste', 'Bahia', 'BA', 'Jussara', 2058),
('2918555', 29, 18555, '2 - Nordeste', 'Bahia', 'BA', 'Jussari', 2059),
('2918605', 29, 18605, '2 - Nordeste', 'Bahia', 'BA', 'Jussiape', 2060),
('2918704', 29, 18704, '2 - Nordeste', 'Bahia', 'BA', 'Lafaiete Coutinho', 2061),
('2918753', 29, 18753, '2 - Nordeste', 'Bahia', 'BA', 'Lagoa Real', 2062),
('2918803', 29, 18803, '2 - Nordeste', 'Bahia', 'BA', 'Laje', 2063),
('2918902', 29, 18902, '2 - Nordeste', 'Bahia', 'BA', 'Lajedão', 2064),
('2919009', 29, 19009, '2 - Nordeste', 'Bahia', 'BA', 'Lajedinho', 2065),
('2919058', 29, 19058, '2 - Nordeste', 'Bahia', 'BA', 'Lajedo do Tabocal', 2066),
('2919108', 29, 19108, '2 - Nordeste', 'Bahia', 'BA', 'Lamarão', 2067),
('2919157', 29, 19157, '2 - Nordeste', 'Bahia', 'BA', 'Lapão', 2068),
('2919207', 29, 19207, '2 - Nordeste', 'Bahia', 'BA', 'Lauro de Freitas', 2069),
('2919306', 29, 19306, '2 - Nordeste', 'Bahia', 'BA', 'Lençóis', 2070),
('2919405', 29, 19405, '2 - Nordeste', 'Bahia', 'BA', 'Licínio de Almeida', 2071),
('2919504', 29, 19504, '2 - Nordeste', 'Bahia', 'BA', 'Livramento de Nossa Senhora', 2072),
('2919553', 29, 19553, '2 - Nordeste', 'Bahia', 'BA', 'Luís Eduardo Magalhães', 2073),
('2919603', 29, 19603, '2 - Nordeste', 'Bahia', 'BA', 'Macajuba', 2074),
('2919702', 29, 19702, '2 - Nordeste', 'Bahia', 'BA', 'Macarani', 2075),
('2919801', 29, 19801, '2 - Nordeste', 'Bahia', 'BA', 'Macaúbas', 2076),
('2919900', 29, 19900, '2 - Nordeste', 'Bahia', 'BA', 'Macururé', 2077),
('2919926', 29, 19926, '2 - Nordeste', 'Bahia', 'BA', 'Madre de Deus', 2078),
('2919959', 29, 19959, '2 - Nordeste', 'Bahia', 'BA', 'Maetinga', 2079),
('2920007', 29, 20007, '2 - Nordeste', 'Bahia', 'BA', 'Maiquinique', 2080),
('2920106', 29, 20106, '2 - Nordeste', 'Bahia', 'BA', 'Mairi', 2081),
('2920205', 29, 20205, '2 - Nordeste', 'Bahia', 'BA', 'Malhada', 2082),
('2920304', 29, 20304, '2 - Nordeste', 'Bahia', 'BA', 'Malhada de Pedras', 2083),
('2920403', 29, 20403, '2 - Nordeste', 'Bahia', 'BA', 'Manoel Vitorino', 2084),
('2920452', 29, 20452, '2 - Nordeste', 'Bahia', 'BA', 'Mansidão', 2085),
('2920502', 29, 20502, '2 - Nordeste', 'Bahia', 'BA', 'Maracás', 2086),
('2920601', 29, 20601, '2 - Nordeste', 'Bahia', 'BA', 'Maragogipe', 2087),
('2920700', 29, 20700, '2 - Nordeste', 'Bahia', 'BA', 'Maraú', 2088),
('2920809', 29, 20809, '2 - Nordeste', 'Bahia', 'BA', 'Marcionílio Souza', 2089),
('2920908', 29, 20908, '2 - Nordeste', 'Bahia', 'BA', 'Mascote', 2090),
('2921005', 29, 21005, '2 - Nordeste', 'Bahia', 'BA', 'Mata de São João', 2091),
('2921054', 29, 21054, '2 - Nordeste', 'Bahia', 'BA', 'Matina', 2092),
('2921104', 29, 21104, '2 - Nordeste', 'Bahia', 'BA', 'Medeiros Neto', 2093),
('2921203', 29, 21203, '2 - Nordeste', 'Bahia', 'BA', 'Miguel Calmon', 2094),
('2921302', 29, 21302, '2 - Nordeste', 'Bahia', 'BA', 'Milagres', 2095),
('2921401', 29, 21401, '2 - Nordeste', 'Bahia', 'BA', 'Mirangaba', 2096),
('2921450', 29, 21450, '2 - Nordeste', 'Bahia', 'BA', 'Mirante', 2097),
('2921500', 29, 21500, '2 - Nordeste', 'Bahia', 'BA', 'Monte Santo', 2098),
('2921609', 29, 21609, '2 - Nordeste', 'Bahia', 'BA', 'Morpará', 2099),
('2921708', 29, 21708, '2 - Nordeste', 'Bahia', 'BA', 'Morro do Chapéu', 2100),
('2921807', 29, 21807, '2 - Nordeste', 'Bahia', 'BA', 'Mortugaba', 2101),
('2921906', 29, 21906, '2 - Nordeste', 'Bahia', 'BA', 'Mucugê', 2102),
('2922003', 29, 22003, '2 - Nordeste', 'Bahia', 'BA', 'Mucuri', 2103),
('2922052', 29, 22052, '2 - Nordeste', 'Bahia', 'BA', 'Mulungu do Morro', 2104),
('2922102', 29, 22102, '2 - Nordeste', 'Bahia', 'BA', 'Mundo Novo', 2105),
('2922201', 29, 22201, '2 - Nordeste', 'Bahia', 'BA', 'Muniz Ferreira', 2106),
('2922250', 29, 22250, '2 - Nordeste', 'Bahia', 'BA', 'Muquém de São Francisco', 2107),
('2922300', 29, 22300, '2 - Nordeste', 'Bahia', 'BA', 'Muritiba', 2108),
('2922409', 29, 22409, '2 - Nordeste', 'Bahia', 'BA', 'Mutuípe', 2109),
('2922508', 29, 22508, '2 - Nordeste', 'Bahia', 'BA', 'Nazaré', 2110),
('2922607', 29, 22607, '2 - Nordeste', 'Bahia', 'BA', 'Nilo Peçanha', 2111),
('2922656', 29, 22656, '2 - Nordeste', 'Bahia', 'BA', 'Nordestina', 2112),
('2922706', 29, 22706, '2 - Nordeste', 'Bahia', 'BA', 'Nova Canaã', 2113),
('2922730', 29, 22730, '2 - Nordeste', 'Bahia', 'BA', 'Nova Fátima', 2114),
('2922755', 29, 22755, '2 - Nordeste', 'Bahia', 'BA', 'Nova Ibiá', 2115),
('2922805', 29, 22805, '2 - Nordeste', 'Bahia', 'BA', 'Nova Itarana', 2116),
('2922854', 29, 22854, '2 - Nordeste', 'Bahia', 'BA', 'Nova Redenção', 2117),
('2922904', 29, 22904, '2 - Nordeste', 'Bahia', 'BA', 'Nova Soure', 2118),
('2923001', 29, 23001, '2 - Nordeste', 'Bahia', 'BA', 'Nova Viçosa', 2119),
('2923035', 29, 23035, '2 - Nordeste', 'Bahia', 'BA', 'Novo Horizonte', 2120),
('2923050', 29, 23050, '2 - Nordeste', 'Bahia', 'BA', 'Novo Triunfo', 2121),
('2923100', 29, 23100, '2 - Nordeste', 'Bahia', 'BA', 'Olindina', 2122),
('2923209', 29, 23209, '2 - Nordeste', 'Bahia', 'BA', 'Oliveira dos Brejinhos', 2123),
('2923308', 29, 23308, '2 - Nordeste', 'Bahia', 'BA', 'Ouriçangas', 2124),
('2923357', 29, 23357, '2 - Nordeste', 'Bahia', 'BA', 'Ourolândia', 2125),
('2923407', 29, 23407, '2 - Nordeste', 'Bahia', 'BA', 'Palmas de Monte Alto', 2126),
('2923506', 29, 23506, '2 - Nordeste', 'Bahia', 'BA', 'Palmeiras', 2127),
('2923605', 29, 23605, '2 - Nordeste', 'Bahia', 'BA', 'Paramirim', 2128),
('2923704', 29, 23704, '2 - Nordeste', 'Bahia', 'BA', 'Paratinga', 2129),
('2923803', 29, 23803, '2 - Nordeste', 'Bahia', 'BA', 'Paripiranga', 2130),
('2923902', 29, 23902, '2 - Nordeste', 'Bahia', 'BA', 'Pau Brasil', 2131),
('2924009', 29, 24009, '2 - Nordeste', 'Bahia', 'BA', 'Paulo Afonso', 2132),
('2924058', 29, 24058, '2 - Nordeste', 'Bahia', 'BA', 'Pé de Serra', 2133),
('2924108', 29, 24108, '2 - Nordeste', 'Bahia', 'BA', 'Pedrão', 2134),
('2924207', 29, 24207, '2 - Nordeste', 'Bahia', 'BA', 'Pedro Alexandre', 2135),
('2924306', 29, 24306, '2 - Nordeste', 'Bahia', 'BA', 'Piatã', 2136),
('2924405', 29, 24405, '2 - Nordeste', 'Bahia', 'BA', 'Pilão Arcado', 2137),
('2924504', 29, 24504, '2 - Nordeste', 'Bahia', 'BA', 'Pindaí', 2138),
('2924603', 29, 24603, '2 - Nordeste', 'Bahia', 'BA', 'Pindobaçu', 2139),
('2924652', 29, 24652, '2 - Nordeste', 'Bahia', 'BA', 'Pintadas', 2140),
('2924678', 29, 24678, '2 - Nordeste', 'Bahia', 'BA', 'Piraí do Norte', 2141),
('2924702', 29, 24702, '2 - Nordeste', 'Bahia', 'BA', 'Piripá', 2142),
('2924801', 29, 24801, '2 - Nordeste', 'Bahia', 'BA', 'Piritiba', 2143),
('2924900', 29, 24900, '2 - Nordeste', 'Bahia', 'BA', 'Planaltino', 2144),
('2925006', 29, 25006, '2 - Nordeste', 'Bahia', 'BA', 'Planalto', 2145),
('2925105', 29, 25105, '2 - Nordeste', 'Bahia', 'BA', 'Poções', 2146),
('2925204', 29, 25204, '2 - Nordeste', 'Bahia', 'BA', 'Pojuca', 2147),
('2925253', 29, 25253, '2 - Nordeste', 'Bahia', 'BA', 'Ponto Novo', 2148),
('2925303', 29, 25303, '2 - Nordeste', 'Bahia', 'BA', 'Porto Seguro', 2149),
('2925402', 29, 25402, '2 - Nordeste', 'Bahia', 'BA', 'Potiraguá', 2150),
('2925501', 29, 25501, '2 - Nordeste', 'Bahia', 'BA', 'Prado', 2151),
('2925600', 29, 25600, '2 - Nordeste', 'Bahia', 'BA', 'Presidente Dutra', 2152),
('2925709', 29, 25709, '2 - Nordeste', 'Bahia', 'BA', 'Presidente Jânio Quadros', 2153),
('2925758', 29, 25758, '2 - Nordeste', 'Bahia', 'BA', 'Presidente Tancredo Neves', 2154),
('2925808', 29, 25808, '2 - Nordeste', 'Bahia', 'BA', 'Queimadas', 2155),
('2925907', 29, 25907, '2 - Nordeste', 'Bahia', 'BA', 'Quijingue', 2156),
('2925931', 29, 25931, '2 - Nordeste', 'Bahia', 'BA', 'Quixabeira', 2157),
('2925956', 29, 25956, '2 - Nordeste', 'Bahia', 'BA', 'Rafael Jambeiro', 2158),
('2926004', 29, 26004, '2 - Nordeste', 'Bahia', 'BA', 'Remanso', 2159),
('2926103', 29, 26103, '2 - Nordeste', 'Bahia', 'BA', 'Retirolândia', 2160),
('2926202', 29, 26202, '2 - Nordeste', 'Bahia', 'BA', 'Riachão das Neves', 2161),
('2926301', 29, 26301, '2 - Nordeste', 'Bahia', 'BA', 'Riachão do Jacuípe', 2162),
('2926400', 29, 26400, '2 - Nordeste', 'Bahia', 'BA', 'Riacho de Santana', 2163),
('2926509', 29, 26509, '2 - Nordeste', 'Bahia', 'BA', 'Ribeira do Amparo', 2164),
('2926608', 29, 26608, '2 - Nordeste', 'Bahia', 'BA', 'Ribeira do Pombal', 2165),
('2926657', 29, 26657, '2 - Nordeste', 'Bahia', 'BA', 'Ribeirão do Largo', 2166),
('2926707', 29, 26707, '2 - Nordeste', 'Bahia', 'BA', 'Rio de Contas', 2167),
('2926806', 29, 26806, '2 - Nordeste', 'Bahia', 'BA', 'Rio do Antônio', 2168),
('2926905', 29, 26905, '2 - Nordeste', 'Bahia', 'BA', 'Rio do Pires', 2169),
('2927002', 29, 27002, '2 - Nordeste', 'Bahia', 'BA', 'Rio Real', 2170),
('2927101', 29, 27101, '2 - Nordeste', 'Bahia', 'BA', 'Rodelas', 2171),
('2927200', 29, 27200, '2 - Nordeste', 'Bahia', 'BA', 'Ruy Barbosa', 2172),
('2927309', 29, 27309, '2 - Nordeste', 'Bahia', 'BA', 'Salinas da Margarida', 2173),
('2927408', 29, 27408, '2 - Nordeste', 'Bahia', 'BA', 'Salvador', 2174),
('2927507', 29, 27507, '2 - Nordeste', 'Bahia', 'BA', 'Santa Bárbara', 2175),
('2927606', 29, 27606, '2 - Nordeste', 'Bahia', 'BA', 'Santa Brígida', 2176),
('2927705', 29, 27705, '2 - Nordeste', 'Bahia', 'BA', 'Santa Cruz Cabrália', 2177),
('2927804', 29, 27804, '2 - Nordeste', 'Bahia', 'BA', 'Santa Cruz da Vitória', 2178),
('2927903', 29, 27903, '2 - Nordeste', 'Bahia', 'BA', 'Santa Inês', 2179),
('2928000', 29, 28000, '2 - Nordeste', 'Bahia', 'BA', 'Santaluz', 2180),
('2928059', 29, 28059, '2 - Nordeste', 'Bahia', 'BA', 'Santa Luzia', 2181),
('2928109', 29, 28109, '2 - Nordeste', 'Bahia', 'BA', 'Santa Maria da Vitória', 2182),
('2928208', 29, 28208, '2 - Nordeste', 'Bahia', 'BA', 'Santana', 2183),
('2928307', 29, 28307, '2 - Nordeste', 'Bahia', 'BA', 'Santanópolis', 2184),
('2928406', 29, 28406, '2 - Nordeste', 'Bahia', 'BA', 'Santa Rita de Cássia', 2185),
('2928505', 29, 28505, '2 - Nordeste', 'Bahia', 'BA', 'Santa Teresinha', 2186),
('2928604', 29, 28604, '2 - Nordeste', 'Bahia', 'BA', 'Santo Amaro', 2187),
('2928703', 29, 28703, '2 - Nordeste', 'Bahia', 'BA', 'Santo Antônio de Jesus', 2188),
('2928802', 29, 28802, '2 - Nordeste', 'Bahia', 'BA', 'Santo Estêvão', 2189),
('2928901', 29, 28901, '2 - Nordeste', 'Bahia', 'BA', 'São Desidério', 2190),
('2928950', 29, 28950, '2 - Nordeste', 'Bahia', 'BA', 'São Domingos', 2191),
('2929008', 29, 29008, '2 - Nordeste', 'Bahia', 'BA', 'São Félix', 2192),
('2929057', 29, 29057, '2 - Nordeste', 'Bahia', 'BA', 'São Félix do Coribe', 2193),
('2929107', 29, 29107, '2 - Nordeste', 'Bahia', 'BA', 'São Felipe', 2194),
('2929206', 29, 29206, '2 - Nordeste', 'Bahia', 'BA', 'São Francisco do Conde', 2195),
('2929255', 29, 29255, '2 - Nordeste', 'Bahia', 'BA', 'São Gabriel', 2196),
('2929305', 29, 29305, '2 - Nordeste', 'Bahia', 'BA', 'São Gonçalo dos Campos', 2197),
('2929354', 29, 29354, '2 - Nordeste', 'Bahia', 'BA', 'São José da Vitória', 2198),
('2929370', 29, 29370, '2 - Nordeste', 'Bahia', 'BA', 'São José do Jacuípe', 2199),
('2929404', 29, 29404, '2 - Nordeste', 'Bahia', 'BA', 'São Miguel das Matas', 2200),
('2929503', 29, 29503, '2 - Nordeste', 'Bahia', 'BA', 'São Sebastião do Passé', 2201),
('2929602', 29, 29602, '2 - Nordeste', 'Bahia', 'BA', 'Sapeaçu', 2202),
('2929701', 29, 29701, '2 - Nordeste', 'Bahia', 'BA', 'Sátiro Dias', 2203),
('2929750', 29, 29750, '2 - Nordeste', 'Bahia', 'BA', 'Saubara', 2204),
('2929800', 29, 29800, '2 - Nordeste', 'Bahia', 'BA', 'Saúde', 2205),
('2929909', 29, 29909, '2 - Nordeste', 'Bahia', 'BA', 'Seabra', 2206),
('2930006', 29, 30006, '2 - Nordeste', 'Bahia', 'BA', 'Sebastião Laranjeiras', 2207),
('2930105', 29, 30105, '2 - Nordeste', 'Bahia', 'BA', 'Senhor do Bonfim', 2208),
('2930154', 29, 30154, '2 - Nordeste', 'Bahia', 'BA', 'Serra do Ramalho', 2209),
('2930204', 29, 30204, '2 - Nordeste', 'Bahia', 'BA', 'Sento Sé', 2210),
('2930303', 29, 30303, '2 - Nordeste', 'Bahia', 'BA', 'Serra Dourada', 2211),
('2930402', 29, 30402, '2 - Nordeste', 'Bahia', 'BA', 'Serra Preta', 2212),
('2930501', 29, 30501, '2 - Nordeste', 'Bahia', 'BA', 'Serrinha', 2213),
('2930600', 29, 30600, '2 - Nordeste', 'Bahia', 'BA', 'Serrolândia', 2214),
('2930709', 29, 30709, '2 - Nordeste', 'Bahia', 'BA', 'Simões Filho', 2215),
('2930758', 29, 30758, '2 - Nordeste', 'Bahia', 'BA', 'Sítio do Mato', 2216),
('2930766', 29, 30766, '2 - Nordeste', 'Bahia', 'BA', 'Sítio do Quinto', 2217),
('2930774', 29, 30774, '2 - Nordeste', 'Bahia', 'BA', 'Sobradinho', 2218),
('2930808', 29, 30808, '2 - Nordeste', 'Bahia', 'BA', 'Souto Soares', 2219),
('2930907', 29, 30907, '2 - Nordeste', 'Bahia', 'BA', 'Tabocas do Brejo Velho', 2220),
('2931004', 29, 31004, '2 - Nordeste', 'Bahia', 'BA', 'Tanhaçu', 2221),
('2931053', 29, 31053, '2 - Nordeste', 'Bahia', 'BA', 'Tanque Novo', 2222),
('2931103', 29, 31103, '2 - Nordeste', 'Bahia', 'BA', 'Tanquinho', 2223),
('2931202', 29, 31202, '2 - Nordeste', 'Bahia', 'BA', 'Taperoá', 2224),
('2931301', 29, 31301, '2 - Nordeste', 'Bahia', 'BA', 'Tapiramutá', 2225),
('2931350', 29, 31350, '2 - Nordeste', 'Bahia', 'BA', 'Teixeira de Freitas', 2226),
('2931400', 29, 31400, '2 - Nordeste', 'Bahia', 'BA', 'Teodoro Sampaio', 2227),
('2931509', 29, 31509, '2 - Nordeste', 'Bahia', 'BA', 'Teofilândia', 2228),
('2931608', 29, 31608, '2 - Nordeste', 'Bahia', 'BA', 'Teolândia', 2229),
('2931707', 29, 31707, '2 - Nordeste', 'Bahia', 'BA', 'Terra Nova', 2230),
('2931806', 29, 31806, '2 - Nordeste', 'Bahia', 'BA', 'Tremedal', 2231),
('2931905', 29, 31905, '2 - Nordeste', 'Bahia', 'BA', 'Tucano', 2232),
('2932002', 29, 32002, '2 - Nordeste', 'Bahia', 'BA', 'Uauá', 2233),
('2932101', 29, 32101, '2 - Nordeste', 'Bahia', 'BA', 'Ubaíra', 2234),
('2932200', 29, 32200, '2 - Nordeste', 'Bahia', 'BA', 'Ubaitaba', 2235),
('2932309', 29, 32309, '2 - Nordeste', 'Bahia', 'BA', 'Ubatã', 2236),
('2932408', 29, 32408, '2 - Nordeste', 'Bahia', 'BA', 'Uibaí', 2237),
('2932457', 29, 32457, '2 - Nordeste', 'Bahia', 'BA', 'Umburanas', 2238),
('2932507', 29, 32507, '2 - Nordeste', 'Bahia', 'BA', 'Una', 2239),
('2932606', 29, 32606, '2 - Nordeste', 'Bahia', 'BA', 'Urandi', 2240),
('2932705', 29, 32705, '2 - Nordeste', 'Bahia', 'BA', 'Uruçuca', 2241),
('2932804', 29, 32804, '2 - Nordeste', 'Bahia', 'BA', 'Utinga', 2242),
('2932903', 29, 32903, '2 - Nordeste', 'Bahia', 'BA', 'Valença', 2243),
('2933000', 29, 33000, '2 - Nordeste', 'Bahia', 'BA', 'Valente', 2244),
('2933059', 29, 33059, '2 - Nordeste', 'Bahia', 'BA', 'Várzea da Roça', 2245),
('2933109', 29, 33109, '2 - Nordeste', 'Bahia', 'BA', 'Várzea do Poço', 2246),
('2933158', 29, 33158, '2 - Nordeste', 'Bahia', 'BA', 'Várzea Nova', 2247),
('2933174', 29, 33174, '2 - Nordeste', 'Bahia', 'BA', 'Varzedo', 2248),
('2933208', 29, 33208, '2 - Nordeste', 'Bahia', 'BA', 'Vera Cruz', 2249),
('2933257', 29, 33257, '2 - Nordeste', 'Bahia', 'BA', 'Vereda', 2250),
('2933307', 29, 33307, '2 - Nordeste', 'Bahia', 'BA', 'Vitória da Conquista', 2251),
('2933406', 29, 33406, '2 - Nordeste', 'Bahia', 'BA', 'Wagner', 2252),
('2933455', 29, 33455, '2 - Nordeste', 'Bahia', 'BA', 'Wanderley', 2253),
('2933505', 29, 33505, '2 - Nordeste', 'Bahia', 'BA', 'Wenceslau Guimarães', 2254),
('2933604', 29, 33604, '2 - Nordeste', 'Bahia', 'BA', 'Xique-Xique', 2255),
('3100104', 31, 104, '3 - Sudeste', 'Minas Gerais', 'MG', 'Abadia dos Dourados', 2256),
('3100203', 31, 203, '3 - Sudeste', 'Minas Gerais', 'MG', 'Abaeté', 2257),
('3100302', 31, 302, '3 - Sudeste', 'Minas Gerais', 'MG', 'Abre Campo', 2258),
('3100401', 31, 401, '3 - Sudeste', 'Minas Gerais', 'MG', 'Acaiaca', 2259),
('3100500', 31, 500, '3 - Sudeste', 'Minas Gerais', 'MG', 'Açucena', 2260),
('3100609', 31, 609, '3 - Sudeste', 'Minas Gerais', 'MG', 'Água Boa', 2261),
('3100708', 31, 708, '3 - Sudeste', 'Minas Gerais', 'MG', 'Água Comprida', 2262),
('3100807', 31, 807, '3 - Sudeste', 'Minas Gerais', 'MG', 'Aguanil', 2263),
('3100906', 31, 906, '3 - Sudeste', 'Minas Gerais', 'MG', 'Águas Formosas', 2264),
('3101003', 31, 1003, '3 - Sudeste', 'Minas Gerais', 'MG', 'Águas Vermelhas', 2265),
('3101102', 31, 1102, '3 - Sudeste', 'Minas Gerais', 'MG', 'Aimorés', 2266),
('3101201', 31, 1201, '3 - Sudeste', 'Minas Gerais', 'MG', 'Aiuruoca', 2267),
('3101300', 31, 1300, '3 - Sudeste', 'Minas Gerais', 'MG', 'Alagoa', 2268),
('3101409', 31, 1409, '3 - Sudeste', 'Minas Gerais', 'MG', 'Albertina', 2269),
('3101508', 31, 1508, '3 - Sudeste', 'Minas Gerais', 'MG', 'Além Paraíba', 2270),
('3101607', 31, 1607, '3 - Sudeste', 'Minas Gerais', 'MG', 'Alfenas', 2271),
('3101631', 31, 1631, '3 - Sudeste', 'Minas Gerais', 'MG', 'Alfredo Vasconcelos', 2272),
('3101706', 31, 1706, '3 - Sudeste', 'Minas Gerais', 'MG', 'Almenara', 2273),
('3101805', 31, 1805, '3 - Sudeste', 'Minas Gerais', 'MG', 'Alpercata', 2274),
('3101904', 31, 1904, '3 - Sudeste', 'Minas Gerais', 'MG', 'Alpinópolis', 2275),
('3102001', 31, 2001, '3 - Sudeste', 'Minas Gerais', 'MG', 'Alterosa', 2276),
('3102050', 31, 2050, '3 - Sudeste', 'Minas Gerais', 'MG', 'Alto Caparaó', 2277),
('3102100', 31, 2100, '3 - Sudeste', 'Minas Gerais', 'MG', 'Alto Rio Doce', 2278),
('3102209', 31, 2209, '3 - Sudeste', 'Minas Gerais', 'MG', 'Alvarenga', 2279),
('3102308', 31, 2308, '3 - Sudeste', 'Minas Gerais', 'MG', 'Alvinópolis', 2280),
('3102407', 31, 2407, '3 - Sudeste', 'Minas Gerais', 'MG', 'Alvorada de Minas', 2281),
('3102506', 31, 2506, '3 - Sudeste', 'Minas Gerais', 'MG', 'Amparo do Serra', 2282),
('3102605', 31, 2605, '3 - Sudeste', 'Minas Gerais', 'MG', 'Andradas', 2283),
('3102704', 31, 2704, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cachoeira de Pajeú', 2284),
('3102803', 31, 2803, '3 - Sudeste', 'Minas Gerais', 'MG', 'Andrelândia', 2285),
('3102852', 31, 2852, '3 - Sudeste', 'Minas Gerais', 'MG', 'Angelândia', 2286),
('3102902', 31, 2902, '3 - Sudeste', 'Minas Gerais', 'MG', 'Antônio Carlos', 2287),
('3103009', 31, 3009, '3 - Sudeste', 'Minas Gerais', 'MG', 'Antônio Dias', 2288),
('3103108', 31, 3108, '3 - Sudeste', 'Minas Gerais', 'MG', 'Antônio Prado de Minas', 2289),
('3103207', 31, 3207, '3 - Sudeste', 'Minas Gerais', 'MG', 'Araçaí', 2290),
('3103306', 31, 3306, '3 - Sudeste', 'Minas Gerais', 'MG', 'Aracitaba', 2291),
('3103405', 31, 3405, '3 - Sudeste', 'Minas Gerais', 'MG', 'Araçuaí', 2292),
('3103504', 31, 3504, '3 - Sudeste', 'Minas Gerais', 'MG', 'Araguari', 2293),
('3103603', 31, 3603, '3 - Sudeste', 'Minas Gerais', 'MG', 'Arantina', 2294),
('3103702', 31, 3702, '3 - Sudeste', 'Minas Gerais', 'MG', 'Araponga', 2295),
('3103751', 31, 3751, '3 - Sudeste', 'Minas Gerais', 'MG', 'Araporã', 2296),
('3103801', 31, 3801, '3 - Sudeste', 'Minas Gerais', 'MG', 'Arapuá', 2297),
('3103900', 31, 3900, '3 - Sudeste', 'Minas Gerais', 'MG', 'Araújos', 2298),
('3104007', 31, 4007, '3 - Sudeste', 'Minas Gerais', 'MG', 'Araxá', 2299),
('3104106', 31, 4106, '3 - Sudeste', 'Minas Gerais', 'MG', 'Arceburgo', 2300),
('3104205', 31, 4205, '3 - Sudeste', 'Minas Gerais', 'MG', 'Arcos', 2301),
('3104304', 31, 4304, '3 - Sudeste', 'Minas Gerais', 'MG', 'Areado', 2302),
('3104403', 31, 4403, '3 - Sudeste', 'Minas Gerais', 'MG', 'Argirita', 2303),
('3104452', 31, 4452, '3 - Sudeste', 'Minas Gerais', 'MG', 'Aricanduva', 2304),
('3104502', 31, 4502, '3 - Sudeste', 'Minas Gerais', 'MG', 'Arinos', 2305),
('3104601', 31, 4601, '3 - Sudeste', 'Minas Gerais', 'MG', 'Astolfo Dutra', 2306),
('3104700', 31, 4700, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ataléia', 2307),
('3104809', 31, 4809, '3 - Sudeste', 'Minas Gerais', 'MG', 'Augusto de Lima', 2308),
('3104908', 31, 4908, '3 - Sudeste', 'Minas Gerais', 'MG', 'Baependi', 2309),
('3105004', 31, 5004, '3 - Sudeste', 'Minas Gerais', 'MG', 'Baldim', 2310),
('3105103', 31, 5103, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bambuí', 2311),
('3105202', 31, 5202, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bandeira', 2312),
('3105301', 31, 5301, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bandeira do Sul', 2313),
('3105400', 31, 5400, '3 - Sudeste', 'Minas Gerais', 'MG', 'Barão de Cocais', 2314),
('3105509', 31, 5509, '3 - Sudeste', 'Minas Gerais', 'MG', 'Barão de Monte Alto', 2315),
('3105608', 31, 5608, '3 - Sudeste', 'Minas Gerais', 'MG', 'Barbacena', 2316),
('3105707', 31, 5707, '3 - Sudeste', 'Minas Gerais', 'MG', 'Barra Longa', 2317),
('3105905', 31, 5905, '3 - Sudeste', 'Minas Gerais', 'MG', 'Barroso', 2318),
('3106002', 31, 6002, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bela Vista de Minas', 2319),
('3106101', 31, 6101, '3 - Sudeste', 'Minas Gerais', 'MG', 'Belmiro Braga', 2320),
('3106200', 31, 6200, '3 - Sudeste', 'Minas Gerais', 'MG', 'Belo Horizonte', 2321),
('3106309', 31, 6309, '3 - Sudeste', 'Minas Gerais', 'MG', 'Belo Oriente', 2322),
('3106408', 31, 6408, '3 - Sudeste', 'Minas Gerais', 'MG', 'Belo Vale', 2323),
('3106507', 31, 6507, '3 - Sudeste', 'Minas Gerais', 'MG', 'Berilo', 2324),
('3106606', 31, 6606, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bertópolis', 2325),
('3106655', 31, 6655, '3 - Sudeste', 'Minas Gerais', 'MG', 'Berizal', 2326),
('3106705', 31, 6705, '3 - Sudeste', 'Minas Gerais', 'MG', 'Betim', 2327),
('3106804', 31, 6804, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bias Fortes', 2328),
('3106903', 31, 6903, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bicas', 2329),
('3107000', 31, 7000, '3 - Sudeste', 'Minas Gerais', 'MG', 'Biquinhas', 2330),
('3107109', 31, 7109, '3 - Sudeste', 'Minas Gerais', 'MG', 'Boa Esperança', 2331),
('3107208', 31, 7208, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bocaina de Minas', 2332),
('3107307', 31, 7307, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bocaiúva', 2333),
('3107406', 31, 7406, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bom Despacho', 2334),
('3107505', 31, 7505, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bom Jardim de Minas', 2335),
('3107604', 31, 7604, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bom Jesus da Penha', 2336),
('3107703', 31, 7703, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bom Jesus do Amparo', 2337),
('3107802', 31, 7802, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bom Jesus do Galho', 2338),
('3107901', 31, 7901, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bom Repouso', 2339),
('3108008', 31, 8008, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bom Sucesso', 2340),
('3108107', 31, 8107, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bonfim', 2341),
('3108206', 31, 8206, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bonfinópolis de Minas', 2342),
('3108255', 31, 8255, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bonito de Minas', 2343),
('3108305', 31, 8305, '3 - Sudeste', 'Minas Gerais', 'MG', 'Borda da Mata', 2344),
('3108404', 31, 8404, '3 - Sudeste', 'Minas Gerais', 'MG', 'Botelhos', 2345),
('3108503', 31, 8503, '3 - Sudeste', 'Minas Gerais', 'MG', 'Botumirim', 2346),
('3108552', 31, 8552, '3 - Sudeste', 'Minas Gerais', 'MG', 'Brasilândia de Minas', 2347),
('3108602', 31, 8602, '3 - Sudeste', 'Minas Gerais', 'MG', 'Brasília de Minas', 2348),
('3108701', 31, 8701, '3 - Sudeste', 'Minas Gerais', 'MG', 'Brás Pires', 2349),
('3108800', 31, 8800, '3 - Sudeste', 'Minas Gerais', 'MG', 'Braúnas', 2350),
('3108909', 31, 8909, '3 - Sudeste', 'Minas Gerais', 'MG', 'Brazópolis', 2351),
('3109006', 31, 9006, '3 - Sudeste', 'Minas Gerais', 'MG', 'Brumadinho', 2352),
('3109105', 31, 9105, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bueno Brandão', 2353),
('3109204', 31, 9204, '3 - Sudeste', 'Minas Gerais', 'MG', 'Buenópolis', 2354),
('3109253', 31, 9253, '3 - Sudeste', 'Minas Gerais', 'MG', 'Bugre', 2355),
('3109303', 31, 9303, '3 - Sudeste', 'Minas Gerais', 'MG', 'Buritis', 2356),
('3109402', 31, 9402, '3 - Sudeste', 'Minas Gerais', 'MG', 'Buritizeiro', 2357),
('3109451', 31, 9451, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cabeceira Grande', 2358),
('3109501', 31, 9501, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cabo Verde', 2359),
('3109600', 31, 9600, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cachoeira da Prata', 2360),
('3109709', 31, 9709, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cachoeira de Minas', 2361),
('3109808', 31, 9808, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cachoeira Dourada', 2362),
('3109907', 31, 9907, '3 - Sudeste', 'Minas Gerais', 'MG', 'Caetanópolis', 2363),
('3110004', 31, 10004, '3 - Sudeste', 'Minas Gerais', 'MG', 'Caeté', 2364),
('3110103', 31, 10103, '3 - Sudeste', 'Minas Gerais', 'MG', 'Caiana', 2365),
('3110202', 31, 10202, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cajuri', 2366),
('3110301', 31, 10301, '3 - Sudeste', 'Minas Gerais', 'MG', 'Caldas', 2367),
('3110400', 31, 10400, '3 - Sudeste', 'Minas Gerais', 'MG', 'Camacho', 2368),
('3110509', 31, 10509, '3 - Sudeste', 'Minas Gerais', 'MG', 'Camanducaia', 2369),
('3110608', 31, 10608, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cambuí', 2370),
('3110707', 31, 10707, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cambuquira', 2371),
('3110806', 31, 10806, '3 - Sudeste', 'Minas Gerais', 'MG', 'Campanário', 2372),
('3110905', 31, 10905, '3 - Sudeste', 'Minas Gerais', 'MG', 'Campanha', 2373),
('3111002', 31, 11002, '3 - Sudeste', 'Minas Gerais', 'MG', 'Campestre', 2374),
('3111101', 31, 11101, '3 - Sudeste', 'Minas Gerais', 'MG', 'Campina Verde', 2375),
('3111150', 31, 11150, '3 - Sudeste', 'Minas Gerais', 'MG', 'Campo Azul', 2376),
('3111200', 31, 11200, '3 - Sudeste', 'Minas Gerais', 'MG', 'Campo Belo', 2377),
('3111309', 31, 11309, '3 - Sudeste', 'Minas Gerais', 'MG', 'Campo do Meio', 2378),
('3111408', 31, 11408, '3 - Sudeste', 'Minas Gerais', 'MG', 'Campo Florido', 2379),
('3111507', 31, 11507, '3 - Sudeste', 'Minas Gerais', 'MG', 'Campos Altos', 2380),
('3111606', 31, 11606, '3 - Sudeste', 'Minas Gerais', 'MG', 'Campos Gerais', 2381),
('3111705', 31, 11705, '3 - Sudeste', 'Minas Gerais', 'MG', 'Canaã', 2382),
('3111804', 31, 11804, '3 - Sudeste', 'Minas Gerais', 'MG', 'Canápolis', 2383),
('3111903', 31, 11903, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cana Verde', 2384),
('3112000', 31, 12000, '3 - Sudeste', 'Minas Gerais', 'MG', 'Candeias', 2385),
('3112059', 31, 12059, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cantagalo', 2386),
('3112109', 31, 12109, '3 - Sudeste', 'Minas Gerais', 'MG', 'Caparaó', 2387),
('3112208', 31, 12208, '3 - Sudeste', 'Minas Gerais', 'MG', 'Capela Nova', 2388),
('3112307', 31, 12307, '3 - Sudeste', 'Minas Gerais', 'MG', 'Capelinha', 2389),
('3112406', 31, 12406, '3 - Sudeste', 'Minas Gerais', 'MG', 'Capetinga', 2390),
('3112505', 31, 12505, '3 - Sudeste', 'Minas Gerais', 'MG', 'Capim Branco', 2391),
('3112604', 31, 12604, '3 - Sudeste', 'Minas Gerais', 'MG', 'Capinópolis', 2392),
('3112653', 31, 12653, '3 - Sudeste', 'Minas Gerais', 'MG', 'Capitão Andrade', 2393),
('3112703', 31, 12703, '3 - Sudeste', 'Minas Gerais', 'MG', 'Capitão Enéas', 2394),
('3112802', 31, 12802, '3 - Sudeste', 'Minas Gerais', 'MG', 'Capitólio', 2395),
('3112901', 31, 12901, '3 - Sudeste', 'Minas Gerais', 'MG', 'Caputira', 2396),
('3113008', 31, 13008, '3 - Sudeste', 'Minas Gerais', 'MG', 'Caraí', 2397),
('3113107', 31, 13107, '3 - Sudeste', 'Minas Gerais', 'MG', 'Caranaíba', 2398),
('3113206', 31, 13206, '3 - Sudeste', 'Minas Gerais', 'MG', 'Carandaí', 2399),
('3113305', 31, 13305, '3 - Sudeste', 'Minas Gerais', 'MG', 'Carangola', 2400),
('3113404', 31, 13404, '3 - Sudeste', 'Minas Gerais', 'MG', 'Caratinga', 2401),
('3113503', 31, 13503, '3 - Sudeste', 'Minas Gerais', 'MG', 'Carbonita', 2402),
('3113602', 31, 13602, '3 - Sudeste', 'Minas Gerais', 'MG', 'Careaçu', 2403),
('3113701', 31, 13701, '3 - Sudeste', 'Minas Gerais', 'MG', 'Carlos Chagas', 2404),
('3113800', 31, 13800, '3 - Sudeste', 'Minas Gerais', 'MG', 'Carmésia', 2405),
('3113909', 31, 13909, '3 - Sudeste', 'Minas Gerais', 'MG', 'Carmo da Cachoeira', 2406),
('3114006', 31, 14006, '3 - Sudeste', 'Minas Gerais', 'MG', 'Carmo da Mata', 2407),
('3114105', 31, 14105, '3 - Sudeste', 'Minas Gerais', 'MG', 'Carmo de Minas', 2408),
('3114204', 31, 14204, '3 - Sudeste', 'Minas Gerais', 'MG', 'Carmo do Cajuru', 2409),
('3114303', 31, 14303, '3 - Sudeste', 'Minas Gerais', 'MG', 'Carmo do Paranaíba', 2410),
('3114402', 31, 14402, '3 - Sudeste', 'Minas Gerais', 'MG', 'Carmo do Rio Claro', 2411),
('3114501', 31, 14501, '3 - Sudeste', 'Minas Gerais', 'MG', 'Carmópolis de Minas', 2412),
('3114550', 31, 14550, '3 - Sudeste', 'Minas Gerais', 'MG', 'Carneirinho', 2413),
('3114600', 31, 14600, '3 - Sudeste', 'Minas Gerais', 'MG', 'Carrancas', 2414),
('3114709', 31, 14709, '3 - Sudeste', 'Minas Gerais', 'MG', 'Carvalhópolis', 2415),
('3114808', 31, 14808, '3 - Sudeste', 'Minas Gerais', 'MG', 'Carvalhos', 2416),
('3114907', 31, 14907, '3 - Sudeste', 'Minas Gerais', 'MG', 'Casa Grande', 2417),
('3115003', 31, 15003, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cascalho Rico', 2418),
('3115102', 31, 15102, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cássia', 2419),
('3115201', 31, 15201, '3 - Sudeste', 'Minas Gerais', 'MG', 'Conceição da Barra de Minas', 2420),
('3115300', 31, 15300, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cataguases', 2421),
('3115359', 31, 15359, '3 - Sudeste', 'Minas Gerais', 'MG', 'Catas Altas', 2422),
('3115409', 31, 15409, '3 - Sudeste', 'Minas Gerais', 'MG', 'Catas Altas da Noruega', 2423),
('3115458', 31, 15458, '3 - Sudeste', 'Minas Gerais', 'MG', 'Catuji', 2424),
('3115474', 31, 15474, '3 - Sudeste', 'Minas Gerais', 'MG', 'Catuti', 2425),
('3115508', 31, 15508, '3 - Sudeste', 'Minas Gerais', 'MG', 'Caxambu', 2426),
('3115607', 31, 15607, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cedro do Abaeté', 2427),
('3115706', 31, 15706, '3 - Sudeste', 'Minas Gerais', 'MG', 'Central de Minas', 2428),
('3115805', 31, 15805, '3 - Sudeste', 'Minas Gerais', 'MG', 'Centralina', 2429),
('3115904', 31, 15904, '3 - Sudeste', 'Minas Gerais', 'MG', 'Chácara', 2430),
('3116001', 31, 16001, '3 - Sudeste', 'Minas Gerais', 'MG', 'Chalé', 2431),
('3116100', 31, 16100, '3 - Sudeste', 'Minas Gerais', 'MG', 'Chapada do Norte', 2432),
('3116159', 31, 16159, '3 - Sudeste', 'Minas Gerais', 'MG', 'Chapada Gaúcha', 2433),
('3116209', 31, 16209, '3 - Sudeste', 'Minas Gerais', 'MG', 'Chiador', 2434),
('3116308', 31, 16308, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cipotânea', 2435),
('3116407', 31, 16407, '3 - Sudeste', 'Minas Gerais', 'MG', 'Claraval', 2436),
('3116506', 31, 16506, '3 - Sudeste', 'Minas Gerais', 'MG', 'Claro dos Poções', 2437),
('3116605', 31, 16605, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cláudio', 2438),
('3116704', 31, 16704, '3 - Sudeste', 'Minas Gerais', 'MG', 'Coimbra', 2439),
('3116803', 31, 16803, '3 - Sudeste', 'Minas Gerais', 'MG', 'Coluna', 2440),
('3116902', 31, 16902, '3 - Sudeste', 'Minas Gerais', 'MG', 'Comendador Gomes', 2441),
('3117009', 31, 17009, '3 - Sudeste', 'Minas Gerais', 'MG', 'Comercinho', 2442),
('3117108', 31, 17108, '3 - Sudeste', 'Minas Gerais', 'MG', 'Conceição da Aparecida', 2443),
('3117207', 31, 17207, '3 - Sudeste', 'Minas Gerais', 'MG', 'Conceição das Pedras', 2444),
('3117306', 31, 17306, '3 - Sudeste', 'Minas Gerais', 'MG', 'Conceição das Alagoas', 2445),
('3117405', 31, 17405, '3 - Sudeste', 'Minas Gerais', 'MG', 'Conceição de Ipanema', 2446),
('3117504', 31, 17504, '3 - Sudeste', 'Minas Gerais', 'MG', 'Conceição do Mato Dentro', 2447),
('3117603', 31, 17603, '3 - Sudeste', 'Minas Gerais', 'MG', 'Conceição do Pará', 2448),
('3117702', 31, 17702, '3 - Sudeste', 'Minas Gerais', 'MG', 'Conceição do Rio Verde', 2449),
('3117801', 31, 17801, '3 - Sudeste', 'Minas Gerais', 'MG', 'Conceição dos Ouros', 2450),
('3117836', 31, 17836, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cônego Marinho', 2451),
('3117876', 31, 17876, '3 - Sudeste', 'Minas Gerais', 'MG', 'Confins', 2452),
('3117900', 31, 17900, '3 - Sudeste', 'Minas Gerais', 'MG', 'Congonhal', 2453),
('3118007', 31, 18007, '3 - Sudeste', 'Minas Gerais', 'MG', 'Congonhas', 2454),
('3118106', 31, 18106, '3 - Sudeste', 'Minas Gerais', 'MG', 'Congonhas do Norte', 2455),
('3118205', 31, 18205, '3 - Sudeste', 'Minas Gerais', 'MG', 'Conquista', 2456),
('3118304', 31, 18304, '3 - Sudeste', 'Minas Gerais', 'MG', 'Conselheiro Lafaiete', 2457),
('3118403', 31, 18403, '3 - Sudeste', 'Minas Gerais', 'MG', 'Conselheiro Pena', 2458),
('3118502', 31, 18502, '3 - Sudeste', 'Minas Gerais', 'MG', 'Consolação', 2459),
('3118601', 31, 18601, '3 - Sudeste', 'Minas Gerais', 'MG', 'Contagem', 2460),
('3118700', 31, 18700, '3 - Sudeste', 'Minas Gerais', 'MG', 'Coqueiral', 2461),
('3118809', 31, 18809, '3 - Sudeste', 'Minas Gerais', 'MG', 'Coração de Jesus', 2462),
('3118908', 31, 18908, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cordisburgo', 2463),
('3119005', 31, 19005, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cordislândia', 2464),
('3119104', 31, 19104, '3 - Sudeste', 'Minas Gerais', 'MG', 'Corinto', 2465),
('3119203', 31, 19203, '3 - Sudeste', 'Minas Gerais', 'MG', 'Coroaci', 2466),
('3119302', 31, 19302, '3 - Sudeste', 'Minas Gerais', 'MG', 'Coromandel', 2467),
('3119401', 31, 19401, '3 - Sudeste', 'Minas Gerais', 'MG', 'Coronel Fabriciano', 2468),
('3119500', 31, 19500, '3 - Sudeste', 'Minas Gerais', 'MG', 'Coronel Murta', 2469),
('3119609', 31, 19609, '3 - Sudeste', 'Minas Gerais', 'MG', 'Coronel Pacheco', 2470),
('3119708', 31, 19708, '3 - Sudeste', 'Minas Gerais', 'MG', 'Coronel Xavier Chaves', 2471),
('3119807', 31, 19807, '3 - Sudeste', 'Minas Gerais', 'MG', 'Córrego Danta', 2472),
('3119906', 31, 19906, '3 - Sudeste', 'Minas Gerais', 'MG', 'Córrego do Bom Jesus', 2473),
('3119955', 31, 19955, '3 - Sudeste', 'Minas Gerais', 'MG', 'Córrego Fundo', 2474),
('3120003', 31, 20003, '3 - Sudeste', 'Minas Gerais', 'MG', 'Córrego Novo', 2475),
('3120102', 31, 20102, '3 - Sudeste', 'Minas Gerais', 'MG', 'Couto de Magalhães de Minas', 2476),
('3120151', 31, 20151, '3 - Sudeste', 'Minas Gerais', 'MG', 'Crisólita', 2477),
('3120201', 31, 20201, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cristais', 2478),
('3120300', 31, 20300, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cristália', 2479),
('3120409', 31, 20409, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cristiano Otoni', 2480),
('3120508', 31, 20508, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cristina', 2481),
('3120607', 31, 20607, '3 - Sudeste', 'Minas Gerais', 'MG', 'Crucilândia', 2482),
('3120706', 31, 20706, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cruzeiro da Fortaleza', 2483),
('3120805', 31, 20805, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cruzília', 2484),
('3120839', 31, 20839, '3 - Sudeste', 'Minas Gerais', 'MG', 'Cuparaque', 2485),
('3120870', 31, 20870, '3 - Sudeste', 'Minas Gerais', 'MG', 'Curral de Dentro', 2486),
('3120904', 31, 20904, '3 - Sudeste', 'Minas Gerais', 'MG', 'Curvelo', 2487),
('3121001', 31, 21001, '3 - Sudeste', 'Minas Gerais', 'MG', 'Datas', 2488),
('3121100', 31, 21100, '3 - Sudeste', 'Minas Gerais', 'MG', 'Delfim Moreira', 2489),
('3121209', 31, 21209, '3 - Sudeste', 'Minas Gerais', 'MG', 'Delfinópolis', 2490),
('3121258', 31, 21258, '3 - Sudeste', 'Minas Gerais', 'MG', 'Delta', 2491),
('3121308', 31, 21308, '3 - Sudeste', 'Minas Gerais', 'MG', 'Descoberto', 2492),
('3121407', 31, 21407, '3 - Sudeste', 'Minas Gerais', 'MG', 'Desterro de Entre Rios', 2493),
('3121506', 31, 21506, '3 - Sudeste', 'Minas Gerais', 'MG', 'Desterro do Melo', 2494),
('3121605', 31, 21605, '3 - Sudeste', 'Minas Gerais', 'MG', 'Diamantina', 2495),
('3121704', 31, 21704, '3 - Sudeste', 'Minas Gerais', 'MG', 'Diogo de Vasconcelos', 2496),
('3121803', 31, 21803, '3 - Sudeste', 'Minas Gerais', 'MG', 'Dionísio', 2497),
('3121902', 31, 21902, '3 - Sudeste', 'Minas Gerais', 'MG', 'Divinésia', 2498),
('3122009', 31, 22009, '3 - Sudeste', 'Minas Gerais', 'MG', 'Divino', 2499),
('3122108', 31, 22108, '3 - Sudeste', 'Minas Gerais', 'MG', 'Divino das Laranjeiras', 2500),
('3122207', 31, 22207, '3 - Sudeste', 'Minas Gerais', 'MG', 'Divinolândia de Minas', 2501),
('3122306', 31, 22306, '3 - Sudeste', 'Minas Gerais', 'MG', 'Divinópolis', 2502),
('3122355', 31, 22355, '3 - Sudeste', 'Minas Gerais', 'MG', 'Divisa Alegre', 2503),
('3122405', 31, 22405, '3 - Sudeste', 'Minas Gerais', 'MG', 'Divisa Nova', 2504),
('3122454', 31, 22454, '3 - Sudeste', 'Minas Gerais', 'MG', 'Divisópolis', 2505),
('3122470', 31, 22470, '3 - Sudeste', 'Minas Gerais', 'MG', 'Dom Bosco', 2506),
('3122504', 31, 22504, '3 - Sudeste', 'Minas Gerais', 'MG', 'Dom Cavati', 2507),
('3122603', 31, 22603, '3 - Sudeste', 'Minas Gerais', 'MG', 'Dom Joaquim', 2508),
('3122702', 31, 22702, '3 - Sudeste', 'Minas Gerais', 'MG', 'Dom Silvério', 2509),
('3122801', 31, 22801, '3 - Sudeste', 'Minas Gerais', 'MG', 'Dom Viçoso', 2510),
('3122900', 31, 22900, '3 - Sudeste', 'Minas Gerais', 'MG', 'Dona Eusébia', 2511),
('3123007', 31, 23007, '3 - Sudeste', 'Minas Gerais', 'MG', 'Dores de Campos', 2512),
('3123106', 31, 23106, '3 - Sudeste', 'Minas Gerais', 'MG', 'Dores de Guanhães', 2513),
('3123205', 31, 23205, '3 - Sudeste', 'Minas Gerais', 'MG', 'Dores do Indaiá', 2514),
('3123304', 31, 23304, '3 - Sudeste', 'Minas Gerais', 'MG', 'Dores do Turvo', 2515),
('3123403', 31, 23403, '3 - Sudeste', 'Minas Gerais', 'MG', 'Doresópolis', 2516),
('3123502', 31, 23502, '3 - Sudeste', 'Minas Gerais', 'MG', 'Douradoquara', 2517),
('3123528', 31, 23528, '3 - Sudeste', 'Minas Gerais', 'MG', 'Durandé', 2518),
('3123601', 31, 23601, '3 - Sudeste', 'Minas Gerais', 'MG', 'Elói Mendes', 2519),
('3123700', 31, 23700, '3 - Sudeste', 'Minas Gerais', 'MG', 'Engenheiro Caldas', 2520),
('3123809', 31, 23809, '3 - Sudeste', 'Minas Gerais', 'MG', 'Engenheiro Navarro', 2521),
('3123858', 31, 23858, '3 - Sudeste', 'Minas Gerais', 'MG', 'Entre Folhas', 2522),
('3123908', 31, 23908, '3 - Sudeste', 'Minas Gerais', 'MG', 'Entre Rios de Minas', 2523),
('3124005', 31, 24005, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ervália', 2524),
('3124104', 31, 24104, '3 - Sudeste', 'Minas Gerais', 'MG', 'Esmeraldas', 2525),
('3124203', 31, 24203, '3 - Sudeste', 'Minas Gerais', 'MG', 'Espera Feliz', 2526),
('3124302', 31, 24302, '3 - Sudeste', 'Minas Gerais', 'MG', 'Espinosa', 2527),
('3124401', 31, 24401, '3 - Sudeste', 'Minas Gerais', 'MG', 'Espírito Santo do Dourado', 2528),
('3124500', 31, 24500, '3 - Sudeste', 'Minas Gerais', 'MG', 'Estiva', 2529),
('3124609', 31, 24609, '3 - Sudeste', 'Minas Gerais', 'MG', 'Estrela Dalva', 2530),
('3124708', 31, 24708, '3 - Sudeste', 'Minas Gerais', 'MG', 'Estrela do Indaiá', 2531),
('3124807', 31, 24807, '3 - Sudeste', 'Minas Gerais', 'MG', 'Estrela do Sul', 2532),
('3124906', 31, 24906, '3 - Sudeste', 'Minas Gerais', 'MG', 'Eugenópolis', 2533),
('3125002', 31, 25002, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ewbank da Câmara', 2534),
('3125101', 31, 25101, '3 - Sudeste', 'Minas Gerais', 'MG', 'Extrema', 2535),
('3125200', 31, 25200, '3 - Sudeste', 'Minas Gerais', 'MG', 'Fama', 2536),
('3125309', 31, 25309, '3 - Sudeste', 'Minas Gerais', 'MG', 'Faria Lemos', 2537),
('3125408', 31, 25408, '3 - Sudeste', 'Minas Gerais', 'MG', 'Felício dos Santos', 2538),
('3125507', 31, 25507, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Gonçalo do Rio Preto', 2539),
('3125606', 31, 25606, '3 - Sudeste', 'Minas Gerais', 'MG', 'Felisburgo', 2540),
('3125705', 31, 25705, '3 - Sudeste', 'Minas Gerais', 'MG', 'Felixlândia', 2541),
('3125804', 31, 25804, '3 - Sudeste', 'Minas Gerais', 'MG', 'Fernandes Tourinho', 2542),
('3125903', 31, 25903, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ferros', 2543),
('3125952', 31, 25952, '3 - Sudeste', 'Minas Gerais', 'MG', 'Fervedouro', 2544),
('3126000', 31, 26000, '3 - Sudeste', 'Minas Gerais', 'MG', 'Florestal', 2545),
('3126109', 31, 26109, '3 - Sudeste', 'Minas Gerais', 'MG', 'Formiga', 2546),
('3126208', 31, 26208, '3 - Sudeste', 'Minas Gerais', 'MG', 'Formoso', 2547),
('3126307', 31, 26307, '3 - Sudeste', 'Minas Gerais', 'MG', 'Fortaleza de Minas', 2548),
('3126406', 31, 26406, '3 - Sudeste', 'Minas Gerais', 'MG', 'Fortuna de Minas', 2549),
('3126505', 31, 26505, '3 - Sudeste', 'Minas Gerais', 'MG', 'Francisco Badaró', 2550),
('3126604', 31, 26604, '3 - Sudeste', 'Minas Gerais', 'MG', 'Francisco Dumont', 2551),
('3126703', 31, 26703, '3 - Sudeste', 'Minas Gerais', 'MG', 'Francisco Sá', 2552),
('3126752', 31, 26752, '3 - Sudeste', 'Minas Gerais', 'MG', 'Franciscópolis', 2553),
('3126802', 31, 26802, '3 - Sudeste', 'Minas Gerais', 'MG', 'Frei Gaspar', 2554),
('3126901', 31, 26901, '3 - Sudeste', 'Minas Gerais', 'MG', 'Frei Inocêncio', 2555),
('3126950', 31, 26950, '3 - Sudeste', 'Minas Gerais', 'MG', 'Frei Lagonegro', 2556),
('3127008', 31, 27008, '3 - Sudeste', 'Minas Gerais', 'MG', 'Fronteira', 2557),
('3127057', 31, 27057, '3 - Sudeste', 'Minas Gerais', 'MG', 'Fronteira dos Vales', 2558),
('3127073', 31, 27073, '3 - Sudeste', 'Minas Gerais', 'MG', 'Fruta de Leite', 2559),
('3127107', 31, 27107, '3 - Sudeste', 'Minas Gerais', 'MG', 'Frutal', 2560),
('3127206', 31, 27206, '3 - Sudeste', 'Minas Gerais', 'MG', 'Funilândia', 2561),
('3127305', 31, 27305, '3 - Sudeste', 'Minas Gerais', 'MG', 'Galiléia', 2562),
('3127339', 31, 27339, '3 - Sudeste', 'Minas Gerais', 'MG', 'Gameleiras', 2563),
('3127354', 31, 27354, '3 - Sudeste', 'Minas Gerais', 'MG', 'Glaucilândia', 2564),
('3127370', 31, 27370, '3 - Sudeste', 'Minas Gerais', 'MG', 'Goiabeira', 2565),
('3127388', 31, 27388, '3 - Sudeste', 'Minas Gerais', 'MG', 'Goianá', 2566),
('3127404', 31, 27404, '3 - Sudeste', 'Minas Gerais', 'MG', 'Gonçalves', 2567),
('3127503', 31, 27503, '3 - Sudeste', 'Minas Gerais', 'MG', 'Gonzaga', 2568),
('3127602', 31, 27602, '3 - Sudeste', 'Minas Gerais', 'MG', 'Gouveia', 2569),
('3127701', 31, 27701, '3 - Sudeste', 'Minas Gerais', 'MG', 'Governador Valadares', 2570),
('3127800', 31, 27800, '3 - Sudeste', 'Minas Gerais', 'MG', 'Grão Mogol', 2571),
('3127909', 31, 27909, '3 - Sudeste', 'Minas Gerais', 'MG', 'Grupiara', 2572),
('3128006', 31, 28006, '3 - Sudeste', 'Minas Gerais', 'MG', 'Guanhães', 2573),
('3128105', 31, 28105, '3 - Sudeste', 'Minas Gerais', 'MG', 'Guapé', 2574),
('3128204', 31, 28204, '3 - Sudeste', 'Minas Gerais', 'MG', 'Guaraciaba', 2575),
('3128253', 31, 28253, '3 - Sudeste', 'Minas Gerais', 'MG', 'Guaraciama', 2576),
('3128303', 31, 28303, '3 - Sudeste', 'Minas Gerais', 'MG', 'Guaranésia', 2577),
('3128402', 31, 28402, '3 - Sudeste', 'Minas Gerais', 'MG', 'Guarani', 2578),
('3128501', 31, 28501, '3 - Sudeste', 'Minas Gerais', 'MG', 'Guarará', 2579),
('3128600', 31, 28600, '3 - Sudeste', 'Minas Gerais', 'MG', 'Guarda-Mor', 2580),
('3128709', 31, 28709, '3 - Sudeste', 'Minas Gerais', 'MG', 'Guaxupé', 2581),
('3128808', 31, 28808, '3 - Sudeste', 'Minas Gerais', 'MG', 'Guidoval', 2582),
('3128907', 31, 28907, '3 - Sudeste', 'Minas Gerais', 'MG', 'Guimarânia', 2583),
('3129004', 31, 29004, '3 - Sudeste', 'Minas Gerais', 'MG', 'Guiricema', 2584),
('3129103', 31, 29103, '3 - Sudeste', 'Minas Gerais', 'MG', 'Gurinhatã', 2585),
('3129202', 31, 29202, '3 - Sudeste', 'Minas Gerais', 'MG', 'Heliodora', 2586),
('3129301', 31, 29301, '3 - Sudeste', 'Minas Gerais', 'MG', 'Iapu', 2587),
('3129400', 31, 29400, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ibertioga', 2588),
('3129509', 31, 29509, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ibiá', 2589),
('3129608', 31, 29608, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ibiaí', 2590),
('3129657', 31, 29657, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ibiracatu', 2591),
('3129707', 31, 29707, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ibiraci', 2592),
('3129806', 31, 29806, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ibirité', 2593),
('3129905', 31, 29905, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ibitiúra de Minas', 2594),
('3130002', 31, 30002, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ibituruna', 2595),
('3130051', 31, 30051, '3 - Sudeste', 'Minas Gerais', 'MG', 'Icaraí de Minas', 2596),
('3130101', 31, 30101, '3 - Sudeste', 'Minas Gerais', 'MG', 'Igarapé', 2597),
('3130200', 31, 30200, '3 - Sudeste', 'Minas Gerais', 'MG', 'Igaratinga', 2598),
('3130309', 31, 30309, '3 - Sudeste', 'Minas Gerais', 'MG', 'Iguatama', 2599),
('3130408', 31, 30408, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ijaci', 2600),
('3130507', 31, 30507, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ilicínea', 2601),
('3130556', 31, 30556, '3 - Sudeste', 'Minas Gerais', 'MG', 'Imbé de Minas', 2602),
('3130606', 31, 30606, '3 - Sudeste', 'Minas Gerais', 'MG', 'Inconfidentes', 2603),
('3130655', 31, 30655, '3 - Sudeste', 'Minas Gerais', 'MG', 'Indaiabira', 2604),
('3130705', 31, 30705, '3 - Sudeste', 'Minas Gerais', 'MG', 'Indianópolis', 2605),
('3130804', 31, 30804, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ingaí', 2606),
('3130903', 31, 30903, '3 - Sudeste', 'Minas Gerais', 'MG', 'Inhapim', 2607),
('3131000', 31, 31000, '3 - Sudeste', 'Minas Gerais', 'MG', 'Inhaúma', 2608),
('3131109', 31, 31109, '3 - Sudeste', 'Minas Gerais', 'MG', 'Inimutaba', 2609),
('3131158', 31, 31158, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ipaba', 2610),
('3131208', 31, 31208, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ipanema', 2611),
('3131307', 31, 31307, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ipatinga', 2612),
('3131406', 31, 31406, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ipiaçu', 2613),
('3131505', 31, 31505, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ipuiúna', 2614),
('3131604', 31, 31604, '3 - Sudeste', 'Minas Gerais', 'MG', 'Iraí de Minas', 2615),
('3131703', 31, 31703, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itabira', 2616),
('3131802', 31, 31802, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itabirinha', 2617),
('3131901', 31, 31901, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itabirito', 2618),
('3132008', 31, 32008, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itacambira', 2619),
('3132107', 31, 32107, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itacarambi', 2620),
('3132206', 31, 32206, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itaguara', 2621),
('3132305', 31, 32305, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itaipé', 2622),
('3132404', 31, 32404, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itajubá', 2623),
('3132503', 31, 32503, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itamarandiba', 2624),
('3132602', 31, 32602, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itamarati de Minas', 2625),
('3132701', 31, 32701, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itambacuri', 2626),
('3132800', 31, 32800, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itambé do Mato Dentro', 2627),
('3132909', 31, 32909, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itamogi', 2628);
INSERT INTO `ibge_uf` (`cod_mun`, `cod_uf`, `seila`, `regiao`, `estado`, `uf`, `municipio`, `id`) VALUES
('3133006', 31, 33006, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itamonte', 2629),
('3133105', 31, 33105, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itanhandu', 2630),
('3133204', 31, 33204, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itanhomi', 2631),
('3133303', 31, 33303, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itaobim', 2632),
('3133402', 31, 33402, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itapagipe', 2633),
('3133501', 31, 33501, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itapecerica', 2634),
('3133600', 31, 33600, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itapeva', 2635),
('3133709', 31, 33709, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itatiaiuçu', 2636),
('3133758', 31, 33758, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itaú de Minas', 2637),
('3133808', 31, 33808, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itaúna', 2638),
('3133907', 31, 33907, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itaverava', 2639),
('3134004', 31, 34004, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itinga', 2640),
('3134103', 31, 34103, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itueta', 2641),
('3134202', 31, 34202, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ituiutaba', 2642),
('3134301', 31, 34301, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itumirim', 2643),
('3134400', 31, 34400, '3 - Sudeste', 'Minas Gerais', 'MG', 'Iturama', 2644),
('3134509', 31, 34509, '3 - Sudeste', 'Minas Gerais', 'MG', 'Itutinga', 2645),
('3134608', 31, 34608, '3 - Sudeste', 'Minas Gerais', 'MG', 'Jaboticatubas', 2646),
('3134707', 31, 34707, '3 - Sudeste', 'Minas Gerais', 'MG', 'Jacinto', 2647),
('3134806', 31, 34806, '3 - Sudeste', 'Minas Gerais', 'MG', 'Jacuí', 2648),
('3134905', 31, 34905, '3 - Sudeste', 'Minas Gerais', 'MG', 'Jacutinga', 2649),
('3135001', 31, 35001, '3 - Sudeste', 'Minas Gerais', 'MG', 'Jaguaraçu', 2650),
('3135050', 31, 35050, '3 - Sudeste', 'Minas Gerais', 'MG', 'Jaíba', 2651),
('3135076', 31, 35076, '3 - Sudeste', 'Minas Gerais', 'MG', 'Jampruca', 2652),
('3135100', 31, 35100, '3 - Sudeste', 'Minas Gerais', 'MG', 'Janaúba', 2653),
('3135209', 31, 35209, '3 - Sudeste', 'Minas Gerais', 'MG', 'Januária', 2654),
('3135308', 31, 35308, '3 - Sudeste', 'Minas Gerais', 'MG', 'Japaraíba', 2655),
('3135357', 31, 35357, '3 - Sudeste', 'Minas Gerais', 'MG', 'Japonvar', 2656),
('3135407', 31, 35407, '3 - Sudeste', 'Minas Gerais', 'MG', 'Jeceaba', 2657),
('3135456', 31, 35456, '3 - Sudeste', 'Minas Gerais', 'MG', 'Jenipapo de Minas', 2658),
('3135506', 31, 35506, '3 - Sudeste', 'Minas Gerais', 'MG', 'Jequeri', 2659),
('3135605', 31, 35605, '3 - Sudeste', 'Minas Gerais', 'MG', 'Jequitaí', 2660),
('3135704', 31, 35704, '3 - Sudeste', 'Minas Gerais', 'MG', 'Jequitibá', 2661),
('3135803', 31, 35803, '3 - Sudeste', 'Minas Gerais', 'MG', 'Jequitinhonha', 2662),
('3135902', 31, 35902, '3 - Sudeste', 'Minas Gerais', 'MG', 'Jesuânia', 2663),
('3136009', 31, 36009, '3 - Sudeste', 'Minas Gerais', 'MG', 'Joaíma', 2664),
('3136108', 31, 36108, '3 - Sudeste', 'Minas Gerais', 'MG', 'Joanésia', 2665),
('3136207', 31, 36207, '3 - Sudeste', 'Minas Gerais', 'MG', 'João Monlevade', 2666),
('3136306', 31, 36306, '3 - Sudeste', 'Minas Gerais', 'MG', 'João Pinheiro', 2667),
('3136405', 31, 36405, '3 - Sudeste', 'Minas Gerais', 'MG', 'Joaquim Felício', 2668),
('3136504', 31, 36504, '3 - Sudeste', 'Minas Gerais', 'MG', 'Jordânia', 2669),
('3136520', 31, 36520, '3 - Sudeste', 'Minas Gerais', 'MG', 'José Gonçalves de Minas', 2670),
('3136553', 31, 36553, '3 - Sudeste', 'Minas Gerais', 'MG', 'José Raydan', 2671),
('3136579', 31, 36579, '3 - Sudeste', 'Minas Gerais', 'MG', 'Josenópolis', 2672),
('3136603', 31, 36603, '3 - Sudeste', 'Minas Gerais', 'MG', 'Nova União', 2673),
('3136652', 31, 36652, '3 - Sudeste', 'Minas Gerais', 'MG', 'Juatuba', 2674),
('3136702', 31, 36702, '3 - Sudeste', 'Minas Gerais', 'MG', 'Juiz de Fora', 2675),
('3136801', 31, 36801, '3 - Sudeste', 'Minas Gerais', 'MG', 'Juramento', 2676),
('3136900', 31, 36900, '3 - Sudeste', 'Minas Gerais', 'MG', 'Juruaia', 2677),
('3136959', 31, 36959, '3 - Sudeste', 'Minas Gerais', 'MG', 'Juvenília', 2678),
('3137007', 31, 37007, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ladainha', 2679),
('3137106', 31, 37106, '3 - Sudeste', 'Minas Gerais', 'MG', 'Lagamar', 2680),
('3137205', 31, 37205, '3 - Sudeste', 'Minas Gerais', 'MG', 'Lagoa da Prata', 2681),
('3137304', 31, 37304, '3 - Sudeste', 'Minas Gerais', 'MG', 'Lagoa dos Patos', 2682),
('3137403', 31, 37403, '3 - Sudeste', 'Minas Gerais', 'MG', 'Lagoa Dourada', 2683),
('3137502', 31, 37502, '3 - Sudeste', 'Minas Gerais', 'MG', 'Lagoa Formosa', 2684),
('3137536', 31, 37536, '3 - Sudeste', 'Minas Gerais', 'MG', 'Lagoa Grande', 2685),
('3137601', 31, 37601, '3 - Sudeste', 'Minas Gerais', 'MG', 'Lagoa Santa', 2686),
('3137700', 31, 37700, '3 - Sudeste', 'Minas Gerais', 'MG', 'Lajinha', 2687),
('3137809', 31, 37809, '3 - Sudeste', 'Minas Gerais', 'MG', 'Lambari', 2688),
('3137908', 31, 37908, '3 - Sudeste', 'Minas Gerais', 'MG', 'Lamim', 2689),
('3138005', 31, 38005, '3 - Sudeste', 'Minas Gerais', 'MG', 'Laranjal', 2690),
('3138104', 31, 38104, '3 - Sudeste', 'Minas Gerais', 'MG', 'Lassance', 2691),
('3138203', 31, 38203, '3 - Sudeste', 'Minas Gerais', 'MG', 'Lavras', 2692),
('3138302', 31, 38302, '3 - Sudeste', 'Minas Gerais', 'MG', 'Leandro Ferreira', 2693),
('3138351', 31, 38351, '3 - Sudeste', 'Minas Gerais', 'MG', 'Leme do Prado', 2694),
('3138401', 31, 38401, '3 - Sudeste', 'Minas Gerais', 'MG', 'Leopoldina', 2695),
('3138500', 31, 38500, '3 - Sudeste', 'Minas Gerais', 'MG', 'Liberdade', 2696),
('3138609', 31, 38609, '3 - Sudeste', 'Minas Gerais', 'MG', 'Lima Duarte', 2697),
('3138625', 31, 38625, '3 - Sudeste', 'Minas Gerais', 'MG', 'Limeira do Oeste', 2698),
('3138658', 31, 38658, '3 - Sudeste', 'Minas Gerais', 'MG', 'Lontra', 2699),
('3138674', 31, 38674, '3 - Sudeste', 'Minas Gerais', 'MG', 'Luisburgo', 2700),
('3138682', 31, 38682, '3 - Sudeste', 'Minas Gerais', 'MG', 'Luislândia', 2701),
('3138708', 31, 38708, '3 - Sudeste', 'Minas Gerais', 'MG', 'Luminárias', 2702),
('3138807', 31, 38807, '3 - Sudeste', 'Minas Gerais', 'MG', 'Luz', 2703),
('3138906', 31, 38906, '3 - Sudeste', 'Minas Gerais', 'MG', 'Machacalis', 2704),
('3139003', 31, 39003, '3 - Sudeste', 'Minas Gerais', 'MG', 'Machado', 2705),
('3139102', 31, 39102, '3 - Sudeste', 'Minas Gerais', 'MG', 'Madre de Deus de Minas', 2706),
('3139201', 31, 39201, '3 - Sudeste', 'Minas Gerais', 'MG', 'Malacacheta', 2707),
('3139250', 31, 39250, '3 - Sudeste', 'Minas Gerais', 'MG', 'Mamonas', 2708),
('3139300', 31, 39300, '3 - Sudeste', 'Minas Gerais', 'MG', 'Manga', 2709),
('3139409', 31, 39409, '3 - Sudeste', 'Minas Gerais', 'MG', 'Manhuaçu', 2710),
('3139508', 31, 39508, '3 - Sudeste', 'Minas Gerais', 'MG', 'Manhumirim', 2711),
('3139607', 31, 39607, '3 - Sudeste', 'Minas Gerais', 'MG', 'Mantena', 2712),
('3139706', 31, 39706, '3 - Sudeste', 'Minas Gerais', 'MG', 'Maravilhas', 2713),
('3139805', 31, 39805, '3 - Sudeste', 'Minas Gerais', 'MG', 'Mar de Espanha', 2714),
('3139904', 31, 39904, '3 - Sudeste', 'Minas Gerais', 'MG', 'Maria da Fé', 2715),
('3140001', 31, 40001, '3 - Sudeste', 'Minas Gerais', 'MG', 'Mariana', 2716),
('3140100', 31, 40100, '3 - Sudeste', 'Minas Gerais', 'MG', 'Marilac', 2717),
('3140159', 31, 40159, '3 - Sudeste', 'Minas Gerais', 'MG', 'Mário Campos', 2718),
('3140209', 31, 40209, '3 - Sudeste', 'Minas Gerais', 'MG', 'Maripá de Minas', 2719),
('3140308', 31, 40308, '3 - Sudeste', 'Minas Gerais', 'MG', 'Marliéria', 2720),
('3140407', 31, 40407, '3 - Sudeste', 'Minas Gerais', 'MG', 'Marmelópolis', 2721),
('3140506', 31, 40506, '3 - Sudeste', 'Minas Gerais', 'MG', 'Martinho Campos', 2722),
('3140530', 31, 40530, '3 - Sudeste', 'Minas Gerais', 'MG', 'Martins Soares', 2723),
('3140555', 31, 40555, '3 - Sudeste', 'Minas Gerais', 'MG', 'Mata Verde', 2724),
('3140605', 31, 40605, '3 - Sudeste', 'Minas Gerais', 'MG', 'Materlândia', 2725),
('3140704', 31, 40704, '3 - Sudeste', 'Minas Gerais', 'MG', 'Mateus Leme', 2726),
('3140803', 31, 40803, '3 - Sudeste', 'Minas Gerais', 'MG', 'Matias Barbosa', 2727),
('3140852', 31, 40852, '3 - Sudeste', 'Minas Gerais', 'MG', 'Matias Cardoso', 2728),
('3140902', 31, 40902, '3 - Sudeste', 'Minas Gerais', 'MG', 'Matipó', 2729),
('3141009', 31, 41009, '3 - Sudeste', 'Minas Gerais', 'MG', 'Mato Verde', 2730),
('3141108', 31, 41108, '3 - Sudeste', 'Minas Gerais', 'MG', 'Matozinhos', 2731),
('3141207', 31, 41207, '3 - Sudeste', 'Minas Gerais', 'MG', 'Matutina', 2732),
('3141306', 31, 41306, '3 - Sudeste', 'Minas Gerais', 'MG', 'Medeiros', 2733),
('3141405', 31, 41405, '3 - Sudeste', 'Minas Gerais', 'MG', 'Medina', 2734),
('3141504', 31, 41504, '3 - Sudeste', 'Minas Gerais', 'MG', 'Mendes Pimentel', 2735),
('3141603', 31, 41603, '3 - Sudeste', 'Minas Gerais', 'MG', 'Mercês', 2736),
('3141702', 31, 41702, '3 - Sudeste', 'Minas Gerais', 'MG', 'Mesquita', 2737),
('3141801', 31, 41801, '3 - Sudeste', 'Minas Gerais', 'MG', 'Minas Novas', 2738),
('3141900', 31, 41900, '3 - Sudeste', 'Minas Gerais', 'MG', 'Minduri', 2739),
('3142007', 31, 42007, '3 - Sudeste', 'Minas Gerais', 'MG', 'Mirabela', 2740),
('3142106', 31, 42106, '3 - Sudeste', 'Minas Gerais', 'MG', 'Miradouro', 2741),
('3142205', 31, 42205, '3 - Sudeste', 'Minas Gerais', 'MG', 'Miraí', 2742),
('3142254', 31, 42254, '3 - Sudeste', 'Minas Gerais', 'MG', 'Miravânia', 2743),
('3142304', 31, 42304, '3 - Sudeste', 'Minas Gerais', 'MG', 'Moeda', 2744),
('3142403', 31, 42403, '3 - Sudeste', 'Minas Gerais', 'MG', 'Moema', 2745),
('3142502', 31, 42502, '3 - Sudeste', 'Minas Gerais', 'MG', 'Monjolos', 2746),
('3142601', 31, 42601, '3 - Sudeste', 'Minas Gerais', 'MG', 'Monsenhor Paulo', 2747),
('3142700', 31, 42700, '3 - Sudeste', 'Minas Gerais', 'MG', 'Montalvânia', 2748),
('3142809', 31, 42809, '3 - Sudeste', 'Minas Gerais', 'MG', 'Monte Alegre de Minas', 2749),
('3142908', 31, 42908, '3 - Sudeste', 'Minas Gerais', 'MG', 'Monte Azul', 2750),
('3143005', 31, 43005, '3 - Sudeste', 'Minas Gerais', 'MG', 'Monte Belo', 2751),
('3143104', 31, 43104, '3 - Sudeste', 'Minas Gerais', 'MG', 'Monte Carmelo', 2752),
('3143153', 31, 43153, '3 - Sudeste', 'Minas Gerais', 'MG', 'Monte Formoso', 2753),
('3143203', 31, 43203, '3 - Sudeste', 'Minas Gerais', 'MG', 'Monte Santo de Minas', 2754),
('3143302', 31, 43302, '3 - Sudeste', 'Minas Gerais', 'MG', 'Montes Claros', 2755),
('3143401', 31, 43401, '3 - Sudeste', 'Minas Gerais', 'MG', 'Monte Sião', 2756),
('3143450', 31, 43450, '3 - Sudeste', 'Minas Gerais', 'MG', 'Montezuma', 2757),
('3143500', 31, 43500, '3 - Sudeste', 'Minas Gerais', 'MG', 'Morada Nova de Minas', 2758),
('3143609', 31, 43609, '3 - Sudeste', 'Minas Gerais', 'MG', 'Morro da Garça', 2759),
('3143708', 31, 43708, '3 - Sudeste', 'Minas Gerais', 'MG', 'Morro do Pilar', 2760),
('3143807', 31, 43807, '3 - Sudeste', 'Minas Gerais', 'MG', 'Munhoz', 2761),
('3143906', 31, 43906, '3 - Sudeste', 'Minas Gerais', 'MG', 'Muriaé', 2762),
('3144003', 31, 44003, '3 - Sudeste', 'Minas Gerais', 'MG', 'Mutum', 2763),
('3144102', 31, 44102, '3 - Sudeste', 'Minas Gerais', 'MG', 'Muzambinho', 2764),
('3144201', 31, 44201, '3 - Sudeste', 'Minas Gerais', 'MG', 'Nacip Raydan', 2765),
('3144300', 31, 44300, '3 - Sudeste', 'Minas Gerais', 'MG', 'Nanuque', 2766),
('3144359', 31, 44359, '3 - Sudeste', 'Minas Gerais', 'MG', 'Naque', 2767),
('3144375', 31, 44375, '3 - Sudeste', 'Minas Gerais', 'MG', 'Natalândia', 2768),
('3144409', 31, 44409, '3 - Sudeste', 'Minas Gerais', 'MG', 'Natércia', 2769),
('3144508', 31, 44508, '3 - Sudeste', 'Minas Gerais', 'MG', 'Nazareno', 2770),
('3144607', 31, 44607, '3 - Sudeste', 'Minas Gerais', 'MG', 'Nepomuceno', 2771),
('3144656', 31, 44656, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ninheira', 2772),
('3144672', 31, 44672, '3 - Sudeste', 'Minas Gerais', 'MG', 'Nova Belém', 2773),
('3144706', 31, 44706, '3 - Sudeste', 'Minas Gerais', 'MG', 'Nova Era', 2774),
('3144805', 31, 44805, '3 - Sudeste', 'Minas Gerais', 'MG', 'Nova Lima', 2775),
('3144904', 31, 44904, '3 - Sudeste', 'Minas Gerais', 'MG', 'Nova Módica', 2776),
('3145000', 31, 45000, '3 - Sudeste', 'Minas Gerais', 'MG', 'Nova Ponte', 2777),
('3145059', 31, 45059, '3 - Sudeste', 'Minas Gerais', 'MG', 'Nova Porteirinha', 2778),
('3145109', 31, 45109, '3 - Sudeste', 'Minas Gerais', 'MG', 'Nova Resende', 2779),
('3145208', 31, 45208, '3 - Sudeste', 'Minas Gerais', 'MG', 'Nova Serrana', 2780),
('3145307', 31, 45307, '3 - Sudeste', 'Minas Gerais', 'MG', 'Novo Cruzeiro', 2781),
('3145356', 31, 45356, '3 - Sudeste', 'Minas Gerais', 'MG', 'Novo Oriente de Minas', 2782),
('3145372', 31, 45372, '3 - Sudeste', 'Minas Gerais', 'MG', 'Novorizonte', 2783),
('3145406', 31, 45406, '3 - Sudeste', 'Minas Gerais', 'MG', 'Olaria', 2784),
('3145455', 31, 45455, '3 - Sudeste', 'Minas Gerais', 'MG', 'Olhos-d''Água', 2785),
('3145505', 31, 45505, '3 - Sudeste', 'Minas Gerais', 'MG', 'Olímpio Noronha', 2786),
('3145604', 31, 45604, '3 - Sudeste', 'Minas Gerais', 'MG', 'Oliveira', 2787),
('3145703', 31, 45703, '3 - Sudeste', 'Minas Gerais', 'MG', 'Oliveira Fortes', 2788),
('3145802', 31, 45802, '3 - Sudeste', 'Minas Gerais', 'MG', 'Onça de Pitangui', 2789),
('3145851', 31, 45851, '3 - Sudeste', 'Minas Gerais', 'MG', 'Oratórios', 2790),
('3145877', 31, 45877, '3 - Sudeste', 'Minas Gerais', 'MG', 'Orizânia', 2791),
('3145901', 31, 45901, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ouro Branco', 2792),
('3146008', 31, 46008, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ouro Fino', 2793),
('3146107', 31, 46107, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ouro Preto', 2794),
('3146206', 31, 46206, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ouro Verde de Minas', 2795),
('3146255', 31, 46255, '3 - Sudeste', 'Minas Gerais', 'MG', 'Padre Carvalho', 2796),
('3146305', 31, 46305, '3 - Sudeste', 'Minas Gerais', 'MG', 'Padre Paraíso', 2797),
('3146404', 31, 46404, '3 - Sudeste', 'Minas Gerais', 'MG', 'Paineiras', 2798),
('3146503', 31, 46503, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pains', 2799),
('3146552', 31, 46552, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pai Pedro', 2800),
('3146602', 31, 46602, '3 - Sudeste', 'Minas Gerais', 'MG', 'Paiva', 2801),
('3146701', 31, 46701, '3 - Sudeste', 'Minas Gerais', 'MG', 'Palma', 2802),
('3146750', 31, 46750, '3 - Sudeste', 'Minas Gerais', 'MG', 'Palmópolis', 2803),
('3146909', 31, 46909, '3 - Sudeste', 'Minas Gerais', 'MG', 'Papagaios', 2804),
('3147006', 31, 47006, '3 - Sudeste', 'Minas Gerais', 'MG', 'Paracatu', 2805),
('3147105', 31, 47105, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pará de Minas', 2806),
('3147204', 31, 47204, '3 - Sudeste', 'Minas Gerais', 'MG', 'Paraguaçu', 2807),
('3147303', 31, 47303, '3 - Sudeste', 'Minas Gerais', 'MG', 'Paraisópolis', 2808),
('3147402', 31, 47402, '3 - Sudeste', 'Minas Gerais', 'MG', 'Paraopeba', 2809),
('3147501', 31, 47501, '3 - Sudeste', 'Minas Gerais', 'MG', 'Passabém', 2810),
('3147600', 31, 47600, '3 - Sudeste', 'Minas Gerais', 'MG', 'Passa Quatro', 2811),
('3147709', 31, 47709, '3 - Sudeste', 'Minas Gerais', 'MG', 'Passa Tempo', 2812),
('3147808', 31, 47808, '3 - Sudeste', 'Minas Gerais', 'MG', 'Passa-Vinte', 2813),
('3147907', 31, 47907, '3 - Sudeste', 'Minas Gerais', 'MG', 'Passos', 2814),
('3147956', 31, 47956, '3 - Sudeste', 'Minas Gerais', 'MG', 'Patis', 2815),
('3148004', 31, 48004, '3 - Sudeste', 'Minas Gerais', 'MG', 'Patos de Minas', 2816),
('3148103', 31, 48103, '3 - Sudeste', 'Minas Gerais', 'MG', 'Patrocínio', 2817),
('3148202', 31, 48202, '3 - Sudeste', 'Minas Gerais', 'MG', 'Patrocínio do Muriaé', 2818),
('3148301', 31, 48301, '3 - Sudeste', 'Minas Gerais', 'MG', 'Paula Cândido', 2819),
('3148400', 31, 48400, '3 - Sudeste', 'Minas Gerais', 'MG', 'Paulistas', 2820),
('3148509', 31, 48509, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pavão', 2821),
('3148608', 31, 48608, '3 - Sudeste', 'Minas Gerais', 'MG', 'Peçanha', 2822),
('3148707', 31, 48707, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pedra Azul', 2823),
('3148756', 31, 48756, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pedra Bonita', 2824),
('3148806', 31, 48806, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pedra do Anta', 2825),
('3148905', 31, 48905, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pedra do Indaiá', 2826),
('3149002', 31, 49002, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pedra Dourada', 2827),
('3149101', 31, 49101, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pedralva', 2828),
('3149150', 31, 49150, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pedras de Maria da Cruz', 2829),
('3149200', 31, 49200, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pedrinópolis', 2830),
('3149309', 31, 49309, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pedro Leopoldo', 2831),
('3149408', 31, 49408, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pedro Teixeira', 2832),
('3149507', 31, 49507, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pequeri', 2833),
('3149606', 31, 49606, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pequi', 2834),
('3149705', 31, 49705, '3 - Sudeste', 'Minas Gerais', 'MG', 'Perdigão', 2835),
('3149804', 31, 49804, '3 - Sudeste', 'Minas Gerais', 'MG', 'Perdizes', 2836),
('3149903', 31, 49903, '3 - Sudeste', 'Minas Gerais', 'MG', 'Perdões', 2837),
('3149952', 31, 49952, '3 - Sudeste', 'Minas Gerais', 'MG', 'Periquito', 2838),
('3150000', 31, 50000, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pescador', 2839),
('3150109', 31, 50109, '3 - Sudeste', 'Minas Gerais', 'MG', 'Piau', 2840),
('3150158', 31, 50158, '3 - Sudeste', 'Minas Gerais', 'MG', 'Piedade de Caratinga', 2841),
('3150208', 31, 50208, '3 - Sudeste', 'Minas Gerais', 'MG', 'Piedade de Ponte Nova', 2842),
('3150307', 31, 50307, '3 - Sudeste', 'Minas Gerais', 'MG', 'Piedade do Rio Grande', 2843),
('3150406', 31, 50406, '3 - Sudeste', 'Minas Gerais', 'MG', 'Piedade dos Gerais', 2844),
('3150505', 31, 50505, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pimenta', 2845),
('3150539', 31, 50539, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pingo-d''Água', 2846),
('3150570', 31, 50570, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pintópolis', 2847),
('3150604', 31, 50604, '3 - Sudeste', 'Minas Gerais', 'MG', 'Piracema', 2848),
('3150703', 31, 50703, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pirajuba', 2849),
('3150802', 31, 50802, '3 - Sudeste', 'Minas Gerais', 'MG', 'Piranga', 2850),
('3150901', 31, 50901, '3 - Sudeste', 'Minas Gerais', 'MG', 'Piranguçu', 2851),
('3151008', 31, 51008, '3 - Sudeste', 'Minas Gerais', 'MG', 'Piranguinho', 2852),
('3151107', 31, 51107, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pirapetinga', 2853),
('3151206', 31, 51206, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pirapora', 2854),
('3151305', 31, 51305, '3 - Sudeste', 'Minas Gerais', 'MG', 'Piraúba', 2855),
('3151404', 31, 51404, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pitangui', 2856),
('3151503', 31, 51503, '3 - Sudeste', 'Minas Gerais', 'MG', 'Piumhi', 2857),
('3151602', 31, 51602, '3 - Sudeste', 'Minas Gerais', 'MG', 'Planura', 2858),
('3151701', 31, 51701, '3 - Sudeste', 'Minas Gerais', 'MG', 'Poço Fundo', 2859),
('3151800', 31, 51800, '3 - Sudeste', 'Minas Gerais', 'MG', 'Poços de Caldas', 2860),
('3151909', 31, 51909, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pocrane', 2861),
('3152006', 31, 52006, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pompéu', 2862),
('3152105', 31, 52105, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ponte Nova', 2863),
('3152131', 31, 52131, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ponto Chique', 2864),
('3152170', 31, 52170, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ponto dos Volantes', 2865),
('3152204', 31, 52204, '3 - Sudeste', 'Minas Gerais', 'MG', 'Porteirinha', 2866),
('3152303', 31, 52303, '3 - Sudeste', 'Minas Gerais', 'MG', 'Porto Firme', 2867),
('3152402', 31, 52402, '3 - Sudeste', 'Minas Gerais', 'MG', 'Poté', 2868),
('3152501', 31, 52501, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pouso Alegre', 2869),
('3152600', 31, 52600, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pouso Alto', 2870),
('3152709', 31, 52709, '3 - Sudeste', 'Minas Gerais', 'MG', 'Prados', 2871),
('3152808', 31, 52808, '3 - Sudeste', 'Minas Gerais', 'MG', 'Prata', 2872),
('3152907', 31, 52907, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pratápolis', 2873),
('3153004', 31, 53004, '3 - Sudeste', 'Minas Gerais', 'MG', 'Pratinha', 2874),
('3153103', 31, 53103, '3 - Sudeste', 'Minas Gerais', 'MG', 'Presidente Bernardes', 2875),
('3153202', 31, 53202, '3 - Sudeste', 'Minas Gerais', 'MG', 'Presidente Juscelino', 2876),
('3153301', 31, 53301, '3 - Sudeste', 'Minas Gerais', 'MG', 'Presidente Kubitschek', 2877),
('3153400', 31, 53400, '3 - Sudeste', 'Minas Gerais', 'MG', 'Presidente Olegário', 2878),
('3153509', 31, 53509, '3 - Sudeste', 'Minas Gerais', 'MG', 'Alto Jequitibá', 2879),
('3153608', 31, 53608, '3 - Sudeste', 'Minas Gerais', 'MG', 'Prudente de Morais', 2880),
('3153707', 31, 53707, '3 - Sudeste', 'Minas Gerais', 'MG', 'Quartel Geral', 2881),
('3153806', 31, 53806, '3 - Sudeste', 'Minas Gerais', 'MG', 'Queluzito', 2882),
('3153905', 31, 53905, '3 - Sudeste', 'Minas Gerais', 'MG', 'Raposos', 2883),
('3154002', 31, 54002, '3 - Sudeste', 'Minas Gerais', 'MG', 'Raul Soares', 2884),
('3154101', 31, 54101, '3 - Sudeste', 'Minas Gerais', 'MG', 'Recreio', 2885),
('3154150', 31, 54150, '3 - Sudeste', 'Minas Gerais', 'MG', 'Reduto', 2886),
('3154200', 31, 54200, '3 - Sudeste', 'Minas Gerais', 'MG', 'Resende Costa', 2887),
('3154309', 31, 54309, '3 - Sudeste', 'Minas Gerais', 'MG', 'Resplendor', 2888),
('3154408', 31, 54408, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ressaquinha', 2889),
('3154457', 31, 54457, '3 - Sudeste', 'Minas Gerais', 'MG', 'Riachinho', 2890),
('3154507', 31, 54507, '3 - Sudeste', 'Minas Gerais', 'MG', 'Riacho dos Machados', 2891),
('3154606', 31, 54606, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ribeirão das Neves', 2892),
('3154705', 31, 54705, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ribeirão Vermelho', 2893),
('3154804', 31, 54804, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rio Acima', 2894),
('3154903', 31, 54903, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rio Casca', 2895),
('3155009', 31, 55009, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rio Doce', 2896),
('3155108', 31, 55108, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rio do Prado', 2897),
('3155207', 31, 55207, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rio Espera', 2898),
('3155306', 31, 55306, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rio Manso', 2899),
('3155405', 31, 55405, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rio Novo', 2900),
('3155504', 31, 55504, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rio Paranaíba', 2901),
('3155603', 31, 55603, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rio Pardo de Minas', 2902),
('3155702', 31, 55702, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rio Piracicaba', 2903),
('3155801', 31, 55801, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rio Pomba', 2904),
('3155900', 31, 55900, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rio Preto', 2905),
('3156007', 31, 56007, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rio Vermelho', 2906),
('3156106', 31, 56106, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ritápolis', 2907),
('3156205', 31, 56205, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rochedo de Minas', 2908),
('3156304', 31, 56304, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rodeiro', 2909),
('3156403', 31, 56403, '3 - Sudeste', 'Minas Gerais', 'MG', 'Romaria', 2910),
('3156452', 31, 56452, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rosário da Limeira', 2911),
('3156502', 31, 56502, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rubelita', 2912),
('3156601', 31, 56601, '3 - Sudeste', 'Minas Gerais', 'MG', 'Rubim', 2913),
('3156700', 31, 56700, '3 - Sudeste', 'Minas Gerais', 'MG', 'Sabará', 2914),
('3156809', 31, 56809, '3 - Sudeste', 'Minas Gerais', 'MG', 'Sabinópolis', 2915),
('3156908', 31, 56908, '3 - Sudeste', 'Minas Gerais', 'MG', 'Sacramento', 2916),
('3157005', 31, 57005, '3 - Sudeste', 'Minas Gerais', 'MG', 'Salinas', 2917),
('3157104', 31, 57104, '3 - Sudeste', 'Minas Gerais', 'MG', 'Salto da Divisa', 2918),
('3157203', 31, 57203, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Bárbara', 2919),
('3157252', 31, 57252, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Bárbara do Leste', 2920),
('3157278', 31, 57278, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Bárbara do Monte Verde', 2921),
('3157302', 31, 57302, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Bárbara do Tugúrio', 2922),
('3157336', 31, 57336, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Cruz de Minas', 2923),
('3157377', 31, 57377, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Cruz de Salinas', 2924),
('3157401', 31, 57401, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Cruz do Escalvado', 2925),
('3157500', 31, 57500, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Efigênia de Minas', 2926),
('3157609', 31, 57609, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Fé de Minas', 2927),
('3157658', 31, 57658, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Helena de Minas', 2928),
('3157708', 31, 57708, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Juliana', 2929),
('3157807', 31, 57807, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Luzia', 2930),
('3157906', 31, 57906, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Margarida', 2931),
('3158003', 31, 58003, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Maria de Itabira', 2932),
('3158102', 31, 58102, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Maria do Salto', 2933),
('3158201', 31, 58201, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Maria do Suaçuí', 2934),
('3158300', 31, 58300, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santana da Vargem', 2935),
('3158409', 31, 58409, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santana de Cataguases', 2936),
('3158508', 31, 58508, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santana de Pirapama', 2937),
('3158607', 31, 58607, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santana do Deserto', 2938),
('3158706', 31, 58706, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santana do Garambéu', 2939),
('3158805', 31, 58805, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santana do Jacaré', 2940),
('3158904', 31, 58904, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santana do Manhuaçu', 2941),
('3158953', 31, 58953, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santana do Paraíso', 2942),
('3159001', 31, 59001, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santana do Riacho', 2943),
('3159100', 31, 59100, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santana dos Montes', 2944),
('3159209', 31, 59209, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Rita de Caldas', 2945),
('3159308', 31, 59308, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Rita de Jacutinga', 2946),
('3159357', 31, 59357, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Rita de Minas', 2947),
('3159407', 31, 59407, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Rita de Ibitipoca', 2948),
('3159506', 31, 59506, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Rita do Itueto', 2949),
('3159605', 31, 59605, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Rita do Sapucaí', 2950),
('3159704', 31, 59704, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Rosa da Serra', 2951),
('3159803', 31, 59803, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santa Vitória', 2952),
('3159902', 31, 59902, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santo Antônio do Amparo', 2953),
('3160009', 31, 60009, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santo Antônio do Aventureiro', 2954),
('3160108', 31, 60108, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santo Antônio do Grama', 2955),
('3160207', 31, 60207, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santo Antônio do Itambé', 2956),
('3160306', 31, 60306, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santo Antônio do Jacinto', 2957),
('3160405', 31, 60405, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santo Antônio do Monte', 2958),
('3160454', 31, 60454, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santo Antônio do Retiro', 2959),
('3160504', 31, 60504, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santo Antônio do Rio Abaixo', 2960),
('3160603', 31, 60603, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santo Hipólito', 2961),
('3160702', 31, 60702, '3 - Sudeste', 'Minas Gerais', 'MG', 'Santos Dumont', 2962),
('3160801', 31, 60801, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Bento Abade', 2963),
('3160900', 31, 60900, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Brás do Suaçuí', 2964),
('3160959', 31, 60959, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Domingos das Dores', 2965),
('3161007', 31, 61007, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Domingos do Prata', 2966),
('3161056', 31, 61056, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Félix de Minas', 2967),
('3161106', 31, 61106, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Francisco', 2968),
('3161205', 31, 61205, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Francisco de Paula', 2969),
('3161304', 31, 61304, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Francisco de Sales', 2970),
('3161403', 31, 61403, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Francisco do Glória', 2971),
('3161502', 31, 61502, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Geraldo', 2972),
('3161601', 31, 61601, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Geraldo da Piedade', 2973),
('3161650', 31, 61650, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Geraldo do Baixio', 2974),
('3161700', 31, 61700, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Gonçalo do Abaeté', 2975),
('3161809', 31, 61809, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Gonçalo do Pará', 2976),
('3161908', 31, 61908, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Gonçalo do Rio Abaixo', 2977),
('3162005', 31, 62005, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Gonçalo do Sapucaí', 2978),
('3162104', 31, 62104, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Gotardo', 2979),
('3162203', 31, 62203, '3 - Sudeste', 'Minas Gerais', 'MG', 'São João Batista do Glória', 2980),
('3162252', 31, 62252, '3 - Sudeste', 'Minas Gerais', 'MG', 'São João da Lagoa', 2981),
('3162302', 31, 62302, '3 - Sudeste', 'Minas Gerais', 'MG', 'São João da Mata', 2982),
('3162401', 31, 62401, '3 - Sudeste', 'Minas Gerais', 'MG', 'São João da Ponte', 2983),
('3162450', 31, 62450, '3 - Sudeste', 'Minas Gerais', 'MG', 'São João das Missões', 2984),
('3162500', 31, 62500, '3 - Sudeste', 'Minas Gerais', 'MG', 'São João del Rei', 2985),
('3162559', 31, 62559, '3 - Sudeste', 'Minas Gerais', 'MG', 'São João do Manhuaçu', 2986),
('3162575', 31, 62575, '3 - Sudeste', 'Minas Gerais', 'MG', 'São João do Manteninha', 2987),
('3162609', 31, 62609, '3 - Sudeste', 'Minas Gerais', 'MG', 'São João do Oriente', 2988),
('3162658', 31, 62658, '3 - Sudeste', 'Minas Gerais', 'MG', 'São João do Pacuí', 2989),
('3162708', 31, 62708, '3 - Sudeste', 'Minas Gerais', 'MG', 'São João do Paraíso', 2990),
('3162807', 31, 62807, '3 - Sudeste', 'Minas Gerais', 'MG', 'São João Evangelista', 2991),
('3162906', 31, 62906, '3 - Sudeste', 'Minas Gerais', 'MG', 'São João Nepomuceno', 2992),
('3162922', 31, 62922, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Joaquim de Bicas', 2993),
('3162948', 31, 62948, '3 - Sudeste', 'Minas Gerais', 'MG', 'São José da Barra', 2994),
('3162955', 31, 62955, '3 - Sudeste', 'Minas Gerais', 'MG', 'São José da Lapa', 2995),
('3163003', 31, 63003, '3 - Sudeste', 'Minas Gerais', 'MG', 'São José da Safira', 2996),
('3163102', 31, 63102, '3 - Sudeste', 'Minas Gerais', 'MG', 'São José da Varginha', 2997),
('3163201', 31, 63201, '3 - Sudeste', 'Minas Gerais', 'MG', 'São José do Alegre', 2998),
('3163300', 31, 63300, '3 - Sudeste', 'Minas Gerais', 'MG', 'São José do Divino', 2999),
('3163409', 31, 63409, '3 - Sudeste', 'Minas Gerais', 'MG', 'São José do Goiabal', 3000),
('3163508', 31, 63508, '3 - Sudeste', 'Minas Gerais', 'MG', 'São José do Jacuri', 3001),
('3163607', 31, 63607, '3 - Sudeste', 'Minas Gerais', 'MG', 'São José do Mantimento', 3002),
('3163706', 31, 63706, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Lourenço', 3003),
('3163805', 31, 63805, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Miguel do Anta', 3004),
('3163904', 31, 63904, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Pedro da União', 3005),
('3164001', 31, 64001, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Pedro dos Ferros', 3006),
('3164100', 31, 64100, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Pedro do Suaçuí', 3007),
('3164209', 31, 64209, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Romão', 3008),
('3164308', 31, 64308, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Roque de Minas', 3009),
('3164407', 31, 64407, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Sebastião da Bela Vista', 3010),
('3164431', 31, 64431, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Sebastião da Vargem Alegre', 3011),
('3164472', 31, 64472, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Sebastião do Anta', 3012),
('3164506', 31, 64506, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Sebastião do Maranhão', 3013),
('3164605', 31, 64605, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Sebastião do Oeste', 3014),
('3164704', 31, 64704, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Sebastião do Paraíso', 3015),
('3164803', 31, 64803, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Sebastião do Rio Preto', 3016),
('3164902', 31, 64902, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Sebastião do Rio Verde', 3017),
('3165008', 31, 65008, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Tiago', 3018),
('3165107', 31, 65107, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Tomás de Aquino', 3019),
('3165206', 31, 65206, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Thomé das Letras', 3020),
('3165305', 31, 65305, '3 - Sudeste', 'Minas Gerais', 'MG', 'São Vicente de Minas', 3021),
('3165404', 31, 65404, '3 - Sudeste', 'Minas Gerais', 'MG', 'Sapucaí-Mirim', 3022),
('3165503', 31, 65503, '3 - Sudeste', 'Minas Gerais', 'MG', 'Sardoá', 3023),
('3165537', 31, 65537, '3 - Sudeste', 'Minas Gerais', 'MG', 'Sarzedo', 3024),
('3165552', 31, 65552, '3 - Sudeste', 'Minas Gerais', 'MG', 'Setubinha', 3025),
('3165560', 31, 65560, '3 - Sudeste', 'Minas Gerais', 'MG', 'Sem-Peixe', 3026),
('3165578', 31, 65578, '3 - Sudeste', 'Minas Gerais', 'MG', 'Senador Amaral', 3027),
('3165602', 31, 65602, '3 - Sudeste', 'Minas Gerais', 'MG', 'Senador Cortes', 3028),
('3165701', 31, 65701, '3 - Sudeste', 'Minas Gerais', 'MG', 'Senador Firmino', 3029),
('3165800', 31, 65800, '3 - Sudeste', 'Minas Gerais', 'MG', 'Senador José Bento', 3030),
('3165909', 31, 65909, '3 - Sudeste', 'Minas Gerais', 'MG', 'Senador Modestino Gonçalves', 3031),
('3166006', 31, 66006, '3 - Sudeste', 'Minas Gerais', 'MG', 'Senhora de Oliveira', 3032),
('3166105', 31, 66105, '3 - Sudeste', 'Minas Gerais', 'MG', 'Senhora do Porto', 3033),
('3166204', 31, 66204, '3 - Sudeste', 'Minas Gerais', 'MG', 'Senhora dos Remédios', 3034),
('3166303', 31, 66303, '3 - Sudeste', 'Minas Gerais', 'MG', 'Sericita', 3035),
('3166402', 31, 66402, '3 - Sudeste', 'Minas Gerais', 'MG', 'Seritinga', 3036),
('3166501', 31, 66501, '3 - Sudeste', 'Minas Gerais', 'MG', 'Serra Azul de Minas', 3037),
('3166600', 31, 66600, '3 - Sudeste', 'Minas Gerais', 'MG', 'Serra da Saudade', 3038),
('3166709', 31, 66709, '3 - Sudeste', 'Minas Gerais', 'MG', 'Serra dos Aimorés', 3039),
('3166808', 31, 66808, '3 - Sudeste', 'Minas Gerais', 'MG', 'Serra do Salitre', 3040),
('3166907', 31, 66907, '3 - Sudeste', 'Minas Gerais', 'MG', 'Serrania', 3041),
('3166956', 31, 66956, '3 - Sudeste', 'Minas Gerais', 'MG', 'Serranópolis de Minas', 3042),
('3167004', 31, 67004, '3 - Sudeste', 'Minas Gerais', 'MG', 'Serranos', 3043),
('3167103', 31, 67103, '3 - Sudeste', 'Minas Gerais', 'MG', 'Serro', 3044),
('3167202', 31, 67202, '3 - Sudeste', 'Minas Gerais', 'MG', 'Sete Lagoas', 3045),
('3167301', 31, 67301, '3 - Sudeste', 'Minas Gerais', 'MG', 'Silveirânia', 3046),
('3167400', 31, 67400, '3 - Sudeste', 'Minas Gerais', 'MG', 'Silvianópolis', 3047),
('3167509', 31, 67509, '3 - Sudeste', 'Minas Gerais', 'MG', 'Simão Pereira', 3048),
('3167608', 31, 67608, '3 - Sudeste', 'Minas Gerais', 'MG', 'Simonésia', 3049),
('3167707', 31, 67707, '3 - Sudeste', 'Minas Gerais', 'MG', 'Sobrália', 3050),
('3167806', 31, 67806, '3 - Sudeste', 'Minas Gerais', 'MG', 'Soledade de Minas', 3051),
('3167905', 31, 67905, '3 - Sudeste', 'Minas Gerais', 'MG', 'Tabuleiro', 3052),
('3168002', 31, 68002, '3 - Sudeste', 'Minas Gerais', 'MG', 'Taiobeiras', 3053),
('3168051', 31, 68051, '3 - Sudeste', 'Minas Gerais', 'MG', 'Taparuba', 3054),
('3168101', 31, 68101, '3 - Sudeste', 'Minas Gerais', 'MG', 'Tapira', 3055),
('3168200', 31, 68200, '3 - Sudeste', 'Minas Gerais', 'MG', 'Tapiraí', 3056),
('3168309', 31, 68309, '3 - Sudeste', 'Minas Gerais', 'MG', 'Taquaraçu de Minas', 3057),
('3168408', 31, 68408, '3 - Sudeste', 'Minas Gerais', 'MG', 'Tarumirim', 3058),
('3168507', 31, 68507, '3 - Sudeste', 'Minas Gerais', 'MG', 'Teixeiras', 3059),
('3168606', 31, 68606, '3 - Sudeste', 'Minas Gerais', 'MG', 'Teófilo Otoni', 3060),
('3168705', 31, 68705, '3 - Sudeste', 'Minas Gerais', 'MG', 'Timóteo', 3061),
('3168804', 31, 68804, '3 - Sudeste', 'Minas Gerais', 'MG', 'Tiradentes', 3062),
('3168903', 31, 68903, '3 - Sudeste', 'Minas Gerais', 'MG', 'Tiros', 3063),
('3169000', 31, 69000, '3 - Sudeste', 'Minas Gerais', 'MG', 'Tocantins', 3064),
('3169059', 31, 69059, '3 - Sudeste', 'Minas Gerais', 'MG', 'Tocos do Moji', 3065),
('3169109', 31, 69109, '3 - Sudeste', 'Minas Gerais', 'MG', 'Toledo', 3066),
('3169208', 31, 69208, '3 - Sudeste', 'Minas Gerais', 'MG', 'Tombos', 3067),
('3169307', 31, 69307, '3 - Sudeste', 'Minas Gerais', 'MG', 'Três Corações', 3068),
('3169356', 31, 69356, '3 - Sudeste', 'Minas Gerais', 'MG', 'Três Marias', 3069),
('3169406', 31, 69406, '3 - Sudeste', 'Minas Gerais', 'MG', 'Três Pontas', 3070),
('3169505', 31, 69505, '3 - Sudeste', 'Minas Gerais', 'MG', 'Tumiritinga', 3071),
('3169604', 31, 69604, '3 - Sudeste', 'Minas Gerais', 'MG', 'Tupaciguara', 3072),
('3169703', 31, 69703, '3 - Sudeste', 'Minas Gerais', 'MG', 'Turmalina', 3073),
('3169802', 31, 69802, '3 - Sudeste', 'Minas Gerais', 'MG', 'Turvolândia', 3074),
('3169901', 31, 69901, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ubá', 3075),
('3170008', 31, 70008, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ubaí', 3076),
('3170057', 31, 70057, '3 - Sudeste', 'Minas Gerais', 'MG', 'Ubaporanga', 3077),
('3170107', 31, 70107, '3 - Sudeste', 'Minas Gerais', 'MG', 'Uberaba', 3078),
('3170206', 31, 70206, '3 - Sudeste', 'Minas Gerais', 'MG', 'Uberlândia', 3079),
('3170305', 31, 70305, '3 - Sudeste', 'Minas Gerais', 'MG', 'Umburatiba', 3080),
('3170404', 31, 70404, '3 - Sudeste', 'Minas Gerais', 'MG', 'Unaí', 3081),
('3170438', 31, 70438, '3 - Sudeste', 'Minas Gerais', 'MG', 'União de Minas', 3082),
('3170479', 31, 70479, '3 - Sudeste', 'Minas Gerais', 'MG', 'Uruana de Minas', 3083),
('3170503', 31, 70503, '3 - Sudeste', 'Minas Gerais', 'MG', 'Urucânia', 3084),
('3170529', 31, 70529, '3 - Sudeste', 'Minas Gerais', 'MG', 'Urucuia', 3085),
('3170578', 31, 70578, '3 - Sudeste', 'Minas Gerais', 'MG', 'Vargem Alegre', 3086),
('3170602', 31, 70602, '3 - Sudeste', 'Minas Gerais', 'MG', 'Vargem Bonita', 3087),
('3170651', 31, 70651, '3 - Sudeste', 'Minas Gerais', 'MG', 'Vargem Grande do Rio Pardo', 3088),
('3170701', 31, 70701, '3 - Sudeste', 'Minas Gerais', 'MG', 'Varginha', 3089),
('3170750', 31, 70750, '3 - Sudeste', 'Minas Gerais', 'MG', 'Varjão de Minas', 3090),
('3170800', 31, 70800, '3 - Sudeste', 'Minas Gerais', 'MG', 'Várzea da Palma', 3091),
('3170909', 31, 70909, '3 - Sudeste', 'Minas Gerais', 'MG', 'Varzelândia', 3092),
('3171006', 31, 71006, '3 - Sudeste', 'Minas Gerais', 'MG', 'Vazante', 3093),
('3171030', 31, 71030, '3 - Sudeste', 'Minas Gerais', 'MG', 'Verdelândia', 3094),
('3171071', 31, 71071, '3 - Sudeste', 'Minas Gerais', 'MG', 'Veredinha', 3095),
('3171105', 31, 71105, '3 - Sudeste', 'Minas Gerais', 'MG', 'Veríssimo', 3096),
('3171154', 31, 71154, '3 - Sudeste', 'Minas Gerais', 'MG', 'Vermelho Novo', 3097),
('3171204', 31, 71204, '3 - Sudeste', 'Minas Gerais', 'MG', 'Vespasiano', 3098),
('3171303', 31, 71303, '3 - Sudeste', 'Minas Gerais', 'MG', 'Viçosa', 3099),
('3171402', 31, 71402, '3 - Sudeste', 'Minas Gerais', 'MG', 'Vieiras', 3100),
('3171501', 31, 71501, '3 - Sudeste', 'Minas Gerais', 'MG', 'Mathias Lobato', 3101),
('3171600', 31, 71600, '3 - Sudeste', 'Minas Gerais', 'MG', 'Virgem da Lapa', 3102),
('3171709', 31, 71709, '3 - Sudeste', 'Minas Gerais', 'MG', 'Virgínia', 3103),
('3171808', 31, 71808, '3 - Sudeste', 'Minas Gerais', 'MG', 'Virginópolis', 3104),
('3171907', 31, 71907, '3 - Sudeste', 'Minas Gerais', 'MG', 'Virgolândia', 3105),
('3172004', 31, 72004, '3 - Sudeste', 'Minas Gerais', 'MG', 'Visconde do Rio Branco', 3106),
('3172103', 31, 72103, '3 - Sudeste', 'Minas Gerais', 'MG', 'Volta Grande', 3107),
('3172202', 31, 72202, '3 - Sudeste', 'Minas Gerais', 'MG', 'Wenceslau Braz', 3108),
('3200102', 32, 102, '3 - Sudeste', 'Espírito Santo', 'ES', 'Afonso Cláudio', 3109),
('3200136', 32, 136, '3 - Sudeste', 'Espírito Santo', 'ES', 'Águia Branca', 3110),
('3200169', 32, 169, '3 - Sudeste', 'Espírito Santo', 'ES', 'Água Doce do Norte', 3111),
('3200201', 32, 201, '3 - Sudeste', 'Espírito Santo', 'ES', 'Alegre', 3112),
('3200300', 32, 300, '3 - Sudeste', 'Espírito Santo', 'ES', 'Alfredo Chaves', 3113),
('3200359', 32, 359, '3 - Sudeste', 'Espírito Santo', 'ES', 'Alto Rio Novo', 3114),
('3200409', 32, 409, '3 - Sudeste', 'Espírito Santo', 'ES', 'Anchieta', 3115),
('3200508', 32, 508, '3 - Sudeste', 'Espírito Santo', 'ES', 'Apiacá', 3116),
('3200607', 32, 607, '3 - Sudeste', 'Espírito Santo', 'ES', 'Aracruz', 3117),
('3200706', 32, 706, '3 - Sudeste', 'Espírito Santo', 'ES', 'Atilio Vivacqua', 3118),
('3200805', 32, 805, '3 - Sudeste', 'Espírito Santo', 'ES', 'Baixo Guandu', 3119),
('3200904', 32, 904, '3 - Sudeste', 'Espírito Santo', 'ES', 'Barra de São Francisco', 3120),
('3201001', 32, 1001, '3 - Sudeste', 'Espírito Santo', 'ES', 'Boa Esperança', 3121),
('3201100', 32, 1100, '3 - Sudeste', 'Espírito Santo', 'ES', 'Bom Jesus do Norte', 3122),
('3201159', 32, 1159, '3 - Sudeste', 'Espírito Santo', 'ES', 'Brejetuba', 3123),
('3201209', 32, 1209, '3 - Sudeste', 'Espírito Santo', 'ES', 'Cachoeiro de Itapemirim', 3124),
('3201308', 32, 1308, '3 - Sudeste', 'Espírito Santo', 'ES', 'Cariacica', 3125),
('3201407', 32, 1407, '3 - Sudeste', 'Espírito Santo', 'ES', 'Castelo', 3126),
('3201506', 32, 1506, '3 - Sudeste', 'Espírito Santo', 'ES', 'Colatina', 3127),
('3201605', 32, 1605, '3 - Sudeste', 'Espírito Santo', 'ES', 'Conceição da Barra', 3128),
('3201704', 32, 1704, '3 - Sudeste', 'Espírito Santo', 'ES', 'Conceição do Castelo', 3129),
('3201803', 32, 1803, '3 - Sudeste', 'Espírito Santo', 'ES', 'Divino de São Lourenço', 3130),
('3201902', 32, 1902, '3 - Sudeste', 'Espírito Santo', 'ES', 'Domingos Martins', 3131),
('3202009', 32, 2009, '3 - Sudeste', 'Espírito Santo', 'ES', 'Dores do Rio Preto', 3132),
('3202108', 32, 2108, '3 - Sudeste', 'Espírito Santo', 'ES', 'Ecoporanga', 3133),
('3202207', 32, 2207, '3 - Sudeste', 'Espírito Santo', 'ES', 'Fundão', 3134),
('3202256', 32, 2256, '3 - Sudeste', 'Espírito Santo', 'ES', 'Governador Lindenberg', 3135),
('3202306', 32, 2306, '3 - Sudeste', 'Espírito Santo', 'ES', 'Guaçuí', 3136),
('3202405', 32, 2405, '3 - Sudeste', 'Espírito Santo', 'ES', 'Guarapari', 3137),
('3202454', 32, 2454, '3 - Sudeste', 'Espírito Santo', 'ES', 'Ibatiba', 3138),
('3202504', 32, 2504, '3 - Sudeste', 'Espírito Santo', 'ES', 'Ibiraçu', 3139),
('3202553', 32, 2553, '3 - Sudeste', 'Espírito Santo', 'ES', 'Ibitirama', 3140),
('3202603', 32, 2603, '3 - Sudeste', 'Espírito Santo', 'ES', 'Iconha', 3141),
('3202652', 32, 2652, '3 - Sudeste', 'Espírito Santo', 'ES', 'Irupi', 3142),
('3202702', 32, 2702, '3 - Sudeste', 'Espírito Santo', 'ES', 'Itaguaçu', 3143),
('3202801', 32, 2801, '3 - Sudeste', 'Espírito Santo', 'ES', 'Itapemirim', 3144),
('3202900', 32, 2900, '3 - Sudeste', 'Espírito Santo', 'ES', 'Itarana', 3145),
('3203007', 32, 3007, '3 - Sudeste', 'Espírito Santo', 'ES', 'Iúna', 3146),
('3203056', 32, 3056, '3 - Sudeste', 'Espírito Santo', 'ES', 'Jaguaré', 3147),
('3203106', 32, 3106, '3 - Sudeste', 'Espírito Santo', 'ES', 'Jerônimo Monteiro', 3148),
('3203130', 32, 3130, '3 - Sudeste', 'Espírito Santo', 'ES', 'João Neiva', 3149),
('3203163', 32, 3163, '3 - Sudeste', 'Espírito Santo', 'ES', 'Laranja da Terra', 3150),
('3203205', 32, 3205, '3 - Sudeste', 'Espírito Santo', 'ES', 'Linhares', 3151),
('3203304', 32, 3304, '3 - Sudeste', 'Espírito Santo', 'ES', 'Mantenópolis', 3152),
('3203320', 32, 3320, '3 - Sudeste', 'Espírito Santo', 'ES', 'Marataízes', 3153),
('3203346', 32, 3346, '3 - Sudeste', 'Espírito Santo', 'ES', 'Marechal Floriano', 3154),
('3203353', 32, 3353, '3 - Sudeste', 'Espírito Santo', 'ES', 'Marilândia', 3155),
('3203403', 32, 3403, '3 - Sudeste', 'Espírito Santo', 'ES', 'Mimoso do Sul', 3156),
('3203502', 32, 3502, '3 - Sudeste', 'Espírito Santo', 'ES', 'Montanha', 3157),
('3203601', 32, 3601, '3 - Sudeste', 'Espírito Santo', 'ES', 'Mucurici', 3158),
('3203700', 32, 3700, '3 - Sudeste', 'Espírito Santo', 'ES', 'Muniz Freire', 3159),
('3203809', 32, 3809, '3 - Sudeste', 'Espírito Santo', 'ES', 'Muqui', 3160),
('3203908', 32, 3908, '3 - Sudeste', 'Espírito Santo', 'ES', 'Nova Venécia', 3161),
('3204005', 32, 4005, '3 - Sudeste', 'Espírito Santo', 'ES', 'Pancas', 3162),
('3204054', 32, 4054, '3 - Sudeste', 'Espírito Santo', 'ES', 'Pedro Canário', 3163),
('3204104', 32, 4104, '3 - Sudeste', 'Espírito Santo', 'ES', 'Pinheiros', 3164),
('3204203', 32, 4203, '3 - Sudeste', 'Espírito Santo', 'ES', 'Piúma', 3165),
('3204252', 32, 4252, '3 - Sudeste', 'Espírito Santo', 'ES', 'Ponto Belo', 3166),
('3204302', 32, 4302, '3 - Sudeste', 'Espírito Santo', 'ES', 'Presidente Kennedy', 3167),
('3204351', 32, 4351, '3 - Sudeste', 'Espírito Santo', 'ES', 'Rio Bananal', 3168),
('3204401', 32, 4401, '3 - Sudeste', 'Espírito Santo', 'ES', 'Rio Novo do Sul', 3169),
('3204500', 32, 4500, '3 - Sudeste', 'Espírito Santo', 'ES', 'Santa Leopoldina', 3170),
('3204559', 32, 4559, '3 - Sudeste', 'Espírito Santo', 'ES', 'Santa Maria de Jetibá', 3171),
('3204609', 32, 4609, '3 - Sudeste', 'Espírito Santo', 'ES', 'Santa Teresa', 3172),
('3204658', 32, 4658, '3 - Sudeste', 'Espírito Santo', 'ES', 'São Domingos do Norte', 3173),
('3204708', 32, 4708, '3 - Sudeste', 'Espírito Santo', 'ES', 'São Gabriel da Palha', 3174),
('3204807', 32, 4807, '3 - Sudeste', 'Espírito Santo', 'ES', 'São José do Calçado', 3175),
('3204906', 32, 4906, '3 - Sudeste', 'Espírito Santo', 'ES', 'São Mateus', 3176),
('3204955', 32, 4955, '3 - Sudeste', 'Espírito Santo', 'ES', 'São Roque do Canaã', 3177),
('3205002', 32, 5002, '3 - Sudeste', 'Espírito Santo', 'ES', 'Serra', 3178),
('3205010', 32, 5010, '3 - Sudeste', 'Espírito Santo', 'ES', 'Sooretama', 3179),
('3205036', 32, 5036, '3 - Sudeste', 'Espírito Santo', 'ES', 'Vargem Alta', 3180),
('3205069', 32, 5069, '3 - Sudeste', 'Espírito Santo', 'ES', 'Venda Nova do Imigrante', 3181),
('3205101', 32, 5101, '3 - Sudeste', 'Espírito Santo', 'ES', 'Viana', 3182),
('3205150', 32, 5150, '3 - Sudeste', 'Espírito Santo', 'ES', 'Vila Pavão', 3183),
('3205176', 32, 5176, '3 - Sudeste', 'Espírito Santo', 'ES', 'Vila Valério', 3184),
('3205200', 32, 5200, '3 - Sudeste', 'Espírito Santo', 'ES', 'Vila Velha', 3185),
('3205309', 32, 5309, '3 - Sudeste', 'Espírito Santo', 'ES', 'Vitória', 3186),
('3300100', 33, 100, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Angra dos Reis', 3187),
('3300159', 33, 159, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Aperibé', 3188),
('3300209', 33, 209, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Araruama', 3189),
('3300225', 33, 225, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Areal', 3190),
('3300233', 33, 233, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Armação dos Búzios', 3191),
('3300258', 33, 258, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Arraial do Cabo', 3192),
('3300308', 33, 308, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Barra do Piraí', 3193),
('3300407', 33, 407, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Barra Mansa', 3194),
('3300456', 33, 456, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Belford Roxo', 3195),
('3300506', 33, 506, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Bom Jardim', 3196),
('3300605', 33, 605, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Bom Jesus do Itabapoana', 3197),
('3300704', 33, 704, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Cabo Frio', 3198),
('3300803', 33, 803, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Cachoeiras de Macacu', 3199),
('3300902', 33, 902, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Cambuci', 3200),
('3300936', 33, 936, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Carapebus', 3201),
('3300951', 33, 951, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Comendador Levy Gasparian', 3202),
('3301009', 33, 1009, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Campos dos Goytacazes', 3203),
('3301108', 33, 1108, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Cantagalo', 3204),
('3301157', 33, 1157, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Cardoso Moreira', 3205),
('3301207', 33, 1207, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Carmo', 3206),
('3301306', 33, 1306, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Casimiro de Abreu', 3207),
('3301405', 33, 1405, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Conceição de Macabu', 3208),
('3301504', 33, 1504, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Cordeiro', 3209),
('3301603', 33, 1603, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Duas Barras', 3210),
('3301702', 33, 1702, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Duque de Caxias', 3211),
('3301801', 33, 1801, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Engenheiro Paulo de Frontin', 3212),
('3301850', 33, 1850, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Guapimirim', 3213),
('3301876', 33, 1876, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Iguaba Grande', 3214),
('3301900', 33, 1900, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Itaboraí', 3215),
('3302007', 33, 2007, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Itaguaí', 3216),
('3302056', 33, 2056, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Italva', 3217),
('3302106', 33, 2106, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Itaocara', 3218),
('3302205', 33, 2205, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Itaperuna', 3219),
('3302254', 33, 2254, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Itatiaia', 3220),
('3302270', 33, 2270, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Japeri', 3221),
('3302304', 33, 2304, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Laje do Muriaé', 3222),
('3302403', 33, 2403, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Macaé', 3223),
('3302452', 33, 2452, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Macuco', 3224),
('3302502', 33, 2502, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Magé', 3225),
('3302601', 33, 2601, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Mangaratiba', 3226),
('3302700', 33, 2700, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Maricá', 3227),
('3302809', 33, 2809, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Mendes', 3228),
('3302858', 33, 2858, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Mesquita', 3229),
('3302908', 33, 2908, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Miguel Pereira', 3230),
('3303005', 33, 3005, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Miracema', 3231),
('3303104', 33, 3104, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Natividade', 3232),
('3303203', 33, 3203, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Nilópolis', 3233),
('3303302', 33, 3302, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Niterói', 3234),
('3303401', 33, 3401, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Nova Friburgo', 3235),
('3303500', 33, 3500, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Nova Iguaçu', 3236),
('3303609', 33, 3609, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Paracambi', 3237),
('3303708', 33, 3708, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Paraíba do Sul', 3238),
('3303807', 33, 3807, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Paraty', 3239),
('3303856', 33, 3856, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Paty do Alferes', 3240);
INSERT INTO `ibge_uf` (`cod_mun`, `cod_uf`, `seila`, `regiao`, `estado`, `uf`, `municipio`, `id`) VALUES
('3303906', 33, 3906, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Petrópolis', 3241),
('3303955', 33, 3955, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Pinheiral', 3242),
('3304003', 33, 4003, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Piraí', 3243),
('3304102', 33, 4102, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Porciúncula', 3244),
('3304110', 33, 4110, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Porto Real', 3245),
('3304128', 33, 4128, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Quatis', 3246),
('3304144', 33, 4144, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Queimados', 3247),
('3304151', 33, 4151, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Quissamã', 3248),
('3304201', 33, 4201, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Resende', 3249),
('3304300', 33, 4300, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Rio Bonito', 3250),
('3304409', 33, 4409, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Rio Claro', 3251),
('3304508', 33, 4508, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Rio das Flores', 3252),
('3304524', 33, 4524, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Rio das Ostras', 3253),
('3304557', 33, 4557, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Rio de Janeiro', 3254),
('3304607', 33, 4607, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Santa Maria Madalena', 3255),
('3304706', 33, 4706, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Santo Antônio de Pádua', 3256),
('3304755', 33, 4755, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'São Francisco de Itabapoana', 3257),
('3304805', 33, 4805, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'São Fidélis', 3258),
('3304904', 33, 4904, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'São Gonçalo', 3259),
('3305000', 33, 5000, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'São João da Barra', 3260),
('3305109', 33, 5109, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'São João de Meriti', 3261),
('3305133', 33, 5133, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'São José de Ubá', 3262),
('3305158', 33, 5158, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'São José do Vale do Rio Preto', 3263),
('3305208', 33, 5208, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'São Pedro da Aldeia', 3264),
('3305307', 33, 5307, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'São Sebastião do Alto', 3265),
('3305406', 33, 5406, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Sapucaia', 3266),
('3305505', 33, 5505, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Saquarema', 3267),
('3305554', 33, 5554, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Seropédica', 3268),
('3305604', 33, 5604, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Silva Jardim', 3269),
('3305703', 33, 5703, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Sumidouro', 3270),
('3305752', 33, 5752, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Tanguá', 3271),
('3305802', 33, 5802, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Teresópolis', 3272),
('3305901', 33, 5901, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Trajano de Moraes', 3273),
('3306008', 33, 6008, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Três Rios', 3274),
('3306107', 33, 6107, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Valença', 3275),
('3306156', 33, 6156, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Varre-Sai', 3276),
('3306206', 33, 6206, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Vassouras', 3277),
('3306305', 33, 6305, '3 - Sudeste', 'Rio de Janeiro', 'RJ', 'Volta Redonda', 3278),
('3500105', 35, 105, '3 - Sudeste', 'São Paulo', 'SP', 'Adamantina', 3279),
('3500204', 35, 204, '3 - Sudeste', 'São Paulo', 'SP', 'Adolfo', 3280),
('3500303', 35, 303, '3 - Sudeste', 'São Paulo', 'SP', 'Aguaí', 3281),
('3500402', 35, 402, '3 - Sudeste', 'São Paulo', 'SP', 'Águas da Prata', 3282),
('3500501', 35, 501, '3 - Sudeste', 'São Paulo', 'SP', 'Águas de Lindóia', 3283),
('3500550', 35, 550, '3 - Sudeste', 'São Paulo', 'SP', 'Águas de Santa Bárbara', 3284),
('3500600', 35, 600, '3 - Sudeste', 'São Paulo', 'SP', 'Águas de São Pedro', 3285),
('3500709', 35, 709, '3 - Sudeste', 'São Paulo', 'SP', 'Agudos', 3286),
('3500758', 35, 758, '3 - Sudeste', 'São Paulo', 'SP', 'Alambari', 3287),
('3500808', 35, 808, '3 - Sudeste', 'São Paulo', 'SP', 'Alfredo Marcondes', 3288),
('3500907', 35, 907, '3 - Sudeste', 'São Paulo', 'SP', 'Altair', 3289),
('3501004', 35, 1004, '3 - Sudeste', 'São Paulo', 'SP', 'Altinópolis', 3290),
('3501103', 35, 1103, '3 - Sudeste', 'São Paulo', 'SP', 'Alto Alegre', 3291),
('3501152', 35, 1152, '3 - Sudeste', 'São Paulo', 'SP', 'Alumínio', 3292),
('3501202', 35, 1202, '3 - Sudeste', 'São Paulo', 'SP', 'Álvares Florence', 3293),
('3501301', 35, 1301, '3 - Sudeste', 'São Paulo', 'SP', 'Álvares Machado', 3294),
('3501400', 35, 1400, '3 - Sudeste', 'São Paulo', 'SP', 'Álvaro de Carvalho', 3295),
('3501509', 35, 1509, '3 - Sudeste', 'São Paulo', 'SP', 'Alvinlândia', 3296),
('3501608', 35, 1608, '3 - Sudeste', 'São Paulo', 'SP', 'Americana', 3297),
('3501707', 35, 1707, '3 - Sudeste', 'São Paulo', 'SP', 'Américo Brasiliense', 3298),
('3501806', 35, 1806, '3 - Sudeste', 'São Paulo', 'SP', 'Américo de Campos', 3299),
('3501905', 35, 1905, '3 - Sudeste', 'São Paulo', 'SP', 'Amparo', 3300),
('3502002', 35, 2002, '3 - Sudeste', 'São Paulo', 'SP', 'Analândia', 3301),
('3502101', 35, 2101, '3 - Sudeste', 'São Paulo', 'SP', 'Andradina', 3302),
('3502200', 35, 2200, '3 - Sudeste', 'São Paulo', 'SP', 'Angatuba', 3303),
('3502309', 35, 2309, '3 - Sudeste', 'São Paulo', 'SP', 'Anhembi', 3304),
('3502408', 35, 2408, '3 - Sudeste', 'São Paulo', 'SP', 'Anhumas', 3305),
('3502507', 35, 2507, '3 - Sudeste', 'São Paulo', 'SP', 'Aparecida', 3306),
('3502606', 35, 2606, '3 - Sudeste', 'São Paulo', 'SP', 'Aparecida d''Oeste', 3307),
('3502705', 35, 2705, '3 - Sudeste', 'São Paulo', 'SP', 'Apiaí', 3308),
('3502754', 35, 2754, '3 - Sudeste', 'São Paulo', 'SP', 'Araçariguama', 3309),
('3502804', 35, 2804, '3 - Sudeste', 'São Paulo', 'SP', 'Araçatuba', 3310),
('3502903', 35, 2903, '3 - Sudeste', 'São Paulo', 'SP', 'Araçoiaba da Serra', 3311),
('3503000', 35, 3000, '3 - Sudeste', 'São Paulo', 'SP', 'Aramina', 3312),
('3503109', 35, 3109, '3 - Sudeste', 'São Paulo', 'SP', 'Arandu', 3313),
('3503158', 35, 3158, '3 - Sudeste', 'São Paulo', 'SP', 'Arapeí', 3314),
('3503208', 35, 3208, '3 - Sudeste', 'São Paulo', 'SP', 'Araraquara', 3315),
('3503307', 35, 3307, '3 - Sudeste', 'São Paulo', 'SP', 'Araras', 3316),
('3503356', 35, 3356, '3 - Sudeste', 'São Paulo', 'SP', 'Arco-Íris', 3317),
('3503406', 35, 3406, '3 - Sudeste', 'São Paulo', 'SP', 'Arealva', 3318),
('3503505', 35, 3505, '3 - Sudeste', 'São Paulo', 'SP', 'Areias', 3319),
('3503604', 35, 3604, '3 - Sudeste', 'São Paulo', 'SP', 'Areiópolis', 3320),
('3503703', 35, 3703, '3 - Sudeste', 'São Paulo', 'SP', 'Ariranha', 3321),
('3503802', 35, 3802, '3 - Sudeste', 'São Paulo', 'SP', 'Artur Nogueira', 3322),
('3503901', 35, 3901, '3 - Sudeste', 'São Paulo', 'SP', 'Arujá', 3323),
('3503950', 35, 3950, '3 - Sudeste', 'São Paulo', 'SP', 'Aspásia', 3324),
('3504008', 35, 4008, '3 - Sudeste', 'São Paulo', 'SP', 'Assis', 3325),
('3504107', 35, 4107, '3 - Sudeste', 'São Paulo', 'SP', 'Atibaia', 3326),
('3504206', 35, 4206, '3 - Sudeste', 'São Paulo', 'SP', 'Auriflama', 3327),
('3504305', 35, 4305, '3 - Sudeste', 'São Paulo', 'SP', 'Avaí', 3328),
('3504404', 35, 4404, '3 - Sudeste', 'São Paulo', 'SP', 'Avanhandava', 3329),
('3504503', 35, 4503, '3 - Sudeste', 'São Paulo', 'SP', 'Avaré', 3330),
('3504602', 35, 4602, '3 - Sudeste', 'São Paulo', 'SP', 'Bady Bassitt', 3331),
('3504701', 35, 4701, '3 - Sudeste', 'São Paulo', 'SP', 'Balbinos', 3332),
('3504800', 35, 4800, '3 - Sudeste', 'São Paulo', 'SP', 'Bálsamo', 3333),
('3504909', 35, 4909, '3 - Sudeste', 'São Paulo', 'SP', 'Bananal', 3334),
('3505005', 35, 5005, '3 - Sudeste', 'São Paulo', 'SP', 'Barão de Antonina', 3335),
('3505104', 35, 5104, '3 - Sudeste', 'São Paulo', 'SP', 'Barbosa', 3336),
('3505203', 35, 5203, '3 - Sudeste', 'São Paulo', 'SP', 'Bariri', 3337),
('3505302', 35, 5302, '3 - Sudeste', 'São Paulo', 'SP', 'Barra Bonita', 3338),
('3505351', 35, 5351, '3 - Sudeste', 'São Paulo', 'SP', 'Barra do Chapéu', 3339),
('3505401', 35, 5401, '3 - Sudeste', 'São Paulo', 'SP', 'Barra do Turvo', 3340),
('3505500', 35, 5500, '3 - Sudeste', 'São Paulo', 'SP', 'Barretos', 3341),
('3505609', 35, 5609, '3 - Sudeste', 'São Paulo', 'SP', 'Barrinha', 3342),
('3505708', 35, 5708, '3 - Sudeste', 'São Paulo', 'SP', 'Barueri', 3343),
('3505807', 35, 5807, '3 - Sudeste', 'São Paulo', 'SP', 'Bastos', 3344),
('3505906', 35, 5906, '3 - Sudeste', 'São Paulo', 'SP', 'Batatais', 3345),
('3506003', 35, 6003, '3 - Sudeste', 'São Paulo', 'SP', 'Bauru', 3346),
('3506102', 35, 6102, '3 - Sudeste', 'São Paulo', 'SP', 'Bebedouro', 3347),
('3506201', 35, 6201, '3 - Sudeste', 'São Paulo', 'SP', 'Bento de Abreu', 3348),
('3506300', 35, 6300, '3 - Sudeste', 'São Paulo', 'SP', 'Bernardino de Campos', 3349),
('3506359', 35, 6359, '3 - Sudeste', 'São Paulo', 'SP', 'Bertioga', 3350),
('3506409', 35, 6409, '3 - Sudeste', 'São Paulo', 'SP', 'Bilac', 3351),
('3506508', 35, 6508, '3 - Sudeste', 'São Paulo', 'SP', 'Birigui', 3352),
('3506607', 35, 6607, '3 - Sudeste', 'São Paulo', 'SP', 'Biritiba-Mirim', 3353),
('3506706', 35, 6706, '3 - Sudeste', 'São Paulo', 'SP', 'Boa Esperança do Sul', 3354),
('3506805', 35, 6805, '3 - Sudeste', 'São Paulo', 'SP', 'Bocaina', 3355),
('3506904', 35, 6904, '3 - Sudeste', 'São Paulo', 'SP', 'Bofete', 3356),
('3507001', 35, 7001, '3 - Sudeste', 'São Paulo', 'SP', 'Boituva', 3357),
('3507100', 35, 7100, '3 - Sudeste', 'São Paulo', 'SP', 'Bom Jesus dos Perdões', 3358),
('3507159', 35, 7159, '3 - Sudeste', 'São Paulo', 'SP', 'Bom Sucesso de Itararé', 3359),
('3507209', 35, 7209, '3 - Sudeste', 'São Paulo', 'SP', 'Borá', 3360),
('3507308', 35, 7308, '3 - Sudeste', 'São Paulo', 'SP', 'Boracéia', 3361),
('3507407', 35, 7407, '3 - Sudeste', 'São Paulo', 'SP', 'Borborema', 3362),
('3507456', 35, 7456, '3 - Sudeste', 'São Paulo', 'SP', 'Borebi', 3363),
('3507506', 35, 7506, '3 - Sudeste', 'São Paulo', 'SP', 'Botucatu', 3364),
('3507605', 35, 7605, '3 - Sudeste', 'São Paulo', 'SP', 'Bragança Paulista', 3365),
('3507704', 35, 7704, '3 - Sudeste', 'São Paulo', 'SP', 'Braúna', 3366),
('3507753', 35, 7753, '3 - Sudeste', 'São Paulo', 'SP', 'Brejo Alegre', 3367),
('3507803', 35, 7803, '3 - Sudeste', 'São Paulo', 'SP', 'Brodowski', 3368),
('3507902', 35, 7902, '3 - Sudeste', 'São Paulo', 'SP', 'Brotas', 3369),
('3508009', 35, 8009, '3 - Sudeste', 'São Paulo', 'SP', 'Buri', 3370),
('3508108', 35, 8108, '3 - Sudeste', 'São Paulo', 'SP', 'Buritama', 3371),
('3508207', 35, 8207, '3 - Sudeste', 'São Paulo', 'SP', 'Buritizal', 3372),
('3508306', 35, 8306, '3 - Sudeste', 'São Paulo', 'SP', 'Cabrália Paulista', 3373),
('3508405', 35, 8405, '3 - Sudeste', 'São Paulo', 'SP', 'Cabreúva', 3374),
('3508504', 35, 8504, '3 - Sudeste', 'São Paulo', 'SP', 'Caçapava', 3375),
('3508603', 35, 8603, '3 - Sudeste', 'São Paulo', 'SP', 'Cachoeira Paulista', 3376),
('3508702', 35, 8702, '3 - Sudeste', 'São Paulo', 'SP', 'Caconde', 3377),
('3508801', 35, 8801, '3 - Sudeste', 'São Paulo', 'SP', 'Cafelândia', 3378),
('3508900', 35, 8900, '3 - Sudeste', 'São Paulo', 'SP', 'Caiabu', 3379),
('3509007', 35, 9007, '3 - Sudeste', 'São Paulo', 'SP', 'Caieiras', 3380),
('3509106', 35, 9106, '3 - Sudeste', 'São Paulo', 'SP', 'Caiuá', 3381),
('3509205', 35, 9205, '3 - Sudeste', 'São Paulo', 'SP', 'Cajamar', 3382),
('3509254', 35, 9254, '3 - Sudeste', 'São Paulo', 'SP', 'Cajati', 3383),
('3509304', 35, 9304, '3 - Sudeste', 'São Paulo', 'SP', 'Cajobi', 3384),
('3509403', 35, 9403, '3 - Sudeste', 'São Paulo', 'SP', 'Cajuru', 3385),
('3509452', 35, 9452, '3 - Sudeste', 'São Paulo', 'SP', 'Campina do Monte Alegre', 3386),
('3509502', 35, 9502, '3 - Sudeste', 'São Paulo', 'SP', 'Campinas', 3387),
('3509601', 35, 9601, '3 - Sudeste', 'São Paulo', 'SP', 'Campo Limpo Paulista', 3388),
('3509700', 35, 9700, '3 - Sudeste', 'São Paulo', 'SP', 'Campos do Jordão', 3389),
('3509809', 35, 9809, '3 - Sudeste', 'São Paulo', 'SP', 'Campos Novos Paulista', 3390),
('3509908', 35, 9908, '3 - Sudeste', 'São Paulo', 'SP', 'Cananéia', 3391),
('3509957', 35, 9957, '3 - Sudeste', 'São Paulo', 'SP', 'Canas', 3392),
('3510005', 35, 10005, '3 - Sudeste', 'São Paulo', 'SP', 'Cândido Mota', 3393),
('3510104', 35, 10104, '3 - Sudeste', 'São Paulo', 'SP', 'Cândido Rodrigues', 3394),
('3510153', 35, 10153, '3 - Sudeste', 'São Paulo', 'SP', 'Canitar', 3395),
('3510203', 35, 10203, '3 - Sudeste', 'São Paulo', 'SP', 'Capão Bonito', 3396),
('3510302', 35, 10302, '3 - Sudeste', 'São Paulo', 'SP', 'Capela do Alto', 3397),
('3510401', 35, 10401, '3 - Sudeste', 'São Paulo', 'SP', 'Capivari', 3398),
('3510500', 35, 10500, '3 - Sudeste', 'São Paulo', 'SP', 'Caraguatatuba', 3399),
('3510609', 35, 10609, '3 - Sudeste', 'São Paulo', 'SP', 'Carapicuíba', 3400),
('3510708', 35, 10708, '3 - Sudeste', 'São Paulo', 'SP', 'Cardoso', 3401),
('3510807', 35, 10807, '3 - Sudeste', 'São Paulo', 'SP', 'Casa Branca', 3402),
('3510906', 35, 10906, '3 - Sudeste', 'São Paulo', 'SP', 'Cássia dos Coqueiros', 3403),
('3511003', 35, 11003, '3 - Sudeste', 'São Paulo', 'SP', 'Castilho', 3404),
('3511102', 35, 11102, '3 - Sudeste', 'São Paulo', 'SP', 'Catanduva', 3405),
('3511201', 35, 11201, '3 - Sudeste', 'São Paulo', 'SP', 'Catiguá', 3406),
('3511300', 35, 11300, '3 - Sudeste', 'São Paulo', 'SP', 'Cedral', 3407),
('3511409', 35, 11409, '3 - Sudeste', 'São Paulo', 'SP', 'Cerqueira César', 3408),
('3511508', 35, 11508, '3 - Sudeste', 'São Paulo', 'SP', 'Cerquilho', 3409),
('3511607', 35, 11607, '3 - Sudeste', 'São Paulo', 'SP', 'Cesário Lange', 3410),
('3511706', 35, 11706, '3 - Sudeste', 'São Paulo', 'SP', 'Charqueada', 3411),
('3511904', 35, 11904, '3 - Sudeste', 'São Paulo', 'SP', 'Clementina', 3412),
('3512001', 35, 12001, '3 - Sudeste', 'São Paulo', 'SP', 'Colina', 3413),
('3512100', 35, 12100, '3 - Sudeste', 'São Paulo', 'SP', 'Colômbia', 3414),
('3512209', 35, 12209, '3 - Sudeste', 'São Paulo', 'SP', 'Conchal', 3415),
('3512308', 35, 12308, '3 - Sudeste', 'São Paulo', 'SP', 'Conchas', 3416),
('3512407', 35, 12407, '3 - Sudeste', 'São Paulo', 'SP', 'Cordeirópolis', 3417),
('3512506', 35, 12506, '3 - Sudeste', 'São Paulo', 'SP', 'Coroados', 3418),
('3512605', 35, 12605, '3 - Sudeste', 'São Paulo', 'SP', 'Coronel Macedo', 3419),
('3512704', 35, 12704, '3 - Sudeste', 'São Paulo', 'SP', 'Corumbataí', 3420),
('3512803', 35, 12803, '3 - Sudeste', 'São Paulo', 'SP', 'Cosmópolis', 3421),
('3512902', 35, 12902, '3 - Sudeste', 'São Paulo', 'SP', 'Cosmorama', 3422),
('3513009', 35, 13009, '3 - Sudeste', 'São Paulo', 'SP', 'Cotia', 3423),
('3513108', 35, 13108, '3 - Sudeste', 'São Paulo', 'SP', 'Cravinhos', 3424),
('3513207', 35, 13207, '3 - Sudeste', 'São Paulo', 'SP', 'Cristais Paulista', 3425),
('3513306', 35, 13306, '3 - Sudeste', 'São Paulo', 'SP', 'Cruzália', 3426),
('3513405', 35, 13405, '3 - Sudeste', 'São Paulo', 'SP', 'Cruzeiro', 3427),
('3513504', 35, 13504, '3 - Sudeste', 'São Paulo', 'SP', 'Cubatão', 3428),
('3513603', 35, 13603, '3 - Sudeste', 'São Paulo', 'SP', 'Cunha', 3429),
('3513702', 35, 13702, '3 - Sudeste', 'São Paulo', 'SP', 'Descalvado', 3430),
('3513801', 35, 13801, '3 - Sudeste', 'São Paulo', 'SP', 'Diadema', 3431),
('3513850', 35, 13850, '3 - Sudeste', 'São Paulo', 'SP', 'Dirce Reis', 3432),
('3513900', 35, 13900, '3 - Sudeste', 'São Paulo', 'SP', 'Divinolândia', 3433),
('3514007', 35, 14007, '3 - Sudeste', 'São Paulo', 'SP', 'Dobrada', 3434),
('3514106', 35, 14106, '3 - Sudeste', 'São Paulo', 'SP', 'Dois Córregos', 3435),
('3514205', 35, 14205, '3 - Sudeste', 'São Paulo', 'SP', 'Dolcinópolis', 3436),
('3514304', 35, 14304, '3 - Sudeste', 'São Paulo', 'SP', 'Dourado', 3437),
('3514403', 35, 14403, '3 - Sudeste', 'São Paulo', 'SP', 'Dracena', 3438),
('3514502', 35, 14502, '3 - Sudeste', 'São Paulo', 'SP', 'Duartina', 3439),
('3514601', 35, 14601, '3 - Sudeste', 'São Paulo', 'SP', 'Dumont', 3440),
('3514700', 35, 14700, '3 - Sudeste', 'São Paulo', 'SP', 'Echaporã', 3441),
('3514809', 35, 14809, '3 - Sudeste', 'São Paulo', 'SP', 'Eldorado', 3442),
('3514908', 35, 14908, '3 - Sudeste', 'São Paulo', 'SP', 'Elias Fausto', 3443),
('3514924', 35, 14924, '3 - Sudeste', 'São Paulo', 'SP', 'Elisiário', 3444),
('3514957', 35, 14957, '3 - Sudeste', 'São Paulo', 'SP', 'Embaúba', 3445),
('3515004', 35, 15004, '3 - Sudeste', 'São Paulo', 'SP', 'Embu das Artes', 3446),
('3515103', 35, 15103, '3 - Sudeste', 'São Paulo', 'SP', 'Embu-Guaçu', 3447),
('3515129', 35, 15129, '3 - Sudeste', 'São Paulo', 'SP', 'Emilianópolis', 3448),
('3515152', 35, 15152, '3 - Sudeste', 'São Paulo', 'SP', 'Engenheiro Coelho', 3449),
('3515186', 35, 15186, '3 - Sudeste', 'São Paulo', 'SP', 'Espírito Santo do Pinhal', 3450),
('3515194', 35, 15194, '3 - Sudeste', 'São Paulo', 'SP', 'Espírito Santo do Turvo', 3451),
('3515202', 35, 15202, '3 - Sudeste', 'São Paulo', 'SP', 'Estrela d''Oeste', 3452),
('3515301', 35, 15301, '3 - Sudeste', 'São Paulo', 'SP', 'Estrela do Norte', 3453),
('3515350', 35, 15350, '3 - Sudeste', 'São Paulo', 'SP', 'Euclides da Cunha Paulista', 3454),
('3515400', 35, 15400, '3 - Sudeste', 'São Paulo', 'SP', 'Fartura', 3455),
('3515509', 35, 15509, '3 - Sudeste', 'São Paulo', 'SP', 'Fernandópolis', 3456),
('3515608', 35, 15608, '3 - Sudeste', 'São Paulo', 'SP', 'Fernando Prestes', 3457),
('3515657', 35, 15657, '3 - Sudeste', 'São Paulo', 'SP', 'Fernão', 3458),
('3515707', 35, 15707, '3 - Sudeste', 'São Paulo', 'SP', 'Ferraz de Vasconcelos', 3459),
('3515806', 35, 15806, '3 - Sudeste', 'São Paulo', 'SP', 'Flora Rica', 3460),
('3515905', 35, 15905, '3 - Sudeste', 'São Paulo', 'SP', 'Floreal', 3461),
('3516002', 35, 16002, '3 - Sudeste', 'São Paulo', 'SP', 'Flórida Paulista', 3462),
('3516101', 35, 16101, '3 - Sudeste', 'São Paulo', 'SP', 'Florínia', 3463),
('3516200', 35, 16200, '3 - Sudeste', 'São Paulo', 'SP', 'Franca', 3464),
('3516309', 35, 16309, '3 - Sudeste', 'São Paulo', 'SP', 'Francisco Morato', 3465),
('3516408', 35, 16408, '3 - Sudeste', 'São Paulo', 'SP', 'Franco da Rocha', 3466),
('3516507', 35, 16507, '3 - Sudeste', 'São Paulo', 'SP', 'Gabriel Monteiro', 3467),
('3516606', 35, 16606, '3 - Sudeste', 'São Paulo', 'SP', 'Gália', 3468),
('3516705', 35, 16705, '3 - Sudeste', 'São Paulo', 'SP', 'Garça', 3469),
('3516804', 35, 16804, '3 - Sudeste', 'São Paulo', 'SP', 'Gastão Vidigal', 3470),
('3516853', 35, 16853, '3 - Sudeste', 'São Paulo', 'SP', 'Gavião Peixoto', 3471),
('3516903', 35, 16903, '3 - Sudeste', 'São Paulo', 'SP', 'General Salgado', 3472),
('3517000', 35, 17000, '3 - Sudeste', 'São Paulo', 'SP', 'Getulina', 3473),
('3517109', 35, 17109, '3 - Sudeste', 'São Paulo', 'SP', 'Glicério', 3474),
('3517208', 35, 17208, '3 - Sudeste', 'São Paulo', 'SP', 'Guaiçara', 3475),
('3517307', 35, 17307, '3 - Sudeste', 'São Paulo', 'SP', 'Guaimbê', 3476),
('3517406', 35, 17406, '3 - Sudeste', 'São Paulo', 'SP', 'Guaíra', 3477),
('3517505', 35, 17505, '3 - Sudeste', 'São Paulo', 'SP', 'Guapiaçu', 3478),
('3517604', 35, 17604, '3 - Sudeste', 'São Paulo', 'SP', 'Guapiara', 3479),
('3517703', 35, 17703, '3 - Sudeste', 'São Paulo', 'SP', 'Guará', 3480),
('3517802', 35, 17802, '3 - Sudeste', 'São Paulo', 'SP', 'Guaraçaí', 3481),
('3517901', 35, 17901, '3 - Sudeste', 'São Paulo', 'SP', 'Guaraci', 3482),
('3518008', 35, 18008, '3 - Sudeste', 'São Paulo', 'SP', 'Guarani d''Oeste', 3483),
('3518107', 35, 18107, '3 - Sudeste', 'São Paulo', 'SP', 'Guarantã', 3484),
('3518206', 35, 18206, '3 - Sudeste', 'São Paulo', 'SP', 'Guararapes', 3485),
('3518305', 35, 18305, '3 - Sudeste', 'São Paulo', 'SP', 'Guararema', 3486),
('3518404', 35, 18404, '3 - Sudeste', 'São Paulo', 'SP', 'Guaratinguetá', 3487),
('3518503', 35, 18503, '3 - Sudeste', 'São Paulo', 'SP', 'Guareí', 3488),
('3518602', 35, 18602, '3 - Sudeste', 'São Paulo', 'SP', 'Guariba', 3489),
('3518701', 35, 18701, '3 - Sudeste', 'São Paulo', 'SP', 'Guarujá', 3490),
('3518800', 35, 18800, '3 - Sudeste', 'São Paulo', 'SP', 'Guarulhos', 3491),
('3518859', 35, 18859, '3 - Sudeste', 'São Paulo', 'SP', 'Guatapará', 3492),
('3518909', 35, 18909, '3 - Sudeste', 'São Paulo', 'SP', 'Guzolândia', 3493),
('3519006', 35, 19006, '3 - Sudeste', 'São Paulo', 'SP', 'Herculândia', 3494),
('3519055', 35, 19055, '3 - Sudeste', 'São Paulo', 'SP', 'Holambra', 3495),
('3519071', 35, 19071, '3 - Sudeste', 'São Paulo', 'SP', 'Hortolândia', 3496),
('3519105', 35, 19105, '3 - Sudeste', 'São Paulo', 'SP', 'Iacanga', 3497),
('3519204', 35, 19204, '3 - Sudeste', 'São Paulo', 'SP', 'Iacri', 3498),
('3519253', 35, 19253, '3 - Sudeste', 'São Paulo', 'SP', 'Iaras', 3499),
('3519303', 35, 19303, '3 - Sudeste', 'São Paulo', 'SP', 'Ibaté', 3500),
('3519402', 35, 19402, '3 - Sudeste', 'São Paulo', 'SP', 'Ibirá', 3501),
('3519501', 35, 19501, '3 - Sudeste', 'São Paulo', 'SP', 'Ibirarema', 3502),
('3519600', 35, 19600, '3 - Sudeste', 'São Paulo', 'SP', 'Ibitinga', 3503),
('3519709', 35, 19709, '3 - Sudeste', 'São Paulo', 'SP', 'Ibiúna', 3504),
('3519808', 35, 19808, '3 - Sudeste', 'São Paulo', 'SP', 'Icém', 3505),
('3519907', 35, 19907, '3 - Sudeste', 'São Paulo', 'SP', 'Iepê', 3506),
('3520004', 35, 20004, '3 - Sudeste', 'São Paulo', 'SP', 'Igaraçu do Tietê', 3507),
('3520103', 35, 20103, '3 - Sudeste', 'São Paulo', 'SP', 'Igarapava', 3508),
('3520202', 35, 20202, '3 - Sudeste', 'São Paulo', 'SP', 'Igaratá', 3509),
('3520301', 35, 20301, '3 - Sudeste', 'São Paulo', 'SP', 'Iguape', 3510),
('3520400', 35, 20400, '3 - Sudeste', 'São Paulo', 'SP', 'Ilhabela', 3511),
('3520426', 35, 20426, '3 - Sudeste', 'São Paulo', 'SP', 'Ilha Comprida', 3512),
('3520442', 35, 20442, '3 - Sudeste', 'São Paulo', 'SP', 'Ilha Solteira', 3513),
('3520509', 35, 20509, '3 - Sudeste', 'São Paulo', 'SP', 'Indaiatuba', 3514),
('3520608', 35, 20608, '3 - Sudeste', 'São Paulo', 'SP', 'Indiana', 3515),
('3520707', 35, 20707, '3 - Sudeste', 'São Paulo', 'SP', 'Indiaporã', 3516),
('3520806', 35, 20806, '3 - Sudeste', 'São Paulo', 'SP', 'Inúbia Paulista', 3517),
('3520905', 35, 20905, '3 - Sudeste', 'São Paulo', 'SP', 'Ipaussu', 3518),
('3521002', 35, 21002, '3 - Sudeste', 'São Paulo', 'SP', 'Iperó', 3519),
('3521101', 35, 21101, '3 - Sudeste', 'São Paulo', 'SP', 'Ipeúna', 3520),
('3521150', 35, 21150, '3 - Sudeste', 'São Paulo', 'SP', 'Ipiguá', 3521),
('3521200', 35, 21200, '3 - Sudeste', 'São Paulo', 'SP', 'Iporanga', 3522),
('3521309', 35, 21309, '3 - Sudeste', 'São Paulo', 'SP', 'Ipuã', 3523),
('3521408', 35, 21408, '3 - Sudeste', 'São Paulo', 'SP', 'Iracemápolis', 3524),
('3521507', 35, 21507, '3 - Sudeste', 'São Paulo', 'SP', 'Irapuã', 3525),
('3521606', 35, 21606, '3 - Sudeste', 'São Paulo', 'SP', 'Irapuru', 3526),
('3521705', 35, 21705, '3 - Sudeste', 'São Paulo', 'SP', 'Itaberá', 3527),
('3521804', 35, 21804, '3 - Sudeste', 'São Paulo', 'SP', 'Itaí', 3528),
('3521903', 35, 21903, '3 - Sudeste', 'São Paulo', 'SP', 'Itajobi', 3529),
('3522000', 35, 22000, '3 - Sudeste', 'São Paulo', 'SP', 'Itaju', 3530),
('3522109', 35, 22109, '3 - Sudeste', 'São Paulo', 'SP', 'Itanhaém', 3531),
('3522158', 35, 22158, '3 - Sudeste', 'São Paulo', 'SP', 'Itaóca', 3532),
('3522208', 35, 22208, '3 - Sudeste', 'São Paulo', 'SP', 'Itapecerica da Serra', 3533),
('3522307', 35, 22307, '3 - Sudeste', 'São Paulo', 'SP', 'Itapetininga', 3534),
('3522406', 35, 22406, '3 - Sudeste', 'São Paulo', 'SP', 'Itapeva', 3535),
('3522505', 35, 22505, '3 - Sudeste', 'São Paulo', 'SP', 'Itapevi', 3536),
('3522604', 35, 22604, '3 - Sudeste', 'São Paulo', 'SP', 'Itapira', 3537),
('3522653', 35, 22653, '3 - Sudeste', 'São Paulo', 'SP', 'Itapirapuã Paulista', 3538),
('3522703', 35, 22703, '3 - Sudeste', 'São Paulo', 'SP', 'Itápolis', 3539),
('3522802', 35, 22802, '3 - Sudeste', 'São Paulo', 'SP', 'Itaporanga', 3540),
('3522901', 35, 22901, '3 - Sudeste', 'São Paulo', 'SP', 'Itapuí', 3541),
('3523008', 35, 23008, '3 - Sudeste', 'São Paulo', 'SP', 'Itapura', 3542),
('3523107', 35, 23107, '3 - Sudeste', 'São Paulo', 'SP', 'Itaquaquecetuba', 3543),
('3523206', 35, 23206, '3 - Sudeste', 'São Paulo', 'SP', 'Itararé', 3544),
('3523305', 35, 23305, '3 - Sudeste', 'São Paulo', 'SP', 'Itariri', 3545),
('3523404', 35, 23404, '3 - Sudeste', 'São Paulo', 'SP', 'Itatiba', 3546),
('3523503', 35, 23503, '3 - Sudeste', 'São Paulo', 'SP', 'Itatinga', 3547),
('3523602', 35, 23602, '3 - Sudeste', 'São Paulo', 'SP', 'Itirapina', 3548),
('3523701', 35, 23701, '3 - Sudeste', 'São Paulo', 'SP', 'Itirapuã', 3549),
('3523800', 35, 23800, '3 - Sudeste', 'São Paulo', 'SP', 'Itobi', 3550),
('3523909', 35, 23909, '3 - Sudeste', 'São Paulo', 'SP', 'Itu', 3551),
('3524006', 35, 24006, '3 - Sudeste', 'São Paulo', 'SP', 'Itupeva', 3552),
('3524105', 35, 24105, '3 - Sudeste', 'São Paulo', 'SP', 'Ituverava', 3553),
('3524204', 35, 24204, '3 - Sudeste', 'São Paulo', 'SP', 'Jaborandi', 3554),
('3524303', 35, 24303, '3 - Sudeste', 'São Paulo', 'SP', 'Jaboticabal', 3555),
('3524402', 35, 24402, '3 - Sudeste', 'São Paulo', 'SP', 'Jacareí', 3556),
('3524501', 35, 24501, '3 - Sudeste', 'São Paulo', 'SP', 'Jaci', 3557),
('3524600', 35, 24600, '3 - Sudeste', 'São Paulo', 'SP', 'Jacupiranga', 3558),
('3524709', 35, 24709, '3 - Sudeste', 'São Paulo', 'SP', 'Jaguariúna', 3559),
('3524808', 35, 24808, '3 - Sudeste', 'São Paulo', 'SP', 'Jales', 3560),
('3524907', 35, 24907, '3 - Sudeste', 'São Paulo', 'SP', 'Jambeiro', 3561),
('3525003', 35, 25003, '3 - Sudeste', 'São Paulo', 'SP', 'Jandira', 3562),
('3525102', 35, 25102, '3 - Sudeste', 'São Paulo', 'SP', 'Jardinópolis', 3563),
('3525201', 35, 25201, '3 - Sudeste', 'São Paulo', 'SP', 'Jarinu', 3564),
('3525300', 35, 25300, '3 - Sudeste', 'São Paulo', 'SP', 'Jaú', 3565),
('3525409', 35, 25409, '3 - Sudeste', 'São Paulo', 'SP', 'Jeriquara', 3566),
('3525508', 35, 25508, '3 - Sudeste', 'São Paulo', 'SP', 'Joanópolis', 3567),
('3525607', 35, 25607, '3 - Sudeste', 'São Paulo', 'SP', 'João Ramalho', 3568),
('3525706', 35, 25706, '3 - Sudeste', 'São Paulo', 'SP', 'José Bonifácio', 3569),
('3525805', 35, 25805, '3 - Sudeste', 'São Paulo', 'SP', 'Júlio Mesquita', 3570),
('3525854', 35, 25854, '3 - Sudeste', 'São Paulo', 'SP', 'Jumirim', 3571),
('3525904', 35, 25904, '3 - Sudeste', 'São Paulo', 'SP', 'Jundiaí', 3572),
('3526001', 35, 26001, '3 - Sudeste', 'São Paulo', 'SP', 'Junqueirópolis', 3573),
('3526100', 35, 26100, '3 - Sudeste', 'São Paulo', 'SP', 'Juquiá', 3574),
('3526209', 35, 26209, '3 - Sudeste', 'São Paulo', 'SP', 'Juquitiba', 3575),
('3526308', 35, 26308, '3 - Sudeste', 'São Paulo', 'SP', 'Lagoinha', 3576),
('3526407', 35, 26407, '3 - Sudeste', 'São Paulo', 'SP', 'Laranjal Paulista', 3577),
('3526506', 35, 26506, '3 - Sudeste', 'São Paulo', 'SP', 'Lavínia', 3578),
('3526605', 35, 26605, '3 - Sudeste', 'São Paulo', 'SP', 'Lavrinhas', 3579),
('3526704', 35, 26704, '3 - Sudeste', 'São Paulo', 'SP', 'Leme', 3580),
('3526803', 35, 26803, '3 - Sudeste', 'São Paulo', 'SP', 'Lençóis Paulista', 3581),
('3526902', 35, 26902, '3 - Sudeste', 'São Paulo', 'SP', 'Limeira', 3582),
('3527009', 35, 27009, '3 - Sudeste', 'São Paulo', 'SP', 'Lindóia', 3583),
('3527108', 35, 27108, '3 - Sudeste', 'São Paulo', 'SP', 'Lins', 3584),
('3527207', 35, 27207, '3 - Sudeste', 'São Paulo', 'SP', 'Lorena', 3585),
('3527256', 35, 27256, '3 - Sudeste', 'São Paulo', 'SP', 'Lourdes', 3586),
('3527306', 35, 27306, '3 - Sudeste', 'São Paulo', 'SP', 'Louveira', 3587),
('3527405', 35, 27405, '3 - Sudeste', 'São Paulo', 'SP', 'Lucélia', 3588),
('3527504', 35, 27504, '3 - Sudeste', 'São Paulo', 'SP', 'Lucianópolis', 3589),
('3527603', 35, 27603, '3 - Sudeste', 'São Paulo', 'SP', 'Luís Antônio', 3590),
('3527702', 35, 27702, '3 - Sudeste', 'São Paulo', 'SP', 'Luiziânia', 3591),
('3527801', 35, 27801, '3 - Sudeste', 'São Paulo', 'SP', 'Lupércio', 3592),
('3527900', 35, 27900, '3 - Sudeste', 'São Paulo', 'SP', 'Lutécia', 3593),
('3528007', 35, 28007, '3 - Sudeste', 'São Paulo', 'SP', 'Macatuba', 3594),
('3528106', 35, 28106, '3 - Sudeste', 'São Paulo', 'SP', 'Macaubal', 3595),
('3528205', 35, 28205, '3 - Sudeste', 'São Paulo', 'SP', 'Macedônia', 3596),
('3528304', 35, 28304, '3 - Sudeste', 'São Paulo', 'SP', 'Magda', 3597),
('3528403', 35, 28403, '3 - Sudeste', 'São Paulo', 'SP', 'Mairinque', 3598),
('3528502', 35, 28502, '3 - Sudeste', 'São Paulo', 'SP', 'Mairiporã', 3599),
('3528601', 35, 28601, '3 - Sudeste', 'São Paulo', 'SP', 'Manduri', 3600),
('3528700', 35, 28700, '3 - Sudeste', 'São Paulo', 'SP', 'Marabá Paulista', 3601),
('3528809', 35, 28809, '3 - Sudeste', 'São Paulo', 'SP', 'Maracaí', 3602),
('3528858', 35, 28858, '3 - Sudeste', 'São Paulo', 'SP', 'Marapoama', 3603),
('3528908', 35, 28908, '3 - Sudeste', 'São Paulo', 'SP', 'Mariápolis', 3604),
('3529005', 35, 29005, '3 - Sudeste', 'São Paulo', 'SP', 'Marília', 3605),
('3529104', 35, 29104, '3 - Sudeste', 'São Paulo', 'SP', 'Marinópolis', 3606),
('3529203', 35, 29203, '3 - Sudeste', 'São Paulo', 'SP', 'Martinópolis', 3607),
('3529302', 35, 29302, '3 - Sudeste', 'São Paulo', 'SP', 'Matão', 3608),
('3529401', 35, 29401, '3 - Sudeste', 'São Paulo', 'SP', 'Mauá', 3609),
('3529500', 35, 29500, '3 - Sudeste', 'São Paulo', 'SP', 'Mendonça', 3610),
('3529609', 35, 29609, '3 - Sudeste', 'São Paulo', 'SP', 'Meridiano', 3611),
('3529658', 35, 29658, '3 - Sudeste', 'São Paulo', 'SP', 'Mesópolis', 3612),
('3529708', 35, 29708, '3 - Sudeste', 'São Paulo', 'SP', 'Miguelópolis', 3613),
('3529807', 35, 29807, '3 - Sudeste', 'São Paulo', 'SP', 'Mineiros do Tietê', 3614),
('3529906', 35, 29906, '3 - Sudeste', 'São Paulo', 'SP', 'Miracatu', 3615),
('3530003', 35, 30003, '3 - Sudeste', 'São Paulo', 'SP', 'Mira Estrela', 3616),
('3530102', 35, 30102, '3 - Sudeste', 'São Paulo', 'SP', 'Mirandópolis', 3617),
('3530201', 35, 30201, '3 - Sudeste', 'São Paulo', 'SP', 'Mirante do Paranapanema', 3618),
('3530300', 35, 30300, '3 - Sudeste', 'São Paulo', 'SP', 'Mirassol', 3619),
('3530409', 35, 30409, '3 - Sudeste', 'São Paulo', 'SP', 'Mirassolândia', 3620),
('3530508', 35, 30508, '3 - Sudeste', 'São Paulo', 'SP', 'Mococa', 3621),
('3530607', 35, 30607, '3 - Sudeste', 'São Paulo', 'SP', 'Mogi das Cruzes', 3622),
('3530706', 35, 30706, '3 - Sudeste', 'São Paulo', 'SP', 'Mogi Guaçu', 3623),
('3530805', 35, 30805, '3 - Sudeste', 'São Paulo', 'SP', 'Mogi Mirim', 3624),
('3530904', 35, 30904, '3 - Sudeste', 'São Paulo', 'SP', 'Mombuca', 3625),
('3531001', 35, 31001, '3 - Sudeste', 'São Paulo', 'SP', 'Monções', 3626),
('3531100', 35, 31100, '3 - Sudeste', 'São Paulo', 'SP', 'Mongaguá', 3627),
('3531209', 35, 31209, '3 - Sudeste', 'São Paulo', 'SP', 'Monte Alegre do Sul', 3628),
('3531308', 35, 31308, '3 - Sudeste', 'São Paulo', 'SP', 'Monte Alto', 3629),
('3531407', 35, 31407, '3 - Sudeste', 'São Paulo', 'SP', 'Monte Aprazível', 3630),
('3531506', 35, 31506, '3 - Sudeste', 'São Paulo', 'SP', 'Monte Azul Paulista', 3631),
('3531605', 35, 31605, '3 - Sudeste', 'São Paulo', 'SP', 'Monte Castelo', 3632),
('3531704', 35, 31704, '3 - Sudeste', 'São Paulo', 'SP', 'Monteiro Lobato', 3633),
('3531803', 35, 31803, '3 - Sudeste', 'São Paulo', 'SP', 'Monte Mor', 3634),
('3531902', 35, 31902, '3 - Sudeste', 'São Paulo', 'SP', 'Morro Agudo', 3635),
('3532009', 35, 32009, '3 - Sudeste', 'São Paulo', 'SP', 'Morungaba', 3636),
('3532058', 35, 32058, '3 - Sudeste', 'São Paulo', 'SP', 'Motuca', 3637),
('3532108', 35, 32108, '3 - Sudeste', 'São Paulo', 'SP', 'Murutinga do Sul', 3638),
('3532157', 35, 32157, '3 - Sudeste', 'São Paulo', 'SP', 'Nantes', 3639),
('3532207', 35, 32207, '3 - Sudeste', 'São Paulo', 'SP', 'Narandiba', 3640),
('3532306', 35, 32306, '3 - Sudeste', 'São Paulo', 'SP', 'Natividade da Serra', 3641),
('3532405', 35, 32405, '3 - Sudeste', 'São Paulo', 'SP', 'Nazaré Paulista', 3642),
('3532504', 35, 32504, '3 - Sudeste', 'São Paulo', 'SP', 'Neves Paulista', 3643),
('3532603', 35, 32603, '3 - Sudeste', 'São Paulo', 'SP', 'Nhandeara', 3644),
('3532702', 35, 32702, '3 - Sudeste', 'São Paulo', 'SP', 'Nipoã', 3645),
('3532801', 35, 32801, '3 - Sudeste', 'São Paulo', 'SP', 'Nova Aliança', 3646),
('3532827', 35, 32827, '3 - Sudeste', 'São Paulo', 'SP', 'Nova Campina', 3647),
('3532843', 35, 32843, '3 - Sudeste', 'São Paulo', 'SP', 'Nova Canaã Paulista', 3648),
('3532868', 35, 32868, '3 - Sudeste', 'São Paulo', 'SP', 'Nova Castilho', 3649),
('3532900', 35, 32900, '3 - Sudeste', 'São Paulo', 'SP', 'Nova Europa', 3650),
('3533007', 35, 33007, '3 - Sudeste', 'São Paulo', 'SP', 'Nova Granada', 3651),
('3533106', 35, 33106, '3 - Sudeste', 'São Paulo', 'SP', 'Nova Guataporanga', 3652),
('3533205', 35, 33205, '3 - Sudeste', 'São Paulo', 'SP', 'Nova Independência', 3653),
('3533254', 35, 33254, '3 - Sudeste', 'São Paulo', 'SP', 'Novais', 3654),
('3533304', 35, 33304, '3 - Sudeste', 'São Paulo', 'SP', 'Nova Luzitânia', 3655),
('3533403', 35, 33403, '3 - Sudeste', 'São Paulo', 'SP', 'Nova Odessa', 3656),
('3533502', 35, 33502, '3 - Sudeste', 'São Paulo', 'SP', 'Novo Horizonte', 3657),
('3533601', 35, 33601, '3 - Sudeste', 'São Paulo', 'SP', 'Nuporanga', 3658),
('3533700', 35, 33700, '3 - Sudeste', 'São Paulo', 'SP', 'Ocauçu', 3659),
('3533809', 35, 33809, '3 - Sudeste', 'São Paulo', 'SP', 'Óleo', 3660),
('3533908', 35, 33908, '3 - Sudeste', 'São Paulo', 'SP', 'Olímpia', 3661),
('3534005', 35, 34005, '3 - Sudeste', 'São Paulo', 'SP', 'Onda Verde', 3662),
('3534104', 35, 34104, '3 - Sudeste', 'São Paulo', 'SP', 'Oriente', 3663),
('3534203', 35, 34203, '3 - Sudeste', 'São Paulo', 'SP', 'Orindiúva', 3664),
('3534302', 35, 34302, '3 - Sudeste', 'São Paulo', 'SP', 'Orlândia', 3665),
('3534401', 35, 34401, '3 - Sudeste', 'São Paulo', 'SP', 'Osasco', 3666),
('3534500', 35, 34500, '3 - Sudeste', 'São Paulo', 'SP', 'Oscar Bressane', 3667),
('3534609', 35, 34609, '3 - Sudeste', 'São Paulo', 'SP', 'Osvaldo Cruz', 3668),
('3534708', 35, 34708, '3 - Sudeste', 'São Paulo', 'SP', 'Ourinhos', 3669),
('3534757', 35, 34757, '3 - Sudeste', 'São Paulo', 'SP', 'Ouroeste', 3670),
('3534807', 35, 34807, '3 - Sudeste', 'São Paulo', 'SP', 'Ouro Verde', 3671),
('3534906', 35, 34906, '3 - Sudeste', 'São Paulo', 'SP', 'Pacaembu', 3672),
('3535002', 35, 35002, '3 - Sudeste', 'São Paulo', 'SP', 'Palestina', 3673),
('3535101', 35, 35101, '3 - Sudeste', 'São Paulo', 'SP', 'Palmares Paulista', 3674),
('3535200', 35, 35200, '3 - Sudeste', 'São Paulo', 'SP', 'Palmeira d''Oeste', 3675),
('3535309', 35, 35309, '3 - Sudeste', 'São Paulo', 'SP', 'Palmital', 3676),
('3535408', 35, 35408, '3 - Sudeste', 'São Paulo', 'SP', 'Panorama', 3677),
('3535507', 35, 35507, '3 - Sudeste', 'São Paulo', 'SP', 'Paraguaçu Paulista', 3678),
('3535606', 35, 35606, '3 - Sudeste', 'São Paulo', 'SP', 'Paraibuna', 3679),
('3535705', 35, 35705, '3 - Sudeste', 'São Paulo', 'SP', 'Paraíso', 3680),
('3535804', 35, 35804, '3 - Sudeste', 'São Paulo', 'SP', 'Paranapanema', 3681),
('3535903', 35, 35903, '3 - Sudeste', 'São Paulo', 'SP', 'Paranapuã', 3682),
('3536000', 35, 36000, '3 - Sudeste', 'São Paulo', 'SP', 'Parapuã', 3683),
('3536109', 35, 36109, '3 - Sudeste', 'São Paulo', 'SP', 'Pardinho', 3684),
('3536208', 35, 36208, '3 - Sudeste', 'São Paulo', 'SP', 'Pariquera-Açu', 3685),
('3536257', 35, 36257, '3 - Sudeste', 'São Paulo', 'SP', 'Parisi', 3686),
('3536307', 35, 36307, '3 - Sudeste', 'São Paulo', 'SP', 'Patrocínio Paulista', 3687),
('3536406', 35, 36406, '3 - Sudeste', 'São Paulo', 'SP', 'Paulicéia', 3688),
('3536505', 35, 36505, '3 - Sudeste', 'São Paulo', 'SP', 'Paulínia', 3689),
('3536570', 35, 36570, '3 - Sudeste', 'São Paulo', 'SP', 'Paulistânia', 3690),
('3536604', 35, 36604, '3 - Sudeste', 'São Paulo', 'SP', 'Paulo de Faria', 3691),
('3536703', 35, 36703, '3 - Sudeste', 'São Paulo', 'SP', 'Pederneiras', 3692),
('3536802', 35, 36802, '3 - Sudeste', 'São Paulo', 'SP', 'Pedra Bela', 3693),
('3536901', 35, 36901, '3 - Sudeste', 'São Paulo', 'SP', 'Pedranópolis', 3694),
('3537008', 35, 37008, '3 - Sudeste', 'São Paulo', 'SP', 'Pedregulho', 3695),
('3537107', 35, 37107, '3 - Sudeste', 'São Paulo', 'SP', 'Pedreira', 3696),
('3537156', 35, 37156, '3 - Sudeste', 'São Paulo', 'SP', 'Pedrinhas Paulista', 3697),
('3537206', 35, 37206, '3 - Sudeste', 'São Paulo', 'SP', 'Pedro de Toledo', 3698),
('3537305', 35, 37305, '3 - Sudeste', 'São Paulo', 'SP', 'Penápolis', 3699),
('3537404', 35, 37404, '3 - Sudeste', 'São Paulo', 'SP', 'Pereira Barreto', 3700),
('3537503', 35, 37503, '3 - Sudeste', 'São Paulo', 'SP', 'Pereiras', 3701),
('3537602', 35, 37602, '3 - Sudeste', 'São Paulo', 'SP', 'Peruíbe', 3702),
('3537701', 35, 37701, '3 - Sudeste', 'São Paulo', 'SP', 'Piacatu', 3703),
('3537800', 35, 37800, '3 - Sudeste', 'São Paulo', 'SP', 'Piedade', 3704),
('3537909', 35, 37909, '3 - Sudeste', 'São Paulo', 'SP', 'Pilar do Sul', 3705),
('3538006', 35, 38006, '3 - Sudeste', 'São Paulo', 'SP', 'Pindamonhangaba', 3706),
('3538105', 35, 38105, '3 - Sudeste', 'São Paulo', 'SP', 'Pindorama', 3707),
('3538204', 35, 38204, '3 - Sudeste', 'São Paulo', 'SP', 'Pinhalzinho', 3708),
('3538303', 35, 38303, '3 - Sudeste', 'São Paulo', 'SP', 'Piquerobi', 3709),
('3538501', 35, 38501, '3 - Sudeste', 'São Paulo', 'SP', 'Piquete', 3710),
('3538600', 35, 38600, '3 - Sudeste', 'São Paulo', 'SP', 'Piracaia', 3711),
('3538709', 35, 38709, '3 - Sudeste', 'São Paulo', 'SP', 'Piracicaba', 3712),
('3538808', 35, 38808, '3 - Sudeste', 'São Paulo', 'SP', 'Piraju', 3713),
('3538907', 35, 38907, '3 - Sudeste', 'São Paulo', 'SP', 'Pirajuí', 3714),
('3539004', 35, 39004, '3 - Sudeste', 'São Paulo', 'SP', 'Pirangi', 3715),
('3539103', 35, 39103, '3 - Sudeste', 'São Paulo', 'SP', 'Pirapora do Bom Jesus', 3716),
('3539202', 35, 39202, '3 - Sudeste', 'São Paulo', 'SP', 'Pirapozinho', 3717),
('3539301', 35, 39301, '3 - Sudeste', 'São Paulo', 'SP', 'Pirassununga', 3718),
('3539400', 35, 39400, '3 - Sudeste', 'São Paulo', 'SP', 'Piratininga', 3719),
('3539509', 35, 39509, '3 - Sudeste', 'São Paulo', 'SP', 'Pitangueiras', 3720),
('3539608', 35, 39608, '3 - Sudeste', 'São Paulo', 'SP', 'Planalto', 3721),
('3539707', 35, 39707, '3 - Sudeste', 'São Paulo', 'SP', 'Platina', 3722),
('3539806', 35, 39806, '3 - Sudeste', 'São Paulo', 'SP', 'Poá', 3723),
('3539905', 35, 39905, '3 - Sudeste', 'São Paulo', 'SP', 'Poloni', 3724),
('3540002', 35, 40002, '3 - Sudeste', 'São Paulo', 'SP', 'Pompéia', 3725),
('3540101', 35, 40101, '3 - Sudeste', 'São Paulo', 'SP', 'Pongaí', 3726),
('3540200', 35, 40200, '3 - Sudeste', 'São Paulo', 'SP', 'Pontal', 3727),
('3540259', 35, 40259, '3 - Sudeste', 'São Paulo', 'SP', 'Pontalinda', 3728),
('3540309', 35, 40309, '3 - Sudeste', 'São Paulo', 'SP', 'Pontes Gestal', 3729),
('3540408', 35, 40408, '3 - Sudeste', 'São Paulo', 'SP', 'Populina', 3730),
('3540507', 35, 40507, '3 - Sudeste', 'São Paulo', 'SP', 'Porangaba', 3731),
('3540606', 35, 40606, '3 - Sudeste', 'São Paulo', 'SP', 'Porto Feliz', 3732),
('3540705', 35, 40705, '3 - Sudeste', 'São Paulo', 'SP', 'Porto Ferreira', 3733),
('3540754', 35, 40754, '3 - Sudeste', 'São Paulo', 'SP', 'Potim', 3734),
('3540804', 35, 40804, '3 - Sudeste', 'São Paulo', 'SP', 'Potirendaba', 3735),
('3540853', 35, 40853, '3 - Sudeste', 'São Paulo', 'SP', 'Pracinha', 3736),
('3540903', 35, 40903, '3 - Sudeste', 'São Paulo', 'SP', 'Pradópolis', 3737),
('3541000', 35, 41000, '3 - Sudeste', 'São Paulo', 'SP', 'Praia Grande', 3738),
('3541059', 35, 41059, '3 - Sudeste', 'São Paulo', 'SP', 'Pratânia', 3739),
('3541109', 35, 41109, '3 - Sudeste', 'São Paulo', 'SP', 'Presidente Alves', 3740),
('3541208', 35, 41208, '3 - Sudeste', 'São Paulo', 'SP', 'Presidente Bernardes', 3741),
('3541307', 35, 41307, '3 - Sudeste', 'São Paulo', 'SP', 'Presidente Epitácio', 3742),
('3541406', 35, 41406, '3 - Sudeste', 'São Paulo', 'SP', 'Presidente Prudente', 3743),
('3541505', 35, 41505, '3 - Sudeste', 'São Paulo', 'SP', 'Presidente Venceslau', 3744),
('3541604', 35, 41604, '3 - Sudeste', 'São Paulo', 'SP', 'Promissão', 3745),
('3541653', 35, 41653, '3 - Sudeste', 'São Paulo', 'SP', 'Quadra', 3746),
('3541703', 35, 41703, '3 - Sudeste', 'São Paulo', 'SP', 'Quatá', 3747),
('3541802', 35, 41802, '3 - Sudeste', 'São Paulo', 'SP', 'Queiroz', 3748),
('3541901', 35, 41901, '3 - Sudeste', 'São Paulo', 'SP', 'Queluz', 3749),
('3542008', 35, 42008, '3 - Sudeste', 'São Paulo', 'SP', 'Quintana', 3750),
('3542107', 35, 42107, '3 - Sudeste', 'São Paulo', 'SP', 'Rafard', 3751),
('3542206', 35, 42206, '3 - Sudeste', 'São Paulo', 'SP', 'Rancharia', 3752),
('3542305', 35, 42305, '3 - Sudeste', 'São Paulo', 'SP', 'Redenção da Serra', 3753),
('3542404', 35, 42404, '3 - Sudeste', 'São Paulo', 'SP', 'Regente Feijó', 3754),
('3542503', 35, 42503, '3 - Sudeste', 'São Paulo', 'SP', 'Reginópolis', 3755),
('3542602', 35, 42602, '3 - Sudeste', 'São Paulo', 'SP', 'Registro', 3756),
('3542701', 35, 42701, '3 - Sudeste', 'São Paulo', 'SP', 'Restinga', 3757),
('3542800', 35, 42800, '3 - Sudeste', 'São Paulo', 'SP', 'Ribeira', 3758),
('3542909', 35, 42909, '3 - Sudeste', 'São Paulo', 'SP', 'Ribeirão Bonito', 3759),
('3543006', 35, 43006, '3 - Sudeste', 'São Paulo', 'SP', 'Ribeirão Branco', 3760),
('3543105', 35, 43105, '3 - Sudeste', 'São Paulo', 'SP', 'Ribeirão Corrente', 3761),
('3543204', 35, 43204, '3 - Sudeste', 'São Paulo', 'SP', 'Ribeirão do Sul', 3762),
('3543238', 35, 43238, '3 - Sudeste', 'São Paulo', 'SP', 'Ribeirão dos Índios', 3763),
('3543253', 35, 43253, '3 - Sudeste', 'São Paulo', 'SP', 'Ribeirão Grande', 3764),
('3543303', 35, 43303, '3 - Sudeste', 'São Paulo', 'SP', 'Ribeirão Pires', 3765),
('3543402', 35, 43402, '3 - Sudeste', 'São Paulo', 'SP', 'Ribeirão Preto', 3766),
('3543501', 35, 43501, '3 - Sudeste', 'São Paulo', 'SP', 'Riversul', 3767),
('3543600', 35, 43600, '3 - Sudeste', 'São Paulo', 'SP', 'Rifaina', 3768),
('3543709', 35, 43709, '3 - Sudeste', 'São Paulo', 'SP', 'Rincão', 3769),
('3543808', 35, 43808, '3 - Sudeste', 'São Paulo', 'SP', 'Rinópolis', 3770),
('3543907', 35, 43907, '3 - Sudeste', 'São Paulo', 'SP', 'Rio Claro', 3771),
('3544004', 35, 44004, '3 - Sudeste', 'São Paulo', 'SP', 'Rio das Pedras', 3772),
('3544103', 35, 44103, '3 - Sudeste', 'São Paulo', 'SP', 'Rio Grande da Serra', 3773),
('3544202', 35, 44202, '3 - Sudeste', 'São Paulo', 'SP', 'Riolândia', 3774),
('3544251', 35, 44251, '3 - Sudeste', 'São Paulo', 'SP', 'Rosana', 3775),
('3544301', 35, 44301, '3 - Sudeste', 'São Paulo', 'SP', 'Roseira', 3776),
('3544400', 35, 44400, '3 - Sudeste', 'São Paulo', 'SP', 'Rubiácea', 3777),
('3544509', 35, 44509, '3 - Sudeste', 'São Paulo', 'SP', 'Rubinéia', 3778),
('3544608', 35, 44608, '3 - Sudeste', 'São Paulo', 'SP', 'Sabino', 3779),
('3544707', 35, 44707, '3 - Sudeste', 'São Paulo', 'SP', 'Sagres', 3780),
('3544806', 35, 44806, '3 - Sudeste', 'São Paulo', 'SP', 'Sales', 3781),
('3544905', 35, 44905, '3 - Sudeste', 'São Paulo', 'SP', 'Sales Oliveira', 3782),
('3545001', 35, 45001, '3 - Sudeste', 'São Paulo', 'SP', 'Salesópolis', 3783),
('3545100', 35, 45100, '3 - Sudeste', 'São Paulo', 'SP', 'Salmourão', 3784),
('3545159', 35, 45159, '3 - Sudeste', 'São Paulo', 'SP', 'Saltinho', 3785),
('3545209', 35, 45209, '3 - Sudeste', 'São Paulo', 'SP', 'Salto', 3786),
('3545308', 35, 45308, '3 - Sudeste', 'São Paulo', 'SP', 'Salto de Pirapora', 3787),
('3545407', 35, 45407, '3 - Sudeste', 'São Paulo', 'SP', 'Salto Grande', 3788),
('3545506', 35, 45506, '3 - Sudeste', 'São Paulo', 'SP', 'Sandovalina', 3789),
('3545605', 35, 45605, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Adélia', 3790),
('3545704', 35, 45704, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Albertina', 3791),
('3545803', 35, 45803, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Bárbara d''Oeste', 3792),
('3546009', 35, 46009, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Branca', 3793),
('3546108', 35, 46108, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Clara d''Oeste', 3794),
('3546207', 35, 46207, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Cruz da Conceição', 3795),
('3546256', 35, 46256, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Cruz da Esperança', 3796),
('3546306', 35, 46306, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Cruz das Palmeiras', 3797),
('3546405', 35, 46405, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Cruz do Rio Pardo', 3798),
('3546504', 35, 46504, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Ernestina', 3799),
('3546603', 35, 46603, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Fé do Sul', 3800),
('3546702', 35, 46702, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Gertrudes', 3801),
('3546801', 35, 46801, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Isabel', 3802),
('3546900', 35, 46900, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Lúcia', 3803),
('3547007', 35, 47007, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Maria da Serra', 3804),
('3547106', 35, 47106, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Mercedes', 3805),
('3547205', 35, 47205, '3 - Sudeste', 'São Paulo', 'SP', 'Santana da Ponte Pensa', 3806),
('3547304', 35, 47304, '3 - Sudeste', 'São Paulo', 'SP', 'Santana de Parnaíba', 3807),
('3547403', 35, 47403, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Rita d''Oeste', 3808),
('3547502', 35, 47502, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Rita do Passa Quatro', 3809),
('3547601', 35, 47601, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Rosa de Viterbo', 3810),
('3547650', 35, 47650, '3 - Sudeste', 'São Paulo', 'SP', 'Santa Salete', 3811),
('3547700', 35, 47700, '3 - Sudeste', 'São Paulo', 'SP', 'Santo Anastácio', 3812),
('3547809', 35, 47809, '3 - Sudeste', 'São Paulo', 'SP', 'Santo André', 3813),
('3547908', 35, 47908, '3 - Sudeste', 'São Paulo', 'SP', 'Santo Antônio da Alegria', 3814),
('3548005', 35, 48005, '3 - Sudeste', 'São Paulo', 'SP', 'Santo Antônio de Posse', 3815),
('3548054', 35, 48054, '3 - Sudeste', 'São Paulo', 'SP', 'Santo Antônio do Aracanguá', 3816),
('3548104', 35, 48104, '3 - Sudeste', 'São Paulo', 'SP', 'Santo Antônio do Jardim', 3817),
('3548203', 35, 48203, '3 - Sudeste', 'São Paulo', 'SP', 'Santo Antônio do Pinhal', 3818),
('3548302', 35, 48302, '3 - Sudeste', 'São Paulo', 'SP', 'Santo Expedito', 3819),
('3548401', 35, 48401, '3 - Sudeste', 'São Paulo', 'SP', 'Santópolis do Aguapeí', 3820),
('3548500', 35, 48500, '3 - Sudeste', 'São Paulo', 'SP', 'Santos', 3821),
('3548609', 35, 48609, '3 - Sudeste', 'São Paulo', 'SP', 'São Bento do Sapucaí', 3822),
('3548708', 35, 48708, '3 - Sudeste', 'São Paulo', 'SP', 'São Bernardo do Campo', 3823),
('3548807', 35, 48807, '3 - Sudeste', 'São Paulo', 'SP', 'São Caetano do Sul', 3824),
('3548906', 35, 48906, '3 - Sudeste', 'São Paulo', 'SP', 'São Carlos', 3825),
('3549003', 35, 49003, '3 - Sudeste', 'São Paulo', 'SP', 'São Francisco', 3826),
('3549102', 35, 49102, '3 - Sudeste', 'São Paulo', 'SP', 'São João da Boa Vista', 3827),
('3549201', 35, 49201, '3 - Sudeste', 'São Paulo', 'SP', 'São João das Duas Pontes', 3828),
('3549250', 35, 49250, '3 - Sudeste', 'São Paulo', 'SP', 'São João de Iracema', 3829),
('3549300', 35, 49300, '3 - Sudeste', 'São Paulo', 'SP', 'São João do Pau d''Alho', 3830),
('3549409', 35, 49409, '3 - Sudeste', 'São Paulo', 'SP', 'São Joaquim da Barra', 3831),
('3549508', 35, 49508, '3 - Sudeste', 'São Paulo', 'SP', 'São José da Bela Vista', 3832),
('3549607', 35, 49607, '3 - Sudeste', 'São Paulo', 'SP', 'São José do Barreiro', 3833),
('3549706', 35, 49706, '3 - Sudeste', 'São Paulo', 'SP', 'São José do Rio Pardo', 3834),
('3549805', 35, 49805, '3 - Sudeste', 'São Paulo', 'SP', 'São José do Rio Preto', 3835),
('3549904', 35, 49904, '3 - Sudeste', 'São Paulo', 'SP', 'São José dos Campos', 3836),
('3549953', 35, 49953, '3 - Sudeste', 'São Paulo', 'SP', 'São Lourenço da Serra', 3837),
('3550001', 35, 50001, '3 - Sudeste', 'São Paulo', 'SP', 'São Luís do Paraitinga', 3838),
('3550100', 35, 50100, '3 - Sudeste', 'São Paulo', 'SP', 'São Manuel', 3839),
('3550209', 35, 50209, '3 - Sudeste', 'São Paulo', 'SP', 'São Miguel Arcanjo', 3840),
('3550308', 35, 50308, '3 - Sudeste', 'São Paulo', 'SP', 'São Paulo', 3841),
('3550407', 35, 50407, '3 - Sudeste', 'São Paulo', 'SP', 'São Pedro', 3842),
('3550506', 35, 50506, '3 - Sudeste', 'São Paulo', 'SP', 'São Pedro do Turvo', 3843),
('3550605', 35, 50605, '3 - Sudeste', 'São Paulo', 'SP', 'São Roque', 3844),
('3550704', 35, 50704, '3 - Sudeste', 'São Paulo', 'SP', 'São Sebastião', 3845),
('3550803', 35, 50803, '3 - Sudeste', 'São Paulo', 'SP', 'São Sebastião da Grama', 3846),
('3550902', 35, 50902, '3 - Sudeste', 'São Paulo', 'SP', 'São Simão', 3847),
('3551009', 35, 51009, '3 - Sudeste', 'São Paulo', 'SP', 'São Vicente', 3848),
('3551108', 35, 51108, '3 - Sudeste', 'São Paulo', 'SP', 'Sarapuí', 3849),
('3551207', 35, 51207, '3 - Sudeste', 'São Paulo', 'SP', 'Sarutaiá', 3850),
('3551306', 35, 51306, '3 - Sudeste', 'São Paulo', 'SP', 'Sebastianópolis do Sul', 3851),
('3551405', 35, 51405, '3 - Sudeste', 'São Paulo', 'SP', 'Serra Azul', 3852),
('3551504', 35, 51504, '3 - Sudeste', 'São Paulo', 'SP', 'Serrana', 3853),
('3551603', 35, 51603, '3 - Sudeste', 'São Paulo', 'SP', 'Serra Negra', 3854),
('3551702', 35, 51702, '3 - Sudeste', 'São Paulo', 'SP', 'Sertãozinho', 3855),
('3551801', 35, 51801, '3 - Sudeste', 'São Paulo', 'SP', 'Sete Barras', 3856),
('3551900', 35, 51900, '3 - Sudeste', 'São Paulo', 'SP', 'Severínia', 3857),
('3552007', 35, 52007, '3 - Sudeste', 'São Paulo', 'SP', 'Silveiras', 3858),
('3552106', 35, 52106, '3 - Sudeste', 'São Paulo', 'SP', 'Socorro', 3859),
('3552205', 35, 52205, '3 - Sudeste', 'São Paulo', 'SP', 'Sorocaba', 3860),
('3552304', 35, 52304, '3 - Sudeste', 'São Paulo', 'SP', 'Sud Mennucci', 3861),
('3552403', 35, 52403, '3 - Sudeste', 'São Paulo', 'SP', 'Sumaré', 3862),
('3552502', 35, 52502, '3 - Sudeste', 'São Paulo', 'SP', 'Suzano', 3863),
('3552551', 35, 52551, '3 - Sudeste', 'São Paulo', 'SP', 'Suzanápolis', 3864),
('3552601', 35, 52601, '3 - Sudeste', 'São Paulo', 'SP', 'Tabapuã', 3865),
('3552700', 35, 52700, '3 - Sudeste', 'São Paulo', 'SP', 'Tabatinga', 3866),
('3552809', 35, 52809, '3 - Sudeste', 'São Paulo', 'SP', 'Taboão da Serra', 3867),
('3552908', 35, 52908, '3 - Sudeste', 'São Paulo', 'SP', 'Taciba', 3868),
('3553005', 35, 53005, '3 - Sudeste', 'São Paulo', 'SP', 'Taguaí', 3869),
('3553104', 35, 53104, '3 - Sudeste', 'São Paulo', 'SP', 'Taiaçu', 3870),
('3553203', 35, 53203, '3 - Sudeste', 'São Paulo', 'SP', 'Taiúva', 3871),
('3553302', 35, 53302, '3 - Sudeste', 'São Paulo', 'SP', 'Tambaú', 3872),
('3553401', 35, 53401, '3 - Sudeste', 'São Paulo', 'SP', 'Tanabi', 3873),
('3553500', 35, 53500, '3 - Sudeste', 'São Paulo', 'SP', 'Tapiraí', 3874),
('3553609', 35, 53609, '3 - Sudeste', 'São Paulo', 'SP', 'Tapiratiba', 3875),
('3553658', 35, 53658, '3 - Sudeste', 'São Paulo', 'SP', 'Taquaral', 3876),
('3553708', 35, 53708, '3 - Sudeste', 'São Paulo', 'SP', 'Taquaritinga', 3877),
('3553807', 35, 53807, '3 - Sudeste', 'São Paulo', 'SP', 'Taquarituba', 3878),
('3553856', 35, 53856, '3 - Sudeste', 'São Paulo', 'SP', 'Taquarivaí', 3879),
('3553906', 35, 53906, '3 - Sudeste', 'São Paulo', 'SP', 'Tarabai', 3880),
('3553955', 35, 53955, '3 - Sudeste', 'São Paulo', 'SP', 'Tarumã', 3881),
('3554003', 35, 54003, '3 - Sudeste', 'São Paulo', 'SP', 'Tatuí', 3882),
('3554102', 35, 54102, '3 - Sudeste', 'São Paulo', 'SP', 'Taubaté', 3883),
('3554201', 35, 54201, '3 - Sudeste', 'São Paulo', 'SP', 'Tejupá', 3884),
('3554300', 35, 54300, '3 - Sudeste', 'São Paulo', 'SP', 'Teodoro Sampaio', 3885),
('3554409', 35, 54409, '3 - Sudeste', 'São Paulo', 'SP', 'Terra Roxa', 3886),
('3554508', 35, 54508, '3 - Sudeste', 'São Paulo', 'SP', 'Tietê', 3887),
('3554607', 35, 54607, '3 - Sudeste', 'São Paulo', 'SP', 'Timburi', 3888),
('3554656', 35, 54656, '3 - Sudeste', 'São Paulo', 'SP', 'Torre de Pedra', 3889);
INSERT INTO `ibge_uf` (`cod_mun`, `cod_uf`, `seila`, `regiao`, `estado`, `uf`, `municipio`, `id`) VALUES
('3554706', 35, 54706, '3 - Sudeste', 'São Paulo', 'SP', 'Torrinha', 3890),
('3554755', 35, 54755, '3 - Sudeste', 'São Paulo', 'SP', 'Trabiju', 3891),
('3554805', 35, 54805, '3 - Sudeste', 'São Paulo', 'SP', 'Tremembé', 3892),
('3554904', 35, 54904, '3 - Sudeste', 'São Paulo', 'SP', 'Três Fronteiras', 3893),
('3554953', 35, 54953, '3 - Sudeste', 'São Paulo', 'SP', 'Tuiuti', 3894),
('3555000', 35, 55000, '3 - Sudeste', 'São Paulo', 'SP', 'Tupã', 3895),
('3555109', 35, 55109, '3 - Sudeste', 'São Paulo', 'SP', 'Tupi Paulista', 3896),
('3555208', 35, 55208, '3 - Sudeste', 'São Paulo', 'SP', 'Turiúba', 3897),
('3555307', 35, 55307, '3 - Sudeste', 'São Paulo', 'SP', 'Turmalina', 3898),
('3555356', 35, 55356, '3 - Sudeste', 'São Paulo', 'SP', 'Ubarana', 3899),
('3555406', 35, 55406, '3 - Sudeste', 'São Paulo', 'SP', 'Ubatuba', 3900),
('3555505', 35, 55505, '3 - Sudeste', 'São Paulo', 'SP', 'Ubirajara', 3901),
('3555604', 35, 55604, '3 - Sudeste', 'São Paulo', 'SP', 'Uchoa', 3902),
('3555703', 35, 55703, '3 - Sudeste', 'São Paulo', 'SP', 'União Paulista', 3903),
('3555802', 35, 55802, '3 - Sudeste', 'São Paulo', 'SP', 'Urânia', 3904),
('3555901', 35, 55901, '3 - Sudeste', 'São Paulo', 'SP', 'Uru', 3905),
('3556008', 35, 56008, '3 - Sudeste', 'São Paulo', 'SP', 'Urupês', 3906),
('3556107', 35, 56107, '3 - Sudeste', 'São Paulo', 'SP', 'Valentim Gentil', 3907),
('3556206', 35, 56206, '3 - Sudeste', 'São Paulo', 'SP', 'Valinhos', 3908),
('3556305', 35, 56305, '3 - Sudeste', 'São Paulo', 'SP', 'Valparaíso', 3909),
('3556354', 35, 56354, '3 - Sudeste', 'São Paulo', 'SP', 'Vargem', 3910),
('3556404', 35, 56404, '3 - Sudeste', 'São Paulo', 'SP', 'Vargem Grande do Sul', 3911),
('3556453', 35, 56453, '3 - Sudeste', 'São Paulo', 'SP', 'Vargem Grande Paulista', 3912),
('3556503', 35, 56503, '3 - Sudeste', 'São Paulo', 'SP', 'Várzea Paulista', 3913),
('3556602', 35, 56602, '3 - Sudeste', 'São Paulo', 'SP', 'Vera Cruz', 3914),
('3556701', 35, 56701, '3 - Sudeste', 'São Paulo', 'SP', 'Vinhedo', 3915),
('3556800', 35, 56800, '3 - Sudeste', 'São Paulo', 'SP', 'Viradouro', 3916),
('3556909', 35, 56909, '3 - Sudeste', 'São Paulo', 'SP', 'Vista Alegre do Alto', 3917),
('3556958', 35, 56958, '3 - Sudeste', 'São Paulo', 'SP', 'Vitória Brasil', 3918),
('3557006', 35, 57006, '3 - Sudeste', 'São Paulo', 'SP', 'Votorantim', 3919),
('3557105', 35, 57105, '3 - Sudeste', 'São Paulo', 'SP', 'Votuporanga', 3920),
('3557154', 35, 57154, '3 - Sudeste', 'São Paulo', 'SP', 'Zacarias', 3921),
('3557204', 35, 57204, '3 - Sudeste', 'São Paulo', 'SP', 'Chavantes', 3922),
('3557303', 35, 57303, '3 - Sudeste', 'São Paulo', 'SP', 'Estiva Gerbi', 3923),
('4100103', 41, 103, '4 - Sul', 'Paraná', 'PR', 'Abatiá', 3924),
('4100202', 41, 202, '4 - Sul', 'Paraná', 'PR', 'Adrianópolis', 3925),
('4100301', 41, 301, '4 - Sul', 'Paraná', 'PR', 'Agudos do Sul', 3926),
('4100400', 41, 400, '4 - Sul', 'Paraná', 'PR', 'Almirante Tamandaré', 3927),
('4100459', 41, 459, '4 - Sul', 'Paraná', 'PR', 'Altamira do Paraná', 3928),
('4100509', 41, 509, '4 - Sul', 'Paraná', 'PR', 'Altônia', 3929),
('4100608', 41, 608, '4 - Sul', 'Paraná', 'PR', 'Alto Paraná', 3930),
('4100707', 41, 707, '4 - Sul', 'Paraná', 'PR', 'Alto Piquiri', 3931),
('4100806', 41, 806, '4 - Sul', 'Paraná', 'PR', 'Alvorada do Sul', 3932),
('4100905', 41, 905, '4 - Sul', 'Paraná', 'PR', 'Amaporã', 3933),
('4101002', 41, 1002, '4 - Sul', 'Paraná', 'PR', 'Ampére', 3934),
('4101051', 41, 1051, '4 - Sul', 'Paraná', 'PR', 'Anahy', 3935),
('4101101', 41, 1101, '4 - Sul', 'Paraná', 'PR', 'Andirá', 3936),
('4101150', 41, 1150, '4 - Sul', 'Paraná', 'PR', 'Ângulo', 3937),
('4101200', 41, 1200, '4 - Sul', 'Paraná', 'PR', 'Antonina', 3938),
('4101309', 41, 1309, '4 - Sul', 'Paraná', 'PR', 'Antônio Olinto', 3939),
('4101408', 41, 1408, '4 - Sul', 'Paraná', 'PR', 'Apucarana', 3940),
('4101507', 41, 1507, '4 - Sul', 'Paraná', 'PR', 'Arapongas', 3941),
('4101606', 41, 1606, '4 - Sul', 'Paraná', 'PR', 'Arapoti', 3942),
('4101655', 41, 1655, '4 - Sul', 'Paraná', 'PR', 'Arapuã', 3943),
('4101705', 41, 1705, '4 - Sul', 'Paraná', 'PR', 'Araruna', 3944),
('4101804', 41, 1804, '4 - Sul', 'Paraná', 'PR', 'Araucária', 3945),
('4101853', 41, 1853, '4 - Sul', 'Paraná', 'PR', 'Ariranha do Ivaí', 3946),
('4101903', 41, 1903, '4 - Sul', 'Paraná', 'PR', 'Assaí', 3947),
('4102000', 41, 2000, '4 - Sul', 'Paraná', 'PR', 'Assis Chateaubriand', 3948),
('4102109', 41, 2109, '4 - Sul', 'Paraná', 'PR', 'Astorga', 3949),
('4102208', 41, 2208, '4 - Sul', 'Paraná', 'PR', 'Atalaia', 3950),
('4102307', 41, 2307, '4 - Sul', 'Paraná', 'PR', 'Balsa Nova', 3951),
('4102406', 41, 2406, '4 - Sul', 'Paraná', 'PR', 'Bandeirantes', 3952),
('4102505', 41, 2505, '4 - Sul', 'Paraná', 'PR', 'Barbosa Ferraz', 3953),
('4102604', 41, 2604, '4 - Sul', 'Paraná', 'PR', 'Barracão', 3954),
('4102703', 41, 2703, '4 - Sul', 'Paraná', 'PR', 'Barra do Jacaré', 3955),
('4102752', 41, 2752, '4 - Sul', 'Paraná', 'PR', 'Bela Vista da Caroba', 3956),
('4102802', 41, 2802, '4 - Sul', 'Paraná', 'PR', 'Bela Vista do Paraíso', 3957),
('4102901', 41, 2901, '4 - Sul', 'Paraná', 'PR', 'Bituruna', 3958),
('4103008', 41, 3008, '4 - Sul', 'Paraná', 'PR', 'Boa Esperança', 3959),
('4103024', 41, 3024, '4 - Sul', 'Paraná', 'PR', 'Boa Esperança do Iguaçu', 3960),
('4103040', 41, 3040, '4 - Sul', 'Paraná', 'PR', 'Boa Ventura de São Roque', 3961),
('4103057', 41, 3057, '4 - Sul', 'Paraná', 'PR', 'Boa Vista da Aparecida', 3962),
('4103107', 41, 3107, '4 - Sul', 'Paraná', 'PR', 'Bocaiúva do Sul', 3963),
('4103156', 41, 3156, '4 - Sul', 'Paraná', 'PR', 'Bom Jesus do Sul', 3964),
('4103206', 41, 3206, '4 - Sul', 'Paraná', 'PR', 'Bom Sucesso', 3965),
('4103222', 41, 3222, '4 - Sul', 'Paraná', 'PR', 'Bom Sucesso do Sul', 3966),
('4103305', 41, 3305, '4 - Sul', 'Paraná', 'PR', 'Borrazópolis', 3967),
('4103354', 41, 3354, '4 - Sul', 'Paraná', 'PR', 'Braganey', 3968),
('4103370', 41, 3370, '4 - Sul', 'Paraná', 'PR', 'Brasilândia do Sul', 3969),
('4103404', 41, 3404, '4 - Sul', 'Paraná', 'PR', 'Cafeara', 3970),
('4103453', 41, 3453, '4 - Sul', 'Paraná', 'PR', 'Cafelândia', 3971),
('4103479', 41, 3479, '4 - Sul', 'Paraná', 'PR', 'Cafezal do Sul', 3972),
('4103503', 41, 3503, '4 - Sul', 'Paraná', 'PR', 'Califórnia', 3973),
('4103602', 41, 3602, '4 - Sul', 'Paraná', 'PR', 'Cambará', 3974),
('4103701', 41, 3701, '4 - Sul', 'Paraná', 'PR', 'Cambé', 3975),
('4103800', 41, 3800, '4 - Sul', 'Paraná', 'PR', 'Cambira', 3976),
('4103909', 41, 3909, '4 - Sul', 'Paraná', 'PR', 'Campina da Lagoa', 3977),
('4103958', 41, 3958, '4 - Sul', 'Paraná', 'PR', 'Campina do Simão', 3978),
('4104006', 41, 4006, '4 - Sul', 'Paraná', 'PR', 'Campina Grande do Sul', 3979),
('4104055', 41, 4055, '4 - Sul', 'Paraná', 'PR', 'Campo Bonito', 3980),
('4104105', 41, 4105, '4 - Sul', 'Paraná', 'PR', 'Campo do Tenente', 3981),
('4104204', 41, 4204, '4 - Sul', 'Paraná', 'PR', 'Campo Largo', 3982),
('4104253', 41, 4253, '4 - Sul', 'Paraná', 'PR', 'Campo Magro', 3983),
('4104303', 41, 4303, '4 - Sul', 'Paraná', 'PR', 'Campo Mourão', 3984),
('4104402', 41, 4402, '4 - Sul', 'Paraná', 'PR', 'Cândido de Abreu', 3985),
('4104428', 41, 4428, '4 - Sul', 'Paraná', 'PR', 'Candói', 3986),
('4104451', 41, 4451, '4 - Sul', 'Paraná', 'PR', 'Cantagalo', 3987),
('4104501', 41, 4501, '4 - Sul', 'Paraná', 'PR', 'Capanema', 3988),
('4104600', 41, 4600, '4 - Sul', 'Paraná', 'PR', 'Capitão Leônidas Marques', 3989),
('4104659', 41, 4659, '4 - Sul', 'Paraná', 'PR', 'Carambeí', 3990),
('4104709', 41, 4709, '4 - Sul', 'Paraná', 'PR', 'Carlópolis', 3991),
('4104808', 41, 4808, '4 - Sul', 'Paraná', 'PR', 'Cascavel', 3992),
('4104907', 41, 4907, '4 - Sul', 'Paraná', 'PR', 'Castro', 3993),
('4105003', 41, 5003, '4 - Sul', 'Paraná', 'PR', 'Catanduvas', 3994),
('4105102', 41, 5102, '4 - Sul', 'Paraná', 'PR', 'Centenário do Sul', 3995),
('4105201', 41, 5201, '4 - Sul', 'Paraná', 'PR', 'Cerro Azul', 3996),
('4105300', 41, 5300, '4 - Sul', 'Paraná', 'PR', 'Céu Azul', 3997),
('4105409', 41, 5409, '4 - Sul', 'Paraná', 'PR', 'Chopinzinho', 3998),
('4105508', 41, 5508, '4 - Sul', 'Paraná', 'PR', 'Cianorte', 3999),
('4105607', 41, 5607, '4 - Sul', 'Paraná', 'PR', 'Cidade Gaúcha', 4000),
('4105706', 41, 5706, '4 - Sul', 'Paraná', 'PR', 'Clevelândia', 4001),
('4105805', 41, 5805, '4 - Sul', 'Paraná', 'PR', 'Colombo', 4002),
('4105904', 41, 5904, '4 - Sul', 'Paraná', 'PR', 'Colorado', 4003),
('4106001', 41, 6001, '4 - Sul', 'Paraná', 'PR', 'Congonhinhas', 4004),
('4106100', 41, 6100, '4 - Sul', 'Paraná', 'PR', 'Conselheiro Mairinck', 4005),
('4106209', 41, 6209, '4 - Sul', 'Paraná', 'PR', 'Contenda', 4006),
('4106308', 41, 6308, '4 - Sul', 'Paraná', 'PR', 'Corbélia', 4007),
('4106407', 41, 6407, '4 - Sul', 'Paraná', 'PR', 'Cornélio Procópio', 4008),
('4106456', 41, 6456, '4 - Sul', 'Paraná', 'PR', 'Coronel Domingos Soares', 4009),
('4106506', 41, 6506, '4 - Sul', 'Paraná', 'PR', 'Coronel Vivida', 4010),
('4106555', 41, 6555, '4 - Sul', 'Paraná', 'PR', 'Corumbataí do Sul', 4011),
('4106571', 41, 6571, '4 - Sul', 'Paraná', 'PR', 'Cruzeiro do Iguaçu', 4012),
('4106605', 41, 6605, '4 - Sul', 'Paraná', 'PR', 'Cruzeiro do Oeste', 4013),
('4106704', 41, 6704, '4 - Sul', 'Paraná', 'PR', 'Cruzeiro do Sul', 4014),
('4106803', 41, 6803, '4 - Sul', 'Paraná', 'PR', 'Cruz Machado', 4015),
('4106852', 41, 6852, '4 - Sul', 'Paraná', 'PR', 'Cruzmaltina', 4016),
('4106902', 41, 6902, '4 - Sul', 'Paraná', 'PR', 'Curitiba', 4017),
('4107009', 41, 7009, '4 - Sul', 'Paraná', 'PR', 'Curiúva', 4018),
('4107108', 41, 7108, '4 - Sul', 'Paraná', 'PR', 'Diamante do Norte', 4019),
('4107124', 41, 7124, '4 - Sul', 'Paraná', 'PR', 'Diamante do Sul', 4020),
('4107157', 41, 7157, '4 - Sul', 'Paraná', 'PR', 'Diamante D''Oeste', 4021),
('4107207', 41, 7207, '4 - Sul', 'Paraná', 'PR', 'Dois Vizinhos', 4022),
('4107256', 41, 7256, '4 - Sul', 'Paraná', 'PR', 'Douradina', 4023),
('4107306', 41, 7306, '4 - Sul', 'Paraná', 'PR', 'Doutor Camargo', 4024),
('4107405', 41, 7405, '4 - Sul', 'Paraná', 'PR', 'Enéas Marques', 4025),
('4107504', 41, 7504, '4 - Sul', 'Paraná', 'PR', 'Engenheiro Beltrão', 4026),
('4107520', 41, 7520, '4 - Sul', 'Paraná', 'PR', 'Esperança Nova', 4027),
('4107538', 41, 7538, '4 - Sul', 'Paraná', 'PR', 'Entre Rios do Oeste', 4028),
('4107546', 41, 7546, '4 - Sul', 'Paraná', 'PR', 'Espigão Alto do Iguaçu', 4029),
('4107553', 41, 7553, '4 - Sul', 'Paraná', 'PR', 'Farol', 4030),
('4107603', 41, 7603, '4 - Sul', 'Paraná', 'PR', 'Faxinal', 4031),
('4107652', 41, 7652, '4 - Sul', 'Paraná', 'PR', 'Fazenda Rio Grande', 4032),
('4107702', 41, 7702, '4 - Sul', 'Paraná', 'PR', 'Fênix', 4033),
('4107736', 41, 7736, '4 - Sul', 'Paraná', 'PR', 'Fernandes Pinheiro', 4034),
('4107751', 41, 7751, '4 - Sul', 'Paraná', 'PR', 'Figueira', 4035),
('4107801', 41, 7801, '4 - Sul', 'Paraná', 'PR', 'Floraí', 4036),
('4107850', 41, 7850, '4 - Sul', 'Paraná', 'PR', 'Flor da Serra do Sul', 4037),
('4107900', 41, 7900, '4 - Sul', 'Paraná', 'PR', 'Floresta', 4038),
('4108007', 41, 8007, '4 - Sul', 'Paraná', 'PR', 'Florestópolis', 4039),
('4108106', 41, 8106, '4 - Sul', 'Paraná', 'PR', 'Flórida', 4040),
('4108205', 41, 8205, '4 - Sul', 'Paraná', 'PR', 'Formosa do Oeste', 4041),
('4108304', 41, 8304, '4 - Sul', 'Paraná', 'PR', 'Foz do Iguaçu', 4042),
('4108320', 41, 8320, '4 - Sul', 'Paraná', 'PR', 'Francisco Alves', 4043),
('4108403', 41, 8403, '4 - Sul', 'Paraná', 'PR', 'Francisco Beltrão', 4044),
('4108452', 41, 8452, '4 - Sul', 'Paraná', 'PR', 'Foz do Jordão', 4045),
('4108502', 41, 8502, '4 - Sul', 'Paraná', 'PR', 'General Carneiro', 4046),
('4108551', 41, 8551, '4 - Sul', 'Paraná', 'PR', 'Godoy Moreira', 4047),
('4108601', 41, 8601, '4 - Sul', 'Paraná', 'PR', 'Goioerê', 4048),
('4108650', 41, 8650, '4 - Sul', 'Paraná', 'PR', 'Goioxim', 4049),
('4108700', 41, 8700, '4 - Sul', 'Paraná', 'PR', 'Grandes Rios', 4050),
('4108809', 41, 8809, '4 - Sul', 'Paraná', 'PR', 'Guaíra', 4051),
('4108908', 41, 8908, '4 - Sul', 'Paraná', 'PR', 'Guairaçá', 4052),
('4108957', 41, 8957, '4 - Sul', 'Paraná', 'PR', 'Guamiranga', 4053),
('4109005', 41, 9005, '4 - Sul', 'Paraná', 'PR', 'Guapirama', 4054),
('4109104', 41, 9104, '4 - Sul', 'Paraná', 'PR', 'Guaporema', 4055),
('4109203', 41, 9203, '4 - Sul', 'Paraná', 'PR', 'Guaraci', 4056),
('4109302', 41, 9302, '4 - Sul', 'Paraná', 'PR', 'Guaraniaçu', 4057),
('4109401', 41, 9401, '4 - Sul', 'Paraná', 'PR', 'Guarapuava', 4058),
('4109500', 41, 9500, '4 - Sul', 'Paraná', 'PR', 'Guaraqueçaba', 4059),
('4109609', 41, 9609, '4 - Sul', 'Paraná', 'PR', 'Guaratuba', 4060),
('4109658', 41, 9658, '4 - Sul', 'Paraná', 'PR', 'Honório Serpa', 4061),
('4109708', 41, 9708, '4 - Sul', 'Paraná', 'PR', 'Ibaiti', 4062),
('4109757', 41, 9757, '4 - Sul', 'Paraná', 'PR', 'Ibema', 4063),
('4109807', 41, 9807, '4 - Sul', 'Paraná', 'PR', 'Ibiporã', 4064),
('4109906', 41, 9906, '4 - Sul', 'Paraná', 'PR', 'Icaraíma', 4065),
('4110003', 41, 10003, '4 - Sul', 'Paraná', 'PR', 'Iguaraçu', 4066),
('4110052', 41, 10052, '4 - Sul', 'Paraná', 'PR', 'Iguatu', 4067),
('4110078', 41, 10078, '4 - Sul', 'Paraná', 'PR', 'Imbaú', 4068),
('4110102', 41, 10102, '4 - Sul', 'Paraná', 'PR', 'Imbituva', 4069),
('4110201', 41, 10201, '4 - Sul', 'Paraná', 'PR', 'Inácio Martins', 4070),
('4110300', 41, 10300, '4 - Sul', 'Paraná', 'PR', 'Inajá', 4071),
('4110409', 41, 10409, '4 - Sul', 'Paraná', 'PR', 'Indianópolis', 4072),
('4110508', 41, 10508, '4 - Sul', 'Paraná', 'PR', 'Ipiranga', 4073),
('4110607', 41, 10607, '4 - Sul', 'Paraná', 'PR', 'Iporã', 4074),
('4110656', 41, 10656, '4 - Sul', 'Paraná', 'PR', 'Iracema do Oeste', 4075),
('4110706', 41, 10706, '4 - Sul', 'Paraná', 'PR', 'Irati', 4076),
('4110805', 41, 10805, '4 - Sul', 'Paraná', 'PR', 'Iretama', 4077),
('4110904', 41, 10904, '4 - Sul', 'Paraná', 'PR', 'Itaguajé', 4078),
('4110953', 41, 10953, '4 - Sul', 'Paraná', 'PR', 'Itaipulândia', 4079),
('4111001', 41, 11001, '4 - Sul', 'Paraná', 'PR', 'Itambaracá', 4080),
('4111100', 41, 11100, '4 - Sul', 'Paraná', 'PR', 'Itambé', 4081),
('4111209', 41, 11209, '4 - Sul', 'Paraná', 'PR', 'Itapejara d''Oeste', 4082),
('4111258', 41, 11258, '4 - Sul', 'Paraná', 'PR', 'Itaperuçu', 4083),
('4111308', 41, 11308, '4 - Sul', 'Paraná', 'PR', 'Itaúna do Sul', 4084),
('4111407', 41, 11407, '4 - Sul', 'Paraná', 'PR', 'Ivaí', 4085),
('4111506', 41, 11506, '4 - Sul', 'Paraná', 'PR', 'Ivaiporã', 4086),
('4111555', 41, 11555, '4 - Sul', 'Paraná', 'PR', 'Ivaté', 4087),
('4111605', 41, 11605, '4 - Sul', 'Paraná', 'PR', 'Ivatuba', 4088),
('4111704', 41, 11704, '4 - Sul', 'Paraná', 'PR', 'Jaboti', 4089),
('4111803', 41, 11803, '4 - Sul', 'Paraná', 'PR', 'Jacarezinho', 4090),
('4111902', 41, 11902, '4 - Sul', 'Paraná', 'PR', 'Jaguapitã', 4091),
('4112009', 41, 12009, '4 - Sul', 'Paraná', 'PR', 'Jaguariaíva', 4092),
('4112108', 41, 12108, '4 - Sul', 'Paraná', 'PR', 'Jandaia do Sul', 4093),
('4112207', 41, 12207, '4 - Sul', 'Paraná', 'PR', 'Janiópolis', 4094),
('4112306', 41, 12306, '4 - Sul', 'Paraná', 'PR', 'Japira', 4095),
('4112405', 41, 12405, '4 - Sul', 'Paraná', 'PR', 'Japurá', 4096),
('4112504', 41, 12504, '4 - Sul', 'Paraná', 'PR', 'Jardim Alegre', 4097),
('4112603', 41, 12603, '4 - Sul', 'Paraná', 'PR', 'Jardim Olinda', 4098),
('4112702', 41, 12702, '4 - Sul', 'Paraná', 'PR', 'Jataizinho', 4099),
('4112751', 41, 12751, '4 - Sul', 'Paraná', 'PR', 'Jesuítas', 4100),
('4112801', 41, 12801, '4 - Sul', 'Paraná', 'PR', 'Joaquim Távora', 4101),
('4112900', 41, 12900, '4 - Sul', 'Paraná', 'PR', 'Jundiaí do Sul', 4102),
('4112959', 41, 12959, '4 - Sul', 'Paraná', 'PR', 'Juranda', 4103),
('4113007', 41, 13007, '4 - Sul', 'Paraná', 'PR', 'Jussara', 4104),
('4113106', 41, 13106, '4 - Sul', 'Paraná', 'PR', 'Kaloré', 4105),
('4113205', 41, 13205, '4 - Sul', 'Paraná', 'PR', 'Lapa', 4106),
('4113254', 41, 13254, '4 - Sul', 'Paraná', 'PR', 'Laranjal', 4107),
('4113304', 41, 13304, '4 - Sul', 'Paraná', 'PR', 'Laranjeiras do Sul', 4108),
('4113403', 41, 13403, '4 - Sul', 'Paraná', 'PR', 'Leópolis', 4109),
('4113429', 41, 13429, '4 - Sul', 'Paraná', 'PR', 'Lidianópolis', 4110),
('4113452', 41, 13452, '4 - Sul', 'Paraná', 'PR', 'Lindoeste', 4111),
('4113502', 41, 13502, '4 - Sul', 'Paraná', 'PR', 'Loanda', 4112),
('4113601', 41, 13601, '4 - Sul', 'Paraná', 'PR', 'Lobato', 4113),
('4113700', 41, 13700, '4 - Sul', 'Paraná', 'PR', 'Londrina', 4114),
('4113734', 41, 13734, '4 - Sul', 'Paraná', 'PR', 'Luiziana', 4115),
('4113759', 41, 13759, '4 - Sul', 'Paraná', 'PR', 'Lunardelli', 4116),
('4113809', 41, 13809, '4 - Sul', 'Paraná', 'PR', 'Lupionópolis', 4117),
('4113908', 41, 13908, '4 - Sul', 'Paraná', 'PR', 'Mallet', 4118),
('4114005', 41, 14005, '4 - Sul', 'Paraná', 'PR', 'Mamborê', 4119),
('4114104', 41, 14104, '4 - Sul', 'Paraná', 'PR', 'Mandaguaçu', 4120),
('4114203', 41, 14203, '4 - Sul', 'Paraná', 'PR', 'Mandaguari', 4121),
('4114302', 41, 14302, '4 - Sul', 'Paraná', 'PR', 'Mandirituba', 4122),
('4114351', 41, 14351, '4 - Sul', 'Paraná', 'PR', 'Manfrinópolis', 4123),
('4114401', 41, 14401, '4 - Sul', 'Paraná', 'PR', 'Mangueirinha', 4124),
('4114500', 41, 14500, '4 - Sul', 'Paraná', 'PR', 'Manoel Ribas', 4125),
('4114609', 41, 14609, '4 - Sul', 'Paraná', 'PR', 'Marechal Cândido Rondon', 4126),
('4114708', 41, 14708, '4 - Sul', 'Paraná', 'PR', 'Maria Helena', 4127),
('4114807', 41, 14807, '4 - Sul', 'Paraná', 'PR', 'Marialva', 4128),
('4114906', 41, 14906, '4 - Sul', 'Paraná', 'PR', 'Marilândia do Sul', 4129),
('4115002', 41, 15002, '4 - Sul', 'Paraná', 'PR', 'Marilena', 4130),
('4115101', 41, 15101, '4 - Sul', 'Paraná', 'PR', 'Mariluz', 4131),
('4115200', 41, 15200, '4 - Sul', 'Paraná', 'PR', 'Maringá', 4132),
('4115309', 41, 15309, '4 - Sul', 'Paraná', 'PR', 'Mariópolis', 4133),
('4115358', 41, 15358, '4 - Sul', 'Paraná', 'PR', 'Maripá', 4134),
('4115408', 41, 15408, '4 - Sul', 'Paraná', 'PR', 'Marmeleiro', 4135),
('4115457', 41, 15457, '4 - Sul', 'Paraná', 'PR', 'Marquinho', 4136),
('4115507', 41, 15507, '4 - Sul', 'Paraná', 'PR', 'Marumbi', 4137),
('4115606', 41, 15606, '4 - Sul', 'Paraná', 'PR', 'Matelândia', 4138),
('4115705', 41, 15705, '4 - Sul', 'Paraná', 'PR', 'Matinhos', 4139),
('4115739', 41, 15739, '4 - Sul', 'Paraná', 'PR', 'Mato Rico', 4140),
('4115754', 41, 15754, '4 - Sul', 'Paraná', 'PR', 'Mauá da Serra', 4141),
('4115804', 41, 15804, '4 - Sul', 'Paraná', 'PR', 'Medianeira', 4142),
('4115853', 41, 15853, '4 - Sul', 'Paraná', 'PR', 'Mercedes', 4143),
('4115903', 41, 15903, '4 - Sul', 'Paraná', 'PR', 'Mirador', 4144),
('4116000', 41, 16000, '4 - Sul', 'Paraná', 'PR', 'Miraselva', 4145),
('4116059', 41, 16059, '4 - Sul', 'Paraná', 'PR', 'Missal', 4146),
('4116109', 41, 16109, '4 - Sul', 'Paraná', 'PR', 'Moreira Sales', 4147),
('4116208', 41, 16208, '4 - Sul', 'Paraná', 'PR', 'Morretes', 4148),
('4116307', 41, 16307, '4 - Sul', 'Paraná', 'PR', 'Munhoz de Melo', 4149),
('4116406', 41, 16406, '4 - Sul', 'Paraná', 'PR', 'Nossa Senhora das Graças', 4150),
('4116505', 41, 16505, '4 - Sul', 'Paraná', 'PR', 'Nova Aliança do Ivaí', 4151),
('4116604', 41, 16604, '4 - Sul', 'Paraná', 'PR', 'Nova América da Colina', 4152),
('4116703', 41, 16703, '4 - Sul', 'Paraná', 'PR', 'Nova Aurora', 4153),
('4116802', 41, 16802, '4 - Sul', 'Paraná', 'PR', 'Nova Cantu', 4154),
('4116901', 41, 16901, '4 - Sul', 'Paraná', 'PR', 'Nova Esperança', 4155),
('4116950', 41, 16950, '4 - Sul', 'Paraná', 'PR', 'Nova Esperança do Sudoeste', 4156),
('4117008', 41, 17008, '4 - Sul', 'Paraná', 'PR', 'Nova Fátima', 4157),
('4117057', 41, 17057, '4 - Sul', 'Paraná', 'PR', 'Nova Laranjeiras', 4158),
('4117107', 41, 17107, '4 - Sul', 'Paraná', 'PR', 'Nova Londrina', 4159),
('4117206', 41, 17206, '4 - Sul', 'Paraná', 'PR', 'Nova Olímpia', 4160),
('4117214', 41, 17214, '4 - Sul', 'Paraná', 'PR', 'Nova Santa Bárbara', 4161),
('4117222', 41, 17222, '4 - Sul', 'Paraná', 'PR', 'Nova Santa Rosa', 4162),
('4117255', 41, 17255, '4 - Sul', 'Paraná', 'PR', 'Nova Prata do Iguaçu', 4163),
('4117271', 41, 17271, '4 - Sul', 'Paraná', 'PR', 'Nova Tebas', 4164),
('4117297', 41, 17297, '4 - Sul', 'Paraná', 'PR', 'Novo Itacolomi', 4165),
('4117305', 41, 17305, '4 - Sul', 'Paraná', 'PR', 'Ortigueira', 4166),
('4117404', 41, 17404, '4 - Sul', 'Paraná', 'PR', 'Ourizona', 4167),
('4117453', 41, 17453, '4 - Sul', 'Paraná', 'PR', 'Ouro Verde do Oeste', 4168),
('4117503', 41, 17503, '4 - Sul', 'Paraná', 'PR', 'Paiçandu', 4169),
('4117602', 41, 17602, '4 - Sul', 'Paraná', 'PR', 'Palmas', 4170),
('4117701', 41, 17701, '4 - Sul', 'Paraná', 'PR', 'Palmeira', 4171),
('4117800', 41, 17800, '4 - Sul', 'Paraná', 'PR', 'Palmital', 4172),
('4117909', 41, 17909, '4 - Sul', 'Paraná', 'PR', 'Palotina', 4173),
('4118006', 41, 18006, '4 - Sul', 'Paraná', 'PR', 'Paraíso do Norte', 4174),
('4118105', 41, 18105, '4 - Sul', 'Paraná', 'PR', 'Paranacity', 4175),
('4118204', 41, 18204, '4 - Sul', 'Paraná', 'PR', 'Paranaguá', 4176),
('4118303', 41, 18303, '4 - Sul', 'Paraná', 'PR', 'Paranapoema', 4177),
('4118402', 41, 18402, '4 - Sul', 'Paraná', 'PR', 'Paranavaí', 4178),
('4118451', 41, 18451, '4 - Sul', 'Paraná', 'PR', 'Pato Bragado', 4179),
('4118501', 41, 18501, '4 - Sul', 'Paraná', 'PR', 'Pato Branco', 4180),
('4118600', 41, 18600, '4 - Sul', 'Paraná', 'PR', 'Paula Freitas', 4181),
('4118709', 41, 18709, '4 - Sul', 'Paraná', 'PR', 'Paulo Frontin', 4182),
('4118808', 41, 18808, '4 - Sul', 'Paraná', 'PR', 'Peabiru', 4183),
('4118857', 41, 18857, '4 - Sul', 'Paraná', 'PR', 'Perobal', 4184),
('4118907', 41, 18907, '4 - Sul', 'Paraná', 'PR', 'Pérola', 4185),
('4119004', 41, 19004, '4 - Sul', 'Paraná', 'PR', 'Pérola d''Oeste', 4186),
('4119103', 41, 19103, '4 - Sul', 'Paraná', 'PR', 'Piên', 4187),
('4119152', 41, 19152, '4 - Sul', 'Paraná', 'PR', 'Pinhais', 4188),
('4119202', 41, 19202, '4 - Sul', 'Paraná', 'PR', 'Pinhalão', 4189),
('4119251', 41, 19251, '4 - Sul', 'Paraná', 'PR', 'Pinhal de São Bento', 4190),
('4119301', 41, 19301, '4 - Sul', 'Paraná', 'PR', 'Pinhão', 4191),
('4119400', 41, 19400, '4 - Sul', 'Paraná', 'PR', 'Piraí do Sul', 4192),
('4119509', 41, 19509, '4 - Sul', 'Paraná', 'PR', 'Piraquara', 4193),
('4119608', 41, 19608, '4 - Sul', 'Paraná', 'PR', 'Pitanga', 4194),
('4119657', 41, 19657, '4 - Sul', 'Paraná', 'PR', 'Pitangueiras', 4195),
('4119707', 41, 19707, '4 - Sul', 'Paraná', 'PR', 'Planaltina do Paraná', 4196),
('4119806', 41, 19806, '4 - Sul', 'Paraná', 'PR', 'Planalto', 4197),
('4119905', 41, 19905, '4 - Sul', 'Paraná', 'PR', 'Ponta Grossa', 4198),
('4119954', 41, 19954, '4 - Sul', 'Paraná', 'PR', 'Pontal do Paraná', 4199),
('4120002', 41, 20002, '4 - Sul', 'Paraná', 'PR', 'Porecatu', 4200),
('4120101', 41, 20101, '4 - Sul', 'Paraná', 'PR', 'Porto Amazonas', 4201),
('4120150', 41, 20150, '4 - Sul', 'Paraná', 'PR', 'Porto Barreiro', 4202),
('4120200', 41, 20200, '4 - Sul', 'Paraná', 'PR', 'Porto Rico', 4203),
('4120309', 41, 20309, '4 - Sul', 'Paraná', 'PR', 'Porto Vitória', 4204),
('4120333', 41, 20333, '4 - Sul', 'Paraná', 'PR', 'Prado Ferreira', 4205),
('4120358', 41, 20358, '4 - Sul', 'Paraná', 'PR', 'Pranchita', 4206),
('4120408', 41, 20408, '4 - Sul', 'Paraná', 'PR', 'Presidente Castelo Branco', 4207),
('4120507', 41, 20507, '4 - Sul', 'Paraná', 'PR', 'Primeiro de Maio', 4208),
('4120606', 41, 20606, '4 - Sul', 'Paraná', 'PR', 'Prudentópolis', 4209),
('4120655', 41, 20655, '4 - Sul', 'Paraná', 'PR', 'Quarto Centenário', 4210),
('4120705', 41, 20705, '4 - Sul', 'Paraná', 'PR', 'Quatiguá', 4211),
('4120804', 41, 20804, '4 - Sul', 'Paraná', 'PR', 'Quatro Barras', 4212),
('4120853', 41, 20853, '4 - Sul', 'Paraná', 'PR', 'Quatro Pontes', 4213),
('4120903', 41, 20903, '4 - Sul', 'Paraná', 'PR', 'Quedas do Iguaçu', 4214),
('4121000', 41, 21000, '4 - Sul', 'Paraná', 'PR', 'Querência do Norte', 4215),
('4121109', 41, 21109, '4 - Sul', 'Paraná', 'PR', 'Quinta do Sol', 4216),
('4121208', 41, 21208, '4 - Sul', 'Paraná', 'PR', 'Quitandinha', 4217),
('4121257', 41, 21257, '4 - Sul', 'Paraná', 'PR', 'Ramilândia', 4218),
('4121307', 41, 21307, '4 - Sul', 'Paraná', 'PR', 'Rancho Alegre', 4219),
('4121356', 41, 21356, '4 - Sul', 'Paraná', 'PR', 'Rancho Alegre D''Oeste', 4220),
('4121406', 41, 21406, '4 - Sul', 'Paraná', 'PR', 'Realeza', 4221),
('4121505', 41, 21505, '4 - Sul', 'Paraná', 'PR', 'Rebouças', 4222),
('4121604', 41, 21604, '4 - Sul', 'Paraná', 'PR', 'Renascença', 4223),
('4121703', 41, 21703, '4 - Sul', 'Paraná', 'PR', 'Reserva', 4224),
('4121752', 41, 21752, '4 - Sul', 'Paraná', 'PR', 'Reserva do Iguaçu', 4225),
('4121802', 41, 21802, '4 - Sul', 'Paraná', 'PR', 'Ribeirão Claro', 4226),
('4121901', 41, 21901, '4 - Sul', 'Paraná', 'PR', 'Ribeirão do Pinhal', 4227),
('4122008', 41, 22008, '4 - Sul', 'Paraná', 'PR', 'Rio Azul', 4228),
('4122107', 41, 22107, '4 - Sul', 'Paraná', 'PR', 'Rio Bom', 4229),
('4122156', 41, 22156, '4 - Sul', 'Paraná', 'PR', 'Rio Bonito do Iguaçu', 4230),
('4122172', 41, 22172, '4 - Sul', 'Paraná', 'PR', 'Rio Branco do Ivaí', 4231),
('4122206', 41, 22206, '4 - Sul', 'Paraná', 'PR', 'Rio Branco do Sul', 4232),
('4122305', 41, 22305, '4 - Sul', 'Paraná', 'PR', 'Rio Negro', 4233),
('4122404', 41, 22404, '4 - Sul', 'Paraná', 'PR', 'Rolândia', 4234),
('4122503', 41, 22503, '4 - Sul', 'Paraná', 'PR', 'Roncador', 4235),
('4122602', 41, 22602, '4 - Sul', 'Paraná', 'PR', 'Rondon', 4236),
('4122651', 41, 22651, '4 - Sul', 'Paraná', 'PR', 'Rosário do Ivaí', 4237),
('4122701', 41, 22701, '4 - Sul', 'Paraná', 'PR', 'Sabáudia', 4238),
('4122800', 41, 22800, '4 - Sul', 'Paraná', 'PR', 'Salgado Filho', 4239),
('4122909', 41, 22909, '4 - Sul', 'Paraná', 'PR', 'Salto do Itararé', 4240),
('4123006', 41, 23006, '4 - Sul', 'Paraná', 'PR', 'Salto do Lontra', 4241),
('4123105', 41, 23105, '4 - Sul', 'Paraná', 'PR', 'Santa Amélia', 4242),
('4123204', 41, 23204, '4 - Sul', 'Paraná', 'PR', 'Santa Cecília do Pavão', 4243),
('4123303', 41, 23303, '4 - Sul', 'Paraná', 'PR', 'Santa Cruz de Monte Castelo', 4244),
('4123402', 41, 23402, '4 - Sul', 'Paraná', 'PR', 'Santa Fé', 4245),
('4123501', 41, 23501, '4 - Sul', 'Paraná', 'PR', 'Santa Helena', 4246),
('4123600', 41, 23600, '4 - Sul', 'Paraná', 'PR', 'Santa Inês', 4247),
('4123709', 41, 23709, '4 - Sul', 'Paraná', 'PR', 'Santa Isabel do Ivaí', 4248),
('4123808', 41, 23808, '4 - Sul', 'Paraná', 'PR', 'Santa Izabel do Oeste', 4249),
('4123824', 41, 23824, '4 - Sul', 'Paraná', 'PR', 'Santa Lúcia', 4250),
('4123857', 41, 23857, '4 - Sul', 'Paraná', 'PR', 'Santa Maria do Oeste', 4251),
('4123907', 41, 23907, '4 - Sul', 'Paraná', 'PR', 'Santa Mariana', 4252),
('4123956', 41, 23956, '4 - Sul', 'Paraná', 'PR', 'Santa Mônica', 4253),
('4124004', 41, 24004, '4 - Sul', 'Paraná', 'PR', 'Santana do Itararé', 4254),
('4124020', 41, 24020, '4 - Sul', 'Paraná', 'PR', 'Santa Tereza do Oeste', 4255),
('4124053', 41, 24053, '4 - Sul', 'Paraná', 'PR', 'Santa Terezinha de Itaipu', 4256),
('4124103', 41, 24103, '4 - Sul', 'Paraná', 'PR', 'Santo Antônio da Platina', 4257),
('4124202', 41, 24202, '4 - Sul', 'Paraná', 'PR', 'Santo Antônio do Caiuá', 4258),
('4124301', 41, 24301, '4 - Sul', 'Paraná', 'PR', 'Santo Antônio do Paraíso', 4259),
('4124400', 41, 24400, '4 - Sul', 'Paraná', 'PR', 'Santo Antônio do Sudoeste', 4260),
('4124509', 41, 24509, '4 - Sul', 'Paraná', 'PR', 'Santo Inácio', 4261),
('4124608', 41, 24608, '4 - Sul', 'Paraná', 'PR', 'São Carlos do Ivaí', 4262),
('4124707', 41, 24707, '4 - Sul', 'Paraná', 'PR', 'São Jerônimo da Serra', 4263),
('4124806', 41, 24806, '4 - Sul', 'Paraná', 'PR', 'São João', 4264),
('4124905', 41, 24905, '4 - Sul', 'Paraná', 'PR', 'São João do Caiuá', 4265),
('4125001', 41, 25001, '4 - Sul', 'Paraná', 'PR', 'São João do Ivaí', 4266),
('4125100', 41, 25100, '4 - Sul', 'Paraná', 'PR', 'São João do Triunfo', 4267),
('4125209', 41, 25209, '4 - Sul', 'Paraná', 'PR', 'São Jorge d''Oeste', 4268),
('4125308', 41, 25308, '4 - Sul', 'Paraná', 'PR', 'São Jorge do Ivaí', 4269),
('4125357', 41, 25357, '4 - Sul', 'Paraná', 'PR', 'São Jorge do Patrocínio', 4270),
('4125407', 41, 25407, '4 - Sul', 'Paraná', 'PR', 'São José da Boa Vista', 4271),
('4125456', 41, 25456, '4 - Sul', 'Paraná', 'PR', 'São José das Palmeiras', 4272),
('4125506', 41, 25506, '4 - Sul', 'Paraná', 'PR', 'São José dos Pinhais', 4273),
('4125555', 41, 25555, '4 - Sul', 'Paraná', 'PR', 'São Manoel do Paraná', 4274),
('4125605', 41, 25605, '4 - Sul', 'Paraná', 'PR', 'São Mateus do Sul', 4275),
('4125704', 41, 25704, '4 - Sul', 'Paraná', 'PR', 'São Miguel do Iguaçu', 4276),
('4125753', 41, 25753, '4 - Sul', 'Paraná', 'PR', 'São Pedro do Iguaçu', 4277),
('4125803', 41, 25803, '4 - Sul', 'Paraná', 'PR', 'São Pedro do Ivaí', 4278),
('4125902', 41, 25902, '4 - Sul', 'Paraná', 'PR', 'São Pedro do Paraná', 4279),
('4126009', 41, 26009, '4 - Sul', 'Paraná', 'PR', 'São Sebastião da Amoreira', 4280),
('4126108', 41, 26108, '4 - Sul', 'Paraná', 'PR', 'São Tomé', 4281),
('4126207', 41, 26207, '4 - Sul', 'Paraná', 'PR', 'Sapopema', 4282),
('4126256', 41, 26256, '4 - Sul', 'Paraná', 'PR', 'Sarandi', 4283),
('4126272', 41, 26272, '4 - Sul', 'Paraná', 'PR', 'Saudade do Iguaçu', 4284),
('4126306', 41, 26306, '4 - Sul', 'Paraná', 'PR', 'Sengés', 4285),
('4126355', 41, 26355, '4 - Sul', 'Paraná', 'PR', 'Serranópolis do Iguaçu', 4286),
('4126405', 41, 26405, '4 - Sul', 'Paraná', 'PR', 'Sertaneja', 4287),
('4126504', 41, 26504, '4 - Sul', 'Paraná', 'PR', 'Sertanópolis', 4288),
('4126603', 41, 26603, '4 - Sul', 'Paraná', 'PR', 'Siqueira Campos', 4289),
('4126652', 41, 26652, '4 - Sul', 'Paraná', 'PR', 'Sulina', 4290),
('4126678', 41, 26678, '4 - Sul', 'Paraná', 'PR', 'Tamarana', 4291),
('4126702', 41, 26702, '4 - Sul', 'Paraná', 'PR', 'Tamboara', 4292),
('4126801', 41, 26801, '4 - Sul', 'Paraná', 'PR', 'Tapejara', 4293),
('4126900', 41, 26900, '4 - Sul', 'Paraná', 'PR', 'Tapira', 4294),
('4127007', 41, 27007, '4 - Sul', 'Paraná', 'PR', 'Teixeira Soares', 4295),
('4127106', 41, 27106, '4 - Sul', 'Paraná', 'PR', 'Telêmaco Borba', 4296),
('4127205', 41, 27205, '4 - Sul', 'Paraná', 'PR', 'Terra Boa', 4297),
('4127304', 41, 27304, '4 - Sul', 'Paraná', 'PR', 'Terra Rica', 4298),
('4127403', 41, 27403, '4 - Sul', 'Paraná', 'PR', 'Terra Roxa', 4299),
('4127502', 41, 27502, '4 - Sul', 'Paraná', 'PR', 'Tibagi', 4300),
('4127601', 41, 27601, '4 - Sul', 'Paraná', 'PR', 'Tijucas do Sul', 4301),
('4127700', 41, 27700, '4 - Sul', 'Paraná', 'PR', 'Toledo', 4302),
('4127809', 41, 27809, '4 - Sul', 'Paraná', 'PR', 'Tomazina', 4303),
('4127858', 41, 27858, '4 - Sul', 'Paraná', 'PR', 'Três Barras do Paraná', 4304),
('4127882', 41, 27882, '4 - Sul', 'Paraná', 'PR', 'Tunas do Paraná', 4305),
('4127908', 41, 27908, '4 - Sul', 'Paraná', 'PR', 'Tuneiras do Oeste', 4306),
('4127957', 41, 27957, '4 - Sul', 'Paraná', 'PR', 'Tupãssi', 4307),
('4127965', 41, 27965, '4 - Sul', 'Paraná', 'PR', 'Turvo', 4308),
('4128005', 41, 28005, '4 - Sul', 'Paraná', 'PR', 'Ubiratã', 4309),
('4128104', 41, 28104, '4 - Sul', 'Paraná', 'PR', 'Umuarama', 4310),
('4128203', 41, 28203, '4 - Sul', 'Paraná', 'PR', 'União da Vitória', 4311),
('4128302', 41, 28302, '4 - Sul', 'Paraná', 'PR', 'Uniflor', 4312),
('4128401', 41, 28401, '4 - Sul', 'Paraná', 'PR', 'Uraí', 4313),
('4128500', 41, 28500, '4 - Sul', 'Paraná', 'PR', 'Wenceslau Braz', 4314),
('4128534', 41, 28534, '4 - Sul', 'Paraná', 'PR', 'Ventania', 4315),
('4128559', 41, 28559, '4 - Sul', 'Paraná', 'PR', 'Vera Cruz do Oeste', 4316),
('4128609', 41, 28609, '4 - Sul', 'Paraná', 'PR', 'Verê', 4317),
('4128625', 41, 28625, '4 - Sul', 'Paraná', 'PR', 'Alto Paraíso', 4318),
('4128633', 41, 28633, '4 - Sul', 'Paraná', 'PR', 'Doutor Ulysses', 4319),
('4128658', 41, 28658, '4 - Sul', 'Paraná', 'PR', 'Virmond', 4320),
('4128708', 41, 28708, '4 - Sul', 'Paraná', 'PR', 'Vitorino', 4321),
('4128807', 41, 28807, '4 - Sul', 'Paraná', 'PR', 'Xambrê', 4322),
('4200051', 42, 51, '4 - Sul', 'Santa Catarina', 'SC', 'Abdon Batista', 4323),
('4200101', 42, 101, '4 - Sul', 'Santa Catarina', 'SC', 'Abelardo Luz', 4324),
('4200200', 42, 200, '4 - Sul', 'Santa Catarina', 'SC', 'Agrolândia', 4325),
('4200309', 42, 309, '4 - Sul', 'Santa Catarina', 'SC', 'Agronômica', 4326),
('4200408', 42, 408, '4 - Sul', 'Santa Catarina', 'SC', 'Água Doce', 4327),
('4200507', 42, 507, '4 - Sul', 'Santa Catarina', 'SC', 'Águas de Chapecó', 4328),
('4200556', 42, 556, '4 - Sul', 'Santa Catarina', 'SC', 'Águas Frias', 4329),
('4200606', 42, 606, '4 - Sul', 'Santa Catarina', 'SC', 'Águas Mornas', 4330),
('4200705', 42, 705, '4 - Sul', 'Santa Catarina', 'SC', 'Alfredo Wagner', 4331),
('4200754', 42, 754, '4 - Sul', 'Santa Catarina', 'SC', 'Alto Bela Vista', 4332),
('4200804', 42, 804, '4 - Sul', 'Santa Catarina', 'SC', 'Anchieta', 4333),
('4200903', 42, 903, '4 - Sul', 'Santa Catarina', 'SC', 'Angelina', 4334),
('4201000', 42, 1000, '4 - Sul', 'Santa Catarina', 'SC', 'Anita Garibaldi', 4335),
('4201109', 42, 1109, '4 - Sul', 'Santa Catarina', 'SC', 'Anitápolis', 4336),
('4201208', 42, 1208, '4 - Sul', 'Santa Catarina', 'SC', 'Antônio Carlos', 4337),
('4201257', 42, 1257, '4 - Sul', 'Santa Catarina', 'SC', 'Apiúna', 4338),
('4201273', 42, 1273, '4 - Sul', 'Santa Catarina', 'SC', 'Arabutã', 4339),
('4201307', 42, 1307, '4 - Sul', 'Santa Catarina', 'SC', 'Araquari', 4340),
('4201406', 42, 1406, '4 - Sul', 'Santa Catarina', 'SC', 'Araranguá', 4341),
('4201505', 42, 1505, '4 - Sul', 'Santa Catarina', 'SC', 'Armazém', 4342),
('4201604', 42, 1604, '4 - Sul', 'Santa Catarina', 'SC', 'Arroio Trinta', 4343),
('4201653', 42, 1653, '4 - Sul', 'Santa Catarina', 'SC', 'Arvoredo', 4344),
('4201703', 42, 1703, '4 - Sul', 'Santa Catarina', 'SC', 'Ascurra', 4345),
('4201802', 42, 1802, '4 - Sul', 'Santa Catarina', 'SC', 'Atalanta', 4346),
('4201901', 42, 1901, '4 - Sul', 'Santa Catarina', 'SC', 'Aurora', 4347),
('4201950', 42, 1950, '4 - Sul', 'Santa Catarina', 'SC', 'Balneário Arroio do Silva', 4348),
('4202008', 42, 2008, '4 - Sul', 'Santa Catarina', 'SC', 'Balneário Camboriú', 4349),
('4202057', 42, 2057, '4 - Sul', 'Santa Catarina', 'SC', 'Balneário Barra do Sul', 4350),
('4202073', 42, 2073, '4 - Sul', 'Santa Catarina', 'SC', 'Balneário Gaivota', 4351),
('4202081', 42, 2081, '4 - Sul', 'Santa Catarina', 'SC', 'Bandeirante', 4352),
('4202099', 42, 2099, '4 - Sul', 'Santa Catarina', 'SC', 'Barra Bonita', 4353),
('4202107', 42, 2107, '4 - Sul', 'Santa Catarina', 'SC', 'Barra Velha', 4354),
('4202131', 42, 2131, '4 - Sul', 'Santa Catarina', 'SC', 'Bela Vista do Toldo', 4355),
('4202156', 42, 2156, '4 - Sul', 'Santa Catarina', 'SC', 'Belmonte', 4356),
('4202206', 42, 2206, '4 - Sul', 'Santa Catarina', 'SC', 'Benedito Novo', 4357),
('4202305', 42, 2305, '4 - Sul', 'Santa Catarina', 'SC', 'Biguaçu', 4358),
('4202404', 42, 2404, '4 - Sul', 'Santa Catarina', 'SC', 'Blumenau', 4359),
('4202438', 42, 2438, '4 - Sul', 'Santa Catarina', 'SC', 'Bocaina do Sul', 4360),
('4202453', 42, 2453, '4 - Sul', 'Santa Catarina', 'SC', 'Bombinhas', 4361),
('4202503', 42, 2503, '4 - Sul', 'Santa Catarina', 'SC', 'Bom Jardim da Serra', 4362),
('4202537', 42, 2537, '4 - Sul', 'Santa Catarina', 'SC', 'Bom Jesus', 4363),
('4202578', 42, 2578, '4 - Sul', 'Santa Catarina', 'SC', 'Bom Jesus do Oeste', 4364),
('4202602', 42, 2602, '4 - Sul', 'Santa Catarina', 'SC', 'Bom Retiro', 4365),
('4202701', 42, 2701, '4 - Sul', 'Santa Catarina', 'SC', 'Botuverá', 4366),
('4202800', 42, 2800, '4 - Sul', 'Santa Catarina', 'SC', 'Braço do Norte', 4367),
('4202859', 42, 2859, '4 - Sul', 'Santa Catarina', 'SC', 'Braço do Trombudo', 4368),
('4202875', 42, 2875, '4 - Sul', 'Santa Catarina', 'SC', 'Brunópolis', 4369),
('4202909', 42, 2909, '4 - Sul', 'Santa Catarina', 'SC', 'Brusque', 4370),
('4203006', 42, 3006, '4 - Sul', 'Santa Catarina', 'SC', 'Caçador', 4371),
('4203105', 42, 3105, '4 - Sul', 'Santa Catarina', 'SC', 'Caibi', 4372),
('4203154', 42, 3154, '4 - Sul', 'Santa Catarina', 'SC', 'Calmon', 4373),
('4203204', 42, 3204, '4 - Sul', 'Santa Catarina', 'SC', 'Camboriú', 4374),
('4203253', 42, 3253, '4 - Sul', 'Santa Catarina', 'SC', 'Capão Alto', 4375),
('4203303', 42, 3303, '4 - Sul', 'Santa Catarina', 'SC', 'Campo Alegre', 4376),
('4203402', 42, 3402, '4 - Sul', 'Santa Catarina', 'SC', 'Campo Belo do Sul', 4377),
('4203501', 42, 3501, '4 - Sul', 'Santa Catarina', 'SC', 'Campo Erê', 4378),
('4203600', 42, 3600, '4 - Sul', 'Santa Catarina', 'SC', 'Campos Novos', 4379),
('4203709', 42, 3709, '4 - Sul', 'Santa Catarina', 'SC', 'Canelinha', 4380),
('4203808', 42, 3808, '4 - Sul', 'Santa Catarina', 'SC', 'Canoinhas', 4381),
('4203907', 42, 3907, '4 - Sul', 'Santa Catarina', 'SC', 'Capinzal', 4382),
('4203956', 42, 3956, '4 - Sul', 'Santa Catarina', 'SC', 'Capivari de Baixo', 4383),
('4204004', 42, 4004, '4 - Sul', 'Santa Catarina', 'SC', 'Catanduvas', 4384),
('4204103', 42, 4103, '4 - Sul', 'Santa Catarina', 'SC', 'Caxambu do Sul', 4385),
('4204152', 42, 4152, '4 - Sul', 'Santa Catarina', 'SC', 'Celso Ramos', 4386),
('4204178', 42, 4178, '4 - Sul', 'Santa Catarina', 'SC', 'Cerro Negro', 4387),
('4204194', 42, 4194, '4 - Sul', 'Santa Catarina', 'SC', 'Chapadão do Lageado', 4388),
('4204202', 42, 4202, '4 - Sul', 'Santa Catarina', 'SC', 'Chapecó', 4389),
('4204251', 42, 4251, '4 - Sul', 'Santa Catarina', 'SC', 'Cocal do Sul', 4390),
('4204301', 42, 4301, '4 - Sul', 'Santa Catarina', 'SC', 'Concórdia', 4391),
('4204350', 42, 4350, '4 - Sul', 'Santa Catarina', 'SC', 'Cordilheira Alta', 4392),
('4204400', 42, 4400, '4 - Sul', 'Santa Catarina', 'SC', 'Coronel Freitas', 4393),
('4204459', 42, 4459, '4 - Sul', 'Santa Catarina', 'SC', 'Coronel Martins', 4394),
('4204509', 42, 4509, '4 - Sul', 'Santa Catarina', 'SC', 'Corupá', 4395),
('4204558', 42, 4558, '4 - Sul', 'Santa Catarina', 'SC', 'Correia Pinto', 4396),
('4204608', 42, 4608, '4 - Sul', 'Santa Catarina', 'SC', 'Criciúma', 4397),
('4204707', 42, 4707, '4 - Sul', 'Santa Catarina', 'SC', 'Cunha Porã', 4398),
('4204756', 42, 4756, '4 - Sul', 'Santa Catarina', 'SC', 'Cunhataí', 4399),
('4204806', 42, 4806, '4 - Sul', 'Santa Catarina', 'SC', 'Curitibanos', 4400),
('4204905', 42, 4905, '4 - Sul', 'Santa Catarina', 'SC', 'Descanso', 4401),
('4205001', 42, 5001, '4 - Sul', 'Santa Catarina', 'SC', 'Dionísio Cerqueira', 4402),
('4205100', 42, 5100, '4 - Sul', 'Santa Catarina', 'SC', 'Dona Emma', 4403),
('4205159', 42, 5159, '4 - Sul', 'Santa Catarina', 'SC', 'Doutor Pedrinho', 4404),
('4205175', 42, 5175, '4 - Sul', 'Santa Catarina', 'SC', 'Entre Rios', 4405),
('4205191', 42, 5191, '4 - Sul', 'Santa Catarina', 'SC', 'Ermo', 4406),
('4205209', 42, 5209, '4 - Sul', 'Santa Catarina', 'SC', 'Erval Velho', 4407),
('4205308', 42, 5308, '4 - Sul', 'Santa Catarina', 'SC', 'Faxinal dos Guedes', 4408),
('4205357', 42, 5357, '4 - Sul', 'Santa Catarina', 'SC', 'Flor do Sertão', 4409),
('4205407', 42, 5407, '4 - Sul', 'Santa Catarina', 'SC', 'Florianópolis', 4410),
('4205431', 42, 5431, '4 - Sul', 'Santa Catarina', 'SC', 'Formosa do Sul', 4411),
('4205456', 42, 5456, '4 - Sul', 'Santa Catarina', 'SC', 'Forquilhinha', 4412),
('4205506', 42, 5506, '4 - Sul', 'Santa Catarina', 'SC', 'Fraiburgo', 4413),
('4205555', 42, 5555, '4 - Sul', 'Santa Catarina', 'SC', 'Frei Rogério', 4414),
('4205605', 42, 5605, '4 - Sul', 'Santa Catarina', 'SC', 'Galvão', 4415),
('4205704', 42, 5704, '4 - Sul', 'Santa Catarina', 'SC', 'Garopaba', 4416),
('4205803', 42, 5803, '4 - Sul', 'Santa Catarina', 'SC', 'Garuva', 4417),
('4205902', 42, 5902, '4 - Sul', 'Santa Catarina', 'SC', 'Gaspar', 4418),
('4206009', 42, 6009, '4 - Sul', 'Santa Catarina', 'SC', 'Governador Celso Ramos', 4419),
('4206108', 42, 6108, '4 - Sul', 'Santa Catarina', 'SC', 'Grão Pará', 4420),
('4206207', 42, 6207, '4 - Sul', 'Santa Catarina', 'SC', 'Gravatal', 4421),
('4206306', 42, 6306, '4 - Sul', 'Santa Catarina', 'SC', 'Guabiruba', 4422),
('4206405', 42, 6405, '4 - Sul', 'Santa Catarina', 'SC', 'Guaraciaba', 4423),
('4206504', 42, 6504, '4 - Sul', 'Santa Catarina', 'SC', 'Guaramirim', 4424),
('4206603', 42, 6603, '4 - Sul', 'Santa Catarina', 'SC', 'Guarujá do Sul', 4425),
('4206652', 42, 6652, '4 - Sul', 'Santa Catarina', 'SC', 'Guatambú', 4426),
('4206702', 42, 6702, '4 - Sul', 'Santa Catarina', 'SC', 'Herval d''Oeste', 4427),
('4206751', 42, 6751, '4 - Sul', 'Santa Catarina', 'SC', 'Ibiam', 4428),
('4206801', 42, 6801, '4 - Sul', 'Santa Catarina', 'SC', 'Ibicaré', 4429),
('4206900', 42, 6900, '4 - Sul', 'Santa Catarina', 'SC', 'Ibirama', 4430),
('4207007', 42, 7007, '4 - Sul', 'Santa Catarina', 'SC', 'Içara', 4431),
('4207106', 42, 7106, '4 - Sul', 'Santa Catarina', 'SC', 'Ilhota', 4432),
('4207205', 42, 7205, '4 - Sul', 'Santa Catarina', 'SC', 'Imaruí', 4433),
('4207304', 42, 7304, '4 - Sul', 'Santa Catarina', 'SC', 'Imbituba', 4434),
('4207403', 42, 7403, '4 - Sul', 'Santa Catarina', 'SC', 'Imbuia', 4435),
('4207502', 42, 7502, '4 - Sul', 'Santa Catarina', 'SC', 'Indaial', 4436),
('4207577', 42, 7577, '4 - Sul', 'Santa Catarina', 'SC', 'Iomerê', 4437),
('4207601', 42, 7601, '4 - Sul', 'Santa Catarina', 'SC', 'Ipira', 4438),
('4207650', 42, 7650, '4 - Sul', 'Santa Catarina', 'SC', 'Iporã do Oeste', 4439),
('4207684', 42, 7684, '4 - Sul', 'Santa Catarina', 'SC', 'Ipuaçu', 4440),
('4207700', 42, 7700, '4 - Sul', 'Santa Catarina', 'SC', 'Ipumirim', 4441),
('4207759', 42, 7759, '4 - Sul', 'Santa Catarina', 'SC', 'Iraceminha', 4442),
('4207809', 42, 7809, '4 - Sul', 'Santa Catarina', 'SC', 'Irani', 4443),
('4207858', 42, 7858, '4 - Sul', 'Santa Catarina', 'SC', 'Irati', 4444),
('4207908', 42, 7908, '4 - Sul', 'Santa Catarina', 'SC', 'Irineópolis', 4445),
('4208005', 42, 8005, '4 - Sul', 'Santa Catarina', 'SC', 'Itá', 4446),
('4208104', 42, 8104, '4 - Sul', 'Santa Catarina', 'SC', 'Itaiópolis', 4447),
('4208203', 42, 8203, '4 - Sul', 'Santa Catarina', 'SC', 'Itajaí', 4448),
('4208302', 42, 8302, '4 - Sul', 'Santa Catarina', 'SC', 'Itapema', 4449),
('4208401', 42, 8401, '4 - Sul', 'Santa Catarina', 'SC', 'Itapiranga', 4450),
('4208450', 42, 8450, '4 - Sul', 'Santa Catarina', 'SC', 'Itapoá', 4451),
('4208500', 42, 8500, '4 - Sul', 'Santa Catarina', 'SC', 'Ituporanga', 4452),
('4208609', 42, 8609, '4 - Sul', 'Santa Catarina', 'SC', 'Jaborá', 4453),
('4208708', 42, 8708, '4 - Sul', 'Santa Catarina', 'SC', 'Jacinto Machado', 4454),
('4208807', 42, 8807, '4 - Sul', 'Santa Catarina', 'SC', 'Jaguaruna', 4455),
('4208906', 42, 8906, '4 - Sul', 'Santa Catarina', 'SC', 'Jaraguá do Sul', 4456),
('4208955', 42, 8955, '4 - Sul', 'Santa Catarina', 'SC', 'Jardinópolis', 4457),
('4209003', 42, 9003, '4 - Sul', 'Santa Catarina', 'SC', 'Joaçaba', 4458),
('4209102', 42, 9102, '4 - Sul', 'Santa Catarina', 'SC', 'Joinville', 4459),
('4209151', 42, 9151, '4 - Sul', 'Santa Catarina', 'SC', 'José Boiteux', 4460),
('4209177', 42, 9177, '4 - Sul', 'Santa Catarina', 'SC', 'Jupiá', 4461),
('4209201', 42, 9201, '4 - Sul', 'Santa Catarina', 'SC', 'Lacerdópolis', 4462),
('4209300', 42, 9300, '4 - Sul', 'Santa Catarina', 'SC', 'Lages', 4463),
('4209409', 42, 9409, '4 - Sul', 'Santa Catarina', 'SC', 'Laguna', 4464),
('4209458', 42, 9458, '4 - Sul', 'Santa Catarina', 'SC', 'Lajeado Grande', 4465),
('4209508', 42, 9508, '4 - Sul', 'Santa Catarina', 'SC', 'Laurentino', 4466),
('4209607', 42, 9607, '4 - Sul', 'Santa Catarina', 'SC', 'Lauro Muller', 4467),
('4209706', 42, 9706, '4 - Sul', 'Santa Catarina', 'SC', 'Lebon Régis', 4468),
('4209805', 42, 9805, '4 - Sul', 'Santa Catarina', 'SC', 'Leoberto Leal', 4469),
('4209854', 42, 9854, '4 - Sul', 'Santa Catarina', 'SC', 'Lindóia do Sul', 4470),
('4209904', 42, 9904, '4 - Sul', 'Santa Catarina', 'SC', 'Lontras', 4471),
('4210001', 42, 10001, '4 - Sul', 'Santa Catarina', 'SC', 'Luiz Alves', 4472),
('4210035', 42, 10035, '4 - Sul', 'Santa Catarina', 'SC', 'Luzerna', 4473),
('4210050', 42, 10050, '4 - Sul', 'Santa Catarina', 'SC', 'Macieira', 4474),
('4210100', 42, 10100, '4 - Sul', 'Santa Catarina', 'SC', 'Mafra', 4475),
('4210209', 42, 10209, '4 - Sul', 'Santa Catarina', 'SC', 'Major Gercino', 4476),
('4210308', 42, 10308, '4 - Sul', 'Santa Catarina', 'SC', 'Major Vieira', 4477),
('4210407', 42, 10407, '4 - Sul', 'Santa Catarina', 'SC', 'Maracajá', 4478),
('4210506', 42, 10506, '4 - Sul', 'Santa Catarina', 'SC', 'Maravilha', 4479),
('4210555', 42, 10555, '4 - Sul', 'Santa Catarina', 'SC', 'Marema', 4480),
('4210605', 42, 10605, '4 - Sul', 'Santa Catarina', 'SC', 'Massaranduba', 4481),
('4210704', 42, 10704, '4 - Sul', 'Santa Catarina', 'SC', 'Matos Costa', 4482),
('4210803', 42, 10803, '4 - Sul', 'Santa Catarina', 'SC', 'Meleiro', 4483),
('4210852', 42, 10852, '4 - Sul', 'Santa Catarina', 'SC', 'Mirim Doce', 4484),
('4210902', 42, 10902, '4 - Sul', 'Santa Catarina', 'SC', 'Modelo', 4485),
('4211009', 42, 11009, '4 - Sul', 'Santa Catarina', 'SC', 'Mondaí', 4486),
('4211058', 42, 11058, '4 - Sul', 'Santa Catarina', 'SC', 'Monte Carlo', 4487),
('4211108', 42, 11108, '4 - Sul', 'Santa Catarina', 'SC', 'Monte Castelo', 4488),
('4211207', 42, 11207, '4 - Sul', 'Santa Catarina', 'SC', 'Morro da Fumaça', 4489),
('4211256', 42, 11256, '4 - Sul', 'Santa Catarina', 'SC', 'Morro Grande', 4490),
('4211306', 42, 11306, '4 - Sul', 'Santa Catarina', 'SC', 'Navegantes', 4491),
('4211405', 42, 11405, '4 - Sul', 'Santa Catarina', 'SC', 'Nova Erechim', 4492),
('4211454', 42, 11454, '4 - Sul', 'Santa Catarina', 'SC', 'Nova Itaberaba', 4493),
('4211504', 42, 11504, '4 - Sul', 'Santa Catarina', 'SC', 'Nova Trento', 4494),
('4211603', 42, 11603, '4 - Sul', 'Santa Catarina', 'SC', 'Nova Veneza', 4495),
('4211652', 42, 11652, '4 - Sul', 'Santa Catarina', 'SC', 'Novo Horizonte', 4496),
('4211702', 42, 11702, '4 - Sul', 'Santa Catarina', 'SC', 'Orleans', 4497),
('4211751', 42, 11751, '4 - Sul', 'Santa Catarina', 'SC', 'Otacílio Costa', 4498),
('4211801', 42, 11801, '4 - Sul', 'Santa Catarina', 'SC', 'Ouro', 4499),
('4211850', 42, 11850, '4 - Sul', 'Santa Catarina', 'SC', 'Ouro Verde', 4500),
('4211876', 42, 11876, '4 - Sul', 'Santa Catarina', 'SC', 'Paial', 4501),
('4211892', 42, 11892, '4 - Sul', 'Santa Catarina', 'SC', 'Painel', 4502),
('4211900', 42, 11900, '4 - Sul', 'Santa Catarina', 'SC', 'Palhoça', 4503),
('4212007', 42, 12007, '4 - Sul', 'Santa Catarina', 'SC', 'Palma Sola', 4504),
('4212056', 42, 12056, '4 - Sul', 'Santa Catarina', 'SC', 'Palmeira', 4505),
('4212106', 42, 12106, '4 - Sul', 'Santa Catarina', 'SC', 'Palmitos', 4506),
('4212205', 42, 12205, '4 - Sul', 'Santa Catarina', 'SC', 'Papanduva', 4507),
('4212239', 42, 12239, '4 - Sul', 'Santa Catarina', 'SC', 'Paraíso', 4508),
('4212254', 42, 12254, '4 - Sul', 'Santa Catarina', 'SC', 'Passo de Torres', 4509),
('4212270', 42, 12270, '4 - Sul', 'Santa Catarina', 'SC', 'Passos Maia', 4510),
('4212304', 42, 12304, '4 - Sul', 'Santa Catarina', 'SC', 'Paulo Lopes', 4511),
('4212403', 42, 12403, '4 - Sul', 'Santa Catarina', 'SC', 'Pedras Grandes', 4512),
('4212502', 42, 12502, '4 - Sul', 'Santa Catarina', 'SC', 'Penha', 4513),
('4212601', 42, 12601, '4 - Sul', 'Santa Catarina', 'SC', 'Peritiba', 4514),
('4212650', 42, 12650, '4 - Sul', 'Santa Catarina', 'SC', 'Pescaria Brava', 4515),
('4212700', 42, 12700, '4 - Sul', 'Santa Catarina', 'SC', 'Petrolândia', 4516),
('4212809', 42, 12809, '4 - Sul', 'Santa Catarina', 'SC', 'Balneário Piçarras', 4517),
('4212908', 42, 12908, '4 - Sul', 'Santa Catarina', 'SC', 'Pinhalzinho', 4518),
('4213005', 42, 13005, '4 - Sul', 'Santa Catarina', 'SC', 'Pinheiro Preto', 4519),
('4213104', 42, 13104, '4 - Sul', 'Santa Catarina', 'SC', 'Piratuba', 4520),
('4213153', 42, 13153, '4 - Sul', 'Santa Catarina', 'SC', 'Planalto Alegre', 4521),
('4213203', 42, 13203, '4 - Sul', 'Santa Catarina', 'SC', 'Pomerode', 4522),
('4213302', 42, 13302, '4 - Sul', 'Santa Catarina', 'SC', 'Ponte Alta', 4523),
('4213351', 42, 13351, '4 - Sul', 'Santa Catarina', 'SC', 'Ponte Alta do Norte', 4524),
('4213401', 42, 13401, '4 - Sul', 'Santa Catarina', 'SC', 'Ponte Serrada', 4525),
('4213500', 42, 13500, '4 - Sul', 'Santa Catarina', 'SC', 'Porto Belo', 4526),
('4213609', 42, 13609, '4 - Sul', 'Santa Catarina', 'SC', 'Porto União', 4527),
('4213708', 42, 13708, '4 - Sul', 'Santa Catarina', 'SC', 'Pouso Redondo', 4528),
('4213807', 42, 13807, '4 - Sul', 'Santa Catarina', 'SC', 'Praia Grande', 4529),
('4213906', 42, 13906, '4 - Sul', 'Santa Catarina', 'SC', 'Presidente Castello Branco', 4530),
('4214003', 42, 14003, '4 - Sul', 'Santa Catarina', 'SC', 'Presidente Getúlio', 4531),
('4214102', 42, 14102, '4 - Sul', 'Santa Catarina', 'SC', 'Presidente Nereu', 4532),
('4214151', 42, 14151, '4 - Sul', 'Santa Catarina', 'SC', 'Princesa', 4533),
('4214201', 42, 14201, '4 - Sul', 'Santa Catarina', 'SC', 'Quilombo', 4534),
('4214300', 42, 14300, '4 - Sul', 'Santa Catarina', 'SC', 'Rancho Queimado', 4535),
('4214409', 42, 14409, '4 - Sul', 'Santa Catarina', 'SC', 'Rio das Antas', 4536),
('4214508', 42, 14508, '4 - Sul', 'Santa Catarina', 'SC', 'Rio do Campo', 4537),
('4214607', 42, 14607, '4 - Sul', 'Santa Catarina', 'SC', 'Rio do Oeste', 4538),
('4214706', 42, 14706, '4 - Sul', 'Santa Catarina', 'SC', 'Rio dos Cedros', 4539),
('4214805', 42, 14805, '4 - Sul', 'Santa Catarina', 'SC', 'Rio do Sul', 4540),
('4214904', 42, 14904, '4 - Sul', 'Santa Catarina', 'SC', 'Rio Fortuna', 4541),
('4215000', 42, 15000, '4 - Sul', 'Santa Catarina', 'SC', 'Rio Negrinho', 4542),
('4215059', 42, 15059, '4 - Sul', 'Santa Catarina', 'SC', 'Rio Rufino', 4543),
('4215075', 42, 15075, '4 - Sul', 'Santa Catarina', 'SC', 'Riqueza', 4544),
('4215109', 42, 15109, '4 - Sul', 'Santa Catarina', 'SC', 'Rodeio', 4545),
('4215208', 42, 15208, '4 - Sul', 'Santa Catarina', 'SC', 'Romelândia', 4546),
('4215307', 42, 15307, '4 - Sul', 'Santa Catarina', 'SC', 'Salete', 4547),
('4215356', 42, 15356, '4 - Sul', 'Santa Catarina', 'SC', 'Saltinho', 4548),
('4215406', 42, 15406, '4 - Sul', 'Santa Catarina', 'SC', 'Salto Veloso', 4549),
('4215455', 42, 15455, '4 - Sul', 'Santa Catarina', 'SC', 'Sangão', 4550),
('4215505', 42, 15505, '4 - Sul', 'Santa Catarina', 'SC', 'Santa Cecília', 4551),
('4215554', 42, 15554, '4 - Sul', 'Santa Catarina', 'SC', 'Santa Helena', 4552),
('4215604', 42, 15604, '4 - Sul', 'Santa Catarina', 'SC', 'Santa Rosa de Lima', 4553),
('4215653', 42, 15653, '4 - Sul', 'Santa Catarina', 'SC', 'Santa Rosa do Sul', 4554),
('4215679', 42, 15679, '4 - Sul', 'Santa Catarina', 'SC', 'Santa Terezinha', 4555),
('4215687', 42, 15687, '4 - Sul', 'Santa Catarina', 'SC', 'Santa Terezinha do Progresso', 4556),
('4215695', 42, 15695, '4 - Sul', 'Santa Catarina', 'SC', 'Santiago do Sul', 4557),
('4215703', 42, 15703, '4 - Sul', 'Santa Catarina', 'SC', 'Santo Amaro da Imperatriz', 4558),
('4215752', 42, 15752, '4 - Sul', 'Santa Catarina', 'SC', 'São Bernardino', 4559),
('4215802', 42, 15802, '4 - Sul', 'Santa Catarina', 'SC', 'São Bento do Sul', 4560),
('4215901', 42, 15901, '4 - Sul', 'Santa Catarina', 'SC', 'São Bonifácio', 4561),
('4216008', 42, 16008, '4 - Sul', 'Santa Catarina', 'SC', 'São Carlos', 4562),
('4216057', 42, 16057, '4 - Sul', 'Santa Catarina', 'SC', 'São Cristovão do Sul', 4563),
('4216107', 42, 16107, '4 - Sul', 'Santa Catarina', 'SC', 'São Domingos', 4564),
('4216206', 42, 16206, '4 - Sul', 'Santa Catarina', 'SC', 'São Francisco do Sul', 4565),
('4216255', 42, 16255, '4 - Sul', 'Santa Catarina', 'SC', 'São João do Oeste', 4566),
('4216305', 42, 16305, '4 - Sul', 'Santa Catarina', 'SC', 'São João Batista', 4567),
('4216354', 42, 16354, '4 - Sul', 'Santa Catarina', 'SC', 'São João do Itaperiú', 4568),
('4216404', 42, 16404, '4 - Sul', 'Santa Catarina', 'SC', 'São João do Sul', 4569);
INSERT INTO `ibge_uf` (`cod_mun`, `cod_uf`, `seila`, `regiao`, `estado`, `uf`, `municipio`, `id`) VALUES
('4216503', 42, 16503, '4 - Sul', 'Santa Catarina', 'SC', 'São Joaquim', 4570),
('4216602', 42, 16602, '4 - Sul', 'Santa Catarina', 'SC', 'São José', 4571),
('4216701', 42, 16701, '4 - Sul', 'Santa Catarina', 'SC', 'São José do Cedro', 4572),
('4216800', 42, 16800, '4 - Sul', 'Santa Catarina', 'SC', 'São José do Cerrito', 4573),
('4216909', 42, 16909, '4 - Sul', 'Santa Catarina', 'SC', 'São Lourenço do Oeste', 4574),
('4217006', 42, 17006, '4 - Sul', 'Santa Catarina', 'SC', 'São Ludgero', 4575),
('4217105', 42, 17105, '4 - Sul', 'Santa Catarina', 'SC', 'São Martinho', 4576),
('4217154', 42, 17154, '4 - Sul', 'Santa Catarina', 'SC', 'São Miguel da Boa Vista', 4577),
('4217204', 42, 17204, '4 - Sul', 'Santa Catarina', 'SC', 'São Miguel do Oeste', 4578),
('4217253', 42, 17253, '4 - Sul', 'Santa Catarina', 'SC', 'São Pedro de Alcântara', 4579),
('4217303', 42, 17303, '4 - Sul', 'Santa Catarina', 'SC', 'Saudades', 4580),
('4217402', 42, 17402, '4 - Sul', 'Santa Catarina', 'SC', 'Schroeder', 4581),
('4217501', 42, 17501, '4 - Sul', 'Santa Catarina', 'SC', 'Seara', 4582),
('4217550', 42, 17550, '4 - Sul', 'Santa Catarina', 'SC', 'Serra Alta', 4583),
('4217600', 42, 17600, '4 - Sul', 'Santa Catarina', 'SC', 'Siderópolis', 4584),
('4217709', 42, 17709, '4 - Sul', 'Santa Catarina', 'SC', 'Sombrio', 4585),
('4217758', 42, 17758, '4 - Sul', 'Santa Catarina', 'SC', 'Sul Brasil', 4586),
('4217808', 42, 17808, '4 - Sul', 'Santa Catarina', 'SC', 'Taió', 4587),
('4217907', 42, 17907, '4 - Sul', 'Santa Catarina', 'SC', 'Tangará', 4588),
('4217956', 42, 17956, '4 - Sul', 'Santa Catarina', 'SC', 'Tigrinhos', 4589),
('4218004', 42, 18004, '4 - Sul', 'Santa Catarina', 'SC', 'Tijucas', 4590),
('4218103', 42, 18103, '4 - Sul', 'Santa Catarina', 'SC', 'Timbé do Sul', 4591),
('4218202', 42, 18202, '4 - Sul', 'Santa Catarina', 'SC', 'Timbó', 4592),
('4218251', 42, 18251, '4 - Sul', 'Santa Catarina', 'SC', 'Timbó Grande', 4593),
('4218301', 42, 18301, '4 - Sul', 'Santa Catarina', 'SC', 'Três Barras', 4594),
('4218350', 42, 18350, '4 - Sul', 'Santa Catarina', 'SC', 'Treviso', 4595),
('4218400', 42, 18400, '4 - Sul', 'Santa Catarina', 'SC', 'Treze de Maio', 4596),
('4218509', 42, 18509, '4 - Sul', 'Santa Catarina', 'SC', 'Treze Tílias', 4597),
('4218608', 42, 18608, '4 - Sul', 'Santa Catarina', 'SC', 'Trombudo Central', 4598),
('4218707', 42, 18707, '4 - Sul', 'Santa Catarina', 'SC', 'Tubarão', 4599),
('4218756', 42, 18756, '4 - Sul', 'Santa Catarina', 'SC', 'Tunápolis', 4600),
('4218806', 42, 18806, '4 - Sul', 'Santa Catarina', 'SC', 'Turvo', 4601),
('4218855', 42, 18855, '4 - Sul', 'Santa Catarina', 'SC', 'União do Oeste', 4602),
('4218905', 42, 18905, '4 - Sul', 'Santa Catarina', 'SC', 'Urubici', 4603),
('4218954', 42, 18954, '4 - Sul', 'Santa Catarina', 'SC', 'Urupema', 4604),
('4219002', 42, 19002, '4 - Sul', 'Santa Catarina', 'SC', 'Urussanga', 4605),
('4219101', 42, 19101, '4 - Sul', 'Santa Catarina', 'SC', 'Vargeão', 4606),
('4219150', 42, 19150, '4 - Sul', 'Santa Catarina', 'SC', 'Vargem', 4607),
('4219176', 42, 19176, '4 - Sul', 'Santa Catarina', 'SC', 'Vargem Bonita', 4608),
('4219200', 42, 19200, '4 - Sul', 'Santa Catarina', 'SC', 'Vidal Ramos', 4609),
('4219309', 42, 19309, '4 - Sul', 'Santa Catarina', 'SC', 'Videira', 4610),
('4219358', 42, 19358, '4 - Sul', 'Santa Catarina', 'SC', 'Vitor Meireles', 4611),
('4219408', 42, 19408, '4 - Sul', 'Santa Catarina', 'SC', 'Witmarsum', 4612),
('4219507', 42, 19507, '4 - Sul', 'Santa Catarina', 'SC', 'Xanxerê', 4613),
('4219606', 42, 19606, '4 - Sul', 'Santa Catarina', 'SC', 'Xavantina', 4614),
('4219705', 42, 19705, '4 - Sul', 'Santa Catarina', 'SC', 'Xaxim', 4615),
('4219853', 42, 19853, '4 - Sul', 'Santa Catarina', 'SC', 'Zortéa', 4616),
('4220000', 42, 20000, '4 - Sul', 'Santa Catarina', 'SC', 'Balneário Rincão', 4617),
('4300034', 43, 34, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Aceguá', 4618),
('4300059', 43, 59, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Água Santa', 4619),
('4300109', 43, 109, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Agudo', 4620),
('4300208', 43, 208, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ajuricaba', 4621),
('4300307', 43, 307, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Alecrim', 4622),
('4300406', 43, 406, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Alegrete', 4623),
('4300455', 43, 455, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Alegria', 4624),
('4300471', 43, 471, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Almirante Tamandaré do Sul', 4625),
('4300505', 43, 505, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Alpestre', 4626),
('4300554', 43, 554, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Alto Alegre', 4627),
('4300570', 43, 570, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Alto Feliz', 4628),
('4300604', 43, 604, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Alvorada', 4629),
('4300638', 43, 638, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Amaral Ferrador', 4630),
('4300646', 43, 646, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ametista do Sul', 4631),
('4300661', 43, 661, '4 - Sul', 'Rio Grande do Sul', 'RS', 'André da Rocha', 4632),
('4300703', 43, 703, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Anta Gorda', 4633),
('4300802', 43, 802, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Antônio Prado', 4634),
('4300851', 43, 851, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Arambaré', 4635),
('4300877', 43, 877, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Araricá', 4636),
('4300901', 43, 901, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Aratiba', 4637),
('4301008', 43, 1008, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Arroio do Meio', 4638),
('4301057', 43, 1057, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Arroio do Sal', 4639),
('4301073', 43, 1073, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Arroio do Padre', 4640),
('4301107', 43, 1107, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Arroio dos Ratos', 4641),
('4301206', 43, 1206, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Arroio do Tigre', 4642),
('4301305', 43, 1305, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Arroio Grande', 4643),
('4301404', 43, 1404, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Arvorezinha', 4644),
('4301503', 43, 1503, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Augusto Pestana', 4645),
('4301552', 43, 1552, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Áurea', 4646),
('4301602', 43, 1602, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Bagé', 4647),
('4301636', 43, 1636, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Balneário Pinhal', 4648),
('4301651', 43, 1651, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Barão', 4649),
('4301701', 43, 1701, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Barão de Cotegipe', 4650),
('4301750', 43, 1750, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Barão do Triunfo', 4651),
('4301800', 43, 1800, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Barracão', 4652),
('4301859', 43, 1859, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Barra do Guarita', 4653),
('4301875', 43, 1875, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Barra do Quaraí', 4654),
('4301909', 43, 1909, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Barra do Ribeiro', 4655),
('4301925', 43, 1925, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Barra do Rio Azul', 4656),
('4301958', 43, 1958, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Barra Funda', 4657),
('4302006', 43, 2006, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Barros Cassal', 4658),
('4302055', 43, 2055, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Benjamin Constant do Sul', 4659),
('4302105', 43, 2105, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Bento Gonçalves', 4660),
('4302154', 43, 2154, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Boa Vista das Missões', 4661),
('4302204', 43, 2204, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Boa Vista do Buricá', 4662),
('4302220', 43, 2220, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Boa Vista do Cadeado', 4663),
('4302238', 43, 2238, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Boa Vista do Incra', 4664),
('4302253', 43, 2253, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Boa Vista do Sul', 4665),
('4302303', 43, 2303, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Bom Jesus', 4666),
('4302352', 43, 2352, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Bom Princípio', 4667),
('4302378', 43, 2378, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Bom Progresso', 4668),
('4302402', 43, 2402, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Bom Retiro do Sul', 4669),
('4302451', 43, 2451, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Boqueirão do Leão', 4670),
('4302501', 43, 2501, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Bossoroca', 4671),
('4302584', 43, 2584, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Bozano', 4672),
('4302600', 43, 2600, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Braga', 4673),
('4302659', 43, 2659, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Brochier', 4674),
('4302709', 43, 2709, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Butiá', 4675),
('4302808', 43, 2808, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Caçapava do Sul', 4676),
('4302907', 43, 2907, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cacequi', 4677),
('4303004', 43, 3004, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cachoeira do Sul', 4678),
('4303103', 43, 3103, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cachoeirinha', 4679),
('4303202', 43, 3202, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cacique Doble', 4680),
('4303301', 43, 3301, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Caibaté', 4681),
('4303400', 43, 3400, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Caiçara', 4682),
('4303509', 43, 3509, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Camaquã', 4683),
('4303558', 43, 3558, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Camargo', 4684),
('4303608', 43, 3608, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cambará do Sul', 4685),
('4303673', 43, 3673, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Campestre da Serra', 4686),
('4303707', 43, 3707, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Campina das Missões', 4687),
('4303806', 43, 3806, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Campinas do Sul', 4688),
('4303905', 43, 3905, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Campo Bom', 4689),
('4304002', 43, 4002, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Campo Novo', 4690),
('4304101', 43, 4101, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Campos Borges', 4691),
('4304200', 43, 4200, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Candelária', 4692),
('4304309', 43, 4309, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cândido Godói', 4693),
('4304358', 43, 4358, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Candiota', 4694),
('4304408', 43, 4408, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Canela', 4695),
('4304507', 43, 4507, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Canguçu', 4696),
('4304606', 43, 4606, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Canoas', 4697),
('4304614', 43, 4614, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Canudos do Vale', 4698),
('4304622', 43, 4622, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Capão Bonito do Sul', 4699),
('4304630', 43, 4630, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Capão da Canoa', 4700),
('4304655', 43, 4655, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Capão do Cipó', 4701),
('4304663', 43, 4663, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Capão do Leão', 4702),
('4304671', 43, 4671, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Capivari do Sul', 4703),
('4304689', 43, 4689, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Capela de Santana', 4704),
('4304697', 43, 4697, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Capitão', 4705),
('4304705', 43, 4705, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Carazinho', 4706),
('4304713', 43, 4713, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Caraá', 4707),
('4304804', 43, 4804, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Carlos Barbosa', 4708),
('4304853', 43, 4853, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Carlos Gomes', 4709),
('4304903', 43, 4903, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Casca', 4710),
('4304952', 43, 4952, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Caseiros', 4711),
('4305009', 43, 5009, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Catuípe', 4712),
('4305108', 43, 5108, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Caxias do Sul', 4713),
('4305116', 43, 5116, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Centenário', 4714),
('4305124', 43, 5124, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cerrito', 4715),
('4305132', 43, 5132, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cerro Branco', 4716),
('4305157', 43, 5157, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cerro Grande', 4717),
('4305173', 43, 5173, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cerro Grande do Sul', 4718),
('4305207', 43, 5207, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cerro Largo', 4719),
('4305306', 43, 5306, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Chapada', 4720),
('4305355', 43, 5355, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Charqueadas', 4721),
('4305371', 43, 5371, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Charrua', 4722),
('4305405', 43, 5405, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Chiapetta', 4723),
('4305439', 43, 5439, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Chuí', 4724),
('4305447', 43, 5447, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Chuvisca', 4725),
('4305454', 43, 5454, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cidreira', 4726),
('4305504', 43, 5504, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ciríaco', 4727),
('4305587', 43, 5587, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Colinas', 4728),
('4305603', 43, 5603, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Colorado', 4729),
('4305702', 43, 5702, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Condor', 4730),
('4305801', 43, 5801, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Constantina', 4731),
('4305835', 43, 5835, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Coqueiro Baixo', 4732),
('4305850', 43, 5850, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Coqueiros do Sul', 4733),
('4305871', 43, 5871, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Coronel Barros', 4734),
('4305900', 43, 5900, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Coronel Bicaco', 4735),
('4305934', 43, 5934, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Coronel Pilar', 4736),
('4305959', 43, 5959, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cotiporã', 4737),
('4305975', 43, 5975, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Coxilha', 4738),
('4306007', 43, 6007, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Crissiumal', 4739),
('4306056', 43, 6056, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cristal', 4740),
('4306072', 43, 6072, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cristal do Sul', 4741),
('4306106', 43, 6106, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cruz Alta', 4742),
('4306130', 43, 6130, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cruzaltense', 4743),
('4306205', 43, 6205, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Cruzeiro do Sul', 4744),
('4306304', 43, 6304, '4 - Sul', 'Rio Grande do Sul', 'RS', 'David Canabarro', 4745),
('4306320', 43, 6320, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Derrubadas', 4746),
('4306353', 43, 6353, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Dezesseis de Novembro', 4747),
('4306379', 43, 6379, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Dilermando de Aguiar', 4748),
('4306403', 43, 6403, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Dois Irmãos', 4749),
('4306429', 43, 6429, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Dois Irmãos das Missões', 4750),
('4306452', 43, 6452, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Dois Lajeados', 4751),
('4306502', 43, 6502, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Dom Feliciano', 4752),
('4306551', 43, 6551, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Dom Pedro de Alcântara', 4753),
('4306601', 43, 6601, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Dom Pedrito', 4754),
('4306700', 43, 6700, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Dona Francisca', 4755),
('4306734', 43, 6734, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Doutor Maurício Cardoso', 4756),
('4306759', 43, 6759, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Doutor Ricardo', 4757),
('4306767', 43, 6767, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Eldorado do Sul', 4758),
('4306809', 43, 6809, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Encantado', 4759),
('4306908', 43, 6908, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Encruzilhada do Sul', 4760),
('4306924', 43, 6924, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Engenho Velho', 4761),
('4306932', 43, 6932, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Entre-Ijuís', 4762),
('4306957', 43, 6957, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Entre Rios do Sul', 4763),
('4306973', 43, 6973, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Erebango', 4764),
('4307005', 43, 7005, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Erechim', 4765),
('4307054', 43, 7054, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ernestina', 4766),
('4307104', 43, 7104, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Herval', 4767),
('4307203', 43, 7203, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Erval Grande', 4768),
('4307302', 43, 7302, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Erval Seco', 4769),
('4307401', 43, 7401, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Esmeralda', 4770),
('4307450', 43, 7450, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Esperança do Sul', 4771),
('4307500', 43, 7500, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Espumoso', 4772),
('4307559', 43, 7559, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Estação', 4773),
('4307609', 43, 7609, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Estância Velha', 4774),
('4307708', 43, 7708, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Esteio', 4775),
('4307807', 43, 7807, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Estrela', 4776),
('4307815', 43, 7815, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Estrela Velha', 4777),
('4307831', 43, 7831, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Eugênio de Castro', 4778),
('4307864', 43, 7864, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Fagundes Varela', 4779),
('4307906', 43, 7906, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Farroupilha', 4780),
('4308003', 43, 8003, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Faxinal do Soturno', 4781),
('4308052', 43, 8052, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Faxinalzinho', 4782),
('4308078', 43, 8078, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Fazenda Vilanova', 4783),
('4308102', 43, 8102, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Feliz', 4784),
('4308201', 43, 8201, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Flores da Cunha', 4785),
('4308250', 43, 8250, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Floriano Peixoto', 4786),
('4308300', 43, 8300, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Fontoura Xavier', 4787),
('4308409', 43, 8409, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Formigueiro', 4788),
('4308433', 43, 8433, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Forquetinha', 4789),
('4308458', 43, 8458, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Fortaleza dos Valos', 4790),
('4308508', 43, 8508, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Frederico Westphalen', 4791),
('4308607', 43, 8607, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Garibaldi', 4792),
('4308656', 43, 8656, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Garruchos', 4793),
('4308706', 43, 8706, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Gaurama', 4794),
('4308805', 43, 8805, '4 - Sul', 'Rio Grande do Sul', 'RS', 'General Câmara', 4795),
('4308854', 43, 8854, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Gentil', 4796),
('4308904', 43, 8904, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Getúlio Vargas', 4797),
('4309001', 43, 9001, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Giruá', 4798),
('4309050', 43, 9050, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Glorinha', 4799),
('4309100', 43, 9100, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Gramado', 4800),
('4309126', 43, 9126, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Gramado dos Loureiros', 4801),
('4309159', 43, 9159, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Gramado Xavier', 4802),
('4309209', 43, 9209, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Gravataí', 4803),
('4309258', 43, 9258, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Guabiju', 4804),
('4309308', 43, 9308, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Guaíba', 4805),
('4309407', 43, 9407, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Guaporé', 4806),
('4309506', 43, 9506, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Guarani das Missões', 4807),
('4309555', 43, 9555, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Harmonia', 4808),
('4309571', 43, 9571, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Herveiras', 4809),
('4309605', 43, 9605, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Horizontina', 4810),
('4309654', 43, 9654, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Hulha Negra', 4811),
('4309704', 43, 9704, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Humaitá', 4812),
('4309753', 43, 9753, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ibarama', 4813),
('4309803', 43, 9803, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ibiaçá', 4814),
('4309902', 43, 9902, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ibiraiaras', 4815),
('4309951', 43, 9951, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ibirapuitã', 4816),
('4310009', 43, 10009, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ibirubá', 4817),
('4310108', 43, 10108, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Igrejinha', 4818),
('4310207', 43, 10207, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ijuí', 4819),
('4310306', 43, 10306, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ilópolis', 4820),
('4310330', 43, 10330, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Imbé', 4821),
('4310363', 43, 10363, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Imigrante', 4822),
('4310405', 43, 10405, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Independência', 4823),
('4310413', 43, 10413, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Inhacorá', 4824),
('4310439', 43, 10439, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ipê', 4825),
('4310462', 43, 10462, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ipiranga do Sul', 4826),
('4310504', 43, 10504, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Iraí', 4827),
('4310538', 43, 10538, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Itaara', 4828),
('4310553', 43, 10553, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Itacurubi', 4829),
('4310579', 43, 10579, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Itapuca', 4830),
('4310603', 43, 10603, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Itaqui', 4831),
('4310652', 43, 10652, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Itati', 4832),
('4310702', 43, 10702, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Itatiba do Sul', 4833),
('4310751', 43, 10751, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ivorá', 4834),
('4310801', 43, 10801, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ivoti', 4835),
('4310850', 43, 10850, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Jaboticaba', 4836),
('4310876', 43, 10876, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Jacuizinho', 4837),
('4310900', 43, 10900, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Jacutinga', 4838),
('4311007', 43, 11007, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Jaguarão', 4839),
('4311106', 43, 11106, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Jaguari', 4840),
('4311122', 43, 11122, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Jaquirana', 4841),
('4311130', 43, 11130, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Jari', 4842),
('4311155', 43, 11155, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Jóia', 4843),
('4311205', 43, 11205, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Júlio de Castilhos', 4844),
('4311239', 43, 11239, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Lagoa Bonita do Sul', 4845),
('4311254', 43, 11254, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Lagoão', 4846),
('4311270', 43, 11270, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Lagoa dos Três Cantos', 4847),
('4311304', 43, 11304, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Lagoa Vermelha', 4848),
('4311403', 43, 11403, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Lajeado', 4849),
('4311429', 43, 11429, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Lajeado do Bugre', 4850),
('4311502', 43, 11502, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Lavras do Sul', 4851),
('4311601', 43, 11601, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Liberato Salzano', 4852),
('4311627', 43, 11627, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Lindolfo Collor', 4853),
('4311643', 43, 11643, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Linha Nova', 4854),
('4311700', 43, 11700, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Machadinho', 4855),
('4311718', 43, 11718, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Maçambará', 4856),
('4311734', 43, 11734, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Mampituba', 4857),
('4311759', 43, 11759, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Manoel Viana', 4858),
('4311775', 43, 11775, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Maquiné', 4859),
('4311791', 43, 11791, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Maratá', 4860),
('4311809', 43, 11809, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Marau', 4861),
('4311908', 43, 11908, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Marcelino Ramos', 4862),
('4311981', 43, 11981, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Mariana Pimentel', 4863),
('4312005', 43, 12005, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Mariano Moro', 4864),
('4312054', 43, 12054, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Marques de Souza', 4865),
('4312104', 43, 12104, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Mata', 4866),
('4312138', 43, 12138, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Mato Castelhano', 4867),
('4312153', 43, 12153, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Mato Leitão', 4868),
('4312179', 43, 12179, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Mato Queimado', 4869),
('4312203', 43, 12203, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Maximiliano de Almeida', 4870),
('4312252', 43, 12252, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Minas do Leão', 4871),
('4312302', 43, 12302, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Miraguaí', 4872),
('4312351', 43, 12351, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Montauri', 4873),
('4312377', 43, 12377, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Monte Alegre dos Campos', 4874),
('4312385', 43, 12385, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Monte Belo do Sul', 4875),
('4312401', 43, 12401, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Montenegro', 4876),
('4312427', 43, 12427, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Mormaço', 4877),
('4312443', 43, 12443, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Morrinhos do Sul', 4878),
('4312450', 43, 12450, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Morro Redondo', 4879),
('4312476', 43, 12476, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Morro Reuter', 4880),
('4312500', 43, 12500, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Mostardas', 4881),
('4312609', 43, 12609, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Muçum', 4882),
('4312617', 43, 12617, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Muitos Capões', 4883),
('4312625', 43, 12625, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Muliterno', 4884),
('4312658', 43, 12658, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Não-Me-Toque', 4885),
('4312674', 43, 12674, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nicolau Vergueiro', 4886),
('4312708', 43, 12708, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nonoai', 4887),
('4312757', 43, 12757, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nova Alvorada', 4888),
('4312807', 43, 12807, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nova Araçá', 4889),
('4312906', 43, 12906, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nova Bassano', 4890),
('4312955', 43, 12955, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nova Boa Vista', 4891),
('4313003', 43, 13003, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nova Bréscia', 4892),
('4313011', 43, 13011, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nova Candelária', 4893),
('4313037', 43, 13037, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nova Esperança do Sul', 4894),
('4313060', 43, 13060, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nova Hartz', 4895),
('4313086', 43, 13086, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nova Pádua', 4896),
('4313102', 43, 13102, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nova Palma', 4897),
('4313201', 43, 13201, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nova Petrópolis', 4898),
('4313300', 43, 13300, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nova Prata', 4899),
('4313334', 43, 13334, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nova Ramada', 4900),
('4313359', 43, 13359, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nova Roma do Sul', 4901),
('4313375', 43, 13375, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Nova Santa Rita', 4902),
('4313391', 43, 13391, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Novo Cabrais', 4903),
('4313409', 43, 13409, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Novo Hamburgo', 4904),
('4313425', 43, 13425, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Novo Machado', 4905),
('4313441', 43, 13441, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Novo Tiradentes', 4906),
('4313466', 43, 13466, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Novo Xingu', 4907),
('4313490', 43, 13490, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Novo Barreiro', 4908),
('4313508', 43, 13508, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Osório', 4909),
('4313607', 43, 13607, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Paim Filho', 4910),
('4313656', 43, 13656, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Palmares do Sul', 4911),
('4313706', 43, 13706, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Palmeira das Missões', 4912),
('4313805', 43, 13805, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Palmitinho', 4913),
('4313904', 43, 13904, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Panambi', 4914),
('4313953', 43, 13953, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Pantano Grande', 4915),
('4314001', 43, 14001, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Paraí', 4916),
('4314027', 43, 14027, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Paraíso do Sul', 4917),
('4314035', 43, 14035, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Pareci Novo', 4918),
('4314050', 43, 14050, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Parobé', 4919),
('4314068', 43, 14068, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Passa Sete', 4920),
('4314076', 43, 14076, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Passo do Sobrado', 4921),
('4314100', 43, 14100, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Passo Fundo', 4922),
('4314134', 43, 14134, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Paulo Bento', 4923),
('4314159', 43, 14159, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Paverama', 4924),
('4314175', 43, 14175, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Pedras Altas', 4925),
('4314209', 43, 14209, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Pedro Osório', 4926),
('4314308', 43, 14308, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Pejuçara', 4927),
('4314407', 43, 14407, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Pelotas', 4928),
('4314423', 43, 14423, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Picada Café', 4929),
('4314456', 43, 14456, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Pinhal', 4930),
('4314464', 43, 14464, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Pinhal da Serra', 4931),
('4314472', 43, 14472, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Pinhal Grande', 4932),
('4314498', 43, 14498, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Pinheirinho do Vale', 4933),
('4314506', 43, 14506, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Pinheiro Machado', 4934),
('4314548', 43, 14548, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Pinto Bandeira', 4935),
('4314555', 43, 14555, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Pirapó', 4936),
('4314605', 43, 14605, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Piratini', 4937),
('4314704', 43, 14704, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Planalto', 4938),
('4314753', 43, 14753, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Poço das Antas', 4939),
('4314779', 43, 14779, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Pontão', 4940),
('4314787', 43, 14787, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ponte Preta', 4941),
('4314803', 43, 14803, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Portão', 4942),
('4314902', 43, 14902, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Porto Alegre', 4943),
('4315008', 43, 15008, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Porto Lucena', 4944),
('4315057', 43, 15057, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Porto Mauá', 4945),
('4315073', 43, 15073, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Porto Vera Cruz', 4946),
('4315107', 43, 15107, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Porto Xavier', 4947),
('4315131', 43, 15131, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Pouso Novo', 4948),
('4315149', 43, 15149, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Presidente Lucena', 4949),
('4315156', 43, 15156, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Progresso', 4950),
('4315172', 43, 15172, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Protásio Alves', 4951),
('4315206', 43, 15206, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Putinga', 4952),
('4315305', 43, 15305, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Quaraí', 4953),
('4315313', 43, 15313, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Quatro Irmãos', 4954),
('4315321', 43, 15321, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Quevedos', 4955),
('4315354', 43, 15354, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Quinze de Novembro', 4956),
('4315404', 43, 15404, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Redentora', 4957),
('4315453', 43, 15453, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Relvado', 4958),
('4315503', 43, 15503, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Restinga Seca', 4959),
('4315552', 43, 15552, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Rio dos Índios', 4960),
('4315602', 43, 15602, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Rio Grande', 4961),
('4315701', 43, 15701, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Rio Pardo', 4962),
('4315750', 43, 15750, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Riozinho', 4963),
('4315800', 43, 15800, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Roca Sales', 4964),
('4315909', 43, 15909, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Rodeio Bonito', 4965),
('4315958', 43, 15958, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Rolador', 4966),
('4316006', 43, 16006, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Rolante', 4967),
('4316105', 43, 16105, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ronda Alta', 4968),
('4316204', 43, 16204, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Rondinha', 4969),
('4316303', 43, 16303, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Roque Gonzales', 4970),
('4316402', 43, 16402, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Rosário do Sul', 4971),
('4316428', 43, 16428, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Sagrada Família', 4972),
('4316436', 43, 16436, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Saldanha Marinho', 4973),
('4316451', 43, 16451, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Salto do Jacuí', 4974),
('4316477', 43, 16477, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Salvador das Missões', 4975),
('4316501', 43, 16501, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Salvador do Sul', 4976),
('4316600', 43, 16600, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Sananduva', 4977),
('4316709', 43, 16709, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santa Bárbara do Sul', 4978),
('4316733', 43, 16733, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santa Cecília do Sul', 4979),
('4316758', 43, 16758, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santa Clara do Sul', 4980),
('4316808', 43, 16808, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santa Cruz do Sul', 4981),
('4316907', 43, 16907, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santa Maria', 4982),
('4316956', 43, 16956, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santa Maria do Herval', 4983),
('4316972', 43, 16972, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santa Margarida do Sul', 4984),
('4317004', 43, 17004, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santana da Boa Vista', 4985),
('4317103', 43, 17103, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Sant''Ana do Livramento', 4986),
('4317202', 43, 17202, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santa Rosa', 4987),
('4317251', 43, 17251, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santa Tereza', 4988),
('4317301', 43, 17301, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santa Vitória do Palmar', 4989),
('4317400', 43, 17400, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santiago', 4990),
('4317509', 43, 17509, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santo Ângelo', 4991),
('4317558', 43, 17558, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santo Antônio do Palma', 4992),
('4317608', 43, 17608, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santo Antônio da Patrulha', 4993),
('4317707', 43, 17707, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santo Antônio das Missões', 4994),
('4317756', 43, 17756, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santo Antônio do Planalto', 4995),
('4317806', 43, 17806, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santo Augusto', 4996),
('4317905', 43, 17905, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santo Cristo', 4997),
('4317954', 43, 17954, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Santo Expedito do Sul', 4998),
('4318002', 43, 18002, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Borja', 4999),
('4318051', 43, 18051, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Domingos do Sul', 5000),
('4318101', 43, 18101, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Francisco de Assis', 5001),
('4318200', 43, 18200, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Francisco de Paula', 5002),
('4318309', 43, 18309, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Gabriel', 5003),
('4318408', 43, 18408, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Jerônimo', 5004),
('4318424', 43, 18424, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São João da Urtiga', 5005),
('4318432', 43, 18432, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São João do Polêsine', 5006),
('4318440', 43, 18440, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Jorge', 5007),
('4318457', 43, 18457, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São José das Missões', 5008),
('4318465', 43, 18465, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São José do Herval', 5009),
('4318481', 43, 18481, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São José do Hortêncio', 5010),
('4318499', 43, 18499, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São José do Inhacorá', 5011),
('4318507', 43, 18507, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São José do Norte', 5012),
('4318606', 43, 18606, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São José do Ouro', 5013),
('4318614', 43, 18614, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São José do Sul', 5014),
('4318622', 43, 18622, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São José dos Ausentes', 5015),
('4318705', 43, 18705, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Leopoldo', 5016),
('4318804', 43, 18804, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Lourenço do Sul', 5017),
('4318903', 43, 18903, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Luiz Gonzaga', 5018),
('4319000', 43, 19000, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Marcos', 5019),
('4319109', 43, 19109, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Martinho', 5020),
('4319125', 43, 19125, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Martinho da Serra', 5021),
('4319158', 43, 19158, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Miguel das Missões', 5022),
('4319208', 43, 19208, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Nicolau', 5023),
('4319307', 43, 19307, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Paulo das Missões', 5024),
('4319356', 43, 19356, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Pedro da Serra', 5025),
('4319364', 43, 19364, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Pedro das Missões', 5026),
('4319372', 43, 19372, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Pedro do Butiá', 5027),
('4319406', 43, 19406, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Pedro do Sul', 5028),
('4319505', 43, 19505, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Sebastião do Caí', 5029),
('4319604', 43, 19604, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Sepé', 5030),
('4319703', 43, 19703, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Valentim', 5031),
('4319711', 43, 19711, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Valentim do Sul', 5032),
('4319737', 43, 19737, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Valério do Sul', 5033),
('4319752', 43, 19752, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Vendelino', 5034),
('4319802', 43, 19802, '4 - Sul', 'Rio Grande do Sul', 'RS', 'São Vicente do Sul', 5035),
('4319901', 43, 19901, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Sapiranga', 5036),
('4320008', 43, 20008, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Sapucaia do Sul', 5037),
('4320107', 43, 20107, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Sarandi', 5038),
('4320206', 43, 20206, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Seberi', 5039),
('4320230', 43, 20230, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Sede Nova', 5040),
('4320263', 43, 20263, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Segredo', 5041),
('4320305', 43, 20305, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Selbach', 5042),
('4320321', 43, 20321, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Senador Salgado Filho', 5043),
('4320354', 43, 20354, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Sentinela do Sul', 5044),
('4320404', 43, 20404, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Serafina Corrêa', 5045),
('4320453', 43, 20453, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Sério', 5046),
('4320503', 43, 20503, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Sertão', 5047),
('4320552', 43, 20552, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Sertão Santana', 5048),
('4320578', 43, 20578, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Sete de Setembro', 5049),
('4320602', 43, 20602, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Severiano de Almeida', 5050),
('4320651', 43, 20651, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Silveira Martins', 5051),
('4320677', 43, 20677, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Sinimbu', 5052),
('4320701', 43, 20701, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Sobradinho', 5053),
('4320800', 43, 20800, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Soledade', 5054),
('4320859', 43, 20859, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Tabaí', 5055),
('4320909', 43, 20909, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Tapejara', 5056),
('4321006', 43, 21006, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Tapera', 5057),
('4321105', 43, 21105, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Tapes', 5058),
('4321204', 43, 21204, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Taquara', 5059),
('4321303', 43, 21303, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Taquari', 5060),
('4321329', 43, 21329, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Taquaruçu do Sul', 5061),
('4321352', 43, 21352, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Tavares', 5062),
('4321402', 43, 21402, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Tenente Portela', 5063),
('4321436', 43, 21436, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Terra de Areia', 5064),
('4321451', 43, 21451, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Teutônia', 5065),
('4321469', 43, 21469, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Tio Hugo', 5066),
('4321477', 43, 21477, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Tiradentes do Sul', 5067),
('4321493', 43, 21493, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Toropi', 5068),
('4321501', 43, 21501, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Torres', 5069),
('4321600', 43, 21600, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Tramandaí', 5070),
('4321626', 43, 21626, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Travesseiro', 5071),
('4321634', 43, 21634, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Três Arroios', 5072),
('4321667', 43, 21667, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Três Cachoeiras', 5073),
('4321709', 43, 21709, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Três Coroas', 5074),
('4321808', 43, 21808, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Três de Maio', 5075),
('4321832', 43, 21832, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Três Forquilhas', 5076),
('4321857', 43, 21857, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Três Palmeiras', 5077),
('4321907', 43, 21907, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Três Passos', 5078),
('4321956', 43, 21956, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Trindade do Sul', 5079),
('4322004', 43, 22004, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Triunfo', 5080),
('4322103', 43, 22103, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Tucunduva', 5081),
('4322152', 43, 22152, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Tunas', 5082),
('4322186', 43, 22186, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Tupanci do Sul', 5083),
('4322202', 43, 22202, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Tupanciretã', 5084),
('4322251', 43, 22251, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Tupandi', 5085),
('4322301', 43, 22301, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Tuparendi', 5086),
('4322327', 43, 22327, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Turuçu', 5087),
('4322343', 43, 22343, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Ubiretama', 5088),
('4322350', 43, 22350, '4 - Sul', 'Rio Grande do Sul', 'RS', 'União da Serra', 5089),
('4322376', 43, 22376, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Unistalda', 5090),
('4322400', 43, 22400, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Uruguaiana', 5091),
('4322509', 43, 22509, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Vacaria', 5092),
('4322525', 43, 22525, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Vale Verde', 5093),
('4322533', 43, 22533, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Vale do Sol', 5094),
('4322541', 43, 22541, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Vale Real', 5095),
('4322558', 43, 22558, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Vanini', 5096),
('4322608', 43, 22608, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Venâncio Aires', 5097),
('4322707', 43, 22707, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Vera Cruz', 5098),
('4322806', 43, 22806, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Veranópolis', 5099),
('4322855', 43, 22855, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Vespasiano Correa', 5100),
('4322905', 43, 22905, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Viadutos', 5101),
('4323002', 43, 23002, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Viamão', 5102),
('4323101', 43, 23101, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Vicente Dutra', 5103),
('4323200', 43, 23200, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Victor Graeff', 5104),
('4323309', 43, 23309, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Vila Flores', 5105),
('4323358', 43, 23358, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Vila Lângaro', 5106),
('4323408', 43, 23408, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Vila Maria', 5107),
('4323457', 43, 23457, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Vila Nova do Sul', 5108),
('4323507', 43, 23507, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Vista Alegre', 5109),
('4323606', 43, 23606, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Vista Alegre do Prata', 5110),
('4323705', 43, 23705, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Vista Gaúcha', 5111),
('4323754', 43, 23754, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Vitória das Missões', 5112),
('4323770', 43, 23770, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Westfalia', 5113),
('4323804', 43, 23804, '4 - Sul', 'Rio Grande do Sul', 'RS', 'Xangri-lá', 5114),
('5000203', 50, 203, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Água Clara', 5115),
('5000252', 50, 252, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Alcinópolis', 5116),
('5000609', 50, 609, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Amambai', 5117),
('5000708', 50, 708, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Anastácio', 5118),
('5000807', 50, 807, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Anaurilândia', 5119),
('5000856', 50, 856, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Angélica', 5120),
('5000906', 50, 906, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Antônio João', 5121),
('5001003', 50, 1003, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Aparecida do Taboado', 5122),
('5001102', 50, 1102, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Aquidauana', 5123),
('5001243', 50, 1243, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Aral Moreira', 5124),
('5001508', 50, 1508, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Bandeirantes', 5125),
('5001904', 50, 1904, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Bataguassu', 5126),
('5002001', 50, 2001, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Batayporã', 5127),
('5002100', 50, 2100, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Bela Vista', 5128),
('5002159', 50, 2159, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Bodoquena', 5129),
('5002209', 50, 2209, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Bonito', 5130),
('5002308', 50, 2308, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Brasilândia', 5131),
('5002407', 50, 2407, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Caarapó', 5132),
('5002605', 50, 2605, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Camapuã', 5133),
('5002704', 50, 2704, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Campo Grande', 5134),
('5002803', 50, 2803, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Caracol', 5135),
('5002902', 50, 2902, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Cassilândia', 5136),
('5002951', 50, 2951, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Chapadão do Sul', 5137),
('5003108', 50, 3108, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Corguinho', 5138),
('5003157', 50, 3157, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Coronel Sapucaia', 5139),
('5003207', 50, 3207, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Corumbá', 5140),
('5003256', 50, 3256, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Costa Rica', 5141),
('5003306', 50, 3306, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Coxim', 5142),
('5003454', 50, 3454, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Deodápolis', 5143),
('5003488', 50, 3488, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Dois Irmãos do Buriti', 5144),
('5003504', 50, 3504, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Douradina', 5145),
('5003702', 50, 3702, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Dourados', 5146),
('5003751', 50, 3751, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Eldorado', 5147),
('5003801', 50, 3801, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Fátima do Sul', 5148),
('5003900', 50, 3900, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Figueirão', 5149),
('5004007', 50, 4007, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Glória de Dourados', 5150),
('5004106', 50, 4106, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Guia Lopes da Laguna', 5151),
('5004304', 50, 4304, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Iguatemi', 5152),
('5004403', 50, 4403, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Inocência', 5153),
('5004502', 50, 4502, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Itaporã', 5154),
('5004601', 50, 4601, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Itaquiraí', 5155),
('5004700', 50, 4700, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Ivinhema', 5156),
('5004809', 50, 4809, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Japorã', 5157),
('5004908', 50, 4908, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Jaraguari', 5158),
('5005004', 50, 5004, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Jardim', 5159),
('5005103', 50, 5103, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Jateí', 5160),
('5005152', 50, 5152, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Juti', 5161),
('5005202', 50, 5202, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Ladário', 5162),
('5005251', 50, 5251, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Laguna Carapã', 5163),
('5005400', 50, 5400, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Maracaju', 5164),
('5005608', 50, 5608, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Miranda', 5165),
('5005681', 50, 5681, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Mundo Novo', 5166),
('5005707', 50, 5707, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Naviraí', 5167),
('5005806', 50, 5806, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Nioaque', 5168),
('5006002', 50, 6002, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Nova Alvorada do Sul', 5169),
('5006200', 50, 6200, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Nova Andradina', 5170),
('5006259', 50, 6259, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Novo Horizonte do Sul', 5171),
('5006275', 50, 6275, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Paraíso das Águas', 5172),
('5006309', 50, 6309, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Paranaíba', 5173),
('5006358', 50, 6358, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Paranhos', 5174),
('5006408', 50, 6408, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Pedro Gomes', 5175),
('5006606', 50, 6606, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Ponta Porã', 5176),
('5006903', 50, 6903, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Porto Murtinho', 5177);
INSERT INTO `ibge_uf` (`cod_mun`, `cod_uf`, `seila`, `regiao`, `estado`, `uf`, `municipio`, `id`) VALUES
('5007109', 50, 7109, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Ribas do Rio Pardo', 5178),
('5007208', 50, 7208, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Rio Brilhante', 5179),
('5007307', 50, 7307, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Rio Negro', 5180),
('5007406', 50, 7406, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Rio Verde de Mato Grosso', 5181),
('5007505', 50, 7505, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Rochedo', 5182),
('5007554', 50, 7554, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Santa Rita do Pardo', 5183),
('5007695', 50, 7695, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'São Gabriel do Oeste', 5184),
('5007703', 50, 7703, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Sete Quedas', 5185),
('5007802', 50, 7802, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Selvíria', 5186),
('5007901', 50, 7901, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Sidrolândia', 5187),
('5007935', 50, 7935, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Sonora', 5188),
('5007950', 50, 7950, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Tacuru', 5189),
('5007976', 50, 7976, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Taquarussu', 5190),
('5008008', 50, 8008, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Terenos', 5191),
('5008305', 50, 8305, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Três Lagoas', 5192),
('5008404', 50, 8404, '5 - Centro-Oeste', 'Mato Grosso do Sul', 'MS', 'Vicentina', 5193),
('5100102', 51, 102, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Acorizal', 5194),
('5100201', 51, 201, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Água Boa', 5195),
('5100250', 51, 250, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Alta Floresta', 5196),
('5100300', 51, 300, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Alto Araguaia', 5197),
('5100359', 51, 359, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Alto Boa Vista', 5198),
('5100409', 51, 409, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Alto Garças', 5199),
('5100508', 51, 508, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Alto Paraguai', 5200),
('5100607', 51, 607, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Alto Taquari', 5201),
('5100805', 51, 805, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Apiacás', 5202),
('5101001', 51, 1001, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Araguaiana', 5203),
('5101209', 51, 1209, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Araguainha', 5204),
('5101258', 51, 1258, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Araputanga', 5205),
('5101308', 51, 1308, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Arenápolis', 5206),
('5101407', 51, 1407, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Aripuanã', 5207),
('5101605', 51, 1605, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Barão de Melgaço', 5208),
('5101704', 51, 1704, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Barra do Bugres', 5209),
('5101803', 51, 1803, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Barra do Garças', 5210),
('5101852', 51, 1852, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Bom Jesus do Araguaia', 5211),
('5101902', 51, 1902, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Brasnorte', 5212),
('5102504', 51, 2504, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Cáceres', 5213),
('5102603', 51, 2603, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Campinápolis', 5214),
('5102637', 51, 2637, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Campo Novo do Parecis', 5215),
('5102678', 51, 2678, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Campo Verde', 5216),
('5102686', 51, 2686, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Campos de Júlio', 5217),
('5102694', 51, 2694, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Canabrava do Norte', 5218),
('5102702', 51, 2702, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Canarana', 5219),
('5102793', 51, 2793, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Carlinda', 5220),
('5102850', 51, 2850, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Castanheira', 5221),
('5103007', 51, 3007, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Chapada dos Guimarães', 5222),
('5103056', 51, 3056, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Cláudia', 5223),
('5103106', 51, 3106, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Cocalinho', 5224),
('5103205', 51, 3205, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Colíder', 5225),
('5103254', 51, 3254, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Colniza', 5226),
('5103304', 51, 3304, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Comodoro', 5227),
('5103353', 51, 3353, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Confresa', 5228),
('5103361', 51, 3361, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Conquista D''Oeste', 5229),
('5103379', 51, 3379, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Cotriguaçu', 5230),
('5103403', 51, 3403, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Cuiabá', 5231),
('5103437', 51, 3437, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Curvelândia', 5232),
('5103452', 51, 3452, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Denise', 5233),
('5103502', 51, 3502, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Diamantino', 5234),
('5103601', 51, 3601, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Dom Aquino', 5235),
('5103700', 51, 3700, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Feliz Natal', 5236),
('5103809', 51, 3809, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Figueirópolis D''Oeste', 5237),
('5103858', 51, 3858, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Gaúcha do Norte', 5238),
('5103908', 51, 3908, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'General Carneiro', 5239),
('5103957', 51, 3957, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Glória D''Oeste', 5240),
('5104104', 51, 4104, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Guarantã do Norte', 5241),
('5104203', 51, 4203, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Guiratinga', 5242),
('5104500', 51, 4500, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Indiavaí', 5243),
('5104526', 51, 4526, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Ipiranga do Norte', 5244),
('5104542', 51, 4542, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Itanhangá', 5245),
('5104559', 51, 4559, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Itaúba', 5246),
('5104609', 51, 4609, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Itiquira', 5247),
('5104807', 51, 4807, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Jaciara', 5248),
('5104906', 51, 4906, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Jangada', 5249),
('5105002', 51, 5002, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Jauru', 5250),
('5105101', 51, 5101, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Juara', 5251),
('5105150', 51, 5150, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Juína', 5252),
('5105176', 51, 5176, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Juruena', 5253),
('5105200', 51, 5200, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Juscimeira', 5254),
('5105234', 51, 5234, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Lambari D''Oeste', 5255),
('5105259', 51, 5259, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Lucas do Rio Verde', 5256),
('5105309', 51, 5309, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Luciara', 5257),
('5105507', 51, 5507, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Vila Bela da Santíssima Trindade', 5258),
('5105580', 51, 5580, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Marcelândia', 5259),
('5105606', 51, 5606, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Matupá', 5260),
('5105622', 51, 5622, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Mirassol d''Oeste', 5261),
('5105903', 51, 5903, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nobres', 5262),
('5106000', 51, 6000, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nortelândia', 5263),
('5106109', 51, 6109, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nossa Senhora do Livramento', 5264),
('5106158', 51, 6158, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nova Bandeirantes', 5265),
('5106174', 51, 6174, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nova Nazaré', 5266),
('5106182', 51, 6182, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nova Lacerda', 5267),
('5106190', 51, 6190, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nova Santa Helena', 5268),
('5106208', 51, 6208, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nova Brasilândia', 5269),
('5106216', 51, 6216, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nova Canaã do Norte', 5270),
('5106224', 51, 6224, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nova Mutum', 5271),
('5106232', 51, 6232, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nova Olímpia', 5272),
('5106240', 51, 6240, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nova Ubiratã', 5273),
('5106257', 51, 6257, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nova Xavantina', 5274),
('5106265', 51, 6265, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Novo Mundo', 5275),
('5106273', 51, 6273, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Novo Horizonte do Norte', 5276),
('5106281', 51, 6281, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Novo São Joaquim', 5277),
('5106299', 51, 6299, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Paranaíta', 5278),
('5106307', 51, 6307, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Paranatinga', 5279),
('5106315', 51, 6315, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Novo Santo Antônio', 5280),
('5106372', 51, 6372, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Pedra Preta', 5281),
('5106422', 51, 6422, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Peixoto de Azevedo', 5282),
('5106455', 51, 6455, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Planalto da Serra', 5283),
('5106505', 51, 6505, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Poconé', 5284),
('5106653', 51, 6653, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Pontal do Araguaia', 5285),
('5106703', 51, 6703, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Ponte Branca', 5286),
('5106752', 51, 6752, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Pontes e Lacerda', 5287),
('5106778', 51, 6778, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Porto Alegre do Norte', 5288),
('5106802', 51, 6802, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Porto dos Gaúchos', 5289),
('5106828', 51, 6828, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Porto Esperidião', 5290),
('5106851', 51, 6851, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Porto Estrela', 5291),
('5107008', 51, 7008, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Poxoréo', 5292),
('5107040', 51, 7040, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Primavera do Leste', 5293),
('5107065', 51, 7065, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Querência', 5294),
('5107107', 51, 7107, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'São José dos Quatro Marcos', 5295),
('5107156', 51, 7156, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Reserva do Cabaçal', 5296),
('5107180', 51, 7180, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Ribeirão Cascalheira', 5297),
('5107198', 51, 7198, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Ribeirãozinho', 5298),
('5107206', 51, 7206, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Rio Branco', 5299),
('5107248', 51, 7248, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Santa Carmem', 5300),
('5107263', 51, 7263, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Santo Afonso', 5301),
('5107297', 51, 7297, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'São José do Povo', 5302),
('5107305', 51, 7305, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'São José do Rio Claro', 5303),
('5107354', 51, 7354, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'São José do Xingu', 5304),
('5107404', 51, 7404, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'São Pedro da Cipa', 5305),
('5107578', 51, 7578, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Rondolândia', 5306),
('5107602', 51, 7602, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Rondonópolis', 5307),
('5107701', 51, 7701, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Rosário Oeste', 5308),
('5107743', 51, 7743, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Santa Cruz do Xingu', 5309),
('5107750', 51, 7750, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Salto do Céu', 5310),
('5107768', 51, 7768, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Santa Rita do Trivelato', 5311),
('5107776', 51, 7776, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Santa Terezinha', 5312),
('5107792', 51, 7792, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Santo Antônio do Leste', 5313),
('5107800', 51, 7800, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Santo Antônio do Leverger', 5314),
('5107859', 51, 7859, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'São Félix do Araguaia', 5315),
('5107875', 51, 7875, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Sapezal', 5316),
('5107883', 51, 7883, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Serra Nova Dourada', 5317),
('5107909', 51, 7909, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Sinop', 5318),
('5107925', 51, 7925, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Sorriso', 5319),
('5107941', 51, 7941, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Tabaporã', 5320),
('5107958', 51, 7958, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Tangará da Serra', 5321),
('5108006', 51, 8006, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Tapurah', 5322),
('5108055', 51, 8055, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Terra Nova do Norte', 5323),
('5108105', 51, 8105, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Tesouro', 5324),
('5108204', 51, 8204, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Torixoréu', 5325),
('5108303', 51, 8303, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'União do Sul', 5326),
('5108352', 51, 8352, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Vale de São Domingos', 5327),
('5108402', 51, 8402, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Várzea Grande', 5328),
('5108501', 51, 8501, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Vera', 5329),
('5108600', 51, 8600, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Vila Rica', 5330),
('5108808', 51, 8808, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nova Guarita', 5331),
('5108857', 51, 8857, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nova Marilândia', 5332),
('5108907', 51, 8907, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nova Maringá', 5333),
('5108956', 51, 8956, '5 - Centro-Oeste', 'Mato Grosso', 'MT', 'Nova Monte Verde', 5334),
('5200050', 52, 50, '5 - Centro-Oeste', 'Goiás', 'GO', 'Abadia de Goiás', 5335),
('5200100', 52, 100, '5 - Centro-Oeste', 'Goiás', 'GO', 'Abadiânia', 5336),
('5200134', 52, 134, '5 - Centro-Oeste', 'Goiás', 'GO', 'Acreúna', 5337),
('5200159', 52, 159, '5 - Centro-Oeste', 'Goiás', 'GO', 'Adelândia', 5338),
('5200175', 52, 175, '5 - Centro-Oeste', 'Goiás', 'GO', 'Água Fria de Goiás', 5339),
('5200209', 52, 209, '5 - Centro-Oeste', 'Goiás', 'GO', 'Água Limpa', 5340),
('5200258', 52, 258, '5 - Centro-Oeste', 'Goiás', 'GO', 'Águas Lindas de Goiás', 5341),
('5200308', 52, 308, '5 - Centro-Oeste', 'Goiás', 'GO', 'Alexânia', 5342),
('5200506', 52, 506, '5 - Centro-Oeste', 'Goiás', 'GO', 'Aloândia', 5343),
('5200555', 52, 555, '5 - Centro-Oeste', 'Goiás', 'GO', 'Alto Horizonte', 5344),
('5200605', 52, 605, '5 - Centro-Oeste', 'Goiás', 'GO', 'Alto Paraíso de Goiás', 5345),
('5200803', 52, 803, '5 - Centro-Oeste', 'Goiás', 'GO', 'Alvorada do Norte', 5346),
('5200829', 52, 829, '5 - Centro-Oeste', 'Goiás', 'GO', 'Amaralina', 5347),
('5200852', 52, 852, '5 - Centro-Oeste', 'Goiás', 'GO', 'Americano do Brasil', 5348),
('5200902', 52, 902, '5 - Centro-Oeste', 'Goiás', 'GO', 'Amorinópolis', 5349),
('5201108', 52, 1108, '5 - Centro-Oeste', 'Goiás', 'GO', 'Anápolis', 5350),
('5201207', 52, 1207, '5 - Centro-Oeste', 'Goiás', 'GO', 'Anhanguera', 5351),
('5201306', 52, 1306, '5 - Centro-Oeste', 'Goiás', 'GO', 'Anicuns', 5352),
('5201405', 52, 1405, '5 - Centro-Oeste', 'Goiás', 'GO', 'Aparecida de Goiânia', 5353),
('5201454', 52, 1454, '5 - Centro-Oeste', 'Goiás', 'GO', 'Aparecida do Rio Doce', 5354),
('5201504', 52, 1504, '5 - Centro-Oeste', 'Goiás', 'GO', 'Aporé', 5355),
('5201603', 52, 1603, '5 - Centro-Oeste', 'Goiás', 'GO', 'Araçu', 5356),
('5201702', 52, 1702, '5 - Centro-Oeste', 'Goiás', 'GO', 'Aragarças', 5357),
('5201801', 52, 1801, '5 - Centro-Oeste', 'Goiás', 'GO', 'Aragoiânia', 5358),
('5202155', 52, 2155, '5 - Centro-Oeste', 'Goiás', 'GO', 'Araguapaz', 5359),
('5202353', 52, 2353, '5 - Centro-Oeste', 'Goiás', 'GO', 'Arenópolis', 5360),
('5202502', 52, 2502, '5 - Centro-Oeste', 'Goiás', 'GO', 'Aruanã', 5361),
('5202601', 52, 2601, '5 - Centro-Oeste', 'Goiás', 'GO', 'Aurilândia', 5362),
('5202809', 52, 2809, '5 - Centro-Oeste', 'Goiás', 'GO', 'Avelinópolis', 5363),
('5203104', 52, 3104, '5 - Centro-Oeste', 'Goiás', 'GO', 'Baliza', 5364),
('5203203', 52, 3203, '5 - Centro-Oeste', 'Goiás', 'GO', 'Barro Alto', 5365),
('5203302', 52, 3302, '5 - Centro-Oeste', 'Goiás', 'GO', 'Bela Vista de Goiás', 5366),
('5203401', 52, 3401, '5 - Centro-Oeste', 'Goiás', 'GO', 'Bom Jardim de Goiás', 5367),
('5203500', 52, 3500, '5 - Centro-Oeste', 'Goiás', 'GO', 'Bom Jesus de Goiás', 5368),
('5203559', 52, 3559, '5 - Centro-Oeste', 'Goiás', 'GO', 'Bonfinópolis', 5369),
('5203575', 52, 3575, '5 - Centro-Oeste', 'Goiás', 'GO', 'Bonópolis', 5370),
('5203609', 52, 3609, '5 - Centro-Oeste', 'Goiás', 'GO', 'Brazabrantes', 5371),
('5203807', 52, 3807, '5 - Centro-Oeste', 'Goiás', 'GO', 'Britânia', 5372),
('5203906', 52, 3906, '5 - Centro-Oeste', 'Goiás', 'GO', 'Buriti Alegre', 5373),
('5203939', 52, 3939, '5 - Centro-Oeste', 'Goiás', 'GO', 'Buriti de Goiás', 5374),
('5203962', 52, 3962, '5 - Centro-Oeste', 'Goiás', 'GO', 'Buritinópolis', 5375),
('5204003', 52, 4003, '5 - Centro-Oeste', 'Goiás', 'GO', 'Cabeceiras', 5376),
('5204102', 52, 4102, '5 - Centro-Oeste', 'Goiás', 'GO', 'Cachoeira Alta', 5377),
('5204201', 52, 4201, '5 - Centro-Oeste', 'Goiás', 'GO', 'Cachoeira de Goiás', 5378),
('5204250', 52, 4250, '5 - Centro-Oeste', 'Goiás', 'GO', 'Cachoeira Dourada', 5379),
('5204300', 52, 4300, '5 - Centro-Oeste', 'Goiás', 'GO', 'Caçu', 5380),
('5204409', 52, 4409, '5 - Centro-Oeste', 'Goiás', 'GO', 'Caiapônia', 5381),
('5204508', 52, 4508, '5 - Centro-Oeste', 'Goiás', 'GO', 'Caldas Novas', 5382),
('5204557', 52, 4557, '5 - Centro-Oeste', 'Goiás', 'GO', 'Caldazinha', 5383),
('5204607', 52, 4607, '5 - Centro-Oeste', 'Goiás', 'GO', 'Campestre de Goiás', 5384),
('5204656', 52, 4656, '5 - Centro-Oeste', 'Goiás', 'GO', 'Campinaçu', 5385),
('5204706', 52, 4706, '5 - Centro-Oeste', 'Goiás', 'GO', 'Campinorte', 5386),
('5204805', 52, 4805, '5 - Centro-Oeste', 'Goiás', 'GO', 'Campo Alegre de Goiás', 5387),
('5204854', 52, 4854, '5 - Centro-Oeste', 'Goiás', 'GO', 'Campo Limpo de Goiás', 5388),
('5204904', 52, 4904, '5 - Centro-Oeste', 'Goiás', 'GO', 'Campos Belos', 5389),
('5204953', 52, 4953, '5 - Centro-Oeste', 'Goiás', 'GO', 'Campos Verdes', 5390),
('5205000', 52, 5000, '5 - Centro-Oeste', 'Goiás', 'GO', 'Carmo do Rio Verde', 5391),
('5205059', 52, 5059, '5 - Centro-Oeste', 'Goiás', 'GO', 'Castelândia', 5392),
('5205109', 52, 5109, '5 - Centro-Oeste', 'Goiás', 'GO', 'Catalão', 5393),
('5205208', 52, 5208, '5 - Centro-Oeste', 'Goiás', 'GO', 'Caturaí', 5394),
('5205307', 52, 5307, '5 - Centro-Oeste', 'Goiás', 'GO', 'Cavalcante', 5395),
('5205406', 52, 5406, '5 - Centro-Oeste', 'Goiás', 'GO', 'Ceres', 5396),
('5205455', 52, 5455, '5 - Centro-Oeste', 'Goiás', 'GO', 'Cezarina', 5397),
('5205471', 52, 5471, '5 - Centro-Oeste', 'Goiás', 'GO', 'Chapadão do Céu', 5398),
('5205497', 52, 5497, '5 - Centro-Oeste', 'Goiás', 'GO', 'Cidade Ocidental', 5399),
('5205513', 52, 5513, '5 - Centro-Oeste', 'Goiás', 'GO', 'Cocalzinho de Goiás', 5400),
('5205521', 52, 5521, '5 - Centro-Oeste', 'Goiás', 'GO', 'Colinas do Sul', 5401),
('5205703', 52, 5703, '5 - Centro-Oeste', 'Goiás', 'GO', 'Córrego do Ouro', 5402),
('5205802', 52, 5802, '5 - Centro-Oeste', 'Goiás', 'GO', 'Corumbá de Goiás', 5403),
('5205901', 52, 5901, '5 - Centro-Oeste', 'Goiás', 'GO', 'Corumbaíba', 5404),
('5206206', 52, 6206, '5 - Centro-Oeste', 'Goiás', 'GO', 'Cristalina', 5405),
('5206305', 52, 6305, '5 - Centro-Oeste', 'Goiás', 'GO', 'Cristianópolis', 5406),
('5206404', 52, 6404, '5 - Centro-Oeste', 'Goiás', 'GO', 'Crixás', 5407),
('5206503', 52, 6503, '5 - Centro-Oeste', 'Goiás', 'GO', 'Cromínia', 5408),
('5206602', 52, 6602, '5 - Centro-Oeste', 'Goiás', 'GO', 'Cumari', 5409),
('5206701', 52, 6701, '5 - Centro-Oeste', 'Goiás', 'GO', 'Damianópolis', 5410),
('5206800', 52, 6800, '5 - Centro-Oeste', 'Goiás', 'GO', 'Damolândia', 5411),
('5206909', 52, 6909, '5 - Centro-Oeste', 'Goiás', 'GO', 'Davinópolis', 5412),
('5207105', 52, 7105, '5 - Centro-Oeste', 'Goiás', 'GO', 'Diorama', 5413),
('5207253', 52, 7253, '5 - Centro-Oeste', 'Goiás', 'GO', 'Doverlândia', 5414),
('5207352', 52, 7352, '5 - Centro-Oeste', 'Goiás', 'GO', 'Edealina', 5415),
('5207402', 52, 7402, '5 - Centro-Oeste', 'Goiás', 'GO', 'Edéia', 5416),
('5207501', 52, 7501, '5 - Centro-Oeste', 'Goiás', 'GO', 'Estrela do Norte', 5417),
('5207535', 52, 7535, '5 - Centro-Oeste', 'Goiás', 'GO', 'Faina', 5418),
('5207600', 52, 7600, '5 - Centro-Oeste', 'Goiás', 'GO', 'Fazenda Nova', 5419),
('5207808', 52, 7808, '5 - Centro-Oeste', 'Goiás', 'GO', 'Firminópolis', 5420),
('5207907', 52, 7907, '5 - Centro-Oeste', 'Goiás', 'GO', 'Flores de Goiás', 5421),
('5208004', 52, 8004, '5 - Centro-Oeste', 'Goiás', 'GO', 'Formosa', 5422),
('5208103', 52, 8103, '5 - Centro-Oeste', 'Goiás', 'GO', 'Formoso', 5423),
('5208152', 52, 8152, '5 - Centro-Oeste', 'Goiás', 'GO', 'Gameleira de Goiás', 5424),
('5208301', 52, 8301, '5 - Centro-Oeste', 'Goiás', 'GO', 'Divinópolis de Goiás', 5425),
('5208400', 52, 8400, '5 - Centro-Oeste', 'Goiás', 'GO', 'Goianápolis', 5426),
('5208509', 52, 8509, '5 - Centro-Oeste', 'Goiás', 'GO', 'Goiandira', 5427),
('5208608', 52, 8608, '5 - Centro-Oeste', 'Goiás', 'GO', 'Goianésia', 5428),
('5208707', 52, 8707, '5 - Centro-Oeste', 'Goiás', 'GO', 'Goiânia', 5429),
('5208806', 52, 8806, '5 - Centro-Oeste', 'Goiás', 'GO', 'Goianira', 5430),
('5208905', 52, 8905, '5 - Centro-Oeste', 'Goiás', 'GO', 'Goiás', 5431),
('5209101', 52, 9101, '5 - Centro-Oeste', 'Goiás', 'GO', 'Goiatuba', 5432),
('5209150', 52, 9150, '5 - Centro-Oeste', 'Goiás', 'GO', 'Gouvelândia', 5433),
('5209200', 52, 9200, '5 - Centro-Oeste', 'Goiás', 'GO', 'Guapó', 5434),
('5209291', 52, 9291, '5 - Centro-Oeste', 'Goiás', 'GO', 'Guaraíta', 5435),
('5209408', 52, 9408, '5 - Centro-Oeste', 'Goiás', 'GO', 'Guarani de Goiás', 5436),
('5209457', 52, 9457, '5 - Centro-Oeste', 'Goiás', 'GO', 'Guarinos', 5437),
('5209606', 52, 9606, '5 - Centro-Oeste', 'Goiás', 'GO', 'Heitoraí', 5438),
('5209705', 52, 9705, '5 - Centro-Oeste', 'Goiás', 'GO', 'Hidrolândia', 5439),
('5209804', 52, 9804, '5 - Centro-Oeste', 'Goiás', 'GO', 'Hidrolina', 5440),
('5209903', 52, 9903, '5 - Centro-Oeste', 'Goiás', 'GO', 'Iaciara', 5441),
('5209937', 52, 9937, '5 - Centro-Oeste', 'Goiás', 'GO', 'Inaciolândia', 5442),
('5209952', 52, 9952, '5 - Centro-Oeste', 'Goiás', 'GO', 'Indiara', 5443),
('5210000', 52, 10000, '5 - Centro-Oeste', 'Goiás', 'GO', 'Inhumas', 5444),
('5210109', 52, 10109, '5 - Centro-Oeste', 'Goiás', 'GO', 'Ipameri', 5445),
('5210158', 52, 10158, '5 - Centro-Oeste', 'Goiás', 'GO', 'Ipiranga de Goiás', 5446),
('5210208', 52, 10208, '5 - Centro-Oeste', 'Goiás', 'GO', 'Iporá', 5447),
('5210307', 52, 10307, '5 - Centro-Oeste', 'Goiás', 'GO', 'Israelândia', 5448),
('5210406', 52, 10406, '5 - Centro-Oeste', 'Goiás', 'GO', 'Itaberaí', 5449),
('5210562', 52, 10562, '5 - Centro-Oeste', 'Goiás', 'GO', 'Itaguari', 5450),
('5210604', 52, 10604, '5 - Centro-Oeste', 'Goiás', 'GO', 'Itaguaru', 5451),
('5210802', 52, 10802, '5 - Centro-Oeste', 'Goiás', 'GO', 'Itajá', 5452),
('5210901', 52, 10901, '5 - Centro-Oeste', 'Goiás', 'GO', 'Itapaci', 5453),
('5211008', 52, 11008, '5 - Centro-Oeste', 'Goiás', 'GO', 'Itapirapuã', 5454),
('5211206', 52, 11206, '5 - Centro-Oeste', 'Goiás', 'GO', 'Itapuranga', 5455),
('5211305', 52, 11305, '5 - Centro-Oeste', 'Goiás', 'GO', 'Itarumã', 5456),
('5211404', 52, 11404, '5 - Centro-Oeste', 'Goiás', 'GO', 'Itauçu', 5457),
('5211503', 52, 11503, '5 - Centro-Oeste', 'Goiás', 'GO', 'Itumbiara', 5458),
('5211602', 52, 11602, '5 - Centro-Oeste', 'Goiás', 'GO', 'Ivolândia', 5459),
('5211701', 52, 11701, '5 - Centro-Oeste', 'Goiás', 'GO', 'Jandaia', 5460),
('5211800', 52, 11800, '5 - Centro-Oeste', 'Goiás', 'GO', 'Jaraguá', 5461),
('5211909', 52, 11909, '5 - Centro-Oeste', 'Goiás', 'GO', 'Jataí', 5462),
('5212006', 52, 12006, '5 - Centro-Oeste', 'Goiás', 'GO', 'Jaupaci', 5463),
('5212055', 52, 12055, '5 - Centro-Oeste', 'Goiás', 'GO', 'Jesúpolis', 5464),
('5212105', 52, 12105, '5 - Centro-Oeste', 'Goiás', 'GO', 'Joviânia', 5465),
('5212204', 52, 12204, '5 - Centro-Oeste', 'Goiás', 'GO', 'Jussara', 5466),
('5212253', 52, 12253, '5 - Centro-Oeste', 'Goiás', 'GO', 'Lagoa Santa', 5467),
('5212303', 52, 12303, '5 - Centro-Oeste', 'Goiás', 'GO', 'Leopoldo de Bulhões', 5468),
('5212501', 52, 12501, '5 - Centro-Oeste', 'Goiás', 'GO', 'Luziânia', 5469),
('5212600', 52, 12600, '5 - Centro-Oeste', 'Goiás', 'GO', 'Mairipotaba', 5470),
('5212709', 52, 12709, '5 - Centro-Oeste', 'Goiás', 'GO', 'Mambaí', 5471),
('5212808', 52, 12808, '5 - Centro-Oeste', 'Goiás', 'GO', 'Mara Rosa', 5472),
('5212907', 52, 12907, '5 - Centro-Oeste', 'Goiás', 'GO', 'Marzagão', 5473),
('5212956', 52, 12956, '5 - Centro-Oeste', 'Goiás', 'GO', 'Matrinchã', 5474),
('5213004', 52, 13004, '5 - Centro-Oeste', 'Goiás', 'GO', 'Maurilândia', 5475),
('5213053', 52, 13053, '5 - Centro-Oeste', 'Goiás', 'GO', 'Mimoso de Goiás', 5476),
('5213087', 52, 13087, '5 - Centro-Oeste', 'Goiás', 'GO', 'Minaçu', 5477),
('5213103', 52, 13103, '5 - Centro-Oeste', 'Goiás', 'GO', 'Mineiros', 5478),
('5213400', 52, 13400, '5 - Centro-Oeste', 'Goiás', 'GO', 'Moiporá', 5479),
('5213509', 52, 13509, '5 - Centro-Oeste', 'Goiás', 'GO', 'Monte Alegre de Goiás', 5480),
('5213707', 52, 13707, '5 - Centro-Oeste', 'Goiás', 'GO', 'Montes Claros de Goiás', 5481),
('5213756', 52, 13756, '5 - Centro-Oeste', 'Goiás', 'GO', 'Montividiu', 5482),
('5213772', 52, 13772, '5 - Centro-Oeste', 'Goiás', 'GO', 'Montividiu do Norte', 5483),
('5213806', 52, 13806, '5 - Centro-Oeste', 'Goiás', 'GO', 'Morrinhos', 5484),
('5213855', 52, 13855, '5 - Centro-Oeste', 'Goiás', 'GO', 'Morro Agudo de Goiás', 5485),
('5213905', 52, 13905, '5 - Centro-Oeste', 'Goiás', 'GO', 'Mossâmedes', 5486),
('5214002', 52, 14002, '5 - Centro-Oeste', 'Goiás', 'GO', 'Mozarlândia', 5487),
('5214051', 52, 14051, '5 - Centro-Oeste', 'Goiás', 'GO', 'Mundo Novo', 5488),
('5214101', 52, 14101, '5 - Centro-Oeste', 'Goiás', 'GO', 'Mutunópolis', 5489),
('5214408', 52, 14408, '5 - Centro-Oeste', 'Goiás', 'GO', 'Nazário', 5490),
('5214507', 52, 14507, '5 - Centro-Oeste', 'Goiás', 'GO', 'Nerópolis', 5491),
('5214606', 52, 14606, '5 - Centro-Oeste', 'Goiás', 'GO', 'Niquelândia', 5492),
('5214705', 52, 14705, '5 - Centro-Oeste', 'Goiás', 'GO', 'Nova América', 5493),
('5214804', 52, 14804, '5 - Centro-Oeste', 'Goiás', 'GO', 'Nova Aurora', 5494),
('5214838', 52, 14838, '5 - Centro-Oeste', 'Goiás', 'GO', 'Nova Crixás', 5495),
('5214861', 52, 14861, '5 - Centro-Oeste', 'Goiás', 'GO', 'Nova Glória', 5496),
('5214879', 52, 14879, '5 - Centro-Oeste', 'Goiás', 'GO', 'Nova Iguaçu de Goiás', 5497),
('5214903', 52, 14903, '5 - Centro-Oeste', 'Goiás', 'GO', 'Nova Roma', 5498),
('5215009', 52, 15009, '5 - Centro-Oeste', 'Goiás', 'GO', 'Nova Veneza', 5499),
('5215207', 52, 15207, '5 - Centro-Oeste', 'Goiás', 'GO', 'Novo Brasil', 5500),
('5215231', 52, 15231, '5 - Centro-Oeste', 'Goiás', 'GO', 'Novo Gama', 5501),
('5215256', 52, 15256, '5 - Centro-Oeste', 'Goiás', 'GO', 'Novo Planalto', 5502),
('5215306', 52, 15306, '5 - Centro-Oeste', 'Goiás', 'GO', 'Orizona', 5503),
('5215405', 52, 15405, '5 - Centro-Oeste', 'Goiás', 'GO', 'Ouro Verde de Goiás', 5504),
('5215504', 52, 15504, '5 - Centro-Oeste', 'Goiás', 'GO', 'Ouvidor', 5505),
('5215603', 52, 15603, '5 - Centro-Oeste', 'Goiás', 'GO', 'Padre Bernardo', 5506),
('5215652', 52, 15652, '5 - Centro-Oeste', 'Goiás', 'GO', 'Palestina de Goiás', 5507),
('5215702', 52, 15702, '5 - Centro-Oeste', 'Goiás', 'GO', 'Palmeiras de Goiás', 5508),
('5215801', 52, 15801, '5 - Centro-Oeste', 'Goiás', 'GO', 'Palmelo', 5509),
('5215900', 52, 15900, '5 - Centro-Oeste', 'Goiás', 'GO', 'Palminópolis', 5510),
('5216007', 52, 16007, '5 - Centro-Oeste', 'Goiás', 'GO', 'Panamá', 5511),
('5216304', 52, 16304, '5 - Centro-Oeste', 'Goiás', 'GO', 'Paranaiguara', 5512),
('5216403', 52, 16403, '5 - Centro-Oeste', 'Goiás', 'GO', 'Paraúna', 5513),
('5216452', 52, 16452, '5 - Centro-Oeste', 'Goiás', 'GO', 'Perolândia', 5514),
('5216809', 52, 16809, '5 - Centro-Oeste', 'Goiás', 'GO', 'Petrolina de Goiás', 5515),
('5216908', 52, 16908, '5 - Centro-Oeste', 'Goiás', 'GO', 'Pilar de Goiás', 5516),
('5217104', 52, 17104, '5 - Centro-Oeste', 'Goiás', 'GO', 'Piracanjuba', 5517),
('5217203', 52, 17203, '5 - Centro-Oeste', 'Goiás', 'GO', 'Piranhas', 5518),
('5217302', 52, 17302, '5 - Centro-Oeste', 'Goiás', 'GO', 'Pirenópolis', 5519),
('5217401', 52, 17401, '5 - Centro-Oeste', 'Goiás', 'GO', 'Pires do Rio', 5520),
('5217609', 52, 17609, '5 - Centro-Oeste', 'Goiás', 'GO', 'Planaltina', 5521),
('5217708', 52, 17708, '5 - Centro-Oeste', 'Goiás', 'GO', 'Pontalina', 5522),
('5218003', 52, 18003, '5 - Centro-Oeste', 'Goiás', 'GO', 'Porangatu', 5523),
('5218052', 52, 18052, '5 - Centro-Oeste', 'Goiás', 'GO', 'Porteirão', 5524),
('5218102', 52, 18102, '5 - Centro-Oeste', 'Goiás', 'GO', 'Portelândia', 5525),
('5218300', 52, 18300, '5 - Centro-Oeste', 'Goiás', 'GO', 'Posse', 5526),
('5218391', 52, 18391, '5 - Centro-Oeste', 'Goiás', 'GO', 'Professor Jamil', 5527),
('5218508', 52, 18508, '5 - Centro-Oeste', 'Goiás', 'GO', 'Quirinópolis', 5528),
('5218607', 52, 18607, '5 - Centro-Oeste', 'Goiás', 'GO', 'Rialma', 5529),
('5218706', 52, 18706, '5 - Centro-Oeste', 'Goiás', 'GO', 'Rianápolis', 5530),
('5218789', 52, 18789, '5 - Centro-Oeste', 'Goiás', 'GO', 'Rio Quente', 5531),
('5218805', 52, 18805, '5 - Centro-Oeste', 'Goiás', 'GO', 'Rio Verde', 5532),
('5218904', 52, 18904, '5 - Centro-Oeste', 'Goiás', 'GO', 'Rubiataba', 5533),
('5219001', 52, 19001, '5 - Centro-Oeste', 'Goiás', 'GO', 'Sanclerlândia', 5534),
('5219100', 52, 19100, '5 - Centro-Oeste', 'Goiás', 'GO', 'Santa Bárbara de Goiás', 5535),
('5219209', 52, 19209, '5 - Centro-Oeste', 'Goiás', 'GO', 'Santa Cruz de Goiás', 5536),
('5219258', 52, 19258, '5 - Centro-Oeste', 'Goiás', 'GO', 'Santa Fé de Goiás', 5537),
('5219308', 52, 19308, '5 - Centro-Oeste', 'Goiás', 'GO', 'Santa Helena de Goiás', 5538),
('5219357', 52, 19357, '5 - Centro-Oeste', 'Goiás', 'GO', 'Santa Isabel', 5539),
('5219407', 52, 19407, '5 - Centro-Oeste', 'Goiás', 'GO', 'Santa Rita do Araguaia', 5540),
('5219456', 52, 19456, '5 - Centro-Oeste', 'Goiás', 'GO', 'Santa Rita do Novo Destino', 5541),
('5219506', 52, 19506, '5 - Centro-Oeste', 'Goiás', 'GO', 'Santa Rosa de Goiás', 5542),
('5219605', 52, 19605, '5 - Centro-Oeste', 'Goiás', 'GO', 'Santa Tereza de Goiás', 5543),
('5219704', 52, 19704, '5 - Centro-Oeste', 'Goiás', 'GO', 'Santa Terezinha de Goiás', 5544),
('5219712', 52, 19712, '5 - Centro-Oeste', 'Goiás', 'GO', 'Santo Antônio da Barra', 5545),
('5219738', 52, 19738, '5 - Centro-Oeste', 'Goiás', 'GO', 'Santo Antônio de Goiás', 5546),
('5219753', 52, 19753, '5 - Centro-Oeste', 'Goiás', 'GO', 'Santo Antônio do Descoberto', 5547),
('5219803', 52, 19803, '5 - Centro-Oeste', 'Goiás', 'GO', 'São Domingos', 5548),
('5219902', 52, 19902, '5 - Centro-Oeste', 'Goiás', 'GO', 'São Francisco de Goiás', 5549),
('5220009', 52, 20009, '5 - Centro-Oeste', 'Goiás', 'GO', 'São João d''Aliança', 5550),
('5220058', 52, 20058, '5 - Centro-Oeste', 'Goiás', 'GO', 'São João da Paraúna', 5551),
('5220108', 52, 20108, '5 - Centro-Oeste', 'Goiás', 'GO', 'São Luís de Montes Belos', 5552),
('5220157', 52, 20157, '5 - Centro-Oeste', 'Goiás', 'GO', 'São Luíz do Norte', 5553),
('5220207', 52, 20207, '5 - Centro-Oeste', 'Goiás', 'GO', 'São Miguel do Araguaia', 5554),
('5220264', 52, 20264, '5 - Centro-Oeste', 'Goiás', 'GO', 'São Miguel do Passa Quatro', 5555),
('5220280', 52, 20280, '5 - Centro-Oeste', 'Goiás', 'GO', 'São Patrício', 5556),
('5220405', 52, 20405, '5 - Centro-Oeste', 'Goiás', 'GO', 'São Simão', 5557),
('5220454', 52, 20454, '5 - Centro-Oeste', 'Goiás', 'GO', 'Senador Canedo', 5558),
('5220504', 52, 20504, '5 - Centro-Oeste', 'Goiás', 'GO', 'Serranópolis', 5559),
('5220603', 52, 20603, '5 - Centro-Oeste', 'Goiás', 'GO', 'Silvânia', 5560),
('5220686', 52, 20686, '5 - Centro-Oeste', 'Goiás', 'GO', 'Simolândia', 5561),
('5220702', 52, 20702, '5 - Centro-Oeste', 'Goiás', 'GO', 'Sítio d''Abadia', 5562),
('5221007', 52, 21007, '5 - Centro-Oeste', 'Goiás', 'GO', 'Taquaral de Goiás', 5563),
('5221080', 52, 21080, '5 - Centro-Oeste', 'Goiás', 'GO', 'Teresina de Goiás', 5564),
('5221197', 52, 21197, '5 - Centro-Oeste', 'Goiás', 'GO', 'Terezópolis de Goiás', 5565),
('5221304', 52, 21304, '5 - Centro-Oeste', 'Goiás', 'GO', 'Três Ranchos', 5566),
('5221403', 52, 21403, '5 - Centro-Oeste', 'Goiás', 'GO', 'Trindade', 5567),
('5221452', 52, 21452, '5 - Centro-Oeste', 'Goiás', 'GO', 'Trombas', 5568),
('5221502', 52, 21502, '5 - Centro-Oeste', 'Goiás', 'GO', 'Turvânia', 5569),
('5221551', 52, 21551, '5 - Centro-Oeste', 'Goiás', 'GO', 'Turvelândia', 5570),
('5221577', 52, 21577, '5 - Centro-Oeste', 'Goiás', 'GO', 'Uirapuru', 5571),
('5221601', 52, 21601, '5 - Centro-Oeste', 'Goiás', 'GO', 'Uruaçu', 5572),
('5221700', 52, 21700, '5 - Centro-Oeste', 'Goiás', 'GO', 'Uruana', 5573),
('5221809', 52, 21809, '5 - Centro-Oeste', 'Goiás', 'GO', 'Urutaí', 5574),
('5221858', 52, 21858, '5 - Centro-Oeste', 'Goiás', 'GO', 'Valparaíso de Goiás', 5575),
('5221908', 52, 21908, '5 - Centro-Oeste', 'Goiás', 'GO', 'Varjão', 5576),
('5222005', 52, 22005, '5 - Centro-Oeste', 'Goiás', 'GO', 'Vianópolis', 5577),
('5222054', 52, 22054, '5 - Centro-Oeste', 'Goiás', 'GO', 'Vicentinópolis', 5578),
('5222203', 52, 22203, '5 - Centro-Oeste', 'Goiás', 'GO', 'Vila Boa', 5579),
('5222302', 52, 22302, '5 - Centro-Oeste', 'Goiás', 'GO', 'Vila Propício', 5580),
('5300108', 53, 108, '5 - Centro-Oeste', 'Distrito Federal', 'DF', 'Brasília', 5581);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0000`
--

CREATE TABLE `reg_0000` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_VER` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_FIN` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_INI` date DEFAULT NULL,
  `DT_FIN` date DEFAULT NULL,
  `NOME` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `CNPJ` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `CPF` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  `UF` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `IE` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `IM` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `SUFRAMA` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_PERFIL` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_ATIV` varchar(1) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0001`
--

CREATE TABLE `reg_0001` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_MOV` varchar(1) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0005`
--

CREATE TABLE `reg_0005` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `FANTASIA` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `CEP` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `ENDERECO` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `COMPL` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `BAIRRO` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `FONE` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  `FAX` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  `EMAIL` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0015`
--

CREATE TABLE `reg_0015` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `UF_ST` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `IE_ST` varchar(14) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0100`
--

CREATE TABLE `reg_0100` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NOME` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `CPF` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  `CRC` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `CNPJ` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `CEP` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `ENDERECO` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `COMPL` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `BAIRRO` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `FONE` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  `FAX` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  `EMAIL` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN` varchar(7) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0150`
--

CREATE TABLE `reg_0150` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `NOME` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PAIS` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `CNPJ` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `CPF` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  `IE` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `SUFRAMA` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `ENDERECO` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `COMPL` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `BAIRRO` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `dtIni` date NOT NULL,
  `linha` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0150xml`
--

CREATE TABLE `reg_0150xml` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `NOME` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PAIS` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `CNPJ` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `CPF` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  `IE` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `SUFRAMA` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `ENDERECO` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `COMPL` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `BAIRRO` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `dtIni` date NOT NULL,
  `linha` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0175`
--

CREATE TABLE `reg_0175` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_ALT` date DEFAULT NULL,
  `NR_CAMPO` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `CONT_ANT` varchar(100) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0190`
--

CREATE TABLE `reg_0190` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `UNID` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `DESCR` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `dtIni` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0200`
--

CREATE TABLE `reg_0200` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `DESCR_ITEM` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_BARRA` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ANT_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `UNID_INV` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `TIPO_ITEM` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_NCM` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `EX_IPI` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_GEN` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_LST` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `dtIni` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0205`
--

CREATE TABLE `reg_0205` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DESCR_ANT_ITEM` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_INI` date DEFAULT NULL,
  `DT_FIM` date DEFAULT NULL,
  `COD_ANT_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `dtIni` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0206`
--

CREATE TABLE `reg_0206` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_COMB` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0210`
--

CREATE TABLE `reg_0210` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM_COMP` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_COMP` decimal(17,6) DEFAULT NULL,
  `PERDA` decimal(5,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0220`
--

CREATE TABLE `reg_0220` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `UNID_CONV` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `FAT_CONV` decimal(25,6) DEFAULT NULL,
  `dtIni` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0300`
--

CREATE TABLE `reg_0300` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_IND_BEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `IDENT_MERC` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `DESCR_ITEM` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PRNC` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_CTA` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `NR_PARC` varchar(3) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0305`
--

CREATE TABLE `reg_0305` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_CCUS` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `FUNC` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `VIDA_UTIL` varchar(3) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0400`
--

CREATE TABLE `reg_0400` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_NAT` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `DESCR_NAT` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0450`
--

CREATE TABLE `reg_0450` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_INF` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `TXT` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0460`
--

CREATE TABLE `reg_0460` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `TXT` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0500`
--

CREATE TABLE `reg_0500` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_ALT` date DEFAULT NULL,
  `COD_NAT_CC` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_CTA` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `NIVEL` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_CTA` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `NOME_CTA` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0600`
--

CREATE TABLE `reg_0600` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_ALT` date DEFAULT NULL,
  `COD_CCUS` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `CCUS` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_0990`
--

CREATE TABLE `reg_0990` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_LIN_0` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1001`
--

CREATE TABLE `reg_1001` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_MOV` varchar(1) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1010`
--

CREATE TABLE `reg_1010` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_EXP` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_CCRF` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_COMB` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_USINA` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_VA` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_EE` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_CART` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_FORM` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_AER` varchar(1) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1100`
--

CREATE TABLE `reg_1100` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_DOC` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `NRO_DE` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DE` date DEFAULT NULL,
  `NAT_EXP` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `NRO_RE` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_RE` date DEFAULT NULL,
  `CHC_EMB` varchar(18) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_CHC` date DEFAULT NULL,
  `DT_AVB` date DEFAULT NULL,
  `TP_CHC` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `PAIS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1105`
--

CREATE TABLE `reg_1105` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `CHV_NFE` varchar(44) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1110`
--

CREATE TABLE `reg_1110` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `CHV_NFE` varchar(44) COLLATE latin1_general_ci DEFAULT NULL,
  `NR_MEMO` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(22,3) DEFAULT NULL,
  `UNID` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1200`
--

CREATE TABLE `reg_1200` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_AJ_APUR` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `SLD_CRED` decimal(21,2) DEFAULT NULL,
  `CRED_APR` decimal(21,2) DEFAULT NULL,
  `CRED_RECEB` decimal(21,2) DEFAULT NULL,
  `CRED_UTIL` decimal(21,2) DEFAULT NULL,
  `SLD_CRED_FIM` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1210`
--

CREATE TABLE `reg_1210` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `TIPO_UTIL` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NR_DOC` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_CRED_UTIL` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1300`
--

CREATE TABLE `reg_1300` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_FECH` date DEFAULT NULL,
  `ESTQ_ABERT` decimal(22,3) DEFAULT NULL,
  `VOL_ENTR` decimal(22,3) DEFAULT NULL,
  `VOL_DISP` decimal(22,3) DEFAULT NULL,
  `VOL_SAIDAS` decimal(22,3) DEFAULT NULL,
  `ESTQ_ESCR` decimal(22,3) DEFAULT NULL,
  `VAL_AJ_PERDA` decimal(22,3) DEFAULT NULL,
  `VAL_AJ_GANHO` decimal(22,3) DEFAULT NULL,
  `FECH_FISICO` decimal(22,3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1310`
--

CREATE TABLE `reg_1310` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_TANQUE` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `ESTQ_ABERT` decimal(22,3) DEFAULT NULL,
  `VOL_ENTR` decimal(22,3) DEFAULT NULL,
  `VOL_DISP` decimal(22,3) DEFAULT NULL,
  `VOL_SAIDAS` decimal(22,3) DEFAULT NULL,
  `ESTQ_ESCR` decimal(22,3) DEFAULT NULL,
  `VAL_AJ_PERDA` decimal(22,3) DEFAULT NULL,
  `VAL_AJ_GANHO` decimal(22,3) DEFAULT NULL,
  `FECH_FISICO` decimal(22,3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1320`
--

CREATE TABLE `reg_1320` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_BICO` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NR_INTERV` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `MOT_INTERV` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NOM_INTERV` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `CNPJ_INTERV` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `CPF_INTERV` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  `VAL_FECHA` decimal(22,3) DEFAULT NULL,
  `VAL_ABERT` decimal(22,3) DEFAULT NULL,
  `VOL_AFERI` decimal(22,3) DEFAULT NULL,
  `VOL_VENDAS` decimal(22,3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1350`
--

CREATE TABLE `reg_1350` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SERIE` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `FABRICANTE` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `MODELO` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TIPO_MEDICAO` varchar(1) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1360`
--

CREATE TABLE `reg_1360` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_LACRE` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `DAT_APLICACAO` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1370`
--

CREATE TABLE `reg_1370` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_BICO` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_TANQUE` varchar(3) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1390`
--

CREATE TABLE `reg_1390` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PROD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1391`
--

CREATE TABLE `reg_1391` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_REGISTRO` date DEFAULT NULL,
  `QTD_MOID` decimal(21,2) DEFAULT NULL,
  `ESTQ_INI` decimal(21,2) DEFAULT NULL,
  `QTD_PRODUZ` decimal(21,2) DEFAULT NULL,
  `ENT_ANID_HID` decimal(21,2) DEFAULT NULL,
  `OUTR_ENTR` decimal(21,2) DEFAULT NULL,
  `PERDA` decimal(21,2) DEFAULT NULL,
  `CONS` decimal(21,2) DEFAULT NULL,
  `SAI_ANI_HID` decimal(21,2) DEFAULT NULL,
  `SAIDAS` decimal(21,2) DEFAULT NULL,
  `ESTQ_FIN` decimal(21,2) DEFAULT NULL,
  `ESTQ_INI_MEL` decimal(21,2) DEFAULT NULL,
  `PROD_DIA_MEL` decimal(21,2) DEFAULT NULL,
  `UTIL_MEL` decimal(21,2) DEFAULT NULL,
  `PROD_ALC_MEL` decimal(21,2) DEFAULT NULL,
  `OBS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1400`
--

CREATE TABLE `reg_1400` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `MUN` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `VALOR` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1500`
--

CREATE TABLE `reg_1500` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_OPER` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_EMIT` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_SIT` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_CONS` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `DT_E_S` date DEFAULT NULL,
  `VL_DOC` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `VL_FORN` decimal(21,2) DEFAULT NULL,
  `VL_SERV_NT` decimal(21,2) DEFAULT NULL,
  `VL_TERC` decimal(21,2) DEFAULT NULL,
  `VL_DA` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `COD_INF` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFIS` decimal(21,2) DEFAULT NULL,
  `TP_LIGACAO` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_GRUPO_TENSAO` varchar(2) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1510`
--

CREATE TABLE `reg_1510` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_ITEM` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_CLASS` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(22,3) DEFAULT NULL,
  `UNID` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_ITEM` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `ALIQ_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `IND_REC` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFIS` decimal(21,2) DEFAULT NULL,
  `COD_CTA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1600`
--

CREATE TABLE `reg_1600` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `TOT_CREDITO` decimal(21,2) DEFAULT NULL,
  `TOT_DEBITO` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1700`
--

CREATE TABLE `reg_1700` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_DISP` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC_INI` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC_FIN` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_AUT` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1710`
--

CREATE TABLE `reg_1710` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC_INI` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC_FIN` varchar(12) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1800`
--

CREATE TABLE `reg_1800` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_CARGA` decimal(21,2) DEFAULT NULL,
  `VL_PASS` decimal(21,2) DEFAULT NULL,
  `VL_FAT` decimal(21,2) DEFAULT NULL,
  `IND_RAT` decimal(14,6) DEFAULT NULL,
  `VL_ICMS_ANT` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_APUR` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_APUR` decimal(21,2) DEFAULT NULL,
  `VL_DIF` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1900`
--

CREATE TABLE `reg_1900` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_APUR_ICMS` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `DESCR_COMPL_OUT_APUR` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1910`
--

CREATE TABLE `reg_1910` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_INI` date DEFAULT NULL,
  `DT_FIN` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1920`
--

CREATE TABLE `reg_1920` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_TOT_TRANSF_DEBITOS_OA` decimal(21,2) DEFAULT NULL,
  `VL_TOT_AJ_DEBITOS_OA` decimal(21,2) DEFAULT NULL,
  `VL_ESTORNOS_CRED_OA` decimal(21,2) DEFAULT NULL,
  `VL_TOT_TRANSF_CREDITOS_OA` decimal(21,2) DEFAULT NULL,
  `VL_TOT_AJ_CREDITOS_OA` decimal(21,2) DEFAULT NULL,
  `VL_ESTORNOS_DEB_OA` decimal(21,2) DEFAULT NULL,
  `VL_SLD_CREDOR_ANT_OA` decimal(21,2) DEFAULT NULL,
  `VL_SLD_APURADO_OA` decimal(21,2) DEFAULT NULL,
  `VL_TOT_DED` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_RECOLHER_OA` decimal(21,2) DEFAULT NULL,
  `VL_SLD_CREDOR_TRANSP_OA` decimal(21,2) DEFAULT NULL,
  `DEB_ESP_OA` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1921`
--

CREATE TABLE `reg_1921` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_AJ_APUR` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `DESCR_COMPL_AJ` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_AJ_APUR` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1922`
--

CREATE TABLE `reg_1922` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_PROC` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_PROC` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `PROC` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TXT_COMPL` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1923`
--

CREATE TABLE `reg_1923` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_AJ_ITEM` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1925`
--

CREATE TABLE `reg_1925` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_INF_ADIC` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_INF_ADIC` decimal(21,2) DEFAULT NULL,
  `DESC_COMPL_AJ` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1926`
--

CREATE TABLE `reg_1926` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_OR` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_OR` decimal(21,2) DEFAULT NULL,
  `DT_VCTO` date DEFAULT NULL,
  `COD_REC` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_PROC` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_PROC` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `PROC` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TXT_COMPL` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `MES_REF` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_1990`
--

CREATE TABLE `reg_1990` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_LIN_1` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_9001`
--

CREATE TABLE `reg_9001` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_MOV` varchar(1) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_9900`
--

CREATE TABLE `reg_9900` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `REG_BLC` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_REG_BLC` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_9990`
--

CREATE TABLE `reg_9990` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_LIN_9` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_9999`
--

CREATE TABLE `reg_9999` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_LIN` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c001`
--

CREATE TABLE `reg_c001` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_MOV` varchar(1) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c100`
--

CREATE TABLE `reg_c100` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_OPER` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_EMIT` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_SIT` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `CHV_NFE` varchar(44) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `DT_E_S` date DEFAULT NULL,
  `VL_DOC` decimal(21,2) DEFAULT NULL,
  `IND_PGTO` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `VL_ABAT_NT` decimal(21,2) DEFAULT NULL,
  `VL_MERC` decimal(21,2) DEFAULT NULL,
  `IND_FRT` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_FRT` decimal(21,2) DEFAULT NULL,
  `VL_SEG` decimal(21,2) DEFAULT NULL,
  `VL_OUT_DA` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_IPI` decimal(21,2) DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL,
  `VL_PIS_ST` decimal(21,2) DEFAULT NULL,
  `VL_COFINS_ST` decimal(21,2) DEFAULT NULL,
  `dtIni` date NOT NULL,
  `linha` bigint(20) NOT NULL,
  `idxml` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c100xml`
--

CREATE TABLE `reg_c100xml` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_OPER` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_EMIT` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_SIT` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `CHV_NFE` varchar(44) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `DT_E_S` date DEFAULT NULL,
  `VL_DOC` decimal(21,2) DEFAULT NULL,
  `IND_PGTO` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `VL_ABAT_NT` decimal(21,2) DEFAULT NULL,
  `VL_MERC` decimal(21,2) DEFAULT NULL,
  `IND_FRT` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_FRT` decimal(21,2) DEFAULT NULL,
  `VL_SEG` decimal(21,2) DEFAULT NULL,
  `VL_OUT_DA` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_IPI` decimal(21,2) DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL,
  `VL_PIS_ST` decimal(21,2) DEFAULT NULL,
  `VL_COFINS_ST` decimal(21,2) DEFAULT NULL,
  `natOp` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `cnpjDest` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `RazaoDest` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `RazaoEmit` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `IeEmit` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `IeDest` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c105`
--

CREATE TABLE `reg_c105` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `OPER` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_UF` varchar(2) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c110`
--

CREATE TABLE `reg_c110` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_INF` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `TXT_COMPL` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c111`
--

CREATE TABLE `reg_c111` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_PROC` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_PROC` varchar(1) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c112`
--

CREATE TABLE `reg_c112` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_DA` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `UF` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_AUT` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_DA` decimal(21,2) DEFAULT NULL,
  `DT_VCTO` date DEFAULT NULL,
  `DT_PGTO` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c113`
--

CREATE TABLE `reg_c113` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_OPER` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_EMIT` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c114`
--

CREATE TABLE `reg_c114` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `ECF_FAB` varchar(21) COLLATE latin1_general_ci DEFAULT NULL,
  `ECF_CX` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c115`
--

CREATE TABLE `reg_c115` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_CARGA` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `CNPJ_COL` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `IE_COL` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `CPF_COL` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_COL` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `CNPJ_ENTG` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `IE_ENTG` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `CPF_ENTG` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_ENTG` varchar(7) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c116`
--

CREATE TABLE `reg_c116` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `NR_SAT` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `CHV_CFE` varchar(44) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_CFE` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` varchar(8) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c120`
--

CREATE TABLE `reg_c120` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_DOC_IMP` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC_IMP` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `PIS_IMP` decimal(21,2) DEFAULT NULL,
  `COFINS_IMP` decimal(21,2) DEFAULT NULL,
  `NUM_ACDRAW` varchar(20) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c130`
--

CREATE TABLE `reg_c130` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_SERV_NT` decimal(21,2) DEFAULT NULL,
  `VL_BC_ISSQN` decimal(21,2) DEFAULT NULL,
  `VL_ISSQN` decimal(21,2) DEFAULT NULL,
  `VL_BC_IRRF` decimal(21,2) DEFAULT NULL,
  `VL_IRRF` decimal(21,2) DEFAULT NULL,
  `VL_BC_PREV` decimal(21,2) DEFAULT NULL,
  `VL_PREV` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c140`
--

CREATE TABLE `reg_c140` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_EMIT` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_TIT` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `DESC_TIT` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_TIT` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_PARC` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_TIT` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c141`
--

CREATE TABLE `reg_c141` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_PARC` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_VCTO` date DEFAULT NULL,
  `VL_PARC` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c160`
--

CREATE TABLE `reg_c160` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `VEIC_ID` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_VOL` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `PESO_BRT` decimal(21,2) DEFAULT NULL,
  `PESO_LIQ` decimal(21,2) DEFAULT NULL,
  `UF_ID` varchar(2) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c165`
--

CREATE TABLE `reg_c165` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `VEIC_ID` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_AUT` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NR_PASSE` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `HORA` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `TEMPER` decimal(20,1) DEFAULT NULL,
  `QTD_VOL` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `PESO_BRT` decimal(21,2) DEFAULT NULL,
  `PESO_LIQ` decimal(21,2) DEFAULT NULL,
  `NOM_MOT` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `CPF` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  `UF_ID` varchar(2) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c170`
--

CREATE TABLE `reg_c170` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_ITEM` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `DESCR_COMPL` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(24,5) DEFAULT NULL,
  `UNID` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_ITEM` decimal(21,2) DEFAULT NULL,
  `VL_UNIT` decimal(23,2) NOT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `IND_MOV` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_NAT` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `ALIQ_ST` decimal(8,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `IND_APUR` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_IPI` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ENQ` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_BC_IPI` decimal(21,2) DEFAULT NULL,
  `ALIQ_IPI` decimal(8,2) DEFAULT NULL,
  `VL_IPI` decimal(21,2) DEFAULT NULL,
  `CST_PIS` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_BC_PIS` decimal(21,2) DEFAULT NULL,
  `ALIQ_PIS_PERC` decimal(12,4) DEFAULT NULL,
  `QUANT_BC_PIS` decimal(22,3) DEFAULT NULL,
  `ALIQ_PIS_REAIS` decimal(23,4) DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `CST_COFINS` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_BC_COFINS` decimal(21,2) DEFAULT NULL,
  `ALIQ_COFINS_PERC` decimal(12,4) DEFAULT NULL,
  `QUANT_BC_COFINS` decimal(22,3) DEFAULT NULL,
  `ALIQ_COFINS_REAIS` decimal(23,4) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL,
  `COD_CTA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `dtIni` date NOT NULL,
  `linha` bigint(20) NOT NULL,
  `linhaC100` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c171`
--

CREATE TABLE `reg_c171` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_TANQUE` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `QTDE` decimal(22,3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c172`
--

CREATE TABLE `reg_c172` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_BC_ISSQN` decimal(21,2) DEFAULT NULL,
  `ALIQ_ISSQN` decimal(8,2) DEFAULT NULL,
  `VL_ISSQN` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c173`
--

CREATE TABLE `reg_c173` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `LOTE_MED` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_ITEM` decimal(22,3) DEFAULT NULL,
  `DT_FAB` date DEFAULT NULL,
  `DT_VAL` date DEFAULT NULL,
  `IND_MED` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `TP_PROD` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_TAB_MAX` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c174`
--

CREATE TABLE `reg_c174` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_ARM` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_ARM` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `DESCR_COMPL` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c175`
--

CREATE TABLE `reg_c175` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_VEIC_OPER` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `CNPJ` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `UF` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `CHASSI_VEIC` varchar(17) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c176`
--

CREATE TABLE `reg_c176` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD_ULT_E` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC_ULT_E` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `SER_ULT_E` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_ULT_E` date DEFAULT NULL,
  `COD_PART_ULT_E` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `QUANT_ULT_E` decimal(22,3) DEFAULT NULL,
  `VL_UNIT_ULT_E` decimal(22,3) DEFAULT NULL,
  `VL_UNIT_BC_ST` decimal(22,3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c177`
--

CREATE TABLE `reg_c177` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_SELO_IPI` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `QT_SELO_IPI` varchar(12) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c178`
--

CREATE TABLE `reg_c178` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CL_ENQ` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_UNID` decimal(21,2) DEFAULT NULL,
  `QUANT_PAD` decimal(22,3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c179`
--

CREATE TABLE `reg_c179` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `BC_ST_ORIG_DEST` decimal(21,2) DEFAULT NULL,
  `ICMS_ST_REP` decimal(21,2) DEFAULT NULL,
  `ICMS_ST_COMPL` decimal(21,2) DEFAULT NULL,
  `BC_RET` decimal(21,2) DEFAULT NULL,
  `ICMS_RET` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c190`
--

CREATE TABLE `reg_c190` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_OPR` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_RED_BC` decimal(21,2) DEFAULT NULL,
  `VL_IPI` decimal(21,2) DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c195`
--

CREATE TABLE `reg_c195` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `TXT_COMPL` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c197`
--

CREATE TABLE `reg_c197` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_AJ` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `DESCR_COMPL_AJ` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_OUTROS` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c300`
--

CREATE TABLE `reg_c300` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC_INI` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC_FIN` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `VL_DOC` decimal(21,2) DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL,
  `COD_CTA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c310`
--

CREATE TABLE `reg_c310` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC_CANC` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c320`
--

CREATE TABLE `reg_c320` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_OPR` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_RED_BC` decimal(21,2) DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c321`
--

CREATE TABLE `reg_c321` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(22,3) DEFAULT NULL,
  `UNID` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_ITEM` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c350`
--

CREATE TABLE `reg_c350` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB_SER` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `CNPJ_CPF` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_MERC` decimal(21,2) DEFAULT NULL,
  `VL_DOC` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFIS` decimal(21,2) DEFAULT NULL,
  `COD_CTA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c370`
--

CREATE TABLE `reg_c370` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_ITEM` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(22,3) DEFAULT NULL,
  `UNID` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_ITEM` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c390`
--

CREATE TABLE `reg_c390` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_OPR` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_RED_BC` decimal(21,2) DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c400`
--

CREATE TABLE `reg_c400` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `ECF_MOD` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `ECF_FAB` varchar(21) COLLATE latin1_general_ci DEFAULT NULL,
  `ECF_CX` varchar(3) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c405`
--

CREATE TABLE `reg_c405` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `CRO` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CRZ` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_COO_FIN` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `GT_FIN` decimal(21,2) DEFAULT NULL,
  `VL_BRT` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c410`
--

CREATE TABLE `reg_c410` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c420`
--

CREATE TABLE `reg_c420` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_TOT_PAR` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `VLR_ACUM_TOT` decimal(21,2) DEFAULT NULL,
  `NR_TOT` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `DESCR_NR_TOT` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c425`
--

CREATE TABLE `reg_c425` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(22,3) DEFAULT NULL,
  `UNID` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_ITEM` decimal(21,2) DEFAULT NULL,
  `VL_UNIT` decimal(23,2) NOT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL,
  `dtIni` date DEFAULT NULL,
  `linha` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c460`
--

CREATE TABLE `reg_c460` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_SIT` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `VL_DOC` decimal(21,2) DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL,
  `CPF_CNPJ` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `NOME_ADQ` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c465`
--

CREATE TABLE `reg_c465` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CHV_CFE` varchar(44) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_CCF` varchar(9) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c470`
--

CREATE TABLE `reg_c470` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(22,3) DEFAULT NULL,
  `QTD_CANC` decimal(22,3) DEFAULT NULL,
  `UNID` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_ITEM` decimal(21,2) DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c490`
--

CREATE TABLE `reg_c490` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_OPR` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c495`
--

CREATE TABLE `reg_c495` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(22,3) DEFAULT NULL,
  `QTD_CANC` decimal(22,3) DEFAULT NULL,
  `UNID` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_ITEM` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `VL_CANC` decimal(21,2) DEFAULT NULL,
  `VL_ACMO` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ISEN` decimal(21,2) DEFAULT NULL,
  `VL_NT` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c500`
--

CREATE TABLE `reg_c500` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_OPER` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_EMIT` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_SIT` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_CONS` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `DT_E_S` date DEFAULT NULL,
  `VL_DOC` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `VL_FORN` decimal(21,2) DEFAULT NULL,
  `VL_SERV_NT` decimal(21,2) DEFAULT NULL,
  `VL_TERC` decimal(21,2) DEFAULT NULL,
  `VL_DA` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `COD_INF` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL,
  `TP_LIGACAO` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_GRUPO_TENSAO` varchar(2) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c510`
--

CREATE TABLE `reg_c510` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_ITEM` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_CLASS` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(22,3) DEFAULT NULL,
  `UNID` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_ITEM` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `ALIQ_ST` decimal(8,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `IND_REC` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL,
  `COD_CTA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c590`
--

CREATE TABLE `reg_c590` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_OPR` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_RED_BC` decimal(21,2) DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c600`
--

CREATE TABLE `reg_c600` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_CONS` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_CONS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_CANC` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `VL_DOC` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `CONS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_FORN` decimal(21,2) DEFAULT NULL,
  `VL_SERV_NT` decimal(21,2) DEFAULT NULL,
  `VL_TERC` decimal(21,2) DEFAULT NULL,
  `VL_DA` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c601`
--

CREATE TABLE `reg_c601` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC_CANC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c610`
--

CREATE TABLE `reg_c610` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_CLASS` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(22,3) DEFAULT NULL,
  `UNID` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_ITEM` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL,
  `COD_CTA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c690`
--

CREATE TABLE `reg_c690` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_OPR` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_RED_BC` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c700`
--

CREATE TABLE `reg_c700` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NRO_ORD_INI` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `NRO_ORD_FIN` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC_INI` date DEFAULT NULL,
  `DT_DOC_FIN` date DEFAULT NULL,
  `NOM_MEST` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `CHV_COD_DIG` varchar(32) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c790`
--

CREATE TABLE `reg_c790` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_OPR` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_RED_BC` decimal(21,2) DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c791`
--

CREATE TABLE `reg_c791` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `UF` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c800`
--

CREATE TABLE `reg_c800` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_SIT` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_CFE` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `VL_CFE` decimal(21,2) DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL,
  `CNPJ_CPF` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `NR_SAT` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `CHV_CFE` varchar(44) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `VL_MERC` decimal(21,2) DEFAULT NULL,
  `VL_OUT_DA` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_PIS_ST` decimal(21,2) DEFAULT NULL,
  `VL_COFINS_ST` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c850`
--

CREATE TABLE `reg_c850` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_OPR` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c860`
--

CREATE TABLE `reg_c860` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `NR_SAT` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `DOC_INI` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `DOC_FIM` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c890`
--

CREATE TABLE `reg_c890` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_OPR` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_c990`
--

CREATE TABLE `reg_c990` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_LIN_C` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d001`
--

CREATE TABLE `reg_d001` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_MOV` varchar(1) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d100`
--

CREATE TABLE `reg_d100` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_OPER` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_EMIT` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_SIT` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `CHV_CTE` varchar(44) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `DT_A_P` date DEFAULT NULL,
  `TP_CT_E` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `CHV_CTE_REF` varchar(44) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_DOC` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `IND_FRT` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_SERV` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_NT` decimal(21,2) DEFAULT NULL,
  `COD_INF` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_CTA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d110`
--

CREATE TABLE `reg_d110` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_ITEM` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_SERV` decimal(21,2) DEFAULT NULL,
  `VL_OUT` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d120`
--

CREATE TABLE `reg_d120` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_ORIG` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_DEST` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `VEIC_ID` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `UF_ID` varchar(2) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d130`
--

CREATE TABLE `reg_d130` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART_CONSG` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART_RED` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_FRT_RED` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_ORIG` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_DEST` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `VEIC_ID` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_LIQ_FRT` decimal(21,2) DEFAULT NULL,
  `VL_SEC_CAT` decimal(21,2) DEFAULT NULL,
  `VL_DESP` decimal(21,2) DEFAULT NULL,
  `VL_PEDG` decimal(21,2) DEFAULT NULL,
  `VL_OUT` decimal(21,2) DEFAULT NULL,
  `VL_FRT` decimal(21,2) DEFAULT NULL,
  `UF_ID` varchar(2) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d140`
--

CREATE TABLE `reg_d140` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART_CONSG` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_ORIG` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_DEST` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_VEIC` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `VEIC_ID` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_NAV` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `VIAGEM` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_FRT_LIQ` decimal(21,2) DEFAULT NULL,
  `VL_DESP_PORT` decimal(21,2) DEFAULT NULL,
  `VL_DESP_CAR_DESC` decimal(21,2) DEFAULT NULL,
  `VL_OUT` decimal(21,2) DEFAULT NULL,
  `VL_FRT_BRT` decimal(21,2) DEFAULT NULL,
  `VL_FRT_MM` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d150`
--

CREATE TABLE `reg_d150` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_ORIG` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_DEST` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `VEIC_ID` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `VIAGEM` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_TFA` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_PESO_TX` decimal(21,2) DEFAULT NULL,
  `VL_TX_TERR` decimal(21,2) DEFAULT NULL,
  `VL_TX_RED` decimal(21,2) DEFAULT NULL,
  `VL_OUT` decimal(21,2) DEFAULT NULL,
  `VL_TX_ADV` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d160`
--

CREATE TABLE `reg_d160` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DESPACHO` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `CNPJ_CPF_REM` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `IE_REM` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_ORI` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `CNPJ_CPF_DEST` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `IE_DEST` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_DEST` varchar(7) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d161`
--

CREATE TABLE `reg_d161` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_CARGA` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `CNPJ_CPF_COL` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `IE_COL` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_COL` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `CNPJ_CPF_ENTG` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `IE_ENTG` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_ENTG` varchar(7) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d162`
--

CREATE TABLE `reg_d162` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `VL_DOC` decimal(21,2) DEFAULT NULL,
  `VL_MERC` decimal(21,2) DEFAULT NULL,
  `QTD_VOL` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `PESO_BRT` decimal(21,2) DEFAULT NULL,
  `PESO_LIQ` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d170`
--

CREATE TABLE `reg_d170` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART_CONSG` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART_RED` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_ORIG` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_DEST` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `OTM` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_NAT_FRT` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_LIQ_FRT` decimal(21,2) DEFAULT NULL,
  `VL_GRIS` decimal(21,2) DEFAULT NULL,
  `VL_PDG` decimal(21,2) DEFAULT NULL,
  `VL_OUT` decimal(21,2) DEFAULT NULL,
  `VL_FRT` decimal(21,2) DEFAULT NULL,
  `VEIC_ID` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `UF_ID` varchar(2) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d180`
--

CREATE TABLE `reg_d180` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_SEQ` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_EMIT` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `CNPJ_CPF_EMIT` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `UF_EMIT` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `IE_EMIT` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_ORIG` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `CNPJ_CPF_TOM` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `UF_TOM` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `IE_TOM` varchar(14) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_DEST` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `VL_DOC` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d190`
--

CREATE TABLE `reg_d190` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_OPR` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_RED_BC` decimal(21,2) DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d195`
--

CREATE TABLE `reg_d195` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `TXT_COMPL` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d197`
--

CREATE TABLE `reg_d197` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_AJ` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `DESCR_COMPL_AJ` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_OUTROS` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d300`
--

CREATE TABLE `reg_d300` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC_INI` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC_FIN` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `VL_OPR` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `VL_SERV` decimal(21,2) DEFAULT NULL,
  `VL_SEG` decimal(21,2) DEFAULT NULL,
  `VL_OUT_DESP` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_RED_BC` decimal(21,2) DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_CTA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d301`
--

CREATE TABLE `reg_d301` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC_CANC` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d310`
--

CREATE TABLE `reg_d310` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_ORIG` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_SERV` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d350`
--

CREATE TABLE `reg_d350` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `ECF_MOD` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `ECF_FAB` varchar(21) COLLATE latin1_general_ci DEFAULT NULL,
  `ECF_CX` varchar(3) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d355`
--

CREATE TABLE `reg_d355` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `CRO` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CRZ` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_COO_FIN` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `GT_FIN` decimal(21,2) DEFAULT NULL,
  `VL_BRT` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d360`
--

CREATE TABLE `reg_d360` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d365`
--

CREATE TABLE `reg_d365` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_TOT_PAR` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `VLR_ACUM_TOT` decimal(21,2) DEFAULT NULL,
  `NR_TOT` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `DESCR_NR_TOT` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d370`
--

CREATE TABLE `reg_d370` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_ORIG` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_SERV` decimal(21,2) DEFAULT NULL,
  `QTD_BILH` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d390`
--

CREATE TABLE `reg_d390` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_OPR` decimal(21,2) DEFAULT NULL,
  `VL_BC_ISSQN` decimal(21,2) DEFAULT NULL,
  `ALIQ_ISSQN` decimal(8,2) DEFAULT NULL,
  `VL_ISSQN` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d400`
--

CREATE TABLE `reg_d400` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_SIT` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `VL_DOC` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `VL_SERV` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL,
  `COD_CTA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d410`
--

CREATE TABLE `reg_d410` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC_INI` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC_FIN` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_OPR` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `VL_SERV` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d411`
--

CREATE TABLE `reg_d411` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC_CANC` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d420`
--

CREATE TABLE `reg_d420` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN_ORIG` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_SERV` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d500`
--

CREATE TABLE `reg_d500` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_OPER` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_EMIT` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_SIT` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `DT_A_P` date DEFAULT NULL,
  `VL_DOC` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `VL_SERV` decimal(21,2) DEFAULT NULL,
  `VL_SERV_NT` decimal(21,2) DEFAULT NULL,
  `VL_TERC` decimal(21,2) DEFAULT NULL,
  `VL_DA` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `COD_INF` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL,
  `COD_CTA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TP_ASSINANTE` varchar(1) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d510`
--

CREATE TABLE `reg_d510` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_ITEM` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_CLASS` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(22,3) DEFAULT NULL,
  `UNID` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_ITEM` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `IND_REC` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL,
  `COD_CTA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d530`
--

CREATE TABLE `reg_d530` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_SERV` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_INI_SERV` date DEFAULT NULL,
  `DT_FIN_SERV` date DEFAULT NULL,
  `PER_FISCAL` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_AREA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TERMINAL` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d590`
--

CREATE TABLE `reg_d590` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_OPR` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_RED_BC` decimal(21,2) DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d600`
--

CREATE TABLE `reg_d600` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MUN` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_CONS` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_CONS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `VL_DOC` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `VL_SERV` decimal(21,2) DEFAULT NULL,
  `VL_SERV_NT` decimal(21,2) DEFAULT NULL,
  `VL_TERC` decimal(21,2) DEFAULT NULL,
  `VL_DA` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d610`
--

CREATE TABLE `reg_d610` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_CLASS` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(22,3) DEFAULT NULL,
  `UNID` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_ITEM` decimal(21,2) DEFAULT NULL,
  `VL_DESC` decimal(21,2) DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_RED_BC` decimal(21,2) DEFAULT NULL,
  `VL_PIS` decimal(21,2) DEFAULT NULL,
  `VL_COFINS` decimal(21,2) DEFAULT NULL,
  `COD_CTA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d690`
--

CREATE TABLE `reg_d690` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_OPR` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_RED_BC` decimal(21,2) DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d695`
--

CREATE TABLE `reg_d695` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NRO_ORD_INI` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NRO_ORD_FIN` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC_INI` date DEFAULT NULL,
  `DT_DOC_FIN` date DEFAULT NULL,
  `NOM_MEST` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `CHV_COD_DIG` varchar(32) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d696`
--

CREATE TABLE `reg_d696` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `ALIQ_ICMS` decimal(8,2) DEFAULT NULL,
  `VL_OPR` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_RED_BC` decimal(21,2) DEFAULT NULL,
  `COD_OBS` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d697`
--

CREATE TABLE `reg_d697` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `UF` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_BC_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_ST` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_d990`
--

CREATE TABLE `reg_d990` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_LIN_D` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e001`
--

CREATE TABLE `reg_e001` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_MOV` varchar(1) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e100`
--

CREATE TABLE `reg_e100` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_INI` date DEFAULT NULL,
  `DT_FIN` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e110`
--

CREATE TABLE `reg_e110` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_TOT_DEBITOS` decimal(21,2) DEFAULT NULL,
  `VL_AJ_DEBITOS` decimal(21,2) DEFAULT NULL,
  `VL_TOT_AJ_DEBITOS` decimal(21,2) DEFAULT NULL,
  `VL_ESTORNOS_CRED` decimal(21,2) DEFAULT NULL,
  `VL_TOT_CREDITOS` decimal(21,2) DEFAULT NULL,
  `VL_AJ_CREDITOS` decimal(21,2) DEFAULT NULL,
  `VL_TOT_AJ_CREDITOS` decimal(21,2) DEFAULT NULL,
  `VL_ESTORNOS_DEB` decimal(21,2) DEFAULT NULL,
  `VL_SLD_CREDOR_ANT` decimal(21,2) DEFAULT NULL,
  `VL_SLD_APURADO` decimal(21,2) DEFAULT NULL,
  `VL_TOT_DED` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_RECOLHER` decimal(21,2) DEFAULT NULL,
  `VL_SLD_CREDOR_TRANSPORTAR` decimal(21,2) DEFAULT NULL,
  `DEB_ESP` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e111`
--

CREATE TABLE `reg_e111` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_AJ_APUR` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `DESCR_COMPL_AJ` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_AJ_APUR` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e112`
--

CREATE TABLE `reg_e112` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_PROC` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_PROC` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `PROC` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TXT_COMPL` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e113`
--

CREATE TABLE `reg_e113` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_AJ_ITEM` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e115`
--

CREATE TABLE `reg_e115` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_INF_ADIC` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_INF_ADIC` decimal(21,2) DEFAULT NULL,
  `DESCR_COMPL_AJ` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e116`
--

CREATE TABLE `reg_e116` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_OR` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_OR` decimal(21,2) DEFAULT NULL,
  `DT_VCTO` date DEFAULT NULL,
  `COD_REC` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_PROC` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_PROC` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `PROC` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TXT_COMPL` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `MES_REF` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e200`
--

CREATE TABLE `reg_e200` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `UF` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_INI` date DEFAULT NULL,
  `DT_FIN` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e210`
--

CREATE TABLE `reg_e210` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_MOV_ST` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_SLD_CRED_ANT_ST` decimal(21,2) DEFAULT NULL,
  `VL_DEVOL_ST` decimal(21,2) DEFAULT NULL,
  `VL_RESSARC_ST` decimal(21,2) DEFAULT NULL,
  `VL_OUT_CRED_ST` decimal(21,2) DEFAULT NULL,
  `VL_AJ_CREDITOS_ST` decimal(21,2) DEFAULT NULL,
  `VL_RETENCAO_ST` decimal(21,2) DEFAULT NULL,
  `VL_OUT_DEB_ST` decimal(21,2) DEFAULT NULL,
  `VL_AJ_DEBITOS_ST` decimal(21,2) DEFAULT NULL,
  `VL_SLD_DEV_ANT_ST` decimal(21,2) DEFAULT NULL,
  `VL_DEDUCOES_ST` decimal(21,2) DEFAULT NULL,
  `VL_ICMS_RECOL_ST` decimal(21,2) DEFAULT NULL,
  `VL_SLD_CRED_ST_TRANSPORTAR` decimal(21,2) DEFAULT NULL,
  `DEB_ESP_ST` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e220`
--

CREATE TABLE `reg_e220` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_AJ_APUR` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `DESCR_COMPL_AJ` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_AJ_APUR` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e230`
--

CREATE TABLE `reg_e230` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_PROC` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_PROC` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `PROC` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TXT_COMPL` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e240`
--

CREATE TABLE `reg_e240` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SER` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `SUB` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_AJ_ITEM` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e250`
--

CREATE TABLE `reg_e250` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_OR` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_OR` decimal(21,2) DEFAULT NULL,
  `DT_VCTO` date DEFAULT NULL,
  `COD_REC` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_PROC` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_PROC` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `PROC` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TXT_COMPL` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `MES_REF` varchar(6) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e500`
--

CREATE TABLE `reg_e500` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_APUR` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_INI` date DEFAULT NULL,
  `DT_FIN` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e510`
--

CREATE TABLE `reg_e510` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CFOP` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_IPI` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_CONT_IPI` decimal(21,2) DEFAULT NULL,
  `VL_BC_IPI` decimal(21,2) DEFAULT NULL,
  `VL_IPI` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e520`
--

CREATE TABLE `reg_e520` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_SD_ANT_IPI` decimal(21,2) DEFAULT NULL,
  `VL_DEB_IPI` decimal(21,2) DEFAULT NULL,
  `VL_CRED_IPI` decimal(21,2) DEFAULT NULL,
  `VL_OD_IPI` decimal(21,2) DEFAULT NULL,
  `VL_OC_IPI` decimal(21,2) DEFAULT NULL,
  `VL_SC_IPI` decimal(21,2) DEFAULT NULL,
  `VL_SD_IPI` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e530`
--

CREATE TABLE `reg_e530` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_AJ` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_AJ` decimal(21,2) DEFAULT NULL,
  `COD_AJ` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_DOC` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `DESCR_AJ` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_e990`
--

CREATE TABLE `reg_e990` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_LIN_E` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_g001`
--

CREATE TABLE `reg_g001` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_MOV` varchar(1) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_g110`
--

CREATE TABLE `reg_g110` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_INI` date DEFAULT NULL,
  `DT_FIN` date DEFAULT NULL,
  `SALDO_IN_ICMS` decimal(21,2) DEFAULT NULL,
  `SOM_PARC` decimal(21,2) DEFAULT NULL,
  `VL_TRIB_EXP` decimal(21,2) DEFAULT NULL,
  `VL_TOTAL` decimal(21,2) DEFAULT NULL,
  `IND_PER_SAI` decimal(27,8) DEFAULT NULL,
  `ICMS_APROP` decimal(21,2) DEFAULT NULL,
  `SOM_ICMS_OC` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_g125`
--

CREATE TABLE `reg_g125` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_IND_BEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_MOV` date DEFAULT NULL,
  `TIPO_MOV` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_IMOB_ICMS_OP` decimal(21,2) DEFAULT NULL,
  `VL_IMOB_ICMS_ST` decimal(21,2) DEFAULT NULL,
  `VL_IMOB_ICMS_FRT` decimal(21,2) DEFAULT NULL,
  `VL_IMOB_ICMS_DIF` decimal(21,2) DEFAULT NULL,
  `NUM_PARC` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_PARC_PASS` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_g126`
--

CREATE TABLE `reg_g126` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_INI` date DEFAULT NULL,
  `DT_FIN` date DEFAULT NULL,
  `NUM_PARC` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_PARC_PASS` decimal(21,2) DEFAULT NULL,
  `VL_TRIB_OC` decimal(21,2) DEFAULT NULL,
  `VL_TOTAL` decimal(21,2) DEFAULT NULL,
  `IND_PER_SAI` decimal(27,8) DEFAULT NULL,
  `VL_PARC_APROP` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_g130`
--

CREATE TABLE `reg_g130` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_EMIT` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_MOD` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `SERIE` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_DOC` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `CHV_NFE_CTE` varchar(44) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_DOC` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_g140`
--

CREATE TABLE `reg_g140` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `NUM_ITEM` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_g990`
--

CREATE TABLE `reg_g990` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_LIN_G` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_h001`
--

CREATE TABLE `reg_h001` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_MOV` varchar(1) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_h005`
--

CREATE TABLE `reg_h005` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_INV` date DEFAULT NULL,
  `VL_INV` decimal(21,2) DEFAULT NULL,
  `MOT_INV` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `dtIni` date NOT NULL,
  `linha` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_h010`
--

CREATE TABLE `reg_h010` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `UNID` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(22,3) DEFAULT NULL,
  `VL_UNIT` decimal(25,6) DEFAULT NULL,
  `VL_ITEM` decimal(21,2) DEFAULT NULL,
  `IND_PROP` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `TXT_COMPL` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_CTA` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `VL_ITEM_IR` decimal(21,2) DEFAULT NULL,
  `dtInv` date NOT NULL,
  `dtIni` date NOT NULL,
  `linha` int(11) NOT NULL,
  `alterado` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_h020`
--

CREATE TABLE `reg_h020` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `CST_ICMS` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `BL_ICMS` decimal(21,2) DEFAULT NULL,
  `VL_ICMS` decimal(21,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_h990`
--

CREATE TABLE `reg_h990` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_LIN_H` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_k001`
--

CREATE TABLE `reg_k001` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `IND_MOV` varchar(1) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_k100`
--

CREATE TABLE `reg_k100` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` date DEFAULT NULL,
  `DT_FIN` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_k200`
--

CREATE TABLE `reg_k200` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_EST` date DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(17,3) DEFAULT NULL,
  `IND_EST` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_PART` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_k220`
--

CREATE TABLE `reg_k220` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_MOV` date DEFAULT NULL,
  `COD_ITEM_ORI` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM_DEST` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(17,3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_k230`
--

CREATE TABLE `reg_k230` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_INI_OP` date DEFAULT NULL,
  `DT_FIN_OP` date DEFAULT NULL,
  `COD_DOC_OP` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_ENC` decimal(17,3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_k235`
--

CREATE TABLE `reg_k235` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_SAIDA` date DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(17,3) DEFAULT NULL,
  `COD_INS_SUBST` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_k250`
--

CREATE TABLE `reg_k250` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_PROD` date DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(17,3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_k255`
--

CREATE TABLE `reg_k255` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `DT_CONS` date DEFAULT NULL,
  `COD_ITEM` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD` decimal(17,3) DEFAULT NULL,
  `COD_INS_SUBST` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reg_k990`
--

CREATE TABLE `reg_k990` (
  `id` int(11) NOT NULL,
  `REG` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `QTD_LIN_H` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `estoque_qtd`
--
ALTER TABLE `estoque_qtd`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `estoque_qtd_codigo_uindex` (`codigo`);

--
-- Indexes for table `ibge_uf`
--
ALTER TABLE `ibge_uf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0000`
--
ALTER TABLE `reg_0000`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0001`
--
ALTER TABLE `reg_0001`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0005`
--
ALTER TABLE `reg_0005`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0015`
--
ALTER TABLE `reg_0015`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0100`
--
ALTER TABLE `reg_0100`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0150`
--
ALTER TABLE `reg_0150`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0150xml`
--
ALTER TABLE `reg_0150xml`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CNPJ` (`CNPJ`);

--
-- Indexes for table `reg_0175`
--
ALTER TABLE `reg_0175`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0190`
--
ALTER TABLE `reg_0190`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0200`
--
ALTER TABLE `reg_0200`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0205`
--
ALTER TABLE `reg_0205`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0206`
--
ALTER TABLE `reg_0206`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0210`
--
ALTER TABLE `reg_0210`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0220`
--
ALTER TABLE `reg_0220`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0300`
--
ALTER TABLE `reg_0300`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0305`
--
ALTER TABLE `reg_0305`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0400`
--
ALTER TABLE `reg_0400`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0450`
--
ALTER TABLE `reg_0450`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0460`
--
ALTER TABLE `reg_0460`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0500`
--
ALTER TABLE `reg_0500`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0600`
--
ALTER TABLE `reg_0600`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_0990`
--
ALTER TABLE `reg_0990`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1001`
--
ALTER TABLE `reg_1001`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1010`
--
ALTER TABLE `reg_1010`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1100`
--
ALTER TABLE `reg_1100`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1105`
--
ALTER TABLE `reg_1105`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1110`
--
ALTER TABLE `reg_1110`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1200`
--
ALTER TABLE `reg_1200`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1210`
--
ALTER TABLE `reg_1210`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1300`
--
ALTER TABLE `reg_1300`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1310`
--
ALTER TABLE `reg_1310`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1320`
--
ALTER TABLE `reg_1320`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1350`
--
ALTER TABLE `reg_1350`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1360`
--
ALTER TABLE `reg_1360`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1370`
--
ALTER TABLE `reg_1370`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1390`
--
ALTER TABLE `reg_1390`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1391`
--
ALTER TABLE `reg_1391`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1400`
--
ALTER TABLE `reg_1400`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1500`
--
ALTER TABLE `reg_1500`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1510`
--
ALTER TABLE `reg_1510`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1600`
--
ALTER TABLE `reg_1600`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1700`
--
ALTER TABLE `reg_1700`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1710`
--
ALTER TABLE `reg_1710`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1800`
--
ALTER TABLE `reg_1800`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1900`
--
ALTER TABLE `reg_1900`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1910`
--
ALTER TABLE `reg_1910`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1920`
--
ALTER TABLE `reg_1920`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1921`
--
ALTER TABLE `reg_1921`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1922`
--
ALTER TABLE `reg_1922`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1923`
--
ALTER TABLE `reg_1923`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1925`
--
ALTER TABLE `reg_1925`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1926`
--
ALTER TABLE `reg_1926`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_1990`
--
ALTER TABLE `reg_1990`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_9001`
--
ALTER TABLE `reg_9001`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_9900`
--
ALTER TABLE `reg_9900`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_9990`
--
ALTER TABLE `reg_9990`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_9999`
--
ALTER TABLE `reg_9999`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c001`
--
ALTER TABLE `reg_c001`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c100`
--
ALTER TABLE `reg_c100`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c100xml`
--
ALTER TABLE `reg_c100xml`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c105`
--
ALTER TABLE `reg_c105`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c110`
--
ALTER TABLE `reg_c110`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c111`
--
ALTER TABLE `reg_c111`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c112`
--
ALTER TABLE `reg_c112`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c113`
--
ALTER TABLE `reg_c113`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c114`
--
ALTER TABLE `reg_c114`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c115`
--
ALTER TABLE `reg_c115`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c116`
--
ALTER TABLE `reg_c116`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c120`
--
ALTER TABLE `reg_c120`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c130`
--
ALTER TABLE `reg_c130`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c140`
--
ALTER TABLE `reg_c140`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c141`
--
ALTER TABLE `reg_c141`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c160`
--
ALTER TABLE `reg_c160`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c165`
--
ALTER TABLE `reg_c165`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c170`
--
ALTER TABLE `reg_c170`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c171`
--
ALTER TABLE `reg_c171`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c172`
--
ALTER TABLE `reg_c172`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c173`
--
ALTER TABLE `reg_c173`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c174`
--
ALTER TABLE `reg_c174`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c175`
--
ALTER TABLE `reg_c175`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c176`
--
ALTER TABLE `reg_c176`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c177`
--
ALTER TABLE `reg_c177`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c178`
--
ALTER TABLE `reg_c178`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c179`
--
ALTER TABLE `reg_c179`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c190`
--
ALTER TABLE `reg_c190`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c195`
--
ALTER TABLE `reg_c195`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c197`
--
ALTER TABLE `reg_c197`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c300`
--
ALTER TABLE `reg_c300`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c310`
--
ALTER TABLE `reg_c310`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c320`
--
ALTER TABLE `reg_c320`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c321`
--
ALTER TABLE `reg_c321`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c350`
--
ALTER TABLE `reg_c350`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c370`
--
ALTER TABLE `reg_c370`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c390`
--
ALTER TABLE `reg_c390`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c400`
--
ALTER TABLE `reg_c400`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c405`
--
ALTER TABLE `reg_c405`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c410`
--
ALTER TABLE `reg_c410`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c420`
--
ALTER TABLE `reg_c420`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c425`
--
ALTER TABLE `reg_c425`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c460`
--
ALTER TABLE `reg_c460`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c465`
--
ALTER TABLE `reg_c465`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c470`
--
ALTER TABLE `reg_c470`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c490`
--
ALTER TABLE `reg_c490`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c495`
--
ALTER TABLE `reg_c495`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c500`
--
ALTER TABLE `reg_c500`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c510`
--
ALTER TABLE `reg_c510`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c590`
--
ALTER TABLE `reg_c590`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c600`
--
ALTER TABLE `reg_c600`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c601`
--
ALTER TABLE `reg_c601`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c610`
--
ALTER TABLE `reg_c610`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c690`
--
ALTER TABLE `reg_c690`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c700`
--
ALTER TABLE `reg_c700`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c790`
--
ALTER TABLE `reg_c790`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c791`
--
ALTER TABLE `reg_c791`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c800`
--
ALTER TABLE `reg_c800`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c850`
--
ALTER TABLE `reg_c850`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c860`
--
ALTER TABLE `reg_c860`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c890`
--
ALTER TABLE `reg_c890`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_c990`
--
ALTER TABLE `reg_c990`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d001`
--
ALTER TABLE `reg_d001`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d100`
--
ALTER TABLE `reg_d100`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d110`
--
ALTER TABLE `reg_d110`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d120`
--
ALTER TABLE `reg_d120`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d130`
--
ALTER TABLE `reg_d130`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d140`
--
ALTER TABLE `reg_d140`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d150`
--
ALTER TABLE `reg_d150`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d160`
--
ALTER TABLE `reg_d160`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d161`
--
ALTER TABLE `reg_d161`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d162`
--
ALTER TABLE `reg_d162`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d170`
--
ALTER TABLE `reg_d170`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d180`
--
ALTER TABLE `reg_d180`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d190`
--
ALTER TABLE `reg_d190`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d195`
--
ALTER TABLE `reg_d195`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d197`
--
ALTER TABLE `reg_d197`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d300`
--
ALTER TABLE `reg_d300`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d301`
--
ALTER TABLE `reg_d301`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d310`
--
ALTER TABLE `reg_d310`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d350`
--
ALTER TABLE `reg_d350`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d355`
--
ALTER TABLE `reg_d355`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d360`
--
ALTER TABLE `reg_d360`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d365`
--
ALTER TABLE `reg_d365`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d370`
--
ALTER TABLE `reg_d370`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d390`
--
ALTER TABLE `reg_d390`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d400`
--
ALTER TABLE `reg_d400`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d410`
--
ALTER TABLE `reg_d410`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d411`
--
ALTER TABLE `reg_d411`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d420`
--
ALTER TABLE `reg_d420`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d500`
--
ALTER TABLE `reg_d500`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d510`
--
ALTER TABLE `reg_d510`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d530`
--
ALTER TABLE `reg_d530`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d590`
--
ALTER TABLE `reg_d590`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d600`
--
ALTER TABLE `reg_d600`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d610`
--
ALTER TABLE `reg_d610`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d690`
--
ALTER TABLE `reg_d690`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d695`
--
ALTER TABLE `reg_d695`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d696`
--
ALTER TABLE `reg_d696`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d697`
--
ALTER TABLE `reg_d697`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_d990`
--
ALTER TABLE `reg_d990`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e001`
--
ALTER TABLE `reg_e001`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e100`
--
ALTER TABLE `reg_e100`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e110`
--
ALTER TABLE `reg_e110`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e111`
--
ALTER TABLE `reg_e111`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e112`
--
ALTER TABLE `reg_e112`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e113`
--
ALTER TABLE `reg_e113`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e115`
--
ALTER TABLE `reg_e115`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e116`
--
ALTER TABLE `reg_e116`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e200`
--
ALTER TABLE `reg_e200`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e210`
--
ALTER TABLE `reg_e210`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e220`
--
ALTER TABLE `reg_e220`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e230`
--
ALTER TABLE `reg_e230`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e240`
--
ALTER TABLE `reg_e240`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e250`
--
ALTER TABLE `reg_e250`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e500`
--
ALTER TABLE `reg_e500`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e510`
--
ALTER TABLE `reg_e510`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e520`
--
ALTER TABLE `reg_e520`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e530`
--
ALTER TABLE `reg_e530`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_e990`
--
ALTER TABLE `reg_e990`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_g001`
--
ALTER TABLE `reg_g001`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_g110`
--
ALTER TABLE `reg_g110`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_g125`
--
ALTER TABLE `reg_g125`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_g126`
--
ALTER TABLE `reg_g126`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_g130`
--
ALTER TABLE `reg_g130`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_g140`
--
ALTER TABLE `reg_g140`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_g990`
--
ALTER TABLE `reg_g990`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_h001`
--
ALTER TABLE `reg_h001`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_h005`
--
ALTER TABLE `reg_h005`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_h010`
--
ALTER TABLE `reg_h010`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_h020`
--
ALTER TABLE `reg_h020`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_h990`
--
ALTER TABLE `reg_h990`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_k001`
--
ALTER TABLE `reg_k001`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_k100`
--
ALTER TABLE `reg_k100`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_k200`
--
ALTER TABLE `reg_k200`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_k220`
--
ALTER TABLE `reg_k220`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_k230`
--
ALTER TABLE `reg_k230`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_k235`
--
ALTER TABLE `reg_k235`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_k250`
--
ALTER TABLE `reg_k250`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_k255`
--
ALTER TABLE `reg_k255`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_k990`
--
ALTER TABLE `reg_k990`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `estoque_qtd`
--
ALTER TABLE `estoque_qtd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ibge_uf`
--
ALTER TABLE `ibge_uf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5582;
--
-- AUTO_INCREMENT for table `reg_0000`
--
ALTER TABLE `reg_0000`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0001`
--
ALTER TABLE `reg_0001`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0005`
--
ALTER TABLE `reg_0005`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0015`
--
ALTER TABLE `reg_0015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0100`
--
ALTER TABLE `reg_0100`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0150`
--
ALTER TABLE `reg_0150`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0150xml`
--
ALTER TABLE `reg_0150xml`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0175`
--
ALTER TABLE `reg_0175`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0190`
--
ALTER TABLE `reg_0190`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0200`
--
ALTER TABLE `reg_0200`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0205`
--
ALTER TABLE `reg_0205`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0206`
--
ALTER TABLE `reg_0206`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0210`
--
ALTER TABLE `reg_0210`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0220`
--
ALTER TABLE `reg_0220`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0300`
--
ALTER TABLE `reg_0300`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0305`
--
ALTER TABLE `reg_0305`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0400`
--
ALTER TABLE `reg_0400`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0450`
--
ALTER TABLE `reg_0450`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0460`
--
ALTER TABLE `reg_0460`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0500`
--
ALTER TABLE `reg_0500`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0600`
--
ALTER TABLE `reg_0600`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_0990`
--
ALTER TABLE `reg_0990`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1001`
--
ALTER TABLE `reg_1001`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1010`
--
ALTER TABLE `reg_1010`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1100`
--
ALTER TABLE `reg_1100`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1105`
--
ALTER TABLE `reg_1105`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1110`
--
ALTER TABLE `reg_1110`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1200`
--
ALTER TABLE `reg_1200`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1210`
--
ALTER TABLE `reg_1210`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1300`
--
ALTER TABLE `reg_1300`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1310`
--
ALTER TABLE `reg_1310`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1320`
--
ALTER TABLE `reg_1320`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1350`
--
ALTER TABLE `reg_1350`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1360`
--
ALTER TABLE `reg_1360`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1370`
--
ALTER TABLE `reg_1370`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1390`
--
ALTER TABLE `reg_1390`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1391`
--
ALTER TABLE `reg_1391`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1400`
--
ALTER TABLE `reg_1400`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1500`
--
ALTER TABLE `reg_1500`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1510`
--
ALTER TABLE `reg_1510`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1600`
--
ALTER TABLE `reg_1600`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1700`
--
ALTER TABLE `reg_1700`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1710`
--
ALTER TABLE `reg_1710`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1800`
--
ALTER TABLE `reg_1800`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1900`
--
ALTER TABLE `reg_1900`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1910`
--
ALTER TABLE `reg_1910`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1920`
--
ALTER TABLE `reg_1920`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1921`
--
ALTER TABLE `reg_1921`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1922`
--
ALTER TABLE `reg_1922`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1923`
--
ALTER TABLE `reg_1923`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1925`
--
ALTER TABLE `reg_1925`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1926`
--
ALTER TABLE `reg_1926`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_1990`
--
ALTER TABLE `reg_1990`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_9001`
--
ALTER TABLE `reg_9001`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_9900`
--
ALTER TABLE `reg_9900`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_9990`
--
ALTER TABLE `reg_9990`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_9999`
--
ALTER TABLE `reg_9999`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c001`
--
ALTER TABLE `reg_c001`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c100`
--
ALTER TABLE `reg_c100`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c100xml`
--
ALTER TABLE `reg_c100xml`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c105`
--
ALTER TABLE `reg_c105`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c110`
--
ALTER TABLE `reg_c110`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c111`
--
ALTER TABLE `reg_c111`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c112`
--
ALTER TABLE `reg_c112`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c113`
--
ALTER TABLE `reg_c113`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c114`
--
ALTER TABLE `reg_c114`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c115`
--
ALTER TABLE `reg_c115`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c116`
--
ALTER TABLE `reg_c116`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c120`
--
ALTER TABLE `reg_c120`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c130`
--
ALTER TABLE `reg_c130`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c140`
--
ALTER TABLE `reg_c140`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c141`
--
ALTER TABLE `reg_c141`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c160`
--
ALTER TABLE `reg_c160`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c165`
--
ALTER TABLE `reg_c165`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c170`
--
ALTER TABLE `reg_c170`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c171`
--
ALTER TABLE `reg_c171`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c172`
--
ALTER TABLE `reg_c172`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c173`
--
ALTER TABLE `reg_c173`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c174`
--
ALTER TABLE `reg_c174`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c175`
--
ALTER TABLE `reg_c175`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c176`
--
ALTER TABLE `reg_c176`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c177`
--
ALTER TABLE `reg_c177`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c178`
--
ALTER TABLE `reg_c178`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c179`
--
ALTER TABLE `reg_c179`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c190`
--
ALTER TABLE `reg_c190`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c195`
--
ALTER TABLE `reg_c195`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c197`
--
ALTER TABLE `reg_c197`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c300`
--
ALTER TABLE `reg_c300`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c310`
--
ALTER TABLE `reg_c310`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c320`
--
ALTER TABLE `reg_c320`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c321`
--
ALTER TABLE `reg_c321`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c350`
--
ALTER TABLE `reg_c350`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c370`
--
ALTER TABLE `reg_c370`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c390`
--
ALTER TABLE `reg_c390`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c400`
--
ALTER TABLE `reg_c400`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c405`
--
ALTER TABLE `reg_c405`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c410`
--
ALTER TABLE `reg_c410`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c420`
--
ALTER TABLE `reg_c420`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c425`
--
ALTER TABLE `reg_c425`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c460`
--
ALTER TABLE `reg_c460`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c465`
--
ALTER TABLE `reg_c465`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c470`
--
ALTER TABLE `reg_c470`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c490`
--
ALTER TABLE `reg_c490`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c495`
--
ALTER TABLE `reg_c495`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c500`
--
ALTER TABLE `reg_c500`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c510`
--
ALTER TABLE `reg_c510`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c590`
--
ALTER TABLE `reg_c590`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c600`
--
ALTER TABLE `reg_c600`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c601`
--
ALTER TABLE `reg_c601`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c610`
--
ALTER TABLE `reg_c610`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c690`
--
ALTER TABLE `reg_c690`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c700`
--
ALTER TABLE `reg_c700`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c790`
--
ALTER TABLE `reg_c790`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c791`
--
ALTER TABLE `reg_c791`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c800`
--
ALTER TABLE `reg_c800`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c850`
--
ALTER TABLE `reg_c850`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c860`
--
ALTER TABLE `reg_c860`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c890`
--
ALTER TABLE `reg_c890`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_c990`
--
ALTER TABLE `reg_c990`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d001`
--
ALTER TABLE `reg_d001`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d100`
--
ALTER TABLE `reg_d100`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d110`
--
ALTER TABLE `reg_d110`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d120`
--
ALTER TABLE `reg_d120`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d130`
--
ALTER TABLE `reg_d130`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d140`
--
ALTER TABLE `reg_d140`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d150`
--
ALTER TABLE `reg_d150`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d160`
--
ALTER TABLE `reg_d160`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d161`
--
ALTER TABLE `reg_d161`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d162`
--
ALTER TABLE `reg_d162`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d170`
--
ALTER TABLE `reg_d170`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d180`
--
ALTER TABLE `reg_d180`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d190`
--
ALTER TABLE `reg_d190`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d195`
--
ALTER TABLE `reg_d195`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d197`
--
ALTER TABLE `reg_d197`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d300`
--
ALTER TABLE `reg_d300`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d301`
--
ALTER TABLE `reg_d301`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d310`
--
ALTER TABLE `reg_d310`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d350`
--
ALTER TABLE `reg_d350`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d355`
--
ALTER TABLE `reg_d355`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d360`
--
ALTER TABLE `reg_d360`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d365`
--
ALTER TABLE `reg_d365`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d370`
--
ALTER TABLE `reg_d370`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d390`
--
ALTER TABLE `reg_d390`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d400`
--
ALTER TABLE `reg_d400`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d410`
--
ALTER TABLE `reg_d410`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d411`
--
ALTER TABLE `reg_d411`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d420`
--
ALTER TABLE `reg_d420`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d500`
--
ALTER TABLE `reg_d500`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d510`
--
ALTER TABLE `reg_d510`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d530`
--
ALTER TABLE `reg_d530`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d590`
--
ALTER TABLE `reg_d590`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d600`
--
ALTER TABLE `reg_d600`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d610`
--
ALTER TABLE `reg_d610`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d690`
--
ALTER TABLE `reg_d690`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d695`
--
ALTER TABLE `reg_d695`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d696`
--
ALTER TABLE `reg_d696`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d697`
--
ALTER TABLE `reg_d697`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_d990`
--
ALTER TABLE `reg_d990`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e001`
--
ALTER TABLE `reg_e001`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e100`
--
ALTER TABLE `reg_e100`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e110`
--
ALTER TABLE `reg_e110`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e111`
--
ALTER TABLE `reg_e111`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e112`
--
ALTER TABLE `reg_e112`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e113`
--
ALTER TABLE `reg_e113`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e115`
--
ALTER TABLE `reg_e115`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e116`
--
ALTER TABLE `reg_e116`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e200`
--
ALTER TABLE `reg_e200`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e210`
--
ALTER TABLE `reg_e210`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e220`
--
ALTER TABLE `reg_e220`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e230`
--
ALTER TABLE `reg_e230`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e240`
--
ALTER TABLE `reg_e240`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e250`
--
ALTER TABLE `reg_e250`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e500`
--
ALTER TABLE `reg_e500`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e510`
--
ALTER TABLE `reg_e510`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e520`
--
ALTER TABLE `reg_e520`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e530`
--
ALTER TABLE `reg_e530`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_e990`
--
ALTER TABLE `reg_e990`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_g001`
--
ALTER TABLE `reg_g001`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_g110`
--
ALTER TABLE `reg_g110`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_g125`
--
ALTER TABLE `reg_g125`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_g126`
--
ALTER TABLE `reg_g126`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_g130`
--
ALTER TABLE `reg_g130`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_g140`
--
ALTER TABLE `reg_g140`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_g990`
--
ALTER TABLE `reg_g990`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_h001`
--
ALTER TABLE `reg_h001`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_h005`
--
ALTER TABLE `reg_h005`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_h010`
--
ALTER TABLE `reg_h010`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_h020`
--
ALTER TABLE `reg_h020`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_h990`
--
ALTER TABLE `reg_h990`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_k001`
--
ALTER TABLE `reg_k001`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_k100`
--
ALTER TABLE `reg_k100`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_k200`
--
ALTER TABLE `reg_k200`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_k220`
--
ALTER TABLE `reg_k220`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_k230`
--
ALTER TABLE `reg_k230`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_k235`
--
ALTER TABLE `reg_k235`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_k250`
--
ALTER TABLE `reg_k250`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_k255`
--
ALTER TABLE `reg_k255`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_k990`
--
ALTER TABLE `reg_k990`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
