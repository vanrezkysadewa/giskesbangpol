-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 05 Mar 2019 pada 15.19
-- Versi server: 10.1.37-MariaDB-cll-lve
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giskesbangpol_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_organisasi`
--

CREATE TABLE `jenis_organisasi` (
  `id_jenis` int(11) NOT NULL,
  `jenis_organisasi` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `foto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_organisasi`
--

INSERT INTO `jenis_organisasi` (`id_jenis`, `jenis_organisasi`, `keterangan`, `foto`) VALUES
(1, 'LSM', 'LEMBAGA SWADAYA MASYARAKAT', '1035622892-20181105-153129.jpg'),
(2, 'ORMAS', 'ORGANISASI MASYARAKAT', '634700706-20181105-152725.jpg'),
(3, 'PERKUMPULAN', 'PERKUMPULAN', ''),
(4, 'YAYASAN', 'YAYASAN', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `pesan` text NOT NULL,
  `tgl_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `email`, `subject`, `pesan`, `tgl_masuk`) VALUES
(2, 'vanrezky', 'vanrezkysadewa@gmail.com', 'tentang ormas', 'Tidak mudah bagi semua orang untuk mengucapkan terima kasih, karena kebanyakan orang akan merasa gengsi atau malu ketika mau mengucapkan kata terima kasih kepada seseorang yang telah menolongnya.  ', '2019-01-25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi_organisasi`
--

CREATE TABLE `lokasi_organisasi` (
  `id_organisasi` bigint(20) NOT NULL,
  `nama_organisasi` varchar(100) NOT NULL,
  `nama_pemimpin` varchar(100) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telp` bigint(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tanggal_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lokasi_organisasi`
--

INSERT INTO `lokasi_organisasi` (`id_organisasi`, `nama_organisasi`, `nama_pemimpin`, `id_jenis`, `latitude`, `longitude`, `alamat`, `telp`, `foto`, `tanggal_update`) VALUES
(35, 'Forum Peduli Masyarakat Miskin (FPPMM)', 'Suhermanto', 2, '0.5599495894583619', '101.45865856236492', 'Jl Telu Leok, RT 003, RW 003, Kelurahan Limbungan, Kecamatan Rumbai Pesisir', 81275380499, '35087320627-20190124-121225.jpeg', '2019-01-26'),
(36, 'Pemuda Panca Marga', '-', 2, '0.5275767850237055', '101.44238023585353', 'Jl. A. Yani, RT.003 RW. 002 (Markas Komado Distrik Militer 0301) Pulau Karam Sukajadi-Pekanbaru', 85265439002, '53649220-20190217-170043.jpg', '2019-02-17'),
(37, 'Lembaga Kajian Perlindungan Konsumen', '-', 2, '0.49301252888111424', '101.5023302895454', 'Jl. Singgalang Gg Singgalang IV No.05 Tangkerang Timur Tenayan Raya', 81265090916, '20190217-085102.jpg', '2019-01-27'),
(38, 'Lembaga Musyawarah Batak Rumbai-Rumbai Pesisir Kota Pekanbaru', '-', 2, '0.5659145343922851', '101.45861028260265', 'Jl. Limbungan Gg. Sejati No. 40 Rumbai', 811763420, '20190124-121602.jpeg', '2019-01-24'),
(40, 'Forum Komunikasi Putra Putri Purnawirawan dan Putra-Putri TNI- Polri', 'ADY ROEMIN', 2, '0.5224851752662314', '101.4422314092094', 'JL. JENDRAL AHMAD YANI NO. 138 PEKANBARU\r\n', 7617070061, '25175689393-20190201-150511.jpg', '2019-02-01'),
(42, 'LSM EKONOMI KERAKYATAN PROVINSI RIAU', 'WAHYUDIN SAMSUL RIDWAN', 1, '0.4847375348859528', '101.50655598568574', 'JL. SINGGALANG RAYA NO. 313 KEL. TANGKERANG TIMUR \r\n \r\n', 811763362, '20190201-101636.jpg', '2019-02-01'),
(43, 'IKATAN KELUARGA TIONGHOA PEKANBARU (IKTP', 'MARIYANA', 1, '0.5419315589554824', '101.46034146613556', 'JL. TANJUNG DATUK NO. 238 A RT-001/RW-005, KEL. TANJUNG RHU KEC. LIMA PULUH\r\n', 81268779033, '20190201-142636.jpg', '2019-02-01'),
(44, 'DPD LASKAR MELAYU RIAU ( DPD-LMR)', 'H.FATHULLAH', 2, '0.5379052776132427', '101.43810960302733', 'Jl.Yossudarso No.2. RT-01/RW-08.kel.Kampung Bandar.Kec Senapelan', 8127517511, '20190201-152459.jpg', '2019-02-01'),
(45, 'IKATAN PELAJAR MAHASISWA PEKANBARU (IPEMARU)', 'ZULKARNAINI', 2, '0.4525967461508845', '101.42051982723387', 'Jl.ADI SUCIPTO,No.131.Kel.Sidomulyo Timur', 85271165624, '20190201-153232.jpg', '2019-02-01'),
(46, 'pemuda pancasila', 'suwarno', 2, '0.5456561866974684', '101.43843417841799', 'jalan lintas timur km 10 kemang', 82269262017, '20190206-114023.jpg', '2019-02-06'),
(47, 'DEWAN PIMPINAN DAERAH (DPD) JAM\'IYYATUL ISLAMIYAH', 'H. SYAHRUL SYAMSUDIN', 1, '0.5172435618296872', '101.41361446448605', 'JL DHARMA BAKTI NO. 54 RT-001/RW-01, KEL. LABUH BARU BARAT\r\n', 81372645967, '343674089-20190217-065857.jpg', '2019-02-17'),
(48, 'DPP LEMBAGA PENELITIAN PENGEMBANGAN PEMBANGUNAN MASYARAKAT RIAU', 'BOYKE AMRI, SH', 1, '0.5010560612878098', '101.44125229425242', 'JL. BANDENG NO. 64 TANGKERANG TENGAH, KEC. MARPOYAN DAMAI', 0, '483807635-20190217-070054.jpg', '2019-02-17'),
(49, 'FORUM PEDAGANG PASAR KODIM', ' Ir. DARMA NOVA SIREGAR', 2, '0.5286215425913673', '101.44072327882134', 'JL. AHMAD YANI GEDUNG A G NO. 4 RT-003/RW-001, KEL. PADANG BULAN KEC. SENAPELAN.', 85264063401, '20190217-085102.jpg', '2019-02-16'),
(50, 'KOMUNITAS RUMAH SUNTING', 'KUNNI MASROHANTI', 2, '0.5069963937166514', '101.42618292743919', 'JL. TIUNG UJUNG III NO. 03 RT-03/RW-007, KEL. LABUH BARU TIMUR KEC. PAYUNG SEKAKI.', 81268499986, '20190217-085102.jpg', '2019-02-16'),
(51, 'PROJO (PRO JOKOWI)', 'ADE MAZMUR SILABAN', 2, '0.5165169', '101.4413539', 'JL. DURIAN 153 a. RT-02/RW-02, KEL. JADIREJO KEC SUKAJADI', 0, '20190216-084832.jpg', '2019-02-16'),
(52, 'IKATAN KELUARGA PEMULUNG PEKANBARU', 'JASON NAINGGOLAN', 2, '0.6636419881637144', '101.41877663485718', 'JL. YOS SUDARSO KM 22 MUARA FAJAR', 81371102390, '438320812-20190217-095634.jpg', '2019-02-17'),
(53, 'HIMPUNAN MAHASISWA ISLAM CABANG PEKANBARU', 'AHMAD EFENDI SIREGAR', 2, '0.4725281', '101.369728', 'JL. PAUS NO. 76, A TANGKERANG TENGAH', 81312197646, '736879098-20190216-090304.jpg', '2019-02-16'),
(54, 'IKATAN MASJID INDONESIA (IKMI)', 'Drs. NASRUDIN NASUTION, MA', 1, '0.4989392274347327', '101.42564504232791', 'Jl. Todak No.1, Tengkerang Bar., Marpoyan Damai, Kota Pekanbaru.', 8126893122, '20190216-091021.jpg', '2019-02-17'),
(55, 'DPC FORUM KOMUNIKASI DINIYAH TAKMALIYAH', 'Drs. NASRUDIN NASUTION, MA', 1, '0.5109936306796319', '101.4463108306885', 'JL. JEND. SUDIRMAN, KOMPLEK MASJID ARRAHMAN, LANTAI II\r\n\r\n', 8126893122, '3895690-20190217-070152.jpg', '2019-02-17'),
(56, 'RUMAH SINGGAH SEMENTARA', 'Hj. FAIZAH', 1, '0.46343154302981643', '101.40951004232784', 'JL. IDA II KO MARSAN NO. 1 RT-01/RW-06, KEL SIDOMULYO BARAT TAMPAN.', 81365472322, '20190216-140357.jpg', '2019-02-17'),
(57, 'MAIMANAH UMAR CENTER', 'HJ. MARYENIK YANDA, SH', 1, '0.5022301273916552', '101.45139896931153', 'JL. JEND. SUDIRMAN NO. 769 B RT-005/RW-011, KEL. TANGKERANG TENGAH KEC. MARPOYAN DAMAI.', 8127618315, '625536558-20190217-070208.jpg', '2019-02-17'),
(58, 'ASOSIASI PETANI KELAPA SAWIT PIR RIAU (ASPEKPIR RIAU)', 'SETIYONO', 1, '0.5102659000000171', '101.45317829999999', 'JL. PATIMURA NO. 4 RT-003/RW-004, KEL. CINTA RAJA KEL. SAIL.\r\n', 81959349399, '20190216-141132.jpg', '2019-02-17'),
(59, 'LEMBAGA LINGKARAN MAHARATU MADANI', 'BAKRI', 1, '0.4340086285282848', '101.43323720000001', 'JL. PARKIT IV BLOK H-147 MAHARATU, KEC. MARPOYAN DAMAI\r\n', 81371234334, '491710321-20190217-073122.jpg', '2019-02-17'),
(60, 'YAYASAN PENGEMBANGAN POTENSI MUSLIMAH (YP2M) IBU TELADAN', 'DEWI PANDJI MS, A.Md, S.Th.I', 1, '0.4517215999999957', '101.4037905576721', 'JL. PURWODADI NO. 153, KEL. SIDOMULYO BARAT KEC. TAMPAN.', 85260807231, '957004151-20190217-164608.jpg', '2019-02-17'),
(61, 'PERSATUAN TUNA NETRA INDONESIA ( PERTUNI)', '-', 3, '0.4587607', '101.3739085', 'JL. TAMAN KARYA. GG ENGSEL NO 26 KEC. TAMPAN', 85364833018, '20190217-085102.jpg', '2019-02-16'),
(62, 'SENTRA KOMUNIKASI POLRI (SENKOM)', '-', 3, '0.5233843', '101.4249581', 'JL. JENDRAL NO. 1 RT 001 RW 003 KEL.LABUH BARU TIMUR KEC. PAYUNG SEKAKI', 85265596553, '20190217-085102.jpg', '2019-02-16'),
(63, 'YAYASAN DAN PENDIDIKAN DAN KETERAMPILAN AL- HUDA RIAU', '-', 4, '0.4638464', '101.3839908', 'Jl. HR. Soebrantas Panam No.57, Tuah Karya, Tampan, Kota Pekanbaru.', 85264993375, '20190216-143802.jpg', '2019-02-16'),
(64, 'LSM TAPAK SUMBER DAYA ALAM, LINGKUNGAN DAN ANTI KORUPSI', '-', 1, '0.45527518549215307', '101.41506885581975', 'JL. PELITA GARUDA SAKTI KM.3 RT.003/ RW.004 KELURAHAN BINAWIDYA KEC. TAMAPAN ', 8117579778, '20190216-144639.jpg', '2019-02-17'),
(65, 'BPD GAPENSI ( BADAN PEMIMPIN DAERAH GABUNGAN PELAKSANA KONTRUKSI NASIONAL INDONESIA', '-', 3, '0.473674', '101.453483', 'JL. JENDRAL SUDIRMAN NO 04 SIMPANG TIGA ', 0, '20190216-144856.jpg', '2019-02-16'),
(66, 'ORGANISASI PERUBAHAN SOSIAL INDONESIA (OPSI)- RIAU', '-', 3, '0.483841', '101.3466453', 'JL. UKA GARUDA SAKTI KM.3 KEL. AIR PUTIH RT 007 RW 009 KEC. TAMPAN, Pekanbaru.', 85219422004, '20190217-085102.jpg', '2019-02-16'),
(67, 'YAYASAN BODHINANDA KOTA PEKANBARU', '-', 4, '0.5358899', '101.4129747', 'JL.DHARMA BAKTI NO.14 RT/RW,01/01 KEL. BANDAR RAYA, KEC PAYUNG SEKAKI.', 811647050, '20190216-150003.jpg', '2019-02-16'),
(68, 'LEMBAGA ADAT MELAYU RIAU (LAMR)', '-', 3, '0.5381089', '101.4402625', 'Jl. Senapelan, Kp. Bandar, Senapelan, Kota Pekanbaru.', 0, '20190216-150620.jpg', '2019-02-16'),
(69, 'KOPERASI PATRIOT OLAHRAGA PEKANBARU (KOPATRA)', '-', 3, '0.4810025', '101.4376225', 'JL. ARIFIN AHMAD NO.39 RT.RW.003.015 KELURAHAN TENGERANG TENGAH KEC. MARPOYAN DAMAI.', 85356836500, '20190217-085102.jpg', '2019-02-16'),
(70, 'PERGURUAN PENCAK SILAT KUMANGO KOTA PEKANBARU', '-', 2, '0.5243549', '101.4718066', 'JL. HANG TUAH UJUNG NO. 121 KULIM, KEC.TENAYAN RAYA KOTA PEKANBARU.', 85355528088, '20190217-085102.jpg', '2019-02-16'),
(71, 'YAYASAN TAMAN TESSO NILO', '-', 3, '0.4990324', '101.4706703', 'Jl. Kelapa Sawit, Tengkerang Labuai, Bukit Raya, Kota Pekanbaru.', 7617874685, '171484577-20190216-151610.jpg', '2019-02-16'),
(72, 'FORUM SILATURRAHMI MASYARAKAT  NTB', '-', 4, '0.4879356', '101.4836604', 'JL. KELILING.GG. DARUNNUR RT.02 RW. 11 KEL. PEMATANG KAPAU.KEC TENAYAN RAYA PEKANBARU.', 82170233744, '20190216-152224.png', '2019-02-16'),
(73, 'DPD GERAKAN ANTI NARKOBA DAN KORUPSI', '-', 3, '0.4847121', '101.4746006', 'JL. KESADARAN GG. WICAKSANA NO 02 TANGERANG LABUAI KEC. BUKIT RAYA PEKANBARU.', 81270855531, '20190217-070904.jpg', '2019-02-17'),
(74, 'GABUNGAN AHLI TEKNIK NASIONAL INDONESIA', '-', 3, '0.528935', '101.4452293', 'JL. JEND. SUDIRMAN NO 4 SIMPANG TIGA, PEKANBARU.', 81268349933, '20190217-071305.jpg', '2019-02-17'),
(75, 'DEWAN PIMPINAN DAERAH WAHDAH ISLAMIYAH', '-', 4, '0.5065584', '101.4187349', 'JL. FAJAR PERUM MIRAMA INDAH 2 BLOK A2 PEKANBARU.', 85146202837, '20190217-085102.jpg', '2019-02-17'),
(76, 'YAYASAN GELIAT PELANGI NUSANTARA', '-', 4, '0.523908', '101.456456', 'JL. DR. SUTOMO NO.102A PEKANBARU ', 0, '20190217-072917.jpg', '2019-02-17'),
(77, 'IKATAN TENAGA AHLI KONTRUKSI INDONESIA', '-', 3, '0.523908', '101.456456', 'JL. DR. SUTOMO NO.102 PEKANBARU,KELURAHAN SUKAMULYA, KECAMATAN SAIL.', 0, '20190217-073511.jpg', '2019-02-17'),
(78, 'YAYASAN MUHAJIRIN GRIYA NUSANTARA', 'Ir.MISRAHADI', 4, '0.4459166', '101.4395931', 'Jl.Nuri VII. RT-002/RW-012.Kel.Maharatu, Pekanbaru', 812752696, '20190217-073959.jpg', '2019-02-17'),
(79, 'SANGGAR TARI DAN MUSIK SRI MERSING', 'ABDUL GANI', 3, '0.5229156', '101.4386401', 'Jl.Dahlia.Gg.Adha.No.25/42.RT-01/RW-012,Kel.Maharatu', 8127546136, '20190217-074412.jpg', '2019-02-17'),
(80, 'YAYASAN TUNAS INSPIRA MADANI', 'SUARDI,S.Pd', 4, '0.4978265', '101.4503821', 'Jl.Puyuh Mas.RT-002/RW-011.Kel. Tangkerang Tengah.', 81339843683, '20190217-074840.jpg', '2019-02-17'),
(81, 'YAYASAN SYAHFA RIAU', 'ALI AKBAR,S.Pd', 4, '0.4888971', '101.4598718', 'Jl.Taman Sari Gg Taman Sari No.2.RT-01/RW-06.Kel.Tangkerang selatan. Pekanbaru.', 85374575589, '20190217-075215.jpg', '2019-02-17'),
(82, 'ASOSIASI RUMAH MAKAN DAN MINUMAN RIAU(ASAMARI)', 'ERIZAL', 3, '0.5131994', '101.4457969', 'Jl.Pepaya.No.38.Sukajadi, Pekanbaru.', 85213954619, '20190217-075819.jpg', '2019-02-17'),
(83, 'DPP LSM PEMANTAU KINERJA KEBIJAKAN APARATUR NEGARA (PEKKAN)', 'SUPRIADY M HUTAPEA', 1, '0.5605217999999978', '101.43706229999998', 'Jl.Sekolah Gg Sekolah 2.No.13.Kel.Limbungan Baru, Pekanbaru', 81378804542, '20190217-080300.jpg', '2019-02-17'),
(84, 'LKM MERANTI JAYA', 'H.ASMIZON', 1, '0.5664363283117843', '101.41223397116391', 'Jl.Kartika Indah II.No.16, Rumbai, Kota Pekanbaru.', 8521120404, '20190217-080617.jpg', '2019-02-17'),
(85, 'LUMBUNG INFORMASI RAKYAT (LIRA)', 'ARSYAD NOOR,SE', 1, '0.5083054000000131', '101.43476063068852', 'Jl.Angsa I Lt 1.No.4B.Kec.Sukajadi, Pekanbaru.', 82385763972, '20190217-081041.jpg', '2019-02-17'),
(86, 'DPD LASKAR MELAYU RIAU ( LMR ) Kota Pekanbaru', 'H.FATHULLAH', 1, '0.5357675999999968', '101.43621606931151', 'Jl.Yos Sudarso No.2C.RT-01/RW-08.Kel.Kampong Bandar.', 0, '20190217-081424.jpg', '2019-02-17'),
(87, 'Jaringan Bayangkara', 'AKMALUDDIN', 1, '0.5119328', '101.4517052', 'Jl. Khairil anwar No 11 Pekanbaru.', 0, '20190217-081832.jpg', '2019-02-17'),
(89, 'MPC Pemuda Pancasila Kota Pekanbaru', 'JONNY, S.H', 2, '0.5249198', '101.4404129', 'Jl.Teratai no 106 Sukajadi Kota Pekanbaru.', 0, '20190217-084505.jpg', '2019-02-17'),
(90, 'Yayasan Pendidikan Alma', 'YULI ASITA,S.S', 4, '0.4338654', '101.3956986', 'Jl.Cipta Karya Ujung Gg Bahagia. RT-01/RW-09 Sialang Munggu.', 0, '20190217-085102.jpg', '2019-02-17'),
(91, 'DPD PEREMPUAN Lumbung Informasi Rakyat KOTA PEKANBARU', 'ELINA KOTO', 2, '0.5036339', '101.4264037', 'Jl.Tuanku Tambusai Komp.CNN.no 11 B.Kec. Payung Sekaki.', 0, '20190217-085635.jpg', '2019-02-17'),
(92, 'Gerakan MAHASISWA Kristen INDONESIA Cabang PEKANBARU', 'SETTARI KINDLY SIREGAR', 2, '0.4728969', '101.3722339', 'Jl.Satria Soekarno Hatta No 12, Pekanbaru', 0, '20190217-090030.jpg', '2019-02-17'),
(93, 'DPC BADAN PENGAWAS LEMBAGA KEUANGAN DAN APARATUR SIPIL NEGARA KOTA PEKANBARU', 'WASINTON SAMOSIR', 1, '0.5013293', '101.4205928', 'Jl.T.Tambusai Komp Puri Nangka Indah Blok III No.B.Tank.Barat.', 81277707772, '20190217-090212.jpg', '2019-02-17'),
(94, 'YAYASAN NURUL IMAN AL ISLAM RIAU', 'Ir.H.A.Z.FACHRI YASIN,M.Agr', 1, '0.492097', '101.468346', 'Jl.Tanjung No.5 Tangkerang Labuai Pekanbaru', 0, '20190217-090415.jpg', '2019-02-17'),
(95, 'DPC PERKUMPULAN WARTAWAN REPUBLIK INDONESIA BERSATU KOTA PEKANBARU', 'H.ZAKARIA SARAGIH B,A', 3, '0.48377', '101.4762353', 'Jl.Kesadaran Gg.Adyaksa.No.1.Rt-01/Rw-10, Pekanbaru', 81270855531, '20190217-090633.jpg', '2019-02-17'),
(96, 'PENGURUS KOTA PURNA PASKIBRAKA INDONESIA KOTA PEKANBARU', 'IRFAN HERMAN ,MMRS', 3, '0.5106976', '101.4520903', 'Jl.Diponegoro XI No.62.Rt-002/Rw-II KEL.SAIL. Pekanbaru.', 811229008, '20190217-093339.jpg', '2019-02-17'),
(97, 'PENGURUS DAERAH KOTA  PEKANBARU PERKUMPULAN KELUARGA BATAK RIAU', 'Ir.BANTU SEMBIRING', 3, '0.4847489', '101.3965782', 'Jl.flamboyan IV Timur No 1 PEKANBARU.', 8127557401, '20190217-093717.jpg', '2019-02-17'),
(98, 'DEWAN PIMPINAN CABANG JARINGAN BHAYANGKARA', 'AKMALUDDIN', 1, '0.5119281', '101.4539032', 'Jl,Khairil Anwar No.11.Rt-02/Rw-03 Pekanbaru', 811769639, '20190217-094004.jpg', '2019-02-17'),
(99, 'PERKUMPULAN KELUARGA KACANG PEKANBARU (IKKA PEKANBARU)', 'MUSLIH', 3, '0.5104489', '101.4398837', 'Jl,Dagang.No.26.C.RT-003/RW-004.KAMPUNG TENGAH SUKAJADI.', 81294116125, '20190217-094318.jpg', '2019-02-17'),
(100, 'YAYASAN KEISYA SALIKHA', 'DAHLIYUS MANTO,M.Sc.PhD', 4, '0.5071362', '101.4283403', 'Jasa I. No. 18. Labuh Baru Timur Pekanbaru.', 81270667168, '20190217-094655.jpg', '2019-02-17'),
(101, 'PENGURUS CABANG NAHDLATUL ULAMA KOTA PEKANBARU', 'Ir.H.YULIYOS KAHAR,M.M', 2, '0.5090964', '101.4384295', 'Jl.KH.Ahmad Dahlan No.98A, Sukajadi', 8127546265, '20190217-094955.jpg', '2019-02-17'),
(102, 'DPD LASKAR MELAYU BERSATU', 'RIKA ASIANDI', 1, '0.5115862', '101.452127', 'Jl.Diponegoro.LAM RIAU.No.39 Kota Pekanbaru.', 85271165624, '20190217-095259.jpg', '2019-02-17'),
(103, 'DPD PEMBELA KESATUAN TANAH AIR INDONESIA BERSATU (PEKAT) KOTA PEKANBARU', 'SYAPRUDDIN SYAH', 1, '0.5067719', '101.443798', 'Jl.T,Tambusai Gg Subur No,9,Kelurahan Wonorejo,Kec Marpoyan Damai', 81287799557, '20190217-095447.jpg', '2019-02-17'),
(104, 'PENGURUS DAERAH IKATAN DA,I INDONESIA PEKANBARU', 'H.MUHAMMAD YUNUS.Lc.MA', 3, '0.4499176', '101.3969184', 'Jl.Eka Tunggal.No.3. Pekanbaru.', 81362198715, '20190218-131309.jpg', '2019-02-18'),
(105, 'IKATAN KELUARGA BATAK MUSLIM (IKBM) PERUM PURNA GRIA MAS DAN SEKITARNYA', 'Drs.SARO YUNUS HARAHAP', 2, '0.4402888', '101.414566', 'Jl.Komplek Perumahan Gria Mas , SDM Barat. Tampan.', 81365635280, '20190218-131524.jpg', '2019-02-18'),
(106, 'YAYASAN AL-ARAAF CENDEKIA PEKANBARU', 'Ir.H.MUNZUR AZIZ', 4, '0.5096999', '101.427859', 'JL. Tiung No.7.RT-001/RW-001\r\n\r\n\r\n', 8127539604, '20190218-131846.jpg', '2019-02-18'),
(107, 'FORUM SOLIDARITAS PEMUDA PEMUDI', 'OYONG TANJUNG', 2, '0.4712963', '101.3618587', 'Jl.garuda Sakti Gg Sepakat No.036 Simp Baru.Kec.Tampan.', 8131507257, '20190218-132036.jpg', '2019-02-18'),
(108, 'LSM SERAT SAKTI NUSANTARA', 'PURBO KUNCORO', 1, '0.5056806', '101.4327724', 'Jl.Tuanku Tambusai Komp Sentra Nangka Mas Blok. C.no.5. Kel.Kampung Melayu.', 81365888888, '5975796747-20190218-135026.jpg', '2019-02-18'),
(109, 'DEWAN HARIAN CABANG KEJUANGAN 45 PEKANBARU', 'H.A.RAZAK KARIM,SE,M.Si', 4, '0.4808588', '101.4516066', 'Jl.Sudirman Gedung Juang 45.No.26 Pekanbaru.', 81268334640, '20190218-135543.jpg', '2019-02-18'),
(110, 'IKATAN PERSAUDARAAN TIONGHOA BENGKALIS', 'LIM THIAN CUI/TONI', 2, '0.5369801', '101.427356', 'Jl.Kuras Gg Kuras III.no.10 J. Tampan Pekanbaru.', 8127517511, '20190218-140559.jpg', '2019-02-18'),
(111, 'COMMUNITY EMPOWERMENT,RISET,IMLEMENTATION AND SURVEY', 'MINSARWEDI SITUMANG,SP,MM', 1, '0.460055', '101.4079875', 'Jl.Melur Perum Villa Panam Blok.C.no.35.RT-006/RW-004.Kel.Sidomulyo Barat.', 81371035407, '20190218-141351.jpg', '2019-02-18'),
(112, 'DPD JARINGAN PENDAMPING KEBIJAKAN PEMBANGUNAN KOTA PEKANBARU', 'TENGKU AMRI', 4, '0.4801866', '101.4325032', 'Jl.Arifin Ahmad Komp Pujasera Kel.Tangkerang Barat.Kec.Marpoyan Damai.', 8127533868, '20190218-141853.jpg', '2019-02-18'),
(113, 'BADAN PENGURUS KOTA Oi (BPK Oi), PEKANBARU', 'SUTRIYONO', 1, '0.4970831', '101.4655591', 'Jl.Tunas Jaya Gg Parkit, No 62,RT-03/RW-01.Kel Tangkerang Labuai.Kec Bukit Raya.', 81378486887, '12743831845-20190218-142246.jpg', '2019-02-18'),
(114, 'YAYASAN MASYARAKAT PADANG LAWAS RIAU', 'FACHRUDDIN', 3, '0.4857183', '101.3687212', 'Jl.Melati Perum Attaya III.F-09.RT-002/RW-008. Kel.Simp Baru.', 81268334640, '20190218-142728.jpg', '2019-02-18'),
(115, 'PERSATUAN KELUARGA DAERAH PIAMAN (PKDP)', 'AGUSMAN SIKUMBANG', 1, '0.5043567', '101.4310947', 'Jl.Tuanku Tambusai.No.24.RT-001/RW-001.Kel.Wonorejo.', 0, '20190218-143052.jpg', '2019-02-18'),
(116, 'DPP LSM PENINJAUAN KEMBALI', 'BEATULO LAWALO', 1, '0.5652967', '101.416178', 'JL. ASPARAGAS II TEGAL SARI E NO. 15 RT-003/RW-008 KEL. SRI MERANTI KEC. RUMBAI', 85271322227, '20190218-143343.jpg', '2019-02-18'),
(117, 'DPP LSM AMAN RI', 'JONSEN JOHANNES', 1, '0.5344561', '101.4707573', 'JL. PERKASA VII NO. 99 RT-001/RW-011, KEL. REJOSARI KEC. TENAYAN RAYA', 81277955575, '20190218-143641.jpg', '2019-02-18'),
(118, 'LSM FORUM KOMUNIKASI PEDULI NAGARI', 'IR. AFRIZAL DT PENGHULU BESAR', 1, '0.4598453', '101.3880919', 'JL. SUKA KARYA BLOK B NO. 4 RT-01/RW-15, KEL. TUAH KARYA', 81378483393, '20190218-144017.jpg', '2019-02-18'),
(119, 'TEATER MATAN', 'M. KAFRAWI', 3, '0.547532', '101.4290173', 'JL. PERUM PERMATA RATU BLOK K-05 RT-002/RW-011 TANGKERANG LABUAI', 81275188111, '20190218-144249.jpg', '2019-02-18'),
(120, 'LSM SOLIDARITAS MASYARAKAT PEDULI PEMBANGUNAN MANDIRI', 'ZULKARNAINI UCOK', 1, '0.5386485', '101.4463409', 'JL. TANJUNG BATU NO. 4 RT-001/RW-001 KEL. PESISIR KEC. LIMA PULUH', 8127520108, '20190218-144541.jpg', '2019-02-18'),
(121, 'LSM SOLIDARITAS MASYARAKAT PEDULI LINGKUNGAN', 'APRIMA ARTHA', 1, '0.4640782', '101.4564861', 'JL. TENKU BEY KOMPLEK MAYA SEJAHTERA BLOK B NO. 56 RT-001/RW-009 KEL. SIMPANG TIGA', 81275188111, '20190218-144750.jpg', '2019-02-18'),
(122, 'IKATAN KELUARGA NIAS RIAU', 'SEFIANUS ZAI', 1, '0.5157244', '101.4214575', 'JL. GARUDA NO. 76 E KEL. LABUH BARU TIMUR', 85376143777, '20190218-145007.jpg', '2019-02-18'),
(123, 'FORUM KOMUNIKASI MASYARAKAT ABDI NEGARA (FORKOM-ABRA)', 'MULYADI TAMSOER', 1, '0.5293288', '101.470269', 'Rejosari, Tenayan Raya, Kota Pekanbaru.', 81275553788, '20190218-145322.jpg', '2019-02-18'),
(124, 'YAYASAN AL-KAHFI PEKANBARU', 'RAHMAD SUKARNO, S.Kom', 4, '0.4482884', '101.3904668', 'Jalan Cipta Karya KM. 2 Kelurahan Sialang, Munggu, Tampan, Kota Pekanbaru.', 85607061010, '20190218-145617.jpg', '2019-02-18'),
(125, 'KOMITE PEMBERANTASAN HAMA', 'RAHMAD SUKARNO, S.Com. I', 1, '0.4873344', '101.4376243', 'JL. SEMBILANG INDAH GG. SEMBILANG IV NO. 66.', 81365679236, '20190218-145943.jpg', '2019-02-18'),
(126, 'IKATAN WARGA SATYA INDONESIA', 'BAMBANG INDRAYANTO', 2, '0.4532334', '101.4135058', 'Sidomulyo Bar., Tampan, Kota Pekanbaru.', 85274026451, '20190218-150245.jpg', '2019-02-18'),
(127, 'PERKUMPULAN KELUARGA BERENCANA INDONESIA', 'H. M. SYUKRI HARTO, SE,M.Si', 1, '0.513723', '101.4395011', 'Jl. Mangga IV No.7, Kp. Tengah, Sukajadi, Kota Pekanbaru.', 82390256600, '20190218-150555.jpg', '2019-02-18'),
(128, 'PENERUS PERINTIS KEMERDEKAAN INDONESIA SATUAN KHUSUS', 'AGUS HARI WIBOWO', 1, '0.5026117', '101.4560064', 'JL. GUNUNG JATI NO. 93 RT-002/RW-002 KEL. TANGKERANG TIMUR KEC. TENAYAN RAYA.\r\n', 85265370009, '20190218-150748.jpg', '2019-02-18'),
(129, 'KELOMPOK PEMBUDAYA IKAN (PONDOKAN) KARTAMA BAROKAH', 'DESMON', 3, '0.4518912', '101.4457668', 'JL. KARTAMA GG. SEPAKAT KEL. MAHARATU KEC. MARPOYAN DAMAI.', 81276108214, '20190218-151135.jpg', '2019-02-18'),
(130, 'LEMBAGA PENGEMBANGAN PENGEMBANGAN  PENDIDIKAN STUDENTCARE', 'RONALD AKHYAR, SH', 1, '0.5267815', '101.4591658', 'JL. KINIBALU NO. 61 RT-002/RW-005 KEL. SKIP.\r\n', 81276435136, '20190218-151451.jpg', '2019-02-18'),
(131, 'LSM PEDULI ASET DAN KEDAULATAN BANGSA (LSM PAKBI)', 'OMAN KUSMEDI', 1, '0.5387682', '101.4213153', 'JL. KAYU MANIS RT-001/RW-004', 81378737606, '20190218-151841.jpg', '2019-02-18'),
(132, 'LSM FORUM BERSAMA MASYARAKAT  ORGANISASI TRANSPARANSI PEKANBARU (LSM FORBES-OTP)', 'DONI HERMAN', 1, '0.4736828', '101.4012447', 'HP. 085265442315/082284353855/082391376160\r\n', 85265442315, '20190218-152625.jpg', '2019-02-18'),
(133, 'PRIMITIVE COMMUNITY', 'RIO ALFI, S.Psi', 1, '0.4542654', '101.4502712', 'JL. KAHARUDIN NASUTION GG MASJID AL-HUDA NO. 103 RT-05/RW-07 KEL. SIMPANG TIGA KEC. BUKIT RAYA\r\n', 85365528187, '20190218-152905.jpg', '2019-02-18'),
(134, 'YAYASAN RAUDHATUS SHALIHIN', 'H. ARBAKMIS LAMID, SH, MH', 4, '0.4896501', '101.486634', 'JL. BUKIT BARISAN NO. 18.', 82383237112, '20190218-153056.jpg', '2019-02-18'),
(135, 'YAYASAN FATMA VISI SUKSES', 'BOSMAN HATORANGAN SITORUS', 4, '0.4932716', '101.4489837', 'JL. SARI KENCANA NO. 263-A TANGKERANG, TENGAH', 81365420757, '20190218-153346.jpg', '2019-02-18'),
(136, 'YAYASAN IMAM IBNU KATSIR', 'JALIUS', 1, '0.6193727', '101.4351321', 'Muara Fajar, Rumbai, Kota Pekanbaru.', 81365420757, '20190218-160414.jpg', '2019-02-18'),
(137, 'PONDOKAN MINA LABUAI', 'REZA MHD NST', 4, '0.4876621', '101.4710092', 'Jl. MAKMUR UJUNG NO 79. BUKIT RAYA.', 0, '20190218-160559.jpg', '2019-02-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`, `level`) VALUES
(5, 'vanrezkysadewa@gmail.com', '4f84f075387f0741bce86d0590e62b58', 'vanrezkysadewa', 'Admin'),
(7, 'vanrezky', 'af3aaa157430b973c5cd7871009c0749', 'vanrezky sadewa nababan', 'Admin'),
(9, 'kesbangpol', '0192023a7bbd73250516f069df18b500', 'admin', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jenis_organisasi`
--
ALTER TABLE `jenis_organisasi`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasi_organisasi`
--
ALTER TABLE `lokasi_organisasi`
  ADD PRIMARY KEY (`id_organisasi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jenis_organisasi`
--
ALTER TABLE `jenis_organisasi`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `lokasi_organisasi`
--
ALTER TABLE `lokasi_organisasi`
  MODIFY `id_organisasi` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
