-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 06 Novembre 2013 à 12:32
-- Version du serveur: 5.6.14
-- Version de PHP: 5.5.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `booxstore`
--
CREATE DATABASE IF NOT EXISTS `booxstore` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `booxstore`;

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(510) DEFAULT NULL,
  `LastName` varchar(510) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `Id` int(11) NOT NULL,
  `Title` varchar(510) DEFAULT NULL,
  `Id_Category` int(11) DEFAULT NULL,
  `Supply` int(11) DEFAULT NULL,
  `Threshold` int(11) DEFAULT NULL,
  `Summary` longtext,
  `Release_Date` datetime DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Id_Publisher` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `book_author`
--

DROP TABLE IF EXISTS `book_author`;
CREATE TABLE IF NOT EXISTS `book_author` (
  `Id` int(11) NOT NULL,
  `Id_Author` int(11) DEFAULT NULL,
  `Id_Book` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_BOOK_AUTHOR_ToAUTHOR` (`Id_Author`),
  KEY `FK_BOOK_AUTHOR_ToBOOK` (`Id_Book`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `book_order`
--

DROP TABLE IF EXISTS `book_order`;
CREATE TABLE IF NOT EXISTS `book_order` (
  `Id` int(11) NOT NULL,
  `Id_Book` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Id_Order` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_BOOK_ORDER_ToBOOK` (`Id_Book`),
  KEY `FK_BOOK_ORDER_ToOrder` (`Id_Order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `Id` int(11) NOT NULL,
  `Name` varchar(510) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `Id` int(11) NOT NULL,
  `Id_User` int(11) NOT NULL,
  `Date` datetime NOT NULL,
  `Total` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_ORDER_ToUser` (`Id_User`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `Id` int(11) NOT NULL,
  `Name` varchar(510) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `seller`
--

DROP TABLE IF EXISTS `seller`;
CREATE TABLE IF NOT EXISTS `seller` (
  `Id` int(11) NOT NULL,
  `Login` varchar(510) NOT NULL,
  `Password` varchar(510) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(510) DEFAULT NULL,
  `LastName` varchar(510) DEFAULT NULL,
  `Mail` varchar(510) DEFAULT NULL,
  `Address` varchar(510) DEFAULT NULL,
  `ZIP` varchar(510) DEFAULT NULL,
  `City` varchar(510) DEFAULT NULL,
  `Login` varchar(510) DEFAULT NULL,
  `Password` varchar(510) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `FK_BOOK_AUTHOR_ToAUTHOR` FOREIGN KEY (`Id_Author`) REFERENCES `author` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_BOOK_AUTHOR_ToBOOK` FOREIGN KEY (`Id_Book`) REFERENCES `book` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `book_order`
--
ALTER TABLE `book_order`
  ADD CONSTRAINT `FK_BOOK_ORDER_ToBOOK` FOREIGN KEY (`Id_Book`) REFERENCES `book` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_BOOK_ORDER_ToOrder` FOREIGN KEY (`Id_Order`) REFERENCES `order` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_ORDER_ToUser` FOREIGN KEY (`Id_User`) REFERENCES `user` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
