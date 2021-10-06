-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: sql107.byetcluster.com
-- Thời gian đã tạo: Th10 04, 2021 lúc 07:32 AM
-- Phiên bản máy phục vụ: 5.7.35-38
-- Phiên bản PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `b7_29666764_myproject`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `displayhomepage` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `displayhomepage`) VALUES
(19, 0, 'Áo', '', 0),
(20, 0, 'Quần', '', 0),
(21, 0, 'Combo', '', 0),
(22, 0, 'Phụ kiện', '', 0),
(23, 19, 'Áo Polo', 'Áo polo nhà tôi đẹp lắm nha :)))', 1),
(24, 19, 'Áo thun tay dài', 'Áo thun tay dài nhà tôi cũng đẹp lắm nha :)))', 1),
(25, 19, 'Áo T-shirt', '', 0),
(26, 20, 'Quần âu', 'Quần âu nhà tôi đẹp đẹp đẹp lắm luôn á  :)))', 1),
(27, 20, 'Quần kaki', '', 0),
(28, 20, 'Quần short', '', 0),
(29, 21, 'Đồ bộ', '', 0),
(30, 21, 'Đồ suilt', '', 0),
(31, 22, 'Thắt lưng', '', 0),
(32, 22, 'Ví nam', '', 0),
(33, 22, 'Cà vạt', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `sdt` varchar(500) NOT NULL,
  `tieude` varchar(500) NOT NULL,
  `ghichu` varchar(500) NOT NULL,
  `readed` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `sdt`, `tieude`, `ghichu`, `readed`, `date`) VALUES
(1, 'quang@', '1', '1', '1', 0, '2021-10-04 10:28:44'),
(2, 'quang@', '3', '3', '3', 1, '2021-10-04 10:28:44'),
(5, 'Đỗ Vinh Quang', '123', 'Hermer', 'Hermer rất tuyệt vời', 1, '2021-10-04 10:28:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `verification_code` varchar(500) NOT NULL,
  `Is_verified` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `address`, `phone`, `password`, `verification_code`, `Is_verified`) VALUES
(1, 'Nguyễn Văn A', 'nva@gmail.com', 'Ha noi', '0984712348', '202cb962ac59075b964b07152d234b70', '', 0),
(2, 'test', 'test@gmail.com', 'hanoi', '123124124', '202cb962ac59075b964b07152d234b70', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT '0',
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `photo` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `name`, `description`, `content`, `hot`, `datetime`, `photo`) VALUES
(6, 'SIÊU SALE - SIÊU XỊN - HOT SUMMER 2021', '<p>SI&Ecirc;U SALE CH&Agrave;O H&Egrave; RỰC RỠ, trợ gi&aacute; m&ugrave;a dịch cho tất cả sản phẩm l&ecirc;n đến 70% . &Aacute;p dụng thời gian từ 19/6 - 4/7/2021</p>\r\n', '<p style=\"text-align:center\"><span style=\"font-size:16px\"><strong><span style=\"color:#e74c3c\">ĐẠI TIỆC ƯU Đ&Atilde;I - SĂN SALE CHẲNG NGẠI GI&Aacute;<br />\r\nTHỜI GIAN : 19/6 - 4/7/2021</span></strong></span></p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\nCh&agrave;o h&egrave; rực rỡ 2021 c&ugrave;ng nhau vượt qua kh&oacute; khăn đại dịch. Hermer xin gửi bạn ng&agrave;n ưu đ&atilde;i như một lời cảm ơn v&agrave; hỗ trợ gi&aacute; cho c&aacute;c bạn thời gian đ&atilde; đồng h&agrave;nh c&ugrave;ng shop.&nbsp;<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Sale up to 70% tất cả sản phẩm<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Đồng gi&aacute; sản phẩm chỉ từ 99K, 119K, 199K<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Giảm 20% cho h&oacute;a đơn từ 1,5 triệu trở l&ecirc;n (chỉ &aacute;p dụng cho sản phẩm mới)</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong></p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng đồng thời c&aacute;c chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c tr&ecirc;n c&ugrave;ng h&oacute;a đơn.</p>\r\n\r\n<p>- Ưu đ&atilde;i &aacute;p dụng tr&ecirc;n to&agrave;n hệ thống cửa h&agrave;ng v&agrave; Online&nbsp;Hermer<br />\r\n- Kh&ocirc;ng cộng dồn thẻ VIP (vẫn t&iacute;ch lũy điểm cho thẻ VIP).</p>\r\n', 1, '2021-10-04 09:59:00', '1633341377_20210630_ddfeba870be867b9c99696eaca44a044_1625045993.jpg'),
(15, 'BÙNG NỔ KHUYẾN MÃI BÙNG NỔ KHUYẾN MÃI - SALE 50% TOÀN BỘ SẢN PHẨM', '<p>SALE CỰC NHIỀU, GIẢM CỰC S&Acirc;U - GI&Aacute; GIẢM CHỈ C&Ograve;N 50% - TO&Agrave;N BỘ SẢN PHẨM</p>\r\n', '<p>Từ ng&agrave;y 06-15/08&nbsp;</p>\r\n\r\n<p>Sale bỏng tay ngay gần nh&agrave; bạn, ng&agrave;n khuyến m&atilde;i khủng d&agrave;nh cho c&aacute;c t&iacute;n đồ thời trang nhanh tay</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>To&agrave;n bộ sản phẩm mới 2021 GIẢM 50%</p>\r\n\r\n<p>&Aacute;o ph&ocirc;ng, Quần short gi&oacute; ĐỒNG GI&Aacute; 69K, 99K</p>\r\n\r\n<p>&Aacute;o Polo cao cấp ĐỒNG GI&Aacute; 149K</p>\r\n\r\n<p>V&iacute; da, thắt lưng ĐỒNG GI&Aacute; 249K</p>\r\n\r\n<p>Gi&agrave;y t&acirc;y nam GIẢM 30%</p>\r\n\r\n<p>V&agrave; c&ugrave;ng nhiều ưu đ&atilde;i khuyến m&atilde;i kh&aacute;c đang chờ bạn</p>\r\n', 1, '2021-10-04 09:41:26', '1633340262_a6f6ea63-8c4f-4ef7-b20b-9fd51e5c3c71_23ce7cbdf50b4907bc2bf5d887b28ca4.jpeg'),
(8, 'SUMMER SALE 2021', '<p>SI&Ecirc;U SALE CH&Aacute;Y H&Egrave;, trợ gi&aacute; m&ugrave;a dịch cho tất cả sản phẩm 20% . &Aacute;p dụng thời gian từ 15/7 - 31/7/2021</p>\r\n', '<p>Ch&agrave;o h&egrave; rực rỡ 2021 c&ugrave;ng nhau vượt qua kh&oacute; khăn đại dịch. Hermer xin gửi bạn ng&agrave;n ưu đ&atilde;i như một lời cảm ơn v&agrave; hỗ trợ gi&aacute; cho c&aacute;c bạn thời gian đ&atilde; đồng h&agrave;nh c&ugrave;ng shop.&nbsp;<br />\r\n<br />\r\n&bull; &nbsp; Sale up to 20% tất cả sản phẩm<br />\r\n&bull; &nbsp; GIẢM TH&Ecirc;M 10% C&Aacute;C SẢN PHẨM SALE TRƯỚC Đ&Oacute;<br />\r\n&bull; &nbsp;&nbsp;&nbsp;FREESHIP CHO HO&Aacute; ĐƠN TR&Ecirc;N 499K</p>\r\n\r\n<p><br />\r\n<strong>LƯU &Yacute;:</strong></p>\r\n\r\n<p>- Ưu đ&atilde;i &aacute;p dụng tr&ecirc;n to&agrave;n hệ thống cửa h&agrave;ng v&agrave; Online&nbsp;Hermer<br />\r\n- Kh&ocirc;ng cộng dồn thẻ VIP (vẫn t&iacute;ch lũy điểm cho thẻ VIP).</p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng đồng thời c&aacute;c chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c tr&ecirc;n c&ugrave;ng h&oacute;a đơn.</p>\r\n', 1, '2021-10-04 09:55:57', '1633341264_20210719_a8872fc6d78899ef827991dac5cfaa55_1626662362.jpg'),
(9, 'SHOPPING TIẾT KIỆM - MUA HÀNG CỰC ĐỈNH CÙNG \'TÁO KINH TẾ\' QUANG THẮNG', '<p>Năm cũ tr&ocirc;i qua, năm mới lại đến, c&aacute;c t&aacute;o chuẩn bị l&ecirc;n chầu để b&aacute;o c&aacute;o với Ngọc Ho&agrave;ng về t&igrave;nh h&igrave;nh hạ giới. Một năm kinh tế buồn th&igrave; mặc g&igrave; l&ecirc;n chầu C&ugrave;ng Hermer theo ch&acirc;n &quot;T&aacute;o kinh tế&quot; Quang Thắng diện đồ l&ecirc;n chầu ngay nh&eacute;!</p>\r\n', '<p>Sắp hết một năm m&agrave; t&igrave;nh h&igrave;nh th&igrave; vẫn l&agrave; căng. Bệnh dịch lại tăng m&agrave; &quot;T&aacute;o Kinh tế&quot; l&ecirc;n chầu b&aacute;o c&aacute;o th&igrave; &quot;căng thẳng&quot;. Trước t&igrave;nh h&igrave;nh căng thẳng của dịch bệnh cũng như trải qua một năm kinh tế kh&oacute; khăn vừa qua, Hermer lu&ocirc;n mong muốn đem đến cho to&agrave;n bộ kh&aacute;ch h&agrave;ng những cơ hội mua sắm tiết kiệm nhất nhưng vẫn bảnh bao, thời trang trong dịp Tết nguy&ecirc;n đ&aacute;n Kỷ Sửu n&agrave;y.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000053174/file/lcs_0152_cc174b63386342d28ed8e3b0aac5bcd9_grande.jpg\" /></p>\r\n\r\n<p>Biluxury kết hợp c&ugrave;ng Nghệ sĩ Quang Thắng giới thiệu đến bạn c&aacute;c chương tr&igrave;nh ưu đ&atilde;i cũng như c&aacute;c sản phẩm mới về cho dịp Tết với gi&aacute; phải chăng. Đến shopping tại Hermer kh&ocirc;ng cần lo lắng về gi&aacute; cả.</p>\r\n\r\n<ul>\r\n	<li><strong>Sale upto 50%</strong>&nbsp;To&agrave;n bộ bộ nỉ, quần b&ograve;, quần kaki, sơ mi....</li>\r\n	<li><strong>Đồng gi&aacute;&nbsp;<a href=\"https://www.facebook.com/hashtag/300k?__eep__=6&amp;__cft__[0]=AZUPutdIkJZVfEOucgYtmLjcmeAPMutVc5eX_tYpQLWqGLcfCWUSfUFky5COSoXd9eqs_HT7ZUDLn_IuLkT3m-v1NACaDw_yddC2Z3eVrLWIEwp14ZA2O4DZ4WnlJB2BtucecemAtn-QPwDSn88Kv_-aQPOIPBRDyGAXhqsLaG3Njl77RZNrRNzVdcmqpDVub0A&amp;__tn__=*NK-R\">#300k</a></strong>&nbsp;To&agrave;n bộ &aacute;o kho&aacute;c b&ograve;</li>\r\n	<li>Đặc biệt,&nbsp;<strong><a href=\"https://www.facebook.com/hashtag/mua_1_%C4%91%C6%B0%E1%BB%A3c_2?__eep__=6&amp;__cft__[0]=AZUPutdIkJZVfEOucgYtmLjcmeAPMutVc5eX_tYpQLWqGLcfCWUSfUFky5COSoXd9eqs_HT7ZUDLn_IuLkT3m-v1NACaDw_yddC2Z3eVrLWIEwp14ZA2O4DZ4WnlJB2BtucecemAtn-QPwDSn88Kv_-aQPOIPBRDyGAXhqsLaG3Njl77RZNrRNzVdcmqpDVub0A&amp;__tn__=*NK-R\">#Mua_1_Được_2</a></strong>&nbsp;đối với h&agrave;ng Thu Đ&ocirc;ng mới l&ecirc;n kệ</li>\r\n	<li>Ri&ecirc;ng khi mua H&oacute;a đơn từ&nbsp;<strong><a href=\"https://www.facebook.com/hashtag/1499k?__eep__=6&amp;__cft__[0]=AZUPutdIkJZVfEOucgYtmLjcmeAPMutVc5eX_tYpQLWqGLcfCWUSfUFky5COSoXd9eqs_HT7ZUDLn_IuLkT3m-v1NACaDw_yddC2Z3eVrLWIEwp14ZA2O4DZ4WnlJB2BtucecemAtn-QPwDSn88Kv_-aQPOIPBRDyGAXhqsLaG3Njl77RZNrRNzVdcmqpDVub0A&amp;__tn__=*NK-R\">#1499k</a></strong>&nbsp;Tặng ngay Sơ mi hoặc &aacute;o len</li>\r\n	<li>C&ugrave;ng nhiều chương tr&igrave;nh ưu đ&atilde;i kh&aacute;c tại hệ thống Hermer</li>\r\n</ul>\r\n\r\n<p>Mua sắm cực đ&atilde;, nhận qu&agrave; cực sung c&ograve;n ngại g&igrave; m&agrave; n&agrave;ng kh&ocirc;ng rủ ngay hội bạn gh&eacute; Hermer th&ocirc;i n&agrave;o !!!!</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000053174/file/lcs_0070_e9aa4ec1ca104fdcba772c8a325e7646_grande.jpg\" /></p>\r\n\r\n<p>T&igrave;nh h&igrave;nh năm 2020 đầy biến động đ&atilde; qua, Biluxury&nbsp;hi vọng về một năm mới 2021 rực rỡ, tươi s&aacute;ng v&agrave; th&agrave;nh c&ocirc;ng hơn.&nbsp;Ch&uacute;c to&agrave;n bộ qu&yacute; kh&aacute;ch h&agrave;ng một năm mới An Khang Thịnh Vượng v&agrave; Khỏe mạnh vui tươi để&nbsp;đồng h&agrave;nh c&ugrave;ng Hermer trong thời gian sắp tới.</p>\r\n', 1, '2021-10-04 09:49:40', '1633340585_lcs_0070_f5f734eb59ed4623aa5846bf3c4f025e (1).jpg'),
(10, 'THANH TOÁN QUA VÍ MOCA - HOÀN TIỀN LÊN ĐẾN 100K', '<p>Để gi&uacute;p bạn c&oacute; thể mua sắm an to&agrave;n v&agrave; tiện lợi, hạn chế tiếp x&uacute;c trong m&ugrave;a dịch, Biluxury đ&atilde; li&ecirc;n kết c&ugrave;ng Grab hỗ trợ thanh to&aacute;n online c&ugrave;ng ưu đ&atilde;i Ho&agrave;n tiền khủng</p>\r\n', '<h3><strong>Thanh to&aacute;n qua Grab</strong></h3>\r\n\r\n<p>Grab l&agrave; đơn vị vận chuyển với thời gian giao h&agrave;ng nhanh ch&oacute;ng, tiện &iacute;ch d&agrave;nh cho bạn trong giai đoạn gi&atilde;n c&aacute;ch cũng như người kh&ocirc;ng c&oacute; thời gian đi lại. V&agrave; việc mua sắm của bạn sẽ trở n&ecirc;n dễ d&agrave;ng hơn khi Biluxury hợp t&aacute;c cũng Grab trong thời gian tới đ&acirc;y.</p>\r\n\r\n<p>Mua sắm v&agrave; thanh to&aacute;n qua Grab sẽ được thực hiện bởi ứng dụng Moca - V&iacute; điện tử trong Grab (kh&ocirc;ng d&ugrave;ng tiền mặt) bằng c&aacute;ch li&ecirc;n kết với thẻ ATM của người sử dụng</p>\r\n\r\n<h3><strong>Ưu đ&atilde;i thanh to&aacute;n qua v&iacute; Moca</strong></h3>\r\n\r\n<p>&nbsp;Giảm ngay 15% -&nbsp;HO&Agrave;N TIỀN l&ecirc;n đến 100K cho đơn h&agrave;ng 600K tại website Biluxury.vn</p>\r\n\r\n<p>Chương tr&igrave;nh &aacute;p dụng 1 lần/kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000053174/file/45df0b4d-fc55-4b9b-8da9-df6c376124fa_6c9a18a87dac4540b5e5e8bdca397697_grande.jpeg\" /></p>\r\n\r\n<p>Cơ hội nhận khuyến m&atilde;i khủng khi mua sắm online cũng l&agrave; c&aacute;ch gi&uacute;p bạn tiết kiệm tối đa. Đừng bỏ qua nh&eacute;!</p>\r\n\r\n<h3><strong>C&aacute;ch thanh to&aacute;n khi đặt h&agrave;ng</strong></h3>\r\n\r\n<p>Bước 1: Lựa chọn c&aacute;c sản phẩm v&agrave; chọn mua ngay</p>\r\n\r\n<p>Buowsc Bước 2: Điền đầy đủ c&aacute;c th&ocirc;ng tin nhận h&agrave;ng</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000053174/file/f7a2f35d-d98f-4118-a466-be4248a85f1d_8f07a7477b054eeb9dddb7a124f37c82_grande.jpeg\" /></p>\r\n\r\n<p>Bước 3: Chọn phương thức thanh to&aacute;n (Grab)</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000053174/file/70d390d4-0326-400d-98bd-f489bfde26b5_bf57bb9615aa4926bd8df5526fb3f3f0_grande.jpeg\" /></p>\r\n\r\n<p>Bước 4: Đặt h&agrave;ng v&agrave; x&aacute;c nhận thanh to&aacute;n tại ứng dụng Grab</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000053174/file/b0f3503a-1fbc-4be0-ae68-6ad8bd4d292c_ab1238db68da449faf61d1c854a9268f_grande.jpeg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000053174/file/93a39345-f77f-4418-a59c-f4f4f5069afc_9d9e12d8b1b146d59f975cf15bc22f35_grande.jpeg\" /></p>\r\n\r\n<p>Bước 5:&nbsp;Sau khi thanh to&aacute;n th&agrave;nh c&ocirc;ng, mở ứng dụng Grab, v&agrave;o mục Account/T&agrave;i khoản, Chọn My Rewards/Ưu đ&atilde;i.</p>\r\n\r\n<p>Bước 6:&nbsp;Chọn ưu đ&atilde;i &ldquo;Biluxury&rdquo; v&agrave; thực hiện quy đổi Rewards/Ưu đ&atilde;i trong thời hạn 3 ng&agrave;y kể từ khi nhận được ưu đ&atilde;i.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000053174/file/df8af10a-c509-486b-b78e-0a3280312393_9c110d92c1a5435f8e797db1a478db83_grande.jpeg\" /></p>\r\n\r\n<p>Bước 7:&nbsp;Chọn Redeem My Moca wallet Bonus/Quy đổi v&agrave;o V&iacute; Moca tr&ecirc;n ứng dụng Grab.</p>\r\n\r\n<p>Bước&nbsp;8: Nhận th&ocirc;ng b&aacute;o Ho&agrave;n tiền th&agrave;nh c&ocirc;ng tr&ecirc;n ứng dụng Grab.</p>\r\n\r\n<p>Mua sắm chưa bao giờ dễ v&agrave; hời đến thế, bạn h&atilde;y nhanh tay đặt h&agrave;ng để nhận ho&agrave;n tiền ngay h&ocirc;m nay nh&eacute;</p>\r\n', 1, '2021-10-04 09:33:02', '1633339890_cd169d58-add5-4d29-90e8-dea7afd0445b_4b436a4c446a46dbb102a3ee20d354a0.jpeg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(42, 0, 40, 1, 350000),
(43, 0, 34, 1, 440000),
(44, 22, 40, 1, 350000),
(45, 23, 34, 1, 440000),
(46, 0, 40, 1, 350000),
(47, 0, 40, 1, 350000),
(48, 24, 40, 1, 350000),
(49, 25, 40, 2, 350000),
(50, 26, 48, 1, 650000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `paymethod` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `date`, `price`, `status`, `paymethod`) VALUES
(22, 2, '2021-09-04', 157500, 1, 'atm'),
(23, 2, '2021-09-04', 352000, 2, 'atm'),
(24, 2, '2021-09-04', 157500, 0, ''),
(25, 2, '2021-09-04', 315000, 0, ''),
(26, 3, '2021-09-14', 585000, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `panel`
--

CREATE TABLE `panel` (
  `id` int(11) NOT NULL,
  `photo` text NOT NULL,
  `location` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `panel`
--

INSERT INTO `panel` (`id`, `photo`, `location`) VALUES
(1, '1631174866_1.png', 1),
(2, '1631174904_2.png', 2),
(3, '1631174912_3.png', 3),
(4, '1631174930_4.png', 4),
(5, '1631175582_5.png', 5),
(6, '1631175429_Ảnh chụp màn hình 2021-09-09 151102.png', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `shortdescription` varchar(500) NOT NULL,
  `hot` int(11) NOT NULL DEFAULT '0',
  `photo` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `pricediscount` float NOT NULL,
  `discount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `img1` varchar(500) NOT NULL,
  `img2` varchar(500) NOT NULL,
  `color` varchar(500) NOT NULL,
  `material` varchar(500) NOT NULL,
  `madein` varchar(500) NOT NULL,
  `size` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `shortdescription`, `hot`, `photo`, `price`, `pricediscount`, `discount`, `category_id`, `img1`, `img2`, `color`, `material`, `madein`, `size`) VALUES
(18, 'ÁO POLO NAM APS033S7', '<p><strong>ROBINS đảm bảo sản phẩm ch&iacute;nh h&atilde;ng</strong></p>\r\n\r\n<ul>\r\n	<li>Chất liệu cotton</li>\r\n	<li>&Aacute;o cổ tr&ograve;n</li>\r\n	<li>Tay ngắn</li>\r\n	<li>Kẻ sọc ngang họa tiết phối logo thương hiệu mặt trước &aacute;o</li>\r\n	<li>Kh&ocirc;ng may l&oacute;t</li>\r\n</ul>\r\n', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;SLIM FIT</p>\r\n\r\n<p><strong>CHI TIẾT:</strong></p>\r\n\r\n<p>- Mẫu &aacute;o Polo 4s&nbsp;APS026S7 với thiết kế cơ bản, điểm nhấn tập trung ở phần cổ dệt Jacquard, bề mặt dệt mắt chim. Thiết kế đơn giản tạo sự nam t&iacute;nh tuyệt đối.&nbsp;</p>\r\n\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n\r\n<p>- Chất liệu CVC tạo sự thỏa m&aacute;i, mềm mịn. Sản phẩm giữ phom d&aacute;ng, chống nhăn sau nhiều lần giặt.</p>\r\n\r\n<p>&quot;Em Hoa&quot; vừa ra mắt&nbsp;đ&atilde; khiến những ai chi&ecirc;m ngưỡng phải &quot;Wow&quot; r&otilde; to. Lấy cảm hứng từ người b&aacute;n hoa dạo tr&ecirc;n đường phố S&agrave;i G&ograve;n, NTK C&ocirc;ng Tr&iacute; đ&atilde; tạo n&ecirc;n loạt thiết kế oversized với điểm nhấn l&agrave;&nbsp;những đo&aacute; hoa khổng lồ đ&iacute;nh kết tr&ecirc;n phần th&acirc;n sau, được chế t&aacute;c ho&agrave;n to&agrave;n thủ c&ocirc;ng bằng kĩ thuật th&ecirc;u tay.&nbsp;</p>\r\n\r\n<p>V&agrave; kiệt t&aacute;c &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; kh&ocirc;ng chỉ được c&ocirc;ng nhận tại Việt Nam, Tokyo m&agrave; mới đ&acirc;y, cả tạp ch&iacute; Vogue Mỹ cũng nhận thấy rằng anh xứng đ&aacute;ng với những lời ca tụng.</p>\r\n\r\n<p>Trong b&agrave;i b&aacute;o với nhan đề &quot;<em>Tuần lễ thời trang Tokyo lại xuất sắc một lần nữa</em>&quot;, Vogue Mỹ đ&atilde; xem NTK C&ocirc;ng Tr&iacute; như một trong những nh&acirc;n tố tạo n&ecirc;n th&agrave;nh c&ocirc;ng của chuỗi sự kiện danh gi&aacute; n&agrave;y. Theo đ&oacute;, tạp ch&iacute; h&agrave;ng đầu thế giới m&ocirc; tả C&ocirc;ng Tr&iacute; l&agrave; một NTK đạt tới tr&igrave;nh độ thời trang cao cấp (couture) tại Tp.HCM, ra mắt BST được lấy cảm hứng từ những x&uacute;c cảm s&acirc;u sắc chốn đ&ocirc; th&agrave;nh, khai th&aacute;c h&igrave;nh ảnh người b&aacute;n hoa dạo tr&ecirc;n những thiết kế t&ocirc;ng trắng với phom d&aacute;ng kiến tr&uacute;c từ ph&iacute;a trước, sau lưng trổ ra những b&ocirc;ng hoa đầy sắc m&agrave;u.</p>\r\n\r\n<p>BST &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; cũng được đăng tải đầy đủ tr&ecirc;n tạp ch&iacute; Vogue Mỹ trong chuy&ecirc;n mục &quot;<em>Thời trang &Aacute; Đ&ocirc;ng hội ngộ Tokyo</em>&quot; - (Asian Fashion Meets Tokyo).</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://fs-07.web4s.vn/uploads/tiny_uploads/1-2643-1424940876.jpg\" style=\"height:337px; width:500px\" /></p>\r\n\r\n<p>&quot;Em Hoa&quot; l&agrave; BST Việt Nam đầu ti&ecirc;n được đăng tải tr&ecirc;n chuy&ecirc;n trang Vogue Mỹ - nơi c&oacute; h&agrave;ng triệu lượt xem từ khắp to&agrave;n cầu mỗi ng&agrave;y.</p>\r\n\r\n<p>Chỉ nhi&ecirc;u đ&acirc;y cũng đủ để kết luận rằng, sau bao năm miệt m&agrave;i trung th&agrave;nh với Haute Couture mặc d&ugrave; vấp phải bao kh&oacute; khăn, th&igrave; cuối c&ugrave;ng NTK C&ocirc;ng Tr&iacute; cũng đ&atilde; tự h&aacute;i cho m&igrave;nh tr&aacute;i ch&iacute;n nhất, ngọt nhất m&agrave; hầu như chưa NTK trong nước n&agrave;o chạm tới được.</p>\r\n\r\n<p>Một lần nữa, xin ch&uacute;c mừng NTK C&ocirc;ng Tr&iacute; của Việt Nam!</p>\r\n', 'Áo polo rất đẹp', 1, '1629639024_ao-polo-nam-aps010s7-ao-polo-nam-aristino-aps007s7-01-large.jpg', 425000, 382500, 10, 23, '1633339747_5apct016xlm01-499k__1__e0baa60f8bee4576b2bd71bf01155d3d_master.jpg', '1633339747_5apct014trk01-499k__2__84ec1b915ceb4759a16d2dd50c00cdc2_master.jpg', 'Đỏ', 'Cotton', 'Nhật bản', 'XXS'),
(24, 'ÁO POLO NAM APS026S7', '<p><strong>ROBINS đảm bảo sản phẩm ch&iacute;nh h&atilde;ng</strong></p>\r\n\r\n<ul>\r\n	<li>Chất liệu cotton</li>\r\n	<li>&Aacute;o cổ tr&ograve;n</li>\r\n	<li>Tay ngắn</li>\r\n	<li>Kẻ sọc ngang họa tiết phối logo thương hiệu mặt trước &aacute;o</li>\r\n	<li>Kh&ocirc;ng may l&oacute;t</li>\r\n</ul>\r\n', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;SLIM FIT</p>\r\n\r\n<p><strong>CHI TIẾT:</strong></p>\r\n\r\n<p>- Mẫu &aacute;o Polo 4s&nbsp;APS026S7 với thiết kế cơ bản, điểm nhấn tập trung ở phần cổ dệt Jacquard, bề mặt dệt mắt chim. Thiết kế đơn giản tạo sự nam t&iacute;nh tuyệt đối.&nbsp;</p>\r\n\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n\r\n<p>- Chất liệu CVC tạo sự thỏa m&aacute;i, mềm mịn. Sản phẩm giữ phom d&aacute;ng, chống nhăn sau nhiều lần giặt.</p>\r\n\r\n<p>&quot;Em Hoa&quot; vừa ra mắt&nbsp;đ&atilde; khiến những ai chi&ecirc;m ngưỡng phải &quot;Wow&quot; r&otilde; to. Lấy cảm hứng từ người b&aacute;n hoa dạo tr&ecirc;n đường phố S&agrave;i G&ograve;n, NTK C&ocirc;ng Tr&iacute; đ&atilde; tạo n&ecirc;n loạt thiết kế oversized với điểm nhấn l&agrave;&nbsp;những đo&aacute; hoa khổng lồ đ&iacute;nh kết tr&ecirc;n phần th&acirc;n sau, được chế t&aacute;c ho&agrave;n to&agrave;n thủ c&ocirc;ng bằng kĩ thuật th&ecirc;u tay.&nbsp;</p>\r\n\r\n<p>V&agrave; kiệt t&aacute;c &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; kh&ocirc;ng chỉ được c&ocirc;ng nhận tại Việt Nam, Tokyo m&agrave; mới đ&acirc;y, cả tạp ch&iacute; Vogue Mỹ cũng nhận thấy rằng anh xứng đ&aacute;ng với những lời ca tụng.</p>\r\n\r\n<p>Trong b&agrave;i b&aacute;o với nhan đề &quot;<em>Tuần lễ thời trang Tokyo lại xuất sắc một lần nữa</em>&quot;, Vogue Mỹ đ&atilde; xem NTK C&ocirc;ng Tr&iacute; như một trong những nh&acirc;n tố tạo n&ecirc;n th&agrave;nh c&ocirc;ng của chuỗi sự kiện danh gi&aacute; n&agrave;y. Theo đ&oacute;, tạp ch&iacute; h&agrave;ng đầu thế giới m&ocirc; tả C&ocirc;ng Tr&iacute; l&agrave; một NTK đạt tới tr&igrave;nh độ thời trang cao cấp (couture) tại Tp.HCM, ra mắt BST được lấy cảm hứng từ những x&uacute;c cảm s&acirc;u sắc chốn đ&ocirc; th&agrave;nh, khai th&aacute;c h&igrave;nh ảnh người b&aacute;n hoa dạo tr&ecirc;n những thiết kế t&ocirc;ng trắng với phom d&aacute;ng kiến tr&uacute;c từ ph&iacute;a trước, sau lưng trổ ra những b&ocirc;ng hoa đầy sắc m&agrave;u.</p>\r\n\r\n<p>BST &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; cũng được đăng tải đầy đủ tr&ecirc;n tạp ch&iacute; Vogue Mỹ trong chuy&ecirc;n mục &quot;<em>Thời trang &Aacute; Đ&ocirc;ng hội ngộ Tokyo</em>&quot; - (Asian Fashion Meets Tokyo).</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://fs-07.web4s.vn/uploads/tiny_uploads/1-2643-1424940876.jpg\" style=\"height:337px; width:500px\" /></p>\r\n\r\n<p>&quot;Em Hoa&quot; l&agrave; BST Việt Nam đầu ti&ecirc;n được đăng tải tr&ecirc;n chuy&ecirc;n trang Vogue Mỹ - nơi c&oacute; h&agrave;ng triệu lượt xem từ khắp to&agrave;n cầu mỗi ng&agrave;y.</p>\r\n\r\n<p>Chỉ nhi&ecirc;u đ&acirc;y cũng đủ để kết luận rằng, sau bao năm miệt m&agrave;i trung th&agrave;nh với Haute Couture mặc d&ugrave; vấp phải bao kh&oacute; khăn, th&igrave; cuối c&ugrave;ng NTK C&ocirc;ng Tr&iacute; cũng đ&atilde; tự h&aacute;i cho m&igrave;nh tr&aacute;i ch&iacute;n nhất, ngọt nhất m&agrave; hầu như chưa NTK trong nước n&agrave;o chạm tới được.</p>\r\n\r\n<p>Một lần nữa, xin ch&uacute;c mừng NTK C&ocirc;ng Tr&iacute; của Việt Nam!</p>\r\n', '', 1, '1629639161_ao-polo-nam-aps017s7-ao-polo-nam-aristino-aps017s7-large.jpg', 600000, 480000, 20, 23, '1633339730_5apct014trk01-499k__1__0244dd9d83364750b68d5a1aef27f7f6_master.jpg', '1633339730_5apct014trk01-499k__2__84ec1b915ceb4759a16d2dd50c00cdc2_master.jpg', 'Trắng', 'Cotton', 'Nhật bản', 'XXS'),
(25, 'Áo polo nam APS013S7 (L, Xanh lá)', '<ul>\r\n	<li>&Aacute;o cổ tr&ograve;n</li>\r\n	<li>Tay ngắn</li>\r\n	<li>Kẻ sọc ngang họa tiết phối logo thương hiệu mặt trước &aacute;o</li>\r\n	<li>Kh&ocirc;ng may l&oacute;t</li>\r\n	<li>Chất liệu cotton</li>\r\n</ul>\r\n', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;SLIM FIT</p>\r\n\r\n<p><strong>CHI TIẾT:</strong></p>\r\n\r\n<p>- Mẫu &aacute;o Polo 4s&nbsp;APS026S7 với thiết kế cơ bản, điểm nhấn tập trung ở phần cổ dệt Jacquard, bề mặt dệt mắt chim. Thiết kế đơn giản tạo sự nam t&iacute;nh tuyệt đối.&nbsp;</p>\r\n\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n\r\n<p>- Chất liệu CVC tạo sự thỏa m&aacute;i, mềm mịn. Sản phẩm giữ phom d&aacute;ng, chống nhăn sau nhiều lần giặt.</p>\r\n\r\n<p>&quot;Em Hoa&quot; vừa ra mắt&nbsp;đ&atilde; khiến những ai chi&ecirc;m ngưỡng phải &quot;Wow&quot; r&otilde; to. Lấy cảm hứng từ người b&aacute;n hoa dạo tr&ecirc;n đường phố S&agrave;i G&ograve;n, NTK C&ocirc;ng Tr&iacute; đ&atilde; tạo n&ecirc;n loạt thiết kế oversized với điểm nhấn l&agrave;&nbsp;những đo&aacute; hoa khổng lồ đ&iacute;nh kết tr&ecirc;n phần th&acirc;n sau, được chế t&aacute;c ho&agrave;n to&agrave;n thủ c&ocirc;ng bằng kĩ thuật th&ecirc;u tay.&nbsp;</p>\r\n\r\n<p>V&agrave; kiệt t&aacute;c &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; kh&ocirc;ng chỉ được c&ocirc;ng nhận tại Việt Nam, Tokyo m&agrave; mới đ&acirc;y, cả tạp ch&iacute; Vogue Mỹ cũng nhận thấy rằng anh xứng đ&aacute;ng với những lời ca tụng.</p>\r\n\r\n<p>Trong b&agrave;i b&aacute;o với nhan đề &quot;<em>Tuần lễ thời trang Tokyo lại xuất sắc một lần nữa</em>&quot;, Vogue Mỹ đ&atilde; xem NTK C&ocirc;ng Tr&iacute; như một trong những nh&acirc;n tố tạo n&ecirc;n th&agrave;nh c&ocirc;ng của chuỗi sự kiện danh gi&aacute; n&agrave;y. Theo đ&oacute;, tạp ch&iacute; h&agrave;ng đầu thế giới m&ocirc; tả C&ocirc;ng Tr&iacute; l&agrave; một NTK đạt tới tr&igrave;nh độ thời trang cao cấp (couture) tại Tp.HCM, ra mắt BST được lấy cảm hứng từ những x&uacute;c cảm s&acirc;u sắc chốn đ&ocirc; th&agrave;nh, khai th&aacute;c h&igrave;nh ảnh người b&aacute;n hoa dạo tr&ecirc;n những thiết kế t&ocirc;ng trắng với phom d&aacute;ng kiến tr&uacute;c từ ph&iacute;a trước, sau lưng trổ ra những b&ocirc;ng hoa đầy sắc m&agrave;u.</p>\r\n\r\n<p>BST &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; cũng được đăng tải đầy đủ tr&ecirc;n tạp ch&iacute; Vogue Mỹ trong chuy&ecirc;n mục &quot;<em>Thời trang &Aacute; Đ&ocirc;ng hội ngộ Tokyo</em>&quot; - (Asian Fashion Meets Tokyo).</p>\r\n\r\n<p style=\"text-align:center\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"https://fs-07.web4s.vn/uploads/tiny_uploads/1-2643-1424940876.jpg\" style=\"height:337px; width:500px\" /></p>\r\n\r\n<p>&quot;Em Hoa&quot; l&agrave; BST Việt Nam đầu ti&ecirc;n được đăng tải tr&ecirc;n chuy&ecirc;n trang Vogue Mỹ - nơi c&oacute; h&agrave;ng triệu lượt xem từ khắp to&agrave;n cầu mỗi ng&agrave;y.</p>\r\n\r\n<p>Chỉ nhi&ecirc;u đ&acirc;y cũng đủ để kết luận rằng, sau bao năm miệt m&agrave;i trung th&agrave;nh với Haute Couture mặc d&ugrave; vấp phải bao kh&oacute; khăn, th&igrave; cuối c&ugrave;ng NTK C&ocirc;ng Tr&iacute; cũng đ&atilde; tự h&aacute;i cho m&igrave;nh tr&aacute;i ch&iacute;n nhất, ngọt nhất m&agrave; hầu như chưa NTK trong nước n&agrave;o chạm tới được.</p>\r\n\r\n<p>Một lần nữa, xin ch&uacute;c mừng NTK C&ocirc;ng Tr&iacute; của Việt Nam!</p>\r\n', 'ROBINS đảm bảo sản phẩm chính hãng', 0, '1629639208_ao-polo-nam-aps014s7-ao-polo-nam-aristino-aps014s7-large.jpg', 490000, 490000, 0, 23, '1633339714_5apct014trk01-499k_075f3ae5b040425f84cc0130ce848063_master.jpg', '1633339714_5apct014trk01-499k__2__84ec1b915ceb4759a16d2dd50c00cdc2_master.jpg', 'Trắng', 'Cotton', 'Nhật bản', 'XXS'),
(26, 'Áo polo nam APS014S7 (XL, Xanh biển)', '<p><strong>ROBINS đảm bảo sản phẩm ch&iacute;nh h&atilde;ng</strong></p>\r\n\r\n<ul>\r\n	<li>Chất liệu cotton</li>\r\n	<li>&Aacute;o cổ tr&ograve;n</li>\r\n	<li>Tay ngắn</li>\r\n	<li>Kẻ sọc ngang họa tiết phối logo thương hiệu mặt trước &aacute;o</li>\r\n	<li>Kh&ocirc;ng may l&oacute;t</li>\r\n</ul>\r\n', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;SLIM FIT</p>\r\n\r\n<p><strong>CHI TIẾT:</strong></p>\r\n\r\n<p>- Mẫu &aacute;o Polo 4s&nbsp;APS026S7 với thiết kế cơ bản, điểm nhấn tập trung ở phần cổ dệt Jacquard, bề mặt dệt mắt chim. Thiết kế đơn giản tạo sự nam t&iacute;nh tuyệt đối.&nbsp;</p>\r\n\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n\r\n<p>- Chất liệu CVC tạo sự thỏa m&aacute;i, mềm mịn. Sản phẩm giữ phom d&aacute;ng, chống nhăn sau nhiều lần giặt.</p>\r\n\r\n<p>&quot;Em Hoa&quot; vừa ra mắt&nbsp;đ&atilde; khiến những ai chi&ecirc;m ngưỡng phải &quot;Wow&quot; r&otilde; to. Lấy cảm hứng từ người b&aacute;n hoa dạo tr&ecirc;n đường phố S&agrave;i G&ograve;n, NTK C&ocirc;ng Tr&iacute; đ&atilde; tạo n&ecirc;n loạt thiết kế oversized với điểm nhấn l&agrave;&nbsp;những đo&aacute; hoa khổng lồ đ&iacute;nh kết tr&ecirc;n phần th&acirc;n sau, được chế t&aacute;c ho&agrave;n to&agrave;n thủ c&ocirc;ng bằng kĩ thuật th&ecirc;u tay.&nbsp;</p>\r\n\r\n<p>V&agrave; kiệt t&aacute;c &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; kh&ocirc;ng chỉ được c&ocirc;ng nhận tại Việt Nam, Tokyo m&agrave; mới đ&acirc;y, cả tạp ch&iacute; Vogue Mỹ cũng nhận thấy rằng anh xứng đ&aacute;ng với những lời ca tụng.</p>\r\n\r\n<p>Trong b&agrave;i b&aacute;o với nhan đề &quot;<em>Tuần lễ thời trang Tokyo lại xuất sắc một lần nữa</em>&quot;, Vogue Mỹ đ&atilde; xem NTK C&ocirc;ng Tr&iacute; như một trong những nh&acirc;n tố tạo n&ecirc;n th&agrave;nh c&ocirc;ng của chuỗi sự kiện danh gi&aacute; n&agrave;y. Theo đ&oacute;, tạp ch&iacute; h&agrave;ng đầu thế giới m&ocirc; tả C&ocirc;ng Tr&iacute; l&agrave; một NTK đạt tới tr&igrave;nh độ thời trang cao cấp (couture) tại Tp.HCM, ra mắt BST được lấy cảm hứng từ những x&uacute;c cảm s&acirc;u sắc chốn đ&ocirc; th&agrave;nh, khai th&aacute;c h&igrave;nh ảnh người b&aacute;n hoa dạo tr&ecirc;n những thiết kế t&ocirc;ng trắng với phom d&aacute;ng kiến tr&uacute;c từ ph&iacute;a trước, sau lưng trổ ra những b&ocirc;ng hoa đầy sắc m&agrave;u.</p>\r\n\r\n<p>BST &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; cũng được đăng tải đầy đủ tr&ecirc;n tạp ch&iacute; Vogue Mỹ trong chuy&ecirc;n mục &quot;<em>Thời trang &Aacute; Đ&ocirc;ng hội ngộ Tokyo</em>&quot; - (Asian Fashion Meets Tokyo).</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://fs-07.web4s.vn/uploads/tiny_uploads/1-2643-1424940876.jpg\" style=\"height:337px; width:500px\" /></p>\r\n\r\n<p>&quot;Em Hoa&quot; l&agrave; BST Việt Nam đầu ti&ecirc;n được đăng tải tr&ecirc;n chuy&ecirc;n trang Vogue Mỹ - nơi c&oacute; h&agrave;ng triệu lượt xem từ khắp to&agrave;n cầu mỗi ng&agrave;y.</p>\r\n\r\n<p>Chỉ nhi&ecirc;u đ&acirc;y cũng đủ để kết luận rằng, sau bao năm miệt m&agrave;i trung th&agrave;nh với Haute Couture mặc d&ugrave; vấp phải bao kh&oacute; khăn, th&igrave; cuối c&ugrave;ng NTK C&ocirc;ng Tr&iacute; cũng đ&atilde; tự h&aacute;i cho m&igrave;nh tr&aacute;i ch&iacute;n nhất, ngọt nhất m&agrave; hầu như chưa NTK trong nước n&agrave;o chạm tới được.</p>\r\n\r\n<p>Một lần nữa, xin ch&uacute;c mừng NTK C&ocirc;ng Tr&iacute; của Việt Nam!</p>\r\n', '', 0, '1629639300_ao-polo-nam-aps026s7-ao-polo-nam-aristino-aps026s7-large.jpg', 460000, 322000, 30, 23, '1633339696_5apct016xlm01-499k__1__e0baa60f8bee4576b2bd71bf01155d3d_master.jpg', '1633339696_5apct021den01-389k__3__165955ae429e40538e38706d8deab368_master.jpg', 'Trắng', 'Cotton', 'Nhật bản', 'XXL'),
(27, 'ÁO POLO TAY DÀI NAM ALP17-01', '<p><strong>ROBINS đảm bảo sản phẩm ch&iacute;nh h&atilde;ng</strong></p>\r\n\r\n<ul>\r\n	<li>Chất liệu cotton</li>\r\n	<li>&Aacute;o cổ tr&ograve;n</li>\r\n	<li>Tay ngắn</li>\r\n	<li>Kẻ sọc ngang họa tiết phối logo thương hiệu mặt trước &aacute;o</li>\r\n	<li>Kh&ocirc;ng may l&oacute;t</li>\r\n</ul>\r\n', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;SLIM FIT</p>\r\n\r\n<p><strong>CHI TIẾT:</strong></p>\r\n\r\n<p>- Mẫu &aacute;o Polo 4s&nbsp;APS026S7 với thiết kế cơ bản, điểm nhấn tập trung ở phần cổ dệt Jacquard, bề mặt dệt mắt chim. Thiết kế đơn giản tạo sự nam t&iacute;nh tuyệt đối.&nbsp;</p>\r\n\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n\r\n<p>- Chất liệu CVC tạo sự thỏa m&aacute;i, mềm mịn. Sản phẩm giữ phom d&aacute;ng, chống nhăn sau nhiều lần giặt.</p>\r\n\r\n<p>&quot;Em Hoa&quot; vừa ra mắt&nbsp;đ&atilde; khiến những ai chi&ecirc;m ngưỡng phải &quot;Wow&quot; r&otilde; to. Lấy cảm hứng từ người b&aacute;n hoa dạo tr&ecirc;n đường phố S&agrave;i G&ograve;n, NTK C&ocirc;ng Tr&iacute; đ&atilde; tạo n&ecirc;n loạt thiết kế oversized với điểm nhấn l&agrave;&nbsp;những đo&aacute; hoa khổng lồ đ&iacute;nh kết tr&ecirc;n phần th&acirc;n sau, được chế t&aacute;c ho&agrave;n to&agrave;n thủ c&ocirc;ng bằng kĩ thuật th&ecirc;u tay.&nbsp;</p>\r\n\r\n<p>V&agrave; kiệt t&aacute;c &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; kh&ocirc;ng chỉ được c&ocirc;ng nhận tại Việt Nam, Tokyo m&agrave; mới đ&acirc;y, cả tạp ch&iacute; Vogue Mỹ cũng nhận thấy rằng anh xứng đ&aacute;ng với những lời ca tụng.</p>\r\n\r\n<p>Trong b&agrave;i b&aacute;o với nhan đề &quot;<em>Tuần lễ thời trang Tokyo lại xuất sắc một lần nữa</em>&quot;, Vogue Mỹ đ&atilde; xem NTK C&ocirc;ng Tr&iacute; như một trong những nh&acirc;n tố tạo n&ecirc;n th&agrave;nh c&ocirc;ng của chuỗi sự kiện danh gi&aacute; n&agrave;y. Theo đ&oacute;, tạp ch&iacute; h&agrave;ng đầu thế giới m&ocirc; tả C&ocirc;ng Tr&iacute; l&agrave; một NTK đạt tới tr&igrave;nh độ thời trang cao cấp (couture) tại Tp.HCM, ra mắt BST được lấy cảm hứng từ những x&uacute;c cảm s&acirc;u sắc chốn đ&ocirc; th&agrave;nh, khai th&aacute;c h&igrave;nh ảnh người b&aacute;n hoa dạo tr&ecirc;n những thiết kế t&ocirc;ng trắng với phom d&aacute;ng kiến tr&uacute;c từ ph&iacute;a trước, sau lưng trổ ra những b&ocirc;ng hoa đầy sắc m&agrave;u.</p>\r\n\r\n<p>BST &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; cũng được đăng tải đầy đủ tr&ecirc;n tạp ch&iacute; Vogue Mỹ trong chuy&ecirc;n mục &quot;<em>Thời trang &Aacute; Đ&ocirc;ng hội ngộ Tokyo</em>&quot; - (Asian Fashion Meets Tokyo).</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://fs-07.web4s.vn/uploads/tiny_uploads/1-2643-1424940876.jpg\" style=\"height:337px; width:500px\" /></p>\r\n\r\n<p>&quot;Em Hoa&quot; l&agrave; BST Việt Nam đầu ti&ecirc;n được đăng tải tr&ecirc;n chuy&ecirc;n trang Vogue Mỹ - nơi c&oacute; h&agrave;ng triệu lượt xem từ khắp to&agrave;n cầu mỗi ng&agrave;y.</p>\r\n\r\n<p>Chỉ nhi&ecirc;u đ&acirc;y cũng đủ để kết luận rằng, sau bao năm miệt m&agrave;i trung th&agrave;nh với Haute Couture mặc d&ugrave; vấp phải bao kh&oacute; khăn, th&igrave; cuối c&ugrave;ng NTK C&ocirc;ng Tr&iacute; cũng đ&atilde; tự h&aacute;i cho m&igrave;nh tr&aacute;i ch&iacute;n nhất, ngọt nhất m&agrave; hầu như chưa NTK trong nước n&agrave;o chạm tới được.</p>\r\n\r\n<p>Một lần nữa, xin ch&uacute;c mừng NTK C&ocirc;ng Tr&iacute; của Việt Nam!</p>\r\n', '', 1, '1629639484_ao-polo-tay-dai-nam-alp17-01-ao-polo-nam-tay-dai-alp1701-01-large.jpg', 345000, 345000, 0, 24, '1633339641_5apct016xlm01-499k__1__e0baa60f8bee4576b2bd71bf01155d3d_master.jpg', '1633339656_5apct021den01-389k__7__f3c1137e76f24800ab2c7c31594feee1_master.jpg', 'Trắng', 'Cotton', 'Nhật bản', 'XXS'),
(28, 'ÁO THUN DÀI TAY ALT17-01', '<p><strong>ROBINS đảm bảo sản phẩm ch&iacute;nh h&atilde;ng</strong></p>\r\n\r\n<ul>\r\n	<li>Chất liệu cotton</li>\r\n	<li>&Aacute;o cổ tr&ograve;n</li>\r\n	<li>Tay ngắn</li>\r\n	<li>Kẻ sọc ngang họa tiết phối logo thương hiệu mặt trước &aacute;o</li>\r\n	<li>Kh&ocirc;ng may l&oacute;t</li>\r\n</ul>\r\n', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;SLIM FIT</p>\r\n\r\n<p><strong>CHI TIẾT:</strong></p>\r\n\r\n<p>- Mẫu &aacute;o Polo 4s&nbsp;APS026S7 với thiết kế cơ bản, điểm nhấn tập trung ở phần cổ dệt Jacquard, bề mặt dệt mắt chim. Thiết kế đơn giản tạo sự nam t&iacute;nh tuyệt đối.&nbsp;</p>\r\n\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n\r\n<p>- Chất liệu CVC tạo sự thỏa m&aacute;i, mềm mịn. Sản phẩm giữ phom d&aacute;ng, chống nhăn sau nhiều lần giặt.</p>\r\n\r\n<p>&quot;Em Hoa&quot; vừa ra mắt&nbsp;đ&atilde; khiến những ai chi&ecirc;m ngưỡng phải &quot;Wow&quot; r&otilde; to. Lấy cảm hứng từ người b&aacute;n hoa dạo tr&ecirc;n đường phố S&agrave;i G&ograve;n, NTK C&ocirc;ng Tr&iacute; đ&atilde; tạo n&ecirc;n loạt thiết kế oversized với điểm nhấn l&agrave;&nbsp;những đo&aacute; hoa khổng lồ đ&iacute;nh kết tr&ecirc;n phần th&acirc;n sau, được chế t&aacute;c ho&agrave;n to&agrave;n thủ c&ocirc;ng bằng kĩ thuật th&ecirc;u tay.&nbsp;</p>\r\n\r\n<p>V&agrave; kiệt t&aacute;c &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; kh&ocirc;ng chỉ được c&ocirc;ng nhận tại Việt Nam, Tokyo m&agrave; mới đ&acirc;y, cả tạp ch&iacute; Vogue Mỹ cũng nhận thấy rằng anh xứng đ&aacute;ng với những lời ca tụng.</p>\r\n\r\n<p>Trong b&agrave;i b&aacute;o với nhan đề &quot;<em>Tuần lễ thời trang Tokyo lại xuất sắc một lần nữa</em>&quot;, Vogue Mỹ đ&atilde; xem NTK C&ocirc;ng Tr&iacute; như một trong những nh&acirc;n tố tạo n&ecirc;n th&agrave;nh c&ocirc;ng của chuỗi sự kiện danh gi&aacute; n&agrave;y. Theo đ&oacute;, tạp ch&iacute; h&agrave;ng đầu thế giới m&ocirc; tả C&ocirc;ng Tr&iacute; l&agrave; một NTK đạt tới tr&igrave;nh độ thời trang cao cấp (couture) tại Tp.HCM, ra mắt BST được lấy cảm hứng từ những x&uacute;c cảm s&acirc;u sắc chốn đ&ocirc; th&agrave;nh, khai th&aacute;c h&igrave;nh ảnh người b&aacute;n hoa dạo tr&ecirc;n những thiết kế t&ocirc;ng trắng với phom d&aacute;ng kiến tr&uacute;c từ ph&iacute;a trước, sau lưng trổ ra những b&ocirc;ng hoa đầy sắc m&agrave;u.</p>\r\n\r\n<p>BST &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; cũng được đăng tải đầy đủ tr&ecirc;n tạp ch&iacute; Vogue Mỹ trong chuy&ecirc;n mục &quot;<em>Thời trang &Aacute; Đ&ocirc;ng hội ngộ Tokyo</em>&quot; - (Asian Fashion Meets Tokyo).</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://fs-07.web4s.vn/uploads/tiny_uploads/1-2643-1424940876.jpg\" style=\"height:337px; width:500px\" /></p>\r\n\r\n<p>&quot;Em Hoa&quot; l&agrave; BST Việt Nam đầu ti&ecirc;n được đăng tải tr&ecirc;n chuy&ecirc;n trang Vogue Mỹ - nơi c&oacute; h&agrave;ng triệu lượt xem từ khắp to&agrave;n cầu mỗi ng&agrave;y.</p>\r\n\r\n<p>Chỉ nhi&ecirc;u đ&acirc;y cũng đủ để kết luận rằng, sau bao năm miệt m&agrave;i trung th&agrave;nh với Haute Couture mặc d&ugrave; vấp phải bao kh&oacute; khăn, th&igrave; cuối c&ugrave;ng NTK C&ocirc;ng Tr&iacute; cũng đ&atilde; tự h&aacute;i cho m&igrave;nh tr&aacute;i ch&iacute;n nhất, ngọt nhất m&agrave; hầu như chưa NTK trong nước n&agrave;o chạm tới được.</p>\r\n\r\n<p>Một lần nữa, xin ch&uacute;c mừng NTK C&ocirc;ng Tr&iacute; của Việt Nam!</p>\r\n', '', 1, '1629639542_ao-thun-dai-tay-alt17-01-ao-thun-va-polo-dai-tay-alt17-07-large.jpg', 265000, 265000, 0, 24, '1633339625_5apct021den01-389k__7__f3c1137e76f24800ab2c7c31594feee1_master.jpg', '1633339625_5apct016xlm01-499k__1__e0baa60f8bee4576b2bd71bf01155d3d_master.jpg', 'Trắng', 'Cotton', 'Nhật bản', 'XL'),
(29, 'ÁO THUN DÀI TAY ALT17-07', '<p><strong>ROBINS đảm bảo sản phẩm ch&iacute;nh h&atilde;ng</strong></p>\r\n\r\n<ul>\r\n	<li>Chất liệu cotton</li>\r\n	<li>&Aacute;o cổ tr&ograve;n</li>\r\n	<li>Tay ngắn</li>\r\n	<li>Kẻ sọc ngang họa tiết phối logo thương hiệu mặt trước &aacute;o</li>\r\n	<li>Kh&ocirc;ng may l&oacute;t</li>\r\n</ul>\r\n', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;SLIM FIT</p>\r\n\r\n<p><strong>CHI TIẾT:</strong></p>\r\n\r\n<p>- Mẫu &aacute;o Polo 4s&nbsp;APS026S7 với thiết kế cơ bản, điểm nhấn tập trung ở phần cổ dệt Jacquard, bề mặt dệt mắt chim. Thiết kế đơn giản tạo sự nam t&iacute;nh tuyệt đối.&nbsp;</p>\r\n\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n\r\n<p>- Chất liệu CVC tạo sự thỏa m&aacute;i, mềm mịn. Sản phẩm giữ phom d&aacute;ng, chống nhăn sau nhiều lần giặt.</p>\r\n\r\n<p>&quot;Em Hoa&quot; vừa ra mắt&nbsp;đ&atilde; khiến những ai chi&ecirc;m ngưỡng phải &quot;Wow&quot; r&otilde; to. Lấy cảm hứng từ người b&aacute;n hoa dạo tr&ecirc;n đường phố S&agrave;i G&ograve;n, NTK C&ocirc;ng Tr&iacute; đ&atilde; tạo n&ecirc;n loạt thiết kế oversized với điểm nhấn l&agrave;&nbsp;những đo&aacute; hoa khổng lồ đ&iacute;nh kết tr&ecirc;n phần th&acirc;n sau, được chế t&aacute;c ho&agrave;n to&agrave;n thủ c&ocirc;ng bằng kĩ thuật th&ecirc;u tay.&nbsp;</p>\r\n\r\n<p>V&agrave; kiệt t&aacute;c &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; kh&ocirc;ng chỉ được c&ocirc;ng nhận tại Việt Nam, Tokyo m&agrave; mới đ&acirc;y, cả tạp ch&iacute; Vogue Mỹ cũng nhận thấy rằng anh xứng đ&aacute;ng với những lời ca tụng.</p>\r\n\r\n<p>Trong b&agrave;i b&aacute;o với nhan đề &quot;<em>Tuần lễ thời trang Tokyo lại xuất sắc một lần nữa</em>&quot;, Vogue Mỹ đ&atilde; xem NTK C&ocirc;ng Tr&iacute; như một trong những nh&acirc;n tố tạo n&ecirc;n th&agrave;nh c&ocirc;ng của chuỗi sự kiện danh gi&aacute; n&agrave;y. Theo đ&oacute;, tạp ch&iacute; h&agrave;ng đầu thế giới m&ocirc; tả C&ocirc;ng Tr&iacute; l&agrave; một NTK đạt tới tr&igrave;nh độ thời trang cao cấp (couture) tại Tp.HCM, ra mắt BST được lấy cảm hứng từ những x&uacute;c cảm s&acirc;u sắc chốn đ&ocirc; th&agrave;nh, khai th&aacute;c h&igrave;nh ảnh người b&aacute;n hoa dạo tr&ecirc;n những thiết kế t&ocirc;ng trắng với phom d&aacute;ng kiến tr&uacute;c từ ph&iacute;a trước, sau lưng trổ ra những b&ocirc;ng hoa đầy sắc m&agrave;u.</p>\r\n\r\n<p>BST &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; cũng được đăng tải đầy đủ tr&ecirc;n tạp ch&iacute; Vogue Mỹ trong chuy&ecirc;n mục &quot;<em>Thời trang &Aacute; Đ&ocirc;ng hội ngộ Tokyo</em>&quot; - (Asian Fashion Meets Tokyo).</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://fs-07.web4s.vn/uploads/tiny_uploads/1-2643-1424940876.jpg\" style=\"height:337px; width:500px\" /></p>\r\n\r\n<p>&quot;Em Hoa&quot; l&agrave; BST Việt Nam đầu ti&ecirc;n được đăng tải tr&ecirc;n chuy&ecirc;n trang Vogue Mỹ - nơi c&oacute; h&agrave;ng triệu lượt xem từ khắp to&agrave;n cầu mỗi ng&agrave;y.</p>\r\n\r\n<p>Chỉ nhi&ecirc;u đ&acirc;y cũng đủ để kết luận rằng, sau bao năm miệt m&agrave;i trung th&agrave;nh với Haute Couture mặc d&ugrave; vấp phải bao kh&oacute; khăn, th&igrave; cuối c&ugrave;ng NTK C&ocirc;ng Tr&iacute; cũng đ&atilde; tự h&aacute;i cho m&igrave;nh tr&aacute;i ch&iacute;n nhất, ngọt nhất m&agrave; hầu như chưa NTK trong nước n&agrave;o chạm tới được.</p>\r\n\r\n<p>Một lần nữa, xin ch&uacute;c mừng NTK C&ocirc;ng Tr&iacute; của Việt Nam!</p>\r\n', '', 0, '1629639605_ao-thun-dai-tay-alt17-07-ao-thun-va-polo-dai-tay-alt17-01-large.jpg', 365000, 292000, 20, 24, '1633339574_5apct021den01-389k__5__3ebe9713e75044e3904c492fbe021608_master.jpg', '1633339593_5apct021den01-389k__3__165955ae429e40538e38706d8deab368_master.jpg', 'Trắng', 'Cotton', 'Nhật bản', 'XXS'),
(34, 'ÁO POLO NAM APS017S7', '<ul>\r\n	<li>Chất liệu cotton</li>\r\n	<li>&Aacute;o cổ tr&ograve;n</li>\r\n	<li>Tay ngắn</li>\r\n	<li>Kẻ sọc ngang họa tiết phối logo thương hiệu mặt trước &aacute;o</li>\r\n	<li>Kh&ocirc;ng may l&oacute;t</li>\r\n</ul>\r\n', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;SLIM FIT</p>\r\n\r\n<p><strong>CHI TIẾT:</strong></p>\r\n\r\n<p>- Mẫu &aacute;o Polo 4s&nbsp;APS026S7 với thiết kế cơ bản, điểm nhấn tập trung ở phần cổ dệt Jacquard, bề mặt dệt mắt chim. Thiết kế đơn giản tạo sự nam t&iacute;nh tuyệt đối.&nbsp;</p>\r\n\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n\r\n<p>- Chất liệu CVC tạo sự thỏa m&aacute;i, mềm mịn. Sản phẩm giữ phom d&aacute;ng, chống nhăn sau nhiều lần giặt.</p>\r\n', 'ROBINS đảm bảo sản phẩm chính hãng', 1, '1629653339_ao-polo-nam-aps013s7-ao-polo-nam-aristino-aps013s7-02-large.jpg', 440000, 352000, 20, 23, '1633339557_5apct014trk01-499k__1__0244dd9d83364750b68d5a1aef27f7f6_master.jpg', '1633339557_5apct014trk01-499k__2__84ec1b915ceb4759a16d2dd50c00cdc2_master.jpg', 'Trắng', 'Cotton', 'Nhật bản', 'XXS'),
(35, 'ÁO POLO NAM APS010S7', '<ul>\r\n	<li>Chất liệu cotton</li>\r\n	<li>&Aacute;o cổ tr&ograve;n</li>\r\n	<li>Tay ngắn</li>\r\n	<li>Kẻ sọc ngang họa tiết phối logo thương hiệu mặt trước &aacute;o</li>\r\n	<li>Kh&ocirc;ng may l&oacute;t</li>\r\n</ul>\r\n', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;SLIM FIT</p>\r\n\r\n<p><strong>CHI TIẾT:</strong></p>\r\n\r\n<p>- Mẫu &aacute;o Polo 4s&nbsp;APS026S7 với thiết kế cơ bản, điểm nhấn tập trung ở phần cổ dệt Jacquard, bề mặt dệt mắt chim. Thiết kế đơn giản tạo sự nam t&iacute;nh tuyệt đối.&nbsp;</p>\r\n\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n\r\n<p>- Chất liệu CVC tạo sự thỏa m&aacute;i, mềm mịn. Sản phẩm giữ phom d&aacute;ng, chống nhăn sau nhiều lần giặt.</p>\r\n\r\n<p>&quot;Em Hoa&quot; vừa ra mắt&nbsp;đ&atilde; khiến những ai chi&ecirc;m ngưỡng phải &quot;Wow&quot; r&otilde; to. Lấy cảm hứng từ người b&aacute;n hoa dạo tr&ecirc;n đường phố S&agrave;i G&ograve;n, NTK C&ocirc;ng Tr&iacute; đ&atilde; tạo n&ecirc;n loạt thiết kế oversized với điểm nhấn l&agrave;&nbsp;những đo&aacute; hoa khổng lồ đ&iacute;nh kết tr&ecirc;n phần th&acirc;n sau, được chế t&aacute;c ho&agrave;n to&agrave;n thủ c&ocirc;ng bằng kĩ thuật th&ecirc;u tay.&nbsp;</p>\r\n\r\n<p>V&agrave; kiệt t&aacute;c &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; kh&ocirc;ng chỉ được c&ocirc;ng nhận tại Việt Nam, Tokyo m&agrave; mới đ&acirc;y, cả tạp ch&iacute; Vogue Mỹ cũng nhận thấy rằng anh xứng đ&aacute;ng với những lời ca tụng.</p>\r\n\r\n<p>Trong b&agrave;i b&aacute;o với nhan đề &quot;<em>Tuần lễ thời trang Tokyo lại xuất sắc một lần nữa</em>&quot;, Vogue Mỹ đ&atilde; xem NTK C&ocirc;ng Tr&iacute; như một trong những nh&acirc;n tố tạo n&ecirc;n th&agrave;nh c&ocirc;ng của chuỗi sự kiện danh gi&aacute; n&agrave;y. Theo đ&oacute;, tạp ch&iacute; h&agrave;ng đầu thế giới m&ocirc; tả C&ocirc;ng Tr&iacute; l&agrave; một NTK đạt tới tr&igrave;nh độ thời trang cao cấp (couture) tại Tp.HCM, ra mắt BST được lấy cảm hứng từ những x&uacute;c cảm s&acirc;u sắc chốn đ&ocirc; th&agrave;nh, khai th&aacute;c h&igrave;nh ảnh người b&aacute;n hoa dạo tr&ecirc;n những thiết kế t&ocirc;ng trắng với phom d&aacute;ng kiến tr&uacute;c từ ph&iacute;a trước, sau lưng trổ ra những b&ocirc;ng hoa đầy sắc m&agrave;u.</p>\r\n\r\n<p>BST &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; cũng được đăng tải đầy đủ tr&ecirc;n tạp ch&iacute; Vogue Mỹ trong chuy&ecirc;n mục &quot;<em>Thời trang &Aacute; Đ&ocirc;ng hội ngộ Tokyo</em>&quot; - (Asian Fashion Meets Tokyo).</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;<img alt=\"\" src=\"https://fs-07.web4s.vn/uploads/tiny_uploads/1-2643-1424940876.jpg\" style=\"height:337px; width:500px\" /></p>\r\n\r\n<p>&quot;Em Hoa&quot; l&agrave; BST Việt Nam đầu ti&ecirc;n được đăng tải tr&ecirc;n chuy&ecirc;n trang Vogue Mỹ - nơi c&oacute; h&agrave;ng triệu lượt xem từ khắp to&agrave;n cầu mỗi ng&agrave;y.</p>\r\n\r\n<p>Chỉ nhi&ecirc;u đ&acirc;y cũng đủ để kết luận rằng, sau bao năm miệt m&agrave;i trung th&agrave;nh với Haute Couture mặc d&ugrave; vấp phải bao kh&oacute; khăn, th&igrave; cuối c&ugrave;ng NTK C&ocirc;ng Tr&iacute; cũng đ&atilde; tự h&aacute;i cho m&igrave;nh tr&aacute;i ch&iacute;n nhất, ngọt nhất m&agrave; hầu như chưa NTK trong nước n&agrave;o chạm tới được.</p>\r\n\r\n<p>Một lần nữa, xin ch&uacute;c mừng NTK C&ocirc;ng Tr&iacute; của Việt Nam!</p>\r\n', 'ROBINS đảm bảo sản phẩm chính hãng', 0, '1629653401_ao-polo-nam-aps033s7-ao-polo-nam-aristino-aps033s7-large.jpg', 425000, 382500, 10, 23, '1629657602_ao-polo-nam-aps013s7-ao-polo-nam-aristino-aps013s7-02-large.jpg', '1629658537_qu-n-au-nam-atr015s7-quan-au-nam-aristino-atr002s7-large.jpg', 'Nâu', 'Cotton', 'Nhật bản', 'S'),
(38, 'Quần âu nam ATR002S7', '<ul>\r\n	<li>Chất liệu cotton</li>\r\n	<li>Kẻ sọc ngang họa tiết phối logo thương hiệu mặt trước &aacute;o</li>\r\n	<li>Kh&ocirc;ng may l&oacute;t</li>\r\n</ul>\r\n', '<p>Quần &acirc;u nam 4S được may từ chất liệu vải tuyết mưa mềm m&aacute;t, tho&aacute;ng kh&iacute;, thấm h&uacute;t mồ h&ocirc;i tốt.<br />\r\nMặt vải d&agrave;y dặn, &iacute;t nhăn nh&agrave;u, tạo d&aacute;ng ống đứng, &ocirc;m vừa phải gọn g&agrave;ng v&agrave; lịch l&atilde;m.<br />\r\nSản phẩm c&oacute; đường chỉ may tỉ mỉ, tinh tế.<br />\r\nThiết kế cổ điển với kh&oacute;a k&eacute;o, c&agrave;i khuy, đỉa quần nhỏ, t&uacute;i trước, sau.<br />\r\nQuần &acirc;u m&agrave;u sắc đơn giản, dễ mặc, dễ kết hợp với nhiều kiểu trang phục kh&aacute;c nhau cho nhiều dịp v&agrave; nhiều ho&agrave;n cảnh chắc chắn sẽ gi&uacute;p bạn nam thể hiện phong c&aacute;ch lịch l&atilde;m, trẻ trung của m&igrave;nh mỗi khi ra ngo&agrave;i.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://fs-07.web4s.vn/uploads/tiny_uploads/ao-vest-aristino-mau-xanh-bien-sau_large.jpg\" style=\"height:480px; width:363px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hướng dẫn bảo quản:&nbsp;<br />\r\n- Giặt m&aacute;y với chu kỳ trung b&igrave;nh v&agrave; v&ograve;ng quay ngắn<br />\r\n- Giặt với nhiệt độ tối đa 30 độ C<br />\r\n- Sấy ở nhiệt độ thường&nbsp;<br />\r\n- L&agrave; ủi ở nhiệt độ thấp</p>\r\n', 'ROBINS đảm bảo sản phẩm chính hãng', 1, '1629712545_qu-n-au-nam-atr008s7-quan-au-nam-aristino-atr007s7-large.jpg', 380000, 304000, 20, 26, '1629712545_qu-n-au-nam-atr002s7-quan-au-nam-atr006s7-den-large.jpg', '1629712545_qu-n-au-nam-atr002s7-quan-tay-au-nam-aristino-atr17-11-02-large.jpg', 'Trắng', 'Vải Kaki', 'Nhật bản', 'XXL'),
(39, 'Quần âu nam ATR007S7', '<ul>\r\n	<li>Chất liệu cotton</li>\r\n	<li>Kẻ sọc ngang họa tiết phối logo thương hiệu mặt trước &aacute;o</li>\r\n	<li>Kh&ocirc;ng may l&oacute;t</li>\r\n</ul>\r\n', '<p>Quần &acirc;u nam 4S được may từ chất liệu vải tuyết mưa mềm m&aacute;t, tho&aacute;ng kh&iacute;, thấm h&uacute;t mồ h&ocirc;i tốt.<br />\r\nMặt vải d&agrave;y dặn, &iacute;t nhăn nh&agrave;u, tạo d&aacute;ng ống đứng, &ocirc;m vừa phải gọn g&agrave;ng v&agrave; lịch l&atilde;m.<br />\r\nSản phẩm c&oacute; đường chỉ may tỉ mỉ, tinh tế.<br />\r\nThiết kế cổ điển với kh&oacute;a k&eacute;o, c&agrave;i khuy, đỉa quần nhỏ, t&uacute;i trước, sau.<br />\r\nQuần &acirc;u m&agrave;u sắc đơn giản, dễ mặc, dễ kết hợp với nhiều kiểu trang phục kh&aacute;c nhau cho nhiều dịp v&agrave; nhiều ho&agrave;n cảnh chắc chắn sẽ gi&uacute;p bạn nam thể hiện phong c&aacute;ch lịch l&atilde;m, trẻ trung của m&igrave;nh mỗi khi ra ngo&agrave;i.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://fs-07.web4s.vn/uploads/tiny_uploads/ao-vest-aristino-mau-xanh-bien-sau_large.jpg\" style=\"height:480px; width:363px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hướng dẫn bảo quản:&nbsp;<br />\r\n- Giặt m&aacute;y với chu kỳ trung b&igrave;nh v&agrave; v&ograve;ng quay ngắn<br />\r\n- Giặt với nhiệt độ tối đa 30 độ C<br />\r\n- Sấy ở nhiệt độ thường&nbsp;<br />\r\n- L&agrave; ủi ở nhiệt độ thấp</p>\r\n', 'ROBINS đảm bảo sản phẩm chính hãng', 0, '1629712609_qu-n-au-nam-atr007s7-quan-au-nam-aristino-atr008s7-large.jpg', 500000, 450000, 10, 26, '1629712609_qu-n-au-nam-atr007s7-quan-au-nam-aristino-atr010s7-01-large.jpg', '1633339518_5qaub001ghs01-_291307e5861e41ec89a090925fa56e13_master (1).jpg', 'Đen', 'Vải kate', 'Nhật bản', 'XL'),
(40, 'Quần tây nam ATR001S7', '<ul>\r\n	<li>Chất liệu cotton</li>\r\n	<li>Kẻ sọc ngang họa tiết phối logo thương hiệu mặt trước &aacute;o</li>\r\n	<li>Kh&ocirc;ng may l&oacute;t</li>\r\n</ul>\r\n', '<p>Quần &acirc;u nam 4S được may từ chất liệu vải tuyết mưa mềm m&aacute;t, tho&aacute;ng kh&iacute;, thấm h&uacute;t mồ h&ocirc;i tốt.<br />\r\nMặt vải d&agrave;y dặn, &iacute;t nhăn nh&agrave;u, tạo d&aacute;ng ống đứng, &ocirc;m vừa phải gọn g&agrave;ng v&agrave; lịch l&atilde;m.<br />\r\nSản phẩm c&oacute; đường chỉ may tỉ mỉ, tinh tế.<br />\r\nThiết kế cổ điển với kh&oacute;a k&eacute;o, c&agrave;i khuy, đỉa quần nhỏ, t&uacute;i trước, sau.<br />\r\nQuần &acirc;u m&agrave;u sắc đơn giản, dễ mặc, dễ kết hợp với nhiều kiểu trang phục kh&aacute;c nhau cho nhiều dịp v&agrave; nhiều ho&agrave;n cảnh chắc chắn sẽ gi&uacute;p bạn nam thể hiện phong c&aacute;ch lịch l&atilde;m, trẻ trung của m&igrave;nh mỗi khi ra ngo&agrave;i.<br />\r\nHướng dẫn bảo quản:&nbsp;<br />\r\n- Giặt m&aacute;y với chu kỳ trung b&igrave;nh v&agrave; v&ograve;ng quay ngắn<br />\r\n- Giặt với nhiệt độ tối đa 30 độ C<br />\r\n- Sấy ở nhiệt độ thường&nbsp;<br />\r\n- L&agrave; ủi ở nhiệt độ thấp</p>\r\n', 'ROBINS đảm bảo sản phẩm chính hãng', 1, '1629712767_qu-n-au-nam-atr007s7-quan-au-nam-aristino-atr010s7-01-large.jpg', 350000, 157500, 55, 26, '1629712767_qu-n-tay-nam-atr001s7-quan-au-nam-aristino-atr015s7-large.jpg', '1633339505_5qaub001ghs01-_291307e5861e41ec89a090925fa56e13_master.jpg', 'Nâu', 'Vải kate', 'Thái lan', 'L'),
(48, 'Dây lưng nam 01', '', '', '', 0, '1633339489_m2-4dlcb004den01-469k_ab375585e7734433bbb8f2f1053b4ed5_master.jpg', 650000, 585000, 10, 31, '1633339489_m2-4dlcb004den01-469k__3__aaaec0885f7c482a833ae601a8149a94_master.jpg', '1633339489_m2-4dlcb004den01-469k__2__07efc3e407144e75821a90c1c27a1fc7_master.jpg', 'Đen', 'Da', 'Hàn quốc', 'L'),
(49, 'Dây lưng nam ABL02707', '', '', '', 0, '1631073489_day-l-ng-nam-01-day-lung-nam-aristino-abl02807-large.jpg', 500000, 500000, 0, 31, '1633339468_m2-4dlcb004den01-469k__3__aaaec0885f7c482a833ae601a8149a94_master.jpg', '1633339468_m2-4dlcb004den01-469k__2__07efc3e407144e75821a90c1c27a1fc7_master.jpg', 'Đen', 'Da', 'Thái lan', 'XL'),
(50, 'Dây lưng nam ABL03107', '', '', '', 0, '1631073522_day-l-ng-nam-abl02707-day-lung-nam-aristino-abl02707-large.jpg', 200000, 200000, 0, 31, '1633339406_m1-4dlcb004nau01-469k__5__c29b8429ed57470c8f9c7795ff71b837_master.jpg', '1633339406_m1-4dlcb004nau01-469k__3__ea402cbe9d0d4cb8aced1961b286c01d_master.jpg', 'Nâu', 'Da', 'Nhật bản', 'XXL'),
(51, 'ÁO THUN DÀI TAY ALT17-02', '<ul>\r\n	<li>Chất liệu cotton</li>\r\n	<li>&Aacute;o cổ tr&ograve;n</li>\r\n	<li>Tay ngắn</li>\r\n	<li>Kẻ sọc ngang họa tiết phối logo thương hiệu mặt trước &aacute;o</li>\r\n	<li>Kh&ocirc;ng may l&oacute;t</li>\r\n</ul>\r\n', '<h1>&nbsp;</h1>\r\n\r\n<p><span style=\"color:#000000\"><strong>KIỂU D&Aacute;NG:</strong>&nbsp;SLIM FIT</span></p>\r\n\r\n<p><span style=\"color:#000000\"><strong>CHI TIẾT:</strong></span></p>\r\n\r\n<p><span style=\"color:#000000\">- Mẫu &aacute;o Polo 4s&nbsp;APS026S7 với thiết kế cơ bản, điểm nhấn tập trung ở phần cổ dệt Jacquard, bề mặt dệt mắt chim. Thiết kế đơn giản tạo sự nam t&iacute;nh tuyệt đối.&nbsp;</span></p>\r\n\r\n<p><span style=\"color:#000000\"><strong>CHẤT LIỆU:</strong></span></p>\r\n\r\n<p><span style=\"color:#000000\">- Chất liệu CVC tạo sự thỏa m&aacute;i, mềm mịn. Sản phẩm giữ phom d&aacute;ng, chống nhăn sau nhiều lần giặt.</span></p>\r\n\r\n<p><span style=\"color:#000000\">&quot;Em Hoa&quot; vừa ra mắt&nbsp;đ&atilde; khiến những ai chi&ecirc;m ngưỡng phải &quot;Wow&quot; r&otilde; to. Lấy cảm hứng từ người b&aacute;n hoa dạo tr&ecirc;n đường phố S&agrave;i G&ograve;n, NTK C&ocirc;ng Tr&iacute; đ&atilde; tạo n&ecirc;n loạt thiết kế oversized với điểm nhấn l&agrave;&nbsp;những đo&aacute; hoa khổng lồ đ&iacute;nh kết tr&ecirc;n phần th&acirc;n sau, được chế t&aacute;c ho&agrave;n to&agrave;n thủ c&ocirc;ng bằng kĩ thuật th&ecirc;u tay.&nbsp;</span></p>\r\n\r\n<p><span style=\"color:#000000\">V&agrave; kiệt t&aacute;c &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; kh&ocirc;ng chỉ được c&ocirc;ng nhận tạai Việt Nam, Tokyo m&agrave; mới đ&acirc;y, cả tạp ch&iacute; Vogue Mỹ cũng nhận thấy rằng anh xứng đ&aacute;ng với những lời ca tụng.</span></p>\r\n\r\n<p><span style=\"color:#000000\">Trong b&agrave;i b&aacute;o với nhan đề &quot;<em>Tuần lễ thời trang Tokyo lại xuất sắc một lần nữa</em>&quot;, Vogue Mỹ đ&atilde; xem NTK C&ocirc;ng Tr&iacute; như một trong những nh&acirc;n tố tạo n&ecirc;n th&agrave;nh c&ocirc;ng của chuỗi sự kiện danh gi&aacute; n&agrave;y. Theo đ&oacute;, tạp ch&iacute; h&agrave;ng đầu thế giới m&ocirc; tả C&ocirc;ng Tr&iacute; l&agrave; một NTK đạt tới tr&igrave;nh độ thời trang cao cấp (couture) tại Tp.HCM, ra mắt BST được lấy cảm hứng từ những x&uacute;c cảm s&acirc;u sắc chốn đ&ocirc; th&agrave;nh, khai th&aacute;c h&igrave;nh ảnh người b&aacute;n hoa dạo tr&ecirc;n những thiết kế t&ocirc;ng trắng với phom d&aacute;ng kiến tr&uacute;c từ ph&iacute;a trước, sau lưng trổ ra những b&ocirc;ng hoa đầy sắc m&agrave;u.</span></p>\r\n\r\n<p><span style=\"color:#000000\">BST &quot;Em Hoa&quot; của NTK C&ocirc;ng Tr&iacute; cũng được đăng tải đầy đủ tr&ecirc;n tạp ch&iacute; Vogue Mỹ trong chuy&ecirc;n mục &quot;<em>Thời trang &Aacute; Đ&ocirc;ng hội ngộ Tokyo</em>&quot; - (Asian Fashion Meets Tokyo).</span></p>\r\n\r\n<p><span style=\"color:#000000\">&nbsp;<img alt=\"\" src=\"https://fs-07.web4s.vn/uploads/tiny_uploads/1-2643-1424940876.jpg\" /></span></p>\r\n\r\n<p><span style=\"color:#000000\">&quot;Em Hoa&quot; l&agrave; BST Việt Nam đầu ti&ecirc;n được đăng tải tr&ecirc;n chuy&ecirc;n trang Vogue Mỹ - nơi c&oacute; h&agrave;ng triệu lượt xem từ khắp to&agrave;n cầu mỗi ng&agrave;y.</span></p>\r\n\r\n<p><span style=\"color:#000000\">Chỉ nhi&ecirc;u đ&acirc;y cũng đủ để kết luận rằng, sau bao năm miệt m&agrave;i trung th&agrave;nh với Haute Couture mặc d&ugrave; vấp phải bao kh&oacute; khăn, th&igrave; cuối c&ugrave;ng NTK C&ocirc;ng Tr&iacute; cũng đ&atilde; tự h&aacute;i cho m&igrave;nh tr&aacute;i ch&iacute;n nhất, ngọt nhất m&agrave; hầu như chưa NTK trong nước n&agrave;o chạm tới được.</span></p>\r\n\r\n<p><span style=\"color:#000000\">Một lần nữa, xin ch&uacute;c mừng NTK C&ocirc;ng Tr&iacute; của Việt Nam!</span></p>\r\n', 'ROBINS đảm bảo sản phẩm chính hãng', 1, '1633339361_5apct014trk01-499k_075f3ae5b040425f84cc0130ce848063_master.jpg', 200000, 170000, 15, 24, '1633339361_5apct014trk01-499k__2__84ec1b915ceb4759a16d2dd50c00cdc2_master.jpg', '1633339361_5apct014trk01-499k__1__0244dd9d83364750b68d5a1aef27f7f6_master.jpg', 'Trắng', 'Cotton', 'Việt nam', 'XXL'),
(52, 'QUẦN ÂU NAM ATR002S099', '<ul>\r\n	<li>Chất liệu cotton</li>\r\n	<li>Kẻ sọc ngang họa tiết phối logo thương hiệu mặt trước &aacute;o</li>\r\n	<li>Kh&ocirc;ng may l&oacute;t</li>\r\n</ul>\r\n', '<h1>Quần &acirc;u nam 4S được may từ chất liệu vải tuyết mưa mềm m&aacute;t, tho&aacute;ng kh&iacute;, thấm h&uacute;t mồ h&ocirc;i tốt.<br />\r\nMặt vải d&agrave;y dặn, &iacute;t nhăn nh&agrave;u, tạo d&aacute;ng ống đứng, &ocirc;m vừa phải gọn g&agrave;ng v&agrave; lịch l&atilde;m.<br />\r\nSản phẩm c&oacute; đường chỉ may tỉ mỉ, tinh tế.<br />\r\nThiết kế cổ điển với kh&oacute;a k&eacute;o, c&agrave;i khuy, đỉa quần nhỏ, t&uacute;i trước, sau.<br />\r\nQuần &acirc;u m&agrave;u sắc đơn giản, dễ mặc, dễ kết hợp với nhiều kiểu trang phục kh&aacute;c nhau cho nhiều dịp v&agrave; nhiều ho&agrave;n cảnh chắc chắn sẽ gi&uacute;p bạn nam thể hiện phong c&aacute;ch lịch l&atilde;m, trẻ trung của m&igrave;nh mỗi khi ra ngo&agrave;i.</h1>\r\n', 'Hermer đảm bảo sản phẩm chính hãng', 0, '1633339142_quan_au_nam_biluxury_3683c2674841464c96f83bdf6b235e4d_master.jpg', 100000, 90000, 10, 26, '1633339142_quan_au_nam_biluxury1_15ae07cec0bc4ce4abc461af3793d459_master.jpg', '1633339142_quan_au_nam_biluxury3_a1d8b22461134565b4a09cd90dc58666_master.jpg', 'Nâu', 'Cotton', 'Việt nam', 'XL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `star`) VALUES
(23, 20, 5),
(24, 20, 5),
(25, 20, 1),
(26, 20, 3),
(27, 20, 2),
(28, 20, 1),
(29, 11, 5),
(30, 11, 5),
(31, 19, 4),
(32, 20, 2),
(33, 25, 5),
(34, 27, 3),
(35, 35, 5),
(36, 35, 5),
(37, 50, 1),
(38, 50, 1),
(39, 49, 1),
(40, 49, 1),
(41, 48, 1),
(42, 48, 1),
(43, 48, 1),
(44, 35, 1),
(45, 40, 1),
(46, 49, 1),
(47, 49, 1),
(48, 49, 1),
(49, 49, 1),
(50, 49, 1),
(51, 49, 1),
(52, 49, 1),
(53, 49, 1),
(54, 49, 1),
(55, 49, 1),
(56, 49, 1),
(57, 49, 1),
(58, 49, 1),
(59, 49, 1),
(60, 49, 1),
(61, 49, 1),
(62, 49, 1),
(63, 49, 1),
(64, 49, 1),
(65, 49, 1),
(66, 49, 1),
(67, 49, 1),
(68, 49, 1),
(69, 49, 1),
(70, 49, 1),
(71, 49, 1),
(72, 49, 1),
(73, 49, 1),
(74, 49, 1),
(75, 49, 1),
(76, 49, 1),
(77, 49, 1),
(78, 49, 1),
(79, 49, 1),
(80, 49, 1),
(81, 49, 1),
(82, 49, 1),
(83, 49, 1),
(84, 49, 1),
(85, 49, 1),
(86, 49, 1),
(87, 49, 1),
(88, 49, 1),
(89, 49, 1),
(90, 49, 1),
(91, 49, 1),
(92, 49, 1),
(93, 49, 1),
(94, 49, 1),
(95, 49, 1),
(96, 49, 1),
(97, 49, 1),
(98, 49, 1),
(99, 49, 1),
(100, 49, 1),
(101, 49, 1),
(102, 49, 1),
(103, 49, 1),
(104, 49, 1),
(105, 49, 1),
(106, 50, 1),
(107, 50, 1),
(108, 50, 1),
(109, 50, 1),
(110, 50, 1),
(111, 50, 1),
(112, 50, 1),
(113, 50, 1),
(114, 50, 1),
(115, 50, 1),
(116, 50, 1),
(117, 50, 1),
(118, 50, 1),
(119, 50, 1),
(120, 50, 1),
(121, 50, 1),
(122, 50, 1),
(123, 50, 1),
(124, 50, 1),
(125, 50, 1),
(126, 50, 1),
(127, 50, 1),
(128, 50, 1),
(129, 50, 1),
(130, 50, 1),
(131, 50, 1),
(132, 50, 1),
(133, 50, 1),
(134, 50, 1),
(135, 50, 1),
(136, 50, 1),
(137, 50, 1),
(138, 50, 1),
(139, 50, 1),
(140, 50, 1),
(141, 50, 1),
(142, 50, 1),
(143, 50, 1),
(144, 50, 1),
(145, 50, 1),
(146, 50, 1),
(147, 50, 1),
(148, 50, 1),
(149, 50, 1),
(150, 50, 1),
(151, 50, 1),
(152, 50, 1),
(153, 50, 1),
(154, 50, 1),
(155, 50, 1),
(156, 50, 1),
(157, 50, 1),
(158, 50, 1),
(159, 50, 1),
(160, 50, 1),
(161, 50, 1),
(162, 50, 1),
(163, 50, 1),
(164, 50, 1),
(165, 50, 1),
(166, 50, 1),
(167, 50, 1),
(168, 50, 1),
(169, 50, 1),
(170, 50, 1),
(171, 50, 1),
(172, 50, 1),
(173, 50, 1),
(174, 50, 1),
(175, 50, 1),
(176, 50, 1),
(177, 50, 1),
(178, 50, 1),
(179, 50, 1),
(180, 50, 1),
(181, 50, 1),
(182, 50, 1),
(183, 50, 1),
(184, 50, 1),
(185, 50, 1),
(186, 50, 1),
(187, 50, 1),
(188, 50, 1),
(189, 50, 1),
(190, 50, 1),
(191, 50, 1),
(192, 50, 1),
(193, 50, 1),
(194, 50, 1),
(195, 50, 1),
(196, 50, 1),
(197, 50, 1),
(198, 50, 1),
(199, 50, 1),
(200, 50, 1),
(201, 50, 1),
(202, 50, 1),
(203, 50, 1),
(204, 50, 1),
(205, 50, 1),
(206, 50, 1),
(207, 50, 1),
(208, 50, 1),
(209, 50, 1),
(210, 50, 1),
(211, 50, 1),
(212, 50, 1),
(213, 50, 1),
(214, 50, 1),
(215, 50, 1),
(216, 50, 1),
(217, 50, 1),
(218, 50, 1),
(219, 50, 1),
(220, 50, 1),
(221, 50, 1),
(222, 50, 1),
(223, 50, 1),
(224, 50, 1),
(225, 50, 1),
(226, 50, 1),
(227, 50, 1),
(228, 50, 1),
(229, 50, 1),
(230, 50, 1),
(231, 50, 1),
(232, 50, 1),
(233, 50, 1),
(234, 50, 1),
(235, 50, 1),
(236, 50, 1),
(237, 50, 1),
(238, 50, 1),
(239, 50, 1),
(240, 50, 1),
(241, 50, 1),
(242, 50, 1),
(243, 50, 1),
(244, 50, 1),
(245, 50, 1),
(246, 50, 1),
(247, 50, 1),
(248, 50, 1),
(249, 49, 1),
(250, 50, 1),
(251, 50, 1),
(252, 50, 1),
(253, 50, 1),
(254, 50, 1),
(255, 50, 1),
(256, 49, 1),
(257, 50, 1),
(258, 50, 1),
(259, 50, 1),
(260, 50, 1),
(261, 50, 1),
(262, 50, 1),
(263, 48, 1),
(264, 50, 1),
(265, 49, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `location` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `photo`, `location`) VALUES
(11, '1631174038_slide1.jpg', 1),
(14, '1631195890_mens.banner.sale_.jpg', 2),
(15, '1631195896_ecommerce_men_s_clothing_banner_template_13_1200x628.jpg', 2),
(16, '1631196266_banner-thoi-trang-nam-don-gian_113857210.jpg', 1),
(19, '1631196408_534b23f26ccba86efdf270ada6523266.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `photo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `photo`) VALUES
(5, 'Nguyễn Văn C@@@@@', 'nve@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', ''),
(14, 'Quang Đỗ', 'chu0ngv0ki20@gmail.com', '202cb962ac59075b964b07152d234b70', ''),
(16, 'Quang Đỗ', 'chu0ngv0ki20@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(20, 'Quang Đỗ', 'chu0ngv0ki20@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(24, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '1630389661_IMG_2075.jpeg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `panel`
--
ALTER TABLE `panel`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
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
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `panel`
--
ALTER TABLE `panel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
