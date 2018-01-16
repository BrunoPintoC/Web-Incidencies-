-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:8889
-- Temps de generació: 16-12-2015 a les 00:17:53
-- Versió del servidor: 5.5.42
-- Versió de PHP: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de dades: `incidencies`
--

-- --------------------------------------------------------

-- 
-- Estructura de la taula 'usuaris'
-- 

CREATE TABLE usuaris (
  id int(11) NOT NULL auto_increment,
  nom varchar(100) character set latin1 collate latin1_bin NOT NULL,
  cognoms varchar(100) character set latin1 collate latin1_bin NOT NULL,
  passaport varchar(15) character set latin1 collate latin1_bin NOT NULL,
  correu varchar(50) character set latin1 collate latin1_bin NOT NULL,
  `password` varchar(15) character set latin1 collate latin1_bin NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Estructura de la taula `incidencies`
--

CREATE TABLE `incidencies` (
  `id_incidencia` int(10) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `cognom1` varchar(25) NOT NULL,
  `cognom2` varchar(25) NOT NULL,
  `correu1` varchar(50) NOT NULL,
  `correu2` varchar(50) NOT NULL,
  `hora` varchar(5) NOT NULL,
  `dia` int(2) NOT NULL,
  `mes` int(2) NOT NULL,
  `any` int(4) NOT NULL,
  `tecnic` varchar(4) NOT NULL,
  `parroquia` varchar(5) NOT NULL,
  `tipus` varchar(20) NOT NULL,
  `estat` varchar(20) NOT NULL,
  `observacions` varchar(15) NOT NULL,
  `idioma` varchar(5) NOT NULL,
  `dificultat` int(11) NOT NULL,
  `descripcio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Bolcant dades de la taula `incidencies`
--

INSERT INTO `incidencies` (`id_incidencia`, `nom`, `cognom1`, `cognom2`, `correu1`, `correu2`, `hora`, `dia`, `mes`, `any`, `tecnic`, `parroquia`, `tipus`, `estat`, `observacions`, `idioma`, `dificultat`, `descripcio`) VALUES
(1, 'nom', 'primer', 'segon', 'domini', '', '12:34', 1, 2, 2015, '0345', 'AD200', 'missatgeria', 'pendent', 'satisfet', 'en', 3, '<p><em><strong>Hola</strong></em></p>'),
(123, 'nom', 'primer', 'segon', 'correu', 'domini', '12:34', 1, 2, 2015, '0345', 'AD500', 'missatgeria', 'pendent', 'satisfet', 'en', 3, '');

-- --------------------------------------------------------

--
-- Estructura de la taula `parroquies`
--

CREATE TABLE `parroquies` (
  `id_parroquia` varchar(5) NOT NULL,
  `nom_parroquia` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Bolcant dades de la taula `parroquies`
--

INSERT INTO `parroquies` (`id_parroquia`, `nom_parroquia`) VALUES
('AD100', 'Canillo'),
('AD200', 'Encamp'),
('AD500', 'Andorra la Vella');

--
-- Indexos per taules bolcades
--

--
-- Index de la taula `incidencies`
--
ALTER TABLE `incidencies`
  ADD PRIMARY KEY (`id_incidencia`),
  ADD KEY `parroquia` (`parroquia`);

--
-- Index de la taula `parroquies`
--
ALTER TABLE `parroquies`
  ADD PRIMARY KEY (`id_parroquia`);

--
-- Restriccions per taules bolcades
--

--
-- Restriccions per la taula `incidencies`
--
ALTER TABLE `incidencies`
  ADD CONSTRAINT `fk_parroquia` FOREIGN KEY (`parroquia`) REFERENCES `parroquies` (`id_parroquia`);
