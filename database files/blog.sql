-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2023 at 09:15 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'itaque', 'at-expedita-iste-et-dolor', '2023-01-29 15:08:54', '2023-01-29 15:08:54'),
(2, 'maxime', 'optio-eveniet-alias-ratione-omnis-impedit-blanditiis-consequatur', '2023-01-29 15:08:54', '2023-01-29 15:08:54'),
(3, 'cumque', 'maiores-temporibus-et-aut-commodi-velit', '2023-01-29 15:08:54', '2023-01-29 15:08:54'),
(4, 'illum', 'rerum-distinctio-suscipit-ut-repellat-veniam-nihil-et', '2023-01-29 15:08:54', '2023-01-29 15:08:54'),
(5, 'reprehenderit', 'repudiandae-rerum-omnis-tempora', '2023-01-29 15:08:54', '2023-01-29 15:08:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_25_121148_create_posts_table', 1),
(6, '2023_01_26_054351_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `slug`, `title`, `excerpt`, `body`, `created_at`, `updated_at`, `published_at`) VALUES
(1, 1, 1, 'sequi-laboriosam-quasi-quaerat-id-et-deleniti-reiciendis', 'Esse officia consequuntur aut et.', 'Eveniet delectus ex placeat numquam voluptatem.', 'Sequi est quae voluptates.', '2023-01-29 15:08:54', '2023-01-29 15:08:54', NULL),
(2, 1, 2, 'non-enim-libero-dolore-quis-at-blanditiis-nulla', 'Beatae consequuntur omnis dolorum cumque perspiciatis ut distinctio.', 'Quae illo quisquam aperiam quidem quidem dolores.', 'Ut adipisci veritatis ea repellat iste dolores.', '2023-01-29 15:08:54', '2023-01-29 15:08:54', NULL),
(3, 1, 3, 'ut-praesentium-quas-laudantium-alias', 'Sint velit occaecati qui possimus.', 'Est velit fuga aliquam qui aliquid omnis.', 'Deserunt sit alias est corrupti magnam est.', '2023-01-29 15:08:54', '2023-01-29 15:08:54', NULL),
(4, 1, 4, 'corrupti-aut-voluptates-quis-velit-totam-qui', 'Cupiditate voluptatem culpa velit.', 'Explicabo eveniet maiores quibusdam qui ut.', 'Ut sint recusandae nostrum molestiae sed.', '2023-01-29 15:08:54', '2023-01-29 15:08:54', NULL),
(5, 1, 5, 'voluptas-amet-porro-est-omnis', 'Sunt ut doloremque maxime repellat.', 'Tempora consequuntur et nihil maiores veritatis asperiores error totam.', 'Fuga aut non illum voluptatem.', '2023-01-29 15:08:54', '2023-01-29 15:08:54', NULL),
(6, 2, 1, 'ex-a-in-voluptas-possimus-suscipit', 'Est soluta vel nostrum enim laborum earum.', 'Eos quia minima facere aut.', 'Quasi repudiandae illo qui non aspernatur.', '2023-01-29 15:15:49', '2023-01-29 15:15:49', NULL),
(7, 3, 1, 'perspiciatis-repellendus-ab-aperiam-sed-excepturi-aut', 'Non incidunt dolores occaecati assumenda.', 'Minima minus qui quis numquam et.', 'Nihil illo quia eum est sit doloribus unde.', '2023-01-29 15:15:49', '2023-01-29 15:15:49', NULL),
(8, 4, 1, 'debitis-ut-id-qui-modi-ut-nostrum', 'Harum consequuntur adipisci culpa cumque.', 'Odit quia ipsa ut quod omnis.', 'Reiciendis quia perspiciatis natus commodi ut.', '2023-01-29 15:15:49', '2023-01-29 15:15:49', NULL),
(9, 5, 1, 'rem-iusto-sed-qui-atque-aut-quibusdam-illo', 'Voluptas eius quia impedit inventore.', 'Illum perspiciatis necessitatibus sequi incidunt et est officiis.', 'Voluptatibus cumque architecto similique alias.', '2023-01-29 15:15:49', '2023-01-29 15:15:49', NULL),
(10, 6, 1, 'saepe-odio-aperiam-nulla', 'Omnis quo iure praesentium atque placeat eum.', 'Aut eos et repellendus qui dolorem enim voluptatem.', 'Fuga est sit et nesciunt.', '2023-01-29 15:15:49', '2023-01-29 15:15:49', NULL),
(11, 7, 1, 'possimus-aspernatur-ut-exercitationem-et', 'Rerum ullam voluptas maxime distinctio quos voluptatibus doloremque quae.', 'Asperiores esse debitis qui quibusdam eius.', 'A voluptates nemo error vel.', '2023-01-29 15:15:49', '2023-01-29 15:15:49', NULL),
(12, 8, 1, 'voluptatibus-reiciendis-sint-vel-sit-sed-eaque-asperiores-repudiandae', 'Molestiae quasi sit magnam corrupti consequatur dolorem qui.', 'Sit cupiditate officiis magni sapiente aut maxime.', 'Vel quisquam fugiat eos non ea qui.', '2023-01-29 15:15:49', '2023-01-29 15:15:49', NULL),
(13, 9, 1, 'natus-fuga-suscipit-qui-inventore', 'Nemo autem nesciunt repudiandae architecto rerum.', 'Sed eligendi in quod dolorem neque ut tempore.', 'Facere tenetur dignissimos delectus.', '2023-01-29 15:15:49', '2023-01-29 15:15:49', NULL),
(14, 10, 1, 'assumenda-in-iure-ut-omnis-iure-sequi-nam', 'Placeat distinctio nemo occaecati autem est.', 'Enim reiciendis consequatur dolores quibusdam.', 'Vero quos non pariatur asperiores amet sit esse.', '2023-01-29 15:15:49', '2023-01-29 15:15:49', NULL),
(15, 11, 1, 'voluptate-impedit-voluptatibus-beatae-et', 'Sed eveniet ab minima a rem iste ut.', 'Odit quas ratione voluptatum fugiat.', 'Non commodi iure voluptatem explicabo molestiae maiores.', '2023-01-29 15:15:49', '2023-01-29 15:15:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dubuque.daryl', 'hossss', 'demetrius.murray@example.com', '2023-01-29 15:08:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P6DpDk4d3L', '2023-01-29 15:08:53', '2023-01-29 15:08:53'),
(2, 'wintheiser.luis', 'Pattie Bode IV', 'kyle.green@example.net', '2023-01-29 15:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cS9xL9zXpo', '2023-01-29 15:15:49', '2023-01-29 15:15:49'),
(3, 'hpollich', 'August Lowe II', 'carroll.gordon@example.org', '2023-01-29 15:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VmlcxMXdIE', '2023-01-29 15:15:49', '2023-01-29 15:15:49'),
(4, 'margarett.west', 'Vicente Bruen', 'tbartell@example.com', '2023-01-29 15:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MsmznMzCvD', '2023-01-29 15:15:49', '2023-01-29 15:15:49'),
(5, 'icie.jacobs', 'Miss Virginie O\'Conner', 'price.emard@example.org', '2023-01-29 15:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6JZ1EjE30p', '2023-01-29 15:15:49', '2023-01-29 15:15:49'),
(6, 'adams.aaron', 'Geraldine Barrows', 'donny89@example.org', '2023-01-29 15:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9Om2GFOcj6', '2023-01-29 15:15:49', '2023-01-29 15:15:49'),
(7, 'xcartwright', 'Prof. Mariane Bayer Sr.', 'timmy66@example.org', '2023-01-29 15:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3PGc4XsGwK', '2023-01-29 15:15:49', '2023-01-29 15:15:49'),
(8, 'abdullah72', 'Blanche Wilderman', 'berge.walker@example.net', '2023-01-29 15:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'G7EfkzclaY', '2023-01-29 15:15:49', '2023-01-29 15:15:49'),
(9, 'csipes', 'Prof. Maud Armstrong Jr.', 'erwin.nitzsche@example.net', '2023-01-29 15:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eoN6wsEztt', '2023-01-29 15:15:49', '2023-01-29 15:15:49'),
(10, 'xlittel', 'Mr. Noah Howell', 'drohan@example.com', '2023-01-29 15:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Alfy1V3OoE', '2023-01-29 15:15:49', '2023-01-29 15:15:49'),
(11, 'josie80', 'Kyleigh Keebler', 'rachel.goldner@example.net', '2023-01-29 15:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kejqn0uOqE', '2023-01-29 15:15:49', '2023-01-29 15:15:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
