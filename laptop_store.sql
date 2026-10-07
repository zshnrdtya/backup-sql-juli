-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Jul 2026 pada 08.28
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
-- Basis data: `laptop_store`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `laptops`
--

CREATE TABLE `laptops` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(15,0) NOT NULL,
  `specs` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `laptops`
--

INSERT INTO `laptops` (`id`, `name`, `brand`, `price`, `specs`, `image_url`, `stock`, `created_at`) VALUES
(1, 'ASUS ROG Strix G16', 'ASUS', 22999000, 'Intel Core i7-13650HX | RTX 4060 8GB | 16GB DDR5 | 512GB NVMe SSD | 165Hz QHD', 'https://images.unsplash.com/photo-1593642632559-0c6d3fc62b89?w=400&q=80', 5, '2026-05-07 13:51:01'),
(2, 'MSI Titan GT77', 'MSI', 45000000, 'Intel Core i9-13980HX | RTX 4090 16GB | 64GB DDR5 | 2TB NVMe SSD | 4K 144Hz', 'https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=400&q=80', 3, '2026-05-07 13:51:01'),
(3, 'Lenovo Legion Pro 7', 'Lenovo', 28500000, 'AMD Ryzen 9 7945HX | RTX 4070 8GB | 32GB DDR5 | 1TB NVMe SSD | 240Hz QHD', 'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=400&q=80', 7, '2026-05-07 13:51:01'),
(4, 'Acer Predator Helios 16', 'Acer', 19999000, 'Intel Core i7-13700HX | RTX 4060 8GB | 16GB DDR5 | 512GB NVMe SSD | 165Hz FHD', 'https://images.unsplash.com/photo-1525547719571-a2d4ac8945e2?w=400&q=80', 10, '2026-05-07 13:51:01'),
(5, 'Razer Blade 15', 'Razer', 38000000, 'Intel Core i9-13950HX | RTX 4080 12GB | 32GB DDR5 | 1TB NVMe SSD | 240Hz QHD', 'https://images.unsplash.com/photo-1611532736597-de2d4265fba3?w=400&q=80', 4, '2026-05-07 13:51:01'),
(6, 'HP OMEN 16', 'HP', 17500000, 'AMD Ryzen 7 7745HX | RTX 4060 8GB | 16GB DDR5 | 512GB NVMe SSD | 165Hz FHD', 'https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=400&q=80', 8, '2026-05-07 13:51:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Bisma', 'bisma@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2026-05-07 13:51:01'),
(2, 'Bisma2', 'bisma2@gmail.com', '$2y$10$eDGbJE5IgcsPVpIDbOdZxeSt5C1JZE1MAOgLQ02cnsS3MGP0nDyIS', '2026-05-07 14:00:48');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `laptops`
--
ALTER TABLE `laptops`
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
-- AUTO_INCREMENT untuk tabel `laptops`
--
ALTER TABLE `laptops`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
