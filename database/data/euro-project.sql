-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Stř 01. dub 2020, 19:25
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

-- --------------------------------------------------------

--
-- Struktura tabulky `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `matches`
--

DROP TABLE IF EXISTS `matches`;
CREATE TABLE `matches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_home_id` tinyint(4) NOT NULL,
  `team_away_id` tinyint(4) NOT NULL,
  `match_time` timestamp NULL DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Struktura tabulky `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(40, '2014_10_12_000000_create_users_table', 1),
(41, '2014_10_12_100000_create_password_resets_table', 1),
(42, '2019_08_19_000000_create_failed_jobs_table', 1),
(43, '2020_03_26_083324_create_posts_table', 1),
(44, '2020_03_26_094440_create_matches_table', 1),
(45, '2020_03_26_094456_create_tips_table', 1),
(46, '2020_03_26_094515_create_results_table', 1),
(47, '2020_03_26_094544_create_teams_table', 1),
(48, '2020_03_26_094618_create_participants_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `participants`
--

DROP TABLE IF EXISTS `participants`;
CREATE TABLE `participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `score` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `participants`
--

INSERT INTO `participants` (`id`, `user_id`, `score`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-04-01 15:16:30', '2020-04-01 15:24:44'),
(2, 2, 2, '2020-04-01 15:24:29', '2020-04-01 15:24:40'),
(3, 3, 4, '2020-04-01 15:24:32', '2020-04-01 15:24:40');

-- --------------------------------------------------------

--
-- Struktura tabulky `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hello, this is my first post. 😍', '2020-04-01 15:16:04', '2020-04-01 15:16:04'),
(2, 2, 'Hi everybody, how are you?', '2020-04-01 15:19:27', '2020-04-01 15:19:27'),
(3, 3, 'Well, I am really good. Thanks. 😀', '2020-04-01 15:21:03', '2020-04-01 15:21:03');

-- --------------------------------------------------------

--
-- Struktura tabulky `results`
--

DROP TABLE IF EXISTS `results`;
CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `match_id` bigint(20) UNSIGNED NOT NULL,
  `score` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `results`
--

INSERT INTO `results` (`id`, `match_id`, `score`) VALUES
(1, 1, '2:0'),
(2, 2, '0:2'),
(3, 3, '1:0'),
(4, 4, '0:0'),
(5, 5, '2:0'),
(6, 6, '3:1');

-- --------------------------------------------------------

--
-- Struktura tabulky `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupa` char(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Struktura tabulky `tips`
--

DROP TABLE IF EXISTS `tips`;
CREATE TABLE `tips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `score` char(107) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `tips`
--

INSERT INTO `tips` (`id`, `user_id`, `score`, `created_at`, `updated_at`) VALUES
(1, 1, '11-01-11-12-11-11-11-21-11-22-11-11-31-11-12-11-11-12-12-11-11-11-12-11-21-21-21-21-11-11-11-11-12-11-11-12', '2020-04-01 15:15:42', '2020-04-01 15:15:42'),
(2, 2, '11-11-12-11-11-11-12-11-11-11-11-12-11-11-21-01-01-12-11-11-11-21-11-11-12-13-00-01-00-00-00-11-12-00-00-01', '2020-04-01 15:18:19', '2020-04-01 15:18:19'),
(3, 3, '11-11-00-00-11-11-21-00-11-01-01-11-01-11-12-12-31-01-12-01-42-10-12-21-01-51-21-11-21-21-20-21-22-11-31-11', '2020-04-01 15:21:33', '2020-04-01 15:21:33');

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `alias`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin@admin.admin', '$2y$10$Fqgyfe67Qm6WTf/XcTLNG.Sv8gIrNqiiO2PUInXfC5VUU58J5oe/.', 'adminadm', 'img/avatars/svg/081-customer-service.svg', NULL, '2020-04-01 15:15:15', '2020-04-01 15:16:15'),
(2, 'Random', 'User', 'random@user.com', '$2y$10$U9aspm/.2ApImP1tJUhlpueaHmeN0d9r6y4F/a3H8vExjwpQANvzG', 'userran', 'img/avatars/svg/088-man-29.svg', NULL, '2020-04-01 15:17:56', '2020-04-01 15:19:40'),
(3, 'Test', 'User', 'test@user.com', '$2y$10$kBPmEbLsVjUhuSitxB96D.6V0xdfofHKRxnZyyGlReroJspJNRjZm', 'usertes', 'img/avatars/svg/064-woman-24.svg', NULL, '2020-04-01 15:20:18', '2020-04-01 15:20:30'),
(4, 'Guest', 'Guest', 'guest@guest.guest', '$2y$10$Dzz/hHbUJe7DoYOW5c/3Ou.CMHBh6sr4CpP9bI14w8OTZrqvLkxv2', 'guestgue', 'img/avatars/svg/053-man-16.svg', NULL, '2020-04-01 15:22:36', '2020-04-01 15:22:58');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `participants_user_id_foreign` (`user_id`);

--
-- Klíče pro tabulku `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Klíče pro tabulku `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Klíče pro tabulku `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tips_user_id_foreign` (`user_id`);

--
-- Klíče pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `matches`
--
ALTER TABLE `matches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pro tabulku `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pro tabulku `participants`
--
ALTER TABLE `participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pro tabulku `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pro tabulku `tips`
--
ALTER TABLE `tips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Omezení pro tabulku `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Omezení pro tabulku `tips`
--
ALTER TABLE `tips`
  ADD CONSTRAINT `tips_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
