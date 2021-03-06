-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2015 at 05:18 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sdp2015`
--

-- --------------------------------------------------------

--
-- Table structure for table `beasiswa`
--

CREATE TABLE IF NOT EXISTS `beasiswa` (
  `id` varchar(15) NOT NULL,
  `informasi_beasiswa_nama_beasiswa` varchar(30) NOT NULL,
  `mahasiswa_nrp` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beasiswa`
--

INSERT INTO `beasiswa` (`id`, `informasi_beasiswa_nama_beasiswa`, `mahasiswa_nrp`) VALUES
('BPP201311020002', 'Sosial Ekonomi', '213116270'),
('BSP201311020001', 'PMB', '213116256');

-- --------------------------------------------------------

--
-- Table structure for table `calon_mahasiswa`
--

CREATE TABLE IF NOT EXISTS `calon_mahasiswa` (
  `nomor_registrasi_id` varchar(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(1) DEFAULT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `kewarganegaraan` varchar(3) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `provinsi` varchar(30) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `kodepos` varchar(5) DEFAULT NULL,
  `nomor_hp` varchar(12) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `rapor` varchar(100) DEFAULT NULL,
  `nilai_mat` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nilai_inggris` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nilai_rata_rata` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `akte_kelahiran` varchar(100) DEFAULT NULL,
  `kartu_keluarga` varchar(100) DEFAULT NULL,
  `nama_sekolah` varchar(30) DEFAULT NULL,
  `alamat_sekolah` varchar(50) DEFAULT NULL,
  `provinsi_sekolah` varchar(30) DEFAULT NULL,
  `kota_sekolah` varchar(30) DEFAULT NULL,
  `kodepos_sekolah` varchar(6) DEFAULT NULL,
  `nomor_telp_sekolah` varchar(12) DEFAULT NULL,
  `relasi` varchar(1) DEFAULT NULL,
  `nama_wali` varchar(50) DEFAULT NULL,
  `alamat_wali` varchar(50) DEFAULT NULL,
  `provinsi_wali` varchar(30) DEFAULT NULL,
  `kota_wali` varchar(30) DEFAULT NULL,
  `kodepos_wali` varchar(6) DEFAULT NULL,
  `nomor_telp_wali` int(12) DEFAULT NULL,
  `pekerjaan_wali` varchar(30) DEFAULT NULL,
  `skhun` varchar(100) DEFAULT NULL,
  `ijazah` varchar(100) DEFAULT NULL,
  `informasi_kurikulum_id` varchar(7) DEFAULT NULL,
  `tanggal_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calon_mahasiswa`
--

INSERT INTO `calon_mahasiswa` (`nomor_registrasi_id`, `email`, `password`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `kewarganegaraan`, `agama`, `alamat`, `provinsi`, `kota`, `kodepos`, `nomor_hp`, `foto`, `rapor`, `nilai_mat`, `nilai_inggris`, `nilai_rata_rata`, `akte_kelahiran`, `kartu_keluarga`, `nama_sekolah`, `alamat_sekolah`, `provinsi_sekolah`, `kota_sekolah`, `kodepos_sekolah`, `nomor_telp_sekolah`, `relasi`, `nama_wali`, `alamat_wali`, `provinsi_wali`, `kota_wali`, `kodepos_wali`, `nomor_telp_wali`, `pekerjaan_wali`, `skhun`, `ijazah`, `informasi_kurikulum_id`, `tanggal_create`, `status`) VALUES
('32gh56', 'asdasd@gmail.com', '123456', 'Christian Limanto', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-11 23:38:23', 1),
('jktyi6', 'qweqwe@gmail.com', '321321', 'Andre Gossidhy', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-11 23:39:26', 1),
('sdg23r', 'zxczcx@gmail.com', 'asdasd', 'Cynthia Wangsawinata', 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-11 23:40:07', 1),
('w45h42', 'dandan@gmail.com', 'dandan', 'Daniel Kurniawan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-11 23:41:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_umum`
--

CREATE TABLE IF NOT EXISTS `data_umum` (
  `index` varchar(50) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_umum`
--

INSERT INTO `data_umum` (`index`, `value`) VALUES
('lama_sks', '3000'),
('tahun_ajaran_sekarang', 'GASAL 2014/2015');

-- --------------------------------------------------------

--
-- Table structure for table `dispensasi`
--

CREATE TABLE IF NOT EXISTS `dispensasi` (
  `id` varchar(15) NOT NULL,
  `nama_dispensasi` varchar(30) NOT NULL,
  `periode_cicilan` tinyint(3) unsigned NOT NULL,
  `tanggal_batas` date NOT NULL,
  `calon_mahasiswa_nomor_registrasi` varchar(6) DEFAULT NULL,
  `mahasiswa_nrp` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dispensasi`
--

INSERT INTO `dispensasi` (`id`, `nama_dispensasi`, `periode_cicilan`, `tanggal_batas`, `calon_mahasiswa_nomor_registrasi`, `mahasiswa_nrp`) VALUES
('UPP201511030001', 'Dispensasi UPP - Undur', 0, '2015-11-30', '0', '213116270');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
  `nip` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nomor_telepon` varchar(12) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `kepala_jurusan_id` varchar(6) DEFAULT NULL COMMENT 'mereference pada jurusan.id',
  `jumlah_sks_mengajar` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nip`, `nama`, `nomor_telepon`, `email`, `password`, `kepala_jurusan_id`, `jumlah_sks_mengajar`, `status`) VALUES
('DO001', 'Budi Sutanto', NULL, 'budi@stts.edu', 'budibudi', NULL, 0, '1'),
('DO002', 'Stefanie', NULL, 'ste@gmail.com', 'steste', NULL, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `drevisi_penilaian`
--

CREATE TABLE IF NOT EXISTS `drevisi_penilaian` (
  `id` varchar(10) NOT NULL,
  `hrevisi_penilaian_id` varchar(9) NOT NULL,
  `mahasiswa_nrp` varchar(9) NOT NULL,
  `nilai_akhir_sebelum` tinyint(3) unsigned NOT NULL,
  `nilai_akhir_sesudah` tinyint(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hrevisi_penilaian`
--

CREATE TABLE IF NOT EXISTS `hrevisi_penilaian` (
  `id` varchar(9) NOT NULL,
  `kelas_id` varchar(6) NOT NULL,
  `catatan` text,
  `status_revisi` tinyint(1) NOT NULL,
  `tanggal_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `informasi_beasiswa`
--

CREATE TABLE IF NOT EXISTS `informasi_beasiswa` (
  `nama_beasiswa` varchar(30) NOT NULL,
  `aspek_dipotong` varchar(10) NOT NULL,
  `berapa_dipotong` tinyint(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `informasi_beasiswa`
--

INSERT INTO `informasi_beasiswa` (`nama_beasiswa`, `aspek_dipotong`, `berapa_dipotong`) VALUES
('Kerja Sama', 'USP', 100),
('Minat Bakat', 'SPP', 6),
('PMB', 'USP', 25),
('Prestasi', 'SKS', 10),
('Sosial Ekonomi', 'SPP', 6);

-- --------------------------------------------------------

--
-- Table structure for table `informasi_kurikulum`
--

CREATE TABLE IF NOT EXISTS `informasi_kurikulum` (
  `id` varchar(8) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `tahun_angkatan` varchar(9) NOT NULL,
  `kategori` tinyint(4) NOT NULL,
  `harga_usp` mediumint(8) unsigned NOT NULL,
  `harga_spp` mediumint(8) unsigned NOT NULL,
  `harga_sks` mediumint(8) unsigned NOT NULL,
  `sks` tinyint(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `informasi_kurikulum`
--

INSERT INTO `informasi_kurikulum` (`id`, `jurusan`, `tahun_angkatan`, `kategori`, `harga_usp`, `harga_spp`, `harga_sks`, `sks`) VALUES
('D3INF131', 'D3-Informatika', '2013/2014', 1, 7000000, 200000, 250000, 88),
('S1DKV131', 'S1-Desain Komunikasi Visual', '2013/2014', 1, 8000000, 175000, 200000, 144),
('S1DKV132', 'S1-Desain Komunikasi Visual', '2013/2014', 2, 9500000, 175000, 200000, 144),
('S1DKV133', 'S1-Desain Komunikasi Visual', '2013/2014', 3, 11000000, 175000, 200000, 144),
('S1DKV141', 'S1-Desain Komunikasi Visual', '2014/2015', 1, 9000000, 200000, 250000, 144),
('S1DKV142', 'S1-Desain Komunikasi Visual', '2014/2015', 2, 10500000, 200000, 250000, 144),
('S1DKV143', 'S1-Desain Komunikasi Visual', '2014/2015', 3, 12000000, 200000, 250000, 144),
('S1INF131', 'S1-Informatika', '2013/2014', 1, 10000000, 250000, 300000, 144),
('S1INF132', 'S1-informatika', '2013/2014', 2, 12500000, 250000, 300000, 144),
('S1INF133', 'S1-Informatika', '2013/2014', 3, 15000000, 250000, 300000, 144),
('S1INF141', 'S1-Informatika', '2014/2015', 1, 11000000, 300000, 325000, 144),
('S1INF142', 'S1-Informatika', '2014/2015', 2, 13500000, 300000, 325000, 144),
('S1INF143', 'S1-Informatika', '2014/2015', 3, 16000000, 300000, 325000, 144),
('S1SIB131', 'S1-Sistem Informasi Bisnis', '2013/2014', 1, 9500000, 200000, 250000, 144),
('S1SIB132', 'S1-Sistem Informasi Bisnis', '2013/2014', 2, 11500000, 200000, 250000, 144),
('S1SIB133', 'S1-Sistem Informasi Bisnis', '2013/2014', 3, 13500000, 200000, 250000, 144),
('S1SIB141', 'S1-Sistem Informasi Bisnis', '2014/2015', 1, 10500000, 250000, 275000, 144),
('S1SIB142', 'S1-Sistem Informasi Bisnis', '2014/2015', 2, 12500000, 250000, 275000, 144),
('S1SIB143', 'S1-Sistem Informasi Bisnis', '2014/2015', 3, 14500000, 250000, 275000, 144);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id` varchar(6) NOT NULL,
  `nama` varchar(1) NOT NULL DEFAULT '-',
  `mata_kuliah_id` varchar(6) NOT NULL,
  `ruangan_id` varchar(5) DEFAULT NULL,
  `dosen_nip` varchar(11) DEFAULT NULL,
  `hari` varchar(1) DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `persentase_uts` tinyint(3) unsigned NOT NULL DEFAULT '30',
  `persentase_uas` tinyint(3) unsigned NOT NULL DEFAULT '30',
  `persentase_tugas` tinyint(3) unsigned NOT NULL DEFAULT '40',
  `tambahan_grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status_konfirmasi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `komentar_kajur` text NOT NULL,
  `kelas_id` varchar(6) DEFAULT NULL COMMENT 'buat_gabung kelas',
  `tahun_ajaran` varchar(20) NOT NULL,
  `tanggal_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tanggal_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `mata_kuliah_id`, `ruangan_id`, `dosen_nip`, `hari`, `jam_mulai`, `persentase_uts`, `persentase_uas`, `persentase_tugas`, `tambahan_grade`, `status_konfirmasi`, `komentar_kajur`, `kelas_id`, `tahun_ajaran`, `tanggal_create`, `tanggal_update`, `status`) VALUES
('K00001', '-', 'MK001', 'R0001', 'DO001', '1', '05:00:00', 30, 30, 40, 0, 0, '', NULL, 'GASAL 2014/2015', '2015-11-10 20:47:36', '2015-11-10 20:47:36', 1),
('K00002', '-', 'MK002', 'R0001', 'DO001', '2', '09:00:00', 30, 30, 40, 0, 0, '', NULL, 'GASAL 2014/2015', '2015-11-10 20:47:36', '2015-11-10 20:47:36', 1),
('K00003', '-', 'MK003', 'R0001', 'DO002', '1', '11:00:00', 30, 30, 40, 0, 1, '', NULL, 'GASAL 2014/2015', '2015-11-10 20:47:36', '2015-11-10 20:47:36', 1),
('K00004', '-', 'MK004', 'R0001', 'DO001', '2', NULL, 30, 30, 40, 0, 1, '', NULL, 'GENAP 2013/2014', '2015-11-10 20:47:36', '2015-11-10 20:47:36', 1),
('K00005', '-', 'MK005', 'R0001', 'DO001', '1', NULL, 30, 30, 40, 0, 2, '', NULL, 'GENAP 2013/2014', '2015-11-10 20:47:36', '2015-11-10 20:47:36', 1),
('K00006', '-', 'MK006', 'R0001', NULL, NULL, NULL, 30, 30, 40, 0, 0, '', NULL, 'GENAP 2013/2014', '2015-11-10 20:47:36', '2015-11-10 20:47:36', 1),
('K00007', '-', 'MK007', 'R0001', NULL, NULL, NULL, 30, 30, 40, 0, 0, '', NULL, 'GENAP 2013/2014', '2015-11-10 20:47:36', '2015-11-10 20:47:36', 1),
('K00008', '-', 'MK008', 'R0001', NULL, NULL, NULL, 30, 30, 40, 0, 0, '', NULL, 'GENAP 2013/2014', '2015-11-10 20:47:36', '2015-11-10 20:47:36', 1),
('K00009', '-', 'MK009', 'R0001', NULL, NULL, NULL, 30, 30, 40, 0, 0, '', NULL, 'GENAP 2013/2014', '2015-11-10 20:47:36', '2015-11-10 20:47:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kelas_mahasiswa`
--

CREATE TABLE IF NOT EXISTS `kelas_mahasiswa` (
  `mahasiswa_nrp` varchar(9) NOT NULL COMMENT 'NYY',
  `kelas_id` varchar(6) NOT NULL,
  `mata_kuliah_id` varchar(6) NOT NULL,
  `status_ambil` varchar(10) NOT NULL,
  `nilai_id` varchar(9) DEFAULT NULL COMMENT 'nilai sebenarnya'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='mahasiswa mengambil kelas';

--
-- Dumping data for table `kelas_mahasiswa`
--

INSERT INTO `kelas_mahasiswa` (`mahasiswa_nrp`, `kelas_id`, `mata_kuliah_id`, `status_ambil`, `nilai_id`) VALUES
('213116256', 'K00001', 'MK001', 'A', 'N62560001'),
('213116256', 'K00002', 'MK002', 'A', 'N62560002'),
('213116256', 'K00003', 'MK003', 'A', 'N62560003'),
('213116256', 'K00004', 'MK004', 'A', 'N62560004'),
('213116270', 'K00005', 'MK005', 'A', 'N62700001'),
('213116270', 'K00006', 'MK006', 'A', 'N62700002'),
('213116270', 'K00009', 'MK009', 'A', 'N62700003');

-- --------------------------------------------------------

--
-- Table structure for table `kode_verifikasi`
--

CREATE TABLE IF NOT EXISTS `kode_verifikasi` (
  `id` varchar(6) NOT NULL COMMENT '6 digit angka kode verifikasi',
  `nomor_registrasi_id` varchar(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tanggal_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
  `id` varchar(6) NOT NULL,
  `provinsi_id` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_penilaian`
--

CREATE TABLE IF NOT EXISTS `log_penilaian` (
  `id` varchar(11) NOT NULL,
  `keterangan` text,
  `tanggal_create` datetime NOT NULL,
  `kelas_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_penilaian_nilai`
--

CREATE TABLE IF NOT EXISTS `log_penilaian_nilai` (
  `nilai_id` varchar(9) NOT NULL,
  `log_penilaian_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `nrp` varchar(9) NOT NULL,
  `nomor_registrasi_id` varchar(6) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kewarganegaraan` varchar(3) NOT NULL,
  `status_sosial` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `kodepos` varchar(5) NOT NULL,
  `nomor_hp` varchar(12) NOT NULL,
  `relasi` varchar(1) NOT NULL,
  `nama_wali` varchar(30) NOT NULL,
  `alamat_wali` varchar(50) NOT NULL,
  `provinsi_wali` varchar(30) NOT NULL,
  `kota_wali` varchar(30) NOT NULL,
  `nomor_telp_wali` varchar(12) NOT NULL,
  `pekerjaan_wali` varchar(30) NOT NULL,
  `status_perwalian` varchar(1) NOT NULL DEFAULT '0',
  `sks` smallint(3) unsigned NOT NULL DEFAULT '0',
  `ipk` varchar(5) NOT NULL DEFAULT '0',
  `informasi_kurikulum_id` varchar(8) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nrp`, `nomor_registrasi_id`, `email`, `password`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `kewarganegaraan`, `status_sosial`, `agama`, `alamat`, `provinsi`, `kota`, `kodepos`, `nomor_hp`, `relasi`, `nama_wali`, `alamat_wali`, `provinsi_wali`, `kota_wali`, `nomor_telp_wali`, `pekerjaan_wali`, `status_perwalian`, `sks`, `ipk`, `informasi_kurikulum_id`, `status`) VALUES
('213116178', 'jktyi6', 'qweqwe@gmail.com', '321321', 'Andre Gossidhy', 'L', 'Surabaya', '1995-03-03', 'WNI', 'Lajang', 'Kristen', 'Dukuh Kupang Timur XX/55', 'Jawa Timur', 'Surabaya', '65523', '0875322142', 'O', 'Lee Kum Kee', 'Semu 223 / 33', 'Jawa Timur', 'Surabaya', '085213131313', 'Wiraswasta', '0', 18, '0', 'S1INF132', 1),
('213116193', '32gh56', 'asdasd@gmail.com', '123456', 'Christian Limanto', 'L', 'Surabaya', '1995-01-01', 'WNI', 'Lajang', 'Kristen', 'Ngagel Jaya Selatan 22-30', 'Jawa Timur', 'Surabaya', '60223', '08123456789', 'O', 'Budi Sutanto', 'Asem 22/33', 'Jawa Timur', 'Surabaya', '03175432445', 'Swasta', '0', 18, '0', 'S1INF131', 1),
('213116195', 'sdg23r', 'zxczcx@gmail.com', '567906', 'Cynthia Wangsawinata', 'P', 'Surabaya', '1995-05-05', 'WNI', 'Lajang', 'Kristen', 'Semolowaru 123', 'Jawa Timur', 'Surabaya', '61122', '0852342155', 'O', 'Lee Kuan Yew', 'Karet 312', 'Jawa Timur', 'Surabaya', '0813213212', 'Wiraswasta', '0', 18, '0', 'S1INF131', 1),
('213116200', 'w45h42', 'dandan@gmail.com', 'dandan', 'Daniel Kurniawan', 'L', 'Surabaya', '1995-07-07', 'WNI', 'Lajang', 'Kristen', 'Sukomanunggal X/5', 'Jawa Timur', 'Surabaya', '65234', '08123423422', 'O', 'Jack Ma', 'Sukomanunggal X/5', 'Jawa Timur', 'Surabaya', '08155232323', 'Wiraswasta', '0', 18, '0', 'S1INF132', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE IF NOT EXISTS `mata_kuliah` (
  `id` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `deskripsi` text,
  `semester` tinyint(2) unsigned NOT NULL,
  `jumlah_sks` tinyint(2) unsigned NOT NULL,
  `informasi_kurikulum_id` varchar(8) DEFAULT NULL,
  `lulus_minimal` varchar(2) NOT NULL,
  `berpraktikum` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id`, `nama`, `deskripsi`, `semester`, `jumlah_sks`, `informasi_kurikulum_id`, `lulus_minimal`, `berpraktikum`, `status`) VALUES
('MK001', 'Intro To Programming', 'ITP', 1, 3, 'S1INF131', 'C', 0, 1),
('MK002', 'Bahasa Indonesia', 'BI', 1, 2, 'S1INF131', 'D', 0, 1),
('MK003', 'Agama', 'AGAMA', 1, 2, 'S1INF131', 'D', 0, 1),
('MK004', 'Internet dan World Wide Web', 'IWWW', 2, 3, 'S1INF131', 'C', 0, 1),
('MK005', 'Database', 'DB', 2, 3, 'S1INF131', 'C', 1, 1),
('MK006', 'Jaringan Komputer', 'JARKOM', 2, 3, 'S1INF131', 'C', 0, 1),
('MK007', 'Pemrograman Visual', 'PV', 3, 3, 'S1INF131', 'C', 1, 1),
('MK008', 'Pemrograman Aplikasi Internet', 'APLIN', 3, 3, 'S1INF131', 'C', 1, 1),
('MK009', 'Pemrograman Citra Digital', 'MZ LUKMAN MZ LUKMAN', 4, 3, 'S1INF131', 'C', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
  `id` varchar(9) NOT NULL,
  `uts` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uas` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tugas` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nilai_akhir` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nilai_akhir_grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nilai_grade` varchar(1) NOT NULL DEFAULT 'T'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `uts`, `uas`, `tugas`, `nilai_akhir`, `nilai_akhir_grade`, `nilai_grade`) VALUES
('N62560001', 56, 40, 80, 70, 75, 'B'),
('N62560002', 56, 40, 20, 56, 54, 'A'),
('N62560003', 65, 70, 0, 60, 65, 'C'),
('N62560004', 0, 0, 0, 0, 0, 'T'),
('N62700001', 0, 0, 0, 0, 0, 'T'),
('N62700002', 0, 0, 0, 0, 0, 'T'),
('N62700003', 0, 0, 0, 0, 0, 'T'),
('N62700004', 0, 0, 0, 0, 0, 'T');

-- --------------------------------------------------------

--
-- Table structure for table `nomor_registrasi`
--

CREATE TABLE IF NOT EXISTS `nomor_registrasi` (
  `id` varchar(6) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = belum terpakai, 1 = sudah terpakai untuk registrasi'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nomor_registrasi`
--

INSERT INTO `nomor_registrasi` (`id`, `status`) VALUES
('2tg24b', 0),
('32gh56', 1),
('3v3v34', 0),
('jktyi6', 1),
('sdg23r', 1),
('w45h42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE IF NOT EXISTS `notifikasi` (
  `id` int(12) NOT NULL,
  `mahasiswa_nrp` varchar(9) DEFAULT NULL,
  `dosen_nip` varchar(11) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text,
  `tanggal_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_baca` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE IF NOT EXISTS `pembayaran` (
  `id` varchar(15) NOT NULL,
  `jumlah` mediumint(8) unsigned NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `calon_mahasiswa_nomor_registrasi` varchar(6) NOT NULL,
  `mahasiswa_nrp` varchar(9) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1',
  `status_lihat` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `jumlah`, `tanggal_bayar`, `calon_mahasiswa_nomor_registrasi`, `mahasiswa_nrp`, `status`, `status_lihat`) VALUES
('SKS201508100001', 3398000, '2015-10-08', '130126', '213116270', '1', '0'),
('SKS201510100002', 3398000, '2015-08-07', '130126', '213116270', '1', '0'),
('SKS201512100003', 2230000, '2015-12-07', '130126', '213116270', '0', '0'),
('SPP201508100001', 3398000, '2015-08-02', '130126', '213116270', '1', '0'),
('SPP201510100002', 3398000, '2015-10-04', '130126', '213116270', '1', '0'),
('SPP201512100003', 2230000, '2015-12-06', '130126', '213116270', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE IF NOT EXISTS `provinsi` (
  `id` varchar(6) NOT NULL,
  `nama` varchar(50) NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE IF NOT EXISTS `ruangan` (
  `id` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kapasitas` int(3) DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id`, `nama`, `kapasitas`, `status`) VALUES
('R0001', 'B100', 69, 1);

-- --------------------------------------------------------

--
-- Table structure for table `syarat_matakuliah`
--

CREATE TABLE IF NOT EXISTS `syarat_matakuliah` (
  `id_matakuliah` varchar(5) NOT NULL,
  `id_syarat_matakuliah` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tagihan`
--

CREATE TABLE IF NOT EXISTS `tagihan` (
  `id` varchar(15) NOT NULL,
  `jumlah` mediumint(8) unsigned NOT NULL,
  `tanggal_batas` date NOT NULL,
  `calon_mahasiswa_nomor_registrasi` varchar(6) NOT NULL,
  `mahasiswa_nrp` varchar(9) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1',
  `status_lihat` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tagihan`
--

INSERT INTO `tagihan` (`id`, `jumlah`, `tanggal_batas`, `calon_mahasiswa_nomor_registrasi`, `mahasiswa_nrp`, `status`, `status_lihat`) VALUES
('SKS201508100001', 1900000, '2015-08-10', '130126', '213116270', '1', '0'),
('SKS201508100004', 1900000, '2015-08-10', '130127', '213116256', '1', '0'),
('SKS201510100002', 2300000, '2015-10-10', '130126', '213116270', '1', '0'),
('SKS201510100005', 2300000, '2015-10-10', '130127', '213116256', '1', '0'),
('SKS201512100006', 1900000, '2015-12-10', '130127', '213116256', '0', '0'),
('SPP201508100001', 1900000, '2015-08-10', '130126', '213116270', '1', '0'),
('SPP201508100004', 1900000, '2015-08-10', '130127', '213116256', '1', '0'),
('SPP201510100002', 2300000, '2015-10-10', '130126', '213116270', '1', '0'),
('SPP201510100005', 2300000, '2015-10-10', '130127', '213116256', '1', '0'),
('SPP201512100003', 1900000, '2015-12-10', '130126', '213116270', '0', '0'),
('SPP201512100006', 1900000, '2015-12-10', '130127', '213116256', '0', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beasiswa`
--
ALTER TABLE `beasiswa`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_beasiswa_informasi_beasiswa` (`informasi_beasiswa_nama_beasiswa`);

--
-- Indexes for table `calon_mahasiswa`
--
ALTER TABLE `calon_mahasiswa`
 ADD PRIMARY KEY (`nomor_registrasi_id`), ADD KEY `informasi_kurikulum_id` (`informasi_kurikulum_id`), ADD KEY `nomor_registrasi_id` (`nomor_registrasi_id`) USING BTREE;

--
-- Indexes for table `data_umum`
--
ALTER TABLE `data_umum`
 ADD PRIMARY KEY (`index`);

--
-- Indexes for table `dispensasi`
--
ALTER TABLE `dispensasi`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
 ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `drevisi_penilaian`
--
ALTER TABLE `drevisi_penilaian`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_hrevisi_drevisi` (`hrevisi_penilaian_id`);

--
-- Indexes for table `hrevisi_penilaian`
--
ALTER TABLE `hrevisi_penilaian`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasi_beasiswa`
--
ALTER TABLE `informasi_beasiswa`
 ADD PRIMARY KEY (`nama_beasiswa`);

--
-- Indexes for table `informasi_kurikulum`
--
ALTER TABLE `informasi_kurikulum`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_kelas_mata_kuliah` (`mata_kuliah_id`), ADD KEY `fk_kelas_ruangan` (`ruangan_id`), ADD KEY `fk_dosen_kelas` (`dosen_nip`), ADD KEY `fk_kelas_kelas` (`kelas_id`);

--
-- Indexes for table `kelas_mahasiswa`
--
ALTER TABLE `kelas_mahasiswa`
 ADD PRIMARY KEY (`mahasiswa_nrp`,`kelas_id`), ADD KEY `kelas_id` (`kelas_id`), ADD KEY `fk_kelas_mahasiswa_mata_kuliah` (`mata_kuliah_id`), ADD KEY `fk_kelas_mahasiswa_nilai` (`nilai_id`);

--
-- Indexes for table `kode_verifikasi`
--
ALTER TABLE `kode_verifikasi`
 ADD PRIMARY KEY (`id`), ADD KEY `nomor_registrasi_id` (`nomor_registrasi_id`) USING BTREE;

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
 ADD PRIMARY KEY (`id`), ADD KEY `provinsi_id` (`provinsi_id`) USING BTREE;

--
-- Indexes for table `log_penilaian`
--
ALTER TABLE `log_penilaian`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_penilaian_nilai`
--
ALTER TABLE `log_penilaian_nilai`
 ADD PRIMARY KEY (`nilai_id`,`log_penilaian_id`), ADD KEY `log_penilaian_id` (`log_penilaian_id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
 ADD PRIMARY KEY (`nrp`), ADD UNIQUE KEY `nomor_registrasi_id_2` (`nomor_registrasi_id`), ADD UNIQUE KEY `email` (`email`), ADD KEY `nomor_registrasi_id` (`nomor_registrasi_id`), ADD KEY `informasi_kurikulum_id` (`informasi_kurikulum_id`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nomor_registrasi`
--
ALTER TABLE `nomor_registrasi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syarat_matakuliah`
--
ALTER TABLE `syarat_matakuliah`
 ADD PRIMARY KEY (`id_matakuliah`);

--
-- Indexes for table `tagihan`
--
ALTER TABLE `tagihan`
 ADD UNIQUE KEY `id` (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `beasiswa`
--
ALTER TABLE `beasiswa`
ADD CONSTRAINT `fk_beasiswa_informasi_beasiswa` FOREIGN KEY (`informasi_beasiswa_nama_beasiswa`) REFERENCES `informasi_beasiswa` (`nama_beasiswa`) ON DELETE CASCADE;

--
-- Constraints for table `calon_mahasiswa`
--
ALTER TABLE `calon_mahasiswa`
ADD CONSTRAINT `fk_informasi_kurikulum_id_calon_mahasiswa` FOREIGN KEY (`informasi_kurikulum_id`) REFERENCES `informasi_kurikulum` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `fk_nomor_registrasi_id_calon_mahasiswa` FOREIGN KEY (`nomor_registrasi_id`) REFERENCES `nomor_registrasi` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drevisi_penilaian`
--
ALTER TABLE `drevisi_penilaian`
ADD CONSTRAINT `fk_hrevisi_drevisi` FOREIGN KEY (`hrevisi_penilaian_id`) REFERENCES `hrevisi_penilaian` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
ADD CONSTRAINT `fk_dosen_kelas` FOREIGN KEY (`dosen_nip`) REFERENCES `dosen` (`nip`) ON DELETE CASCADE,
ADD CONSTRAINT `fk_kelas_kelas` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `fk_kelas_mata_kuliah` FOREIGN KEY (`mata_kuliah_id`) REFERENCES `mata_kuliah` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `fk_kelas_ruangan` FOREIGN KEY (`ruangan_id`) REFERENCES `ruangan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kelas_mahasiswa`
--
ALTER TABLE `kelas_mahasiswa`
ADD CONSTRAINT `fk_kelas_mahasiswa_mata_kuliah` FOREIGN KEY (`mata_kuliah_id`) REFERENCES `mata_kuliah` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `fk_kelas_mahasiswa_nilai` FOREIGN KEY (`nilai_id`) REFERENCES `nilai` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `kelas_mahasiswa_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kode_verifikasi`
--
ALTER TABLE `kode_verifikasi`
ADD CONSTRAINT `fk_nomor_registrasi_id_kode_verifikasi` FOREIGN KEY (`nomor_registrasi_id`) REFERENCES `nomor_registrasi` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kota`
--
ALTER TABLE `kota`
ADD CONSTRAINT `fk_provinsi_id_kota` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `log_penilaian_nilai`
--
ALTER TABLE `log_penilaian_nilai`
ADD CONSTRAINT `log_penilaian_nilai_ibfk_1` FOREIGN KEY (`nilai_id`) REFERENCES `nilai` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `log_penilaian_nilai_ibfk_2` FOREIGN KEY (`log_penilaian_id`) REFERENCES `log_penilaian` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
ADD CONSTRAINT `fk_informasi_kurikulum_id_mahasiswa` FOREIGN KEY (`informasi_kurikulum_id`) REFERENCES `informasi_kurikulum` (`id`),
ADD CONSTRAINT `fk_nomor_registrasi_id_mahasiswa` FOREIGN KEY (`nomor_registrasi_id`) REFERENCES `nomor_registrasi` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
