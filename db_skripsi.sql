-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 05:59 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_evaluasi`
--

CREATE TABLE `jawaban_evaluasi` (
  `id_jawabaneval` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_latihan`
--

CREATE TABLE `jawaban_latihan` (
  `id_jawabanlatihan` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `jawaban` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban_latihan`
--

INSERT INTO `jawaban_latihan` (`id_jawabanlatihan`, `id_siswa`, `id_soal`, `jawaban`) VALUES
(1, 0, 1, '0'),
(2, 0, 1, '0'),
(3, 0, 1, '0'),
(4, 0, 2, '0'),
(5, 0, 2, '0'),
(6, 2, 2, '0'),
(7, 2, 2, 'Atribut'),
(8, 2, 3, 'Relasi');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_tugas`
--

CREATE TABLE `jawaban_tugas` (
  `id_jawabantugas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `jawaban` varchar(255) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban_tugas`
--

INSERT INTO `jawaban_tugas` (`id_jawabantugas`, `id_siswa`, `jawaban`, `tanggal`) VALUES
(1, 0, 'Test 123', '2020-09-07'),
(2, 2, 'dini hehehe', '2020-10-10'),
(3, 2, 'test 123', '2020-10-10'),
(4, 2, 'test lagi\r\n', '2020-10-10'),
(5, 2, 'test lagi\r\n', '2020-10-10'),
(6, 2, 'test lagi lagi bismillah', '2020-10-10'),
(7, 2, 'bismillah', '2020-10-10'),
(8, 2, '', '2020-10-22'),
(9, 2, 'hahaha', '2020-10-23');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(11) NOT NULL,
  `materi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `materi`) VALUES
(1, 'Entitas'),
(2, 'Atribut'),
(3, 'Relasi'),
(4, 'Kardinalitas');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_latihan`
--

CREATE TABLE `nilai_latihan` (
  `id_nilailatihan` int(11) NOT NULL,
  `id_materi` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai_latihan`
--

INSERT INTO `nilai_latihan` (`id_nilailatihan`, `id_materi`, `id_siswa`, `nilai`, `tanggal`) VALUES
(1, 1, 0, 20, '2020-07-03'),
(2, 1, 0, 0, '2020-07-03'),
(3, 1, 0, 0, '2020-07-03'),
(4, 2, 0, 0, '2020-07-03'),
(5, 2, 0, 20, '2020-07-03'),
(6, 2, 2, 0, '2020-10-10'),
(7, 2, 2, 20, '2020-10-10'),
(8, 3, 2, 20, '2020-10-22');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_tugas`
--

CREATE TABLE `nilai_tugas` (
  `id_nilaitugas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama`, `email`, `password`) VALUES
(2, 'Dini', 'nuramruna@gmail.com', 'dini123');

-- --------------------------------------------------------

--
-- Table structure for table `soal_evaluasi`
--

CREATE TABLE `soal_evaluasi` (
  `id_evaluasi` int(11) NOT NULL,
  `soal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `soal_latihan`
--

CREATE TABLE `soal_latihan` (
  `id_soal` int(11) NOT NULL,
  `id_materi` int(11) NOT NULL,
  `soal` varchar(255) NOT NULL,
  `pil1` varchar(255) NOT NULL,
  `pil2` varchar(255) NOT NULL,
  `pil3` varchar(255) NOT NULL,
  `pil4` varchar(255) NOT NULL,
  `pil5` varchar(255) NOT NULL,
  `kunci` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soal_latihan`
--

INSERT INTO `soal_latihan` (`id_soal`, `id_materi`, `soal`, `pil1`, `pil2`, `pil3`, `pil4`, `pil5`, `kunci`) VALUES
(1, 1, 'Kepanjangan dari ERD adalah…', 'Entitas Relationship Diagram', 'Entity Redundancy Diagram', 'Entity Relativity Diagram', 'Entity Relation Diagram', 'Entity Relationship Diagram', 'Entity Relationship Diagram'),
(2, 2, 'Agama, nama, jenis kelamin, dan usia adalah objek yang termasuk ke dalam…', 'Atribut', 'Entitas', 'Relasi', 'Kardinalitas', 'Diagram', 'Atribut'),
(3, 3, 'Dalam ER-diagram terdapat beberapa bangun datar yang merepresentasikan masing-masing dari komponen dasar ER-diagram itu sendiri. Simbol dalam ER-diagram yang direpresentasikan dalam bentuk belah ketupat adalah…', 'Entitas', 'Atribut', 'Relasi', 'Kardinalitas', 'Primary key', 'Relasi'),
(4, 4, 'Kardinalitas yang mengatakan satu ke banyak mengandung arti…', 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 'Anggota yang terdapat dalam suatu entitas hanya bisa berhubungan dengan satu anggota pada entitas lain', 'Anggota yang terdapat dalam suatu entitas dapat berhubungan dengan anggota pada entitas lain tanpa ada batasan', 'Satu anggota berhubungan dengan anggota pada entitas yang sama', 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jawaban_evaluasi`
--
ALTER TABLE `jawaban_evaluasi`
  ADD PRIMARY KEY (`id_jawabaneval`);

--
-- Indexes for table `jawaban_latihan`
--
ALTER TABLE `jawaban_latihan`
  ADD PRIMARY KEY (`id_jawabanlatihan`);

--
-- Indexes for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  ADD PRIMARY KEY (`id_jawabantugas`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `nilai_latihan`
--
ALTER TABLE `nilai_latihan`
  ADD PRIMARY KEY (`id_nilailatihan`);

--
-- Indexes for table `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  ADD PRIMARY KEY (`id_nilaitugas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `soal_evaluasi`
--
ALTER TABLE `soal_evaluasi`
  ADD PRIMARY KEY (`id_evaluasi`);

--
-- Indexes for table `soal_latihan`
--
ALTER TABLE `soal_latihan`
  ADD PRIMARY KEY (`id_soal`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jawaban_evaluasi`
--
ALTER TABLE `jawaban_evaluasi`
  MODIFY `id_jawabaneval` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawaban_latihan`
--
ALTER TABLE `jawaban_latihan`
  MODIFY `id_jawabanlatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  MODIFY `id_jawabantugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nilai_latihan`
--
ALTER TABLE `nilai_latihan`
  MODIFY `id_nilailatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  MODIFY `id_nilaitugas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `soal_evaluasi`
--
ALTER TABLE `soal_evaluasi`
  MODIFY `id_evaluasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soal_latihan`
--
ALTER TABLE `soal_latihan`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
