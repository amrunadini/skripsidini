-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2020 at 01:09 AM
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
(2, 'kerjakan eval');

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
  `waktu` varchar(10) NOT NULL DEFAULT current_timestamp(),
  `tanggal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban_latihan`
--

INSERT INTO `jawaban_latihan` (`id_jawabanlatihan`, `id_siswa`, `id_soal`, `jawaban`, `id_materi`, `waktu`, `tanggal`) VALUES
(187, 11, 1, 'Persegi panjang bertumpuk', 1, '05:36:38pm', '2020-11-08'),
(188, 11, 2, 'Entitas lemah\r\n', 1, '05:36:38pm', '2020-11-08'),
(189, 11, 3, 'Siswa', 1, '05:36:38pm', '2020-11-08'),
(190, 11, 4, 'Tidak memiliki primary key dan selalu bergantung pada entitas lain', 1, '05:36:38pm', '2020-11-08'),
(191, 11, 5, 'Tandai sebagai objek', 1, '05:36:38pm', '2020-11-08'),
(192, 11, 1, 'Persegi\r\n', 1, '05:36:58pm', '2020-11-08'),
(193, 11, 2, 'Entitas lemah\r\n', 1, '05:36:58pm', '2020-11-08'),
(194, 11, 3, 'Guru', 1, '05:36:58pm', '2020-11-08'),
(195, 11, 4, 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 1, '05:36:58pm', '2020-11-08'),
(196, 11, 5, 'Yakinkan bahwa objek memiliki karakteristik atau atribut', 1, '05:36:58pm', '2020-11-08'),
(197, 11, 1, 'Persegi panjang bertumpuk', 1, '05:45:22pm', '2020-11-08'),
(198, 11, 2, 'Entitas lemah', 1, '05:45:22pm', '2020-11-08'),
(199, 11, 3, 'Siswa', 1, '05:45:22pm', '2020-11-08'),
(200, 11, 4, 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 1, '05:45:22pm', '2020-11-08'),
(201, 11, 5, 'Tandai sebagai objek', 1, '05:45:22pm', '2020-11-08'),
(202, 11, 1, 'Persegi panjang bertumpuk', 1, '05:46:32pm', '2020-11-08'),
(203, 11, 2, 'Entitas lemah', 1, '05:46:32pm', '2020-11-08'),
(204, 11, 3, 'Siswa', 1, '05:46:32pm', '2020-11-08'),
(205, 11, 4, 'Tidak memiliki primary key dan selalu bergantung pada entitas lain', 1, '05:46:32pm', '2020-11-08'),
(206, 11, 5, 'Tandai sebagai objek', 1, '05:46:32pm', '2020-11-08'),
(207, 11, 6, 'Atribut', 2, '05:48:37pm', '2020-11-08'),
(208, 11, 7, 'Objek yang memiliki banyak nilai', 2, '05:48:37pm', '2020-11-08'),
(209, 11, 8, 'Id_penumpang, nama, dan no_telepon', 2, '05:48:37pm', '2020-11-08'),
(210, 11, 9, '1, 2, dan 5', 2, '05:48:37pm', '2020-11-08'),
(211, 11, 10, 'Kode tugas, Nama tugas', 2, '05:48:37pm', '2020-11-08'),
(212, 11, 11, 'Hubungan di antara sejumlah entitas yang berasal dari himpunan entitas yang berbeda', 3, '05:48:54pm', '2020-11-08'),
(213, 11, 12, 'Unary\r\n', 3, '05:48:54pm', '2020-11-08'),
(214, 11, 13, 'Hubungan antar satu entitas dengan satu relasi', 3, '05:48:54pm', '2020-11-08'),
(215, 11, 14, 'Unary, Binary, Sixnary', 3, '05:48:54pm', '2020-11-08'),
(216, 11, 15, 'Ternary	', 3, '05:48:54pm', '2020-11-08'),
(217, 11, 16, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 4, '05:49:15pm', '2020-11-08'),
(218, 11, 17, 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 4, '05:49:15pm', '2020-11-08'),
(219, 11, 18, 'One to many\r\n', 4, '05:49:15pm', '2020-11-08'),
(220, 11, 19, 'Binary	', 4, '05:49:15pm', '2020-11-08'),
(221, 11, 20, '1:1', 4, '05:49:15pm', '2020-11-08'),
(222, 11, 16, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 4, '05:51:28pm', '2020-11-08'),
(223, 11, 17, 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 4, '05:51:28pm', '2020-11-08'),
(224, 11, 18, 'One to many\r\n', 4, '05:51:28pm', '2020-11-08'),
(225, 11, 19, 'Binary	', 4, '05:51:28pm', '2020-11-08'),
(226, 11, 20, '1:1', 4, '05:51:28pm', '2020-11-08'),
(227, 11, 16, 'Suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasikan tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut', 4, '05:59:22pm', '2020-11-08'),
(228, 11, 17, 'Satu anggota suatu entitas hanya bisa berhubungan dengan satu anggota entitas lain', 4, '05:59:22pm', '2020-11-08'),
(229, 11, 18, 'One to one', 4, '05:59:22pm', '2020-11-08'),
(230, 11, 19, 'Ternary\r\n', 4, '05:59:22pm', '2020-11-08'),
(231, 11, 20, '1:1', 4, '05:59:22pm', '2020-11-08'),
(232, 12, 16, 'Individu yang mewakili sesuatu yang nyata dan dapat dibedakan dari satu dengan yang lainnya', 4, '12:09:13am', '2020-11-09'),
(233, 12, 17, 'Anggota yang terdapat dalam suatu entitas hanya bisa berhubungan dengan satu anggota pada entitas lain', 4, '12:09:13am', '2020-11-09'),
(234, 12, 18, 'One to many\r\n', 4, '12:09:13am', '2020-11-09'),
(235, 12, 19, 'Unary', 4, '12:09:13am', '2020-11-09'),
(236, 12, 20, '1:N', 4, '12:09:13am', '2020-11-09'),
(237, 12, 11, 'Hubungan di antara sejumlah entitas yang berasal dari himpunan entitas yang berbeda', 3, '12:09:55am', '2020-11-09'),
(238, 12, 12, 'Ternary', 3, '12:09:55am', '2020-11-09'),
(239, 12, 13, 'Hubungan antar satu entitas dengan satu relasi', 3, '12:09:55am', '2020-11-09'),
(240, 12, 14, 'Binary, Ternary, N-ary', 3, '12:09:55am', '2020-11-09'),
(241, 12, 15, 'Binary	', 3, '12:09:55am', '2020-11-09'),
(242, 12, 1, 'Persegi\r\n', 1, '12:10:26am', '2020-11-09'),
(243, 12, 2, 'Entitas lemah', 1, '12:10:26am', '2020-11-09'),
(244, 12, 3, 'Dokter', 1, '12:10:26am', '2020-11-09'),
(245, 12, 4, 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 1, '12:10:26am', '2020-11-09'),
(246, 12, 5, 'Tandai sebagai objek', 1, '12:10:26am', '2020-11-09'),
(247, 12, 6, 'Atribut', 2, '12:10:53am', '2020-11-09'),
(248, 12, 7, 'Objek yang memiliki banyak nilai', 2, '12:10:53am', '2020-11-09'),
(249, 12, 8, 'Id_penumpang, harga, jumlah', 2, '12:10:53am', '2020-11-09'),
(250, 12, 9, '1, 3, dan 4', 2, '12:10:53am', '2020-11-09'),
(251, 12, 10, 'Kode Guru, Tugas, dan Pegawai', 2, '12:10:53am', '2020-11-09'),
(252, 12, 11, 'Ciri-ciri yang dimiliki suatu objek yang mencerminkan sifat-sifat dari objek tersebut', 3, '12:12:00am', '2020-11-09'),
(253, 12, 12, 'Binary', 3, '12:12:00am', '2020-11-09'),
(254, 12, 13, 'Hubungan entitas dengan beberapa entitas lain', 3, '12:12:00am', '2020-11-09'),
(255, 12, 14, 'Binary, Ternary, N-ary', 3, '12:12:00am', '2020-11-09'),
(256, 12, 15, 'Ternary	', 3, '12:12:00am', '2020-11-09');

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
(50, 11, 1, 1, 'bismillah', 'test', '123', 'lagi', 'Basis_Data_(Responses).xlsx', '22.21', '2020-11-07 17:00:00');

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
(5, 5, 'Buku Sekolah Digital', 'https://bukusekolahdigital.com/data/2013/'),
(6, 6, 'Toko Mainan Anak', 'http://www.mainananakonline.com/home.html'),
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
  `waktu` varchar(10) NOT NULL DEFAULT current_timestamp(),
  `tanggal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai_latihan`
--

INSERT INTO `nilai_latihan` (`id_nilailatihan`, `id_materi`, `id_siswa`, `nilai`, `waktu`, `tanggal`) VALUES
(59, 1, 11, 80, '05:36:38pm', '2020-11-08'),
(60, 1, 11, 0, '05:36:58pm', '2020-11-08'),
(61, 1, 11, 80, '05:45:22pm', '2020-11-08'),
(62, 1, 11, 100, '05:46:32pm', '2020-11-08'),
(63, 2, 11, 60, '05:48:37pm', '2020-11-08'),
(64, 3, 11, 40, '05:48:54pm', '2020-11-08'),
(65, 4, 11, 0, '05:49:15pm', '2020-11-08'),
(66, 4, 11, 0, '05:51:28pm', '2020-11-08'),
(67, 4, 11, 20, '05:59:22pm', '2020-11-08'),
(68, 4, 12, 20, '12:09:13am', '2020-11-09'),
(69, 3, 12, 20, '12:09:55am', '2020-11-09'),
(70, 1, 12, 40, '12:10:26am', '2020-11-09'),
(71, 2, 12, 20, '12:10:53am', '2020-11-09'),
(72, 3, 12, 20, '12:12:00am', '2020-11-09');

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
(12, 'Dini', 'dinihehe', 'dini123', '3', ''),
(13, 'Ijul', 'ijulrizal', 'ijul123', '', ''),
(14, 'Zulfah Uzlifatul Jannah', 'zulfahuzlifatul', 'zulfah123', '', ''),
(15, 'Tia Herdiastuti', 'tiaherdi', 'tia123', '4', 'XI RPL 2'),
(16, 'Faradissa Nurul Faidah', 'dsrfx', 'dissa123', '4', 'XI RPL 1');

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
(15, 16, 3, 'sudah');

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
  MODIFY `id_jawabaneval` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jawaban_latihan`
--
ALTER TABLE `jawaban_latihan`
  MODIFY `id_jawabanlatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  MODIFY `id_jawabantugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
  MODIFY `id_nilailatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  MODIFY `id_nilaitugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `soal_latihan`
--
ALTER TABLE `soal_latihan`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `status_materi`
--
ALTER TABLE `status_materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id_tugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
