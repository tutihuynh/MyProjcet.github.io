-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 07, 2021 lúc 07:05 AM
-- Phiên bản máy phục vụ: 10.4.16-MariaDB
-- Phiên bản PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tutitada`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `address`, `phone_no`, `slug`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 'apple-logo.jpg', '52 Nguyen Van Linh, Hai Chau District, Da Nang', '0236445445', 'apple', 0, '2020-06-29 23:58:03', '2020-08-22 00:13:24'),
(2, 'Samsung Galaxy', 'asus-logo.jpg', '52 Nguyen Van Linh, Hai Chau District, Da Nang', '0236544544', 'samsung-galaxy', 0, '2020-06-29 23:58:41', '2020-08-12 23:46:04'),
(3, 'OPPO', 'apple-logo.jpg', '52 Nguyen Van Linh, Hai Chau District, Da Nang', '0236789789', 'oppo', 0, '2020-06-29 23:59:24', '2020-08-12 23:46:20'),
(4, 'Ultra', 'msi-logo.jpg', '52 Nguyen Van Linh, Hai Chau District, Da Nang', '0236456456', 'ultra', 0, '2020-06-29 23:59:49', '2020-08-12 23:47:01'),
(5, 'Vsmart', 'lenovo-logo.jpg', '52 Nguyen Van Linh, Hai Chau District, Da Nang', '0203698798', 'vsmart', 0, '2020-06-30 00:00:15', '2020-08-12 23:47:30'),
(6, 'Polymer', 'acer-logo.jpg', '52 Nguyen Van Linh, Hai Chau District, Da Nang', '0236784578', 'polymer', 0, '2020-06-30 00:42:37', '2020-08-12 23:49:12'),
(7, 'Kingston', 'kingston-logo.jpg', '41 Ham Nghi, Hai Chau District, Dan Nang', '0236547895', 'kingston', 0, '2020-06-30 00:58:23', '2020-07-02 18:47:35'),
(8, 'MicroSD', 'kingmax-logo.jpg', '41 Ham Nghi, Hai Chau District, Dan Nang', '0236547894', 'microsd', 0, '2020-06-30 00:59:23', '2020-08-12 23:49:46'),
(9, 'Sandisk', 'gskill-logo.jpg', '41 Ham Nghi, Hai Chau District, Dan Nang', '0236455544', 'sandisk', 0, '2020-06-30 01:00:14', '2020-08-12 23:50:03'),
(10, 'Crucial', 'crucial-logo.png', '41 Ham Nghi, Hai Chau District, Dan Nang', '0236123321', 'crucial', 0, '2020-06-30 01:00:48', '2020-07-02 18:48:03'),
(11, 'Dell', 'dell-logo.jpg', '33 Xô Viết Nghệ Tĩnh', '0384443449', 'dell', 0, '2020-08-22 00:13:06', '2020-08-22 00:13:06'),
(12, 'MSI', 'msi-logo.jpg', '20 Tố Hữu Đà Nẵng', '0935124831', 'msi', 0, '2020-08-22 00:19:05', '2020-08-22 00:19:05'),
(13, 'ASUS', 'asus-logo.jpg', '20 Tố Hữu Đà Nẵng', '0384443449', 'asus', 0, '2020-08-22 00:20:46', '2020-08-22 00:20:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(40, '2014_10_12_100000_create_password_resets_table', 1),
(41, '2020_06_15_152041_create_brands_table', 1),
(42, '2020_06_15_152157_create_product_categories_table', 1),
(43, '2020_06_15_152239_create_products_table', 1),
(44, '2020_06_15_152522_create_customers_table', 1),
(45, '2020_06_15_152557_create_slides_table', 1),
(46, '2020_06_15_152636_create_orders_table', 1),
(47, '2020_06_15_152744_create_order_details_table', 1),
(48, '2020_06_15_152949_create_roles_table', 1),
(49, '2020_06_15_153032_create_permissions_table', 1),
(50, '2020_06_15_153116_create_permission_roles_table', 1),
(51, '2020_06_15_154322_create_users_table', 1),
(52, '2020_06_15_154332_create_role_user_table', 1),
(53, '2020_07_03_021215_add_user_id_to_customers_table', 2),
(54, '2020_07_03_025411_add_foreign_user_id_to_customers_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'create_user', 'Create user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(2, 'edit_user', 'Edit user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(3, 'view_user', 'View user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(4, 'detail_user', 'Detail user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(5, 'create_brand', 'Create brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(6, 'edit_brand', 'Edit brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(7, 'view_brand', 'View brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(8, 'detail_brand', 'Detail brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(9, 'create_category', 'Create category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(10, 'edit_category', 'Edit category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(11, 'view_category', 'View category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(12, 'detail_category', 'Detail category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(13, 'create_product', 'Create product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(14, 'edit_product', 'Edit product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(15, 'view_product', 'View product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(16, 'detail_product', 'Detail product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(17, 'create_order', 'Create order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(18, 'edit_order', 'Edit order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(19, 'view_order', 'View order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(20, 'detail_order', 'Detail order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(21, 'create_slide', 'Create slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(22, 'edit_slide', 'Edit slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(23, 'view_slide', 'View slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(24, 'detail_slide', 'Detail slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(25, 'create_role', 'Create role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(26, 'edit_role', 'Edit role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(27, 'view_role', 'View role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(28, 'detail_role', 'Detail role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(29, 'delete_brand', 'Delete Brand', 0, NULL, NULL),
(30, 'delete_role', 'Delete Role', 0, NULL, NULL),
(31, 'delete_product', 'Delete Product', 0, NULL, NULL),
(32, 'delete_category', 'Delete Category', 0, NULL, NULL),
(33, 'delete_slide', 'Delete Slide', 0, NULL, NULL),
(34, 'delete_user', 'Delete User', 0, NULL, NULL),
(35, 'delete_order', 'Delete Order', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_roles`
--

INSERT INTO `permission_roles` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(112, 1, 1, NULL, NULL),
(113, 2, 1, NULL, NULL),
(114, 3, 1, NULL, NULL),
(115, 4, 1, NULL, NULL),
(116, 5, 1, NULL, NULL),
(117, 6, 1, NULL, NULL),
(118, 7, 1, NULL, NULL),
(119, 8, 1, NULL, NULL),
(120, 9, 1, NULL, NULL),
(121, 10, 1, NULL, NULL),
(122, 11, 1, NULL, NULL),
(123, 12, 1, NULL, NULL),
(124, 13, 1, NULL, NULL),
(125, 14, 1, NULL, NULL),
(126, 15, 1, NULL, NULL),
(127, 16, 1, NULL, NULL),
(128, 17, 1, NULL, NULL),
(129, 18, 1, NULL, NULL),
(130, 19, 1, NULL, NULL),
(131, 20, 1, NULL, NULL),
(132, 21, 1, NULL, NULL),
(133, 22, 1, NULL, NULL),
(134, 23, 1, NULL, NULL),
(135, 24, 1, NULL, NULL),
(136, 25, 1, NULL, NULL),
(137, 26, 1, NULL, NULL),
(138, 27, 1, NULL, NULL),
(139, 28, 1, NULL, NULL),
(140, 29, 1, NULL, NULL),
(141, 30, 1, NULL, NULL),
(142, 31, 1, NULL, NULL),
(143, 32, 1, NULL, NULL),
(144, 33, 1, NULL, NULL),
(145, 34, 1, NULL, NULL),
(146, 35, 1, NULL, NULL),
(166, 3, 2, NULL, NULL),
(167, 4, 2, NULL, NULL),
(168, 7, 2, NULL, NULL),
(169, 8, 2, NULL, NULL),
(170, 11, 2, NULL, NULL),
(171, 12, 2, NULL, NULL),
(172, 15, 2, NULL, NULL),
(173, 16, 2, NULL, NULL),
(174, 19, 2, NULL, NULL),
(175, 20, 2, NULL, NULL),
(176, 23, 2, NULL, NULL),
(177, 24, 2, NULL, NULL),
(178, 27, 2, NULL, NULL),
(179, 28, 2, NULL, NULL),
(180, 5, 3, NULL, NULL),
(181, 6, 3, NULL, NULL),
(182, 7, 3, NULL, NULL),
(183, 8, 3, NULL, NULL),
(184, 9, 3, NULL, NULL),
(185, 10, 3, NULL, NULL),
(186, 11, 3, NULL, NULL),
(187, 12, 3, NULL, NULL),
(188, 13, 3, NULL, NULL),
(189, 14, 3, NULL, NULL),
(190, 15, 3, NULL, NULL),
(191, 16, 3, NULL, NULL),
(192, 17, 3, NULL, NULL),
(193, 18, 3, NULL, NULL),
(194, 19, 3, NULL, NULL),
(195, 20, 3, NULL, NULL),
(196, 21, 3, NULL, NULL),
(197, 22, 3, NULL, NULL),
(198, 23, 3, NULL, NULL),
(199, 24, 3, NULL, NULL),
(200, 29, 3, NULL, NULL),
(201, 31, 3, NULL, NULL),
(202, 32, 3, NULL, NULL),
(203, 33, 3, NULL, NULL),
(204, 35, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `promotion_price` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_hot` tinyint(1) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `description`, `detail`, `url_image`, `price`, `promotion_price`, `quantity`, `slug`, `is_hot`, `is_new`, `brand_id`, `category_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'iPhone 11 Pro Max 64GB', '5efae3fca71eb', '<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-oled-la-gi-905762\" target=\"_blank\">OLED</a>&nbsp;</p>\r\n\r\n<p>Độ ph&acirc;n giải 1242 x 2688 Pixels</p>\r\n\r\n<p>M&agrave;n h&igrave;nh rộng 6.5&quot;</p>', '- Thu cũ đổi mới - Lên đời iPhone thời thượng (Áp dụng đặt và nhận hàng từ 10 - 31/8)\r\n\r\n- Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)\r\n\r\n- Phụ kiện Apple mua kèm giảm 10% (không áp dụng đồng thời KM khác)', 'iphone-11-pro-max.jpg', 899, 879, 5, 'iphone-11-pro-max-64gb', 0, 1, 1, 1, 0, '2020-06-30 00:09:58', '2021-03-02 19:07:08'),
(2, 'Note 20 Ultra 5G', '5efae67bb4588', '<p>Camera trước: 10 MP</p>\r\n\r\n<p>Camera sau: Ch&iacute;nh 64 MP &amp; Phụ 12 MP, 12 MP</p>\r\n\r\n<p>Camera sau: Ch&iacute;nh 64 MP &amp; Phụ 12 MP, 12 MP&#39;</p>\r\n\r\n<p>Bộ nhớ trong: 256 GB</p>', '- Tai nghe Galaxy Buds+  - Trị giá 3.990.000đ (Màu trắng/đen, nhận màu ngẫu nhiên)\r\n- Giảm ngay 1 triệu (Áp dụng nhận hàng ngày 21 - 22/8)\r\n- Đặc quyền nâng cấp đến 4 triệu\r\n- Phòng chờ hạng thương gia\r\n- Trả góp 0%', 'ss.jpg', 499, NULL, 9, 'note-20-ultra-5g', 0, 1, 2, 1, 0, '2020-06-30 00:16:54', '2021-03-02 19:07:16'),
(3, 'Vsmart Active 3 (6GB/64GB)', '5efae8d18651a', '<p>M&agrave;n h&igrave;nh: AMOLED, 6.39&quot;, Full HD +</p>\r\n\r\n<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 8 MP, 2 MP</p>\r\n\r\n<p>Camera trước: 16 MP</p>\r\n\r\n<p>Bộ nhớ trong: 64 GB</p>', 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)\r\nPhụ kiện mua kèm giảm 20% (không áp dụng phụ kiện hãng, không áp dụng đồng thời KM khác)', 'vsmart.jpg', 799, NULL, 4, 'vsmart-active-3-6gb64gb', 0, 1, 6, 1, 0, '2020-06-30 00:26:12', '2021-03-02 19:07:24'),
(4, 'Samsung Galaxy A21s (6GB/64GB)', '5efae917dcc4b', '<p>M&agrave;n h&igrave;nh: TFT LCD, 6.5&quot;, HD+</p>\r\n\r\n<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 8 MP, 2 MP, 2 MP</p>\r\n\r\n<p>Camera trước: 13 MP</p>\r\n\r\n<p>Bộ nhớ trong: 64 GB</p>', 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)\r\nPhụ kiện mua kèm giảm 20% (không áp dụng phụ kiện hãng, không áp dụng đồng thời KM khác)', 'samsung-galaxy-a21s.jpg', 569, 489, 10, 'samsung-galaxy-a21s-6gb64gb', 0, 0, 2, 1, 0, '2020-06-30 00:28:02', '2021-03-02 19:07:35'),
(5, 'iPhone 11 64GB', '5efae98c30a87', '<p>M&agrave;n h&igrave;nh: IPS LCD, 6.1&quot;, Liquid Retina</p>\r\n\r\n<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP</p>\r\n\r\n<p>Bộ nhớ trong: 64 GB</p>\r\n\r\n<p>Camera trước:12 MP</p>', 'Thu cũ đổi mới - Lên đời iPhone thời thượng (Áp dụng đặt và nhận hàng từ 10 - 31/8)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', 'iphone-11-red.jpg', 989, 899, 5, 'iphone-11-64gb', 0, 0, 1, 1, 0, '2020-06-30 00:29:40', '2021-03-02 19:07:44'),
(6, 'Tai nghe AirPods 2 sạc không dây Apple MRXJ2', '5efae9e8bbb75', '<p>Sản phẩm ch&iacute;nh h&atilde;ng Apple, nguy&ecirc;n seal 100%</p>\r\n\r\n<p>Thiết kế in-ear ho&agrave;n to&agrave;n mới v&agrave; độc đ&aacute;o.</p>', 'Giao ngay từ cửa hàng gần bạn nhất\r\nHướng dẫn sử dụng, giải đáp thắc mắc sản phẩm\r\nMang thêm tai nghe khác để bạn xem', 'aipor2.jpg', 378, 298, 9, 'tai-nghe-airpods-2-sac-khong-day-apple-mrxj2', 1, 1, 1, 2, 0, '2020-06-30 00:32:39', '2021-03-02 19:07:52'),
(7, 'Tai nghe Bluetooth Roman R552N1 Xanh', '5efaeaab895d0', '<p>Họa tiết kẻ ca-r&ocirc; bắt s&aacute;ng đẹp mắt tr&ecirc;n bề mặt tai nghe.</p>\r\n\r\n<p>C&oacute; thể kết nối c&ugrave;ng 1 l&uacute;c 2 thiết bị.</p>\r\n\r\n<p>C&ocirc;ng nghệ Bluetooth 4.1 cho khoảng c&aacute;ch kết nối tốt l&ecirc;n đến 10 m.</p>', 'Giao ngay từ cửa hàng gần bạn nhất\r\nHướng dẫn sử dụng, giải đáp thắc mắc sản phẩm\r\nMang thêm tai nghe khác để bạn xem', 'roman.jpg', 399, 299, 4, 'tai-nghe-bluetooth-roman-r552n1-xanh', 0, 0, 7, 2, 0, '2020-06-30 00:35:10', '2021-03-02 19:08:00'),
(8, 'Tai nghe Bluetooth True Wireless JBL LIVE 300TWS', '5efaeb372f907', '<p>Thiết kế kh&ocirc;ng d&acirc;y nhỏ gọn, đẹp mắt.</p>\r\n\r\n<p>Trang bị c&ocirc;ng nghệ Ambient Aware v&agrave; TalkThru.</p>\r\n\r\n<p>Khả năng chống nước IPX5, Bluetooth 5.0</p>', 'Giao ngay từ cửa hàng gần bạn nhất\r\nHướng dẫn sử dụng, giải đáp thắc mắc sản phẩm\r\nMang nhiều màu để bạn lựa chọn', 'tainghe1.jpg', 175, 159, 1, 'tai-nghe-bluetooth-true-wireless-jbl-live-300tws', 0, 0, 3, 2, 0, '2020-06-30 00:37:09', '2021-03-02 19:08:08'),
(9, 'Tai nghe Bluetooth Roman R552N Xanh', '5efaebf71f7d1', '<p>Họa tiết kẻ ca-r&ocirc; bắt s&aacute;ng đẹp mắt tr&ecirc;n bề mặt tai nghe.</p>\r\n\r\n<p>C&oacute; thể kết nối c&ugrave;ng 1 l&uacute;c 2 thiết bị.</p>\r\n\r\n<p>C&ocirc;ng nghệ Bluetooth 4.1 cho khoảng c&aacute;ch kết nối tốt l&ecirc;n đến 10 m.</p>', 'Giao ngay từ cửa hàng gần bạn nhất\r\nHướng dẫn sử dụng, giải đáp thắc mắc sản phẩm\r\nMang thêm tai nghe khác để bạn xem', 'roman.jpg', 127, 128, 4, 'tai-nghe-bluetooth-roman-r552n-xanh', 0, 0, 4, 2, 0, '2020-06-30 00:40:08', '2021-03-02 19:08:14'),
(10, 'Pin sạc dự phòng 10.000 mAh Lightning Xmobile LJ JP90S Nhôm Xám', '5efaecf745895', '<p>Thiết kế vỏ nh&ocirc;m chắc chắn, m&agrave;u sắc trang nh&atilde;.</p>\r\n\r\n<p>Sử dụng l&otilde;i pin Polymer chất lượng cao, tăng khả năng d&ugrave;ng được l&acirc;u v&agrave; an to&agrave;n.</p>\r\n\r\n<p>&nbsp;</p>', 'Mang thêm pin sạc dự phòng khác để bạn xem\r\nMang nhiều màu để bạn lựa chọn\r\n*', 'pin-sac-du-phong-15000mah.jpg', 99, 89, 9, 'pin-sac-du-phong-10000-mah-lightning-xmobile-lj-jp90s-nhom-xam', 0, 0, 6, 2, 0, '2020-06-30 00:44:26', '2021-03-02 19:08:22'),
(11, 'Pin sạc dự phòng Polymer 10.000 mAh Type C eSaver PJ JP106S', '5efaed6061f72', '<p>Trang bị th&ecirc;m cổng ra/v&agrave;o Type-C th&iacute;ch hợp cho c&aacute;c thiết bị c&oacute; cổng kết nối Type-C.</p>\r\n\r\n<p>Mang nhiều m&agrave;u để bạn lựa chọn</p>\r\n\r\n<p>Giao ngay từ cửa h&agrave;ng gần bạn nhất</p>', 'Thiết kế vỏ nhôm chắc chắn, màu sắc trang nhã.\r\nSử dụng lõi pin Polymer chất lượng cao, tăng khả năng dùng được lâu và an toàn.\r\nTrang bị thêm cổng ra/vào Type-C thích hợp cho các thiết bị có cổng kết nối Type-C.', 'polymer.jpg', 98, 79, 2, 'pin-sac-du-phong-polymer-10000-mah-type-c-esaver-pj-jp106s', 0, 0, 6, 2, 0, '2020-06-30 00:46:00', '2021-03-02 19:08:32'),
(12, 'iPhone 7 Plus 32GB', '5efaf1ef5dc78', '<p>M&agrave;n h&igrave;nh:&nbsp;LED-backlit IPS LCD</p>\r\n\r\n<p>Hệ điều h&agrave;nh: IOS 13</p>\r\n\r\n<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP</p>\r\n\r\n<p>Bộ nhớ trong: 32 GB</p>', 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) \r\nPhụ kiện Apple mua kèm giảm 10% (không áp dụng đồng thời KM khác)', 'iphone-7-plus-32gb-gold.jpg', 459, NULL, 10, 'iphone-7-plus-32gb', 0, 0, 1, 1, 0, '2020-06-30 01:04:58', '2021-03-02 19:08:40'),
(13, 'Thẻ nhớ MicroSD 8 GB Class 4', '5efaf256cc072', '<p>Tốc độ đọc: 30 MB/s.</p>\r\n\r\n<p>Tương th&iacute;ch tốt với điện thoại, m&aacute;y t&iacute;nh bảng.</p>\r\n\r\n<p>Tương th&iacute;ch với thiết bị c&oacute; thể nhận thẻ nhớ tối đa 8 GB.</p>', 'Mang thêm thẻ nhớ khác để bạn xem\r\nHướng dẫn sử dụng, giải đáp thắc mắc sản phẩm\r\nGiao ngay từ cửa hàng gần bạn nhất', 'the-nho-microsd.jpg', 59, 50, 20, 'the-nho-microsd-8-gb-class-4', 0, 0, 8, 2, 0, '2020-06-30 01:06:14', '2021-03-02 19:08:50'),
(14, 'USB 3.0 16 GB Sandisk CZ600', '5efaf2b835640', '<p>Thiết kế đơn giản, nhỏ gọn dễ mang đi theo b&ecirc;n m&igrave;nh.</p>\r\n\r\n<p>T&iacute;ch hợp sẵn phần mềm SanDisk SecureAccess, gi&uacute;p bảo mật v&agrave; an to&agrave;n cho người d&ugrave;ng.</p>', 'Mang thêm usb khác để bạn xem\r\nHướng dẫn sử dụng, giải đáp thắc mắc sản phẩm\r\nGiao ngay từ cửa hàng gần bạn nhất', 'usb-30-16gb-sandisk.jpg', 679, NULL, 8, 'usb-30-16-gb-sandisk-cz600', 0, 0, 9, 2, 0, '2020-06-30 01:18:03', '2021-03-02 19:09:00'),
(15, 'Samsung Galaxy Tab A 8.0 SPen  (2019)', '5efaf541a1f06', '<p>M&agrave;n h&igrave;nh : WUXA TFT, 8&quot;</p>\r\n\r\n<p>RAM 3 GB</p>\r\n\r\n<p>Bộ nhớ trong 32 GB</p>\r\n\r\n<p>Camera sau 8 MP</p>', 'Mang thêm máy tính bảng khác để bạn xem\r\nMang nhiều màu để bạn lựa chọn\r\nGiao ngay từ cửa hàng gần bạn nhất', 'samsung-galaxy-tab-a8-plus.jpg', 799, 699, 50, 'samsung-galaxy-tab-a-80-spen-2019', 0, 0, 2, 1, 0, '2020-06-30 01:19:34', '2021-03-02 19:09:16'),
(16, 'OPPO A92 (6GB/128GB)', '5efaf59f10609', '<p>M&agrave;n h&igrave;nh: TFT LCD, 6.5&quot;, Full HD+</p>\r\n\r\n<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 8 MP, 2 MP, 2 MP</p>\r\n\r\n<p>RAM: 8 GB</p>\r\n\r\n<p>Bộ nhớ trong: 128 GB</p>', 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)\r\nPhụ kiện mua kèm giảm 20% (không áp dụng phụ kiện hãng, không áp dụng đồng thời KM khác)', 'oppo-a92-tim.jpg', 395, NULL, 1, 'oppo-a92-6gb128gb', 0, 0, 3, 1, 0, '2020-06-30 01:20:38', '2021-03-02 19:09:24'),
(21, 'Laptop Dell Inspiron 14', '5f40c76f89761', '<p>CPU: Intel Core i5-1035G1<br />\r\nM&agrave;n h&igrave;nh: 14&quot; (1920 x 1080)<br />\r\nRAM: 1 x 4GB DDR4 2666MHz<br />\r\nLưu trữ: 1TB SSHD 5400RPM<br />\r\nHệ điều h&agrave;nh: Windows 10 Home SL 64-bit</p>', 'Nhập mã PANDA200 giảm thêm 5% tối đa 200.000đ khi thanh toán qua Momo-QR.', 'dell-4.jpeg', 109, 958, 5, 'laptop-dell-inspiron-14', 1, 1, 11, 6, 0, '2020-08-22 00:23:34', '2021-03-02 19:09:32'),
(22, 'Laptop Apple MacBook Air 13\" 2019', '5f40c7fb32a2c', '<p>Chip: Intel Core i5 8th 1.6GHz dual-core (Turbo Boost up to 3.6GHz)</p>\r\n\r\n<p>RAM: 8GB 2133MHz LPDDR3</p>\r\n\r\n<p>Ổ Cứng: 128GB SSD</p>\r\n\r\n<p>Chipset đồ họa: Intel UHD Graphics 617</p>\r\n\r\n<p>V&acirc;n tay: Touch ID</p>', 'Trả góp 0% chỉ 3.999.833 ₫/tháng trong 6 tháng qua thẻ tín dụng.', 'mac-3.png', 135, NULL, 2, 'laptop-apple-macbook-air-13-2019', 1, 1, 1, 6, 0, '2020-08-22 00:25:34', '2021-03-02 19:09:39'),
(23, 'Laptop MSI GS65 Stealth 9SE-1000VN', '5f40c88606dcd', '<p>CPU: Intel Core i7-10750H</p>\r\n\r\n<p>M&agrave;n h&igrave;nh: 15.6&quot; IPS (1920 x 1080), 120Hz</p>\r\n\r\n<p>RAM: 1 x 8GB DDR4 2666MHz</p>\r\n\r\n<p>Lưu trữ: 512GB SSD M.2 NVMe /</p>\r\n\r\n<p>Hệ điều h&agrave;nh: Windows 10 Home SL 64-bit</p>', 'Nhập mã PANDA200 giảm thêm 5% tối đa 200.000đ khi thanh toán qua Momo-QR.', 'msi-4.jpg', 115, 105, 8, 'laptop-msi-gs65-stealth-9se-1000vn', 1, 1, 12, 6, 0, '2020-08-22 00:27:09', '2021-03-02 19:09:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `description`, `slug`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Phone', 'abc', 'phone', 0, '2020-06-30 00:00:28', '2021-03-02 19:06:31'),
(2, 'Accessories', 'abc', 'accessories', 0, '2020-06-30 00:02:00', '2021-03-02 19:06:38'),
(3, 'Tai Nghe', 'abc', 'tai-nghe', 1, '2020-06-30 00:02:38', '2020-08-13 00:08:42'),
(4, 'Pin', 'abc', 'pin', 1, '2020-06-30 00:03:18', '2020-08-13 00:08:39'),
(5, 'Charger', 'abc', 'charger', 1, '2020-06-30 00:04:23', '2020-08-13 00:08:36'),
(6, 'Laptop', 'No', 'laptop', 0, '2020-08-22 00:12:24', '2020-08-22 00:12:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'ROLE_ADMIN', 'Administrator', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(2, 'ROLE_MANAGER', 'Manager', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(3, 'ROLE_STAFF', 'Staff', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(4, 'ROLE_CUSTOMER', 'Customer', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 2, 2, NULL, NULL),
(8, 3, 3, NULL, NULL),
(9, 4, 4, NULL, NULL),
(14, 4, 9, NULL, NULL),
(15, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `content`, `description`, `image`, `url`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'ASUS UX 290', 'Promotions, Special offers in this August, please order quickly.', 'asus-ux490.jpg', '#', 0, '2020-07-02 07:34:10', '2021-03-02 19:45:16'),
(2, 'Accessories', 'Accessories, electronic components ...', 'banner-phu-kien-1.jpg', '#', 0, '2020-07-02 07:34:29', '2021-03-02 19:45:01'),
(3, 'DELL office laptop', 'DELL office laptop', 'laptop-van-phong-hot-dell-e7440-1.jpg', '#', 0, '2020-07-02 07:34:40', '2021-03-02 19:45:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `email_verified_at` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reset_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `level`, `email_verified_at`, `password`, `reset_password`, `remember_token`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', 0, NULL, '$2y$10$/R2hG9ld.VWodXp152nj6elEVmguqxg4YsakqBrjDwkDUB9PNjPyO', NULL, NULL, 0, '2020-06-29 01:00:44', '2020-06-29 01:00:44'),
(2, 'ToanBT', 'toan160798@gmail.com', 0, NULL, '$2y$10$9fexI66yCgnrIjWwz7r8XO3CcEHh5j3pMKiTlNZzYKoR0g29KriJW', NULL, NULL, 0, '2020-06-29 01:00:44', '2020-06-29 01:00:44'),
(3, 'HoiNP', 'phuchoi@gmail.com', 0, NULL, '$2y$10$guuRzH.82MrqnPj700a4Mu2uOe8CpQ/171ft9dul8Xdv11QBZCeY.', NULL, NULL, 0, '2020-06-29 01:00:44', '2020-06-29 01:00:44'),
(4, 'NghiaDT', 'dinhnghia@gmail.com', 1, NULL, '$2y$10$6zigjstHuniBAJ5m5So8fOQgH431f5O7tEEDfT2D8lk1VOcsFou46', NULL, NULL, 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(9, 'customer1', 'cus@gmail.com', 1, NULL, '$2y$10$wRVmUbeThg7acojG0F.Jy.1N5jCW7Exg5aMYvqWJveR4TQNxktm6m', NULL, 'wKhPJmxHVf5AO13KrcyXlfWypACd9hZGNizrE2y00GMeX8DRLTbG8bqL47n8', 0, '2020-12-05 04:08:23', '2020-12-05 04:08:23');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_roles_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
