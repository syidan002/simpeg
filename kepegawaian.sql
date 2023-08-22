-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2023 at 05:42 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kepegawaian`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL,
  `id_pegawai` int(100) NOT NULL,
  `hadir` int(100) NOT NULL,
  `izin` int(100) NOT NULL,
  `tidak_hadir` int(100) NOT NULL,
  `bulan` int(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`id_absen`, `id_pegawai`, `hadir`, `izin`, `tidak_hadir`, `bulan`, `tanggal`) VALUES
(13, 10, 20, 0, 0, 1, '2020-05-17'),
(14, 12, 20, 5, 5, 1, '2023-07-30'),
(15, 12, 20, 5, 5, 8, '2023-07-30'),
(19, 14, 24, 3, 0, 1, '2023-08-01'),
(21, 15, 23, 4, 0, 4, '2023-08-01'),
(22, 18, 24, 3, 0, 5, '2023-08-01'),
(23, 18, 24, 3, 0, 7, '2023-08-01'),
(24, 18, 24, 3, 0, 6, '2023-08-01'),
(25, 21, 23, 4, 0, 1, '2023-08-01'),
(26, 13, 23, 4, 0, 1, '2023-08-01'),
(27, 22, 20, 7, 0, 1, '2023-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`, `level`, `log`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', '2018-03-30 02:51:21'),
(3, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'User', 'user', '2018-04-02 18:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL,
  `golongan` varchar(100) NOT NULL,
  `tunjangan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`, `golongan`, `tunjangan`) VALUES
(18, 'Sekertaris', 'IV/b', 1152480),
(19, 'Kepala Subagian', 'IV/a', 921360),
(20, 'Kepala Subagian', 'III/d', 921360),
(21, 'Bendahara', 'III/c', 921360),
(22, 'Pengadministrasian Umum', 'II/d', 728000),
(23, 'Pengadministrasian Kepegawaian', 'II/b', 1322160),
(24, 'Pengadministrasian Keuangan', 'II/c', 1671440),
(25, 'Kepala Bidang', 'III/d', 921360),
(26, 'Analis Jabatan', 'III/a', 1181680),
(27, 'Analis Diklat', 'III/c', 1854080),
(28, 'Analis Kinerja', 'III/a', 2063520),
(29, 'Pranata Komputer Ahli Pertama', 'III/b', 1394720),
(30, 'Arsiparis Mahir', 'III/b', 1253040),
(31, 'Pranata Komputer Mahir', 'III/b', 1037248),
(32, 'Pranata Komputer Terampil', 'II/d', 1253040),
(33, 'Pranata Komputer Ahli Pertama', 'III/b', 1394720);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `id_jabatan` int(110) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `pendidikan` varchar(100) NOT NULL,
  `status_kep` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `id_jabatan`, `nip`, `nama`, `jk`, `foto`, `agama`, `pendidikan`, `status_kep`, `alamat`, `username`, `password`) VALUES
(13, 18, '196711041993021002', 'Dr. Ir. BAMBANG NUGROHO M.T., M.A.P.', 'L', 'foto_1690700862.jpg', 'islam', 'S2', 'Tetap', 'Perum Lembah Dieng, Blok C1 No. 10  RT/RW: 05/01', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(14, 19, '197312051994032003', 'SELVI ARIANI, S.E., M.M.', 'P', 'foto_1690701439.jpg', 'islam', 'S2', 'Tetap', 'Jl. Candi Badut No. 61  RT/RW: 05/02', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(15, 20, '198307162001121003', 'WAHYU ARIYANTO, S.STP', 'L', 'foto_1690701548.jpg', 'islam', 'S1', 'Tetap', 'Jl. Simpang Sulfat Utara XI no 16 D4  RT/RW: 04/05', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(16, 21, '198004151999032001', 'SITI ROCHIMAH, S.Sos', 'L', 'foto_1690701960.jpg', 'islam', 'S1', 'Tetap', 'Jl. Karya Timur 1 No.52  RT/RW: 15/07', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(17, 22, '196805101994031012', 'SUPARDI', 'L', 'foto_1690702045.jpg', 'islam', 'SMA', 'Tetap', 'Sitirejo Lemah Duwur RT8 RW1 Wagir', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(18, 22, '198512072010011001', 'SUDIHARJO MAWAN', 'L', 'foto_1690702111.jpg', 'islam', 'SMA', 'Tetap', 'JL BUNDER  RT/RW: 10/02', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(19, 23, '198208282012121002', 'AGUS SUPRIANTO', 'L', 'foto_1690702195.jpg', 'islam', 'S1', 'Tetap', 'PERUM BULAN TERANG UTAMA BLOK UJ 36 NO.21   RT/RW: 00/01', 'user', 'ee11cbb19052e40b07aac0ca060c23ee'),
(21, 24, '198204012014072003', ' DIYAH ISWANTI ', 'P', 'foto_1690702368.jpg', 'islam', 'SMA', 'Tetap', 'perum griya buring permai I blok A nomer 14   RT/RW: 05/05', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(22, 25, '197406171996021003', 'HENDRO MARTONO, S.AP', 'L', 'foto_1690702441.jpg', 'islam', 'S1', 'Tetap', 'Jl. Danau Semayang VIII C2 D6  RT/RW: 03/16', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(23, 26, '198305022010011002', 'WASESO AJI, S.Ikom', 'L', 'foto_1690702494.jpg', 'islam', 'S1', 'Tetap', 'JL. BINGKIL 42  RT/RW: 06/04', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(24, 25, '197908012003121003', 'Dr. FERRY ANDRIONO S.T., M.Si.', 'L', 'foto_1690702566.jpg', 'islam', 'S2', 'Tetap', 'Jl. Kamelia No. 22  RT/RW: 07/10', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(25, 23, '197902202014071003', 'ANDIKA A. SANJAYA', 'L', 'foto_1690702631.jpg', 'islam', 'S1', 'Tetap', 'JL.PROF.MOCH.YAMIN IV/17  RT/RW: 07/06', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(26, 27, '198702262015032001', 'FIKA INDRIASARI S.I.Kom', 'P', 'foto_1690702673.jpg', 'islam', 'S1', 'Tetap', 'Jalan Bantaran 3c no.12', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(27, 25, '196912302003122004', 'FITRI KURNIANA ANNISAH, S.Si., M.M', 'P', 'foto_1690702733.jpg', 'islam', 'S2', 'Tetap', 'Jl. Terusan Tidar Sakti Kav.4', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(28, 23, '196509181990031006', 'AGUS BOGO ISWONO', 'L', 'foto_1690702807.jpg', 'islam', 'SMA', 'Tetap', 'Jl. Bayam no. 04  RT/RW: 08/02', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(29, 31, '198606082009031002', 'BAYU PUTRA UTAMA A.Md', 'L', 'foto_1690702871.png', 'islam', 'S1', 'Tetap', 'JL Bukir Sari No 11  RT/RW: 02/08', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(30, 32, '198602022010011008', '198602022010011008', 'L', 'foto_1690702922.png', 'islam', 'S1', 'Tetap', 'Jalan Joyo Raharjo VI No.162  RT/RW: 02/02', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(31, 30, '198809162010012022', 'WULAN WIDYANINGTYAS, A.Md', 'L', 'foto_1690702981.png', 'islam', 'D3', 'Tetap', 'Jl. Perum Graha Kartika A17 Jl. Pelabuhan Tan  RT/RW: 06/03', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(32, 33, '198401122010012024', ' AJENG NIRA ZAINIYAH, S.Kom', 'P', 'foto_1690703095.jpg', 'islam', 'S1', 'Tetap', 'JL. S. SUPRIADI 8 A  RT/RW: 04/02', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(33, 28, '199004232020122005', 'IFA MASLUHAH S.E.', 'L', 'foto_1690703148.jpg', 'islam', 'S1', 'Tetap', 'Jl. Sunan Ampel I No 172 Dusun Randu Gembolo  RT/RW: 04/04', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tpp`
--

CREATE TABLE `tpp` (
  `id_tpp` int(11) NOT NULL,
  `id_pegawai` int(100) NOT NULL,
  `jumlah_tpp` varchar(100) NOT NULL,
  `jumlah_potongan` varchar(100) NOT NULL,
  `bulan_t` int(100) NOT NULL,
  `tahun` int(100) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tpp`
--

INSERT INTO `tpp` (`id_tpp`, `id_pegawai`, `jumlah_tpp`, `jumlah_potongan`, `bulan_t`, `tahun`, `tgl`) VALUES
(7, 8, '300000', '0%', 1, 2018, '2018-04-02'),
(9, 9, '12750000', '0%', 5, 2020, '2020-05-01'),
(10, 10, '8749970', '30%', 1, 2020, '2020-05-17'),
(11, 12, '5699970', '30%', 1, 2023, '2023-07-30'),
(12, 12, '5699970', '30%', 8, 2023, '2023-07-30'),
(16, 14, '921330', '30%', 1, 2023, '2023-08-01'),
(18, 15, '921330', '30%', 4, 2023, '2023-08-01'),
(19, 18, '727970', '30%', 5, 2023, '2023-08-01'),
(20, 18, '727970', '30%', 7, 2023, '2023-08-01'),
(21, 18, '727970', '30%', 6, 2023, '2023-08-01'),
(22, 21, '1671410', '30%', 1, 2023, '2023-08-01'),
(23, 13, '1152450', '30%', 1, 2023, '2023-08-01'),
(24, 22, '921330', '30%', 1, 2023, '2023-08-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `tpp`
--
ALTER TABLE `tpp`
  ADD PRIMARY KEY (`id_tpp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen`
--
ALTER TABLE `absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tpp`
--
ALTER TABLE `tpp`
  MODIFY `id_tpp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
