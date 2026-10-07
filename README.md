# 🗄️ Backup Database SQL (7 Juli 2026)

Repositori ini berisi kumpulan berkas cadangan database (*database dump*) MySQL dari berbagai proyek web dan aplikasi latihan/portofolio yang dikembangkan oleh **Raditya Rai Zeeshan** ([@zshnrdtya](https://github.com/zshnrdtya)).

---

## 📌 Informasi Lingkungan Backup

Dump database ini diekspor dengan spesifikasi lingkungan berikut:
- **Alat Ekspor:** phpMyAdmin v5.2.3
- **Database Engine:** MySQL 8.0.30
- **Versi PHP:** PHP 8.3.12
- **Host / Port:** `localhost:3306`
- **Format Karakter:** `utf8mb4` / `utf8mb4_unicode_ci`
- **Tanggal Backup:** 7 Juli 2026

---

## 📂 Ringkasan & Katalog Database

Terdapat **18 berkas SQL** dalam folder ini dengan fungsi dan domain yang berbeda:

| No | Nama Berkas | Ukuran | Framework / Stack | Tabel Domain Utama | Deskripsi Singkat |
|:---:|:---|:---:|:---:|:---|:---|
| 1 | `3role.sql` | ~16.5 KB | Laravel | `barangs`, `bookings`, `services`, `transaksis`, `users` | Sistem manajemen antrean & booking servis bengkel motor/mobil dengan 3 level hak akses (Admin, Mekanik, Pelanggan). |
| 2 | `accusoft_db.sql` | ~5.1 KB | Custom / PHP | `orders`, `projects`, `users` | Sistem informasi manajemen proyek software development dan pemesanan layanan (Accusoft). |
| 3 | `auth_dashboard.sql` | ~1.8 KB | PHP / Native | `users` | Starter template database untuk sistem autentikasi (login/register) dan dashboard pengguna. |
| 4 | `belajar_raditya.sql` | ~2.2 KB | Native PHP / Latihan | `kategori`, `produk` | Database latihan operasi CRUD dasar untuk relasi kategori dan produk barang. |
| 5 | `boafutsalv1.sql` | ~19.3 KB | Laravel | `bookings`, `contact_messages`, `fields`, `field_prices`, `payments`, `users` | Sistem pemesanan & penyewaan lapangan futsal (BOA Futsal v1) dengan konfigurasi harga member/reguler, slot jam, serta bukti pembayaran. |
| 6 | `dailylife_taskmanager.sql` | ~11.1 KB | Laravel | `tasks`, `users` | Aplikasi manajemen aktivitas & daftar tugas harian (*To-Do / Task Manager*) dengan kategori status dan deadline. |
| 7 | `db_sekolah.sql` | ~9.3 KB | Laravel | `siswas`, `users` | Sistem informasi pencatatan data akademik dan profil siswa sekolah. |
| 8 | `kasir_umkm.sql` | ~7.6 KB | PHP / POS | `hutang`, `hutang_bayar`, `produk`, `transaksi`, `transaksi_item`, `users` | Sistem Kasir / Point of Sale (POS) UMKM dengan fitur pencatatan hutang-piutang pelanggan, manajemen stok, dan detail struk belanja. |
| 9 | `laptop_store.sql` | ~4.1 KB | PHP / E-Commerce | `laptops`, `users` | Katalog dan toko online penjualan laptop beserta rincian spesifikasi perangkat. |
| 10 | `nyoba_gitlab.sql` | ~8.0 KB | Laravel | `users`, *laravel auth/system* | Proyek skema Laravel untuk pengujian integrasi repositori & CI/CD GitLab. |
| 11 | `portfolio_db.sql` | ~2.6 KB | PHP / Portofolio | `messages`, `users` | Database website portofolio pribadi untuk penampung pesan kontak pengunjung (*contact inbox*) dan autentikasi admin. |
| 12 | `porto_b5.sql` | ~2.5 KB | PHP / Bootstrap 5 | `tbl_guestbook`, `tbl_users` | Database pendukung website portofolio berbasis Bootstrap 5 dengan fitur buku tamu. |
| 13 | `stepennews.sql` | ~32.5 KB | Laravel | `activity_logs`, `news`, `users` | Portal CMS berita online (Stepen News) dengan manajemen artikel berita, kategori, media gambar/video, dan log aktivitas admin. |
| 14 | `tokohpbekas.sql` | ~6.4 KB | PHP / E-Commerce | `admins`, `orders`, `products`, `users` | Toko online / platform jual beli handphone bekas lengkap dengan bukti bayar dan kontak penjual. |
| 15 | `webaaa.sql` | ~29.3 KB | Laravel | `activity_logs`, `announcements`, `events`, `galleries`, `guestbooks`, `hall_of_fames`, `members`, `projects`, `quotes`, `timelines`, `users` | Portal web komunitas/organisasi terpadu dengan modul kegiatan (*events*), galeri foto, rekam jejak (*timeline*), anggota, pengumuman, dan karya proyek. |
| 16 | `website-futsal.sql` | ~10.4 KB | Laravel | `bookings`, `fields`, `users` | Sistem reservasi sewa lapangan futsal versi standar/dasar. |
| 17 | `website-indi.sql` | ~7.5 KB | Laravel | `users`, *laravel system tables* | Skema dasar proyek website profil/aplikasi Indi. |
| 18 | `websiteumkm.sql` | ~17.0 KB | Laravel | `categories`, `orders`, `products`, `users` | Website katalog dan pemesanan produk UMKM dengan kategori, keranjang/order, serta integrasi kontak WhatsApp. |

---

## 🚀 Panduan Import Database

Pilih salah satu metode di bawah ini untuk memulihkan (*restore*) berkas `.sql` ke dalam MySQL Server Anda.

### 1. Menggunakan Command Line (Terminal / CMD / PowerShell)

1. Buat database baru di MySQL terlebih dahulu:
   ```sql
   CREATE DATABASE nama_database_tujuan CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
   ```
2. Jalankan perintah import melalui terminal:
   ```bash
   mysql -u root -p nama_database_tujuan < "nama_berkas.sql"
   ```
   *Contoh untuk mengimpor `kasir_umkm.sql`:*
   ```bash
   mysql -u root -p kasir_umkm < "kasir_umkm.sql"
   ```

---

### 2. Menggunakan phpMyAdmin

1. Buka browser dan akses **phpMyAdmin** (biasanya di `http://localhost/phpmyadmin`).
2. Buat database baru pada panel kiri (klik menu **New** / **Baru**).
3. Masuk ke tab **Import** pada navigasi atas.
4. Klik tombol **Choose File** / **Pilih Berkas**, lalu pilih berkas `.sql` yang ingin diimpor.
5. Gulir ke bawah dan klik tombol **Import** / **Kirim**.

---

### 3. Menggunakan Database Client GUI (DBeaver / HeidiSQL / Navicat)

1. Buka aplikasi database client pilihan Anda dan hubungkan ke server MySQL lokal.
2. Buat database / skema baru.
3. Klik kanan pada database tersebut -> pilih menu **Execute SQL Script** atau **Run SQL File**.
4. Arahkan ke berkas `.sql` yang bersangkutan dan jalankan eksekusi script.

---

## ⚙️ Catatan Konfigurasi untuk Proyek Laravel

Sebagian besar database di repositori ini berasal dari proyek berbasis **Laravel Framework**. Jika Anda menghubungkan aplikasi Laravel ke database ini, pastikan pengaturan berkas `.env` aplikasi Anda disesuaikan:

```dotenv
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=nama_database_anda
DB_USERNAME=root
DB_PASSWORD=
```

---

## 👤 Informasi Pemilik

- **Pengembang:** Raditya Rai Zeeshan
- **GitHub:** [@zshnrdtya](https://github.com/zshnrdtya)
- **Email:** `radityaraizeeshan@gmail.com`
- **Tanggal Pencadangan:** Juli 2026
