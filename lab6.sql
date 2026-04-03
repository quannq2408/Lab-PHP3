-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 03, 2026 lúc 07:35 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lab6`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_04_03_052201_add_nghenghiep_to_users_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('vanquan2006k@gmail.com', '$2y$12$7gPURyB.N1DIMHuZZnvV/eWybC3Y0Hrht1AJjGXiI4.9y4/UQQfqa', '2026-04-02 21:33:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7PZ54oim648623fTXeAxy48kTi1zkXARQKOzvv4m', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFBVMGVFeXFFVGMwazVCRXg5aWNNSDROa2hibEVpZnVwcUV0Z3lQdSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9mb3Jnb3QtcGFzc3dvcmQiO3M6NToicm91dGUiO3M6MTY6InBhc3N3b3JkLnJlcXVlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1775189489),
('CkUsoMQlFUQAVya8bzkxKnvkC7j1ZYlk2bEa8qWv', 14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiczlUYnNuWEoxRDZKRlV0SlF6SVlvUlRtSFBoSHFQSnRhT0ZyYVlvUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9xdWFudHJpIjtzOjU6InJvdXRlIjtOO31zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTQ7fQ==', 1775193231),
('tqxI1MavShSJ6nhIXmmta69tne8NxG9PvXl71Vr6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGE4dHA4OW5tMzhSNU80cHBwSFRSUnVZWnJHY2dlMGY3TWRjQnRUMSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1775191624),
('UXnR2KpfIUITr7YXq4pSGSehUYWmpiS5j2D3FwZF', 14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiV0JXWTVyVXMyWXRUTmlLcEt0YUpoOHNkWnBLM2Nxd0xGem9vUWJtMyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9xdWFudHJpdGluIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTQ7fQ==', 1775191615);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `diachi` varchar(100) DEFAULT NULL,
  `idgroup` int(11) NOT NULL DEFAULT 0,
  `nghenghiep` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `diachi`, `idgroup`, `nghenghiep`) VALUES
(1, 'Dr. Anderson Harber', 'isabelle93@example.org', '2026-04-02 20:50:03', '$2y$12$MCA28H4LfAJgIFF09eGQweETsBvhcrtgi0QbNCzoV6c06MJpTnrCS', 'vaqUA41Qvv', '2026-04-02 20:50:03', '2026-04-02 20:50:03', NULL, 0, NULL),
(2, 'Marilou Haag', 'kurt23@example.com', '2026-04-02 20:50:03', '$2y$12$MCA28H4LfAJgIFF09eGQweETsBvhcrtgi0QbNCzoV6c06MJpTnrCS', 'ziZX0oqg4m', '2026-04-02 20:50:03', '2026-04-02 20:50:03', NULL, 0, NULL),
(3, 'Dr. Soledad Boyle', 'elmira.bauch@example.net', '2026-04-02 20:50:03', '$2y$12$MCA28H4LfAJgIFF09eGQweETsBvhcrtgi0QbNCzoV6c06MJpTnrCS', 'VDaFLr4FvK', '2026-04-02 20:50:03', '2026-04-02 20:50:03', NULL, 0, NULL),
(4, 'Michel Botsford I', 'pansy.witting@example.org', '2026-04-02 20:50:03', '$2y$12$MCA28H4LfAJgIFF09eGQweETsBvhcrtgi0QbNCzoV6c06MJpTnrCS', 'YbiLbJTns5', '2026-04-02 20:50:03', '2026-04-02 20:50:03', NULL, 0, NULL),
(5, 'Sheldon Purdy', 'bayer.pierce@example.org', '2026-04-02 20:50:03', '$2y$12$MCA28H4LfAJgIFF09eGQweETsBvhcrtgi0QbNCzoV6c06MJpTnrCS', 'GZ6D9mNWVG', '2026-04-02 20:50:03', '2026-04-02 20:50:03', NULL, 0, NULL),
(6, 'Devonte Altenwerth V', 'toy.ara@example.org', '2026-04-02 20:50:03', '$2y$12$MCA28H4LfAJgIFF09eGQweETsBvhcrtgi0QbNCzoV6c06MJpTnrCS', 'zPkvgWG4DC', '2026-04-02 20:50:03', '2026-04-02 20:50:03', NULL, 0, NULL),
(7, 'Damion Heathcote', 'eunice19@example.net', '2026-04-02 20:50:03', '$2y$12$MCA28H4LfAJgIFF09eGQweETsBvhcrtgi0QbNCzoV6c06MJpTnrCS', 'UIWpy3oYBL', '2026-04-02 20:50:03', '2026-04-02 20:50:03', NULL, 0, NULL),
(8, 'Dr. Grady Gibson', 'charley.schowalter@example.net', '2026-04-02 20:50:03', '$2y$12$MCA28H4LfAJgIFF09eGQweETsBvhcrtgi0QbNCzoV6c06MJpTnrCS', 'IjjHpnpw6a', '2026-04-02 20:50:03', '2026-04-02 20:50:03', NULL, 0, NULL),
(9, 'Dora Langworth', 'rath.phyllis@example.com', '2026-04-02 20:50:03', '$2y$12$MCA28H4LfAJgIFF09eGQweETsBvhcrtgi0QbNCzoV6c06MJpTnrCS', 'AU097WyWpm', '2026-04-02 20:50:03', '2026-04-02 20:50:03', NULL, 0, NULL),
(10, 'Clare Cummerata', 'keeling.jeromy@example.net', '2026-04-02 20:50:03', '$2y$12$MCA28H4LfAJgIFF09eGQweETsBvhcrtgi0QbNCzoV6c06MJpTnrCS', 'mFcI2ywtjF', '2026-04-02 20:50:03', '2026-04-02 20:50:03', NULL, 0, NULL),
(11, 'asdasdasdasd', 'hehehe@gmail.com', NULL, '$2y$12$bA3ha55SDr1pvQ5CMQClzuC3JMWElnt/m9vgmm3Y0KDlBxImTDNz.', NULL, NULL, NULL, 'THANHHOA', 1, NULL),
(12, 'asdvxsxcvxcv', 'fghfgh@gmail.com', NULL, '$2y$12$ZkRF4zsBa.wSNBu36llv2OVyCDZ0NXT78EdlHt09064ptNVxPwJ56', NULL, NULL, NULL, 'THANHHOA', 1, NULL),
(13, '67tuytyuty', 'tyutyu@gmail.com', NULL, '$2y$12$TegMQO6BhZMDtlOpjthexOV8E.Ndff92i58hAn2qV.vKkHoULywVG', NULL, NULL, NULL, 'THANHHOA', 0, NULL),
(14, 'Quân Phạm', 'vanquan2006k@gmail.com', NULL, '$2y$12$zRQ0oRnUzN7k9nPdmye9/Ozde1JBK872bBZiEEnZfUiBArLc.pVwG', '3Ir2LpqmWHsErN9xRfDMkR7YwHZOFIXpAMluNFOjV3xWBRvo7ic9UjBGcyPf', '2026-04-02 21:03:38', '2026-04-02 21:31:44', NULL, 0, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
