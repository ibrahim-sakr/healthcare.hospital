-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 19, 2015 at 03:35 PM
-- Server version: 5.5.40
-- PHP Version: 5.4.23

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `health_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `abdomen`
--

CREATE TABLE IF NOT EXISTS `abdomen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `level_1` varchar(20) NOT NULL,
  `level_2` varchar(20) NOT NULL,
  `below_5_1` varchar(20) NOT NULL,
  `below_5_2` varchar(20) NOT NULL,
  `below_10_1` varchar(20) NOT NULL,
  `below_10_2` varchar(20) NOT NULL,
  `below_15_1` varchar(20) NOT NULL,
  `below_15_2` varchar(20) NOT NULL,
  `above_5_1` varchar(20) NOT NULL,
  `above_5_2` varchar(20) NOT NULL,
  `above_10_1` varchar(20) NOT NULL,
  `above_10_2` varchar(20) NOT NULL,
  `above_15_1` varchar(20) NOT NULL,
  `above_15_2` varchar(20) NOT NULL,
  `total_1` varchar(20) NOT NULL,
  `total_2` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `acc_costs`
--

CREATE TABLE IF NOT EXISTS `acc_costs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `acc_costs`
--

INSERT INTO `acc_costs` (`id`, `name`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'مصروفات عامة', 'مستلزمات - وادوات ', '2014-09-27 18:26:23', '2014-09-27 18:26:23'),
(2, 'تليفون وانترنت', 'فواتير التنليفون  - واشتراكات الانترنت', '2014-09-27 18:28:13', '2014-09-27 18:28:13'),
(3, 'كهرباء', 'فاتورة الكهرباء', '2014-09-27 18:28:45', '2014-09-27 18:28:45'),
(4, 'ادوية', 'مستلزمات تشغيل', '2014-09-27 18:52:13', '2014-09-27 18:52:13'),
(5, 'صيانة واصلاح', 'صيانة داخل المركز + اصلاحات', '2014-09-27 18:56:13', '2014-09-27 18:56:13'),
(6, 'دعاية', '', '2015-01-04 16:22:10', '2015-01-04 16:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `acc_costs_invoice`
--

CREATE TABLE IF NOT EXISTS `acc_costs_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cost_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `invoice_desc` text NOT NULL,
  `invoice_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `acc_costs_invoice`
--

INSERT INTO `acc_costs_invoice` (`id`, `cost_id`, `value`, `invoice_desc`, `invoice_date`) VALUES
(1, 3, 180, 'فاتورة شهر 8', '2014-09-27 00:00:00'),
(2, 1, 20, 'مناديل', '2014-09-27 00:00:00'),
(3, 1, 50, 'كاسات حجامة', '2014-09-27 00:00:00'),
(4, 2, 530, 'اشتراك الانترنت 3 شهور', '2014-09-27 00:00:00'),
(5, 1, 10, 'ضيافة بيبسى', '2014-09-27 00:00:00'),
(6, 1, 30, 'مناديل', '2014-09-27 00:00:00'),
(7, 4, 625, 'ميزو', '2014-09-27 00:00:00'),
(8, 4, 160, 'فيا انانس', '2014-09-27 18:55:00'),
(9, 4, 520, 'كريمات + كمادات', '2014-09-27 18:55:00'),
(10, 5, 380, 'صيانة مولد الكهرباء', '2014-09-27 18:59:00'),
(11, 1, 220, 'بنزين لم يسدد سابق ', '2014-09-27 18:59:00'),
(12, 1, 50, 'كابلات انترنت + كابل للبرنتر', '2014-09-27 18:59:00'),
(13, 5, 150, 'اصلاحات كهرباء', '2014-09-27 18:59:00'),
(14, 2, 215, 'فاتورة شهر 7', '2014-10-30 00:00:00'),
(15, 1, 6, 'شنط زبالة', '2014-10-30 00:00:00'),
(16, 1, 10, 'تحصيل الزبالة', '2014-10-30 00:00:00'),
(17, 1, 10, 'تحصيل الزبالة', '2014-09-30 00:00:00'),
(18, 1, 6, 'شنط زبالة', '2014-09-30 00:00:00'),
(19, 1, 100, 'كاسات حجامه', '2014-10-18 00:00:00'),
(20, 1, 20, 'سكر و كوفي ', '2014-10-18 14:15:00'),
(21, 1, 100, 'اريال و مناديل و زيت ', '2014-10-20 09:00:00'),
(22, 1, 20, 'شنط زباله ', '2014-10-16 00:00:00'),
(23, 3, 430, 'كهرباء ', '2014-10-15 00:00:00'),
(24, 1, 470, 'اعلان وسيط', '2014-10-15 00:00:00'),
(25, 1, 10, 'غاز', '2014-10-15 00:00:00'),
(26, 1, 125, 'دفاتر مكتبيه ', '2014-10-15 00:00:00'),
(27, 1, 85, 'كريمات مساج', '2014-10-15 00:00:00'),
(28, 1, 20, 'مناديل', '2014-10-15 00:00:00'),
(29, 1, 250, 'اعلان  صوت الفنانين ', '2014-10-15 00:00:00'),
(30, 5, 100, 'اصلاح جهاز الترا سونك ', '2014-11-08 17:31:00'),
(31, 5, 50, 'سباكه', '2014-11-24 19:58:00'),
(32, 1, 50, 'نظافه', '2014-11-22 09:00:00'),
(33, 4, 185, 'ميتابوليتس + سرنجات ', '2014-11-22 09:00:00'),
(34, 1, 10, 'مناديل مضغوطه', '2014-11-18 08:00:00'),
(35, 1, 60, 'ادوات نظافه ', '2014-11-18 08:00:00'),
(36, 1, 70, 'نظافه ', '2014-11-18 08:00:00'),
(37, 1, 610, 'عدد 2 ساعه ', '2014-12-01 22:03:00'),
(38, 3, 590, '', '2014-12-01 22:03:00'),
(39, 1, 450, 'مصاريف جلسات المساج 50ج ( 9 جلسات مساج )', '2014-11-30 00:00:00'),
(40, 1, 150, 'كماده حراريه ', '2014-11-06 00:00:00'),
(41, 1, 10, 'جيركن جل ', '2014-11-11 00:00:00'),
(42, 5, 20, 'اصلاح دش ', '2014-11-11 00:00:00'),
(43, 1, 20, 'مناديل ', '2014-11-11 00:00:00'),
(44, 1, 20, 'مناديل  ', '2014-11-22 00:00:00'),
(45, 4, 40, 'امبولات حقن ', '2014-11-22 00:00:00'),
(46, 1, 20, 'اكياس زباله ', '2014-11-22 00:00:00'),
(47, 1, 30, 'مناديل ورقيه ', '2014-12-08 21:00:00'),
(48, 1, 20, 'زيت جونسون', '2014-12-10 00:00:00'),
(49, 1, 60, 'كاسات حجامه ', '2014-12-10 00:00:00'),
(50, 1, 20, 'شنط  زباله ', '2014-12-20 00:00:00'),
(51, 3, 590, 'فاتورة  كهرباء 12', '2014-12-21 00:00:00'),
(52, 1, 45, 'مناديل ورقيه', '2014-12-24 00:00:00'),
(53, 1, 20, 'سكر', '2014-12-30 19:00:00'),
(54, 2, 220, 'نت', '2014-12-31 17:00:00'),
(55, 1, 245, 'كريم تخسيس', '2014-12-31 17:00:00'),
(56, 1, 20, 'اكياس بلاستيك', '2014-12-31 17:00:00'),
(57, 1, 400, 'يونيفورم', '2014-12-02 00:00:00'),
(58, 1, 250, 'حجز تربيزة الاوبن داي', '2014-12-02 00:00:00'),
(59, 1, 150, 'كماده سخنه مستر احمد ', '2014-12-14 00:00:00'),
(60, 4, 120, 'كريم تخسيس', '2014-12-27 00:00:00'),
(61, 1, 60, 'نظافه سجاجيد ', '2014-11-29 00:00:00'),
(62, 1, 40, 'مناديل ', '2014-11-29 00:00:00'),
(63, 6, 2500, 'دعاية Yellow Page  قسط اول     عقد 20 الف على 8 شهور', '2014-09-01 00:00:00'),
(64, 6, 2500, 'دعاية Yellow Page  قسط اول     عقد 20 الف على 8 شهور', '2014-09-01 00:00:00'),
(65, 1, 45, 'مستلزمات مساج', '2015-01-06 00:00:00'),
(66, 1, 100, 'نظافه عياده', '2015-01-06 00:00:00'),
(67, 1, 50, 'مستلزمات نظافه عياده ', '2015-01-06 00:00:00'),
(68, 5, 100, 'بريفكت فورمس ', '2015-01-10 00:00:00'),
(69, 1, 80, 'شنط هدايا ', '2015-01-10 00:00:00'),
(70, 1, 80, 'سجاد ', '2015-01-13 16:53:00'),
(71, 1, 10, 'فاتورة غاز ', '2015-01-13 16:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `acc_inventory_items`
--

CREATE TABLE IF NOT EXISTS `acc_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `measurement_unit_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `acc_inventory_items`
--

INSERT INTO `acc_inventory_items` (`id`, `measurement_unit_id`, `name`, `desc`, `created_at`, `updated_at`) VALUES
(1, 1, 'via ananas', 'علبة 2 شريط', '2014-09-27 17:44:03', '2014-09-27 17:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `acc_measurement_units`
--

CREATE TABLE IF NOT EXISTS `acc_measurement_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `desc` text CHARACTER SET utf8 NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `acc_measurement_units`
--

INSERT INTO `acc_measurement_units` (`id`, `name`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'pocket', 'علبة ', '2014-09-27 17:43:21', '2014-09-27 17:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `acc_purchasing_invoice`
--

CREATE TABLE IF NOT EXISTS `acc_purchasing_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `number` varchar(20) NOT NULL,
  `invoice_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `acc_sales_invoice`
--

CREATE TABLE IF NOT EXISTS `acc_sales_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `acc_sales_invoice`
--

INSERT INTO `acc_sales_invoice` (`id`, `patient_id`, `inventory_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 43, 1, 0, 150, '2014-11-30 18:02:04', '2014-11-30 18:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `acc_store`
--

CREATE TABLE IF NOT EXISTS `acc_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `acc_suppliers`
--

CREATE TABLE IF NOT EXISTS `acc_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `fax` int(11) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `acc_suppliers`
--

INSERT INTO `acc_suppliers` (`id`, `name`, `website`, `phone`, `fax`, `mail`, `created_at`, `updated_at`) VALUES
(1, 'cash', '', 37629438, 37629438, '', '2014-09-27 17:50:00', '2014-09-27 17:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `arm_left`
--

CREATE TABLE IF NOT EXISTS `arm_left` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `olecroneon_1` varchar(20) NOT NULL,
  `olecroneon_2` varchar(20) NOT NULL,
  `above_5_1` varchar(20) NOT NULL,
  `above_5_2` varchar(20) NOT NULL,
  `above_10_1` varchar(20) NOT NULL,
  `above_10_2` varchar(20) NOT NULL,
  `above_15_1` varchar(20) NOT NULL,
  `above_15_2` varchar(20) NOT NULL,
  `above_20_1` varchar(20) NOT NULL,
  `above_20_2` varchar(20) NOT NULL,
  `total_1` varchar(20) NOT NULL,
  `total_2` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `arm_right`
--

CREATE TABLE IF NOT EXISTS `arm_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `olecroneon_1` varchar(20) NOT NULL,
  `olecroneon_2` varchar(20) NOT NULL,
  `above_5_1` varchar(20) NOT NULL,
  `above_5_2` varchar(20) NOT NULL,
  `above_10_1` varchar(20) NOT NULL,
  `above_10_2` varchar(20) NOT NULL,
  `above_15_1` varchar(20) NOT NULL,
  `above_15_2` varchar(20) NOT NULL,
  `above_20_1` varchar(20) NOT NULL,
  `above_20_2` varchar(20) NOT NULL,
  `total_1` varchar(20) NOT NULL,
  `total_2` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE IF NOT EXISTS `beds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `active` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `beds`
--

INSERT INTO `beds` (`id`, `name`, `active`, `created_at`, `updated_at`) VALUES
(9, 'Room-1........ Bed-1', 1, '2014-07-24 22:31:25', '2014-09-26 14:59:21'),
(10, 'Room-1........ Bed-2', 1, '2014-07-24 22:34:17', '2014-07-24 22:37:01'),
(11, 'Room-1........ Bed-3', 1, '2014-07-24 22:34:31', '2014-07-24 22:37:27'),
(12, 'Room-2........ Bed-1', 1, '2014-07-24 22:34:44', '2014-07-24 22:38:18'),
(13, 'Room-2........ Bed-2', 1, '2014-07-24 22:35:10', '2014-07-24 22:38:35'),
(14, 'Room-2........ Bed-3', 1, '2014-07-24 22:35:36', '2014-07-24 22:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `butocks`
--

CREATE TABLE IF NOT EXISTS `butocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `below_a_1` int(11) NOT NULL,
  `below_a_2` int(11) NOT NULL,
  `below_5_1` int(11) NOT NULL,
  `below_5_2` int(11) NOT NULL,
  `below_10_1` int(11) NOT NULL,
  `below_10_2` int(11) NOT NULL,
  `total_1` int(11) NOT NULL,
  `total_2` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'physical therapy private', '2014-07-24 16:47:21', '2014-07-24 16:47:21'),
(2, 'physical therapy group', '2014-07-24 16:47:40', '2014-07-24 16:47:40'),
(3, 'obesity', '2014-07-24 16:48:22', '2014-07-24 16:48:22'),
(4, 'massage', '2014-07-24 16:49:04', '2014-07-24 16:49:04'),
(5, 'gym ', '2014-07-24 16:50:10', '2014-07-24 16:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `message` text NOT NULL,
  `readed` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `diets`
--

CREATE TABLE IF NOT EXISTS `diets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `details` text CHARACTER SET utf8 NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `diets`
--

INSERT INTO `diets` (`id`, `name`, `details`, `created_at`, `updated_at`) VALUES
(1, ' الشوربه الحارقه لشحوم المؤخرة ', '<h1 style="text-align: center;"><span style="text-decoration: underline;">الشوربة الحارقة لشحوم المؤخرة</span></h1>\r\n<h1 style="text-align: center;"><span style="text-decoration: underline;">30 جرام ليفت ابيض</span></h1>\r\n<p style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">200 جرام بصل </span></p>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span style="text-decoration: underline;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;ثوم -&nbsp;</span>حبه - جزر - باقه كرفس - &nbsp;1/2 باقه كزبرة</span></h1>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">3 لتر ماء </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">نطحنها بعد الغلي ونضيف الليمون والاعشاب </span></p>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><em><strong><span style="text-decoration: underline;">الافطار</span></strong></em></h1>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">بيضه مقليه + زبادي + شاي بدون سكر + توست محمص </span></p>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span style="text-decoration: underline;"><strong><em>الغذاء</em></strong></span></h1>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">شوربه الريجيم +سمك مشوي </span></p>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span style="text-decoration: underline;"><em><strong>العشاء</strong></em></span></h1>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">شوربه الريجيم + سلطه مشكله </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">تمارين رياضيه </span></p>\r\n<p style="text-align: center;">&nbsp;<span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">1/2 ساعه يوميا</span><strong><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;&nbsp;</span></strong></p>', '2014-07-24 16:40:23', '2014-07-24 18:14:52'),
(2, ' رجيم تخسيس الارداف (6)', '<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG"><span style="font-family: Arial, sans-serif;"><span style="font-size: 19px; line-height: 21.466665267944336px;">&nbsp;رجيم تخسيس الارداف (6)</span></span></span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><strong><span style="text-decoration: underline;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار :</span></span></strong></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">ثابت طوال الاسبوع </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">تفاحة + شاى او قهوة بحليب خالى الدسم </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الاول :</span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span style="text-decoration: underline;"><strong><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الغداء :</span></strong></span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">1/4 دجاجة مشوية +4 ملاعق ارز + 5 ملاعق سلطة </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span style="text-decoration: underline;"><strong><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء:</span></strong></span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">2 بيضة مسلوقة + سلطة </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span style="text-decoration: underline;"><strong><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم التانى :</span></strong></span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;علبة تونة + سلطة </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><strong><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء :</span></strong></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">ثمرة بطاطس مسلوقة + سلطة </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span style="text-decoration: underline;"><strong><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الثالث:</span></strong></span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">2 شريحة لحم + خضار مسلوق + سلطة </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span style="text-decoration: underline;"><strong><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء :</span></strong></span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">5 ملاعق جبن قريش + شريحة توست او بيضة مسلوقة </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span style="text-decoration: underline;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;اليوم الرابع :</span></span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;سمكة مشوية + سلطة </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span style="text-decoration: underline;"><strong><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء :</span></strong></span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">5 ملاعق جبن ابيض + شريحة توست </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span style="text-decoration: underline;"><strong><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الخامس :</span></strong></span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;4 قطع لانشون مرتديلا + سلطة + خضار مسلوق </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span style="text-decoration: underline;"><strong><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء :</span></strong></span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;ثلاث ثمرات من صنف واحد من الفاكهة </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم السلدس واليوم السابع وجبة الغداء مثل العشاء :</span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">سمكة مشوية + سلطة</span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">قبل كل وجبة :</span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">2كوب ماء + 2 ملعقة ردة </span></p>\r\n<h1 style="text-align: center;">&nbsp;يوميا تناول مالا يقل عن 12 كوب ماء&nbsp;</h1>', '2014-07-24 16:52:29', '2014-07-24 18:18:39'),
(3, 'ريجيم الحمل', '<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><strong><em><span style="text-decoration: underline;"><span lang="AR-EG"><span style="font-family: Arial, sans-serif;">ريجيم الحمل</span></span></span></em></strong></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق كورن فليكس + كوب حليب خالى الدسم </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">بين الافطار والغداء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">كبشة يد من المكسرات النية&nbsp; +&nbsp; كوب عصير برتقال طازج بدون سكر + حبة&nbsp; موز واحدة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الغداء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">2كوب ارز او مكرونة + قطعة لحم او ربع فرخة او قطعة سمك مشوى + طبق شوربة صغير +طبق سلطة كبير + تفاحة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">بين الغداء والعشاء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">كوب هوت شوكيلت بالحليب خالى الدسم + قطعة كيك </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء : </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">سندوتش جبنة + طبق سلطة كبير + بيضة مسلوقة + كوب حليب حالى الدسم </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">قبل النوم :</span></h1>\r\n<h1 style="text-align: center;"><strong>&nbsp;شريحة توست رجيم + قطعة جبنة قريش +1 خيار&nbsp;</strong></h1>', '2014-07-24 17:01:30', '2014-07-24 18:23:38'),
(4, '   ريجيم تخسيس الارداف  (1)', '<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG"><span style="font-family: Arial, sans-serif;"><span style="font-size: 19px; line-height: 21.466665267944336px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ريجيم تخسيس الارداف &nbsp;(1)</span></span></span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">تعليمات هامة قبل كل وجبة :</span></h1>\r\n<h1 class="MsoListParagraphCxSpFirst" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]--><span style="font-size: 14.0pt; line-height: 115%; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; mso-bidi-language: AR-EG;">1-<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">تسلق الكوسة مع الفاصوليا الخضراء بعد السلق تضرب فى الخلاط ويتم تناولها قبل كل وجبة </span></h1>\r\n<h1 class="MsoListParagraphCxSpMiddle" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]--><span style="font-size: 14.0pt; line-height: 115%; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; mso-bidi-language: AR-EG;">2-<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">مقدار كوب من الماء "&nbsp; ملعقة زنجبيل مطحون + ملعقة&nbsp; قرفة مطحونة " يتم عملة مثل الشاى ويغلى ويشرب قبل كل وجبة </span></h1>\r\n<h1 class="MsoListParagraphCxSpLast" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]--><span style="font-size: 14.0pt; line-height: 115%; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; mso-bidi-language: AR-EG;">3-<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">سلطة تتكون من :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">فجل + جرجير + بصل + ثوم + سلطة خضراء </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">4.3 اكواب مياة + ملعقتين ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">بيضة مسلوقة او كوب زبادى + شريحة توست +3ملاعق ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;بين الوجبات :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">ثمرة فاكهة " تفاح &ndash; موز &ndash; برتقال "+ ملعقة ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الغداء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق خضار بدون دهن + سلطة + سمكة مشوية او ربع فرخة او قطعتين لحم +3 ملاعق ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">بين الوجبات :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">ثمرة فاكهة " تفاح &ndash; موز &ndash; برتقال " + ملعقة ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء "</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">كوب زبادى + بيضة مسلوقة + توست +3ملاعق ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">او&nbsp;&nbsp; 2ملعقة جبنة قريش + توست +3ملاعق ردة&nbsp;</span></h1>', '2014-07-24 17:11:21', '2014-07-24 18:26:22'),
(5, 'ريجيم  تخسيس الارداف (2)  ', '<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG"><span style="font-family: Arial, sans-serif;"><span style="font-size: 19px; line-height: 21.466665267944336px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ريجيم &nbsp;تخسيس الارداف (2) &nbsp;</span></span></span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار:</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">نصف كوب عصير برتقال او برتقالة كاملة + بيضة مسلوقة + شريحة توست + 3 ملاعق ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">او</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">كوب زبادى + ثمرة فاكهة " تفاح &ndash; برتقال &ndash; موز " +3 ملاعق ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;الغداء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">تونة او سمكة مشوية + سلطة خيار + 2 شريحة توست + 3 ملاعق ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">او&nbsp;&nbsp;&nbsp;&nbsp; ربع فرخة مشوية او مسلوقة + 4 ملاعق خضار " سبانح او فاصوليا او خرشوف + سلطة +2 شريحة توست +3 ملاعق ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">4 ملاعق فول بالليمون&nbsp; والكمون +3 ملاعق ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">او&nbsp;&nbsp; شريحة جبن شيدر +3 ملاعق ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">او&nbsp;&nbsp; 2 بيضة مسلوقة +3 ملاعق ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">بين الوجبات :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">يمكن تناول ثمرة فاكهة فقط " موز &ndash; تفاح -&nbsp; برتقال&nbsp;</span></h1>', '2014-07-24 17:13:34', '2014-07-24 18:31:02'),
(6, ' ريجيم تخسيس الارداف (3)', '<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG"><span style="font-family: Arial, sans-serif;"><span style="font-size: 19px; line-height: 21.466665267944336px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ريجيم تخسيس الارداف (3)</span></span></span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">4 ملاعق فول بالليمون والكمون او كوب زبادى او بيضة مسلوقة + شاى او قهوة باللبن خالى الدسم + شريحة توست + 3 ملاعق ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الغداء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اى كمية من الخضار المشكل " مطبوخ او مسلوق او نىء "</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">+ سمك مشوى او تونة او فراخ&nbsp; + 3 ملاعق ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;العشاء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">كوب زبادى + 2 شريحة توست + 3 ملاعق ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">او&nbsp; 5 ملاعق جبن خالى الدسم + توست + 3 ملاعق ردة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">او&nbsp;&nbsp; بطاطس مسلوقة + سلطة خضراء +3 ملاعق ردة&nbsp;</span></h1>', '2014-07-24 17:14:53', '2014-07-24 18:34:24');
INSERT INTO `diets` (`id`, `name`, `details`, `created_at`, `updated_at`) VALUES
(7, 'ريجيم تخسيس الارداف (4)', '<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG"><span style="font-family: Arial, sans-serif;"><span style="font-size: 29px; line-height: 33.733333587646484px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ريجيم تخسيس الارداف4</span></span></span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار :</span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">2 ملعقة عسل + شريحة توست + 2 ملعقة ردة </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;او&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2 بيضة مسلوقة + شريحة توست + 2 ملعقة ردة </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">او&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; شريحة لانشون + شريحة توست + 2 ملعقة ردة </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">او&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; كوب زبادى + شريحة توست&nbsp; + 2 ملعقة ردة </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;وجبة خفيفة :</span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">ثمرة فاكهة + ملعقة ردة </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الغداء :</span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">نصف فرخة مسلوق او مشوى او قطعتين لحم + طبق خضار او سلطة + 2 ملعقة ردة </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;وجبة خفيفة : </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">ثمرة فاكهة + ملعقة ردة </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;العشاء :</span></p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 22.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">فاكهة " تفاح &ndash; برتقال &ndash; موز &ndash; 10 حبات فراولة&nbsp; " او 2 تمر +&nbsp; ملعقة ردة&nbsp;</span></p>', '2014-07-24 17:16:08', '2014-07-24 18:39:50'),
(8, 'ريجيم رضاعة (((1)))', '<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG"><span style="font-family: Arial, sans-serif;"><span style="font-size: 27px; line-height: 30.666664123535156px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ريجيم رضاعة (((1)))</span></span></span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">عند الاستيقاظ :</span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">كوب حلبة باللبن منزوع الدسم </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار :</span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">بيضة مسلوقة جيدا او قطعة جبن قريش + رغيف عيش + فاكهة الموسم </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">بين الوجبتين :</span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">كوب من شوربة العدس </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;الغداء :</span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">سلطة خضراء +2 قطعة لحم مشوية + خضار سوتية </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">عصرا :</span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">كوب من شراب النعناع البلدى </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء :</span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">كوب من شراب الشمر </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;الممنوع :</span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">المحشى &ndash; الكشرى &ndash; التسالى &ndash;الحلويات &ndash; المياة الغازية &ndash; المانجو &ndash; العنب &ndash; التين &ndash; البلح &ndash; الموز </span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;</span></p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 20.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;مع اطيب التمنيات بدوام الصحة&nbsp;</span></p>', '2014-07-24 17:17:42', '2014-07-24 18:42:40'),
(9, 'نزول عشرة  كيلو في شهر رمضان ', '<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG"><span style="font-family: Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;نزول عشرة &nbsp;كيلو في شهر رمضان&nbsp;</span></span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">تعليمات عامه :</span></h1>\r\n<h1 class="MsoListParagraphCxSpFirst" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->1.<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">المشي يوميا لمدة ساعه</span></h1>\r\n<h1 class="MsoListParagraphCxSpMiddle" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->2.<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">رياضه نصف ساعه </span></h1>\r\n<h1 class="MsoListParagraphCxSpMiddle" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->3.<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">المياة 2-3 لتر</span></h1>\r\n<h1 class="MsoListParagraphCxSpMiddle" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->4.<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الالتزام بيوم الراحه كل 6 ايام من الجمعه </span></h1>\r\n<h1 class="MsoListParagraphCxSpLast" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->5.<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">النوم 8 ساعات والمضغ ببطئ اثناء الاكل </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">السحور اليومي :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">زبادي + كوب مغلي نعناع بملعقه عسل +2كوب ماء +ثمرة كمثري</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار اليومي : </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">2كوب ماء +كوب حليب بالتمر </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق شوربه خضار او دجاج + قطعه سمبوسه + سلطه +5 ملاعق ارز او خبز </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">عند الاحساس بالجوع فواكهه حمراء (بطيخ .رمان . كريز ) عصائر او سوائل غير محلاه&nbsp;</span></h1>', '2014-07-24 17:20:34', '2014-07-24 18:43:28'),
(10, 'نظام  غذائي لصيام شهر رمضان', '<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG"><span style="font-family: Arial, sans-serif;">نظام &nbsp;غذائي لصيام شهر رمضان&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">السحور اليومي :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">ربع رغيف او رغيف سن +طبق فول صغير (3ملاعق بالبهارات والليمون )+ كوب زبادي + سلطه خضراء </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">يجب شرب 2 كوب او ماء علي الريق&nbsp; قبل الافطار مباشرا بدلا من العصير </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">افطار اليوم الاول :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">كوب عصير برتقال + شريحه لحم مشوي + ربع كيلو فصوليا خضراء مسلوقه او في الفرن + سلطه خضراء + شريحه خبز (ربع رغيف بلدي او رغيف سن )</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الثاني :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">كوسه مسلوقه بالطماطم + 1/4 فرخه مشويه +ثمرة فاكهه +&nbsp; شريحه خبز + طبق سلطه خضراء </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الثالث:</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">1/8 ك كفته مشويه + سلطه خضراء + ثمرة فاكهه + شريحه خبز + خرشوف او كوسه مسلوقه </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الرابع:</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطه خضراء + كوب عصير برتقال + طبق بسله وجزر وطماطم باللحم المفروم بدون سمن </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الخامس :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">1/4 فرخه مشويه + طبق شوربه خضار + طبق سلطه + ثمرة فاكهه </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم السادس :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">قطعه فيليه مشوي + شريحه خبز + طبق سلطه + خضار سوتيه مسلوق +2 ثمرة فاكهه </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم السابع :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">2 سمك مشوي + سلطه + شريحه خبز + ثمرة فاكهه </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; مع اطيب الامنيات بدوام الصحه&nbsp; .وكل عام وانتم بخير </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;</span></h1>', '2014-07-24 17:22:15', '2014-07-24 19:02:12'),
(11, 'نظام ريجيم  للتخلص من الارداف ش', '<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG"><span style="font-family: Arial, sans-serif;"><span style="font-size: 21px; line-height: 24.533334732055664px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;نزول عشرة &nbsp;كيلو في شهر رمضان&nbsp;</span></span></span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">لمدة يومين "</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار :&nbsp;&nbsp; شريحة كانتلوب + 1 زبادى لايت </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الغداء :&nbsp; سبانخ مسلوقة ومضاف اليها فص ثوم وبصلة +شريحة لحم مشوى +طبق سلطة وتقطع عليها شرائح البصل والليمون والفلفل الاخضر </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">لمدة يومين :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1- ثمرة فاكهة&nbsp;&nbsp; 2- زبادى لايت </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الغداء :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1- سمكة مشوية + طبق سلطة خضراء </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2- فنجان ارز مسلوق مضاف الية بهارات </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء " </span></h1>\r\n<h1 class="MsoListParagraph" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]--><span style="font-size: 16.0pt; line-height: 115%; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; mso-bidi-language: AR-EG;">1-<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">&nbsp;&nbsp; </span></span><!--[endif]--><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">فنجان كورن فليكس + فنجان لبن منزوع الدسم + ثمرة فاكهة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">لمدة يومين :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار :&nbsp; 3 ثمرات فاكهة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الغداء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق خضار تورلى فى الفرن مضاف علية صلصة طماطم بدون سمن او زيت </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطة مضاف الية قطعة جبنة قريش + 2 شريحة جبنة شيدر + بيضة مسلوقة +ليمونة + خل + فلفل يضاف على السلطة&nbsp;</span></h1>', '2014-07-24 17:24:32', '2014-07-24 18:44:57'),
(12, '    رجيم تخسيس الارداف (6)', '<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG"><span style="font-family: Arial, sans-serif;"><span style="font-size: 21px; line-height: 24.533334732055664px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;رجيم تخسيس الارداف (6)</span></span></span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">لمدة يومين "</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار :&nbsp;&nbsp; شريحة كانتلوب + 1 زبادى لايت </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الغداء :&nbsp; سبانخ مسلوقة ومضاف اليها فص ثوم وبصلة +شريحة لحم مشوى +طبق سلطة وتقطع عليها شرائح البصل والليمون والفلفل الاخضر </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">لمدة يومين :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1- ثمرة فاكهة&nbsp;&nbsp; 2- زبادى لايت </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الغداء :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1- سمكة مشوية + طبق سلطة خضراء </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2- فنجان ارز مسلوق مضاف الية بهارات </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء " </span></h1>\r\n<h1 class="MsoListParagraph" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]--><span style="font-size: 16.0pt; line-height: 115%; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; mso-bidi-language: AR-EG;">1-<span style="font-size: 7pt; line-height: normal; font-family: ''Times New Roman'';">&nbsp;&nbsp; </span></span><!--[endif]--><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">فنجان كورن فليكس + فنجان لبن منزوع الدسم + ثمرة فاكهة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">لمدة يومين :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار :&nbsp; 3 ثمرات فاكهة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الغداء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق خضار تورلى فى الفرن مضاف علية صلصة طماطم بدون سمن او زيت </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطة مضاف الية قطعة جبنة قريش + 2 شريحة جبنة شيدر + بيضة مسلوقة +ليمونة + خل + فلفل يضاف على السلطة&nbsp;</span></h1>', '2014-07-24 17:28:03', '2014-07-24 18:49:29');
INSERT INTO `diets` (`id`, `name`, `details`, `created_at`, `updated_at`) VALUES
(13, 'نظام غذائى لشهر رمضان ', '<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG"><span style="font-family: Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; نظام غذائى لشهر رمضان&nbsp;</span></span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار اليومى :</span></h1>\r\n<h1 class="MsoListParagraphCxSpFirst" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->1-<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">كوب شوربة طماطم او شوربة خضار او 1/2 كوب عصير برتقال او جريت فروت او قمر الدين بدون سكر </span></h1>\r\n<h1 class="MsoListParagraphCxSpMiddle" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->2-<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">ربع كيلو جرام لحم او كفتة (مسلوق او مشوى ) او ربع فرخة او نصف كيلو جرام سمك </span></h1>\r\n<h1 class="MsoListParagraphCxSpMiddle" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->3-<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">سلاطة خضراء مكونة من " خس &ndash; خيار &ndash; 1طماطم </span></h1>\r\n<h1 class="MsoListParagraphCxSpMiddle" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->4-<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">2 ملعقة ارز او مكرونة او ربع رغيف </span></h1>\r\n<h1 class="MsoListParagraphCxSpLast" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->5-<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">4ملاعق خضار بدون سمن او زيت </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; بين الافطار والسحور :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">1 قطايف صغيرة او&nbsp; قطعة كنافة&nbsp; او بسبوسة بحجم الكبريت او ثمرة فاكهة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">السحور اليومى :</span></h1>\r\n<h1 class="MsoListParagraph" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->1-<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">نصف جريت فروت + بيضة مسلوقة او كوب&nbsp; زبادى + شريحة توست او ربع رغيف </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ( ( ( ( ( ( او ) ) ) ) ) )&nbsp; )</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">2ملعقة فول&nbsp; + شريحة توست +4 ملاعق سلاطة خضراء </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; تقبل الله منا ومنكم صالح الاعمال </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; مع تمنايتنا بالنوفيق الدائم&nbsp;&nbsp; </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;كل عام وانتم بخير&nbsp;</span></h1>', '2014-07-24 17:30:00', '2014-07-24 18:53:02'),
(14, '            نظام غذائى للانيميا (2)', '<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG"><span style="font-family: Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; نظام غذائى للانيميا (2)</span></span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار (8 صباحا )</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">نصف رغيف + 2 بيضة مسلوقة + طبق سلطة كبير + كوب لبن رايب او كوب عصير برتقال او ليمون محلى بملعقة عسل اسود </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الغداء </span><span dir="LTR">)</span><span dir="LTR" style="font-family: Wingdings; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-language: AR-EG; mso-char-type: symbol; mso-symbol-font-family: Wingdings;">L</span><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">3 عصرا )</span></h1>\r\n<h1 class="MsoListParagraph" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->(1)<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الاول </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطة كبير + 5 ملاعق ارز + ربع فرخة مسلوقة او مشوية </span></h1>\r\n<h1 class="MsoListParagraph" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->(2)<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الثانى </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطة كبير + 5 ملاعق ارز +سمك مشوى </span></h1>\r\n<h1 class="MsoListParagraph" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->(3)<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الثالث </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطة كبير + 5 ملاعق ارز + كفتة مشوية </span></h1>\r\n<h1 class="MsoListParagraph" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->(4)<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الرابع </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطة كبير +5ملاعق ارز + كبدة مشوية </span></h1>\r\n<h1 class="MsoListParagraph" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->(5)<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الخامس </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطة كبير + 5 ملاعق ارز + ربع فرخة مسلوقة </span></h1>\r\n<h1 class="MsoListParagraph" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->(6)<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم السادس </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطة كبير + 5 ملاعف ارز + شوربة خضار +لحم مشوى </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">(7)اليوم السابع </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطة كبير + 5 ملاعق ارز + كبدة مشوية </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء : (8 مساءا )</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">نصف رغيف + 2 زبادى + ملعقة عسل اسود + قطعة جبنة بيضاء + ثمرة موز او جوافة او كمثرى </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span dir="LTR">&nbsp;</span></h1>', '2014-07-24 17:30:52', '2014-07-24 18:55:24'),
(15, '          نظام غذائى للانيميا (2)', '<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG"><span style="font-family: Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; نظام غذائى للانيميا (2)</span></span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار (8 صباحا )</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">نصف رغيف + 2 بيضة مسلوقة + طبق سلطة كبير + كوب لبن رايب او كوب عصير برتقال او ليمون محلى بملعقة عسل اسود </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الغداء </span><span dir="LTR">)</span><span dir="LTR" style="font-family: Wingdings; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-language: AR-EG; mso-char-type: symbol; mso-symbol-font-family: Wingdings;">L</span><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">3 عصرا )</span></h1>\r\n<h1 class="MsoListParagraph" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->(1)<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الاول </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطة كبير + 5 ملاعق ارز + ربع فرخة مسلوقة او مشوية </span></h1>\r\n<h1 class="MsoListParagraph" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->(2)<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الثانى </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطة كبير + 5 ملاعق ارز +سمك مشوى </span></h1>\r\n<h1 class="MsoListParagraph" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->(3)<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الثالث </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطة كبير + 5 ملاعق ارز + كفتة مشوية </span></h1>\r\n<h1 class="MsoListParagraph" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->(4)<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الرابع </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطة كبير +5ملاعق ارز + كبدة مشوية </span></h1>\r\n<h1 class="MsoListParagraph" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->(5)<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الخامس </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطة كبير + 5 ملاعق ارز + ربع فرخة مسلوقة </span></h1>\r\n<h1 class="MsoListParagraph" dir="RTL" style="text-indent: -18pt; text-align: center;"><!-- [if !supportLists]-->(6)<span style="font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp; </span><!--[endif]--><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم السادس </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطة كبير + 5 ملاعف ارز + شوربة خضار +لحم مشوى </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">(7)اليوم السابع </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">طبق سلطة كبير + 5 ملاعق ارز + كبدة مشوية </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء : (8 مساءا )</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">نصف رغيف + 2 زبادى + ملعقة عسل اسود + قطعة جبنة بيضاء + ثمرة موز او جوافة او كمثرى </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="margin-right: 18pt; text-align: center;"><span dir="LTR">&nbsp;</span></h1>', '2014-07-24 17:32:14', '2014-07-24 18:57:07'),
(16, 'نظام غذائى للنحافة لمدة 21  يوم', '<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG"><span style="font-family: Arial, sans-serif;">نظام غذائى للنحافة لمدة 21 &nbsp;يوم</span></span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار:</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">بيض مقلى بالسمن او فول بالزيت والليمون او طعمية او جبن بانواعها +عيش طازج بانواعة +بليلة باللبن والسكر +فاكهة (موز-مانجو-بلح-تين)</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">بين الافطار والغداء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">بسكويت بالشيكولاتة (قطعة جاتوة او كعك-مياه غازية &ndash;سودانى )</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الغداء:</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">نصف فرخة او2قطعة لحم او سمك او تونة او بيض مقلى +خضار مطبوخ (بطاطس &ndash;بسلة-فاصوليا &ndash;لوبيا&nbsp; -&nbsp; قلقاس)+طبق ارز او مكرونة او عيش طازج +مهلبية او ارز باللبن </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">بين الغداء والعشاء:</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">فاكهة او بسكويت او جاتوة او كعك او سودانى </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">بيض مقلى او قطعة لحم&nbsp; او ربع فرخة او سمك او تونة او بطاطس محمرة او جبنة +عسل وطحينة او عيش طازج </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">قبل النوم :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">كوب من اللبن </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">نصائح لزيادة الوزن </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">150جرام من الزبيب تؤكل يوميا +2ملعقة صغيرة سمسم 3مرات يوميا +عسل نحل صباحا ومساءا يوميا +موز 3مرات يوميا </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;مع تمنياتى بدوام الصحة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span dir="LTR">&nbsp;</span></h1>', '2014-07-24 17:34:37', '2014-07-24 18:59:47'),
(17, '    نظام غذائى للنساء فوق الاربعين ', '<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-SA"><span style="font-family: Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; نظام غذائى للنساء فوق الاربعين&nbsp;</span></span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-SA" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;">يؤكد العلماء على اهمية ممارسة الرياضة للنساء فوق الاربعين وذلك لتقليل الوزن والمحافظة على صحة وسلامة الجسم ورشاقتة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-SA" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;">حيث اثبتت الابحاث ان الاعتماد على التقليل من الطعام فقط لانقاص الوزن&nbsp; دون الممارسة للرياضة قد يؤدى الى خسارة الوزن بخسارة ماء الجسم بكميات كبيرة وليس بخسارة الدهون فقط </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-SA" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;">وفى الوقت نفسة يؤدى اتباع نظام غذائى لخسارة الوزن بصورة متارجحة الى الخسارة فى الوزن لكن يتم استعادتة على شكل دهون مخزونة يصعب التخلص منها&nbsp; </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-SA" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;">لذلك نقدم نظاما غذائيا للنساء فوق سن الاربعين </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-SA" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;">الافطار :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-SA" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;">كوب نسكافية +ملعقتان من اللبن (يمكن اضافة بدائل السكر )+بيضة مسلوقة +قطعة جبن قريش + ربع رغيف بلدى </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-SA" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;">بين الافطار والغداء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-SA" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;">يمكن تناول ثمرتين من الفاكهة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-SA" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;">الغداء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-SA" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;">طبق شوربة خضروات كبير + طبق خضار باللحم المفروم +نصف فرخة مشوية او مسلوقة او (3سمكات مشوية ) او (3 قطع كبدة مشوية ) او (4 قطع لحم مشوى )</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-SA" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;">بين الغداء والعشاء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-SA" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;">يمكن تناول&nbsp; كوب شاى باللبن&nbsp; يضاف اليه بدائل السكر </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-SA" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;">العشاء :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-SA" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;">كوب زبادى بلدى&nbsp; منزوع&nbsp; الوجه + قطعة جبن ابيض خالى الدسم + ربع رغيف عيش </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-SA" style="font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; مع تمنيا تنا&nbsp; بالتوفيق الدائم&nbsp;</span></h1>', '2014-07-24 17:38:33', '2014-07-24 19:03:22');
INSERT INTO `diets` (`id`, `name`, `details`, `created_at`, `updated_at`) VALUES
(18, '                   نظام غذائى لمرضى السكر ', '<h1 style="text-align: center;"><strong><em><span lang="AR-EG"><span style="font-family: Arial, sans-serif;"><span style="font-size: 19px; line-height: 21.466665267944336px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></span></span></em></strong><em><span lang="AR-EG"><span style="font-family: Arial, sans-serif;"><span style="font-size: 19px; line-height: 21.466665267944336px;">&nbsp;</span></span></span></em><em><span lang="AR-EG"><span style="font-family: Arial, sans-serif;"><span style="font-size: 19px; line-height: 21.466665267944336px;"><span style="text-decoration: underline;"> نظام غذائى لمرضى السكر&nbsp;</span></span></span></span></em></h1>\r\n<p style="text-align: center;"><strong><em><span style="text-decoration: underline;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار :</span></span></em></strong></p>\r\n<p style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">نصف رغيف بلدى + 3 ملاعق فول بزيت ذرة او طعمية + جبنة قريش + زبادى لايت + ملعقة عسل ابيض </span></p>\r\n<h2 style="text-align: center;">بيضة مسلوقة + كوب عصير طماطم او طبق سلطة خضراء + كوب شاى بملعقة سكر واحدة</h2>\r\n<p style="text-align: center;"><span style="text-decoration: underline;"><strong><em><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الغداء :</span></em></strong></span></p>\r\n<p style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">1/3 رغيف بلدى او 3 ملاعق ارز + طبق سلطة كبير + نوع خضار واحد من الخضار المسموح بة + نوع واحد من اللحوم المسموح بها + 2 ثمرة فاكهة من المسموح به </span></p>\r\n<p style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الخضروات المسموح بها :</span></p>\r\n<p style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">بامية &ndash; قرنبيط &ndash; كوسة &ndash; جزر &ndash; خرشوف &ndash; سبانح &ndash; بسلة خضراء </span></p>\r\n<p style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اللحوم&nbsp; المسموح بها :</span></p>\r\n<p style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">لحم بتلو &ndash; فراخ &ndash; ارانب &ndash; سمك مشوى او مسلوق </span></p>\r\n<p style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الفاكهة المسموح بها :</span></p>\r\n<p style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">برتقال &ndash; كمثرى &ndash; خوخ &ndash; برقوق &ndash; تفاح &ndash; نصف شريحة&nbsp;بطيخ او شمام </span></p>\r\n<p style="text-align: center;"><span style="text-decoration: underline;"><strong><em><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء :</span></em></strong></span></p>\r\n<p style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">مثل الافطار + علبة زبادى </span></p>\r\n<p style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">مسموح بتناول الاصناف الاتية فى اوقات الطعام او بين الوجبات :</span></p>\r\n<p style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">نعناع &ndash; خس &ndash; بقدونس &ndash; خيار &ndash; قرنبيط &ndash; ملوخية &ndash; لفت &ndash; طماطم &ndash; كوسة &ndash; بصل &ndash; بامية &ndash; جزر &ndash; فلفل اخضر &ndash; باذنجان &ndash; سبانخ&nbsp;&ndash; سلطة خضراء </span></p>\r\n<p style="text-align: center;"><em><strong><span style="text-decoration: underline;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اكلات ممنوعة اثناء النظام الغذائى لمرضى السكر :</span></span></strong></em></p>\r\n<p style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">سكر &ndash; مربى &ndash; عسل اسود &ndash; ملبس &ndash; شيكولاتة &ndash; حلويات &ndash; كحك- بسكويت &ndash; مهلبية &ndash; ايس كريم &ndash; حلويات شرقية او غربية &ndash; مكرونة &ndash; شعرية &ndash; بطاطس &ndash; حمص ناشف &ndash; فاصوليا ناشفة &ndash; عدس &ndash; مانجو &ndash; تين &ndash; عنب &ndash; بلح &ndash; زبدة &ndash; سمنة &ndash; طحينة &ndash; زيت زيتون &ndash; مكسرات &ndash; مياة غازية&nbsp;</span></p>', '2014-07-24 17:40:43', '2014-07-24 18:03:18'),
(19, 'نظام كيميائى ', '<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><strong><span lang="AR-EG"><span style="font-family: Arial, sans-serif;"><span style="font-size: 19px; line-height: 21.466665267944336px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; نظام كيميائى &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span></span></strong></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><strong><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الاول :</span></strong></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">سلطة فواكه باى كمية طوال اليوم ( برتقال &ndash; يوسفى &ndash; تفاح &ndash; جوافة &ndash; شمام &ndash; فراولة &ndash; مشمش &ndash; خوخ )</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الثانى :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">سلطة خضراء او خضار مسلوق باى كمية طوال اليوم </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الثالث :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">سمك مشوى + سلطة خضراء طوال اليوم باى كمية </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الرابع :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">سلطة فواكه + سلطة خضراء </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الخامس :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">لحم او فراخ مشوية او مسلوقة + خضار مسلوق </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم السادس :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">فاكهة صنف واحد باى كمية طوال اليوم </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم السابع :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">سمك مشوى + سلطة خضراء </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">ملحوظة :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اى تغيير فى هذا النظام الكيميائى يجعلة باكملة لاغى ويجب اعادتة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 14.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">مع تمنياتنا بالتوفيق الدائم</span></h1>', '2014-07-24 17:45:05', '2014-07-24 19:05:30'),
(20, '      نظام لكسر ثبات الوزن ', '<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG"><span style="font-family: Arial, sans-serif;"><span style="font-size: 21px; line-height: 24.533334732055664px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;نظام لكسر ثبات الوزن &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span></span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الافطار : ثابت طوال ثلاثة ايام </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">جبن قريش اى كمية مضاف اليها قطع طماطم +خيار + فلفل</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">الغداء:</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الاول :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">شوربة خضار للريجيم بسلق </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">2بصلة +حبة ثوم +طماطم </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">زنجبيل مفروم +رشة من الكركم +قطرات من الليمون ويشرب دافئا </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">+طبق سلطة مكون من :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">سلطة +شرائح البيض المسلوق +ملعقة صغيرة من زيت الزيتون +2ملعقة من خل التفاح </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الثانى "</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">شوربة حساء الملفوف </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">عبوة من بودرة شوربة البصل </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">مكعبين مرقة دجاج</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">كمية قليلة من الكرفس المقطع او البقدونس او الكزبرة </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">1/2 ثمرة ملفوف صغيرة +3ثمرات جزر مقطع صغير +ثمرتين فلفل مقطع + ثمرة بصل مقطع + ثمرتين طماطم مضاف الية ملح+&nbsp; فلفل اسود + بقدونس + ثوم +صوص صويا + نوع واحد من الفاكهة باى كمية ماعدا الموز </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">اليوم الثالث :</span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">شوربة عدس للريجيم </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">8اكواب ماء +1/2 1 عدس احمر + 1/2 اقراص ثوم +1/2 كوب بصل مفروم ناعم +ملعقة ونصف بقدونس طازج + ملعقة ونصف كمون + ملعقة ونصف كركم +طبق خضار سوتية +ارز مسلوق&nbsp; </span></h1>\r\n<h1 class="MsoNormal" dir="RTL" style="text-align: center;"><span lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-EG;">العشاء : ثابت طوال الثلاثة ايام :</span></h1>\r\n<h1 style="text-align: center;"><span dir="RTL" lang="AR-EG" style="font-size: 16.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-EG;">زبادى لايت باى كمية مضاف اليها قطع من التفاح او الخيار&nbsp;</span></h1>', '2014-07-24 17:46:38', '2014-07-24 19:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `bed_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `patient_id`, `bed_id`, `session_id`, `date_from`, `date_to`) VALUES
(1, 31, 9, 22, '2014-09-01 08:00:00', '2014-09-01 09:30:00'),
(2, 36, 9, 0, '2014-10-22 19:00:00', '2014-10-22 00:00:00'),
(4, 43, 10, 15, '2014-12-01 16:00:00', '2014-12-01 19:00:00'),
(5, 46, 9, 13, '2014-12-04 15:00:00', '2014-12-04 17:00:00'),
(6, 50, 10, 13, '2014-12-04 16:00:00', '2014-12-04 18:00:00'),
(7, 35, 10, 15, '2014-12-03 14:30:00', '2014-12-03 18:00:00'),
(8, 47, 9, 13, '2014-12-09 19:00:00', '2014-12-09 20:00:00'),
(9, 56, 9, 13, '2014-12-08 20:00:00', '2014-12-08 21:00:00'),
(10, 43, 14, 15, '2014-12-01 15:00:00', '2014-12-01 17:00:00'),
(11, 43, 14, 15, '2014-12-08 15:00:00', '2014-12-08 19:00:00'),
(12, 46, 10, 13, '2014-12-09 15:00:00', '2014-12-09 16:00:00'),
(13, 57, 9, 13, '2014-12-10 19:00:00', '2014-12-10 20:00:00'),
(14, 44, 10, 13, '2014-12-10 20:00:00', '2014-12-10 21:00:00'),
(15, 67, 9, 13, '2014-12-13 16:00:00', '2014-12-13 17:00:00'),
(16, 57, 10, 0, '2014-12-13 19:00:00', '2014-12-13 20:00:00'),
(17, 47, 10, 0, '2014-12-14 15:00:00', '2014-12-14 16:00:00'),
(18, 64, 10, 13, '2014-12-16 16:00:00', '2014-12-16 17:30:00'),
(19, 59, 10, 16, '2014-12-16 18:00:00', '2014-12-16 19:00:00'),
(20, 67, 10, 13, '2014-12-17 16:00:00', '2014-12-17 17:00:00'),
(21, 57, 9, 13, '2014-12-17 19:00:00', '2014-12-17 20:00:00'),
(22, 72, 13, 13, '2014-12-18 17:00:00', '2014-12-18 18:00:00'),
(23, 67, 9, 13, '2014-12-20 16:00:00', '2014-12-20 17:00:00'),
(24, 74, 10, 13, '2014-12-20 16:00:00', '2014-12-20 17:00:00'),
(25, 73, 10, 13, '2014-12-20 19:00:00', '2014-12-20 20:00:00'),
(26, 75, 13, 13, '2014-12-22 18:00:00', '2014-12-22 19:00:00'),
(27, 74, 12, 13, '2014-12-22 17:00:00', '2014-12-22 18:00:00'),
(28, 72, 9, 13, '2014-12-25 16:00:00', '2014-12-25 17:00:00'),
(29, 73, 9, 13, '2014-12-27 19:00:00', '2014-12-27 20:00:00'),
(30, 76, 12, 13, '2014-12-28 17:00:00', '2014-12-28 20:00:00'),
(31, 77, 10, 13, '2014-12-28 17:00:00', '2014-12-28 18:00:00'),
(32, 63, 10, 13, '2014-12-21 20:00:00', '2014-12-21 21:00:00'),
(33, 73, 13, 13, '2014-12-29 19:00:00', '2014-12-29 20:00:00'),
(34, 81, 9, 13, '2014-12-30 19:00:00', '2014-12-30 20:00:00'),
(35, 45, 9, 13, '2014-12-31 20:00:00', '2014-12-31 21:00:00'),
(36, 73, 9, 13, '2014-12-31 20:00:00', '2014-12-31 21:00:00'),
(37, 74, 9, 13, '2014-12-31 16:00:00', '2014-12-31 17:00:00'),
(38, 84, 9, 13, '2014-12-31 18:00:00', '2014-12-31 19:00:00'),
(39, 72, 11, 13, '2015-01-06 17:00:00', '2015-01-06 18:00:00'),
(40, 57, 9, 13, '2015-01-07 19:00:00', '2015-01-07 20:00:00'),
(41, 81, 12, 13, '2015-01-06 18:00:00', '2015-01-06 19:00:00'),
(42, 84, 9, 13, '2015-01-05 18:00:00', '2015-01-05 19:00:00'),
(43, 63, 9, 13, '2015-01-06 19:00:00', '2015-01-06 20:00:00'),
(44, 88, 9, 13, '2015-01-07 20:00:00', '2015-01-07 21:00:00'),
(45, 88, 9, 0, '2015-01-12 20:00:00', '2015-01-12 21:00:00'),
(46, 88, 9, 0, '2015-01-14 20:00:00', '2015-01-14 21:00:00'),
(47, 88, 9, 0, '2015-01-10 20:00:00', '2015-01-10 21:00:00'),
(48, 88, 9, 0, '2015-01-17 20:00:00', '2015-01-17 21:00:00'),
(49, 74, 9, 13, '2015-01-07 16:00:00', '2015-01-07 17:00:00'),
(50, 89, 9, 13, '2015-01-15 17:00:00', '2015-01-15 18:00:00'),
(51, 90, 9, 13, '2015-01-11 16:00:00', '2015-01-11 17:00:00'),
(52, 89, 12, 13, '2015-01-11 17:00:00', '2015-01-11 18:00:00'),
(53, 72, 13, 13, '2015-01-11 17:00:00', '2015-01-11 18:00:00'),
(54, 81, 13, 13, '2015-01-11 18:00:00', '2015-01-11 19:00:00'),
(55, 63, 12, 13, '2015-01-11 19:00:00', '2015-01-11 20:00:00'),
(56, 84, 9, 13, '2015-01-12 18:00:00', '2015-01-12 19:00:00'),
(57, 77, 9, 0, '2015-01-13 18:00:00', '2015-01-13 19:00:00'),
(58, 89, 12, 13, '2015-01-13 17:00:00', '2015-01-13 18:00:00'),
(59, 72, 11, 13, '2015-01-13 17:00:00', '2015-01-13 18:00:00'),
(60, 90, 11, 13, '2015-01-13 20:00:00', '2015-01-13 21:00:00'),
(61, 91, 11, 13, '2015-01-14 16:00:00', '2015-01-14 17:00:00'),
(62, 92, 11, 13, '2015-01-14 20:00:00', '2015-01-14 21:00:00'),
(63, 89, 12, 13, '2015-01-15 17:00:00', '2015-01-15 18:00:00'),
(64, 91, 9, 13, '2015-01-17 16:00:00', '2015-01-17 17:00:00'),
(65, 92, 11, 13, '2015-01-17 20:00:00', '2015-01-17 21:00:00'),
(66, 89, 10, 13, '2015-01-18 17:00:00', '2015-01-18 18:00:00'),
(67, 77, 11, 13, '2015-01-18 17:00:00', '2015-01-18 18:00:00'),
(68, 93, 11, 13, '2015-01-18 19:00:00', '2015-01-18 20:00:00'),
(69, 95, 10, 13, '2015-01-17 19:00:00', '2015-01-17 20:00:00'),
(70, 81, 12, 13, '2015-01-18 18:00:00', '2015-01-18 19:00:00'),
(71, 91, 9, 13, '2015-01-19 16:00:00', '2015-01-19 17:00:00'),
(72, 91, 11, 13, '2015-01-19 16:00:00', '2015-01-19 17:00:00'),
(73, 93, 11, 13, '2015-01-20 19:00:00', '2015-01-20 20:00:00'),
(74, 95, 11, 13, '2015-01-19 19:00:00', '2015-01-19 20:00:00'),
(75, 92, 12, 13, '2015-01-19 21:00:00', '2015-01-19 22:00:00'),
(76, 77, 9, 13, '2015-01-20 17:00:00', '2015-01-20 18:00:00'),
(77, 91, 10, 13, '2015-01-21 16:00:00', '2015-01-21 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `discount` int(3) NOT NULL,
  `fixed` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `discount`, `fixed`, `created_at`, `updated_at`) VALUES
(1, 'UNICAR - Medical care & health', 0, 25, '2014-11-01 15:47:06', '2014-11-01 15:47:06'),
(2, 'Inaya Masr', 0, 25, '2014-11-01 15:47:52', '2014-11-01 15:47:52'),
(3, 'Alfa Care', 0, 40, '2014-12-01 20:29:18', '2014-12-01 20:29:18'),
(4, 'City Care', 0, 35, '2014-12-01 20:29:49', '2014-12-01 20:29:49'),
(5, 'GLOP', 0, 0, '2015-01-04 18:27:20', '2015-01-04 18:27:20'),
(6, 'GlobeMed', 0, 45, '2015-01-04 18:27:56', '2015-01-04 18:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `group_details`
--

CREATE TABLE IF NOT EXISTS `group_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `payment_method` varchar(5) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_value` int(11) NOT NULL,
  `done` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

CREATE TABLE IF NOT EXISTS `machines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `share_ratio` int(3) NOT NULL,
  `serial` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `machines`
--

INSERT INTO `machines` (`id`, `name`, `share_ratio`, `serial`, `country`, `price`, `created_at`, `updated_at`) VALUES
(1, 'balance apparatus cav & rf', 100, 'sn 130001', 'korea', 78000, '2014-07-24 16:02:16', '2014-07-24 16:02:16'),
(2, 'vibrator beurer ', 10, '', 'germany', 2500, '2014-07-24 16:10:03', '2014-07-24 16:10:03'),
(3, 'vibrator dolphen', 10, '', 'chaina', 120, '2014-07-24 16:11:02', '2014-07-24 16:11:02'),
(4, 'radiant 200 fisioline rf', 100, 'sn 600214', 'italy', 165000, '2014-07-24 16:12:12', '2014-07-24 16:12:12'),
(5, 'b333', 20, 'dqdp12023093420140113', 'chaina', 1700, '2014-07-24 16:13:18', '2014-07-24 16:13:18'),
(6, 'ultrasonic fisioline', 30, 'sn 300513', 'italy', 40000, '2014-07-24 16:15:05', '2014-07-24 16:15:05'),
(7, 'laser pin fisioline', 30, 'sn 103412', 'italy', 32000, '2014-07-24 16:16:06', '2014-07-24 16:16:06'),
(9, 'ultrasonic ems', 30, 'sn 115895 10-2013', 'uk', 18000, '2014-07-24 16:19:10', '2014-07-24 16:19:10'),
(10, 'electical stimulation', 40, 'sn 115889 10-2013', 'uk', 14000, '2014-07-24 16:20:12', '2014-07-24 16:20:12'),
(11, 'linpho apparatus fisioline', 15, 'nraee it 08020000001690', 'italy', 22000, '2014-07-24 16:21:50', '2014-07-24 16:21:50'),
(12, 'vibrator g5', 10, '', 'chaina', 3500, '2014-07-24 16:22:38', '2014-07-24 16:22:38'),
(13, 'i.r', 20, '', 'Egypt', 1000, '2014-07-24 16:23:22', '2014-07-24 16:23:22'),
(14, 'b333 (2)', 30, '', 'chaina', 1700, '2014-07-24 16:25:51', '2014-07-24 16:25:51'),
(15, 'ultavilot apparatus', 100, '20140609-002', 'korea', 15000, '2014-07-24 16:27:28', '2014-07-24 16:27:28'),
(16, 'treadmail kettler 200 kg', 30, '17452102x2910009', 'germany', 22000, '2014-07-24 16:35:46', '2014-07-24 16:35:46'),
(17, 'fitvibe', 30, 'f100515', 'germany', 79000, '2014-07-24 16:36:41', '2014-07-24 16:36:41'),
(18, 'orbitrack kettler 180 kg ', 20, '', 'germany', 14000, '2014-07-24 16:37:45', '2014-07-24 16:37:45'),
(19, 'perfect forms sun 400 ', 40, '', 'Egypt', 30000, '2014-07-24 16:38:34', '2014-07-24 16:38:34'),
(20, 'meso', 90, '3543535', 'Egypt', 1, '2014-08-09 13:07:29', '2014-08-09 13:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `obesity`
--

CREATE TABLE IF NOT EXISTS `obesity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `weight` varchar(20) NOT NULL,
  `body_fat` varchar(20) NOT NULL,
  `b_f` varchar(20) NOT NULL,
  `water` varchar(20) NOT NULL,
  `muscle` varchar(20) NOT NULL,
  `bone` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `obesity`
--

INSERT INTO `obesity` (`id`, `patient_id`, `date`, `weight`, `body_fat`, `b_f`, `water`, `muscle`, `bone`, `created_at`, `updated_at`) VALUES
(5, 22, '2014-08-09', '81.9', '', '38', '43', '30.7', '11.2', '2014-08-09 13:02:49', '2014-08-09 13:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE IF NOT EXISTS `patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` text NOT NULL,
  `occupation` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `habits` text NOT NULL,
  `onset_treatment` text NOT NULL,
  `onset` text NOT NULL,
  `course` varchar(100) NOT NULL,
  `duration` int(5) NOT NULL,
  `problem` text NOT NULL,
  `past` text NOT NULL,
  `present` text NOT NULL,
  `diag` text NOT NULL,
  `method` text NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `active` int(1) NOT NULL,
  `confirm` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `code`, `name`, `age`, `gender`, `address`, `occupation`, `phone`, `habits`, `onset_treatment`, `onset`, `course`, `duration`, `problem`, `past`, `present`, `diag`, `method`, `group_id`, `active`, `confirm`, `created_at`, `updated_at`) VALUES
(21, '53df-e1307-1da8', 'hamdy amen', 40, 'male', ' ???????', '', '01111241438', '', '', '', '', 0, 'massage', '', '', '', '', 0, 1, 0, '2014-08-04 19:38:24', '2014-11-22 18:10:28'),
(22, '53e6-19e7b-8213', 'Asmaa Hussien ', 30, 'female', 'kaha', 'mizo', '01271606192', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-08-09 12:53:59', '2014-08-11 16:19:50'),
(23, '53e8-efdee-99c6', 'fathy lotfy ', 20, 'male', 'qualyob', 'student', '01061154127', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-08-11 16:31:26', '2014-08-11 16:37:59'),
(24, '53ea-58b24-e98e', 'dr. hanaa', 30, 'female', 'elharm', '', '01006216614', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-08-12 18:10:58', '2014-08-12 18:10:58'),
(27, '53ee-4e3aa-9d9d', 'احمد عبد الله', 40, 'male', 'hgkl;jl;kj', '', '01122556666', '', '', '', '', 0, 'hplppppppp', '', '', '', '', 0, 1, 0, '2014-08-15 18:15:22', '2014-08-15 18:18:57'),
(28, '53f3-9bd6a-baf8', 'mohamed sery', 22, 'male', 'cairo', '', '01111570815', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-08-19 18:47:50', '2014-08-19 18:47:50'),
(29, '53fe-2508e-b875', 'mohamed abd elrahman', 35, 'male', 'elreyad', '', '456522222', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-08-27 18:35:52', '2014-08-27 18:46:27'),
(31, '53fe-26a41-3c13', 'mohamed abo fares', 40, 'male', 'elreyad', '', '01065551000', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-08-27 18:42:44', '2014-08-27 18:42:44'),
(32, '5403-1f9e1-9a91', 'olfat talaat', 35, 'female', 'cairo', '', '01113156017', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-08-31 13:14:06', '2014-08-31 13:14:06'),
(33, '5424-4ffcd-0ac2', 'Elfoly', 44, 'male', 'mohandseen', '', '01227100300', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-09-25 17:25:16', '2014-09-25 17:25:16'),
(34, '5435-6f375-3c89', 'ahmed azb', 38, 'male', 'cairo', '', '01211163971', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-10-08 17:07:03', '2014-10-08 17:07:03'),
(35, '543a-c3b6a-fe43', 'sara saed hamed', 21, 'female', 'elmatarya', '', '01151874501', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-10-12 18:08:54', '2014-10-12 18:08:54'),
(36, '5445-511b8-03bd', 'nesma hamde', 19, 'female', 'fesal', '', '01211013247', '', '', '', '', 0, 'obesity', '', '', '', '', 0, 1, 0, '2014-10-20 18:14:51', '2014-10-22 17:52:34'),
(37, '5452-b1441-7267', 'abd elhakem', 32, 'male', 'elyamen', '', '3456789954', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-10-30 21:44:36', '2014-10-30 21:44:36'),
(38, '545e-46946-e065', 'mahmoud yahya abass', 44, 'male', 'maka', '', '+00966553654530', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-11-08 16:36:36', '2014-11-08 16:36:36'),
(39, '545f-a9403-49c2', 'mohamed mahmoud', 27, 'male', 'egypt', '', '01100995052', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-11-09 17:49:52', '2014-11-09 17:49:52'),
(40, '545f-a989a-43c5', 'mostafa mahmoud ', 18, 'male', 'egypt', '', '01100995052', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-11-09 17:51:05', '2014-11-09 17:51:05'),
(41, '5460-e4dba-ab2b', 'hany hamdy', 38, 'male', 'egypt', '', '00966547979179', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-11-10 16:16:27', '2014-11-10 16:16:27'),
(42, '5463-811f4-7b7c', 'ibrahem farouk', 40, 'male', 'cairo', '', '01228401332', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-11-12 15:47:43', '2014-11-12 15:47:43'),
(43, '5468-dab0a-70de', 'mena helmy', 27, 'female', 'elgeza', '', '01007710253', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-11-16 17:11:12', '2014-11-16 17:11:12'),
(44, '546a-37e98-e64f', 'mohamed enawy', 28, 'male', 'cairo', '', '01270717348', '', '', '', '', 0, '', '', '', '', '', 2, 1, 0, '2014-11-17 18:01:13', '2014-11-17 18:04:37'),
(45, '546a-39643-f407', 'ahmed samer', 27, 'male', 'elharm', '', '01155366777', '', '', '', '', 0, '', '', '', '', '', 2, 1, 0, '2014-11-17 18:07:32', '2014-11-17 18:07:32'),
(46, '546a-39cc9-b8bd', 'osama malak', 41, 'male', 'tanta', '', '01271999911', '', '', '', '', 0, '', '', '', '', '', 2, 1, 0, '2014-11-17 18:09:16', '2014-11-17 18:09:16'),
(47, '546a-3a4e5-77fb', 'waleed mohammed asem', 39, 'male', 'mohy el dein', '', '01006063133', '', '', '', '', 0, '', '', '', '', '', 2, 1, 0, '2014-11-17 18:11:26', '2014-11-17 18:11:26'),
(48, '546a-3abba-12c3', 'hany farog', 37, 'male', 'eldoky', '', '01007100494', '', '', '', '', 0, '', '', '', '', '', 1, 1, 0, '2014-11-17 18:13:15', '2014-11-17 18:13:15'),
(49, '546a-3c95a-ee43', 'anwer samer', 28, 'male', 'lebea', '', '01158136091', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-11-17 18:21:09', '2014-11-17 18:21:09'),
(50, '546c-cb4cc-7b2b', 'mahmoud  abd elhalem', 45, 'male', 'elshikh zaed', '', '01001841133', '', '', '', '', 0, '', '', '', '', '', 2, 1, 0, '2014-11-19 16:54:36', '2014-11-19 16:54:36'),
(51, '546c-cbe32-91c8', 'gamal abd elaziz ', 51, 'male', 'elsayada zinab', '', '01227378340', '', '', '', '', 0, '', '', '', '', '', 1, 1, 0, '2014-11-19 16:57:07', '2014-11-19 16:57:07'),
(52, '546e-38e57-6780', 'mohamed khalel saad allh', 36, 'male', 'elmohandsen', '', '01010103213', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-11-20 18:54:29', '2014-11-20 18:54:29'),
(53, '5472-0bf9a-8376', 'mahmoud abd elmotalb', 43, 'male', 'giza', '', '01229568932', '', '', '', '', 0, '', '', '', '', '', 2, 1, 0, '2014-11-23 16:31:53', '2014-11-23 16:31:53'),
(54, '5472-0c29d-b7ce', 'soad mohamed', 40, 'female', 'giza ', '', '01229568932', '', '', '', '', 0, '', '', '', '', '', 2, 1, 0, '2014-11-23 16:32:41', '2014-12-27 19:16:02'),
(55, '5473-50cb7-e8fc', 'ahmed mohamed abo elala ', 38, 'male', '6 october', '', '01100054641', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-11-24 15:37:47', '2014-11-24 15:37:47'),
(56, '5473-5990b-7742', 'tamer aly nazer ', 44, 'male', 'elmohandsen', '', '01001114892', '', '', '', '', 0, '', '', '', '', '', 1, 1, 0, '2014-11-24 16:15:12', '2014-11-24 16:15:12'),
(57, '5473-67b67-34c3', 'mohamed galal mohamed', 25, 'male', 'dar elsalam ', '', '01117077476', '', '', '', '', 0, '', '', '', '', '', 2, 1, 0, '2014-11-24 17:15:34', '2014-11-24 17:15:34'),
(58, '5474-99c8e-7eb3', 'hany asaam', 30, 'male', 'cairo', '', '01024000613', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-11-25 15:01:28', '2014-11-25 15:01:28'),
(59, '5474-a6a58-b8d6', 'ahmed hatem', 22, 'male', 'elmohandsen', '', '01001322134', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-11-25 15:56:21', '2014-11-25 15:56:21'),
(60, '5475-eab42-527c', 'omar elmonaer', 41, 'male', '6 october', '', '0112211128', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-11-26 14:59:00', '2014-11-26 14:59:00'),
(61, '5477-6ad02-7f50', 'hesham elgazar ', 42, 'male', 'cairo', '', '01004370370', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-11-27 18:17:52', '2014-11-27 18:17:52'),
(62, '547a-1eca0-4fc0', 'eman mohsen ibrahem', 30, 'female', 'cairo', '', '01017417344', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-11-29 19:30:18', '2014-11-29 19:30:18'),
(63, '547b-5a856-7047', 'alaa salah el dein', 39, 'male', 'cairo', '', '0000000000', '', '', '', '', 0, '', '', '', '', '', 1, 1, 0, '2014-11-30 17:57:25', '2014-11-30 17:57:25'),
(64, '5483-10cab-eb29', 'mohamed el hossin mostafa', 29, 'female', 'embaba', '', '01150766743', '', '', '', '', 0, '', '', '', '', '', 1, 1, 0, '2014-12-06 14:20:58', '2014-12-06 14:20:58'),
(65, '5485-ce2ec-abd2', 'samer hamdy', 16, 'female', 'elgeza', '', '01068334944', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-12-08 16:13:34', '2014-12-08 16:13:34'),
(66, '5485-cf3e9-9589', 'ahmed farag', 35, 'male', 'وسط البلد', '', '01222363688', '', '', '', '', 0, 'حجامة', '', '', '', '', 0, 1, 0, '2014-12-08 16:18:06', '2014-12-08 18:57:53'),
(67, '5488-59456-15d7', 'alaa moustafa heseen yosef', 50, 'male', 'awseem', '', '0100499099222', '', '', '', '', 0, '', '', '', '', '', 1, 1, 0, '2014-12-10 14:31:33', '2014-12-13 15:56:20'),
(68, '5488-971d8-c130', 'waleed ali mohamed', 30, 'male', 'cairo', '', '01224785175', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-12-10 18:55:25', '2014-12-13 17:02:38'),
(69, '548d-a9b19-ae87', 'yasser farouk ', 41, 'male', 'cairo', '', '010004318980', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-12-14 15:16:01', '2014-12-14 15:16:01'),
(70, '548d-a9e49-f482', 'mohamed zaky', 42, 'male', 'cairo', '', '01118603163', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-12-14 15:16:52', '2014-12-14 15:16:52'),
(71, '548d-be8a3-d7a6', 'samh mohamed abbas', 27, 'male', 'fesal', '', '01002341803', '', '', '', '', 0, '', '', '', '', '', 1, 1, 0, '2014-12-14 16:44:58', '2014-12-14 16:44:58'),
(72, '5490-4b060-2b45', 'yasser farahat', 37, 'male', 'embaba', '', '01115006261', '', '', '', '', 0, '', '', '', '', '', 2, 1, 0, '2014-12-16 15:08:54', '2014-12-16 15:08:54'),
(73, '5490-6cd67-1126', 'mostafa yousef', 48, 'male', 'ain shams', '', '01016095226', '', '', '', '', 0, '', '', '', '', '', 2, 1, 0, '2014-12-16 17:33:10', '2014-12-16 17:33:10'),
(74, '5491-b5b6c-f9c6', 'hitham ali abd elftah', 25, 'male', 'dar elsalam ', '', '01063578514', '', '', '', '', 0, '', '', '', '', '', 2, 1, 0, '2014-12-17 16:56:22', '2014-12-17 16:56:22'),
(75, '5495-be31a-7cac', 'mahmoud farag saber ', 26, 'male', 'meet okba', '', '01201833550', '', '', '', '', 0, '', '', '', '', '', 1, 1, 0, '2014-12-20 18:21:37', '2014-12-20 18:21:37'),
(76, '549c-21fed-8f59', 'sherein abd elhamed', 30, 'female', '', '', '00000000', '', '', '', '', 0, 'pt group', '', '', '', '', NULL, 0, 0, '2014-12-25 14:41:02', '2014-12-25 14:41:02'),
(77, '549c-2a08c-df3a', 'asmaa ataya', 30, 'female', 'elmatarya', '', '01158202287', '', '', '', '', 0, '', '', '', '', '', 1, 1, 0, '2014-12-25 15:15:20', '2014-12-25 15:15:20'),
(78, '549e-cb151-1d76', 'fayz aziz', 29, 'male', 'cairo', '', '01200822077', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-12-27 15:07:01', '2014-12-27 15:07:01'),
(79, '549f-106fa-186f', 'fayda mohamed ismael', 38, 'female', 'el haram', 'house wife', '01275502228', '', '15-11-2014', '', '', 0, '', '', '', '', '', 2, 1, 0, '2014-12-27 20:02:55', '2014-12-27 20:02:55'),
(80, '54a0-1d887-bbdd', 'ahmed gamal', 50, 'male', 'cairo', '', '01007643980', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-12-28 15:11:04', '2014-12-28 15:11:04'),
(81, '54a0-3a01a-4008', 'sherein ghareeb abdl hameed', 30, 'female', 'ard ellawa', '', '01002415819', '', '', '', '', 0, '', '', '', '', '', 1, 1, 0, '2014-12-28 17:12:33', '2014-12-28 17:12:33'),
(82, '54a0-42e9e-2bb9', 'mohamed fesal hassan', 29, 'male', 'elharm', '', '0096599551595', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-12-28 17:50:33', '2014-12-28 17:50:33'),
(83, '54a1-6a69e-a048', 'abdl kerem mohamed sileman', 36, 'male', 'elmohandesen', '', '00966553575457', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-12-29 14:51:21', '2014-12-29 14:51:21'),
(84, '54a2-da66a-d6b2', 'zaghlol mohamed zaghlol', 35, 'male', 'embaba', '', '01287781111', '', '', '', '', 0, '', '', '', '', '', 1, 1, 0, '2014-12-30 17:01:26', '2014-12-30 17:01:26'),
(85, '54a4-432e5-41f2', 'amr elsayed hamed', 32, 'male', 'ard ellawa', '', '01278082222', '', '', '', '', 0, '', '', '', '', '', 2, 1, 0, '2014-12-31 18:40:46', '2014-12-31 18:40:46'),
(86, '54a4-4ee77-235b', 'mostafa abd elkader', 25, 'male', 'tanta', '', '01004757600', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2014-12-31 19:30:47', '2014-12-31 19:30:47'),
(87, '54a9-7f454-a5de', 'gamalat ahmed halmy', 45, 'female', 'banha', '', '00000', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2015-01-04 17:58:29', '2015-01-04 17:58:29'),
(88, '54a9-88960-ac8d', 'hazem aly ', 30, 'male', 'elmohandseen', '', '0128111658', '', '4-1-2015', '', '', 0, 'pain at left shoulder pain at left upper limb', '', '', '', '', 6, 1, 0, '2015-01-04 18:38:14', '2015-01-04 18:38:14'),
(89, '54aa-a9963-0c58', 'yousry ebraheem el sayed', 47, 'male', 'embaba', '', '011232744860', '', '', '', '', 0, '', '', '', '', '', 1, 1, 0, '2015-01-05 15:11:18', '2015-01-05 15:11:18'),
(90, '54ae-9bf03-85fb', 'ahmed mohamed towfek', 34, 'male', 'embaba', '', '01097741460', '', '', '', '', 0, '', '', '', '', '', 1, 1, 0, '2015-01-08 15:02:08', '2015-01-08 15:02:08'),
(91, '54b2-70b80-148c', 'mahmoud siliman mahmoud', 36, 'male', 'giza ', '', '01224548836', '', '', '', '', 0, '', '', '', '', '', 2, 1, 0, '2015-01-11 12:46:47', '2015-01-11 12:46:47'),
(92, '54b4-05506-28ce', 'kareem saad galal', 32, 'male', 'embaba', '', '01207771693', '', '', '', '', 0, '', '', '', '', '', 1, 1, 0, '2015-01-12 17:33:04', '2015-01-12 17:33:04'),
(93, '54b5-586a7-4e81', 'abla ali yossef', 55, 'female', 'elmohandeseen', '', '33374016', '', '', '', '', 0, '', '', '', '', '', 2, 1, 0, '2015-01-13 17:39:54', '2015-01-13 17:39:54'),
(94, '54b6-7aa09-8eb2', 'ibrahem saad', 30, 'male', 'cairo', '', '01152900052', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2015-01-14 14:18:08', '2015-01-14 14:18:08'),
(95, '54b7-fb2a9-e1a6', 'ahmed refaat ahmed', 30, 'male', 'embaba', '', '01211141409', '', '', '', '', 0, '', '', '', '', '', 2, 1, 0, '2015-01-15 17:38:50', '2015-01-15 17:38:50'),
(96, '54ba-94526-5253', 'khaled khalel', 48, 'male', 'garden city', '', '01222150757', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2015-01-17 16:56:50', '2015-01-17 16:56:50'),
(97, '54bb-cd89a-3f2f', 'syria mahmoud ahmed', 58, 'female', 'embaba', '', '0233105214', '', '', '', '', 0, '', '', '', '', '', 1, 1, 0, '2015-01-18 15:13:13', '2015-01-18 15:13:13'),
(98, '54bd-129b5-5fe0', 'mohamed fahd', 28, 'male', 'elmohandsen', '', '01117779992', '', '', '', '', 0, '', '', '', '', '', 0, 1, 0, '2015-01-19 14:20:11', '2015-01-19 14:20:11'),
(99, '54bd-5c101-fc9b', 'mohamed rashad', 29, 'male', 'cairo', '', '01203006077', '', '', '', '', 0, '', '', '', '', '', 1, 1, 0, '2015-01-19 19:33:36', '2015-01-19 19:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `patient_log`
--

CREATE TABLE IF NOT EXISTS `patient_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `extra` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=364 ;

--
-- Dumping data for table `patient_log`
--

INSERT INTO `patient_log` (`id`, `patient_id`, `session_id`, `extra`, `price`, `discount`, `created_at`, `updated_at`) VALUES
(26, 21, 18, 0, 150, 0, '2014-08-04 19:45:07', '2014-08-04 19:45:07'),
(27, 21, 13, 0, 25, 0, '2014-08-04 19:48:00', '2014-08-04 19:48:00'),
(28, 21, 13, 0, 25, 0, '2014-08-04 19:48:13', '2014-08-04 19:48:13'),
(29, 22, 21, 0, 500, 0, '2014-08-09 13:17:25', '2014-08-09 13:17:25'),
(30, 21, 18, 0, 0, 0, '2014-08-11 16:25:54', '2014-08-11 16:25:54'),
(31, 21, 18, 0, 150, 0, '2014-08-11 16:26:32', '2014-08-11 16:26:32'),
(32, 21, 13, 0, 25, 0, '2014-08-11 16:26:59', '2014-08-11 16:26:59'),
(33, 21, 13, 0, 25, 0, '2014-08-11 16:27:24', '2014-08-11 16:27:24'),
(34, 23, 15, 0, 400, 0, '2014-08-11 16:34:16', '2014-08-11 16:34:16'),
(35, 23, 9, 0, 150, 0, '2014-08-11 16:34:35', '2014-08-11 16:34:35'),
(36, 23, 24, 0, 50, 0, '2014-08-11 16:35:11', '2014-08-11 16:35:11'),
(37, 23, 23, 0, 100, 0, '2014-08-11 16:35:31', '2014-08-11 16:35:31'),
(38, 23, 25, 0, 200, 0, '2014-08-11 16:36:28', '2014-08-11 16:36:28'),
(39, 23, 15, 0, 0, 0, '2014-08-12 17:55:27', '2014-08-12 17:55:27'),
(40, 23, 9, 0, 150, 0, '2014-08-12 17:55:27', '2014-08-12 17:55:27'),
(41, 23, 15, 0, 400, 0, '2014-08-12 17:58:25', '2014-08-12 17:58:25'),
(42, 24, 15, 0, 400, 0, '2014-08-12 18:12:17', '2014-08-12 18:12:17'),
(43, 23, 9, 0, 150, 0, '2014-08-13 16:17:54', '2014-08-13 16:17:54'),
(44, 23, 21, 0, 500, 0, '2014-08-13 16:18:42', '2014-08-13 16:18:42'),
(45, 23, 23, 0, 100, 0, '2014-08-13 16:19:07', '2014-08-13 16:19:07'),
(46, 21, 25, 0, 200, 0, '2014-08-13 17:36:26', '2014-08-13 17:36:26'),
(48, 27, 0, 0, 100, 0, '2014-08-15 18:19:41', '2014-08-15 18:19:41'),
(49, 23, 9, 0, 150, 0, '2014-08-17 18:22:22', '2014-08-17 18:22:22'),
(50, 23, 16, 0, 400, 0, '2014-08-17 18:22:58', '2014-08-17 18:22:58'),
(51, 23, 9, 0, 150, 0, '2014-08-18 14:45:18', '2014-08-18 14:45:18'),
(52, 23, 15, 0, 400, 0, '2014-08-18 15:45:22', '2014-08-18 15:45:22'),
(53, 23, 23, 0, 100, 0, '2014-08-18 15:46:52', '2014-08-18 15:46:52'),
(54, 23, 24, 0, 50, 0, '2014-08-18 15:47:14', '2014-08-18 15:47:14'),
(55, 23, 9, 0, 150, 0, '2014-08-18 15:47:36', '2014-08-18 15:47:36'),
(56, 28, 15, 0, 400, 0, '2014-08-19 18:51:33', '2014-08-19 18:51:33'),
(57, 28, 0, 0, 100, 0, '2014-08-19 18:51:47', '2014-08-19 18:51:47'),
(58, 21, 0, 0, 100, 0, '2014-08-23 17:35:17', '2014-08-23 17:35:17'),
(59, 21, 0, 0, 100, 0, '2014-08-23 17:35:50', '2014-08-23 17:35:50'),
(60, 28, 21, 0, 500, 0, '2014-08-24 14:56:35', '2014-08-24 14:56:35'),
(61, 28, 9, 0, 150, 0, '2014-08-24 14:56:47', '2014-08-24 14:56:47'),
(62, 28, 23, 0, 100, 0, '2014-08-24 14:57:10', '2014-08-24 14:57:10'),
(63, 28, 16, 0, 400, 0, '2014-08-24 14:57:46', '2014-08-24 14:57:46'),
(64, 21, 25, 0, 200, 0, '2014-08-24 19:01:57', '2014-08-24 19:01:57'),
(65, 28, 9, 0, 150, 0, '2014-08-26 17:42:37', '2014-08-26 17:42:37'),
(66, 28, 15, 0, 400, 0, '2014-08-26 17:42:51', '2014-08-26 17:42:51'),
(67, 29, 25, 0, 200, 0, '2014-08-27 18:46:39', '2014-08-27 18:46:39'),
(68, 31, 0, 0, 100, 0, '2014-08-27 18:47:03', '2014-08-27 18:47:03'),
(69, 28, 9, 0, 150, 0, '2014-08-30 15:58:59', '2014-08-30 15:58:59'),
(70, 31, 15, 0, 400, 0, '2014-08-31 17:36:09', '2014-08-31 17:36:09'),
(71, 21, 18, 0, 150, 0, '2014-08-31 18:14:37', '2014-08-31 18:14:37'),
(72, 28, 9, 0, 150, 0, '2014-09-01 18:52:04', '2014-09-01 18:52:04'),
(73, 28, 15, 0, 400, 0, '2014-09-01 18:52:36', '2014-09-01 18:52:36'),
(74, 28, 23, 0, 100, 0, '2014-09-01 18:52:48', '2014-09-01 18:52:48'),
(75, 21, 18, 0, 150, 0, '2014-09-06 16:28:00', '2014-09-06 16:28:00'),
(76, 22, 9, 0, 150, 0, '2014-09-06 16:30:55', '2014-09-06 16:30:55'),
(77, 22, 9, 0, 150, 0, '2014-09-06 16:31:10', '2014-09-06 16:31:10'),
(78, 31, 15, 0, 400, 0, '2014-09-07 18:45:10', '2014-09-07 18:45:10'),
(79, 31, 15, 0, 400, 0, '2014-09-07 18:45:29', '2014-09-07 18:45:29'),
(80, 32, 15, 0, 400, 0, '2014-09-07 18:47:43', '2014-09-07 18:47:43'),
(81, 21, 25, 0, 200, 0, '2014-09-09 18:42:39', '2014-09-09 18:42:39'),
(82, 32, 9, 0, 150, 0, '2014-09-18 13:08:23', '2014-09-18 13:08:23'),
(83, 32, 15, 0, 400, 0, '2014-09-18 13:08:40', '2014-09-18 13:08:40'),
(84, 32, 24, 0, 50, 0, '2014-09-18 13:09:10', '2014-09-18 13:09:10'),
(85, 21, 18, 0, 150, 0, '2014-09-20 11:11:26', '2014-09-20 11:11:26'),
(86, 33, 15, 0, 400, 0, '2014-09-25 17:26:30', '2014-09-25 17:26:30'),
(87, 33, 15, 0, 400, 0, '2014-09-25 17:26:49', '2014-09-25 17:26:49'),
(88, 33, 15, 0, 400, 0, '2014-09-25 17:27:03', '2014-09-25 17:27:03'),
(89, 33, 15, 0, 400, 0, '2014-09-25 17:27:18', '2014-09-25 17:27:18'),
(90, 33, 15, 0, 200, 0, '2014-09-25 17:27:44', '2014-09-25 17:27:44'),
(91, 33, 15, 0, 400, 0, '2014-09-25 17:27:57', '2014-09-25 17:27:57'),
(92, 33, 15, 0, 400, 0, '2014-09-25 17:28:10', '2014-09-25 17:28:10'),
(93, 33, 15, 0, 400, 0, '2014-09-25 17:28:27', '2014-09-25 17:28:27'),
(94, 21, 18, 0, 150, 0, '2014-09-25 17:53:05', '2014-09-25 17:53:05'),
(95, 34, 25, 0, 200, 0, '2014-10-08 17:08:45', '2014-10-08 17:08:45'),
(96, 34, 25, 0, 200, 0, '2014-10-09 16:08:36', '2014-10-09 16:08:36'),
(97, 34, 23, 0, 100, 0, '2014-10-09 16:09:01', '2014-10-09 16:09:01'),
(98, 35, 0, 0, 100, 0, '2014-10-12 18:10:21', '2014-10-12 18:10:21'),
(99, 21, 18, 0, 150, 0, '2014-10-12 19:15:53', '2014-10-12 19:15:53'),
(100, 21, 18, 0, 150, 0, '2014-10-12 19:17:37', '2014-10-12 19:17:37'),
(101, 32, 23, 0, 100, 0, '2014-10-19 13:27:29', '2014-10-19 13:27:29'),
(102, 21, 18, 0, 150, 0, '2014-10-25 18:15:47', '2014-10-25 18:15:47'),
(103, 38, 0, 0, 100, 0, '2014-11-08 16:37:04', '2014-11-08 16:37:04'),
(104, 41, 19, 0, 0, 0, '2014-11-10 16:17:07', '2014-11-10 16:17:07'),
(105, 43, 0, 0, 0, 0, '2014-11-16 17:11:56', '2014-11-16 17:11:56'),
(106, 43, 0, 0, 0, 0, '2014-11-16 18:47:54', '2014-11-16 18:47:54'),
(107, 35, 16, 0, 0, 0, '2014-11-17 18:45:59', '2014-11-17 18:45:59'),
(108, 35, 16, 0, 0, 0, '2014-11-17 18:47:34', '2014-11-17 18:47:34'),
(109, 35, 0, 1, 0, 0, '2014-11-17 18:47:34', '2014-11-17 18:47:34'),
(110, 59, 0, 0, 0, 0, '2014-11-25 15:57:09', '2014-11-25 15:57:09'),
(111, 43, 0, 0, 0, 0, '2014-11-26 16:22:37', '2014-11-26 16:22:37'),
(121, 43, 15, 0, 400, 0, '2014-11-30 17:24:43', '2014-11-30 17:24:43'),
(127, 45, 13, 0, 0, 0, '2014-11-30 17:42:13', '2014-11-30 17:42:13'),
(128, 45, 13, 0, 0, 0, '2014-11-30 17:42:13', '2014-11-30 17:42:13'),
(129, 45, 13, 0, 0, 0, '2014-11-30 17:42:13', '2014-11-30 17:42:13'),
(130, 45, 13, 0, 0, 0, '2014-11-30 17:42:13', '2014-11-30 17:42:13'),
(131, 45, 13, 0, 0, 0, '2014-11-30 17:43:11', '2014-11-30 17:43:11'),
(132, 46, 13, 0, 0, 0, '2014-11-30 17:45:00', '2014-11-30 17:45:00'),
(133, 46, 13, 0, 0, 0, '2014-11-30 17:45:00', '2014-11-30 17:45:00'),
(134, 46, 13, 0, 0, 0, '2014-11-30 17:45:00', '2014-11-30 17:45:00'),
(135, 46, 13, 0, 0, 0, '2014-11-30 17:45:00', '2014-11-30 17:45:00'),
(136, 46, 13, 0, 0, 0, '2014-11-30 17:45:00', '2014-11-30 17:45:00'),
(137, 46, 13, 0, 0, 0, '2014-11-30 17:45:00', '2014-11-30 17:45:00'),
(138, 46, 13, 0, 0, 0, '2014-11-30 17:45:00', '2014-11-30 17:45:00'),
(139, 46, 13, 0, 0, 0, '2014-11-30 17:45:00', '2014-11-30 17:45:00'),
(140, 46, 13, 0, 0, 0, '2014-11-30 17:45:00', '2014-11-30 17:45:00'),
(142, 47, 13, 0, 0, 0, '2014-11-30 17:46:58', '2014-11-30 17:46:58'),
(143, 47, 13, 0, 0, 0, '2014-11-30 17:46:58', '2014-11-30 17:46:58'),
(144, 47, 13, 0, 0, 0, '2014-11-30 17:46:58', '2014-11-30 17:46:58'),
(145, 47, 13, 0, 0, 0, '2014-11-30 17:46:58', '2014-11-30 17:46:58'),
(146, 47, 13, 0, 0, 0, '2014-11-30 17:46:58', '2014-11-30 17:46:58'),
(147, 47, 13, 0, 0, 0, '2014-11-30 17:46:58', '2014-11-30 17:46:58'),
(148, 47, 13, 0, 0, 0, '2014-11-30 17:46:58', '2014-11-30 17:46:58'),
(149, 47, 13, 0, 0, 0, '2014-11-30 17:46:58', '2014-11-30 17:46:58'),
(150, 48, 13, 0, 0, 0, '2014-11-30 17:48:24', '2014-11-30 17:48:24'),
(151, 48, 13, 0, 0, 0, '2014-11-30 17:48:24', '2014-11-30 17:48:24'),
(152, 48, 13, 0, 0, 0, '2014-11-30 17:48:24', '2014-11-30 17:48:24'),
(153, 48, 13, 0, 0, 0, '2014-11-30 17:48:24', '2014-11-30 17:48:24'),
(154, 48, 13, 0, 0, 0, '2014-11-30 17:48:24', '2014-11-30 17:48:24'),
(155, 51, 13, 0, 0, 0, '2014-11-30 17:49:40', '2014-11-30 17:49:40'),
(156, 51, 13, 0, 0, 0, '2014-11-30 17:49:40', '2014-11-30 17:49:40'),
(157, 51, 13, 0, 0, 0, '2014-11-30 17:49:40', '2014-11-30 17:49:40'),
(158, 51, 13, 0, 0, 0, '2014-11-30 17:49:40', '2014-11-30 17:49:40'),
(159, 50, 13, 0, 0, 0, '2014-11-30 17:50:27', '2014-11-30 17:50:27'),
(160, 50, 13, 0, 0, 0, '2014-11-30 17:50:27', '2014-11-30 17:50:27'),
(161, 50, 13, 0, 0, 0, '2014-11-30 17:50:27', '2014-11-30 17:50:27'),
(162, 50, 13, 0, 0, 0, '2014-11-30 17:50:27', '2014-11-30 17:50:27'),
(163, 50, 13, 0, 0, 0, '2014-11-30 17:50:27', '2014-11-30 17:50:27'),
(164, 56, 13, 0, 0, 0, '2014-11-30 17:52:39', '2014-11-30 17:52:39'),
(165, 56, 13, 0, 0, 0, '2014-11-30 17:52:39', '2014-11-30 17:52:39'),
(166, 56, 13, 0, 0, 0, '2014-11-30 17:52:39', '2014-11-30 17:52:39'),
(168, 44, 13, 0, 0, 0, '2014-11-30 17:54:48', '2014-11-30 17:54:48'),
(169, 44, 13, 0, 0, 0, '2014-11-30 17:54:48', '2014-11-30 17:54:48'),
(170, 44, 13, 0, 0, 0, '2014-11-30 17:54:48', '2014-11-30 17:54:48'),
(171, 44, 13, 0, 0, 0, '2014-11-30 17:54:48', '2014-11-30 17:54:48'),
(172, 44, 13, 0, 0, 0, '2014-11-30 17:54:48', '2014-11-30 17:54:48'),
(173, 57, 13, 0, 0, 0, '2014-11-30 17:55:48', '2014-11-30 17:55:48'),
(174, 57, 13, 0, 0, 0, '2014-11-30 17:55:48', '2014-11-30 17:55:48'),
(175, 57, 13, 0, 0, 0, '2014-11-30 17:55:48', '2014-11-30 17:55:48'),
(176, 63, 13, 0, 0, 0, '2014-11-30 17:58:26', '2014-11-30 17:58:26'),
(177, 63, 13, 0, 0, 0, '2014-11-30 17:58:26', '2014-11-30 17:58:26'),
(178, 63, 13, 0, 0, 0, '2014-11-30 17:58:26', '2014-11-30 17:58:26'),
(179, 63, 13, 0, 0, 0, '2014-11-30 17:58:26', '2014-11-30 17:58:26'),
(180, 63, 13, 0, 0, 0, '2014-11-30 17:58:26', '2014-11-30 17:58:26'),
(181, 63, 13, 0, 0, 0, '2014-11-30 17:58:26', '2014-11-30 17:58:26'),
(182, 63, 13, 0, 0, 0, '2014-11-30 17:58:26', '2014-11-30 17:58:26'),
(183, 63, 13, 0, 0, 0, '2014-11-30 17:58:26', '2014-11-30 17:58:26'),
(184, 63, 13, 0, 0, 0, '2014-11-30 17:58:26', '2014-11-30 17:58:26'),
(185, 63, 13, 0, 0, 0, '2014-11-30 17:58:26', '2014-11-30 17:58:26'),
(186, 63, 13, 0, 0, 0, '2014-11-30 17:58:26', '2014-11-30 17:58:26'),
(187, 43, 0, 0, 100, 0, '2014-11-30 18:00:57', '2014-11-30 18:00:57'),
(188, 43, 16, 0, 400, 0, '2014-11-30 18:01:21', '2014-11-30 18:01:21'),
(189, 59, 0, 0, 100, 0, '2014-11-30 18:03:17', '2014-11-30 18:03:17'),
(190, 59, 15, 0, 400, 0, '2014-11-30 18:03:31', '2014-11-30 18:03:31'),
(191, 60, 19, 0, 300, 0, '2014-11-30 18:06:50', '2014-11-30 18:06:50'),
(192, 61, 19, 0, 300, 0, '2014-11-30 18:08:05', '2014-11-30 18:08:05'),
(193, 37, 12, 0, 150, 0, '2014-11-30 18:09:29', '2014-11-30 18:09:29'),
(194, 38, 0, 0, 100, 0, '2014-11-30 18:11:21', '2014-11-30 18:11:21'),
(195, 41, 19, 0, 300, 0, '2014-11-30 18:12:21', '2014-11-30 18:12:21'),
(196, 49, 12, 0, 150, 0, '2014-11-30 18:13:26', '2014-11-30 18:13:26'),
(197, 42, 12, 0, 150, 0, '2014-11-30 18:13:47', '2014-11-30 18:13:47'),
(198, 62, 15, 0, 400, 0, '2014-11-30 18:14:35', '2014-11-30 18:14:35'),
(199, 35, 15, 0, 400, 0, '2014-11-30 18:15:13', '2014-11-30 18:15:13'),
(200, 35, 16, 0, 400, 0, '2014-11-30 18:15:13', '2014-11-30 18:15:13'),
(201, 21, 19, 0, 300, 0, '2014-11-30 18:16:45', '2014-11-30 18:16:45'),
(202, 45, 13, 0, 0, 0, '2014-12-01 15:32:01', '2014-12-01 15:32:01'),
(203, 56, 13, 0, 0, 0, '2014-12-01 19:14:33', '2014-12-01 19:14:33'),
(205, 63, 13, 0, 0, 0, '2014-12-01 19:17:39', '2014-12-01 19:17:39'),
(207, 63, 13, 0, 0, 0, '2014-12-01 19:18:38', '2014-12-01 19:18:38'),
(209, 46, 13, 0, 0, 0, '2014-12-02 15:13:56', '2014-12-02 15:13:56'),
(210, 50, 13, 0, 0, 0, '2014-12-02 15:14:26', '2014-12-02 15:14:26'),
(211, 64, 13, 0, 0, 0, '2014-12-06 14:24:51', '2014-12-06 14:24:51'),
(212, 57, 13, 0, 0, 0, '2014-12-06 17:29:22', '2014-12-06 17:29:22'),
(213, 47, 13, 0, 0, 0, '2014-12-06 17:29:47', '2014-12-06 17:29:47'),
(214, 46, 13, 0, 0, 0, '2014-12-07 16:12:49', '2014-12-07 16:12:49'),
(215, 65, 0, 0, 100, 0, '2014-12-08 16:15:03', '2014-12-08 16:15:03'),
(216, 57, 13, 0, 0, 0, '2014-12-08 16:19:26', '2014-12-08 16:19:26'),
(217, 44, 13, 0, 0, 0, '2014-12-08 17:42:37', '2014-12-08 17:42:37'),
(218, 66, 0, 0, 100, 0, '2014-12-08 19:01:44', '2014-12-08 19:01:44'),
(219, 59, 16, 0, 400, 0, '2014-12-09 15:36:38', '2014-12-09 15:36:38'),
(220, 64, 13, 0, 0, 0, '2014-12-09 15:40:42', '2014-12-09 15:40:42'),
(221, 63, 13, 0, 0, 0, '2014-12-09 17:37:19', '2014-12-09 17:37:19'),
(222, 67, 13, 0, 0, 0, '2014-12-10 14:38:19', '2014-12-10 14:38:19'),
(223, 57, 13, 0, 0, 0, '2014-12-10 16:16:13', '2014-12-10 16:16:13'),
(224, 47, 13, 0, 0, 0, '2014-12-11 14:41:01', '2014-12-11 14:41:01'),
(225, 63, 13, 0, 0, 0, '2014-12-11 17:28:45', '2014-12-11 17:28:45'),
(227, 67, 13, 0, 0, 0, '2014-12-13 15:56:20', '2014-12-13 15:56:20'),
(228, 59, 15, 0, 400, 0, '2014-12-13 19:12:58', '2014-12-13 19:12:58'),
(229, 69, 23, 0, 100, 0, '2014-12-14 15:17:45', '2014-12-14 15:17:45'),
(230, 69, 18, 0, 150, 0, '2014-12-14 15:17:45', '2014-12-14 15:17:45'),
(231, 70, 23, 0, 100, 0, '2014-12-14 15:18:35', '2014-12-14 15:18:35'),
(232, 70, 18, 0, 150, 0, '2014-12-14 15:18:35', '2014-12-14 15:18:35'),
(233, 64, 13, 0, 0, 0, '2014-12-14 15:20:48', '2014-12-14 15:20:48'),
(234, 59, 9, 0, 150, 0, '2014-12-14 15:24:51', '2014-12-14 15:24:51'),
(235, 63, 13, 0, 0, 0, '2014-12-14 18:55:55', '2014-12-14 18:55:55'),
(236, 67, 13, 0, 0, 0, '2014-12-15 16:00:55', '2014-12-15 16:00:55'),
(237, 57, 13, 0, 0, 0, '2014-12-15 16:11:23', '2014-12-15 16:11:23'),
(238, 72, 13, 0, 0, 0, '2014-12-16 15:09:30', '2014-12-16 15:09:30'),
(239, 59, 9, 0, 150, 0, '2014-12-16 15:11:32', '2014-12-16 15:11:32'),
(240, 73, 13, 0, 0, 0, '2014-12-16 17:34:58', '2014-12-16 17:34:58'),
(241, 67, 13, 0, 0, 0, '2014-12-17 14:30:42', '2014-12-17 14:30:42'),
(242, 74, 13, 0, 0, 0, '2014-12-17 16:58:31', '2014-12-17 16:58:31'),
(243, 57, 13, 0, 0, 0, '2014-12-17 17:07:52', '2014-12-17 17:07:52'),
(244, 73, 13, 0, 0, 0, '2014-12-17 17:40:35', '2014-12-17 17:40:35'),
(245, 72, 13, 0, 0, 0, '2014-12-18 16:09:10', '2014-12-18 16:09:10'),
(247, 63, 13, 0, 0, 0, '2014-12-18 18:24:25', '2014-12-18 18:24:25'),
(248, 74, 13, 0, 0, 0, '2014-12-20 18:25:52', '2014-12-20 18:25:52'),
(249, 64, 13, 0, 0, 0, '2014-12-21 17:29:04', '2014-12-21 17:29:04'),
(250, 63, 13, 0, 0, 0, '2014-12-21 17:30:07', '2014-12-21 17:30:07'),
(251, 73, 13, 0, 0, 0, '2014-12-22 17:31:52', '2014-12-22 17:31:52'),
(252, 47, 13, 0, 0, 0, '2014-12-23 16:46:44', '2014-12-23 16:46:44'),
(253, 47, 13, 0, 0, 0, '2014-12-23 16:47:18', '2014-12-23 16:47:18'),
(254, 72, 13, 0, 0, 0, '2014-12-23 16:48:23', '2014-12-23 16:48:23'),
(255, 74, 13, 0, 0, 0, '2014-12-24 14:50:52', '2014-12-24 14:50:52'),
(256, 73, 13, 0, 0, 0, '2014-12-24 17:24:59', '2014-12-24 17:24:59'),
(257, 77, 13, 0, 0, 0, '2014-12-25 15:15:55', '2014-12-25 15:15:55'),
(258, 63, 13, 0, 0, 0, '2014-12-25 17:40:53', '2014-12-25 17:40:53'),
(259, 24, 12, 0, 150, 0, '2014-12-25 18:00:42', '2014-12-25 18:00:42'),
(260, 73, 13, 0, 0, 0, '2014-12-27 14:13:35', '2014-12-27 14:13:35'),
(261, 78, 18, 0, 150, 0, '2014-12-27 15:09:18', '2014-12-27 15:09:18'),
(262, 78, 23, 0, 100, 0, '2014-12-27 15:09:18', '2014-12-27 15:09:18'),
(263, 56, 13, 0, 0, 0, '2014-12-27 17:17:22', '2014-12-27 17:17:22'),
(264, 75, 13, 0, 0, 0, '2014-12-27 17:21:47', '2014-12-27 17:21:47'),
(265, 45, 13, 0, 0, 0, '2014-12-27 18:44:06', '2014-12-27 18:44:06'),
(266, 57, 13, 0, 0, 0, '2014-12-27 18:57:47', '2014-12-27 18:57:47'),
(267, 57, 13, 0, 0, 0, '2014-12-27 18:59:29', '2014-12-27 18:59:29'),
(268, 46, 13, 0, 0, 0, '2014-12-27 19:01:26', '2014-12-27 19:01:26'),
(269, 53, 13, 0, 0, 0, '2014-12-27 19:14:33', '2014-12-27 19:14:33'),
(270, 53, 13, 0, 0, 0, '2014-12-27 19:15:04', '2014-12-27 19:15:04'),
(271, 53, 13, 0, 0, 0, '2014-12-27 19:15:04', '2014-12-27 19:15:04'),
(272, 53, 13, 0, 0, 0, '2014-12-27 19:15:04', '2014-12-27 19:15:04'),
(273, 53, 13, 0, 0, 0, '2014-12-27 19:15:04', '2014-12-27 19:15:04'),
(274, 54, 13, 0, 0, 0, '2014-12-27 19:16:18', '2014-12-27 19:16:18'),
(275, 54, 13, 0, 0, 0, '2014-12-27 19:20:13', '2014-12-27 19:20:13'),
(276, 54, 13, 0, 0, 0, '2014-12-27 19:20:13', '2014-12-27 19:20:13'),
(277, 54, 13, 0, 0, 0, '2014-12-27 19:20:13', '2014-12-27 19:20:13'),
(278, 54, 13, 0, 0, 0, '2014-12-27 19:20:13', '2014-12-27 19:20:13'),
(279, 79, 13, 0, 0, 0, '2014-12-27 20:04:32', '2014-12-27 20:04:32'),
(280, 79, 13, 0, 0, 0, '2014-12-27 20:04:32', '2014-12-27 20:04:32'),
(281, 79, 13, 0, 0, 0, '2014-12-27 20:04:32', '2014-12-27 20:04:32'),
(282, 79, 13, 0, 0, 0, '2014-12-27 20:04:32', '2014-12-27 20:04:32'),
(283, 79, 13, 0, 0, 0, '2014-12-27 20:04:32', '2014-12-27 20:04:32'),
(284, 79, 13, 0, 0, 0, '2014-12-27 20:04:32', '2014-12-27 20:04:32'),
(285, 77, 13, 0, 0, 0, '2014-12-28 15:03:50', '2014-12-28 15:03:50'),
(286, 80, 18, 0, 150, 0, '2014-12-28 15:11:52', '2014-12-28 15:11:52'),
(287, 80, 23, 0, 100, 0, '2014-12-28 15:11:52', '2014-12-28 15:11:52'),
(288, 72, 13, 0, 0, 0, '2014-12-28 15:51:14', '2014-12-28 15:51:14'),
(289, 82, 18, 0, 150, 0, '2014-12-28 17:53:11', '2014-12-28 17:53:11'),
(290, 82, 23, 0, 100, 0, '2014-12-28 17:53:11', '2014-12-28 17:53:11'),
(291, 82, 18, 0, 150, 0, '2014-12-28 19:23:21', '2014-12-28 19:23:21'),
(292, 82, 23, 0, 100, 0, '2014-12-28 19:23:21', '2014-12-28 19:23:21'),
(293, 83, 18, 0, 150, 0, '2014-12-29 14:52:45', '2014-12-29 14:52:45'),
(294, 83, 23, 0, 100, 0, '2014-12-29 14:52:45', '2014-12-29 14:52:45'),
(295, 45, 13, 0, 0, 0, '2014-12-29 16:04:14', '2014-12-29 16:04:14'),
(296, 73, 13, 0, 0, 0, '2014-12-29 18:11:15', '2014-12-29 18:11:15'),
(297, 74, 13, 0, 0, 0, '2014-12-30 14:57:28', '2014-12-30 14:57:28'),
(298, 77, 13, 0, 0, 0, '2014-12-30 15:03:44', '2014-12-30 15:03:44'),
(299, 72, 13, 0, 0, 0, '2014-12-30 15:28:39', '2014-12-30 15:28:39'),
(300, 63, 13, 0, 0, 0, '2014-12-30 17:38:55', '2014-12-30 17:38:55'),
(301, 85, 13, 0, 0, 0, '2014-12-31 18:41:26', '2014-12-31 18:41:26'),
(302, 21, 18, 0, 150, 0, '2014-12-31 20:01:46', '2014-12-31 20:01:46'),
(303, 21, 23, 0, 100, 0, '2014-12-31 20:01:46', '2014-12-31 20:01:46'),
(304, 72, 13, 0, 0, 0, '2015-01-01 16:04:14', '2015-01-01 16:04:14'),
(305, 81, 13, 0, 0, 0, '2015-01-01 16:08:18', '2015-01-01 16:08:18'),
(306, 63, 13, 0, 0, 0, '2015-01-01 18:38:37', '2015-01-01 18:38:37'),
(307, 74, 13, 0, 0, 0, '2015-01-03 16:11:41', '2015-01-03 16:11:41'),
(308, 72, 13, 0, 0, 0, '2015-01-04 16:09:42', '2015-01-04 16:09:42'),
(309, 57, 13, 0, 0, 0, '2015-01-04 16:10:23', '2015-01-04 16:10:23'),
(310, 84, 13, 0, 0, 0, '2015-01-04 16:11:05', '2015-01-04 16:11:05'),
(311, 81, 13, 0, 0, 0, '2015-01-04 16:14:21', '2015-01-04 16:14:21'),
(312, 63, 13, 0, 0, 0, '2015-01-04 17:44:57', '2015-01-04 17:44:57'),
(313, 87, 12, 0, 150, 0, '2015-01-04 18:06:04', '2015-01-04 18:06:04'),
(314, 66, 0, 0, 100, 0, '2015-01-04 18:17:26', '2015-01-04 18:17:26'),
(315, 85, 13, 0, 0, 0, '2015-01-04 18:18:25', '2015-01-04 18:18:25'),
(316, 88, 13, 0, 0, 0, '2015-01-04 18:39:00', '2015-01-04 18:39:00'),
(317, 74, 13, 0, 0, 0, '2015-01-05 14:23:46', '2015-01-05 14:23:46'),
(318, 89, 13, 0, 0, 0, '2015-01-05 15:11:51', '2015-01-05 15:11:51'),
(319, 84, 13, 0, 0, 0, '2015-01-07 17:28:07', '2015-01-07 17:28:07'),
(320, 88, 13, 0, 0, 0, '2015-01-07 17:29:21', '2015-01-07 17:29:21'),
(321, 89, 13, 0, 0, 0, '2015-01-08 15:02:56', '2015-01-08 15:02:56'),
(322, 90, 13, 0, 0, 0, '2015-01-08 15:03:52', '2015-01-08 15:03:52'),
(323, 72, 13, 0, 0, 0, '2015-01-08 15:58:28', '2015-01-08 15:58:28'),
(324, 81, 13, 0, 0, 0, '2015-01-08 16:20:21', '2015-01-08 16:20:21'),
(325, 63, 13, 0, 0, 0, '2015-01-08 16:37:12', '2015-01-08 16:37:12'),
(326, 63, 0, 0, 0, 0, '2015-01-08 17:51:37', '2015-01-08 17:51:37'),
(327, 84, 13, 0, 0, 0, '2015-01-10 16:24:32', '2015-01-10 16:24:32'),
(328, 77, 13, 0, 0, 0, '2015-01-11 14:58:25', '2015-01-11 14:58:25'),
(329, 89, 13, 0, 0, 0, '2015-01-11 15:18:38', '2015-01-11 15:18:38'),
(330, 72, 13, 0, 0, 0, '2015-01-11 15:59:28', '2015-01-11 15:59:28'),
(331, 90, 13, 0, 0, 0, '2015-01-11 18:17:22', '2015-01-11 18:17:22'),
(332, 91, 13, 0, 0, 0, '2015-01-12 15:52:31', '2015-01-12 15:52:31'),
(333, 84, 13, 0, 0, 0, '2015-01-12 16:10:11', '2015-01-12 16:10:11'),
(334, 92, 13, 0, 0, 0, '2015-01-12 17:33:39', '2015-01-12 17:33:39'),
(335, 89, 13, 0, 0, 0, '2015-01-13 14:40:09', '2015-01-13 14:40:09'),
(336, 77, 13, 0, 0, 0, '2015-01-13 15:01:17', '2015-01-13 15:01:17'),
(337, 72, 13, 0, 0, 0, '2015-01-13 17:02:39', '2015-01-13 17:02:39'),
(338, 81, 13, 0, 0, 0, '2015-01-13 17:11:01', '2015-01-13 17:11:01'),
(339, 81, 13, 0, 0, 0, '2015-01-13 17:11:14', '2015-01-13 17:11:14'),
(340, 93, 13, 0, 0, 0, '2015-01-13 17:41:16', '2015-01-13 17:41:16'),
(341, 91, 13, 0, 0, 0, '2015-01-14 13:53:13', '2015-01-14 13:53:13'),
(342, 94, 23, 0, 100, 0, '2015-01-14 14:19:37', '2015-01-14 14:19:37'),
(343, 94, 18, 0, 150, 0, '2015-01-14 14:19:37', '2015-01-14 14:19:37'),
(344, 92, 13, 0, 0, 0, '2015-01-14 18:46:55', '2015-01-14 18:46:55'),
(345, 89, 13, 0, 0, 0, '2015-01-15 15:26:33', '2015-01-15 15:26:33'),
(346, 77, 13, 0, 0, 0, '2015-01-15 15:34:36', '2015-01-15 15:34:36'),
(347, 93, 13, 0, 0, 0, '2015-01-15 16:19:04', '2015-01-15 16:19:04'),
(348, 95, 13, 0, 0, 0, '2015-01-15 17:39:52', '2015-01-15 17:39:52'),
(349, 81, 13, 0, 0, 0, '2015-01-15 17:41:33', '2015-01-15 17:41:33'),
(350, 91, 13, 0, 0, 0, '2015-01-17 14:58:26', '2015-01-17 14:58:26'),
(351, 96, 23, 0, 100, 0, '2015-01-17 16:57:34', '2015-01-17 16:57:34'),
(352, 96, 18, 0, 150, 0, '2015-01-17 16:57:34', '2015-01-17 16:57:34'),
(353, 95, 13, 0, 0, 0, '2015-01-17 17:05:20', '2015-01-17 17:05:20'),
(354, 92, 13, 0, 0, 0, '2015-01-17 17:24:39', '2015-01-17 17:24:39'),
(355, 77, 13, 0, 0, 0, '2015-01-18 14:58:59', '2015-01-18 14:58:59'),
(356, 93, 13, 0, 0, 0, '2015-01-18 15:04:05', '2015-01-18 15:04:05'),
(357, 72, 13, 0, 0, 0, '2015-01-18 15:34:21', '2015-01-18 15:34:21'),
(358, 98, 18, 0, 150, 0, '2015-01-19 14:21:30', '2015-01-19 14:21:30'),
(359, 98, 23, 0, 100, 0, '2015-01-19 14:21:30', '2015-01-19 14:21:30'),
(360, 97, 13, 0, 0, 0, '2015-01-19 15:04:07', '2015-01-19 15:04:07'),
(361, 91, 13, 0, 0, 0, '2015-01-19 15:19:59', '2015-01-19 15:19:59'),
(362, 92, 13, 0, 0, 0, '2015-01-19 19:29:30', '2015-01-19 19:29:30'),
(363, 99, 13, 0, 0, 0, '2015-01-19 19:34:05', '2015-01-19 19:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE IF NOT EXISTS `receipts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `patient_id`, `cash`, `created_at`, `updated_at`) VALUES
(22, 21, 200, '2014-08-04 19:38:24', '2014-08-04 19:38:24'),
(23, 22, 500, '2014-08-09 12:53:59', '2014-08-09 12:53:59'),
(24, 22, 300, '2014-08-11 16:16:42', '2014-08-11 16:16:42'),
(25, 21, 200, '2014-08-11 16:24:53', '2014-08-11 16:24:53'),
(26, 23, 100, '2014-08-11 16:31:26', '2014-08-11 16:31:26'),
(27, 23, 3500, '2014-08-11 16:32:25', '2014-08-11 16:32:25'),
(28, 24, 400, '2014-08-12 18:10:58', '2014-08-12 18:10:58'),
(29, 21, 200, '2014-08-13 17:34:29', '2014-08-13 17:34:29'),
(32, 27, 100, '2014-08-15 18:16:07', '2014-08-15 18:16:07'),
(33, 28, 100, '2014-08-19 18:47:50', '2014-08-19 18:47:50'),
(34, 28, 400, '2014-08-19 18:50:24', '2014-08-19 18:50:24'),
(35, 21, 200, '2014-08-23 17:34:57', '2014-08-23 17:34:57'),
(36, 28, 2500, '2014-08-24 14:55:50', '2014-08-24 14:55:50'),
(37, 21, 200, '2014-08-24 19:01:47', '2014-08-24 19:01:47'),
(38, 29, 200, '2014-08-27 18:35:53', '2014-08-27 18:35:53'),
(39, 31, 200, '2014-08-27 18:42:44', '2014-08-27 18:42:44'),
(40, 32, 1100, '2014-08-31 13:14:06', '2014-08-31 13:14:06'),
(41, 31, 800, '2014-08-31 17:33:54', '2014-08-31 17:33:54'),
(42, 21, 150, '2014-08-31 18:13:53', '2014-08-31 18:13:53'),
(43, 21, 150, '2014-09-06 16:27:39', '2014-09-06 16:27:39'),
(44, 31, 500, '2014-09-07 18:44:51', '2014-09-07 18:44:51'),
(45, 21, 200, '2014-09-09 18:42:25', '2014-09-09 18:42:25'),
(46, 21, 150, '2014-09-20 11:11:10', '2014-09-20 11:11:10'),
(47, 33, 3000, '2014-09-25 17:25:16', '2014-09-25 17:25:16'),
(48, 21, 150, '2014-09-25 17:52:51', '2014-09-25 17:52:51'),
(49, 34, 200, '2014-10-08 17:07:03', '2014-10-08 17:07:03'),
(50, 21, 150, '2014-10-08 18:04:00', '2014-10-08 18:04:00'),
(51, 34, 100, '2014-10-08 19:49:55', '2014-10-08 19:49:55'),
(52, 34, 200, '2014-10-09 16:07:51', '2014-10-09 16:07:51'),
(53, 35, 100, '2014-10-12 18:08:54', '2014-10-12 18:08:54'),
(54, 21, 150, '2014-10-12 19:17:23', '2014-10-12 19:17:23'),
(55, 35, 1000, '2014-10-19 12:53:53', '2014-10-19 12:53:53'),
(56, 36, 100, '2014-10-22 17:32:25', '2014-10-22 17:32:25'),
(57, 21, 150, '2014-10-25 18:15:25', '2014-10-25 18:15:25'),
(58, 37, 150, '2014-10-30 21:44:36', '2014-10-30 21:44:36'),
(59, 38, 100, '2014-11-08 16:36:36', '2014-11-08 16:36:36'),
(60, 38, 100, '2014-11-08 19:56:47', '2014-11-08 19:56:47'),
(61, 39, 300, '2014-11-09 17:49:52', '2014-11-09 17:49:52'),
(62, 40, 300, '2014-11-09 17:51:05', '2014-11-09 17:51:05'),
(63, 41, 300, '2014-11-10 16:16:27', '2014-11-10 16:16:27'),
(64, 35, 900, '2014-11-12 12:54:05', '2014-11-12 12:54:05'),
(65, 42, 100, '2014-11-12 15:47:43', '2014-11-12 15:47:43'),
(66, 43, 100, '2014-11-16 17:11:12', '2014-11-16 17:11:12'),
(67, 43, 500, '2014-11-16 18:47:22', '2014-11-16 18:47:22'),
(68, 43, 200, '2014-11-16 18:49:07', '2014-11-16 18:49:07'),
(69, 49, 150, '2014-11-17 18:21:09', '2014-11-17 18:21:09'),
(70, 42, 50, '2014-11-20 18:04:42', '2014-11-20 18:04:42'),
(71, 52, 300, '2014-11-20 18:54:29', '2014-11-20 18:54:29'),
(72, 43, 500, '2014-11-20 19:24:53', '2014-11-20 19:24:53'),
(73, 21, 300, '2014-11-23 18:49:29', '2014-11-23 18:49:29'),
(74, 55, 300, '2014-11-24 15:37:47', '2014-11-24 15:37:47'),
(75, 43, 100, '2014-11-24 19:28:37', '2014-11-24 19:28:37'),
(76, 58, 300, '2014-11-25 15:01:28', '2014-11-25 15:01:28'),
(77, 59, 100, '2014-11-25 15:56:21', '2014-11-25 15:56:21'),
(78, 60, 300, '2014-11-26 14:59:00', '2014-11-26 14:59:00'),
(79, 61, 300, '2014-11-27 18:17:52', '2014-11-27 18:17:52'),
(80, 59, 500, '2014-11-29 17:52:43', '2014-11-29 17:52:43'),
(81, 62, 400, '2014-11-29 19:30:18', '2014-11-29 19:30:18'),
(83, 43, 100, '2014-12-01 19:13:26', '2014-12-01 19:13:26'),
(84, 59, 500, '2014-12-06 17:28:27', '2014-12-06 17:28:27'),
(85, 65, 100, '2014-12-08 16:13:34', '2014-12-08 16:13:34'),
(86, 66, 100, '2014-12-08 18:57:53', '2014-12-08 18:57:53'),
(87, 68, 250, '2014-12-10 18:55:25', '2014-12-10 18:55:25'),
(88, 59, 500, '2014-12-13 19:12:58', '2014-12-13 19:12:58'),
(89, 69, 250, '2014-12-14 15:16:01', '2014-12-14 15:16:01'),
(90, 70, 250, '2014-12-14 15:16:52', '2014-12-14 15:16:52'),
(91, 71, 75, '2014-12-14 16:44:58', '2014-12-14 16:44:58'),
(92, 42, 50, '2014-12-25 16:12:21', '2014-12-25 16:12:21'),
(93, 24, 150, '2014-12-25 18:00:42', '2014-12-25 18:00:42'),
(94, 78, 250, '2014-12-27 15:07:01', '2014-12-27 15:07:01'),
(95, 80, 250, '2014-12-28 15:11:04', '2014-12-28 15:11:04'),
(96, 82, 250, '2014-12-28 17:50:33', '2014-12-28 17:50:33'),
(97, 82, 250, '2014-12-28 19:23:21', '2014-12-28 19:23:21'),
(98, 83, 250, '2014-12-29 14:51:21', '2014-12-29 14:51:21'),
(99, 43, 500, '2014-12-29 16:15:57', '2014-12-29 16:15:57'),
(100, 86, 250, '2014-12-31 19:30:47', '2014-12-31 19:30:47'),
(101, 21, 250, '2014-12-31 20:01:46', '2014-12-31 20:01:46'),
(102, 87, 150, '2015-01-04 17:58:29', '2015-01-04 17:58:29'),
(103, 66, 100, '2015-01-04 18:17:26', '2015-01-04 18:17:26'),
(104, 63, 100, '2015-01-08 17:51:07', '2015-01-08 17:51:07'),
(105, 94, 250, '2015-01-14 14:18:08', '2015-01-14 14:18:08'),
(106, 96, 250, '2015-01-17 16:56:50', '2015-01-17 16:56:50'),
(107, 98, 250, '2015-01-19 14:20:11', '2015-01-19 14:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `category_id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(9, 1, 'gym', 150, '2014-07-24 17:34:26', '2014-07-24 17:34:26'),
(10, 1, 'ultavilot session', 75, '2014-07-24 17:35:05', '2014-07-24 17:35:05'),
(11, 3, 'normal obesity session', 100, '2014-07-24 17:36:04', '2014-07-24 17:36:04'),
(12, 1, 'p.t private', 150, '2014-08-03 13:35:38', '2014-08-03 13:35:38'),
(13, 2, 'p.t group', 25, '2014-08-03 13:36:52', '2014-08-03 13:36:52'),
(15, 3, 'cav & rf', 400, '2014-08-03 13:41:34', '2014-08-03 13:41:34'),
(16, 1, 'radiant rf', 400, '2014-08-03 13:42:23', '2014-08-03 13:42:23'),
(17, 1, 'laser physical therapy session', 150, '2014-08-03 13:43:29', '2014-08-03 13:43:29'),
(18, 1, 'massage1', 150, '2014-08-04 19:44:10', '2014-08-04 19:44:10'),
(19, 4, 'manual massage', 300, '2014-08-04 19:44:39', '2014-08-04 19:44:39'),
(20, 4, 'sauna and morrocosh bath', 200, '2014-08-04 19:48:38', '2014-08-04 19:48:38'),
(21, 1, 'mezo 500', 500, '2014-08-09 13:12:40', '2014-08-09 13:12:40'),
(22, 1, 'free session ', 1, '2014-08-09 13:13:31', '2014-08-09 13:13:31'),
(23, 3, 'sauna', 100, '2014-08-11 16:13:04', '2014-08-11 16:13:04'),
(24, 3, 'wrapping for sliming and tens the skin', 50, '2014-08-11 16:14:42', '2014-08-11 16:14:42'),
(25, 4, 'massage and morrocosh bath', 200, '2014-08-11 16:28:04', '2014-08-11 16:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `session_details`
--

CREATE TABLE IF NOT EXISTS `session_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `machine_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `session_details`
--

INSERT INTO `session_details` (`id`, `session_id`, `machine_id`, `created_at`, `updated_at`) VALUES
(22, 9, 16, '2014-07-24 17:34:26', '2014-07-24 17:34:26'),
(23, 9, 17, '2014-07-24 17:34:26', '2014-07-24 17:34:26'),
(24, 9, 18, '2014-07-24 17:34:26', '2014-07-24 17:34:26'),
(25, 9, 19, '2014-07-24 17:34:26', '2014-07-24 17:34:26'),
(26, 10, 15, '2014-07-24 17:35:05', '2014-07-24 17:35:05'),
(27, 11, 5, '2014-07-24 17:36:04', '2014-07-24 17:36:04'),
(28, 11, 11, '2014-07-24 17:36:04', '2014-07-24 17:36:04'),
(29, 11, 12, '2014-07-24 17:36:04', '2014-07-24 17:36:04'),
(30, 12, 2, '2014-08-03 13:35:38', '2014-08-03 13:35:38'),
(31, 12, 6, '2014-08-03 13:35:38', '2014-08-03 13:35:38'),
(32, 12, 7, '2014-08-03 13:35:38', '2014-08-03 13:35:38'),
(33, 12, 9, '2014-08-03 13:35:38', '2014-08-03 13:35:38'),
(34, 13, 2, '2014-08-03 13:36:52', '2014-08-03 13:36:52'),
(35, 13, 5, '2014-08-03 13:36:52', '2014-08-03 13:36:52'),
(36, 13, 9, '2014-08-03 13:36:52', '2014-08-03 13:36:52'),
(37, 13, 13, '2014-08-03 13:36:52', '2014-08-03 13:36:52'),
(42, 15, 1, '2014-08-03 13:41:34', '2014-08-03 13:41:34'),
(43, 15, 5, '2014-08-03 13:41:34', '2014-08-03 13:41:34'),
(44, 15, 11, '2014-08-03 13:41:34', '2014-08-03 13:41:34'),
(45, 16, 4, '2014-08-03 13:42:23', '2014-08-03 13:42:23'),
(46, 16, 5, '2014-08-03 13:42:23', '2014-08-03 13:42:23'),
(47, 16, 11, '2014-08-03 13:42:23', '2014-08-03 13:42:23'),
(48, 17, 6, '2014-08-03 13:43:29', '2014-08-03 13:43:29'),
(49, 17, 7, '2014-08-03 13:43:29', '2014-08-03 13:43:29'),
(50, 18, 3, '2014-08-04 19:44:10', '2014-08-04 19:44:10'),
(51, 19, 3, '2014-08-04 19:44:39', '2014-08-04 19:44:39'),
(52, 20, 3, '2014-08-04 19:48:38', '2014-08-04 19:48:38'),
(53, 21, 20, '2014-08-09 13:12:40', '2014-08-09 13:12:40'),
(54, 22, 3, '2014-08-09 13:13:31', '2014-08-09 13:13:31'),
(55, 23, 3, '2014-08-11 16:13:04', '2014-08-11 16:13:04'),
(56, 24, 5, '2014-08-11 16:14:42', '2014-08-11 16:14:42'),
(57, 25, 3, '2014-08-11 16:28:04', '2014-08-11 16:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `sys_opt`
--

CREATE TABLE IF NOT EXISTS `sys_opt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sys_opt`
--

INSERT INTO `sys_opt` (`id`, `name`, `value`) VALUES
(1, 'examin-cash', '100');

-- --------------------------------------------------------

--
-- Table structure for table `thight_left`
--

CREATE TABLE IF NOT EXISTS `thight_left` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `below_a_1` varchar(20) NOT NULL,
  `below_a_2` varchar(20) NOT NULL,
  `below_5_1` varchar(20) NOT NULL,
  `below_5_2` varchar(20) NOT NULL,
  `below_10_1` varchar(20) NOT NULL,
  `below_10_2` varchar(20) NOT NULL,
  `below_15_1` varchar(20) NOT NULL,
  `below_15_2` varchar(20) NOT NULL,
  `below_20_1` varchar(20) NOT NULL,
  `below_20_2` varchar(20) NOT NULL,
  `total_1` varchar(20) NOT NULL,
  `total_2` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `thight_right`
--

CREATE TABLE IF NOT EXISTS `thight_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `below_a_1` varchar(20) NOT NULL,
  `below_a_2` varchar(20) NOT NULL,
  `below_5_1` varchar(20) NOT NULL,
  `below_5_2` varchar(20) NOT NULL,
  `below_10_1` varchar(20) NOT NULL,
  `below_10_2` varchar(20) NOT NULL,
  `below_15_1` varchar(20) NOT NULL,
  `below_15_2` varchar(20) NOT NULL,
  `below_20_1` varchar(20) NOT NULL,
  `below_20_2` varchar(20) NOT NULL,
  `total_1` varchar(20) NOT NULL,
  `total_2` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  `password_temp` varchar(60) NOT NULL,
  `code` varchar(60) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `role` varchar(15) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `display_name`, `phone`, `password`, `password_temp`, `code`, `active`, `created_at`, `updated_at`, `role`, `remember_token`) VALUES
(1, 'ebrahim_sakr2005@yahoo.com', 'root', 'Admin', '01118718763', '$2y$10$lhkfgbhBsb4i3akHzoRHheeU2VRRdyzpLtHHybTu/d.8s6IUwrOeG', '', '', 1, '2014-06-09 14:48:01', '2015-01-14 14:04:45', 'admin', '9C48bNo70AvRPE9Xf9ZwsEdXBVqfupuCtwygPyS9ZPSNnXV7HT3z6he8UY5V'),
(4, 'mamdouhisone@hotmail.com', 'Mohamed Mamdouh', 'Mamdo7', '01225595552', '$2y$10$jOqyWVKUzkBXMDJxDH6.SedXSt9Tgn.KYQ9.DF7QsyuiMLygkOxWi', '', '', 1, '2014-06-18 08:03:51', '2014-06-18 08:10:03', 'admin', ''),
(5, 'dr_yaso_pt@yahoo.com', 'Yasser Elmedany', 'Yasser Elmedany', '123456789', '$2y$10$tj5gHhNuvyFa5e7I7T9peeh0D7TMVWAaLhHTDQCVRrQS8abvdTUlG', '', '', 1, '2014-06-30 16:16:04', '2014-08-11 18:57:17', 'doctor', 'h7BZ6J4CpCXSPXBo3sEeALF7qtWfBpA4GDCVzxfCJ5VgrHBgUXbmGeH8n4Xb'),
(7, 'shoroukroka18@yahoo.com', 'shorouk ', 'shorouk', '01093909611', '$2y$10$fw.EwU55vM4YFXuHtvvof.zSHElGB992tsPscVVkXzf8TfIVywoDq', '', '', 1, '2014-07-05 21:04:27', '2015-01-19 19:34:30', 'secretary', 'Qy87SHVhoyZOCJqKZNInG9uh4Xd3IGhJR5xyD7yMcbzQUU0KOfZGXaCrVBxS'),
(8, 'ebrahim_sakr2005@yahoo.com', 'test', 'AdminTest', '01118718763', '$2y$10$lhkfgbhBsb4i3akHzoRHheeU2VRRdyzpLtHHybTu/d.8s6IUwrOeG', '', '', 1, '2014-06-09 14:48:01', '2015-01-14 14:01:57', 'admin', 'vky4oGyvkXwqVGiGqsPqinAw7pl4sCM4fU8kHJE3uYe0swnaQiW6V7javyRP');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE IF NOT EXISTS `user_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `user_id`, `name`, `value`) VALUES
(1, 1, 'calendar_view', 'month'),
(2, 7, 'calendar_view', 'month'),
(3, 8, 'calendar_view', 'month');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
