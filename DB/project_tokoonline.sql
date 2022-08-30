-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2022 at 08:32 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_tokoonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(55) NOT NULL,
  `admin_username` varchar(35) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_foto` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_username`, `admin_password`, `admin_foto`) VALUES
(1, 'SYAHGITA ARSYI', 'admin', '21232f297a57a5a743894a0e4a801fc3', '22901_1647244929345.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_nama` varchar(55) NOT NULL,
  `customer_email` varchar(35) NOT NULL,
  `customer_hp` varchar(13) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_nama`, `customer_email`, `customer_hp`, `customer_alamat`, `customer_password`) VALUES
(3, 'M FERDIANSYAH ULUM', 'ulumferdi@gmail.com', '082234567823', 'Kp. Parahu Ds. Parahu, Taman-Balaraja', '951e44bb5184c5f392717fb00034eba6'),
(5, 'SYAHRUDIN', 'syahrudin@gmail.com', '085777211175', 'Kp. Pabuaran RT/RW 001/002 Ds. Buniayu Kec. Sukamulya Kab. Tangerang-Banten', '4774b508236e842926956d2ddbe0ebe0'),
(6, 'NENENG HASANAH', 'mmhanin29@gmail.com', '083806581899', 'Kp. Pabuaran RT/RW 001/002 Ds. Buniayu Kec. Sukamulya Kab. Tangerang-Banten', '15c1e627e37914d5888ed88cb6f0dd65'),
(7, 'ANINDYA LATASYA', 'latasya@gmail.com', '082249585017', 'Kp. Pabuaran RT/RW 001/002 Ds. Buniayu Kec. Sukamulya Kab. Tangerang-Banten', '0650cc85fcaab7ca0dac5ba903b1d81c'),
(8, 'DWI ADNIN CAHYANI', 'dwiadnin123@gmail.com', '085888603451', 'Kp. Pabuaran RT/RW 001/002 Ds. Buniayu Kec. Sukamulya Kab. Tangerang-Banten', '0ce7c87f0be53870299a0ea0a401b5e9'),
(9, 'SENDI AWALUDIN', 'sendiawal02@gmail.com', '0882000625813', 'Kp. Haurkuning RT. 006, RW. 002 Ds. Cihaurkuning Kec. Malangbong Kab. Garut-Jawa Barat', '02e7d08f186c8a2d8d4ce8de69121dcb');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_tanggal` date NOT NULL,
  `invoice_customer` int(10) NOT NULL,
  `invoice_nama` varchar(55) NOT NULL,
  `invoice_hp` varchar(13) NOT NULL,
  `invoice_alamat` text NOT NULL,
  `invoice_provinsi` varchar(35) NOT NULL,
  `invoice_kabupaten` varchar(35) NOT NULL,
  `invoice_kurir` varchar(35) NOT NULL,
  `invoice_berat` int(12) NOT NULL,
  `invoice_ongkir` int(12) NOT NULL,
  `invoice_total_bayar` int(12) NOT NULL,
  `invoice_status` int(12) NOT NULL,
  `invoice_resi` varchar(25) NOT NULL,
  `invoice_bukti` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_tanggal`, `invoice_customer`, `invoice_nama`, `invoice_hp`, `invoice_alamat`, `invoice_provinsi`, `invoice_kabupaten`, `invoice_kurir`, `invoice_berat`, `invoice_ongkir`, `invoice_total_bayar`, `invoice_status`, `invoice_resi`, `invoice_bukti`) VALUES
(1, '2022-07-15', 8, 'Dwi Adnin Cahyani', '085888603451', 'Kp. Pabuaran RT. 001, RW. 002 Ds. Buniayu Kec. Sukamulya', 'Banten', 'Tangerang', 'JNE - OKE', 200, 8000, 244000, 5, '', '21862.jpg'),
(2, '2022-07-29', 8, 'Dwi Adnin Cahyani', '082249585017', 'Kp. Pabuaran RT. 001, RW. 002 Ds. Buniayu Kec. Sukamulya', 'Banten', 'Tangerang', 'JNE - OKE', 100, 8000, 191100, 5, '', '7340.png');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(1, 'Tidak Berkategori'),
(4, 'Gamis Wanita Dewasa'),
(5, 'Gamis Remaja'),
(6, 'Gamis Anak');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `produk_id` int(11) NOT NULL,
  `produk_nama` varchar(55) NOT NULL,
  `produk_kategori` int(10) NOT NULL,
  `produk_harga` int(12) NOT NULL,
  `produk_keterangan` text NOT NULL,
  `produk_jumlah` int(12) NOT NULL,
  `produk_berat` int(12) NOT NULL,
  `produk_foto1` varchar(55) DEFAULT NULL,
  `produk_foto2` varchar(55) DEFAULT NULL,
  `produk_foto3` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`produk_id`, `produk_nama`, `produk_kategori`, `produk_harga`, `produk_keterangan`, `produk_jumlah`, `produk_berat`, `produk_foto1`, `produk_foto2`, `produk_foto3`) VALUES
(6, 'Gamis Ceruty Babydoll', 4, 112000, '<p>Tersedia warna :</p><p>- Hitam</p><p>- Dusty</p><p>- Brownie</p><p>- Plum</p><p>- Grey</p><p><br></p><p>All size fit to L-XL</p><p><br></p><div><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung menghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi pembayaran dan warna.</p><p>Terima kasih and happy shopping :D</p></div>\r\n\r\n<br>', 45, 100, '32690_34cfea75147ee0bb1b4f516641772254.jpg', '32690_7c214dc2661fb77b424624c6c9615dcf.jpg', '32690_f4b471db495e634dedecaf725a5d1a8f.jpg'),
(7, 'Abaya Kalong Turki', 4, 86400, '<p>\r\n\r\n</p><p>Tersedia warna :</p><div>- Hitam</div><div>- Lavender</div><div>- Bata</div><div>- Silver</div><div>- Dusty</div><div>- Mocca</div><div>- Army</div><div>- Mint</div><div><br></div><div>All size</div><div><br><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung menghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi pembayaran dan warna.</p><p>Terima kasih and happy shopping :D</p></div><p></p>', 120, 100, '29881_7ae2dc07b7d4858ae0146d6008f23f77.jpg', '29881_5e3b54151eda2630cf85710371a7045d.jpg', '29881_a48570ff13be837c54ce0e00bfac16c8.jpg'),
(8, 'Aluna Dress', 4, 70000, '<p>\r\n\r\n</p><p>Tersedia warna :</p><p>- Army</p><p>- Millo</p><p>- Maroon</p><p>- Hitam</p><p><br></p><p>All size</p><p><br></p><div><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung menghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi pembayaran dan warna.</p><p>Terima kasih and happy shopping :D</p></div>\r\n\r\n<br><p></p>', 30, 100, '23592_89446d63ed9c38d238c24a04dff5f19a.jpg', '7489_fa72e9c0ec85b817b307312844de2439.jpg', '23592_d3363404c6c045cc4bf11338a47b22fa.jpg'),
(9, 'Dress Kondangan', 4, 78900, '<p>\r\n\r\n</p><p>Tersedia warna :</p><p>- Hitam</p><p>- Grey</p><p>- Mocca</p><p>- Pink</p><p><br></p><p>Tersedia ukuran :</p><p>- M</p><p>- L</p><p>- XL</p><p><br></p><div><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung menghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi pembayaran, warna dan size.</p><p>Terima kasih and happy shopping :D</p></div>\r\n\r\n<br><p></p>', 10, 100, '18724_837f6d4950b5efe2e46f81c18b8cffed.jpg', '18724_d8977d032733f46741d27dd295532dfe.jpg', '18724_837f6d4950b5efe2e46f81c18b8cffed.jpg'),
(10, 'Abaya Bordir Zephy', 4, 183100, '<p>\r\n\r\n</p><p>Tersedia warna :</p><div>- Coksu</div><div><br></div><div>All size</div><div><br><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung menghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi pembayaran.</p><p>Terima kasih and happy shopping :D</p></div>\r\n\r\n<br><p></p>', 15, 100, '14923_fe4115401df0fc95d9fcaeed5076c1bd.jpg', '14923_fe4115401df0fc95d9fcaeed5076c1bd.jpg', '14923_fe4115401df0fc95d9fcaeed5076c1bd.jpg'),
(11, 'Olivia Gamis Pesta', 4, 170000, '<p>\r\n\r\n</p><p>Tersedia warna :</p><div>- Kuning</div><div>- Hitam</div><div>- Biru</div><div>- Pink</div><div><br></div><div>Tersedia Ukuran :</div><div>- L</div><div>- XL</div><div>- XXL</div><div><br><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung menghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi pembayaran, warna dan size.</p><p>Terima kasih and happy shopping :D</p></div>\r\n\r\n<br><p></p>', 35, 100, '10619_52cbd0fa780675dfc281a41428eff881.jpg', '10619_87552daf1693f8f32f7a183f8c27c30a.jpg', '10619_52cbd0fa780675dfc281a41428eff881.jpg'),
(12, 'Jovinna Dress Maxi', 4, 88000, '<p>\r\n\r\n</p><p>Tersedia warna :</p><p>- Hitam</p><p>- Navy</p><p>- Grey</p><p>- Millo</p><p>- Maroon</p><p><br></p><p>Tersedia ukuran :</p><p>- S</p><p>- M</p><p>- L</p><p>- XL</p><p>- XXL</p><p><br></p><div><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung menghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi pembayaran, warna dan size.</p><p>Terima kasih and happy shopping :D</p></div>\r\n\r\n<br><p></p>', 25, 100, '28093_b06ff008528d5fefa43d5f3d5d0f0932.jpg', '28093_d9a2fb460f6e6d2b7dfd64b24bddb9bc.jpg', '28093_b06ff008528d5fefa43d5f3d5d0f0932.jpg'),
(13, 'Gamis Mango Crepe', 4, 66000, 'Tersedia warna :<div><br><div>- Mocca</div><div>- Mint<br>- Army</div><div>- Cream</div><div><br></div><div>All size</div><div><br></div><div>Note :<p>Setelah melakukan pemesanan diharapkan langsung menghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi pembayaran dan warna.</p><p>Terima kasih and happy shopping :D</p></div></div>', 20, 100, '27914_ae3f317436a8234ac135cbee56bb03d4.jpg', '27914_be47bf297df91985ee1c3dd3715f23f3.jpg', '27914_ae3f317436a8234ac135cbee56bb03d4.jpg'),
(14, 'Gamis Jeans Elena', 4, 118900, '<p>\r\n\r\n</p><p>Tersedia warna :</p><div>- Light</div><div>- Dark</div><div><br></div><div>Tersedia ukuran :</div><div>- L</div><div>- XL</div><div>- XXL</div><div><br><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung menghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi pembayaran,warna dan size.</p><p>Terima kasih and happy shopping :D</p></div>\r\n\r\n<br><p></p>', 50, 120, '29414_287bfea28bf14b6478b5c01aa855080f.jpg', '29414_739c4c3df049adf9c7508131d1d738c6.jpg', '29414_287bfea28bf14b6478b5c01aa855080f.jpg'),
(15, 'Caca Dress Carita', 4, 57900, '<p>\r\n\r\n</p><p>Tersedia warna :</p><p>- Maroon</p><p>- Mocca</p><p>- Bottle</p><p><br></p><p>All Size fit to L</p><p><br></p><div><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung menghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi pembayaran dan warna.</p><p>Terima kasih and happy shopping :D</p></div>\r\n\r\n<br><p></p>', 44, 100, '25854_acaa27a0e963c14d4efc5ac82177375f.jpg', '19203_b676c08fb66b6311c2f70466995f58e8.jpg', '10425_0b0780ebabbc26c9b834135ac10f45ba.jpg'),
(16, 'Khadijah Set Hijab', 4, 80000, '<p>\r\n\r\n</p><p>Tersedia warna :</p><div>- Mustard</div><div>- Grey</div><div>- Navy</div><div><br></div><div>Tersedia ukuran :</div><div>- M</div><div>- L</div><div>- XL</div><div><br><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung menghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi pembayaran, warna dan size.</p><p>Terima kasih and happy shopping :D</p></div>\r\n\r\n<br><p></p>', 55, 120, '2688_85c3fbae8b7a8f52afc41e8a3b9a748d.jpg', '2688_817bcea272af135a96bd196f33f942dc.jpg', '2688_85c3fbae8b7a8f52afc41e8a3b9a748d.jpg'),
(17, 'SANIA SET', 5, 60000, '<p>\r\nUkuran : ALL SIZE  \r\n               ( LD 95 cm,&nbsp; PB 127 cm) <br></p><p>Untuk Tinggi Badan  140-155 CM <br></p><p>Bahan : Katun <br></p><p>Perkiraan usia 11-17 tahun  (tergantung ukuran badan) <br></p><p><br></p><p>Tersedia warna :</p><p>- Navy</p><p>- Maroon</p><p>- Moca</p><p><br></p><p>\r\n</p><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung menghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi pembayaran, warna dan size.</p><p>Terima kasih and happy shopping :D</p>\r\n\r\n<p></p>', 25, 60, '13829_1661176197720.png', '3064_jual.png', '3064_jual g.png'),
(18, 'Shabiyan Moscrepe', 5, 148000, '<p>\r\n</p><p>\r\n</p><div>\r\nDetail Size :</div><div>- XS  LD 85 cm PB 128 cm <br></div><div>- S    LD 92 cm PB 133 cm <br></div><div>- M   LD 100 cm PB 137 cm</div><div>Dianjurkan untuk mengukur Lingkar Dada dan Panjang Bajunya. <br></div><div><br></div><div>Tersedia Warna :</div><div>- Hitam, dan</div><div>- Hijau</div><div><br></div><p>\r\n</p><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung \r\nmenghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi \r\npembayaran, warna dan size.</p><p>Terima kasih and happy shopping :D</p>\r\n\r\n<br><p></p>', 12, 60, '32673_a.png', '32673_v.png', '32673_s.png'),
(19, 'CHIKITA GAMIS', 5, 90000, '<p>\r\nBahan Inner Spandek</p><p>Bahan Overall Manggocrepe <br></p><div><br></div><div>Tersedia size :</div><p>M=Ld 96 Pb 130</p><p>L=Ld 100 Pb 135 <br></p><p><br></p><p>Tersedia warna :</p><p>- Chikita rok brown</p><p>- Chikita rok coksu</p><p>- Chikita rok abu</p><p><br></p><p></p><div><p>\r\n</p><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung \r\nmenghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi \r\npembayaran, warna dan size.</p><p>Terima kasih and happy shopping :D</p>\r\n\r\n</div><p></p>', 13, 60, '16338_Shopee Indonesia.png', '16338_Jual Gik.png', '16338_piuhijn.png'),
(20, 'Livy Dress Gamis', 5, 123950, '<p>Tersedia Ukuran :</p><p>\r\n-  M ld 98 cm pb 130 cm <br></p><p>- L ld 103cm pb 135cm <br></p><p>- XL ld 108 cm pb 138cm <br></p><p>- XXL ld 120 cm pb 140 cm <br></p><p><br></p><p>Tersedia warna :</p><p>\r\n- Hitam <br></p><p>- Mocca <br></p><p>- Pink <br></p><p>- Navy <br></p><p>- Lilac <br></p><p>- Army <br></p><p><br></p><p>\r\n</p><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung \r\nmenghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi \r\npembayaran, warna dan size.</p><p>Terima kasih and happy shopping :D</p>\r\n\r\n<p></p>', 21, 60, '4074_ddd.png', '4074_aaaa.png', '4074_x.png'),
(21, 'AVELLA GAMIS', 5, 75000, '<p>Tersedia ukuran :</p><p>\r\nPanjang inner 112cm <br></p><p>M=Ld 95 Pb 130</p><p>L= Ld 100 pb 135\r\nSize</p><p>XL=Ld 106 pb 135 <br></p><p>Lebar pinggang 115cm <br></p><p>Lebar bawah 165cm <br></p><p><br></p><p>Tersedia warna :</p><p>- Milo</p><p>- Caramel</p><p><br></p><p>\r\n</p><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung \r\nmenghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi \r\npembayaran, warna dan size.</p><p>Terima kasih and happy shopping :D</p>\r\n\r\n<p></p>', 31, 60, '4172_asghjk.png', '4172_sdghnh.png', '4172_dfghj.png'),
(22, 'ZAHWA DRESS', 5, 98945, '<p>Tersedia ukuran :</p><p>- M</p><p>- L</p><p>- XL</p><p><br></p><p>Tersedia warna :</p><p>- Lavender</p><p>- Blue</p><p>- Grey</p><p><br></p><p>\r\n</p><div><div><div><div><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung \r\nmenghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi \r\npembayaran, warna dan size.</p><p>Terima kasih and happy shopping :D</p>\r\n\r\n<p></p><p></p>\r\n\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n\r\n				\r\n\r\n<p></p>', 24, 60, '22691_salma2.png', '22691_salma 1.png', '22691_salma.png'),
(23, 'AREUM DRESS', 5, 99000, '<p></p><div>\r\nUkuran : All Size Fit To S-M-L <br></div><div>Bahan : SEMI WOLL MIX MOSSCREPE <br></div><div>- XXS=LD 80 PB 110 <br></div><div>- XS=LD 85 PB 115 <br></div><div>- S (LD 90cm, Pb 130cm) <br></div><div>- M (LD 95cm, Pb 130cm) <br></div><div>- L (LD 100cm, Pb 135cm&nbsp;\r\n\r\n</div><p></p><p><br></p><p>Tersedia warna :</p><p>- Navyblue</p><p>- Creamy</p><p>- Terracota</p><p>- Emerald</p><p><br></p><p>\r\n</p><div><div><div><div><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung \r\nmenghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi \r\npembayaran, warna dan size.</p><p>Terima kasih and happy shopping :D</p>\r\n\r\n<p></p><p></p>\r\n\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n\r\n				\r\n\r\n<p></p>', 23, 59, '5574_Hakuna Syar RR944 Stelan 3In1.png', '5574_RR944 Stelan 3In1 Setvica Mocca [ 01.png', '5574_3In1 Setvica Mocca [ 01.png'),
(24, 'Moscrepe Premium Polos', 5, 155000, '<p>Tersedia ukuran :</p><p>&nbsp;- XS  LD 85 cm PB 128 cm <br></p><p>- S    LD 92 cm PB 133 cm <br></p><p>- M  LD 100 cm PB 137 cm <br></p><p><br></p><p>Tersedia warna :</p><p>- Dark Grey</p><p>- Denim</p><p><br></p><p>\r\n</p><div><div><div><div><div><div><div><div><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung \r\nmenghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi \r\npembayaran, warna dan size.</p><p>Terima kasih and happy shopping :D</p>\r\n\r\n<p></p><p></p>\r\n\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n\r\n				\r\n\r\n<p></p><p></p>\r\n\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n\r\n				\r\n\r\n<p></p>', 25, 60, '6048_0.png', '6048_j.png', '6048_h.png'),
(25, 'Set Khimar Moscrepe', 5, 184999, '<p>\r\nDetail Size : <br></p><p>-	XXS   LD 80 cm PB 125 cm <br></p><p>- XS     LD 85 cm PB 130 cm <br></p><p>-&nbsp; S        LD 93 cm PB 135 cm <br></p><p>- M       LD 100 cm PB 137 cm <br></p><p><br></p><p>Tersedia warna :</p><p>- Lilac</p><p>- Wardah</p><p>- Denim</p><p>- Dark Grey</p><p>- Hijau</p><p>- Hitam</p><p><br></p><p>\r\n</p><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung \r\nmenghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi \r\npembayaran, warna dan size.</p><p>Terima kasih and happy shopping :D</p>\r\n\r\n<p></p>', 15, 60, '8884_vbn.png', '8884_bnm.png', '8884_dfg.png'),
(26, 'Kenanga Gamis', 5, 37500, '<p>\r\nDetail Ukuran : <br></p><p>- M : Muat BB= 40 - 50 <br></p><p>- L :Muat BB=50 - 60 <br></p><p>- XL : Muat BB= 60 - 70 <br></p><p><br></p><p>Tersedia warna :</p><p>- Pink</p><p>- Mocca</p><p>- Maroon</p><p>- Hitam</p><p><br></p><p>\r\n</p><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung \r\nmenghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi \r\npembayaran, warna dan size.</p><p>Terima kasih and happy shopping :D</p>\r\n\r\n<p></p>', 23, 60, '20189_cvbnm.png', '20189_ghjk.png', '20189_yui.png'),
(27, 'Clarissa Polka', 6, 65000, '<p>\r\nTersedia ukuran :</p><p>- NB= PB 52 LB 50 / USIA 5-11 BLN <br></p><p>- XS = PB 60 LB 62 / USIA 1-2 THN <br></p><p>- S  = PB 70 LB 64 / USIA 2-3THN <br></p><p>- M = PB 80 LB 72 / USIA 4-5 THN <br></p><p>- L = PB 90 LB 74 / USIA 6-7 THN <br></p><p>- XL = PB 100 LD 78 / USIA 7-8 THN <br></p><p><br></p><p>Tersedia warna :</p><p>- Dusty Pink</p><p>- Navy</p><p>- Army</p><p><br></p><p>\r\n</p><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung \r\nmenghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi \r\npembayaran, warna dan size.</p><p>Terima kasih and happy shopping :D</p>\r\n\r\n<p></p>', 34, 60, '26669_nb.png', '26669_gf.png', '26669_kg.png'),
(28, 'GAMIS ANAK JELITA', 6, 59899, '<p>\r\n</p><div>Rekomendasi Usia 4-5 tahun</div><div><br></div><div>Tersedia ukuran :<br></div><div>\r\n- S=1-2 thn\r\n  LD 60cm\r\n  PB 65cm <br></div><div>- M=3-5 thn\r\n  LD 70cm\r\n  PB 75cm <br></div><div>- L= 6-8thn\r\n   LD 75cm\r\n   PB 87cm <br></div><div>- XL=9-12thn\r\n   LD 80cm\r\n   PB 100cm <br></div><div><br></div><div>Tersedia warna :</div><div>- Pink</div><div>- Navy</div><div>- Lemon</div><div><br></div><div>\r\n<div><div><div><div><p>Note :<br></p><p>Setelah melakukan pemesanan diharapkan langsung \r\nmenghubungi kontak yang tertera di bawah halaman utama untuk konfirmasi \r\npembayaran, warna dan size.</p><p>Terima kasih and happy shopping :D</p>\r\n\r\n<p></p><p></p>\r\n\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n\r\n				\r\n\r\n</div>\r\n\r\n<br><p></p>', 33, 60, '31463_dvbc.png', '31463_mn.png', '31463_uhg.png');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_invoice` int(10) NOT NULL,
  `transaksi_produk` int(10) NOT NULL,
  `transaksi_jumlah` int(12) NOT NULL,
  `transaksi_harga` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_invoice`, `transaksi_produk`, `transaksi_jumlah`, `transaksi_harga`) VALUES
(1, 0, 3, 1, 120000),
(2, 0, 1, 1, 1234),
(3, 0, 3, 1, 120000),
(4, 0, 1, 1, 1234),
(10, 4, 4, 1, 123000),
(11, 1, 11, 1, 170000),
(12, 1, 13, 1, 66000),
(13, 2, 10, 1, 183100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
