-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 21, 2024 at 07:55 AM
-- Server version: 10.11.8-MariaDB-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

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
CREATE DATABASE IF NOT EXISTS `db_sekolah` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_sekolah`;

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
  `foto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id`, `nip`, `nama`, `alamat`, `telpon`, `foto`) VALUES
(5, '199012102022101001', 'Albert S.H', 'Jakarta Pusat', '081246466854', '943-pak-albert.jpeg'),
(6, '199001102022101002', 'Iqbal Ali S.H', 'Jakarta Barat', '081335415656', '777-pak-ali.jpeg'),
(7, '199011252022101003', 'Fatimah Az-zahra', 'Jakarta Selatan', '08124646685', '382-bu-fatimah.jpeg'),
(8, '199011222022101004', 'Goncang Alam Rambe', 'Jakarta Utara', '085265950815', '780-pak-alam.jpeg'),
(9, '199011292022101005', 'Rahmatullah', 'Kemayoran Jakarta', '085265183670', 'default.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai_ujian`
--

CREATE TABLE `tbl_nilai_ujian` (
  `id` int(11) NOT NULL,
  `no_ujian` char(7) NOT NULL,
  `pelajaran` varchar(100) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `nilai_ujian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_nilai_ujian`
--

INSERT INTO `tbl_nilai_ujian` (`id`, `no_ujian`, `pelajaran`, `jurusan`, `nilai_ujian`) VALUES
(36, 'UTS-001', 'Matematika', 'Umum', 90),
(37, 'UTS-001', 'Bahasa Indonesia', 'Umum', 90),
(38, 'UTS-001', 'Bahasa Inggris', 'Umum', 90),
(39, 'UTS-001', 'Kimia Analis', 'Kimia Analis', 90),
(40, 'UTS-001', 'Mikrobiologi', 'Kimia Analis', 90),
(41, 'UTS-001', 'Kimia Organik', 'Kimia Analis', 90),
(42, 'UTS-001', 'Kimia AnOrganik', 'Kimia Analis', 90),
(43, 'UTS-002', 'Matematika', 'Umum', 90),
(44, 'UTS-002', 'Bahasa Indonesia', 'Umum', 90),
(45, 'UTS-002', 'Bahasa Inggris', 'Umum', 90),
(46, 'UTS-002', 'Kimia Analis', 'Kimia Analis', 90),
(47, 'UTS-002', 'Mikrobiologi', 'Kimia Analis', 90),
(48, 'UTS-002', 'Kimia Organik', 'Kimia Analis', 90),
(49, 'UTS-002', 'Kimia AnOrganik', 'Kimia Analis', 90),
(50, 'UTS-003', 'Matematika', 'Umum', 90),
(51, 'UTS-003', 'Bahasa Indonesia', 'Umum', 90),
(52, 'UTS-003', 'Bahasa Inggris', 'Umum', 90),
(53, 'UTS-003', 'Proses Kimia Industri', 'Kimia Industri', 90),
(54, 'UTS-003', 'Fisika', 'Kimia Industri', 85),
(55, 'UTS-003', 'Operasi Teknik Kimia', 'Kimia Industri', 80),
(56, 'UTS-003', 'Asas Teknik Kimia', 'Kimia Industri', 80),
(57, 'UTS-004', 'Matematika', 'Umum', 70),
(58, 'UTS-004', 'Bahasa Indonesia', 'Umum', 80),
(59, 'UTS-004', 'Bahasa Inggris', 'Umum', 70),
(60, 'UTS-004', 'Kimia Analis', 'Kimia Analis', 90),
(61, 'UTS-004', 'Mikrobiologi', 'Kimia Analis', 60),
(62, 'UTS-004', 'Kimia Organik', 'Kimia Analis', 50),
(63, 'UTS-004', 'Kimia AnOrganik', 'Kimia Analis', 40),
(64, 'UTS-005', 'Matematika', 'Umum', 90),
(65, 'UTS-005', 'Bahasa Indonesia', 'Umum', 90),
(66, 'UTS-005', 'Bahasa Inggris', 'Umum', 90),
(67, 'UTS-005', 'Proses Kimia Industri', 'Kimia Industri', 90),
(68, 'UTS-005', 'Fisika', 'Kimia Industri', 90),
(69, 'UTS-005', 'Operasi Teknik Kimia', 'Kimia Industri', 90),
(70, 'UTS-005', 'Asas Teknik Kimia', 'Kimia Industri', 90),
(71, 'UTS-006', 'Matematika', 'Umum', 50),
(72, 'UTS-006', 'Bahasa Indonesia', 'Umum', 40),
(73, 'UTS-006', 'Bahasa Inggris', 'Umum', 70),
(74, 'UTS-006', 'Kimia Analis', 'Kimia Analis', 50),
(75, 'UTS-006', 'Mikrobiologi', 'Kimia Analis', 70),
(76, 'UTS-006', 'Kimia Organik', 'Kimia Analis', 50),
(77, 'UTS-006', 'Kimia AnOrganik', 'Kimia Analis', 30),
(78, 'UTS-007', 'Matematika', 'Umum', 90),
(79, 'UTS-007', 'Bahasa Indonesia', 'Umum', 90),
(80, 'UTS-007', 'Bahasa Inggris', 'Umum', 80),
(81, 'UTS-007', 'Kimia Analis', 'Kimia Analis', 80),
(82, 'UTS-007', 'Mikrobiologi', 'Kimia Analis', 80),
(83, 'UTS-007', 'Kimia Organik', 'Kimia Analis', 85),
(84, 'UTS-007', 'Kimia AnOrganik', 'Kimia Analis', 85),
(85, 'UTS-008', 'Matematika', 'Umum', 70),
(86, 'UTS-008', 'Bahasa Indonesia', 'Umum', 70),
(87, 'UTS-008', 'Bahasa Inggris', 'Umum', 70),
(88, 'UTS-008', 'Kimia Analis', 'Kimia Analis', 70),
(89, 'UTS-008', 'Mikrobiologi', 'Kimia Analis', 70),
(90, 'UTS-008', 'Kimia Organik', 'Kimia Analis', 70),
(91, 'UTS-008', 'Kimia AnOrganik', 'Kimia Analis', 70),
(92, 'UTS-009', 'Matematika', 'Umum', 100),
(93, 'UTS-009', 'Bahasa Indonesia', 'Umum', 95),
(94, 'UTS-009', 'Bahasa Inggris', 'Umum', 90),
(95, 'UTS-009', 'Kimia Analis', 'Kimia Analis', 100),
(96, 'UTS-009', 'Mikrobiologi', 'Kimia Analis', 95),
(97, 'UTS-009', 'Kimia Organik', 'Kimia Analis', 95),
(98, 'UTS-009', 'Kimia AnOrganik', 'Kimia Analis', 95),
(99, 'UTS-010', 'Matematika', 'Umum', 50),
(100, 'UTS-010', 'Bahasa Indonesia', 'Umum', 40),
(101, 'UTS-010', 'Bahasa Inggris', 'Umum', 40),
(102, 'UTS-010', 'Kimia Analis', 'Kimia Analis', 50),
(103, 'UTS-010', 'Mikrobiologi', 'Kimia Analis', 40),
(104, 'UTS-010', 'Kimia Organik', 'Kimia Analis', 30),
(105, 'UTS-010', 'Kimia AnOrganik', 'Kimia Analis', 20);

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
(13, 'Matematika', 'Umum', 'Albert S.H'),
(14, 'Bahasa Indonesia', 'Umum', 'Iqbal Ali S.H'),
(20, 'Bahasa Inggris', 'Umum', 'Iqbal Ali S.H'),
(22, 'Proses Kimia Industri', 'Kimia Industri', 'Goncang Alam Rambe'),
(23, 'Fisika', 'Kimia Industri', 'Goncang Alam Rambe'),
(24, 'Operasi Teknik Kimia', 'Kimia Industri', 'Goncang Alam Rambe'),
(25, 'Asas Teknik Kimia', 'Kimia Industri', 'Goncang Alam Rambe'),
(26, 'Kimia Analis', 'Kimia Analis', 'Fatimah Az-zahra'),
(27, 'Mikrobiologi', 'Kimia Analis', 'Fatimah Az-zahra'),
(28, 'Kimia Organik', 'Kimia Analis', 'Fatimah Az-zahra'),
(29, 'Kimia AnOrganik', 'Kimia Analis', 'Fatimah Az-zahra');

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
(1, 'SMA Al-Azhar Mandiri', 'Gadog Bogor', 'A', 'Negeri', 'smaal-azharmandiri@gmail.com', 'Menjadikan lulusan Berakhlak', '39-bgLogin.jpg');

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
('NIS001', 'Aisyah Mar&#039;atul Khairiyah', 'Cigombong Bogor', 'XII', 'Kimia Analis', '320-Nina.jpeg'),
('NIS002', 'Aulia Indah Sari', 'Damasraya Sumatera Barat', 'XII', 'Kimia Analis', '260-aulia.jpeg'),
('NIS003', 'hamzah', 'Citayam Depok ', 'X', 'Kimia Industri', '118-hamzah.jpeg'),
('NIS004', 'hiro', 'Jakarta Selatan', 'XI', 'Kimia Analis', '406-hiro.jpeg'),
('NIS005', 'khalid', 'Jakarta Barat', 'XII', 'Kimia Industri', '583-Khalid.jpeg'),
('NIS006', 'Marshel', 'Tangerang Banten', 'XII', 'Kimia Analis', '997-mashel.jpeg'),
('NIS007', 'rasel', 'Gadog Bogor', 'X', 'Kimia Analis', '890-rasel.jpeg'),
('NIS008', 'Malika ufaira al-haqqani', 'Bekasi ', 'XII', 'Kimia Industri', '404-malika.jpeg'),
('NIS009', 'andina', 'Serang Banten', 'XII', 'Kimia Analis', '222-andina.jpeg'),
('NIS010', 'Trisya Rahadatul Aisy', 'Pekanbaru Riau', 'XII', 'Kimia Analis', '360-trisya.jpeg'),
('NIS011', 'Mikyal Faizin', 'Jakarta', 'XII', 'Kimia Analis', '553-WukxruJW.jpeg'),
('NIS012', 'Nabil Alghifari', 'Ciamis', 'XII', 'Kimia Analis', '996-Khalid.jpeg');

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
('UTS-001', '2024-11-19', 'NIS001', 'Kimia Analis', 630, 90, 90, 90, 'LULUS'),
('UTS-002', '2024-11-19', 'NIS002', 'Kimia Analis', 630, 90, 90, 90, 'LULUS'),
('UTS-003', '2024-11-19', 'NIS003', 'Kimia Industri', 605, 80, 90, 86, 'LULUS'),
('UTS-004', '2024-11-19', 'NIS004', 'Kimia Analis', 460, 40, 90, 66, 'GAGAL'),
('UTS-005', '2024-11-19', 'NIS005', 'Kimia Industri', 630, 90, 90, 90, 'LULUS'),
('UTS-006', '2024-11-19', 'NIS006', 'Kimia Analis', 360, 30, 70, 51, 'GAGAL'),
('UTS-007', '2024-11-19', 'NIS010', 'Kimia Analis', 590, 80, 90, 84, 'LULUS'),
('UTS-008', '2024-11-19', 'NIS007', 'Kimia Analis', 490, 70, 70, 70, 'LULUS'),
('UTS-009', '2024-11-20', 'NIS012', 'Kimia Analis', 670, 90, 100, 96, 'LULUS'),
('UTS-010', '2024-11-20', 'NIS009', 'Kimia Analis', 270, 20, 50, 39, 'GAGAL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `jabatan` varchar(128) NOT NULL,
  `foto` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `nama`, `alamat`, `jabatan`, `foto`) VALUES
(13, 'Admin', '$2y$10$1DSbB3SwuwtZyOxw7D6Y8O63UKG2oC6kJnXkTKcZZClMIHcwqTFDq', 'Alam', 'Bojong Sari', 'Kepsek', '695-pak-alam.jpeg'),
(14, 'Admin2', '$2y$10$NUjaayYsMMxB8vwM6pMeM.sex6Ctud2jPy63CdTnV5Ly5ioy6YLky', 'Fatimah', 'Jakarta Timur', 'Staf TU', '935-bu-fatimah.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','readonly') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin'),
(2, 'guest', '81dc9bdb52d04dc20036dbd8313ed055', 'readonly');

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_nilai_ujian`
--
ALTER TABLE `tbl_nilai_ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `tbl_pelajaran`
--
ALTER TABLE `tbl_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_sekolah`
--
ALTER TABLE `tbl_sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
