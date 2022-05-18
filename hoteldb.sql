-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2022 at 08:43 PM
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
-- Database: `hoteldb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_f_hotel` ()  BEGIN
	delete from f_hotel where id=id;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_f_kamar` ()  BEGIN
	DELETE FROM f_kamar WHERE id=id_tipekamar;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_pemesanan` ()  BEGIN
		DELETE FROM pemesanan WHERE id=id_pesanan;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_tipe_room` ()  BEGIN
	DELETE FROM tipe_room WHERE id=id;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_users` ()  BEGIN
	DELETE FROM users WHERE id=id_login;
    END$$

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

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_f_hotel` ()  BEGIN
	update f_hotel SET STATUS='Y'  WHERE id=id;
	 
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_f_kamar` ()  BEGIN
	UPDATE f_hotel SET STATUS='Y'  WHERE id=id_tipekamar;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_pemesanan` ()  BEGIN
	UPDATE f_hotel SET STATUS='Y'  WHERE id=id_pesanan;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_tipe_room` ()  BEGIN
	UPDATE f_hotel SET STATUS='Y'  WHERE id=id;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_users` ()  BEGIN
	uPDATE f_hotel SET STATUS='Y'  WHERE id=id_login;
    END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `data_log`
--

CREATE TABLE `data_log` (
  `id` int(11) NOT NULL,
  `data` longtext DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_log`
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
(669, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-04-19 04:47:11'),
(670, '{\"get\":[],\"post\":[]}', '2022-05-11 07:55:46'),
(671, '{\"get\":[],\"post\":[]}', '2022-05-11 08:00:02'),
(672, '{\"get\":[],\"post\":[]}', '2022-05-11 08:11:20'),
(673, '{\"get\":[],\"post\":[]}', '2022-05-11 08:13:03'),
(674, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-11 08:29:02'),
(675, '{\"get\":[],\"post\":[]}', '2022-05-11 08:44:33'),
(676, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-11 08:45:34'),
(677, '{\"get\":[],\"post\":[]}', '2022-05-11 08:52:53'),
(678, '{\"get\":[],\"post\":[]}', '2022-05-11 08:54:36'),
(679, '{\"get\":[],\"post\":[]}', '2022-05-11 08:55:00'),
(680, '{\"get\":[],\"post\":[]}', '2022-05-11 09:00:05'),
(681, '{\"get\":[],\"post\":[]}', '2022-05-11 09:03:29'),
(682, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-11 09:47:55'),
(683, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-11 09:50:20'),
(684, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-11 09:51:17'),
(685, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-11 09:51:24'),
(686, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-11 09:51:37'),
(687, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-11 09:51:46'),
(688, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-05-11 09:51:49'),
(689, '{\"get\":[],\"post\":[]}', '2022-05-11 10:04:45'),
(690, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-11 10:09:15'),
(691, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-11 10:09:20'),
(692, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-11 10:25:02'),
(693, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"23\",\"username\":\"adas\",\"password\":\"123\",\"Nama\":\"\",\"jenis_kelamin\":\"\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-11 10:46:17'),
(694, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"23\",\"username\":\"adas\",\"password\":\"123\",\"Nama\":\"\",\"jenis_kelamin\":\"\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-11 10:47:57'),
(695, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-11 10:47:59'),
(696, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"24\",\"username\":\"tae\",\"password\":\"123\",\"Nama\":\"tararafdsfdsfdsf\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"2022-05-01\",\"no_hp\":\"15894456\",\"level\":\"tamu\"}}', '2022-05-11 10:48:30'),
(697, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"24\",\"username\":\"tae\",\"password\":\"123\",\"Nama\":\"tararafdsfdsfdsf\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"2022-05-01\",\"no_hp\":\"15894456\",\"level\":\"tamu\"}}', '2022-05-11 10:48:58'),
(698, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-11 10:49:01'),
(699, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-11 10:51:16'),
(700, '{\"get\":[],\"post\":[]}', '2022-05-14 05:00:19'),
(701, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-14 05:00:45'),
(702, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-14 06:09:08'),
(703, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-14 06:09:25'),
(704, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-14 06:20:06'),
(705, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-14 06:30:52'),
(706, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-14 06:46:31'),
(707, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-14 06:46:32'),
(708, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-14 06:46:40'),
(709, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-14 06:49:45'),
(710, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-14 06:49:51'),
(711, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-14 06:50:12'),
(712, '{\"get\":[],\"post\":[]}', '2022-05-14 14:51:31'),
(713, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-14 15:20:45'),
(714, '{\"get\":[],\"post\":[]}', '2022-05-15 02:19:24'),
(715, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-15 02:20:26'),
(716, '{\"get\":[],\"post\":[]}', '2022-05-15 02:21:32'),
(717, '{\"get\":[],\"post\":[]}', '2022-05-15 02:21:32'),
(718, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-15 02:29:58'),
(719, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-15 02:31:43'),
(720, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-15 02:31:54'),
(721, '{\"comefrom\":\"http:\\/\\/localhost\\/hotelkiajadi\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-15 02:32:07'),
(722, '{\"comefrom\":\"http:\\/\\/localhost\\/hotelkiajadi\\/\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-15 02:32:26'),
(723, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-15 02:49:10'),
(724, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-15 02:49:42'),
(725, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/kontak\",\"get\":[],\"post\":[]}', '2022-05-15 02:49:50'),
(726, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-05-15 02:50:24'),
(727, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":[],\"post\":[]}', '2022-05-15 02:53:48'),
(728, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-15 02:53:53'),
(729, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"3\",\"username\":\"resepsionis\",\"password\":\"123\",\"nama\":\"Abu Jamal\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-04-05\",\"no_telp\":\"083873235897\",\"level\":\"resepsionis\"}}', '2022-05-15 02:57:26'),
(730, '{\"get\":[],\"post\":[]}', '2022-05-15 03:02:28'),
(731, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-15 03:03:05'),
(732, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-15 03:03:10'),
(733, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?link=id&val=1&t=F_Hotel&v=add\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-15 03:05:23'),
(734, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?link=id&val=1&t=F_Hotel&v=add\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-15 03:05:28'),
(735, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_Hotel&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-15 03:06:06'),
(736, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_Hotel&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-15 03:08:12'),
(737, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"3\",\"username\":\"resepsionis\",\"password\":\"123\",\"nama\":\"Abu Jamal\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-04-05\",\"no_telp\":\"083873235897\",\"level\":\"resepsionis\"}}', '2022-05-15 03:09:37'),
(738, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"3\",\"username\":\"resepsionis\",\"password\":\"123\",\"nama\":\"Abu Jamal\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-04-05\",\"no_telp\":\"083873235897\",\"level\":\"resepsionis\"}}', '2022-05-15 03:17:08'),
(739, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-15 03:19:59'),
(740, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=2\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-15 03:27:18'),
(741, '{\"get\":[],\"post\":[]}', '2022-05-16 00:51:47'),
(742, '{\"get\":[],\"post\":[]}', '2022-05-16 00:52:25'),
(743, '{\"get\":[],\"post\":[]}', '2022-05-16 00:52:25'),
(744, '{\"get\":[],\"post\":[]}', '2022-05-16 00:52:46'),
(745, '{\"get\":[],\"post\":[]}', '2022-05-16 00:54:00'),
(746, '{\"get\":[],\"post\":[]}', '2022-05-16 00:54:19'),
(747, '{\"get\":[],\"post\":[]}', '2022-05-16 00:54:58'),
(748, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-16 00:55:02'),
(749, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-16 00:55:22'),
(750, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-16 00:55:31'),
(751, '{\"get\":[],\"post\":[]}', '2022-05-16 00:59:36'),
(752, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-16 01:15:17'),
(753, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"25\",\"username\":\"\",\"password\":\"\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-16 01:19:23'),
(754, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-16 01:19:30'),
(755, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"25\",\"username\":\"\",\"password\":\"\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-16 01:20:02'),
(756, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-16 01:20:05'),
(757, '{\"get\":[],\"post\":[]}', '2022-05-16 01:20:19'),
(758, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"25\",\"username\":\"\",\"password\":\"\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-16 01:20:23'),
(759, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-16 01:20:34'),
(760, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"25\",\"username\":\"\",\"password\":\"\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-16 01:20:44'),
(761, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"25\",\"username\":\"\",\"password\":\"\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-16 01:20:45'),
(762, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-16 01:21:02'),
(763, '{\"get\":[],\"post\":[]}', '2022-05-16 01:21:05'),
(764, '{\"get\":[],\"post\":[]}', '2022-05-16 01:21:06'),
(765, '{\"get\":[],\"post\":[]}', '2022-05-16 01:21:22'),
(766, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"25\",\"username\":\"\",\"password\":\"\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-16 01:21:32'),
(767, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"25\",\"username\":\"\",\"password\":\"\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-16 01:21:49'),
(768, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-16 01:21:50'),
(769, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-16 01:21:52'),
(770, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"26\",\"username\":\"\",\"password\":\"\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-16 01:28:14'),
(771, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-16 01:28:16'),
(772, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-16 01:29:52'),
(773, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"26\",\"username\":\"\",\"password\":\"\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-16 01:30:23'),
(774, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-16 01:30:24'),
(775, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-16 01:30:25'),
(776, '{\"get\":[],\"post\":[]}', '2022-05-16 01:31:14'),
(777, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-16 01:34:55'),
(778, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"26\",\"username\":\"\",\"password\":\"\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-16 01:56:03'),
(779, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-05-16 02:03:50'),
(780, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 02:03:56'),
(781, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-05-16 02:13:48'),
(782, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-05-16 02:27:52'),
(783, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"26\",\"username\":\"\",\"password\":\"\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-16 02:27:55'),
(784, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 07:13:43'),
(785, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-05-16 07:17:06'),
(786, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-16 07:17:13'),
(787, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-16 07:17:16'),
(788, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-16 07:17:30'),
(789, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[]}', '2022-05-16 07:18:35'),
(790, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 07:18:43'),
(791, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-16 07:19:47'),
(792, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-05-16 07:26:39'),
(793, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-16 07:26:47'),
(794, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_Hotel&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-16 07:27:19'),
(795, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_Hotel&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-16 07:27:45'),
(796, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_Hotel&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-16 07:28:14'),
(797, '{\"get\":[],\"post\":[]}', '2022-05-16 07:42:20'),
(798, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 07:42:28'),
(799, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 08:03:26'),
(800, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_Hotel&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-16 08:04:21'),
(801, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 08:07:18'),
(802, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 08:07:19'),
(803, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 08:07:20'),
(804, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 08:07:20'),
(805, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 08:07:20'),
(806, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 08:07:21'),
(807, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-16 08:10:04'),
(808, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 08:10:12'),
(809, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-16 08:10:39'),
(810, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 08:11:28'),
(811, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 08:11:42'),
(812, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 08:11:59'),
(813, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 08:13:01'),
(814, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-16 08:13:57'),
(815, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-16 08:16:02'),
(816, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-16 08:30:06'),
(817, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 08:30:11'),
(818, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/kontak\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 08:31:51'),
(819, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 08:32:01'),
(820, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-05-16 08:32:06'),
(821, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-16 08:35:21'),
(822, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"27\",\"username\":\"asd\",\"password\":\"\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-16 10:14:23'),
(823, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-16 10:16:52'),
(824, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"28\",\"username\":\"0035755888\",\"password\":\"\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-16 10:20:30'),
(825, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-16 10:20:52'),
(826, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-16 10:22:58'),
(827, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-05-16 10:28:16'),
(828, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-16 10:28:30'),
(829, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-16 10:30:53'),
(830, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-05-16 10:33:39'),
(831, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-16 10:33:44'),
(832, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?link=id&val=18&t=F_kamar&v=add\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-16 10:37:05'),
(833, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_kamar&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-16 10:42:09'),
(834, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-05-16 10:42:11'),
(835, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?link=id&val=18&t=F_kamar&v=add\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-16 11:15:24'),
(836, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-16 11:15:57'),
(837, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 13:22:56'),
(838, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-05-16 13:31:53'),
(839, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-16 13:32:13'),
(840, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_kamar&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-16 13:52:20'),
(841, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 13:53:07'),
(842, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-16 14:09:10'),
(843, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?link=id&val=18&t=F_kamar&v=add\",\"get\":[],\"post\":[]}', '2022-05-16 14:10:24'),
(844, '{\"get\":[],\"post\":[]}', '2022-05-17 00:39:33'),
(845, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 00:46:38'),
(846, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 01:24:46'),
(847, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 01:26:37'),
(848, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 01:27:25');
INSERT INTO `data_log` (`id`, `data`, `time`) VALUES
(849, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 01:30:48'),
(850, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 01:36:07'),
(851, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 01:37:17'),
(852, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/kontak\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 01:37:45'),
(853, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/kontak\",\"get\":[],\"post\":[]}', '2022-05-17 01:49:36'),
(854, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-17 01:51:16'),
(855, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=add&t=F_kamar\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-17 01:51:21'),
(856, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_kamar&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-17 01:51:53'),
(857, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_kamar&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-17 01:51:56'),
(858, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-05-17 01:51:58'),
(859, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 01:51:59'),
(860, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-05-17 01:54:59'),
(861, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-05-17 01:55:04'),
(862, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-05-17 01:55:13'),
(863, '{\"get\":[],\"post\":[]}', '2022-05-17 01:55:37'),
(864, '{\"get\":[],\"post\":[]}', '2022-05-17 01:56:06'),
(865, '{\"get\":[],\"post\":[]}', '2022-05-17 01:57:05'),
(866, '{\"get\":[],\"post\":[]}', '2022-05-17 01:57:13'),
(867, '{\"get\":[],\"post\":[]}', '2022-05-17 01:57:17'),
(868, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"31\",\"username\":\"\",\"password\":\"123\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-17 01:59:48'),
(869, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-17 01:59:49'),
(870, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:02:31'),
(871, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-05-17 02:05:11'),
(872, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:08:13'),
(873, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:09:48'),
(874, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:09:49'),
(875, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:09:49'),
(876, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:09:49'),
(877, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:09:49'),
(878, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:09:49'),
(879, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:09:50'),
(880, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:09:50'),
(881, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:09:50'),
(882, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:09:50'),
(883, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:09:50'),
(884, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:09:51'),
(885, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:09:51'),
(886, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:09:51'),
(887, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:09:51'),
(888, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:11:00'),
(889, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-05-17 02:11:01'),
(890, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 02:13:00'),
(891, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 02:16:16'),
(892, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 02:17:05'),
(893, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 02:21:34'),
(894, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 02:22:08'),
(895, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 02:22:11'),
(896, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:22:19'),
(897, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/kontak\",\"get\":[],\"post\":[]}', '2022-05-17 02:23:00'),
(898, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 02:23:07'),
(899, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Register\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 02:24:19'),
(900, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:29:58'),
(901, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/kontak\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:42:57'),
(902, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:56:56'),
(903, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 02:57:53'),
(904, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-05-17 02:59:11'),
(905, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 02:59:32'),
(906, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 03:00:28'),
(907, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 03:03:11'),
(908, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 03:04:35'),
(909, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 03:06:13'),
(910, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 03:06:14'),
(911, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 03:06:14'),
(912, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 03:06:14'),
(913, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 03:06:14'),
(914, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamartamu?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-05-17 03:06:27'),
(915, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamartamu?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-05-17 03:06:33'),
(916, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamartamu?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-05-17 03:08:24'),
(917, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamartamu?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-05-17 03:08:43'),
(918, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamartamu?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-05-17 03:08:59'),
(919, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamartamu?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-05-17 03:08:59'),
(920, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamartamu?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-05-17 03:11:36'),
(921, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamartamu?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-05-17 03:11:38'),
(922, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 03:11:39'),
(923, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipetamu?id=1\",\"get\":[],\"post\":[]}', '2022-05-17 03:12:24'),
(924, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamartamu?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 03:12:54'),
(925, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login?id=1\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 03:38:05'),
(926, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/kontak\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 03:38:51'),
(927, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/kontak\",\"get\":[],\"post\":[]}', '2022-05-17 03:38:56'),
(928, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-17 03:39:07'),
(929, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-17 03:39:52'),
(930, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-17 03:40:26'),
(931, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-17 03:40:34'),
(932, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 03:41:28'),
(933, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login?id=1\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 03:46:18'),
(934, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipetamu?id=1\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 03:59:02'),
(935, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamartamu?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 03:59:13'),
(936, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login?id=1\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 03:59:23'),
(937, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 04:00:03'),
(938, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 04:00:58'),
(939, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 04:01:25'),
(940, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 04:01:38'),
(941, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-05-17 04:01:41'),
(942, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"32\",\"username\":\"Hendru\",\"password\":\"12345678\",\"Nama\":\"Hendru dru dru\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-05-16\",\"no_hp\":\"087821165185\",\"level\":\"tamu\"}}', '2022-05-17 04:02:46'),
(943, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":[],\"post\":[]}', '2022-05-17 04:06:00'),
(944, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 04:08:13'),
(945, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamartamu?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 04:08:18'),
(946, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamartamu?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 04:10:56'),
(947, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamartamu?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 04:13:11'),
(948, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamartamu?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 04:13:17'),
(949, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-17 04:13:29'),
(950, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-17 04:13:41'),
(951, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-17 04:13:50'),
(952, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 04:15:24'),
(953, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 04:20:00'),
(954, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-05-17 04:20:13'),
(955, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 04:20:20'),
(956, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-05-17 04:20:43'),
(957, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 04:23:47'),
(958, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-17 04:23:49'),
(959, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-17 04:24:04'),
(960, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-17 04:24:22'),
(961, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-05-17 04:24:44'),
(962, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamartamu?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 04:32:49'),
(963, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 04:33:13'),
(964, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"33\",\"username\":\"ginda\",\"password\":\"12345678\",\"Nama\":\"ginda bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-02-03\",\"no_hp\":\"0815155855252\",\"level\":\"tamu\"}}', '2022-05-17 04:37:42'),
(965, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"33\",\"username\":\"ginda\",\"password\":\"12345678\",\"Nama\":\"ginda bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-02-03\",\"no_hp\":\"0815155855252\",\"level\":\"tamu\"}}', '2022-05-17 04:37:55'),
(966, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":[],\"post\":[]}', '2022-05-17 04:39:56'),
(967, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"34\",\"username\":\"alfi\",\"password\":\"123\",\"Nama\":\"alfito\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-05-17\",\"no_hp\":\"0815865468585\",\"level\":\"tamu\"}}', '2022-05-17 04:40:24'),
(968, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-05-17 04:43:16'),
(969, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-05-17 04:45:36'),
(970, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":[],\"post\":[]}', '2022-05-17 04:45:39'),
(971, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-17 04:45:48'),
(972, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?link=id&val=18&t=F_kamar&v=add\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-17 04:48:06'),
(973, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_Hotel&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-17 04:49:35'),
(974, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-17 04:52:03'),
(975, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_Hotel&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-17 06:17:41'),
(976, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_Hotel&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-17 06:58:36'),
(977, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_Hotel&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-17 06:59:08'),
(978, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_Hotel&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-17 06:59:40'),
(979, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_Hotel&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-17 06:59:43'),
(980, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 07:08:59'),
(981, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-05-17 07:20:52'),
(982, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data?ref=051622Transfer+Bank152519\",\"get\":[],\"post\":[]}', '2022-05-17 07:24:08'),
(983, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-17 07:24:48'),
(984, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":[],\"post\":[]}', '2022-05-17 07:26:42'),
(985, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-17 07:26:48'),
(986, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-17 07:41:51'),
(987, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-17 07:41:51'),
(988, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 08:59:31'),
(989, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-17 08:59:56'),
(990, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-17 09:01:40'),
(991, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-17 09:01:48'),
(992, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"40\",\"username\":\"alfito\",\"password\":\"123\",\"Nama\":\"maul\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-05-16\",\"no_hp\":\"08158596854\",\"level\":\"tamu\"}}', '2022-05-17 09:04:44'),
(993, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-05-17 09:14:12'),
(994, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"41\",\"username\":\"andika\",\"password\":\"202cb962ac59075b964b07152d234b70\",\"Nama\":\"ananda12\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-05-18\",\"no_hp\":\"08742318761874\",\"level\":\"tamu\"}}', '2022-05-18 00:06:42'),
(995, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"41\",\"username\":\"andika\",\"password\":\"202cb962ac59075b964b07152d234b70\",\"Nama\":\"ananda12\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-05-18\",\"no_hp\":\"08742318761874\",\"level\":\"tamu\"}}', '2022-05-18 00:08:20'),
(996, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-18 00:08:22'),
(997, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"42\",\"username\":\"\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-18 00:34:35'),
(998, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-18 00:36:22'),
(999, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"6\",\"username\":\"sunitsug\",\"password\":\"12345678\",\"Nama\":\"Agustinus Pardamean lumban Tobing\",\"Jenis_Kelamin\":\"Laki-Laki\",\"tgllahir\":\"2022-01-30\",\"nowa\":\"081221723872\",\"level\":\"resepsionis\"}}', '2022-05-18 00:44:13'),
(1000, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"6\",\"username\":\"sunitsug\",\"password\":\"12345678\",\"Nama\":\"Agustinus Pardamean lumban Tobing\",\"Jenis_Kelamin\":\"Laki-Laki\",\"tgllahir\":\"2022-01-30\",\"nowa\":\"081221723872\",\"level\":\"resepsionis\"}}', '2022-05-18 00:44:16'),
(1001, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"6\",\"username\":\"sunitsug\",\"password\":\"12345678\",\"Nama\":\"Agustinus Pardamean lumban Tobing\",\"Jenis_Kelamin\":\"Laki-Laki\",\"tgllahir\":\"2022-01-30\",\"nowa\":\"081221723872\",\"level\":\"resepsionis\"}}', '2022-05-18 00:44:29'),
(1002, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"6\",\"username\":\"sunitsug\",\"password\":\"12345678\",\"Nama\":\"Agustinus Pardamean lumban Tobing\",\"Jenis_Kelamin\":\"Laki-Laki\",\"tgllahir\":\"2022-01-30\",\"nowa\":\"081221723872\",\"level\":\"resepsionis\"}}', '2022-05-18 00:44:42'),
(1003, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-18 00:44:44'),
(1004, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"42\",\"username\":\"\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-18 00:47:41'),
(1005, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"42\",\"username\":\"\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-18 00:47:41'),
(1006, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"42\",\"username\":\"\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-18 00:47:41'),
(1007, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"42\",\"username\":\"\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-18 00:47:41'),
(1008, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"42\",\"username\":\"\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-18 00:48:04'),
(1009, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"42\",\"username\":\"\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-18 00:48:04'),
(1010, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"42\",\"username\":\"\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-18 00:48:05'),
(1011, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"42\",\"username\":\"\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-18 00:48:06'),
(1012, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-18 00:48:12'),
(1013, '{\"get\":[],\"post\":[]}', '2022-05-18 00:48:17'),
(1014, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-18 00:48:24'),
(1015, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":[],\"post\":[]}', '2022-05-18 00:49:19'),
(1016, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"43\",\"username\":\"julia\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"julia ningsih\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-18 00:51:35'),
(1017, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-18 00:51:38'),
(1018, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"43\",\"username\":\"julia\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"julia ningsih\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"resepsionis\"}}', '2022-05-18 00:52:21'),
(1019, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"43\",\"username\":\"julia\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"julia ningsih\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"resepsionis\"}}', '2022-05-18 00:52:55'),
(1020, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"43\",\"username\":\"julia\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"julia ningsih\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"resepsionis\"}}', '2022-05-18 00:52:59'),
(1021, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"43\",\"username\":\"julia\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"julia ningsih\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"resepsionis\"}}', '2022-05-18 00:53:29'),
(1022, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"43\",\"username\":\"julia\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"julia ningsih\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"resepsionis\"}}', '2022-05-18 00:53:41'),
(1023, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"43\",\"username\":\"julia\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"julia ningsih\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"resepsionis\"}}', '2022-05-18 00:54:25'),
(1024, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-05-18 00:55:42'),
(1025, '{\"get\":[],\"post\":[]}', '2022-05-18 00:56:01'),
(1026, '{\"get\":[],\"post\":[]}', '2022-05-18 00:56:04'),
(1027, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-18 00:56:05'),
(1028, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-05-18 00:56:48'),
(1029, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-05-18 00:59:16'),
(1030, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-05-18 00:59:16'),
(1031, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-05-18 00:59:16'),
(1032, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-05-18 00:59:20'),
(1033, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-05-18 00:59:22'),
(1034, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":[],\"post\":[]}', '2022-05-18 00:59:36'),
(1035, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-18 00:59:47'),
(1036, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"7\",\"username\":\"admin\",\"password\":\"12345678\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"081221823861\",\"level\":\"admin\"}}', '2022-05-18 00:59:53'),
(1037, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-05-18 00:59:57'),
(1038, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-18 01:00:02'),
(1039, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"19\",\"username\":\"gin\",\"password\":\"123\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-07-15\",\"no_hp\":\"0895635198512\",\"level\":\"tamu\"}}', '2022-05-18 01:00:22'),
(1040, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-05-18 01:00:25'),
(1041, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-05-18 01:00:48');
INSERT INTO `data_log` (`id`, `data`, `time`) VALUES
(1042, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-05-18 01:06:41'),
(1043, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?req=Filter%20Pencarian%20Data&t=pemesanan&v=filter\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"14\",\"username\":\"resepsionis\",\"password\":\"12345678\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"laki-laki\",\"tgl_lahir\":\"2012-04-03\",\"no_hp\":\"081518651585\",\"level\":\"resepsionis\"}}', '2022-05-18 01:07:02'),
(1044, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-05-18 01:07:03'),
(1045, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"44\",\"username\":\"a\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"a\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-05-18\",\"no_hp\":\"08742318761874\",\"level\":\"resepsionis\"}}', '2022-05-18 02:04:56'),
(1046, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-05-18 02:04:57'),
(1047, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"45\",\"username\":\"maya\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"mayang\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"2022-05-16\",\"no_hp\":\"08742318761874\",\"level\":\"tamu\"}}', '2022-05-18 02:08:15'),
(1048, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"45\",\"username\":\"maya\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"mayang\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"2022-05-16\",\"no_hp\":\"08742318761874\",\"level\":\"tamu\"}}', '2022-05-18 02:10:38'),
(1049, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=1\",\"get\":[],\"post\":[]}', '2022-05-18 02:12:30'),
(1050, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"45\",\"username\":\"maya\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"mayang\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"2022-05-16\",\"no_hp\":\"08742318761874\",\"level\":\"admin\"}}', '2022-05-18 02:12:54'),
(1051, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=add&t=F_Hotel\",\"get\":[],\"post\":[]}', '2022-05-18 02:16:06'),
(1052, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"45\",\"username\":\"maya\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"mayang\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"2022-05-16\",\"no_hp\":\"08742318761874\",\"level\":\"resepsionis\"}}', '2022-05-18 02:58:33'),
(1053, '{\"get\":[],\"post\":[]}', '2022-05-18 09:20:56'),
(1054, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"46\",\"username\":\"Sabila\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"sabila\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"2022-05-18\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-18 09:30:48'),
(1055, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":[],\"post\":[]}', '2022-05-18 09:31:32'),
(1056, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"46\",\"username\":\"Sabila\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"sabila\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"2022-05-18\",\"no_hp\":\"\",\"level\":\"resepsionis\"}}', '2022-05-18 09:46:26'),
(1057, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-18 09:46:30'),
(1058, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data\",\"get\":[],\"post\":[]}', '2022-05-18 09:47:13'),
(1059, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"45\",\"username\":\"maya\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"mayang\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"2022-05-16\",\"no_hp\":\"08742318761874\",\"level\":\"tamu\"}}', '2022-05-18 09:47:20'),
(1060, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"45\",\"username\":\"maya\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"mayang\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"2022-05-16\",\"no_hp\":\"08742318761874\",\"level\":\"tamu\"}}', '2022-05-18 09:54:59'),
(1061, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data?ref=051822Transfer+Bank113120\",\"get\":[],\"post\":[]}', '2022-05-18 10:03:35'),
(1062, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"42\",\"username\":\"\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-18 10:04:47'),
(1063, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/kontak\",\"get\":[],\"post\":[]}', '2022-05-18 10:08:12'),
(1064, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"45\",\"username\":\"maya\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"mayang\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"2022-05-16\",\"no_hp\":\"08742318761874\",\"level\":\"tamu\"}}', '2022-05-18 10:08:20'),
(1065, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-18 10:08:22'),
(1066, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"46\",\"username\":\"Sabila\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"sabila\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"2022-05-18\",\"no_hp\":\"\",\"level\":\"resepsionis\"}}', '2022-05-18 10:16:47'),
(1067, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":[],\"post\":[]}', '2022-05-18 10:16:55'),
(1068, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data?ref=051822Transfer+Bank120934\",\"get\":[],\"post\":[]}', '2022-05-18 10:17:00'),
(1069, '{\"get\":[],\"post\":[]}', '2022-05-18 10:17:06'),
(1070, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"42\",\"username\":\"\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-18 10:26:03'),
(1071, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"45\",\"username\":\"maya\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"mayang\",\"jenis_kelamin\":\"Perempuan\",\"tgl_lahir\":\"2022-05-16\",\"no_hp\":\"08742318761874\",\"level\":\"tamu\"}}', '2022-05-18 10:27:10'),
(1072, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-18 10:27:12'),
(1073, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data?ref=051822Transfer+Bank113120\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"44\",\"username\":\"a\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"a\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-05-18\",\"no_hp\":\"08742318761874\",\"level\":\"resepsionis\"}}', '2022-05-18 10:45:15'),
(1074, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":[],\"post\":[]}', '2022-05-18 10:48:14'),
(1075, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"47\",\"username\":\"asa\",\"password\":\"457391c9c82bfdcbb4947278c0401e41\",\"Nama\":\"asa\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-05-18\",\"no_hp\":\"08158183945\",\"level\":\"tamu\"}}', '2022-05-18 10:48:42'),
(1076, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data?ref=051822Transfer+Bank134631\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"44\",\"username\":\"a\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"a\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-05-18\",\"no_hp\":\"08742318761874\",\"level\":\"resepsionis\"}}', '2022-05-18 11:46:50'),
(1077, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/cari_data?ref=051822Transfer+Bank134631\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"44\",\"username\":\"a\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"a\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2022-05-18\",\"no_hp\":\"08742318761874\",\"level\":\"resepsionis\"}}', '2022-05-18 11:46:52'),
(1078, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":[],\"post\":[]}', '2022-05-18 11:46:54'),
(1079, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/resepsionis\\/cari_data?req=%20Cari%20Data\",\"get\":[],\"post\":[]}', '2022-05-18 11:46:59'),
(1080, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":[],\"post\":[]}', '2022-05-18 11:47:07'),
(1081, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"48\",\"username\":\"\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-18 11:47:43'),
(1082, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"48\",\"username\":\"\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"Nama\":\"\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"0000-00-00\",\"no_hp\":\"\",\"level\":\"tamu\"}}', '2022-05-18 11:48:38'),
(1083, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-18 11:48:39'),
(1084, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamartamu?req=Tipe%20Kamar%20Pilihanmu\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[]}', '2022-05-18 11:51:29'),
(1085, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"50\",\"username\":\"resepsionis\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"resepsionis\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183974\",\"level\":\"tamu\"}}', '2022-05-18 11:54:57'),
(1086, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-05-18 11:55:20'),
(1087, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref?req=Book\",\"get\":[],\"post\":[]}', '2022-05-18 15:20:17'),
(1088, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"51\",\"username\":\"admin\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183945\",\"level\":\"tamu\"}}', '2022-05-18 15:22:39'),
(1089, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"51\",\"username\":\"admin\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183945\",\"level\":\"tamu\"}}', '2022-05-18 15:22:45'),
(1090, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-18 15:22:46'),
(1091, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/Login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"51\",\"username\":\"admin\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183945\",\"level\":\"admin\"}}', '2022-05-18 15:23:05'),
(1092, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"51\",\"username\":\"admin\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183945\",\"level\":\"admin\"}}', '2022-05-18 15:23:06'),
(1093, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_kamar&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"51\",\"username\":\"admin\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183945\",\"level\":\"admin\"}}', '2022-05-18 15:43:59'),
(1094, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"51\",\"username\":\"admin\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183945\",\"level\":\"admin\"}}', '2022-05-18 16:03:13'),
(1095, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=Tipe_room&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"51\",\"username\":\"admin\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183945\",\"level\":\"admin\"}}', '2022-05-18 16:24:57'),
(1096, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"51\",\"username\":\"admin\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183945\",\"level\":\"admin\"}}', '2022-05-18 17:00:32'),
(1097, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/admin\\/add?v=allcounter&t=F_kamar&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"51\",\"username\":\"admin\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183945\",\"level\":\"admin\"}}', '2022-05-18 17:05:25'),
(1098, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/add?v=allcounter&t=users&req=Data%20Traking\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"51\",\"username\":\"admin\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"admin\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183945\",\"level\":\"admin\"}}', '2022-05-18 17:06:00'),
(1099, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/?req=Selamat%20Datang%20Di%20Hotel%20Kami\",\"get\":[],\"post\":[]}', '2022-05-18 17:06:30'),
(1100, '{\"get\":[],\"post\":[]}', '2022-05-18 17:36:49'),
(1101, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[],\"user\":{\"id_login\":\"52\",\"username\":\"ginda\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183947\",\"level\":\"tamu\"}}', '2022-05-18 17:37:59'),
(1102, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/kontak\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"52\",\"username\":\"ginda\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183947\",\"level\":\"tamu\"}}', '2022-05-18 17:38:45'),
(1103, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"52\",\"username\":\"ginda\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183947\",\"level\":\"tamu\"}}', '2022-05-18 18:02:24'),
(1104, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"52\",\"username\":\"ginda\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183947\",\"level\":\"tamu\"}}', '2022-05-18 18:03:17'),
(1105, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"52\",\"username\":\"ginda\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183947\",\"level\":\"tamu\"}}', '2022-05-18 18:07:13'),
(1106, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"52\",\"username\":\"ginda\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183947\",\"level\":\"tamu\"}}', '2022-05-18 18:07:15'),
(1107, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"52\",\"username\":\"ginda\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183947\",\"level\":\"tamu\"}}', '2022-05-18 18:07:22'),
(1108, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":{\"req\":\"Selamat Datang Di Hotel Kami\"},\"post\":[],\"user\":{\"id_login\":\"52\",\"username\":\"ginda\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183947\",\"level\":\"tamu\"}}', '2022-05-18 18:07:26'),
(1109, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"52\",\"username\":\"ginda\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183947\",\"level\":\"tamu\"}}', '2022-05-18 18:07:51'),
(1110, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"52\",\"username\":\"ginda\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183947\",\"level\":\"tamu\"}}', '2022-05-18 18:08:50'),
(1111, '{\"get\":[],\"post\":[]}', '2022-05-18 18:24:30'),
(1112, '{\"get\":[],\"post\":[],\"user\":{\"id_login\":\"52\",\"username\":\"ginda\",\"password\":\"25d55ad283aa400af464c76d713c07ad\",\"Nama\":\"Ginda Bustomi\",\"jenis_kelamin\":\"Laki-Laki\",\"tgl_lahir\":\"2003-10-15\",\"no_hp\":\"08158183947\",\"level\":\"tamu\"}}', '2022-05-18 18:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `f_hotel`
--

CREATE TABLE `f_hotel` (
  `id` int(11) NOT NULL,
  `nama_fasilitas` text NOT NULL,
  `img` text NOT NULL,
  `deks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `f_hotel`
--

INSERT INTO `f_hotel` (`id`, `nama_fasilitas`, `img`, `deks`) VALUES
(1, 'Kolam Renang', 'https://images.unsplash.com/photo-1623718649591-311775a30c43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80', 'Kolam renang luar ruangan ini dirancang untuk tamu dewasa dan dikelilingi taman tropis yang indah'),
(2, 'Cafe', 'https://media.istockphoto.com/photos/3d-rendering-nice-restaurant-with-elegant-decoration-picture-id588377956?b=1&k=20&m=588377956&s=170667a&w=0&h=efrsngiUVBrpOOJfj6Igpw8kVteT-twX5Q0PLHlnB1w=', 'Menyajikan hidangan prasmanan dan ala carte lengkap dengan menu Indonesia dan Internasional'),
(4, 'Spa', 'https://media.istockphoto.com/photos/man-and-woman-lying-down-on-massage-beds-at-asian-wellness-center-picture-id875640820?b=1&k=20&m=875640820&s=170667a&w=0&h=M85Lk4k2Puy_QnsGuGtkBycjlfINonPzHcYq3sB2z9A=', 'Berbagai perawatan dirancang khusus untuk memenuhi keinginan akan kenyamanan diseluruh tubuh, pijat, manicure dan pedicure'),
(5, 'Taman', 'https://images.unsplash.com/photo-1618582240632-1937f4c91d7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80', 'Taman hotel yang bisa anda nikmati, terdapat tanaman-tanaman hias yang bisa menyegearkan mata'),
(6, 'Pelayanan prima', 'https://d37j6posq2fmgz.cloudfront.net/resources/3308,5,1,6,3,0/-4601-/20160418153941/receptionist.jpeg', 'HOTEL.HEBAT memberikan pelayanan yang prima untuk memaksimalkan kepuasan para tamu. Para tamu juga bisa menikmati fasilitas hotel lainnya'),
(7, ' Servis antar dan valet parking', 'https://images.unsplash.com/photo-1637245057252-ba70fa548d33?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80', 'Bagi kamu yang nggak mau repot membawa barang serta memarkir kendaraan, HOTEL.HEBAT membantu kamu memarkir kendaraan serta membawa barang');

-- --------------------------------------------------------

--
-- Table structure for table `f_kamar`
--

CREATE TABLE `f_kamar` (
  `id` int(11) NOT NULL,
  `id_tipekamar` int(3) NOT NULL,
  `nama_fasilitas` text DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `f_kamar`
--

INSERT INTO `f_kamar` (`id`, `id_tipekamar`, `nama_fasilitas`, `kategori`, `img`) VALUES
(18, 1, 'Tv LED 32 inc', 'Eletronik', 'https://images.unsplash.com/photo-1567690187548-f07b1d7bf5a9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80'),
(19, 2, 'Tv LED 42 inc', 'Elektronik', 'https://images.unsplash.com/photo-1558888401-3cc1de77652d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80'),
(20, 1, 'Kamar mandi', 'room', 'https://images.unsplash.com/photo-1587527901949-ab0341697c1e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
(21, 2, 'Kamar mandi', 'room', 'https://images.unsplash.com/photo-1586798271654-0471bb1b0517?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1370&q=80'),
(24, 8, 'Kamar Mandi', 'room', 'https://images.unsplash.com/photo-1467043153537-a4fba2cd39ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=719&q=80'),
(41, 1, 'Lemari Pakaian', 'Furnitur', 'https://images.unsplash.com/photo-1558997519-83ea9252edf8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
(42, 2, 'Lemari Pakaian', 'Furnitur', 'https://images.unsplash.com/photo-1595428774223-ef52624120d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
(43, 1, 'AC', 'Elektronik', 'https://media-cdn.tripadvisor.com/media/photo-s/0d/22/4e/86/ac-split.jpg'),
(44, 2, 'AC', 'Elektronik', 'https://media-cdn.tripadvisor.com/media/photo-s/0d/22/4e/86/ac-split.jpg'),
(45, 1, 'WIFI', 'Elektronik', 'https://asset.kompas.com/crops/n_w1yNKkdW1637pxuBdJMGHm9tk=/0x185:1000x851/750x500/data/photo/2018/06/21/31472002711.jpg'),
(46, 2, 'WIFI', 'Elektronik', 'https://asset.kompas.com/crops/n_w1yNKkdW1637pxuBdJMGHm9tk=/0x185:1000x851/750x500/data/photo/2018/06/21/31472002711.jpg'),
(47, 1, 'Kasur 180 x 200', 'Furnitur', 'https://images.unsplash.com/photo-1631049307264-da0ec9d70304?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(48, 2, 'Kasur 200 x 200', 'Furnitur', 'https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
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
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pesanan`, `nama_pemesan`, `email`, `no_hp`, `nama_tamu`, `id_kamar`, `tgl_cekin`, `tgl_cekout`, `jml_kamar`, `Harga`, `PayBay`, `PayEnd`, `Status_Kamar`, `RefPB`) VALUES
(85, 'Ginda Bustomi', 'ginda1@gmail.com', '0895635198512', 'ginda', 1, '2022-05-16', '2022-05-17', 5, 5000000, 'Transfer Bank', 1, 'Cekin', '051622Transfer Bank152519'),
(86, 'Ginda Bustomi', 'ginda@gmail.com', '0895635198512', 'ginda bustomi', 1, '2022-05-17', '2022-05-31', 10, 75000000, 'Transfer Bank', 1, 'Cekin', '051722Transfer Bank040324'),
(87, 'Ginda Bustomi', 'Anitasa@gmail.com', '0815858369516', 'Anita', 1, '2022-05-17', '2022-05-18', 2, 2000000, 'Transfer Bank', 0, '0', '051722Transfer Bank053840'),
(88, 'Ginda Bustomi', 'JajangSumargo@gmail.com', '0895635198512', 'Jajang Sumargo', 1, '2022-05-17', '2022-05-24', 1, 4000000, 'Transfer Bank', 0, '0', '051722Transfer Bank060052'),
(89, 'Hendru dru dru', 'hendru@gmail.com', '0878211651855', 'Hen', 2, '2022-05-17', '2022-05-18', 1, 1400000, 'Bayar ditempat', 1, 'Cekin', '051722Bayar ditempat060333'),
(90, 'ginda bustomi', 'ginda1@gmail.com', '0815155855252', 'Ginda', 1, '2022-05-17', '2022-05-18', 1, 1000000, 'Transfer Bank', 0, '0', '051722Transfer Bank063856'),
(91, 'alfito', 'alfi@gmail.com', '0815865468585', 'alfito', 1, '2022-05-17', '2022-05-18', 1, 1000000, 'Transfer Bank', 1, 'Cekin', '051722Transfer Bank064108'),
(92, 'maul', 'maul@gmail.com', '081585968565', 'maul', 1, '2022-05-17', '2022-05-17', 3, 3000000, 'Transfer Bank', 1, 'Cekin', '051722Transfer Bank110640'),
(93, 'maul', 'ginda1@gmail.com', '08158596854', 'ginda bustomi', 1, '2022-05-25', '2022-05-26', 1, 1000000, 'Bayar ditempat', 0, '0', '051722Bayar ditempat111117'),
(94, 'mayang', 'ginda1@gmail.com', '08742318761874', 'ginda', 1, '2022-05-18', '2022-05-19', 1, 1000000, 'Transfer Bank', 0, '0', '051822Transfer Bank040956'),
(95, 'sabila', 'ginda1@gmail.com', '087423187618741', 'ginda', 1, '2022-05-19', '2022-05-19', 1, 1000000, 'Transfer Bank', 1, 'Cekin', '051822Transfer Bank113120'),
(96, 'mayang', 'ginda1@gmail.com', '08742318761874', 'ginda1', 2, '2022-05-19', '2022-05-19', 0, 0, 'Transfer Bank', 1, 'Cekin', '051822Transfer Bank114811'),
(97, '', 'ginda1@gmail.com', '087423187618741', 'ginda', 2, '2022-05-17', '2022-05-18', 2, 2800000, 'Bayar ditempat', 1, 'Cekout', '051822Bayar ditempat120519'),
(98, 'sabila', 'ginda1@gmail.com', '08158183945', 'ginda1', 2, '2022-05-19', '2022-05-19', 12344, 2147483647, 'Transfer Bank', 1, 'Cekin', '051822Transfer Bank120934'),
(99, '', 'ginda1@gmail.com', '087423187618741', 'dsffsdfdsfsd', 1, '2022-05-18', '2022-05-18', 1, 500000, 'Transfer Bank', 1, 'Cekout', '051822Transfer Bank122628'),
(100, 'asa', '', '08158183945', '', 1, '0000-00-00', '0000-00-00', 0, 0, 'Transfer Bank', 1, 'Cekin', '051822Transfer Bank124940'),
(101, 'asa', 'ginda1@gmail.com', '08158183945', 'ginda1', 1, '2022-05-16', '2022-05-18', 1, 500000, 'Transfer Bank', 1, 'Cekout', '051822Transfer Bank132003'),
(102, 'asa', 'ginda1@gmail.com', '08158183945', 'assdaasdasd', 1, '2022-05-17', '2022-05-18', 1, 1000000, 'Transfer Bank', 1, 'Cekout', '051822Transfer Bank134057'),
(103, 'asa', 'ginda1@gmail.com', '08158183945', 'ginda1', 1, '2022-05-18', '2022-05-19', 1, 0, 'Transfer Bank', 0, '0', '051822Transfer Bank134350'),
(104, 'asa', 'ginda1@gmail.com', '08158183945', 'ginda', 1, '2022-05-18', '2022-05-18', 1, 1500000, 'Transfer Bank', 1, 'Cekout', '051822Transfer Bank134631'),
(105, 'Ginda Bustomi', 'ginda@gmail.com', '08158183947', 'ginda', 1, '2022-05-19', '2022-05-20', 1, 500000, 'Transfer Bank', 1, '0', '051822Transfer Bank200931'),
(106, 'Ginda Bustomi', 'ginda1178@gmail.com', '0815183974', 'ginda', 1, '2022-05-19', '2022-05-20', 1, 500000, 'Transfer', 0, '0', '051822Transfer201057'),
(107, 'Ginda Bustomi', 'ginda1178@gmail.com', '0815183974', 'ginda', 1, '2022-05-19', '2022-05-20', 1, 500000, 'Transfer', 0, '0', '051822Transfer201252'),
(114, 'Ginda Bustomi', 'ginda@gmail.com', '08158183947', 'ginda', 1, '2022-05-19', '2022-05-20', 3, 1500000, 'Transfer', 0, '0', '051822Transfer202705'),
(115, 'Ginda Bustomi', 'ginda1@gmail.com', '0815183974', 'ginda1', 1, '2022-05-19', '2022-05-20', 1, 500000, 'Bayar ditempat', 0, '0', '051822Bayar ditempat202952');

--
-- Triggers `pemesanan`
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
-- Table structure for table `tipe_room`
--

CREATE TABLE `tipe_room` (
  `id` int(11) NOT NULL,
  `Nama_room` varchar(244) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `Stok` int(11) NOT NULL,
  `img_room` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipe_room`
--

INSERT INTO `tipe_room` (`id`, `Nama_room`, `harga`, `Stok`, `img_room`) VALUES
(1, 'Superior', 500000, 53, 'https://images.unsplash.com/photo-1631049307264-da0ec9d70304?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(2, 'Deluxe', 700000, 60, 'https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_login`, `username`, `password`, `Nama`, `jenis_kelamin`, `tgl_lahir`, `no_hp`, `level`) VALUES
(50, 'resepsionis', '25d55ad283aa400af464c76d713c07ad', 'resepsionis', 'Laki-Laki', '2003-10-15', '08158183974', 'resepsionis'),
(51, 'admin', '25d55ad283aa400af464c76d713c07ad', 'admin', 'Laki-Laki', '2003-10-15', '08158183945', 'admin'),
(52, 'ginda', '25d55ad283aa400af464c76d713c07ad', 'Ginda Bustomi', 'Laki-Laki', '2003-10-15', '08158183947', 'tamu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_log`
--
ALTER TABLE `data_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_hotel`
--
ALTER TABLE `f_hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_kamar`
--
ALTER TABLE `f_kamar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_kamar` (`id_kamar`);

--
-- Indexes for table `tipe_room`
--
ALTER TABLE `tipe_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_log`
--
ALTER TABLE `data_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1113;

--
-- AUTO_INCREMENT for table `f_hotel`
--
ALTER TABLE `f_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `f_kamar`
--
ALTER TABLE `f_kamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `tipe_room`
--
ALTER TABLE `tipe_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
