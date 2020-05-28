-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Bulan Mei 2020 pada 11.32
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mozarella_kios`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(70) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`, `foto`) VALUES
(1, 'revinda', '6ba215b3083c359b10cea44a6dc95fbc', 'mozarella.png'),
(2, 'eko', 'e5ea9b6d71086dfef3a15f726abcc5bf', 'mozarella.png'),
(8, 'malasngoding', '069c546d1d97fd9648d8142b3e0fd3a3', 'mozarella.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `jenis` text NOT NULL,
  `suplier` text NOT NULL,
  `modal` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sisa` int(11) NOT NULL,
  `gambarnya` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `jenis`, `suplier`, `modal`, `harga`, `jumlah`, `sisa`, `gambarnya`, `status`) VALUES
(14, 'Cheese Honey Love', 'Roti Keju', 'Mozarella Malang', 15000, 19500, 20, 10, 'cheesehoney.png', 'Ready!'),
(17, 'Coffe New Vrum', 'Roti Kopi', 'Mozarella Malang', 25000, 30000, 12, 7, 'coffeCrum.png', 'Ready!'),
(19, 'Cheese Tiramisu Brown', 'Roti Keju', 'Mozarella Malang', 27000, 32000, 10, 6, 'cheesetiram.jpg', 'Ready!'),
(20, 'Chocholate mix vanilla', 'Roti Cokelat', 'Mozarella Malang', 31000, 37000, 12, 4, 'chochomix.jpg', 'Ready!'),
(21, 'Chocolate with Strawberry', 'Roti Cokelat', 'Mozarella Malang', 20000, 27000, 7, 5, 'chocoStraw.png', 'Ready!'),
(22, 'Cheese Chalah Brioche', 'Roti Keju', 'Mozarella Malang', 27000, 35000, 9, 2, 'cheeseChallah.png', 'Out of Stock!'),
(23, 'Chocolate Ciabatta', 'Roti Cokelat', 'Mozarella Malang', 32000, 37000, 7, 5, 'chocoCiabatta.png', 'Out of Stock!'),
(24, 'Coffe Crunpet', 'Roti Kopi', 'Mozarella Malang', 32000, 40000, 15, 8, 'coffeeRum.png', 'Ready!'),
(25, 'Strawberry With Cream', 'Roti Strawberry', 'Mozarella Malang', 34000, 50000, 20, 5, 'strawCream.png', 'Out of Stock!'),
(26, 'Strawberry Ciabata', 'Roti Strawberry', 'Mozarella Malang', 30000, 35000, 18, 10, 'strawberryCiabata.png', 'Ready!'),
(27, 'Cheese Crunchberry', 'Roti Keju', 'Lapis Malang', 40000, 50000, 8, 6, 'crunchBerry.png', 'Ready!'),
(28, 'Chocolate Capuccino', 'Roti Cokelat', 'Mozarella Malang', 15000, 20000, 12, 2, 'chocoCap.png', 'Out of Stock!'),
(29, 'Cheese Mantab', 'Roti Keju', 'Lapis Malang', 35000, 45000, 14, 10, 'cheesemantab.png', 'Ready!'),
(30, 'Choco Milk Hazzelnut', 'Roti Cokelat', 'Mozarella Malang', 24000, 30000, 14, 8, 'choceHazelnut.png', 'Ready!'),
(31, 'Strawberry With Milk', 'Roti Strawberry', 'Mozarella Malang', 24000, 30000, 14, 11, 'strawMilk.png', 'Ready!'),
(32, 'Chocolate Milk', 'Roti Cokelat', 'Mozarella Malang', 20000, 25000, 12, 6, 'chocoMilk.png', 'Ready!');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_laku`
--

CREATE TABLE `barang_laku` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(20) NOT NULL,
  `laba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_laku`
--

INSERT INTO `barang_laku` (`id`, `tanggal`, `nama`, `jumlah`, `harga`, `total_harga`, `laba`) VALUES
(46, '2015-02-01', 'Cheese Honey Love', 2, 18500, 37000, 7000),
(47, '2015-02-02', 'Cheese Tiramisu Brown', 4, 32000, 128000, 20000),
(48, '2015-02-02', 'Coffe Crunpet', 2, 40000, 80000, 16000),
(49, '2015-02-03', 'Chocolate Milk', 1, 25000, 25000, 5000),
(50, '2015-02-01', 'Strawberry With Milk', 2, 30000, 60000, 12000),
(51, '2015-02-02', 'Strawberry Ciabata', 2, 35000, 70000, 10000),
(52, '2015-02-03', 'Choco Milk Hazzelnut', 1, 18000, 18000, 6000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keperluan` text NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `tanggal`, `keperluan`, `nama`, `jumlah`) VALUES
(1, '2015-02-06', 'de', 'diki', 1234);

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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'eko setio', 'eko@gmail.com', NULL, '$2y$10$QlVpD3kMgkH/U8/yAGc2IeZoZ9MxJIOKN7mam3b/ja9l/IWBU0eUO', NULL, '2020-05-21 21:46:04', '2020-05-21 21:46:04');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang_laku`
--
ALTER TABLE `barang_laku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
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
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `barang_laku`
--
ALTER TABLE `barang_laku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
