-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Jul 2026 pada 08.26
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
-- Basis data: `accusoft_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `status` enum('pending','completed','cancelled') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `description`, `amount`, `status`, `created_at`) VALUES
(1, 'Order 1', 2000.00, 'completed', '2026-04-21 09:53:24'),
(2, 'Order 2', 1500.00, 'completed', '2026-04-21 09:53:24'),
(3, 'Order 3', 2500.00, 'completed', '2026-04-21 09:53:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id` int NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('review','in progress','pending') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `projects`
--

INSERT INTO `projects` (`id`, `title`, `department`, `status`, `created_at`) VALUES
(1, 'UI/UX Design', 'UI Team', 'review', '2026-04-21 09:53:24'),
(2, 'Web development', 'Frontend', 'in progress', '2026-04-21 09:53:24'),
(3, 'Ushop app', 'Mobile Team', 'pending', '2026-04-21 09:53:24'),
(4, 'UI/UX Design', 'UI Team', 'review', '2026-04-21 09:53:24'),
(5, 'Web development', 'Frontend', 'in progress', '2026-04-21 09:53:24'),
(6, 'Ushop app', 'Mobile Team', 'pending', '2026-04-21 09:53:24'),
(7, 'UI/UX Design', 'UI Team', 'review', '2026-04-21 09:53:24'),
(8, 'Web development', 'Frontend', 'in progress', '2026-04-21 09:53:24'),
(9, 'Ushop app', 'Mobile Team', 'pending', '2026-04-21 09:53:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'Super admin',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `avatar`, `created_at`) VALUES
(1, 'John Doe', 'admin@accusoft.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Super admin', '', '2026-04-21 09:53:24'),
(2, 'Lewis S. Cunningham', 'lewis@accusoft.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CEO Excerpt', '', '2026-04-21 09:53:24'),
(3, 'Lewis S. Cunningham', 'lewis2@accusoft.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CEO Excerpt', '', '2026-04-21 09:53:24'),
(4, 'Lewis S. Cunningham', 'lewis3@accusoft.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CEO Excerpt', '', '2026-04-21 09:53:24'),
(5, 'raditya', 'raditya@gmail.com', '$2y$10$m2C7cvMoD/I/epnBLLJEc.GZn5WNmdyj6zIjBbRwe1Zc05hjZ/kk6', 'User', '', '2026-04-21 10:22:13'),
(6, 'jonni kunyuk', 'jonni@gmail.com', '$2y$10$LoYwf9ZY2zXypmfkMpiAmOmOzG0eW03R2tVaX7mLKHleiemYXasJS', 'CEO Excerpt', '', '2026-04-21 10:24:07');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
