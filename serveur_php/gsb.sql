-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 05 Avril 2021 à 13:22
-- Version du serveur :  5.7.11-log
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gsb`
--

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

CREATE TABLE `etat` (
  `id` char(2) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etat`
--

INSERT INTO `etat` (`id`, `libelle`) VALUES
('CL', 'Saisie clôturée'),
('CR', 'Fiche créée, saisie en cours'),
('MP', 'Mise en paiement'),
('RB', 'Remboursée'),
('VA', 'Validée');

-- --------------------------------------------------------

--
-- Structure de la table `fichefrais`
--

CREATE TABLE `fichefrais` (
  `idvisiteur` char(4) NOT NULL,
  `mois` char(6) NOT NULL,
  `nbjustificatifs` int(11) DEFAULT NULL,
  `montantvalide` decimal(10,2) DEFAULT NULL,
  `datemodif` date DEFAULT NULL,
  `idetat` char(2) DEFAULT 'CR'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fichefrais`
--

INSERT INTO `fichefrais` (`idvisiteur`, `mois`, `nbjustificatifs`, `montantvalide`, `datemodif`, `idetat`) VALUES
('a131', '202101', 5, '2640.38', '2021-03-02', 'RB'),
('a131', '202102', 8, '2006.66', '2021-03-04', 'VA'),
('a131', '202103', 6, '1379.00', '2021-04-04', 'VA'),
('a17', '202101', 9, '3312.92', '2021-03-08', 'RB'),
('a17', '202102', 3, '3632.36', '2021-03-02', 'VA'),
('a17', '202103', 7, '0.00', '2021-03-08', 'CL'),
('a55', '202101', 12, '3743.70', '2021-03-06', 'RB'),
('a55', '202102', 1, '4241.50', '2021-03-01', 'VA'),
('a55', '202103', 11, '0.00', '2021-03-07', 'CL'),
('a93', '202101', 9, '2951.60', '2021-03-08', 'RB'),
('a93', '202102', 9, '2145.37', '2021-03-08', 'VA'),
('a93', '202103', 1, '0.00', '2021-03-07', 'CL'),
('b13', '202101', 10, '3418.94', '2021-03-01', 'RB'),
('b13', '202102', 5, '3227.69', '2021-03-08', 'VA'),
('b13', '202103', 12, '0.00', '2021-03-08', 'CL'),
('b16', '202101', 7, '2906.67', '2021-03-08', 'RB'),
('b16', '202102', 0, '4719.59', '2021-03-07', 'VA'),
('b16', '202103', 2, '0.00', '2021-03-04', 'CL'),
('b19', '202101', 11, '3381.42', '2021-03-08', 'RB'),
('b19', '202102', 4, '2116.92', '2021-03-03', 'VA'),
('b19', '202103', 10, '0.00', '2021-03-02', 'CL'),
('b25', '202101', 10, '2902.79', '2021-03-02', 'RB'),
('b25', '202102', 6, '2931.69', '2021-03-08', 'VA'),
('b25', '202103', 1, '0.00', '2021-03-06', 'CL'),
('b28', '202101', 7, '3508.12', '2021-03-01', 'RB'),
('b28', '202102', 12, '2094.33', '2021-03-08', 'VA'),
('b28', '202103', 3, '0.00', '2021-03-08', 'CL'),
('b34', '202101', 9, '1300.03', '2021-03-04', 'RB'),
('b34', '202102', 0, '2769.25', '2021-03-07', 'VA'),
('b34', '202103', 5, '0.00', '2021-03-08', 'CL'),
('b4', '202101', 10, '2623.48', '2021-03-03', 'RB'),
('b4', '202102', 11, '5728.19', '2021-03-02', 'VA'),
('b4', '202103', 11, '0.00', '2021-03-04', 'CL'),
('b50', '202101', 12, '2680.47', '2021-03-08', 'RB'),
('b50', '202102', 0, '4562.92', '2021-03-05', 'VA'),
('b50', '202103', 4, '0.00', '2021-03-07', 'CL'),
('b59', '202101', 12, '3848.36', '2021-03-04', 'RB'),
('b59', '202102', 4, '2783.22', '2021-03-08', 'VA'),
('b59', '202103', 4, '0.00', '2021-03-08', 'CL'),
('c14', '202101', 8, '3053.44', '2021-03-04', 'RB'),
('c14', '202102', 6, '2203.95', '2021-03-06', 'VA'),
('c14', '202103', 5, '0.00', '2021-03-06', 'CL'),
('c3', '202101', 12, '3889.46', '2021-03-02', 'RB'),
('c3', '202102', 0, '4143.59', '2021-03-02', 'VA'),
('c3', '202103', 3, '0.00', '2021-03-06', 'CL'),
('c54', '202101', 5, '1159.50', '2021-03-04', 'RB'),
('c54', '202102', 9, '2727.52', '2021-03-01', 'VA'),
('c54', '202103', 12, '0.00', '2021-03-03', 'CL'),
('ct01', '202101', 2, '3214.00', '2021-03-04', 'RB'),
('ct01', '202102', 12, '4111.12', '2021-03-01', 'VA'),
('ct01', '202103', 5, '0.00', '2021-03-02', 'CL'),
('d13', '202101', 6, '3297.40', '2021-03-04', 'RB'),
('d13', '202102', 9, '1878.76', '2021-03-04', 'VA'),
('d13', '202103', 6, '0.00', '2021-03-08', 'CL'),
('d51', '202101', 7, '3717.75', '2021-03-06', 'RB'),
('d51', '202102', 12, '3130.27', '2021-03-05', 'VA'),
('d51', '202103', 3, '0.00', '2021-03-03', 'CL'),
('e22', '202101', 6, '1472.24', '2021-03-08', 'RB'),
('e22', '202102', 10, '3471.18', '2021-03-06', 'VA'),
('e22', '202103', 3, '0.00', '2021-03-04', 'CL'),
('e24', '202101', 6, '2752.30', '2021-03-02', 'RB'),
('e24', '202102', 0, '3248.94', '2021-03-05', 'VA'),
('e24', '202103', 9, '0.00', '2021-03-07', 'CL'),
('e39', '202101', 6, '4271.79', '2021-03-05', 'RB'),
('e39', '202102', 12, '4605.81', '2021-03-03', 'VA'),
('e39', '202103', 11, '0.00', '2021-03-08', 'CL'),
('e49', '202101', 12, '2954.36', '2021-03-02', 'RB'),
('e49', '202102', 11, '3319.08', '2021-03-03', 'VA'),
('e49', '202103', 2, '0.00', '2021-03-05', 'CL'),
('e5', '202101', 3, '2684.45', '2021-03-06', 'RB'),
('e5', '202102', 6, '2994.00', '2021-03-05', 'VA'),
('e5', '202103', 6, '0.00', '2021-03-04', 'CL'),
('e52', '202101', 3, '1703.90', '2021-03-08', 'RB'),
('e52', '202102', 9, '3829.36', '2021-03-06', 'VA'),
('e52', '202103', 6, '0.00', '2021-03-01', 'CL'),
('f21', '202101', 12, '1859.70', '2021-03-02', 'RB'),
('f21', '202102', 5, '3193.16', '2021-03-07', 'VA'),
('f21', '202103', 10, '0.00', '2021-03-01', 'CL'),
('f39', '202101', 4, '5110.00', '2021-03-08', 'RB'),
('f39', '202102', 2, '3605.52', '2021-03-08', 'VA'),
('f39', '202103', 2, '0.00', '2021-03-05', 'CL'),
('f4', '202101', 2, '3442.84', '2021-03-01', 'RB'),
('f4', '202102', 0, '3006.54', '2021-03-01', 'VA'),
('f4', '202103', 12, '0.00', '2021-04-04', 'CL'),
('f4', '202104', 0, '0.00', '2021-04-04', 'CR');

-- --------------------------------------------------------

--
-- Structure de la table `fraisforfait`
--

CREATE TABLE `fraisforfait` (
  `id` char(3) NOT NULL,
  `libelle` char(20) DEFAULT NULL,
  `montant` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fraisforfait`
--

INSERT INTO `fraisforfait` (`id`, `libelle`, `montant`) VALUES
('ETP', 'Forfait Etape', '110.00'),
('KM', 'Frais Kilométrique', '0.62'),
('NUI', 'Nuitée Hôtel', '80.00'),
('REP', 'Repas Restaurant', '25.00');

-- --------------------------------------------------------

--
-- Structure de la table `lignefraisforfait`
--

CREATE TABLE `lignefraisforfait` (
  `idvisiteur` char(4) NOT NULL,
  `mois` char(6) NOT NULL,
  `idfraisforfait` char(3) NOT NULL,
  `quantite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lignefraisforfait`
--

INSERT INTO `lignefraisforfait` (`idvisiteur`, `mois`, `idfraisforfait`, `quantite`) VALUES
('a131', '202101', 'ETP', 10),
('a131', '202101', 'KM', 348),
('a131', '202101', 'NUI', 15),
('a131', '202101', 'REP', 9),
('a131', '202102', 'ETP', 5),
('a131', '202102', 'KM', 719),
('a131', '202102', 'NUI', 8),
('a131', '202102', 'REP', 12),
('a131', '202103', 'ETP', 19),
('a131', '202103', 'KM', 551),
('a131', '202103', 'NUI', 8),
('a131', '202103', 'REP', 3),
('a17', '202101', 'ETP', 15),
('a17', '202101', 'KM', 699),
('a17', '202101', 'NUI', 11),
('a17', '202101', 'REP', 2),
('a17', '202102', 'ETP', 5),
('a17', '202102', 'KM', 967),
('a17', '202102', 'NUI', 4),
('a17', '202102', 'REP', 17),
('a17', '202103', 'ETP', 9),
('a17', '202103', 'KM', 806),
('a17', '202103', 'NUI', 5),
('a17', '202103', 'REP', 9),
('a55', '202101', 'ETP', 19),
('a55', '202101', 'KM', 720),
('a55', '202101', 'NUI', 19),
('a55', '202101', 'REP', 6),
('a55', '202102', 'ETP', 20),
('a55', '202102', 'KM', 863),
('a55', '202102', 'NUI', 6),
('a55', '202102', 'REP', 8),
('a55', '202103', 'ETP', 2),
('a55', '202103', 'KM', 337),
('a55', '202103', 'NUI', 9),
('a55', '202103', 'REP', 4),
('a93', '202101', 'ETP', 5),
('a93', '202101', 'KM', 696),
('a93', '202101', 'NUI', 8),
('a93', '202101', 'REP', 14),
('a93', '202102', 'ETP', 3),
('a93', '202102', 'KM', 342),
('a93', '202102', 'NUI', 8),
('a93', '202102', 'REP', 8),
('a93', '202103', 'ETP', 17),
('a93', '202103', 'KM', 830),
('a93', '202103', 'NUI', 7),
('a93', '202103', 'REP', 4),
('b13', '202101', 'ETP', 19),
('b13', '202101', 'KM', 561),
('b13', '202101', 'NUI', 11),
('b13', '202101', 'REP', 11),
('b13', '202102', 'ETP', 12),
('b13', '202102', 'KM', 389),
('b13', '202102', 'NUI', 18),
('b13', '202102', 'REP', 10),
('b13', '202103', 'ETP', 7),
('b13', '202103', 'KM', 818),
('b13', '202103', 'NUI', 14),
('b13', '202103', 'REP', 9),
('b16', '202101', 'ETP', 6),
('b16', '202101', 'KM', 600),
('b16', '202101', 'NUI', 16),
('b16', '202101', 'REP', 8),
('b16', '202102', 'ETP', 20),
('b16', '202102', 'KM', 938),
('b16', '202102', 'NUI', 11),
('b16', '202102', 'REP', 16),
('b16', '202103', 'ETP', 12),
('b16', '202103', 'KM', 586),
('b16', '202103', 'NUI', 15),
('b16', '202103', 'REP', 14),
('b19', '202101', 'ETP', 13),
('b19', '202101', 'KM', 747),
('b19', '202101', 'NUI', 16),
('b19', '202101', 'REP', 10),
('b19', '202102', 'ETP', 6),
('b19', '202102', 'KM', 873),
('b19', '202102', 'NUI', 11),
('b19', '202102', 'REP', 3),
('b19', '202103', 'ETP', 3),
('b19', '202103', 'KM', 768),
('b19', '202103', 'NUI', 7),
('b19', '202103', 'REP', 3),
('b25', '202101', 'ETP', 4),
('b25', '202101', 'KM', 585),
('b25', '202101', 'NUI', 19),
('b25', '202101', 'REP', 8),
('b25', '202102', 'ETP', 2),
('b25', '202102', 'KM', 828),
('b25', '202102', 'NUI', 16),
('b25', '202102', 'REP', 10),
('b25', '202103', 'ETP', 18),
('b25', '202103', 'KM', 949),
('b25', '202103', 'NUI', 14),
('b25', '202103', 'REP', 6),
('b28', '202101', 'ETP', 7),
('b28', '202101', 'KM', 751),
('b28', '202101', 'NUI', 19),
('b28', '202101', 'REP', 7),
('b28', '202102', 'ETP', 7),
('b28', '202102', 'KM', 388),
('b28', '202102', 'NUI', 10),
('b28', '202102', 'REP', 11),
('b28', '202103', 'ETP', 12),
('b28', '202103', 'KM', 362),
('b28', '202103', 'NUI', 12),
('b28', '202103', 'REP', 9),
('b34', '202101', 'ETP', 3),
('b34', '202101', 'KM', 829),
('b34', '202101', 'NUI', 3),
('b34', '202101', 'REP', 19),
('b34', '202102', 'ETP', 12),
('b34', '202102', 'KM', 888),
('b34', '202102', 'NUI', 9),
('b34', '202102', 'REP', 11),
('b34', '202103', 'ETP', 3),
('b34', '202103', 'KM', 694),
('b34', '202103', 'NUI', 8),
('b34', '202103', 'REP', 5),
('b4', '202101', 'ETP', 4),
('b4', '202101', 'KM', 751),
('b4', '202101', 'NUI', 6),
('b4', '202101', 'REP', 8),
('b4', '202102', 'ETP', 19),
('b4', '202102', 'KM', 511),
('b4', '202102', 'NUI', 19),
('b4', '202102', 'REP', 2),
('b4', '202103', 'ETP', 20),
('b4', '202103', 'KM', 477),
('b4', '202103', 'NUI', 15),
('b4', '202103', 'REP', 14),
('b50', '202101', 'ETP', 9),
('b50', '202101', 'KM', 803),
('b50', '202101', 'NUI', 12),
('b50', '202101', 'REP', 7),
('b50', '202102', 'ETP', 17),
('b50', '202102', 'KM', 592),
('b50', '202102', 'NUI', 15),
('b50', '202102', 'REP', 6),
('b50', '202103', 'ETP', 7),
('b50', '202103', 'KM', 696),
('b50', '202103', 'NUI', 2),
('b50', '202103', 'REP', 13),
('b59', '202101', 'ETP', 10),
('b59', '202101', 'KM', 920),
('b59', '202101', 'NUI', 19),
('b59', '202101', 'REP', 17),
('b59', '202102', 'ETP', 8),
('b59', '202102', 'KM', 715),
('b59', '202102', 'NUI', 4),
('b59', '202102', 'REP', 17),
('b59', '202103', 'ETP', 13),
('b59', '202103', 'KM', 586),
('b59', '202103', 'NUI', 3),
('b59', '202103', 'REP', 4),
('c14', '202101', 'ETP', 7),
('c14', '202101', 'KM', 685),
('c14', '202101', 'NUI', 12),
('c14', '202101', 'REP', 14),
('c14', '202102', 'ETP', 2),
('c14', '202102', 'KM', 816),
('c14', '202102', 'NUI', 19),
('c14', '202102', 'REP', 19),
('c14', '202103', 'ETP', 19),
('c14', '202103', 'KM', 430),
('c14', '202103', 'NUI', 2),
('c14', '202103', 'REP', 18),
('c3', '202101', 'ETP', 11),
('c3', '202101', 'KM', 733),
('c3', '202101', 'NUI', 6),
('c3', '202101', 'REP', 20),
('c3', '202102', 'ETP', 19),
('c3', '202102', 'KM', 477),
('c3', '202102', 'NUI', 9),
('c3', '202102', 'REP', 5),
('c3', '202103', 'ETP', 15),
('c3', '202103', 'KM', 865),
('c3', '202103', 'NUI', 16),
('c3', '202103', 'REP', 2),
('c54', '202101', 'ETP', 2),
('c54', '202101', 'KM', 649),
('c54', '202101', 'NUI', 7),
('c54', '202101', 'REP', 9),
('c54', '202102', 'ETP', 10),
('c54', '202102', 'KM', 333),
('c54', '202102', 'NUI', 7),
('c54', '202102', 'REP', 17),
('c54', '202103', 'ETP', 3),
('c54', '202103', 'KM', 772),
('c54', '202103', 'NUI', 12),
('c54', '202103', 'REP', 5),
('ct01', '202101', 'ETP', 11),
('ct01', '202101', 'KM', 366),
('ct01', '202101', 'NUI', 11),
('ct01', '202101', 'REP', 3),
('ct01', '202102', 'ETP', 16),
('ct01', '202102', 'KM', 671),
('ct01', '202102', 'NUI', 19),
('ct01', '202102', 'REP', 9),
('ct01', '202103', 'ETP', 12),
('ct01', '202103', 'KM', 788),
('ct01', '202103', 'NUI', 5),
('ct01', '202103', 'REP', 13),
('d13', '202101', 'ETP', 18),
('d13', '202101', 'KM', 870),
('d13', '202101', 'NUI', 3),
('d13', '202101', 'REP', 14),
('d13', '202102', 'ETP', 8),
('d13', '202102', 'KM', 722),
('d13', '202102', 'NUI', 2),
('d13', '202102', 'REP', 3),
('d13', '202103', 'ETP', 3),
('d13', '202103', 'KM', 495),
('d13', '202103', 'NUI', 18),
('d13', '202103', 'REP', 17),
('d51', '202101', 'ETP', 15),
('d51', '202101', 'KM', 694),
('d51', '202101', 'NUI', 18),
('d51', '202101', 'REP', 8),
('d51', '202102', 'ETP', 6),
('d51', '202102', 'KM', 771),
('d51', '202102', 'NUI', 20),
('d51', '202102', 'REP', 13),
('d51', '202103', 'ETP', 7),
('d51', '202103', 'KM', 530),
('d51', '202103', 'NUI', 10),
('d51', '202103', 'REP', 3),
('e22', '202101', 'ETP', 2),
('e22', '202101', 'KM', 823),
('e22', '202101', 'NUI', 4),
('e22', '202101', 'REP', 16),
('e22', '202102', 'ETP', 20),
('e22', '202102', 'KM', 754),
('e22', '202102', 'NUI', 10),
('e22', '202102', 'REP', 3),
('e22', '202103', 'ETP', 5),
('e22', '202103', 'KM', 475),
('e22', '202103', 'NUI', 5),
('e22', '202103', 'REP', 20),
('e24', '202101', 'ETP', 8),
('e24', '202101', 'KM', 491),
('e24', '202101', 'NUI', 14),
('e24', '202101', 'REP', 2),
('e24', '202102', 'ETP', 12),
('e24', '202102', 'KM', 954),
('e24', '202102', 'NUI', 16),
('e24', '202102', 'REP', 4),
('e24', '202103', 'ETP', 7),
('e24', '202103', 'KM', 967),
('e24', '202103', 'NUI', 18),
('e24', '202103', 'REP', 16),
('e39', '202101', 'ETP', 16),
('e39', '202101', 'KM', 683),
('e39', '202101', 'NUI', 15),
('e39', '202101', 'REP', 18),
('e39', '202102', 'ETP', 11),
('e39', '202102', 'KM', 606),
('e39', '202102', 'NUI', 16),
('e39', '202102', 'REP', 20),
('e39', '202103', 'ETP', 14),
('e39', '202103', 'KM', 888),
('e39', '202103', 'NUI', 16),
('e39', '202103', 'REP', 20),
('e49', '202101', 'ETP', 16),
('e49', '202101', 'KM', 633),
('e49', '202101', 'NUI', 3),
('e49', '202101', 'REP', 9),
('e49', '202102', 'ETP', 19),
('e49', '202102', 'KM', 694),
('e49', '202102', 'NUI', 13),
('e49', '202102', 'REP', 5),
('e49', '202103', 'ETP', 16),
('e49', '202103', 'KM', 874),
('e49', '202103', 'NUI', 14),
('e49', '202103', 'REP', 18),
('e5', '202101', 'ETP', 8),
('e5', '202101', 'KM', 625),
('e5', '202101', 'NUI', 3),
('e5', '202101', 'REP', 7),
('e5', '202102', 'ETP', 7),
('e5', '202102', 'KM', 452),
('e5', '202102', 'NUI', 5),
('e5', '202102', 'REP', 2),
('e5', '202103', 'ETP', 14),
('e5', '202103', 'KM', 507),
('e5', '202103', 'NUI', 18),
('e5', '202103', 'REP', 2),
('e52', '202101', 'ETP', 3),
('e52', '202101', 'KM', 594),
('e52', '202101', 'NUI', 10),
('e52', '202101', 'REP', 15),
('e52', '202102', 'ETP', 14),
('e52', '202102', 'KM', 866),
('e52', '202102', 'NUI', 16),
('e52', '202102', 'REP', 3),
('e52', '202103', 'ETP', 19),
('e52', '202103', 'KM', 424),
('e52', '202103', 'NUI', 4),
('e52', '202103', 'REP', 13),
('f21', '202101', 'ETP', 2),
('f21', '202101', 'KM', 824),
('f21', '202101', 'NUI', 10),
('f21', '202101', 'REP', 7),
('f21', '202102', 'ETP', 11),
('f21', '202102', 'KM', 468),
('f21', '202102', 'NUI', 2),
('f21', '202102', 'REP', 12),
('f21', '202103', 'ETP', 11),
('f21', '202103', 'KM', 909),
('f21', '202103', 'NUI', 16),
('f21', '202103', 'REP', 8),
('f39', '202101', 'ETP', 14),
('f39', '202101', 'KM', 550),
('f39', '202101', 'NUI', 19),
('f39', '202101', 'REP', 5),
('f39', '202102', 'ETP', 19),
('f39', '202102', 'KM', 945),
('f39', '202102', 'NUI', 9),
('f39', '202102', 'REP', 2),
('f39', '202103', 'ETP', 2),
('f39', '202103', 'KM', 495),
('f39', '202103', 'NUI', 11),
('f39', '202103', 'REP', 8),
('f4', '202101', 'ETP', 2),
('f4', '202101', 'KM', 755),
('f4', '202101', 'NUI', 4),
('f4', '202101', 'REP', 3),
('f4', '202102', 'ETP', 10),
('f4', '202102', 'KM', 829),
('f4', '202102', 'NUI', 12),
('f4', '202102', 'REP', 15),
('f4', '202103', 'ETP', 10),
('f4', '202103', 'KM', 868),
('f4', '202103', 'NUI', 14),
('f4', '202103', 'REP', 6),
('f4', '202104', 'ETP', 0),
('f4', '202104', 'KM', 0),
('f4', '202104', 'NUI', 0),
('f4', '202104', 'REP', 0);

-- --------------------------------------------------------

--
-- Structure de la table `lignefraishorsforfait`
--

CREATE TABLE `lignefraishorsforfait` (
  `id` int(11) NOT NULL,
  `idvisiteur` char(4) NOT NULL,
  `mois` char(6) NOT NULL,
  `libelle` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `montant` decimal(10,2) DEFAULT NULL,
  `refuse` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lignefraishorsforfait`
--

INSERT INTO `lignefraishorsforfait` (`id`, `idvisiteur`, `mois`, `libelle`, `date`, `montant`, `refuse`) VALUES
(1, 'a131', '202101', 'Voyage SNCF', '2021-01-04', '126.00', NULL),
(2, 'a131', '202101', 'Repas avec praticien', '2021-01-23', '33.00', NULL),
(3, 'a131', '202101', 'Repas avec praticien', '2021-01-17', '34.00', NULL),
(4, 'a131', '202102', 'Repas avec praticien', '2021-02-24', '49.00', NULL),
(5, 'a131', '202102', 'Location équipement vidéo/sonore', '2021-02-24', '376.00', NULL),
(6, 'a131', '202103', 'Location salle conférence', '2021-03-10', '229.00', NULL),
(7, 'a131', '202103', 'Rémunération intervenant/spécialiste', '2021-03-21', '544.00', NULL),
(8, 'a131', '202103', 'Taxi', '2021-03-05', '25.00', NULL),
(9, 'a131', '202103', 'Refuser-Rémunération inter', '2021-03-16', '1133.00', NULL),
(10, 'a131', '202103', 'Refuser-Repas avec praticien', '2021-03-07', '36.00', NULL),
(11, 'a131', '202103', 'Refuser-Refuser-Refuser-Refu', '2021-03-08', '39.00', NULL),
(12, 'a17', '202101', 'Achat de matériel de papèterie', '2021-01-23', '35.00', NULL),
(13, 'a17', '202101', 'Traiteur, alimentation, boisson', '2021-01-02', '326.00', NULL),
(14, 'a17', '202101', 'Traiteur, alimentation, boisson', '2021-01-07', '348.00', NULL),
(15, 'a17', '202102', 'Frais vestimentaire/représentation', '2021-02-20', '432.00', NULL),
(16, 'a17', '202102', 'Rémunération intervenant/spécialiste', '2021-02-14', '757.00', NULL),
(17, 'a17', '202102', 'Traiteur, alimentation, boisson', '2021-02-16', '248.00', NULL),
(18, 'a17', '202102', 'Taxi', '2021-02-02', '68.00', NULL),
(19, 'a17', '202102', 'Location équipement vidéo/sonore', '2021-02-25', '424.00', NULL),
(20, 'a17', '202103', 'Frais vestimentaire/représentation', '2021-03-10', '36.00', NULL),
(21, 'a17', '202103', 'Frais vestimentaire/représentation', '2021-03-02', '34.00', NULL),
(22, 'a17', '202103', 'Taxi', '2021-03-04', '41.00', NULL),
(23, 'a17', '202103', 'Achat de matériel de papèterie', '2021-03-14', '48.00', NULL),
(24, 'a17', '202103', 'Location salle conférence', '2021-03-13', '347.00', NULL),
(25, 'a55', '202102', 'Location salle conférence', '2021-02-19', '282.00', NULL),
(26, 'a55', '202102', 'Taxi', '2021-02-09', '32.00', NULL),
(27, 'a55', '202102', 'Location équipement vidéo/sonore', '2021-02-16', '599.00', NULL),
(28, 'a55', '202103', 'Location équipement vidéo/sonore', '2021-03-06', '224.00', NULL),
(29, 'a55', '202103', 'Location véhicule', '2021-03-13', '270.00', NULL),
(30, 'a55', '202103', 'Voyage SNCF', '2021-03-07', '105.00', NULL),
(31, 'a55', '202103', 'Location équipement vidéo/sonore', '2021-03-23', '330.00', NULL),
(32, 'a93', '202101', 'Location équipement vidéo/sonore', '2021-01-25', '800.00', NULL),
(33, 'a93', '202101', 'Repas avec praticien', '2021-01-07', '46.00', NULL),
(34, 'a93', '202101', 'Location véhicule', '2021-01-14', '426.00', NULL),
(35, 'a93', '202102', 'Achat de matériel de papèterie', '2021-02-01', '12.00', NULL),
(36, 'a93', '202102', 'Location équipement vidéo/sonore', '2021-02-01', '662.00', NULL),
(37, 'a93', '202102', 'Achat de matériel de papèterie', '2021-02-04', '16.00', NULL),
(38, 'a93', '202102', 'Frais vestimentaire/représentation', '2021-02-17', '95.00', NULL),
(39, 'a93', '202103', 'Location salle conférence', '2021-03-13', '489.00', NULL),
(40, 'a93', '202103', 'Traiteur, alimentation, boisson', '2021-03-28', '230.00', NULL),
(41, 'b13', '202101', 'Achat de matériel de papèterie', '2021-01-22', '42.00', NULL),
(42, 'b13', '202101', 'Taxi', '2021-01-12', '41.00', NULL),
(43, 'b13', '202101', 'Taxi', '2021-01-05', '39.00', NULL),
(44, 'b13', '202101', 'Frais vestimentaire/représentation', '2021-01-06', '84.00', NULL),
(45, 'b13', '202102', 'Voyage SNCF', '2021-02-19', '111.00', NULL),
(46, 'b13', '202103', 'Rémunération intervenant/spécialiste', '2021-03-04', '791.00', NULL),
(47, 'b16', '202101', 'Voyage SNCF', '2021-01-11', '34.00', NULL),
(48, 'b16', '202101', 'Traiteur, alimentation, boisson', '2021-01-23', '280.00', NULL),
(49, 'b16', '202101', 'Location équipement vidéo/sonore', '2021-01-03', '482.00', NULL),
(50, 'b16', '202101', 'Repas avec praticien', '2021-01-12', '33.00', NULL),
(51, 'b16', '202102', 'Traiteur, alimentation, boisson', '2021-02-20', '398.00', NULL),
(52, 'b16', '202102', 'Achat de matériel de papèterie', '2021-02-22', '32.00', NULL),
(53, 'b16', '202102', 'Location salle conférence', '2021-02-20', '299.00', NULL),
(54, 'b16', '202102', 'Taxi', '2021-02-09', '75.00', NULL),
(55, 'b16', '202103', 'Frais vestimentaire/représentation', '2021-03-18', '123.00', NULL),
(56, 'b16', '202103', 'Location véhicule', '2021-03-24', '225.00', NULL),
(57, 'b19', '202101', 'Location équipement vidéo/sonore', '2021-01-20', '488.00', NULL),
(58, 'b19', '202101', 'Achat de matériel de papèterie', '2021-01-13', '42.00', NULL),
(59, 'b19', '202101', 'Taxi', '2021-01-02', '25.00', NULL),
(60, 'b19', '202102', 'Voyage SNCF', '2021-02-09', '120.00', NULL),
(61, 'b19', '202103', 'Frais vestimentaire/représentation', '2021-03-21', '117.00', NULL),
(62, 'b19', '202103', 'Traiteur, alimentation, boisson', '2021-03-03', '225.00', NULL),
(63, 'b19', '202103', 'Achat de matériel de papèterie', '2021-03-17', '33.00', NULL),
(64, 'b19', '202103', 'Voyage SNCF', '2021-03-19', '104.00', NULL),
(65, 'b19', '202103', 'Taxi', '2021-03-19', '20.00', NULL),
(66, 'b25', '202101', 'Repas avec praticien', '2021-01-04', '45.00', NULL),
(67, 'b25', '202101', 'Rémunération intervenant/spécialiste', '2021-01-26', '750.00', NULL),
(68, 'b25', '202101', 'Voyage SNCF', '2021-01-15', '138.00', NULL),
(69, 'b25', '202102', 'Repas avec praticien', '2021-02-23', '44.00', NULL),
(70, 'b25', '202102', 'Location équipement vidéo/sonore', '2021-02-07', '423.00', NULL),
(71, 'b25', '202102', 'Location salle conférence', '2021-02-05', '292.00', NULL),
(72, 'b25', '202103', 'Location véhicule', '2021-03-06', '324.00', NULL),
(73, 'b28', '202101', 'Frais vestimentaire/représentation', '2021-01-02', '148.00', NULL),
(74, 'b28', '202101', 'Traiteur, alimentation, boisson', '2021-01-11', '213.00', NULL),
(75, 'b28', '202101', 'Frais vestimentaire/représentation', '2021-01-06', '197.00', NULL),
(76, 'b28', '202101', 'Traiteur, alimentation, boisson', '2021-01-11', '128.00', NULL),
(77, 'b28', '202102', 'Voyage SNCF', '2021-02-11', '119.00', NULL),
(78, 'b28', '202103', 'Location équipement vidéo/sonore', '2021-03-13', '531.00', NULL),
(79, 'b28', '202103', 'Traiteur, alimentation, boisson', '2021-03-02', '441.00', NULL),
(80, 'b34', '202101', 'Repas avec praticien', '2021-01-25', '46.00', NULL),
(81, 'b34', '202102', 'Frais vestimentaire/représentation', '2021-02-08', '165.00', NULL),
(82, 'b34', '202102', 'Taxi', '2021-02-04', '43.00', NULL),
(83, 'b34', '202102', 'Frais vestimentaire/représentation', '2021-02-23', '358.00', NULL),
(84, 'b34', '202102', 'Achat de matériel de papèterie', '2021-02-19', '30.00', NULL),
(85, 'b34', '202103', 'Location véhicule', '2021-03-16', '337.00', NULL),
(86, 'b4', '202101', 'Frais vestimentaire/représentation', '2021-01-08', '421.00', NULL),
(87, 'b4', '202101', 'Repas avec praticien', '2021-01-20', '49.00', NULL),
(88, 'b4', '202101', 'Location équipement vidéo/sonore', '2021-01-15', '649.00', NULL),
(89, 'b4', '202102', 'Repas avec praticien', '2021-02-14', '34.00', NULL),
(90, 'b4', '202102', 'Frais vestimentaire/représentation', '2021-02-24', '43.00', NULL),
(91, 'b4', '202102', 'Rémunération intervenant/spécialiste', '2021-02-21', '1051.00', NULL),
(92, 'b4', '202102', 'Achat de matériel de papèterie', '2021-02-23', '44.00', NULL),
(93, 'b4', '202102', 'Traiteur, alimentation, boisson', '2021-02-07', '162.00', NULL),
(94, 'b4', '202102', 'Rémunération intervenant/spécialiste', '2021-02-25', '783.00', NULL),
(95, 'b4', '202103', 'Location véhicule', '2021-03-28', '78.00', NULL),
(96, 'b4', '202103', 'Frais vestimentaire/représentation', '2021-03-08', '68.00', NULL),
(97, 'b4', '202103', 'Achat de matériel de papèterie', '2021-03-24', '21.00', NULL),
(98, 'b4', '202103', 'Location salle conférence', '2021-03-19', '390.00', NULL),
(99, 'b50', '202101', 'Traiteur, alimentation, boisson', '2021-01-24', '307.00', NULL),
(100, 'b50', '202101', 'Voyage SNCF', '2021-01-20', '51.00', NULL),
(101, 'b50', '202101', 'Repas avec praticien', '2021-01-07', '44.00', NULL),
(102, 'b50', '202101', 'Taxi', '2021-01-20', '76.00', NULL),
(103, 'b50', '202101', 'Taxi', '2021-01-23', '37.00', NULL),
(104, 'b50', '202101', 'Location salle conférence', '2021-01-15', '131.00', NULL),
(105, 'b50', '202102', 'Repas avec praticien', '2021-02-01', '34.00', NULL),
(106, 'b50', '202102', 'Location équipement vidéo/sonore', '2021-02-20', '589.00', NULL),
(107, 'b50', '202102', 'Location salle conférence', '2021-02-12', '543.00', NULL),
(108, 'b50', '202103', 'Rémunération intervenant/spécialiste', '2021-03-08', '875.00', NULL),
(109, 'b50', '202103', 'Frais vestimentaire/représentation', '2021-03-02', '232.00', NULL),
(110, 'b50', '202103', 'Voyage SNCF', '2021-03-27', '52.00', NULL),
(111, 'b50', '202103', 'Taxi', '2021-03-17', '77.00', NULL),
(112, 'b50', '202103', 'Traiteur, alimentation, boisson', '2021-03-28', '401.00', NULL),
(113, 'b50', '202103', 'Rémunération intervenant/spécialiste', '2021-03-07', '845.00', NULL),
(114, 'b59', '202101', 'Rémunération intervenant/spécialiste', '2021-01-13', '382.00', NULL),
(115, 'b59', '202101', 'Location salle conférence', '2021-01-28', '426.00', NULL),
(116, 'b59', '202102', 'Taxi', '2021-02-10', '44.00', NULL),
(117, 'b59', '202102', 'Taxi', '2021-02-01', '52.00', NULL),
(118, 'b59', '202102', 'Taxi', '2021-02-05', '61.00', NULL),
(119, 'b59', '202102', 'Location équipement vidéo/sonore', '2021-02-16', '148.00', NULL),
(120, 'b59', '202102', 'Location salle conférence', '2021-02-19', '496.00', NULL),
(121, 'c14', '202101', 'Frais vestimentaire/représentation', '2021-01-21', '260.00', NULL),
(122, 'c14', '202101', 'Frais vestimentaire/représentation', '2021-01-27', '137.00', NULL),
(123, 'c14', '202101', 'Location véhicule', '2021-01-27', '93.00', NULL),
(124, 'c14', '202101', 'Location salle conférence', '2021-01-19', '515.00', NULL),
(125, 'c14', '202103', 'Achat de matériel de papèterie', '2021-03-23', '29.00', NULL),
(126, 'c14', '202103', 'Traiteur, alimentation, boisson', '2021-03-16', '149.00', NULL),
(127, 'c3', '202101', 'Traiteur, alimentation, boisson', '2021-01-20', '200.00', NULL),
(128, 'c3', '202101', 'Taxi', '2021-01-21', '46.00', NULL),
(129, 'c3', '202101', 'Location équipement vidéo/sonore', '2021-01-20', '588.00', NULL),
(130, 'c3', '202101', 'Frais vestimentaire/représentation', '2021-01-19', '65.00', NULL),
(131, 'c3', '202101', 'Location salle conférence', '2021-01-16', '308.00', NULL),
(132, 'c3', '202101', 'Taxi', '2021-01-17', '38.00', NULL),
(133, 'c3', '202102', 'Location équipement vidéo/sonore', '2021-02-26', '373.00', NULL),
(134, 'c3', '202102', 'Rémunération intervenant/spécialiste', '2021-02-06', '627.00', NULL),
(135, 'c3', '202102', 'Repas avec praticien', '2021-02-13', '41.00', NULL),
(136, 'c3', '202103', 'Achat de matériel de papèterie', '2021-03-27', '47.00', NULL),
(137, 'c3', '202103', 'Achat de matériel de papèterie', '2021-03-03', '50.00', NULL),
(138, 'c3', '202103', 'Frais vestimentaire/représentation', '2021-03-23', '285.00', NULL),
(139, 'c3', '202103', 'Taxi', '2021-03-07', '71.00', NULL),
(140, 'c3', '202103', 'Repas avec praticien', '2021-03-17', '43.00', NULL),
(141, 'c54', '202101', 'Repas avec praticien', '2021-01-16', '42.00', NULL),
(142, 'c54', '202102', 'Repas avec praticien', '2021-02-17', '38.00', NULL),
(143, 'c54', '202102', 'Frais vestimentaire/représentation', '2021-02-19', '433.00', NULL),
(144, 'c54', '202102', 'Location véhicule', '2021-02-23', '298.00', NULL),
(145, 'c54', '202102', 'Repas avec praticien', '2021-02-25', '39.00', NULL),
(146, 'c54', '202103', 'Location salle conférence', '2021-03-13', '296.00', NULL),
(147, 'c54', '202103', 'Frais vestimentaire/représentation', '2021-03-27', '308.00', NULL),
(148, 'c54', '202103', 'Location équipement vidéo/sonore', '2021-03-27', '119.00', NULL),
(149, 'c54', '202103', 'Achat de matériel de papèterie', '2021-03-01', '30.00', NULL),
(150, 'ct01', '202101', 'Repas avec praticien', '2021-01-24', '46.00', NULL),
(151, 'ct01', '202101', 'Repas avec praticien', '2021-01-10', '34.00', NULL),
(152, 'ct01', '202101', 'Location équipement vidéo/sonore', '2021-01-23', '356.00', NULL),
(153, 'ct01', '202101', 'Location salle conférence', '2021-01-16', '520.00', NULL),
(154, 'ct01', '202102', 'Frais vestimentaire/représentation', '2021-02-14', '256.00', NULL),
(155, 'ct01', '202102', 'Achat de matériel de papèterie', '2021-02-14', '18.00', NULL),
(156, 'ct01', '202103', 'Frais vestimentaire/représentation', '2021-03-23', '129.00', NULL),
(157, 'ct01', '202103', 'Location véhicule', '2021-03-18', '291.00', NULL),
(158, 'ct01', '202103', 'Taxi', '2021-03-16', '73.00', NULL),
(159, 'd13', '202101', 'Repas avec praticien', '2021-01-20', '40.00', NULL),
(160, 'd13', '202101', 'Traiteur, alimentation, boisson', '2021-01-26', '148.00', NULL),
(161, 'd13', '202102', 'Achat de matériel de papèterie', '2021-02-28', '10.00', NULL),
(162, 'd13', '202102', 'Traiteur, alimentation, boisson', '2021-02-15', '405.00', NULL),
(163, 'd13', '202103', 'Location véhicule', '2021-03-14', '340.00', NULL),
(164, 'd13', '202103', 'Location salle conférence', '2021-03-06', '309.00', NULL),
(165, 'd51', '202101', 'Rémunération intervenant/spécialiste', '2021-01-06', '250.00', NULL),
(166, 'd51', '202101', 'Voyage SNCF', '2021-01-03', '138.00', NULL),
(167, 'd51', '202101', 'Taxi', '2021-01-05', '33.00', NULL),
(168, 'd51', '202101', 'Voyage SNCF', '2021-01-21', '58.00', NULL),
(169, 'd51', '202101', 'Taxi', '2021-01-21', '54.00', NULL),
(170, 'd51', '202101', 'Achat de matériel de papèterie', '2021-01-03', '20.00', NULL),
(171, 'd51', '202102', 'Repas avec praticien', '2021-02-14', '31.00', NULL),
(172, 'd51', '202102', 'Voyage SNCF', '2021-02-23', '90.00', NULL),
(173, 'd51', '202102', 'Voyage SNCF', '2021-02-04', '54.00', NULL),
(174, 'd51', '202102', 'Taxi', '2021-02-07', '57.00', NULL),
(175, 'd51', '202103', 'Voyage SNCF', '2021-03-18', '96.00', NULL),
(176, 'd51', '202103', 'Rémunération intervenant/spécialiste', '2021-03-20', '644.00', NULL),
(177, 'd51', '202103', 'Location équipement vidéo/sonore', '2021-03-05', '378.00', NULL),
(178, 'd51', '202103', 'Location véhicule', '2021-03-17', '295.00', NULL),
(179, 'd51', '202103', 'Location salle conférence', '2021-03-21', '386.00', NULL),
(180, 'd51', '202103', 'Location salle conférence', '2021-03-10', '371.00', NULL),
(181, 'e22', '202101', 'Voyage SNCF', '2021-01-22', '150.00', NULL),
(182, 'e22', '202102', 'Location véhicule', '2021-02-18', '121.00', NULL),
(183, 'e22', '202102', 'Voyage SNCF', '2021-02-25', '45.00', NULL),
(184, 'e22', '202102', 'Taxi', '2021-02-12', '31.00', NULL),
(185, 'e22', '202102', 'Achat de matériel de papèterie', '2021-02-26', '29.00', NULL),
(186, 'e22', '202102', 'Achat de matériel de papèterie', '2021-02-01', '46.00', NULL),
(187, 'e22', '202103', 'Location véhicule', '2021-03-16', '353.00', NULL),
(188, 'e22', '202103', 'Location équipement vidéo/sonore', '2021-03-01', '564.00', NULL),
(189, 'e22', '202103', 'Traiteur, alimentation, boisson', '2021-03-08', '431.00', NULL),
(190, 'e22', '202103', 'Taxi', '2021-03-12', '70.00', NULL),
(191, 'e24', '202101', 'Location équipement vidéo/sonore', '2021-01-12', '483.00', NULL),
(192, 'e24', '202102', 'Repas avec praticien', '2021-02-20', '34.00', NULL),
(193, 'e24', '202102', 'Location équipement vidéo/sonore', '2021-02-09', '168.00', NULL),
(194, 'e24', '202103', 'Repas avec praticien', '2021-03-23', '39.00', NULL),
(195, 'e39', '202101', 'Location équipement vidéo/sonore', '2021-01-10', '140.00', NULL),
(196, 'e39', '202101', 'Voyage SNCF', '2021-01-11', '91.00', NULL),
(197, 'e39', '202101', 'Repas avec praticien', '2021-01-27', '41.00', NULL),
(198, 'e39', '202101', 'Location salle conférence', '2021-01-15', '343.00', NULL),
(199, 'e39', '202101', 'Voyage SNCF', '2021-01-18', '96.00', NULL),
(200, 'e39', '202102', 'Location véhicule', '2021-02-08', '378.00', NULL),
(201, 'e39', '202102', 'Location véhicule', '2021-02-20', '288.00', NULL),
(202, 'e39', '202102', 'Location salle conférence', '2021-02-13', '171.00', NULL),
(203, 'e39', '202102', 'Achat de matériel de papèterie', '2021-02-06', '36.00', NULL),
(204, 'e39', '202102', 'Location équipement vidéo/sonore', '2021-02-03', '559.00', NULL),
(205, 'e39', '202103', 'Location salle conférence', '2021-03-01', '424.00', NULL),
(206, 'e39', '202103', 'Location salle conférence', '2021-03-09', '320.00', NULL),
(207, 'e49', '202101', 'Frais vestimentaire/représentation', '2021-01-25', '70.00', NULL),
(208, 'e49', '202101', 'Rémunération intervenant/spécialiste', '2021-01-23', '348.00', NULL),
(209, 'e49', '202101', 'Achat de matériel de papèterie', '2021-01-12', '42.00', NULL),
(210, 'e49', '202102', 'Location salle conférence', '2021-02-28', '266.00', NULL),
(211, 'e49', '202103', 'Voyage SNCF', '2021-03-11', '38.00', NULL),
(212, 'e49', '202103', 'Taxi', '2021-03-19', '71.00', NULL),
(213, 'e49', '202103', 'Rémunération intervenant/spécialiste', '2021-03-07', '1101.00', NULL),
(214, 'e5', '202101', 'Traiteur, alimentation, boisson', '2021-01-01', '73.00', NULL),
(215, 'e5', '202101', 'Voyage SNCF', '2021-01-03', '46.00', NULL),
(216, 'e5', '202101', 'Repas avec praticien', '2021-01-25', '35.00', NULL),
(217, 'e5', '202101', 'Traiteur, alimentation, boisson', '2021-01-18', '302.00', NULL),
(218, 'e5', '202101', 'Frais vestimentaire/représentation', '2021-01-20', '333.00', NULL),
(219, 'e5', '202101', 'Traiteur, alimentation, boisson', '2021-01-09', '415.00', NULL),
(220, 'e5', '202102', 'Rémunération intervenant/spécialiste', '2021-02-15', '1104.00', NULL),
(221, 'e5', '202102', 'Frais vestimentaire/représentation', '2021-02-14', '398.00', NULL),
(222, 'e5', '202102', 'Achat de matériel de papèterie', '2021-02-16', '22.00', NULL),
(223, 'e5', '202103', 'Taxi', '2021-03-21', '50.00', NULL),
(224, 'e5', '202103', 'Location véhicule', '2021-03-20', '133.00', NULL),
(225, 'e5', '202103', 'Achat de matériel de papèterie', '2021-03-05', '50.00', NULL),
(226, 'e5', '202103', 'Location véhicule', '2021-03-14', '370.00', NULL),
(227, 'e52', '202101', 'Voyage SNCF', '2021-01-10', '108.00', NULL),
(228, 'e52', '202102', 'Taxi', '2021-02-21', '54.00', NULL),
(229, 'e52', '202102', 'Traiteur, alimentation, boisson', '2021-02-25', '433.00', NULL),
(230, 'e52', '202102', 'Achat de matériel de papèterie', '2021-02-05', '24.00', NULL),
(231, 'e52', '202102', 'Voyage SNCF', '2021-02-12', '46.00', NULL),
(232, 'e52', '202103', 'Taxi', '2021-03-05', '21.00', NULL),
(233, 'e52', '202103', 'Location équipement vidéo/sonore', '2021-03-18', '216.00', NULL),
(234, 'e52', '202103', 'Traiteur, alimentation, boisson', '2021-03-03', '382.00', NULL),
(235, 'f21', '202101', 'Taxi', '2021-01-07', '65.00', NULL),
(236, 'f21', '202101', 'Frais vestimentaire/représentation', '2021-01-02', '417.00', NULL),
(237, 'f21', '202102', 'Voyage SNCF', '2021-02-04', '138.00', NULL),
(238, 'f21', '202102', 'Location équipement vidéo/sonore', '2021-02-11', '488.00', NULL),
(239, 'f21', '202102', 'Repas avec praticien', '2021-02-19', '49.00', NULL),
(240, 'f21', '202102', 'Achat de matériel de papèterie', '2021-02-24', '47.00', NULL),
(241, 'f21', '202102', 'Traiteur, alimentation, boisson', '2021-02-08', '274.00', NULL),
(242, 'f21', '202102', 'Traiteur, alimentation, boisson', '2021-02-15', '237.00', NULL),
(243, 'f21', '202103', 'Location véhicule', '2021-03-08', '95.00', NULL),
(244, 'f39', '202101', 'Rémunération intervenant/spécialiste', '2021-01-20', '994.00', NULL),
(245, 'f39', '202101', 'Location salle conférence', '2021-01-02', '491.00', NULL),
(246, 'f39', '202101', 'Achat de matériel de papèterie', '2021-01-27', '22.00', NULL),
(247, 'f39', '202101', 'Taxi', '2021-01-16', '47.00', NULL),
(248, 'f39', '202101', 'Repas avec praticien', '2021-01-28', '30.00', NULL),
(249, 'f39', '202102', 'Repas avec praticien', '2021-02-16', '43.00', NULL),
(250, 'f39', '202102', 'Voyage SNCF', '2021-02-25', '65.00', NULL),
(251, 'f39', '202102', 'Rémunération intervenant/spécialiste', '2021-02-13', '953.00', NULL),
(252, 'f39', '202103', 'Achat de matériel de papèterie', '2021-03-08', '32.00', NULL),
(253, 'f39', '202103', 'Repas avec praticien', '2021-03-22', '34.00', NULL),
(254, 'f4', '202101', 'Rémunération intervenant/spécialiste', '2021-01-22', '955.00', NULL),
(255, 'f4', '202101', 'Taxi', '2021-01-26', '43.00', NULL),
(256, 'f4', '202101', 'Location salle conférence', '2021-01-19', '567.00', NULL),
(257, 'f4', '202101', 'Location salle conférence', '2021-01-28', '621.00', NULL),
(258, 'f4', '202101', 'Traiteur, alimentation, boisson', '2021-01-09', '244.00', NULL),
(259, 'f4', '202102', 'Location véhicule', '2021-02-24', '410.00', NULL),
(260, 'f4', '202102', 'Achat de matériel de papèterie', '2021-02-23', '29.00', NULL),
(261, 'f4', '202102', 'Frais vestimentaire/représentation', '2021-02-18', '108.00', NULL),
(262, 'f4', '202103', 'Voyage SNCF', '2021-03-26', '56.00', NULL),
(263, 'f4', '202103', 'Achat de matériel de papèterie', '2021-03-22', '21.00', NULL),
(264, 'f4', '202103', 'Repas avec praticien', '2021-03-13', '33.00', NULL),
(266, 'f4', '202103', 'Refuser-Rémunération inter', '2021-03-08', '527.00', NULL),
(267, 'f4', '202104', 'Rémunération inter', '2021-03-18', '269.00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE `visiteur` (
  `id` char(4) NOT NULL,
  `nom` char(30) DEFAULT NULL,
  `prenom` char(30) DEFAULT NULL,
  `login` char(20) DEFAULT NULL,
  `mdp` char(20) DEFAULT NULL,
  `adresse` char(30) DEFAULT NULL,
  `cp` char(5) DEFAULT NULL,
  `ville` char(30) DEFAULT NULL,
  `dateembauche` date DEFAULT NULL,
  `comptable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `visiteur`
--

INSERT INTO `visiteur` (`id`, `nom`, `prenom`, `login`, `mdp`, `adresse`, `cp`, `ville`, `dateembauche`, `comptable`) VALUES
('a131', 'Villechalane', 'Louis', 'lvillachane', 'jux7g', '8 rue des Charmes', '46000', 'Cahors', '2005-12-21', 0),
('a17', 'Andre', 'David', 'dandre', 'oppg5', '1 rue Petit', '46200', 'Lalbenque', '1998-11-23', 0),
('a55', 'Bedos', 'Christian', 'cbedos', 'gmhxd', '1 rue Peranud', '46250', 'Montcuq', '1995-01-12', 0),
('a93', 'Tusseau', 'Louis', 'ltusseau', 'ktp3s', '22 rue des Ternes', '46123', 'Gramat', '2000-05-01', 0),
('b13', 'Bentot', 'Pascal', 'pbentot', 'doyw1', '11 allée des Cerises', '46512', 'Bessines', '1992-07-09', 0),
('b16', 'Bioret', 'Luc', 'lbioret', 'hrjfs', '1 Avenue gambetta', '46000', 'Cahors', '1998-05-11', 0),
('b19', 'Bunisset', 'Francis', 'fbunisset', '4vbnd', '10 rue des Perles', '93100', 'Montreuil', '1987-10-21', 0),
('b25', 'Bunisset', 'Denise', 'dbunisset', 's1y1r', '23 rue Manin', '75019', 'paris', '2010-12-05', 0),
('b28', 'Cacheux', 'Bernard', 'bcacheux', 'uf7r3', '114 rue Blanche', '75017', 'Paris', '2009-11-12', 0),
('b34', 'Cadic', 'Eric', 'ecadic', '6u8dc', '123 avenue de la République', '75011', 'Paris', '2008-09-23', 0),
('b4', 'Charoze', 'Catherine', 'ccharoze', 'u817o', '100 rue Petit', '75019', 'Paris', '2005-11-12', 0),
('b50', 'Clepkens', 'Christophe', 'cclepkens', 'bw1us', '12 allée des Anges', '93230', 'Romainville', '2003-08-11', 0),
('b59', 'Cottin', 'Vincenne', 'vcottin', '2hoh9', '36 rue Des Roches', '93100', 'Monteuil', '2001-11-18', 0),
('c14', 'Daburon', 'François', 'fdaburon', '7oqpv', '13 rue de Chanzy', '94000', 'Créteil', '2002-02-11', 0),
('c3', 'De', 'Philippe', 'pde', 'gk9kx', '13 rue Barthes', '94000', 'Créteil', '2010-12-14', 0),
('c54', 'Debelle', 'Michel', 'mdebelle', 'od5rt', '181 avenue Barbusse', '93210', 'Rosny', '2006-11-23', 0),
('ct01', 'Dupont', 'Pierre', 'test2', 'test', '77 Rue du Trosy', '92140', 'clamart', '2011-09-01', 1),
('d13', 'Debelle', 'Jeanne', 'jdebelle', 'nvwqq', '134 allée des Joncs', '44000', 'Nantes', '2000-05-11', 0),
('d51', 'Debroise', 'Michel', 'mdebroise', 'sghkb', '2 Bld Jourdain', '44000', 'Nantes', '2001-04-17', 0),
('e22', 'Desmarquest', 'Nathalie', 'ndesmarquest', 'f1fob', '14 Place d Arc', '45000', 'Orléans', '2005-11-12', 0),
('e24', 'Desnost', 'Pierre', 'pdesnost', '4k2o5', '16 avenue des Cèdres', '23200', 'Guéret', '2001-02-05', 0),
('e39', 'Dudouit', 'Frédéric', 'fdudouit', '44im8', '18 rue de l église', '23120', 'GrandBourg', '2000-08-01', 0),
('e49', 'Duncombe', 'Claude', 'cduncombe', 'qf77j', '19 rue de la tour', '23100', 'La souteraine', '1987-10-10', 0),
('e5', 'Enault-Pascreau', 'Céline', 'cenault', 'y2qdu', '25 place de la gare', '23200', 'Gueret', '1995-09-01', 0),
('e52', 'Eynde', 'Valérie', 'veynde', 'i7sn3', '3 Grand Place', '13015', 'Marseille', '1999-11-01', 0),
('f21', 'Finck', 'Jacques', 'jfinck', 'mpb3t', '10 avenue du Prado', '13002', 'Marseille', '2001-11-10', 0),
('f39', 'Frémont', 'Fernande', 'ffremont', 'xs5tq', '4 route de la mer', '13012', 'Allauh', '1998-10-01', 0),
('f4', 'Gest', 'Alain', 'test', 'test', '30 avenue de la mer', '13025', 'Berre', '1985-11-01', 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fichefrais`
--
ALTER TABLE `fichefrais`
  ADD PRIMARY KEY (`idvisiteur`,`mois`),
  ADD KEY `idetat` (`idetat`);

--
-- Index pour la table `fraisforfait`
--
ALTER TABLE `fraisforfait`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lignefraisforfait`
--
ALTER TABLE `lignefraisforfait`
  ADD PRIMARY KEY (`idvisiteur`,`mois`,`idfraisforfait`),
  ADD KEY `idfraisforfait` (`idfraisforfait`);

--
-- Index pour la table `lignefraishorsforfait`
--
ALTER TABLE `lignefraishorsforfait`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idvisiteur` (`idvisiteur`,`mois`);

--
-- Index pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `lignefraishorsforfait`
--
ALTER TABLE `lignefraishorsforfait`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `fichefrais`
--
ALTER TABLE `fichefrais`
  ADD CONSTRAINT `fichefrais_ibfk_1` FOREIGN KEY (`idetat`) REFERENCES `etat` (`id`),
  ADD CONSTRAINT `fichefrais_ibfk_2` FOREIGN KEY (`idvisiteur`) REFERENCES `visiteur` (`id`);

--
-- Contraintes pour la table `lignefraisforfait`
--
ALTER TABLE `lignefraisforfait`
  ADD CONSTRAINT `lignefraisforfait_ibfk_1` FOREIGN KEY (`idvisiteur`,`mois`) REFERENCES `fichefrais` (`idvisiteur`, `mois`),
  ADD CONSTRAINT `lignefraisforfait_ibfk_2` FOREIGN KEY (`idfraisforfait`) REFERENCES `fraisforfait` (`id`);

--
-- Contraintes pour la table `lignefraishorsforfait`
--
ALTER TABLE `lignefraishorsforfait`
  ADD CONSTRAINT `lignefraishorsforfait_ibfk_1` FOREIGN KEY (`idvisiteur`,`mois`) REFERENCES `fichefrais` (`idvisiteur`, `mois`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
