-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Giu 01, 2016 alle 10:03
-- Versione del server: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jukeboxsql`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  `annoUscita` int(4) NOT NULL,
  `linkImg` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `album`
--

INSERT INTO `album` (`ID`, `nome`, `annoUscita`, `linkImg`) VALUES
(1, 'Prestige', 2012, 'images\\album\\DaddyYankee-Prestige.jpg'),
(2, 'Ghost Stories', 2014, 'images\\album\\coldplay1.jpg'),
(3, 'Recovery', 2010, 'images\\album\\eminem1.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `artisti`
--

CREATE TABLE IF NOT EXISTS `artisti` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `linkImg` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `artisti`
--

INSERT INTO `artisti` (`ID`, `nome`, `linkImg`) VALUES
(1, 'Daddy Yankee ', 'images\\cantanti\\daddy-yankee.jpeg'),
(2, 'Coldplay', 'images\\cantanti\\coldplay.jpg'),
(3, 'Eminem', 'images\\cantanti\\eminem.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `associazioni`
--

CREATE TABLE IF NOT EXISTS `associazioni` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDbrano` int(255) NOT NULL,
  `IDartista` int(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `associazioni`
--

INSERT INTO `associazioni` (`ID`, `IDbrano`, `IDartista`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `brani`
--

CREATE TABLE IF NOT EXISTS `brani` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `linkAudio` varchar(255) NOT NULL,
  `durata` time(4) NOT NULL,
  `titolo` varchar(25) NOT NULL,
  `CodAlbum` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `brani`
--

INSERT INTO `brani` (`ID`, `linkAudio`, `durata`, `titolo`, `CodAlbum`) VALUES
(1, 'canzoni\\DaddyYankee-Lovumba.mp3', '00:04:09.0000', 'Lovumba', 1),
(2, 'canzoni\\DaddyYankee-Lovumba1.mp3', '00:04:09.0000', 'Magic', 2),
(3, 'canzoni\\DaddyYankee-Lovumba1.mp3', '00:04:08.0000', 'Not Afraid', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `coda`
--

CREATE TABLE IF NOT EXISTS `coda` (
  `ID` int(11) NOT NULL,
  `IDBrano` int(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `coda`
--

INSERT INTO `coda` (`ID`, `IDBrano`) VALUES
(0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
