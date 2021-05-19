-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2021 at 12:50 AM
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
-- Database: `eurovel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

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
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(10) UNSIGNED NOT NULL,
  `team_home_id` tinyint(4) NOT NULL,
  `team_away_id` tinyint(4) NOT NULL,
  `match_time` timestamp NOT NULL DEFAULT '1979-12-31 23:00:00',
  `city` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `team_home_id`, `team_away_id`, `match_time`, `city`) VALUES
(1, 1, 2, '2021-05-21 13:15:00', ''),
(2, 9, 10, '2021-05-21 13:15:00', ''),
(3, 3, 4, '2021-05-21 17:15:00', ''),
(4, 11, 12, '2021-05-21 17:15:00', ''),
(5, 5, 6, '2021-05-22 09:15:00', ''),
(6, 13, 9, '2021-05-22 09:15:00', ''),
(7, 7, 1, '2021-05-22 13:15:00', ''),
(8, 14, 15, '2021-05-22 13:15:00', ''),
(9, 2, 8, '2021-05-22 17:15:00', ''),
(10, 12, 16, '2021-05-22 17:15:00', ''),
(11, 7, 4, '2021-05-23 09:15:00', ''),
(12, 13, 10, '2021-05-23 09:15:00', ''),
(13, 6, 3, '2021-05-23 13:15:00', ''),
(14, 16, 14, '2021-05-23 13:15:00', ''),
(15, 5, 8, '2021-05-23 17:15:00', ''),
(16, 11, 15, '2021-05-23 17:15:00', ''),
(17, 4, 1, '2021-05-24 13:15:00', ''),
(18, 12, 10, '2021-05-24 13:15:00', ''),
(19, 2, 3, '2021-05-24 17:15:00', ''),
(20, 9, 11, '2021-05-24 17:15:00', ''),
(21, 7, 5, '2021-05-25 13:15:00', ''),
(22, 15, 16, '2021-05-25 13:15:00', ''),
(23, 8, 6, '2021-05-25 17:15:00', ''),
(24, 14, 13, '2021-05-25 17:15:00', ''),
(25, 1, 5, '2021-05-26 13:15:00', ''),
(26, 16, 9, '2021-05-26 13:15:00', ''),
(27, 3, 7, '2021-05-26 17:15:00', ''),
(28, 11, 13, '2021-05-26 17:15:00', ''),
(29, 8, 4, '2021-05-27 13:15:00', ''),
(30, 15, 12, '2021-05-27 13:15:00', ''),
(31, 6, 2, '2021-05-27 17:15:00', ''),
(32, 14, 10, '2021-05-27 17:15:00', ''),
(33, 6, 7, '2021-05-28 13:15:00', ''),
(34, 16, 11, '2021-05-28 13:15:00', ''),
(35, 5, 3, '2021-05-28 17:15:00', ''),
(36, 12, 13, '2021-05-28 17:15:00', ''),
(37, 2, 7, '2021-05-29 09:15:00', ''),
(38, 10, 16, '2021-05-29 09:15:00', ''),
(39, 8, 1, '2021-05-29 13:15:00', ''),
(40, 13, 15, '2021-05-29 13:15:00', ''),
(41, 4, 5, '2021-05-29 17:15:00', ''),
(42, 9, 14, '2021-05-29 17:15:00', ''),
(43, 3, 8, '2021-05-30 13:15:00', ''),
(44, 10, 11, '2021-05-30 13:15:00', ''),
(45, 6, 4, '2021-05-30 17:15:00', ''),
(46, 14, 12, '2021-05-30 17:15:00', ''),
(47, 2, 5, '2021-05-31 13:15:00', ''),
(48, 15, 9, '2021-05-31 13:15:00', ''),
(49, 1, 6, '2021-05-31 17:15:00', ''),
(50, 13, 16, '2021-05-31 17:15:00', ''),
(51, 8, 7, '2021-06-01 09:15:00', ''),
(52, 11, 14, '2021-06-01 09:15:00', ''),
(53, 4, 2, '2021-06-01 13:15:00', ''),
(54, 10, 15, '2021-06-01 13:15:00', ''),
(55, 1, 3, '2021-06-01 17:15:00', ''),
(56, 9, 12, '2021-06-01 17:15:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2020_03_10_122353_create_matches_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `score` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `user_id`, `score`, `created_at`, `updated_at`) VALUES
(5, 1, 1, '0000-00-00 00:00:00', '2021-05-18 20:21:25'),
(31, 48, 5, '2021-05-18 20:19:58', '2021-05-18 20:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('david.fibr@gmail.com', '$2y$10$o.tnI4YrVUnaeQG1v1TUweaAl9J4azxABM6iJj/BDtj3xD2iqea2C', '2020-03-10 09:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES
(21, 1, 'nice', '2020-03-16 10:59:05', '2020-03-16 10:59:05');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `match_id` tinyint(3) UNSIGNED NOT NULL,
  `score` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `match_id`, `score`) VALUES
(69, 1, '6:0');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `team` varchar(20) NOT NULL,
  `abbreviation` varchar(3) NOT NULL,
  `grupa` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `team`, `abbreviation`, `grupa`) VALUES
(1, 'Rusko', 'RUS', 'A'),
(2, 'Česká Republika', 'CZE', 'A'),
(3, 'Bělorusko', 'BLR', 'A'),
(4, 'Slovensko', 'SVK', 'A'),
(5, 'Dánsko', 'DEN', 'A'),
(6, 'Švédsko', 'SWE', 'A'),
(7, 'Velká Británie', 'GBR', 'A'),
(8, 'Švýcarsko', 'SWI', 'A'),
(9, 'Německo', 'GER', 'B'),
(10, 'Itálie', 'ITA', 'B'),
(11, 'Kanada', 'CAN', 'B'),
(12, 'Lotyšsko', 'LAT', 'B'),
(13, 'Norsko', 'NOR', 'B'),
(14, 'Finsko', 'FIN', 'B'),
(15, 'USA', 'USA', 'B'),
(16, 'Kazachstán', 'KAZ', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE `tips` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `score` char(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` (`id`, `user_id`, `score`, `created_at`, `updated_at`) VALUES
(39, 1, '10-32-10-43-01-03-04-03-00-00-00-01-04-04-00-00-00-00-01-04-04-00-00-01-00-01-04-04-00-00-00-00-01-04-04-00', '2020-01-31 12:11:20', '2020-03-16 15:29:48'),
(47, 48, '60-00-00-00-00-00-04-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-02-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-01', '2021-05-18 19:46:20', '2021-05-18 20:19:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'img/avatars/svg/048-groom.svg',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `firstname`, `lastname`, `alias`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'fabry.d@seznam.cz', 'David', 'Fábry', 'fabry', '$2y$10$o2RhYkXRxhoHjajmYs9LCepsvHvHzWfLo7k73uupNOtvzfoaPIp2i', 'img/avatars/svg/003-man-1.svg', 'HH3576LdWhakQrcUOwX9NaHCPiQiua8kMmcLWWCK9sbNeauP1MoVTpqq29ec', '2020-03-11 14:15:16', '2021-05-18 19:15:14'),
(48, 'admin@admin.admin', 'Admin', 'Admin', 'adminadm', '$2y$10$L73GqrTT/E3ImRpWkQAHru2o/BWWNJMgY.b2H7iWl4YRNNuArq9w.', 'img/avatars/svg/029-woman-15.svg', NULL, '2021-05-18 18:47:20', '2021-05-18 19:14:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `match_id` (`match_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
