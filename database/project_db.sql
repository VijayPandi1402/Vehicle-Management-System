-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 07:32 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_list`
--

CREATE TABLE `brand_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand_list`
--

INSERT INTO `brand_list` (`id`, `name`, `image_path`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Yamaha', 'uploads/brands/1.png?v=1642731446', 0, 1, '2022-01-21 10:03:12', '2022-01-21 10:17:26'),
(2, 'Kawasaki', 'uploads/brands/2.png?v=1642731379', 0, 1, '2022-01-21 10:10:24', '2022-01-21 10:16:19'),
(4, 'Castrol', 'uploads/brands/4.png?v=1654359785', 0, 1, '2022-01-21 10:18:15', '2022-06-04 21:53:05'),
(5, 'Ducati', 'uploads/brands/5.png?v=1642731515', 0, 1, '2022-01-21 10:18:35', '2022-01-21 10:18:35'),
(8, 'MRF - Tires', 'uploads/brands/8.png?v=1654358557', 0, 1, '2022-06-02 19:41:54', '2022-06-04 21:32:37'),
(9, 'Royal Enfield', 'uploads/brands/9.png?v=1654359614', 0, 1, '2022-06-04 21:50:14', '2022-06-04 21:50:14'),
(10, 'TATA INDICA', 'uploads/brands/10.png?v=1654412562', 0, 1, '2022-06-05 12:32:41', '2022-06-05 12:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Accessories', 1, 0, '2021-09-30 09:42:40'),
(2, 'Chassis', 1, 1, '2021-09-30 09:43:00'),
(3, 'Tools', 1, 0, '2021-09-30 09:43:48'),
(5, 'Tires', 1, 0, '2022-01-21 10:33:07'),
(6, 'Mugs', 1, 1, '2022-01-21 10:33:31'),
(7, 'Oils', 1, 0, '2022-01-21 10:33:47'),
(8, 'Bike Mirror Rod', 1, 0, '2022-01-21 10:34:07'),
(9, 'Body Parts', 1, 0, '2022-01-21 13:55:39'),
(10, 'Locking System', 1, 0, '2022-06-05 12:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_added` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `status`, `delete_flag`, `date_created`, `date_added`) VALUES
(2, 'Vijay ', 'Pandi', 'Male', '', '9876543210', '14-Kottai Kolam, Allinagaram, Theni - 625531', 'vj142@gmail.com', 'dbcf7f18f59383219c06ecd52016c69e', 1, 0, '2022-05-03 19:39:06', NULL),
(3, 'Yuvaraj', ' ', 'Male', '', '0987654321', 'Melur', 'yj02@gmail.com', 'dff967c2163390a6fad7acf33353fcfe', 1, 0, '2022-05-06 11:57:17', NULL),
(4, 'siva', '', 'Male', '', '9876543218', 'malli nagur', 'siprakesh@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', 1, 0, '2022-05-07 10:29:47', NULL),
(5, 'Emma', 'Charlotte Duerre', 'Watson', 'Male', '3106012101', 'London, United Kingdom', 'emma123@gmail.com', '1f050242921954f2c734eec74ce2ecb6', 1, 0, '2022-05-11 22:33:29', '2022-06-15 21:51:03'),
(6, 'H', '', 'Male', '', '12334567889', 'bgffb,m ueekbjbkjbi', 'H@gmail.com', 'a72fb7d7f153b8ea397e19fe48782cb8', 1, 0, '2022-06-07 11:02:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mechanics_list`
--

CREATE TABLE `mechanics_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mechanics_list`
--

INSERT INTO `mechanics_list` (`id`, `name`, `contact`, `email`, `status`, `date_created`) VALUES
(3, 'Jack', '0876543219', 'jack@123gmail.com', 1, '2022-05-03 19:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `date_added`) VALUES
(13, 9, 1, 1, '2022-05-03 19:42:58'),
(14, 10, 1, 1, '2022-05-03 21:59:45'),
(15, 11, 1, 4, '2022-05-08 19:58:03'),
(16, 12, 1, 4, '2022-05-11 22:34:48'),
(17, 13, 7, 1, '2022-05-18 18:59:30'),
(18, 14, 6, 2, '2022-05-18 19:14:59'),
(19, 15, 6, 2, '2022-05-18 19:16:21'),
(20, 16, 1, 5, '2022-05-18 19:54:28'),
(21, 16, 7, 1, '2022-05-18 19:54:28'),
(22, 16, 6, 2, '2022-05-18 19:54:28'),
(23, 17, 6, 3, '2022-06-02 19:36:41'),
(24, 18, 9, 19, '2022-06-05 12:59:37'),
(25, 19, 1, 1, '2022-06-07 11:04:56'),
(26, 20, 8, 2, '2022-06-07 15:33:22'),
(27, 20, 1, 1, '2022-06-07 15:33:22'),
(28, 21, 7, 2, '2022-06-16 22:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `total_amount` float NOT NULL DEFAULT 0,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending,1 = packed, 2 = for delivery, 3 = on the way, 4 = delivered, 5=cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `ref_code`, `client_id`, `total_amount`, `delivery_address`, `status`, `date_created`, `date_updated`) VALUES
(9, '202205-00001', 2, 2500, '14-Kottai Kolam, Allinagaram, Theni - 625531', 4, '2022-05-03 19:42:57', '2022-05-05 20:29:46'),
(10, '202205-00002', 2, 2500, '14-Kottai Kolam, Allinagaram, Theni - 625531', 2, '2022-05-03 21:59:45', '2022-05-11 22:48:25'),
(11, '202205-00003', 3, 11996, 'Melur', 1, '2022-05-08 19:58:03', '2022-05-11 22:48:09'),
(12, '202205-00004', 5, 11996, 'London, United Kingdom', 0, '2022-05-11 22:34:47', '2022-05-11 22:47:56'),
(13, '202205-00005', 5, 4599, 'London, United Kingdom', 0, '2022-05-18 18:59:30', '2022-05-18 18:59:30'),
(14, '202205-00006', 2, 9998, '14-Kottai Kolam, Allinagaram, Theni - 625531', 5, '2022-05-18 19:14:59', '2022-05-18 19:15:05'),
(15, '202205-00007', 2, 9998, '14-Kottai Kolam, Allinagaram, Theni - 625531', 0, '2022-05-18 19:16:20', '2022-05-18 19:16:21'),
(16, '202205-00008', 4, 29592, 'Dindugal', 0, '2022-05-18 19:54:28', '2022-05-18 19:54:28'),
(17, '202206-00001', 2, 14997, '14-Kottai Kolam, Allinagaram, Theni - 625531', 5, '2022-06-02 19:36:41', '2022-06-02 19:36:55'),
(18, '202206-00002', 5, 30381, 'London, United Kingdom', 5, '2022-06-05 12:59:37', '2022-06-05 13:00:02'),
(19, '202206-00003', 6, 2999, 'bgffb,m ueekbjbkjbi', 4, '2022-06-07 11:04:55', '2022-06-15 21:48:00'),
(20, '202206-00004', 5, 3499, 'London, United Kingdom', 0, '2022-06-07 15:33:22', '2022-06-07 15:33:22'),
(21, '202206-00005', 2, 9198, '14-Kottai Kolam, Allinagaram, Theni - 625531', 0, '2022-06-16 22:44:00', '2022-06-16 22:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `models` text NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `brand_id`, `category_id`, `name`, `models`, `description`, `price`, `status`, `image_path`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 1, 3, 'Crash Guard', 'R15-V3', '&lt;h1 id=&quot;title&quot; class=&quot;a-size-large a-spacing-none&quot;&gt;&lt;span id=&quot;productTitle&quot; class=&quot;a-size-large product-title-word-break&quot;&gt;Hi-tech Engineering R15 Crash Guard with Metal Frame Slider, Fits Yamaha R15-V3 Model R15&lt;/span&gt;&lt;/h1&gt;&lt;h1 id=&quot;title&quot; class=&quot;a-size-large a-spacing-none&quot;&gt;&lt;span id=&quot;productTitle&quot; class=&quot;a-size-large product-title-word-break&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/h1&gt;&lt;ul class=&quot;a-unordered-list a-vertical a-spacing-mini&quot;&gt;&lt;li&gt;&lt;span class=&quot;a-list-item&quot;&gt; Heavy and Sturdy: High quality steel \r\npipes are used to have sturdy fitment. we ensure the customer safety \r\nfirst with high quality products  &lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span class=&quot;a-list-item&quot;&gt; Easy fitment: easy and hassle free fitment for hi-tech Crash Guard is provided to bolt on fit your R15  &lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span class=&quot;a-list-item&quot;&gt; Laser cut with high precision: accurate and high precision machining process is used for manufacturing our product  &lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;h1 id=&quot;title&quot; class=&quot;a-size-large a-spacing-none&quot;&gt;&lt;span id=&quot;productTitle&quot; class=&quot;a-size-large product-title-word-break&quot;&gt;&lt;/span&gt;&lt;/h1&gt;', 2999, 1, 'uploads/products/1.jpg?v=1652882103', 0, '2022-01-21 11:20:27', '2022-05-18 19:25:03'),
(2, 5, 3, 'Steering Dumper', 'Sample', '&lt;p&gt;sample&lt;/p&gt;', 15000, 1, 'uploads/products/2.png?v=1642736907', 1, '2022-01-21 11:48:27', '2022-01-21 11:53:41'),
(5, 5, 6, 'Product 101', 'Any', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Phasellus dapibus et massa quis interdum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean et nisl justo. Etiam condimentum nulla condimentum lectus vestibulum porta. Etiam maximus gravida nibh, rutrum pulvinar nulla posuere congue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec vel ante sem. Proin suscipit rhoncus felis.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Proin varius libero ut venenatis dictum. Cras finibus nibh quis egestas vestibulum. Integer pharetra dictum libero non maximus. Praesent imperdiet malesuada ante, quis tincidunt ligula. Vestibulum suscipit blandit porta. Praesent et urna neque. Nulla hendrerit nisl et diam pharetra pharetra. Sed maximus, nunc quis luctus facilisis, ex mauris aliquet magna, sit amet consectetur est dolor ac est. Integer venenatis nisl odio, nec varius lacus ornare ac. Fusce sit amet laoreet est. Suspendisse potenti.&lt;/p&gt;', 10000, 1, 'uploads/products/5.png?v=1642828905', 1, '2022-01-22 13:21:45', '2022-05-03 19:08:41'),
(6, 2, 1, 'Riding Kit', 'Any Two Wheeler', '&lt;p&gt;Riding gear: Because safety has to be the top priority. Before setting \r\noff, get your riding gear in order, starting with, of course, a helmet.&lt;/p&gt;', 4999, 1, 'uploads/products/6.jpg?v=1652882233', 0, '2022-05-05 21:16:54', '2022-05-18 19:27:13'),
(7, 5, 9, 'Suspension', 'Diavel 2011-19', '&lt;p&gt;&lt;span class=&quot;last-viewed-model&quot; data-make=&quot;ducati&quot; data-model=&quot;diavel&quot;&gt;&lt;h2&gt;Ducati Diavel suspension best to Boost Up the Engine Millages&lt;br&gt;&lt;/h2&gt;&lt;/span&gt;&lt;/p&gt;', 4599, 1, 'uploads/products/7.jpg?v=1652882259', 0, '2022-05-05 21:43:09', '2022-05-18 19:27:39'),
(8, 4, 7, ' Castrol Bike Engine Oil', 'Bike ', '&lt;p&gt;We have carved a niche amongst the most trusted names in this business, \r\nengaged in offering a comprehensive range of Bike Engine Oil.&lt;/p&gt;', 250, 1, 'uploads/products/8.jpg?v=1654359955', 0, '2022-06-04 21:55:54', '2022-06-04 21:56:29'),
(9, 8, 5, 'MRF Tire', 'Bike', '&lt;p&gt;Features &lt;/p&gt;&lt;ul&gt;&lt;li&gt;Non-directional treads pattern with rib-lug combination&lt;/li&gt;&lt;/ul&gt; Benefits &lt;ul&gt;&lt;li&gt;All wheel fitment with enhanced traction and excellent performance&lt;/li&gt;&lt;/ul&gt; &amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;br&gt;', 1599, 1, 'uploads/products/9.jpg?v=1654360292', 0, '2022-06-04 22:01:32', '2022-06-04 22:01:32'),
(10, 10, 10, 'Lock Kit', 'Locking System for TATA INDICA V2, INDIGO MARINA - KT ', '&lt;p&gt;Lock Set, Locking System for TATA INDICA V2, INDIGO MARINA - KT - 5BZ - &lt;/p&gt;&lt;p&gt;Spark Minda\r\n\r\nLock kit consisting each SW-1168z, LK-4366z, LK-4367z, LK-4368z, LK-4369z (Set of 5) &lt;br&gt;&lt;/p&gt;', 1249, 1, 'uploads/products/10.jpg?v=1654412831', 0, '2022-06-05 12:37:11', '2022-06-05 12:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `request_meta`
--

CREATE TABLE `request_meta` (
  `request_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_meta`
--

INSERT INTO `request_meta` (`request_id`, `meta_field`, `meta_value`) VALUES
(10, 'vehicle_type', '4 Wheeler'),
(10, 'vehicle_name', 'Honda'),
(10, 'vehicle_registration_number', 'TN44 F4444'),
(10, 'vehicle_model', 'City '),
(10, 'service_id', '3,5'),
(10, 'pickup_address', 'NMSSVN College Bus Stop, Nagamalai, Madurai'),
(11, 'vehicle_type', 'fggdfg'),
(11, 'vehicle_name', 'cbb'),
(11, 'vehicle_registration_number', 'cvvb'),
(11, 'vehicle_model', 'gbfg'),
(11, 'service_id', '3'),
(11, 'pickup_address', 'rtrttr');

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(30) NOT NULL,
  `service` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `service`, `description`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Change Oil', '&lt;p&gt;&lt;span class=&quot;ILfuVd&quot;&gt;&lt;span class=&quot;hgKElc&quot;&gt;&lt;b&gt;Benefits of Change Bike Oil :-&lt;/b&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ILfuVd&quot;&gt;&lt;span class=&quot;hgKElc&quot;&gt;&lt;b&gt;Motorcycles that use mineral-based oil should be changed at least every 2,000 miles, or at least twice a year&lt;/b&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', 1, 0, '2021-09-30 14:11:21'),
(2, 'Overall Checkup', '&lt;span class=&quot;ILfuVd&quot;&gt;&lt;span class=&quot;hgKElc&quot;&gt;This bike service will include &lt;b&gt;brake &amp;amp; gear adjustment, general lubrication and a tyre inflation check&lt;/b&gt;. A full bike service is only needed if your bike hasn\'t been out of the shed for a long time, or if you ride on a daily basis&lt;/span&gt;&lt;/span&gt;', 1, 0, '2021-09-30 14:11:38'),
(3, 'Engine Tune up', '&lt;span class=&quot;ILfuVd&quot;&gt;&lt;span class=&quot;hgKElc&quot;&gt;An engine tune-up is &lt;b&gt;the process of inspecting and replacing components of the engine that are essential to ignition and engine operation&lt;/b&gt;. A comprehensive tune-up can include: Replace spark plugs and wires/coil boots.&lt;/span&gt;&lt;/span&gt;', 1, 0, '2021-09-30 14:12:03'),
(4, 'Tire Replacement', 'Tires will need to be replaced before 10 years of age due to routine \r\ntread wear and other conditions such as punctures, impact damage, \r\nimproper inflation, overloading and more. If a tire is worn out or \r\notherwise unserviceable from damage or conditions of use, it should be \r\nreplaced regardless of when it was produced or purchased.', 1, 0, '2021-09-30 14:12:24'),
(5, 'Regular AC Service', '&lt;ul&gt;&lt;li&gt;AC Gas TopUP&lt;/li&gt;&lt;li&gt;AC Filter Cleaning&lt;/li&gt;&lt;li&gt;AC Went Cleaning&lt;br&gt;&lt;/li&gt;&lt;/ul&gt;', 1, 0, '2022-06-05 12:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `service_type` text NOT NULL,
  `mechanic_id` int(30) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `client_id`, `service_type`, `mechanic_id`, `status`, `date_created`) VALUES
(10, 5, 'Pick Up', NULL, 0, '2022-06-05 12:51:47'),
(11, 6, 'Pick Up', 3, 3, '2022-06-07 11:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `stock_list`
--

CREATE TABLE `stock_list` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1= IN, 2= Out',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_list`
--

INSERT INTO `stock_list` (`id`, `product_id`, `quantity`, `type`, `date_created`) VALUES
(1, 1, 10, 1, '2022-01-21 13:07:47'),
(2, 1, 5, 1, '2022-01-21 13:07:55'),
(5, 5, 25, 1, '2022-01-24 14:17:35'),
(9, 6, 100, 1, '2022-05-08 20:05:37'),
(10, 1, 100, 1, '2022-05-11 22:45:45'),
(11, 7, 100, 1, '2022-05-11 22:46:09'),
(12, 8, 44, 1, '2022-06-04 21:57:16'),
(13, 9, 20, 1, '2022-06-04 22:08:15'),
(14, 10, 30, 1, '2022-06-16 22:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Vehicle Management System'),
(6, 'short_name', 'VMS'),
(11, 'logo', 'uploads/1654412160_1652880000_rBVaEVf4qUyAOxRAAAaBcJ9o1sc520.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1654412160_RSZD_22ZR900M_40RBK3ARSA2CG_C_16.high-copy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(7, 'Vijay', 'M', 'vj', 'a80d8f605568189303fd08863ca5ac6b', 'uploads/1654361280_89ed4e5eb8a06ca61fda2689575b5543.jpg', NULL, 2, '2022-05-03 14:56:21', '2022-06-04 22:34:22'),
(8, 'Yuvaraj', 'N', 'yj', 'c3a19923c6d95039993edffeba0519e2', 'uploads/1654360920_tumblr_ms24tujulf1r7987co7_250.jpg', NULL, 2, '2022-06-04 22:12:43', '2022-06-04 22:34:39'),
(9, 'MR.', 'H', 'H@gmail.com', 'a72fb7d7f153b8ea397e19fe48782cb8', 'uploads/1654596060_psycopass-wallpaper-500x414.webp', NULL, 2, '2022-06-07 11:16:13', '2022-06-07 15:31:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_list`
--
ALTER TABLE `brand_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indexes for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `mechanic_id` (`mechanic_id`);

--
-- Indexes for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_list`
--
ALTER TABLE `brand_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stock_list`
--
ALTER TABLE `stock_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `cart_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_list_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_list_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD CONSTRAINT `request_meta_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD CONSTRAINT `service_requests_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_requests_ibfk_2` FOREIGN KEY (`mechanic_id`) REFERENCES `mechanics_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD CONSTRAINT `stock_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
