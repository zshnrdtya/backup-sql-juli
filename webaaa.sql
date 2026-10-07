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
-- Basis data: `webaaa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` bigint UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `username`, `action`, `model_type`, `model_id`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'System', 'create', 'App\\Models\\User', 1, 'create User \'Super Admin A4A\'', '2026-06-29 04:12:24', '2026-06-29 04:12:24'),
(2, NULL, 'System', 'create', 'App\\Models\\User', 2, 'create User \'Admin A4A\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(3, NULL, 'System', 'create', 'App\\Models\\User', 3, 'create User \'Moderator A4A\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(4, NULL, 'System', 'create', 'App\\Models\\User', 4, 'create User \'Staf Nonaktif\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(5, NULL, 'System', 'create', 'App\\Models\\Member', 1, 'create Member \'Akey Maulana\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(6, NULL, 'System', 'create', 'App\\Models\\Member', 2, 'create Member \'Jonnint Pratama\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(7, NULL, 'System', 'create', 'App\\Models\\Member', 3, 'create Member \'Rian Hidayat\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(8, NULL, 'System', 'create', 'App\\Models\\Project', 1, 'create Project \'Kultus Akey Website\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(9, NULL, 'System', 'create', 'App\\Models\\Project', 2, 'create Project \'Aplikasi Anti-Duit Kas\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(10, NULL, 'System', 'create', 'App\\Models\\Gallery', 1, 'create Gallery \'1\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(11, NULL, 'System', 'create', 'App\\Models\\Gallery', 2, 'create Gallery \'2\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(12, NULL, 'System', 'create', 'App\\Models\\Event', 1, 'create Event \'Dies Natalis A4A ke-1\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(13, NULL, 'System', 'create', 'App\\Models\\Event', 2, 'create Event \'Class Meeting Sepak Takraw\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(14, NULL, 'System', 'create', 'App\\Models\\Timeline', 1, 'create Timeline \'Terbentuknya A4A\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(15, NULL, 'System', 'create', 'App\\Models\\Timeline', 2, 'create Timeline \'Kemenangan Class Meeting Pertama\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(16, NULL, 'System', 'create', 'App\\Models\\HallOfFame', 1, 'create HallOfFame \'1\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(17, NULL, 'System', 'create', 'App\\Models\\HallOfFame', 2, 'create HallOfFame \'2\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(18, NULL, 'System', 'create', 'App\\Models\\Quote', 1, 'create Quote \'Uang kas adalah koentji kesuksesan kelas, tidak...\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(19, NULL, 'System', 'create', 'App\\Models\\Quote', 2, 'create Quote \'Tidur di kelas adalah ibadah yang paling nikmat...\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(20, NULL, 'System', 'create', 'App\\Models\\Quote', 3, 'create Quote \'Dilarang keras berpacaran sesama anggota kelas ...\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(21, NULL, 'System', 'create', 'App\\Models\\Guestbook', 1, 'create Guestbook \'Pak Budi (Wali Kelas)\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(22, NULL, 'System', 'create', 'App\\Models\\Guestbook', 2, 'create Guestbook \'Siska Kelas Sebelah\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(23, NULL, 'System', 'create', 'App\\Models\\Guestbook', 3, 'create Guestbook \'Haters A4A\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(24, NULL, 'System', 'create', 'App\\Models\\Announcement', 1, 'create Announcement \'Pengumuman Penting: Uang Kas Naik!\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(25, NULL, 'System', 'create', 'App\\Models\\Announcement', 2, 'create Announcement \'Agenda Liburan Semester\'', '2026-06-29 04:12:25', '2026-06-29 04:12:25'),
(26, NULL, 'System', 'create', 'App\\Models\\User', 5, 'create User \'Developer A4A\'', '2026-06-29 09:54:59', '2026-06-29 09:54:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `is_pinned` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `content`, `published_at`, `is_pinned`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pengumuman Penting: Uang Kas Naik!', 'Mulai minggu depan, uang kas naik menjadi Rp 10.000 per minggu demi kelancaran Dies Natalis.', '2026-06-29 04:12:25', 1, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL),
(2, 'Agenda Liburan Semester', 'Diharapkan seluruh anggota berkumpul di rumah Akey untuk briefing liburan ke pantai.', '2026-06-29 04:17:25', 0, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `events`
--

INSERT INTO `events` (`id`, `name`, `location`, `date`, `time`, `description`, `poster`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dies Natalis A4A ke-1', 'Warmindo Dekat Kampus', '2026-08-12', '19:00:00', 'Perayaan hari jadi Antek Antek Akey dengan makan mi instan bersama.', NULL, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL),
(2, 'Class Meeting Sepak Takraw', 'Lapangan Utama', '2026-07-05', '08:00:00', 'Mendukung tim kelas A4A merebut piala bergilir Lord Akey.', NULL, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL);

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
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `member_id` bigint UNSIGNED DEFAULT NULL,
  `photos` json NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `caption` text COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `member_id`, `photos`, `category`, `caption`, `date`, `visibility`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '[\"galleries/mock_photo1.jpg\", \"galleries/mock_photo2.jpg\"]', 'Kegiatan Kelas', 'Rapat paripurna membahas uang kas yang menunggak.', '2026-06-10', 'public', '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL),
(2, 3, '[\"galleries/mock_photo3.jpg\"]', 'Refreshing', 'Bolos berjamaah di kantin belakang sekolah.', '2026-06-20', 'public', '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guestbooks`
--

CREATE TABLE `guestbooks` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `guestbooks`
--

INSERT INTO `guestbooks` (`id`, `name`, `email`, `message`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pak Budi (Wali Kelas)', 'budi@sekolah.sch.id', 'Kelas kalian sangat ramai, tolong kurangi kegaduhan di jam pelajaran saya.', 'approved', '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL),
(2, 'Siska Kelas Sebelah', 'siska@gmail.com', 'Akey ganteng banget deh, titip salam ya kak.', 'pending', '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL),
(3, 'Haters A4A', 'hater@gmail.com', 'Kelas cupu, cuma menang tarik tambang aja bangga.', 'rejected', '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hall_of_fames`
--

CREATE TABLE `hall_of_fames` (
  `id` bigint UNSIGNED NOT NULL,
  `member_id` bigint UNSIGNED DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `winner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` year NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hall_of_fames`
--

INSERT INTO `hall_of_fames` (`id`, `member_id`, `category`, `winner_name`, `year`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Antek Ter-Manipulatif', 'Akey Maulana', '2025', NULL, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL),
(2, 3, 'Pemalak Ter-Konsisten', 'Rian Hidayat', '2025', NULL, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL);

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
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Anggota',
  `bio` text COLLATE utf8mb4_unicode_ci,
  `date_of_birth` date DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`id`, `name`, `nickname`, `role`, `bio`, `date_of_birth`, `photo`, `instagram`, `github`, `email`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Akey Maulana', 'Akey', 'Ketua Kelas / Lord Akey', 'Pemimpin spiritual para Antek Antek Akey (A4A).', '2005-08-12', NULL, 'akeyyy', 'akeynesia', 'akey@a4a.com', 1, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL),
(2, 'Jonnint Pratama', 'Jon', 'Wakil Ketua Kelas', 'Antek nomor satu kepercayaan Lord Akey.', '2005-11-20', NULL, 'jonnint_', 'Jonnint', 'jonnint@a4a.com', 1, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL),
(3, 'Rian Hidayat', 'Rian', 'Bendahara Jahanam', 'Tukang palak uang kas kelas paling ditakuti.', '2006-03-15', NULL, 'rianhdt', 'rianh', 'rian@a4a.com', 1, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL);

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
(4, '2026_06_29_101125_create_members_table', 1),
(5, '2026_06_29_101125_create_projects_table', 1),
(6, '2026_06_29_101126_create_galleries_table', 1),
(7, '2026_06_29_101127_create_events_table', 1),
(8, '2026_06_29_101128_create_timelines_table', 1),
(9, '2026_06_29_101129_create_hall_of_fames_table', 1),
(10, '2026_06_29_101130_create_quotes_table', 1),
(11, '2026_06_29_101131_create_guestbooks_table', 1),
(12, '2026_06_29_101132_create_activity_logs_table', 1),
(13, '2026_06_29_101132_create_announcements_table', 1),
(14, '2026_06_29_114818_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `member_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repository_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'completed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `projects`
--

INSERT INTO `projects` (`id`, `member_id`, `name`, `description`, `thumbnail`, `repository_url`, `demo_url`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Kultus Akey Website', 'Website official untuk mendokumentasikan keagungan Akey.', NULL, 'https://github.com/Lyonse-nt/latihan-git', 'https://a4a-cult.test', 'completed', '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL),
(2, 2, 'Aplikasi Anti-Duit Kas', 'Aplikasi untuk mendeteksi keberadaan bendahara secara real-time.', NULL, 'https://github.com/Jonnint/anti-kas', NULL, 'ongoing', '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint UNSIGNED NOT NULL,
  `quote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Anonim',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `quotes`
--

INSERT INTO `quotes` (`id`, `quote`, `author`, `is_published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Uang kas adalah koentji kesuksesan kelas, tidak bayar denda 50 ribu.', 'Rian Hidayat', 1, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL),
(2, 'Tidur di kelas adalah ibadah yang paling nikmat setelah kantin.', 'Lord Akey', 1, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL),
(3, 'Dilarang keras berpacaran sesama anggota kelas demi kestabilan negara A4A.', 'Jonnint Pratama', 0, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL);

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `timelines`
--

CREATE TABLE `timelines` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `timelines`
--

INSERT INTO `timelines` (`id`, `title`, `date`, `description`, `icon`, `sort_order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Terbentuknya A4A', '2025-06-01', 'Lord Akey mengumpulkan 30 murid terpilih untuk membentuk faksi A4A.', 'flag', 1, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL),
(2, 'Kemenangan Class Meeting Pertama', '2025-12-15', 'A4A memenangkan lomba tarik tambang secara curang tapi terhormat.', 'trophy', 2, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'moderator',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin A4A', 'super_admin@a4a.com', NULL, '$2y$12$Sc9.6Lzz.BbJa1MHzYlfAOHIBCAe/DGpmqJ77TRQJs/27MjN/88nW', 'super_admin', 'active', NULL, '2026-06-29 04:12:24', '2026-06-29 04:12:24', NULL),
(2, 'Admin A4A', 'admin@a4a.com', NULL, '$2y$12$dOXnmQzwVY1fxY64Q60YXeJXm/vjsijIRJUdcMu.NajO.aEkfM00m', 'admin', 'active', NULL, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL),
(3, 'Moderator A4A', 'moderator@a4a.com', NULL, '$2y$12$DYlPYjXmLw21dbWKkA4kd.hrJZeKYG8A00b4UjxbyMSrTcNFJ8hpm', 'moderator', 'active', NULL, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL),
(4, 'Staf Nonaktif', 'inactive@a4a.com', NULL, '$2y$12$PkfwlryJ4rTLWgDfCukJx.CQwMrZcazWaWeNVa690B27svlxDeoP.', 'moderator', 'inactive', NULL, '2026-06-29 04:12:25', '2026-06-29 04:12:25', NULL),
(5, 'Developer A4A', 'developer@a4a.com', NULL, '$2y$12$J.dr4ZFOzEbJAf6HKxXIbOQ4yN8C0T9ZLElVXSEBnMTufV2UNxM2m', 'developer', 'active', NULL, '2026-06-29 09:54:59', '2026-06-29 09:54:59', NULL);

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

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
-- Indeks untuk tabel `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_member_id_foreign` (`member_id`);

--
-- Indeks untuk tabel `guestbooks`
--
ALTER TABLE `guestbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hall_of_fames`
--
ALTER TABLE `hall_of_fames`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hall_of_fames_member_id_foreign` (`member_id`);

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
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
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
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_member_id_foreign` (`member_id`);

--
-- Indeks untuk tabel `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `timelines`
--
ALTER TABLE `timelines`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `guestbooks`
--
ALTER TABLE `guestbooks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `hall_of_fames`
--
ALTER TABLE `hall_of_fames`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `timelines`
--
ALTER TABLE `timelines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `hall_of_fames`
--
ALTER TABLE `hall_of_fames`
  ADD CONSTRAINT `hall_of_fames_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
