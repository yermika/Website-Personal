-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Agu 2024 pada 08.06
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_surat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `disposisi`
--

CREATE TABLE `disposisi` (
  `No_Agenda` int(11) NOT NULL,
  `Hal` varchar(255) NOT NULL,
  `Sifat_Surat` varchar(255) NOT NULL,
  `Tujuan_Disposisi` varchar(255) NOT NULL,
  `Catatan_Disposisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Foto` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2024-10-24 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `Username`, `Password`, `Email`, `Foto`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`) VALUES
(1, 'admin', '$2y$10$iQsl5h0ojOcPDouw33VpS.G4o/Cu5by9/JfEn7kMZjq5P2zjjPRHq', 'admin@gmail.com', 'http://localhost/appsurat/uploads/files/konfi0a2w1jmhtr.png', NULL, NULL, '2024-10-24 00:00:00', NULL),
(2, 'user', '$2y$10$a3jcvNF.OTcy1Ek0kQToa.K5hUNoqRaW7xC8ymk8bWxGxj38r0kuK', 'user@gmail.com', 'http://localhost/appsurat/uploads/files/coq_xzjhkdb5pi6.png', NULL, NULL, '2024-10-24 00:00:00', NULL),
(3, 'users', '$2y$10$Y0vq0gcYSePmbbIRWU7GW.4LAyCsDE2GBoYYFhVm2XxhVEL65nn66', 'users@gmail.com', 'http://localhost/appsurat/uploads/files/_ynv108mr9xpcjb.png', NULL, NULL, '2024-10-24 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sifat_surat`
--

CREATE TABLE `sifat_surat` (
  `id` int(11) NOT NULL,
  `Sifat_Surat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sifat_surat`
--

INSERT INTO `sifat_surat` (`id`, `Sifat_Surat`) VALUES
(1, 'Segera'),
(2, 'Sangat Segera'),
(3, 'Rahasia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `No_Agenda` int(11) NOT NULL,
  `Nomor_Surat` varchar(255) NOT NULL,
  `Alamat_Surat` varchar(255) NOT NULL,
  `Tanggal_Surat` date NOT NULL,
  `Tanggal_Diterima` date NOT NULL,
  `Perihal` varchar(255) NOT NULL,
  `File_Surat` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `No_agenda` int(11) NOT NULL,
  `Nomor_Surat` varchar(255) NOT NULL,
  `Alamat_Pengirim` varchar(255) NOT NULL,
  `Tanggal_Surat` date NOT NULL,
  `Tanggal_Terima` date NOT NULL,
  `Perihal` varchar(255) NOT NULL,
  `Tujuan` varchar(255) NOT NULL,
  `File` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tujuan_disposisi`
--

CREATE TABLE `tujuan_disposisi` (
  `id` int(11) NOT NULL,
  `Tujuan_Disposisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tujuan_disposisi`
--

INSERT INTO `tujuan_disposisi` (`id`, `Tujuan_Disposisi`) VALUES
(1, 'KETUA MRP'),
(6, 'SEKRETARIS');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`No_Agenda`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sifat_surat`
--
ALTER TABLE `sifat_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`No_Agenda`);

--
-- Indeks untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`No_agenda`);

--
-- Indeks untuk tabel `tujuan_disposisi`
--
ALTER TABLE `tujuan_disposisi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  MODIFY `No_Agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sifat_surat`
--
ALTER TABLE `sifat_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `No_Agenda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `No_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tujuan_disposisi`
--
ALTER TABLE `tujuan_disposisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
