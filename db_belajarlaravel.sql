-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Agu 2023 pada 01.51
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_belajarlaravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_24_064847_create_t_siswa', 1),
(7, '2023_05_24_065450_add_goldar_t_siswa', 2),
(11, '2023_05_24_070429_change_jenkel_t_siswa', 3),
(12, '2023_05_26_011020_create_t_percobaan', 4),
(13, '2023_05_26_014804_create_t_kelas', 5),
(14, '2023_05_26_023527_add_lokasi_ruangan_t_kelas', 5),
(15, '2023_05_26_024348_modify_t_kelas_columns_length', 5),
(16, '2023_05_26_024822_add_nama_wali_kelas', 5),
(17, '2023_05_26_025221_drop_nama_wali_kelas_table', 5),
(18, '2023_05_26_025437_add_nama_wali_kelas_to_t_kelas', 5),
(19, '2023_05_26_030131_rename_nama_wali_kelas_column_in_t_kelas', 5),
(20, '2023_05_26_030443_rename_lokasi_tujuan_column_in_t_kelas', 5);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kelas`
--

CREATE TABLE `t_kelas` (
  `id` bigint(20) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `nama_Jurusan` varchar(50) NOT NULL,
  `nama_wali_kelas` varchar(50) NOT NULL,
  `lokasi_ruangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_kelas`
--

INSERT INTO `t_kelas` (`id`, `nama_kelas`, `nama_Jurusan`, `nama_wali_kelas`, `lokasi_ruangan`) VALUES
(5001, 'XI RPL 1', 'rekayasa perangkat lunak', 'fajar firmansyah', 'D22'),
(5002, 'XI RPL 2', 'rekayasa perangkat lunak', 'rani ratnaningsih', 'A26'),
(5003, 'XI TJKT 1', 'teknik komputer jaringan dan telekomunikasi', 'raden rizal firdaus', 'D21'),
(5004, 'XI TJKT 2', 'teknik komputer jaringan dan telekomunikasi', 'muhammad ryandi adnan', 'A28'),
(5005, 'XI DKV 1', 'desain komunikasi visual', 'susneti martiani ', 'D23'),
(5006, 'XI DKV 2', 'desain komunikasi visual', 'titin ', 'A22'),
(5007, 'XI TAV 1', 'teknik audio video', 'zafar shoddiq', 'E21'),
(5008, 'XI TAV 2', 'teknik audio video', 'irma ', 'D11'),
(5009, 'XI TAV 3', 'teknik audio video', 'nana suryana', 'E22'),
(5010, 'XI TAV 4', 'teknik audio video', 'agus', 'D13'),
(5011, 'XI TOI 1', 'teknik otomasi industri', 'nisrina ', 'B11'),
(5012, 'XI TOI 2', 'teknik otomasi industri', 'diki hidayat', 'E23'),
(5013, 'XI TOI 3', 'teknik otomasi industri', 'ikin sodikin', 'E24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_percobaan`
--

CREATE TABLE `t_percobaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kolom1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kolom2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kolom3` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kolom4` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kolom5` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kolom6` int(11) NOT NULL,
  `kolom7` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kolom8` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kolom9_tanggal` date NOT NULL,
  `kolom10` enum('ayam','sate') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kolom11` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kolom12` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kolom13` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kolom14` enum('pilihan1','pilihan2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kolom15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_siswa`
--

CREATE TABLE `t_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` int(11) NOT NULL,
  `nama_lengkap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenkel` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goldar` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `t_siswa`
--

INSERT INTO `t_siswa` (`id`, `nis`, `nama_lengkap`, `jenkel`, `goldar`, `created_at`, `updated_at`) VALUES
(563543, 5436334, 'dudi', 'l', 'o', '2023-05-09 07:50:15', '2023-05-17 07:50:15'),
(2113232, 4343232, 'irgi', 'l', 'a', '2023-05-16 07:49:34', '2023-05-17 07:49:34'),
(3348976, 8576456, 'asbi', 'l', 'b', '2023-05-25 07:50:15', '2023-05-10 07:50:15'),
(4242342, 2423434, 'isgi', 'p', 'o', '2023-05-24 07:47:17', '2023-05-18 07:47:17'),
(12112121, 232232, 'hasnat', 'l', 'o', '2023-05-04 07:47:17', '2023-05-31 07:47:17'),
(12112122, 2121212, 'arsyi', 'L', 'O', NULL, NULL),
(12112128, 1123, 'arsyo', 'L', 'O', NULL, NULL),
(12112129, 1212, 'arsyi', 'L', 'O', NULL, NULL),
(12112130, 1212, 'arsyi', 'L', 'O', NULL, NULL),
(12112131, 2121212, 'arsyi', 'L', 'B', NULL, NULL),
(12112132, 2121212, 'arsyi', 'L', 'B', NULL, NULL),
(12112133, 34322525, 'arsyi', 'P', 'A', NULL, NULL),
(12112134, 34322525, 'arsyo', 'P', 'AB', NULL, NULL),
(12112136, 112231, 'rudi', 'P', 'B', NULL, NULL),
(12112137, 21255, 'azmi', 'P', 'A', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `t_percobaan`
--
ALTER TABLE `t_percobaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_siswa`
--
ALTER TABLE `t_siswa`
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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_percobaan`
--
ALTER TABLE `t_percobaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_siswa`
--
ALTER TABLE `t_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12112138;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
