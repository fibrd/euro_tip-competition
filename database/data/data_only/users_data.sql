-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2020 at 09:15 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `euro-project`
--

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `alias`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin@admin.admin', '$2y$10$Fqgyfe67Qm6WTf/XcTLNG.Sv8gIrNqiiO2PUInXfC5VUU58J5oe/.', 'adminadm', 'img/avatars/svg/081-customer-service.svg', NULL, '2020-04-01 15:15:15', '2020-04-01 15:16:15'),
(2, 'Random', 'User', 'random@user.com', '$2y$10$U9aspm/.2ApImP1tJUhlpueaHmeN0d9r6y4F/a3H8vExjwpQANvzG', 'userran', 'img/avatars/svg/088-man-29.svg', NULL, '2020-04-01 15:17:56', '2020-04-01 15:19:40'),
(3, 'Test', 'User', 'test@user.com', '$2y$10$kBPmEbLsVjUhuSitxB96D.6V0xdfofHKRxnZyyGlReroJspJNRjZm', 'usertes', 'img/avatars/svg/064-woman-24.svg', NULL, '2020-04-01 15:20:18', '2020-04-01 15:20:30'),
(4, 'Guest', 'Guest', 'guest@guest.guest', '$2y$10$Dzz/hHbUJe7DoYOW5c/3Ou.CMHBh6sr4CpP9bI14w8OTZrqvLkxv2', 'guestgue', 'img/avatars/svg/053-man-16.svg', NULL, '2020-04-01 15:22:36', '2020-04-01 15:22:58');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
