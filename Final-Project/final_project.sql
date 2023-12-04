-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Nov 2023 pada 13.03
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_project`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_t_complaint`
--

CREATE TABLE `tbl_t_complaint` (
  `id_ttc` int(11) NOT NULL,
  `date_ttc` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_tmu` int(11) NOT NULL,
  `title_ttc` varchar(225) NOT NULL,
  `reply_tmu` varchar(225) NOT NULL,
  `status_ttc` enum('open','close','pending','') NOT NULL,
  `status_deactived_ttc` tinyint(4) NOT NULL DEFAULT 0,
  `status_deleted_ttc` tinyint(4) NOT NULL DEFAULT 0,
  `created_by_ttc` int(11) NOT NULL,
  `created_date_ttc` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_by_ttc` int(11) DEFAULT NULL,
  `update_date_ttc` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_t_complaint`
--
ALTER TABLE `tbl_t_complaint`
  ADD PRIMARY KEY (`id_ttc`),
  ADD UNIQUE KEY `id_tmu` (`id_tmu`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_t_complaint`
--
ALTER TABLE `tbl_t_complaint`
  MODIFY `id_ttc` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
