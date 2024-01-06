-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2022 at 10:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-pharmacy`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `category wise product`
-- (See below for the actual view)
--
CREATE TABLE `category wise product` (
`cat_name` varchar(30)
,`pro_name` varchar(50)
,`price` float
,`qty` int(5)
);

-- --------------------------------------------------------

--
-- Table structure for table `category_mst`
--

CREATE TABLE `category_mst` (
  `cat_id` int(5) NOT NULL,
  `cat_name` varchar(30) NOT NULL,
  `pro_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_mst`
--

INSERT INTO `category_mst` (`cat_id`, `cat_name`, `pro_id`) VALUES
(1, 'Ayurvedic Care', NULL),
(2, 'Covid Essentials', NULL),
(3, 'Healthcare Devices', NULL),
(4, 'Personal Care', NULL),
(5, 'Skin Care', NULL),
(6, 'Surgicals and Dressings', NULL),
(8, 'Diabetic Care', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `date wise order`
-- (See below for the actual view)
--
CREATE TABLE `date wise order` (
`f_name` varchar(20)
,`address` varchar(100)
,`order_date_time` timestamp
,`o_status` varchar(10)
,`total` int(5)
,`qty` int(3)
,`price` int(8)
,`pro_name` varchar(50)
,`usertype_id` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `expiry date wise product`
-- (See below for the actual view)
--
CREATE TABLE `expiry date wise product` (
`pro_name` varchar(50)
,`qty` int(5)
,`price` float
,`exp_date` date
);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_mst`
--

CREATE TABLE `feedback_mst` (
  `fid` int(5) NOT NULL,
  `rating` int(1) DEFAULT NULL,
  `date_time` timestamp NULL DEFAULT current_timestamp(),
  `details` varchar(100) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `pro_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback_mst`
--

INSERT INTO `feedback_mst` (`fid`, `rating`, `date_time`, `details`, `user_id`, `pro_id`) VALUES
(2, 5, '2022-04-06 06:45:30', 'Used more than a mnth. i recommend to give a try.', 7, 42),
(3, 4, '2022-04-06 06:48:47', 'These tablets are odourless and tiny so they are easy to swallow', 9, 45),
(4, 1, '2022-04-06 06:51:36', 'Waste of money, doesnt work ', 10, 36),
(5, 4, '2022-04-06 06:54:03', 'i m happy with this product... 😊😊', 8, 59),
(6, 5, '2022-04-06 06:55:18', 'Original product. Very fast delivery.', 16, 16),
(7, 4, '2022-04-06 06:59:16', 'Wonderful product..my mother feels good just using this product one at a time...she recommended this', 18, 4),
(8, 5, '2022-04-06 07:00:05', 'Price is very cheap', 17, 44),
(9, 4, '2022-04-06 07:05:22', 'Best at this price.\r\nBut the packaging can be more better.\r\n', 19, 30),
(10, 5, '2022-04-06 07:06:14', 'Best hygienic product ❤️', 20, 14),
(11, 5, '2022-04-06 07:07:05', 'This comes with an unique design and sleek glass top, light weight, very easy to use, accurate readi', 21, 23),
(12, 5, '2022-04-06 07:14:45', 'Quick and accurate delivery, product packaging', 23, 71),
(13, 4, '2022-04-06 07:17:16', 'it is amazing cream', 22, 43),
(14, 5, '2022-04-06 07:18:23', 'Mild sleep inducer', 23, 45),
(15, 5, '2022-04-06 07:22:11', 'Best watch for workout', 4, 30),
(16, 1, '2022-04-06 07:23:59', 'Not worth it\r\n', 7, 60);

-- --------------------------------------------------------

--
-- Table structure for table `img_mst`
--

CREATE TABLE `img_mst` (
  `img_id` int(5) NOT NULL,
  `img_path` varchar(100) NOT NULL,
  `pro_id` int(5) DEFAULT NULL,
  `ord_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `img_mst`
--

INSERT INTO `img_mst` (`img_id`, `img_path`, `pro_id`, `ord_id`) VALUES
(1, '../upload/Honitus.png', 1, NULL),
(3, '../upload/Kayam.jpg', 3, NULL),
(4, '../upload/giloy.jpg', 4, NULL),
(5, '../upload/ChayawanPrash.png', 5, NULL),
(6, '../upload/Cartigen.png', 6, NULL),
(7, '../upload/Honitus.png', 7, NULL),
(8, '../upload/pantajali.png', 8, NULL),
(9, '../upload/Ime.png', 9, NULL),
(10, '../upload/OraganicTulsi.png', 10, NULL),
(11, '../upload/vico turmeric.jpg', 11, NULL),
(12, '../upload/N95.png', 12, NULL),
(13, '../upload/Faceshiedl.jpg', 13, NULL),
(14, '../upload/wipes.png', 14, NULL),
(15, '../upload/savlon.jpg', 15, NULL),
(16, '../upload/Dettol.png', 16, NULL),
(17, '../upload/dettolPink.png', 17, NULL),
(18, '../upload/gloves.png', 18, NULL),
(19, '../upload/disinfectSavlon.png', 19, NULL),
(20, '../upload/Panbio.jpg', 20, NULL),
(21, '../upload/Himalaya.jpg', 21, NULL),
(22, '../upload/immune.jpg', 22, NULL),
(23, '../upload/weighmachine.jpg', 23, NULL),
(24, '../upload/thermometer.jpg', 24, NULL),
(25, '../upload/Accu-check.jpg', 25, NULL),
(26, '../upload/Bp.jpg', 26, NULL),
(27, '../upload/Oximeter.jpg', 27, NULL),
(28, '../upload/VisscoCycle.png', 28, NULL),
(29, '../upload/NewThermometer.jpg', 29, NULL),
(30, '../upload/GarminWatch.png', 30, NULL),
(31, '../upload/sansuiwiegh.jpg', 31, NULL),
(32, '../upload/bp1.jpg', 32, NULL),
(33, '../upload/AdultDiaper.png', 33, NULL),
(34, '../upload/Antidandruf.jpg', 34, NULL),
(35, '../upload/dermicool.png', 35, NULL),
(36, '../upload/indulekha.jpg', 36, NULL),
(37, '../upload/LactoOil.png', 37, NULL),
(38, '../upload/listrine.jpg', 38, NULL),
(39, '../upload/navratna.png', 39, NULL),
(40, '../upload/Nivea.png', 40, NULL),
(41, '../upload/veet.png', 41, NULL),
(42, '../upload/Shaving_Cream.jpg', 42, NULL),
(43, '../upload/Boroline.jpg', 43, NULL),
(44, '../upload/Emolene.png', 44, NULL),
(45, '../upload/Evion.png', 45, NULL),
(46, '../upload/FacialWipes.jpg', 46, NULL),
(47, '../upload/Guklabri.png', 47, NULL),
(48, '../upload/Ointment.jpg', 48, NULL),
(49, '../upload/SheetMask.png', 49, NULL),
(50, '../upload/SkinCare.jpg', 50, NULL),
(51, '../upload/soframy.jpg', 51, NULL),
(52, '../upload/glycerin.jpg', 52, NULL),
(53, '../upload/cotton.jpg', 53, NULL),
(54, '../upload/surgical_tape.jpg', 54, NULL),
(55, '../upload/dressing_drum.jpg', 55, NULL),
(56, '../upload/Paper_tape.jpg', 56, NULL),
(57, '../upload/Gauze_swabs.jpg', 57, NULL),
(58, '../upload/Adhesive_Bandage.jpg', 58, NULL),
(59, '../upload/surgical_scissor.jpg', 59, NULL),
(60, '../upload/First_Aid.jpg', 60, NULL),
(61, '../upload/Washproof_bandage.jpg', 61, NULL),
(62, '../upload/roller_bandage.jpg', 62, NULL),
(63, '../upload/kapiva_dia.jpg', 63, NULL),
(64, '../upload/ActiFiber.jpg', 64, NULL),
(65, '../upload/Jamun_juice.jpg', 65, NULL),
(66, '../upload/Ensure_care.jpg', 66, NULL),
(67, '../upload/Atta.jpg', 67, NULL),
(68, '../upload/testley_tea.jpg', 68, NULL),
(69, '../upload/Sugarfree_gold.jpg', 69, NULL),
(70, '../upload/Chamaprakash.jpg', 70, NULL),
(71, '../upload/Sugarfree_choclate.jpg', 71, NULL),
(72, '../upload/tablets.jpg', 72, NULL),
(73, '../upload/Oximeter.jpg', NULL, 16),
(74, '../upload/Bp.jpg', NULL, 17),
(75, '../upload/N95.png', NULL, 18),
(76, '../upload/Faceshiedl.jpg', NULL, 19),
(77, '../upload/Faceshiedl.jpg', NULL, 20),
(78, '../upload/Faceshiedl.jpg', NULL, 40),
(79, '../upload/N95.png', NULL, 41),
(80, '../upload/Accu-check.jpg', NULL, 42),
(81, '../upload/PPE.jpg', 73, NULL),
(82, '../upload/AdultDiaper.png', NULL, 45),
(83, '../upload/sansuiwiegh.jpg', NULL, 46),
(84, '../upload/dressing_drum.jpg', NULL, 49),
(85, '../upload/Gauze_swabs.jpg', NULL, 50),
(86, '../upload/Sugarfree_choclate.jpg', NULL, 51),
(87, '../upload/Atta.jpg', NULL, 52),
(88, '../upload/Adhesive_Bandage.jpg', NULL, 53),
(89, '../upload/Honitus.png', NULL, 55),
(90, '../upload/Kayam.jpg', NULL, 76);

-- --------------------------------------------------------

--
-- Table structure for table `order_description`
--

CREATE TABLE `order_description` (
  `desc_id` int(5) NOT NULL,
  `pro_name` varchar(15) NOT NULL,
  `qty` int(3) NOT NULL,
  `order_id` int(5) NOT NULL,
  `price` int(8) NOT NULL,
  `pro_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_description`
--

INSERT INTO `order_description` (`desc_id`, `pro_name`, `qty`, `order_id`, `price`, `pro_id`) VALUES
(1, '', 1, 1, 100, 12),
(2, '', 3, 2, 200, 39),
(3, '', 1, 3, 2500, 30),
(4, '', 1, 4, 50, 11),
(5, '', 4, 5, 800, 27),
(6, '', 1, 6, 238, 65),
(7, '', 2, 7, 250, 42),
(8, '', 1, 8, 1120, 60),
(9, '', 3, 9, 250, 13),
(10, '', 1, 10, 250, 59),
(11, '', 1, 11, 999, 55),
(12, '', 1, 12, 429, 56),
(13, '', 2, 13, 200, 16),
(14, '', 1, 14, 230, 49),
(41, 'Face Shield ', 100, 40, 200, 0),
(42, 'N95 mask', 200, 41, 100, 0),
(43, 'Accu-check', 80, 42, 1000, 0),
(46, 'Dignity diapers', 100, 45, 200, 0),
(47, 'Sansui Weightin', 90, 46, 500, 0),
(50, 'Dressing Drum', 80, 49, 250, 0),
(51, 'ASL Guaze swabs', 100, 50, 190, 0),
(52, 'Amul Choclate', 50, 51, 250, 0),
(53, 'Diabexy Atta', 50, 52, 450, 0),
(54, '	 Adhesive band', 90, 53, 280, 0),
(56, 'Dabur Honey', 290, 55, 110, 0),
(57, 'Honey', 100, 56, 250, 0),
(58, 'Mask', 100, 57, 150, 0),
(59, '', 1, 58, 250, 45),
(60, '', 1, 59, 250, 36),
(61, '', 2, 60, 100, 44),
(62, '', 2, 61, 50, 4),
(63, '', 1, 62, 2500, 30),
(64, '', 3, 63, 80, 14),
(65, '', 1, 64, 500, 23),
(66, '', 3, 65, 80, 43),
(67, '', 1, 65, 424, 63),
(68, '', 2, 66, 123, 71),
(69, '', 2, 67, 250, 45),
(70, 'Kayum Churn', 70, 68, 300, 0),
(71, 'Ime -9', 100, 69, 50, 0),
(72, 'Sanitizing Wipe', 60, 70, 80, 0),
(73, 'Savlon Handwash', 100, 71, 150, 0),
(74, 'Immunity Booste', 130, 72, 190, 0),
(75, 'PPE kit', 40, 73, 200, 0),
(76, 'SugarFree Gold', 100, 74, 256, 0),
(77, 'Stevia Tablet ', 100, 75, 390, 0),
(78, 'Kayum Churn', 100, 76, 130, 0),
(79, 'Mask', 1000, 77, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_mst`
--

CREATE TABLE `order_mst` (
  `ord_id` int(5) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `order_date_time` timestamp NULL DEFAULT current_timestamp(),
  `o_status` varchar(10) DEFAULT NULL,
  `total` int(5) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `by_id` int(5) DEFAULT NULL,
  `to_id` int(5) DEFAULT NULL,
  `desc_id` int(5) DEFAULT NULL,
  `payment_id` int(5) DEFAULT NULL,
  `order_details` varchar(100) NOT NULL,
  `shipname` varchar(20) NOT NULL,
  `shipnumber` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_mst`
--

INSERT INTO `order_mst` (`ord_id`, `address`, `order_date_time`, `o_status`, `total`, `type`, `by_id`, `to_id`, `desc_id`, `payment_id`, `order_details`, `shipname`, `shipnumber`) VALUES
(1, 'Keshavnagar NekPur kalan Farrukhabad', '2022-04-05 09:45:47', 'Pending', 100, 'Ord', 4, 6, NULL, NULL, '', 'Shaurabh', 7827191414),
(2, 'near telecom office,Arjunpur,Fatehgarh,UP,205302', '2022-04-05 09:48:18', 'Pending', 600, 'Ord', 4, 6, NULL, NULL, '', 'Akshay Pandey', 7877797079),
(3, 'Keshavnagar NekPur kalan Farrukhabad', '2022-04-05 09:49:33', 'Delivered', 2500, 'Ord', 4, 6, NULL, NULL, '', 'Shaurabh', 7827191414),
(4, 'Sadar Bazar,Delhi Cantt 1100010', '2022-04-05 09:51:32', 'Pending', 50, 'Ord', 5, 6, NULL, NULL, '', 'Rani Shukla', 9890786666),
(5, 'near city public school,Farrukhabad,UP,209625', '2022-04-05 09:52:08', 'Delivered', 3200, 'Ord', 5, 6, NULL, NULL, '', 'Rani Shukla', 9090909090),
(6, 'keshavnagar,Bhuj,kutch,Gujarat 370001', '2022-04-05 09:52:56', 'Cancelled', 238, 'Ord', 5, 6, NULL, NULL, '', 'Rani Shukla', 9898989898),
(7, 'Near Bus depot, Navrangpura, Ahmedabad 370001', '2022-04-05 09:55:20', 'Pending', 500, 'Ord', 7, 6, NULL, NULL, '', 'Akash  Yadav', 7887866468),
(8, 'keshavnagar,Bhuj,kutch,Gujarat 370001', '2022-04-05 09:56:07', 'Delivered', 1120, 'Ord', 7, 6, NULL, NULL, '', 'Akash  Yadav', 9898989898),
(9, 'Sarojini nagar, Delhi 1100056', '2022-04-05 09:57:38', 'Pending', 750, 'Ord', 7, 6, NULL, NULL, '', 'Akash  Yadav', 9000408988),
(10, 'lal darwaja,Farrukhabad,209625\r\n', '2022-04-05 10:00:54', 'Delivered', 250, 'Ord', 8, 6, NULL, NULL, '', 'Ravi Shah', 9825877405),
(11, 'near railway station, Fatehgarh,209638', '2022-04-05 10:02:01', 'Cancelled', 999, 'Ord', 8, 6, NULL, NULL, '', 'Ravi Shah', 9825877405),
(12, 'near telecom office,Arjunpur,Fatehgarh,UP,205302', '2022-04-05 10:02:35', 'Pending', 429, 'Ord', 8, 6, NULL, NULL, '', 'Ravi Shah', 7877797079),
(13, 'Near military hospital,Bhuj,Kutch,3700001', '2022-04-05 10:05:03', 'Delivered', 400, 'Ord', 16, 6, NULL, NULL, '', 'Chavi Srivastava', 9978546025),
(14, 'near militray hospital,bhuj,kutch,3700001', '2022-04-05 10:06:27', 'Pending', 230, 'Ord', 16, 6, NULL, NULL, '', 'Chavi Srivastava', 9978546025),
(40, 'E-Pharmacy, Ahmedabad', '2022-04-05 19:07:53', 'Delivered', 20000, 'Ord', 1, 6, NULL, NULL, '', '', 0),
(42, 'E-Pharmacy, Ahmedabad', '2022-04-05 19:10:11', 'Delivered', 80000, 'Ord', 2, 6, NULL, NULL, '', '', 0),
(46, 'E-Pharmacy, Ahmedabad', '2022-04-06 04:16:09', 'Pending', 45000, 'Ord', 1, 6, NULL, NULL, '', '', 0),
(49, 'E-Pharmacy, Ahmedabad', '2022-04-06 04:51:16', 'Pending', 20000, 'Ord', 2, 6, NULL, NULL, '', '', 0),
(50, 'E-Pharmacy, Ahmedabad', '2022-04-06 04:53:16', 'Delivered', 19000, 'Ord', 2, 6, NULL, NULL, '', '', 0),
(51, 'E-Pharmacy, Ahmedabad', '2022-04-06 04:55:41', 'Pending', 12500, 'Ord', 3, 6, NULL, NULL, '', '', 0),
(52, 'E-Pharmacy, Ahmedabad', '2022-04-06 04:57:39', 'Pending', 22500, 'Ord', 3, 6, NULL, NULL, '', '', 0),
(53, 'E-Pharmacy, Ahmedabad', '2022-04-06 04:59:31', 'Delivered', 25200, 'Ord', 1, 6, NULL, NULL, '', '', 0),
(55, 'E-Pharmacy, Ahmedabad', '2022-04-06 05:42:01', 'Pending', 31900, 'Ord', 3, 6, NULL, NULL, '', '', 0),
(56, 'E-Pharmacy, Ahmedabad', '2022-04-06 05:48:36', 'Delivered', 25000, 'Ord', 6, 1, NULL, NULL, '', '', 0),
(57, 'E-Pharmacy, Ahmedabad', '2022-04-06 05:59:08', 'Pending', 15000, 'Ord', 6, 3, NULL, NULL, '', '', 0),
(58, '88A / 6 Civil Lines, Prayagraj', '2022-04-06 06:46:55', 'Delivered', 250, 'Ord', 9, 6, NULL, NULL, '', 'Priya Kumar', 9635865460),
(59, 'Above krishnadairy, Naranpura, Ahmedabad, 380013', '2022-04-06 06:50:31', 'Delivered', 250, 'Ord', 10, 6, NULL, NULL, '', 'Brijesh Tripathi', 8564202214),
(60, 'pitambar nagar, Prayagraj, 211004\r\n', '2022-04-06 06:56:54', 'Delivered', 200, 'Ord', 17, 6, NULL, NULL, '', 'Ajay Soni', 6587489789),
(61, 'Nehru Nagar, Gaziabad', '2022-04-06 06:57:50', 'Delivered', 100, 'Ord', 18, 6, NULL, NULL, '', 'Divyanshi Yadav', 8825879624),
(62, 'Shantipuram, Noida\r\n', '2022-04-06 07:01:15', 'Delivered', 2500, 'Ord', 19, 6, NULL, NULL, '', 'Dhananjay Singh', 6589879024),
(63, 'Trliyarganj, Prayagraj, 211005\r\n', '2022-04-06 07:02:15', 'Delivered', 240, 'Ord', 20, 6, NULL, NULL, '', 'Pranav Rai', 8160057708),
(64, 'Navrangpura, Ahmedabad\r\n', '2022-04-06 07:03:19', 'Delivered', 500, 'Ord', 21, 6, NULL, NULL, '', 'Herial Jethwani', 8600145770),
(65, 'Zirakpur, Mohali', '2022-04-06 07:12:22', 'Delivered', 664, 'Ord', 22, 6, NULL, NULL, '', 'Amit Trivedi', 8258245878),
(66, 'Phaphamau, Prayagraj\r\n', '2022-04-06 07:13:05', 'Delivered', 246, 'Ord', 23, 6, NULL, NULL, '', 'Abhay Diwwedi', 8974561415),
(67, 'Phaphamau, Prayagraj', '2022-04-06 07:15:27', 'Delivered', 500, 'Ord', 23, 6, NULL, NULL, '', 'Abhay Diwwedi', 8974561415),
(68, 'E-Pharmacy, Ahmedabad', '2022-04-06 08:28:25', 'Delivered', 21000, 'Ord', 6, 2, NULL, NULL, 'Send 500g products ', '', 0),
(69, 'E-Pharmacy, Ahmedabad', '2022-04-06 08:29:04', 'Pending', 5000, 'Ord', 6, 3, NULL, NULL, '', '', 0),
(70, 'E-Pharmacy, Ahmedabad', '2022-04-06 08:48:53', 'Delivered', 4800, 'Ord', 6, 1, NULL, NULL, '', '', 0),
(71, 'E-Pharmacy, Ahmedabad', '2022-04-06 08:49:21', 'Pending', 15000, 'Ord', 6, 2, NULL, NULL, '', '', 0),
(72, 'E-Pharmacy, Ahmedabad', '2022-04-06 08:49:54', 'Pending', 24700, 'Ord', 6, 3, NULL, NULL, '', '', 0),
(73, 'E-Pharmacy, Ahmedabad', '2022-04-06 08:50:27', 'Delivered', 8000, 'Ord', 6, 29, NULL, NULL, '', '', 0),
(74, 'E-Pharmacy, Ahmedabad', '2022-04-06 08:56:25', 'Pending', 25600, 'Ord', 6, 1, NULL, NULL, '', '', 0),
(75, 'E-Pharmacy, Ahmedabad', '2022-04-06 09:23:50', 'Delivered', 39000, 'Ord', 6, 2, NULL, NULL, '', '', 0),
(76, 'E-Pharmacy, Ahmedabad', '2022-04-06 09:43:49', 'Pending', 13000, 'Ord', 1, 6, NULL, NULL, '', '', 0),
(77, NULL, '2022-04-06 19:23:36', 'Pending', NULL, 'Req', 6, 1, NULL, NULL, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_mst`
--

CREATE TABLE `payment_mst` (
  `pay_id` int(5) NOT NULL,
  `price` int(10) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_id` int(5) NOT NULL,
  `method` varchar(10) NOT NULL,
  `status` varchar(15) NOT NULL,
  `user_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_mst`
--

INSERT INTO `payment_mst` (`pay_id`, `price`, `date_time`, `order_id`, `method`, `status`, `user_id`) VALUES
(1, 100, '2022-04-05 09:45:48', 1, 'COD', 'Pending', 4),
(2, 600, '2022-04-05 09:48:18', 2, 'COD', 'Pending', 4),
(3, 2500, '2022-04-05 09:49:34', 3, 'COD', 'Pending', 4),
(4, 50, '2022-04-05 09:51:33', 4, 'COD', 'Pending', 5),
(5, 3200, '2022-04-05 09:52:08', 5, 'COD', 'Pending', 5),
(6, 238, '2022-04-05 09:52:57', 6, 'COD', 'Pending', 5),
(7, 250, '2022-04-05 09:55:20', 7, 'COD', 'Pending', 7),
(8, 1120, '2022-04-05 09:56:07', 8, 'COD', 'Pending', 7),
(9, 750, '2022-04-05 09:57:39', 9, 'COD', 'Pending', 7),
(10, 250, '2022-04-05 10:00:54', 10, 'COD', 'Pending', 8),
(11, 999, '2022-04-05 10:02:01', 11, 'COD', 'Pending', 8),
(12, 429, '2022-04-05 10:02:35', 12, 'COD', 'Pending', 8),
(13, 400, '2022-04-05 10:05:03', 13, 'COD', 'Pending', 16),
(14, 230, '2022-04-05 10:06:27', 14, 'COD', 'Pending', 16),
(15, 480, '2022-04-05 10:07:58', 15, 'COD', 'Pending', 16),
(16, 50000, '2022-04-05 10:24:26', 16, 'COD', 'Pending', 6),
(17, 9000, '2022-04-05 15:51:48', 18, 'COD', 'Pending', 6),
(18, 30000, '2022-04-05 15:59:15', 20, 'COD', 'Pending', 6),
(19, 20000, '2022-04-05 19:10:51', 40, 'COD', 'Pending', 6),
(20, 80000, '2022-04-05 19:11:27', 42, 'COD', 'Pending', 6),
(21, 45000, '2022-04-06 04:16:50', 46, 'COD', 'Pending', 6),
(22, 20000, '2022-04-06 04:51:44', 49, 'COD', 'Pending', 6),
(23, 19000, '2022-04-06 04:53:46', 50, 'COD', 'Pending', 6),
(24, 12500, '2022-04-06 04:56:04', 51, 'COD', 'Pending', 6),
(25, 22500, '2022-04-06 04:58:03', 52, 'COD', 'Pending', 6),
(26, 25200, '2022-04-06 05:00:11', 53, 'COD', 'Pending', 6),
(27, 15000, '2022-04-06 05:59:33', 57, 'COD', 'Pending', 6),
(28, 250, '2022-04-06 06:46:56', 58, 'COD', 'Pending', 9),
(29, 250, '2022-04-06 06:50:31', 59, 'COD', 'Pending', 10),
(30, 200, '2022-04-06 06:56:54', 60, 'COD', 'Pending', 17),
(31, 100, '2022-04-06 06:57:50', 61, 'COD', 'Pending', 18),
(32, 2500, '2022-04-06 07:01:15', 62, 'COD', 'Pending', 19),
(33, 240, '2022-04-06 07:02:16', 63, 'COD', 'Pending', 20),
(34, 500, '2022-04-06 07:03:19', 64, 'COD', 'Pending', 21),
(35, 664, '2022-04-06 07:12:22', 65, 'COD', 'Pending', 22),
(36, 246, '2022-04-06 07:13:05', 66, 'COD', 'Pending', 23),
(37, 500, '2022-04-06 07:15:27', 67, 'COD', 'Pending', 23),
(38, 25000, '2022-04-06 08:26:02', 56, 'COD', 'Pending', 6),
(39, 31900, '2022-04-06 08:27:04', 55, 'COD', 'Pending', 6),
(40, 21000, '2022-04-06 08:34:40', 68, 'COD', 'Pending', 6),
(41, 5000, '2022-04-06 08:34:54', 69, 'COD', 'Pending', 6),
(42, 4800, '2022-04-06 08:53:23', 70, 'COD', 'Pending', 6),
(43, 15000, '2022-04-06 08:53:41', 71, 'COD', 'Pending', 6),
(44, 24700, '2022-04-06 08:53:48', 72, 'COD', 'Pending', 6),
(45, 8000, '2022-04-06 08:55:03', 73, 'COD', 'Pending', 6),
(46, 25600, '2022-04-06 08:57:28', 74, 'COD', 'Pending', 6),
(47, 39000, '2022-04-06 09:25:25', 75, 'COD', 'Pending', 6),
(48, 13000, '2022-04-06 09:47:30', 76, 'COD', 'Pending', 6);

-- --------------------------------------------------------

--
-- Stand-in structure for view `price wise product`
-- (See below for the actual view)
--
CREATE TABLE `price wise product` (
`price` float
,`pro_name` varchar(50)
,`qty` int(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product wise feedback`
-- (See below for the actual view)
--
CREATE TABLE `product wise feedback` (
`pro_name` varchar(50)
,`rating` int(1)
,`date_time` timestamp
,`details` varchar(100)
,`f_name` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product wise order`
-- (See below for the actual view)
--
CREATE TABLE `product wise order` (
`pro_name` varchar(50)
,`qty` int(3)
,`ord_id` int(5)
);

-- --------------------------------------------------------

--
-- Table structure for table `product_description`
--

CREATE TABLE `product_description` (
  `desc_id` int(5) NOT NULL,
  `pro_type` varchar(15) DEFAULT NULL,
  `net_content` varchar(10) DEFAULT NULL,
  `composition` varchar(250) DEFAULT NULL,
  `pro_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_description`
--

INSERT INTO `product_description` (`desc_id`, `pro_type`, `net_content`, `composition`, `pro_id`) VALUES
(3, 'Tablet', '150g', 'Senna leaves – Cassia angustifolia,Black Salt (Kala Namak),Ajwain (Carum capticum),Trachyspermum ammi, Haritaki – Terminalia chebula, Svarjiksara (Purified), Mulethi (Yashtimadhu) – Licorice – Glycyrrhiza Glabra, Nishoth (Trivrit) – Operculina turpet', 3),
(4, 'Liquid', '50ml', 'Giloy stems, water, turmeric powder, ginger, tulsi leaves, and jaggery.', 4),
(5, 'Others', '200ml', 'Amalaki (Amla or Indian Gooseberry) – Phyllanthus Emblica (Emblica Officinalis), Cow’s ghee (Clarified Butter), Sesame Oil (Til tail), Sugar (Sharkra), Honey (Shahad)', 5),
(6, 'Powder', '100g', 'Calcium, Glucosamine, Potassium chloride, Chondroitin sulphate, Vitamin D3 (Cholecalciferol), and Methylsulfonylmethane.', 6),
(7, 'Liquid', '200ml', 'Tulsi – Ocimum sanctum , Licorice – Yashtimadu – Glycyrrhiza glabra, Banaphsa – Viola odorata ', 7),
(8, 'Powder', '150g', 'Brahmi Bacopa monnieri Panchang 46 mg; Shankhapushpi Convolvulus pluricaulis Panchang 46 mg; Ugra Gandha Vach Root Acorus calamus 46 mg; Gaozaban Onosma bracteatum Panchang 69 mg; Jyotishmti Celastrus paniculatus Seed 19 mg', 8),
(9, 'Tablet', '100g', 'Mangifera indica( Amra)Momordica charantia(Karela), Gymnema Sylvestre (Gudmar) Syzygium cumini (Jamun)  and Asphaltum(Shilajit).', 9),
(10, 'Liquid', '180ml', 'Green Tea,Rama Tulsi,Krishna Tulsi ,Vana Tulsi', 10),
(11, 'Cream', '100ml', 'Water, Stearic Acid, Turmeric, Sorbitol, Perfume, Potassium Hydroxide, Triethanolamine, Methyl Paraben, Sodium Hydroxide, Propyl Paraben, Benzyl Alcohol, Chlorocresol', 11),
(12, 'Others', '', '', 12),
(13, 'Others', '', '', 13),
(14, 'Others', '200g', 'Water (Aqua), Isopropyl Alcohol, Glycerin, Aloe Barbadensis Leaf Juice, Isopropyl Myristate, Propylene Glycol, Retinyl Palmitate, Tocopheryl Acetate, Zea Mays (Corn) Oil PURELL HAND SANITIZING WIPES ALCOHOL FORMULA,alcohol cloth', 14),
(15, 'Gel', '500ml', 'Aqua,Sodium Laureth Sulfate,cocoamidprpyl Beataine,Glycol distreate.sodium cloride,silver,Tetra Sodium EDTA, Citric Acid, Limonene,Butylephenyl Methylpropinal Citronellel', 15),
(16, 'Gel', '500ml', 'Aqua,Sodium Laureth Sulfate,cocoamidprpyl Beataine,Glycol distreate.sodium cloride,silver,Tetra Sodium EDTA, Citric Acid, Limonene,Butylephenyl Methylpropinal Citronellel', 16),
(17, 'Gel', '500ml', 'Aqua,Sodium Laureth Sulfate,cocoamidprpyl Beataine,Glycol distreate.sodium cloride,silver,Tetra Sodium EDTA, Citric Acid, Limonene,Butylephenyl Methylpropinal Citronellel', 17),
(18, 'Others', '', '', 18),
(19, 'Spray', '200ml', 'Aqua,Sodium Laureth Sulfate,cocoamidprpyl Beataine,Glycol distreate.sodium cloride,silver,Tetra Sodium EDTA, Citric Acid, Limonene,Butylephenyl Methylpropinal Citronellel', 19),
(20, 'Others.', '50g', '', 20),
(21, 'Cream', '200g', 'Aqua, Mineral Oil, Glycerin, Cetyl Alcohol, Cetearyl Ethylhexanoate, Glyceryl Stearate SE, Cetostearyl Alcohol, Triethanolamine, Aloe Barbadensis Leaf Extract, Pterocarpus Marsupium Wood Extract, Glyceryl Stearate, PEG-100 Stearate, Carbomer, Phenoxy', 21),
(22, 'Tablet', '250g', 'vitamin C & D3 and zinc', 22),
(23, 'Others', '', '', 23),
(24, 'Others', '', '', 24),
(25, 'Others', '', '', 25),
(26, 'Others', '', '', 26),
(27, 'Others', '', '', 27),
(28, 'Others', '', '', 28),
(29, 'Others', '', '', 29),
(30, 'Others', '', '', 30),
(31, 'Others', '', '', 31),
(32, 'Others', '', '', 32),
(33, 'Others', '200g', '', 33),
(34, 'Gel', '200ml', 'Purified Water, Sodium Lauryl Ether Sulphate, Coco Amide Propyl Betaine, Propylene Glycol, Disodium Cocoyl Glutamate, Zinc Pyrithione, Sodium Chloride, Perfume, Piroctone Olamine, Climbazole, Amodimethicone, Acrylates/​Vinyl Neodecanoate Crosspolymer', 34),
(35, 'Powder', '200g', ' Jasat Bhasma, Tankan Amla, Vetasa and Yavanala', 35),
(36, 'Liquid', '250ml', 'Amla,Curry leaves,Aloe Vera,coconut oil,Bringraj,Mulethi,Grapes,almond,Bhrami,neem leaves', 36),
(37, 'Liquid', '200ml', 'kaolin clay,zinc oxide,glycerin,aloe vera, neem, cinamom extracts,vitamin E,Lemon Extract', 37),
(38, 'Liquid', '200ml', ' Thymol ,Eucalyptol .Menthol ,Methyl Salicylate ,Water,Alcohol ,Sorbitol,Sucralose ,Sodium Benozate , Benzoic Acid ,Sodium Sacchari, Poloxamer', 38),
(39, 'Liquid', '100ml', 'Sesame seed oil Menthol Amla Camphor Thyme Leaves Rosemary Oil Musk Mallow Ylang Ylang Jequirity', 39),
(40, 'cream', '200g', 'Aqua, Paraffinum Liquidum, Cera Microcristallina, Glycerin, Lanolin Alcohol (Eucerit ®), Paraffin, Panthenol, Magnesium Sulfate, Decyl Oleate, Octyldodecanol, Aluminum Stearates, Citric Acid, Magnesium Stearate, Sodium Anisate, Limonene, Geraniol, Hy', 40),
(41, 'cream', '150g', 'Aqua (water) ,Cetearyl Alcohol ,Potassium Thioglycolate ,Paraffinum Liquidum ,Sodium Gluconate', 41),
(42, 'cream', '200g', 'Aqua, Triethanolamine, Palmitic Acid, Stearic Acid, Isobutane, Laureth-23, Dimethicone, Sodium Lauryl Sulfate, Propane, Sodium Benzoate, Parfum, Hydroxyethylcellulose, Stearyl Alcohol, Lauryl Alcohol, Dimethiconol, Chondrus Crispus Powder, Dimethicon', 42),
(43, 'cream', '100g', 'Boric Acid,Zinc Oxide, Anhydrous Lanolin ', 43),
(44, 'cream', '100g', 'Lecithin, Magnesium Aluminum Silicate, Carbomer 934, Glycerin, Sodium Hydroxide, Capric Acid Triglyceride, Dimethicone, Squalene, Polyoxyl 40 Stearate, Stearic Acid, Glycol Stearate, Glyceryl Stearate, Cetyl Alcohol, Myristyl Myristate, C-10-30 Carbo', 44),
(45, 'Tablet', '180g', 'Levo-carnitine and Vitamin E', 45),
(46, 'Others', '', '', 46),
(47, 'Liquid', '100ml', 'Aqua, Fragrance (Rooh Gulab), Rose Oil, Propylene Glycol, Propyl Paraben, Methyl Paraben, Butylparaben', 47),
(48, 'cream', '100g', 'Active Ingredient: mupirocin Inactive Ingredients: polyethylene glycol 400 and polyethylene glycol 3350', 48),
(49, 'Others', '', '', 49),
(50, 'cream', '20g', 'Water (Aqua), Mineral Oil, Glycerin, Cetyl Alcohol, Cetearyl Ethylhexanoate, Glyceryl Stearate SE, Cetostearyl Alcohol, Triethanolamine, Aloe Barbadensis (Aloe Vera) Leaf Extract, Glyceryl Stearate, PEG-100 Stearate, Carbomer, Pterocarpus Marsupium (', 50),
(51, 'cream', '180g', 'framycetin,neomycin, polymyxin B sulfate and bacitracin', 51),
(52, 'Liquid', '100g', 'Organic Coconut Oil, Almond Oil, Castor Oil, Bhimdeni Kapur, BeesWax, and Organic Cow ghee.', 52),
(53, 'Others', '', '', 53),
(54, 'Others', '', '', 54),
(55, 'Others', '', '', 55),
(56, 'Others', '', '', 56),
(57, 'Others', '', '', 57),
(58, 'Others', '', '', 58),
(59, 'Others', '', '', 59),
(60, 'Others', '', '', 60),
(61, 'Others', '', '', 61),
(62, 'Others', '', '', 62),
(63, 'Liquid', '200ml', 'Karela Jamun Seeds Giloy', 63),
(64, 'Others', '500g', 'Wheat Dextrin Soluble Fiber ', 64),
(65, 'Liquid', '200ml', 'Water Karela (Bitter Gourd) Jamun Amla Harda Baheda Neem Bael Giloy Methi (Fenugreek) Ambehaldi Dry Ginger Shatavari Ashwagandha Citric Acid (INS 33).', 65),
(66, 'Powder', '500g', 'Maltodextrin, Calcium Caseinate, Edible Vegetable Oils (High Oleic Sunflower Oil, Soy Oil), Fructose, Cocoa Powder, Minerals***, Fructooligosaccharide (FOS), Soy Polysaccharide, Flavoring, M- Inositol, Vitamins**, Antioxidants (Soy Lecithin, Mixed To', 66),
(67, 'Powder', '500g', '', 67),
(68, 'Powder', '150g', 'Green Tea (98.5%) Lemon Flavour. Honey Flavour (Natural Flavours)', 68),
(69, 'Others', '100g', '', 69),
(70, 'Others', '500g', 'Amla, Ashwagandha, Giloy', 70),
(71, 'Others', '100g', '', 71),
(72, 'Tablet', '200g', '', 72),
(73, 'Others', '', '', 73);

-- --------------------------------------------------------

--
-- Table structure for table `product_mst`
--

CREATE TABLE `product_mst` (
  `pro_id` int(5) NOT NULL,
  `pro_name` varchar(50) DEFAULT NULL,
  `img_id` int(5) DEFAULT NULL,
  `cat_id` int(5) DEFAULT NULL,
  `desc_id` int(5) DEFAULT NULL,
  `supplier_id` int(5) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `qty` int(5) DEFAULT NULL,
  `exp_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_mst`
--

INSERT INTO `product_mst` (`pro_id`, `pro_name`, `img_id`, `cat_id`, `desc_id`, `supplier_id`, `price`, `qty`, `exp_date`) VALUES
(3, 'Kayum Churn', NULL, 1, NULL, 2, 130, 150, '2023-08-18'),
(4, 'Giloy Juice', NULL, 1, NULL, 3, 50, 150, '2022-12-09'),
(5, 'Dabur Chamanprakash', NULL, 1, NULL, 1, 200, 100, '2024-11-14'),
(6, 'Cartigen', NULL, 1, NULL, 2, 120, 100, '2022-04-15'),
(7, 'Dabur Honitus ', NULL, 1, NULL, 2, 180, 100, '2023-11-15'),
(8, 'Divya vati', NULL, 1, NULL, 1, 150, 200, '2023-06-24'),
(9, 'Ime -9', NULL, 1, NULL, 3, 50, 125, '2022-06-16'),
(10, 'Tulsi GreenTea', NULL, 1, NULL, 1, 200, 130, '2024-04-24'),
(11, 'Vico Turmeric', NULL, 1, NULL, 2, 50, 200, '2024-08-15'),
(12, 'N95', NULL, 2, NULL, 3, 100, 100, '0000-00-00'),
(13, 'Face Sheild', NULL, 2, NULL, 3, 250, 100, '0000-00-00'),
(14, 'Sanitizing Wipes', NULL, 2, NULL, 1, 80, 100, '2023-04-05'),
(15, 'Savlon Handwash', NULL, 2, NULL, 2, 150, 100, '2024-04-19'),
(16, 'Dettol Handwash', NULL, 2, NULL, 2, 200, 200, '2023-12-14'),
(17, 'Dettol Pink', NULL, 2, NULL, 2, 200, 250, '2024-09-26'),
(18, 'Gloves', NULL, 2, NULL, 1, 150, 100, '0000-00-00'),
(19, 'Savlon Disinfectant', NULL, 2, NULL, 1, 200, 100, '2022-06-16'),
(20, 'Panbio', NULL, 2, NULL, 3, 40, 100, '2024-03-20'),
(21, 'Himalaya FaceCream', NULL, 1, NULL, 2, 120, 100, '2022-08-19'),
(22, 'Immunity Booster', NULL, 2, NULL, 3, 190, 100, '2023-02-16'),
(23, 'Weighting Machine', NULL, 3, NULL, 2, 500, 100, '0000-00-00'),
(24, 'Thermometer', NULL, 3, NULL, 2, 200, 100, '0000-00-00'),
(25, 'Accu-Check', NULL, 3, NULL, 3, 300, 100, '0000-00-00'),
(26, 'Micron Bp machine', NULL, 3, NULL, 2, 1000, 100, '0000-00-00'),
(27, 'Oximeter', NULL, 3, NULL, 2, 800, 100, '0000-00-00'),
(28, 'visco cycle', NULL, 3, NULL, 3, 1500, 100, '0000-00-00'),
(29, 'Covid Thermometer', NULL, 3, NULL, 1, 2000, 100, '0000-00-00'),
(30, 'Gramim Watch', NULL, 3, NULL, 3, 2500, 100, '0000-00-00'),
(31, 'Sansui Weighting Machine', NULL, 3, NULL, 1, 3000, 50, '0000-00-00'),
(32, 'LotFancy Bp machine', NULL, 3, NULL, 2, 1600, 100, '0000-00-00'),
(33, 'Dignity AdultDiapers', NULL, 4, NULL, 1, 250, 100, '2022-11-17'),
(34, 'Scalpe Antidandruf', NULL, 4, NULL, 3, 180, 30, '2023-04-07'),
(35, 'Dermi cool', NULL, 4, NULL, 2, 99, 120, '2023-05-25'),
(36, 'Indulekha HairOil', NULL, 4, NULL, 2, 250, 100, '2023-11-17'),
(37, 'Lacto CalciumOil', NULL, 4, NULL, 2, 150, 100, '2022-12-29'),
(38, 'Listerine CoolMint', NULL, 4, NULL, 2, 180, 100, '2022-12-25'),
(39, 'Navratan HairOil', NULL, 4, NULL, 2, 200, 100, '2022-08-18'),
(40, 'Nivea Cream', NULL, 4, NULL, 3, 500, 50, '2022-11-11'),
(41, 'Veet Hair Removal', NULL, 4, NULL, 1, 180, 30, '2023-03-22'),
(42, 'Barbasol Shaving Cream', NULL, 4, NULL, 2, 250, 100, '2022-11-15'),
(43, 'Boroline Cream', NULL, 5, NULL, 2, 80, 100, '2023-02-28'),
(44, 'Emolene', NULL, 5, NULL, 2, 100, 40, '2023-10-05'),
(45, 'Evion Tablets', NULL, 5, NULL, 2, 250, 100, '2023-05-05'),
(46, 'Himalaya Facialwipes', NULL, 5, NULL, 1, 300, 70, '2023-01-18'),
(47, 'Gulabari jal', NULL, 5, NULL, 3, 220, 100, '2022-06-15'),
(48, 'Mupirocin Ointment', NULL, 5, NULL, 1, 180, 100, '2022-12-14'),
(49, 'Sheet mask', NULL, 5, NULL, 3, 230, 60, '2023-03-15'),
(50, 'Himalaya SkinCare cream', NULL, 5, NULL, 3, 50, 100, '2023-04-29'),
(51, 'soframycin Cream', NULL, 5, NULL, 1, 200, 100, '2024-12-23'),
(52, 'Organic Netra ', NULL, 5, NULL, 1, 239, 100, '2023-06-01'),
(53, 'Surgical cotton', NULL, 6, NULL, 1, 85, 100, '0000-00-00'),
(54, 'Surgical Tape ', NULL, 6, NULL, 2, 320, 100, '0000-00-00'),
(55, 'Dressing Drum ', NULL, 6, NULL, 2, 999, 100, '0000-00-00'),
(56, 'Surgical Paper Tape ', NULL, 6, NULL, 2, 429, 100, '0000-00-00'),
(57, 'ASL Guaze swabs', NULL, 6, NULL, 2, 190, 100, '0000-00-00'),
(58, 'Adhesive bandage', NULL, 6, NULL, 1, 285, 100, '0000-00-00'),
(59, 'Surgical Scissor', NULL, 6, NULL, 2, 250, 100, '0000-00-00'),
(60, 'First Aid kit', NULL, 6, NULL, 3, 1120, 100, '0000-00-00'),
(61, 'Washproof bandage ', NULL, 6, NULL, 2, 199, 100, '0000-00-00'),
(62, 'Roller Bandage ', NULL, 6, NULL, 2, 169, 100, '0000-00-00'),
(63, 'Kapia Dia ', NULL, 8, NULL, 2, 424, 100, '2023-12-24'),
(64, 'Actifiber Sugar Control', NULL, 8, NULL, 1, 898, 100, '2023-06-30'),
(65, 'Jamun Juice ', NULL, 8, NULL, 3, 238, 100, '2023-09-06'),
(66, 'Ensure Diabetic Care', NULL, 8, NULL, 3, 634, 100, '2023-09-14'),
(67, 'Diabexy Atta ', NULL, 8, NULL, 3, 479, 100, '2023-09-30'),
(68, 'Tetley Green Tea', NULL, 8, NULL, 1, 412, 100, '2023-10-15'),
(69, 'SugarFree Gold', NULL, 8, NULL, 1, 256, 100, '2022-09-09'),
(70, 'Dabur Chyawanprakash Sugarfree ', NULL, 8, NULL, 1, 324, 100, '2022-09-24'),
(71, 'Amul Chocolate', NULL, 8, NULL, 3, 123, 100, '2023-03-30'),
(72, 'Stevia Tablet ', NULL, 8, NULL, 2, 390, 100, '2024-05-24'),
(73, 'PPE kit', NULL, 2, NULL, 29, 200, 100, '0000-00-00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `quantity wise product`
-- (See below for the actual view)
--
CREATE TABLE `quantity wise product` (
`pro_name` varchar(50)
,`price` float
,`qty` int(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `rating wise feedback`
-- (See below for the actual view)
--
CREATE TABLE `rating wise feedback` (
`rating` int(1)
,`f_name` varchar(20)
,`pro_name` varchar(50)
,`date_time` timestamp
,`details` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `status wise order`
-- (See below for the actual view)
--
CREATE TABLE `status wise order` (
`f_name` varchar(20)
,`address` varchar(100)
,`order_date_time` timestamp
,`o_status` varchar(10)
,`total` int(5)
,`qty` int(3)
,`price` int(8)
,`pro_name1` varchar(50)
,`usertype_id` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `status wise user`
-- (See below for the actual view)
--
CREATE TABLE `status wise user` (
`s_name` varchar(20)
,`f_name` varchar(20)
,`m_name` varchar(20)
,`l_name` varchar(20)
,`mobile_no` varchar(10)
,`email` varchar(50)
,`c_status` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `supplier wise product`
-- (See below for the actual view)
--
CREATE TABLE `supplier wise product` (
`pro_name` varchar(50)
,`price` float
,`qty` int(5)
,`s_name` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `type wise product`
-- (See below for the actual view)
--
CREATE TABLE `type wise product` (
`pro_type` varchar(15)
,`pro_name` varchar(50)
,`price` float
,`qty` int(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `type wise user`
-- (See below for the actual view)
--
CREATE TABLE `type wise user` (
`s_name` varchar(20)
,`f_name` varchar(20)
,`m_name` varchar(20)
,`l_name` varchar(20)
,`mobile_no` varchar(10)
,`email` varchar(50)
,`user_type` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user wise feedback`
-- (See below for the actual view)
--
CREATE TABLE `user wise feedback` (
`f_name` varchar(20)
,`pro_name` varchar(50)
,`rating` int(1)
,`details` varchar(100)
,`date_time` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user wise order`
-- (See below for the actual view)
--
CREATE TABLE `user wise order` (
`qty` int(3)
,`price` int(8)
,`pro_name` varchar(50)
,`total` int(5)
,`usertype_id` int(1)
,`f_name` varchar(20)
,`order_date_time` timestamp
,`o_status` varchar(10)
,`address` varchar(100)
,`method` varchar(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `user_mst`
--

CREATE TABLE `user_mst` (
  `user_id` int(5) NOT NULL,
  `usertype_id` int(1) DEFAULT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  `l_name` varchar(20) DEFAULT NULL,
  `mobile_no` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `gstn` varchar(15) DEFAULT NULL,
  `certificate` varchar(255) DEFAULT NULL,
  `c_status` varchar(10) DEFAULT NULL,
  `is_verified` varchar(3) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_mst`
--

INSERT INTO `user_mst` (`user_id`, `usertype_id`, `s_name`, `f_name`, `m_name`, `l_name`, `mobile_no`, `email`, `gender`, `address`, `gstn`, `certificate`, `c_status`, `is_verified`, `password`) VALUES
(1, 2, 'Estrellas LTD', NULL, NULL, NULL, '6392865461', 'Estrellas@gmail.com', NULL, 'Ahmedabad,Gujrat', '24AADCE3706B1ZC', '../upload/Certificate.jpg', 'Active', 'yes', 'Estrella'),
(2, 2, 'Welcome Enterprises', NULL, NULL, NULL, '6398754100', 'Welcome@gmail.com', NULL, 'Mumbai, Maharashtra', '27AAFWE3706M1Z0', '../upload/Certificate.jpg', 'Active', 'yes', 'Welcome'),
(3, 2, 'BlueWater Research', NULL, NULL, NULL, '9956821654', 'BlueWater@gmail.com', NULL, 'Sector-37,Chandigarh', '27AADFL78760JZ6', '../upload/Certificate.jpg', 'Active', 'yes', 'BlueWater'),
(4, 3, NULL, 'Akshay', '', 'Pandey', '6392865460', 'akshaypandey958@gmail.com', 'male', NULL, NULL, NULL, 'Active', NULL, 'akshay'),
(5, 3, NULL, 'Rani', '', 'Shukla', '9005036488', 'rani1324@gmail.com', 'female', NULL, NULL, NULL, 'Active', NULL, 'ranishukla'),
(6, 1, NULL, 'Sourav', NULL, 'Kumawat', '9376019606', 'Epharmacyadmin123@gmail.com', 'male', 'Phulera,Jaipur', NULL, NULL, 'Active', NULL, 'admin11'),
(7, 3, NULL, 'Akash ', 'Kumar', 'Yadav', '9000408988', 'akash988@gmail.com', 'male', NULL, NULL, NULL, 'Active', NULL, 'akashyadav'),
(8, 3, NULL, 'Ravi', '', 'Shah', '9825877405', 'ravi7405@gmail.com', 'male', NULL, NULL, NULL, 'Active', NULL, 'ravishah'),
(9, 3, NULL, 'Priya', '', 'Kumar', '9635865460', 'priya5460@gmail.com', 'female', NULL, NULL, NULL, 'Active', NULL, 'priyakumar'),
(10, 3, NULL, 'Brijesh', '', 'Tripathi', '8564202214', 'brijesh2214@gmail.com', 'male', NULL, NULL, NULL, 'Active', NULL, 'brijesh'),
(11, 3, NULL, 'Seema', '', 'Shukla', '9330245464', 'seema957@gmail.com', 'male', NULL, NULL, NULL, 'Active', NULL, 'seemashukla'),
(12, 2, 'S P Pharma', NULL, NULL, NULL, '9000300258', 'sppharma@gmail.com', NULL, 'New Motor Market,Chandigarh', '04BAAPG8125RIZJ', '../upload/Certificate.jpg', 'Active', 'No', 'sppharma'),
(13, 2, 'Park Phamaceuticals', NULL, NULL, NULL, '8852458457', 'parkpharma@gmail.com', NULL, 'Baddi , Solan, Himachal Pradesh ', '02AAJFP3473H1ZB', '../upload/Certificate.jpg', 'Active', 'No', 'parkpharma'),
(14, 2, 'Mediva Lifecare', NULL, NULL, NULL, '9968254600', 'mediva@gmial.com', NULL, 'Kalka, Panchkula, Haryana', '06AQHPC5776A1Z4', '../upload/Certificate.jpg', 'Active', 'No', 'Mediva'),
(15, 2, 'Jasco Labs', NULL, NULL, NULL, '8878952460', 'jasco@gmail.com', NULL, 'Civil lines, Chandigarh', '04AABCJ6874D1ZO', '../upload/Certificate.jpg', 'Active', 'No', 'jascolabs'),
(16, 3, NULL, 'Chavi', '', 'Srivastava', '9978546025', 'chavi11@gmail.com', 'female', NULL, NULL, NULL, 'Active', NULL, 'chavisri'),
(17, 3, NULL, 'Ajay', '', 'Soni', '6587489789', 'ajay1124@gmail.com', 'male', NULL, NULL, NULL, 'Active', NULL, 'ajaysoni'),
(18, 3, NULL, 'Divyanshi', '', 'Yadav', '8856245898', 'divya1025@gmail.com', 'female', NULL, NULL, NULL, 'Active', NULL, 'Divyanshi'),
(19, 3, NULL, 'Dhananjay', '', 'Singh', '6589879024', 'dj024@gmail.com', 'male', NULL, NULL, NULL, 'Active', NULL, 'Dhananjay'),
(20, 3, NULL, 'Pranav', '', 'Rai', '8160057708', 'pranav@gmail.com', 'male', NULL, NULL, NULL, 'Active', NULL, 'Pranav'),
(21, 3, NULL, 'Herial', '', 'Jethwani', '8600145770', 'herial16@gmail.com', 'female', NULL, NULL, NULL, 'Active', NULL, 'Herial'),
(22, 3, NULL, 'Amit', '', 'Trivedi', '8825855654', 'amit124@gmail.com', 'male', NULL, NULL, NULL, 'Active', NULL, 'AmitAmit'),
(23, 3, NULL, 'Abhay', '', 'Diwwedi', '8974561415', 'abhay52@gmail.com', 'male', NULL, NULL, NULL, 'Active', NULL, 'Abhay12'),
(24, 2, 'Stellar Bio Labs', NULL, NULL, NULL, '8569456452', 'stellar@gmail.com', NULL, 'Manimarja, Chandigarh', '04ABRFS0131J1Z8', '../upload/Certificate.jpg', 'Active', 'No', 'Stellar'),
(25, 2, 'Uniray Life Sciences', NULL, NULL, NULL, '9962548452', 'uniray10@gmail.com', NULL, 'Godown , Mohali, Punjab', '03AAEFU4103E1ZU', '../upload/Certificate.jpg', 'Active', 'No', 'Uniray'),
(26, 2, 'Vee Remedies', NULL, NULL, NULL, '8258245870', 'veerem@gmail.com', NULL, 'Zirakpur, Mohali', '03AAVPG4379F1Z1', '../upload/Certificate.jpg', 'Active', 'No', 'veerem'),
(27, 2, 'Shivam Pharma', NULL, NULL, NULL, '8854825460', 'shivamphar@gmail.com', NULL, 'Dholkot, Ambala, Haryana', '06AAVPM1630K1ZF', '../upload/Certificate.jpg', 'Active', 'No', 'Shivam'),
(28, 2, 'Chemo Biological', NULL, NULL, NULL, '8965460254', 'chemo@gmail.com', NULL, 'New Delhi       ', '04AAAPO3693D1ZS', '../upload/Certificate.jpg', 'Active', 'No', 'Chemo12'),
(29, 2, 'Curvio Health Care', NULL, NULL, NULL, '6358987800', 'curvio@gmail.com', NULL, 'Pitampura, Delhi', '07AAMFC3486C1ZG', '../upload/Certificate.jpg', 'Active', 'Yes', 'Curvio'),
(30, 2, 'Alponis healthcare', NULL, NULL, NULL, '6965458521', 'alponis125@gmail.com', NULL, 'Manimarja, Chandigarh', '04CNJPG7056C1Z9', '../upload/Certificate.jpg', 'Active', 'Yes', 'Alponis'),
(31, 2, 'Theos Lifesciences', NULL, NULL, NULL, '8825879624', 'theos@gmail.com', NULL, 'Nehru Nagar, Gaziabad', '09AAKFT0340G1ZA', '../upload/Certificate.jpg', 'Active', 'No', 'TheosTheos');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `usertype_id` int(1) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`usertype_id`, `user_type`, `user_id`) VALUES
(1, 'Admin', NULL),
(2, 'Supplier', NULL),
(3, 'Customer', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `verification wise supplier`
-- (See below for the actual view)
--
CREATE TABLE `verification wise supplier` (
`s_name` varchar(20)
,`usertype_id` int(1)
,`mobile_no` varchar(10)
,`email` varchar(50)
,`is_verified` varchar(3)
);

-- --------------------------------------------------------

--
-- Structure for view `category wise product`
--
DROP TABLE IF EXISTS `category wise product`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `category wise product`  AS SELECT `category_mst`.`cat_name` AS `cat_name`, `product_mst`.`pro_name` AS `pro_name`, `product_mst`.`price` AS `price`, `product_mst`.`qty` AS `qty` FROM (`product_mst` join `category_mst` on(`category_mst`.`cat_id` = `product_mst`.`cat_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `date wise order`
--
DROP TABLE IF EXISTS `date wise order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `date wise order`  AS SELECT `user_mst`.`f_name` AS `f_name`, `order_mst`.`address` AS `address`, `order_mst`.`order_date_time` AS `order_date_time`, `order_mst`.`o_status` AS `o_status`, `order_mst`.`total` AS `total`, `order_description`.`qty` AS `qty`, `order_description`.`price` AS `price`, `product_mst`.`pro_name` AS `pro_name`, `user_mst`.`usertype_id` AS `usertype_id` FROM (((`user_mst` join `order_mst` on(`user_mst`.`user_id` = `order_mst`.`by_id`)) join `order_description` on(`order_mst`.`ord_id` = `order_description`.`order_id`)) join `product_mst` on(`order_description`.`pro_id` = `product_mst`.`pro_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `expiry date wise product`
--
DROP TABLE IF EXISTS `expiry date wise product`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `expiry date wise product`  AS SELECT `product_mst`.`pro_name` AS `pro_name`, `product_mst`.`qty` AS `qty`, `product_mst`.`price` AS `price`, `product_mst`.`exp_date` AS `exp_date` FROM `product_mst` ;

-- --------------------------------------------------------

--
-- Structure for view `price wise product`
--
DROP TABLE IF EXISTS `price wise product`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `price wise product`  AS SELECT `product_mst`.`price` AS `price`, `product_mst`.`pro_name` AS `pro_name`, `product_mst`.`qty` AS `qty` FROM `product_mst` ;

-- --------------------------------------------------------

--
-- Structure for view `product wise feedback`
--
DROP TABLE IF EXISTS `product wise feedback`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product wise feedback`  AS SELECT `product_mst`.`pro_name` AS `pro_name`, `feedback_mst`.`rating` AS `rating`, `feedback_mst`.`date_time` AS `date_time`, `feedback_mst`.`details` AS `details`, `user_mst`.`f_name` AS `f_name` FROM ((`feedback_mst` join `product_mst` on(`feedback_mst`.`pro_id` = `product_mst`.`pro_id`)) join `user_mst` on(`feedback_mst`.`user_id` = `user_mst`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `product wise order`
--
DROP TABLE IF EXISTS `product wise order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product wise order`  AS SELECT `product_mst`.`pro_name` AS `pro_name`, `order_description`.`qty` AS `qty`, `order_mst`.`ord_id` AS `ord_id` FROM ((`product_mst` join `order_description` on(`order_description`.`pro_id` = `product_mst`.`pro_id`)) join `order_mst` on(`order_mst`.`ord_id` = `order_description`.`order_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `quantity wise product`
--
DROP TABLE IF EXISTS `quantity wise product`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `quantity wise product`  AS SELECT `product_mst`.`pro_name` AS `pro_name`, `product_mst`.`price` AS `price`, `product_mst`.`qty` AS `qty` FROM `product_mst` ;

-- --------------------------------------------------------

--
-- Structure for view `rating wise feedback`
--
DROP TABLE IF EXISTS `rating wise feedback`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rating wise feedback`  AS SELECT `feedback_mst`.`rating` AS `rating`, `user_mst`.`f_name` AS `f_name`, `product_mst`.`pro_name` AS `pro_name`, `feedback_mst`.`date_time` AS `date_time`, `feedback_mst`.`details` AS `details` FROM ((`feedback_mst` join `user_mst` on(`feedback_mst`.`user_id` = `user_mst`.`user_id`)) join `product_mst` on(`feedback_mst`.`pro_id` = `product_mst`.`pro_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `status wise order`
--
DROP TABLE IF EXISTS `status wise order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `status wise order`  AS SELECT `user_mst`.`f_name` AS `f_name`, `order_mst`.`address` AS `address`, `order_mst`.`order_date_time` AS `order_date_time`, `order_mst`.`o_status` AS `o_status`, `order_mst`.`total` AS `total`, `order_description`.`qty` AS `qty`, `order_description`.`price` AS `price`, `product_mst`.`pro_name` AS `pro_name1`, `user_mst`.`usertype_id` AS `usertype_id` FROM (((`user_mst` join `order_mst` on(`order_mst`.`by_id` = `user_mst`.`user_id`)) join `order_description` on(`order_mst`.`ord_id` = `order_description`.`order_id`)) join `product_mst` on(`order_description`.`pro_id` = `product_mst`.`pro_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `status wise user`
--
DROP TABLE IF EXISTS `status wise user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `status wise user`  AS SELECT `user_mst`.`s_name` AS `s_name`, `user_mst`.`f_name` AS `f_name`, `user_mst`.`m_name` AS `m_name`, `user_mst`.`l_name` AS `l_name`, `user_mst`.`mobile_no` AS `mobile_no`, `user_mst`.`email` AS `email`, `user_mst`.`c_status` AS `c_status` FROM `user_mst` ;

-- --------------------------------------------------------

--
-- Structure for view `supplier wise product`
--
DROP TABLE IF EXISTS `supplier wise product`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `supplier wise product`  AS SELECT `product_mst`.`pro_name` AS `pro_name`, `product_mst`.`price` AS `price`, `product_mst`.`qty` AS `qty`, `user_mst`.`s_name` AS `s_name` FROM (`user_mst` join `product_mst` on(`user_mst`.`user_id` = `product_mst`.`supplier_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `type wise product`
--
DROP TABLE IF EXISTS `type wise product`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type wise product`  AS SELECT `product_description`.`pro_type` AS `pro_type`, `product_mst`.`pro_name` AS `pro_name`, `product_mst`.`price` AS `price`, `product_mst`.`qty` AS `qty` FROM (`product_description` join `product_mst` on(`product_mst`.`pro_id` = `product_description`.`pro_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `type wise user`
--
DROP TABLE IF EXISTS `type wise user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type wise user`  AS SELECT `user_mst`.`s_name` AS `s_name`, `user_mst`.`f_name` AS `f_name`, `user_mst`.`m_name` AS `m_name`, `user_mst`.`l_name` AS `l_name`, `user_mst`.`mobile_no` AS `mobile_no`, `user_mst`.`email` AS `email`, `user_type`.`user_type` AS `user_type` FROM (`user_type` join `user_mst` on(`user_type`.`usertype_id` = `user_mst`.`usertype_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `user wise feedback`
--
DROP TABLE IF EXISTS `user wise feedback`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user wise feedback`  AS SELECT `user_mst`.`f_name` AS `f_name`, `product_mst`.`pro_name` AS `pro_name`, `feedback_mst`.`rating` AS `rating`, `feedback_mst`.`details` AS `details`, `feedback_mst`.`date_time` AS `date_time` FROM ((`feedback_mst` join `user_mst` on(`feedback_mst`.`user_id` = `user_mst`.`user_id`)) join `product_mst` on(`feedback_mst`.`pro_id` = `product_mst`.`pro_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `user wise order`
--
DROP TABLE IF EXISTS `user wise order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user wise order`  AS SELECT `order_description`.`qty` AS `qty`, `order_description`.`price` AS `price`, `product_mst`.`pro_name` AS `pro_name`, `order_mst`.`total` AS `total`, `user_mst`.`usertype_id` AS `usertype_id`, `user_mst`.`f_name` AS `f_name`, `order_mst`.`order_date_time` AS `order_date_time`, `order_mst`.`o_status` AS `o_status`, `order_mst`.`address` AS `address`, `payment_mst`.`method` AS `method` FROM ((((`order_mst` join `order_description` on(`order_mst`.`ord_id` = `order_description`.`order_id`)) join `product_mst` on(`order_description`.`pro_id` = `product_mst`.`pro_id`)) join `user_mst` on(`order_mst`.`by_id` = `user_mst`.`user_id`)) join `payment_mst` on(`order_mst`.`ord_id` = `payment_mst`.`order_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `verification wise supplier`
--
DROP TABLE IF EXISTS `verification wise supplier`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `verification wise supplier`  AS SELECT `user_mst`.`s_name` AS `s_name`, `user_mst`.`usertype_id` AS `usertype_id`, `user_mst`.`mobile_no` AS `mobile_no`, `user_mst`.`email` AS `email`, `user_mst`.`is_verified` AS `is_verified` FROM `user_mst` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_mst`
--
ALTER TABLE `category_mst`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `feedback_mst`
--
ALTER TABLE `feedback_mst`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `img_mst`
--
ALTER TABLE `img_mst`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `order_description`
--
ALTER TABLE `order_description`
  ADD PRIMARY KEY (`desc_id`);

--
-- Indexes for table `order_mst`
--
ALTER TABLE `order_mst`
  ADD PRIMARY KEY (`ord_id`),
  ADD KEY `by_id` (`by_id`),
  ADD KEY `to_id` (`to_id`),
  ADD KEY `desc_id` (`desc_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `payment_mst`
--
ALTER TABLE `payment_mst`
  ADD PRIMARY KEY (`pay_id`,`date_time`);

--
-- Indexes for table `product_description`
--
ALTER TABLE `product_description`
  ADD PRIMARY KEY (`desc_id`);

--
-- Indexes for table `product_mst`
--
ALTER TABLE `product_mst`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `img_id` (`img_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `desc_id` (`desc_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `user_mst`
--
ALTER TABLE `user_mst`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `mobile_no` (`mobile_no`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `usertype` (`usertype_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`usertype_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_mst`
--
ALTER TABLE `category_mst`
  MODIFY `cat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback_mst`
--
ALTER TABLE `feedback_mst`
  MODIFY `fid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `img_mst`
--
ALTER TABLE `img_mst`
  MODIFY `img_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `order_description`
--
ALTER TABLE `order_description`
  MODIFY `desc_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `order_mst`
--
ALTER TABLE `order_mst`
  MODIFY `ord_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `payment_mst`
--
ALTER TABLE `payment_mst`
  MODIFY `pay_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `product_description`
--
ALTER TABLE `product_description`
  MODIFY `desc_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `product_mst`
--
ALTER TABLE `product_mst`
  MODIFY `pro_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `user_mst`
--
ALTER TABLE `user_mst`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback_mst`
--
ALTER TABLE `feedback_mst`
  ADD CONSTRAINT `feedback_mst_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_mst` (`user_id`),
  ADD CONSTRAINT `feedback_mst_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `product_mst` (`pro_id`);

--
-- Constraints for table `order_mst`
--
ALTER TABLE `order_mst`
  ADD CONSTRAINT `order_mst_ibfk_1` FOREIGN KEY (`by_id`) REFERENCES `user_mst` (`user_id`),
  ADD CONSTRAINT `order_mst_ibfk_2` FOREIGN KEY (`to_id`) REFERENCES `user_mst` (`user_id`),
  ADD CONSTRAINT `order_mst_ibfk_3` FOREIGN KEY (`desc_id`) REFERENCES `order_description` (`desc_id`),
  ADD CONSTRAINT `order_mst_ibfk_4` FOREIGN KEY (`payment_id`) REFERENCES `payment_mst` (`pay_id`);

--
-- Constraints for table `product_mst`
--
ALTER TABLE `product_mst`
  ADD CONSTRAINT `product_mst_ibfk_1` FOREIGN KEY (`img_id`) REFERENCES `img_mst` (`img_id`),
  ADD CONSTRAINT `product_mst_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `category_mst` (`cat_id`),
  ADD CONSTRAINT `product_mst_ibfk_3` FOREIGN KEY (`desc_id`) REFERENCES `product_description` (`desc_id`),
  ADD CONSTRAINT `product_mst_ibfk_4` FOREIGN KEY (`supplier_id`) REFERENCES `user_mst` (`user_id`);

--
-- Constraints for table `user_mst`
--
ALTER TABLE `user_mst`
  ADD CONSTRAINT `user_mst_ibfk_1` FOREIGN KEY (`usertype_id`) REFERENCES `user_type` (`usertype_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
