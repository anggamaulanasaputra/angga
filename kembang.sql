-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2021 at 09:41 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kembang`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'teamtrainit.com', 'teamtrainit.com', 'Trainit Jogja'),
(2, 'admin', 'admin', 'admin kelompok 2');

-- --------------------------------------------------------

--
-- Table structure for table `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(5) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_kota`, `tarif`) VALUES
(1, 'Demak', 20000),
(2, 'Cirebon', 25000),
(3, 'Wakanda', 68900),
(4, 'Cengkareng', 135000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`) VALUES
(1, 'arifrahman2592@gmail.com', 'arif', 'Arif Nur Rahman', '08990423789'),
(2, 'naruto@konoha.com', 'naruto', 'Naruto Bapaknya Boruto', '08990423789');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `id_ongkir`, `tanggal_pembelian`, `total_pembelian`, `nama_kota`, `tarif`, `alamat_pengiriman`) VALUES
(1, 1, 1, '2016-12-23', 1500000, '', 0, ''),
(2, 1, 1, '2016-12-24', 500000, '', 0, ''),
(5, 1, 1, '2021-12-12', 320000, '', 0, ''),
(8, 1, 1, '2021-12-12', 320000, '', 0, ''),
(9, 1, 2, '2021-12-12', 325000, '', 0, ''),
(10, 1, 1, '2021-12-12', 320000, '', 0, ''),
(11, 1, 2, '2021-12-12', 125000, '', 0, ''),
(12, 1, 1, '2021-12-13', 240000, '', 0, ''),
(13, 1, 1, '2021-12-13', 240000, '', 0, ''),
(15, 1, 1, '2021-12-13', 290000, 'Demak', 20000, ''),
(16, 1, 2, '2021-12-13', 295000, 'Cirebon', 25000, 'jl serayu no 13 junjang arjawinangun cirebon kodepos 55123'),
(17, 1, 2, '2021-12-17', 325000, 'Cirebon', 25000, 'dimana ya'),
(18, 1, 1, '2021-12-17', 170000, 'Demak', 20000, ''),
(19, 2, 1, '2021-12-24', 170000, 'Demak', 20000, 'jalan jalan'),
(20, 2, 3, '2021-12-24', 218900, 'Wakanda', 68900, ''),
(21, 2, 4, '2021-12-24', 285000, 'Cengkareng', 135000, ''),
(22, 2, 3, '2021-12-24', 548900, 'Wakanda', 68900, 'konoha'),
(23, 2, 0, '2021-12-24', 150000, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subberat` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `berat`, `subberat`, `subharga`) VALUES
(1, 1, 1, 1, '', 0, 0, 0, 0),
(2, 1, 2, 1, '', 0, 0, 0, 0),
(3, 0, 7, 1, '', 0, 0, 0, 0),
(4, 0, 8, 2, '', 0, 0, 0, 0),
(5, 9, 7, 1, '', 0, 0, 0, 0),
(6, 9, 8, 2, '', 0, 0, 0, 0),
(7, 10, 7, 1, '', 0, 0, 0, 0),
(8, 10, 8, 2, '', 0, 0, 0, 0),
(9, 11, 8, 1, '', 0, 0, 0, 0),
(10, 12, 7, 1, '', 0, 0, 0, 0),
(11, 12, 11, 1, '', 0, 0, 0, 0),
(12, 13, 7, 1, 'Sepatu 1', 100000, 600, 600, 100000),
(13, 13, 11, 1, 'Jaket Tebal', 120000, 400, 400, 120000),
(14, 14, 7, 1, 'Sepatu 1', 150000, 600, 600, 150000),
(15, 14, 11, 1, 'Jaket Tebal', 120000, 400, 400, 120000),
(16, 15, 7, 1, 'Sepatu 1', 150000, 600, 600, 150000),
(17, 15, 11, 1, 'Jaket Tebal', 120000, 400, 400, 120000),
(18, 16, 7, 1, 'Sepatu 1', 150000, 600, 600, 150000),
(19, 16, 11, 1, 'Jaket Tebal', 120000, 400, 400, 120000),
(20, 17, 7, 2, 'Sepatu 1', 150000, 600, 1200, 300000),
(21, 18, 7, 1, 'Bunga Bougenville', 150000, 500, 500, 150000),
(22, 19, 7, 1, 'Bunga Bougenville', 150000, 500, 500, 150000),
(23, 20, 7, 1, 'Bunga Bougenville', 150000, 500, 500, 150000),
(24, 21, 7, 1, 'Bunga Bougenville', 150000, 500, 500, 150000),
(25, 22, 7, 2, 'Bunga Bougenville', 150000, 500, 1000, 300000),
(26, 22, 9, 1, 'Bunga Mawar', 180000, 300, 300, 180000),
(27, 23, 7, 1, 'Bunga Bougenville', 150000, 500, 500, 150000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`) VALUES
(7, 'Bunga Bougenville', 150000, 500, '281220-nama-nama-bunga-bougenville-1-.png', 'Bunga bougenville atau yang sering disebut dengan bunga kertas mempunyai bentuk bergerombol saat berbunga. Nama latin bunga bougenville adalah bougainvillea. Bunga ini memiliki beragam jenis warna seperti orange, putih, merah mudah, pink pastel hingga ungu. Diantara warna-warna tersebut, warna merah muda lah yang menjadi best pick bagi sebagian orang. Termasuk ke dalam tanaman tropis, sehingga sangat mudah untuk dirawat di Indonesia yang juga mempunyai iklim tropis di seluruh wilayah daerahnya.'),
(8, 'Bunga Kemuning', 138000, 600, '281220-nama-latin-bunga-kemuning.png', 'Bunga kemuning berukuran kecil dengan warna putih memancarkan wangi semerbak saat mekar. Jika dilihat sekilas punya mirip dengan melati, namun kelopak bunga kemuning cenderung lebih melengkung. Nama latin bunga kemuning adalah murraya paniculata.'),
(9, 'Bunga Mawar', 180000, 300, '281220-bunga-mawar.png', 'Mawar dengan nama latin bunga rosa ini dikenal sebagai simbol kasih sayang. Bunga mawar punya beragam warna menarik yang bisa Pins pilih. Bentuknya yang cantik dengan duri-duri di tangkainya menjadi ciri khas utama. Bunga mawar merupakan tipe bunga potongan yang umumnya mekar seorang diri bukan tipe yang bergerombol. Walaupun bunga mawar saat mekar tidak banyak tapi tetap memikat dengan aromanya yang semerbak.'),
(10, 'Bunga Anggrek', 50000, 100, '281220-orchids-bunga-anggrek.png', 'Bunga anggrek punya beragam warna cantik. Bentuknya yang indah pun membuat siapapun terkesima. Bunga anggrek atau orchids biasanya ditanam dengan cara digantung pada pohon besar. Namun, Pins juga bisa menanamnya di pot kok.'),
(11, 'Bunga Asoka', 120000, 400, '281220-bunga-asoka.png', 'Bunga Asoka atau saroca asoca ini sering kali dijadikan mainan dan dihisap untuk mencicipi rasa manis yang ada di dalamnya. Bunga asoka tumbuh bergerombol membuat bentuknya menjadi semakin indah jika ditanam pada taman rumah mu.'),
(12, 'Bunga Pukul Empat', 80000, 200, '281220-bunga-pukul-empat-1.png', 'Bunga yang cukup unik, karena sesuai namanya bunga pukul hanya mekar sekitar pukul empat. Bunga pukul empat bisa dikatakan sebagai tanaman bunga liar. Walaupun liar, bunga pukul empat punya bentuk indah dan warna cantik lho.'),
(13, 'Bunga Sepatu', 25000, 200, 'Bunga-Sepatu-Mengobati-Diabetes.png', 'Bunga cantik yang satu ini mempunyai sistem reproduksi sempurna yaitu terdapat benang sari dan juga putih. Ya benar, kembang sepatu atau bunga sepatu namanya. Bunga sepatu punya kelopak yang besar buat ia tampak cantik saat berkembang di taman rumah. Warna yang dimiliki oleh bunga sepatu pun beragam. Bunga dengan nama latin hibiscus ini biasa terlihat di daerah tropis seperti Indonesia.'),
(14, 'Bunga Kenanga', 180000, 350, '281220-bunga-kemuning.png', 'Bunga kenanga adalah bunga berwarna kuning dengan kelopak panjang dan melengkung. Wangi yang memikat membuatnya hingga dijadikan bahan utama dalam essential oil ylang-ylang. Bunga kenanga mudah untuk dirawat lho, cukup disiram rutin dan sesekali dikasih pupuk agar tumbuh subur.'),
(17, 'bunga pentas', 123132, 123, 'Pentas.png', 'asd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
