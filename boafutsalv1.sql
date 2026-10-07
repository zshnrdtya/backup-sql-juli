-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Jul 2026 pada 08.27
-- Versi server: 8.0.30
-- Versi PHP: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Basis data: `boafutsalv1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bookings`
--

CREATE TABLE `bookings` (
  `id_booking` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `field_id` bigint UNSIGNED NOT NULL,
  `booking_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `duration_hours` int NOT NULL,
  `price_per_hour` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `is_member_price` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('pending','confirmed','cancelled','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bookings`
--

INSERT INTO `bookings` (`id_booking`, `user_id`, `field_id`, `booking_date`, `start_time`, `end_time`, `duration_hours`, `price_per_hour`, `total_price`, `is_member_price`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2026-05-18', '12:00:00', '14:00:00', 2, 120000.00, 240000.00, 0, 'pending', 'bang', '2026-05-18 06:54:04', '2026-05-18 06:54:04'),
(2, 2, 2, '2026-05-25', '12:00:00', '13:00:00', 1, 120000.00, 120000.00, 0, 'pending', 'Booking bang', '2026-05-25 10:27:19', '2026-05-25 10:27:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-admin@boaf|127.0.0.1', 'i:1;', 1779717119),
('laravel-cache-admin@boaf|127.0.0.1:timer', 'i:1779717119;', 1779717119);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('unread','read') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `type` enum('general','collab') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `subject`, `message`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 'raditya', 'zeeshanraditya@gmail.com', 'tentang lapangan', 'mas lapangannya bagus ga rumputnya', 'read', 'general', '2026-04-20 05:28:57', '2026-05-18 06:46:26'),
(2, 'Jonni Kunyuk', 'jonni@gmail.com', 'tentang lapangan', 'wow banget rumputnyah', 'unread', 'general', '2026-05-18 07:15:19', '2026-05-18 07:15:19'),
(3, 'Admin BOA Futsal', 'admin@boafutsal.com', 'Sonsorship jersey', 'Contoh komen', 'read', 'collab', '2026-05-18 07:19:29', '2026-05-25 11:14:31'),
(4, 'jonni', 'jonni@gmail.com', 'Jam', 'Jam lapangan gabakal bentrok kan', 'unread', 'general', '2026-05-18 07:22:17', '2026-05-18 07:22:17'),
(5, 'Asep', 'zeeshanraditya@gmail.com', 'Jam', 'Mas soal jam relate kan?', 'unread', 'general', '2026-05-25 10:33:23', '2026-05-25 10:33:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fields`
--

CREATE TABLE `fields` (
  `id_field` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surface_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Rumput Sintetis',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fields`
--

INSERT INTO `fields` (`id_field`, `name`, `description`, `image`, `surface_type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Lapangan BF 01', 'Rumput sintetis premium, minim risiko cedera', 'asset/img/lapangan1.jfif', 'Rumput Sintetis', 1, '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(2, 'Lapangan BF 02', 'Rumput sintetis premium, minim risiko cedera', 'asset/img/lapangan2.jfif', 'Rumput Sintetis', 1, '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(3, 'Lapangan BF 03', 'Rumput sintetis premium, minim risiko cedera', 'asset/img/lapangan3.jfif', 'Rumput Sintetis', 1, '2026-04-20 04:57:37', '2026-04-20 04:57:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `field_prices`
--

CREATE TABLE `field_prices` (
  `id_field_price` bigint UNSIGNED NOT NULL,
  `field_id` bigint UNSIGNED NOT NULL,
  `day_type` enum('weekday','weekend') COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `price_regular` decimal(10,2) NOT NULL,
  `price_member` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `field_prices`
--

INSERT INTO `field_prices` (`id_field_price`, `field_id`, `day_type`, `start_time`, `end_time`, `price_regular`, `price_member`, `created_at`, `updated_at`) VALUES
(1, 1, 'weekday', '07:00:00', '12:00:00', 65000.00, 260000.00, '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(2, 1, 'weekday', '12:00:00', '16:00:00', 120000.00, 400000.00, '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(3, 1, 'weekday', '16:00:00', '00:00:00', 130000.00, 400000.00, '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(4, 1, 'weekend', '07:00:00', '16:00:00', 120000.00, 400000.00, '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(5, 1, 'weekend', '16:00:00', '00:00:00', 130000.00, 400000.00, '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(6, 2, 'weekday', '07:00:00', '12:00:00', 65000.00, 260000.00, '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(7, 2, 'weekday', '12:00:00', '16:00:00', 120000.00, 400000.00, '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(8, 2, 'weekday', '16:00:00', '00:00:00', 130000.00, 400000.00, '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(9, 2, 'weekend', '07:00:00', '16:00:00', 120000.00, 400000.00, '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(10, 2, 'weekend', '16:00:00', '00:00:00', 130000.00, 400000.00, '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(11, 3, 'weekday', '07:00:00', '12:00:00', 65000.00, 260000.00, '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(12, 3, 'weekday', '12:00:00', '16:00:00', 120000.00, 400000.00, '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(13, 3, 'weekday', '16:00:00', '00:00:00', 130000.00, 400000.00, '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(14, 3, 'weekend', '07:00:00', '16:00:00', 120000.00, 400000.00, '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(15, 3, 'weekend', '16:00:00', '00:00:00', 130000.00, 400000.00, '2026-04-20 04:57:37', '2026-04-20 04:57:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_02_25_085147_create_fields_table', 1),
(5, '2026_02_25_085156_create_bookings_table', 1),
(6, '2026_02_25_085205_create_payments_table', 1),
(7, '2026_02_25_085216_add_is_member_to_users_table', 1),
(8, '2026_02_25_085244_create_field_prices_table', 1),
(9, '2026_02_25_093009_add_role_to_users_table', 1),
(10, '2026_04_20_121929_create_contact_messages_table', 2),
(11, '2026_05_18_140053_add_type_to_contact_messages_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('zeeshanraditya@gmail.com', '$2y$12$pSHcEmhYJRjo9l0Si/vlju5LTt.l6DT825OzQzMrZOAHWHOuD8KiW', '2026-04-20 05:54:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id_payment` bigint UNSIGNED NOT NULL,
  `booking_id` bigint UNSIGNED NOT NULL,
  `payment_method` enum('cash','transfer','qris') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'transfer',
  `amount` decimal(10,2) NOT NULL,
  `status` enum('pending','paid','failed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `proof_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AVu1mcDgIQPKI4jn5ONDP4n1bdZjggJrthy43AXC', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYlhPcEt5ZzBqelNSdmppaFpFNm82a3ZHbXZkY0JFQ3IwYklGeDJPMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi91c2VycyI7czo1OiJyb3V0ZSI7czoxNzoiYWRtaW4udXNlcnMuaW5kZXgiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1779717587);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_member` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `role`, `phone`, `is_member`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin BOA Futsal', 'admin@boafutsal.com', 'admin', '081234567890', 0, NULL, '$2y$12$BrgUWHwZPiE64z8jkiXyIOQkcfXWbp5M4.4mgX0ont0V9N4P34E/G', 'JoJPiIv9g7n0VJ4Cm5zWyPeFVADgqPQ32QshUX8SL5HmPjSx8GcorvkXi9oJ', '2026-04-20 04:57:37', '2026-04-20 04:57:37'),
(2, 'raditya', 'zeeshanraditya@gmail.com', 'user', NULL, 0, NULL, '$2y$12$ZYim/cU8F0GYmQsSmeE5n.fqt7r4CNOROvTMt.zRKxNmuWUIWLyFm', NULL, '2026-04-20 05:27:39', '2026-05-25 11:22:25'),
(3, 'vita nabila', 'vita@gmail.com', 'user', NULL, 0, NULL, '$2y$12$7uoinVFWzRV57mHZZEO/D.XW5U0gdsnaleoE/pPl48HRKX7fmN7Y.', NULL, '2026-04-27 06:41:28', '2026-04-27 06:41:28'),
(4, 'jonni', 'jonni@gmail.com', 'user', NULL, 0, NULL, '$2y$12$0/w7QCTlUY4nMZcXFomV4Opk6HF3xRQ1N9ZS.cVpq3T4XgqVtbb1e', NULL, '2026-05-18 06:40:27', '2026-05-18 06:40:27');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id_booking`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_field_id_foreign` (`field_id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id_field`);

--
-- Indeks untuk tabel `field_prices`
--
ALTER TABLE `field_prices`
  ADD PRIMARY KEY (`id_field_price`),
  ADD KEY `field_prices_field_id_foreign` (`field_id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id_payment`),
  ADD KEY `payments_booking_id_foreign` (`booking_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id_booking` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fields`
--
ALTER TABLE `fields`
  MODIFY `id_field` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `field_prices`
--
ALTER TABLE `field_prices`
  MODIFY `id_field_price` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id_payment` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id_field`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `field_prices`
--
ALTER TABLE `field_prices`
  ADD CONSTRAINT `field_prices_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id_field`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id_booking`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
