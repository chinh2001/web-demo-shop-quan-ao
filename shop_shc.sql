-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 18, 2022 lúc 09:02 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_shc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article_categories`
--

CREATE TABLE `article_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plus` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `describe_new` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `article_categories`
--

INSERT INTO `article_categories` (`id`, `name`, `plus`, `image`, `describe_new`, `created_at`, `updated_at`, `start`) VALUES
(1, 'Góc Tư Vấn Làm Đẹp', 'goc-tu-ban-lam-dep', '1', NULL, '2022-05-14 15:20:58', '2022-05-14 15:20:58', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '1/bật - 0/tắt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `description`, `image`, `status`) VALUES
(1, 'adidas', '', NULL, 'adidas.png', 0),
(2, 'champion', '', NULL, 'champion.jpg', 0),
(3, 'zara', '', NULL, 'zara.png', 0),
(4, 'stussy', '', NULL, 'stussy.png', 0),
(5, 'nike', '', NULL, 'nike.png', 0),
(6, 'dickies', '', NULL, 'dickies-logo.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `description`, `status`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Thời Trang Nam', 'thoi-trang-nam', 'bang-gia-mua-si-quan-ao-nam-cao-cap-3.jpg', NULL, '1', NULL, '2022-05-14 14:15:51', '2022-05-14 14:15:54'),
(2, 'Thời Trang Nữ', 'thoi-trang-nu', 'hinh-anh-do-cong-so-1589905236.jpg', NULL, '1', NULL, '2022-05-14 14:15:58', '2022-05-14 14:16:01'),
(3, 'Áo Nam', 'ao-nam', 'ao-thun-nam-dai-tay-xanh-cuc-chat-0.jpg', NULL, '1', 1, '2022-05-14 13:27:38', '2022-05-14 13:27:38'),
(4, 'Quần Nam', 'quan-nam', '20190605_0299b1d58efbd5c782f0f36af34172df_1559726715.jpg', NULL, '1', 1, '2022-05-14 13:28:27', '2022-05-14 13:28:27'),
(5, 'Áo Phông', 'ao-phong', '9acc27db631da5f7d8a84776cce49497.jpg', NULL, '1', 3, '2022-05-14 13:29:08', '2022-05-14 13:29:08'),
(6, 'Hoodie', 'hoodie', 'hoodie-la-gi-2.jpg', NULL, '1', 3, '2022-05-14 13:29:45', '2022-05-14 13:29:45'),
(7, 'Jacket', 'jacket', 'black-denim-jacket-997-1.jpg', NULL, '1', 3, '2022-05-14 13:30:55', '2022-05-14 13:30:55'),
(8, 'Sweater', 'sweater', 'nhung-shop-ban-ao-sweater-dep-tren-instagram.jpg', NULL, '1', 3, '2022-05-14 13:31:33', '2022-05-14 13:31:33'),
(9, 'Cargo Pants', 'cargo-pants', 'cargo-pants-la-gi-nhung-dieu-can-biet-1.jpg', NULL, '1', 4, '2022-05-14 13:32:28', '2022-05-14 13:32:28'),
(10, 'Jogger', 'jogger', 'quan-jogger-la-gi-1.jpg', NULL, '1', 4, '2022-05-14 13:33:48', '2022-05-14 13:33:48'),
(11, 'Shorts', 'shorts', 'p1786927.jpg', NULL, '1', 4, '2022-05-14 13:34:39', '2022-05-14 13:34:39'),
(12, 'Áo Nữ', 'ao-nu', 'danh-sach-shop-quan-ao-cho-nu-dep-tren-duong-nguyen-anh-thu-thumb-492.jpg', NULL, '1', 2, '2022-05-14 13:35:31', '2022-05-14 13:35:31'),
(13, 'Quần Váy Nữ', 'quan-vay-nu', 'quan-gia-vay-dep.jpg', NULL, '1', 2, '2022-05-14 13:36:10', '2022-05-14 13:36:10'),
(14, 'Áo Phông', 'ao-phong-nu', 'ao-thun-tay-lo-co-gai-sexy.png', NULL, '1', 12, '2022-05-14 13:36:55', '2022-05-14 13:36:55'),
(15, 'Hoodie', 'hoodie', 'ao-hoodie-nu-ni-bong-in-hoa-tiet-4young-hdtp01-61d3f6bad7ea0-04012022142650.jpg', NULL, '1', 12, '2022-05-14 13:37:41', '2022-05-14 13:37:41'),
(16, 'Jacket', 'jacket', '66016b1e4ca6122917fdc67cab4cd8b7.jpg', NULL, '1', 12, '2022-05-14 13:38:49', '2022-05-14 13:38:49'),
(17, 'Sweater', 'sweater', '7f6d60757a2383af634e4c26c69e7c5b.jpg', NULL, '1', 12, '2022-05-14 13:39:48', '2022-05-14 13:39:48'),
(18, 'Cargo Pants', 'cargo-pants', 'quan-jeans-nu-wide-leg-cargo-jqr5j-2.jpg', NULL, '1', 13, '2022-05-14 13:40:35', '2022-05-14 13:40:35'),
(19, 'Joggers', 'joggers', 'z2421025461525_aa847d28df1d431af647dcfef42070e2_739bd0f807fb407da68f8e076772077f_master.jpg', NULL, '1', 13, '2022-05-14 13:42:07', '2022-05-14 13:42:07'),
(20, 'Legging', 'legging', 'quan-legging-nu-runnavy-eco-friend-wlf30-4.jpg', NULL, '1', 13, '2022-05-14 13:42:47', '2022-05-14 13:42:47'),
(21, 'Shorts', 'shorts-nu', 'Quan-short-nu-hang-quang-chau-cao-cap-3.jpg', NULL, '1', 13, '2022-05-14 13:43:15', '2022-05-14 13:43:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `imgs_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `product_id`, `imgs_product`) VALUES
(2, 1, '09344793bdf74ce7a330ae1401306fc1_9366.jpg'),
(3, 1, 'b676a72d76c44affa846ae1401309fbf_9366.jpg'),
(4, 1, 'f5107cc2d0564fc1aeb4ae14013084f0_9366.jpg'),
(6, 1, 'c5014e791fcd4eb6a3e5ae1401307abf_9366.jpg'),
(7, 2, '55ebface50ea46f9bd1aae0a015a1a9c_9366_result.jpg'),
(8, 2, '77041912eba74e41a64aae0a015a5ff7_9366_result.jpg'),
(9, 2, 'cca7068a376142129790ae0a015bb697_9366_result.jpg'),
(10, 2, '7e338196b2664703b143adf800331737_9366_result.jpg'),
(11, 1, 'b52fba6f94aa468ea125ad8d0166195d_9366_result.jpg'),
(12, 1, 'c451ab1432e84390b3b3ad8d01665934_9366_result.jpg'),
(13, 1, 'ea47f20a3cde45cc9148ad8d0162baee_9366_result.jpg'),
(14, 1, 'ed29d011d1364ede92a9ad8d01614991_9366_result.jpg'),
(19, 4, '189ea498a5a04a838fcfadcd01794c97_9366_result.jpg'),
(20, 4, '4533b471f2c94a8e9b4badcd017aaf64_9366_result.jpg'),
(21, 4, 'b503ae10553c4cf6ab92adcd017b417b_9366_result.jpg'),
(22, 4, 'f84eb5f995dd4b60a60cad7f0177fa80_9366_result.jpg'),
(23, 5, '5b632203805c449da79fad22011c3c9a_9366_result.jpg'),
(24, 5, '6af8499247034e6c8e43ad22011c3513_9366_result.jpg'),
(25, 5, '36782dc131e7462ea17dad22011c46f8_9366_result.jpg'),
(26, 5, 'Ao_Hoodie_3_Soc_Future_Icons_adidas_Sportswear_Xam_H39780_01_laydown_result.jpg'),
(27, 6, '8f3c65ded09f44ac9733ad2400356bf4_9366_result.jpg'),
(28, 6, '702df538f4b340fca7f8ad2400355943_9366_result.jpg'),
(29, 6, 'a55b7130e58e4c539dc4ad2400a0f72d_9366_result.jpg'),
(30, 6, 'eff75eb701bd4b70b2d4ad2400354e7a_9366_result.jpg'),
(31, 9, '11dec91a456d4e1ebadcae280092290d_9366_result.jpg'),
(32, 9, '41f6cc4998914faea4e0ae2800922fd7_9366_result.jpg'),
(33, 9, 'b1ede38e060141a799c0ae280091f927_9366_result.jpg'),
(34, 9, 'c5f55391d5c044dd9502ae28011e1763_9366_result.jpg'),
(35, 8, '0bee1331bb7f433aa577ae1c00cff073_9366_result.jpg'),
(36, 8, '0ea0e3121b36481bbbe5ae1c00cfe3d9_9366_result.jpg'),
(37, 8, '31bf66abe324432ebd21ae1c00cfd97e_9366_result.jpg'),
(38, 8, 'f6780bdb7d0a4189a48bae1c00d00e0b_9366_result.jpg'),
(39, 7, '12b5436011644f85831aad490090458f_9366_result.jpg'),
(40, 7, '466c5b82148141328446ad6b00dbea29_9366_result.jpg'),
(41, 7, '1109ad93a7b24fb88b53ad6b00dbf43b_9366_result.jpg'),
(42, 7, 'e0bf7f157f254de7afabad6b00dbfdcb_9366_result.jpg'),
(43, 10, '03b9e9bfd6594a3f9841ad23006cd186_9366_result.jpg'),
(44, 10, '7bc408a9a4d24109bd8ead23006cbafa_9366_result.jpg'),
(45, 10, '560ec0b0ab0249bbb829ad23006cc1b4_9366_result.jpg'),
(46, 10, 'b484da08487b4d6c89b0ad23006ce9b2_9366_result.jpg'),
(47, 11, '6e6aa3e6983c4013bed6ad120147bb51_9366_result.jpg'),
(48, 11, '73e09af8fc65497ca0dead120147b3f6_9366_result.jpg'),
(49, 11, '52770e0bd78744d5b18cad120147da0a_9366_result.jpg'),
(50, 11, '2015b9451b2e46f58b1cad120147c3d4_9366_result.jpg'),
(51, 12, '2ca3e058c0e94f65869bac75015cdbe0_9366_result.jpg'),
(52, 12, 'Ao_sweatshirt_co_tron_R.Y.V._Mau_xanh_da_troi_GN3317_01_laydown_result.jpg'),
(53, 12, 'Ao_sweatshirt_co_tron_R.Y.V._Mau_xanh_da_troi_GN3317_41_detail_result.jpg'),
(54, 12, 'c816b208ac66452fa418ac75015ccd15_9366_result.jpg'),
(55, 13, 'chpeu_214681_em525_full_back_result.jpg'),
(56, 13, 'chpeu_214681_em525_full_crop_result.jpg'),
(57, 13, 'chpeu_214681_em525_full_front_result.jpg'),
(58, 13, 'chpeu_214681_em525_full_result.jpg'),
(59, 14, 'chpeu_216032_ww001_full_back_result.jpg'),
(60, 14, 'chpeu_216032_ww001_full_crop_result.jpg'),
(61, 14, 'chpeu_216032_ww001_full_front_result.jpg'),
(62, 14, 'chpeu_216032_ww001_full_result.jpg'),
(63, 15, 'chpeu_214344_ww001_full_alt1_result.jpg'),
(64, 15, 'chpeu_214344_ww001_full_back_result.jpg'),
(65, 15, 'chpeu_214344_ww001_full_crop_result.jpg'),
(66, 15, 'chpeu_214344_ww001_full_front_result.jpg'),
(67, 16, 'chpeu_217144_bs501_full_back_result.jpg'),
(68, 16, 'chpeu_217144_bs501_full_crop_result.jpg'),
(69, 16, 'chpeu_217144_bs501_full_front_result.jpg'),
(70, 16, 'chpeu_217144_bs501_full_result.jpg'),
(71, 17, 'chpeu_217155_em021_full_back_result.jpg'),
(72, 17, 'chpeu_217155_em021_full_crop_result.jpg'),
(73, 17, 'chpeu_217155_em021_full_front_result.jpg'),
(74, 17, 'chpeu_217155_em021_full_result.jpg'),
(75, 18, 'chpeu_217264_bs538_full_back_result.jpg'),
(76, 18, 'chpeu_217264_bs538_full_crop_result.jpg'),
(77, 18, 'chpeu_217264_bs538_full_front_result.jpg'),
(78, 18, 'chpeu_217264_bs538_full_result.jpg'),
(79, 21, 'chpeu_216735_kk001_full_back_result.jpg'),
(80, 21, 'chpeu_216735_kk001_full_crop_result.jpg'),
(81, 21, 'chpeu_216735_kk001_full_front_result.jpg'),
(82, 21, 'chpeu_216735_kk001_full_result.jpg'),
(83, 20, 'chpeu_216653_bs501_full_back_result.jpg'),
(84, 20, 'chpeu_216653_bs501_full_crop_result.jpg'),
(85, 20, 'chpeu_216653_bs501_full_front_result.jpg'),
(86, 20, 'chpeu_216653_bs501_full_result.jpg'),
(87, 19, 'chpeu_216651_ww001_full_back_result.jpg'),
(88, 19, 'chpeu_216651_ww001_full_crop_result.jpg'),
(89, 19, 'chpeu_216651_ww001_full_front_result.jpg'),
(90, 19, 'chpeu_216651_ww001_full_result.jpg'),
(91, 24, 'chpeu_214197_ww001_full_back_result.jpg'),
(92, 24, 'chpeu_214197_ww001_full_crop_result.jpg'),
(93, 24, 'chpeu_214197_ww001_full_front_result.jpg'),
(94, 24, 'chpeu_214197_ww001_full_result.jpg'),
(95, 22, 'chpeu_217156_kk001_full_back_result.jpg'),
(96, 22, 'chpeu_217156_kk001_full_crop_result.jpg'),
(97, 22, 'chpeu_217156_kk001_full_front_result.jpg'),
(98, 22, 'chpeu_217156_kk001_full_result.jpg'),
(99, 23, 'chpeu_217085_kk001_full_back_result.jpg'),
(100, 23, 'chpeu_217085_kk001_full_crop_result.jpg'),
(101, 23, 'chpeu_217085_kk001_full_front_result.jpg'),
(102, 23, 'chpeu_217085_kk001_full_result.jpg'),
(103, 27, 'WSR11_CL9_A1.jpg'),
(104, 27, 'WSR11_CL9_A2.jpg'),
(105, 27, 'WSR11_CL9_BK.jpg'),
(106, 27, 'WSR11_CL9_FR.jpg'),
(107, 26, 'WSR15_A2S_FR.jpg'),
(108, 26, 'WSR15_A2S_BK.jpg'),
(109, 26, 'WSR15_A2S_A2.jpg'),
(110, 26, 'WSR15_A2S_A1.jpg'),
(111, 25, 'WSSK2_BK_FR.jpg'),
(112, 25, 'WSSK2_BK_BK.jpg'),
(113, 25, 'WSSK2_BK_A2.jpg'),
(114, 25, 'WSSK2_BK_A1.jpg'),
(115, 30, 'TW22A_DN_FR.jpg'),
(116, 30, 'TW22A_DN_BK.jpg'),
(117, 30, 'TW22A_DN_A2.jpg'),
(118, 30, 'TW22A_DN_A1.jpg'),
(119, 29, 'TW457_CTH_FR.jpg'),
(120, 29, 'TW457_CTH_BK.jpg'),
(121, 29, 'TW457_CTH_A2.jpg'),
(122, 29, 'TW457_CTH_A1.jpg'),
(123, 28, 'TWR10_ML_A1.jpg'),
(124, 28, 'TWR10_ML_A2.jpg'),
(125, 28, 'TWR10_ML_BK.jpg'),
(126, 28, 'TWR10_ML_FR.jpg'),
(127, 33, 'TJR21_BK_A1.jpg'),
(128, 33, 'TJR21_BK_A2.jpg'),
(129, 33, 'TJR21_BK_BK.jpg'),
(130, 33, 'TJR21_BK_FR.jpg'),
(131, 32, 'TJ212_BK_A1.jpg'),
(132, 32, 'TJ212_BK_A2.jpg'),
(133, 32, 'TJ212_BK_BK.jpg'),
(134, 32, 'TJ212_BK_FR.jpg'),
(135, 31, 'TCG100_NB_A1.jpg'),
(136, 31, 'TCG100_NB_A2.jpg'),
(137, 31, 'TCG100_NB_BK.jpg'),
(138, 31, 'TCG100_NB_FR.jpg'),
(139, 36, 'TWR12_P2O_A1.jpg'),
(140, 36, 'TWR12_P2O_A2.jpg'),
(141, 36, 'TWR12_P2O_BK.jpg'),
(142, 36, 'TWR12_P2O_FR.jpg'),
(143, 35, 'TWR31_WH_A1.jpg'),
(144, 35, 'TWR31_WH_A2.jpg'),
(145, 35, 'TWR31_WH_BK.jpg'),
(146, 35, 'TWR31_WH_FR.jpg'),
(151, 34, 'TWR30_B2T_A2.jpg'),
(152, 34, 'TWR30_B2T_A1.jpg'),
(153, 34, 'TWR30_B2T_FR.jpg'),
(154, 34, 'TWR30_B2T_BK.jpg'),
(155, 39, 'b2c1880b-387b-4d0a-89a6-9b5f15b1d7eb_result.jpg'),
(156, 39, 'fcc2330b-6cae-4ffd-9a80-1327b34d96e4_result.jpg'),
(157, 39, 'fe3c536d-5bc8-4ecc-b8bd-557060f99ac9_result.jpg'),
(158, 39, 'jordan-dri-fit-zion-short-sleeve-t-shirt-kkp1dg_result.jpg'),
(159, 38, '9c5dfd06-54ef-471c-bd35-786721bd68f3_result.jpg'),
(160, 38, '38ae4a30-490f-48ec-8021-19b3af86c02c_result.jpg'),
(161, 38, 'c07068a2-4e9d-4ce5-b927-57d182333bac_result.jpg'),
(162, 38, 'e90c0196-e6cd-4f64-a371-5fa2ced669a7_result.jpg'),
(163, 37, 'bf03ca31-edbb-43bc-a652-90f3ed33960d_result.jpg'),
(164, 37, 'dceb78e4-47dc-4af5-bbbb-079795424af6_result.jpg'),
(165, 37, 'd9941c4d-6c4b-4995-b8a5-caed7a79969e_result.jpg'),
(166, 37, 'e130497a-7d00-49b1-8f85-0bc017fa5979_result.jpg'),
(167, 42, '63a61448-3089-4b15-8391-895e307babe1_result.jpg'),
(168, 42, 'sportswear-fleece-pullover-hoodie-G8xmnp (1)_result.jpg'),
(169, 42, 'sportswear-fleece-pullover-hoodie-G8xmnp (2)_result.jpg'),
(170, 42, 'sportswear-fleece-pullover-hoodie-G8xmnp_result.jpg'),
(171, 40, 'c216ec4f-7d32-461c-8070-8aa7ef03b521_result.jpg'),
(172, 40, 'jordan-dri-fit-zion-hoodie-LDCsLV (1)_result.jpg'),
(173, 40, 'jordan-dri-fit-zion-hoodie-LDCsLV (2)_result.jpg'),
(174, 40, 'jordan-dri-fit-zion-hoodie-LDCsLV_result.jpg'),
(175, 41, '1550bf84-73f5-4c03-9135-5f4851feefe7_result.jpg'),
(176, 41, 'f1796ee4-7a8f-46df-bbc8-b0ed3db1a196_result.jpg'),
(177, 41, 'jordan-air-jordan-fleece-hoodie-v3J5HK (1)_result.jpg'),
(178, 41, 'jordan-air-jordan-fleece-hoodie-v3J5HK_result.jpg'),
(179, 43, 'bc4a5d30-c162-4068-8b60-208c7bb36f0f_result.jpg'),
(180, 43, 'a26ad2d1-5db2-4a32-b1a2-0274d78c41c0_result.jpg'),
(181, 43, 'a6fa7001-e499-457c-9728-ebabf29b7a32_result.jpg'),
(182, 43, '3ae7a2b2-b954-4f62-b226-5d0206ef6861_result.jpg'),
(183, 44, '193ddb59-2340-434c-9d2a-cadcda1bedab_result.jpg'),
(184, 44, '1529bddc-dfcc-470a-8720-feb6fc806aa5_result.jpg'),
(185, 44, '2273a17c-9a18-49c4-99d3-36e15ff90118_result.jpg'),
(186, 44, 'b476af67-2fc9-45c2-8a2a-680162a731e2_result.jpg'),
(187, 45, '7e0fa6fe-8d6b-4b87-89c4-ff8ff1ed704b_result.jpg'),
(188, 45, '9e6ab249-101e-45e9-9a7e-d72ce6381c93_result.jpg'),
(189, 45, 'ad9ca918-a0d0-4f13-9f57-cac83e371cc0_result.jpg'),
(190, 45, 'fd85ecd5-9e66-49c4-a02a-fae3fb614034_result.jpg'),
(191, 46, '529e128f-aac7-4e7f-84c9-bb24c32f9765 (1)_result.jpg'),
(192, 46, 'b326583f-c40b-4d33-84cf-33402758c25e_result.jpg'),
(193, 46, 'jordan-flight-heritage-fleece-crew-sweatshirt-Hw7GSV (1)_result.jpg'),
(194, 46, 'jordan-flight-heritage-fleece-crew-sweatshirt-Hw7GSV_result.jpg'),
(195, 48, '4a975684-2882-4ee1-b2f2-4bb9f30c4c7c_result.jpg'),
(196, 48, '6b0ce50b-6b20-4976-83cb-8f1394d082da_result.jpg'),
(197, 48, '820079f1-516a-4c6c-b6f8-91e45a3b301a_result.jpg'),
(198, 48, 'ad32e57c-0285-4854-8d75-a5c33c3bc8ba_result.jpg'),
(199, 49, '058e335f-3f6a-4f52-8041-0add4408c5c8_result.jpg'),
(200, 49, 'c28de7e3-95ea-4129-a515-9d5336f13d5d_result.jpg'),
(201, 49, 'ce8bda56-37c9-4f48-acc3-189eb74151aa_result.jpg'),
(202, 49, 'story-pack-long-sleeve-training-top-WJkjlN_result.jpg'),
(203, 50, '20220203-FRANCIS_ECOMM_3.02.22-603_2048x_result.jpg'),
(204, 50, '20220203-FRANCIS_ECOMM_3.02.22-616_2048x_result.jpg'),
(205, 50, '20220203-FRANCIS_ECOMM_3.02.22-623_2048x_result.jpg'),
(206, 50, '20220203-FRANCIS_ECOMM_3.02.22-628_2048x_result.jpg'),
(207, 51, '20210415-IMG_1955_2048x_result.jpg'),
(208, 51, '20210415-IMG_1963_2048x_result.jpg'),
(209, 51, '20210415-IMG_1964_2048x_result.jpg'),
(210, 51, '20210415-IMG_1965_2048x_result.jpg'),
(211, 52, '20220201-JEN_ECOMM_31.01-4198_2048x_result.jpg'),
(212, 52, '20220201-JEN_ECOMM_31.01-4212_2048x_result.jpg'),
(213, 52, '20220201-JEN_ECOMM_31.01-4221_2048x_result.jpg'),
(214, 52, '20220201-JEN_ECOMM_31.01-4231_2048x_result.jpg'),
(215, 55, 'IMG_9601_2048x_result.jpg'),
(216, 55, 'IMG_9585_2048x_result.jpg'),
(217, 55, 'IMG_9567_5e09d15f-6b14-423b-baec-c91dd22b2a09_2048x_result.jpg'),
(218, 55, 'IMG_9556_b39d32dd-f8c3-43bb-8110-5250f5d15498_2048x_result.jpg'),
(219, 54, '20220201-JEN_ECOMM_31.01-4317_2048x_result.jpg'),
(220, 54, '20220201-JEN_ECOMM_31.01-4314_2048x_result.jpg'),
(221, 54, '20220201-JEN_ECOMM_31.01-4299_2048x_result.jpg'),
(222, 54, '20220201-JEN_ECOMM_31.01-4281_2048x_result.jpg'),
(223, 53, '882204-hoodie-stussy-basic-hd-chocolate_result.jpg'),
(224, 53, '882207-hoodie-stussy-basic-hd-chocolate_result.jpg'),
(225, 53, '882208-hoodie-stussy-basic-hd-chocolate_result.jpg'),
(226, 53, '882205-hoodie-stussy-basic-hd-chocolate_result.jpg'),
(227, 61, 'DANMARCHSAMP-50_2048x_result.jpg'),
(228, 61, 'DANMARCHSAMP-51_2048x_result.jpg'),
(229, 61, 'DANMARCHSAMP-52_2048x_result.jpg'),
(230, 61, 'DANMARCHSAMP-56_2048x_result.jpg'),
(231, 60, '20220401-IMG_0007_2048x_result.jpg'),
(232, 60, '20220401-IMG_0019_2048x_result.jpg'),
(233, 60, '20220401-IMG_0026_2048x_result.jpg'),
(234, 60, '20220401-IMG_9999_2048x_result.jpg'),
(235, 59, 'IMG_9713_322b70ac-de9c-4237-b327-a36b3c3ee739_2048x_result.jpg'),
(236, 59, 'IMG_9726_d719f259-292b-47c4-8eb5-f31cd0f494b8_2048x_result.jpg'),
(237, 59, 'IMG_9743_d5dcd556-e1df-4d4c-af63-29d869e8c2f3_2048x_result.jpg'),
(238, 59, 'IMG_9716_aff6a91c-2314-4751-878a-797234e697ba_2048x_result.jpg'),
(239, 56, '20220401-IMG_9928_2048x_result.jpg'),
(240, 56, '20220401-IMG_9947_2048x_result.jpg'),
(241, 56, '20220401-IMG_9951_2048x_result.jpg'),
(242, 56, '20220401-IMG_9957_2048x_result.jpg'),
(243, 57, '20220303-IMG_6260_2048x_result.jpg'),
(244, 57, '20220303-IMG_6286_2048x_result.jpg'),
(245, 57, '20220303-IMG_6294_2048x_result.jpg'),
(246, 57, '20220303-IMG_6300_2048x_result.jpg'),
(247, 58, 'DANMARCHSAMP-57_2048x_result.jpg'),
(248, 58, 'DANMARCHSAMP-59_2048x_result.jpg'),
(249, 58, 'DANMARCHSAMP-60_2048x_result.jpg'),
(250, 58, 'DANMARCHSAMP-62_2048x_result.jpg'),
(251, 62, '6224443800_1_1_1.jpg'),
(252, 62, '6224443800_2_1_1.jpg'),
(253, 62, '6224443800_2_3_1.jpg'),
(254, 62, '6224443800_2_2_1.jpg'),
(255, 63, '3284407707_2_3_1.jpg'),
(256, 63, '3284407707_2_2_1.jpg'),
(257, 63, '3284407707_2_1_1.jpg'),
(258, 63, '3284407707_1_1_1.jpg'),
(259, 64, '4374401800_1_1_1.jpg'),
(260, 64, '4374401800_2_1_1.jpg'),
(261, 64, '4374401800_2_2_1.jpg'),
(262, 64, '4374401800_2_3_1.jpg'),
(263, 67, '0495405250_2_3_1.jpg'),
(264, 67, '0495405250_2_2_1.jpg'),
(265, 67, '0495405250_2_1_1.jpg'),
(266, 67, '0495405250_1_1_1.jpg'),
(267, 66, '9240414942_1_1_1.jpg'),
(268, 66, '9240414942_2_3_1.jpg'),
(269, 66, '9240414942_2_2_1.jpg'),
(270, 66, '9240414942_2_1_1.jpg'),
(271, 65, '4087464800_2_3_1.jpg'),
(272, 65, '4087464800_2_2_1.jpg'),
(273, 65, '4087464800_2_1_1.jpg'),
(274, 65, '4087464800_1_1_1.jpg'),
(275, 70, '8281470800_1_1_1.jpg'),
(276, 70, '8281470800_2_2_1.jpg'),
(277, 70, '8281470800_2_3_1.jpg'),
(278, 70, '8281470800_2_5_1.jpg'),
(279, 69, '3427409535_1_1_1.jpg'),
(280, 69, '3427409535_2_2_1.jpg'),
(281, 69, '3427409535_2_1_1.jpg'),
(282, 69, '3427409535_2_3_1.jpg'),
(283, 68, '4302410806_1_1_1.jpg'),
(284, 68, '4302410806_2_1_1.jpg'),
(285, 68, '4302410806_2_2_1.jpg'),
(286, 68, '4302410806_2_3_1.jpg'),
(287, 73, '4432400251_2_3_1.jpg'),
(288, 73, '4432400251_2_2_1.jpg'),
(289, 73, '4432400251_2_1_1.jpg'),
(290, 73, '4432400251_1_1_1.jpg'),
(291, 72, '3833402251_1_1_1.jpg'),
(292, 72, '3833402251_2_2_1.jpg'),
(293, 72, '3833402251_2_3_1.jpg'),
(294, 72, '3833402251_2_5_1.jpg'),
(295, 71, '3427417505_2_5_1.jpg'),
(296, 70, '3427417505_2_3_1.jpg'),
(297, 71, '3427417505_2_2_1.jpg'),
(298, 71, '3427417505_1_1_1.jpg'),
(299, 76, 'b095d74850c9498b8549ad57010a99eb_9366_result.jpg'),
(300, 76, 'a2ed9f1f14f74d72b328ad57010ad41f_9366_result.jpg'),
(301, 76, '48c6c126faed4f7b8ef6ad57010aaac8_9366_result.jpg'),
(302, 76, '7a092af3d65746379000ad57010aa3e7_9366_result.jpg'),
(303, 75, '072ce87b23004095a552acd9000f53be_9366_result.jpg'),
(304, 75, '95e5f78ddbbc45ddb459acd900108f7b_9366_result.jpg'),
(305, 75, '96d3a43ec12045f5a9e4acd901053e21_9366_result.jpg'),
(306, 75, '564031420c5f47288ccdacd90011fc56_9366_result.jpg'),
(307, 74, '3f3b27a9e637449bb62bad22012228b2_9366_result.jpg'),
(308, 74, '7add33547b4b447ab095ad22012236f3_9366_result.jpg'),
(309, 74, 'a2ed9f1f14f74d72b328ad57010ad41f_9366_result.jpg'),
(310, 74, 'a76a84eef12e4f23bce7ad2201222f78_9366_result.jpg'),
(311, 79, 'Future_Icons_Doubleknit_Pants_Grey_HA1418_41_detail_result.jpg'),
(312, 79, 'eddf292e263242b9bfc0ad990094edcd_9366_result.jpg'),
(313, 79, 'af5dd56d7c774a0988e7ad990094e02c_9366_result.jpg'),
(314, 79, 'ae99f1d922ff41caab10ad99009533b8_9366_result.jpg'),
(315, 78, 'fa39614242f74ee987daadcd010bd384_9366_result.jpg'),
(316, 78, '36a99a0a1f674d72af2cada700e7ee7d_9366_result.jpg'),
(317, 78, '7ac716b9d0e9494d92fbadd1004abc89_9366_result.jpg'),
(318, 78, '4e5494ef511340e6adb8add1004aeab4_9366_result.jpg'),
(319, 77, '2427596cb8044dcc85c0ada700e87a88_9366_result.jpg'),
(320, 77, 'c0a0ec9957f4457699aeadd10049c396_9366_result.jpg'),
(321, 77, 'de51cf4e241742ad9530ada700e7da79_9366_result.jpg'),
(322, 77, 'd574af1a8bc64a8a9011ada700e80280_9366_result.jpg'),
(323, 82, '47893f6fa00a44c3a2b2acfa014f3be4_9366_result.jpg'),
(324, 82, '847494454efc454c8f0aacfa014f4467_9366_result.jpg'),
(325, 82, 'adidas_Sportswear_Future_Icons_Logo_Graphic_Shorts_Grey_GR4109_41_detail_result.jpg'),
(326, 82, 'adidas_Sportswear_Future_Icons_Logo_Graphic_Shorts_Grey_GR4109_01_laydown_result.jpg'),
(327, 81, '1af4f402afea4ac58458add7004f2bb6_9366_result.jpg'),
(328, 81, '4a7e0c4fb7744a60ae91add400c16670_9366_result.jpg'),
(329, 81, '9fc649fa669445d3972eadd400c17ff2_9366_result.jpg'),
(330, 81, 'b8226ada55624b9084a6ada800c36741_9366_result.jpg'),
(331, 80, '2d664aeca1f74ff48b78adfd01288a14_9366_result.jpg'),
(332, 80, '80b2a94124924f1aab51adfd012870f1_9366_result.jpg'),
(333, 80, 'cca56c5d6c89409e94ecadfd012878f9_9366_result.jpg'),
(334, 80, 'd19823052a2743d09117adfd012880d2_9366_result.jpg'),
(335, 85, 'chpeu_217062_kk001_full_back_result.jpg'),
(336, 85, 'chpeu_217062_kk001_full_crop_result.jpg'),
(337, 85, 'chpeu_217062_kk001_full_front_result.jpg'),
(338, 85, 'chpeu_217062_kk001_full_result.jpg'),
(339, 84, 'chpeu_217179_bs538_full_result.jpg'),
(340, 84, 'chpeu_217179_bs538_full_front_result.jpg'),
(341, 84, 'chpeu_217179_bs538_full_crop_result.jpg'),
(342, 84, 'chpeu_217179_bs538_full_back_result.jpg'),
(343, 83, 'chpeu_217444_em021_full_result.jpg'),
(344, 83, 'chpeu_217444_em021_full_front_result.jpg'),
(345, 83, 'chpeu_217444_em021_full_crop_result.jpg'),
(346, 83, 'chpeu_217444_em021_full_back_result.jpg'),
(347, 88, 'chpeu_217431_kk001_full_result.jpg'),
(348, 88, 'chpeu_217431_kk001_full_front_result.jpg'),
(349, 88, 'chpeu_217431_kk001_full_crop_result.jpg'),
(350, 88, 'chpeu_217431_kk001_full_back_result.jpg'),
(351, 87, 'chpeu_217236_bs501_full_front_result.jpg'),
(352, 87, 'chpeu_217236_bs501_full_result.jpg'),
(353, 87, 'chpeu_217236_bs501_full_crop_result.jpg'),
(354, 87, 'chpeu_217236_bs501_full_back_result.jpg'),
(355, 86, 'chpeu_217236_bs501_full_result.jpg'),
(356, 86, 'chpeu_217283_kk001_full_back_result.jpg'),
(357, 86, 'chpeu_217283_kk001_full_crop_result.jpg'),
(358, 86, 'chpeu_217283_kk001_full_front_result.jpg'),
(359, 91, 'WD4901_GY8_A1.jpg'),
(360, 91, 'WD4901_GY8_A2.jpg'),
(361, 91, 'WD4901_GY8_BK.jpg'),
(362, 91, 'WD4901_GY8_FR.jpg'),
(363, 90, 'WPR10_KBK_A1.jpg'),
(364, 90, 'WPR10_KBK_A2.jpg'),
(365, 90, 'WPR10_KBK_BK.jpg'),
(366, 90, 'WPR10_KBK_FR.jpg'),
(367, 89, 'WP702_BK_A1.jpg'),
(368, 89, 'WP702_BK_A2.jpg'),
(369, 89, 'WP702_BK_BK.jpg'),
(370, 89, 'WP702_BK_FR.jpg'),
(371, 94, 'DU218_SIWR_A1.jpg'),
(372, 94, 'DU218_SIWR_A2.jpg'),
(373, 94, 'DU218_SIWR_BK.jpg'),
(374, 94, 'DU218_SIWR_FR.jpg'),
(375, 93, 'DD219_SIWR_A3.jpg'),
(376, 93, 'DD219_SIWR_BK (1).jpg'),
(377, 93, 'DD219_SIWR_BK.jpg'),
(378, 93, 'DD219_SIWR_FR.jpg'),
(379, 92, 'WPG100_NB_A1.jpg'),
(380, 92, 'WPG100_NB_A2.jpg'),
(381, 92, 'WPG100_NB_BK.jpg'),
(382, 92, 'WPG100_NB_FR.jpg'),
(383, 97, '42283_CH_A1.jpg'),
(384, 97, '42283_CH_A2.jpg'),
(385, 97, '42283_CH_BK.jpg'),
(386, 97, '42283_CH_FR.jpg'),
(391, 96, 'SR620_GA_A1.jpg'),
(392, 96, 'SR620_GA_A2.jpg'),
(393, 96, 'SR620_GA_BK.jpg'),
(394, 96, 'SR620_GA_FR.jpg'),
(395, 95, 'SR607_DS_A1.jpg'),
(396, 95, 'SR607_DS_A2.jpg'),
(397, 95, 'SR607_DS_BK.jpg'),
(398, 95, 'SR607_DS_FR.jpg'),
(399, 100, 'cfc2628d-4be5-434a-9bc5-36a31fd3d659_result.jpg'),
(400, 100, 'c1e5c0da-bcc6-46c4-a992-8d208a5d1f6f_result.jpg'),
(401, 100, 'acg-smith-summit-cargo-trousers-xfccrl_result.jpg'),
(402, 100, '94d9cc5f-6a6e-4c07-9f11-a0f4c6011aff_result.jpg'),
(403, 99, 'b421d495-3971-49d7-b113-09e91213990e_result.jpg'),
(404, 99, '7232e38e-250c-423c-aff6-aa4e7e18dfee_result.jpg'),
(405, 99, 'a647e3ce-c0ec-4f7c-915e-961a00718aab_result.jpg'),
(406, 99, '2d987624-b6a6-4e53-a73e-0897d7fc2af3_result.jpg'),
(407, 98, '29bcbb78-fcea-4efd-a912-eabed9c956e3_result.jpg'),
(408, 98, '34d75432-a6a2-4ca2-86d0-52dd55aadfe3_result.jpg'),
(409, 98, '38099420-e073-4696-af5d-175aebf66dfe_result.jpg'),
(410, 98, 'jordan-flight-heritage-cargo-trousers-sgLxPc (1)_result.jpg'),
(411, 103, '0c968896-c266-4523-84ee-c4d6db1cfbcc_result.jpg'),
(412, 103, 'aec8cd51-9cf6-45d2-a5c6-015e8d04d0ac_result.jpg'),
(413, 103, 'da2ec0e0-e13d-4ebe-9109-b72181259c7a_result.jpg'),
(414, 103, '65c3fc8e-7917-424c-bfce-1f026fa3350a_result.jpg'),
(415, 102, 'e1bb2c10-af57-4548-bcb2-ccca6f95fcba_result.jpg'),
(416, 102, '12433c41-8d2c-4599-985a-b2a181ff6a64_result.jpg'),
(417, 102, '90fc6bdf-f11e-4e56-957f-ae1598f78afc_result.jpg'),
(418, 102, '1d42bc6b-a3f3-4242-aac2-4cbc686a4c93_result.jpg'),
(423, 101, 'f51f80be-fd9b-4f14-9776-c854c1a7b103_result.jpg'),
(424, 101, 'dri-fit-challenger-woven-running-trousers-xv3kZX (1)_result.jpg'),
(425, 101, '55b6ce61-ad01-4698-ae87-e8d68e81a44b_result.jpg'),
(426, 101, '5eb7f30f-80e1-48c5-ae0d-d8e131432979_result.jpg'),
(427, 106, 'b471b949-60f1-45e8-b415-fabc8ff27546_result.jpg'),
(428, 106, 'dri-fit-dna-basketball-shorts-cXRgSQ (1)_result.jpg'),
(429, 106, 'dri-fit-dna-basketball-shorts-cXRgSQ (2)_result.jpg'),
(430, 106, 'e2db2006-c701-4aab-b089-2d2f132a00cf_result.jpg'),
(431, 105, '44757b2d-d025-42f0-b3d9-bbc8eb76fbb6_result.jpg'),
(432, 105, 'a981a10e-df4f-4839-b24d-94db32025f3a_result.jpg'),
(433, 105, 'air-french-terry-shorts-WF9kZN_result.jpg'),
(434, 105, '970d93b0-032b-4162-b4bc-6c1c9b28b404_result.jpg'),
(435, 104, 'jordan-essentials-diamond-mesh-shorts-5bskxq_result.jpg'),
(436, 104, '1ba2199f-6dea-47cd-8eee-c3831076628b_result.jpg'),
(437, 104, 'jordan-essentials-diamond-mesh-shorts-5bskxq (1)_result.jpg'),
(438, 104, '32125200-4493-4c0b-9c19-e0c67290dbbc_result.jpg'),
(439, 109, '116523_BLAC_1_900x_result.jpg'),
(440, 109, '116523_BLAC_3_900x_result.jpg'),
(441, 109, '116523_BLAC_4_900x_result.jpg'),
(442, 109, '116523_BLAC_5_900x_result.jpg'),
(443, 108, '116546_BLAC_1_169ad597-90ec-4e64-8b4b-7a6ff3baf702_1728x_result.jpg'),
(444, 108, '116546_BLAC_6_1728x_result.jpg'),
(445, 108, '116546_BLAC_7_1728x_result.jpg'),
(446, 108, '116546_BLAC_8_1728x_result.jpg'),
(447, 107, '116524_OLIV_2_1728x_result.jpg'),
(448, 107, '118458_BROW_3_6510a43e-3f0e-447c-a3e0-b7ff22279b5a_1728x_result.jpg'),
(449, 107, '118458_BROW_4_1728x_result.jpg'),
(450, 107, '118458_BROW_5_3a527f8a-207b-463b-9001-e01a5c8356d7_1728x_result.jpg'),
(451, 112, 'stussy-world-tour-trackpant-solid-flight-green-mens-pants_1_result.jpg'),
(452, 112, 'stussy-world-tour-trackpant-solid-flight-green-mens-pants_3_result.jpg'),
(453, 112, 'stussy-world-tour-trackpant-solid-flight-green-mens-pants_4_result.jpg'),
(454, 112, 'stussy-world-tour-trackpant-solid-flight-green-mens-pants_2_result.jpg'),
(455, 111, '116481-1032_04_result.jpg'),
(456, 111, '116481-1032_06_result.jpg'),
(457, 111, '116481-1032_04_result.jpg'),
(458, 111, '116481-1032_02_result.jpg'),
(459, 110, 'mens-pants-jeans-stussy-stc3bcssy-nike-nrg-br-fleece-pant-dark-grey-heather_1_result.jpg'),
(460, 110, 'mens-pants-jeans-stussy-stc3bcssy-nike-nrg-br-fleece-pant-dark-grey-heather_2_result.jpg'),
(461, 110, 'mens-pants-jeans-stussy-stc3bcssy-nike-nrg-br-fleece-pant-dark-grey-heather_3_result.jpg'),
(462, 110, 'mens-pants-jeans-stussy-stc3bcssy-nike-nrg-br-fleece-pant-dark-grey-heather_2_result.jpg'),
(463, 115, '20211012-IMG_0599_003f1a49-f820-4d79-8f22-a4bd83810e0e_2048x_result.jpg'),
(464, 115, '20211012-IMG_0630_2048x_result.jpg'),
(465, 115, '20211012-IMG_0635_2048x_result.jpg'),
(466, 115, '20211012-IMG_0639_2048x_result.jpg'),
(467, 114, '20211027-IMG_0431_691307b0-661f-4b8d-a7e4-6dd1b304146a_2048x_result.jpg'),
(468, 114, '20211027-IMG_0453_2048x_result.jpg'),
(469, 114, '20211027-IMG_0464_2048x_result.jpg'),
(470, 114, '20211027-IMG_0468_2048x_result.jpg'),
(471, 113, '20220118-DANIEL180122-247_2048x_result.jpg'),
(472, 113, '20220118-DANIEL180122-251_2048x_result.jpg'),
(473, 113, '20220118-DANIEL180122-258_2048x_result.jpg'),
(474, 113, '20220118-DANIEL180122-259_2048x_result.jpg'),
(475, 118, '4391424505_1_1_1.jpg'),
(476, 118, '4391424505_2_3_1.jpg'),
(477, 118, '4391424505_2_4_1.jpg'),
(478, 118, '4391424505_2_1_1.jpg'),
(479, 117, '1538497800_1_1_1.jpg'),
(480, 117, '1538497800_2_2_1.jpg'),
(481, 117, '1538497800_2_3_1.jpg'),
(482, 117, '1538497800_2_4_1.jpg'),
(483, 116, '9621702800_1_1_1.jpg'),
(484, 116, '9621702800_2_2_1.jpg'),
(485, 116, '9621702800_2_3_1.jpg'),
(486, 116, '9621702800_2_4_1.jpg'),
(487, 121, '4391418800_1_1_1.jpg'),
(488, 121, '4391418800_2_3_1.jpg'),
(489, 121, '4391418800_2_1_1.jpg'),
(490, 121, '4391418800_2_2_1.jpg'),
(491, 120, '5584452827_1_1_1.jpg'),
(492, 120, '5584452827_2_1_1.jpg'),
(493, 120, '5584452827_2_2_1.jpg'),
(494, 120, '5584452827_2_3_1.jpg'),
(495, 119, '6688494400_1_1_1.jpg'),
(496, 119, '6688494400_2_1_1.jpg'),
(497, 119, '6688494400_2_2_1.jpg'),
(498, 119, '6688494400_2_4_1.jpg'),
(499, 124, '4432425104_1_1_1.jpg'),
(500, 124, '4432425104_2_2_1.jpg'),
(501, 124, '4432425104_2_3_1.jpg'),
(502, 124, '4432425104_2_4_1.jpg'),
(503, 123, '5070681505_2_3_1.jpg'),
(504, 123, '5070681505_2_2_1.jpg'),
(505, 123, '5070681505_2_1_1.jpg'),
(506, 123, '5070681505_1_1_1.jpg'),
(507, 122, '0761407837_1_1_1.jpg'),
(508, 122, '0761407837_2_2_1.jpg'),
(509, 122, '0761407837_2_3_1.jpg'),
(510, 122, '0761407837_2_5_1.jpg'),
(511, 127, 'bd26b91a138f43ba8cb0addf00075e2c_9366_result.jpg'),
(512, 127, 'b3432549f9a54a11bb57addf0008d858_9366_result.jpg'),
(513, 127, 'b2e16f4689cc4707b6c6addf000913df_9366_result.jpg'),
(514, 127, '2156e9ff614e42ff94a8ad8001111ae4_9366_result.jpg'),
(515, 126, 'bbf8a525b6bf47c38ccfadd001473f48_9366_result.jpg'),
(516, 126, '12441ea763b5416b9a12add00148a489_9366_result.jpg'),
(517, 126, '57d22d2a0501457fa63dadd00148e301_9366_result.jpg'),
(518, 126, '10e66f1e4aca464690acade50041b27d_9366_result.jpg'),
(519, 125, '8e788ffd6c1b47cd8c86ad9f010f9ac5_9366_result.jpg'),
(520, 125, '9e247abed8f44bc9a5e9ad9f010f89b4_9366_result.jpg'),
(521, 125, '95a131c570044a729c13ad9f010f7f26_9366_result.jpg'),
(522, 125, 'c698ab8268274ba7b0f0adc501173e4e_9366_result.jpg'),
(523, 130, '7add2b6152894325b9bcad240166f24d_9366_result.jpg'),
(524, 130, '8d08fec071dd47329ebcad240166eb81_9366_result.jpg'),
(525, 130, 'f054c9d032c14349b97ead240166e4db_9366_result.jpg'),
(526, 130, 'a2ef0b24246548fa9968ad2a00786981_9366_result.jpg'),
(527, 129, '791f465b5f3445fda1f3ad8e00b63a9a_9366_result.jpg'),
(528, 129, 'ff0c632fa2d94443b5f7ad8e00b620ab_9366_result.jpg'),
(529, 129, '26d51f597a4e4108ae84ad8e00b62cb7_9366_result.jpg'),
(530, 129, '3f82cf2041d64bdeb22ead8e00b6c8d1_9366_result.jpg'),
(531, 128, '6ff9c18399974edcbc82ae2b005e07db_9366_result.jpg'),
(532, 128, '36f7274ab2bf4db7882dae2b005e1039_9366_result.jpg'),
(533, 128, '4617b729db5942269780ae2b005e3666_9366_result.jpg'),
(534, 128, '6e60c71b3741429d9039ae2b002282e5_9366_result.jpg'),
(535, 133, '0166fb590a8a4d0b8774adb201154197_9366_result.jpg'),
(536, 133, '793ce77418b94db28918adb2011551e2_9366_result.jpg'),
(537, 133, '039635e4181b4b7f9b85adb201153090_9366_result.jpg'),
(538, 133, 'be80c59f7d194a50b9e4adb20115a772_9366_result.jpg'),
(539, 132, '4049f4748cd942daac8ead280086af2e_9366_result.jpg'),
(540, 132, 'd075bac96d8f4218959cad280086a13d_9366_result.jpg'),
(541, 132, '06a9bf5c61334e8791a8ad280086a7dc_9366_result.jpg'),
(542, 132, '9b4392cfda5349158904ad2c012d1193_9366_result.jpg'),
(543, 131, '9c089b4c978047deb19ead5e00d76cd1_9366_result.jpg'),
(544, 131, '2193fa8fe8bb4f50b476ad5e00d76437_9366_result.jpg'),
(545, 131, 'e61137516fef4dfca526ad5e00d75d70_9366_result.jpg'),
(546, 131, '3741426be80b4928b21bad5e00555283_9366_result.jpg'),
(547, 136, '8a6a054b688947ff93b3ac310164ebd4_9366_result.jpg'),
(548, 136, '00601d456f674174b450ac310164fa33_9366_result.jpg'),
(549, 136, '674a44a6511f4e949ac6ac310164de06_9366_result.jpg'),
(550, 136, 'da5f83bf626245548e24ac3200fbc5cd_9366_result.jpg'),
(551, 135, '7d865e5bc6114b18af6facbe01318bd2_9366_result.jpg'),
(552, 135, 'bef257f516eb442cacacacbe01318548_9366_result.jpg'),
(553, 135, 'eb8e972b26b04c748765acbe01317e7c_9366_result.jpg'),
(554, 135, '64bfcf9bce934bc7b756ac9400ef57cd_9366_result.jpg'),
(555, 134, '540a47aef9cf4b2fb375ad0c0113e4d6_9366_result.jpg'),
(556, 134, 'd824429be9f04a7d9e8aad0c0113ece9_9366_result.jpg'),
(557, 134, 'c7c672cedd534302b5e2ad0c0113df9e_9366_result.jpg'),
(558, 134, '47a83dd44d53401cbffbad0c01140b6c_9366_result.jpg'),
(559, 139, 'chpeu_114930_bs148_full_back_result.jpg'),
(560, 139, 'chpeu_114930_bs148_full_front_result.jpg'),
(561, 139, 'chpeu_114930_bs148_full_crop_result.jpg'),
(562, 139, 'chpeu_114930_bs148_full_result.jpg'),
(563, 138, 'chpeu_115109_kk001_full_back_result.jpg'),
(564, 138, 'chpeu_115109_kk001_full_crop_result.jpg'),
(565, 138, 'chpeu_115109_kk001_full_front_result.jpg'),
(566, 138, 'chpeu_115109_kk001_full_result.jpg'),
(567, 137, 'chpeu_114886_ww001_full_back_result.jpg'),
(568, 137, 'chpeu_114886_ww001_full_crop_result.jpg'),
(569, 137, 'chpeu_114886_ww001_full_front_result.jpg'),
(570, 137, 'chpeu_114886_ww001_full_result.jpg'),
(571, 142, 'chpeu_114756_kl001_full_back_result.jpg'),
(572, 142, 'chpeu_114756_kl001_full_front_result.jpg'),
(573, 142, 'chpeu_114756_kl001_full_crop_result.jpg'),
(574, 142, 'chpeu_114756_kl001_full_result.jpg'),
(575, 141, 'chpeu_114920_ps092_full_back_result.jpg'),
(576, 141, 'chpeu_114920_ps092_full_front_result.jpg'),
(577, 141, 'chpeu_114920_ps092_full_crop_result.jpg'),
(578, 141, 'chpeu_114920_ps092_full_result.jpg'),
(579, 140, 'chpeu_114962_ys015_full_back_result.jpg'),
(580, 140, 'chpeu_114962_ys015_full_front_result.jpg'),
(581, 140, 'chpeu_114962_ys015_full_crop_result.jpg'),
(582, 140, 'chpeu_114962_ys015_full_result.jpg'),
(583, 145, 'chpeu_113039_kk001_full_back_result.jpg'),
(584, 145, 'chpeu_113039_kk001_full_front_result.jpg'),
(585, 145, 'chpeu_113039_kk001_full_crop_result.jpg'),
(586, 145, 'chpeu_113039_kk001_full_result.jpg'),
(587, 144, 'chpeu_114170_ps032_full_back_result.jpg'),
(588, 144, 'chpeu_114170_ps032_full_front_result.jpg'),
(589, 144, 'chpeu_114170_ps032_full_crop_result.jpg'),
(590, 144, 'chpeu_114170_ps032_full_result.jpg'),
(591, 143, 'chpeu_114597_kk001_full_back_result.jpg'),
(592, 143, 'chpeu_114597_kk001_full_front_result.jpg'),
(593, 143, 'chpeu_114597_kk001_full_crop_result.jpg'),
(594, 143, 'chpeu_114597_kk001_full_result.jpg'),
(596, 148, 'chpeu_114922_vs004_full_back_result.jpg'),
(597, 148, 'chpeu_114922_vs004_full_front_result.jpg'),
(598, 148, 'chpeu_114922_vs004_full_crop_result.jpg'),
(599, 148, 'chpeu_114922_vs004_full_crop_result.jpg'),
(600, 148, 'chpeu_114758_wl001_full_back_result.jpg'),
(601, 148, 'chpeu_114758_wl001_full_front_result.jpg'),
(602, 148, 'chpeu_114758_wl001_full_crop_result.jpg'),
(603, 148, 'chpeu_114758_wl001_full_result.jpg'),
(604, 146, 'chpeu_112692_ww001_full_back_result.jpg'),
(605, 146, 'chpeu_112692_ww001_full_front_result.jpg'),
(606, 146, 'chpeu_112692_ww001_full_crop_result.jpg'),
(607, 146, 'chpeu_112692_ww001_full_result.jpg'),
(608, 151, 'FS450_AN1_A1.jpg'),
(609, 151, 'FS450_AN1_A3.jpg'),
(610, 151, 'FS450_AN1_BK.jpg'),
(611, 151, 'FS450_AN1_FR.jpg'),
(619, 150, 'FSR14_G2M_A1.jpg'),
(620, 150, 'FSR14_G2M_A2.jpg'),
(621, 150, 'FSR14_G2M_BK.jpg'),
(622, 150, 'FSR14_G2M_FR.jpg'),
(623, 149, 'FSR31_BK_A1.jpg'),
(624, 149, 'FSR31_BK_A2.jpg'),
(625, 149, 'FSR31_BK_BK.jpg'),
(626, 149, 'FSR31_BK_FR.jpg'),
(627, 153, 'FWW22_F2F_A1.jpg'),
(628, 153, 'FWW22_F2F_A2.jpg'),
(629, 153, 'FWW22_F2F_BK.jpg'),
(630, 153, 'FWW22_F2F_FR.jpg'),
(631, 154, 'FW403_B2H_A1.jpg'),
(632, 154, 'FW403_B2H_A2.jpg'),
(633, 154, 'FW403_B2H_BK.jpg'),
(634, 154, 'FW403_B2H_FR.jpg'),
(635, 152, 'SWF002_HG_A1.jpg'),
(636, 152, 'SWF002_HG_A2.jpg'),
(637, 152, 'SWF002_HG_BK.jpg'),
(638, 152, 'SWF002_HG_FR.jpg'),
(639, 157, 'FJR01_BM2_A1.jpg'),
(640, 157, 'FJR01_BM2_A2.jpg'),
(641, 157, 'FJR01_BM2_BK.jpg'),
(642, 157, 'FJR01_BM2_FR.jpg'),
(643, 156, 'FJ076_YP2_A1.jpg'),
(644, 156, 'FJ076_YP2_A2.jpg'),
(645, 156, 'FJ076_YP2_BK.jpg'),
(646, 156, 'FJ076_YP2_FR.jpg'),
(647, 155, 'FJ077_BD_A1.jpg'),
(648, 155, 'FJ077_BD_A2.jpg'),
(649, 155, 'FJ077_BD_BK.jpg'),
(650, 155, 'FJ077_BD_FR.jpg'),
(651, 160, '65cc06d1-068a-444f-a45a-2a906272daf9_result.jpg'),
(652, 160, '6541b3b1-0363-4072-a9b1-4a871ccfd9c1_result.jpg'),
(653, 160, '6238a739-7e1a-49cb-a02f-2fc2cadee6aa_result.jpg'),
(654, 160, 'f3c22e3b-146f-445f-8946-7686661163c5_result.jpg'),
(655, 159, '160088ef-6c91-4aae-90ba-7aadf07ab65b_result.jpg'),
(656, 159, 'a5594df9-b981-441d-b15f-b7cef71cdf37_result.jpg'),
(657, 159, 'c8a09939-e02d-43e2-baf1-8a6ad122819e_result.jpg'),
(658, 159, 'f4446bc4-b6e3-4fa8-b329-6befc317f15a_result.jpg'),
(659, 158, 'a8315497-7ddd-4383-b5db-562e8a766977_result.jpg'),
(660, 158, 'dri-fit-race-running-vest-mbl5SL (1)_result.jpg'),
(661, 158, 'dri-fit-race-running-vest-mbl5SL_result.jpg'),
(662, 158, 'fc5caaf4-5974-49a0-9626-cdfa34ad39d9_result.jpg'),
(663, 163, '7744d53a-dc01-46df-8e12-b76d52a90f50_result.jpg'),
(664, 163, 'a6df975d-2432-4766-b222-2949314ef097_result.jpg'),
(665, 163, 'sportswear-icon-clash-fleece-pullover-hoodie-9k0Rcp_result.jpg'),
(666, 163, 'ba62a9ce-c87b-43ea-9e59-b31ecc255a6f_result.jpg'),
(667, 162, '09a02c5b-8478-4cf9-8c67-98062ed81e79_result.jpg'),
(668, 162, 'dri-fit-swoosh-fly-standard-issue-pullover-basketball-hoodie-qDjG57 (1)_result.jpg'),
(669, 162, '6c52d23c-0ff5-4e71-8460-e9b3e98d51bd_result.jpg'),
(670, 162, 'dri-fit-swoosh-fly-standard-issue-pullover-basketball-hoodie-qDjG57_result.jpg'),
(671, 161, 'b3b2df56-eec1-42aa-81aa-772d6b3b632e_result.jpg'),
(672, 161, 'dri-fit-fleece-cropped-training-hoodie-Lw3tq6 (1)_result.jpg'),
(673, 161, 'dri-fit-fleece-cropped-training-hoodie-Lw3tq6 (2)_result.jpg'),
(674, 161, 'dri-fit-fleece-cropped-training-hoodie-Lw3tq6_result.jpg'),
(675, 166, '1fe574f5-9aa8-4f59-b5dc-8720be5bbbaf_result.jpg'),
(676, 166, '78a9b0ce-9df3-41b2-841e-464d3a8adda5_result.jpg'),
(677, 166, '18a106dd-6833-4190-9bea-6178780f5ffe_result.jpg'),
(678, 166, '969067a6-1e3c-4788-8fbd-6296f84c42d0_result.jpg'),
(679, 165, '8dabc0d9-9938-42c6-9964-5dcc131c59c5_result.jpg'),
(680, 165, '33e5a233-4127-49b9-b813-d6c3d84d578c_result.jpg'),
(681, 165, '1305b985-cecd-47ba-b010-f8fd9dca9eb3_result.jpg'),
(682, 165, 'e45d2080-3952-4247-ab28-0472cc6148b4_result.jpg'),
(683, 164, 'air-running-jacket-PjPpR5 (1)_result.jpg'),
(684, 164, 'air-running-jacket-PjPpR5 (2)_result.jpg'),
(685, 164, 'air-running-jacket-PjPpR5_result.jpg'),
(686, 164, 'e6a1919b-1ed6-4440-bce5-4a853dc82c52_result.jpg'),
(687, 168, '9bcdbeb2-ae9e-4983-a6ff-d247f43389ce_result.jpg'),
(688, 168, '52d41414-41ce-48e6-9b3c-23bc9b9e398e_result.jpg'),
(689, 168, 'df30cde0-a351-4e36-bfa7-fad61c85d7b5_result.jpg'),
(690, 168, 'yoga-luxe-air-fleece-crew-GCBmQp_result.jpg'),
(691, 167, '2ecfcdca-ce12-4321-9fbf-ea1c8f0fb377_result.jpg'),
(692, 167, '37956fa2-d56e-4e58-874f-1a6b74e903a6_result.jpg'),
(693, 167, 'a9fda90f-2c81-42c2-9d9a-36678b32f5b3_result.jpg'),
(694, 167, 'de40b1c2-d16d-465e-af15-57fcb997cd80_result.jpg'),
(695, 168, '76fcd0b6-88ce-47e0-90d1-601b614b415e_result.jpg'),
(696, 168, 'a2cc926d-baf3-4e0f-9461-f27e2c832b61_result.jpg'),
(697, 168, '76fcd0b6-88ce-47e0-90d1-601b614b415e_result.jpg'),
(698, 168, 'sportswear-fleece-sweatshirt-t42cq7_result.jpg'),
(699, 172, '6050153506_1_1_1.jpg'),
(700, 172, '6050153506_2_1_1.jpg'),
(701, 172, '6050153506_2_2_1.jpg'),
(702, 172, '6050153506_2_4_1.jpg'),
(703, 171, '4424159250_1_1_1.jpg'),
(704, 171, '4424159710_2_1_1.jpg'),
(705, 171, '4424159710_2_2_1.jpg'),
(706, 171, '4424159710_2_4_1.jpg'),
(707, 170, '0858122066_1_1_1.jpg'),
(708, 170, '0858122066_2_1_1.jpg'),
(709, 170, '0858122066_2_2_1.jpg'),
(710, 170, '0858122066_2_3_1.jpg'),
(711, 175, '0264016104_1_1_1.jpg'),
(712, 175, '0264016104_2_1_1.jpg'),
(713, 175, '0264016104_2_4_1.jpg'),
(714, 175, '0264016104_2_11_1.jpg'),
(715, 174, '5643324400_1_1_1.jpg'),
(716, 174, '5643324400_2_1_1.jpg'),
(717, 174, '5643324400_2_2_1.jpg'),
(718, 174, '5643324400_2_4_1.jpg'),
(719, 173, '5643304803_1_1_1.jpg'),
(720, 173, '5643304803_2_1_1.jpg'),
(721, 173, '5643304803_2_2_1.jpg'),
(722, 173, '5643304803_2_3_1.jpg'),
(727, 178, '3427730800_1_1_1.jpg'),
(728, 178, '3427730800_2_3_1.jpg'),
(729, 178, '3427730800_2_4_1.jpg'),
(730, 178, '3427730800_15_1_1.jpg'),
(731, 177, '2296136704_1_1_1.jpg'),
(732, 177, '2296136704_2_1_1.jpg'),
(733, 177, '2296136704_2_2_1.jpg'),
(734, 177, '2296136704_2_5_1.jpg'),
(735, 176, '4877042251_2_1_1.jpg'),
(736, 176, '4877042251_2_2_1.jpg'),
(737, 176, '4877042251_2_3_1.jpg'),
(738, 176, '4877042251_1_1_1.jpg'),
(739, 181, '2298013800_1_1_1.jpg'),
(740, 181, '2298013800_2_1_1.jpg'),
(741, 181, '2298013800_2_2_1.jpg'),
(742, 181, '2298013800_2_4_1.jpg'),
(743, 180, '5644037251_1_1_1.jpg'),
(744, 180, '5644037251_2_1_1.jpg'),
(745, 180, '5644037251_2_2_1.jpg'),
(746, 180, '5644037251_2_3_1.jpg'),
(747, 179, '0264310620_1_1_1.jpg'),
(748, 179, '0264310620_2_2_1.jpg'),
(749, 179, '0264310620_2_1_1.jpg'),
(750, 179, '0264310620_2_4_1.jpg'),
(751, 184, '33b152eeb55646009e8bad9c01014efb_9366_result.jpg'),
(752, 184, '13429b1094c04346a0dead9c01015d75_9366_result.jpg'),
(753, 184, 'e2a8af4d7bd640639d2aad9c01016d4a_9366_result.jpg'),
(754, 184, '881c8037196442229166ad9c010141be_9366_result.jpg'),
(756, 183, '88d871e872234c3c8e92ad92010369ff_9366_result.jpg'),
(757, 183, 'cadb578f47de4974840aad9201037669_9366_result.jpg'),
(758, 183, 'a3326ae19e104a12b167ad9201035e9c_9366_result.jpg'),
(759, 183, '76ec911b696c4326aa78ad920103bb4d_9366_result.jpg'),
(760, 182, '27ae8b8512c741f79cbfad4300abc112_9366_result.jpg'),
(761, 182, '266f7776ad5f4fb7b332ac6300f77de2_9366_result.jpg'),
(762, 182, 'b1b2ecaff3854cca94ffac31016454a5_9366_result.jpg'),
(763, 182, 'd378055b1cf84a18a338ac310164468f_9366_result.jpg'),
(764, 187, '344704ea1c1442d2a23dad5e00fd38c3_9366_result.jpg'),
(765, 187, 'a05900e7abd34d4883cdad73011edeaa_9366_result.jpg'),
(766, 187, '205fe2031e5a45f0be71ad5e00fd40e2_9366_result.jpg'),
(767, 187, '8d53ec8a422d47ef8b57ad5e00fd3105_9366_result.jpg'),
(768, 186, '0cfa7fffae7d4ce99e7cad2700920e35_9366_result.jpg'),
(769, 186, '089dc155dd804de3af0aad2700923196_9366_result.jpg'),
(770, 186, 'a05900e7abd34d4883cdad73011edeaa_9366_result.jpg'),
(771, 186, 'ec3b47ce758844edbc74ad27009226f2_9366_result.jpg'),
(772, 185, '2e0a7f6ae6394397ae95ae4400576209_9366_result.jpg'),
(773, 185, '8385145fd1ec441fb622ae4400535553_9366_result.jpg'),
(774, 185, 'a1961d246fd24da7bd7eae4400534295_9366_result.jpg'),
(775, 185, 'cad614f2a1c14145947bae4400534ba7_9366_result.jpg'),
(776, 190, '8cf515c6b68b4cfab83badc30038650f_9366_result.jpg'),
(777, 190, '65dcfed1397c4228b55fadbb01661bab_9366_result.jpg'),
(778, 190, '384eba61443d46bb818eadbb01665367_9366_result.jpg'),
(779, 190, 'a46c17709e7c432bae60adbb01653347_9366_result.jpg'),
(780, 189, '8f245b355ecf40559f24adf800d5de88_9366_result.jpg'),
(781, 189, 'c9146d16a3ed486495c8adf800d6145a_9366_result.jpg'),
(782, 189, 'f9bbcca5527c4b0bbdc7adf800d5e650_9366_result.jpg'),
(783, 189, 'ff532ecf77e943e2898eadf800d5edcb_9366_result.jpg'),
(784, 188, '602fd757f0c5417c9125adbb0179465f_9366_result.jpg'),
(785, 188, 'a46c17709e7c432bae60adbb01653347_9366_result.jpg'),
(786, 188, 'd3a3739883b84cb3a77dadbb0177ee94_9366_result.jpg'),
(787, 188, 'Quan_Bo_Tap_Luyen_7-8_AEROKNIT_Xam_HD1981_42_detail_result.jpg'),
(791, 193, 'a2af680778974c5dbc3aac9300abc77d_9366_result.jpg'),
(792, 193, 'f091b1fcd26945168191ac9300abce14_9366_result.jpg'),
(793, 193, 'd55c21d166ab43b48df5ac9300abc0ed_9366_result.jpg'),
(794, 193, '1feb122145aa4844ba19ac8900f30932_9366_result.jpg'),
(795, 192, '09a086ff8f9b48fa91e8ac2800fac123_9366_result.jpg'),
(796, 192, '589cdc68c7114c01886dac1a00f36fb8_9366_result.jpg'),
(797, 192, 'eefa77cd3fc1403f9f24ac2800fae341_9366_result.jpg'),
(798, 192, 'f056384b229a4358999fac2800f7f2dc_9366_result.jpg'),
(799, 191, '65ddcd37f49d4c51acdbad960107f758_9366_result.jpg'),
(800, 191, '60266de986f54ab4aae9ad9601082631_9366_result.jpg'),
(801, 191, 'a1b9a3d1fecc4534b94ead9601064f9e_9366_result.jpg'),
(802, 191, '77c8325bea3a4231b707ad8e01693a93_9366_result.jpg'),
(803, 196, 'chpeu_114924_em028_full_back_result.jpg'),
(804, 196, 'chpeu_114924_em028_full_crop_result.jpg'),
(805, 196, 'chpeu_114924_em028_full_front_result.jpg'),
(806, 196, 'chpeu_114924_em028_full_result.jpg'),
(807, 195, 'chpeu_114523_kk002_full_back_result.jpg'),
(808, 195, 'chpeu_114523_kk002_full_crop_result.jpg'),
(809, 195, 'chpeu_114523_kk002_full_front_result.jpg'),
(810, 195, 'chpeu_114523_kk002_full_result.jpg'),
(811, 194, 'chpeu_114874_kk001_full_back_result.jpg'),
(812, 194, 'chpeu_114874_kk001_full_crop_result.jpg'),
(813, 194, 'chpeu_114874_kk001_full_front_result.jpg'),
(814, 194, 'chpeu_114874_kk001_full_result.jpg'),
(815, 199, 'chpeu_114944_bs554_full_back_result.jpg'),
(816, 199, 'chpeu_114944_bs554_full_crop_result.jpg'),
(817, 199, 'chpeu_114944_bs554_full_front_result.jpg'),
(818, 199, 'chpeu_114944_bs554_full_result.jpg'),
(819, 198, 'chpeu_114916_ps012_full_back_result.jpg'),
(820, 198, 'chpeu_114916_ps012_full_crop_result.jpg'),
(821, 198, 'chpeu_114916_ps012_full_front_result.jpg'),
(822, 198, 'chpeu_114916_ps012_full_result.jpg'),
(823, 197, 'chpeu_112811_wl001_full_back_result.jpg'),
(824, 197, 'chpeu_112811_wl001_full_crop_result.jpg'),
(825, 197, 'chpeu_112811_wl001_full_front_result.jpg'),
(826, 197, 'chpeu_112811_wl001_full_result.jpg'),
(827, 202, 'FD085_BD_A1.jpg'),
(828, 202, 'FD085_BD_A2.jpg'),
(829, 202, 'FD085_BD_BK.jpg'),
(830, 202, 'FD085_BD_FR.jpg'),
(831, 201, 'SPF001_KBK_A1.jpg'),
(832, 201, 'SPF001_KBK_A3.jpg'),
(833, 201, 'SPF001_KBK_BK.jpg'),
(834, 201, 'SPF001_KBK_FR.jpg'),
(835, 200, 'SPF600_BKX_A1.jpg'),
(836, 200, 'SPF600_BKX_A2.jpg'),
(837, 200, 'SPF600_BKX_BK.jpg'),
(838, 200, 'SPF600_BKX_FR.jpg'),
(839, 205, 'FR147_SNB_BK.jpg'),
(840, 205, 'FR147_SNB_FR.jpg'),
(841, 205, 'FR147_SNB_A2.jpg'),
(842, 205, 'FR147_SNB_A1.jpg'),
(843, 204, 'FPR09_NB_A1.jpg'),
(844, 204, 'FPR09_NB_BK.jpg'),
(845, 204, 'FPR09_NB_FR.jpg'),
(846, 204, 'FPR09_NB_BK.jpg'),
(847, 203, 'FD145_SNB_A1.jpg'),
(848, 203, 'FD145_SNB_A2.jpg'),
(849, 203, 'FD145_SNB_BK.jpg'),
(850, 203, 'FD145_SNB_FR.jpg'),
(851, 208, 'FR146_SNB_A1.jpg'),
(852, 208, 'FR146_SNB_A2.jpg'),
(853, 208, 'FR146_SNB_BK.jpg'),
(854, 208, 'FR146_SNB_FR.jpg'),
(855, 207, 'SRF600_BKX_A1.jpg'),
(856, 207, 'SRF600_BKX_A2.jpg'),
(857, 207, 'SRF600_BKX_BK.jpg'),
(858, 207, 'SRF600_BKX_FR.jpg'),
(859, 206, 'SRF405_BK_A1.jpg'),
(860, 206, 'SRF405_BK_BK.jpg'),
(861, 206, 'SRF405_BK_FR.jpg'),
(862, 206, 'SRF405_BK_BK.jpg'),
(863, 211, '845f431b-2865-4360-9ef2-8d577b4f788d_result.jpg'),
(864, 211, '9179c5a8-4b47-40d5-bcf1-1a7c12c1f9fc_result.jpg'),
(865, 211, 'bcb3f319-ae3a-4bec-a7c2-f57a2d0c313e_result.jpg'),
(866, 211, 'c9020e24-e87b-488a-af65-6b84d384dabb_result.jpg'),
(867, 210, '1981c1b6-a3d8-41cf-9800-1f4f6c7b4289_result.jpg'),
(868, 210, '39947e42-e6a4-409d-8889-76140139d3a0_result.jpg'),
(869, 210, 'b0b1f35e-7cbf-4d27-a327-4020f060c316_result.jpg'),
(870, 210, 'c08d1247-0faa-4db1-8161-175463ea75c7_result.jpg'),
(871, 209, '71cce6bc-c31a-4c9b-806a-619d03c81fb1_result.jpg'),
(872, 209, 'a13e9831-90ce-4137-aba7-bd2c862cda93_result.jpg'),
(873, 209, 'cb459d7a-9925-486b-b64f-6fcb19ee4b19_result.jpg'),
(874, 209, 'jordan-itage-fleece-printed-trousers-kTJg6G_result.jpg'),
(879, 214, '1b4e261c-b223-4bd3-bdc5-1a1c54b4acdc_result.jpg'),
(880, 214, '7936ade2-8364-4162-a695-7178a45c3268_result.jpg'),
(881, 214, '34538ea3-d17f-4e1d-bb05-cfb8bdae9679_result.jpg'),
(882, 214, 'd645fc61-1637-47a3-90cc-decb0a2824c4_result.jpg'),
(883, 213, 'dri-fit-get-fit-7-8-printed-french-terry-training-trousers-04CD8J (1)_result.jpg'),
(884, 213, 'dri-fit-get-fit-7-8-printed-french-terry-training-trousers-04CD8J (4)_result.jpg'),
(885, 213, 'dri-fit-get-fit-7-8-printed-french-terry-training-trousers-04CD8J (3)_result.jpg'),
(886, 213, 'dri-fit-get-fit-7-8-printed-french-terry-training-trousers-04CD8J_result.jpg'),
(887, 212, '438a5256-839f-4a92-b3a1-987c83460a91_result.jpg'),
(888, 212, '77651b64-a3ea-45a9-96b2-ebf5c92acc7e_result.jpg'),
(889, 212, 'b45ee928-0c01-464b-9285-a2c9d9a70cc3_result.jpg'),
(890, 212, 'ee523c7b-931c-4bef-ae07-609baffadc9e_result.jpg'),
(891, 217, '3c591dc2-fe10-4bd1-ad5c-6c15e7766d79_result.jpg'),
(892, 217, 'e4db8c26-6b38-49b9-8abe-f383e279137a_result.jpg'),
(893, 217, 'f5b73dbf-0654-4046-b6ca-6f090de9adde_result.jpg'),
(894, 217, 'sportswear-essential-mid-rise-swoosh-leggings-5d2H80_result.jpg'),
(895, 216, '4ac0c5de-47b0-4f9d-a2d1-d477bd0a735f_result.jpg'),
(896, 216, '9457b9ae-f6f9-4296-888d-04ea31a16123_result.jpg'),
(897, 216, '09648249-1a43-4df6-8bc6-2269228d2a7e_result.jpg'),
(898, 216, 'f24eb022-2509-4eda-9234-19b1b34b016f_result.jpg'),
(899, 215, '6d424280-adac-41d2-8300-fb0a952b91d4_result.jpg'),
(900, 215, '9d13782c-6730-48cf-b526-9657a48a764d_result.jpg'),
(901, 215, '79772ec6-19da-4c37-aecc-47d050c00c69_result.jpg'),
(902, 215, 'd93dda0e-e6ea-45cf-a0be-0c88b1aea5da_result.jpg'),
(903, 220, '8d6f5c8b-d5f2-4544-aeec-6f4e8505b905_result.jpg'),
(904, 220, '148cb953-5b8c-4675-825d-08050188d684_result.jpg'),
(905, 220, '648b4239-4d61-4296-bd88-f427c417d104_result.jpg'),
(906, 220, 'bf223fa9-05e7-4a63-a398-36cbc4ac3e57_result.jpg'),
(907, 219, '1ea02f57-35d9-4065-acc4-ab4fd56ded1e_result.jpg'),
(908, 219, '5b12c816-5a83-43f1-9c2f-6be198762e9f_result.jpg'),
(909, 219, 'b6e93957-7a7e-4398-b06b-849931757755_result.jpg'),
(910, 219, '5b12c816-5a83-43f1-9c2f-6be198762e9f_result.jpg'),
(911, 218, '9c4fdc07-ec48-4d72-909d-2bba6a6a708f_result.jpg'),
(912, 218, '35e7ca1d-0f90-41f3-ac6c-f970a9db3a7e_result.jpg'),
(913, 218, '07479817-eb16-4e67-9a8c-0d03bc2f0d1c_result.jpg'),
(914, 218, 'e509f0a2-0b7b-431f-92dc-ca6652a34ab3_result.jpg'),
(915, 223, '7385448435_1_1_1.jpg'),
(916, 223, '7385448435_2_2_1.jpg'),
(917, 223, '7385448435_2_3_1.jpg'),
(918, 223, '7385448435_2_5_1.jpg'),
(919, 222, '7385464800_1_1_1.jpg'),
(920, 222, '7385464800_2_1_1.jpg'),
(921, 222, '7385464800_2_2_1.jpg'),
(922, 222, '7385464800_2_7_1.jpg'),
(923, 221, '2335007800_1_1_1.jpg'),
(924, 221, '2335007800_2_1_1.jpg'),
(925, 221, '2335007800_2_2_1.jpg'),
(926, 221, '2335007800_6_1_1.jpg'),
(927, 226, '7513045400_1_1_1.jpg'),
(928, 226, '7513045400_2_2_1.jpg'),
(929, 226, '7513045400_2_1_1.jpg'),
(930, 226, '7513045400_2_6_1.jpg'),
(931, 225, '8228023427_2_1_1.jpg'),
(932, 225, '8228023427_2_2_1.jpg'),
(933, 225, '8228023427_2_3_1.jpg'),
(934, 225, '8228023427_2_5_1.jpg'),
(935, 224, '8197030406_1_1_1.jpg'),
(936, 224, '8197030406_2_1_1.jpg'),
(937, 224, '8197030406_2_2_1.jpg'),
(938, 224, '8197030406_2_3_1.jpg'),
(939, 229, '7385496832_1_1_1.jpg'),
(940, 229, '7385496832_2_1_1.jpg'),
(941, 229, '7385496832_2_2_1.jpg'),
(942, 229, '7385496832_6_1_1.jpg'),
(943, 228, '3346136800_1_1_1.jpg'),
(944, 228, '3346136800_2_1_1.jpg'),
(945, 228, '3346136800_2_2_1.jpg'),
(946, 228, '3346136800_2_3_1.jpg'),
(947, 227, '7147027250_1_1_1.jpg'),
(948, 227, '7147027250_2_1_1.jpg'),
(949, 227, '7147027250_2_2_1.jpg'),
(950, 227, '7147027250_2_4_1.jpg'),
(951, 3, '398f35800b454fde93a4ad8d0166998a_9366_result.jpg'),
(952, 3, 'b52fba6f94aa468ea125ad8d0166195d_9366_result.jpg'),
(953, 3, 'c451ab1432e84390b3b3ad8d01665934_9366_result.jpg'),
(954, 3, 'ea47f20a3cde45cc9148ad8d0162baee_9366_result.jpg'),
(955, 3, 'ed29d011d1364ede92a9ad8d01614991_9366_result.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_05_14_112350_create_table_categories', 1),
(3, '2022_05_14_184841_add_category_id_in_products_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `article_categories_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'tên bài viết k dấu cách nhau bới dấu (-)',
  `describes` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `update` datetime DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `article_categories_id`, `name`, `slug`, `describes`, `content`, `created`, `update`, `image`) VALUES
(1, 1, '12 cách làm đẹp theo mùa', '', NULL, '', '2022-05-14 22:25:37', '2022-05-14 22:25:37', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `hot` int(11) NOT NULL COMMENT '1 là sp hót, 0 là sp thường',
  `burned` int(11) NOT NULL COMMENT '1 là sp bán chạy 0 là sp thường',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `hot`, `burned`, `image`, `description`, `category_id`, `brand_id`, `status`, `created_at`) VALUES
(1, 'BIG LOGO ESSENTIALS', 350000, 0, 1, 'abe679414ce04df3bde9ae1401306593_9366.jpg', 'ESSENTIALS BIG LOGO TEE\r\nUPGRADE YOUR ESSENTIALS WITH THIS CLASSIC T-SHIRT.\r\nFreshen up your basics with this t-shirt. Show your love for all things sport with a big adidas Badge of Sport that\'s front and centre. Good thing it\'s designed for everyday wear, because if you\'re anything like us, you\'re going to want to reach for it all the time.', 5, 1, 1, '2022-05-17 19:00:08'),
(2, 'EGAME GT', 350000, 0, 0, '6f37a1246f114c668daaae0a015b7289_9366_result.jpg', 'Egame INSTRUCTIONS\r\nDo not bleach Tumble dry low heat Do not dry clean Touch up with warm iron Machine wash warm\r\nEXTRA CARE INFORMATION\r\nUse mild detergent only\r\nWash with like colors\r\nWash and iron inside out\r\nSPECIFICATIONS\r\nSingle jersey\r\nColor: White', 5, 1, 1, '2022-05-15 17:43:10'),
(3, 'GRAPHIC LOGO SHOWTIME', 500000, 1, 0, '398f35800b454fde93a4ad8d0166998a_9366_result.jpg', 'SHOWTIME LOGO GRAPHIC TEE\r\nGEAR UP FOR THE DAY IN A SOFT COTTON T-SHIRT.\r\nYour muscles are sore, your mind keeps replaying that game-winning move and you can\'t wait to get to the gym tomorrow. Show off your passion for sport in this adidas t-shirt. A logo on the chest reflects it.\r\n\r\nOur cotton products support more sustainable cotton farming.', 5, 1, 1, '2022-05-16 15:29:47'),
(4, 'DAME 8 INNOVATION', 650000, 1, 0, '23b384dfa62e4da389d9adcd017a5fb7_9366_result.jpg', 'DAME 8 INNOVATION HOODIE\r\nA COMFORTABLE HOODIE FOR REPPING DAMIAN LILLARD.\r\nDon\'t be afraid of the big moment. This adidas basketball hoodie comes through in the clutch — just like Damian Lillard. It\'s made with French terry for a soft and cosy feel. The kangaroo pocket stores your phone, keys or wallet. A Dame logo on the chest lets you rep your favourite hoops hero.\r\n\r\nOur cotton products support more sustainable cotton farming.', 6, 1, 1, '2022-05-15 17:43:06'),
(5, 'FUTURE ICONS ADIDAS', 550000, 0, 0, '8390f8a584f74b2ba393ad22011c2cac_9366_result.jpg', 'ADIDAS SPORTSWEAR FUTURE ICONS CAMO GRAPHIC HOODIE\r\nA COSY, EVERYDAY HOODIE WITH A MODERN TAKE ON CAMO.\r\nHow you show up is 100% your call. When you show up in this adidas hoodie, you\'re not just showing up for yourself, you\'re showing up for the planet. It\'s crafted from recycled materials, part of adidas\' commitment to help end plastic waste. Toss on this sweatshirt and join us. The camo print and oversize logo graphic make sure you\'re seen. And the soft French terry build — well, that makes sure you\'re comfortable.', 6, 1, 1, '2022-05-15 17:43:01'),
(6, 'GRAPHIC TREFOIL SERIES', 550000, 1, 0, 'db13b7de24994f30a147ad240035476d_9366_result.jpg', 'GRAPHICS TREFOIL SERIES HOODIE\r\nA SOFT, COTTON HOODIE MADE FOR ALL-DAY COMFORT.\r\nYou know the Trefoil. But do you know its history? Born back in the \'70s, it started as a symbol of sport and spread to become an emblem of creativity and originality all around the world. Wear it with pride on this adidas hoodie. Keep things chill and cosy while you\'re at it.\r\n\r\nBy buying cotton products from us, you\'re supporting more sustainable cotton farming.', 6, 1, 1, '2022-05-15 17:42:58'),
(7, 'ADICOLOR SHATTERED TREFOIL TRACK JACKET', 650000, 1, 0, 'e2abd92a1dfe46caa2e2ad6b00dbe1f8_9366_result.jpg', 'ADICOLOR SHATTERED TREFOIL TRACK JACKET\r\nA LIGHTWEIGHT TRACK JACKET WITH A MODERN LOOK.\r\nClassic style, but with more flash and swagger. Shrug on this adidas track jacket when you want a casual look with enough edge to spotlight your confidence. Iridescent fabric and a chopped-and-shattered Trefoil put a modern spin on tradition.\r\n\r\nThis product is made with Primegreen, a series of high-performance recycled materials.', 7, 1, 1, '2022-05-15 17:42:56'),
(8, 'SPRT LIGHTNING WINDBREAKER', 650000, 1, 0, 'a23f41f784114a08ab9fae1c00cfd110_9366_result.jpg', 'SPRT LIGHTNING WINDBREAKER\r\nA BOLD, FLEXIBLE WINDBREAKER MADE IN PART WITH RECYCLED MATERIALS.\r\nFunction. Fashion. The perfect mix of both, this adidas windbreaker has roots in our archives but gets reinvigorated with fresh attitude and personality. A little wind is nothing when the sleek material is there to block it out. A little bit of stretch, a lot of breathable mesh on the interior — we\'d say you\'re set up for success.\r\n\r\nMade in part with recycled content generated from production waste, e.g., cutting scraps and post-consumer household waste, to avoid the larger environmental impact of producing virgin content.', 7, 1, 1, '2022-05-15 17:42:53'),
(9, 'DESIGNED FOR GAMEDAY', 650000, 0, 1, '6bc3ef246cdb41a295a9ae280091f2e7_9366_result.jpg', 'DESIGNED FOR GAMEDAY FULL-ZIP JACKET\r\nA SLIM-FITTING JACKET MADE IN PART WITH RECYCLED MATERIALS.\r\nYou\'re in the zone. Nothing needs to interfere with that. And if you\'re still getting there, this adidas jacket helps. Zip it up, toss up the hood and turn into yourself. The moments before the game are just as important as the moments during it, and this jacket honours that completely.\r\n\r\nMade in part with recycled content generated from production waste, e.g. cutting scraps, and post-consumer household waste to avoid the larger environmental impact of producing virgin content.', 7, 1, 1, '2022-05-17 19:00:13'),
(10, 'ADIDAS ADVENTURE', 550000, 1, 0, '1629dbfcc31d441da39bad23006cc916_9366_result.jpg', 'ADIDAS ADVENTURE LOGO CREW SWEATSHIRT\r\nA CREWNECK SWEATSHIRT INSPIRED BY RETRO OUTDOOR APPAREL.\r\nIs there any better feeling than slipping into a brand-new sweatshirt? Smooth on the outside, soft on the inside and comfy all the way around. This version takes style cues from vintage outdoor apparel, but looks just as great when you\'re kicking back on the couch.\r\n\r\nBy buying cotton products from us, you\'re supporting more sustainable cotton farming.\r\n\r\n', 8, 1, 1, '2022-05-15 17:42:48'),
(11, 'CLASSICS ADICOLOR', 550000, 0, 1, '781e8c8e795346909907ad120147af6e_9366_result.jpg', 'ADICOLOR CLASSICS TREFOIL CREWNECK SWEATSHIRT\r\nA COSY PULLOVER THAT REPS ADIDAS\' LEGACY.\r\nCue spotlight. Enter the Trefoil logo. A game changer and style icon since \'72, it stands out front and centre on this adidas sweatshirt. The best part? While you\'re rocking that authentic adidas style, plush French terry takes comfort and makes it next-level cosy.\r\n\r\nBy buying cotton products from us, you\'re supporting more sustainable cotton farming.', 8, 1, 1, '2022-05-17 19:00:18'),
(12, 'R.Y.V', 550000, 0, 0, '83f1b2307193459b9ed5ac75015cbe72_9366_result.jpg', 'R.Y.V. CREW SWEATSHIRT\r\nA SOFT KNIT R.Y.V. PULLOVER WITH STAND-OUT STYLE.\r\nLet the world know what you\'re all about. In this case, you\'re all about loud and proud adidas style. Vertical double linear logos on this sweatshirt make sure you\'ll never blend in again. Cotton knit feels soft and cosy to the touch.\r\n\r\nOur cotton products support sustainable cotton farming. This is part of our ambition to end plastic waste.', 8, 1, 1, '2022-05-15 17:42:43'),
(13, 'CONTRAST C LOGO RINGER', 550000, 0, 0, 'chpeu_214681_em525_full_crop_result.jpg', 'CONTRAST C LOGO RINGER\r\nDetailed with contrasting ribbed trims, this ringer t-shirt bears the C logo in satin and twill to the chest.', 5, 2, 1, '2022-05-15 17:42:40'),
(14, 'VINTAGE PRINT', 300000, 0, 0, 'chpeu_216032_ww001_full_crop_result.jpg', 'VINTAGE PRINT \r\nReimagining catalogue covers from the Champion archives, this digital print t-shirt will bring a vintage vibe to your line-up.', 5, 2, 1, '2022-05-15 17:42:37'),
(15, 'GRAFFITI DETAIL LOGO', 550000, 1, 0, 'chpeu_214344_ww001_full_crop_result.jpg', 'GRAFFITI DETAIL LOGO\r\nLayered with graffiti print detailing, this statement logo print t-shirt is set to step up your style', 5, 2, 1, '2022-05-15 17:42:36'),
(16, 'FULL-ZIP SLEEVE SCRIPT', 550000, 0, 0, 'chpeu_217144_bs501_full_crop_result.jpg', 'FULL-ZIP SCRIPT\r\nElevate the essentials with this full zip-up cotton hoodie for men. It has a relaxed fit, contrasting drawcord, finished off with our signature branding on the arm.', 6, 2, 1, '2022-05-15 17:42:28'),
(17, 'FULL-ZIP SCRIPT', 650000, 1, 0, 'chpeu_217155_em021_full_crop_result.jpg', 'FULL-ZIP SCRIPT\r\nElevate the essentials with this full zip-up cotton hoodie for men. It has a relaxed fit, contrasting drawcord, finished off with our signature branding on the arm.', 6, 2, 1, '2022-05-15 17:42:21'),
(18, 'UNIVERSITY PRINT', 550000, 1, 0, 'chpeu_217264_bs538_full_crop_result.jpg', 'UNIVERSITY PRINT\r\nWe are going back to our old school roots with this men’s hoodie, detailed with a bold college print and finished with a C logo embroidered on the sleeve.', 6, 2, 1, '2022-05-15 17:42:18'),
(19, 'CONTRAST LIGHTWEIGHT', 900000, 1, 0, 'chpeu_216651_ww001_full_crop_result.jpg', 'CONTRAST LIGHTWEIGHT\r\nKeep it cosy in this lightweight high neck jacket. In a contrasting design, it features script logo detailing and a slogan to the inside.', 7, 2, 1, '2022-05-15 17:42:16'),
(20, 'GRADUATED PANELLED', 650000, 0, 0, 'chpeu_216653_bs501_full_crop_result.jpg', 'GRADUATED PANELLED\r\nGO ON-TREND OMBRE IN THIS WARM & STYLISH JACKET\r\nInspired by our athletic heritage, the Champion Legacy collection features casual wear made for maximum movement, comfort and style. Stand out in this ombré panelled padded jacket with an artificial down filling for warmth, with script logo detailing and zipped pockets to complete the look. Hood, full front zip design and ribbed cuffs keep the chill out in classic Champion style.', 7, 2, 1, '2022-05-16 16:32:23'),
(21, 'TEDDY LINED PADDED', 550000, 1, 0, 'chpeu_216735_kk001_full_crop_result.jpg', 'chpeu_216735_kk001_full_crop_result.jpg', 7, 2, 1, '2022-05-16 16:33:07'),
(22, 'FULL-ZIP C LOGO', 550000, 1, 0, 'chpeu_217156_kk001_full_crop_result.jpg', 'full zip\r\nOver a t-shirt or as a cosy layer, \r\nthis men’s full zip sweatshirt is a must-have for your daily rotation. It comes complete with front pockets and minimal branding details.', 8, 2, 1, '2022-05-15 17:42:07'),
(23, 'JACQUARD LABEL MARBLE WASH', 350000, 0, 1, 'chpeu_217085_kk001_full_front_result.jpg', 'JACQUARD LABEL MARBLE WASH\r\nWith a vintage-inspired marble wash and minimal branding, this men’s half-zip sweatshirt is ready to elevate any casual look. It comes in a heavy cotton material with a drop shoulder cut.', 8, 2, 1, '2022-05-17 19:00:22'),
(24, 'OVERSIZED SCRIPT LOGO', 500000, 1, 0, 'chpeu_214197_ww001_full_crop_result.jpg', '\r\nOVERSIZED SCRIPT LOGO\r\n\r\nKeep it casual in this cotton terry sweatshirt. In an oversized fit elevated with a small script logo to the chest, it\'s an effortless piece for everyday.', 8, 2, 1, '2022-05-15 17:42:02'),
(25, 'Dickies Skateboarding', 350000, 1, 0, 'WSSK2_BK_FR.jpg', 'Product Details\r\nDickies Skateboarding Utility  are the collection’s debut denim that were built for skate. These easy-to-wear everyday pants feature a regular straight fit that allows plenty of room for movement. Our durable fabrication ensures that these pants will persevere no matter how many times you hit the pavement. The traditional carpenter styling offers added function with a handy double entry rear pocket and a convenient cell phone pocket on the right leg. With your protection in mind, we’ve flattened the hammer loop so you don’t get caught up when you’re riding. Dickies Skateboarding signature red detailing and a comfortable soft herringbone pocket bags are supplied at the interior of the pants. Plus, the durable metal button front closure means that you’ll get maximum wear and tear that won’t give out over time.\r\n\r\n', 5, 6, 1, '2022-05-15 17:41:59'),
(26, 'Relaxed Fit Striped', 550000, 0, 0, 'WSR15_A2S_FR.jpg', 'Product Details\r\nInspired by the new life that Spring brings, and in celebration of a milestone anniversary (we turn 100 this year!), we\'re bringing you some fresh new tees that will help bring any old pair of pants back to life. After all, stripes are the new neutral. The styling possibilities are endless in Dickies Men\'s Short Sleeve Stripe Pocket Tee, with just enough color to elevate any wardrobe. With a relaxed fit and 100% Cotton Jersey fabrication, you won\'t just be stylin\', most importantly, you\'ll be comfortable.', 5, 6, 1, '2022-05-15 17:41:57'),
(27, 'Short Sleeve Graphic', 350000, 1, 0, 'WSR11_CL9_BK.jpg', 'Product Details\r\nWe know you need some new tee shirts to anchor your workwear wardrobe, so we designed a modern take on a vintage classic with Dickies Men\'s Short Sleeve Graphic Tee. Turning 100 really makes you reflect and since our founding in 1922, we\'ve been innovating the most durable, wearable, good looking workwear on the planet. Staying true to our roots, we\'ve moved forward with integrity, never steering too far off course. At our foundation, we make some of the most protective workwear you can find and our promise to you is that while we may be getting old, we will continue to meet your workwear needs for as long as you need us, forever supporting generations of workers Made in Dickies.', 5, 6, 1, '2022-05-15 17:41:54'),
(28, 'Fleece Cargo', 550000, 0, 0, 'TWR10_ML_FR.jpg', 'Product Details\r\nPart of our Street Utility Collection, Dickies Men\'s Fleece Cargo Hoodie epitomizes protection. With secure zip closures at the roomy front kangaroo pocket and a bonus cargo pocket with Velcro closure on the sleeve, your goods will be protected and with a non-toxic water repellant finish, your body will be protected. Made with Dickies unparalleled quality and attention to detail, this soft fleece hoodie is a necessary wardrobe addition this Spring. Now that we\'re officially 100 years old, we feel comfortable saying such things – we know a thing or two about comfort and function, so like they say, “listen to your elders\".', 6, 6, 1, '2022-05-15 17:41:50'),
(29, 'High Pile Fleece', 650000, 1, 0, 'TW457_CTH_FR.jpg', '\r\nProduct Details\r\nDon’t let the cold and wet keep you from performing at your best. Dickies Women’s High Pile Fleece Lined Hoodie provides an extra layer of defense when you are taking your tasks outdoors. Complete with a comfy exterior soft fleece fabrication and internal High Pile Fleece lining for maximum warmth, this full zip hoodie goes the extra mile with a water repellent DWR finish to protect you from damp conditions. The patented SafeCinch™ internal mechanism adds the benefit of adjusting your hood through the interior of the front pockets, allowing your hands to stay protected as you navigate the perfect cinched fit. Plus, the three-piece hood further supplies a superior fit, while the thumb holes and matching rib at the hem and cuffs provide for extra coverage and protection from crisp climates. Dickies logo label is proudly placed at the front left pocket to show off your pride for authentic protective workwear.', 6, 6, 1, '2022-05-15 17:41:48'),
(30, 'Water Repellent Tri-Color', 650000, 1, 0, 'TW22A_DN_FR.jpg', 'Product Details\r\nTri-Color Logo Fleece Hoodie with DWR is fabricated from a soft fleece for a comfortable hand feel and primed with a Durable Water Repellent finish, making this hoodie ready to be put to work in wet conditions. Equipped with a three-piece hood and rib knit waist and cuffs, you\'ll be sure to keep the elements out while you perform in ultimate comfort. There is no shortage of layering potential with this hoodie, a true wardrobe staple that outlasts every season. The kangaroo pocket at front provides added utility to store small gear, or to quickly warm your hands while on the go. Complete with a Dickies traditional tri-color logo graphic, there\'s no denying your devotion to protective and performance driven workwear.', 6, 6, 1, '2022-05-15 17:41:44'),
(31, '100 Year Denim Chore', 650000, 1, 0, 'TCG100_NB_FR.jpg', 'Product Details\r\nCelebrating 100 years of workwear, we\'ve designed Dickies Men\'s 100 Year Denim Chore Coat with all the durable utility we\'ve been known for since 1922…and styled it for 2022. With details like herringbone print pocketing, contrast stitching throughout and stitch detail at the elbow, pair this chore coat with our 100 Year Denim Pants for a uniform fit for a centenary party. Constructed with 100% Cotton Denim, this chore coat will be a wardrobe staple for years to come. Designed for the modern worker, maker, and shaper, it defines a new essential in workwear utility and celebrates the generations of people who have been Made in Dickies.', 7, 6, 1, '2022-05-15 17:41:43'),
(32, 'FLEX Duck Shirt', 650000, 0, 0, 'TJ212_BK_FR.jpg', '\r\nProduct Details\r\nKeep it moving till the job is done. The easy-moving Dickies FLEX Shirt Jacket gives you maximum performance with fewer layers. Extra flexible canvas Duck is upgraded with water-repelling treatments. Multiple pockets keep your hands warm and your tools close by.', 7, 6, 1, '2022-05-15 17:41:41'),
(33, 'Fort Lewis Jacket', 550000, 0, 0, 'TJR21_BK_BK.jpg', 'Product Details\r\nThe Fort Lewis Jacket is our signature fit button-down, made of 100% cotton twill. Featuring angled front welt pockets and adjustable buttons on the cuffs and waistband. Finished with Dickies script logo on the chest and souvenir style leopard and foliage embroidered design on the back. A bold interpretation of our heritage workwear jacket made for everyday wear.\r\n\r\n', 7, 6, 1, '2022-05-15 17:41:34'),
(34, 'Chest Hit Logo Crew Neck', 550000, 0, 0, 'TWR30_B2T_FR.jpg', 'Product Details\r\nSimple and classic, Dickies Men\'s Chest Hit Logo Crew Neck Sweatshirt is just enough to keep you cozy on cool Spring days. With a relaxed, loungey fit, pull it on to run an errand, take a stroll, or to just sit on the couch. The embroidered heritage ox collar logo affirms its cool understated workwear style. Constructed from an ultra-soft yet sturdy Cotton/Polyester Fleece with reinforced rib knit cuffs and hem, this sweatshirt will be a trusty wardrobe staple year after year.', 8, 6, 1, '2022-05-15 17:41:31'),
(35, 'Fort Lewis Crew Neck', 650000, 1, 0, 'TWR31_WH_BK.jpg', 'Product Details\r\nThe Fort Lewis Sweatshirt is a crew neck sweatshirt with raglan sleeves and a relaxed fit. Finished with authentic stitched embroidery detailing, Dickies script logo on the chest and souvenir style leopard and foliage design on the back. Made of 100% cotton loopback jersey. A well-built piece with true heritage.\r\n\r\n', 8, 6, 1, '2022-05-15 17:41:26'),
(36, 'Pullover Crew Graphic', 550000, 0, 0, 'TWR12_P2O_FR.jpg', 'Product Details\r\nSo simple, and so comforting. Dickies Men\'s Pullover Crew Graphic Fleece was made for a walk on a cool Spring morning. With a comfortable crew neck and rib knitting at the cuffs and waste, it\'ll keep you just warm enough and help you look effortlessly put together. At the end of the day, it does what Dickies does best: pairs simple, iconic design with lifetime durability that is made to go wherever you do.', 8, 6, 1, '2022-05-15 17:41:23'),
(37, 'Jordan The Shoe', 550000, 0, 0, 'd9941c4d-6c4b-4995-b8a5-caed7a79969e_result.jpg', 'Jordan \'The Shoes\'\r\n\r\nThe Jordan \'The Shoes\' T-Shirt riffs on a line out of a classic Michael Jordan ad. This versatile crew-neck T-shirt is made from soft, comfortable cotton and has an easy, relaxed fit.', 5, 5, 1, '2022-05-15 17:41:20'),
(38, 'Jordan Air Dri-FIT', 550000, 0, 0, 'c07068a2-4e9d-4ce5-b927-57d182333bac_result.jpg', ' Jordan Air Dri-FIT\r\n\r\nShow your dedication to greatness in the Jordan Air Dri-FIT T-Shirt. It\'s soft and comfortable with sweat-wicking technology and a cut-out image of Mike in flight on the front.', 5, 5, 1, '2022-05-15 17:41:15'),
(39, 'Jordan Dri-FIT Zion', 350000, 1, 0, '05a40b03-37e2-4f66-afd2-e04220886544_result.jpg', 'Zion\r\n\r\n\r\n likes he can chill in at home with his family, then wear to the gym or the court.The Jordan Dri-FIT Zion Hoodie does it all with a mix of washed French terry fabric and sweat-wicking technology.', 5, 5, 1, '2022-05-15 17:41:12'),
(40, 'Jordan Dri-FIT Zion', 550000, 1, 0, '55c149e4-0682-4d4b-addd-f6c707124083_result.jpg', 'hoodie Jordan Dri-FIT Zion\r\n\r\n\r\nZion likes a hoodie he can chill in at home with his family, then wear to the gym or the court.The Jordan Dri-FIT Zion Hoodie does it all with a mix of washed French terry fabric and sweat-wicking technology.Graphics make an anime-inspired play on Zion\'s new logo.', 6, 5, 1, '2022-05-15 17:41:08'),
(41, 'Jordan Air Jordan', 350000, 1, 0, '125bc873-5d8b-4942-ac02-cdf494bf78dd_result.jpg', 'Jordan Brand \r\n\r\nLike a clean slate for your style, this fleece pullover hoodie from Jordan Brand is a foundational staple.It\'s made from heavyweight loopback French terry that you can layer and wear with just about anything.', 6, 5, 1, '2022-05-15 17:41:04'),
(42, 'Nike Sportswear', 650000, 0, 0, '8305160c-e343-4e76-b429-e5247add58f4_result.jpg', '\r\nhoodie Sportswear \r\n\r\nSuit up in this unbelievably warm hoodie, made from 100% recycled polyester fibres. Designed to be worn as a layering piece or on its own, the sweatshirt has a hood so you can keep the elements at bay. Discreet details nod to Oregon\'s Smith Rock—the inspiration behind the design of this fleece hoodie.', 6, 5, 1, '2022-05-15 17:41:00'),
(43, 'Jordan 23 Engineered', 350000, 0, 0, '72eac1b9-5cad-4d98-86aa-45fc9c8405ea_result.jpg', 'The 23 Engineered\r\n\r\nJordan 23 Engineered innovates with style, leading streetwear into the future while staying rooted in brand heritage. The 23 Engineered Tracksuit Jacket uses a coated Ripstop fabric with a comfortable mesh and woven lining. Cargo pockets on the chest and sides provide on-the-go functionality.', 7, 5, 1, '2022-05-15 17:40:57'),
(44, 'Nike x Skepta', 450000, 1, 0, '193ddb59-2340-434c-9d2a-cadcda1bedab_result.jpg', '70s Nike Sportswear\r\n\r\nAdd a throwback feel to your look with the help of this boxy . Printed on a heavyweight jersey fabric, the stacked logos are inspired by \'70s Nike Sportswear graphics. This product is made from at least 75% organic cotton fibres.', 7, 5, 1, '2022-05-15 17:40:55'),
(45, 'Nike Sportswear Storm-FIT Tech Pack', 900000, 1, 0, '9e6ab249-101e-45e9-9a7e-d72ce6381c93_result.jpg', 'The Nike Sportswear Tech Pack\r\n\r\n Long-Sleeve Top has you covered whether you\'re in the sun or the shade. Made from knit fabric, it provides ventilation where you need it and insulation everywhere else. This product is made from 100% sustainable materials, using a blend of both recycled polyester and organic cotton fibres', 7, 5, 1, '2022-05-15 17:40:53'),
(46, 'Jordan Flight Heritage', 650000, 0, 0, 'jordan-flight-heritage-fleece-crew-sweatshirt-Hw7GSV_result.jpg', 'The Jordan Flight Heritage Hoodie takes inspiration from the archives while bringing in a modern touch. This pullover uses extra-heavyweight loopback French terry with a vintage wash. The back features custom artwork by Joe Perez.', 8, 5, 1, '2022-05-15 17:40:50'),
(48, 'Nike SB', 400000, 0, 0, '4a975684-2882-4ee1-b2f2-4bb9f30c4c7c_result.jpg', ' Nike SB\r\n\r\n\r\nMake a big statement in the Nike SB T-Shirt. This everyday staple pairs bold graphics with loose-fitting midweight cotton fabric you\'ll be ready to wear all day.', 8, 5, 1, '2022-05-15 17:40:48'),
(49, 'Nike Therma-FIT Story Pack', 550000, 1, 0, '058e335f-3f6a-4f52-8041-0add4408c5c8_result.jpg', 'The Nike Therma-FIT\r\n\r\n\r\n Top is made from soft double-knit stretch fabric for warmth and mobility. A large front pocket gives you a place to warm your hands in cooler weather, while the zipped front pocket lets you securely stash your phone, keys and other small essentials. Bright graphics on both sides are inspired by the balance of the mental and physical strength needed to support yourself before during and after your daily grind.', 8, 5, 1, '2022-05-15 17:40:32'),
(50, 'Ball Dot Short', 550000, 0, 0, '20220203-FRANCIS_ECOMM_3.02.22-616_2048x_result.jpg', 'Product Details: \r\n\r\nShort sleeve t-shirt in white. \r\nSmall 8-ball graphic to left chest. \r\nLarge 8-ball graphic on back of garment. \r\nMade with a softening garment wash for smooth feel. \r\nCut from 180gsm carded cotton jersey for natural breathability. \r\n', 5, 4, 1, '2022-05-15 17:40:26'),
(51, 'Shadow Stock', 350000, 0, 0, '20210415-IMG_1965_2048x_result.jpg', 'Product Details:\r\nContrasting Stussy branding on left chest.\r\nCut from a cotton jersey fabrication; natural stretch.\r\nCrew neckline.\r\nRegular fit.\r\nShort sleeves.', 5, 4, 1, '2022-05-15 17:40:21'),
(52, 'Stock Short Sleeve', 550000, 0, 0, '20220201-JEN_ECOMM_31.01-4212_2048x_result.jpg', 'Product Details: \r\n\r\nShort sleeve t-shirt in tan. \r\nScreen printed Stussy logo to centre chest. \r\nGarment wash provides softhand feel. \r\nFlag label at right seam. \r\nCut from 180gsm carded cotton jersey.\r\n', 5, 4, 1, '2022-05-15 17:40:18'),
(53, 'basic hood', 650000, 1, 0, '882205-hoodie-stussy-basic-hd-chocolate_result.jpg', 'Stüssy Basic Longsleeve hooded sweatshirt.\r\n\r\n\r\nScreenprinted graphics\r\nDrawstring hood\r\nKangaroo pocket\r\nRibbed cuffs and hem\r\n100% Cotton Fleece', 6, 4, 1, '2022-05-15 17:40:16'),
(54, 'Peace Sign 5050 Hoodie in Cream', 550000, 0, 0, '20220201-JEN_ECOMM_31.01-4299_2048x_result.jpg', 'Product Details: \r\n\r\nHoodie in cream colourway. \r\nPeace sign graphic print on back of garment. \r\nSmaller graphic & branding to left chest.\r\nDrawstring hood for adjustable fit. \r\nRibbed elasticised cuffs & hem. ', 6, 4, 1, '2022-05-15 17:40:13'),
(55, 'Stock Hood in Brown', 900000, 0, 0, 'IMG_9567_5e09d15f-6b14-423b-baec-c91dd22b2a09_2048x_result.jpg', 'Product Details: \r\n\r\nHoodie with adjustable drawstring hood. \r\nStussy logo to left chest. \r\nKangaroo pocket to front. \r\nElasticised ribbed trims.  ', 6, 4, 1, '2022-05-15 17:40:11'),
(56, 'Aurora Puffer Jacket in Black', 900000, 1, 0, '20220401-IMG_9934_2048x_result.jpg', 'Product Details:  \r\n\r\nPuffer jacket in black. \r\nDown-filled for insulation. \r\nDual welt pockets with snap closure. \r\nAll-over quilting & single interior patch pocket. \r\nElasticised cuffs. \r\nShock cord with barrel locks & adjustable pulls at hemline', 7, 4, 1, '2022-05-15 17:40:09'),
(57, 'Classic Zip Up Plaid Shirt Jacket in Green', 650000, 0, 1, '20220303-IMG_6276_2048x_result.jpg', 'Product Details:\r\n\r\nFull front zip fastening with silver hardware.\r\nAll over green & black plaid colourway.\r\nLong sleeves.\r\nRelaxed fit.\r\nSharp collar detailing. ', 7, 4, 1, '2022-05-17 19:00:25'),
(58, 'Tyler Cord Jacket in Blue', 650000, 0, 0, 'DANMARCHSAMP-58_2048x_result.jpg', 'Product Details:\r\n\r\nZip-through closure. \r\nTwo front pockets at chest. \r\nStussy branding on chest pocket. \r\nElasticated trims. \r\nCollared neckline. \r\nCorduroy fabrication; no stretch.', 7, 4, 1, '2022-05-15 17:40:02'),
(59, 'Funky Tribe 505 Crew', 500000, 1, 0, 'IMG_9716_aff6a91c-2314-4751-878a-797234e697ba_2048x_result.jpg', 'Product Details: \r\n\r\nCrew neck jumper in Oatmeal. \r\nGraphic print to back of garment. \r\nRibbed crew neckline. \r\nStussy logo to left chest. \r\nSlouchy fit with dropped shoulders. \r\n', 8, 4, 1, '2022-05-15 17:40:00'),
(60, 'in Teal Green', 450000, 0, 0, '20220401-IMG_0019_2048x_result.jpg', 'Product Details \r\nCrew neck jumper in teal.\r\nLogo across chest.  \r\nRibbed cuffs & hem. \r\nBrushed back fleece. \r\nRelaxed fit slightly cropped.', 8, 4, 1, '2022-05-15 17:39:57'),
(61, 'Pigment Graffiti Crew in Cream', 500000, 1, 0, 'DANMARCHSAMP-51_2048x_result.jpg', 'Product Details: \r\n\r\nCrew neck jumper with graffiti logo to left chest. \r\nLarge graffiti logo on back. \r\nHeavyweight feel. \r\nFleece interior. ', 8, 4, 1, '2022-05-15 17:39:52'),
(62, 'CONTRAST PRINT', 350000, 1, 0, '6224443800_2_1_1.jpg', 'CONTRAST PRINT SWEATSHIRT\r\n\r\nHoodie with an adjustable hood and long sleeves. Front pouch pocket. Contrast prints all over the garment. Ribbed trims.', 5, 3, 1, '2022-05-15 17:39:50'),
(63, 'KNIT COLOUR BLOCK', 350000, 1, 0, '3284407707_2_1_1.jpg', 'KNIT COLOUR BLOCK T-SHIRT\r\n\r\nT-shirt made of spun cotton fabric. Featuring a round neckline, short sleeves and ribbed trims.\r\n\r\n\r\n\r\n\r\n', 5, 3, 1, '2022-05-15 17:39:47'),
(64, 'KNIT T-SHIRT', 350000, 0, 0, '4374401800_2_1_1.jpg', 'KNIT COLOUR BLOCK T-SHIRT\r\n\r\nT-shirt made of spun cotton fabric. Featuring a round neckline, short sleeves and ribbed trims.\r\n\r\n\r\n\r\n\r\n', 5, 3, 1, '2022-05-15 17:39:44'),
(65, 'SHORT SLEEVE', 650000, 1, 0, '4087464800_2_1_1.jpg', 'ABSTRACT FLOOR FILTERS\r\n\r\nSHORT -sleeve sweatshirt with sewn-in hood. There is a kangaroo pocket on the front. Full body printed with different colors. Bordered with ribbed wool.\r\n\r\n', 6, 3, 1, '2022-05-15 17:39:37'),
(66, 'SLOGAN PRINT HOODIE', 550000, 0, 0, '9240414942_2_1_1.jpg', 'SLOGAN PRINT HOODIE\r\n\r\nLoose-fitting hoodie with an adjustable hood and long sleeves. Featuring a contrast slogan detail at the back, front pouch pocket and ribbed trims.', 6, 3, 1, '2022-05-15 17:39:34'),
(67, 'SPALDING', 500000, 0, 0, '0495405250_2_1_1.jpg', 'SPALDING ® HOODIE\r\n\r\nHigh-necked hoodie with adjustable hood and long sleeves. Featuring contrast Spalding ® Russell Brands LLC prints on the front and back. Front pouch pocket. Ribbed trims.', 6, 3, 1, '2022-05-15 17:39:30'),
(68, 'BASIC BOMBER', 650000, 0, 0, '4302410806_2_1_1.jpg', 'BASIC BOMBER JACKET\r\n\r\nJacket with a ribbed collar and long sleeves. Hip welt pockets and an inside pocket detail. Elastic hem. Zip-up front.', 7, 3, 1, '2022-05-15 17:39:25'),
(69, 'CONTRAST PATCH JACKET', 900000, 1, 0, '3427409535_2_1_1.jpg', '3427409535_2_1_1.jpg', 7, 3, 1, '2022-05-16 16:35:03'),
(70, 'FAUX LEATHER JACKET', 900000, 1, 0, '8281470800_2_1_1.jpg', 'FAUX LEATHER JACKET\r\n\r\nLong sleeve jacket with a lapel collar. Featuring front pockets with metal zip, shoulder tabs and metal zip fastening at the front.', 7, 3, 1, '2022-05-15 17:39:15'),
(71, 'FAUX SHEARLING', 650000, 0, 0, '3427417505_2_1_1.jpg', 'FAUX SHEARLING SWEATSHIRT\r\n\r\nRound neck sweatshirt with long sleeves and elastic cuffs. Side zip pockets. Ribbed hem on the front.', 8, 4, 1, '2022-05-15 17:39:12'),
(72, 'TIGER PRINT SWEATSHIRT', 650000, 0, 0, '3833402251_2_1_1.jpg', 'TIGER PRINT SWEATSHIRT\r\n\r\nLoose-fitting long sleeve sweatshirt with a round neckline and ribbed trims.', 8, 3, 1, '2022-05-15 17:39:08'),
(73, 'TECHNICAL SWEATSHIRT', 550000, 0, 0, '4432400251_2_1_1.jpg', 'TECHNICAL SWEATSHIRT WITH POCKET\r\n\r\nSweatshirt featuring a round neck with ribbed trim and slogan detail. Long sleeves. Chest patch pocket. Adjustable hem with elastic detail at the sides.', 8, 3, 1, '2022-05-15 17:39:04'),
(74, 'ADIDAS ADVENTURE CARGO PANTS', 350000, 0, 0, 'a76a84eef12e4f23bce7ad2201222f78_9366_result.jpg', 'ADIDAS ADVENTURE CARGO PANTS\r\nRIPSTOP CARGO PANTS INSPIRED BY OUTDOOR STYLE FROM THE ARCHIVES.\r\nHere\'s a lesson from the backcountry. You can never be overprepared. With that in mind, these adidas cargo pants have roomy pockets to hold your essentials and adjustable details that let you dial in your comfort level. Coffee date or backyard barbecue? You\'ve never been more ready.\r\n\r\nBy buying cotton products from us, you\'re supporting more sustainable cotton farming.', 9, 1, 1, '2022-05-16 00:35:17'),
(75, 'ADIDAS ADVENTURE PANTS', 300000, 0, 0, '564031420c5f47288ccdacd90011fc56_9366_result.jpg', 'ADIDAS ADVENTURE CARGO PANTS\r\nRIPSTOP CARGO PANTS INSPIRED BY OUTDOOR STYLE FROM THE ARCHIVES.\r\nHere\'s a lesson from the backcountry. You can never be overprepared. With that in mind, these adidas cargo pants have roomy pockets to hold your essentials and adjustable details that let you dial in your comfort level. Coffee date or backyard barbecue? You\'ve never been more ready.\r\n\r\nBy buying cotton products from us, you\'re supporting more sustainable cotton farming.', 9, 1, 1, '2022-05-16 00:35:15'),
(76, 'R.Y.V. CUFFED SWEAT PANTS', 550000, 0, 0, '7a092af3d65746379000ad57010aa3e7_9366_result.jpg', 'R.Y.V. CUFFED SWEAT PANTS\r\nSWEAT PANTS WITH WORKWEAR-INFLUENCED STYLE.\r\nA utility-inspired update to classic sweat pants. These adidas pants have big zip pockets on the legs to maximise storage. Soft French terry feels good any day, and a centred double linear Trefoil logo stands out on one leg.\r\n\r\nBy buying cotton products from us, you\'re supporting more sustainable cotton farming.', 9, 1, 1, '2022-05-16 00:35:07'),
(77, 'DESIGNED FOR GAMEDAY PANTS', 550000, 0, 0, 'd574af1a8bc64a8a9011ada700e80280_9366_result.jpg', 'DESIGNED FOR GAMEDAY PANTS\r\nFIND A GAME DAY MINDSET IN THESE PANTS MADE IN PART WITH RECYCLED CONTENT.\r\nThe days and hours leading up to the game are just as crucial to your performance as the moments in it. Feel comfortable, confident and ready to give your all when you\'re wearing these adidas pants. Soft cotton fabric keeps your muscles loose and warm, and the slim fit lets you rest or stretch with ease.\r\n\r\nMade in part with recycled content generated from production waste, e.g. cutting scraps, and post-consumer household waste to avoid the larger environmental impact of producing virgin content.', 10, 1, 1, '2022-05-16 00:35:10'),
(78, 'FUTURE ICONS 3-STRIPES KNIT PANTS', 350000, 0, 0, '4e5494ef511340e6adb8add1004aeab4_9366_result.jpg', 'FUTURE ICONS 3-STRIPES KNIT PANTS\r\nEASY-TO-WEAR AND EASY-TO-STYLE PANTS.\r\nOn the evening commute, all you can think about are the comfortable pants you\'ll sink into when you get home. Don\'t wait. Pull on these adidas pants after you roll out of bed in the morning, and tackle walks to the gym, errands and work days in comfort. The minimalist style looks effortlessly sharp through it all.\r\n\r\nOur cotton products support more sustainable cotton farming.', 10, 1, 1, '2022-05-16 00:35:09'),
(79, 'FUTURE ICONS DOUBLEKNIT PANTS', 350000, 0, 0, '0ad1ea397a464a2c987cad990094d240_9366_result.jpg', 'FUTURE ICONS DOUBLEKNIT PANTS\r\nEASY, EVERYDAY SWEATPANTS MADE IN PART WITH RECYCLED MATERIALS.\r\nYour workout is wrapped, but the adrenaline is still pumping. Pull on these adidas sweatpants and keep the feel-good vibes going long after you\'ve left the gym. You\'ll have comfort to feel good about, thanks to the soft doubleknit fabric. And style too, thanks to the sleek design that pairs well with your favourite adidas kicks.\r\n\r\nMade in part with recycled content generated from  production waste, e.g. cutting scraps, and post-consumer household waste to avoid the larger environmental impact of producing virgin content.', 10, 1, 1, '2022-05-16 00:34:46'),
(80, 'ADIDAS ORIGINALS X KEVIN LYONS', 300000, 0, 0, '80b2a94124924f1aab51adfd012870f1_9366_result.jpg', 'ADIDAS ORIGINALS X KEVIN LYONS SHORTS\r\nPLAYFUL SHORTS WITH MONSTER GRAPHICS FROM KEVIN LYONS.\r\nMonsters! These fun little creatures have been spotted on murals in Paris, Milan, Tokyo and NYC — a result of brilliant brushstrokes from Brooklyn artist Kevin Lyons. Now they\'re ready to take over your outfit on these adidas shorts, with an eye-catching graphic on the leg. Soft cotton French terry keeps you comfortable throughout the day.\r\n\r\nOur cotton products support more sustainable cotton farming.', 11, 1, 1, '2022-05-16 00:34:44'),
(81, 'DESIGNED 4 RUNNING', 550000, 0, 0, '788511a765374a069702add400c14a39_9366_result.jpg', 'DESIGNED 4 RUNNING SHORTS\r\nDAILY RUNNING SHORTS MADE IN PART WITH PARLEY OCEAN PLASTIC.\r\nYou know that pair of running shorts that you always pull out of the drawer first? That would be this pair from adidas. They\'re lightweight and breathable, with mesh briefs that add support. AEROREADY absorbs moisture to help you tackle any run with confidence.', 11, 1, 1, '2022-05-16 00:34:42'),
(82, 'FUTURE ICONS LOGO GRAPHIC', 300000, 0, 1, 'f6d6ebc90a2447e4826cacfa014f4bdf_9366_result.jpg', 'ADIDAS SPORTSWEAR FUTURE ICONS LOGO GRAPHIC SHORTS\r\nULTRA-SOFT SHORTS THAT MAKE THE ADIDAS DNA CLEAR.\r\nWorkout done. Endorphins pumping. No need to slow the vibe down, just throw on these adidas shorts and keep it flowing. They\'re all about feeling good, as evident from the soft French terry fabric that settles you right into total, absolute comfort. Which is well deserved, we might add. Recycled materials go ahead and up the game. Because with these shorts, they go beyond feeling good. They do good, too.', 11, 1, 1, '2022-05-17 19:00:29'),
(83, 'CUT KNEE DETAIL HEAVYWEIGHT', 550000, 0, 0, 'chpeu_217444_em021_full_crop_result.jpg', 'CUT KNEE DETAIL HEAVYWEIGHT\r\nWhether for training or lounging, these men’s joggers are always on point. Cut from a heavy jersey-like fabric they feature a unique cut detail on the knees.', 10, 2, 1, '2022-05-16 00:34:35'),
(84, 'MARBLE WASH VELCRO POCKET', 350000, 0, 0, 'chpeu_217179_bs538_full_crop_result.jpg', 'MARBLE WASH VELCRO POCKET\r\nFor relaxing days at home or when travelling, pull on these men’s joggers. They are crafted in comfy stretch cotton and completed with handy front velcro pockets.', 10, 2, 1, '2022-05-16 00:34:33'),
(85, 'VERTICAL LOGO COTTON', 550000, 1, 0, 'chpeu_217062_kk001_full_crop_result.jpg', 'VERTICAL LOGO COTTON\r\nStay comfy with a little casual cool with these men’s heavy cotton joggers. They come in a relaxed silhouette along with our signature branding embroidered on the leg.', 10, 2, 1, '2022-05-16 00:34:25'),
(86, 'COTTON DRAWCORD', 550000, 0, 0, 'chpeu_217283_kk001_full_crop_result.jpg', 'COTTON DRAWCORD\r\nLounge around and look good in these timeless drawcord shorts for men. Made in soft cotton with white drawcords and C logo on left hip.', 11, 2, 1, '2022-05-16 00:34:22'),
(87, 'REVERSE WEAVE 1952', 350000, 0, 0, 'chpeu_217236_bs501_full_front_result.jpg', 'REVERSE WEAVE 1952\r\nThrowing it back to our archives, this fresh take on our classic in Reverse Weave cotton is a must-have for your new season line-up.', 11, 2, 1, '2022-05-16 00:34:20'),
(88, 'SIDE SCRIPT LOGO', 550000, 1, 0, 'chpeu_217431_kk001_full_back_result.jpg', 'SIDE SCRIPT LOGO\r\nBeachside or sofa lounging, lay back and relax in these men’s shorts. They feature a repeated signature design down the sides and a C logo detail on the left hip.', 11, 2, 1, '2022-05-16 00:34:19'),
(89, 'DuraTech Ranger', 350000, 0, 0, 'WP702_BK_FR.jpg', 'The DuraTech Ranger\r\n is packed with advanced technologies. Repel Pro finish wipes water and oil away, while the Flex material enhances mobility and comfort. Reinforced for utility, its tough fabric is built two times stronger than typical pants, adding long-lasting durability for a new standard in workwear.\r\n\r\n', 9, 6, 1, '2022-05-16 00:34:17'),
(90, 'Fleece Cargo Pants', 500000, 0, 0, 'WPR10_KBK_FR.jpg', 'Fleece Cargo Pants\r\nPart of our Street Utility Collection, Dickies Men\'s Fleece Cargo Pants promise to overdeliver. Not only are they designed to be comfortable like loungewear and styled like streetwear, but they are constructed with a non-toxic water repellant finish that will also keep you dry. Whether you find yourself in unsettled weather or your work is messy business, they\'ve got your back. Secure cargo pockets with intentionally crafted storage, along with perfectly flexible elastic at the waist and ankles, will keep you overdelivering on your promises, too.', 9, 6, 1, '2022-05-16 00:34:15'),
(91, 'Performance Workwear', 550000, 0, 0, 'WD4901_GY8_FR.jpg', 'Performance Workwear\r\nDickies\' Performance Workwear GDT Premium Pants instill the confidence you need to master even the toughest tasks. The protection provided in these trousers is unyielding, with durable Cordura fabricated details found in the back and cargo pockets, knee pad pouches, and kick plates. Reflective hits give you the visibility you need to maintain personal safety while the wide reinforced belt loops ensure hardwearing support. The crotch-gusset provides freedom of movement while maintaining comfort to get you through your workday.\r\n\r\nFit: The fit is similar to our Dickies regular fit with a slight taper at the knee for added articulation/ease of movement when wearing knee pads. The bottom openings allows for the pants to fit over your work boots. The back rise give the coverage needed while spending more time on your knees.', 9, 6, 1, '2022-05-16 00:34:12'),
(92, '100 Year Double Knee', 650000, 1, 0, 'WPG100_NB_FR.jpg', 'the 100 Year\r\nAlways laser focused on offering workwear with unparalleled durability, comfort, and value, Dickies celebrates its centenary this year with the 100 Year Collection. For 100 years, we have been honored to support the spirit and hard work of the American worker, in all its expressions. Dickies Men\'s 100 Year Double Knee Denim Jean celebrates that, offering classic durable construction with denim styling. The perfectly sized front and back pockets, along with the slick phone pocket, are intentionally designed to carry exactly what you need. With a relaxed fit, traditional herringbone print lining the pockets and contrast stitching throughout, match it with the 100 Year Chore Coat for a uniform that will carry you through thick and thin.', 10, 6, 1, '2022-05-16 00:34:11'),
(93, 'Warming 5-Pocket', 550000, 0, 0, 'DD219_SIWR_FR.jpg', '5-pocket\r\nWearable in the truest sense, Dickies’ Warming Temp-iQ® 5-Pocket Denim Jeans are the essential cold climate denim to fit all of your needs. These hardworking jeans have been enhanced with durable flex denim and feel like flannel on the inside. The innovative Warming Temp-iQ® technology provides ultimate breathability while keeping you comfortable from sunrise to sundown. With rivets at all the stress points, these resilient jeans will be sure to pass your durability test. Not short on storage, the traditional 5-pocket design helps keep your hands free throughout the day.', 10, 6, 1, '2022-05-16 00:34:10'),
(94, 'Warming Denim Carpenter', 650000, 0, 0, 'DU218_SIWR_FR.jpg', 'Warming Denim Carpenter\r\nKeep up with your craft in the cold. Dickies’ Warming Temp-iQ® Denim Carpenter Jeans fit for protection in crisp conditions. The classic carpenter style is enhanced with durable flex denim that feels like flannel on the interior. Our Warming Temp-iQ® technology ensures breathability without the bulk while keeping you warm. Riveted at all stress points, you’re covered with the most rugged durability minus the bulk while you are on the move. Equipped with multi-use tool pockets and a hammer loop, these carpenters are proven to be as hardworking as you are.\r\n\r\n', 10, 6, 1, '2022-05-16 00:34:07'),
(95, 'Cooling Cargo Shorts', 350000, 1, 0, 'SR607_DS_FR.jpg', 'Dickies Cooling Cargo\r\nStay cool in any situation with the advanced technology of these 11\" Dickies Cooling Cargo Shorts. The Temp-iQ® finish kicks in instantly if your temperature rises. Mesh pockets hold everything while letting air flow through to keep you cooler. Rugged ripstop fabric stands up to any jobsite, while the active waistband and easy fit let you move freely.', 11, 6, 1, '2022-05-16 00:34:05'),
(96, 'emp-iQ® 365 Shorts', 350000, 0, 0, 'SR620_GA_A1.jpg', 'Temp-iQ\r\nRaise the bar on heightened protection for warm working conditions in Dickies Temp-iQ® 365 Shorts. Constructed with ultimate performance in mind, the straight fit, high rise and mobility gusset give you added room to move, with a 9\" inseam built to hit above the knee. Plus, the innovative Temp-iQ® 365 technology is designed to maintain the ideal microclimate between you and your workwear all year round. Advanced body temperature control traps heat when you\'re cold and releases heat when you are warm, ensuring your comfort and protection no matter the conditions. We\'ve got you covered in the sun as well with UPF 40+ defense, anti-odor and moisture wicking finish that keeps you fresh through the longest shifts. Superior utility is found through the large dual cargo pockets complete with a zipper security feature on the left leg to safeguard your valuables. Dual rear flap pockets and front side entry pockets round out the practicality of the design, where function and purpose collide for all your warm weather working needs.\r\n\r\n', 11, 6, 1, '2022-05-16 00:34:04'),
(97, 'Loose Fit Multi-Use', 550000, 1, 0, '42283_CH_FR.jpg', 'Loose Fit Multi-Use \r\n\r\nLet the legend live on with Dickies’ 13\" Loose Fit Multi-Use Pocket Work Shorts that are best sellers for a reason. The longer 13” inseam, extra room in the seat and thigh, and the easy-care fabric, gives you a comfortable solution for the hardest jobs. Plenty of pockets store must-have tools, but the signature heavy-duty belt loops provide enough strength to carry anything else you need in a heavy-load tool belt. The wrinkle-resistant fabric features a stain-release finish with easy care, while the flat front permanent crease keeps you looking professional—at a great value.\r\n\r\n', 11, 6, 1, '2022-05-16 00:34:03'),
(98, 'Jordan Flight Heritage', 550000, 0, 0, 'jordan-flight-heritage-cargo-trousers-sgLxPc_result.jpg', 'Flight Heritage Cargo\r\nShift into casual mode, with the Jordan Flight Heritage Cargo Trousers. They\'re made from soft, lightweight woven fabric, with neutral colours and camo prints to choose from. Cargo pockets and adjustable cuffs provide functionality.', 9, 5, 1, '2022-05-16 00:33:59'),
(99, 'Jordan Statement Essentials', 650000, 1, 0, 'b421d495-3971-49d7-b113-09e91213990e_result.jpg', 'Jordan essentials\r\nThese essential warm-up trousers offer classic Jordan Brand comfort and craftsmanship with a fresh take on Flight. The design is inspired by the classic Flight Suit, while a faded colour effect and crinkled fabric add a new level of cool.', 9, 5, 1, '2022-05-16 00:33:55'),
(100, 'Nike ACG Smith Summit', 550000, 0, 0, '20286574-9ca1-4f53-bb9c-4acbeddd4d90_result.jpg', 'Nike ACG \'Smith Summit\'\r\nGear up for the wild with the tough, weather-ready design of the Nike ACG \'Smith Summit\' Cargo Trousers. We travelled to Oregon\'s Smith Rock for inspiration and came back inspired to create these trousers. An open hem, plus a tapered leg, adds an easy, relaxed feel. We made this pair from at least 75% recycled nylon fibres.', 9, 5, 1, '2022-05-16 00:33:54'),
(101, 'Nike Dri-FIT Challenger', 350000, 0, 0, '5eb7f30f-80e1-48c5-ae0d-d8e131432979_result.jpg', 'Nike Dri-FIT Challenger\r\nLace up and tackle the miles ahead of you in trousers that are built to move. Form and function come together in our smooth, light fabric with sweat-wicking technology to help you stay dry and comfortable mile after mile. Press-stud pockets mean you can keep essential items close and the tapered fit helps you move freely while also adding a relaxed vibe. This product is made from 100% recycled polyester fibres.', 10, 5, 1, '2022-05-16 00:33:48'),
(102, 'Nike Air', 550000, 1, 0, '90fc6bdf-f11e-4e56-957f-ae1598f78afc_result.jpg', 'AIR SOFR\r\nSoft and stretchy, the jersey fabric of these leggings moves with you for a carefree, comfortable feel perfect for everyday wear. A high-rise design and a repeating jacquard logo on the waistband elevate this essential.', 10, 5, 1, '2022-05-16 00:33:45'),
(103, 'Zion', 650000, 1, 0, 'da2ec0e0-e13d-4ebe-9109-b72181259c7a_result.jpg', 'Zion \r\ncalls himself Cosy Guy because he likes relaxed, comfortable clothing he can lounge in.The Zion Tracksuit Bottoms are made from plush, velvet-like fabric that feels soft and cosy.Z-shaped stripes down the sides and a thickly embroidered logo infuse Zion\'s signature elements into the design.\r\n\r\n', 10, 5, 1, '2022-05-16 00:33:41'),
(104, 'Jordan Essentials', 550000, 0, 0, '599f5dcd-54f4-4a08-8bc7-0254a95a6403_result.jpg', 'Jordan Brand\r\nThese essential warm-up trousers offer classic Jordan Brand comfort and craftsmanship with a fresh take on Flight. The design is inspired by the classic Flight Suit, while a faded colour effect and crinkled fabric add a new level of cool.', 11, 5, 1, '2022-05-16 00:33:39'),
(105, 'Nike Air', 550000, 0, 0, 'a981a10e-df4f-4839-b24d-94db32025f3a_result.jpg', 'The Nike Air Trousers\r\n are an easy way to warm up your cool-weather style. Their jogger fit offers a distraction-free feel and clean look made to highlight your favourite sneakers. This product is made from at least 75% recycled polyester fibres.\r\n\r\n', 11, 5, 1, '2022-05-16 00:33:36'),
(106, 'Nike Dri-FIT DNA', 550000, 0, 1, '117a6451-4e21-4699-8be2-adc18c9e0f99_result.jpg', 'Nike Dri-FIT DNA Shorts\r\nTake care of the future like you take care of the ball in the Nike Dri-FIT DNA Shorts. Made from at least 75% recycled polyester, they offer light, breathable fabric that\'s tailored for the game.\r\n\r\n', 11, 5, 1, '2022-05-17 19:00:33'),
(107, 'DYED NYLON SURPLUS CARGO PANT', 350000, 0, 0, '118458_BROW_3_6510a43e-3f0e-447c-a3e0-b7ff22279b5a_1728x_result.jpg', 'PRODUCT DETAILS\n- Two slant front pockets\n- Four patch pockets\n- Two rear pockets with snap closure\n- Fixed waistband with buckle adjusters\n- Metal zip fly\n- Double layer knee and seat panels\n- Drawcord cuffs\n- Stüssy original stock flag label at rear hip\n', 9, 4, 1, '2022-05-16 00:33:32'),
(108, 'NYCO CONVERTIBLE PANT', 550000, 1, 0, '116546_BLAC_8_1728x_result.jpg', 'PRODUCT DETAILS\r\n- Elastic shock cord waistband\r\n- Slanted hip pockets\r\n- Outer side pockets\r\n- Back yoke pockets\r\n- Zip off leg panel with shock cord hem\r\n- Stüssy Design Corp flag label on left leg seam\r\n', 9, 4, 1, '2022-05-16 00:33:30'),
(109, 'PRIMALOFT MOUNTAIN PANT', 550000, 0, 0, '116523_BLAC_3_900x_result.jpg', '\r\n- Nylon Ripstop Exterior\r\n- Integrated nylon webbing belt\r\n- #5 YKK VISLON® zippers at side pockets\r\n- Polar fleece lined pocket bags\r\n- Rear welt pocket\r\n- Shock cord adjustment at hem\r\n- Stüssy logo embroidery on left leg', 9, 4, 1, '2022-05-16 00:33:28'),
(110, 'Pant Dark Grey Heather', 55000, 1, 0, 'mens-pants-jeans-stussy-stc3bcssy-nike-nrg-br-fleece-pant-dark-grey-heather_2_result.jpg', 'Standard fit heavy fleece sweatpant with elastic waist and drawcord. Embroidered logo with dual Nike and Stussy branding on left thigh.\r\n100% Cotton – Imported.\r\nAll sales final.\r\nFit Details\r\nUNISEX PANT:', 10, 4, 1, '2022-05-16 00:33:24');
INSERT INTO `products` (`id`, `name`, `price`, `hot`, `burned`, `image`, `description`, `category_id`, `brand_id`, `status`, `created_at`) VALUES
(111, 'STÜSSY STOCK LOGO PANT', 650000, 0, 0, '116481-1032_04_result.jpg', 'Regular fit\r\n2 side pockets\r\n1 back pocket\r\nWaistband and cuffs with elastic\r\nEmbroidered Stüssy logo on leg\r\nStüssy flag label on back pocket\r\nPiece dyed\r\n100% cotton', 10, 4, 1, '2022-05-16 00:33:22'),
(112, 'Stussy World Tour', 550000, 0, 0, 'stussy-world-tour-trackpant-solid-flight-green-mens-pants_1_result.jpg', 'PRODUCT DETAILS\r\n- Two slant front pockets\r\n- Four patch pockets\r\n- Two rear pockets with snap closure\r\n- Fixed waistband with buckle adjusters\r\n- Metal zip fly\r\n- Double layer knee and seat panels\r\n- Drawcord cuffs\r\n- Stüssy original stock flag label at rear hip\r\n', 10, 4, 1, '2022-05-16 00:33:20'),
(113, 'Basic Stock Beachshort in Black', 350000, 0, 0, '20220118-DANIEL180122-251_2048x_result.jpg', 'Product Details:\r\n\r\nMedium length short with elasticised waistband. \r\nFunctional back and side pockets and internal drawcord. \r\nWoven patch trim on back pocket & screen printed Stussy logo on left leg. \r\nRegular fit composed of 100% cotton.\r\nShorts to take you from the beach to everyday wear. \r\n', 11, 4, 1, '2022-05-16 00:33:18'),
(114, 'Water Big Beachshort in Flight Green', 350000, 0, 0, '20211027-IMG_0453_2048x_result.jpg', 'Product Details:\r\nRegular fit beach shorts with elasticised waistband.\r\nEmbroidered logo at left leg.\r\nTwo pockets at either side.\r\nBack pocket with logo tag.', 11, 4, 1, '2022-05-16 00:33:17'),
(115, 'Wide Wale Corduroy Beachshorts in Cream', 500000, 0, 0, '20211012-IMG_0630_2048x_result.jpg', 'Product Details: \r\nMen\'s elasticised waist short with grown-on waistband & internal drawcord. \r\nFront in-seam pockets & back pockets.\r\nWoven label on left leg. \r\nEmbroidered logo at back. \r\nConstructed from 100% Cotton Cord.', 11, 4, 1, '2022-05-16 00:33:15'),
(116, 'CARGO TROUSERS', 550000, 1, 0, '9621702800_2_1_1.jpg', 'CARGO TROUSERS\r\nSkinny trousers. Front and back pockets. Patch pockets with flaps on the legs. Strap detail on the legs. Zip fly and top button fastening.', 9, 3, 1, '2022-05-16 00:33:12'),
(117, 'CARGO TROUSERS WITH STRAPS', 55000, 1, 0, '1538497800_2_1_1.jpg', 'CARGO TROUSERS WITH STRAPS\r\nRelaxed fit jeans. Front pockets and rear pocket details. Patch pockets with flaps on the legs. Turn-up hems. Front zip and button fastening.\r\n\r\n\r\n', 9, 3, 1, '2022-05-16 00:33:09'),
(118, 'CROPPED CARGO TROUSERS', 650000, 0, 0, '4391424505_2_1_1.jpg', 'CROPPED CARGO TROUSERS\r\nCropped-length relaxed-fit trousers made of a technical fabric. Front pockets and rear pocket details. Patch pocket appliqués on the legs. Front zip fly and button fastening.\r\n\r\n', 9, 3, 1, '2022-05-16 00:33:07'),
(119, 'BAGGY FIT JEANS', 550000, 0, 0, '6688494400_2_1_1.jpg', 'BAGGY FIT JEANS\r\n\r\nBaggy fit jeans with five pockets. Faded effect. Button-up front.', 10, 3, 1, '2022-05-16 00:33:03'),
(120, 'BASIC JOGGING TROUSERS', 650000, 0, 0, '5584452827_2_1_1.jpg', 'BASIC JOGGING TROUSERS\r\nTrousers with an elastic waistband and adjustable drawstrings. Front pockets, rear patch pocket detail and cuffed elastic hems.', 10, 3, 1, '2022-05-16 00:33:01'),
(121, 'JOGGERS WITH THERMO-SEALED DETAIL', 650000, 1, 0, '4391418800_2_1_1.jpg', 'JOGGERS WITH THERMO-SEALED DETAIL\r\nSlim fit trousers made of a textured cotton fabric. Adjustable elastic waistband with drawstring. Front and back welt pockets. Matching thermo-sealed seam details on the legs. Elastic cuffs at the hem.', 10, 3, 1, '2022-05-16 00:32:59'),
(122, 'BERMUDA SHORTS WITH THERMO', 350000, 0, 0, '0761407837_2_1_1.jpg', 'BERMUDA SHORTS WITH THERMO\r\nBermuda shorts with an adjustable drawstring waistband. Featuring front pockets and thermo-sealed zip pocket on the back', 11, 3, 1, '2022-05-16 00:32:57'),
(123, 'FAUX LEATHER BERMUDA', 550000, 1, 0, '5070681505_2_1_1.jpg', 'FAUX LEATHER BERMUDA\r\nBermuda shorts with an elastic waistband and drawstring. Front pockets and back patch pocket detail.', 11, 3, 1, '2022-05-16 00:32:55'),
(124, 'LINEN - VISCOSE BERMUDA', 300000, 1, 0, '4432425104_2_1_1.jpg', 'LINEN - VISCOSE BERMUDA\r\nBermuda shorts made of a linen and viscose blend. Elastic waistband with adjustable drawstring. Front pockets and rear welt pocket details.', 11, 3, 1, '2022-05-16 00:32:53'),
(125, 'AEROREADY DESIGNED TO MOVE', 500000, 0, 1, '95a131c570044a729c13ad9f010f7f26_9366_result.jpg', 'AEROREADY DESIGNED TO MOVE BOYFRIEND SPORT TEE\r\nA LOOSE-FITTING TRAINING TEE MADE WITH RECYCLED MATERIALS.\r\nCrush your fitness goals in comfort. Because working out will be less of a chore when you wear this roomy adidas t-shirt. Wear it as-is or tie it up to switch up your look. Feel dry no matter how hard you train, thanks to moisture-absorbing AEROREADY. Solid colours let you pair it up with anything.\r\n\r\nMade with 100% recycled materials, this product represents just one of our solutions to help end plastic waste.', 14, 1, 1, '2022-05-17 19:01:00'),
(126, 'BADGE OF SPORT ME TIME', 550000, 1, 0, '12441ea763b5416b9a12add00148a489_9366_result.jpg', 'ME TIME BADGE OF SPORT TEE\r\nA CASUAL TEE THAT SETTLES YOU RIGHT INTO COMFORT.\r\nNothing needs to get in the way of you and your downtime. Luckily this adidas t-shirt practically eliminates distractions, or at least lets you forget them momentarily, with its soft, stretchy build. Settle into that good feeling of relaxation. It\'s deserved.\r\n\r\nOur cotton products support more sustainable cotton farming.', 14, 1, 1, '2022-05-16 00:32:45'),
(127, 'ESS CREW P', 550000, 0, 1, 'b3432549f9a54a11bb57addf0008d858_9366_result.jpg', 'ESS CREW P\r\nPlay through with confidence in this adidas golf polo shirt. The cotton-blend piqué fabric has a soft feel for full-round comfort. Moisture-absorbing AEROREADY keeps you dry. A Play Green graphic sits proudly on the chest, symbolising the sport\'s Scottish origins and adidas\' goal of reducing plastic waste.\r\n\r\nOur cotton products support more sustainable cotton farming.', 14, 1, 1, '2022-05-17 19:01:04'),
(128, 'ALWAYS ORIGINAL', 650000, 1, 0, '7d62dc8fe4fc49e3a2fbae2b005dff1b_9366_result.jpg', 'ALWAYS ORIGINAL SNAP-BUTTON HOODIE\r\nA MULTI-WEAR HOODIE WITH \'80S-INSPIRED SNAP-DETACHABLE SLEEVES AND BODY.\r\nNot just a 2022 collection, Always Original is forever. Versatile style that stays standing for those that stay true.\r\n\r\nThe Always Original Snap-Button Hoodie is a cozy embodiment of the collection\'s modular approach to design. Looking to the iconic \'80s tearaway style for inspiration, the hoodie can be customized to suit your style and your mood. Crafted from marshmallow-soft cotton French terry, the snap buttons on the body and the sleeves allow you to crop the look.\r\n\r\nCut for an inclusive fit, the hoodie gives you the freedom to truly own your look. Designed by adidas, defined by you.', 15, 1, 1, '2022-05-16 00:32:36'),
(129, 'BF HOODIE', 550000, 0, 0, 'ff0c632fa2d94443b5f7ad8e00b620ab_9366_result.jpg', 'BF HOODIE\r\nWhether you\'re awaiting the festivities or celebrating the new year, this adidas hoodie adds to the joyous energy of Chinese New Year. Soft cotton keeps you comfortable. A colourful Trefoil brings good luck to every occasion.\r\n\r\nOur cotton products support more sustainable cotton farming.', 15, 1, 1, '2022-05-16 00:32:33'),
(130, 'FUTURE ICONS ADIDAS SPORTSWEAR', 550000, 0, 0, 'f054c9d032c14349b97ead240166e4db_9366_result.jpg', 'ADIDAS SPORTSWEAR FUTURE ICONS HOODIE\r\nAN EVERYDAY HOODIE WITH A RELAXED FIT FOR COMFORTABLE LAYERING.\r\nYou put in the time. You put in the effort. And when you put on this adidas sweatshirt after your workout, you feel the reward. Soft cotton material drapes the body in a relaxed shape, so you practically sink into comfort. Ribbed cuffs go ahead and bring an extra level of snug to the casual sweatshirt. Whatever\'s next on the agenda, you\'ll show up feeling good.', 15, 1, 1, '2022-05-16 00:32:27'),
(131, 'ADIDAS SPORTSWEAR', 550000, 0, 0, 'e61137516fef4dfca526ad5e00d75d70_9366_result.jpg', 'ADIDAS SPORTSWEAR FUTURE ICONS WOVEN WINDBREAKER\r\nA LOOSE, ADJUSTABLE WINDBREAKER MADE WITH RECYCLED MATERIALS.\r\nLet\'s be honest. It takes a lot to get in the way of your routine. But that doesn\'t mean the plans you have need to be less comfortable because of a shift in weather. Welcome this adidas windbreaker to your wardrobe. The loose shape layers easily over your other clothes with ribbed cuffs and an adjustable tie cord to keep the look in place. 3-Stripes sign it off in a bold flash of adidas energy.\r\n\r\nMade with 100% recycled materials, this product represents just one of our solutions to help end plastic waste.\r\n\r\n', 16, 1, 1, '2022-05-16 00:32:24'),
(132, 'Z.N.E. SPORTSWEAR', 650000, 1, 0, 'd075bac96d8f4218959cad280086a13d_9366_result.jpg', 'ADIDAS Z.N.E. SPORTSWEAR HOODIE\r\nA SLIM, SLIGHTLY STRETCHY HOODIE FOR ALL-DAY COMFORT.\r\nThe pressure is inevitable. But what you do with it is all you. Do you sit with it? Move with it? Shape it? Whatever your approach, this adidas Z.N.E. hoodie helps you focus in comfort. It was made for it, using athletes\' insights to inform the streamlined design. The slightly stretchy build is ideal for warming up, pushing forward or just giving in to relaxation. Because the time is yours. Make it count.', 16, 1, 1, '2022-05-16 00:32:22'),
(133, 'FUTURE ICONS ADIDAS SPORTSWEAR', 550000, 0, 0, '039635e4181b4b7f9b85adb201153090_9366_result.jpg', 'ADIDAS SPORTSWEAR FUTURE ICONS WOVEN WINDBREAKER\r\nA LOOSE, ADJUSTABLE WINDBREAKER MADE WITH RECYCLED MATERIALS.\r\nLet\'s be honest. It takes a lot to get in the way of your routine. But that doesn\'t mean the plans you have need to be less comfortable because of a shift in weather. Welcome this adidas windbreaker to your wardrobe. The loose shape layers easily over your other clothes with ribbed cuffs and an adjustable tie cord to keep the look in place. 3-Stripes sign it off in a bold flash of adidas energy.\r\n\r\nMade with 100% recycled materials, this product represents just one of our solutions to help end plastic waste.\r\n\r\n', 16, 1, 1, '2022-05-16 00:32:19'),
(134, 'ADICOLOR', 550000, 1, 0, 'c7c672cedd534302b5e2ad0c0113df9e_9366_result.jpg', 'ADICOLOR SHATTERED TREFOIL WHEEL SWEATSHIRT\r\nA CASUAL CREWNECK THAT REIMAGINES AN ADIDAS ICON.\r\nSee the Trefoil from an entirely new angle. Even when it\'s upside-down and deconstructed, the three-leaved symbol always stands for unity in diversity. This sweatshirt is just the latest iteration of adidas Originals heritage. The French terry fabric feels super plush inside, just like your old favourite.\r\n\r\nBy buying cotton products from us, you\'re supporting more sustainable cotton farming.\r\n\r\n', 17, 1, 1, '2022-05-16 00:32:17'),
(135, 'CREW SWEATSHIRT', 500000, 0, 1, 'eb8e972b26b04c748765acbe01317e7c_9366_result.jpg', 'ADIDAS SPORTSWEAR STUDIO LOUNGE SUMMER CREW SWEATSHIRT\r\nA CROP SWEATSHIRT MADE IN PART WITH RECYCLED CONTENT.\r\nYou love a hard training session. But you also love a rejuvenating rest day. When it\'s time to kick back and relax, cosy up in this adidas sweatshirt. The roomy loose fit and soft French terry fabric will have you pulling it on every chance you get. And if your friend invites you out while you\'re chilling on the couch, no need to change. The batwing sleeves and drawcord adjustable hem keep you comfortable no matter where you go.', 17, 1, 1, '2022-05-17 19:01:08'),
(136, 'SWEATER DAS', 650000, 1, 0, '674a44a6511f4e949ac6ac310164de06_9366_result.jpg', 'GIRLS ARE AWESOME SWEATER\r\nA STAND OUT SWEATSHIRT IN COLLABORATION WITH GIRLS ARE AWESOME.\r\nChange is constant. And needed. Champions for female visibility and representation, Girls Are Awesome and adidas keep their collaboration going strong. Continue to be part of the change alongside us in this cosy sweater, proudly showing off \"GIRLS ARE AWESOME\" on the chest. You know, facts.', 17, 1, 1, '2022-05-16 00:32:14'),
(137, 'BOXY FIT REPEAT SCRIPT', 550000, 1, 0, 'chpeu_114886_ww001_full_crop_result.jpg', 'BOXY FIT REPEAT SCRIPT LOGO T-SHIRT\r\nCut in a modern boxy fit from 100% cotton jersey, this women’s t-shirt is ready to bring a new dimension to your streetwear collection.', 14, 2, 1, '2022-05-16 00:32:13'),
(138, 'CLASSIC 1952 CREW NECK', 500000, 0, 0, 'chpeu_115109_kk001_full_crop_result.jpg', 'CLASSIC 1952 CREW NECK\r\nRefresh your essentials with our classic crew neck t-shirt. Crafted from premium cotton jersey, it features our iconic C embroidered onto the chest and sleeve.\r\n', 14, 2, 1, '2022-05-16 00:32:11'),
(139, 'CROPPED BIG SCRIPT LOGO', 500000, 0, 0, 'chpeu_114930_bs148_full_crop_result.jpg', 'CROPPED BIG SCRIPT LOGO\r\nCropped and boxy with a back script logo, this women’s crewneck t-shirt makes the perfect casual go-to piece. Crafted in soft cotton in a fresh colourway.', 14, 2, 1, '2022-05-16 00:32:07'),
(140, 'EMBROIDERED BOOKSTORE', 550000, 1, 0, 'chpeu_114962_ys015_full_crop_result.jpg', 'EMBROIDERED BOOKSTORE\r\nAn old school staple gets a fresh colourway remix with this women’s hoodie. It’s cut from heavyweight cotton with a kangaroo pocket, drawcords and a front embroidered logo.', 15, 2, 1, '2022-05-16 00:32:05'),
(141, 'EMBROIDERED C CHAMPION', 650000, 1, 0, 'chpeu_114920_ps092_full_crop_result.jpg', 'Women\'s hoodie\r\nPull on this women\'s hoodie and keep your streetstyle game at 100%. It comes crafted in heavy cotton poly with embroidered branding details.', 15, 2, 1, '2022-05-16 00:32:03'),
(142, 'ORGANIC COTTON BLEND TIE DYE', 550000, 0, 1, 'chpeu_114756_kl001_full_crop_result.jpg', 'ORGANIC COTTON BLEND TIE DYE\r\nDial up your outfits in this tie dye print zip-up hoodie, crafted from an organic cotton terry blend for optimum comfort.', 15, 2, 1, '2022-05-17 19:00:36'),
(143, 'HIGH NECK PADDED', 550000, 0, 0, 'chpeu_114597_kk001_full_crop_result.jpg', 'HIGH NECK PADDED\r\nA go-to new season layer, this lightweight padded jacket features a high neck with a script logo print and pockets to keep your essentials on-hand.', 16, 2, 1, '2022-05-16 00:31:56'),
(144, 'SCRIPT LOGO CROPPED', 550000, 1, 1, 'chpeu_114170_ps032_full_crop_result.jpg', 'SCRIPT LOGO CROPPED\r\nA must-have for layering your looks, this cropped jacket features a hidden hood for maximum versatility, as well as a pocket to the front for any essentials.', 16, 2, 1, '2022-05-17 19:01:12'),
(145, 'TEXTURED CROPPED BOMBER', 650000, 1, 0, 'chpeu_113039_kk001_full_crop_result.jpg', 'TEXTURED CROPPED BOMBER\r\nA go-to layering piece for the new season, this cropped jacket features logo detaiing to the front and back as well as the signature C to the sleeve.', 16, 2, 1, '2022-05-16 00:31:51'),
(146, 'CROPPED REVERSE WEAVE LOGO NECK', 550000, 1, 0, 'chpeu_112692_ww001_full_crop_result.jpg', 'CROPPED REVERSE WEAVE LOGO NECK\r\nIn a cropped silhouette fresh for the new season, this Reverse Weave sweatshirt is a layering go-to. Subtle yet standout details including the script logo to the back of the neck and signature C to the sleeve complete it.', 17, 2, 1, '2022-05-16 00:31:46'),
(147, 'HEAVY COTTON EMBROIDERED', 650000, 1, 0, 'chpeu_114922_vs004_full_crop_result.jpg', 'HEAVY COTTON EMBROIDERED\r\nMinimal details, simple classic silhouette – less is indeed more with these women’s cotton joggers. They include front pockets as well as elasticated cuffs and waistband.', 17, 2, 1, '2022-05-16 00:31:45'),
(148, 'ORGANIC COTTON BLEND TIE', 550000, 0, 0, 'chpeu_114758_wl001_full_crop_result.jpg', 'Tie dye print\r\nPairing a digital tie dye print with logo tape sleeves, this sweatshirt is a must-have for your new season wardrobe. Team with the co-ordinating sweatpants.', 17, 2, 1, '2022-05-16 00:31:43'),
(149, 'Women_s Fort Lewis', 500000, 1, 0, 'FSR31_BK_BK.jpg', 'Product Details\r\nThe Fort Lewis Tee is a cropped short sleeved women’s T-shirt. A signature cotton crew neck with our Dickies script logo on the chest and souvenir style leopard and foliage print on the back. A short sleeve t-shirt made for everyday wear.', 14, 6, 1, '2022-05-16 00:31:40'),
(150, 'Women_s Maple Valley', 550000, 0, 0, 'FSR14_G2M_FR.jpg', 'Product Details\r\nThe Maple Valley Tee is a slim fit, cropped, short sleeve women’s T-shirt. A nostalgic 90’s style crew neck, featuring Dickies logo on the front. A feminine summer T-shirt made for everyday wear.', 14, 6, 1, '2022-05-16 00:31:38'),
(151, 'Women_s Short Sleeve', 500000, 0, 0, 'FS450_AN1_FR.jpg', 'Product Details\r\nGet down to business in Dickies Women\'s Short Sleeve Heavyweight T-Shirt. Built with a solid cotton fabrication, this jersey knit t-shirt is built to stay soft for comfort, while also designed durable enough to take daily wear and tear. The chest pocket adds a touch of utility to the shirt, letting you carry small belongings you\'ll need throughout your day.', 14, 6, 1, '2022-05-16 00:31:36'),
(152, 'Women_s Performance', 550000, 0, 0, 'SWF002_HG_FR.jpg', 'Product Details\r\nPersist in precipitation and stay productive with Dickies Women’s Performance Hooded Jacket. This lightweight jacket features a durable metal zipper closure and an abrasion resistant Durable Water Repellent (DWR) finish throughout the design. This means you’ll stay dry no matter how wet it gets at work. Plus, the 3-piece hood and adjustable toggle drawstring ensure a great protective fit whether you’re wearing a hat, helmet or high ponytail. Deep dual front entry pockets safeguard your gear from inclement conditions with a snap button closure on each opening. Protective in the truest sense, Dickies’ reflective logo is affixed at the hem to enhance your visibility and keep you safe.', 15, 6, 1, '2022-05-16 00:31:34'),
(153, 'Women_s Plus Heavyweight', 650000, 0, 0, 'FWW22_F2F_FR.jpg', 'Product Details\r\nDickies Women\'s Plus Heavyweight Logo Sleeve Fleece Pullover is constructed from a soft fleece for a comfortable hand feel. Double needle stitching provides added strength, while the Durable Water Repellent finish enables this hoodie to be put to work in wet conditions. Equipped with a crossover neckline, three-piece adjustable hood and rib knit waist and cuffs, you\'ll be sure to keep the elements out while you perform in ultimate comfort. There is no shortage of layering potential with this hoodie, a true wardrobe staple that outlasts every season. The kangaroo pocket at front provides added utility to store small gear, or to quickly warm your hands while on the go. Complete with a left sleeve Dickies graphic, there\'s no denying your devotion to protective and performance driven workwear.', 15, 6, 1, '2022-05-16 00:31:32'),
(154, 'Women’s High Pile', 650000, 0, 0, 'FW403_B2H_FR.jpg', 'Product Details\r\nDon’t let the cold and wet keep you from performing at your best. Dickies Women’s High Pile Fleece Lined Hoodie provides an extra layer of defense when you are taking your tasks outdoors. Complete with a comfy exterior soft fleece fabrication and internal High Pile Fleece lining for maximum warmth, this full zip hoodie goes the extra mile with a water repellent DWR finish to protect you from damp conditions. The patented SafeCinch™ internal mechanism adds the benefit of adjusting your hood through the interior of the front pockets, allowing your hands to stay protected as you navigate the perfect cinched fit. Plus, the three-piece hood further supplies a superior fit, while the thumb holes and matching rib at the hem and cuffs provide for extra coverage and protection from crisp climates. Dickies logo label is proudly placed at the front left pocket to show off your pride for authentic protective workwear.', 15, 6, 1, '2022-05-16 00:31:30'),
(155, 'Women’s Duck Hooded', 550000, 1, 0, 'FJ077_BD_FR.jpg', 'Product Details\r\nDiscover the most versatile outer layer that delivers on the promise of warmth, durability and protection in Dickies Women’s Duck Hooded Shirt Jacket. Combining the lived-in feel of a hoodie, the strength of a duck canvas work shirt and the security of a jacket, this workday essential will check the box for function and style. Featuring a sturdy brushed duck canvas fabrication and equipped with a cozy jersey lining and hood, you’ll embrace the cold climate with ease in this shirt jacket. You’re covered in wet weather too, as the DWR finish ensures water repellency to keep you dry. Durable metal snap closures at front and a drop tail hem offers even more protection when your work climate calls for it. Maximum utility comes standard with two large chest pockets and two side welt pockets to store all that you carry.', 16, 6, 1, '2022-05-16 00:31:27'),
(156, 'Women’s Flannel Hooded', 550000, 0, 0, 'FJ076_YP2_FR.jpg', 'Product Details\r\nDiscover the most versatile outer layer that delivers on the promise of warmth, comfort and protection in Dickies Women’s Flannel Hooded Shirt Jacket. Combining the lived-in feel of a hoodie, the warmth of flannel shirt, and the security of a jacket, this workday essential will check the box for function and style. Featuring a soft flannel fabrication equipped with a cozy jersey lining and hood, you’ll embrace the cold climate with ease in this quilted shirt jacket. You’re covered in wet weather too, as the DWR finish ensures water repellency to keep you dry. Durable metal snap closures at front and a drop tail hem offers even more protection when your work climate calls for it. Maximum utility comes standard with two large chest pockets and two side welt pockets to store all that you carry.\r\n\r\n', 16, 6, 1, '2022-05-16 00:31:25'),
(157, 'Women’s Reworked Chore', 500000, 0, 0, 'FJR01_BM2_FR.jpg', 'Product Details\r\nHonoring vintage workwear, the Dickies Reworked Chore Coat celebrates timeless utility with a modern aesthetic. Constructed from an authentic cotton sanded Duck that you’ve come to know and love for its sturdy durability, this chore coat is paired with mixed media corduroy details and a classic bandana printed lining, giving it a contemporary overhaul. Oversized by nature and with plenty of storage in the four front flap pockets, its rugged durability will keep you moving through whatever your day brings. Button it up or wear it open with durable, easy to use tack buttons. You’ll have ultimate comfort flexibility with the back vent opening and button cuff closures.\r\n\r\n', 16, 6, 1, '2022-05-16 00:31:23'),
(158, 'Nike Dri-FIT Race', 350000, 1, 0, 'fc5caaf4-5974-49a0-9626-cdfa34ad39d9_result.jpg', 'Nike Dri-FIT Race\r\nLightweight fabric and a streamlined design keep you speeding for the finishing line.The Nike Dri-FIT Race Vest has mesh in key areas to help keep you cool with every step.This product is made from 100% recycled polyester fibres.', 14, 5, 1, '2022-05-16 00:31:19'),
(159, 'Nike Sportswear', 550000, 1, 1, 'a5594df9-b981-441d-b15f-b7cef71cdf37_result.jpg', 'Nike sportswear\r\nThe extra-oversized fit of this top offers you a casual but confident look. Double-stitched seams and bar tacks reinforce the heavyweight cotton and complement the Swoosh appliqué and woven label above the hem. This product is made from at least 75% organic cotton fibres.', 14, 5, 1, '2022-05-17 19:01:14'),
(160, 'Nike Sportswear black', 350000, 0, 0, '6238a739-7e1a-49cb-a02f-2fc2cadee6aa_result.jpg', 'Nike sportswear\r\nThe extra-oversized fit of this top offers you a casual but confident look. Double-stitched seams and bar tacks reinforce the heavyweight cotton and complement the Swoosh appliqué and woven label above the hem. This product is made from at least 75% organic cotton fibres.', 14, 5, 1, '2022-05-16 00:31:14'),
(161, 'Nike Dri-FIT', 650000, 1, 0, 'dri-fit-fleece-cropped-training-hoodie-Lw3tq6_result.jpg', 'Nike Dri-FIT\r\nTake on your miles in smooth comfort with the Nike 10K Shorts. Perforated side panels and a wide, ventilated waistband help you stay cool with every mile. Plus, we added the original \"Solo Swoosh\" in homage to those iconic athletes and teams of the \'90s. This product is made from at least 50% recycled polyester fibres.', 15, 5, 1, '2022-05-16 00:31:12'),
(162, 'Nike Dri-FIT Swoosh Fly Standard Issue', 500000, 0, 1, '09a02c5b-8478-4cf9-8c67-98062ed81e79_result.jpg', 'Nike Dri-FIT\r\nTake on your miles in smooth comfort with the Nike 10K Shorts. Perforated side panels and a wide, ventilated waistband help you stay cool with every mile. Plus, we added the original \"Solo Swoosh\" in homage to those iconic athletes and teams of the \'90s. This product is made from at least 50% recycled polyester fibres.', 15, 5, 1, '2022-05-17 19:00:38'),
(163, 'Sportswear Icon Clash', 550000, 0, 0, 'ba62a9ce-c87b-43ea-9e59-b31ecc255a6f_result.jpg', 'The Nike Sportswear\r\n Swoosh Jacket celebrates the Swoosh. The oversized Swoosh design is sewn-in for durability and style. A roomy fit and mesh lining provide a casual feel, perfect for layering.', 15, 5, 1, '2022-05-16 00:31:05'),
(164, 'Nike Air', 650000, 1, 0, 'e6a1919b-1ed6-4440-bce5-4a853dc82c52_result.jpg', 'Nike air jacket\r\nCelebrate the Swoosh in the Nike Sportswear Woven Jacket. An oversized Swoosh design stretches across the front and back for a bold look. A loose fit and full-length zip make this lightweight jacket a layering essential, while nostalgic branding and classic details nod to university style.', 16, 5, 1, '2022-05-16 00:31:02'),
(165, 'Nike Sportswear', 550000, 1, 0, 'e45d2080-3952-4247-ab28-0472cc6148b4_result.jpg', 'The Nike Sportswear\r\n Swoosh Jacket celebrates the Swoosh. The oversized Swoosh design is sewn-in for durability and style. A roomy fit and mesh lining provide a casual feel, perfect for layering.', 16, 5, 1, '2022-05-16 00:31:00'),
(166, 'Nike Sportswear Essential Repel', 500000, 0, 0, '18a106dd-6833-4190-9bea-6178780f5ffe_result.jpg', 'Nike Sportswear Essential Repel\r\nThe Nike Sportswear Essential Repel Jacket is made from smooth, water-repellent fabric to help keep you dry and comfortable in cool, wet weather. Elasticated cuffs hold the sleeves in place while exposed bungees at the hem let you customise the style and fit. This product is made from 100% recycled polyester fibres.', 16, 5, 1, '2022-05-16 00:30:58'),
(167, 'Nike shirtz', 550000, 0, 0, 'de40b1c2-d16d-465e-af15-57fcb997cd80_result.jpg', 'Sweatshirtz \r\nA Swoosh design this classic is always in season. Sink into the cosy oversized fit of this soft sweatshirt to keep you feeling comfy all day. Collegiate-inspired graphics and ribbed cuffs and hem help bring a nostalgic campus vibe to this streetwear staple.', 17, 5, 1, '2022-05-16 00:30:55'),
(168, 'Nike Sport', 650000, 0, 0, '76fcd0b6-88ce-47e0-90d1-601b614b415e_result.jpg', 'The Nike Sport\r\nupdate a favourite retro style with a mid-rise design and a snug stretch waistband. Stretchy, sweat-wicking fabric and a Swoosh logo make these an easy choice for everyday wear.', 17, 5, 1, '2022-05-16 00:30:53'),
(169, 'Nike Yoga Luxe A.I.R', 650000, 1, 0, '9bcdbeb2-ae9e-4983-a6ff-d247f43389ce_result.jpg', 'Nike Yoga Luxe A.I.R\r\nAs one of Nike\'s Artist in Residence selections, the distraction-free design of the Nike Yoga Luxe A.I.R. Crew gets a vibrant geometric print from artist Robbie Simon. Featuring minimal seam lines and dropped shoulders, it gives you freedom to effortlessly flow through your poses without restriction. Elevated 4-way stretch fabric feels soft and smooth against your body, keeping your mind focused on your practice.', 17, 5, 1, '2022-05-16 00:30:51'),
(170, 'COTTON T-SHIRT WITH SHOULDER PADS', 500000, 0, 0, '0858122066_2_1_1.jpg', 'COTTON T-SHIRT WITH SHOULDER PADS\r\n\r\nSleeveless T-shirt made of 100% cotton with a round neckline and shoulder pads.', 14, 3, 1, '2022-05-16 00:30:48'),
(171, 'CROPPED', 550000, 0, 0, '4424159710_2_3_1.jpg', 'CROPPED T-SHIRT\r\n\r\nCropped short sleeve T-shirt with a round neckline.', 14, 3, 1, '2022-05-16 00:30:45'),
(172, 'CROPPED T-SHIRT', 550000, 0, 0, '6050153506_2_1_1.jpg', 'CROPPED T-SHIRT\r\n\r\nCropped short sleeve T-shirt with a round neckline.', 14, 3, 1, '2022-05-16 00:30:38'),
(173, 'CALIFORNIA', 650000, 1, 0, '5643304803_2_3_1.jpg', 'CALIFORNIA SWEATSHIRT\r\n\r\nLong sleeve hoodie with an adjustable drawstring hood. Contrast slogan detail.', 15, 3, 1, '2022-05-16 00:30:35'),
(174, 'LUXURY _ FITNESS HOODIE', 550000, 0, 0, '5643324400_2_1_1.jpg', 'LUXURY & FITNESS HOODIE\r\n\r\nSleeveless hoodie with an adjustable drawstring hood. Contrast slogan detail.', 15, 3, 1, '2022-05-16 00:30:32'),
(175, 'PATCH HOODIE', 650000, 0, 1, '0264016104_2_2_1.jpg', 'PATCH HOODIE\r\n\r\nHoodie with an adjustable drawstring hood. Long sleeves. Pouch pocket on the front. Contrast rubberised patch detail. Ribbed trims.', 15, 3, 1, '2022-05-17 19:01:17'),
(176, 'EMBROIDERED OVERSHIRT', 500000, 1, 0, '4877042251_1_1_1.jpg', 'EMBROIDERED OVERSHIRT WITH POCKETS\r\n\r\nLoose-fitting collared overshirt with cuffed long sleeves. Front patch pockets. Contrast embroidery detail. Asymmetric hem. Button-up front.', 16, 3, 1, '2022-05-16 00:30:28'),
(177, 'JACKET WITH FLAP POCKETS', 900000, 0, 0, '2296136704_2_3_1.jpg', 'JACKET WITH FLAP POCKETS\r\n\r\nCollared jacket featuring long sleeves with shoulder pads. Front flap pockets. Contrast button-up front.', 16, 3, 1, '2022-05-16 00:30:26'),
(178, 'FAUX LEATHER JACKET', 650000, 1, 0, '3427730800_2_2_1.jpg', 'FAUX LEATHER JACKET\r\n\r\nLong sleeve jacket with a lapel collar. Featuring front pockets with metal zip, shoulder tabs and metal zip fastening at the front.', 16, 3, 1, '2022-05-16 00:30:22'),
(179, 'NEW YORK', 500000, 0, 0, '0264310620_2_1_1.jpg', 'NEW YORK\r\n\r\nRound neck sweatshirt with long sleeves. Ribbed trims. Contrast embroidered NY detail on the front.', 17, 3, 1, '2022-05-16 00:30:20'),
(180, 'SOFT RHINESTONE SWEATER', 650000, 0, 0, '5644037251_2_1_1.jpg', 'SOFT RHINESTONE SWEATER\r\n\r\nRound neck sweater with long sleeves. Featuring rhinestone appliqués.', 17, 3, 1, '2022-05-16 00:30:17'),
(181, 'STRIPED RUSTIC SWEATER', 550000, 1, 0, '2298013800_2_3_1.jpg', 'STRIPED RUSTIC SWEATER\r\n\r\nRustic sweater with a round neckline and long sleeves.', 17, 3, 1, '2022-05-16 00:30:15'),
(182, 'ADIBREAK', 650000, 0, 1, 'b1b2ecaff3854cca94ffac31016454a5_9366_result.jpg', 'ADIBBREAK\r\nTIGHTS WITH A HANDY SIDE POCKET, MADE IN PART WITH RECYCLED MATERIALS.\r\nBlast past all your previous PRs in these adidas tights. Techfit focuses your muscles to generate maximum explosive power, speed and endurance as you plough through your plyometrics. AEROREADY manages moisture, so you stay dry and focused as you train.\r\n\r\nMade with a series of recycled materials, and at least 60% recycled content, this product represents just one of our solutions to help end plastic waste.', 18, 1, 1, '2022-05-17 19:00:41'),
(183, 'CLASSICS ADICOLOR', 550000, 0, 0, 'a3326ae19e104a12b167ad9201035e9c_9366_result.jpg', 'ADICOLOR CLASSICS 3-STRIPES TIGHTS\r\nHIGH-RISE LEGGINGS WITH SIGNATURE 3-STRIPES STYLE.\r\nOne of the best accessories The 3-Stripes. And these adidas tights make sure they\'re seen in crisp white, practically popping off against the contrast build. The look is classic. Some could say a staple — definitely a piece you want to have in your rotation. Not just because of the easy style, but because of the comfort, which is served up big-time here with soft, stretchy cotton.', 18, 1, 1, '2022-05-16 00:30:09'),
(184, 'MODERN B-BALL', 650000, 0, 0, '881c8037196442229166ad9c010141be_9366_result.jpg', 'MODERN B-BALL PANTS\r\nSOFT, CASUAL SWEATPANTS WITH STYLE BORROWED FROM THE HARDWOOD.\r\nComfort isn\'t just a feeling. It\'s a mindset. When you settle in with these adidas pants, you also settle into a state of ease that can be taken anywhere. Consider these pants a 24/7 support system that has your back on all things comfort and style. Soft French terry loosely hangs on the body, made extra comfortable with the ribbed waistband and cuffs. There\'s some old-school hoops flavour dipped into the design too — because if there\'s one place with undeniable steeze, it\'s the hardwood.', 18, 1, 1, '2022-05-16 00:30:08'),
(185, 'ADIDAS SPORTSWEAR', 550000, 0, 0, 'a1961d246fd24da7bd7eae4400534295_9366_result.jpg', 'ADIDAS SPORTSWEAR STUDIO LOUNGE SUMMER PANTS\r\nSOFT, HIGH-WAISTED SWEATPANTS MADE IN PART WITH RECYCLED CONTENT.\r\nThese adidas sweatpants go beyond comfort. Truly, why wear anything else? They\'re minimalist in style for a reason — so you can dress them up or dress them down, wear them at your desk or wear them on the couch. They\'re the do-everything-pant when you don\'t want to do anything at all (but sometimes have to).', 19, 1, 1, '2022-05-16 00:30:06'),
(186, 'ESSENTIALS ADICOLOR', 550000, 0, 0, '0cfa7fffae7d4ce99e7cad2700920e35_9366_result.jpg', 'ADICOLOR ESSENTIALS SLIM JOGGERS\r\nCLASSIC JOGGERS THAT MIX AND MATCH EASILY.\r\nAt the crossroads of cool confidence and casual comfort These adidas joggers. They\'re comfy enough to take on a full weekend of binge-watching movies, but fly enough to wear in the city. That\'s the beauty of soft cotton and a flattering slim fit.\r\n\r\nBy buying cotton products from us, you\'re supporting more sustainable cotton farming.', 19, 1, 1, '2022-05-16 00:30:02'),
(187, 'FUTURE ICONS ADIDAS SPORTSWEAR', 350000, 0, 0, '205fe2031e5a45f0be71ad5e00fd40e2_9366_result.jpg', 'ADIDAS SPORTSWEAR FUTURE ICONS PANTS\r\nHIGH-RISE, CROPPED SWEATPANTS MADE IN PART WITH RECYCLED CONTENT.\r\nYou don\'t do anything halfway. You work hard. You play hard. And in these adidas sweatpants, you chill hard, too. Which is well-deserved, and a key part of success. The soft material is a welcome treat to sore, tired muscles. Ankle zips make them easy to throw on over your shoes and get out of the gym quickly. Because you\'ve got things to do. Top of the list Relax. If you have to check a few other things off first though, the high-rise waist and cropped length bring some extra style to your moves.', 19, 1, 1, '2022-05-16 00:29:55'),
(188, 'AEROKNIT', 550000, 1, 0, '602fd757f0c5417c9125adbb0179465f_9366_result.jpg', 'AEROKNIT TRAINING 78 TIGHTS\r\nMOISTURE-ABSORBING LEGGINGS, MADE IN PART WITH RECYCLED MATERIALS.\r\nYou showed up to your workout for a reason. Whatever that reason is, honour it. These adidas AEROKNIT tights let you give it your all. No distractions. The seamless design is engineered to fit your body with a second-skin feeling, which encourages a full range of motion. Lunge, jump, twist — with the high-rise waistband, you\'ll be supported and covered.', 20, 1, 1, '2022-05-16 00:29:53'),
(189, 'COLLEGIATE', 550000, 0, 0, '8f245b355ecf40559f24adf800d5de88_9366_result.jpg', 'COLLEGIATE LEGGINGS\r\nLEGGINGS WITH SPORTY STYLE MADE IN PART WITH RECYCLED CONTENT.\r\nWhat would we do without leggings? They always come through to keep us comfortable, whether we\'re relaxing or adventuring. These leggings also serve up serious style points with an adidas Badge of Sport logo and a sporty crop cut. Pair them with a favourite t-shirt, and get after the day.\r\n\r\nMade in part with recycled content generated from production waste, e.g. cutting scraps, and post-consumer household waste to avoid the larger environmental impact of producing virgin content.', 20, 1, 1, '2022-05-16 00:29:52'),
(190, 'SAN 78 TECHFIT', 350000, 0, 1, '65dcfed1397c4228b55fadbb01661bab_9366_result.jpg', 'TECHFIT PERIOD-PROOF 7/8 TIGHTS\r\nPERIOD-PROOF TRAINING TIGHTS MADE IN PART WITH RECYCLED MATERIALS.\r\nMeet your new secret weapon to help against leaks: these adidas Techfit Period-Proof 7/8 Tights. They\'re designed with adidas Flow Shield, a three-layer pad that wicks and absorbs. Wear them with your tampon, pad or cup, and they\'ll help keep you moving. For those who like a finessed fit, they give you a secure, held-in feel however you choose to move. So not only have we got you covered for leaks, you can also have confidence that these tights stay up during your workout.', 20, 1, 1, '2022-05-17 19:01:20'),
(191, 'BRD FIELD ISSUE', 350000, 1, 0, '65ddcd37f49d4c51acdbad960107f758_9366_result.jpg', 'FIELD ISSUE BRD WOVEN SHORTS\r\nSPORTY SHORTS MADE IN PART WITH RECYCLED CONTENT.\r\nCommitted to sport. Committed to yourself. Your dedication to living your best athletic life is clear at glance thanks to the adidas Badge of Sport logos on these shorts. Lightweight and stretchy, they keep you comfortable through sunny-day downtime or busy days in the city.\r\n\r\nMade in part with recycled content generated from production waste, e.g. cutting scraps, and post-consumer household waste to avoid the larger environmental impact of producing virgin content.', 21, 1, 1, '2022-05-16 00:29:47'),
(192, 'PACER', 550000, 0, 0, 'eefa77cd3fc1403f9f24ac2800fae341_9366_result.jpg', 'PACER 3-STRIPES WOVEN HEATHER SHORTS\r\nVERSATILE TRAINING SHORTS BUILT FOR COMFORT.\r\nWeight training, core or cardio. Every workout is an option in these adidas heathered shorts. Slip them on and stay energised through your last rep. With a comfy fit and subtle 3-Stripes on the sides, you\'ll grab them day after day to train with your A-game.\r\n\r\nThis product is made with recycled content as part of our ambition to end plastic waste.', 21, 1, 1, '2022-05-16 00:29:45'),
(193, 'SATIN CLASSICS', 500000, 0, 0, 'd55c21d166ab43b48df5ac9300abc0ed_9366_result.jpg', 'ADICOLOR CLASSICS SATIN SHORTS\r\nSATIN SHORTS WITH A LUXE FEEL.\r\nLounging in satiny shorts makes a casual weekend feel like luxury. With a longer length and loose fit, these adidas shorts feel comfortable even after eating the whole pint of ice cream.\r\n\r\nThis product is made with recycled content as part of our ambition to end plastic waste.', 21, 1, 1, '2022-05-16 00:29:42'),
(194, 'C LOGO STRETCH COTTON', 550000, 1, 0, 'chpeu_114874_kk001_full_crop_result.jpg', 'C LOGO STRETCH COTTON JOGGERS\r\nBring style to your casual days with these regular fit joggers for women. They come in a contemporary colourway with a slightly stretchy cotton mix to ensure extra comfort.', 19, 2, 1, '2022-05-16 00:29:39'),
(195, 'COLLEGIATE LOGO ORGANIC', 500000, 0, 0, 'chpeu_114523_kk002_full_crop_result.jpg', 'COLLEGIATE LOGO ORGANIC\r\nEmblazoned with a collegiate-inspired script logo, this organic cotton blend sweatshirt is your go-to for a vintage varsity vibe.', 19, 2, 1, '2022-05-16 00:29:34'),
(196, 'HEAVY EMBROIDERED C', 650000, 1, 0, 'chpeu_114924_em028_full_crop_result.jpg', 'HEAVY EMBROIDERED C\r\nMinimal details, simple classic silhouette – less is indeed more with these women’s cotton joggers. They include front pockets as well as elasticated cuffs and waistband.', 19, 2, 1, '2022-05-16 00:29:31'),
(197, 'ALL-OVER SCRIPT LOGO', 650000, 0, 0, 'chpeu_112811_wl001_full_front_result.jpg', 'ALL-OVER SCRIPT LOGO\r\nTake your summer look to the max with these all-over script logo print shorts, complete with piping to the sides and a script logo detail to the front.', 21, 2, 1, '2022-05-16 00:29:29'),
(198, 'CONTRAST PIPING C LOGO', 550000, 1, 0, 'chpeu_114916_ps012_full_crop_result.jpg', 'CONTRAST PIPING C LOGO\r\nLook good and move even better in these sporty women’s cotton shorts. They have a clean silhouette where contrasting details complete the casual look.', 21, 2, 1, '2022-05-16 00:29:26'),
(199, 'MULTICOLOUR EMBROIDERED', 550000, 0, 0, 'chpeu_114944_bs554_full_front_result.jpg', 'MULTICOLOUR EMBROIDERED\r\nCrafted for active lifestyles, these heavy cotton women’s shorts come with a high waist and are finished with a ,multicolour script logo on the hip.', 21, 2, 1, '2022-05-16 00:29:23'),
(200, '365 Pants', 550000, 0, 0, 'SPF600_BKX_FR.jpg', '365 Pants\r\nEnhance your performance without sacrificing all-day comfort and protection in Dickies Women\'s Temp-iQ® 365 Pants. Built for the toughest jobs and constructed with Dickies® FLEX fabric, these straight fit pants feature a higher rise, tapered leg and articulated knees for added room to move. Plus, the innovative Temp-iQ® 365 technology is designed to maintain the ideal microclimate between you and your workwear all year round. Advanced body temperature control traps heat when you\'re cold and releases heat when you are warm, ensuring your comfort and protection no matter the conditions. We\'ve got you covered in the sun as well with UPF 40+ defense, anti-odor and moisture wicking finish that keeps you fresh through the longest shifts.', 18, 6, 1, '2022-05-16 00:29:21'),
(201, 'Women_s Performance', 550000, 1, 0, 'SPF001_KBK_FR.jpg', 'Women\'s Performance\r\nDickies Women\'s Performance Workwear Leggings provide maximum comfort for when you need to maximize your range of motion. A durable stretch fabric and curved waistband are supplied for added coverage and to adjust to your ultimate fit. The Cordura® knee and rear patches are enhanced with a DWR trim to provide extra integrity and protection to these sturdy leggings. With a gusseted crotch for extra mobility and comfort, you will be sure to keep moving all day long. Reflective details provide added visibility while on the job and multiple utility pockets and a key loop give easy access to all of your necessities.', 18, 6, 1, '2022-05-16 00:29:19'),
(202, 'Women’s DuraTech', 550000, 0, 0, 'FD085_BD_FR.jpg', 'Women’s DuraTech\r\nRise to the demands of your workday without sacrificing protection in Dickies Women’s DuraTech Renegade Pants. Featuring cutting edge DuraTech technology that’s no longer only for the boys, Dickies has revolutionized the ultimate defense when it comes to your work environment. Equipped with a RepelPro™ finish, protecting you from oil and water, the innovative DuraTech Renegade Pants feature Dickies® FLEX fabrication for superior mobility. Plus, with details like the reinforced back hem including kick plates, these pants are solid enough to stand up to the toughest tasks. An extra wide center back belt loop is built to carry your heaviest tool bag while the knee pad openings safeguard you when you are required to kneel, crawl or stoop.', 18, 6, 1, '2022-05-16 00:29:15'),
(203, 'Shape Skinny Leg', 650000, 1, 1, 'FD145_SNB_FR.jpg', 'Shape Skinny Leg\r\nDickies Women\'s Perfect Shape Skinny Leg Stretch Denim Jeans are designed with Cone\'s \"S Gene\" technology, delivering superior stretch and recovery. The soft, performance denim will not stretch out and provides support that slims and contours your shape. The generous amount of stretch keeps you moving so you can do anything from working on the ranch to offsite meetings.', 19, 6, 1, '2022-05-17 19:01:22'),
(204, 'Women_s 100 Year Denim', 650000, 0, 0, 'FPR09_NB_BK.jpg', 'Women\'s 100 Year Denim\r\nA nod to all those who have simultaneously helped build Dickies while also building our world, our 100 Year Collection celebrates our collective coming of age. We\'ve been around a long time; long enough to be passed down through generations. We couldn\'t be more honored to have accompanied farmers and tradespeople and artists in their journeys of becoming. Generations of people who were Made In Dickies. Dickies Women\'s 100 Year Denim Jean celebrates that heritage with classic double knee construction and Dickies lasting quality and durability. Pair it with the Denim 100 Year Chore Coat and there will be no question about what you stand for: independence, grit, and hard work resting on the shoulders of the generations who laid the foundation before you.', 19, 6, 1, '2022-05-16 00:29:02'),
(205, 'Women_s Perfect Shape', 550000, 1, 0, 'FR147_SNB_FR.jpg', 'Women\'s Perfect Shape\r\nWhen it’s time for new jeans, there’s nothing more comfortable, slimming and well fit than Dickies Women’s Perfect Shape Skinny Denim Capri. The skinny leg gives off a trendy vibe, while the high cotton blend with a lot of elastane ensures you’ll keep good in them. The waistband is designed to move with you, while the Flex tummy panel works to flatten your belly. Shape retaining fabric means that as much as you move around day to day, the knees and back aren’t going to sag, and the waist is still going to fit at the end of your evening. No-show pocket details keep it incognito, while the utility part of it remains high.', 19, 6, 1, '2022-05-16 00:28:52'),
(206, 'Women_s Cooling Cargo', 550000, 0, 0, 'SRF405_BK_FR.jpg', 'Women\'s Cooling Cargo\r\nEmbrace the forecast and work smart in Dickies Women’s Temp-iQ® Cargo Shorts. Whether things heat up or rain is heading your way, your ultimate protection is accounted for in these resourceful cargo shorts. Featuring a slim fit and bi-stretch fabric for added mobility, you’ll be able to move through your workday with ease. Solutions come standard in these cargos with ample storage for all your gear provided in multiple utility pockets throughout the design. Plus, the Durable Water Repellant (DWR) pockets resist abrasion for extra protection from inclement weather. The advanced Temp-iQ™ intelligent cooling technology detects when your core body temperature rises and releases an instant cooling sensation. Engineered with a moisture wicking finish, you’ll stay cool and dry no matter how hot it gets both on and off the work site. Added visibility comes standard with Dickies’ reflective logo label at your front left pocket to keep you safe when you need it the most.', 21, 6, 1, '2022-05-16 00:28:48'),
(207, 'Women_s Temp-iQ', 550000, 0, 0, 'SRF600_BKX_FR.jpg', 'Women\'s Temp-iQ\r\nRaise the bar on heightened protection for warm working conditions in Dickies Women\'s Temp-iQ® 365 Shorts. Constructed with ultimate performance in mind, the straight fit, high rise and mobility gusset give you added room to move, with a 9\" inseam built to hit above the knee. Plus, the innovative Temp-iQ® 365 technology is designed to maintain the ideal microclimate between you and your workwear all year round. Advanced body temperature control traps heat when you\'re cold and releases heat when you are warm, ensuring your comfort and protection no matter the conditions. We\'ve got you covered in the sun as well with UPF 40+ defense, anti-odor and moisture wicking finish that keeps you fresh through the longest shifts. Superior utility is found through the large dual cargo pockets complete with a zipper security feature on the left leg to safeguard your valuables. Dual rear flap pockets and front side entry pockets round out the practicality of the design, where function and purpose collide for all your warm weather working needs.\r\n', 21, 6, 1, '2022-05-16 00:28:42'),
(208, 'Women’s Perfect Shape', 550000, 0, 0, 'FR146_SNB_FR.jpg', 'Women’s Perfect Shape\r\nWhen it’s summer time but you still want a decent length to your bottoms, reach for Dickies Women’s Perfect Shape 11\" Twill Bermuda Shorts. The 11” length lands close to the knee, but hitting just above so your knees aren’t restricted. The straight leg gives you a nice silhouette. A great amount of spandex and bi-stretch material keeps you moving any ways you need to with 360° movement, while the cotton part of it remains soft to the touch. A Flex tummy panel keeps you looking your best in the stomach region and overall will keep you confident throughout your day.\r\n\r\n', 21, 6, 1, '2022-05-16 00:28:39'),
(209, 'Jordan Heritage', 550000, 0, 0, 'a13e9831-90ce-4137-aba7-bd2c862cda93_result.jpg', 'Jordan Heritage\r\nShift into casual mode, with the Jordan Flight Heritage Cargo Trousers. They\'re made from soft, lightweight woven fabric, with neutral colours and camo prints to choose from. Cargo pockets and adjustable cuffs provide functionality.', 18, 5, 1, '2022-05-16 00:28:37'),
(210, 'Nike Dri-FIT Swoosh Fly Standard Issue', 650000, 0, 0, '39947e42-e6a4-409d-8889-76140139d3a0_result.jpg', 'Nike Dri-FIT Swoosh Fly Standard Issue\r\nFeel fresh both on and off the court in the Nike Dri-FIT Swoosh Fly Standard Issue Pullover Hoodie.Inspired by the professional on-court women\'s warm-up, it combines a comfortable and structured feel with technology that\'s designed to help wick sweat.Loose and roomy through the body, it\'s embellished with a Swoosh Fly logo—the mark of Nike Women\'s Basketball.', 18, 5, 1, '2022-05-16 00:28:33'),
(211, 'Nike shoot', 350000, 0, 0, 'bcb3f319-ae3a-4bec-a7c2-f57a2d0c313e_result.jpg', 'Nike shoot\r\nShoot your shot!Made for all ballers, the Nike Sportswear is an easy swish with a 3D-like basketball graphic.', 18, 5, 1, '2022-05-16 00:28:31'),
(212, 'Jordan Essentials', 350000, 1, 0, 'ee523c7b-931c-4bef-ae07-609baffadc9e_result.jpg', 'Jordan Essentials\r\nRefresh your mesh with the Jordan Essentials Mesh Graphic Shorts. They\'re made using a double layer of cool, breathable fabric with an easy, relaxed fit. Puff- and flat-ink graphics give it a Michael Jordan signature finish.', 19, 5, 1, '2022-05-16 00:28:29'),
(213, 'Nike Dri-FIT Get Fit', 550000, 0, 1, 'dri-fit-get-fit-7-8-printed-french-terry-training-trousers-04CD8J_result.jpg', 'Dri-FIT\r\nNo matter where you put in the work, these training trousers have an all-over floral camo print that keeps you looking fresh. Soft French terry provides warmth and comfort while the sweat-wicking fabric helps you stay dry before, during and after your workout.', 19, 5, 1, '2022-05-17 19:00:45'),
(214, 'Nike Sportswear', 500000, 0, 0, '34538ea3-d17f-4e1d-bb05-cfb8bdae9679_result.jpg', 'Sportswears\r\nReady for cooler weather, the Nike Sportswear Tech Fleece Joggers feature an updated fit perfect for everyday wear.Roomy through the thigh, this tapered design narrows at the knee to give you a comfortable feel without losing the clean, tailored look you love.Tall ribbed cuffs complete the jogger look while a zipped pocket on the right leg provides secure small-item storage and elevates the look.', 19, 5, 1, '2022-05-16 00:28:22'),
(215, 'Nike Air', 550000, 1, 1, '9d13782c-6730-48cf-b526-9657a48a764d_result.jpg', 'Leggings \r\nwill quickly become one of the most essential pieces in your wardrobe.Made from smooth and flexible fabric, they fit tightly and stretch for ease of movement, plus they go with just about anything.', 20, 5, 1, '2022-05-17 19:01:37');
INSERT INTO `products` (`id`, `name`, `price`, `hot`, `burned`, `image`, `description`, `category_id`, `brand_id`, `status`, `created_at`) VALUES
(216, 'Nike Pro Dri-FIT', 550000, 0, 0, 'f24eb022-2509-4eda-9234-19b1b34b016f_result.jpg', 'Nike Pro Dri-FIT\r\nThe Nike Pro Dri-FIT Tights hug you with lightweight fabric that helps you feel dry, cool and supported from warm-ups through to cool-downs. They\'re made from at least 75% recycled polyester fibres in a stretchy design that helps you move at full intensity during your toughest workouts or competitions.', 20, 5, 1, '2022-05-16 00:28:18'),
(217, 'Nike Sportswear Essential', 550000, 1, 0, 'f5b73dbf-0654-4046-b6ca-6f090de9adde_result.jpg', 'Nike Sportswear Essential\r\nThe Nike Sportswear Leggings are a wardrobe essential that pair well with your favourite tops and tees. A Swoosh print on the calf lets you rep the brand in style.', 20, 5, 1, '2022-05-16 00:28:15'),
(218, 'Nike Dri-FIT Epic Luxe', 550000, 0, 1, '9c4fdc07-ec48-4d72-909d-2bba6a6a708f_result.jpg', 'Nike Dri-FIT Epic Luxe\r\nThe Nike Dri-FIT ADV Run Division Epic Luxe Leggings are designed using runner data to create advanced breathability and evaporation.Part of the Nike Luxe line, they feel soft, lightweight and lightly compressive.Plus, they\'re made from 100% recycled polyester fibres and are embedded with reflective design elements.A hidden pocket stashes a key or card.', 21, 5, 1, '2022-05-17 19:01:25'),
(219, 'Nike Dri-FIT Swoosh Run', 550000, 0, 0, '5b12c816-5a83-43f1-9c2f-6be198762e9f_result.jpg', 'Nike Dri-FIT Swoosh Run\r\nTrack shorts for your short runs, this brief-lined pair keeps it cool and relaxed as you step out on your running adventure. They\'ve got an adjustable waistband with an internal pocket to bring your keys along. This product is made from at least 75% recycled polyester fibres.', 21, 5, 1, '2022-05-16 00:28:11'),
(220, 'Nike Sportswear Essential', 350000, 0, 0, '8d6f5c8b-d5f2-4544-aeec-6f4e8505b905_result.jpg', 'Nike Sportswear Essential\r\nThe Nike Sportswear Bike Shorts update a favourite retro style with a mid-rise design and a snug stretch waistband. Stretchy, sweat-wicking fabric and a Swoosh logo make these an easy choice for everyday wear.', 21, 5, 1, '2022-05-16 00:28:09'),
(221, 'COTTON TROUSERS WITH BELT', 500000, 1, 0, '2335007800_2_1_1.jpg', 'COTTON TROUSERS WITH BELT\r\nHigh-waist trousers made of 100% cotton. Elastic waist at the back. Tied belt in the same fabric. Wide-leg design.', 18, 3, 1, '2022-05-16 00:28:07'),
(222, 'FULL LENGTH MASCULINE TROUSERS', 350000, 0, 1, '7385464800_2_3_1.jpg', 'FULL LENGTH MASCULINE TROUSERS\r\nHigh-waist trousers featuring side pockets, false welt back pockets, darts and front zip fly, inside button and metal hook fastening.', 18, 3, 1, '2022-05-17 19:01:35'),
(223, 'FULL LENGTH TROUSERS', 550000, 1, 0, '7385448435_2_1_1.jpg', 'FULL LENGTH TROUSERS\r\nHigh-waist trousers with side pockets and false welt pockets at the back. Visible front darts. Fastens with a front zip, inside button and metal hooks.', 18, 3, 1, '2022-05-16 00:28:04'),
(224, 'RIPPED MOM JEANS', 550000, 0, 0, '8197030406_2_1_1.jpg', 'RIPPED MOM JEANS\r\nHigh-waist rigid jeans. Five-pocket design. Ripped details with a front zip fly and metal button fastening.', 19, 3, 1, '2022-05-16 00:28:02'),
(225, 'Z1975 MID-RISE SKINNY JEANS', 350000, 1, 0, '8228023427_2_1_1.jpg', 'Z1975 MID-RISE SKINNY JEANS\r\nMid-waist jeans with a five-pocket design. Faded effect. Seamless hems. Front zip fly and top button fastening.', 19, 3, 1, '2022-05-16 00:28:00'),
(226, 'ZW THE _80S SKINNY JEANS', 500000, 0, 0, '7513045400_2_1_1.jpg', 'ZW THE \'80S SKINNY JEANS\r\nSlim Fit - Skinny Leg - High Rise - Power Stretch Fabric\r\nZW ZARA WOMAN JEANS\r\nHigh-rise jeans with a five-pocket design. Faded', 19, 3, 1, '2022-05-16 00:27:58'),
(227, 'DENIM SKORT', 350000, 1, 1, '7147027250_2_2_1.jpg', 'DENIM SKORT\r\nHigh-waist skort featuring front pockets and rear patch pockets. Seamless hem. Front wrap fastening with zip and metal buttons.\r\n\r\n\r\n', 21, 3, 1, '2022-05-17 19:01:30'),
(228, 'HIGH WAISTED SHORTS', 650000, 1, 0, '3346136800_2_2_1.jpg', 'HIGH WAISTED SHORTS\r\nHigh-waist shorts. Front zip fly, interior button and metal hook.', 21, 3, 1, '2022-05-16 00:27:51'),
(229, 'LINEN BLEND LONG BERMUDA SHORTS', 550000, 1, 1, '7385496832_2_2_1.jpg', 'LINEN BLEND LONG BERMUDA SHORTS\r\nHigh-waist Bermuda shorts made of a linen blend. Side pockets and false back pockets with flaps. Darted detail. Front zip fly, inside button and metal hook fastening.', 21, 3, 1, '2022-05-17 19:00:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_size` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(10) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `image`, `created_at`, `updated_at`) VALUES
(1, 'minh', 'anhnguyenbinhminh2302@gmail.com', 386335571, '$2y$10$kunpkcH.cnwrTPbsoRotiejMFkVnFktMGpgRPFLjNNPz5Cbxzz00.', NULL, '2022-05-15 12:21:56', '2022-05-15 12:21:56'),
(4, 'hai', 'hai@gmail.com', 325688876, '$2y$10$p0O6cOEokxnxHqzEzAAreeW7RhpaEqxBp60mkYCgvWgZ8A92A1AzG', NULL, '2022-05-16 10:14:55', '2022-05-16 10:14:55'),
(5, 'chinh', 'chinh99748@gmail.com', 375377747, '$2y$10$.mBCfLN.PAOsgYweN5uple3eyZ.W.0tWd6pmu049YbW7n4KYxdyIe', NULL, '2022-05-17 19:43:03', '2022-05-17 19:43:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `permissions` int(11) NOT NULL,
  `starts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `article_categories`
--
ALTER TABLE `article_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_id` (`product_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_categories_article_id` (`article_categories_id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_category_id` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_size_id` (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UC_Person` (`phone`,`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `article_categories`
--
ALTER TABLE `article_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=956;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1824;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `Fk_categories_article_id` FOREIGN KEY (`article_categories_id`) REFERENCES `article_categories` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `Fk_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD CONSTRAINT `FK_product_size_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
