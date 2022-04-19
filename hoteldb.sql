-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Apr 2022 pada 06.48
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoteldb`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `simpan_f_hotel` (`id` INT(11), `nama_fasilitas` VARCHAR(255), `img` VARCHAR(255), `desk` VARCHAR(255))  BEGIN
	insert into f_hotel
	values (id, nama_fasilitas, img, desk);
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `simpan_f_kamar` (`id` INT(11), `id_tipekamar` INT(3), `nama_fasilitas` VARCHAR(255), `kategori` VARCHAR(255), `img` VARCHAR(255))  BEGIN
	
	INSERT INTO f_kamar
	VALUES (id, id_tipekamar, nama_fasilitas, kategori, img);
	
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `simpan_pemesanan` (`id_pesanan` INT(11), `nama_pemesan` VARCHAR(50), `email` VARCHAR(35), `no_hp` VARCHAR(35), `nama_tamu` VARCHAR(50), `id_kamar` INT(11), `tgl_cekin` INT(8), `tgl_cekout` INT(8), `jml_kamar` INT(11), `Harga` INT(11), `PayBay` VARCHAR(244), `PayEnd` INT(1), `Status_Kamar` VARCHAR(255), `RefPB` VARCHAR(255))  BEGIN
	INSERT INTO pemesanan
	VALUES (id_pesanan, nama_pemesan, email, no_hp, nama_tamu, id_kamar, tgl_cekin, tgl_cekout, jml_kamar, Harga, PayBay, PayEnd, Status_Kamar, RefPB);
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `simpan_tipe_room` (`id` INT(11), `Nama_room` VARCHAR(244), `harga` INT(11), `Stok` INT(11), `oneuse` INT(11), `onbook` INT(11), `img_room` VARCHAR(255))  BEGIN
	INSERT INTO tipe_room
	VALUES (id, Nama_room, harga, Stok, oneuse, onebook, img_room);
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `simpan_users` (`id_login` INT(11), `username` VARCHAR(35), `pass` VARCHAR(35), `Nama` VARCHAR(255), `jenis_kelamin` VARCHAR(255), `tgl_lahir` INT(8), `no_hp` VARCHAR(14), `leveling` VARCHAR(10))  BEGIN
	INSERT INTO users
	VALUES (id_login, username, pass, Nama, jenis_kelamin, tgl_lahir, no_hp, leveling);
    END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_log`
--

CREATE TABLE `data_log` (
  `id` int(11) NOT NULL,
  `data` longtext DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_log`
--

INSERT INTO `data_log` (`id`, `data`, `time`) VALUES
(6, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-10 15:48:48'),
(7, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-10 15:49:03'),
(8, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-10 15:49:04'),
(9, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":[],\"post\":{\"tgl_cekin\":\"2022-04-10\",\"tgl_cekout\":\"2022-04-11\",\"jml_kamar\":\"1\",\"nama_pemesan\":\"welcome\",\"email\":\"ginda123@gmail.com\",\"no_hp\":\"0815858651891\",\"id_kamar\":\"2\",\"PayBay\":\"Transfer Bank\"},\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-10 15:49:21'),
(10, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-10 15:49:33'),
(11, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-10 15:49:34'),
(12, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-10 15:57:54'),
(13, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:21'),
(14, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:35'),
(15, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:35'),
(16, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:36'),
(17, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:36'),
(18, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:36'),
(19, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:37'),
(20, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:37'),
(21, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:37'),
(22, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:38'),
(23, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:38'),
(24, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:38'),
(25, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:39'),
(26, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:39'),
(27, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:40'),
(28, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:40'),
(29, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:40'),
(30, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:40'),
(31, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:58:41'),
(32, '{\"get\":[],\"post\":[]}', '2022-04-10 15:58:51'),
(33, '{\"get\":[],\"post\":[]}', '2022-04-10 15:58:57'),
(34, '{\"get\":[],\"post\":[]}', '2022-04-10 15:58:57'),
(35, '{\"get\":[],\"post\":[]}', '2022-04-10 15:58:57'),
(36, '{\"get\":[],\"post\":[]}', '2022-04-10 15:58:58'),
(37, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:59:01'),
(38, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:59:02'),
(39, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:59:02'),
(40, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:59:03'),
(41, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-10 15:59:03'),
(42, '{\"get\":[],\"post\":[]}', '2022-04-10 15:59:06'),
(43, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:15:45'),
(44, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:15:51'),
(45, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:15:52'),
(46, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:16:06'),
(47, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:16:07'),
(48, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:16:08'),
(49, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:16:34'),
(50, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:16:35'),
(51, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:16:35'),
(52, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:16:36'),
(53, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:16:36'),
(54, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:16:36'),
(55, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:16:40'),
(56, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:16:41'),
(57, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:16:42'),
(58, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:16:42'),
(59, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:16:43'),
(60, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:16:43'),
(61, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:17:16'),
(62, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:17:16'),
(63, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:17:16'),
(64, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:17:18'),
(65, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:17:29'),
(66, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:17:31'),
(67, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:17:40'),
(68, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:17:42'),
(69, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:18:00'),
(70, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:18:03'),
(71, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 16:18:07'),
(72, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":[],\"post\":[]}', '2022-04-10 16:19:06'),
(73, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":[],\"post\":[]}', '2022-04-10 16:19:10'),
(74, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-10 16:19:13'),
(75, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-10 16:19:17'),
(76, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-10 16:19:18'),
(77, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-10 16:19:19'),
(78, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-10 16:19:20'),
(79, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[]}', '2022-04-10 16:19:22'),
(80, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[]}', '2022-04-10 16:19:25'),
(81, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-10 16:19:25'),
(82, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-10 16:19:26'),
(83, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-10 16:22:55'),
(84, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-10 16:23:01'),
(85, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/register\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-10 16:23:06'),
(86, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-10 16:24:37'),
(87, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-10 16:24:38'),
(88, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-10 16:24:39'),
(89, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-10 16:27:23'),
(90, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":[],\"post\":[]}', '2022-04-10 16:27:54'),
(91, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":[],\"post\":[]}', '2022-04-10 16:27:55'),
(92, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":[],\"post\":[]}', '2022-04-10 16:27:55'),
(93, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 16:31:47'),
(94, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 16:31:49'),
(95, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":[],\"post\":[]}', '2022-04-10 16:32:12'),
(96, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081585838912\",\"level\":\"resepsionis\"}}', '2022-04-10 16:59:29'),
(97, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081585838912\",\"level\":\"resepsionis\"}}', '2022-04-10 16:59:30'),
(98, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081585838912\",\"level\":\"resepsionis\"}}', '2022-04-10 17:00:55'),
(99, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081585838912\",\"level\":\"resepsionis\"}}', '2022-04-10 17:00:56'),
(100, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?t=pemesanan&v=filter?req&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-04-10 17:09:31'),
(101, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/register\",\"get\":[],\"post\":[]}', '2022-04-10 17:09:38'),
(102, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?t=pemesanan&v=filter?req&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-04-10 17:12:56'),
(103, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:21:57'),
(104, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:22:37'),
(105, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/register\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:23:01'),
(106, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/register\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:23:02'),
(107, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:23:43'),
(108, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:23:44'),
(109, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?t=pemesanan&v=filter?req&t=pemesanan&v=filter\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:23:58'),
(110, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?t=pemesanan&v=filter?req&t=pemesanan&v=filter\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:24:21'),
(111, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:24:22'),
(112, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:24:23'),
(113, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:24:26'),
(114, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:24:27'),
(115, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:24:50'),
(116, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:24:51'),
(117, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:24:51'),
(118, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:24:52'),
(119, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?t=pemesanan&v=filter?req&t=pemesanan&v=filter\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:24:58'),
(120, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data?req%20cari_data\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:25:04'),
(121, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data?req%20cari_data\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:25:04'),
(122, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data?req%20cari_data\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:25:34'),
(123, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data?req%20cari_data\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:26:45'),
(124, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:26:58'),
(125, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:27:00'),
(126, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:27:03'),
(127, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data?req%20cari_data\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:27:07'),
(128, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?t=pemesanan&v=filter?req&t=pemesanan&v=filter\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:27:13'),
(129, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:27:30'),
(130, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:27:34'),
(131, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:27:35'),
(132, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-10 17:27:37'),
(133, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 17:29:11'),
(134, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 17:29:15'),
(135, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 17:29:16'),
(136, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 17:29:17'),
(137, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 17:29:18'),
(138, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 17:29:19'),
(139, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-10 17:29:25'),
(140, '{\"get\":[],\"post\":[]}', '2022-04-11 05:55:21'),
(141, '{\"get\":[],\"post\":[]}', '2022-04-11 05:58:29'),
(142, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 06:29:35'),
(143, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 06:29:41'),
(144, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 06:42:37'),
(145, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 06:44:31'),
(146, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 07:06:55'),
(147, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 07:24:39'),
(148, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 07:25:50'),
(149, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 07:26:18'),
(150, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 07:26:20'),
(151, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 07:26:24'),
(152, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 07:26:28'),
(153, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 07:26:48'),
(154, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/tamu\\/ref?req=Booked\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 07:27:57'),
(155, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 07:30:10'),
(156, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 07:30:33'),
(157, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Booked\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 07:31:29'),
(158, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Booked\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 07:34:29'),
(159, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 07:34:35'),
(160, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 07:45:59'),
(161, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:48:13'),
(162, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:48:19'),
(163, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:48:22'),
(164, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:48:30'),
(165, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:48:33'),
(166, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:48:34'),
(167, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:48:36'),
(168, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:48:36'),
(169, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:48:36'),
(170, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:48:36'),
(171, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:48:36'),
(172, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:49:28'),
(173, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:49:32'),
(174, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:49:37'),
(175, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:49:40'),
(176, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:49:57'),
(177, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:49:58'),
(178, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:50:04'),
(179, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:51:49'),
(180, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:51:50'),
(181, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:51:50'),
(182, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:51:50'),
(183, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:52:40'),
(184, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:52:42'),
(185, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:53:08'),
(186, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:53:17'),
(187, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:53:18');
INSERT INTO `data_log` (`id`, `data`, `time`) VALUES
(188, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:54:01'),
(189, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:54:17'),
(190, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:54:18'),
(191, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:54:24'),
(192, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:54:27'),
(193, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:54:42'),
(194, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:54:45'),
(195, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:54:47'),
(196, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:57:06'),
(197, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:57:12'),
(198, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:57:13'),
(199, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:57:18'),
(200, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:57:20'),
(201, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 07:58:17'),
(202, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 07:59:32'),
(203, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 08:04:17'),
(204, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 08:04:52'),
(205, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 08:04:56'),
(206, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 08:04:59'),
(207, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 08:05:01'),
(208, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":[],\"post\":[]}', '2022-04-11 08:06:59'),
(209, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/data?t=users&v=allcounter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:08:11'),
(210, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:08:12'),
(211, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:09:35'),
(212, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:09:37'),
(213, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:11:28'),
(214, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:11:41'),
(215, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_kamar&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-11 08:12:41'),
(216, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_kamar&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-11 08:12:46'),
(217, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 08:12:50'),
(218, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 08:13:25'),
(219, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_kamar&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-11 08:13:25'),
(220, '{\"get\":[],\"post\":[]}', '2022-04-11 08:13:31'),
(221, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 08:13:35'),
(222, '{\"get\":[],\"post\":[]}', '2022-04-11 08:13:37'),
(223, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:06'),
(224, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:10'),
(225, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:11'),
(226, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:11'),
(227, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:12'),
(228, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:12'),
(229, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:12'),
(230, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:12'),
(231, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:13'),
(232, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:13'),
(233, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:13'),
(234, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:14'),
(235, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:14'),
(236, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:14'),
(237, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:14'),
(238, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:15'),
(239, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:15'),
(240, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:14:58'),
(241, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:15:41'),
(242, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/booking?id=1\",\"get\":[],\"post\":[]}', '2022-04-11 08:16:11'),
(243, '{\"get\":[],\"post\":[]}', '2022-04-11 08:18:24'),
(244, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 08:19:44'),
(245, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 08:19:59'),
(246, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/data?t=users&v=allcounter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:20:10'),
(247, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:20:44'),
(248, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 08:20:47'),
(249, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-11 08:20:56'),
(250, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-04-11 08:21:00'),
(251, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:21:12'),
(252, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:21:41'),
(253, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:21:51'),
(254, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 08:22:17'),
(255, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/data?t=users&v=allcounter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:22:26'),
(256, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:23:07'),
(257, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:23:08'),
(258, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:23:08'),
(259, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-11 08:23:14'),
(260, '{\"get\":[],\"post\":[]}', '2022-04-11 08:23:35'),
(261, '{\"get\":[],\"post\":[]}', '2022-04-11 08:23:37'),
(262, '{\"get\":[],\"post\":[]}', '2022-04-11 08:25:48'),
(263, '{\"get\":[],\"post\":[]}', '2022-04-11 08:26:19'),
(264, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-11 08:26:20'),
(265, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-11 08:26:22'),
(266, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-11 08:26:35'),
(267, '{\"get\":[],\"post\":[]}', '2022-04-11 08:26:36'),
(268, '{\"get\":[],\"post\":[]}', '2022-04-11 08:27:02'),
(269, '{\"get\":[],\"post\":[]}', '2022-04-11 08:27:12'),
(270, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":[],\"post\":[]}', '2022-04-11 08:27:14'),
(271, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":[],\"post\":[]}', '2022-04-11 08:27:15'),
(272, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":[],\"post\":[]}', '2022-04-11 08:27:20'),
(273, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":[],\"post\":[]}', '2022-04-11 08:28:30'),
(274, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":[],\"post\":[]}', '2022-04-11 08:28:37'),
(275, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 08:28:39'),
(276, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 08:28:46'),
(277, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":[],\"post\":{\"tgl_cekin\":\"2022-04-11\",\"tgl_cekout\":\"2022-04-12\",\"jml_kamar\":\"1\",\"nama_pemesan\":\"welcome\",\"email\":\"ginda123@gmail.com\",\"no_hp\":\"0815858651891\",\"id_kamar\":\"1\",\"PayBay\":\"Transfer Bank\"}}', '2022-04-11 08:28:59'),
(278, '{\"get\":[],\"post\":[]}', '2022-04-11 08:29:19'),
(279, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":[],\"post\":{\"tgl_cekin\":\"2022-04-11\",\"tgl_cekout\":\"2022-04-12\",\"jml_kamar\":\"1\",\"nama_pemesan\":\"welcome\",\"email\":\"ginda123@gmail.com\",\"no_hp\":\"0815858651891\",\"id_kamar\":\"1\",\"PayBay\":\"Transfer Bank\"}}', '2022-04-11 08:30:19'),
(280, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 08:30:28'),
(281, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"ginda\",\"password\":\"12345678\",\"nama\":\"ginda bustomi\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2010-10-15\",\"no_hp\":\"0815858651891\",\"level\":\"tamu\"}}', '2022-04-11 08:30:56'),
(282, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 08:30:59'),
(283, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 08:31:09'),
(284, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 08:31:10'),
(285, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 08:31:10'),
(286, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 08:31:11'),
(287, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 08:31:11'),
(288, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 08:31:11'),
(289, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 08:31:12'),
(290, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:31:24'),
(291, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:32:45'),
(292, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:33:10'),
(293, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:33:11'),
(294, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:33:11'),
(295, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:33:13'),
(296, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:33:14'),
(297, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:33:15'),
(298, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:33:15'),
(299, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:33:16'),
(300, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:33:17'),
(301, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:33:17'),
(302, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:33:21'),
(303, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:33:26'),
(304, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:33:31'),
(305, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:33:35'),
(306, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:33:56'),
(307, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 08:34:00'),
(308, '{\"get\":[],\"post\":[]}', '2022-04-11 08:34:03'),
(309, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 08:34:04'),
(310, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 08:34:05'),
(311, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 08:34:05'),
(312, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 08:34:06'),
(313, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 08:34:28'),
(314, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 08:34:29'),
(315, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 08:38:25'),
(316, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-11 08:54:07'),
(317, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 09:13:48'),
(318, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 09:13:49'),
(319, '{\"get\":[],\"post\":[]}', '2022-04-11 09:22:01'),
(320, '{\"get\":[],\"post\":[]}', '2022-04-11 09:28:53'),
(321, '{\"get\":[],\"post\":[]}', '2022-04-11 09:31:16'),
(322, '{\"get\":[],\"post\":[]}', '2022-04-11 09:31:19'),
(323, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-11 09:44:53'),
(324, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-04-11 09:45:11'),
(325, '{\"get\":[],\"post\":[]}', '2022-04-11 09:53:12'),
(326, '{\"get\":[],\"post\":[]}', '2022-04-11 09:53:24'),
(327, '{\"get\":[],\"post\":[]}', '2022-04-11 10:03:07'),
(328, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"17\",\"username\":\"tomi\",\"password\":\"12345678\",\"nama\":\"GINDA BUSTOMI\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"081585586958\",\"level\":\"tamu\"}}', '2022-04-11 10:05:14'),
(329, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"17\",\"username\":\"tomi\",\"password\":\"12345678\",\"nama\":\"GINDA BUSTOMI\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"081585586958\",\"level\":\"tamu\"}}', '2022-04-11 10:05:19'),
(330, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 10:05:35'),
(331, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 10:07:38'),
(332, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 10:07:41'),
(333, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 10:08:17'),
(334, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 10:08:18'),
(335, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 10:10:02'),
(336, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 10:10:08'),
(337, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 10:10:08'),
(338, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 10:10:09'),
(339, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 10:10:12'),
(340, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 10:10:39'),
(341, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 10:10:42'),
(342, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 10:11:39'),
(343, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_kamar&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-11 10:11:41'),
(344, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 10:11:47'),
(345, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:12:11'),
(346, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:12:14'),
(347, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:12:34'),
(348, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:12:36'),
(349, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:12:49'),
(350, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:12:50'),
(351, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:12:56'),
(352, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:13:08'),
(353, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:13:09'),
(354, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:13:14'),
(355, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:13:29'),
(356, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:13:30'),
(357, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:14:19'),
(358, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:14:45'),
(359, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:14:46'),
(360, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:15:10'),
(361, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:15:11'),
(362, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-04-11 10:16:01'),
(363, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:17:13'),
(364, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:17:48'),
(365, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:18:10'),
(366, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:18:10'),
(367, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:18:22'),
(368, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:18:23'),
(369, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:18:34'),
(370, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:19:10'),
(371, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:19:40'),
(372, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:20:24'),
(373, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:20:26'),
(374, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:20:35'),
(375, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:20:46'),
(376, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:21:40'),
(377, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:22:09'),
(378, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:22:30'),
(379, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 10:22:39'),
(380, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":[],\"post\":[]}', '2022-04-11 10:26:01'),
(381, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":[],\"post\":[]}', '2022-04-11 10:26:18'),
(382, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":[],\"post\":[]}', '2022-04-11 10:26:28'),
(383, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":[],\"post\":[]}', '2022-04-11 10:26:47'),
(384, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":[],\"post\":[]}', '2022-04-11 10:27:39'),
(385, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":[],\"post\":[]}', '2022-04-11 10:27:39'),
(386, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":[],\"post\":[]}', '2022-04-11 10:27:40'),
(387, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":[],\"post\":[]}', '2022-04-11 10:27:40'),
(388, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":[],\"post\":[]}', '2022-04-11 10:27:40'),
(389, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":[],\"post\":[]}', '2022-04-11 10:27:40'),
(390, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":[],\"post\":[]}', '2022-04-11 10:27:51'),
(391, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":[],\"post\":[]}', '2022-04-11 10:27:52'),
(392, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":[],\"post\":[]}', '2022-04-11 10:28:01'),
(393, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":[],\"post\":[]}', '2022-04-11 13:07:13'),
(394, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 13:07:22'),
(395, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":[],\"post\":[]}', '2022-04-11 13:50:59'),
(396, '{\"get\":[],\"post\":[]}', '2022-04-11 14:00:26'),
(397, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:00:40'),
(398, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 14:01:17'),
(399, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 14:02:49'),
(400, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 14:02:51'),
(401, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 14:04:37'),
(402, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_kamar&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-11 14:05:54'),
(403, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":[],\"post\":[]}', '2022-04-11 14:13:05'),
(404, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:15:24'),
(405, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 14:15:25'),
(406, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:18:46'),
(407, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:19:57'),
(408, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:23:33'),
(409, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 14:24:12'),
(410, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:24:14'),
(411, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:25:25'),
(412, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:25:26'),
(413, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:25:30'),
(414, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:26:06'),
(415, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:26:57'),
(416, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:26:57'),
(417, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:28:06'),
(418, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:28:52'),
(419, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:29:40'),
(420, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:31:25'),
(421, '{\"get\":[],\"post\":[]}', '2022-04-11 14:37:24');
INSERT INTO `data_log` (`id`, `data`, `time`) VALUES
(422, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:40:00'),
(423, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:40:18'),
(424, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:44:08'),
(425, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:44:47'),
(426, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:45:49'),
(427, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 14:59:24'),
(428, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":[],\"post\":[]}', '2022-04-11 15:07:36'),
(429, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":[],\"post\":[]}', '2022-04-11 15:15:11'),
(430, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":[],\"post\":[]}', '2022-04-11 15:15:42'),
(431, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":[],\"post\":[]}', '2022-04-11 15:16:01'),
(432, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":[],\"post\":[]}', '2022-04-11 15:16:43'),
(433, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":[],\"post\":[]}', '2022-04-11 15:17:38'),
(434, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":[],\"post\":[]}', '2022-04-11 15:21:26'),
(435, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":[],\"post\":[]}', '2022-04-11 15:22:05'),
(436, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":[],\"post\":[]}', '2022-04-11 15:22:45'),
(437, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 15:57:34'),
(438, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 16:00:19'),
(439, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 16:00:21'),
(440, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 16:01:28'),
(441, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 16:01:53'),
(442, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 16:02:55'),
(443, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 16:05:45'),
(444, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 16:05:56'),
(445, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 16:06:22'),
(446, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 16:06:57'),
(447, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 16:07:04'),
(448, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/booking?id=1\",\"get\":[],\"post\":[]}', '2022-04-11 16:07:49'),
(449, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 16:07:50'),
(450, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 16:08:08'),
(451, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:09:26'),
(452, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:09:51'),
(453, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:10:01'),
(454, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:12:00'),
(455, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:12:14'),
(456, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:12:34'),
(457, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:13:34'),
(458, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:13:54'),
(459, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:14:03'),
(460, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:14:18'),
(461, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:14:45'),
(462, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:14:48'),
(463, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:15:15'),
(464, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:15:20'),
(465, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:15:43'),
(466, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:16:02'),
(467, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:16:12'),
(468, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:16:17'),
(469, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:32:55'),
(470, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"12\",\"username\":\"ginda\",\"password\":\"ginda123\",\"Nama\":\"GINDA BUSTOMI\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"2003-10-15\",\"nowa\":\"081585858962\",\"level\":\"tamu\"}}', '2022-04-11 16:34:00'),
(471, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 16:34:04'),
(472, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 16:34:07'),
(473, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 16:34:23'),
(474, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 16:34:26'),
(475, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 16:35:21'),
(476, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 16:35:30'),
(477, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 16:35:34'),
(478, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 16:35:36'),
(479, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 16:35:36'),
(480, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 16:35:46'),
(481, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/booking?id=1\",\"get\":[],\"post\":[]}', '2022-04-11 16:43:46'),
(482, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":[],\"post\":{\"tgl_cekin\":\"2022-04-13\",\"tgl_cekout\":\"2022-04-12\",\"jml_kamar\":\"1\",\"nama_pemesan\":\"welcome 22e\",\"email\":\"ginda123@gmail.com\",\"no_hp\":\"081585586958\",\"id_kamar\":\"1\",\"PayBay\":\"Transfer Bank\"},\"user\":{\"id_login\":\"13\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081585838912\",\"level\":\"resepsionis\"}}', '2022-04-11 16:50:28'),
(483, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data?ref=041122Transfer+Bank185028\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081585838912\",\"level\":\"resepsionis\"}}', '2022-04-11 16:51:15'),
(484, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081585838912\",\"level\":\"resepsionis\"}}', '2022-04-11 17:03:30'),
(485, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"13\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"Jenis_Kelamin\":\"L\",\"tgllahir\":\"0000-00-00\",\"nowa\":\"081585838912\",\"level\":\"resepsionis\"}}', '2022-04-11 17:03:36'),
(486, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-04-11 17:03:52'),
(487, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-04-11 17:06:03'),
(488, '{\"get\":[],\"post\":[]}', '2022-04-11 17:06:07'),
(489, '{\"get\":[],\"post\":[]}', '2022-04-11 17:06:50'),
(490, '{\"get\":[],\"post\":[]}', '2022-04-11 17:06:57'),
(491, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 17:07:14'),
(492, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 17:07:22'),
(493, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 17:07:29'),
(494, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 17:07:32'),
(495, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 17:07:36'),
(496, '{\"get\":[],\"post\":[]}', '2022-04-11 17:08:16'),
(497, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 17:08:32'),
(498, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 17:08:39'),
(499, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 17:08:56'),
(500, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 17:09:09'),
(501, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 17:09:11'),
(502, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 17:09:15'),
(503, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 17:09:22'),
(504, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 17:12:49'),
(505, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 17:12:49'),
(506, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 17:12:50'),
(507, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 17:13:20'),
(508, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 17:13:21'),
(509, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 17:15:12'),
(510, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 17:15:24'),
(511, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 17:15:33'),
(512, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-11 17:15:35'),
(513, '{\"get\":[],\"post\":[]}', '2022-04-11 17:15:40'),
(514, '{\"get\":[],\"post\":[]}', '2022-04-11 17:15:48'),
(515, '{\"get\":[],\"post\":[]}', '2022-04-11 17:15:59'),
(516, '{\"get\":[],\"post\":[]}', '2022-04-11 17:16:15'),
(517, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 17:17:18'),
(518, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 17:17:20'),
(519, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 17:17:22'),
(520, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":[],\"post\":[]}', '2022-04-11 17:17:23'),
(521, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 17:17:24'),
(522, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 17:17:26'),
(523, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 17:17:27'),
(524, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 17:17:31'),
(525, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 17:17:36'),
(526, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 17:17:45'),
(527, '{\"get\":[],\"post\":[]}', '2022-04-11 22:07:05'),
(528, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 22:07:28'),
(529, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 22:07:31'),
(530, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":[],\"post\":{\"tgl_cekin\":\"2022-04-13\",\"tgl_cekout\":\"2022-04-14\",\"jml_kamar\":\"1\",\"nama_pemesan\":\"welcome\",\"email\":\"ginda123@gmail.com\",\"no_hp\":\"0815858651890\",\"id_kamar\":\"1\",\"PayBay\":\"E-wallet(Dana-ovo)\"}}', '2022-04-11 22:07:57'),
(531, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 22:08:06'),
(532, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 22:08:13'),
(533, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 22:12:22'),
(534, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-11 22:12:23'),
(535, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 22:12:26'),
(536, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":[],\"post\":{\"tgl_cekin\":\"2022-04-12\",\"tgl_cekout\":\"2022-04-13\",\"jml_kamar\":\"1\",\"nama_pemesan\":\"welcome\",\"email\":\"ginda123@gmail.com\",\"no_hp\":\"0815858651891\",\"id_kamar\":\"1\",\"PayBay\":\"Transfer Bank\"}}', '2022-04-11 22:12:52'),
(537, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-11 22:12:54'),
(538, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Welcome\\/Book\",\"get\":[],\"post\":[]}', '2022-04-11 22:13:00'),
(539, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 22:13:11'),
(540, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 22:13:16'),
(541, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 22:20:12'),
(542, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 22:24:28'),
(543, '{\"get\":[],\"post\":[]}', '2022-04-11 22:31:49'),
(544, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 22:32:09'),
(545, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 22:49:14'),
(546, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-11 22:53:32'),
(547, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-11 22:53:48'),
(548, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_kamar&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-11 22:54:51'),
(549, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 22:55:03'),
(550, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 22:55:10'),
(551, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 22:56:03'),
(552, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 22:56:04'),
(553, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 22:56:26'),
(554, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 22:56:33'),
(555, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 22:56:35'),
(556, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"18\",\"username\":\"GINDUL\",\"password\":\"123\",\"Nama\":\"GINDUL\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-04-10\",\"no_hp\":\"08158696574\",\"level\":\"tamu\"}}', '2022-04-11 22:56:54'),
(557, '{\"get\":[],\"post\":[]}', '2022-04-16 01:37:37'),
(558, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 01:57:46'),
(559, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 01:59:01'),
(560, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 01:59:54'),
(561, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 01:59:55'),
(562, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 01:59:55'),
(563, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 02:00:10'),
(564, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 02:00:18'),
(565, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 02:00:43'),
(566, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 02:00:43'),
(567, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 02:00:44'),
(568, '{\"get\":[],\"post\":[]}', '2022-04-16 02:00:48'),
(569, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 02:00:51'),
(570, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 02:00:52'),
(571, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 02:00:52'),
(572, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 02:00:52'),
(573, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 02:00:53'),
(574, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 02:00:53'),
(575, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 02:00:53'),
(576, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 02:00:53'),
(577, '{\"get\":[],\"post\":[]}', '2022-04-16 02:02:23'),
(578, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-04-16 02:06:08'),
(579, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-16 03:05:33'),
(580, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-04-16 03:07:43'),
(581, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-04-16 03:12:22'),
(582, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-16 03:12:37'),
(583, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=add&t=F_kamar\",\"get\":[],\"post\":[]}', '2022-04-16 03:16:48'),
(584, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":[],\"post\":[]}', '2022-04-16 03:19:30'),
(585, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-16 03:19:37'),
(586, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_kamar&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-16 03:20:15'),
(587, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-16 03:20:16'),
(588, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-16 03:22:56'),
(589, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-16 03:22:58'),
(590, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-16 03:23:05'),
(591, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-16 03:28:44'),
(592, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 03:28:49'),
(593, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 03:29:20'),
(594, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-04-16 03:29:40'),
(595, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 03:29:52'),
(596, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-16 03:31:23'),
(597, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-16 03:31:32'),
(598, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_Hotel&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-16 03:48:34'),
(599, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 03:48:40'),
(600, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 03:52:38'),
(601, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-04-16 03:57:51'),
(602, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-16 03:58:10'),
(603, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-16 04:03:27'),
(604, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 04:04:31'),
(605, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/booking?id=8\",\"get\":[],\"post\":[]}', '2022-04-16 04:06:30'),
(606, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 04:34:08'),
(607, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-16 04:34:48'),
(608, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-16 04:57:52'),
(609, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-16 05:00:07'),
(610, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-16 05:00:23'),
(611, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-16 05:02:19'),
(612, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-04-16 05:02:20'),
(613, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 05:02:26'),
(614, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-16 05:05:42'),
(615, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 05:05:48'),
(616, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 05:06:30'),
(617, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 05:06:31'),
(618, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-16 05:06:41'),
(619, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 05:06:47'),
(620, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-16 05:06:51'),
(621, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-16 05:07:00'),
(622, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-16 05:07:01'),
(623, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-16 05:09:52'),
(624, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 05:10:39'),
(625, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 05:12:20'),
(626, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 05:12:23'),
(627, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 05:12:36'),
(628, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 05:13:23'),
(629, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-16 05:13:30'),
(630, '{\"get\":[],\"post\":[]}', '2022-04-18 03:29:05'),
(631, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-18 03:29:12'),
(632, '{\"get\":[],\"post\":[]}', '2022-04-19 03:12:53'),
(633, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:13:05'),
(634, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:21:38'),
(635, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:21:39');
INSERT INTO `data_log` (`id`, `data`, `time`) VALUES
(636, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-04-19 03:22:29'),
(637, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:28:28'),
(638, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:31:00'),
(639, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:31:28'),
(640, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:32:31'),
(641, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:38:24'),
(642, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:38:49'),
(643, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:38:49'),
(644, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:38:49'),
(645, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/kontak\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:39:21'),
(646, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:44:16'),
(647, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:45:11'),
(648, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:48:06'),
(649, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:48:10'),
(650, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 03:59:37'),
(651, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-04-19 04:01:04'),
(652, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-19 04:01:10'),
(653, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-19 04:01:15'),
(654, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-19 04:11:32'),
(655, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-19 04:14:56'),
(656, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-19 04:17:02'),
(657, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-04-19 04:19:47'),
(658, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 04:19:54'),
(659, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-04-19 04:21:09'),
(660, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-19 04:21:17'),
(661, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-19 04:23:02'),
(662, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-04-19 04:23:08'),
(663, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_kamar&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-04-19 04:23:14'),
(664, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data?ref=041022Transfer+Bank170828\",\"get\":[],\"post\":[]}', '2022-04-19 04:31:20'),
(665, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data?ref=041122Transfer+Bank102859\",\"get\":[],\"post\":[]}', '2022-04-19 04:36:25'),
(666, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-04-19 04:46:39'),
(667, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-04-19 04:46:47'),
(668, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-04-19 04:46:48'),
(669, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 04:47:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `f_hotel`
--

CREATE TABLE `f_hotel` (
  `id` int(11) NOT NULL,
  `nama_fasilitas` text NOT NULL,
  `img` text NOT NULL,
  `deks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `f_hotel`
--

INSERT INTO `f_hotel` (`id`, `nama_fasilitas`, `img`, `deks`) VALUES
(1, 'Kolam Renang', 'https://images.unsplash.com/photo-1623718649591-311775a30c43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80', 'Kolam renang luar ruangan ini dirancang untuk tamu dewasa dan dikelilingi taman tropis yang indah'),
(2, 'Lagoon Cafe', 'https://media.istockphoto.com/photos/3d-rendering-nice-restaurant-with-elegant-decoration-picture-id588377956?b=1&k=20&m=588377956&s=170667a&w=0&h=efrsngiUVBrpOOJfj6Igpw8kVteT-twX5Q0PLHlnB1w=', 'Menyajikan hidangan prasmanan dan a la carte lengkap dengan menu Indonesia dan Internasional'),
(4, 'Lagoon Spa', 'https://media.istockphoto.com/photos/man-and-woman-lying-down-on-massage-beds-at-asian-wellness-center-picture-id875640820?b=1&k=20&m=875640820&s=170667a&w=0&h=M85Lk4k2Puy_QnsGuGtkBycjlfINonPzHcYq3sB2z9A=', 'Berbagai perawatan dirancang khusus untuk memenuhi keinginan akan kenyamanan diseluruh tubuh, pijat, manicure dan pedicure'),
(5, 'Taman', 'https://images.unsplash.com/photo-1618582240632-1937f4c91d7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80', 'Taman hotel yang bisa anda nikmati, terdapat tanaman-tanaman hias yang bisa menyegearkan mata.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `f_kamar`
--

CREATE TABLE `f_kamar` (
  `id` int(11) NOT NULL,
  `id_tipekamar` int(3) NOT NULL,
  `nama_fasilitas` text DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `f_kamar`
--

INSERT INTO `f_kamar` (`id`, `id_tipekamar`, `nama_fasilitas`, `kategori`, `img`) VALUES
(18, 1, 'Tv LED 42 inc', 'Eletronik', 'https://images.unsplash.com/photo-1567690187548-f07b1d7bf5a9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80'),
(19, 2, 'Tv LED 42 inc', 'Elektronik', 'https://images.unsplash.com/photo-1558888401-3cc1de77652d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80'),
(20, 1, 'Kamar mandi', 'room', 'https://images.unsplash.com/photo-1587527901949-ab0341697c1e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
(21, 2, 'Kamar mandi', 'room', 'https://images.unsplash.com/photo-1586798271654-0471bb1b0517?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1370&q=80'),
(24, 8, 'Kamar Mandi', 'room', 'https://images.unsplash.com/photo-1467043153537-a4fba2cd39ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=719&q=80');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pesanan` int(11) NOT NULL,
  `nama_pemesan` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `no_hp` varchar(35) NOT NULL,
  `nama_tamu` varchar(50) NOT NULL,
  `id_kamar` int(11) NOT NULL,
  `tgl_cekin` date NOT NULL,
  `tgl_cekout` date NOT NULL,
  `jml_kamar` int(11) NOT NULL,
  `Harga` int(11) NOT NULL,
  `PayBay` varchar(244) NOT NULL,
  `PayEnd` int(1) NOT NULL,
  `Status_Kamar` varchar(255) NOT NULL,
  `RefPB` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pesanan`, `nama_pemesan`, `email`, `no_hp`, `nama_tamu`, `id_kamar`, `tgl_cekin`, `tgl_cekout`, `jml_kamar`, `Harga`, `PayBay`, `PayEnd`, `Status_Kamar`, `RefPB`) VALUES
(40, 'welcome', 'welcome@gmail.com', '0815858651890', 'welcome', 1, '2022-04-10', '2022-04-11', 1, 1000000, 'Transfer Bank', 1, '0', '041022Transfer Bank170828'),
(41, 'welcome 2', 'cobadulu2@gmail.com', '0815858651891', 'welcome 2', 1, '2022-04-10', '2022-04-11', 3, 3000000, 'Transfer Bank', 0, '0', '041022Transfer Bank170836'),
(42, 'welcome 22e', 'ginda123@gmail.com', '0815858651891', 'welcome 22e', 2, '2022-04-10', '2022-04-16', 1, 20000, 'E-wallet(Dana-ovo)', 0, '0', '041022E-wallet(Dana-ovo)171413'),
(43, 'welcome 22e', 'ginda123@gmail.com', '0815858651891', 'welcome 22e', 2, '2022-04-10', '2022-04-16', 1, 20000, 'E-wallet(Dana-ovo)', 0, '0', '041022E-wallet(Dana-ovo)171700'),
(44, 'welcome 22e', 'welcome@gmail.com', '0815858651891', 'welcome 22e', 1, '2022-03-18', '2022-04-19', 1, 1000000, 'Transfer Bank', 0, '0', '041022Transfer Bank171904'),
(45, 'welcome', 'welcome@gmail.com', '0815858651891', 'welcome', 1, '2022-04-11', '2022-04-12', 1, 1000000, 'Transfer Bank', 0, '0', '041022Transfer Bank172213'),
(46, 'welcome', 'ginda123@gmail.com', '0815858651891', 'welcome', 2, '2022-04-10', '2022-04-11', 1, 20000, 'Transfer Bank', 0, '0', '041022Transfer Bank174921'),
(55, 'welcome', 'ginda123@gmail.com', '0815858651891', 'welcome', 1, '2022-04-11', '2022-04-12', 1, 100000, 'Transfer Bank', 1, 'Cekin', '041122Transfer Bank102859'),
(56, 'welcome', 'ginda123@gmail.com', '0815858651891', 'welcome', 1, '2022-04-11', '2022-04-12', 1, 100000, 'Transfer Bank', 0, '0', '041122Transfer Bank103020'),
(57, 'ginda bustomi', '', '0815858651891', '', 7, '0000-00-00', '0000-00-00', 0, 0, 'Transfer Bank', 0, '0', '041122Transfer Bank103045'),
(58, 'GINDUL', 'gindul@gmail.com', '08158696574', 'Ginda Bustomi', 2, '2022-04-11', '2022-04-12', 1, 20000, 'Virtual Account', 0, '0', '041122Virtual Account160755'),
(59, 'GINDUL', 'ginda123@gmail.com', '08158696574', 'Ginda Bustomi', 1, '2022-04-11', '2022-04-12', 1, 500000, 'Virtual Account', 0, '0', '041122Virtual Account175158'),
(60, 'GINDUL', 'ginda123@gmail.com', '08158696574', 'Ginda Bustomi', 1, '2022-04-13', '2022-04-16', 2, 1000000, 'Transfer Bank', 0, '0', '041122Transfer Bank175238'),
(61, 'GINDUL', 'ginda123@gmail.com', '08158696574', 'ginda coba2', 1, '2022-04-12', '2022-04-12', 1, 500000, 'Transfer Bank', 0, '0', '041122Transfer Bank183507'),
(62, 'welcome 22e', 'ginda123@gmail.com', '081585586958', 'welcome 22e', 1, '2022-04-13', '2022-04-12', 1, 500000, 'Transfer Bank', 1, '0', '041122Transfer Bank185028'),
(63, 'welcome', 'ginda123@gmail.com', '0815858651890', 'welcome', 1, '2022-04-13', '2022-04-14', 1, 500000, 'E-wallet(Dana-ovo)', 0, '0', '041222E-wallet(Dana-ovo)000757'),
(64, 'welcome', 'ginda123@gmail.com', '0815858651891', 'welcome', 1, '2022-04-12', '2022-04-13', 1, 500000, 'Transfer Bank', 0, '0', '041222Transfer Bank001252'),
(76, 'Ginda Bustomi', 'lamohlouis12@gmail.com', '0895635198512', 'HIDAN', 1, '2022-04-19', '2022-04-20', 1, 500000, 'Transfer Bank', 1, 'Cekin', '041922Transfer Bank062027');

--
-- Trigger `pemesanan`
--
DELIMITER $$
CREATE TRIGGER `Update Stok` AFTER INSERT ON `pemesanan` FOR EACH ROW UPDATE
tipe_room SET Stok = Stok-New.jml_kamar
WHERE id = NEW.id_kamar
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `batal pesan` AFTER DELETE ON `pemesanan` FOR EACH ROW BEGIN
UPDATE tipe_room
SET Stok = Stok + OLD.jml_kamar
WHERE id = OLD.id_kamar;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe_room`
--

CREATE TABLE `tipe_room` (
  `id` int(11) NOT NULL,
  `Nama_room` varchar(244) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `Stok` int(11) NOT NULL,
  `onuse` int(11) NOT NULL,
  `onbook` int(11) NOT NULL,
  `img_room` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tipe_room`
--

INSERT INTO `tipe_room` (`id`, `Nama_room`, `harga`, `Stok`, `onuse`, `onbook`, `img_room`) VALUES
(1, 'Superior', 500000, -2, 0, 0, 'https://images.unsplash.com/photo-1631049307264-da0ec9d70304?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(2, 'Deluxe', 700000, 95, 0, 0, 'https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
(8, 'Superior Duoble', 1000000, 10, 0, 0, 'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_login` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `level` enum('admin','resepsionis','tamu') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_login`, `username`, `password`, `Nama`, `jenis_kelamin`, `tgl_lahir`, `no_hp`, `level`) VALUES
(7, 'admin', '12345678', 'admin', 'Laki-Laki', '0000-00-00', '081221823861', 'admin'),
(14, 'resepsionis', '12345678', 'resepsionis', 'laki-laki', '2012-04-03', '081518651585', 'resepsionis'),
(19, 'gin', '123', 'Ginda Bustomi', 'Laki-Laki', '2003-07-15', '0895635198512', 'tamu'),
(20, 'gin', '123', 'Muhamad Arief Nur Cahyo', 'Laki-Laki', '2022-04-19', '08945321958485', 'tamu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_log`
--
ALTER TABLE `data_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `f_hotel`
--
ALTER TABLE `f_hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `f_kamar`
--
ALTER TABLE `f_kamar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_kamar` (`id_kamar`);

--
-- Indeks untuk tabel `tipe_room`
--
ALTER TABLE `tipe_room`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_login`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_log`
--
ALTER TABLE `data_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670;

--
-- AUTO_INCREMENT untuk tabel `f_hotel`
--
ALTER TABLE `f_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `f_kamar`
--
ALTER TABLE `f_kamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT untuk tabel `tipe_room`
--
ALTER TABLE `tipe_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
