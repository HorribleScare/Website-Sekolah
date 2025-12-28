-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2025 at 01:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id` int(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `foto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id`, `nip`, `nama`, `alamat`, `telpon`, `agama`, `foto`) VALUES
(1, '199012102022101001', 'Tony Lie', '																		Kalijodo', '098765437890', 'Budha', '319-guru1.jpg'),
(2, '199012102022101002', 'Deddy Trisnawarman', 'Sunter', '098765437823', 'Kristen', '243-guru2.jpeg'),
(3, '199012102022101003', 'Darius Andana', 'Kalideres', '098765433453', 'Islam', '970-guru3.jpeg'),
(4, '199012102022101004', 'Samsudin', 'Sidomuncul', '098765439082', 'Hindu', '490-guru4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai_ujian`
--

CREATE TABLE `tbl_nilai_ujian` (
  `id` int(11) NOT NULL,
  `no_ujian` char(7) NOT NULL,
  `pelajaran` varchar(100) NOT NULL,
  `nilai_ujian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_nilai_ujian`
--

INSERT INTO `tbl_nilai_ujian` (`id`, `no_ujian`, `pelajaran`, `nilai_ujian`) VALUES
(1, 'UTS-001', 'Matematika', 55),
(2, 'UTS-001', 'Bahasa Indonesia', 45),
(3, 'UTS-001', 'Bahasa Inggris', 40),
(4, 'UTS-001', 'Fisika Industri', 80),
(5, 'UTS-001', 'Hitungan Industri', 90),
(6, 'UTS-002', 'Matematika', 100),
(7, 'UTS-002', 'Bahasa Indonesia', 90),
(8, 'UTS-002', 'Bahasa Inggris', 80),
(9, 'UTS-002', 'Fisika Industri', 70),
(10, 'UTS-002', 'Hitungan Industri', 65),
(11, 'UTS-003', 'Matematika', 75),
(12, 'UTS-003', 'Bahasa Indonesia', 65),
(13, 'UTS-003', 'Bahasa Inggris', 65),
(14, 'UTS-003', 'Fisika Analis', 55),
(15, 'UTS-003', 'Hitungan Analis', 95);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelajaran`
--

CREATE TABLE `tbl_pelajaran` (
  `id` int(11) NOT NULL,
  `pelajaran` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `guru` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pelajaran`
--

INSERT INTO `tbl_pelajaran` (`id`, `pelajaran`, `jurusan`, `guru`) VALUES
(1, 'Matematika', 'Umum', 'Tony Lie'),
(2, 'Bahasa Indonesia', 'Umum', 'Tony Lie'),
(3, 'Bahasa Inggris', 'Umum', 'Tony Lie'),
(5, 'Fisika Industri', 'Kimia Industri', 'Deddy Trisnawarman'),
(6, 'Fisika Analis', 'Kimia Analis', 'Darius Andana'),
(7, 'Hitungan Industri', 'Kimia Industri', 'Samsudin'),
(8, 'Hitungan Analis', 'Kimia Analis', 'Samsudin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sekolah`
--

CREATE TABLE `tbl_sekolah` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `akreditasi` char(1) NOT NULL,
  `status` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `visimisi` varchar(256) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sekolah`
--

INSERT INTO `tbl_sekolah` (`id`, `nama`, `alamat`, `akreditasi`, `status`, `email`, `visimisi`, `gambar`) VALUES
(1, 'SMK Pelita', 'Jalan Raden Sentot Kuala Ketapang Lampung', 'B', 'Swasta', 'smkpelita@gmail.com', 'Menciptakan lulusan-lulusan yang berilmu dan berakhlak mulia', '690-background.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` char(6) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `kelas` varchar(3) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `nama`, `alamat`, `kelas`, `jurusan`, `foto`) VALUES
('NIS001', 'Imanuel Hariadi', 'Bandung', 'XII', 'Kimia Industri', '679-siswa1.jpeg'),
('NIS002', 'James Hariadi', 'Depok', 'XI', 'Kimia Industri', '678-siswa2.png'),
('NIS003', 'Yovita Hariadi', 'Yogyakarta', 'X', 'Kimia Analis', '893-siswa3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ujian`
--

CREATE TABLE `tbl_ujian` (
  `no_ujian` char(7) NOT NULL,
  `tgl_ujian` date NOT NULL,
  `nis` char(6) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `total_nilai` int(11) NOT NULL,
  `nilai_terendah` int(11) NOT NULL,
  `nilai_tertinggi` int(11) NOT NULL,
  `nilai_rata2` int(11) NOT NULL,
  `hasil_ujian` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_ujian`
--

INSERT INTO `tbl_ujian` (`no_ujian`, `tgl_ujian`, `nis`, `jurusan`, `total_nilai`, `nilai_terendah`, `nilai_tertinggi`, `nilai_rata2`, `hasil_ujian`) VALUES
('UTS-001', '2025-01-15', 'NIS001', 'Kimia Industri', 310, 40, 90, 62, 'GAGAL'),
('UTS-002', '2025-01-15', 'NIS002', 'Kimia Industri', 405, 65, 100, 81, 'LULUS'),
('UTS-003', '2025-01-15', 'NIS003', 'Kimia Analis', 355, 55, 95, 71, 'LULUS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `jabatan` varchar(128) NOT NULL,
  `foto` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `nama`, `alamat`, `jabatan`, `foto`) VALUES
(1, 'admin', '$2y$10$WFSDxK7T7eTbRYK4fEc77OlPSL334UQxFxwzzVmkLavGXgNPN9/96', 'David Hariadi', 'Jakarta', 'Kepsek', '740-David Hariadi.png'),
(2, 'ongfamily', '$2y$10$bxJKic5EbwXWB7TNVL00yegExhEPFzBNeXoOnF/CRJu/TONr4S43O', 'Keluarga Ong', 'Taman Permata Indah 1', 'Staf TU', '723-ongfamily.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nilai_ujian`
--
ALTER TABLE `tbl_nilai_ujian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pelajaran`
--
ALTER TABLE `tbl_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sekolah`
--
ALTER TABLE `tbl_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `tbl_ujian`
--
ALTER TABLE `tbl_ujian`
  ADD PRIMARY KEY (`no_ujian`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_nilai_ujian`
--
ALTER TABLE `tbl_nilai_ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_pelajaran`
--
ALTER TABLE `tbl_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_sekolah`
--
ALTER TABLE `tbl_sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
