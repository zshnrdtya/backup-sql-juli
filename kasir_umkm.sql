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
-- Basis data: `kasir_umkm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hutang`
--

CREATE TABLE `hutang` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `jumlah` decimal(15,2) NOT NULL DEFAULT '0.00',
  `terbayar` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sisa` decimal(15,2) GENERATED ALWAYS AS ((`jumlah` - `terbayar`)) STORED,
  `status` enum('belum','lunas') DEFAULT 'belum',
  `keterangan` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `hutang`
--

INSERT INTO `hutang` (`id`, `user_id`, `nama`, `telepon`, `jumlah`, `terbayar`, `status`, `keterangan`, `created_at`) VALUES
(1, 1, 'jonni', '0851243456', 50000.00, 0.00, 'belum', 'Hutang Nasi Goreng', '2026-04-22 04:44:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hutang_bayar`
--

CREATE TABLE `hutang_bayar` (
  `id` int NOT NULL,
  `hutang_id` int NOT NULL,
  `jumlah` decimal(15,2) NOT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `nama` varchar(150) NOT NULL,
  `harga_jual` decimal(15,2) NOT NULL DEFAULT '0.00',
  `harga_modal` decimal(15,2) NOT NULL DEFAULT '0.00',
  `stok` int NOT NULL DEFAULT '0',
  `is_favorit` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `user_id`, `nama`, `harga_jual`, `harga_modal`, `stok`, `is_favorit`, `created_at`) VALUES
(1, 1, 'Nasi Goreng', 15000.00, 0.00, 49, 1, '2026-04-22 03:00:09'),
(2, 1, 'Nasi Goreng', 15000.00, 0.00, 50, 1, '2026-04-22 03:01:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `subtotal` decimal(15,2) NOT NULL DEFAULT '0.00',
  `diskon` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total` decimal(15,2) NOT NULL DEFAULT '0.00',
  `bayar` decimal(15,2) NOT NULL DEFAULT '0.00',
  `kembalian` decimal(15,2) NOT NULL DEFAULT '0.00',
  `metode_bayar` enum('cash','transfer','ewallet') DEFAULT 'cash',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `user_id`, `subtotal`, `diskon`, `total`, `bayar`, `kembalian`, `metode_bayar`, `created_at`) VALUES
(1, 1, 15000.00, 0.00, 15000.00, 20000.00, 5000.00, 'cash', '2026-04-22 03:15:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_item`
--

CREATE TABLE `transaksi_item` (
  `id` int NOT NULL,
  `transaksi_id` int NOT NULL,
  `produk_id` int NOT NULL,
  `nama_produk` varchar(150) NOT NULL,
  `harga` decimal(15,2) NOT NULL,
  `qty` int NOT NULL DEFAULT '1',
  `subtotal` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `transaksi_item`
--

INSERT INTO `transaksi_item` (`id`, `transaksi_id`, `produk_id`, `nama_produk`, `harga`, `qty`, `subtotal`) VALUES
(1, 1, 1, 'Nasi Goreng', 15000.00, 1, 15000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Zeeshan', 'zeeshan@gmail.com', '$2y$10$WxzY/FixVfukF8c7DGV2D..lWLC4vzsUl9QmNWk1T38KRi6ZP0smG', '2026-04-22 02:02:15'),
(2, 'raditya', 'zeeshanraditya@gmail.com', '$2y$10$vXHSEGKS6To7kae13DV9OO8WQY/3ohTXr2D4euwLtOZKRTvthYYj6', '2026-04-22 04:46:28');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `hutang`
--
ALTER TABLE `hutang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `hutang_bayar`
--
ALTER TABLE `hutang_bayar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hutang_id` (`hutang_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `transaksi_item`
--
ALTER TABLE `transaksi_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_id` (`transaksi_id`),
  ADD KEY `produk_id` (`produk_id`);

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
-- AUTO_INCREMENT untuk tabel `hutang`
--
ALTER TABLE `hutang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `hutang_bayar`
--
ALTER TABLE `hutang_bayar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transaksi_item`
--
ALTER TABLE `transaksi_item`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hutang`
--
ALTER TABLE `hutang`
  ADD CONSTRAINT `hutang_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `hutang_bayar`
--
ALTER TABLE `hutang_bayar`
  ADD CONSTRAINT `hutang_bayar_ibfk_1` FOREIGN KEY (`hutang_id`) REFERENCES `hutang` (`id`);

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi_item`
--
ALTER TABLE `transaksi_item`
  ADD CONSTRAINT `transaksi_item_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id`),
  ADD CONSTRAINT `transaksi_item_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
