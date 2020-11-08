-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2020 at 01:02 PM
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
-- Table structure for table `evaluasi`
--

CREATE TABLE `evaluasi` (
  `id_eval` int(11) NOT NULL,
  `nama_eval` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluasi`
--

INSERT INTO `evaluasi` (`id_eval`, `nama_eval`) VALUES
(1, 'Kerjakan Evaluasi');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_evaluasi`
--

CREATE TABLE `jawaban_evaluasi` (
  `id_jawabaneval` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_eval` int(11) NOT NULL,
  `entitas` varchar(255) NOT NULL,
  `atribut` varchar(255) NOT NULL,
  `relasi` varchar(255) NOT NULL,
  `kardinalitas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban_evaluasi`
--

INSERT INTO `jawaban_evaluasi` (`id_jawabaneval`, `id_siswa`, `id_eval`, `entitas`, `atribut`, `relasi`, `kardinalitas`) VALUES
(1, 11, 0, 'cek', 'cek', 'cek', 'cek');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_latihan`
--

CREATE TABLE `jawaban_latihan` (
  `id_jawabanlatihan` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `jawaban` varchar(255) NOT NULL,
  `id_materi` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban_latihan`
--

INSERT INTO `jawaban_latihan` (`id_jawabanlatihan`, `id_siswa`, `id_soal`, `jawaban`, `id_materi`, `waktu`) VALUES
(1, 0, 1, '0', 0, '2020-11-07 13:24:28'),
(2, 0, 1, '0', 0, '2020-11-07 13:24:28'),
(3, 0, 1, '0', 0, '2020-11-07 13:24:28'),
(4, 0, 2, '0', 0, '2020-11-07 13:24:28'),
(5, 0, 2, '0', 0, '2020-11-07 13:24:28'),
(6, 2, 2, '0', 0, '2020-11-07 13:24:28'),
(7, 2, 2, 'Atribut', 0, '2020-11-07 13:24:28'),
(8, 2, 3, 'Relasi', 0, '2020-11-07 13:24:28'),
(9, 6, 2, 'Atribut', 0, '2020-11-07 13:24:28'),
(10, 6, 3, 'Relasi', 0, '2020-11-07 13:24:28'),
(11, 6, 2, 'Atribut', 0, '2020-11-07 13:24:28'),
(12, 6, 1, 'Entitas Relationship Diagram', 0, '2020-11-07 13:24:28'),
(13, 6, 1, 'Entitas Relationship Diagram', 0, '2020-11-07 13:24:28'),
(14, 6, 1, 'Entitas Relationship Diagram', 0, '2020-11-07 13:24:28'),
(15, 6, 1, 'Entitas Relationship Diagram', 0, '2020-11-07 13:24:28'),
(16, 6, 2, 'Atribut', 0, '2020-11-07 13:24:28'),
(17, 6, 2, 'Atribut', 0, '2020-11-07 13:24:28'),
(18, 6, 4, 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 0, '2020-11-07 13:24:28'),
(19, 8, 1, 'Entity Relationship Diagram', 0, '2020-11-07 13:24:28'),
(20, 9, 2, 'Atribut', 0, '2020-11-07 13:24:28'),
(21, 3, 1, 'Entity Relationship Diagram', 0, '2020-11-07 13:24:28'),
(22, 3, 1, 'Entity Redundancy Diagram', 0, '2020-11-07 13:24:28'),
(23, 3, 5, 'hahaha', 0, '2020-11-07 13:24:28'),
(24, 3, 1, 'Entity Relationship Diagram', 0, '2020-11-07 13:24:28'),
(25, 3, 5, 'hahaha', 0, '2020-11-07 13:24:28'),
(26, 3, 2, 'Atribut', 0, '2020-11-07 13:24:28'),
(27, 12, 6, 'Atribut', 0, '2020-11-07 13:24:28'),
(28, 12, 7, 'Objek yang memiliki banyak nilai', 0, '2020-11-07 13:24:28'),
(29, 12, 8, 'Id_kereta, tujuan, id_kereta', 0, '2020-11-07 13:24:28'),
(30, 12, 9, '1, 2, dan 3', 0, '2020-11-07 13:24:28'),
(31, 12, 10, 'Kode Guru, Tugas, dan Pegawai', 0, '2020-11-07 13:24:28'),
(32, 12, 6, 'Entitas\r\n', 0, '2020-11-07 13:24:28'),
(33, 12, 7, 'Objek yang hanya memiliki satu nilai di dalamnya', 0, '2020-11-07 13:24:28'),
(34, 12, 8, 'Id_penumpang, harga, jumlah', 0, '2020-11-07 13:24:28'),
(35, 12, 9, '1, 3, dan 4', 0, '2020-11-07 13:24:28'),
(36, 12, 10, 'Kode tugas, Nama tugas', 0, '2020-11-07 13:24:28'),
(37, 11, 1, 'Persegi\r\n', 0, '2020-11-07 13:24:28'),
(38, 11, 2, 'Entitas kuat', 0, '2020-11-07 13:24:28'),
(39, 11, 3, 'Dokter', 0, '2020-11-07 13:24:28'),
(40, 11, 4, 'Tidak memiliki primary key dan selalu bergantung pada entitas lain', 0, '2020-11-07 13:24:28'),
(41, 11, 5, 'Menentukan dan melengkapi karakteristik', 0, '2020-11-07 13:24:28'),
(42, 11, 1, 'Dua persegi', 0, '2020-11-07 13:24:28'),
(43, 11, 2, 'Entitas kuat', 0, '2020-11-07 13:24:28'),
(44, 11, 3, 'Siswa', 0, '2020-11-07 13:24:28'),
(45, 11, 4, 'Memiliki primary key dan selalu bergantung pada entitas lain', 0, '2020-11-07 13:24:28'),
(46, 11, 5, 'Tandai sebagai objek', 0, '2020-11-07 13:24:28'),
(47, 11, 1, 'Persegi\r\n', 0, '2020-11-07 13:24:28'),
(48, 11, 2, 'Entitas kuat', 0, '2020-11-07 13:24:28'),
(49, 11, 3, 'Dokter', 0, '2020-11-07 13:24:28'),
(50, 11, 4, 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 0, '2020-11-07 13:24:28'),
(51, 11, 5, 'Yakinkan bahwa objek memiliki karakteristik atau atribut', 0, '2020-11-07 13:24:28'),
(52, 11, 11, 'Hubungan di antara sejumlah entitas yang berasal dari himpunan entitas yang berbeda', 3, '2020-11-07 13:24:28'),
(53, 11, 12, 'Ternary', 3, '2020-11-07 13:24:28'),
(54, 11, 13, 'Hubungan yang terjadi dengan dirinya sendiri', 3, '2020-11-07 13:24:28'),
(55, 11, 14, 'Unary, Binary, Ternary', 3, '2020-11-07 13:24:28'),
(56, 11, 15, 'Unary', 3, '2020-11-07 13:24:28'),
(57, 11, 11, 'Hubungan di antara sejumlah entitas yang berasal dari himpunan entitas yang berbeda', 3, '2020-11-07 13:24:28'),
(58, 11, 12, 'Ternary', 3, '2020-11-07 13:24:28'),
(59, 11, 13, 'Hubungan yang terjadi dengan dirinya sendiri', 3, '2020-11-07 13:24:28'),
(60, 11, 14, 'Unary, Binary, Ternary', 3, '2020-11-07 13:24:28'),
(61, 11, 15, 'Unary', 3, '2020-11-07 13:24:28'),
(62, 11, 6, 'Entitas\r\n', 2, '2020-11-07 13:24:28'),
(63, 11, 7, 'Objek yang memiliki banyak nilai', 2, '2020-11-07 13:24:28'),
(64, 11, 8, 'Id_penumpang, harga, jumlah', 2, '2020-11-07 13:24:28'),
(65, 11, 9, '1, 2, dan 5', 2, '2020-11-07 13:24:28'),
(66, 11, 10, 'Kode tugas, Nama tugas', 2, '2020-11-07 13:24:28'),
(67, 11, 16, 'Suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasikan tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut', 4, '2020-11-07 13:24:28'),
(68, 11, 17, 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 4, '2020-11-07 13:24:28'),
(69, 11, 18, 'One to many\r\n', 4, '2020-11-07 13:24:28'),
(70, 11, 19, 'Binary	', 4, '2020-11-07 13:24:28'),
(71, 11, 20, '1:N', 4, '2020-11-07 13:24:28'),
(72, 11, 16, 'Suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasikan tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut', 4, '2020-11-07 13:24:28'),
(73, 11, 17, 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 4, '2020-11-07 13:24:28'),
(74, 11, 18, 'One to many\r\n', 4, '2020-11-07 13:24:28'),
(75, 11, 19, 'Binary	', 4, '2020-11-07 13:24:28'),
(76, 11, 20, '1:N', 4, '2020-11-07 13:24:28'),
(77, 11, 16, 'Suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasikan tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut', 4, '2020-11-07 13:24:28'),
(78, 11, 17, 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 4, '2020-11-07 13:24:28'),
(79, 11, 18, 'One to many\r\n', 4, '2020-11-07 13:24:28'),
(80, 11, 19, 'Binary	', 4, '2020-11-07 13:24:28'),
(81, 11, 20, '1:N', 4, '2020-11-07 13:24:28'),
(87, 11, 16, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 4, '2020-11-07 13:24:28'),
(88, 11, 17, 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 4, '2020-11-07 13:24:28'),
(89, 11, 18, 'One to many\r\n', 4, '2020-11-07 13:24:28'),
(90, 11, 19, 'Binary	', 4, '2020-11-07 13:24:28'),
(91, 11, 20, '1:N', 4, '2020-11-07 13:24:28'),
(92, 11, 1, 'Dua persegi', 1, '2020-11-08 07:21:01'),
(93, 11, 2, 'Entitas kuat', 1, '2020-11-08 07:21:01'),
(94, 11, 3, 'Dokter', 1, '2020-11-08 07:21:01'),
(95, 11, 4, 'Memiliki primary key dan selalu bergantung pada entitas lain', 1, '2020-11-08 07:21:01'),
(96, 11, 5, 'Tandai sebagai objek', 1, '2020-11-08 07:21:01'),
(97, 11, 6, 'Entitas\r\n', 2, '2020-11-08 07:21:15'),
(98, 11, 7, 'Objek yang hanya memiliki satu nilai di dalamnya', 2, '2020-11-08 07:21:15'),
(99, 11, 8, 'Id_penumpang, nama, dan no_telepon', 2, '2020-11-08 07:21:15'),
(100, 11, 9, '1, 2, dan 3', 2, '2020-11-08 07:21:15'),
(101, 11, 10, 'Kode guru, Kode Pegawai, dan Tugas', 2, '2020-11-08 07:21:15'),
(102, 11, 11, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 3, '2020-11-08 07:22:04'),
(103, 11, 12, 'Ternary', 3, '2020-11-08 07:22:04'),
(104, 11, 13, 'Hubungan entitas dengan beberapa entitas lain', 3, '2020-11-08 07:22:04'),
(105, 11, 14, 'Unary, Binary, Sixnary', 3, '2020-11-08 07:22:04'),
(106, 11, 15, 'N-ary	', 3, '2020-11-08 07:22:04'),
(107, 11, 16, 'Hubungan antara sejumlah entitas yang berasal dari himpunan itu sendiri atau dengan himpunan entitas yang berbeda', 4, '2020-11-08 07:22:22'),
(108, 11, 17, 'Satu anggota berhubungan dengan anggota pada entitas yang sama', 4, '2020-11-08 07:22:22'),
(109, 11, 18, 'Many to one', 4, '2020-11-08 07:22:22'),
(110, 11, 19, 'Binary	', 4, '2020-11-08 07:22:22'),
(111, 11, 20, '1:N', 4, '2020-11-08 07:22:22'),
(112, 11, 1, 'Persegi\r\n', 1, '2020-11-08 11:00:45'),
(113, 11, 2, 'Entitas lemah\r\n', 1, '2020-11-08 11:00:45'),
(114, 11, 3, 'Siswa', 1, '2020-11-08 11:00:45'),
(115, 11, 4, 'Memiliki primary key dan selalu bergantung pada entitas lain', 1, '2020-11-08 11:00:45'),
(116, 11, 5, 'Gambarkan entitas dalam bentuk diagram menggunakan simbol yang ditetapkan', 1, '2020-11-08 11:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_tugas`
--

CREATE TABLE `jawaban_tugas` (
  `id_jawabantugas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_kelompok` int(11) NOT NULL,
  `id_tugas` int(11) NOT NULL,
  `entitas` varchar(100) NOT NULL,
  `atribut` varchar(100) NOT NULL,
  `relasi` varchar(100) NOT NULL,
  `kardinalitas` varchar(100) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban_tugas`
--

INSERT INTO `jawaban_tugas` (`id_jawabantugas`, `id_siswa`, `id_kelompok`, `id_tugas`, `entitas`, `atribut`, `relasi`, `kardinalitas`, `file_name`, `file_size`, `tanggal`) VALUES
(1, 0, 0, 0, 'Test 123', '', '', '', '', '', '2020-09-06 17:00:00'),
(2, 2, 0, 0, 'dini hehehe', '', '', '', '', '', '2020-10-09 17:00:00'),
(3, 2, 0, 0, 'test 123', '', '', '', '', '', '2020-10-09 17:00:00'),
(4, 2, 0, 0, 'test lagi\r\n', '', '', '', '', '', '2020-10-09 17:00:00'),
(5, 2, 0, 0, 'test lagi\r\n', '', '', '', '', '', '2020-10-09 17:00:00'),
(6, 2, 0, 0, 'test lagi lagi bismillah', '', '', '', '', '', '2020-10-09 17:00:00'),
(7, 2, 0, 0, 'bismillah', '', '', '', '', '', '2020-10-09 17:00:00'),
(8, 2, 0, 0, '', '', '', '', '', '', '2020-10-21 17:00:00'),
(9, 2, 0, 0, 'hahaha', '', '', '', '', '', '2020-10-22 17:00:00'),
(10, 7, 0, 0, '', '', '', '', '', '', '2020-10-25 17:00:00'),
(11, 7, 0, 0, 'test', '', '', '', '', '', '2020-10-25 17:00:00'),
(12, 2, 0, 0, 'test', '', '', '', '', '', '2020-10-25 17:00:00'),
(13, 2, 0, 0, 'test', '', '', '', '', '', '2020-10-25 17:00:00'),
(14, 2, 0, 0, 'test 123', '', '', '', '', '', '2020-10-25 17:00:00'),
(15, 2, 0, 0, 'dini', '', '', '', '', '', '2020-10-25 17:00:00'),
(16, 0, 0, 0, '', '', '', '', 'Presensi_Nilai.xlsx', '14.29', '0000-00-00 00:00:00'),
(17, 0, 0, 0, '', '', '', '', 'ABSENSI_(Landscape).docx', '18.3', '0000-00-00 00:00:00'),
(18, 0, 0, 0, '', '', '', '', 'ABSEN_BERDASARKAN_NAMA.docx', '20.95', '0000-00-00 00:00:00'),
(19, 2, 0, 0, 'test', '', '', '', '', '', '2020-10-25 17:00:00'),
(20, 0, 0, 0, '', '', '', '', 'EJAAN_BAHASA_INDONESIA.docx', '120.27', '0000-00-00 00:00:00'),
(21, 0, 0, 0, '', '', '', '', 'TUGAS_SKRIPSI.docx', '26.65', '0000-00-00 00:00:00'),
(22, 6, 0, 0, 'bismillah bismillah', '', '', '', 'Angka_dan_Bilangan.docx', '23.07', '2020-10-26 17:00:00'),
(23, 7, 0, 0, 'test ya', '', '', '', 'BAB_II_Dini_Bimillah.docx', '386.97', '2020-10-27 17:00:00'),
(24, 3, 0, 0, 'siswa ', '', '', '', '11a.png', '1.59', '2020-10-28 17:00:00'),
(25, 8, 0, 0, 'observ', '', '', '', '142-419-1-PB_(1).pdf', '982.94', '2020-10-28 17:00:00'),
(26, 3, 0, 0, 'test', '', '', '', '11a.png', '1.59', '2020-10-28 17:00:00'),
(27, 6, 0, 0, 'bismillah', '', '', '', '20c.png', '6.38', '2020-10-28 17:00:00'),
(28, 6, 0, 0, 'bismillah', '', '', '', '11a.png', '1.59', '2020-10-28 17:00:00'),
(29, 3, 0, 0, 'dini', '', '', '', '8__kemagnetan.ppt', '1591', '2020-10-28 17:00:00'),
(30, 3, 0, 0, 'bismillah', '', '', '', '1__fisum_(silabus_sains).ppt', '185.5', '2020-10-28 17:00:00'),
(31, 3, 0, 0, 'ayo ayo bisa', '', '', '', '9__fisika_atom_inti.ppt', '2915.5', '2020-10-28 17:00:00'),
(32, 9, 0, 0, 'bismillah ya ti', '', '', '', 'UTS_Pendidikan_Pancasila_dan_Kewarganegaraan.docx', '14.42', '2020-10-28 17:00:00'),
(33, 3, 0, 0, 'bismillah', '', '', '', '', '', '2020-10-28 17:00:00'),
(34, 3, 0, 0, 'bisa', '', '', '', '', '', '2020-10-28 17:00:00'),
(35, 3, 0, 0, 'lagi', '', '', '', '', '', '2020-10-28 17:00:00'),
(36, 3, 0, 0, 'pasti bisa sekarang mah', '', '', '', '', '', '2020-10-28 17:00:00'),
(37, 10, 0, 0, 'test 123', '', '', '', '', '', '2020-10-29 17:00:00'),
(38, 10, 0, 0, 'bismillah', '', '', '', 'PENELITIAN_MASALAH_BELAJAR_PADA_MAHASISWA.docx', '321.77', '2020-10-29 17:00:00'),
(39, 3, 0, 0, 'yeay', '', '', '', 'Wawancara_BK.docx', '14.42', '2020-10-29 17:00:00'),
(40, 3, 0, 0, 'coba lagi', '', '', '', 'Soal_fisika_catlin.docx', '17.65', '2020-10-30 17:00:00'),
(43, 3, 0, 1, 'bismillah', '', '', '', '3_1_dan_4_1_RPP_Logika_dan_Algoritma_sah.docx', '41.07', '2020-10-30 17:00:00'),
(44, 11, 0, 1, 'test', 'test', 'test', 'test', 'Tambahan.docx', '11.25', '2020-11-06 17:00:00'),
(45, 11, 0, 1, 'test coba', 'lagi', 'lagi', 'lagi', 'Tambahan.docx', '11.25', '2020-11-07 17:00:00'),
(46, 11, 0, 1, 'bismillah coba', 'lagi ya', 'lagi', 'ya', 'Ar,_Kr,_Xe.docx', '20.18', '2020-11-07 17:00:00'),
(47, 11, 0, 1, 'bismillah', 'test', 'bisa', 'bismillah', 'SC_100139228_HW_JAN15.pdf', '27.15', '2020-11-07 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kelompok`
--

CREATE TABLE `kelompok` (
  `id_kelompok` int(11) NOT NULL,
  `no_kelompok` int(11) NOT NULL,
  `tema` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelompok`
--

INSERT INTO `kelompok` (`id_kelompok`, `no_kelompok`, `tema`, `link`) VALUES
(1, 1, 'Buku Sekolah Digital', 'https://bukusekolahdigital.com/data/2013/'),
(2, 2, 'Toko Mainan Anak', 'http://www.mainananakonline.com/home.html'),
(3, 3, 'Cat Tembok', 'https://cdn-test.dulux.co.id/id'),
(4, 4, 'Toko Sepatu', 'http://adorableprojects.com/index.php'),
(5, 1, 'Buku Sekolah Digital', 'https://bukusekolahdigital.com/data/2013/'),
(6, 2, 'Toko Mainan Anak', 'http://www.mainananakonline.com/home.html'),
(7, 3, 'Cat Tembok', 'https://cdn-test.dulux.co.id/id'),
(8, 4, 'Toko Sepatu', 'http://adorableprojects.com/index.php');

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
-- Table structure for table `nilai_evaluasi`
--

CREATE TABLE `nilai_evaluasi` (
  `id_nilaieval` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai_evaluasi`
--

INSERT INTO `nilai_evaluasi` (`id_nilaieval`, `id_siswa`, `nilai`) VALUES
(1, 11, 100);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_latihan`
--

CREATE TABLE `nilai_latihan` (
  `id_nilailatihan` int(11) NOT NULL,
  `id_materi` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai_latihan`
--

INSERT INTO `nilai_latihan` (`id_nilailatihan`, `id_materi`, `id_siswa`, `nilai`, `tanggal`) VALUES
(1, 1, 0, 20, '2020-07-02 17:00:00'),
(2, 1, 0, 0, '2020-07-02 17:00:00'),
(3, 1, 0, 0, '2020-07-02 17:00:00'),
(4, 2, 0, 0, '2020-07-02 17:00:00'),
(5, 2, 0, 20, '2020-07-02 17:00:00'),
(6, 2, 2, 0, '2020-10-09 17:00:00'),
(7, 2, 2, 20, '2020-10-09 17:00:00'),
(8, 3, 2, 20, '2020-10-21 17:00:00'),
(9, 2, 6, 20, '2020-10-26 17:00:00'),
(10, 3, 6, 20, '2020-10-26 17:00:00'),
(11, 2, 6, 20, '2020-10-26 17:00:00'),
(12, 1, 6, 0, '0000-00-00 00:00:00'),
(13, 1, 6, 0, '0000-00-00 00:00:00'),
(14, 1, 6, 0, '0000-00-00 00:00:00'),
(15, 1, 6, 0, '0000-00-00 00:00:00'),
(16, 2, 6, 0, '0000-00-00 00:00:00'),
(17, 2, 6, 20, '2020-10-26 17:00:00'),
(18, 4, 6, 20, '2020-10-26 17:00:00'),
(19, 1, 8, 20, '2020-10-28 17:00:00'),
(20, 2, 9, 20, '2020-10-28 17:00:00'),
(21, 1, 3, 20, '2020-10-30 17:00:00'),
(22, 1, 3, 20, '2020-11-01 17:00:00'),
(23, 1, 3, 40, '2020-11-01 17:00:00'),
(24, 2, 3, 20, '2020-11-01 17:00:00'),
(25, 2, 12, 20, '2020-11-04 17:00:00'),
(26, 2, 12, 20, '2020-11-04 17:00:00'),
(27, 1, 11, 20, '2020-11-05 17:00:00'),
(28, 1, 11, 40, '2020-11-05 17:00:00'),
(29, 1, 11, 0, '2020-11-05 17:00:00'),
(30, 0, 11, 0, '2020-11-05 17:00:00'),
(31, 0, 11, 0, '2020-11-05 17:00:00'),
(32, 0, 11, 0, '2020-11-05 17:00:00'),
(33, 0, 11, 0, '2020-11-05 17:00:00'),
(34, 3, 11, 60, '2020-11-05 17:00:00'),
(35, 3, 11, 60, '2020-11-05 17:00:00'),
(36, 2, 11, 20, '2020-11-05 17:00:00'),
(37, 4, 11, 40, '2020-11-05 17:00:00'),
(38, 4, 11, 40, '2020-11-05 17:00:00'),
(39, 4, 11, 40, '2020-11-05 17:00:00'),
(40, 1, 11, 0, '2020-11-05 17:00:00'),
(41, 4, 11, 40, '2020-11-05 17:00:00'),
(42, 1, 11, 20, '2020-11-07 17:00:00'),
(43, 2, 11, 20, '2020-11-07 17:00:00'),
(44, 3, 11, 0, '2020-11-07 17:00:00'),
(45, 4, 11, 20, '2020-11-07 17:00:00'),
(46, 1, 11, 20, '2020-11-07 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_tugas`
--

CREATE TABLE `nilai_tugas` (
  `id_nilaitugas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_tugas` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai_tugas`
--

INSERT INTO `nilai_tugas` (`id_nilaitugas`, `id_siswa`, `id_tugas`, `nilai`) VALUES
(1, 1, 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `kelompok` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama`, `username`, `password`, `kelompok`) VALUES
(11, 'Nur Amruna Dini', 'amrunadini', 'dini123', '1'),
(12, 'Dini', 'dinihehe', 'dini123', ''),
(13, 'Ijul', 'ijulrizal', 'ijul123', '');

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
(1, 1, 'Entitas terbagi menjadi 2 jenis, yaitu entitas kuat dan entitas lemah. Simbol dari entitas lemah adalah…', 'Persegi\r\n', 'Dua persegi', 'Persegi panjang', 'Persegi panjang bertumpuk', 'Persegi panjang putus-putus', 'Persegi panjang bertumpuk'),
(2, 1, 'Entitas yang keberadaannya bergantung pada keberadaan entitas lain disebut dengan…', 'Entitas lemah\r\n', 'Entitas kuat', 'Entitas utama', 'Sub-entitas', 'Multivalued entitas', 'Entitas lemah'),
(3, 1, 'Jika terdapat entitas dengan kolom atribut id, nama, dan NISN, maka entitas yang sesuai dengan atribut tersebut adalah...', 'Guru', 'Siswa', 'Dokter', 'Pegawai Pemerintahan', 'Kasir', 'Siswa'),
(4, 1, 'Yang termasuk kedalam ciri - ciri entitas lemah secara umum adalah ...', 'Memiliki Primary key dan tidak bergantung pada entitas lain', 'Memiliki primary key dan selalu bergantung pada entitas lain', 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 'Tidak memiliki primary key dan selalu bergantung pada entitas lain', 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 'Tidak memiliki primary key dan selalu bergantung pada entitas lain'),
(5, 1, 'Tahap Pertama untuk menemukan entitas adalah....', 'Gambarkan entitas dalam bentuk diagram menggunakan simbol yang ditetapkan', 'Tandai sebagai objek', 'Yakinkan bahwa objek memiliki karakteristik atau atribut', 'Tandai sebagai pelengkap', 'Menentukan dan melengkapi karakteristik', 'Tandai sebagai objek'),
(6, 2, 'Ciri-ciri yang dimiliki suatu objek yang mencerminkan sifat-sifat dari objek tersebut merupakan pengertian dari…', 'Entitas\r\n', 'Atribut', 'Relasi', 'Kardinalitas', 'ERD', 'Atribut'),
(7, 2, 'Sifat atau karakteristik yang menunjukan derived attribute adalah…', 'Objek yang hanya memiliki satu nilai di dalamnya', 'Objek yang memiliki banyak nilai', 'Objek yang memiliki hal yang unik yang membedakan dari objek lainnya', 'Objek yang keberadaannya turunan dari dari objek sebelumnya', 'Objek yang memiliki hal pembeda dan memiliki lebih dari satu nilai', 'Objek yang keberadaannya turunan dari dari objek sebelumnya'),
(8, 2, 'Jika terdapat entitas “Penumpang” maka atribut yang tepat untuk melengkapinya adalah…', 'Id_penumpang, nama, dan no_telepon', 'Id_penumpang, harga, jumlah', 'Id_kereta, tujuan, id_kereta', 'Id_kereta, gerbong, no_kursi', 'Id_transaksi, jumlah tiket, tgl_bayar', 'Id_penumpang, nama, dan no_telepon'),
(9, 2, 'Perhatikan data berikut!\r\n1. NIM\r\n2. usia\r\n3. no_kontak\r\n4. alamat\r\n5. judul_buku\r\n6. nama.\r\nDari data tersebut, yang merupakan sebuah compossite attribute adalah...', '1, 2, dan 3', '1, 2, dan 5', '1, 3, dan 4', '2, 5, dan 6', '3, 4, dan 6', '3, 4, dan 6'),
(10, 2, 'Perhatikan kasus berikut!\r\nSebuah sekolah memiliki beberapa bagian. Masing-masing bagian memiliki satu guru dan satu pegawai. Guru harus ditugaskan setidaknya dalam satu bagian meskipun guru juga harus mangajar. Satu pegawai sedikitnya ditugasi sebuah tug', 'Kode guru, Kode Pegawai, dan Tugas', 'Kode tugas, Nama tugas', 'Kode Guru, Tugas, dan Pegawai', 'Kode Tugas, Kode Guru, dan Kode Pegawai', 'Kode Tugas, Nama Tugas, dan Guru', 'Kode tugas, Nama tugas'),
(11, 3, 'Pengertian dari relasi adalah…', 'Hubungan di antara sejumlah entitas yang berasal dari himpunan entitas yang berbeda', 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 'Ciri-ciri yang dimiliki suatu objek yang mencerminkan sifat-sifat dari objek tersebut', 'Sebuah simbol yang saling berhubungan antara satu dengan yang lain', 'Kumpulan objek yang dapat diidentifikasikan secara unik atau saling berbeda', 'Hubungan di antara sejumlah entitas yang berasal dari himpunan entitas yang berbeda'),
(12, 3, 'Relasi yang terjadi dari sebuah himpunan entitas ke himpunan entitas yang sama disebut…', 'Ternary', 'Unary\r\n', 'Binary', 'N-ary', 'Sixnary', 'Unary'),
(13, 3, 'Pernyataan berikut ini yang menggambarkan pengertian dari relasi berderajat satu adalah…', 'Hubungan yang terjadi dengan dirinya sendiri', 'Hubungan antar satu entitas dengan satu relasi', 'Hubungan entitas dengan beberapa entitas lain', 'Entitas yang berhubungan dengan entitas lain', 'Entitas yang berhubungan dengan dirinya sendiri', 'Hubungan yang terjadi dengan dirinya sendiri'),
(14, 3, 'Relasi dibagi menjadi tiga jenis sesuai dengan jumlah entitas yang berpartisipasi dalam suatu relasi. Tiga jenis relasi tersebut adalah…', 'Unary, Binary, Ternary', 'Unary, Binary, Sixnary', 'Binary, Ternary, N-ary', 'Binary, N-ary, Sixnary', 'Binary, Unary, N-ary', 'Unary, Binary, Ternary'),
(15, 3, 'Terdapat satu buah ERD koperasi yang memiliki 4 buah entitas, yaitu Pinjam, Nasabah, Karyawan, dan Simpan. Dalam pernyataan tersebut maka derajat tertinggi himpunan relasi yang terbentuk adalah…', 'Unary', 'Binary	', 'Ternary	', 'N-ary	', 'Sixnary', 'Ternary	'),
(16, 4, 'Pengertian kardinalitas adalah…', 'Suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasikan tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut', 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 'Ciri-ciri yang dimiliki suatu objek yang mencerminkan sifat-sifat dari objek tersebut', 'Jumlah maksimum entitas yang dapat berelasi dengan entitas pada himpunan entitas yang lain', 'Hubungan antara sejumlah entitas yang berasal dari himpunan itu sendiri atau dengan himpunan entitas yang berbeda', 'Jumlah maksimum entitas yang dapat berelasi dengan entitas pada himpunan entitas yang lain'),
(17, 4, 'Kardinalitas yang mengatakan satu ke banyak mengandung arti…', 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 'Anggota yang terdapat dalam suatu entitas hanya bisa berhubungan dengan satu anggota pada entitas lain', 'Anggota yang terdapat dalam suatu entitas dapat berhubungan dengan anggota pada entitas lain tanpa ada batasan', 'Satu anggota berhubungan dengan anggota pada entitas yang sama', 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain'),
(18, 4, 'Setiap entitas pada himpunan entitas A berhubungan dengan paling banyak dengan satu entitas pada himpunan entitas B, begitu juga sebaliknya merupakan pengertian dari…', 'One to one', 'One to many\r\n', 'Many to one', 'Many to many', 'One many to many', 'One to one'),
(19, 4, 'Diketahui sebuah kasus sebagai berikut: Pasien diperiksa oleh dokter diruangan. Kardinalitas yang tepat pada kasus tersebut adalah..\r\n', 'Ternary\r\n', 'Binary	', 'Unary', 'Secondary	', 'Parsial', 'Ternary'),
(20, 4, 'Perhatikan kasus berikut: SUpermarket melakukan pegawai. Kardinalitas yang tepat untuk kasus tersebut adalah…', '1:1', '1:N', 'N:1	', 'M:N	\r\n', 'N:N', '1:N');

-- --------------------------------------------------------

--
-- Table structure for table `status_materi`
--

CREATE TABLE `status_materi` (
  `id` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_materi` int(11) NOT NULL,
  `keterangan` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status_materi`
--

INSERT INTO `status_materi` (`id`, `id_siswa`, `id_materi`, `keterangan`) VALUES
(5, 11, 3, 'sudah'),
(6, 11, 1, 'sudah'),
(7, 11, 2, 'sudah'),
(8, 11, 4, 'sudah');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id_tugas` int(11) NOT NULL,
  `id_kelompok` int(11) NOT NULL,
  `nama_tugas` varchar(100) NOT NULL,
  `des_tugas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`id_tugas`, `id_kelompok`, `nama_tugas`, `des_tugas`) VALUES
(1, 1, 'Tugas Observasi', 'Lakukanlah observasi secara berkelompok dengan kelompok dan tema yang sudah ditentukan, lalu masukkanlah hasil observasi tersebut ke dalam website'),
(2, 2, 'Tugas Observasi', 'Lakukanlah observasi secara berkelompok dengan kelompok dan tema yang sudah ditentukan, lalu masukkanlah hasil observasi tersebut ke dalam website'),
(3, 3, 'Tugas Observasi', 'Lakukanlah observasi secara berkelompok dengan kelompok dan tema yang sudah ditentukan, lalu masukkanlah hasil observasi tersebut ke dalam website'),
(4, 4, 'Tugas Observasi', 'Lakukanlah observasi secara berkelompok dengan kelompok dan tema yang sudah ditentukan, lalu masukkanlah hasil observasi tersebut ke dalam website'),
(5, 5, 'Tugas Observasi', 'Lakukanlah observasi secara berkelompok dengan kelompok dan tema yang sudah ditentukan, lalu masukkanlah hasil observasi tersebut ke dalam website'),
(6, 6, 'Tugas Observasi', 'Lakukanlah observasi secara berkelompok dengan kelompok dan tema yang sudah ditentukan, lalu masukkanlah hasil observasi tersebut ke dalam website'),
(7, 7, 'Tugas Observasi', 'Lakukanlah observasi secara berkelompok dengan kelompok dan tema yang sudah ditentukan, lalu masukkanlah hasil observasi tersebut ke dalam website'),
(8, 8, 'Tugas Observasi', 'Lakukanlah observasi secara berkelompok dengan kelompok dan tema yang sudah ditentukan, lalu masukkanlah hasil observasi tersebut ke dalam website');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evaluasi`
--
ALTER TABLE `evaluasi`
  ADD PRIMARY KEY (`id_eval`);

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
-- Indexes for table `kelompok`
--
ALTER TABLE `kelompok`
  ADD PRIMARY KEY (`id_kelompok`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `nilai_evaluasi`
--
ALTER TABLE `nilai_evaluasi`
  ADD PRIMARY KEY (`id_nilaieval`);

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
-- Indexes for table `status_materi`
--
ALTER TABLE `status_materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id_tugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `evaluasi`
--
ALTER TABLE `evaluasi`
  MODIFY `id_eval` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jawaban_evaluasi`
--
ALTER TABLE `jawaban_evaluasi`
  MODIFY `id_jawabaneval` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jawaban_latihan`
--
ALTER TABLE `jawaban_latihan`
  MODIFY `id_jawabanlatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  MODIFY `id_jawabantugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `kelompok`
--
ALTER TABLE `kelompok`
  MODIFY `id_kelompok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nilai_evaluasi`
--
ALTER TABLE `nilai_evaluasi`
  MODIFY `id_nilaieval` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nilai_latihan`
--
ALTER TABLE `nilai_latihan`
  MODIFY `id_nilailatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  MODIFY `id_nilaitugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `soal_evaluasi`
--
ALTER TABLE `soal_evaluasi`
  MODIFY `id_evaluasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soal_latihan`
--
ALTER TABLE `soal_latihan`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `status_materi`
--
ALTER TABLE `status_materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id_tugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
