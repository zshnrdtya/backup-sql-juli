-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Jul 2026 pada 08.31
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
-- Basis data: `tokohpbekas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `nama`, `email`, `password`, `created_at`) VALUES
(1, 'Super Admin', 'admin@hpbekas.com', '$2y$10$TKh8H1.PfunDAgTryGINSuIRjd6TCzmznS5zhyMBMFHqIHNlWaUKq', '2026-04-14 11:34:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `harga` bigint NOT NULL,
  `bukti_bayar` varchar(255) DEFAULT NULL,
  `status` enum('pending','dibayar','dikirim','selesai') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `harga`, `bukti_bayar`, `status`, `created_at`) VALUES
(2, 4, 3, 250000, NULL, 'pending', '2026-04-14 12:00:19'),
(3, 5, 4, 12000000, 'bukti_3_1779171445.jpg', 'dibayar', '2026-04-20 10:37:37'),
(4, 2, 4, 12000000, NULL, 'pending', '2026-04-20 14:58:11'),
(5, 2, 4, 12000000, NULL, 'pending', '2026-05-05 07:32:43'),
(6, 5, 4, 12000000, 'bukti_6_1779174023.jpg', 'dibayar', '2026-05-19 07:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `merek` varchar(100) NOT NULL,
  `harga` bigint NOT NULL,
  `kondisi` varchar(50) NOT NULL,
  `deskripsi` text,
  `foto` varchar(255) DEFAULT NULL,
  `no_hp_penjual` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `user_id`, `nama_produk`, `merek`, `harga`, `kondisi`, `deskripsi`, `foto`, `no_hp_penjual`, `created_at`) VALUES
(3, 2, 'Iphone 17 Pro Max', 'Iphone', 25000000, 'Bekas - Mulus', 'Warna oranye bagus mulus', 'hp_69de2bc84f2d1.jpg', '08521235417', '2026-04-14 11:58:00'),
(4, 4, 'Samsung S23', 'Samsung', 12000000, 'Bekas - Normal', 'Samsung S23 Pemakaian Normal 2 Tahun', 'hp_69e5ff2d03605.jpg', '08512131646', '2026-04-20 10:25:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` text,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `no_hp`, `alamat`, `role`, `created_at`) VALUES
(1, 'Admin Test', 'admin@test.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '08123456789', 'Jakarta', 'admin', '2026-04-14 11:10:40'),
(2, 'Raditya Steven', 'zeeshanraditya@gmail.com', '$2y$10$Qtk7MpvTHVbfvIcXNMA0gOys5In9bfdC6hPmPFFucDOwlHZqVxyxG', '085215581206', 'jepang', 'user', '2026-04-14 11:28:11'),
(3, 'Super Admin', 'admin@hpbekas.com', '$2y$10$7O/saau.3Rm.0cZ5ZfmVjeSQblMJyMid5f47fBv82QHrJA1nz1OZK', '08000000000', 'Kantor Pusat', 'admin', '2026-04-14 11:45:14'),
(4, 'Jonni', 'jonni@gmail.com', '$2y$10$xB9hclqbskU9UR3YjhWlMeRJE7eGjX.nHlSiHJYqvXguHMGgQvyU2', '081234567890', 'prindapan', 'user', '2026-04-14 12:00:09'),
(5, 'zshn', 'zshn@gmail.com', '$2y$10$MgaSIC1Ke0H4ETpkDs.Wgu68dsjLH0IEavGBIA1JFYkndiIfaHK1S', '085214415', 'Depok', 'user', '2026-04-20 10:37:24'),
(6, 'virgi', 'virgi@gmail.com', '$2y$10$vy2VE5fSo7UaMHTqt3WyzemuhFNL0t2ttYZQPBzk0guzqfmBobPoO', '08525285852', 'Jatijajar', 'user', '2026-05-05 07:45:26');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
