-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2022 at 10:23 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ku`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_08_030206_create_test_editor_table', 2);

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
('diki@gmail.com', '$2y$10$LD46OTsxiWcW9Bg4vi3w4udN6rYFgzvooIaNKTLps4MlVDjm6b4yu', '2022-09-05 02:29:33'),
('daniarnax100@gmail.com', '$2y$10$u6CnqsRQawt0PpONEDDI8OljcAVHXQRcNTgQi2GnCWwe72BV2LULO', '2022-09-05 06:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_editor`
--

CREATE TABLE `test_editor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_editor`
--

INSERT INTO `test_editor` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Kerupuk Best', '<p><strong>Kerupuk Sehat</strong></p><figure class=\"image image-style-side\"><img src=\"http://127.0.0.1:8000/media/kerupuk_1662607762.jpg\"></figure><p>Jangan sampe ketinggalan makan kerupuk ini ayoo lanjutkan makan kerupuk, ayo ayo ayo kerupuk</p>', '2022-09-07 20:30:06', '2022-09-07 20:30:06'),
(2, 'Iphone 12', '<p><strong>Iphone 15 Bor</strong></p><figure class=\"image image-style-side\"><img src=\"http://127.0.0.1:8000/media/IP12_1662609116.jpeg\"></figure>', '2022-09-07 20:52:13', '2022-09-07 20:52:13'),
(4, 'Bola 2', '<figure class=\"media\"><oembed url=\"https://www.youtube.com/watch?v=rk4kHF2nlH0\"></oembed></figure>', '2022-09-22 18:05:46', '2022-09-22 18:05:46'),
(5, '2 Video', '<figure class=\"media\"><oembed url=\"https://www.youtube.com/watch?v=yZn3FzODxC8\"></oembed></figure><p>&nbsp;</p><figure class=\"media\"><oembed url=\"https://www.youtube.com/watch?v=LLQpxsAoNe0\"></oembed></figure>', '2022-09-22 20:52:38', '2022-09-22 20:52:38'),
(6, 'Bola', '<figure class=\"media\"><oembed url=\"https://www.youtube.com/watch?v=-7F5dKDPNb8\"></oembed></figure>', '2022-09-22 21:03:12', '2022-09-22 21:03:12'),
(7, 'Satu', '<figure class=\"media\"><oembed url=\"https://www.youtube.com/watch?v=7jk7DJM0q9U\"></oembed></figure>', '2022-09-22 23:09:30', '2022-09-22 23:09:30'),
(8, 'Video 2 K', '<figure class=\"media\"><oembed url=\"https://www.youtube.com/watch?v=p_-1GeIumpo\"></oembed></figure><p>&nbsp;</p><figure class=\"media\"><oembed url=\"https://www.youtube.com/watch?v=C005CZE3GQA\"></oembed></figure>', '2022-09-23 00:55:38', '2022-09-23 00:55:38'),
(9, 'Test 1', '<p><strong>Naruto</strong></p><figure class=\"media\"><oembed url=\"https://www.youtube.com/watch?v=WmoDdSTmHBc\"></oembed></figure><p>&nbsp;</p><p><strong>Samsudin</strong></p><figure class=\"media\"><oembed url=\"https://www.youtube.com/watch?v=c700deh2tCs\"></oembed></figure>', '2022-09-23 01:21:19', '2022-09-23 01:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Diki', 'diki@gmail.com', NULL, '$2y$10$lv9xWI.ZjHLnKLT8Sn40bu5NVLKlZ98DS8gZNly2pRcjmIHirhXim', NULL, '2022-09-05 02:01:52', '2022-09-05 02:01:52'),
(2, 'Epul', 'epul@gmail.com', NULL, '$2y$10$X9DtAihRQshZ1Q9ySbbpPOeJCJo6R5wQPPCJkD.ZsJw5uv/F7HK7W', NULL, '2022-09-05 06:50:39', '2022-09-05 06:50:39'),
(3, 'Daniar', 'daniarnax100@gmail.com', NULL, '$2y$10$41OLY2BIDnAYG6iR36HCS.cVCq3f3hn50NRIPg8KnSE02birEngz2', NULL, '2022-09-05 06:51:16', '2022-09-05 06:51:16'),
(4, 'DN Scholar', 'dnscholar01@gmail.com', NULL, '$2y$10$YuKZeOtjSGPdpTScoV16/.iIwJqiyVyYNWiDehBLirRyGEeJXFh4a', 'i1Uyk6pUkLaZTpWUFa7rdCFYfKaAjX8FiyqaNSyDare6jY8vklpRBEJ2RXjf', '2022-09-05 06:58:24', '2022-09-05 06:59:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `test_editor`
--
ALTER TABLE `test_editor`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_editor`
--
ALTER TABLE `test_editor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
