-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2020 at 12:28 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

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
  `id_jawabaneval` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `entitas` varchar(255) NOT NULL,
  `atribut` varchar(255) NOT NULL,
  `relasi` varchar(255) NOT NULL,
  `kardinalitas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban_evaluasi`
--

INSERT INTO `jawaban_evaluasi` (`id_jawabaneval`, `id_siswa`, `entitas`, `atribut`, `relasi`, `kardinalitas`) VALUES
(1, 11, 'cek', 'cek', 'cek', 'cek');

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
(8, 2, 3, 'Relasi'),
(9, 6, 2, 'Atribut'),
(10, 6, 3, 'Relasi'),
(11, 6, 2, 'Atribut'),
(12, 6, 1, 'Entitas Relationship Diagram'),
(13, 6, 1, 'Entitas Relationship Diagram'),
(14, 6, 1, 'Entitas Relationship Diagram'),
(15, 6, 1, 'Entitas Relationship Diagram'),
(16, 6, 2, 'Atribut'),
(17, 6, 2, 'Atribut'),
(18, 6, 4, 'Satu anggota suatu entitas bisa berhubungan dengan banyak anggota dalam entitas lain'),
(19, 8, 1, 'Entity Relationship Diagram'),
(20, 9, 2, 'Atribut'),
(21, 3, 1, 'Entity Relationship Diagram'),
(22, 3, 1, 'Entity Redundancy Diagram'),
(23, 3, 5, 'hahaha'),
(24, 3, 1, 'Entity Relationship Diagram'),
(25, 3, 5, 'hahaha'),
(26, 3, 2, 'Atribut'),
(27, 12, 6, 'Atribut'),
(28, 12, 7, 'Objek yang memiliki banyak nilai'),
(29, 12, 8, 'Id_kereta, tujuan, id_kereta'),
(30, 12, 9, '1, 2, dan 3'),
(31, 12, 10, 'Kode Guru, Tugas, dan Pegawai'),
(32, 12, 6, 'Entitas\r\n'),
(33, 12, 7, 'Objek yang hanya memiliki satu nilai di dalamnya'),
(34, 12, 8, 'Id_penumpang, harga, jumlah'),
(35, 12, 9, '1, 3, dan 4'),
(36, 12, 10, 'Kode tugas, Nama tugas');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_tugas`
--

CREATE TABLE `jawaban_tugas` (
  `id_jawabantugas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_tugas` int(11) NOT NULL,
  `jawaban` varchar(255) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban_tugas`
--

INSERT INTO `jawaban_tugas` (`id_jawabantugas`, `id_siswa`, `id_tugas`, `jawaban`, `file_name`, `file_size`, `tanggal`) VALUES
(1, 0, 0, 'Test 123', '', '', '2020-09-07'),
(2, 2, 0, 'dini hehehe', '', '', '2020-10-10'),
(3, 2, 0, 'test 123', '', '', '2020-10-10'),
(4, 2, 0, 'test lagi\r\n', '', '', '2020-10-10'),
(5, 2, 0, 'test lagi\r\n', '', '', '2020-10-10'),
(6, 2, 0, 'test lagi lagi bismillah', '', '', '2020-10-10'),
(7, 2, 0, 'bismillah', '', '', '2020-10-10'),
(8, 2, 0, '', '', '', '2020-10-22'),
(9, 2, 0, 'hahaha', '', '', '2020-10-23'),
(10, 7, 0, '', '', '', '2020-10-26'),
(11, 7, 0, 'test', '', '', '2020-10-26'),
(12, 2, 0, 'test', '', '', '2020-10-26'),
(13, 2, 0, 'test', '', '', '2020-10-26'),
(14, 2, 0, 'test 123', '', '', '2020-10-26'),
(15, 2, 0, 'dini', '', '', '2020-10-26'),
(16, 0, 0, '', 'Presensi_Nilai.xlsx', '14.29', '0000-00-00'),
(17, 0, 0, '', 'ABSENSI_(Landscape).docx', '18.3', '0000-00-00'),
(18, 0, 0, '', 'ABSEN_BERDASARKAN_NAMA.docx', '20.95', '0000-00-00'),
(19, 2, 0, 'test', '', '', '2020-10-26'),
(20, 0, 0, '', 'EJAAN_BAHASA_INDONESIA.docx', '120.27', '0000-00-00'),
(21, 0, 0, '', 'TUGAS_SKRIPSI.docx', '26.65', '0000-00-00'),
(22, 6, 0, 'bismillah bismillah', 'Angka_dan_Bilangan.docx', '23.07', '2020-10-27'),
(23, 7, 0, 'test ya', 'BAB_II_Dini_Bimillah.docx', '386.97', '2020-10-28'),
(24, 3, 0, 'siswa ', '11a.png', '1.59', '2020-10-29'),
(25, 8, 0, 'observ', '142-419-1-PB_(1).pdf', '982.94', '2020-10-29'),
(26, 3, 0, 'test', '11a.png', '1.59', '2020-10-29'),
(27, 6, 0, 'bismillah', '20c.png', '6.38', '2020-10-29'),
(28, 6, 0, 'bismillah', '11a.png', '1.59', '2020-10-29'),
(29, 3, 0, 'dini', '8__kemagnetan.ppt', '1591', '2020-10-29'),
(30, 3, 0, 'bismillah', '1__fisum_(silabus_sains).ppt', '185.5', '2020-10-29'),
(31, 3, 0, 'ayo ayo bisa', '9__fisika_atom_inti.ppt', '2915.5', '2020-10-29'),
(32, 9, 0, 'bismillah ya ti', 'UTS_Pendidikan_Pancasila_dan_Kewarganegaraan.docx', '14.42', '2020-10-29'),
(33, 3, 0, 'bismillah', '', '', '2020-10-29'),
(34, 3, 0, 'bisa', '', '', '2020-10-29'),
(35, 3, 0, 'lagi', '', '', '2020-10-29'),
(36, 3, 0, 'pasti bisa sekarang mah', '', '', '2020-10-29'),
(37, 10, 0, 'test 123', '', '', '2020-10-30'),
(38, 10, 0, 'bismillah', 'PENELITIAN_MASALAH_BELAJAR_PADA_MAHASISWA.docx', '321.77', '2020-10-30'),
(39, 3, 0, 'yeay', 'Wawancara_BK.docx', '14.42', '2020-10-30'),
(40, 3, 0, 'coba lagi', 'Soal_fisika_catlin.docx', '17.65', '2020-10-31'),
(43, 3, 1, 'bismillah', '3_1_dan_4_1_RPP_Logika_dan_Algoritma_sah.docx', '41.07', '2020-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(11) NOT NULL,
  `materi` varchar(50) NOT NULL,
  `keterangan` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `materi`, `keterangan`) VALUES
(1, 'Entitas', 'sudah'),
(2, 'Atribut', 'belum'),
(3, 'Relasi', 'sudah'),
(4, 'Kardinalitas', 'belum');

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
(8, 3, 2, 20, '2020-10-22'),
(9, 2, 6, 20, '2020-10-27'),
(10, 3, 6, 20, '2020-10-27'),
(11, 2, 6, 20, '2020-10-27'),
(12, 1, 6, 0, '0000-00-00'),
(13, 1, 6, 0, '0000-00-00'),
(14, 1, 6, 0, '0000-00-00'),
(15, 1, 6, 0, '0000-00-00'),
(16, 2, 6, 0, '0000-00-00'),
(17, 2, 6, 20, '2020-10-27'),
(18, 4, 6, 20, '2020-10-27'),
(19, 1, 8, 20, '2020-10-29'),
(20, 2, 9, 20, '2020-10-29'),
(21, 1, 3, 20, '2020-10-31'),
(22, 1, 3, 20, '2020-11-02'),
(23, 1, 3, 40, '2020-11-02'),
(24, 2, 3, 20, '2020-11-02'),
(25, 2, 12, 20, '2020-11-05'),
(26, 2, 12, 20, '2020-11-05');

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
(11, 'Nur Amruna Dini', 'amrunadini', 'dini123', ''),
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
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id_tugas` int(11) NOT NULL,
  `nama_tugas` varchar(100) NOT NULL,
  `des_tugas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`id_tugas`, `nama_tugas`, `des_tugas`) VALUES
(1, 'Tugas Observasi', 'Lakukanlah observasi secara berkelompok dengan kelompok dan tema yang sudah ditentukan, lalu masukkanlah hasil observasi tersebut ke dalam website');

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
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id_tugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jawaban_evaluasi`
--
ALTER TABLE `jawaban_evaluasi`
  MODIFY `id_jawabaneval` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jawaban_latihan`
--
ALTER TABLE `jawaban_latihan`
  MODIFY `id_jawabanlatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  MODIFY `id_jawabantugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
  MODIFY `id_nilailatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id_tugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
