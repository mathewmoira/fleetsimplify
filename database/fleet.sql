-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2020 at 08:08 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fleet`
--

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2017_07_19_082005_create_1500441605_permissions_table', 1),
(3, '2017_07_19_082006_create_1500441606_roles_table', 1),
(4, '2017_07_19_082009_create_1500441609_users_table', 1),
(5, '2017_07_19_082724_create_media_table', 1),
(6, '2017_07_19_120427_create_596eec08307cd_permission_role_table', 1),
(7, '2017_07_19_120430_create_596eec0af366b_role_user_table', 1),
(8, '2017_09_03_083651_create_premissions_table', 1),
(9, '2017_09_03_083918_create_premission_role_table', 1),
(10, '2017_09_03_084137_create_role_user_table', 1),
(11, '2017_09_03_095922_create_1504421962_roles_table', 1),
(12, '2017_09_03_095924_create_1504421963_users_table', 1),
(13, '2017_09_03_095925_add_59aba84dae31d_relationships_to_user_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user_management_access', '2020-08-11 11:14:59', '2020-08-11 11:14:59'),
(2, 'user_management_create', '2020-08-11 11:15:00', '2020-08-11 11:15:00'),
(3, 'user_management_edit', '2020-08-11 11:15:00', '2020-08-11 11:15:00'),
(4, 'user_management_view', '2020-08-11 11:15:02', '2020-08-11 11:15:02'),
(5, 'user_management_delete', '2020-08-11 11:15:02', '2020-08-11 11:15:02'),
(6, 'permission_access', '2020-08-11 11:15:02', '2020-08-11 11:15:02'),
(7, 'permission_create', '2020-08-11 11:15:02', '2020-08-11 11:15:02'),
(8, 'permission_edit', '2020-08-11 11:15:03', '2020-08-11 11:15:03'),
(9, 'permission_view', '2020-08-11 11:15:03', '2020-08-11 11:15:03'),
(10, 'permission_delete', '2020-08-11 11:15:03', '2020-08-11 11:15:03'),
(11, 'role_access', '2020-08-11 11:15:03', '2020-08-11 11:15:03'),
(12, 'role_create', '2020-08-11 11:15:03', '2020-08-11 11:15:03'),
(13, 'role_edit', '2020-08-11 11:15:03', '2020-08-11 11:15:03'),
(14, 'role_view', '2020-08-11 11:15:03', '2020-08-11 11:15:03'),
(15, 'role_delete', '2020-08-11 11:15:03', '2020-08-11 11:15:03'),
(16, 'user_access', '2020-08-11 11:15:04', '2020-08-11 11:15:04'),
(17, 'user_create', '2020-08-11 11:15:04', '2020-08-11 11:15:04'),
(18, 'user_edit', '2020-08-11 11:15:04', '2020-08-11 11:15:04'),
(19, 'user_view', '2020-08-11 11:15:04', '2020-08-11 11:15:04'),
(20, 'user_delete', '2020-08-11 11:15:04', '2020-08-11 11:15:04'),
(21, 'vehicle_access', '2020-08-11 11:15:04', '2020-08-11 11:15:04'),
(22, 'vehicle_create', '2020-08-11 11:15:04', '2020-08-11 11:15:04'),
(23, 'vehicle_edit', '2020-08-11 11:15:04', '2020-08-11 11:15:04'),
(24, 'vehicle_view', '2020-08-11 11:15:04', '2020-08-11 11:15:04'),
(25, 'vehicle_delete', '2020-08-11 11:15:04', '2020-08-11 11:15:04'),
(26, 'lesson_access', '2020-08-11 11:15:04', '2020-08-11 11:15:04'),
(27, 'lesson_create', '2020-08-11 11:15:05', '2020-08-11 11:15:05'),
(28, 'lesson_edit', '2020-08-11 11:15:05', '2020-08-11 11:15:05'),
(29, 'lesson_view', '2020-08-11 11:15:05', '2020-08-11 11:15:05'),
(30, 'lesson_delete', '2020-08-11 11:15:05', '2020-08-11 11:15:05'),
(31, 'question_access', '2020-08-11 11:15:05', '2020-08-11 11:15:05'),
(32, 'question_create', '2020-08-11 11:15:05', '2020-08-11 11:15:05'),
(33, 'question_edit', '2020-08-11 11:15:05', '2020-08-11 11:15:05'),
(34, 'question_view', '2020-08-11 11:15:06', '2020-08-11 11:15:06'),
(35, 'question_delete', '2020-08-11 11:15:06', '2020-08-11 11:15:06'),
(36, 'questions_option_access', '2020-08-11 11:15:06', '2020-08-11 11:15:06'),
(37, 'questions_option_create', '2020-08-11 11:15:06', '2020-08-11 11:15:06'),
(38, 'questions_option_edit', '2020-08-11 11:15:06', '2020-08-11 11:15:06'),
(39, 'questions_option_view', '2020-08-11 11:15:06', '2020-08-11 11:15:06'),
(40, 'questions_option_delete', '2020-08-11 11:15:06', '2020-08-11 11:15:06'),
(41, 'test_access', '2020-08-11 11:15:07', '2020-08-11 11:15:07'),
(42, 'test_create', '2020-08-11 11:15:07', '2020-08-11 11:15:07'),
(43, 'test_edit', '2020-08-11 11:15:07', '2020-08-11 11:15:07'),
(44, 'test_view', '2020-08-11 11:15:07', '2020-08-11 11:15:07'),
(45, 'test_delete', '2020-08-11 11:15:07', '2020-08-11 11:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(1, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(1, 3),
(21, 3),
(24, 3),
(26, 3),
(29, 3),
(31, 3),
(34, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(44, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (can create other users)', '2020-08-11 11:15:07', '2020-08-11 11:15:07'),
(2, 'Driver', '2020-08-11 11:15:07', '2020-08-11 11:30:04'),
(3, 'Passenger', '2020-08-11 11:15:07', '2020-08-11 11:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Admin', 'moira@admin.com', '$2y$10$l4w54dj4iKZfvXxT9uG8l.2tWg3JcLcIWZ8hxpVKle5Bddz1hVE8G', 'ryhVm01WEQPG6YiSHrrcAlCyryhrHICfuizb5vEbJZnNpOTYK35XfqAYGJTE', '2020-08-11 11:15:09', '2020-08-11 11:18:47', NULL),
(2, 'mercy', 'mercy@admin.com', '$2y$10$N3EdT9tLaeGSmzgSp2kvZOkgGDAp/WvV8dPqhsRwIr97sqw7qgrPu', 'u20gAhGeBaM80OQIyvDOVsxB3difBElZ3gsnPwYnZY1rVyMgfxU3LgINU4CA', '2020-08-11 11:31:51', '2020-08-12 02:37:52', NULL),
(3, 'John Doe', 'doe@john.co', '$2y$10$uXFby/DkPUmY.LLyWfXfbucxJyVnLyQ/lCMdg9TCGzbZfEL8faP0a', 'RLndDDI8JAXuFVtCZc3QmmmkTmXCx21gmrDbQhox2DycnBVibiaauQIY0Aba', '2020-08-12 02:41:10', '2020-08-12 02:41:10', NULL),
(4, 'Jane Doe', 'jane@do.com', '$2y$10$McxUUNNS7R4rdlu0/KRCuumL8VlrGx6E7vmpxo/WImt1M2vvhmkGS', NULL, '2020-08-12 02:48:04', '2020-08-12 02:48:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(255) NOT NULL,
  `vname` varchar(255) NOT NULL,
  `numberplate` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `capacity` int(255) NOT NULL,
  `user_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `vname`, `numberplate`, `model`, `capacity`, `user_id`) VALUES
(1, 'Toyota', 'KCC 777C', 'Mark X', 5, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_id_model_type_index` (`model_id`,`model_type`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `fk_p_54415_54416_role_per_596eec08308d0` (`permission_id`),
  ADD KEY `fk_p_54416_54415_permissi_596eec0830986` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `fk_p_54416_54417_user_rol_596eec0af3746` (`role_id`),
  ADD KEY `fk_p_54417_54416_role_use_596eec0af37c1` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `70688_59aba84cbd5ed` (`role_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numberplate` (`numberplate`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `fk_p_54415_54416_role_per_596eec08308d0` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54416_54415_permissi_596eec0830986` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `fk_p_54416_54417_user_rol_596eec0af3746` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54417_54416_role_use_596eec0af37c1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `70688_59aba84cbd5ed` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
