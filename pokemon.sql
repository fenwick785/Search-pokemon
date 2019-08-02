-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 02 août 2019 à 14:14
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pokemon`
--

-- --------------------------------------------------------

--
-- Structure de la table `detientpokemon`
--

CREATE TABLE `detientpokemon` (
  `id_dress` int(11) NOT NULL,
  `id_pok` int(11) NOT NULL,
  `lvl_pok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `detientpokemon`
--

INSERT INTO `detientpokemon` (`id_dress`, `id_pok`, `lvl_pok`) VALUES
(2, 74, 12),
(2, 95, 14),
(3, 120, 18),
(3, 121, 21),
(4, 100, 21),
(4, 25, 18),
(4, 26, 24),
(5, 71, 29),
(5, 114, 24),
(5, 45, 29),
(6, 109, 37),
(6, 89, 39),
(6, 109, 37),
(6, 110, 43),
(7, 64, 38),
(7, 122, 37),
(7, 49, 38),
(7, 65, 43),
(8, 58, 42),
(8, 77, 40),
(8, 78, 42),
(8, 59, 47),
(9, 111, 42),
(9, 51, 42),
(9, 31, 44),
(9, 34, 45),
(9, 112, 50),
(10, 87, 54),
(10, 91, 53),
(10, 80, 54),
(10, 124, 56),
(10, 131, 56),
(11, 95, 53),
(11, 107, 55),
(11, 106, 55),
(11, 95, 56),
(11, 68, 58),
(12, 94, 56),
(12, 42, 56),
(12, 93, 55),
(12, 24, 58),
(12, 94, 60),
(13, 130, 58),
(13, 148, 56),
(13, 148, 56),
(13, 142, 60),
(13, 149, 62);

-- --------------------------------------------------------

--
-- Structure de la table `dresseur`
--

CREATE TABLE `dresseur` (
  `id_dress` int(11) NOT NULL,
  `nom_dress` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `dresseur`
--

INSERT INTO `dresseur` (`id_dress`, `nom_dress`) VALUES
(2, 'Pierre'),
(3, 'Ondine'),
(4, 'Major Bob'),
(5, 'Erika'),
(6, 'Koga'),
(7, 'Morgane'),
(8, 'Auguste'),
(9, 'Giovanni'),
(10, 'Olga'),
(11, 'Aldo'),
(12, 'Agatha'),
(13, 'Peter');

-- --------------------------------------------------------

--
-- Structure de la table `esttype`
--

CREATE TABLE `esttype` (
  `id_pok` int(11) NOT NULL,
  `type_pok` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `esttype`
--

INSERT INTO `esttype` (`id_pok`, `type_pok`) VALUES
(1, 'Plante'),
(1, 'Poison'),
(2, 'Plante'),
(2, 'Poison'),
(3, 'Plante'),
(3, 'Poison'),
(4, 'Feu'),
(5, 'Feu'),
(6, 'Feu'),
(6, 'Vol'),
(7, 'Eau'),
(8, 'Eau'),
(9, 'Eau'),
(10, 'Insecte'),
(11, 'Insecte'),
(12, 'Insecte'),
(12, 'Vol'),
(13, 'Insecte'),
(13, 'Poison'),
(14, 'Insecte'),
(14, 'Poison'),
(15, 'Insecte'),
(15, 'Poison'),
(16, 'Normal'),
(16, 'Vol'),
(17, 'Normal'),
(17, 'Vol'),
(18, 'Normal'),
(18, 'Vol'),
(19, 'Normal'),
(20, 'Normal'),
(21, 'Normal'),
(21, 'Vol'),
(22, 'Normal'),
(22, 'Vol'),
(23, 'Poison'),
(24, 'Poison'),
(25, 'Electrique'),
(26, 'Electrique'),
(27, 'Sol'),
(28, 'Sol'),
(29, 'Poison'),
(30, 'Poison'),
(31, 'Poison'),
(31, 'Sol'),
(32, 'Poison'),
(33, 'Poison'),
(34, 'Poison'),
(34, 'Sol'),
(35, 'Normal'),
(36, 'Normal'),
(37, 'Feu'),
(38, 'Feu'),
(39, 'Normal'),
(40, 'Normal'),
(41, 'Poison'),
(41, 'Vol'),
(42, 'Poison'),
(42, 'Vol'),
(43, 'Plante'),
(43, 'Poison'),
(44, 'Plante'),
(44, 'Poison'),
(45, 'Plante'),
(45, 'Poison'),
(46, 'Insecte'),
(46, 'Plante'),
(47, 'Insecte'),
(47, 'Plante'),
(48, 'Insecte'),
(48, 'Poison'),
(49, 'Insecte'),
(49, 'Poison'),
(50, 'Sol'),
(51, 'Sol'),
(52, 'Normal'),
(53, 'Normal'),
(54, 'Eau'),
(55, 'Eau'),
(56, 'Combat'),
(57, 'Combat'),
(58, 'Feu'),
(59, 'Feu'),
(60, 'Eau'),
(61, 'Eau'),
(62, 'Eau'),
(62, 'Combat'),
(63, 'Psy'),
(64, 'Psy'),
(65, 'Psy'),
(66, 'Combat'),
(67, 'Combat'),
(68, 'Combat'),
(69, 'Plante'),
(69, 'Poison'),
(70, 'Plante'),
(70, 'Poison'),
(71, 'Plante'),
(71, 'Poison'),
(72, 'Eau'),
(72, 'Poison'),
(73, 'Eau'),
(73, 'Poison'),
(74, 'Roche'),
(74, 'Sol'),
(75, 'Roche'),
(75, 'Sol'),
(76, 'Roche'),
(76, 'Sol'),
(77, 'Feu'),
(78, 'Feu'),
(79, 'Eau'),
(79, 'Psy'),
(80, 'Eau'),
(80, 'Psy'),
(81, 'Electrique'),
(82, 'Electrique'),
(83, 'Normal'),
(83, 'Vol'),
(84, 'Normal'),
(84, 'Vol'),
(85, 'Normal'),
(85, 'Vol'),
(86, 'Eau'),
(87, 'Eau'),
(87, 'Glace'),
(88, 'Poison'),
(89, 'Poison'),
(90, 'Eau'),
(91, 'Eau'),
(91, 'Glace'),
(92, 'Spectre'),
(92, 'Poison'),
(93, 'Spectre'),
(93, 'Poison'),
(94, 'Spectre'),
(94, 'Poison'),
(95, 'Roche'),
(95, 'Sol'),
(96, 'Psy'),
(97, 'Psy'),
(98, 'Eau'),
(99, 'Eau'),
(100, 'Electrique'),
(101, 'Electrique'),
(102, 'Plante'),
(102, 'Psy'),
(103, 'Plante'),
(103, 'Psy'),
(104, 'Sol'),
(105, 'Sol'),
(106, 'Combat'),
(107, 'Combat'),
(108, 'Normal'),
(109, 'Poison'),
(110, 'Poison'),
(111, 'Sol'),
(111, 'Roche'),
(112, 'Sol'),
(112, 'Roche'),
(113, 'Normal'),
(114, 'Plante'),
(115, 'Normal'),
(116, 'Eau'),
(117, 'Eau'),
(118, 'Eau'),
(119, 'Eau'),
(120, 'Eau'),
(121, 'Eau'),
(121, 'Psy'),
(122, 'Psy'),
(123, 'Insecte'),
(123, 'Vol'),
(124, 'Glace'),
(124, 'Psy'),
(125, 'Electrique'),
(126, 'Feu'),
(127, 'Insecte'),
(128, 'Normal'),
(129, 'Eau'),
(130, 'Eau'),
(130, 'Vol'),
(131, 'Eau'),
(131, 'Glace'),
(132, 'Normal'),
(133, 'Normal'),
(134, 'Eau'),
(135, 'Electrique'),
(136, 'Feu'),
(137, 'Normal'),
(138, 'Roche'),
(138, 'Eau'),
(139, 'Roche'),
(139, 'Eau'),
(140, 'Roche'),
(140, 'Eau'),
(141, 'Roche'),
(141, 'Eau'),
(142, 'Roche'),
(142, 'Vol'),
(143, 'Normal'),
(144, 'Glace'),
(144, 'Vol'),
(145, 'Electrique'),
(145, 'Vol'),
(146, 'Feu'),
(146, 'Vol'),
(147, 'Dragon'),
(148, 'Dragon'),
(149, 'Dragon'),
(149, 'Vol'),
(150, 'Psy'),
(151, 'Psy');

-- --------------------------------------------------------

--
-- Structure de la table `evolueen`
--

CREATE TABLE `evolueen` (
  `id_pok_base` int(11) NOT NULL,
  `id_pok_evol` int(11) NOT NULL,
  `lvl_evol_pok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `evolueen`
--

INSERT INTO `evolueen` (`id_pok_base`, `id_pok_evol`, `lvl_evol_pok`) VALUES
(1, 2, 16),
(2, 3, 32),
(4, 5, 16),
(5, 6, 36),
(7, 8, 16),
(8, 9, 36),
(10, 11, 7),
(11, 12, 10),
(13, 14, 7),
(14, 15, 10),
(16, 17, 18),
(17, 18, 36),
(19, 20, 20),
(21, 22, 20),
(23, 24, 22),
(25, 26, -1),
(27, 28, 22),
(29, 30, 16),
(30, 31, -1),
(32, 33, 16),
(33, 34, -1),
(35, 36, -1),
(37, 38, -1),
(39, 40, -1),
(41, 42, 22),
(43, 44, 21),
(44, 45, -1),
(46, 47, 24),
(48, 49, 31),
(50, 51, 26),
(52, 53, 28),
(54, 55, 33),
(56, 57, 28),
(58, 59, -1),
(60, 61, 25),
(61, 62, -1),
(63, 64, 16),
(64, 65, -2),
(66, 67, 28),
(67, 68, -2),
(69, 70, 21),
(70, 71, -1),
(72, 73, 30),
(74, 75, 25),
(75, 76, -2),
(77, 78, 40),
(79, 80, 37),
(81, 82, 30),
(84, 85, 31),
(86, 87, 34),
(88, 89, 38),
(90, 91, -1),
(92, 93, 25),
(93, 94, -2),
(96, 97, 26),
(98, 99, 28),
(100, 101, 30),
(102, 103, -1),
(104, 105, 28),
(109, 110, 35),
(111, 112, 42),
(116, 117, 32),
(118, 119, 33),
(120, 121, -1),
(129, 130, 20),
(133, 134, -1),
(133, 135, -1),
(133, 136, -1),
(138, 139, 40),
(140, 141, 40),
(147, 148, 30),
(148, 149, 55);

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

CREATE TABLE `pokemon` (
  `id_pok` int(11) NOT NULL,
  `nom_pok` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`id_pok`, `nom_pok`) VALUES
(1, 'Bulbizarre'),
(2, 'Herbizarre'),
(3, 'Florizarre'),
(4, 'Salameche'),
(5, 'Reptincel'),
(6, 'Dracaufeu'),
(7, 'Carapuce'),
(8, 'Carabaffe'),
(9, 'Tortank'),
(10, 'Chenipan'),
(11, 'Chrysacier'),
(12, 'Papilusion'),
(13, 'Aspicot'),
(14, 'Coconfort'),
(15, 'Dardargnan'),
(16, 'Roucool'),
(17, 'Roucoups'),
(18, 'Roucarnage'),
(19, 'Rattata'),
(20, 'Rattatac'),
(21, 'Piafabec'),
(22, 'Rapasdepic'),
(23, 'Abo'),
(24, 'Arbok'),
(25, 'Pikachu'),
(26, 'Raichu'),
(27, 'Sabelette'),
(28, 'Sablaireau'),
(29, 'NidoranF'),
(30, 'Nidorina'),
(31, 'Nidoqueen'),
(32, 'NidoranM'),
(33, 'Nidorino'),
(34, 'Nidoking'),
(35, 'Melofee'),
(36, 'Melodelfe'),
(37, 'Goupix'),
(38, 'Feunard'),
(39, 'Rondoudou'),
(40, 'Grodoudou'),
(41, 'Nosferapti'),
(42, 'Nosferalto'),
(43, 'Mystherbe'),
(44, 'Ortide'),
(45, 'Rafflesia'),
(46, 'Paras'),
(47, 'Parasect'),
(48, 'Mimitoss'),
(49, 'Aeromite'),
(50, 'Taupiqueur'),
(51, 'Triopikeur'),
(52, 'Miaouss'),
(53, 'Persian'),
(54, 'Psykokwak'),
(55, 'Akwakwak'),
(56, 'Ferosinge'),
(57, 'Colossinge'),
(58, 'Caninos'),
(59, 'Arcanin'),
(60, 'Ptitard'),
(61, 'Tetarte'),
(62, 'Tartard'),
(63, 'Abra'),
(64, 'Kadabra'),
(65, 'Alakazam'),
(66, 'Machoc'),
(67, 'Machopeur'),
(68, 'Mackogneur'),
(69, 'Chetiflor'),
(70, 'Boustiflor'),
(71, 'Empiflor'),
(72, 'Tentacool'),
(73, 'Tentacruel'),
(74, 'Racaillou'),
(75, 'Gravalanch'),
(76, 'Grolem'),
(77, 'Ponyta'),
(78, 'Galopa'),
(79, 'Ramoloss'),
(80, 'Flagadoss'),
(81, 'Magneti'),
(82, 'Magneton'),
(83, 'Canarticho'),
(84, 'Doduo'),
(85, 'Dodrio'),
(86, 'Otaria'),
(87, 'Lamantine'),
(88, 'Tadmorv'),
(89, 'Grotadmorv'),
(90, 'Kokiyas'),
(91, 'Crustabri'),
(92, 'Fantominus'),
(93, 'Spectrum'),
(94, 'Ectoplasma'),
(95, 'Onix'),
(96, 'Soporifik'),
(97, 'Hypnomade'),
(98, 'Krabby'),
(99, 'Krabboss'),
(100, 'Voltorbe'),
(101, 'Electrode'),
(102, 'Noeunoeuf'),
(103, 'Noadkoko'),
(104, 'Osselait'),
(105, 'Ossatueur'),
(106, 'Kicklee'),
(107, 'Tygnon'),
(108, 'Excelangue'),
(109, 'Smogo'),
(110, 'Smogogo'),
(111, 'Rhinocorne'),
(112, 'Rhinoferos'),
(113, 'Leveinard'),
(114, 'Saquedeneu'),
(115, 'Kangourex'),
(116, 'Hypotrempe'),
(117, 'Hypocean'),
(118, 'Poissirene'),
(119, 'Poissoroy'),
(120, 'Stari'),
(121, 'Staross'),
(122, 'M. Mime'),
(123, 'Insecateur'),
(124, 'Lippoutou'),
(125, 'Elektek'),
(126, 'Magmar'),
(127, 'Scarabrute'),
(128, 'Tauros'),
(129, 'Magicarpe'),
(130, 'Leviator'),
(131, 'Lokhlass'),
(132, 'Metamorph'),
(133, 'Evoli'),
(134, 'Aquali'),
(135, 'Voltali'),
(136, 'Pyroli'),
(137, 'Porygon'),
(138, 'Amonita'),
(139, 'Amonistar'),
(140, 'Kabuto'),
(141, 'Kabutops'),
(142, 'Ptera'),
(143, 'Ronflex'),
(144, 'Artikodin'),
(145, 'Electhor'),
(146, 'Sulfura'),
(147, 'Minidraco'),
(148, 'Draco'),
(149, 'Dracolosse'),
(150, 'Mewtwo'),
(151, 'Mew');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `detientpokemon`
--
ALTER TABLE `detientpokemon`
  ADD KEY `id_dress` (`id_dress`),
  ADD KEY `id_pok` (`id_pok`);

--
-- Index pour la table `dresseur`
--
ALTER TABLE `dresseur`
  ADD PRIMARY KEY (`id_dress`);

--
-- Index pour la table `esttype`
--
ALTER TABLE `esttype`
  ADD KEY `id_pok` (`id_pok`);

--
-- Index pour la table `evolueen`
--
ALTER TABLE `evolueen`
  ADD KEY `id_pok_base` (`id_pok_base`),
  ADD KEY `id_pok_evol` (`id_pok_evol`);

--
-- Index pour la table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id_pok`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `detientpokemon`
--
ALTER TABLE `detientpokemon`
  ADD CONSTRAINT `detientpokemon_ibfk_1` FOREIGN KEY (`id_pok`) REFERENCES `pokemon` (`id_pok`),
  ADD CONSTRAINT `detientpokemon_ibfk_2` FOREIGN KEY (`id_dress`) REFERENCES `dresseur` (`id_dress`);

--
-- Contraintes pour la table `esttype`
--
ALTER TABLE `esttype`
  ADD CONSTRAINT `esttype_ibfk_1` FOREIGN KEY (`id_pok`) REFERENCES `pokemon` (`id_pok`);

--
-- Contraintes pour la table `evolueen`
--
ALTER TABLE `evolueen`
  ADD CONSTRAINT `evolueen_ibfk_1` FOREIGN KEY (`id_pok_base`) REFERENCES `pokemon` (`id_pok`),
  ADD CONSTRAINT `evolueen_ibfk_2` FOREIGN KEY (`id_pok_evol`) REFERENCES `pokemon` (`id_pok`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
