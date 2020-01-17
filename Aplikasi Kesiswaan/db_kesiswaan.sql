-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Nov 2019 pada 04.46
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kesiswaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_akun`
--

CREATE TABLE `t_akun` (
  `nama` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_akun`
--

INSERT INTO `t_akun` (`nama`, `username`, `password`) VALUES
('d', 'd', 'd'),
('s', 's', 's'),
('', 'sd', 'sd'),
('w', 'w', 'w');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_eks_basket`
--

CREATE TABLE `t_eks_basket` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `nohp` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_eks_basket`
--

INSERT INTO `t_eks_basket` (`id`, `nama`, `kelas`, `jurusan`, `nohp`, `email`, `alamat`) VALUES
(2, 'ss', 'ss', 'ss', 'ss', 'ss', 'ss');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_eks_futsal`
--

CREATE TABLE `t_eks_futsal` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `nohp` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_eks_futsal`
--

INSERT INTO `t_eks_futsal` (`id`, `nama`, `kelas`, `jurusan`, `nohp`, `email`, `alamat`) VALUES
(1, 'asasa', 'aa', 'aa', 'aa', 'aa', 'aa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_eks_paskibra`
--

CREATE TABLE `t_eks_paskibra` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `nohp` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_eks_paskibra`
--

INSERT INTO `t_eks_paskibra` (`id`, `nama`, `kelas`, `jurusan`, `nohp`, `email`, `alamat`) VALUES
(2, 'jk', 'jkl', 'jkl', 'jkl', 'jkl', 'hjkkloii');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_eks_voli`
--

CREATE TABLE `t_eks_voli` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `nohp` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_eks_voli`
--

INSERT INTO `t_eks_voli` (`id`, `nama`, `kelas`, `jurusan`, `nohp`, `email`, `alamat`) VALUES
(1, 'aa', 'aa', 'aaa', 'aa', 'aa', 'aa'),
(2, 'zz', 'zz', 'zz', 'zz', 'zz', 'zz');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kom_koppi`
--

CREATE TABLE `t_kom_koppi` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `nohp` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_kom_koppi`
--

INSERT INTO `t_kom_koppi` (`id`, `nama`, `kelas`, `jurusan`, `nohp`, `email`, `alamat`) VALUES
(2, 'jk', 'jkl', 'jkl', 'j', 'jkl', 'hjkkloii');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kom_perkusi`
--

CREATE TABLE `t_kom_perkusi` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `nohp` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_kom_perkusi`
--

INSERT INTO `t_kom_perkusi` (`id`, `nama`, `kelas`, `jurusan`, `nohp`, `email`, `alamat`) VALUES
(1, 'b', 'nm', 'b', 'b', 'nmnn', 'bnn'),
(2, 'jk', 'jkl', 'jkl', 'kkklkj', 'jkl', 'hjkkloii');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_akun`
--
ALTER TABLE `t_akun`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `t_eks_basket`
--
ALTER TABLE `t_eks_basket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_eks_futsal`
--
ALTER TABLE `t_eks_futsal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nohp` (`nohp`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `t_eks_paskibra`
--
ALTER TABLE `t_eks_paskibra`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_eks_voli`
--
ALTER TABLE `t_eks_voli`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_kom_koppi`
--
ALTER TABLE `t_kom_koppi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_kom_perkusi`
--
ALTER TABLE `t_kom_perkusi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_eks_basket`
--
ALTER TABLE `t_eks_basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `t_eks_futsal`
--
ALTER TABLE `t_eks_futsal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_eks_paskibra`
--
ALTER TABLE `t_eks_paskibra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `t_eks_voli`
--
ALTER TABLE `t_eks_voli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `t_kom_koppi`
--
ALTER TABLE `t_kom_koppi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `t_kom_perkusi`
--
ALTER TABLE `t_kom_perkusi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
