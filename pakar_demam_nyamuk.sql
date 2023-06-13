-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jun 2023 pada 01.47
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
-- Database: `pakar_demam_nyamuk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kesimpulan`
--

CREATE TABLE `tb_kesimpulan` (
  `kode_kesimpulan` int(11) NOT NULL,
  `solusi` varchar(50) NOT NULL,
  `fakta` varchar(100) NOT NULL,
  `oleh` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kesimpulan`
--

INSERT INTO `tb_kesimpulan` (`kode_kesimpulan`, `solusi`, `fakta`, `oleh`, `status`) VALUES
(1, 'Demam Berdarah', 'Suhu tubuh tinggi', 'pakar', 'setuju'),
(2, 'Demam Berdarah', 'Pembengkakan pada kelenjar getah bening', 'pakar', 'setuju'),
(3, 'Demam Berdarah', 'Munculnya ruam pada kulit', 'pakar', 'setuju'),
(4, 'Demam Berdarah', 'Mengalami Muntah', 'pakar', 'setuju'),
(5, 'Demam Berdarah', 'Nyeri pada sendi dan otot berat', 'pakar', 'setuju'),
(6, 'Demam Berdarah', 'Demam dalam jangka waktu lama', 'pakar', 'setuju'),
(7, 'Malaria', 'Suhu tubuh tinggi', 'pakar', 'setuju'),
(8, 'Malaria', 'Mengalami batuk', 'pakar', 'setuju'),
(9, 'Malaria', 'Mengalami kejang', 'pakar', 'setuju'),
(10, 'Malaria', 'Demam dalam jangka waktu lama', 'pakar', 'setuju'),
(11, 'Malaria', 'Mengalami anemia', 'pakar', 'setuju'),
(12, 'Chikungunya', 'Suhu tubuh tinggi', 'pakar', 'setuju'),
(13, 'Chikungunya', 'Nyeri pada sendi dan otot berat', 'pakar', 'setuju'),
(14, 'Chikungunya', 'Mengalami muntah', 'pakar', 'setuju'),
(15, 'Chikungunya', 'terasa seperti mengalami kelumpuhan', 'pakar', 'setuju');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pertanyaan`
--

CREATE TABLE `tb_pertanyaan` (
  `kode_pertanyaan` varchar(50) NOT NULL,
  `isi_pertanyaan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pertanyaan`
--

INSERT INTO `tb_pertanyaan` (`kode_pertanyaan`, `isi_pertanyaan`) VALUES
('b1', 'Apakah suhu tubuh anda tinggi?'),
('b1-a', 'Apakah anda memiliki gejala demam dalam jangka waktu lama?'),
('b1-b', 'Apakah anda memiliki gejala nyeri pada sendi dan otot berat?'),
('b2', 'Apakah anda memiliki gejala pembengkakan pada kelenjar Getah bening?'),
('b2-a', 'Apakah anda memiliki gejala batuk?'),
('b2-b', 'Apakah anda memiliki gejala muntah?'),
('b3', 'Apakah anda memiliki gejala munculnya ruam pada kulit?'),
('b3-a', 'Apakah anda memiliki gejala kejang - kejang?'),
('b3-b', 'Apakah anda merasa seperti mengalami kelumpuhan?'),
('b4', 'Apakah anda memiliki gejala muntah?'),
('b4-a', 'Apakah anda mengalami gejala anemia?'),
('b5', 'Apakah anda memiliki gejala nyeri pada sendi otot berat?'),
('b6', 'Apakah anda memiliki gejala demam dalam jangka waktu lama?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_solusi`
--

CREATE TABLE `tb_solusi` (
  `kode_solusi` varchar(50) NOT NULL,
  `isi_solusi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_solusi`
--

INSERT INTO `tb_solusi` (`kode_solusi`, `isi_solusi`) VALUES
('A1', 'Demam Berdarah'),
('A2', 'Malaria'),
('A3', 'Chikungunya');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_kesimpulan`
--
ALTER TABLE `tb_kesimpulan`
  ADD PRIMARY KEY (`kode_kesimpulan`);

--
-- Indeks untuk tabel `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  ADD PRIMARY KEY (`kode_pertanyaan`);

--
-- Indeks untuk tabel `tb_solusi`
--
ALTER TABLE `tb_solusi`
  ADD PRIMARY KEY (`kode_solusi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_kesimpulan`
--
ALTER TABLE `tb_kesimpulan`
  MODIFY `kode_kesimpulan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
