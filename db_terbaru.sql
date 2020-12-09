-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2020 at 05:13 AM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(2, 'Kerjakan Evaluasi');

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
(6, 11, 2, '', '', '', '');

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
  `waktu` time NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban_latihan`
--

INSERT INTO `jawaban_latihan` (`id_jawabanlatihan`, `id_siswa`, `id_soal`, `jawaban`, `id_materi`, `waktu`, `tanggal`) VALUES
(187, 11, 1, 'Persegi panjang bertumpuk', 1, '05:36:38', '2020-11-08'),
(188, 11, 2, 'Entitas lemah\r\n', 1, '05:36:38', '2020-11-08'),
(189, 11, 3, 'Siswa', 1, '05:36:38', '2020-11-08'),
(190, 11, 4, 'Tidak memiliki primary key dan selalu bergantung pada entitas lain', 1, '05:36:38', '2020-11-08'),
(191, 11, 5, 'Tandai sebagai objek', 1, '05:36:38', '2020-11-08'),
(192, 11, 1, 'Persegi\r\n', 1, '05:36:58', '2020-11-08'),
(193, 11, 2, 'Entitas lemah\r\n', 1, '05:36:58', '2020-11-08'),
(194, 11, 3, 'Guru', 1, '05:36:58', '2020-11-08'),
(195, 11, 4, 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 1, '05:36:58', '2020-11-08'),
(196, 11, 5, 'Yakinkan bahwa objek memiliki karakteristik atau atribut', 1, '05:36:58', '2020-11-08'),
(197, 11, 1, 'Persegi panjang bertumpuk', 1, '05:45:22', '2020-11-08'),
(198, 11, 2, 'Entitas lemah', 1, '05:45:22', '2020-11-08'),
(199, 11, 3, 'Siswa', 1, '05:45:22', '2020-11-08'),
(200, 11, 4, 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 1, '05:45:22', '2020-11-08'),
(201, 11, 5, 'Tandai sebagai objek', 1, '05:45:22', '2020-11-08'),
(202, 11, 1, 'Persegi panjang bertumpuk', 1, '05:46:32', '2020-11-08'),
(203, 11, 2, 'Entitas lemah', 1, '05:46:32', '2020-11-08'),
(204, 11, 3, 'Siswa', 1, '05:46:32', '2020-11-08'),
(205, 11, 4, 'Tidak memiliki primary key dan selalu bergantung pada entitas lain', 1, '05:46:32', '2020-11-08'),
(206, 11, 5, 'Tandai sebagai objek', 1, '05:46:32', '2020-11-08'),
(207, 11, 6, 'Atribut', 2, '05:48:37', '2020-11-08'),
(208, 11, 7, 'Objek yang memiliki banyak nilai', 2, '05:48:37', '2020-11-08'),
(209, 11, 8, 'Id_penumpang, nama, dan no_telepon', 2, '05:48:37', '2020-11-08'),
(210, 11, 9, '1, 2, dan 5', 2, '05:48:37', '2020-11-08'),
(211, 11, 10, 'Kode tugas, Nama tugas', 2, '05:48:37', '2020-11-08'),
(212, 11, 11, 'Hubungan di antara sejumlah entitas yang berasal dari himpunan entitas yang berbeda', 3, '05:48:54', '2020-11-08'),
(213, 11, 12, 'Unary\r\n', 3, '05:48:54', '2020-11-08'),
(214, 11, 13, 'Hubungan antar satu entitas dengan satu relasi', 3, '05:48:54', '2020-11-08'),
(215, 11, 14, 'Unary, Binary, Sixnary', 3, '05:48:54', '2020-11-08'),
(216, 11, 15, 'Ternary	', 3, '05:48:54', '2020-11-08'),
(217, 11, 16, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 4, '05:49:15', '2020-11-08'),
(218, 11, 17, 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 4, '05:49:15', '2020-11-08'),
(219, 11, 18, 'One to many\r\n', 4, '05:49:15', '2020-11-08'),
(220, 11, 19, 'Binary	', 4, '05:49:15', '2020-11-08'),
(221, 11, 20, '1:1', 4, '05:49:15', '2020-11-08'),
(222, 11, 16, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 4, '05:51:28', '2020-11-08'),
(223, 11, 17, 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 4, '05:51:28', '2020-11-08'),
(224, 11, 18, 'One to many\r\n', 4, '05:51:28', '2020-11-08'),
(225, 11, 19, 'Binary	', 4, '05:51:28', '2020-11-08'),
(226, 11, 20, '1:1', 4, '05:51:28', '2020-11-08'),
(227, 11, 16, 'Suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasikan tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut', 4, '05:59:22', '2020-11-08'),
(228, 11, 17, 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 4, '05:59:22', '2020-11-08'),
(229, 11, 18, 'One to one', 4, '05:59:22', '2020-11-08'),
(230, 11, 19, 'Ternary\r\n', 4, '05:59:22', '2020-11-08'),
(231, 11, 20, '1:1', 4, '05:59:22', '2020-11-08'),
(232, 12, 16, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 4, '12:09:13', '2020-11-09'),
(233, 12, 17, 'Anggota yang terdapat dalam suatu entitas hanya bisa berhubungan dengan satu anggota pada entitas lain', 4, '12:09:13', '2020-11-09'),
(234, 12, 18, 'One to many\r\n', 4, '12:09:13', '2020-11-09'),
(235, 12, 19, 'Unary', 4, '12:09:13', '2020-11-09'),
(236, 12, 20, '1:N', 4, '12:09:13', '2020-11-09'),
(237, 12, 11, 'Hubungan di antara sejumlah entitas yang berasal dari himpunan entitas yang berbeda', 3, '12:09:55', '2020-11-09'),
(238, 12, 12, 'Ternary', 3, '12:09:55', '2020-11-09'),
(239, 12, 13, 'Hubungan antar satu entitas dengan satu relasi', 3, '12:09:55', '2020-11-09'),
(240, 12, 14, 'Binary, Ternary, N-ary', 3, '12:09:55', '2020-11-09'),
(241, 12, 15, 'Binary	', 3, '12:09:55', '2020-11-09'),
(242, 12, 1, 'Persegi\r\n', 1, '12:10:26', '2020-11-09'),
(243, 12, 2, 'Entitas lemah', 1, '12:10:26', '2020-11-09'),
(244, 12, 3, 'Dokter', 1, '12:10:26', '2020-11-09'),
(245, 12, 4, 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 1, '12:10:26', '2020-11-09'),
(246, 12, 5, 'Tandai sebagai objek', 1, '12:10:26', '2020-11-09'),
(247, 12, 6, 'Atribut', 2, '12:10:53', '2020-11-09'),
(248, 12, 7, 'Objek yang memiliki banyak nilai', 2, '12:10:53', '2020-11-09'),
(249, 12, 8, 'Id_penumpang, harga, jumlah', 2, '12:10:53', '2020-11-09'),
(250, 12, 9, '1, 3, dan 4', 2, '12:10:53', '2020-11-09'),
(251, 12, 10, 'Kode Guru, Tugas, dan Pegawai', 2, '12:10:53', '2020-11-09'),
(252, 12, 11, 'Ciri-ciri yang dimiliki suatu objek yang mencerminkan sifat-sifat dari objek tersebut', 3, '12:12:00', '2020-11-09'),
(253, 12, 12, 'Binary', 3, '12:12:00', '2020-11-09'),
(254, 12, 13, 'Hubungan entitas dengan beberapa entitas lain', 3, '12:12:00', '2020-11-09'),
(255, 12, 14, 'Binary, Ternary, N-ary', 3, '12:12:00', '2020-11-09'),
(256, 12, 15, 'Ternary	', 3, '12:12:00', '2020-11-09'),
(257, 16, 1, 'Persegi panjang bertumpuk', 1, '01:51:22', '2020-11-09'),
(258, 16, 2, 'Entitas lemah', 1, '01:51:22', '2020-11-09'),
(259, 16, 3, 'Siswa', 1, '01:51:22', '2020-11-09'),
(260, 16, 4, 'Tidak memiliki primary key dan selalu bergantung pada entitas lain', 1, '01:51:22', '2020-11-09'),
(261, 16, 5, 'Tandai sebagai objek', 1, '01:51:22', '2020-11-09'),
(262, 16, 6, 'Atribut', 2, '01:53:07', '2020-11-09'),
(263, 16, 7, 'Objek yang memiliki banyak nilai', 2, '01:53:07', '2020-11-09'),
(264, 16, 8, 'Id_penumpang, nama, dan no_telepon', 2, '01:53:07', '2020-11-09'),
(265, 16, 9, '1, 2, dan 3', 2, '01:53:07', '2020-11-09'),
(266, 16, 10, 'Kode Guru, Tugas, dan Pegawai', 2, '01:53:07', '2020-11-09'),
(267, 11, 16, 'Suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasikan tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut', 4, '07:35:57', '2020-11-09'),
(268, 11, 17, 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 4, '07:35:57', '2020-11-09'),
(269, 11, 18, 'Many to one', 4, '07:35:57', '2020-11-09'),
(270, 11, 19, 'Binary	', 4, '07:35:57', '2020-11-09'),
(271, 11, 20, '1:1', 4, '07:35:57', '2020-11-09'),
(272, 17, 1, 'Persegi\r\n', 1, '07:40:50', '2020-11-09'),
(273, 17, 2, 'Entitas lemah', 1, '07:40:50', '2020-11-09'),
(274, 17, 3, 'Siswa', 1, '07:40:50', '2020-11-09'),
(275, 17, 4, 'Tidak memiliki primary key dan selalu bergantung pada entitas lain', 1, '07:40:50', '2020-11-09'),
(276, 17, 5, 'Tandai sebagai objek', 1, '07:40:50', '2020-11-09'),
(277, 17, 1, 'Persegi\r\n', 1, '10:26:00', '2020-11-09'),
(278, 17, 2, 'Entitas lemah', 1, '10:26:00', '2020-11-09'),
(279, 17, 3, 'Siswa', 1, '10:26:00', '2020-11-09'),
(280, 17, 4, 'Tidak memiliki primary key dan selalu bergantung pada entitas lain', 1, '10:26:00', '2020-11-09'),
(281, 17, 5, 'Gambarkan entitas dalam bentuk diagram menggunakan simbol yang ditetapkan', 1, '10:26:00', '2020-11-09'),
(282, 17, 6, 'Entitas\r\n', 2, '10:26:20', '2020-11-09'),
(283, 17, 7, 'Objek yang memiliki banyak nilai', 2, '10:26:20', '2020-11-09'),
(284, 17, 8, 'Id_penumpang, harga, jumlah', 2, '10:26:20', '2020-11-09'),
(285, 17, 9, '1, 2, dan 5', 2, '10:26:20', '2020-11-09'),
(286, 17, 10, 'Kode guru, Kode Pegawai, dan Tugas', 2, '10:26:20', '2020-11-09'),
(287, 17, 11, 'Ciri-ciri yang dimiliki suatu objek yang mencerminkan sifat-sifat dari objek tersebut', 3, '10:26:47', '2020-11-09'),
(288, 17, 12, 'Ternary', 3, '10:26:47', '2020-11-09'),
(289, 17, 13, 'Hubungan antar satu entitas dengan satu relasi', 3, '10:26:47', '2020-11-09'),
(290, 17, 14, 'Binary, Ternary, N-ary', 3, '10:26:47', '2020-11-09'),
(291, 17, 15, 'N-ary	', 3, '10:26:47', '2020-11-09'),
(292, 17, 16, 'Suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasikan tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut', 4, '10:29:41', '2020-11-09'),
(293, 17, 17, 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 4, '10:29:41', '2020-11-09'),
(294, 17, 18, 'One to many\r\n', 4, '10:29:41', '2020-11-09'),
(295, 17, 19, 'Unary', 4, '10:29:41', '2020-11-09'),
(296, 17, 20, '1:N', 4, '10:29:41', '2020-11-09'),
(297, 11, 1, 'Dua persegi', 1, '04:39:01', '2020-11-10'),
(298, 11, 2, 'Entitas utama', 1, '04:39:01', '2020-11-10'),
(299, 11, 3, 'Dokter', 1, '04:39:01', '2020-11-10'),
(300, 11, 4, 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 1, '04:39:01', '2020-11-10'),
(301, 11, 5, 'Yakinkan bahwa objek memiliki karakteristik atau atribut', 1, '04:39:01', '2020-11-10'),
(302, 54, 1, 'Persegi\r\n', 1, '09:29:29', '2020-11-30'),
(303, 54, 2, 'Entitas utama', 1, '09:29:29', '2020-11-30'),
(304, 54, 3, 'Siswa', 1, '09:29:29', '2020-11-30'),
(305, 54, 4, 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 1, '09:29:29', '2020-11-30'),
(306, 54, 5, 'Tandai sebagai objek', 1, '09:29:29', '2020-11-30'),
(307, 20, 1, 'Dua persegi', 1, '08:31:15', '2020-12-08'),
(308, 20, 2, 'Entitas lemah', 1, '08:31:15', '2020-12-08'),
(309, 20, 3, 'Siswa', 1, '08:31:15', '2020-12-08'),
(310, 20, 4, 'Memiliki Primary key dan tidak bergantung pada entitas lain', 1, '08:31:15', '2020-12-08'),
(311, 20, 5, 'Yakinkan bahwa objek memiliki karakteristik atau atribut', 1, '08:31:15', '2020-12-08'),
(312, 20, 6, 'Relasi', 2, '08:32:00', '2020-12-08'),
(313, 20, 7, 'Objek yang memiliki banyak nilai', 2, '08:32:00', '2020-12-08'),
(314, 20, 8, 'Id_kereta, tujuan, id_kereta', 2, '08:32:00', '2020-12-08'),
(315, 20, 9, '1, 2, dan 5', 2, '08:32:00', '2020-12-08'),
(316, 20, 10, 'Kode Tugas, Kode Guru, dan Kode Pegawai', 2, '08:32:00', '2020-12-08'),
(317, 20, 11, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 3, '08:32:25', '2020-12-08'),
(318, 20, 12, 'Ternary', 3, '08:32:25', '2020-12-08'),
(319, 20, 13, 'Hubungan entitas dengan beberapa entitas lain', 3, '08:32:25', '2020-12-08'),
(320, 20, 14, 'Unary, Binary, Sixnary', 3, '08:32:25', '2020-12-08'),
(321, 20, 15, 'Sixnary', 3, '08:32:25', '2020-12-08'),
(322, 20, 16, 'Suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasikan tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut', 4, '08:32:38', '2020-12-08'),
(323, 20, 17, 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 4, '08:32:38', '2020-12-08'),
(324, 20, 18, 'Many to one', 4, '08:32:38', '2020-12-08'),
(325, 20, 19, 'Ternary\r\n', 4, '08:32:38', '2020-12-08'),
(326, 20, 20, 'M:N	\r\n', 4, '08:32:38', '2020-12-08'),
(327, 20, 6, 'Atribut', 2, '08:52:32', '2020-12-08'),
(328, 20, 7, 'Objek yang hanya memiliki satu nilai di dalamnya', 2, '08:52:32', '2020-12-08'),
(329, 20, 8, 'Id_kereta, tujuan, id_kereta', 2, '08:52:32', '2020-12-08'),
(330, 20, 9, '2, 5, dan 6', 2, '08:52:32', '2020-12-08'),
(331, 20, 10, 'Kode Guru, Tugas, dan Pegawai', 2, '08:52:32', '2020-12-08'),
(332, 21, 1, 'Dua persegi', 1, '07:57:54', '2020-12-08'),
(333, 21, 2, 'Entitas lemah', 1, '07:57:54', '2020-12-08'),
(334, 21, 3, 'Siswa', 1, '07:57:54', '2020-12-08'),
(335, 21, 4, 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 1, '07:57:54', '2020-12-08'),
(336, 21, 5, 'Tandai sebagai objek', 1, '07:57:54', '2020-12-08'),
(337, 21, 6, 'Entitas\r\n', 2, '07:58:12', '2020-12-08'),
(338, 21, 7, 'Objek yang memiliki hal yang unik yang membedakan dari objek lainnya', 2, '07:58:12', '2020-12-08'),
(339, 21, 8, 'Id_penumpang, nama, dan no_telepon', 2, '07:58:12', '2020-12-08'),
(340, 21, 9, '1, 3, dan 4', 2, '07:58:12', '2020-12-08'),
(341, 21, 10, 'Kode tugas, Nama tugas', 2, '07:58:12', '2020-12-08'),
(342, 21, 11, 'Hubungan di antara sejumlah entitas yang berasal dari himpunan entitas yang berbeda', 3, '07:58:23', '2020-12-08'),
(343, 21, 12, 'Ternary', 3, '07:58:23', '2020-12-08'),
(344, 21, 13, 'Hubungan entitas dengan beberapa entitas lain', 3, '07:58:23', '2020-12-08'),
(345, 21, 14, 'Unary, Binary, Sixnary', 3, '07:58:23', '2020-12-08'),
(346, 21, 15, 'Binary	', 3, '07:58:23', '2020-12-08'),
(347, 21, 16, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 4, '07:58:34', '2020-12-08'),
(348, 21, 17, 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 4, '07:58:34', '2020-12-08'),
(349, 21, 18, 'Many to one', 4, '07:58:34', '2020-12-08'),
(350, 21, 19, 'Unary', 4, '07:58:34', '2020-12-08'),
(351, 21, 20, '1:N', 4, '07:58:34', '2020-12-08'),
(352, 22, 1, 'Persegi panjang bertumpuk', 1, '08:01:03', '2020-12-08'),
(353, 22, 2, 'Entitas lemah', 1, '08:01:03', '2020-12-08'),
(354, 22, 3, 'Siswa', 1, '08:01:03', '2020-12-08'),
(355, 22, 4, 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 1, '08:01:03', '2020-12-08'),
(356, 22, 5, 'Tandai sebagai objek', 1, '08:01:03', '2020-12-08'),
(357, 22, 11, 'Hubungan di antara sejumlah entitas yang berasal dari himpunan entitas yang berbeda', 3, '08:01:15', '2020-12-08'),
(358, 22, 12, 'Unary\r\n', 3, '08:01:15', '2020-12-08'),
(359, 22, 13, 'Hubungan entitas dengan beberapa entitas lain', 3, '08:01:15', '2020-12-08'),
(360, 22, 14, 'Unary, Binary, Ternary', 3, '08:01:15', '2020-12-08'),
(361, 22, 15, 'Binary	', 3, '08:01:15', '2020-12-08'),
(362, 22, 16, 'Suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasikan tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut', 4, '08:01:30', '2020-12-08'),
(363, 22, 17, 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 4, '08:01:30', '2020-12-08'),
(364, 22, 18, 'One to one', 4, '08:01:30', '2020-12-08'),
(365, 22, 19, 'Binary	', 4, '08:01:30', '2020-12-08'),
(366, 22, 20, '1:N', 4, '08:01:30', '2020-12-08'),
(367, 23, 1, 'Persegi panjang', 1, '01:01:25', '2020-12-09'),
(368, 23, 2, 'Entitas kuat', 1, '01:01:25', '2020-12-09'),
(369, 23, 3, 'Siswa', 1, '01:01:25', '2020-12-09'),
(370, 23, 4, 'Memiliki primary key dan selalu bergantung pada entitas lain', 1, '01:01:25', '2020-12-09'),
(371, 23, 5, 'Tandai sebagai objek', 1, '01:01:25', '2020-12-09'),
(372, 23, 6, 'Atribut', 2, '01:01:38', '2020-12-09'),
(373, 23, 7, 'Objek yang memiliki banyak nilai', 2, '01:01:38', '2020-12-09'),
(374, 23, 8, 'Id_penumpang, harga, jumlah', 2, '01:01:38', '2020-12-09'),
(375, 23, 9, '1, 2, dan 5', 2, '01:01:38', '2020-12-09'),
(376, 23, 10, 'Kode guru, Kode Pegawai, dan Tugas', 2, '01:01:38', '2020-12-09'),
(377, 23, 11, 'Hubungan di antara sejumlah entitas yang berasal dari himpunan entitas yang berbeda', 3, '01:01:56', '2020-12-09'),
(378, 23, 12, 'Ternary', 3, '01:01:56', '2020-12-09'),
(379, 23, 13, 'Hubungan yang terjadi dengan dirinya sendiri', 3, '01:01:56', '2020-12-09'),
(380, 23, 14, 'Unary, Binary, Ternary', 3, '01:01:56', '2020-12-09'),
(381, 23, 15, 'Binary	', 3, '01:01:56', '2020-12-09'),
(382, 23, 16, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 4, '01:02:17', '2020-12-09'),
(383, 23, 17, 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 4, '01:02:17', '2020-12-09'),
(384, 23, 18, 'Many to one', 4, '01:02:17', '2020-12-09'),
(385, 23, 19, 'Binary	', 4, '01:02:17', '2020-12-09'),
(386, 23, 20, '1:N', 4, '01:02:17', '2020-12-09'),
(387, 24, 1, 'Persegi panjang bertumpuk', 1, '01:04:42', '2020-12-09'),
(388, 24, 2, 'Entitas lemah', 1, '01:04:42', '2020-12-09'),
(389, 24, 3, 'Siswa', 1, '01:04:42', '2020-12-09'),
(390, 24, 4, 'Tidak memiliki primary key dan selalu bergantung pada entitas lain', 1, '01:04:42', '2020-12-09'),
(391, 24, 5, 'Gambarkan entitas dalam bentuk diagram menggunakan simbol yang ditetapkan', 1, '01:04:42', '2020-12-09'),
(392, 24, 6, 'Atribut', 2, '01:04:54', '2020-12-09'),
(393, 24, 7, 'Objek yang memiliki banyak nilai', 2, '01:04:54', '2020-12-09'),
(394, 24, 8, 'Id_penumpang, harga, jumlah', 2, '01:04:54', '2020-12-09'),
(395, 24, 9, '1, 2, dan 5', 2, '01:04:54', '2020-12-09'),
(396, 24, 10, 'Kode tugas, Nama tugas', 2, '01:04:54', '2020-12-09'),
(397, 24, 11, 'Hubungan di antara sejumlah entitas yang berasal dari himpunan entitas yang berbeda', 3, '01:05:03', '2020-12-09'),
(398, 24, 12, 'Ternary', 3, '01:05:03', '2020-12-09'),
(399, 24, 13, 'Hubungan antar satu entitas dengan satu relasi', 3, '01:05:03', '2020-12-09'),
(400, 24, 14, 'Unary, Binary, Sixnary', 3, '01:05:03', '2020-12-09'),
(401, 24, 15, 'Unary', 3, '01:05:03', '2020-12-09'),
(402, 24, 16, 'Ciri-ciri yang dimiliki suatu objek yang mencerminkan sifat-sifat dari objek tersebut', 4, '01:05:15', '2020-12-09'),
(403, 24, 17, 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 4, '01:05:15', '2020-12-09'),
(404, 24, 18, 'Many to one', 4, '01:05:15', '2020-12-09'),
(405, 24, 19, 'Binary	', 4, '01:05:15', '2020-12-09'),
(406, 24, 20, '1:1', 4, '01:05:15', '2020-12-09'),
(407, 25, 1, 'Persegi panjang bertumpuk', 1, '01:07:19', '2020-12-09'),
(408, 25, 2, 'Entitas kuat', 1, '01:07:19', '2020-12-09'),
(409, 25, 3, 'Siswa', 1, '01:07:19', '2020-12-09'),
(410, 25, 4, 'Memiliki primary key dan selalu bergantung pada entitas lain', 1, '01:07:19', '2020-12-09'),
(411, 25, 5, 'Tandai sebagai objek', 1, '01:07:19', '2020-12-09'),
(412, 25, 6, 'Atribut', 2, '01:07:33', '2020-12-09'),
(413, 25, 7, 'Objek yang memiliki banyak nilai', 2, '01:07:33', '2020-12-09'),
(414, 25, 8, 'Id_penumpang, harga, jumlah', 2, '01:07:33', '2020-12-09'),
(415, 25, 9, '2, 5, dan 6', 2, '01:07:33', '2020-12-09'),
(416, 25, 10, 'Kode tugas, Nama tugas', 2, '01:07:33', '2020-12-09'),
(417, 25, 11, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 3, '01:07:44', '2020-12-09'),
(418, 25, 12, 'Unary\r\n', 3, '01:07:44', '2020-12-09'),
(419, 25, 13, 'Hubungan yang terjadi dengan dirinya sendiri', 3, '01:07:44', '2020-12-09'),
(420, 25, 14, 'Unary, Binary, Ternary', 3, '01:07:44', '2020-12-09'),
(421, 25, 15, 'Binary	', 3, '01:07:44', '2020-12-09'),
(422, 25, 16, 'Suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasikan tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut', 4, '01:08:50', '2020-12-09'),
(423, 25, 17, 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 4, '01:08:50', '2020-12-09'),
(424, 25, 18, 'One to many\r\n', 4, '01:08:50', '2020-12-09'),
(425, 25, 19, 'Binary	', 4, '01:08:50', '2020-12-09'),
(426, 25, 20, '1:N', 4, '01:08:50', '2020-12-09'),
(427, 32, 1, 'Persegi panjang bertumpuk', 1, '01:12:08', '2020-12-09'),
(428, 32, 2, 'Entitas kuat', 1, '01:12:08', '2020-12-09'),
(429, 32, 3, 'Siswa', 1, '01:12:08', '2020-12-09'),
(430, 32, 4, 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 1, '01:12:08', '2020-12-09'),
(431, 32, 5, 'Tandai sebagai objek', 1, '01:12:08', '2020-12-09'),
(432, 32, 6, 'Atribut', 2, '01:12:19', '2020-12-09'),
(433, 32, 7, 'Objek yang memiliki banyak nilai', 2, '01:12:19', '2020-12-09'),
(434, 32, 8, 'Id_penumpang, harga, jumlah', 2, '01:12:19', '2020-12-09'),
(435, 32, 9, '1, 2, dan 5', 2, '01:12:19', '2020-12-09'),
(436, 32, 10, 'Kode tugas, Nama tugas', 2, '01:12:19', '2020-12-09'),
(437, 32, 11, 'Ciri-ciri yang dimiliki suatu objek yang mencerminkan sifat-sifat dari objek tersebut', 3, '01:12:30', '2020-12-09'),
(438, 32, 12, 'Unary\r\n', 3, '01:12:30', '2020-12-09'),
(439, 32, 13, 'Hubungan antar satu entitas dengan satu relasi', 3, '01:12:30', '2020-12-09'),
(440, 32, 14, 'Unary, Binary, Sixnary', 3, '01:12:30', '2020-12-09'),
(441, 32, 15, 'Binary	', 3, '01:12:30', '2020-12-09'),
(442, 32, 16, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 4, '01:12:41', '2020-12-09'),
(443, 32, 17, 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 4, '01:12:41', '2020-12-09'),
(444, 32, 18, 'One to many\r\n', 4, '01:12:41', '2020-12-09'),
(445, 32, 19, 'Binary	', 4, '01:12:41', '2020-12-09'),
(446, 32, 20, '1:N', 4, '01:12:41', '2020-12-09'),
(447, 34, 1, 'Persegi panjang bertumpuk', 1, '01:15:14', '2020-12-09'),
(448, 34, 2, 'Entitas kuat', 1, '01:15:14', '2020-12-09'),
(449, 34, 3, 'Siswa', 1, '01:15:14', '2020-12-09'),
(450, 34, 4, 'Memiliki primary key dan selalu bergantung pada entitas lain', 1, '01:15:14', '2020-12-09'),
(451, 34, 5, 'Tandai sebagai objek', 1, '01:15:14', '2020-12-09'),
(452, 34, 6, 'Atribut', 2, '01:15:26', '2020-12-09'),
(453, 34, 7, 'Objek yang memiliki banyak nilai', 2, '01:15:26', '2020-12-09'),
(454, 34, 8, 'Id_penumpang, harga, jumlah', 2, '01:15:26', '2020-12-09'),
(455, 34, 9, '1, 2, dan 5', 2, '01:15:26', '2020-12-09'),
(456, 34, 10, 'Kode tugas, Nama tugas', 2, '01:15:26', '2020-12-09'),
(457, 34, 11, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 3, '01:15:39', '2020-12-09'),
(458, 34, 12, 'Unary\r\n', 3, '01:15:39', '2020-12-09'),
(459, 34, 13, 'Hubungan antar satu entitas dengan satu relasi', 3, '01:15:39', '2020-12-09'),
(460, 34, 14, 'Unary, Binary, Ternary', 3, '01:15:39', '2020-12-09'),
(461, 34, 15, 'Ternary	', 3, '01:15:39', '2020-12-09'),
(462, 34, 16, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 4, '01:15:51', '2020-12-09'),
(463, 34, 17, 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 4, '01:15:51', '2020-12-09'),
(464, 34, 18, 'One to many\r\n', 4, '01:15:51', '2020-12-09'),
(465, 34, 19, 'Binary	', 4, '01:15:51', '2020-12-09'),
(466, 34, 20, '1:N', 4, '01:15:51', '2020-12-09'),
(467, 38, 1, 'Persegi panjang bertumpuk', 1, '01:21:24', '2020-12-09'),
(468, 38, 2, 'Entitas lemah', 1, '01:21:24', '2020-12-09'),
(469, 38, 3, 'Siswa', 1, '01:21:24', '2020-12-09'),
(470, 38, 4, 'Memiliki primary key dan selalu bergantung pada entitas lain', 1, '01:21:24', '2020-12-09'),
(471, 38, 5, 'Tandai sebagai objek', 1, '01:21:24', '2020-12-09'),
(472, 38, 6, 'Atribut', 2, '01:24:46', '2020-12-09'),
(473, 38, 7, 'Objek yang memiliki banyak nilai', 2, '01:24:46', '2020-12-09'),
(474, 38, 8, 'Id_penumpang, harga, jumlah', 2, '01:24:46', '2020-12-09'),
(475, 38, 9, '1, 2, dan 5', 2, '01:24:46', '2020-12-09'),
(476, 38, 10, 'Kode guru, Kode Pegawai, dan Tugas', 2, '01:24:46', '2020-12-09'),
(477, 38, 11, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 3, '01:25:02', '2020-12-09'),
(478, 38, 12, 'Unary\r\n', 3, '01:25:02', '2020-12-09'),
(479, 38, 13, 'Hubungan antar satu entitas dengan satu relasi', 3, '01:25:02', '2020-12-09'),
(480, 38, 14, 'Unary, Binary, Sixnary', 3, '01:25:02', '2020-12-09'),
(481, 38, 15, 'Binary	', 3, '01:25:02', '2020-12-09'),
(482, 38, 16, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 4, '01:28:24', '2020-12-09'),
(483, 38, 17, 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 4, '01:28:24', '2020-12-09'),
(484, 38, 18, 'One to many\r\n', 4, '01:28:24', '2020-12-09'),
(485, 38, 19, 'Ternary\r\n', 4, '01:28:24', '2020-12-09'),
(486, 38, 20, '1:N', 4, '01:28:24', '2020-12-09'),
(487, 40, 1, 'Persegi panjang bertumpuk', 1, '01:46:40', '2020-12-09'),
(488, 40, 2, 'Entitas lemah', 1, '01:46:40', '2020-12-09'),
(489, 40, 3, 'Siswa', 1, '01:46:40', '2020-12-09'),
(490, 40, 4, 'Memiliki primary key dan selalu bergantung pada entitas lain', 1, '01:46:40', '2020-12-09'),
(491, 40, 5, 'Yakinkan bahwa objek memiliki karakteristik atau atribut', 1, '01:46:40', '2020-12-09'),
(492, 40, 11, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 3, '01:46:51', '2020-12-09'),
(493, 40, 12, 'Unary\r\n', 3, '01:46:51', '2020-12-09'),
(494, 40, 13, 'Hubungan yang terjadi dengan dirinya sendiri', 3, '01:46:51', '2020-12-09'),
(495, 40, 14, 'Unary, Binary, Ternary', 3, '01:46:51', '2020-12-09'),
(496, 40, 15, 'Binary	', 3, '01:46:51', '2020-12-09'),
(497, 40, 6, 'Atribut', 2, '01:47:05', '2020-12-09'),
(498, 40, 7, 'Objek yang memiliki banyak nilai', 2, '01:47:05', '2020-12-09'),
(499, 40, 8, 'Id_penumpang, nama, dan no_telepon', 2, '01:47:05', '2020-12-09'),
(500, 40, 9, '1, 2, dan 5', 2, '01:47:05', '2020-12-09'),
(501, 40, 10, 'Kode tugas, Nama tugas', 2, '01:47:05', '2020-12-09'),
(502, 40, 16, 'Suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasikan tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut', 4, '01:47:27', '2020-12-09'),
(503, 40, 17, 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 4, '01:47:27', '2020-12-09'),
(504, 40, 18, 'One to many\r\n', 4, '01:47:27', '2020-12-09'),
(505, 40, 19, 'Binary	', 4, '01:47:27', '2020-12-09'),
(506, 40, 20, '1:N', 4, '01:47:27', '2020-12-09'),
(507, 40, 16, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 4, '01:47:39', '2020-12-09'),
(508, 40, 17, 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 4, '01:47:39', '2020-12-09'),
(509, 40, 18, 'One to many\r\n', 4, '01:47:39', '2020-12-09'),
(510, 40, 19, 'Binary	', 4, '01:47:39', '2020-12-09'),
(511, 40, 20, '1:N', 4, '01:47:39', '2020-12-09'),
(512, 41, 1, 'Persegi panjang', 1, '02:08:59', '2020-12-09'),
(513, 41, 2, 'Entitas kuat', 1, '02:08:59', '2020-12-09'),
(514, 41, 3, 'Siswa', 1, '02:08:59', '2020-12-09'),
(515, 41, 4, 'Tidak memiliki primary key dan selalu bergantung pada entitas lain', 1, '02:08:59', '2020-12-09'),
(516, 41, 5, 'Tandai sebagai objek', 1, '02:08:59', '2020-12-09'),
(517, 41, 6, 'Atribut', 2, '02:09:23', '2020-12-09'),
(518, 41, 7, 'Objek yang memiliki banyak nilai', 2, '02:09:23', '2020-12-09'),
(519, 41, 8, 'Id_penumpang, harga, jumlah', 2, '02:09:23', '2020-12-09'),
(520, 41, 9, '2, 5, dan 6', 2, '02:09:23', '2020-12-09'),
(521, 41, 10, 'Kode tugas, Nama tugas', 2, '02:09:23', '2020-12-09'),
(522, 41, 11, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 3, '02:09:34', '2020-12-09'),
(523, 41, 12, 'Ternary', 3, '02:09:34', '2020-12-09'),
(524, 41, 13, 'Hubungan yang terjadi dengan dirinya sendiri', 3, '02:09:34', '2020-12-09'),
(525, 41, 14, 'Unary, Binary, Ternary', 3, '02:09:34', '2020-12-09'),
(526, 41, 15, 'Binary	', 3, '02:09:34', '2020-12-09'),
(527, 41, 16, 'Suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasikan tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut', 4, '02:09:46', '2020-12-09'),
(528, 41, 17, 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 4, '02:09:46', '2020-12-09'),
(529, 41, 18, 'One to many\r\n', 4, '02:09:46', '2020-12-09'),
(530, 41, 19, 'Binary	', 4, '02:09:46', '2020-12-09'),
(531, 41, 20, '1:N', 4, '02:09:46', '2020-12-09'),
(532, 42, 1, 'Dua persegi', 1, '02:21:58', '2020-12-09'),
(533, 42, 2, 'Entitas lemah', 1, '02:21:58', '2020-12-09'),
(534, 42, 3, 'Siswa', 1, '02:21:58', '2020-12-09'),
(535, 42, 4, 'Memiliki primary key dan selalu bergantung pada entitas lain', 1, '02:21:58', '2020-12-09'),
(536, 42, 5, 'Tandai sebagai objek', 1, '02:21:58', '2020-12-09'),
(537, 42, 6, 'Entitas\r\n', 2, '02:22:08', '2020-12-09'),
(538, 42, 7, 'Objek yang memiliki banyak nilai', 2, '02:22:08', '2020-12-09'),
(539, 42, 8, 'Id_penumpang, nama, dan no_telepon', 2, '02:22:08', '2020-12-09'),
(540, 42, 9, '1, 2, dan 5', 2, '02:22:08', '2020-12-09'),
(541, 42, 10, 'Kode tugas, Nama tugas', 2, '02:22:08', '2020-12-09'),
(542, 42, 11, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 3, '02:22:20', '2020-12-09'),
(543, 42, 12, 'Unary\r\n', 3, '02:22:20', '2020-12-09'),
(544, 42, 13, 'Hubungan yang terjadi dengan dirinya sendiri', 3, '02:22:20', '2020-12-09'),
(545, 42, 14, 'Unary, Binary, Ternary', 3, '02:22:20', '2020-12-09'),
(546, 42, 15, 'Binary	', 3, '02:22:20', '2020-12-09'),
(547, 42, 16, 'Suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasikan tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut', 4, '02:22:30', '2020-12-09'),
(548, 42, 17, 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 4, '02:22:30', '2020-12-09'),
(549, 42, 18, 'One to many\r\n', 4, '02:22:30', '2020-12-09'),
(550, 42, 19, 'Binary	', 4, '02:22:30', '2020-12-09'),
(551, 42, 20, '1:N', 4, '02:22:30', '2020-12-09'),
(552, 44, 1, 'Persegi panjang bertumpuk', 1, '02:48:16', '2020-12-09'),
(553, 44, 2, 'Entitas lemah', 1, '02:48:16', '2020-12-09'),
(554, 44, 3, 'Siswa', 1, '02:48:16', '2020-12-09'),
(555, 44, 4, 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 1, '02:48:16', '2020-12-09'),
(556, 44, 5, 'Yakinkan bahwa objek memiliki karakteristik atau atribut', 1, '02:48:16', '2020-12-09'),
(557, 44, 6, 'Atribut', 2, '02:48:41', '2020-12-09'),
(558, 44, 7, 'Objek yang memiliki banyak nilai', 2, '02:48:41', '2020-12-09'),
(559, 44, 8, 'Id_penumpang, nama, dan no_telepon', 2, '02:48:41', '2020-12-09'),
(560, 44, 9, '2, 5, dan 6', 2, '02:48:41', '2020-12-09'),
(561, 44, 10, 'Kode tugas, Nama tugas', 2, '02:48:41', '2020-12-09'),
(562, 44, 11, 'Hubungan di antara sejumlah entitas yang berasal dari himpunan entitas yang berbeda', 3, '02:49:39', '2020-12-09'),
(563, 44, 12, 'Unary\r\n', 3, '02:49:39', '2020-12-09'),
(564, 44, 13, 'Hubungan yang terjadi dengan dirinya sendiri', 3, '02:49:39', '2020-12-09'),
(565, 44, 14, 'Unary, Binary, Ternary', 3, '02:49:39', '2020-12-09'),
(566, 44, 15, 'Ternary	', 3, '02:49:39', '2020-12-09'),
(567, 44, 16, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 4, '02:50:13', '2020-12-09'),
(568, 44, 17, 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 4, '02:50:13', '2020-12-09'),
(569, 44, 18, 'One to many\r\n', 4, '02:50:13', '2020-12-09'),
(570, 44, 19, 'Binary	', 4, '02:50:13', '2020-12-09'),
(571, 44, 20, '1:1', 4, '02:50:13', '2020-12-09'),
(572, 45, 1, 'Persegi panjang bertumpuk', 1, '02:53:07', '2020-12-09'),
(573, 45, 2, 'Entitas lemah', 1, '02:53:07', '2020-12-09'),
(574, 45, 3, 'Siswa', 1, '02:53:07', '2020-12-09'),
(575, 45, 4, 'Memiliki primary key dan selalu bergantung pada entitas lain', 1, '02:53:07', '2020-12-09'),
(576, 45, 5, 'Tandai sebagai objek', 1, '02:53:07', '2020-12-09'),
(577, 45, 6, 'Atribut', 2, '02:53:17', '2020-12-09'),
(578, 45, 7, 'Objek yang hanya memiliki satu nilai di dalamnya', 2, '02:53:17', '2020-12-09'),
(579, 45, 8, 'Id_penumpang, nama, dan no_telepon', 2, '02:53:17', '2020-12-09'),
(580, 45, 9, '1, 2, dan 5', 2, '02:53:17', '2020-12-09'),
(581, 45, 10, 'Kode tugas, Nama tugas', 2, '02:53:17', '2020-12-09'),
(582, 45, 11, 'Ciri-ciri yang dimiliki suatu objek yang mencerminkan sifat-sifat dari objek tersebut', 3, '02:53:30', '2020-12-09'),
(583, 45, 12, 'Unary\r\n', 3, '02:53:30', '2020-12-09'),
(584, 45, 13, 'Hubungan antar satu entitas dengan satu relasi', 3, '02:53:30', '2020-12-09'),
(585, 45, 14, 'Unary, Binary, Sixnary', 3, '02:53:30', '2020-12-09'),
(586, 45, 15, 'Ternary	', 3, '02:53:30', '2020-12-09'),
(587, 45, 16, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 4, '02:53:42', '2020-12-09'),
(588, 45, 17, 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 4, '02:53:42', '2020-12-09'),
(589, 45, 18, 'One to many\r\n', 4, '02:53:42', '2020-12-09'),
(590, 45, 19, 'Binary	', 4, '02:53:42', '2020-12-09'),
(591, 45, 20, 'N:1	', 4, '02:53:42', '2020-12-09'),
(592, 49, 1, 'Dua persegi', 1, '03:05:58', '2020-12-09'),
(593, 49, 2, 'Entitas lemah', 1, '03:05:58', '2020-12-09'),
(594, 49, 3, 'Siswa', 1, '03:05:58', '2020-12-09'),
(595, 49, 4, 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 1, '03:05:58', '2020-12-09'),
(596, 49, 5, 'Tandai sebagai pelengkap', 1, '03:05:58', '2020-12-09'),
(597, 49, 6, 'Atribut', 2, '03:06:09', '2020-12-09'),
(598, 49, 7, 'Objek yang hanya memiliki satu nilai di dalamnya', 2, '03:06:09', '2020-12-09'),
(599, 49, 8, 'Id_penumpang, harga, jumlah', 2, '03:06:09', '2020-12-09'),
(600, 49, 9, '1, 2, dan 5', 2, '03:06:09', '2020-12-09'),
(601, 49, 10, 'Kode Guru, Tugas, dan Pegawai', 2, '03:06:09', '2020-12-09'),
(602, 49, 11, 'Hubungan di antara sejumlah entitas yang berasal dari himpunan entitas yang berbeda', 3, '03:06:20', '2020-12-09'),
(603, 49, 12, 'Unary\r\n', 3, '03:06:20', '2020-12-09'),
(604, 49, 13, 'Hubungan yang terjadi dengan dirinya sendiri', 3, '03:06:20', '2020-12-09'),
(605, 49, 14, 'Unary, Binary, Ternary', 3, '03:06:20', '2020-12-09'),
(606, 49, 15, 'Binary	', 3, '03:06:20', '2020-12-09'),
(607, 49, 16, 'Suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasikan tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut', 4, '03:06:33', '2020-12-09'),
(608, 49, 17, 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 4, '03:06:33', '2020-12-09'),
(609, 49, 18, 'Many to one', 4, '03:06:33', '2020-12-09'),
(610, 49, 19, 'Binary	', 4, '03:06:33', '2020-12-09'),
(611, 49, 20, '1:1', 4, '03:06:33', '2020-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_tugas`
--

CREATE TABLE `jawaban_tugas` (
  `id_jawabantugas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_kelompok` int(11) NOT NULL,
  `id_tugas` int(11) NOT NULL,
  `entitas` varchar(255) NOT NULL,
  `atribut` varchar(255) NOT NULL,
  `relasi` varchar(255) NOT NULL,
  `kardinalitas` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban_tugas`
--

INSERT INTO `jawaban_tugas` (`id_jawabantugas`, `id_siswa`, `id_kelompok`, `id_tugas`, `entitas`, `atribut`, `relasi`, `kardinalitas`, `file_name`, `file_size`, `tanggal`) VALUES
(51, 40, 1, 1, 'Siswa, Pedagang, makanan, transaksi', '1.	Pedagang : Kode_pedagang [PK], Nama_pedagang, Alamat_pedagang, Notlp_pedagang\r\n2.	Siswa: Kode_siswa[PK], Nama_siswa, no_hp\r\n3.	Makanan : Kode_makanan [PK], Nama_makanan, Jenis_makanan, Harga_makanan\r\n4.	Transaksi : Kode_transaksi [PK], Tgl_transaksi', '1.	Pedagang melakukan transaksi\r\n2.	Siswa melakukan transaksi\r\n3.	Pedagang menjual makanan\r\n4.	Siswa membeli makanan\r\n5.	Siswa melakukan transaksi', '1.	Seorang Pedagang melakukan banyak Transaksi\r\n2.	Banyak Siswa melakukan banyak Transaksi\r\n3.	Banyak Pedagang menjual banyak Makanan\r\n4.	Banyak Siswa membeli banyak Makanan\r\n5.	Satu Pedagang melayani banyak Siswa', 'Kelas RPL1_Kelompok 1.docx', '43 KB', '2020-11-19 10:37:47');

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
(1, 1, 'Kantin Sekolah', 'https://www.youtube.com/watch?v=9GZEAQtEdzU'),
(2, 2, 'Koperasi Siswa', 'https://www.youtube.com/watch?v=bp1u6U6Yick'),
(3, 3, 'Cat Tembok', 'https://cdn-test.dulux.co.id/id'),
(4, 4, 'Toko Sepatu', 'http://adorableprojects.com/index.php'),
(5, 5, 'Kantin Sekolah', 'https://www.youtube.com/watch?v=9GZEAQtEdzU'),
(6, 6, 'Koperasi Siswa', 'https://www.youtube.com/watch?v=bp1u6U6Yick'),
(7, 7, 'Cat Tembok', 'https://cdn-test.dulux.co.id/id'),
(8, 8, 'Toko Sepatu', 'http://adorableprojects.com/index.php');

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
  `waktu` time NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai_latihan`
--

INSERT INTO `nilai_latihan` (`id_nilailatihan`, `id_materi`, `id_siswa`, `nilai`, `waktu`, `tanggal`) VALUES
(59, 1, 11, 80, '05:36:38', '2020-11-08'),
(60, 1, 11, 0, '05:36:58', '2020-11-08'),
(61, 1, 11, 80, '05:45:22', '2020-11-08'),
(62, 1, 11, 100, '05:46:32', '2020-11-08'),
(63, 2, 11, 60, '05:48:37', '2020-11-08'),
(64, 3, 11, 40, '05:48:54', '2020-11-08'),
(65, 4, 11, 0, '05:49:15', '2020-11-08'),
(66, 4, 11, 0, '05:51:28', '2020-11-08'),
(67, 4, 11, 20, '05:59:22', '2020-11-08'),
(68, 4, 12, 20, '12:09:13', '2020-11-09'),
(69, 3, 12, 20, '12:09:55', '2020-11-09'),
(70, 1, 12, 40, '12:10:26', '2020-11-09'),
(71, 2, 12, 20, '12:10:53', '2020-11-09'),
(72, 3, 12, 20, '12:12:00', '2020-11-09'),
(73, 1, 16, 100, '01:51:22', '2020-11-09'),
(74, 2, 16, 40, '01:53:07', '2020-11-09'),
(75, 4, 11, 20, '07:35:57', '2020-11-09'),
(76, 1, 17, 80, '07:40:50', '2020-11-09'),
(77, 1, 17, 60, '10:26:00', '2020-11-09'),
(78, 2, 17, 0, '10:26:20', '2020-11-09'),
(79, 3, 17, 0, '10:26:47', '2020-11-09'),
(80, 4, 17, 20, '10:29:41', '2020-11-09'),
(81, 1, 11, 0, '04:39:01', '2020-11-10'),
(82, 1, 54, 40, '09:29:29', '2020-11-11'),
(83, 1, 20, 40, '08:31:15', '2020-11-17'),
(84, 2, 20, 0, '08:32:00', '2020-11-17'),
(85, 3, 20, 0, '08:32:25', '2020-11-17'),
(86, 4, 20, 0, '08:32:38', '2020-11-17'),
(87, 2, 20, 20, '08:52:32', '2020-11-17'),
(88, 1, 21, 60, '07:57:54', '2020-11-17'),
(89, 2, 21, 40, '07:58:12', '2020-11-17'),
(90, 3, 21, 20, '07:58:23', '2020-11-17'),
(91, 4, 21, 20, '07:58:34', '2020-11-17'),
(92, 1, 22, 80, '08:01:03', '2020-11-17'),
(93, 3, 22, 40, '08:01:15', '2020-11-17'),
(94, 4, 22, 40, '08:01:30', '2020-11-17'),
(95, 1, 23, 40, '01:01:25', '2020-11-18'),
(96, 2, 23, 20, '01:01:38', '2020-11-18'),
(97, 3, 23, 60, '01:01:56', '2020-11-18'),
(98, 4, 23, 40, '01:02:17', '2020-11-18'),
(99, 1, 24, 80, '01:04:42', '2020-11-18'),
(100, 2, 24, 40, '01:04:54', '2020-11-18'),
(101, 3, 24, 20, '01:05:03', '2020-11-18'),
(102, 4, 24, 20, '01:05:15', '2020-11-18'),
(103, 1, 25, 60, '01:07:19', '2020-11-18'),
(104, 2, 25, 40, '01:07:33', '2020-11-18'),
(105, 3, 25, 40, '01:07:44', '2020-11-18'),
(106, 4, 25, 40, '01:08:50', '2020-11-18'),
(107, 1, 32, 60, '01:12:08', '2020-11-18'),
(108, 2, 32, 40, '01:12:19', '2020-11-18'),
(109, 3, 32, 0, '01:12:30', '2020-11-18'),
(110, 4, 32, 40, '01:12:41', '2020-11-18'),
(111, 1, 34, 60, '01:15:14', '2020-11-18'),
(112, 2, 34, 40, '01:15:26', '2020-11-18'),
(113, 3, 34, 40, '01:15:39', '2020-11-18'),
(114, 4, 34, 20, '01:15:51', '2020-11-18'),
(115, 1, 38, 80, '01:21:24', '2020-11-18'),
(116, 2, 38, 20, '01:24:46', '2020-11-18'),
(117, 3, 38, 0, '01:25:02', '2020-11-18'),
(118, 4, 38, 40, '01:28:24', '2020-11-18'),
(119, 1, 40, 60, '01:46:40', '2020-11-18'),
(120, 3, 40, 40, '01:46:51', '2020-11-18'),
(121, 2, 40, 60, '01:47:05', '2020-11-18'),
(122, 4, 40, 20, '01:47:27', '2020-11-18'),
(123, 4, 40, 40, '01:47:39', '2020-11-18'),
(124, 1, 41, 60, '02:08:59', '2020-11-18'),
(125, 2, 41, 40, '02:09:23', '2020-11-18'),
(126, 3, 41, 40, '02:09:34', '2020-11-18'),
(127, 4, 41, 20, '02:09:46', '2020-11-18'),
(128, 1, 42, 60, '02:21:58', '2020-11-18'),
(129, 2, 42, 40, '02:22:08', '2020-11-18'),
(130, 3, 42, 40, '02:22:20', '2020-11-18'),
(131, 4, 42, 40, '02:22:30', '2020-11-18'),
(132, 1, 44, 60, '02:48:16', '2020-11-19'),
(133, 2, 44, 60, '02:48:41', '2020-11-19'),
(134, 3, 44, 80, '02:49:39', '2020-11-19'),
(135, 4, 44, 20, '02:50:13', '2020-11-19'),
(136, 1, 45, 80, '02:53:07', '2020-11-19'),
(137, 2, 45, 60, '02:53:17', '2020-11-19'),
(138, 3, 45, 20, '02:53:30', '2020-11-19'),
(139, 4, 45, 20, '02:53:42', '2020-11-19'),
(140, 1, 49, 40, '03:05:58', '2020-11-19'),
(141, 2, 49, 20, '03:06:09', '2020-11-19'),
(142, 3, 49, 60, '03:06:20', '2020-11-19'),
(143, 4, 49, 0, '03:06:33', '2020-11-19');

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
(2, 40, 1, 85);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `kelompok` char(2) NOT NULL,
  `kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama`, `username`, `password`, `kelompok`, `kelas`) VALUES
(11, 'Nur Amruna Dini', 'amrunadini', 'dini123', '1', ''),
(20, 'Rizkyfaiz', 'Rizkyfaiz', 'rizkyfaiz123', '1', 'XI Rpl 2'),
(21, 'Rizky Cahyana ', 'rizky_cahyana ', 'r1zk1cahyana', '3', 'XI rpl 3'),
(22, 'Novi nur aisyah', 'noviaisyah', 'novinur123', '2', 'XI RPL 2'),
(23, 'Agung jaya satria waruwu', 'Agung', 'Agung', '4', 'XI RPL 3'),
(24, 'Salma az zahra', 'Salmaazzhra_', 'salmaazhr4', '2', 'XI RPL 2'),
(25, 'Annisaa Fitri', 'Annisaa', 'annisaaica', '2', 'XI RPL 2'),
(31, 'Alpi Rahmawati', 'alpirahmawatii', '4lpirahmawati', '2', 'XI RPL-2'),
(32, 'Wildan Sugandi', 'wildansugandi', 'wildanwildan12', '2', 'Xi-RPL-2'),
(34, 'Rizki Miftah fauzi', 'R_kiting', 'rkitingmif', '2', 'XI-Rpl 2'),
(36, 'Yanhas Alsyah Mahendra', 'Yanhas', '2Nepika2', '1', 'XI RPL 2'),
(37, 'Test Siswa', 'test', 'test123', '1', 'XI RPL 1'),
(38, 'Taryana', 'TARYANA', 'taryana11', '4', 'XI rpl 3'),
(39, 'Amanda Amelia', 'amandameliaa', 'amandaamelia15', '1', 'XI Rpl 2'),
(40, 'Tria Anggraeni', 'triaaa20', 'semangatya', '1', 'XI rpl 1'),
(41, 'Dindin ', 'Dindin permana', 'PERMANA', '4', 'XI RPL 3'),
(42, 'Dadan gunawan', 'Dadan gunawan', 'd4d4n', '4', 'XI rpl3'),
(44, 'Saepul Anwar', 'Anwar', 'pramuka225', '3', 'XI RPL 1'),
(45, 'Fitri Nurhasanah', 'Fitri Nurhasanah', 'pokjar3', '3', 'XI RPL-2'),
(48, 'Nita Septiani P', 'Nita septiani', 'nitanity', '1', 'XI RPL 3'),
(49, 'Cecep Reza Cahyadi', 'REZA', '12345', '3', 'XI RPL 2'),
(51, 'Indriani', 'Indriani', 'bersatu', '3', 'XI RPL-2'),
(53, 'Dzikri Pangestu', 'Dzikri', 'liverpool97', '1', 'XI RPL');

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
  `kunci` varchar(255) NOT NULL,
  `no_soal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soal_latihan`
--

INSERT INTO `soal_latihan` (`id_soal`, `id_materi`, `soal`, `pil1`, `pil2`, `pil3`, `pil4`, `pil5`, `kunci`, `no_soal`) VALUES
(1, 1, 'Entitas terbagi menjadi 2 jenis, yaitu entitas kuat dan entitas lemah. Simbol dari entitas lemah adalah…', 'Persegi\r\n', 'Dua persegi', 'Persegi panjang', 'Persegi panjang bertumpuk', 'Persegi panjang putus-putus', 'Persegi panjang bertumpuk', 1),
(2, 1, 'Entitas yang keberadaannya bergantung pada keberadaan entitas lain disebut dengan…', 'Entitas lemah', 'Entitas kuat', 'Entitas utama', 'Sub-entitas', 'Multivalued entitas', 'Entitas lemah', 2),
(3, 1, 'Jika terdapat entitas dengan kolom atribut id, nama, dan NISN, maka entitas yang sesuai dengan atribut tersebut adalah...', 'Guru', 'Siswa', 'Dokter', 'Pegawai Pemerintahan', 'Kasir', 'Siswa', 3),
(4, 1, 'Yang termasuk kedalam ciri - ciri entitas lemah secara umum adalah ...', 'Memiliki Primary key dan tidak bergantung pada entitas lain', 'Memiliki primary key dan selalu bergantung pada entitas lain', 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 'Tidak memiliki primary key dan selalu bergantung pada entitas lain', 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 'Tidak memiliki primary key dan selalu bergantung pada entitas lain', 4),
(5, 1, 'Tahap Pertama untuk menemukan entitas adalah....', 'Gambarkan entitas dalam bentuk diagram menggunakan simbol yang ditetapkan', 'Tandai sebagai objek', 'Yakinkan bahwa objek memiliki karakteristik atau atribut', 'Tandai sebagai pelengkap', 'Menentukan dan melengkapi karakteristik', 'Tandai sebagai objek', 5),
(6, 2, 'Ciri-ciri yang dimiliki suatu objek yang mencerminkan sifat-sifat dari objek tersebut merupakan pengertian dari…', 'Entitas\r\n', 'Atribut', 'Relasi', 'Kardinalitas', 'ERD', 'Atribut', 1),
(7, 2, 'Sifat atau karakteristik yang menunjukan derived attribute adalah…', 'Objek yang hanya memiliki satu nilai di dalamnya', 'Objek yang memiliki banyak nilai', 'Objek yang memiliki hal yang unik yang membedakan dari objek lainnya', 'Objek yang keberadaannya turunan dari dari objek sebelumnya', 'Objek yang memiliki hal pembeda dan memiliki lebih dari satu nilai', 'Objek yang keberadaannya turunan dari dari objek sebelumnya', 2),
(8, 2, 'Jika terdapat entitas “Penumpang” maka atribut yang tepat untuk melengkapinya adalah…', 'Id_penumpang, nama, dan no_telepon', 'Id_penumpang, harga, jumlah', 'Id_kereta, tujuan, id_kereta', 'Id_kereta, gerbong, no_kursi', 'Id_transaksi, jumlah tiket, tgl_bayar', 'Id_penumpang, nama, dan no_telepon', 3),
(9, 2, 'Perhatikan data berikut!\r\n1. NIM\r\n2. usia\r\n3. no_kontak\r\n4. alamat\r\n5. judul_buku\r\n6. nama.\r\nDari data tersebut, yang merupakan sebuah compossite attribute adalah...', '1, 2, dan 3', '1, 2, dan 5', '1, 3, dan 4', '2, 5, dan 6', '3, 4, dan 6', '3, 4, dan 6', 4),
(10, 2, 'Perhatikan kasus berikut!\r\nSebuah sekolah memiliki beberapa bagian. Masing-masing bagian memiliki satu guru dan satu pegawai. Guru harus ditugaskan setidaknya dalam satu bagian meskipun guru juga harus mangajar. Satu pegawai sedikitnya ditugasi sebuah tug', 'Kode guru, Kode Pegawai, dan Tugas', 'Kode tugas, Nama tugas', 'Kode Guru, Tugas, dan Pegawai', 'Kode Tugas, Kode Guru, dan Kode Pegawai', 'Kode Tugas, Nama Tugas, dan Guru', 'Kode tugas, Nama tugas', 5),
(11, 3, 'Pengertian dari relasi adalah…', 'Hubungan di antara sejumlah entitas yang berasal dari himpunan entitas yang berbeda', 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 'Ciri-ciri yang dimiliki suatu objek yang mencerminkan sifat-sifat dari objek tersebut', 'Sebuah simbol yang saling berhubungan antara satu dengan yang lain', 'Kumpulan objek yang dapat diidentifikasikan secara unik atau saling berbeda', 'Hubungan di antara sejumlah entitas yang berasal dari himpunan entitas yang berbeda', 1),
(12, 3, 'Relasi yang terjadi dari sebuah himpunan entitas ke himpunan entitas yang sama disebut…', 'Ternary', 'Unary\r\n', 'Binary', 'N-ary', 'Sixnary', 'Unary', 2),
(13, 3, 'Pernyataan berikut ini yang menggambarkan pengertian dari relasi berderajat satu adalah…', 'Hubungan yang terjadi dengan dirinya sendiri', 'Hubungan antar satu entitas dengan satu relasi', 'Hubungan entitas dengan beberapa entitas lain', 'Entitas yang berhubungan dengan entitas lain', 'Entitas yang berhubungan dengan dirinya sendiri', 'Hubungan yang terjadi dengan dirinya sendiri', 3),
(14, 3, 'Relasi dibagi menjadi tiga jenis sesuai dengan jumlah entitas yang berpartisipasi dalam suatu relasi. Tiga jenis relasi tersebut adalah…', 'Unary, Binary, Ternary', 'Unary, Binary, Sixnary', 'Binary, Ternary, N-ary', 'Binary, N-ary, Sixnary', 'Binary, Unary, N-ary', 'Unary, Binary, Ternary', 4),
(15, 3, 'Terdapat satu buah ERD koperasi yang memiliki 4 buah entitas, yaitu Pinjam, Nasabah, Karyawan, dan Simpan. Dalam pernyataan tersebut maka derajat tertinggi himpunan relasi yang terbentuk adalah…', 'Unary', 'Binary	', 'Ternary	', 'N-ary	', 'Sixnary', 'Ternary	', 5),
(16, 4, 'Pengertian kardinalitas adalah…', 'Suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasikan tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut', 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 'Ciri-ciri yang dimiliki suatu objek yang mencerminkan sifat-sifat dari objek tersebut', 'Jumlah maksimum entitas yang dapat berelasi dengan entitas pada himpunan entitas yang lain', 'Hubungan antara sejumlah entitas yang berasal dari himpunan itu sendiri atau dengan himpunan entitas yang berbeda', 'Jumlah maksimum entitas yang dapat berelasi dengan entitas pada himpunan entitas yang lain', 1),
(17, 4, 'Kardinalitas yang mengatakan satu ke banyak mengandung arti…', 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 'Anggota yang terdapat dalam suatu entitas hanya bisa berhubungan dengan satu anggota pada entitas lain', 'Anggota yang terdapat dalam suatu entitas dapat berhubungan dengan anggota pada entitas lain tanpa ada batasan', 'Satu anggota berhubungan dengan anggota pada entitas yang sama', 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain', 2),
(18, 4, 'Setiap entitas pada himpunan entitas A berhubungan dengan paling banyak dengan satu entitas pada himpunan entitas B, begitu juga sebaliknya merupakan pengertian dari…', 'One to one', 'One to many\r\n', 'Many to one', 'Many to many', 'One many to many', 'One to one', 3),
(19, 4, 'Diketahui sebuah kasus sebagai berikut: Pasien diperiksa oleh dokter diruangan. Kardinalitas yang tepat pada kasus tersebut adalah..\r\n', 'Ternary\r\n', 'Binary	', 'Unary', 'Secondary	', 'Parsial', 'Ternary', 4),
(20, 4, 'Perhatikan kasus berikut: Supermarket melakukan pegawai. Kardinalitas yang tepat untuk kasus tersebut adalah…', '1:1', '1:N', 'N:1	', 'M:N	\r\n', 'N:N', '1:N', 5);

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
(8, 11, 4, 'sudah'),
(9, 12, 1, 'sudah'),
(10, 12, 2, 'sudah'),
(11, 12, 3, 'sudah'),
(12, 12, 4, 'sudah'),
(13, 16, 1, 'sudah'),
(14, 16, 2, 'sudah'),
(15, 16, 3, 'sudah'),
(16, 17, 1, 'sudah'),
(17, 17, 2, 'sudah'),
(18, 17, 3, 'sudah'),
(19, 17, 4, 'sudah'),
(20, 19, 1, 'belum'),
(21, 21, 1, 'sudah'),
(22, 39, 1, 'belum'),
(23, 21, 2, 'sudah'),
(24, 40, 1, 'sudah'),
(25, 53, 1, 'belum'),
(26, 54, 1, 'sudah'),
(27, 20, 3, 'sudah'),
(28, 20, 1, 'sudah'),
(29, 20, 2, 'sudah'),
(30, 20, 4, 'sudah'),
(31, 21, 3, 'sudah'),
(32, 21, 4, 'sudah'),
(33, 22, 1, 'sudah'),
(34, 22, 2, 'sudah'),
(35, 22, 3, 'sudah'),
(36, 22, 4, 'sudah'),
(37, 23, 1, 'sudah'),
(38, 23, 2, 'sudah'),
(39, 23, 3, 'sudah'),
(40, 23, 4, 'sudah'),
(41, 24, 1, 'sudah'),
(42, 24, 2, 'sudah'),
(43, 24, 3, 'sudah'),
(44, 24, 4, 'sudah'),
(45, 25, 1, 'sudah'),
(46, 25, 2, 'sudah'),
(47, 25, 3, 'sudah'),
(48, 25, 4, 'sudah'),
(49, 32, 1, 'sudah'),
(50, 32, 2, 'sudah'),
(51, 32, 3, 'sudah'),
(52, 32, 4, 'sudah'),
(53, 34, 1, 'sudah'),
(54, 34, 2, 'sudah'),
(55, 34, 3, 'sudah'),
(56, 34, 4, 'sudah'),
(57, 38, 1, 'sudah'),
(58, 38, 2, 'sudah'),
(59, 38, 3, 'sudah'),
(60, 38, 4, 'sudah'),
(61, 40, 2, 'sudah'),
(62, 40, 3, 'sudah'),
(63, 40, 4, 'sudah'),
(64, 41, 2, 'sudah'),
(65, 41, 3, 'sudah'),
(66, 41, 1, 'sudah'),
(67, 41, 4, 'sudah'),
(68, 42, 1, 'sudah'),
(69, 42, 2, 'sudah'),
(70, 42, 3, 'sudah'),
(71, 42, 4, 'sudah'),
(72, 44, 1, 'sudah'),
(73, 44, 2, 'sudah'),
(74, 44, 3, 'sudah'),
(75, 44, 4, 'sudah'),
(76, 45, 1, 'sudah'),
(77, 45, 2, 'sudah'),
(78, 45, 3, 'sudah'),
(79, 45, 4, 'sudah'),
(80, 49, 1, 'sudah'),
(81, 49, 2, 'sudah'),
(82, 49, 3, 'sudah'),
(83, 49, 4, 'sudah');

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
  MODIFY `id_eval` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jawaban_evaluasi`
--
ALTER TABLE `jawaban_evaluasi`
  MODIFY `id_jawabaneval` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `jawaban_latihan`
--
ALTER TABLE `jawaban_latihan`
  MODIFY `id_jawabanlatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=612;
--
-- AUTO_INCREMENT for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  MODIFY `id_jawabantugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
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
  MODIFY `id_nilailatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  MODIFY `id_nilaitugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `soal_latihan`
--
ALTER TABLE `soal_latihan`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `status_materi`
--
ALTER TABLE `status_materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id_tugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
