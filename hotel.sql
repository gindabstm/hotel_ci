-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2022 at 12:06 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `fas_hotel`
--

CREATE TABLE `fas_hotel` (
  `id_fashotel` int(11) NOT NULL,
  `nama_fashotel` text NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fas_hotel`
--

INSERT INTO `fas_hotel` (`id_fashotel`, `nama_fashotel`, `keterangan`, `gambar`) VALUES
(1, 'Kolam Renang', 'Berada dilantai 2 dengan luas 100 m2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgaxcPoBMDjnKFwsA0QR9Ls8TzjFPo4gDU8AWcv5kNSg&s'),
(2, 'Ruangan Serbaguna', 'Berada dilantai 1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPzoGKxkzcNx--3OBsnT5gSNIeXYmw4wp4fl9rJkxM3Q&s'),
(3, 'GYM', 'Berada dilantai paling atas', 'data:image/jpeg;base64,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'),
(4, 'SPA', 'Berada dilantai 3', 'data:image/jpeg;base64,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'),
(5, 'Restoran', 'Restoran berada dilantai dasar dengan luas 400 m2, Kami menyediakan jenis makanan yang beragam, dapat makan sepuasnya, serta pelayanan yang memuaskan. Bagi Anda penghuni hotel, Anda tidak perlu membayar ekstra untuk bersantap sarapan di hotel. Tetapi jika pemesanan Anda tidak termasuk dengan sarapan atau Anda tidak menghuni di hotel, maka Anda harus membayar.', 'https://phinemo.com/wp-content/uploads/2017/10/Bystro-Resto-Allstay-Hotel-1024x683.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fas_kamar`
--

CREATE TABLE `fas_kamar` (
  `id_faskamar` int(11) NOT NULL,
  `id_kamar` int(11) NOT NULL,
  `nama_faskamar` text NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fas_kamar`
--

INSERT INTO `fas_kamar` (`id_faskamar`, `id_kamar`, `nama_faskamar`, `kategori`, `gambar`) VALUES
(1, 1, 'TV LED 32 Inch', 'Furniture', ''),
(2, 1, 'Kamar berukuran luas 32 m2', 'Bangunan', ''),
(3, 1, 'Kamar Mandi Shower', 'Furniture', ''),
(4, 1, 'AC', 'Furniture', ''),
(5, 1, 'Coffee Maker', 'Furniture', ''),
(6, 1, 'Sofa', 'Furniture', '');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `nama_pemesan` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `nama_tamu` varchar(50) NOT NULL,
  `id_kamar` int(11) NOT NULL,
  `tgl_cekin` date NOT NULL,
  `tgl_cekout` date NOT NULL,
  `jml_kamar` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `pembayaran` varchar(50) NOT NULL,
  `kode_pesanan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `pemesanan`
--
DELIMITER $$
CREATE TRIGGER `batal` AFTER DELETE ON `pemesanan` FOR EACH ROW BEGIN
UPDATE tipe_kamar
SET stok = stok + OLD.jml_kamar
WHERE id_kamar = OLD.id_kamar;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `stok` AFTER INSERT ON `pemesanan` FOR EACH ROW BEGIN
UPDATE tipe_kamar SET stok =
stok-NEW.jml_kamar
WHERE id_kamar = NEW.id_kamar;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tipe_kamar`
--

CREATE TABLE `tipe_kamar` (
  `id_kamar` int(11) NOT NULL,
  `nama_kamar` varchar(30) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipe_kamar`
--

INSERT INTO `tipe_kamar` (`id_kamar`, `nama_kamar`, `stok`, `gambar`, `harga`) VALUES
(1, 'Superior Room', 10, 'https://www.99.co/blog/indonesia/wp-content/upload', 500000),
(2, 'Deluxe Room', 10, 'https://www.99.co/blog/indonesia/wp-content/upload', 700000),
(3, 'Junior Suite Room', 10, 'https://blogpictures.99.co/reisetopia-aI6Su7Mu9Ro-', 1000000),
(4, 'Suite Room', 10, 'sdsadsd', 1500000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_login` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `level` enum('tamu','admin','resepsionis') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_login`, `username`, `password`, `nama`, `jenis_kelamin`, `tgl_lahir`, `no_telp`, `level`) VALUES
(1, 'admin', '123', 'Moch Ramdhani', 'Laki-Laki', '2003-12-25', '081211713300', 'admin'),
(2, 'tamu', '123', 'Azkia Fista', 'Perempuan', '2004-10-05', '085716011319', 'tamu'),
(3, 'resepsionis', '123', 'Abu Jamal', 'Laki-Laki', '2003-04-05', '083873235897', 'resepsionis');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fas_hotel`
--
ALTER TABLE `fas_hotel`
  ADD PRIMARY KEY (`id_fashotel`);

--
-- Indexes for table `fas_kamar`
--
ALTER TABLE `fas_kamar`
  ADD PRIMARY KEY (`id_faskamar`),
  ADD KEY `id_kamar` (`id_kamar`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `id_kamar` (`id_kamar`);

--
-- Indexes for table `tipe_kamar`
--
ALTER TABLE `tipe_kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fas_hotel`
--
ALTER TABLE `fas_hotel`
  MODIFY `id_fashotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fas_kamar`
--
ALTER TABLE `fas_kamar`
  MODIFY `id_faskamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipe_kamar`
--
ALTER TABLE `tipe_kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fas_kamar`
--
ALTER TABLE `fas_kamar`
  ADD CONSTRAINT `fas_kamar_ibfk_1` FOREIGN KEY (`id_kamar`) REFERENCES `tipe_kamar` (`id_kamar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`id_kamar`) REFERENCES `tipe_kamar` (`id_kamar`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
