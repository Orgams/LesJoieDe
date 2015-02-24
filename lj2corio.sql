-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 24 Février 2015 à 14:53
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `lj2corio`
--

-- --------------------------------------------------------

--
-- Structure de la table `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT 'images/',
  `auteur` varchar(50) NOT NULL DEFAULT 'apoil1',
  `dateheure` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Contenu de la table `tickets`
--

INSERT INTO `tickets` (`id`, `titre`, `url`, `auteur`, `dateheure`) VALUES
(1, 'Quand R&eacute;mi nous annonce que les sp&eacute;cifications sont pr&ecirc;tes', 'images/kxsCgsB.gif', 'apoil1', '2015-02-18 11:44:03'),
(2, 'Quand un commercial vend un produit Coriolis', 'images/Y407gtf.gif', 'apoil1', '2015-02-18 12:01:56'),
(3, 'Quand tu passes sur le projet AX', 'images/yilralk.gif', 'apoil1', '2015-02-18 12:30:56'),
(4, 'La d&eacute;mo Corio V5 le vendredi 16h.', 'images/vcz3IIK.gif', 'apoil2', '2015-02-18 14:44:38'),
(5, 'Quand je cloture un bug GMD', 'images/3HQZ9dO.gif', 'apoil1', '2015-02-19 08:49:39'),
(6, 'Le projet EasyFolder', 'images/1Omn4Vw.gif', 'apoil1', '2015-02-19 08:49:39'),
(7, 'Quand j''ai commit&eacute; sur la mauvaise branche', 'images/RdWlOgn.gif', 'apoil1', '2015-02-19 08:51:35'),
(8, 'Quand le commercial vend un connecteur et donne une deadline au client sans nous prevenir.', 'images/4kZ5C9L.gif', 'apoil1', '2015-02-19 08:58:01'),
(9, 'Quand je tente d''avoir une r&eacute;ponse pr&eacute;cise d''un fonctionnel', 'images/Dvjwz4u.gif', 'apoil3', '2015-02-19 09:11:04'),
(10, 'Quand je dois saisir mes temps, mes cong&eacute;s et mes ch&egrave;ques d&eacute;jeuner', 'images/bY7ccVk.gif', 'apoil3', '2015-02-19 09:28:33'),
(11, 'Quand j''optimise Coripes en supprimant du code', 'images/XBXNRgM.gif', 'apoil2', '2015-02-19 10:18:45'),
(12, 'Quand on nous annonce que l''on refait toute l''application dans un nouvelle techno en 6 mois', 'images/bofEZd2.gif', 'apoil3', '2015-02-19 12:50:10'),
(13, 'Quand Patrick intervient en r&eacute;union', 'images/patrick.gif', 'apoil3', '2015-02-20 08:41:18'),
(14, 'Quand on r&eacute;ussit &agrave; faire tourner un composant SyncFusion', 'images/composantsync.gif', 'apoil1', '2015-02-20 08:41:18'),
(15, 'Quand j''ouvre Sonar pour la premi&egrave;re fois', 'images/sonar.gif', 'apoil1', '2015-02-20 08:42:22'),
(16, 'Quand je tente de modifier le mod&egrave;le avec DevArt', 'images/devart.gif', 'apoil1', '2015-02-20 08:45:00'),
(18, 'Quand je re&ccedil;ois un mail de Picard', 'images/picard.gif', 'apoil1', '2015-02-20 08:47:25'),
(19, 'Quand je lis la spec des Tiers', 'images/spectiers.gif', 'apoil1', '2015-02-20 08:48:34'),
(20, 'Quand j''ai compris un mail de Rudy', 'images/mailrudy.gif', 'apoil1', '2015-02-20 08:48:34'),
(21, 'Quand Brice t''explique qu''il faut tout recoder', 'images/bricerecoder.gif', 'apoil1', '2015-02-20 08:49:50'),
(22, 'Quand Brice explique comment ce bouzzin va fonctionner', 'images/bricebouzzin.gif', 'apoil1', '2015-02-20 08:49:50'),
(23, 'Quand Sabrina annoncera en Juin que le produit n''est pas pr&ecirc;t', 'images/sabjuin.gif', 'apoil1', '2015-02-20 08:50:53'),
(24, 'Quand apr&egrave;s un GetLatest &ccedil;a compile', 'images/getlatest.gif', 'apoil1', '2015-02-20 08:50:53'),
(25, 'Au t&eacute;l&eacute;phone avec Delage', 'images/delage', 'apoil1', '2015-02-20 16:31:00'),
(26, 'A chaque fois que j''ouvre la base de donn&eacute;es', 'images/database', 'apoil1', '2015-02-20 16:31:49'),
(27, 'Lorsque je sors d''une grosse phase de maintenance', 'images/3g7AANu.gif', 'apoil3', '2015-02-20 16:32:32'),
(28, 'Lorsqu''une petit modification est apport&eacute;e au GridModelWrapper', 'images/g65RcvJ.gif', 'apoil3', '2015-02-20 16:33:38'),
(29, 'Quand on est sous les questions de Robin', 'images/3YAN2Dn.gif', 'apoil3', '2015-02-20 16:34:10');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
