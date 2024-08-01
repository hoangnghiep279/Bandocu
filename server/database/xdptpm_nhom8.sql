-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2024 at 07:00 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xdptpm_nhom8`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` char(32) NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `type`, `status`) VALUES
('b59c60df-26fd-11ef-90b9-fc34974b', 'Điện tử', 0),
('b59c7e6c-26fd-11ef-90b9-fc34974b', 'Đồ gia dụng', 0),
('b59cace6-26fd-11ef-90b9-fc34974b', 'Đồ điện lạnh', 0),
('b59cad37-26fd-11ef-90b9-fc34974b', 'Quần áo', 0),
('b59cad5d-26fd-11ef-90b9-fc34974b', 'Khác', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` char(32) NOT NULL,
  `user_id` char(32) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` char(32) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `img`, `price`, `quantity`, `category_id`, `is_delete`, `status`, `created_at`, `update_at`) VALUES
('196c06bd-2806-4dcc-9e54-cfb2b83d', 'd1417c48-2732-11ef-93d3-fc34974b', 'áo cộc', './assets/img/product/slideshow2.jpg', 1213200, 1, 'b59c60df-26fd-11ef-90b9-fc34974b', 0, 1, '2024-07-06 11:32:39', '2024-07-06 11:32:39'),
('3288e912-2935-11ef-b8a6-fc34974b', 'd1417c48-2732-11ef-93d3-fc34974b', 'Bếp điện', './assets/img/product/bepdien1.jpg', 450000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 10:29:52', '2024-07-06 09:59:58'),
('3289247d-2935-11ef-b8a6-fc34974b', 'd1417c48-2732-11ef-93d3-fc34974b', 'Bếp điện không kén xoong', './assets/img/product/bepdien1.1.jpg', 550000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 10:29:52', '2024-07-06 09:59:58'),
('32892575-2935-11ef-b8a6-fc34974b', 'd1417c48-2732-11ef-93d3-fc34974b', 'Bếp nướng công xuất cao', './assets/img/product/bepdien2.1.jpg', 650000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 10:29:52', '2024-07-06 09:59:58'),
('32892675-2935-11ef-b8a6-fc34974b', '885ebd3b-26db-11ef-b015-fc34974b', 'Bếp nướng', './assets/img/product/bepdien2.jpg', 440000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 10:29:52', '2024-07-06 09:59:58'),
('328926e4-2935-11ef-b8a6-fc34974b', '885ebd3b-26db-11ef-b015-fc34974b', 'Bếp nướng điện tiện lợi', './assets/img/product/bepnuong1.1.jpg', 440000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 10:29:52', '2024-07-06 09:59:58'),
('32892745-2935-11ef-b8a6-fc34974b', '885ebd3b-26db-11ef-b015-fc34974b', 'Bếp nướng điện công suất cao', './assets/img/product/bepnuong1.2.jpg', 440000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 10:29:52', '2024-07-06 09:59:58'),
('3289283b-2935-11ef-b8a6-fc34974b', '885ebcd1-26db-11ef-b015-fc34974b', 'Bếp nướng điện', './assets/img/product/bepnuong1.jpg', 440000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 10:29:52', '2024-07-06 09:59:58'),
('328928a7-2935-11ef-b8a6-fc34974b', '885ebcd1-26db-11ef-b015-fc34974b', 'Bộ dao nấu nướng', './assets/img/product/bodao1.1.jpg', 1340000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 10:29:52', '2024-07-06 09:59:58'),
('32892904-2935-11ef-b8a6-fc34974b', '885ebcd1-26db-11ef-b015-fc34974b', 'Dao nấu nướng', './assets/img/product/bodao1.2.jpg', 1340000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 10:29:52', '2024-07-06 09:59:58'),
('32892969-2935-11ef-b8a6-fc34974b', '885ea8d2-26db-11ef-b015-fc34974b', 'Chảo chống dính', './assets/img/product/chao1.jpg', 1840000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 10:29:52', '2024-07-06 09:59:58'),
('328929f3-2935-11ef-b8a6-fc34974b', '885ea8d2-26db-11ef-b015-fc34974b', 'Kệ đựng bát đĩa', './assets/img/product/kedung1.1.jpg', 150000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 10:29:52', '2024-07-06 09:59:58'),
('32892a6e-2935-11ef-b8a6-fc34974b', 'f4647140-2934-11ef-b8a6-fc34974b', 'Máy xay đa năng', './assets/img/product/mayxay1.jpg', 150000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 10:29:52', '2024-07-06 09:59:58'),
('32892ac3-2935-11ef-b8a6-fc34974b', 'f464a2e5-2934-11ef-b8a6-fc34974b', 'Máy xay hoa quả', './assets/img/product/mayxay1.2.jpg', 150000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 10:29:52', '2024-07-06 09:59:58'),
('32892b1a-2935-11ef-b8a6-fc34974b', 'f464a389-2934-11ef-b8a6-fc34974b', 'Máy xay sinh tố', './assets/img/product/mayxay2.2.jpg', 150000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 10:29:52', '2024-07-06 09:59:58'),
('32892b71-2935-11ef-b8a6-fc34974b', 'f464a389-2934-11ef-b8a6-fc34974b', 'Máy xay ', './assets/img/product/mayxay2.1.jpg', 150000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 10:29:52', '2024-07-06 09:59:58'),
('c75b5e66-292d-11ef-b8a6-fc34974b', '1a2994b2-2731-11ef-93d3-fc34974b', 'Áo sơ mi trắng', './assets/img/clothes/ao1.1.jpg', 182000, 1, 'b59cad37-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:36:46', '2024-07-06 09:59:58'),
('c75b7390-292d-11ef-b8a6-fc34974b', '1a2994b2-2731-11ef-93d3-fc34974b', 'Áo polo mùa hè', './assets/img/clothes/ao2.1.jpg', 120000, 1, 'b59cad37-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:36:46', '2024-07-06 09:59:58'),
('c75b744a-292d-11ef-b8a6-fc34974b', '1a2994b2-2731-11ef-93d3-fc34974b', 'Áo thể thao', './assets/img/clothes/ao3.1.jpg', 99000, 1, 'b59cad37-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:36:46', '2024-07-06 09:59:58'),
('c75b749e-292d-11ef-b8a6-fc34974b', '885e63b5-26db-11ef-b015-fc34974b', 'Quần đùi chất liệu cotton', './assets/img/clothes/quan1.1.jpg', 165000, 1, 'b59cad37-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:36:46', '2024-07-06 09:59:58'),
('c75b7514-292d-11ef-b8a6-fc34974b', '885e63b5-26db-11ef-b015-fc34974b', 'Túi đeo thời trang', './assets/img/bag/tui1.jpg', 150000, 1, 'b59cad5d-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:36:46', '2024-07-06 09:59:58'),
('c75b756b-292d-11ef-b8a6-fc34974b', '885e63b5-26db-11ef-b015-fc34974b', 'Điện thoại samsung galaxy s8', './assets/img/electric/dt1.jpg', 1182000, 1, 'b59c60df-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:36:46', '2024-07-06 09:59:58'),
('c75b75b9-292d-11ef-b8a6-fc34974b', '885ea8d2-26db-11ef-b015-fc34974b', 'Macbook air', './assets/img/electric/laptop1.jpg', 12182000, 1, 'b59c60df-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:36:46', '2024-07-06 09:59:58'),
('c75b762f-292d-11ef-b8a6-fc34974b', '885ea8d2-26db-11ef-b015-fc34974b', 'Bàn học mini', './assets/img/houseware/ban1.jpg', 142000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:36:46', '2024-07-06 09:59:58'),
('c75b76df-292d-11ef-b8a6-fc34974b', '885ea8d2-26db-11ef-b015-fc34974b', 'Bàn học mini', './assets/img/houseware/ban1.1.jpg', 142000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:36:46', '2024-07-06 09:59:58'),
('c75b7731-292d-11ef-b8a6-fc34974b', '885ebcd1-26db-11ef-b015-fc34974b', 'Xoong ilox', './assets/img/houseware/xoong1.2.jpg', 200000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:36:46', '2024-07-06 09:59:58'),
('c75b7783-292d-11ef-b8a6-fc34974b', '885ebcd1-26db-11ef-b015-fc34974b', 'Quạt cây', './assets/img/houseware/quat1.jpg', 170000, 1, 'b59c7e6c-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:36:46', '2024-07-06 09:59:58'),
('c75b77d0-292d-11ef-b8a6-fc34974b', '885ebcd1-26db-11ef-b015-fc34974b', 'Tủ lạnh mini', './assets/img/product/product1.1.jpg', 800000, 1, 'b59cace6-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:36:46', '2024-07-06 09:59:58'),
('c75b7820-292d-11ef-b8a6-fc34974b', '885ebcd1-26db-11ef-b015-fc34974b', 'Bếp điện', './assets/img/product/bepdien1.jpg', 1200000, 1, 'b59cace6-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:36:46', '2024-07-06 09:59:58'),
('c9e3eaa7-2930-11ef-b8a6-fc34974b', '1a2994b2-2731-11ef-93d3-fc34974b', 'Áo sơ mi ', './assets/img/clothes/ao1.2.jpg', 182000, 1, 'b59cad37-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:58:19', '2024-07-06 09:59:58'),
('c9e4130f-2930-11ef-b8a6-fc34974b', '1a2994b2-2731-11ef-93d3-fc34974b', 'Áo sơ mi ', './assets/img/clothes/ao1.3.jpg', 182000, 1, 'b59cad37-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:58:19', '2024-07-06 09:59:58'),
('c9e41476-2930-11ef-b8a6-fc34974b', '1a2994b2-2731-11ef-93d3-fc34974b', 'Áo polo mùa hè', './assets/img/clothes/ao2.2.jpg', 120000, 1, 'b59cad37-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:58:19', '2024-07-06 09:59:58'),
('c9e414fa-2930-11ef-b8a6-fc34974b', '1a2994b2-2731-11ef-93d3-fc34974b', 'Áo polo ', './assets/img/clothes/ao2.3.jpg', 120000, 1, 'b59cad37-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:58:19', '2024-07-06 09:59:58'),
('c9e415e4-2930-11ef-b8a6-fc34974b', '1a2994b2-2731-11ef-93d3-fc34974b', 'Quần đùi ', './assets/img/clothes/quan1.4.jpg', 120000, 1, 'b59cad37-26fd-11ef-90b9-fc34974b', 0, 1, '2024-06-13 09:58:19', '2024-07-06 09:59:58');

-- --------------------------------------------------------

--
-- Table structure for table `product_img`
--

CREATE TABLE `product_img` (
  `id` char(32) NOT NULL,
  `prod_id` char(32) NOT NULL,
  `img_url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_img`
--

INSERT INTO `product_img` (`id`, `prod_id`, `img_url`) VALUES
('b7b4d082-2984-11ef-851c-fc34974b', '3288e912-2935-11ef-b8a6-fc34974b', './assets/img/product/bepdien1.1.jpg'),
('b7b4e9a0-2984-11ef-851c-fc34974b', '3289247d-2935-11ef-b8a6-fc34974b', './assets/img/product/bepdien2.1.jpg'),
('b7b4e9e1-2984-11ef-851c-fc34974b', '3289247d-2935-11ef-b8a6-fc34974b', './assets/img/product/bepdien2.2.jpg'),
('b7b4ea5c-2984-11ef-851c-fc34974b', '328926e4-2935-11ef-b8a6-fc34974b', './assets/img/product/bepnuong1.1.jpg'),
('b7b4ea90-2984-11ef-851c-fc34974b', '328926e4-2935-11ef-b8a6-fc34974b', './assets/img/product/bepnuong1.2.jpg'),
('b7b4ead1-2984-11ef-851c-fc34974b', '32892745-2935-11ef-b8a6-fc34974b', './assets/img/product/bepnuong1.1.jpg'),
('b7b4eb08-2984-11ef-851c-fc34974b', '32892745-2935-11ef-b8a6-fc34974b', './assets/img/product/bepnuong1.2.jpg'),
('b7b4eb3a-2984-11ef-851c-fc34974b', '3289283b-2935-11ef-b8a6-fc34974b', './assets/img/product/bepnuong1.1.jpg'),
('b7b4eb6b-2984-11ef-851c-fc34974b', '3289283b-2935-11ef-b8a6-fc34974b', './assets/img/product/bepnuong1.2.jpg'),
('b7b4eba3-2984-11ef-851c-fc34974b', '328928a7-2935-11ef-b8a6-fc34974b', './assets/img/product/bodao1.1.jpg'),
('b7b4ebdd-2984-11ef-851c-fc34974b', '328928a7-2935-11ef-b8a6-fc34974b', './assets/img/product/bodao1.jpg'),
('b7b4f608-2984-11ef-851c-fc34974b', '32892904-2935-11ef-b8a6-fc34974b', './assets/img/product/bodao1.1.jpg'),
('b7b55102-2984-11ef-851c-fc34974b', '32892904-2935-11ef-b8a6-fc34974b', './assets/img/product/bodao1.jpg'),
('b7b55261-2984-11ef-851c-fc34974b', '32892969-2935-11ef-b8a6-fc34974b', './assets/img/product/chao1.1.jpg'),
('b7b552c3-2984-11ef-851c-fc34974b', '32892969-2935-11ef-b8a6-fc34974b', './assets/img/product/chao1.1.jpg'),
('b7b55319-2984-11ef-851c-fc34974b', '328929f3-2935-11ef-b8a6-fc34974b', './assets/img/product/kedung1.1.jpg'),
('b7b55376-2984-11ef-851c-fc34974b', '328929f3-2935-11ef-b8a6-fc34974b', './assets/img/product/kedung1.1.jpg'),
('b7b553d3-2984-11ef-851c-fc34974b', '32892a6e-2935-11ef-b8a6-fc34974b', './assets/img/product/mayxay1.1.jpg'),
('b7b55422-2984-11ef-851c-fc34974b', '32892a6e-2935-11ef-b8a6-fc34974b', './assets/img/product/mayxay1.2.jpg'),
('b7b55474-2984-11ef-851c-fc34974b', '32892ac3-2935-11ef-b8a6-fc34974b', './assets/img/product/mayxay1.2.jpg'),
('b7b554c2-2984-11ef-851c-fc34974b', '32892ac3-2935-11ef-b8a6-fc34974b', './assets/img/product/mayxay1.1.jpg'),
('b7b5551a-2984-11ef-851c-fc34974b', '32892b1a-2935-11ef-b8a6-fc34974b', './assets/img/product/mayxay2.1.jpg'),
('b7b55567-2984-11ef-851c-fc34974b', '32892b1a-2935-11ef-b8a6-fc34974b', './assets/img/product/mayxay2.2.jpg'),
('b7b555ba-2984-11ef-851c-fc34974b', '32892b71-2935-11ef-b8a6-fc34974b', './assets/img/product/mayxay2.1.jpg'),
('b7b55605-2984-11ef-851c-fc34974b', '32892b71-2935-11ef-b8a6-fc34974b', './assets/img/product/mayxay2.jpg'),
('b7b55654-2984-11ef-851c-fc34974b', 'c75b5e66-292d-11ef-b8a6-fc34974b', './assets/img/clothes/ao1.3.jpg'),
('b7b5569d-2984-11ef-851c-fc34974b', 'c75b5e66-292d-11ef-b8a6-fc34974b', './assets/img/clothes/ao1.2.jpg'),
('b7b556eb-2984-11ef-851c-fc34974b', 'c75b7390-292d-11ef-b8a6-fc34974b', './assets/img/clothes/ao2.2.jpg'),
('b7b55726-2984-11ef-851c-fc34974b', 'c75b7390-292d-11ef-b8a6-fc34974b', './assets/img/clothes/ao2.3.jpg'),
('b7b5575e-2984-11ef-851c-fc34974b', 'c75b744a-292d-11ef-b8a6-fc34974b', './assets/img/clothes/ao3.2.jpg'),
('b7b55791-2984-11ef-851c-fc34974b', 'c75b744a-292d-11ef-b8a6-fc34974b', './assets/img/clothes/ao3.jpg'),
('b7b557da-2984-11ef-851c-fc34974b', 'c75b749e-292d-11ef-b8a6-fc34974b', './assets/img/clothes/quan1.3.jpg'),
('b7b5580c-2984-11ef-851c-fc34974b', 'c75b749e-292d-11ef-b8a6-fc34974b', './assets/img/clothes/quan1.jpg'),
('b7b55842-2984-11ef-851c-fc34974b', 'c75b7514-292d-11ef-b8a6-fc34974b', './assets/img/bag/tui1.1.jpg'),
('b7b55870-2984-11ef-851c-fc34974b', 'c75b7514-292d-11ef-b8a6-fc34974b', './assets/img/bag/tui1.2jpg'),
('b7b558a2-2984-11ef-851c-fc34974b', 'c75b756b-292d-11ef-b8a6-fc34974b', './assets/img/electric/dt1.3.jpg'),
('b7b558d2-2984-11ef-851c-fc34974b', 'c75b756b-292d-11ef-b8a6-fc34974b', './assets/img/electric/dt1.4.jpg'),
('b7b55902-2984-11ef-851c-fc34974b', 'c75b75b9-292d-11ef-b8a6-fc34974b', './assets/img/electric/laptop1.1.jpg'),
('b7b55931-2984-11ef-851c-fc34974b', 'c75b75b9-292d-11ef-b8a6-fc34974b', './assets/img/electric/laptop1.2.jpg'),
('b7b55963-2984-11ef-851c-fc34974b', 'c75b762f-292d-11ef-b8a6-fc34974b', './assets/img/houseware/ban1.2.jpg'),
('b7b5598f-2984-11ef-851c-fc34974b', 'c75b762f-292d-11ef-b8a6-fc34974b', './assets/img/houseware/ban1.3.jpg'),
('b7b559c2-2984-11ef-851c-fc34974b', 'c75b762f-292d-11ef-b8a6-fc34974b', './assets/img/houseware/ban1.1.jpg'),
('b7b559f7-2984-11ef-851c-fc34974b', 'c75b762f-292d-11ef-b8a6-fc34974b', './assets/img/houseware/ban1.3.jpg'),
('b9079d8c-2b85-11ef-9824-fc34974b', 'c75b76df-292d-11ef-b8a6-fc34974b', './assets/img/houseware/ban1.jpg'),
('b907b9ab-2b85-11ef-9824-fc34974b', 'c75b7731-292d-11ef-b8a6-fc34974b', './assets/img/houseware/xoong1.1.jpg'),
('b907ba18-2b85-11ef-9824-fc34974b', 'c75b7783-292d-11ef-b8a6-fc34974b', './assets/img/houseware/quat1.3.jpg'),
('b907ba59-2b85-11ef-9824-fc34974b', 'c75b77d0-292d-11ef-b8a6-fc34974b', './assets/img/product/product12.jpg'),
('b907ba99-2b85-11ef-9824-fc34974b', 'c75b7820-292d-11ef-b8a6-fc34974b', './assets/img/product/bepdien1.1.jpg'),
('b907bacf-2b85-11ef-9824-fc34974b', 'c9e3eaa7-2930-11ef-b8a6-fc34974b', './assets/img/clothes/ao1.jpg'),
('b907bafe-2b85-11ef-9824-fc34974b', 'c9e4130f-2930-11ef-b8a6-fc34974b', './assets/img/clothes/ao1.1.jpg'),
('b907bb49-2b85-11ef-9824-fc34974b', 'c9e41476-2930-11ef-b8a6-fc34974b', './assets/img/clothes/ao2.jpg'),
('b907bb78-2b85-11ef-9824-fc34974b', 'c9e414fa-2930-11ef-b8a6-fc34974b', './assets/img/clothes/ao2.4.jpg'),
('b907bba3-2b85-11ef-9824-fc34974b', 'c9e415e4-2930-11ef-b8a6-fc34974b', './assets/img/clothes/quan1.jpg'),
('bb8edbe2-2990-11ef-851c-fc34974b', '32892575-2935-11ef-b8a6-fc34974b', './assets/img/product/bepdien2.2.jpg'),
('cdfb28ef-2990-11ef-851c-fc34974b', '32892675-2935-11ef-b8a6-fc34974b', './assets/img/product/bepdien2.1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` char(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `amin` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `sdt`, `password`, `name`, `profile_img`, `address`, `amin`, `created_at`, `update_at`) VALUES
('1a2994b2-2731-11ef-93d3-fc34974b', 'n1@gmail.com', '0983918273', '123', 'Hoàng Văn Nghiệp', './assets/img/avatauser/user5.jpg', 'Hà nội', 1, '2024-06-10 20:55:31', '2024-07-05 12:48:00'),
('885e63b5-26db-11ef-b015-fc34974b', 'email123@gmail.com', '0387717163', '12345678', 'Anh nghiệp', './assets/img/avatauser/user2.jpg', 'Hưng yên', 0, '2024-06-10 10:42:59', '2024-06-17 15:04:53'),
('885ea8d2-26db-11ef-b015-fc34974b', 'email1@gmail.com', '0963515132', '123', 'Hoàng nghiệp 1', './assets/img/avatauser/user3.jpg', 'Hà Nội', 0, '2024-06-10 10:42:59', '2024-06-22 10:27:49'),
('885ebcd1-26db-11ef-b015-fc34974b', 'email2@gmail.com', '0836391431', '12345678', 'Hoàng Nghiệp 2', './assets/img/avatauser/user2.jpg', 'Hà Nội', 0, '2024-06-10 10:42:59', '2024-06-17 15:05:10'),
('885ebd3b-26db-11ef-b015-fc34974b', 'email3@gmail.com', '0977471724', '12345678', 'Hoàng Nghiệp 3', './assets/img/avatauser/user5.jpg', 'Hà Nội', 0, '2024-06-10 10:42:59', '2024-06-17 15:05:20'),
('d1417c48-2732-11ef-93d3-fc34974b', 'n@gmail.com', '0937781947', '12345678', 'NOkked', './assets/img/avatauser/user3.jpg', 'Hà nội', 0, '2024-06-10 21:07:48', '2024-07-05 12:47:23'),
('f4647140-2934-11ef-b8a6-fc34974b', 'user1@gmail.com', '0877118247', '12345678', 'Mạc Nam Thông', './assets/img/avatauser/user1.jpg', 'Hồ chí minh', 0, '2024-06-13 10:28:08', '2024-06-17 15:05:37'),
('f464a2e5-2934-11ef-b8a6-fc34974b', 'user2@gmail.com', '0818927142', '12345678', 'Uất Tấn Lợi', './assets/img/avatauser/user2.jpg', 'Hà nội', 0, '2024-06-13 10:28:08', '2024-06-17 15:05:43'),
('f464a389-2934-11ef-b8a6-fc34974b', 'user3@gmail.com', '0987264143', '1', 'Trần Duy Thành', './assets/img/avatauser/user3.jpg', 'Hà nội', 0, '2024-06-13 10:28:08', '2024-06-22 10:39:56'),
('f464a3c7-2934-11ef-b8a6-fc34974b', 'user4@gmail.com', '0977363162', '123', 'Vũ Quang Trung', './assets/img/avatauser/user4.jpg', 'Hà nội', 0, '2024-06-13 10:28:08', '2024-06-22 10:41:56'),
('f464a452-2934-11ef-b8a6-fc34974b', 'user5@gmail.com', '0946483682', '12345678', 'Vưu Thái Hòa', './assets/img/avatauser/user5.jpg', 'Hà nội', 0, '2024-06-13 10:28:08', '2024-06-17 15:05:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `product_img`
--
ALTER TABLE `product_img`
  ADD CONSTRAINT `product_img_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
