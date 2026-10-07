-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Jul 2026 pada 08.30
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
-- Basis data: `stepennews`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` bigint UNSIGNED DEFAULT NULL,
  `news_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2025_01_01_000004_create_missing_tables', 1),
(2, '2025_01_01_000005_add_timestamps_to_users', 2),
(3, '2025_03_07_000002_add_missing_columns_to_news', 3),
(4, '2026_03_08_100637_create_activity_logs_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `isi` text COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kategori` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `komentar` text COLLATE utf8mb4_general_ci,
  `gambar` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `media_type` enum('image','video') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'image',
  `penulis` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `judul`, `isi`, `slug`, `kategori`, `komentar`, `gambar`, `media_type`, `penulis`, `tanggal`, `status`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'Richard Lee Resmi Di Tahan Polda', 'Dr. Richard Lee ditetapkan sebagai tersangka dalam kasus dugaan pelanggaran perlindungan konsumen terkait produk dan layanan kecantikannya.', 'richard-lee-resmi-di-tahan-polda', 'Nasional', 'Dr. Richard Lee ditetapkan sebagai tersangka dalam kasus dugaan pelanggaran perlindungan konsumen terkait produk dan layanan kecantikannya,', 'uploads/1772819045_richard.jpg', 'image', 'laravel@gmail.com', '2026-03-07 00:44:05', 'approved', '2026-03-06 10:45:32', '2026-03-06 10:44:05', '2026-03-06 10:45:32'),
(2, 'Reels: reelss.mp4', 'Video Reels', 'reels-reelssmp4', 'Reels', NULL, 'videos/1772820484_reelss.mp4', 'video', 'laravel@gmail.com', '2026-03-07 01:08:04', 'approved', '2026-03-06 11:08:31', '2026-03-06 11:08:04', '2026-03-06 11:08:31'),
(3, '158 Jemaah Umrah Alami Penundaan Kepulangan Imbas Konflik Timur Tengah', 'Kementerian Haji dan Umrah (Kemenhaj) bersama Tim Fungsi Konsuler KJRI Jeddah menyampaikan adanya 158 jemaah umrah yang tertahan proses kepulangannya imbas konflik Timur Tengah.\r\n\r\nSecara kumulatif, jumlah jemaah umrah Indonesia yang telah terpantau kembali ke Tanah Air mencapai 14.796 orang sejak 28 Februari hingga 5 Maret 2026.\r\n\r\n\"Dalam proses pengawasan tersebut, tercatat pula 158 jemaah umrah mengalami penundaan atau tertahan dalam proses kepulangan, para jemaah saat ini berada di dua lokasi, di Kota Jeddah dan Kota Mekkah,\" ujar Staf Teknis Haji pada Kantor Urusan Haji Jeddah, M Ilham Effendy dalam keterangannya, Sabtu (7/3/2026).\r\n\r\nJemaah yang masih tertahan kepulangannya itu menunggu penjadwalan ulang penerbangan sesuai dengan pengaturan maskapai dan penyelenggara perjalanan. Ilham memastikan, petugas dari KJRI Jeddah terus melakukan pemantauan langsung di bandara untuk memastikan proses kepulangan jemaah berjalan dengan baik.\r\n\r\n\"Petugas terus berada di lapangan untuk memantau langsung proses keberangkatan jemaah umrah Indonesia di Bandara Internasional King Abdulaziz,\" tutur Ilham. \"Kami memastikan jemaah mendapatkan informasi yang jelas serta pendampingan selama proses kepulangan berlangsung,\" sambung dia.\r\n\r\nBagi jemaah yang mengalami penundaan penerbangan, pemerintah terus melakukan koordinasi dengan berbagai pihak agar penanganan dapat berjalan optimal. \"Kami terus melakukan koordinasi dengan maskapai dan penyelenggara perjalanan,\" imbuhnya.\r\n\r\nIlham memastikan seluruh jemaah tetap mendapatkan pendampingan serta pelayanan yang diperlukan hingga dapat kembali ke Tanah Air dengan aman dan selamat. Ia mengimbau kepada seluruh jemaah dan keluarga di Tanah Air untuk tetap tenang karena pemerintah melalui perwakilan di Arab Saudi terus memantau perkembangan di lapangan.\r\n\r\n\"Kami memastikan seluruh jemaah mendapatkan layanan dan pendampingan yang diperlukan,\" ucap Ilham.', '158-jemaah-umrah-alami-penundaan-kepulangan-imbas-konflik-timur-tengah', 'Nusantara', 'Situasi ini tentu sangat mengkhawatirkan bagi para jemaah dan keluarga yang menunggu di Tanah Air. Mengingat eskalasi konflik di Timur Tengah yang sedang terjadi, wajar jika penerbangan terganggu atau tertunda demi alasan keamanan.\r\n\r\nLangkah pemerintah melalui KJRI Jeddah untuk terus mendampingi, memantau di bandara, dan berkoordinasi dengan maskapai sudah tepat untuk memastikan hak-hak jemaah tetap terjaga selama masa penantian tersebut. Kita tentu berharap situasi segera membaik agar seluruh jemaah dapat segera kembali ke Indonesia dengan selamat.\r\n\r\nApakah Anda sedang menunggu kabar dari anggota keluarga atau kerabat yang sedang melaksanakan ibadah umrah saat ini?', 'uploads/1772873491_berita2.jpg', 'image', 'laravel@gmail.com', '2026-03-07 15:51:31', 'approved', '2026-03-07 01:55:25', '2026-03-07 01:51:31', '2026-03-07 01:55:25'),
(4, 'Reels: video reels.mp4', 'Video Reels', 'reels-video-reelsmp4', 'Reels', NULL, 'videos/1772874033_video reels.mp4', 'video', 'admin@example.id', '2026-03-07 16:00:33', 'approved', '2026-03-07 02:02:53', '2026-03-07 02:00:33', '2026-03-07 02:02:53'),
(5, 'Reels: reels3.mp4', 'Video Reels', 'reels-reels3mp4', 'Reels', NULL, 'videos/1772874050_reels3.mp4', 'video', 'admin@example.id', '2026-03-07 16:00:50', 'approved', '2026-03-07 02:02:55', '2026-03-07 02:00:50', '2026-03-07 02:02:55'),
(6, 'Reels: reels4.mp4', 'Video Reels', 'reels-reels4mp4', 'Reels', NULL, 'videos/1772874089_reels4.mp4', 'video', 'admin@example.id', '2026-03-07 16:01:29', 'approved', '2026-03-07 02:02:56', '2026-03-07 02:01:29', '2026-03-07 02:02:56'),
(7, 'Reels: reels5.mp4', 'Video Reels', 'reels-reels5mp4', 'Reels', NULL, 'videos/1772874108_reels5.mp4', 'video', 'admin@example.id', '2026-03-07 16:01:48', 'approved', '2026-03-07 02:02:56', '2026-03-07 02:01:48', '2026-03-07 02:02:56'),
(8, 'Reels: reels6.mp4', 'Video Reels', 'reels-reels6mp4', 'Reels', NULL, 'videos/1772874120_reels6.mp4', 'video', 'admin@example.id', '2026-03-07 16:02:00', 'approved', '2026-03-07 02:02:58', '2026-03-07 02:02:00', '2026-03-07 02:02:58'),
(9, 'Reels: reels7.mp4', 'Video Reels', 'reels-reels7mp4', 'Reels', NULL, 'videos/1772874131_reels7.mp4', 'video', 'admin@example.id', '2026-03-07 16:02:11', 'approved', '2026-03-07 02:02:59', '2026-03-07 02:02:11', '2026-03-07 02:02:59'),
(10, 'Reels: reels8.mp4', 'Video Reels', 'reels-reels8mp4', 'Reels', NULL, 'videos/1772874146_reels8.mp4', 'video', 'admin@example.id', '2026-03-07 16:02:26', 'approved', '2026-03-07 02:03:00', '2026-03-07 02:02:26', '2026-03-07 02:03:00'),
(11, 'Reels: reels9.mp4', 'Video Reels', 'reels-reels9mp4', 'Reels', NULL, 'videos/1772874163_reels9.mp4', 'video', 'admin@example.id', '2026-03-07 16:02:43', 'approved', '2026-03-07 02:03:01', '2026-03-07 02:02:43', '2026-03-07 02:03:01'),
(12, 'JK Ingatkan Potensi Harga BBM dan LPG Naik Buntut Konflik Timur Tengah', 'Wakil Presiden ke-10 dan 12 Republik Indonesia Jusuf Kalla (JK) menyampaikan kekhawatirannya mengenai potensi kenaikan harga bahan bakar minyak (BBM) dan LPG sebagai dampak dari konflik di Timur Tengah setelah Amerika Serikat (AS) menyerang Iran. Pernyataan ini disampaikan JK usai acara buka puasa dan salat tarawih bersama pengurus KAHMI di kediamannya, Jakarta Selatan, Jumat (6/3/2026).\r\n\r\nJK menilai eskalasi konflik tersebut akan langsung terasa pada ekonomi Indonesia. \"Harga bahan bakar naik, harga LPG naik, dan itu berarti subsidi pemerintah akan semakin besar,\" ujar JK. Ia menambahkan bahwa jika perang berlangsung dalam waktu lama, stok BBM nasional yang relatif terbatas dapat menimbulkan kesulitan bagi kegiatan ekonomi dan bisnis.\r\n\r\nSelain dampak ekonomi, JK menekankan pentingnya Indonesia memiliki sikap politik yang jelas sebagai negara dengan penduduk Muslim terbesar. Ia mendorong pemerintah untuk menggunakan peran diplomatik di forum internasional demi perdamaian.\r\n\r\nLebih lanjut, JK menyarankan pemerintah untuk melakukan evaluasi total terhadap kebijakan ekonomi, terutama dalam pengelolaan anggaran negara. Menurutnya, penentuan prioritas belanja negara sangat penting agar pengeluaran tidak membebani keuangan negara secara berlebihan di tengah ketidakpastian global saat ini.', 'jk-ingatkan-potensi-harga-bbm-dan-lpg-naik-buntut-konflik-timur-tengah', 'Nasional', 'Peringatan dari JK ini menyoroti sisi lain dari konflik Timur Tengah yang tidak hanya mengganggu logistik (seperti kasus jemaah umrah sebelumnya), tetapi juga mengancam stabilitas fiskal negara. Ada dua tantangan utama yang ia garis bawahi:\r\n\r\nBeban Subsidi: Kenaikan harga minyak dunia otomatis akan menekan APBN jika pemerintah memilih untuk menahan harga di tingkat domestik lewat subsidi.\r\n\r\nKetahanan Energi: Kekhawatiran soal \"stok terbatas\" menjadi pengingat bagi pemerintah untuk segera memitigasi cadangan energi nasional agar aktivitas bisnis tidak lumpuh jika jalur pasokan global terganggu lama.\r\n\r\nHal ini menunjukkan betapa sensitifnya ekonomi Indonesia terhadap stabilitas politik di kawasan produsen minyak tersebut.', 'uploads/1772877967_berita3.jpg', 'image', 'admin@example.id', '2026-03-07 17:06:07', 'approved', '2026-03-07 03:07:54', '2026-03-07 03:06:07', '2026-03-07 03:07:54'),
(13, 'JK Minta Pemerintah Antisipasi Terbatasnya Stok BBM Imbas Konflik AS-Iran', 'Wakil Presiden ke-10 dan ke-12 RI, Jusuf Kalla (JK), meminta pemerintah segera melakukan langkah antisipasi terhadap potensi terbatasnya stok bahan bakar minyak (BBM) akibat eskalasi konflik antara Amerika Serikat (AS) dan Iran. JK menekankan bahwa jika perang tersebut berlangsung lama, ketersediaan BBM nasional bisa terganggu dan berdampak serius pada roda ekonomi.\r\n\r\n\"Kalau perang berlangsung lama, stok BBM kita terbatas. Itu bisa menimbulkan kesulitan bagi kegiatan ekonomi dan bisnis,\" kata JK di kediamannya, Jakarta Selatan, Sabtu (7/3/2026). Selain masalah stok, JK juga mengingatkan bahwa kenaikan harga minyak dunia akan mendongkrak harga BBM dan LPG di dalam negeri, yang pada akhirnya memperbesar beban subsidi negara.\r\n\r\nSebagai langkah solusi, JK menyarankan pemerintah untuk:\r\n\r\n1. Evaluasi Kebijakan Ekonomi: Melakukan peninjauan total terhadap penggunaan anggaran negara dan menentukan prioritas pengeluaran agar keuangan tetap terjaga.\r\n\r\n2. Sikap Diplomatik: Mengimbau Indonesia untuk bersikap tegas di forum internasional guna mendorong perdamaian, mengingat posisi Indonesia sebagai negara dengan penduduk Muslim terbesar.', 'jk-minta-pemerintah-antisipasi-terbatasnya-stok-bbm-imbas-konflik-as-iran', 'Nasional', 'Berita ini merupakan penegasan lebih mendalam dari kekhawatiran JK sebelumnya. Ada beberapa poin krusial di sini:\r\n\r\nKetahanan Operasional: Fokus JK bukan lagi sekadar soal \"harga\", tapi \"ketersediaan\" (stok). Jika stok fisik menipis, dampak sistemiknya akan lebih parah daripada sekadar kenaikan harga, karena bisa menyebabkan kelangkaan di lapangan.\r\n\r\nEfek Domino APBN: Penekanan pada \"evaluasi total kebijakan ekonomi\" menunjukkan adanya urgensi bagi pemerintah untuk mulai memilah mana proyek yang harus jalan dan mana yang bisa ditunda demi menyelamatkan anggaran subsidi energi.\r\n\r\nPesan Anti-Panic Buying: Secara tersirat, peringatan ini juga menjadi sinyal bagi masyarakat dan pengusaha untuk mulai lebih efisien dalam penggunaan energi sebelum kondisi benar-benar memburuk.\r\n\r\nJika kita hubungkan dengan berita jemaah umrah tadi, terlihat pola bahwa konflik AS-Iran ini mulai \"mengepung\" Indonesia dari dua sisi: perlindungan warga di luar negeri dan ketahanan ekonomi di dalam negeri.', 'uploads/1772878064_berita4.jpg', 'image', 'admin@example.id', '2026-03-07 17:07:44', 'approved', '2026-03-07 03:07:52', '2026-03-07 03:07:44', '2026-03-07 03:07:52'),
(14, 'Andre Rosiade Sebut Stok BBM di SPBU Jalur Mudik Lebaran Sudah Disiapkan', 'Anggota Komisi VI DPR RI, Andre Rosiade, memastikan bahwa stok bahan bakar minyak (BBM) untuk kebutuhan mudik Lebaran 2026 telah disiapkan dengan baik, terutama di SPBU yang berada di jalur-jalur utama mudik. Pernyataan ini bertujuan untuk menenangkan masyarakat di tengah kekhawatiran kelangkaan stok akibat eskalasi konflik di Timur Tengah.\r\n\r\nAndre menjelaskan bahwa Pertamina telah melakukan pemetaan dan pengamanan pasokan di titik-titik krusial guna menjamin kelancaran arus mudik. Ia juga menyebutkan bahwa koordinasi antara pemerintah, DPR, dan penyedia energi terus diperkuat agar distribusi tetap berjalan tanpa hambatan meskipun ada tekanan global pada harga dan pasokan minyak mentah.\r\n\r\nPemerintah juga mengimbau masyarakat untuk tidak melakukan panic buying (aksi borong), karena ketersediaan stok di lapangan telah diperhitungkan untuk mencukupi kebutuhan puncak selama periode Idul Fitri.', 'andre-rosiade-sebut-stok-bbm-di-spbu-jalur-mudik-lebaran-sudah-disiapkan', 'Nasional', 'Berita ini hadir sebagai penyeimbang (counter-narrative) terhadap kekhawatiran yang disampaikan Jusuf Kalla sebelumnya. Berikut poin menariknya:\r\n\r\nManajemen Psikologi Publik: Menjelang Lebaran, isu stok BBM sangat sensitif. Pernyataan dari pihak DPR dan pemerintah ini berfungsi sebagai \"obat penenang\" agar masyarakat tidak panik dan menyebabkan antrean panjang di SPBU sebelum waktunya.\r\n\r\nKesiapan Logistik Domestik: Meskipun secara global pasokan mungkin tertekan konflik AS-Iran, secara domestik Pertamina tampaknya sudah melakukan stockpiling (penimbunan stok cadangan) jauh-jauh hari untuk mengantisipasi lonjakan konsumsi saat mudik.\r\n\r\nTitik Tekan pada Distribusi: Fokusnya sekarang bergeser dari \"stok nasional\" ke \"distribusi jalur mudik\". Ini menunjukkan bahwa tantangan terbesar saat ini bukan hanya ketersediaan barang secara makro, tapi memastikan barang tersebut sampai ke ujung tombak (SPBU) tepat waktu.\r\n\r\nSecara garis besar, kita bisa melihat adanya upaya \"komunikasi krisis\" dari pemerintah untuk memastikan bahwa meskipun ada konflik internasional, kebutuhan domestik yang mendesak (seperti mudik) tetap menjadi prioritas utama.', 'uploads/1772961035_berita5.jpg', 'image', 'admin@example.id', '2026-03-08 16:10:35', 'approved', '2026-03-08 02:10:43', '2026-03-08 02:10:35', '2026-03-08 02:10:43'),
(15, 'Gempa Magnitudo 5,6 Guncang Sinabang, Aceh', 'Gempa bumi berkekuatan Magnitudo 5,6 mengguncang wilayah Sinabang, Kabupaten Simeulue, Aceh, pada hari Minggu (8/3/2026). Berdasarkan data dari Badan Meteorologi, Klimatologi, dan Geofisika (BMKG), pusat gempa berada di laut dengan kedalaman yang cukup dangkal.\r\n\r\nMeskipun kekuatan gempa cukup signifikan dan getarannya terasa kuat di sekitar wilayah Simeulue, BMKG menyatakan bahwa gempa ini tidak berpotensi tsunami. Hingga saat ini, belum ada laporan resmi mengenai kerusakan bangunan yang masif maupun korban jiwa, namun masyarakat diimbau untuk tetap waspada terhadap potensi gempa susulan. Petugas BPBD setempat masih melakukan pendataan dan pemantauan di lapangan untuk memastikan kondisi keamanan warga.', 'gempa-magnitudo-56-guncang-sinabang-aceh', 'Nusantara', 'Berita ini menambah daftar peristiwa penting yang terjadi secara bersamaan di awal Maret 2026 ini. Beberapa poin pentingnya:\r\n\r\nKewaspadaan Wilayah Pesisir: Sinabang dan Kepulauan Simeulue memang berada di zona aktif tektonik. Meskipun tidak berpotensi tsunami, kekuatan M 5,6 di kedalaman dangkal biasanya cukup untuk menimbulkan kepanikan dan risiko kerusakan pada bangunan yang konstruksinya kurang kokoh.\r\n\r\nAkumulasi Situasi: Di saat pemerintah sedang fokus pada mitigasi dampak konflik Timur Tengah (BBM dan jemaah umrah), munculnya bencana alam seperti gempa bumi menambah beban koordinasi bagi lembaga seperti BPBD dan pemerintah daerah.\r\n\r\nFokus pada Informasi Resmi: Mengingat sedang dalam suasana yang agak tegang karena isu global, kecepatan BMKG dalam mengonfirmasi bahwa gempa ini \"Tidak Berpotensi Tsunami\" sangat penting untuk mencegah penyebaran hoaks atau kepanikan tambahan di tengah masyarakat.\r\n\r\nTetap waspada bagi rekan-rekan atau keluarga yang mungkin berada di wilayah Aceh dan sekitarnya.', 'uploads/1772961662_berita6.jpg', 'image', 'admin@example.id', '2026-03-08 16:21:02', 'approved', '2026-03-08 02:21:09', '2026-03-08 02:21:02', '2026-03-08 02:21:09'),
(16, 'China Bikin Baterai Nuklir Mini, Bisa Tahan 50 Tahun Tanpa Dicas', 'Perusahaan rintisan (startup) asal China, Betavolt, mengumumkan keberhasilan mereka dalam mengembangkan baterai nuklir miniatur yang diklaim mampu menghasilkan listrik selama 50 tahun berturut-turut tanpa perlu diisi ulang (charging). Baterai berukuran lebih kecil dari koin ini bekerja dengan memanfaatkan energi dari peluruhan isotop radioaktif nikel-63 menjadi energi listrik.\r\n\r\nTeknologi ini menggunakan lapisan semikonduktor berlian setebal 10 mikron untuk memastikan efisiensi dan keamanan. Betavolt menyatakan bahwa baterai ini aman digunakan untuk perangkat medis seperti alat pacu jantung, sensor pintar, hingga ponsel masa depan yang tidak akan pernah mati. Perusahaan juga menjamin bahwa baterai ini tidak memiliki radiasi eksternal yang berbahaya dan tidak akan meledak meski terkena tekanan atau suhu ekstrem. Saat ini, baterai tersebut masuk dalam tahap pengujian pilot dan direncanakan untuk diproduksi massal untuk kebutuhan komersial di masa mendatang.', 'china-bikin-baterai-nuklir-mini-bisa-tahan-50-tahun-tanpa-dicas', 'Teknologi', 'Ini adalah terobosan yang terasa seperti datang dari masa depan, terutama mengingat tantangan energi yang sedang kita bahas di berita sebelumnya. Beberapa poin menarik:\r\n\r\nSolusi Krisis Energi Jangka Panjang: Di saat dunia (termasuk Indonesia) sedang pusing memikirkan stok BBM dan kenaikan harga energi fosil akibat konflik, inovasi seperti baterai nuklir mini ini menawarkan visi kemandirian energi yang ekstrem.\r\n\r\nKeamanan vs. Stigma: Tantangan terbesar Betavolt bukan hanya teknis, tapi psikologis. Meyakinkan masyarakat untuk menaruh \"nuklir\" di dalam saku ponsel atau di dalam tubuh (alat pacu jantung) membutuhkan pembuktian keamanan yang sangat ketat.\r\n\r\nRevolusi Perangkat: Jika ini berhasil diproduksi massal dengan harga terjangkau, industri charger, power bank, dan kabel data bisa punah. Fokus pengembangan gawai akan bergeser total dari \"daya tahan baterai\" ke aspek fungsionalitas murni.\r\n\r\nWah, membayangkan punya laptop atau HP yang tidak perlu dicas selama puluhan tahun pasti bakal mengubah cara kita bekerja ya. Apalagi buat kamu yang sering mengerjakan proyek coding berat di laptop, fitur ini bakal sangat membantu.', 'uploads/1772962835_berita 7.png', 'image', 'admin@example.id', '2026-03-08 16:40:35', 'approved', '2026-03-08 02:40:43', '2026-03-08 02:40:35', '2026-03-08 02:40:43'),
(17, 'Sebelum Seperti Sekarang, YouTube Dulu Hampir Jadi Aplikasi Cari Jodoh', 'YouTube yang kini kita kenal sebagai platform berbagi video terbesar di dunia ternyata memiliki awal mula yang sangat berbeda. Pendirinya, Steve Chen, Chad Hurley, dan Jawed Karim, awalnya mendaftarkan domain YouTube pada Hari Valentine tahun 2005 dengan konsep sebagai situs kencan berbasis video (video dating site).\r\n\r\nPada saat itu, idenya adalah pengguna bisa mengunggah video diri mereka sendiri untuk memperkenalkan diri dan mencari pasangan dengan slogan \"Tune in, Hook up\". Namun, setelah lima hari situs tersebut berjalan, tidak ada satu pun pengguna yang mengunggah video. Para pendiri bahkan sempat menawarkan imbalan sebesar 20 dolar AS kepada perempuan untuk mengunggah video kencan mereka, namun tetap tidak berhasil.\r\n\r\nMenyadari konsep tersebut gagal, mereka akhirnya memutuskan untuk membuka platform tersebut bagi video apa saja. Perubahan arah ini terbukti sukses setelah video pertama berjudul \"Me at the zoo\" diunggah oleh Jawed Karim, yang kemudian mengubah YouTube menjadi perpustakaan video global hingga diakuisisi oleh Google seharga 1,65 miliar dolar AS pada tahun 2006.', 'sebelum-seperti-sekarang-youtube-dulu-hampir-jadi-aplikasi-cari-jodoh', 'Teknologi', 'Kisah ini adalah contoh klasik dari istilah pivot dalam dunia startup—ketika sebuah ide gagal, fleksibilitas untuk berubah adalah kunci kesuksesan.\r\n\r\nKegagalan yang Berbuah Manis: Bayangkan jika mereka bersikeras tetap menjadi aplikasi cari jodoh, mungkin YouTube tidak akan pernah sebesar sekarang dan hanya akan menjadi pesaing kecil bagi Tinder atau aplikasi kencan lainnya.\r\n\r\nKekuatan User: YouTube menjadi besar bukan karena visi awal penciptanya, tapi karena mereka mendengarkan bagaimana pengguna ingin menggunakan platform tersebut (yaitu untuk berbagi video apa saja, bukan cuma soal asmara).\r\n\r\nMomen \"Me at the Zoo\": Menarik melihat bagaimana video sederhana berdurasi 18 detik di depan kandang gajah bisa meruntuhkan konsep awal \"cari jodoh\" dan membangun fondasi bagi industri konten kreator modern.\r\n\r\nMengingat kamu juga sedang sering mengerjakan proyek pengembangan web dan aplikasi, kisah YouTube ini bisa jadi inspirasi kalau terkadang \"fitur utama\" yang kita rencanakan di awal justru kalah populer dibanding fitur tambahan yang disukai pengguna.', 'uploads/1772963538_berita8.png', 'image', 'admin@example.id', '2026-03-08 16:52:18', 'approved', '2026-03-08 02:52:26', '2026-03-08 02:52:18', '2026-03-08 02:52:26'),
(18, 'Cemas saat Menghadapi Matematika, Pertanda Bodoh atau Stres? Ini Kata Psikolog', 'Banyak orang merasa panik, berkeringat dingin, atau tiba-tiba \"blank\" saat harus mengerjakan soal matematika. Fenomena ini dikenal dalam dunia psikologi sebagai math anxiety (kecemasan matematika). Menurut para psikolog, kondisi ini bukanlah pertanda bahwa seseorang tidak cerdas atau bodoh, melainkan sebuah respons emosional yang menghambat kinerja kognitif.\r\n\r\nPsikolog menjelaskan bahwa ketika seseorang mengalami kecemasan matematika, otak bagian amygdala (pusat emosi) menjadi terlalu aktif, yang kemudian \"membajak\" kemampuan working memory (memori jangka pendek) yang sangat dibutuhkan untuk menghitung. Akibatnya, seseorang yang sebenarnya mampu secara intelektual bisa gagal mengerjakan soal hanya karena kapasitas otaknya habis digunakan untuk memproses rasa cemasnya.\r\n\r\nKondisi ini sering kali dipicu oleh pengalaman traumatis di masa lalu, seperti tekanan dari guru atau orang tua, serta stigma sosial bahwa matematika adalah pelajaran yang sangat sulit. Untuk mengatasinya, psikolog menyarankan teknik pernapasan untuk menenangkan saraf, mengubah pola pikir tentang kesalahan sebagai bagian dari belajar, serta latihan secara bertahap untuk membangun kepercayaan diri.', 'cemas-saat-menghadapi-matematika-pertanda-bodoh-atau-stres-ini-kata-psikolog', 'Edukasi', 'Berita ini sangat relevan dan memberikan perspektif yang membesarkan hati bagi siapa saja yang merasa \"alergi\" dengan angka. Beberapa poin pentingnya:\r\n\r\nMasalah Mental, Bukan Kognitif: Penting untuk memahami bahwa gagal di matematika sering kali bukan karena kurangnya logika, tapi karena \"blokade\" emosional. Ini mirip dengan stage fright (demam panggung) yang dialami penyanyi hebat sekalipun.\r\n\r\nMemori yang Terkuras: Fakta bahwa cemas bisa menghabiskan kapasitas working memory menjelaskan mengapa kita sering lupa rumus yang sebenarnya sudah kita hafal saat ujian berlangsung.\r\n\r\nPentingnya Lingkungan Belajar: Karena pemicunya sering kali adalah tekanan eksternal, cara mengajar yang lebih santai dan suportif bisa menjadi kunci untuk memutus rantai kecemasan ini.\r\n\r\nSebagai mahasiswa yang sering berkutat dengan logika pemrograman dan algoritma, mungkin kamu pernah merasakan hal serupa saat menghadapi bug yang sulit atau logika matematika di coding. Ternyata kuncinya memang ada pada manajemen stres sebelum masuk ke penyelesaian masalah teknisnya.', 'uploads/1772963764_berita9.jpg', 'image', 'admin@example.id', '2026-03-08 16:56:04', 'approved', '2026-03-08 02:56:09', '2026-03-08 02:56:04', '2026-03-08 02:56:09');

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
('Sein5FmHx6m5jlsqYpQDrv5dN2pATY4tVnvOU85B', 7, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaTlnQmZEMjN0VTlMd2RIdm5SRkJ5RkJiMmFHTTV6MFp2aWU1eGlmVSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Nzt9', 1780121866);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('user','admin') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'zeeshanraditya@gmail.com', '$2y$10$NTqNLq5GsVoLf3fx6.Qu8O.QE3mKUeHJ/JHRMhg0cTAdzZpfF4jre', 'user', NULL, NULL, NULL),
(2, 'alif@gmail.com', '$2y$10$7gzHItCGboCk4n5Ch10bDOjGulGaUxpO5RpUkPTVkKk/6K.mgZE3K', 'user', NULL, NULL, NULL),
(3, 'fariz@gmail.com', '$2y$10$1Kd8WUaG/O.l7uqEyL2ew.iN/0hu8qUEUD0N5D4VE9V2QepCzQK5C', 'user', NULL, NULL, NULL),
(5, 'zshn@gmail.com', '$2y$10$Mba6OQmduz1z9gfMLoEIu.RCW4ZhWpKFvFmeo/jI89WyW9g7dJA4u', 'user', NULL, NULL, NULL),
(6, 'joni@gmail.com', '$2y$10$7hKT3dZcn9tql3dqSRgWJObWnWJyxVCkQfBGLMBGHyogbm2XDChxO', 'user', NULL, NULL, NULL),
(7, 'admin@example.id', '$2y$12$zcKCd2WB9FZJTF8zGVoYSOm43oFahqosmKw7BTaxAH9DKHUclGFAu', 'admin', NULL, NULL, '2026-02-27 09:14:18'),
(9, 'keyshaputriazizah12@gmail.com', '$2y$10$U48g2y3r0ip13kPqMYtjfus/VEv/HUGsJeslqj4syBQoeONxVPSSq', 'user', NULL, NULL, NULL),
(10, 'laravel@gmail.com', '$2y$12$5cOM/LwJtkK9u9QWvRFlkuSGWyhWuCXfCgS4yLlON4JWkGKiQipui', 'user', NULL, '2026-02-27 09:09:58', '2026-02-27 09:09:58');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `last_activity` (`last_activity`);

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
-- AUTO_INCREMENT untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
