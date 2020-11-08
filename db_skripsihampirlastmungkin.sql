-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2020 at 05:23 PM
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

--
-- Dumping data for table `jawaban_evaluasi`
--

INSERT INTO `jawaban_evaluasi` (`id_jawabaneval`, `id_siswa`, `id_eval`, `entitas`, `atribut`, `relasi`, `kardinalitas`) VALUES
(5, 11, 2, '2', '2', '2', '2');

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
(182, 11, 1, 'Persegi panjang bertumpuk', 1, '05:23:00pm', '2020-11-08'),
(183, 11, 2, 'Entitas lemah\r\n', 1, '05:23:00pm', '2020-11-08'),
(184, 11, 3, 'Dokter', 1, '05:23:00pm', '2020-11-08'),
(185, 11, 4, 'Tidak memiliki primary key dan tidak bergantung pada entitas lain', 1, '05:23:00pm', '2020-11-08'),
(186, 11, 5, 'Tandai sebagai objek', 1, '05:23:00pm', '2020-11-08');

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
(49, 11, 1, 1, 'asd', 'asd', 'asd', 'ads', 'CURRICULUM_VITAE.pdf', '1288.83', '2020-11-07 17:00:00');

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
(58, 1, 11, 40, '05:23:00pm', '2020-11-08');

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
(2, 1, 'Entitas yang keberadaannya bergantung pada keberadaan entitas lain disebut dengan…', 'Entitas lemah\r\n', 'Entitas kuat', 'Entitas utama', 'Sub-entitas', 'Multivalued entitas', 'Entitas lemah', 2),
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
(20, 4, 'Perhatikan kasus berikut: SUpermarket melakukan pegawai. Kardinalitas yang tepat untuk kasus tersebut adalah…', '1:1', '1:N', 'N:1	', 'M:N	\r\n', 'N:N', '1:N', 5);

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
(2, 2, 'Tugas Observasi', 'yutub'),
(3, 3, 'Tugas Observasi', 'twt'),
(4, 4, 'Tugas Observasi', 'ayam'),
(5, 5, 'Tugas Observasi', 'gagah'),
(6, 6, 'Tugas Observasi', 'aww'),
(7, 7, 'Tugas Observasi', 'wew'),
(8, 8, 'Tugas Observasi', 'adaw');

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
  MODIFY `id_jawabanlatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  MODIFY `id_jawabantugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

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
  MODIFY `id_nilailatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

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
