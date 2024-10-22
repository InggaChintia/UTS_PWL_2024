-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 25, 2024 at 01:31 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwl_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2024_09_11_022403_create_t_penjualan_table', 4),
(11, '2024_09_11_022528_create_t_stok_table', 4),
(12, '2024_09_11_022627_create_t_penjualan_detail_table', 4),
(16, '2014_10_12_000000_create_users_table', 5),
(17, '2014_10_12_100000_create_password_reset_tokens_table', 5),
(18, '2019_08_19_000000_create_failed_jobs_table', 5),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 5),
(20, '2024_09_11_013405_create_m_level_table', 5),
(21, '2024_09_11_015234_create_m_kategori_table', 5),
(22, '2024_09_11_015457_create_m_supplier_table', 5),
(23, '2024_09_11_020805_create_m_user_table', 5),
(24, '2024_09_11_022256_create_m_barang_table', 6),
(25, '2024_09_11_024143_create_t_penjualan_table', 7),
(26, '2024_09_11_024638_create_t_stok_table', 8),
(27, '2024_09_11_025045_create_t_penjualan_detail_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `m_barang`
--

CREATE TABLE `m_barang` (
  `barang_id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `barang_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` int NOT NULL,
  `harga_jual` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_barang`
--

INSERT INTO `m_barang` (`barang_id`, `kategori_id`, `barang_kode`, `barang_nama`, `harga_beli`, `harga_jual`, `created_at`, `updated_at`) VALUES
(1, 1, 'BRG001', 'Kaos Polos', 50000, 70000, NULL, NULL),
(2, 1, 'BRG002', 'Kemeja Formal', 80000, 100000, NULL, NULL),
(3, 1, 'BRG003', 'Celana Jeans', 130000, 150000, NULL, NULL),
(4, 1, 'BRG004', 'Jaket Kulit', 180000, 200000, NULL, NULL),
(5, 1, 'BRG005', 'Sepatu Sneakers', 450000, 400000, NULL, NULL),
(6, 2, 'BRG006', 'Sabun Mandi', 10000, 15000, NULL, NULL),
(7, 2, 'BRG007', 'Shampoo', 7000, 10000, NULL, NULL),
(8, 2, 'BRG008', 'Pasta Gigi', 4000, 7000, NULL, NULL),
(9, 2, 'BRG009', 'Deodoran', 15000, 20000, NULL, NULL),
(10, 2, 'BRG010', 'Lotion Kulit', 20000, 27000, NULL, NULL),
(11, 4, 'BRG011', 'Meja Makan', 200000, 250000, NULL, NULL),
(12, 4, 'BRG012', 'Kursi Tamu', 90000, 120000, NULL, NULL),
(13, 4, 'BRG013', 'Rak Buku', 50000, 80000, NULL, NULL),
(14, 4, 'BRG014', 'Sofa Minimalis', 60000, 100000, NULL, NULL),
(15, 4, 'BRG015', 'Lemari Pakaian', 500000, 700000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_kategori`
--

CREATE TABLE `m_kategori` (
  `kategori_id` bigint UNSIGNED NOT NULL,
  `kategori_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_kategori`
--

INSERT INTO `m_kategori` (`kategori_id`, `kategori_kode`, `kategori_nama`, `created_at`, `updated_at`) VALUES
(1, '001', 'Pakaian', NULL, NULL),
(2, '002', 'Bodycare', NULL, NULL),
(3, '003', 'Skincare', NULL, NULL),
(4, '004', 'Perabot Rumah Tangga', NULL, NULL),
(5, '005', 'Aksesoris', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_level`
--

CREATE TABLE `m_level` (
  `level_id` bigint UNSIGNED NOT NULL,
  `level_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_level`
--

INSERT INTO `m_level` (`level_id`, `level_kode`, `level_nama`, `created_at`, `updated_at`) VALUES
(1, 'ADM', 'Administrator', NULL, NULL),
(2, 'MNG', 'Manager', NULL, NULL),
(3, 'STF', 'Staff/Kasir', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_supplier`
--

CREATE TABLE `m_supplier` (
  `supplier_id` bigint UNSIGNED NOT NULL,
  `supplier_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_supplier`
--

INSERT INTO `m_supplier` (`supplier_id`, `supplier_kode`, `supplier_nama`, `supplier_alamat`, `created_at`, `updated_at`) VALUES
(1, 'SUP001', 'PT. Sumber Makmur', 'Jl. Kembang Turi No. 45, Jakarta', NULL, NULL),
(2, 'SUP002', 'CV. Bina Karya', 'Jl. Semanggi Barat No. 12, Surabaya', NULL, NULL),
(3, 'SUP003', 'Toko Mandiri Jaya', 'Jl. Senggani No. 78, Jakarta', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `user_id` bigint UNSIGNED NOT NULL,
  `level_id` bigint UNSIGNED NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`user_id`, `level_id`, `username`, `nama`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin utama', 'admin utama', '$2y$12$In5RGzZxL9kfYZcf7WbjcOeNjM0l/40CExOo8YCeTd2e3pt/geGji', NULL, '2024-09-19 21:50:18'),
(2, 2, 'manager', 'Manager', '$2y$12$p.h4/PL1kumVaDGL506Mbu2oUE.Ygg4VNP4cCWdP2zr9aWEcUoxo2', NULL, NULL),
(3, 3, 'staff', 'Staff/Kasir', '$2y$12$FLAX4ZvdfzL615Uc1rL3Re0uWMqXu5q/QtdC/ejRSylu1o.ZF5FLq', NULL, NULL),
(5, 3, 'customer-1', 'Pelanggan', '$2y$12$zM2jfafDlGd7vHM8kKnsLOekBS0tN.E9YRdHfmnBHp53njJeM/04q', NULL, NULL),
(7, 2, 'manager_dua', 'Manager 2', '$2y$12$HAGmsy6B2lMWbVAv1qPlj.ExXJ748NiiMCGg.ZxqTZIzoBHMO20UO', '2024-09-17 18:48:48', '2024-09-17 18:48:48'),
(8, 2, 'manager_tiga', 'Manager 3', '$2y$12$tXIOxzv7qZmEvqTytvqY/uLf05T8IKTqy1muPhbPrPwXsYZg2DKuu', '2024-09-17 19:01:26', '2024-09-17 19:01:26'),
(9, 2, 'manager22', 'Manager Dua Dua', '$2y$12$8kcKP8rri6JwbHlCKDyAyukMB58T8gu259tR97u8lkslMwaeITlP.', '2024-09-17 22:32:01', '2024-09-17 22:32:01'),
(10, 2, 'manager33', 'Manager Tiga Tiga', '$2y$12$TgksR1QP7t0ZtCXVocWUlep3D5iuS8mrOySenQ7hqXMVryaVkHyEe', '2024-09-17 22:39:44', '2024-09-17 22:39:44'),
(11, 2, 'manager56', 'Manager55', '$2y$12$P0rCbf9dYARa9gHWtWP1sOd17KvDgYSRpT2WM8umP4TVF.4mQozXS', '2024-09-17 22:54:15', '2024-09-17 22:54:15'),
(12, 2, 'manager12', 'Manager11', '$2y$12$LCxrn94mPsYHcerDGmXEuOwfWEwtBxBkDf88j1oi9QkT.szz.4vla', '2024-09-17 23:00:25', '2024-09-17 23:00:25'),
(20, 2, 'Ingga baru', 'Ingga baru', '$2y$12$wdptth7y8aTiKgq/hKzOOuxzstvfdDD2uu9V5Zd..8O39u/XKtZoy', '2024-09-19 20:46:12', '2024-09-19 20:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_penjualan`
--

CREATE TABLE `t_penjualan` (
  `penjualan_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `pembeli` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjualan_kode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjualan_tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_penjualan`
--

INSERT INTO `t_penjualan` (`penjualan_id`, `user_id`, `pembeli`, `penjualan_kode`, `penjualan_tanggal`, `created_at`, `updated_at`) VALUES
(1, 1, 'John Doe', 'PNJ001', '2024-09-01 00:00:00', NULL, NULL),
(2, 1, 'Jane Smith', 'PNJ002', '2024-09-02 00:00:00', NULL, NULL),
(3, 1, 'Michael Johnson', 'PNJ003', '2024-09-03 00:00:00', NULL, NULL),
(4, 1, 'Emily Davis', 'PNJ004', '2024-09-04 00:00:00', NULL, NULL),
(5, 1, 'David Wilson', 'PNJ005', '2024-09-05 00:00:00', NULL, NULL),
(6, 1, 'Olivia Brown', 'PNJ006', '2024-09-06 00:00:00', NULL, NULL),
(7, 1, 'James Garcia', 'PNJ007', '2024-09-07 00:00:00', NULL, NULL),
(8, 1, 'Sophia Martinez', 'PNJ008', '2024-09-08 00:00:00', NULL, NULL),
(9, 1, 'Liam Anderson', 'PNJ009', '2024-09-09 00:00:00', NULL, NULL),
(10, 1, 'Isabella Thomas', 'PNJ010', '2024-09-10 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_penjualan_detail`
--

CREATE TABLE `t_penjualan_detail` (
  `detail_id` bigint UNSIGNED NOT NULL,
  `penjualan_id` bigint UNSIGNED NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `harga` int NOT NULL,
  `jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_penjualan_detail`
--

INSERT INTO `t_penjualan_detail` (`detail_id`, `penjualan_id`, `barang_id`, `harga`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10000, 2, NULL, NULL),
(2, 1, 2, 5000, 1, NULL, NULL),
(3, 1, 3, 20000, 5, NULL, NULL),
(4, 2, 4, 15000, 3, NULL, NULL),
(5, 2, 5, 12000, 2, NULL, NULL),
(6, 2, 6, 8000, 4, NULL, NULL),
(7, 3, 7, 25000, 1, NULL, NULL),
(8, 3, 8, 7000, 3, NULL, NULL),
(9, 3, 9, 15000, 2, NULL, NULL),
(10, 4, 10, 3000, 5, NULL, NULL),
(11, 4, 11, 40000, 2, NULL, NULL),
(12, 4, 12, 10000, 1, NULL, NULL),
(13, 5, 13, 6000, 4, NULL, NULL),
(14, 5, 14, 12000, 3, NULL, NULL),
(15, 5, 15, 25000, 2, NULL, NULL),
(16, 6, 1, 35000, 1, NULL, NULL),
(17, 6, 1, 8000, 3, NULL, NULL),
(18, 6, 5, 10000, 5, NULL, NULL),
(19, 7, 8, 20000, 2, NULL, NULL),
(20, 7, 2, 15000, 4, NULL, NULL),
(21, 7, 3, 5000, 3, NULL, NULL),
(22, 8, 2, 7000, 6, NULL, NULL),
(23, 8, 9, 30000, 2, NULL, NULL),
(24, 8, 6, 5000, 1, NULL, NULL),
(25, 9, 8, 10000, 3, NULL, NULL),
(26, 9, 6, 20000, 1, NULL, NULL),
(27, 9, 7, 12000, 4, NULL, NULL),
(28, 10, 8, 15000, 5, NULL, NULL),
(29, 10, 3, 6000, 3, NULL, NULL),
(30, 10, 2, 25000, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_stok`
--

CREATE TABLE `t_stok` (
  `stok_id` bigint UNSIGNED NOT NULL,
  `supplier_id` bigint UNSIGNED NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `stok_tanggal` datetime NOT NULL,
  `stok_jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_stok`
--

INSERT INTO `t_stok` (`stok_id`, `supplier_id`, `barang_id`, `user_id`, `stok_tanggal`, `stok_jumlah`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2023-09-01 00:00:00', 100, NULL, NULL),
(2, 1, 2, 2, '2023-09-02 00:00:00', 50, NULL, NULL),
(3, 1, 3, 3, '2023-09-03 00:00:00', 75, NULL, NULL),
(4, 1, 4, 3, '2023-09-04 00:00:00', 30, NULL, NULL),
(5, 1, 5, 3, '2023-09-05 00:00:00', 40, NULL, NULL),
(6, 2, 6, 2, '2023-09-01 00:00:00', 200, NULL, NULL),
(7, 2, 7, 2, '2023-09-02 00:00:00', 180, NULL, NULL),
(8, 2, 8, 2, '2023-09-03 00:00:00', 250, NULL, NULL),
(9, 2, 9, 2, '2023-09-04 00:00:00', 150, NULL, NULL),
(10, 2, 10, 2, '2023-09-05 00:00:00', 120, NULL, NULL),
(11, 3, 11, 1, '2023-09-01 00:00:00', 20, NULL, NULL),
(12, 3, 12, 1, '2023-09-02 00:00:00', 25, NULL, NULL),
(13, 3, 13, 1, '2023-09-03 00:00:00', 50, NULL, NULL),
(14, 3, 14, 1, '2023-09-04 00:00:00', 10, NULL, NULL),
(15, 3, 15, 1, '2023-09-05 00:00:00', 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_barang`
--
ALTER TABLE `m_barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD UNIQUE KEY `m_barang_barang_kode_unique` (`barang_kode`),
  ADD KEY `m_barang_kategori_id_index` (`kategori_id`);

--
-- Indexes for table `m_kategori`
--
ALTER TABLE `m_kategori`
  ADD PRIMARY KEY (`kategori_id`),
  ADD UNIQUE KEY `m_kategori_kategori_kode_unique` (`kategori_kode`);

--
-- Indexes for table `m_level`
--
ALTER TABLE `m_level`
  ADD PRIMARY KEY (`level_id`),
  ADD UNIQUE KEY `m_level_level_kode_unique` (`level_kode`);

--
-- Indexes for table `m_supplier`
--
ALTER TABLE `m_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `m_supplier_supplier_kode_unique` (`supplier_kode`);

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `m_user_username_unique` (`username`),
  ADD KEY `m_user_level_id_index` (`level_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD PRIMARY KEY (`penjualan_id`),
  ADD UNIQUE KEY `t_penjualan_penjualan_kode_unique` (`penjualan_kode`),
  ADD KEY `t_penjualan_user_id_index` (`user_id`);

--
-- Indexes for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `t_penjualan_detail_penjualan_id_index` (`penjualan_id`),
  ADD KEY `t_penjualan_detail_barang_id_index` (`barang_id`);

--
-- Indexes for table `t_stok`
--
ALTER TABLE `t_stok`
  ADD PRIMARY KEY (`stok_id`),
  ADD KEY `t_stok_supplier_id_index` (`supplier_id`),
  ADD KEY `t_stok_barang_id_index` (`barang_id`),
  ADD KEY `t_stok_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `m_barang`
--
ALTER TABLE `m_barang`
  MODIFY `barang_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `m_kategori`
--
ALTER TABLE `m_kategori`
  MODIFY `kategori_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `m_level`
--
ALTER TABLE `m_level`
  MODIFY `level_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_supplier`
--
ALTER TABLE `m_supplier`
  MODIFY `supplier_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `user_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  MODIFY `penjualan_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  MODIFY `detail_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `t_stok`
--
ALTER TABLE `t_stok`
  MODIFY `stok_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `m_barang`
--
ALTER TABLE `m_barang`
  ADD CONSTRAINT `m_barang_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `m_kategori` (`kategori_id`);

--
-- Constraints for table `m_user`
--
ALTER TABLE `m_user`
  ADD CONSTRAINT `m_user_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `m_level` (`level_id`);

--
-- Constraints for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD CONSTRAINT `t_penjualan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);

--
-- Constraints for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  ADD CONSTRAINT `t_penjualan_detail_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `m_barang` (`barang_id`),
  ADD CONSTRAINT `t_penjualan_detail_penjualan_id_foreign` FOREIGN KEY (`penjualan_id`) REFERENCES `t_penjualan` (`penjualan_id`);

--
-- Constraints for table `t_stok`
--
ALTER TABLE `t_stok`
  ADD CONSTRAINT `t_stok_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `m_barang` (`barang_id`),
  ADD CONSTRAINT `t_stok_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `m_supplier` (`supplier_id`),
  ADD CONSTRAINT `t_stok_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
