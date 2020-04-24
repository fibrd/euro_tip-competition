-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Stř 01. dub 2020, 18:59
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
-- Vyprázdnit tabulku před vkládáním `matches`
--

TRUNCATE TABLE `matches`;
--
-- Vypisuji data pro tabulku `matches`
--

INSERT INTO `matches` (`id`, `team_home_id`, `team_away_id`, `match_time`, `city`) VALUES
(1, 3, 1, '2020-06-12 19:00:00', 'Rome'),
(2, 4, 2, '2020-06-13 13:00:00', 'Baku'),
(3, 6, 7, '2020-06-13 16:00:00', 'Copenhagen'),
(4, 5, 8, '2020-06-13 19:00:00', 'Saint Petersburg'),
(5, 15, 13, '2020-06-14 13:00:00', 'London'),
(6, 9, 11, '2020-05-14 16:00:00', 'Bucharest '),
(7, 10, 12, '2020-06-14 19:00:00', 'Amsterdam'),
(8, 16, 14, '2020-06-15 13:00:00', 'Glasgow'),
(9, 18, 17, '2020-06-15 16:00:00', 'Dublin'),
(10, 19, 20, '2020-06-15 19:00:00', 'Bilbao'),
(11, 23, 24, '2020-06-16 16:00:00', 'Budapest'),
(12, 21, 22, '2020-06-16 19:00:00', 'Munich'),
(13, 7, 8, '2020-06-17 13:00:00', 'Saint Petersburg'),
(14, 3, 4, '2020-06-17 16:00:00', 'Baku'),
(15, 1, 2, '2020-06-17 19:00:00', 'Rome'),
(16, 12, 11, '2020-06-18 13:00:00', 'Bucharest '),
(17, 6, 5, '2020-06-18 16:00:00', 'Copenhagen'),
(18, 10, 9, '2020-06-18 19:00:00', 'Amsterdam'),
(19, 20, 17, '2020-06-19 13:00:00', 'Dublin'),
(20, 13, 14, '2020-06-19 16:00:00', 'Glasgow'),
(21, 15, 16, '2020-06-19 19:00:00', 'London'),
(22, 23, 21, '2020-06-20 13:00:00', 'Budapest'),
(23, 24, 22, '2020-06-20 16:00:00', 'Munich'),
(24, 19, 18, '2020-06-20 19:00:00', 'Bilbao'),
(25, 1, 4, '2020-06-21 16:00:00', 'Rome'),
(26, 2, 3, '2020-06-21 16:00:00', 'Baku'),
(27, 11, 9, '2020-04-01 16:58:09', 'Bucharest'),
(28, 12, 10, '2020-06-22 16:00:00', 'Amsterdam'),
(29, 8, 6, '2020-04-01 16:58:43', 'Copenhagen'),
(30, 7, 5, '2020-04-01 16:58:38', 'Saint Petersburg'),
(31, 14, 15, '2020-04-01 16:58:27', 'London'),
(32, 13, 16, '2020-06-23 19:00:00', 'Glasgow'),
(33, 17, 19, '2020-06-24 16:00:00', 'Bilbao'),
(34, 20, 18, '2020-06-24 16:00:00', 'Dublin'),
(35, 22, 23, '2020-04-01 16:58:24', 'Munich'),
(36, 24, 21, '2020-04-01 16:58:16', 'Budapest');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
