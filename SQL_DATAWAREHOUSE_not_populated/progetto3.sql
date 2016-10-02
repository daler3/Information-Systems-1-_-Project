-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generato il: Set 05, 2015 alle 18:21
-- Versione del server: 5.5.29
-- Versione PHP: 5.4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `progetto3`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `dim_dipendente`
--

CREATE TABLE `dim_dipendente` (
  `id_dipendente` mediumint(8) NOT NULL,
  `ruolo` varchar(255) DEFAULT NULL,
  `eta` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`id_dipendente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `dim_lavorazione`
--

CREATE TABLE `dim_lavorazione` (
  `id_lavorazione` mediumint(8) NOT NULL,
  `nome` text,
  `tempo_nominale` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`id_lavorazione`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `dim_prodotto`
--

CREATE TABLE `dim_prodotto` (
  `id_prodotto` mediumint(9) NOT NULL,
  `costo` mediumint(9) DEFAULT '0',
  `nome` text,
  PRIMARY KEY (`id_prodotto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `fact_esecuzione`
--

CREATE TABLE `fact_esecuzione` (
  `id_esecuzione` mediumint(9) NOT NULL AUTO_INCREMENT,
  `lavorazione_id` mediumint(8) DEFAULT NULL,
  `prodotto_id` mediumint(9) NOT NULL,
  `dipendente_id` mediumint(8) NOT NULL,
  `tempo` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`id_esecuzione`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
