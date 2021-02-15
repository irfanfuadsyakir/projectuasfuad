-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Feb 2021 pada 08.49
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `i_mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_mahasiswa`
--

CREATE TABLE `is_mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `is_mahasiswa`
--

INSERT INTO `is_mahasiswa` (`nim`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `alamat`, `telepon`, `foto`) VALUES
('1731200001', 'Dedi Saputra', 'Bandar Lampung', '1990-02-01', 'Laki-laki', 'Islam', 'Jalan Gatot Subroto No. 10, Bandar Lampung', '085758857775', 'img-2.png'),
('1731200002', 'Iskadina Eka Putri', 'Jakarta', '1993-05-02', 'Perempuan', 'Islam', 'Jalan Pagar Alam No. 15, Kedaton, Bandar Lampung', '085789892909', 'img-11.png'),
('1731200003', 'Indra Styawantoro', 'Purbolinggo', '1991-05-15', 'Laki-laki', 'Islam', 'Perum Griya Gedung Meneng Blok C2 No. 2, Rajabasa, Bandar Lampung', '085669919769', 'img-6.png'),
('1731200004', 'Ayu Nurlina', 'Jakarta', '1994-12-19', 'Perempuan', 'Islam', 'Jalan Radin Intan No. 77, Tanjung Karang, Bandar Lampung', '089977955772', 'img-9.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `email`, `password`) VALUES
(1, '', 'saul', 'saul.santoa@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(2, '', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
(3, '', 'gerva', 'sudji@gami', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(4, '', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
(5, '', 'sss', 'sudji@gami', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(6, '', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
(7, '', 'ss', 'ss', '17ba0791499db908433b80f37c5fbc89b870084b'),
(8, '', 'ss', 'ss', '17ba0791499db908433b80f37c5fbc89b870084b'),
(9, '', 'ss', 's', '17ba0791499db908433b80f37c5fbc89b870084b'),
(10, '', 'ss', 'sdsd', '7b52009b64fd0a2a49e6d8a939753077792b0554'),
(11, '', 'kaka', 'ASA@DSDSD', '17ba0791499db908433b80f37c5fbc89b870084b'),
(12, '', 'didi', 'sasasaa@ddd.com', '17ba0791499db908433b80f37c5fbc89b870084b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(9) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'aa', 'aa', '17ba0791499db908433b80f37c5fbc'),
(2, 'aa', 'aaa@gmail.com', '40bd001563085fc35165329ea1ff5c'),
(3, 'sasa', '', '12c6fc06c99a462375eeb3f43dfd83');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `is_mahasiswa`
--
ALTER TABLE `is_mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
