-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Stř 01. dub 2020, 19:00
-- Verze serveru: 10.4.8-MariaDB
-- Verze PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `euro-project`
--

--
-- Vyprázdnit tabulku před vkládáním `teams`
--

TRUNCATE TABLE `teams`;
--
-- Vypisuji data pro tabulku `teams`
--

INSERT INTO `teams` (`id`, `team`, `abbreviation`, `grupa`) VALUES
(1, 'Italy', 'ITA', 'A'),
(2, 'Switzerland', 'SWI', 'A'),
(3, 'Turkey', 'TUR', 'A'),
(4, 'Wales', 'WAL', 'A'),
(5, 'Belgium', 'BEL', 'B'),
(6, 'Denmark', 'DEN', 'B'),
(7, 'Finland', 'FIN', 'B'),
(8, 'Russia', 'RUS', 'B'),
(9, 'Austria', 'AUS', 'C'),
(10, 'Netherland', 'NET', 'C'),
(11, 'WinnerD', 'WID', 'C'),
(12, 'Ukraine', 'UKR', 'C'),
(13, 'Croatia', 'CRO', 'D'),
(14, 'Czech Republic', 'CZE', 'D'),
(15, 'England', 'ENG', 'D'),
(16, 'WinnerC', 'WIC', 'D'),
(17, 'WinnerB', 'WIB', 'E'),
(18, 'Poland', 'POL', 'E'),
(19, 'Spain', 'SPA', 'E'),
(20, 'Sweden', 'SWE', 'E'),
(21, 'France', 'FRA', 'F'),
(22, 'Germany', 'GER', 'F'),
(23, 'WinnerA', 'WIA', 'F'),
(24, 'Portugal', 'POR', 'F');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
