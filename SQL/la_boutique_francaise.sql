-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2021 at 11:49 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `la_boutique_francaise`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `name`, `firstname`, `lastname`, `company`, `address`, `postal`, `city`, `country`, `phone`) VALUES
(2, 3, 'Domicile', 'Nivash', 'Goodur', 'jen ai pas', '9 rue du bon houdart', '93700', 'Drancy', 'FR', '0780378088'),
(3, 3, 'Production cinéma', 'Quentin', 'Tarentino', 'cinéma', 'lilas', '75000', 'paris', 'FR', '0235353535'),
(4, 3, 'tyjutyjtyd', 'jdjytdj', 'tyjdtj', NULL, 'tydjjtyj', '454554', 'udytyuty', 'CM', '7467846'),
(5, 7, '9 rue du bon houdart', 'Nivash', 'Goodur', 'jen ai pas', '9 rue du bon houdart', '93700', 'Drancy', 'FR', '0780378088'),
(6, 12, 'lilas', 'Quentin', 'Tarentino', 'cinéma', 'lilas', '75000', 'paris', 'FR', '0235353535');

-- --------------------------------------------------------

--
-- Table structure for table `carrier`
--

CREATE TABLE `carrier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carrier`
--

INSERT INTO `carrier` (`id`, `name`, `description`, `price`) VALUES
(1, 'Colissimo', 'Profitez d\'une livraison premium avec un colis chez vous dans les 72 prochaines heures.', 990),
(2, 'Chronopost', 'Profitez de la livraison express pour être livré le lendemain de votre commande.', 1490);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(6, 'MX Black'),
(7, 'MX Red'),
(8, 'MX Blue'),
(9, 'MX Brown');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211009140033', '2021-10-09 16:00:45', 293),
('DoctrineMigrations\\Version20211012164545', '2021-10-12 18:46:05', 465),
('DoctrineMigrations\\Version20211012165809', '2021-10-12 18:58:17', 1757),
('DoctrineMigrations\\Version20211018153615', '2021-10-18 17:36:25', 2789),
('DoctrineMigrations\\Version20211019164416', '2021-10-19 18:44:30', 451),
('DoctrineMigrations\\Version20211019165746', '2021-10-19 18:57:53', 2811),
('DoctrineMigrations\\Version20211019202558', '2021-10-19 22:26:03', 644),
('DoctrineMigrations\\Version20211023125935', '2021-10-23 14:59:42', 1553),
('DoctrineMigrations\\Version20211023165920', '2021-10-23 18:59:25', 1746),
('DoctrineMigrations\\Version20211026153718', '2021-10-26 17:37:39', 1344),
('DoctrineMigrations\\Version20211026165414', '2021-10-26 18:54:22', 665),
('DoctrineMigrations\\Version20211027151049', '2021-10-27 17:10:59', 979);

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `illustration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id`, `title`, `content`, `btn_title`, `btn_url`, `illustration`) VALUES
(1, 'Nouvelle collection', 'Découvrez notre nouvelle collection 2021', 'Découvrir', 'https://localhost:8000/nos-produits', '65f53ac0d6c5ee6efd4df5c6449680b098af5386.png'),
(2, 'Promo de la rentrée', 'Découvrez les promos', 'Découvrir', 'https://localhost:8000/nos-produits', '9895a4122e45836ff4449bb7687556234d391c15.jpg'),
(3, 'Claviers customisés', 'Découvrir la collection', 'Découvrir', 'https://localhost:8000/nos-produits', 'fe4e33582567be49bd0a4263c3d32c93fa058811.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `carrier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_price` double NOT NULL,
  `delivery` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `created_at`, `carrier_name`, `carrier_price`, `delivery`, `reference`, `stripe_session_id`, `state`) VALUES
(1, 3, '2021-10-19 22:55:08', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(2, 3, '2021-10-19 22:55:09', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(3, 3, '2021-10-21 17:51:40', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(4, 3, '2021-10-21 17:53:59', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(5, 3, '2021-10-21 17:54:02', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(6, 3, '2021-10-21 17:54:43', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(7, 3, '2021-10-21 17:55:28', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(8, 3, '2021-10-21 17:56:29', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(9, 3, '2021-10-21 18:00:08', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(10, 3, '2021-10-21 18:00:46', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(11, 3, '2021-10-21 18:57:22', 'Colissimo', 9.9, 'jdjytdj tyjdtj<br>7467846<br><br>tydjjtyj<br>454554<br>CM', '', NULL, 0),
(12, 3, '2021-10-21 18:57:31', 'Chronopost', 19.9, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '', NULL, 0),
(13, 3, '2021-10-21 18:57:41', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(14, 3, '2021-10-21 19:14:07', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(15, 3, '2021-10-21 19:14:18', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(16, 7, '2021-10-21 19:15:38', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(17, 7, '2021-10-21 19:17:44', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(18, 7, '2021-10-21 19:18:01', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(19, 7, '2021-10-21 19:18:11', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(20, 7, '2021-10-21 19:18:32', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(21, 7, '2021-10-21 19:18:43', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(22, 7, '2021-10-21 19:18:54', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(23, 7, '2021-10-21 19:22:36', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(24, 7, '2021-10-21 19:22:45', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(25, 7, '2021-10-21 19:22:54', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(26, 7, '2021-10-21 19:23:19', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(27, 7, '2021-10-21 19:24:20', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(28, 7, '2021-10-21 19:24:37', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(29, 7, '2021-10-21 19:25:21', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(30, 7, '2021-10-21 19:26:23', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(31, 7, '2021-10-21 19:26:36', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(32, 7, '2021-10-21 19:26:44', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(33, 7, '2021-10-21 19:26:57', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(34, 7, '2021-10-21 19:28:19', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(35, 7, '2021-10-21 19:29:15', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(36, 7, '2021-10-21 19:30:56', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(37, 7, '2021-10-21 19:31:35', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(38, 7, '2021-10-21 19:33:15', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(39, 7, '2021-10-21 19:33:28', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(40, 7, '2021-10-21 19:33:49', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(41, 7, '2021-10-21 19:40:27', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(42, 7, '2021-10-21 19:42:22', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(43, 7, '2021-10-21 19:42:36', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(44, 7, '2021-10-21 19:42:56', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(45, 7, '2021-10-21 19:43:02', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(46, 7, '2021-10-21 19:45:31', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(47, 7, '2021-10-21 19:46:08', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(48, 7, '2021-10-21 19:46:16', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(49, 7, '2021-10-21 19:46:41', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(50, 7, '2021-10-21 19:47:13', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(51, 7, '2021-10-21 19:47:57', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(52, 7, '2021-10-21 19:48:04', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(53, 7, '2021-10-21 19:48:20', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(54, 7, '2021-10-21 19:48:47', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(55, 7, '2021-10-21 19:52:31', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(56, 7, '2021-10-21 19:52:41', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(57, 7, '2021-10-21 19:52:56', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(58, 7, '2021-10-21 19:53:05', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(59, 7, '2021-10-21 19:55:00', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(60, 7, '2021-10-21 20:03:50', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(61, 7, '2021-10-21 20:51:16', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(62, 3, '2021-10-23 14:51:52', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(63, 3, '2021-10-23 14:52:21', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(64, 3, '2021-10-23 14:52:35', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(65, 3, '2021-10-23 14:53:05', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '', NULL, 0),
(66, 3, '2021-10-23 15:03:44', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '23102021-6174083072dcc', NULL, 0),
(67, 3, '2021-10-23 15:14:41', 'Colissimo', 9.9, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '23102021-61740ac134758', NULL, 0),
(68, 3, '2021-10-23 15:17:18', 'Chronopost', 19.9, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '23102021-61740b5e32549', NULL, 0),
(69, 3, '2021-10-23 15:17:35', 'Colissimo', 9.9, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '23102021-61740b6f018b9', NULL, 0),
(70, 3, '2021-10-23 15:18:13', 'Colissimo', 9.9, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '23102021-61740b953e51e', NULL, 0),
(71, 3, '2021-10-23 15:27:26', 'Colissimo', 9.9, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '23102021-61740dbeb3675', NULL, 0),
(72, 3, '2021-10-23 15:27:42', 'Chronopost', 19.9, 'jdjytdj tyjdtj<br>7467846<br><br>tydjjtyj<br>454554<br>CM', '23102021-61740dce558ca', NULL, 0),
(73, 3, '2021-10-23 15:31:27', 'Chronopost', 19.9, 'jdjytdj tyjdtj<br>7467846<br><br>tydjjtyj<br>454554<br>CM', '23102021-61740eaf96cda', NULL, 0),
(74, 3, '2021-10-23 15:31:59', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '23102021-61740ecf3fd17', NULL, 0),
(75, 3, '2021-10-23 18:11:38', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '23102021-6174343a5f237', NULL, 0),
(76, 3, '2021-10-23 18:12:05', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '23102021-617434552f849', NULL, 0),
(77, 3, '2021-10-23 18:18:52', 'Chronopost', 19.9, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '23102021-617435ec44e75', NULL, 0),
(78, 3, '2021-10-23 18:22:37', 'Chronopost', 19.9, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '23102021-617436cd9c309', NULL, 0),
(79, 3, '2021-10-23 18:24:30', 'Chronopost', 19.9, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '23102021-6174373e79f27', NULL, 0),
(80, 3, '2021-10-23 18:25:32', 'Chronopost', 19.9, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '23102021-6174377cc1a03', NULL, 0),
(81, 3, '2021-10-23 19:01:44', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '23102021-61743ff80305f', NULL, 0),
(82, 3, '2021-10-23 19:11:09', 'Chronopost', 19.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '23102021-6174422d0016c', 'cs_test_b10aWYMvMrrSZoKYuOqz2tnfrObaLRxmNFd35zcrX9h54vX2FkQKoKNxQd', 0),
(83, 3, '2021-10-23 19:27:47', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '23102021-617446134553a', 'cs_test_b1M7iXvywMkLPZv4pyFEiXUxrziG5rLku8zv5NvaoFvwSp1e0ehhfM0gGD', 0),
(84, 3, '2021-10-23 19:35:10', 'Colissimo', 9.9, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '23102021-617447cee0060', 'cs_test_b1fC9DbYmqrNfiv1wreWxB9HAXIwnWONfiYdRIoNbizGy0iuDpCGDj1vbW', 0),
(85, 3, '2021-10-23 19:35:53', 'Chronopost', 19.9, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '23102021-617447f9f25c8', 'cs_test_b1VjSUE6GvckBgLwmI4UNa7OXnZsIWs1LrhpPQBkmgRIB7L2aPZJeFZfnj', 0),
(86, 3, '2021-10-23 19:50:12', 'Chronopost', 1490, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '23102021-61744b5485632', NULL, 0),
(87, 3, '2021-10-23 19:51:21', 'Colissimo', 990, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '23102021-61744b99a9bd5', NULL, 0),
(88, 3, '2021-10-23 19:52:20', 'Colissimo', 990, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '23102021-61744bd478c4c', NULL, 0),
(89, 3, '2021-10-23 19:52:35', 'Colissimo', 990, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '23102021-61744be3d241b', NULL, 0),
(90, 3, '2021-10-23 19:53:16', 'Colissimo', 990, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '23102021-61744c0c616c8', NULL, 0),
(91, 3, '2021-10-23 19:54:08', 'Colissimo', 990, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '23102021-61744c4004a69', 'cs_test_b16RKNTgaJLt7CSQpZCLCtOasr8gbERFL1OJWTRY8hwfJ1TtNrjLoKDs47', 0),
(92, 3, '2021-10-23 20:03:04', 'Colissimo', 990, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '23102021-61744e586172e', NULL, 0),
(93, 3, '2021-10-23 20:03:25', 'Colissimo', 990, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '23102021-61744e6d65031', NULL, 0),
(94, 3, '2021-10-23 20:04:02', 'Colissimo', 990, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '23102021-61744e922698e', NULL, 2),
(95, 3, '2021-10-23 20:04:17', 'Colissimo', 990, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '23102021-61744ea11e3a8', NULL, 2),
(96, 3, '2021-10-23 21:16:25', 'Chronopost', 1490, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '23102021-61745f8946f45', 'cs_test_b1kcm3EpqYfDMkvqvyW9AOY5cemUuSdtJlFGPzbntN1H4yOJ9CVYKYdH2J', 2),
(97, 3, '2021-10-24 17:57:59', 'Chronopost', 1490, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '24102021-617582875a74f', 'cs_test_b14k7hpF7MgOBQv9TzLICwR8PRGwubcyBDjsTNzAaIlsYi4ZMrAsfYVeZb', 2),
(98, 3, '2021-10-24 17:58:22', 'Chronopost', 1490, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '24102021-6175829e1233d', 'cs_test_a1t9CMbWZM8ZduRenONbOqJv25d0FL0xkjbxLXofJDFdH558P75zokaovx', 3),
(99, 12, '2021-10-25 18:44:09', 'Chronopost', 1490, 'Quentin Tarentino<br>0235353535<br>lilas<br>75000<br>FR', '25102021-6176ded919e14', 'cs_test_b1MZRdCOzGrRA6Um3ZIGgnTVBA4u90wVWOG4gSXDzfE2L1wSGww2kzr7bZ', 2),
(100, 3, '2021-10-26 18:02:10', 'Colissimo', 990, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '26102021-61782682270aa', 'cs_test_b1jGWGhd1P7qsBXYDlWpGbvVCDkS24ms1I0AXaWjNLvlJ4I5xuma3v4VUP', 3),
(101, 3, '2021-10-26 18:34:20', 'Chronopost', 1490, 'jdjytdj tyjdtj<br>7467846<br><br>tydjjtyj<br>454554<br>CM', '26102021-61782e0c90a1f', 'cs_test_b1gx7QIeqpEzHpL3ESP44pk7Mo0wPmEZRW9zbdzxCKNqxPrOGpiRZtqqPP', 0),
(102, 3, '2021-10-26 18:35:26', 'Colissimo', 990, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '26102021-61782e4e9904f', 'cs_test_b182EnNZK9EZr7Iuu6PM1JQ0QBNlXmY0bm5bcma7yYNgm9CDMLPGU3c2qS', 0),
(103, 3, '2021-10-26 18:40:06', 'Colissimo', 990, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '26102021-61782f668793a', 'cs_test_b1iEjQJnsXLNCYFe6uphK5eQxVjyrPaOgMvyTFKo7m06pJE38kojYaV266', 1),
(104, 3, '2021-10-27 23:13:19', 'Colissimo', 990, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '27102021-6179c0efe665f', NULL, 0),
(105, 3, '2021-10-27 23:13:40', 'Colissimo', 990, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '27102021-6179c1046daf9', NULL, 0),
(106, 3, '2021-10-27 23:15:55', 'Colissimo', 990, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '27102021-6179c18b1d2e8', 'cs_test_b1VurEtKViJN5KDzc2eQT1ZRUiffdZQ5RcOpgX9rmFcR3FpPJcMHgj24t1', 3),
(107, 3, '2021-10-27 23:45:19', 'Chronopost', 1490, 'Nivash Goodur<br>0780378088<br>9 rue du bon houdart<br>93700<br>FR', '27102021-6179c86f0c921', 'cs_test_b1LcT0SdsmhY8KbLzLsoX17HySDLjMxjGtTl0YxHgTBhVDtbDeSe4Gl9Q9', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `my_order_id` int(11) NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `my_order_id`, `product`, `quantity`, `price`, `total`) VALUES
(1, 1, 'Le Bonnet du skieur', 1, 1200, 1200),
(2, 1, 'Le T-Shirt Basique', 1, 990, 990),
(3, 1, 'L\'écharpe du samedi soir', 1, 1400, 1400),
(4, 1, 'Le manteau Famille', 2, 5000, 10000),
(5, 2, 'Le Bonnet du skieur', 1, 1200, 1200),
(6, 2, 'Le T-Shirt Basique', 1, 990, 990),
(7, 2, 'L\'écharpe du samedi soir', 1, 1400, 1400),
(8, 2, 'Le manteau Famille', 2, 5000, 10000),
(9, 3, 'Le Bonnet du skieur', 2, 1200, 2400),
(10, 4, 'Le Bonnet du skieur', 2, 1200, 2400),
(11, 5, 'Le Bonnet du skieur', 2, 1200, 2400),
(12, 6, 'Le Bonnet du skieur', 2, 1200, 2400),
(13, 7, 'Le Bonnet du skieur', 2, 1200, 2400),
(14, 8, 'Le Bonnet du skieur', 2, 1200, 2400),
(15, 9, 'Le Bonnet du skieur', 2, 1200, 2400),
(16, 10, 'Le Bonnet du skieur', 2, 1200, 2400),
(17, 11, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(18, 12, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(19, 12, 'Le Bonnet du skieur', 1, 1200, 1200),
(20, 13, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(21, 13, 'Le Bonnet du skieur', 1, 1200, 1200),
(22, 14, 'Bonnet Rouge', 1, 900, 900),
(23, 15, 'Bonnet Rouge', 1, 900, 900),
(24, 16, 'Le T-Shirt Basique', 1, 990, 990),
(25, 17, 'Le T-Shirt Basique', 1, 990, 990),
(26, 18, 'Le T-Shirt Basique', 1, 990, 990),
(27, 19, 'Le T-Shirt Basique', 1, 990, 990),
(28, 20, 'Le T-Shirt Basique', 1, 990, 990),
(29, 21, 'Le T-Shirt Basique', 1, 990, 990),
(30, 22, 'Le T-Shirt Basique', 1, 990, 990),
(31, 23, 'Le T-Shirt Basique', 1, 990, 990),
(32, 24, 'Le T-Shirt Basique', 1, 990, 990),
(33, 25, 'Le T-Shirt Basique', 1, 990, 990),
(34, 26, 'Le T-Shirt Basique', 1, 990, 990),
(35, 27, 'Le T-Shirt Basique', 1, 990, 990),
(36, 28, 'Le T-Shirt Basique', 1, 990, 990),
(37, 29, 'Le T-Shirt Basique', 1, 990, 990),
(38, 30, 'Le T-Shirt Basique', 1, 990, 990),
(39, 31, 'Le T-Shirt Basique', 1, 990, 990),
(40, 32, 'Le T-Shirt Basique', 1, 990, 990),
(41, 33, 'Le T-Shirt Basique', 1, 990, 990),
(42, 34, 'Le T-Shirt Basique', 1, 990, 990),
(43, 35, 'Le T-Shirt Basique', 1, 990, 990),
(44, 36, 'Le T-Shirt Basique', 1, 990, 990),
(45, 37, 'Le T-Shirt Basique', 1, 990, 990),
(46, 38, 'Le T-Shirt Basique', 1, 990, 990),
(47, 39, 'Le T-Shirt Basique', 1, 990, 990),
(48, 40, 'Le T-Shirt Basique', 1, 990, 990),
(49, 41, 'Le T-Shirt Basique', 1, 990, 990),
(50, 42, 'Le T-Shirt Basique', 1, 990, 990),
(51, 43, 'Le T-Shirt Basique', 1, 990, 990),
(52, 44, 'Le T-Shirt Basique', 1, 990, 990),
(53, 45, 'Le T-Shirt Basique', 1, 990, 990),
(54, 46, 'Le T-Shirt Basique', 1, 990, 990),
(55, 47, 'Le T-Shirt Basique', 1, 990, 990),
(56, 48, 'Le T-Shirt Basique', 1, 990, 990),
(57, 49, 'Le T-Shirt Basique', 1, 990, 990),
(58, 49, 'Le Bonnet du skieur', 2, 1200, 2400),
(59, 50, 'Le T-Shirt Basique', 1, 990, 990),
(60, 50, 'Le Bonnet du skieur', 2, 1200, 2400),
(61, 51, 'Le T-Shirt Basique', 1, 990, 990),
(62, 51, 'Le Bonnet du skieur', 2, 1200, 2400),
(63, 52, 'Le T-Shirt Basique', 1, 990, 990),
(64, 52, 'Le Bonnet du skieur', 2, 1200, 2400),
(65, 53, 'Le T-Shirt Basique', 1, 990, 990),
(66, 53, 'Le Bonnet du skieur', 2, 1200, 2400),
(67, 54, 'Le T-Shirt Basique', 1, 990, 990),
(68, 54, 'Le Bonnet du skieur', 2, 1200, 2400),
(69, 55, 'Le T-Shirt Basique', 1, 990, 990),
(70, 55, 'Le Bonnet du skieur', 2, 1200, 2400),
(71, 55, 'Bonnet Rouge', 1, 900, 900),
(72, 56, 'Le T-Shirt Basique', 1, 990, 990),
(73, 56, 'Le Bonnet du skieur', 2, 1200, 2400),
(74, 56, 'Bonnet Rouge', 1, 900, 900),
(75, 57, 'Le T-Shirt Basique', 2, 990, 1980),
(76, 57, 'Bonnet Rouge', 1, 900, 900),
(77, 58, 'Le T-Shirt Basique', 2, 990, 1980),
(78, 58, 'Bonnet Rouge', 1, 900, 900),
(79, 59, 'Le T-Shirt Basique', 2, 990, 1980),
(80, 59, 'Bonnet Rouge', 1, 900, 900),
(81, 60, 'Le T-Shirt Basique', 2, 990, 1980),
(82, 60, 'Bonnet Rouge', 1, 900, 900),
(83, 61, 'Le T-Shirt Basique', 2, 990, 1980),
(84, 61, 'Bonnet Rouge', 1, 900, 900),
(85, 61, 'Le Bonnet du skieur', 1, 1200, 1200),
(86, 62, 'Le T-shirt manche longue', 2, 1000, 2000),
(87, 63, 'Le T-shirt manche longue', 2, 1000, 2000),
(88, 64, 'Le T-shirt manche longue', 2, 1000, 2000),
(89, 65, 'Le T-shirt manche longue', 2, 1000, 2000),
(90, 66, 'Le T-shirt manche longue', 2, 1000, 2000),
(91, 67, 'Bonnet Rouge', 1, 900, 900),
(92, 68, 'Bonnet Rouge', 1, 900, 900),
(93, 68, 'L\'écharpe du samedi soir', 1, 1400, 1400),
(94, 69, 'Bonnet Rouge', 1, 900, 900),
(95, 69, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(96, 70, 'Bonnet Rouge', 1, 900, 900),
(97, 70, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(98, 71, 'Bonnet Rouge', 1, 900, 900),
(99, 71, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(100, 72, 'Bonnet Rouge', 1, 900, 900),
(101, 72, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(102, 73, 'Bonnet Rouge', 1, 900, 900),
(103, 73, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(104, 74, 'Bonnet Rouge', 1, 900, 900),
(105, 74, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(106, 74, 'Le Bonnet du skieur', 1, 1200, 1200),
(107, 75, 'Bonnet Rouge', 1, 900, 900),
(108, 75, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(109, 75, 'Le Bonnet du skieur', 1, 1200, 1200),
(110, 76, 'Bonnet Rouge', 1, 900, 900),
(111, 76, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(112, 76, 'Le Bonnet du skieur', 1, 1200, 1200),
(113, 77, 'Bonnet Rouge', 1, 900, 900),
(114, 77, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(115, 77, 'Le Bonnet du skieur', 1, 1200, 1200),
(116, 78, 'Bonnet Rouge', 1, 900, 900),
(117, 78, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(118, 78, 'Le Bonnet du skieur', 1, 1200, 1200),
(119, 79, 'Bonnet Rouge', 1, 900, 900),
(120, 79, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(121, 79, 'Le Bonnet du skieur', 1, 1200, 1200),
(122, 80, 'Bonnet Rouge', 1, 900, 900),
(123, 80, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(124, 80, 'Le Bonnet du skieur', 1, 1200, 1200),
(125, 81, 'Bonnet Rouge', 2, 900, 1800),
(126, 81, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(127, 81, 'Le Bonnet du skieur', 1, 1200, 1200),
(128, 82, 'Bonnet Rouge', 2, 900, 1800),
(129, 82, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(130, 82, 'Le Bonnet du skieur', 1, 1200, 1200),
(131, 83, 'Bonnet Rouge', 3, 900, 2700),
(132, 83, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(133, 83, 'Le Bonnet du skieur', 1, 1200, 1200),
(134, 84, 'Bonnet Rouge', 3, 900, 2700),
(135, 84, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(136, 84, 'Le Bonnet du skieur', 1, 1200, 1200),
(137, 85, 'Bonnet Rouge', 3, 900, 2700),
(138, 85, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(139, 85, 'Le Bonnet du skieur', 1, 1200, 1200),
(140, 86, 'Bonnet Rouge', 3, 900, 2700),
(141, 86, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(142, 86, 'Le Bonnet du skieur', 2, 1200, 2400),
(143, 87, 'Bonnet Rouge', 3, 900, 2700),
(144, 87, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(145, 87, 'Le Bonnet du skieur', 2, 1200, 2400),
(146, 88, 'Bonnet Rouge', 3, 900, 2700),
(147, 88, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(148, 88, 'Le Bonnet du skieur', 2, 1200, 2400),
(149, 89, 'Bonnet Rouge', 3, 900, 2700),
(150, 89, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(151, 89, 'Le Bonnet du skieur', 2, 1200, 2400),
(152, 90, 'Bonnet Rouge', 3, 900, 2700),
(153, 90, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(154, 90, 'Le Bonnet du skieur', 2, 1200, 2400),
(155, 91, 'Bonnet Rouge', 3, 900, 2700),
(156, 91, 'L\'écharpe du samedi soir', 2, 1400, 2800),
(157, 91, 'Le Bonnet du skieur', 2, 1200, 2400),
(158, 92, 'Bonnet Rouge', 1, 900, 900),
(159, 93, 'Bonnet Rouge', 1, 900, 900),
(160, 94, 'Bonnet Rouge', 1, 900, 900),
(161, 95, 'Bonnet Rouge', 1, 900, 900),
(162, 96, 'Le manteau de soirée', 1, 6900, 6900),
(163, 97, 'Bonnet Rouge', 1, 900, 900),
(164, 99, 'Le manteau de soirée', 2, 6900, 13800),
(165, 99, 'L\'écharpe du loveur', 1, 1600, 1600),
(166, 100, 'Bonnet Rouge', 1, 900, 900),
(167, 101, 'Le Bonnet du skieur', 1, 1200, 1200),
(168, 102, 'Le Bonnet du skieur', 1, 1200, 1200),
(169, 103, 'Le manteau Famille', 2, 5000, 10000),
(170, 104, 'Corsair K70', 1, 11999, 11999),
(171, 106, 'Corsair K70', 1, 11999, 11999),
(172, 107, 'TKL Backlit', 2, 10399, 20798),
(173, 107, 'Double Shot PBT', 2, 11900, 23800),
(174, 107, 'Corsair K70', 3, 11999, 35997);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `illustration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `is_best` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `slug`, `illustration`, `subtitle`, `description`, `price`, `is_best`) VALUES
(11, 6, 'TKL Backlit', 'tkl-backlit', 'd9829b6df80969ddb416574b0f93480445c21307.jpg', 'Cherry MX Black', 'Des switches linéaires très semblables aux rouges, à la différence près qu’ils nécessitent une force de 60 grammes pour être activés. Au toucher ils sont donc un peu plus résistants que les rouges. Une version silencieuse est là aussi disponible.', 10399, 0),
(12, 6, 'Double Shot PBT', 'double-shot-pbt', '8231f024641c3fb1f16b298d896788ee788ff708.jpg', 'Cherry MX Black', 'Des switches linéaires très semblables aux rouges, à la différence près qu’ils nécessitent une force de 60 grammes pour être activés. Au toucher ils sont donc un peu plus résistants que les rouges. Une version silencieuse est là aussi disponible.', 11900, 0),
(13, 7, 'Corsair K63', 'corsair-k63', '9c2dafe470a60145dcf0c3d204878fa0c01a785c.jpg', 'Cherry MX Red', 'Ce sont les plus répandues. Ces switches linéaires ne requièrent qu’une force de 45 grammes pour être activés. Cette légèreté en fait un excellent choix à la fois pour jouer et écrire. Les touches sont également très silencieuses, notamment la variété MX Red Silent, ce qui accentue leur capacité à se fondre dans un environnement de travail.', 6995, 1),
(14, 7, 'Corsair K68', 'corsair-k68', 'bd241f3e914156e4797619f843bbe2b6ecdf0e8e.jpg', 'Cherry MX Red', 'Ce sont les plus répandues. Ces switches linéaires ne requièrent qu’une force de 45 grammes pour être activés. Cette légèreté en fait un excellent choix à la fois pour jouer et écrire. Les touches sont également très silencieuses, notamment la variété MX Red Silent, ce qui accentue leur capacité à se fondre dans un environnement de travail.', 8921, 0),
(15, 8, 'Corsair K70', 'corsair-k70', '74289dfbc8154ffab60d6f702bf6c3edc1b01a9a.jpg', 'Cherry MX Blue', 'Ce sont des switches « à clic », ce qui signifie qu’ils font un bruit significatif à chaque pression, comme les vieilles machines à écrire. Certains utilisateurs aiment ce son, d’autres le trouvent insupportable. La seule façon de savoir s’ils vous conviendront est d’essayer. Ces switches nécessitent une force d’activation de 50g.', 11999, 0),
(16, 8, 'DREVO Excalibur 84', 'drevo-excalibur-84', 'b64ac17029ef7f67d553d0c81a2dea358dc119e2.jpg', 'Cherry MX Blue', 'Ce sont des switches « à clic », ce qui signifie qu’ils font un bruit significatif à chaque pression, comme les vieilles machines à écrire. Certains utilisateurs aiment ce son, d’autres le trouvent insupportable. La seule façon de savoir s’ils vous conviendront est d’essayer. Ces switches nécessitent une force d’activation de 50g.', 7999, 1),
(17, 9, 'Corsair K95', 'corsair-k95', 'c5fbefd98ac9b576fd6895fd1f61412a7f9f6505.jpg', 'Cherry MX Brown', 'L’un des switches les plus populaires auprès des joueurs. Les marrons sont des switches tactiles qui requièrent une force de 45 grammes pour être activés. Ils font peu de bruit et ont un retour très rapide après l’activation.', 18799, 1),
(18, 9, 'Durgod Taurus K320', 'durgod-taurus-k320', '8235cbee92f6fb0aa862888793b83865c9961f1e.jpg', 'Cherry MX Brown', 'L’un des switches les plus populaires auprès des joueurs. Les marrons sont des switches tactiles qui requièrent une force de 45 grammes pour être activés. Ils font peu de bruit et ont un retour très rapide après l’activation.', 21349, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `last_name`, `first_name`, `address`, `birth_date`, `company`) VALUES
(3, 'Quentin@a.a', '[\"ROLE_ADMIN\"]', '$2y$13$0l7DuP4SrIYA/xVW67OgDe0HpAQengkDPn.OeRRvbw5bzKPf5NkVi', 'Quentin', 'Tarentino', 'Paris', '1912-07-01', NULL),
(4, 'b@b.b', '[]', '$2y$13$mav0ONWHz7K.Wu50FkiCdO2mt19n4.ci19BxwMlGiUEKSShTM2CRe', 'bbb', 'bbbbbb', 'qidoqd', '1917-08-18', 'oui'),
(6, 'c@c.c', '[]', '$2y$13$0l7DuP4SrIYA/xVW67OgDe0HpAQengkDPn.OeRRvbw5bzKPf5NkVi', 'Cron', 'Carl', 'Versailles', '1985-11-09', 'Société'),
(7, 'test@test.test', '[]', '$2y$13$rh0ZFJScn7Gick90A7unJO9npZdrA3MUBd68vgaCM/aNhb0l2mvlG', 'gdsfrgdg', 'gsdfgsdg', 'sdgedrgeg', '1901-01-01', NULL),
(8, 'zert@a.a', '[]', '$2y$13$6LMqUQEXFi4mQsuJJ/Epd.ixVe4YC9khvY7afwE7PKqg67zxVM1I2', 'Tarentino', 'Quentin', 'lilas', '1901-01-01', 'cinéma'),
(12, 'bilel9372@gmail.com', '[]', '$2y$13$mv9sVhJ32wgyPpuWK5UfC.oCJ.3dvI5CB.ShUfSdzOnZLZqmqwHum', 'Tarentino', 'Quentin', 'lilas', '1901-01-01', 'cinéma'),
(13, 'nivash_goodur@live.fr', '[]', '$2y$13$r2nCkxsLZfrkDVkIY7zOK.MuzWgTYchirBwQ46kD31M8pVzfkmuqe', 'Tarentino', 'Quentin', 'lilas', '1901-01-01', 'cinéma');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D4E6F81A76ED395` (`user_id`);

--
-- Indexes for table `carrier`
--
ALTER TABLE `carrier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F5299398A76ED395` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_845CA2C1BFCDF877` (`my_order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD12469DE2` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carrier`
--
ALTER TABLE `carrier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_D4E6F81A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F5299398A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK_845CA2C1BFCDF877` FOREIGN KEY (`my_order_id`) REFERENCES `order` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
