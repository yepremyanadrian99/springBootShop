-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2018 at 12:40 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

DROP DATABASE IF EXISTS shop;
CREATE DATABASE shop;
USE shop;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_path` varchar(255) NOT NULL DEFAULT '',
  `level` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `id_path`, `level`, `status`, `position`) VALUES
(106, 93, '93/106', 2, 0, 0),
(105, 102, '101/102/105', 3, 0, 0),
(104, 102, '101/102/104', 3, 0, 0),
(102, 101, '101/102', 2, 0, 0),
(96, 93, '93/96', 2, 0, 0),
(84, 69, '60/69/84', 3, 0, 0),
(83, 69, '60/69/83', 3, 0, 0),
(98, 93, '93/98', 2, 0, 0),
(97, 93, '93/97', 2, 0, 0),
(95, 94, '93/94/95', 3, 0, 0),
(82, 69, '60/69/82', 3, 0, 0),
(81, 69, '60/69/81', 3, 0, 0),
(80, 69, '60/69/80', 3, 0, 0),
(79, 70, '60/69/70/79', 4, 0, 0),
(70, 69, '60/69/70', 3, 0, 0),
(69, 60, '60/69', 2, 0, 0),
(68, 66, '60/66/68', 3, 0, 0),
(65, 61, '60/61/65', 3, 0, 0),
(66, 60, '60/66', 2, 0, 0),
(67, 66, '60/66/67', 3, 0, 0),
(63, 62, '60/61/62/63', 4, 0, 0),
(62, 61, '60/61/62', 3, 0, 0),
(103, 102, '101/102/103', 3, 0, 0),
(94, 93, '93/94', 2, 0, 0),
(92, 85, '60/85/92', 3, 0, 0),
(93, 0, '93', 1, 0, 0),
(91, 86, '60/85/86/91', 4, 0, 0),
(90, 85, '60/85/90', 3, 0, 0),
(71, 70, '60/69/70/71', 4, 0, 0),
(72, 70, '60/69/70/72', 4, 0, 0),
(73, 69, '60/69/73', 3, 0, 0),
(74, 69, '60/69/74', 3, 0, 0),
(75, 70, '60/69/70/75', 4, 0, 0),
(76, 70, '60/69/70/76', 4, 0, 0),
(77, 70, '60/69/70/77', 4, 0, 0),
(78, 69, '60/69/78', 3, 0, 0),
(61, 60, '60/61', 2, 0, 0),
(60, 0, '60', 1, 0, 0),
(101, 0, '101', 1, 0, 0),
(89, 86, '60/85/86/89', 4, 0, 0),
(88, 85, '60/85/88', 3, 0, 0),
(100, 93, '93/100', 2, 0, 0),
(99, 93, '93/99', 2, 0, 0),
(87, 86, '60/85/86/87', 4, 0, 0),
(85, 60, '60/85', 2, 0, 0),
(86, 85, '60/85/86', 3, 0, 0),
(64, 62, '60/61/62/64', 4, 0, 0),
(107, 93, '93/107', 2, 0, 0),
(108, 101, '101/108', 2, 0, 0),
(109, 108, '101/108/109', 3, 0, 0),
(110, 0, '110', 1, 0, 0),
(111, 110, '110/111', 2, 0, 0),
(112, 110, '110/112', 2, 0, 0),
(113, 110, '110/113', 2, 0, 0),
(114, 113, '110/113/114', 3, 0, 0),
(115, 110, '110/115', 2, 0, 0),
(116, 115, '110/115/116', 3, 0, 0),
(117, 110, '110/117', 2, 0, 0),
(118, 117, '110/117/118', 3, 0, 0),
(119, 118, '110/117/118/119', 4, 0, 0),
(120, 115, '110/115/120', 3, 0, 0),
(121, 118, '110/117/118/121', 4, 0, 0),
(122, 110, '110/122', 2, 0, 0),
(123, 122, '110/122/123', 3, 0, 0),
(124, 110, '110/124', 2, 0, 0),
(125, 124, '110/124/125', 3, 0, 0),
(126, 125, '110/124/125/126', 4, 0, 0),
(127, 110, '110/127', 2, 0, 0),
(128, 127, '110/127/128', 3, 0, 0),
(129, 113, '110/113/129', 3, 0, 0),
(130, 110, '110/130', 2, 0, 0),
(131, 130, '110/130/131', 3, 0, 0),
(132, 113, '110/113/132', 3, 0, 0),
(133, 110, '110/133', 2, 0, 0),
(134, 110, '110/134', 2, 0, 0),
(135, 110, '110/135', 2, 0, 0),
(136, 135, '110/135/136', 3, 0, 0),
(137, 118, '110/117/118/137', 4, 0, 0),
(138, 118, '110/117/118/138', 4, 0, 0),
(139, 127, '110/127/139', 3, 0, 0),
(140, 118, '110/117/118/140', 4, 0, 0),
(141, 115, '110/115/141', 3, 0, 0),
(142, 130, '110/130/142', 3, 0, 0),
(143, 117, '110/117/143', 3, 0, 0),
(144, 110, '110/144', 2, 0, 0),
(145, 144, '110/144/145', 3, 0, 0),
(146, 118, '110/117/118/146', 4, 0, 0),
(147, 115, '110/115/147', 3, 0, 0),
(148, 117, '110/117/148', 3, 0, 0),
(149, 110, '110/149', 2, 0, 0),
(150, 149, '110/149/150', 3, 0, 0),
(151, 127, '110/127/151', 3, 0, 0),
(152, 144, '110/144/152', 3, 0, 0),
(153, 113, '110/113/153', 3, 0, 0),
(154, 122, '110/122/154', 3, 0, 0),
(155, 118, '110/117/118/155', 4, 0, 0),
(156, 122, '110/122/156', 3, 0, 0),
(157, 110, '110/157', 2, 0, 0),
(158, 157, '110/157/158', 3, 0, 0),
(159, 135, '110/135/159', 3, 0, 0),
(160, 125, '110/124/125/160', 4, 0, 0),
(161, 127, '110/127/161', 3, 0, 0),
(162, 122, '110/122/162', 3, 0, 0),
(163, 144, '110/144/163', 3, 0, 0),
(164, 110, '110/164', 2, 0, 0),
(165, 135, '110/135/165', 3, 0, 0),
(166, 0, '166', 1, 0, 0),
(167, 166, '166/167', 2, 0, 0),
(168, 167, '166/167/168', 3, 0, 0),
(169, 166, '166/169', 2, 0, 0),
(170, 169, '166/169/170', 3, 0, 0),
(171, 166, '166/171', 2, 0, 0),
(172, 171, '166/171/172', 3, 0, 0),
(173, 171, '166/171/173', 3, 0, 0),
(174, 171, '166/171/174', 3, 0, 0),
(175, 167, '166/167/175', 3, 0, 0),
(176, 171, '166/171/176', 3, 0, 0),
(177, 171, '166/171/177', 3, 0, 0),
(178, 171, '166/171/178', 3, 0, 0),
(179, 171, '166/171/179', 3, 0, 0),
(180, 171, '166/171/180', 3, 0, 0),
(181, 171, '166/171/181', 3, 0, 0),
(182, 171, '166/171/182', 3, 0, 0),
(183, 171, '166/171/183', 3, 0, 0),
(184, 167, '166/167/184', 3, 0, 0),
(185, 166, '166/185', 2, 0, 0),
(186, 185, '166/185/186', 3, 0, 0),
(187, 171, '166/171/187', 3, 0, 0),
(188, 166, '166/188', 2, 0, 0),
(189, 188, '166/188/189', 3, 0, 0),
(190, 188, '166/188/190', 3, 0, 0),
(191, 110, '110/191', 2, 0, 0),
(192, 110, '110/192', 2, 0, 0),
(193, 113, '110/113/193', 3, 0, 0),
(194, 118, '110/117/118/194', 4, 0, 0),
(195, 113, '110/113/195', 3, 0, 0),
(196, 110, '110/196', 2, 0, 0),
(197, 196, '110/196/197', 3, 0, 0),
(198, 113, '110/113/198', 3, 0, 0),
(199, 127, '110/127/199', 3, 0, 0),
(200, 113, '110/113/200', 3, 0, 0),
(201, 135, '110/135/201', 3, 0, 0),
(202, 113, '110/113/202', 3, 0, 0),
(203, 113, '110/113/203', 3, 0, 0),
(204, 113, '110/113/204', 3, 0, 0),
(205, 113, '110/113/205', 3, 0, 0),
(206, 110, '110/206', 2, 0, 0),
(207, 110, '110/207', 2, 0, 0),
(208, 117, '110/117/208', 3, 0, 0),
(209, 208, '110/117/208/209', 4, 0, 0),
(210, 113, '110/113/210', 3, 0, 0),
(211, 125, '110/124/125/211', 4, 0, 0),
(212, 113, '110/113/212', 3, 0, 0),
(213, 118, '110/117/118/213', 4, 0, 0),
(214, 113, '110/113/214', 3, 0, 0),
(215, 135, '110/135/215', 3, 0, 0),
(216, 144, '110/144/216', 3, 0, 0),
(217, 0, '217', 1, 0, 0),
(218, 217, '217/218', 2, 0, 0),
(219, 218, '217/218/219', 3, 0, 0),
(220, 219, '217/218/219/220', 4, 0, 0),
(221, 218, '217/218/221', 3, 0, 0),
(222, 218, '217/218/222', 3, 0, 0),
(223, 219, '217/218/219/223', 4, 0, 0),
(224, 218, '217/218/224', 3, 0, 0),
(225, 218, '217/218/225', 3, 0, 0),
(226, 219, '217/218/219/226', 4, 0, 0),
(227, 218, '217/218/227', 3, 0, 0),
(228, 218, '217/218/228', 3, 0, 0),
(229, 218, '217/218/229', 3, 0, 0),
(230, 218, '217/218/230', 3, 0, 0),
(231, 218, '217/218/231', 3, 0, 0),
(232, 218, '217/218/232', 3, 0, 0),
(233, 218, '217/218/233', 3, 0, 0),
(234, 233, '217/218/233/234', 4, 0, 0),
(235, 218, '217/218/235', 3, 0, 0),
(236, 218, '217/218/236', 3, 0, 0),
(237, 218, '217/218/237', 3, 0, 0),
(238, 218, '217/218/238', 3, 0, 0),
(239, 218, '217/218/239', 3, 0, 0),
(240, 218, '217/218/240', 3, 0, 0),
(241, 0, '241', 1, 0, 0),
(242, 241, '241/242', 2, 0, 0),
(243, 272, '272/243', 2, 0, 0),
(388, 241, '241/388', 2, 0, 0),
(244, 93, '93/244', 2, 0, 0),
(245, 93, '93/245', 2, 0, 0),
(246, 93, '93/246', 2, 0, 0),
(247, 93, '93/247', 2, 0, 0),
(248, 93, '93/248', 2, 0, 0),
(249, 93, '93/249', 2, 0, 0),
(250, 93, '93/250', 2, 0, 0),
(251, 250, '93/250/251', 3, 0, 0),
(252, 93, '93/252', 2, 0, 0),
(253, 93, '93/253', 2, 0, 0),
(254, 93, '93/254', 2, 0, 0),
(255, 93, '93/255', 2, 0, 0),
(256, 93, '93/256', 2, 0, 0),
(257, 93, '93/257', 2, 0, 0),
(258, 93, '93/258', 2, 0, 0),
(259, 93, '93/259', 2, 0, 0),
(260, 93, '93/260', 2, 0, 0),
(261, 93, '93/261', 2, 0, 0),
(262, 93, '93/262', 2, 0, 0),
(263, 93, '93/263', 2, 0, 0),
(264, 218, '217/218/264', 3, 0, 0),
(265, 218, '217/218/265', 3, 0, 0),
(266, 218, '217/218/266', 3, 0, 0),
(267, 218, '217/218/267', 3, 0, 0),
(268, 218, '217/218/268', 3, 0, 0),
(269, 218, '217/218/269', 3, 0, 0),
(270, 218, '217/218/270', 3, 0, 0),
(271, 218, '217/218/271', 3, 0, 0),
(272, 0, '272', 1, 0, 0),
(273, 272, '272/273', 2, 0, 0),
(274, 273, '272/273/274', 3, 0, 0),
(275, 274, '272/273/274/275', 4, 0, 0),
(276, 273, '272/273/276', 3, 0, 0),
(277, 276, '272/273/276/277', 4, 0, 0),
(278, 276, '272/273/276/278', 4, 0, 0),
(279, 274, '272/273/274/279', 4, 0, 0),
(280, 272, '272/280', 2, 0, 0),
(281, 280, '272/280/281', 3, 0, 0),
(282, 281, '272/280/281/282', 4, 0, 0),
(283, 280, '272/280/283', 3, 0, 0),
(284, 274, '272/273/274/284', 4, 0, 0),
(285, 273, '272/273/285', 3, 0, 0),
(286, 285, '272/273/285/286', 4, 0, 0),
(287, 274, '272/273/274/287', 4, 0, 0),
(288, 273, '272/273/288', 3, 0, 0),
(289, 288, '272/273/288/289', 4, 0, 0),
(290, 284, '272/273/274/284/290', 5, 0, 0),
(291, 280, '272/280/291', 3, 0, 0),
(292, 273, '272/273/292', 3, 0, 0),
(293, 292, '272/273/292/293', 4, 0, 0),
(294, 292, '272/273/292/294', 4, 0, 0),
(295, 217, '217/295', 2, 0, 0),
(296, 295, '217/295/296', 3, 0, 0),
(297, 295, '217/295/297', 3, 0, 0),
(298, 295, '217/295/298', 3, 0, 0),
(299, 298, '217/295/298/299', 4, 0, 0),
(300, 298, '217/295/298/300', 4, 0, 0),
(301, 298, '217/295/298/301', 4, 0, 0),
(302, 298, '217/295/298/302', 4, 0, 0),
(303, 298, '217/295/298/303', 4, 0, 0),
(304, 298, '217/295/298/304', 4, 0, 0),
(305, 298, '217/295/298/305', 4, 0, 0),
(306, 60, '60/306', 2, 0, 0),
(307, 306, '60/306/307', 3, 0, 0),
(308, 307, '60/306/307/308', 4, 0, 0),
(309, 306, '60/306/309', 3, 0, 0),
(310, 309, '60/306/309/310', 4, 0, 0),
(311, 309, '60/306/309/311', 4, 0, 0),
(312, 306, '60/306/312', 3, 0, 0),
(313, 312, '60/306/312/313', 4, 0, 0),
(314, 307, '60/306/307/314', 4, 0, 0),
(315, 309, '60/306/309/315', 4, 0, 0),
(316, 309, '60/306/309/316', 4, 0, 0),
(317, 307, '60/306/307/317', 4, 0, 0),
(318, 309, '60/306/309/318', 4, 0, 0),
(319, 309, '60/306/309/319', 4, 0, 0),
(320, 309, '60/306/309/320', 4, 0, 0),
(321, 309, '60/306/309/321', 4, 0, 0),
(322, 309, '60/306/309/322', 4, 0, 0),
(323, 309, '60/306/309/323', 4, 0, 0),
(324, 307, '60/306/307/324', 4, 0, 0),
(325, 306, '60/306/325', 3, 0, 0),
(326, 325, '60/306/325/326', 4, 0, 0),
(327, 312, '60/306/312/327', 4, 0, 0),
(328, 309, '60/306/309/328', 4, 0, 0),
(329, 309, '60/306/309/329', 4, 0, 0),
(330, 312, '60/306/312/330', 4, 0, 0),
(331, 307, '60/306/307/331', 4, 0, 0),
(332, 306, '60/306/332', 3, 0, 0),
(333, 332, '60/306/332/333', 4, 0, 0),
(334, 309, '60/306/309/334', 4, 0, 0),
(335, 307, '60/306/307/335', 4, 0, 0),
(336, 306, '60/306/336', 3, 0, 0),
(337, 336, '60/306/336/337', 4, 0, 0),
(338, 217, '217/338', 2, 0, 0),
(339, 338, '217/338/339', 3, 0, 0),
(340, 338, '217/338/340', 3, 0, 0),
(341, 217, '217/341', 2, 0, 0),
(342, 341, '217/341/342', 3, 0, 0),
(343, 342, '217/341/342/343', 4, 0, 0),
(344, 217, '217/344', 2, 0, 0),
(345, 344, '217/344/345', 3, 0, 0),
(346, 217, '217/346', 2, 0, 0),
(347, 346, '217/346/347', 3, 0, 0),
(348, 347, '217/346/347/348', 4, 0, 0),
(349, 217, '217/349', 2, 0, 0),
(350, 349, '217/349/350', 3, 0, 0),
(351, 344, '217/344/351', 3, 0, 0),
(352, 344, '217/344/352', 3, 0, 0),
(353, 344, '217/344/353', 3, 0, 0),
(354, 344, '217/344/354', 3, 0, 0),
(355, 344, '217/344/355', 3, 0, 0),
(356, 344, '217/344/356', 3, 0, 0),
(357, 344, '217/344/357', 3, 0, 0),
(358, 344, '217/344/358', 3, 0, 0),
(359, 217, '217/359', 2, 0, 0),
(360, 359, '217/359/360', 3, 0, 0),
(361, 344, '217/344/361', 3, 0, 0),
(362, 359, '217/359/362', 3, 0, 0),
(363, 346, '217/346/363', 3, 0, 0),
(364, 363, '217/346/363/364', 4, 0, 0),
(409, 0, '409', 1, 0, 0),
(408, 101, '101/408', 2, 0, 0),
(368, 349, '217/349/368', 3, 0, 0),
(369, 368, '217/349/368/369', 4, 0, 0),
(370, 298, '217/295/298/370', 4, 0, 0),
(371, 298, '217/295/298/371', 4, 0, 0),
(372, 298, '217/295/298/372', 4, 0, 0),
(373, 298, '217/295/298/373', 4, 0, 0),
(374, 373, '217/295/298/373/374', 5, 0, 0),
(375, 295, '217/295/375', 3, 0, 0),
(376, 295, '217/295/376', 3, 0, 0),
(377, 371, '217/295/298/371/377', 5, 0, 0),
(378, 298, '217/295/298/378', 4, 0, 0),
(379, 298, '217/295/298/379', 4, 0, 0),
(380, 295, '217/295/380', 3, 0, 0),
(381, 380, '217/295/380/381', 4, 0, 0),
(382, 298, '217/295/298/382', 4, 0, 0),
(383, 298, '217/295/298/383', 4, 0, 0),
(384, 295, '217/295/384', 3, 0, 0),
(385, 298, '217/295/298/385', 4, 0, 0),
(386, 295, '217/295/386', 3, 0, 0),
(387, 298, '217/295/298/387', 4, 0, 0),
(389, 217, '217/389', 2, 0, 0),
(390, 389, '217/389/390', 3, 0, 0),
(391, 389, '217/389/391', 3, 0, 0),
(392, 389, '217/389/392', 3, 0, 0),
(393, 389, '217/389/393', 3, 0, 0),
(394, 389, '217/389/394', 3, 0, 0),
(395, 389, '217/389/395', 3, 0, 0),
(396, 389, '217/389/396', 3, 0, 0),
(397, 389, '217/389/397', 3, 0, 0),
(398, 389, '217/389/398', 3, 0, 0),
(399, 389, '217/389/399', 3, 0, 0),
(400, 389, '217/389/400', 3, 0, 0),
(401, 389, '217/389/401', 3, 0, 0),
(402, 389, '217/389/402', 3, 0, 0),
(403, 389, '217/389/403', 3, 0, 0),
(404, 389, '217/389/404', 3, 0, 0),
(405, 389, '217/389/405', 3, 0, 0),
(406, 389, '217/389/406', 3, 0, 0),
(407, 389, '217/389/407', 3, 0, 0),
(410, 409, '409/410', 2, 0, 0),
(411, 410, '409/410/411', 3, 0, 0),
(412, 411, '409/410/411/412', 4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category_descriptions`
--

CREATE TABLE `category_descriptions` (
  `id` int(11) NOT NULL,
  `category_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `lang_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_descriptions`
--

INSERT INTO `category_descriptions` (`id`, `category_id`, `name`, `description`, `lang_id`) VALUES
(1, 100, 'Women\'s Shavers', NULL, 0),
(2, 99, 'Men\'s Shavers', NULL, 0),
(3, 98, 'Hair Trimmers/clippers', NULL, 0),
(4, 80, 'Strip Lights', NULL, 0),
(5, 77, 'LED Bulbs', NULL, 0),
(6, 78, 'Dimmers', NULL, 0),
(7, 95, 'Toothbrush Heads', NULL, 0),
(8, 76, 'Infrared Bulbs', NULL, 0),
(9, 75, 'Incandescent Bulbs', NULL, 0),
(10, 74, 'Table Lamps', NULL, 0),
(11, 73, 'Flashlights', NULL, 0),
(12, 70, 'Bulbs', NULL, 0),
(13, 69, 'Lighting', NULL, 0),
(14, 68, 'Pillows', NULL, 0),
(15, 67, 'Electric Blankets/pillows', NULL, 0),
(16, 79, 'Fluorescent Bulbs', NULL, 0),
(17, 65, 'Trash Cans', NULL, 0),
(18, 64, 'Waste Baskets', NULL, 0),
(19, 63, 'Trash Bags', NULL, 0),
(20, 94, 'Electric Toothbrushes', NULL, 0),
(21, 92, 'Knives', NULL, 0),
(22, 93, 'Health & Beauty', NULL, 0),
(23, 91, 'Plates & Dishes', NULL, 0),
(24, 72, 'Halogen Bulbs', NULL, 0),
(25, 71, 'Ultraviolet (UV) Bulbs', NULL, 0),
(26, 90, 'Cups & Mugs', NULL, 0),
(27, 89, 'Food Storage Containers', NULL, 0),
(28, 86, 'Dishes, Servingware & Storage Containers', NULL, 0),
(29, 85, 'Kitchenware', NULL, 0),
(30, 84, 'Wall Lighting', NULL, 0),
(31, 62, 'Waste Containers & Accessories', NULL, 0),
(32, 60, 'Home', NULL, 0),
(33, 61, 'Kitchen & Houseware Accessories', NULL, 0),
(34, 88, 'Jugs', NULL, 0),
(35, 87, 'Thermoses', NULL, 0),
(36, 97, 'Hair Stylers', NULL, 0),
(37, 96, 'Hair Dryers', NULL, 0),
(38, 83, 'Ceiling Lighting', NULL, 0),
(39, 82, 'Lighting Spots', NULL, 0),
(40, 81, 'Electric Candles', NULL, 0),
(41, 66, 'Bedding & Linens', NULL, 0),
(42, 101, 'Entertainment', '', 0),
(43, 102, 'Video Games & Consoles', NULL, 0),
(44, 103, 'Video Games', NULL, 0),
(45, 104, 'Game Console Accessories', NULL, 0),
(46, 105, 'Game Consoles', NULL, 0),
(47, 106, 'Epilators', NULL, 0),
(48, 107, 'Shaver Accessories', NULL, 0),
(49, 108, 'Infotainment', NULL, 0),
(50, 109, 'BD/DVD Movies', NULL, 0),
(51, 110, 'Office', NULL, 0),
(52, 111, 'Equipment Cleansing Kit', NULL, 0),
(53, 112, 'Calculators', NULL, 0),
(54, 113, 'Folders, Binders & Indexes', NULL, 0),
(55, 114, 'Document Holders', NULL, 0),
(56, 115, 'Typewriters', NULL, 0),
(57, 116, 'Correction Ribbons', NULL, 0),
(58, 117, 'Desk Accessories & Supplies', NULL, 0),
(59, 118, 'Desk Supplies', NULL, 0),
(60, 119, 'Tapes', NULL, 0),
(61, 120, 'Typewriter Ribbons', NULL, 0),
(62, 121, 'Glues', NULL, 0),
(63, 122, 'Boards', NULL, 0),
(64, 123, 'Easels', NULL, 0),
(65, 124, 'Mail Supplies', NULL, 0),
(66, 125, 'Packaging Materials', NULL, 0),
(67, 126, 'Box Sealing Tape Dispensers', NULL, 0),
(68, 127, 'Writing Paper', NULL, 0),
(69, 128, 'Writing Notebooks', NULL, 0),
(70, 129, 'Tab Indexes', NULL, 0),
(71, 130, 'Laminators', NULL, 0),
(72, 131, 'Lamination Films', NULL, 0),
(73, 132, 'Self Adhesive Tabs', NULL, 0),
(74, 133, 'Cleaning Wipes For Office', NULL, 0),
(75, 134, 'Paper Cutters', NULL, 0),
(76, 135, 'Office Furniture', NULL, 0),
(77, 136, 'Foot Rests', NULL, 0),
(78, 137, 'Seals', NULL, 0),
(79, 138, 'Tape Dispensers', NULL, 0),
(80, 139, 'Self-adhesive Labels', NULL, 0),
(81, 140, 'Staples', NULL, 0),
(82, 141, 'Printwheels', NULL, 0),
(83, 142, 'Laminator Pouches', NULL, 0),
(84, 143, 'Desk Trays', NULL, 0),
(85, 144, 'Writing Instruments', NULL, 0),
(86, 145, 'Pen Refills', NULL, 0),
(87, 146, 'Ink Pads', NULL, 0),
(88, 147, 'Carbon Paper', NULL, 0),
(89, 148, 'Desk Drawer Organizers', NULL, 0),
(90, 149, 'Drawing Supplies', NULL, 0),
(91, 150, 'Art Paper', NULL, 0),
(92, 151, 'Graph Paper', NULL, 0),
(93, 152, 'Inks', NULL, 0),
(94, 153, 'Clasp Fasteners', NULL, 0),
(95, 154, 'Dry Erase Boards', NULL, 0),
(96, 155, 'Paper Clips', NULL, 0),
(97, 156, 'Bulletin Boards', NULL, 0),
(98, 157, 'Correction Media', NULL, 0),
(99, 158, 'Correction Tapes', NULL, 0),
(100, 159, 'Multimedia Carts & Stands', NULL, 0),
(101, 160, 'Storage Chests & Cabinets & Trunks', NULL, 0),
(102, 161, 'Label Holders', NULL, 0),
(103, 162, 'Interactive Whiteboards', NULL, 0),
(104, 163, 'Markers', NULL, 0),
(105, 164, 'Smart Card Readers', NULL, 0),
(106, 165, 'Hooks', NULL, 0),
(107, 166, 'Baby & Children', NULL, 0),
(108, 167, 'Baby Safety', NULL, 0),
(109, 168, 'Babyphones', NULL, 0),
(110, 169, 'Baby Bathing & Potting', NULL, 0),
(111, 170, 'Bath Thermometers', NULL, 0),
(112, 171, 'Feeding, Diapering & Nursing', NULL, 0),
(113, 172, 'Bottle Sterilizers', NULL, 0),
(114, 173, 'Feeding Bottles', NULL, 0),
(115, 174, 'Bottle Nipples', NULL, 0),
(116, 175, 'Baby Video Monitors', NULL, 0),
(117, 176, 'Breast Pumps', NULL, 0),
(118, 177, 'Baby Pacifiers', NULL, 0),
(119, 178, 'Nipple Cream', NULL, 0),
(120, 179, 'Toddler Feeding Accessories', NULL, 0),
(121, 180, 'Teethers', NULL, 0),
(122, 181, 'Toddler Cutlery Sets', NULL, 0),
(123, 182, 'Toddler Feeding Sets', NULL, 0),
(124, 183, 'Toddler Drinking', NULL, 0),
(125, 184, 'Socket Covers', NULL, 0),
(126, 185, 'Baby Travel', NULL, 0),
(127, 186, 'Baby Car Seats', NULL, 0),
(128, 187, 'Newborn Feeding Starter Sets', NULL, 0),
(129, 188, 'Baby Furniture', NULL, 0),
(130, 189, 'Playpens', NULL, 0),
(131, 190, 'High Chairs', NULL, 0),
(132, 191, 'Storage Accessories For Office Machines', NULL, 0),
(133, 192, 'Folding Machines', NULL, 0),
(134, 193, 'Clipboards', NULL, 0),
(135, 194, 'Staplers', NULL, 0),
(136, 195, 'Hanging Folders & Accessories', NULL, 0),
(137, 196, 'Hole Punches', NULL, 0),
(138, 197, 'Hole Punch Accessories', NULL, 0),
(139, 198, 'Ring Binders', NULL, 0),
(140, 199, 'Non-adhesive Labels', NULL, 0),
(141, 200, 'Folders', NULL, 0),
(142, 201, 'Computer Furniture Parts', NULL, 0),
(143, 202, 'Sheet Protectors', NULL, 0),
(144, 203, 'Picture Frames', NULL, 0),
(145, 204, 'Photo Albums', NULL, 0),
(146, 205, 'File Storage Boxes & Organizers', NULL, 0),
(147, 206, 'Paper Shredders', NULL, 0),
(148, 207, 'Binding Machines', NULL, 0),
(149, 208, 'Cash Handling Supplies', NULL, 0),
(150, 209, 'Cash & Ticket Boxes', NULL, 0),
(151, 210, 'Folder Binding Accessories', NULL, 0),
(152, 211, 'Packaging Paper', NULL, 0),
(153, 212, 'Filing Pockets', NULL, 0),
(154, 213, 'Stapler Units', NULL, 0),
(155, 214, 'Dividers', NULL, 0),
(156, 215, 'Showcases', NULL, 0),
(157, 216, 'Pen & Pencil Holders', NULL, 0),
(158, 217, 'Computers & Electronics', NULL, 0),
(159, 218, 'Audio & Home Theatre', NULL, 0),
(160, 219, 'MP3/MP4 Players', NULL, 0),
(161, 220, 'MP3/MP4 Player Accessories', NULL, 0),
(162, 221, 'Video Capturing Devices', NULL, 0),
(163, 222, 'Microphones', NULL, 0),
(164, 223, 'MP3/MP4 Cases', NULL, 0),
(165, 224, 'Computer TV Tuners', NULL, 0),
(166, 225, 'Remote Controls', NULL, 0),
(167, 226, 'Docking Speakers', NULL, 0),
(168, 227, 'Headsets', NULL, 0),
(169, 228, 'CD Radios', NULL, 0),
(170, 229, 'Radios', NULL, 0),
(171, 230, 'Digital Media Players', NULL, 0),
(172, 231, 'Loudspeakers', NULL, 0),
(173, 232, 'Home Audio Sets', NULL, 0),
(174, 233, 'Headphones', NULL, 0),
(175, 234, 'Headphone Pillows', NULL, 0),
(176, 235, 'CD Players', NULL, 0),
(177, 236, 'Speaker Sets', NULL, 0),
(178, 237, 'Video Converters', NULL, 0),
(179, 238, 'Bluetooth Music Receivers', NULL, 0),
(180, 239, 'Multimedia Motion Sensors', NULL, 0),
(181, 240, 'Home Cinema Systems', NULL, 0),
(182, 241, 'Watches', '', 0),
(183, 242, 'Alarm clocks', '', 0),
(184, 243, 'Equipment Cases', '', 0),
(185, 244, 'Facial Saunas', NULL, 0),
(186, 245, 'Digital Body Thermometers', '', 0),
(187, 246, 'Solariums', NULL, 0),
(188, 247, 'Infrared Treatment', NULL, 0),
(189, 248, 'Teeth Care', NULL, 0),
(190, 249, 'Beard Trimmers', NULL, 0),
(191, 250, 'Hair Curlers', NULL, 0),
(192, 251, 'Hair Rollers', NULL, 0),
(193, 252, 'Precision Trimmers', NULL, 0),
(194, 253, 'Makeup Mirrors', NULL, 0),
(195, 254, 'Hair Straighteners', NULL, 0),
(196, 255, 'Blood Pressure Units', NULL, 0),
(197, 256, 'Massagers', NULL, 0),
(198, 257, 'Body Groomers/shavers', NULL, 0),
(199, 258, 'Personal Scales', NULL, 0),
(200, 259, 'Manicure/pedicure Implements', NULL, 0),
(201, 260, 'Alarm Clocks', NULL, 0),
(202, 261, 'Eyelash Curlers', NULL, 0),
(203, 262, 'Light Depilation', NULL, 0),
(204, 263, 'Baby Gift Sets', NULL, 0),
(205, 264, 'AV Receivers', NULL, 0),
(206, 265, 'FM Transmitters', NULL, 0),
(207, 266, 'Video Mixers', NULL, 0),
(208, 267, 'Video Switches', NULL, 0),
(209, 268, 'Scan Converters', NULL, 0),
(210, 269, 'AV Extenders', NULL, 0),
(211, 270, 'Audio Converters', NULL, 0),
(212, 271, 'Audio Amplifiers', NULL, 0),
(213, 272, 'Industrial & Lab Equipment', NULL, 0),
(214, 273, 'Electrical Equipment & Supplies', NULL, 0),
(215, 274, 'Power Conditioning', NULL, 0),
(216, 275, 'Power Adapters & Inverters', NULL, 0),
(217, 276, 'Batteries & Accessories', NULL, 0),
(218, 277, 'Rechargeable Batteries', NULL, 0),
(219, 278, 'Battery Chargers', NULL, 0),
(220, 279, 'Power Supply Units', NULL, 0),
(221, 280, 'Personal Safety & Protection', NULL, 0),
(222, 281, 'Hearing Protectors', NULL, 0),
(223, 282, 'Ear Plugs', NULL, 0),
(224, 283, 'Safety Helmets', NULL, 0),
(225, 284, 'Uninterruptible Power Supplies (UPSs)', NULL, 0),
(226, 285, 'Circuit Protection', NULL, 0),
(227, 286, 'Surge Protectors', NULL, 0),
(228, 287, 'Power Distribution Units (PDUs)', NULL, 0),
(229, 288, 'Electrical Boxes & Accessories', NULL, 0),
(230, 289, 'Electrical Boxes', NULL, 0),
(231, 290, 'UPS Batteries', NULL, 0),
(232, 291, 'Safety Glasses', NULL, 0),
(233, 292, 'Electrical Connection', NULL, 0),
(234, 293, 'Power Plug Adapters', NULL, 0),
(235, 294, 'Power Extensions', NULL, 0),
(236, 295, 'Cameras & Camcorders', NULL, 0),
(237, 296, 'Camcorders', NULL, 0),
(238, 297, 'Digital Cameras', NULL, 0),
(239, 298, 'Camera Accessories', NULL, 0),
(240, 299, 'Camera Docks', NULL, 0),
(241, 300, 'Camera Lens Adapters', NULL, 0),
(242, 301, 'Camera Lenses', NULL, 0),
(243, 302, 'Camera Kits', NULL, 0),
(244, 303, 'Lens Caps', NULL, 0),
(245, 304, 'Camera Cables', NULL, 0),
(246, 305, 'Lens Hoods', NULL, 0),
(247, 306, 'Domestic Appliances', NULL, 0),
(248, 307, 'Small Kitchen Appliances', NULL, 0),
(249, 308, 'Electric Kettles', NULL, 0),
(250, 309, 'Large Home Appliances', NULL, 0),
(251, 310, 'Dishwashers', NULL, 0),
(252, 311, 'Freezers', NULL, 0),
(253, 312, 'Floor Care', NULL, 0),
(254, 313, 'Vacuum Cleaners', NULL, 0),
(255, 314, 'Kitchen Scales', NULL, 0),
(256, 315, 'Cooker Hoods', NULL, 0),
(257, 316, 'Hobs', NULL, 0),
(258, 317, 'Microwaves', NULL, 0),
(259, 318, 'Tumble Dryers', NULL, 0),
(260, 319, 'Washing Machines', NULL, 0),
(261, 320, 'Fridge-freezers', NULL, 0),
(262, 321, 'Combi-fridges', NULL, 0),
(263, 322, 'Fridges', NULL, 0),
(264, 323, 'Ovens', NULL, 0),
(265, 324, 'Coffee Makers', NULL, 0),
(266, 325, 'Climate Control', NULL, 0),
(267, 326, 'Air Purifiers', NULL, 0),
(268, 327, 'Portable Vacuum Cleaners', NULL, 0),
(269, 328, 'Cooking Appliances Sets', NULL, 0),
(270, 329, 'Cookers', NULL, 0),
(271, 330, 'Vacuum Cleaner Supplies', NULL, 0),
(272, 331, 'Deep Fryers', NULL, 0),
(273, 332, 'Sanitary Ware', NULL, 0),
(274, 333, 'Faucets', NULL, 0),
(275, 334, 'Washer Dryers', NULL, 0),
(276, 335, 'Ice Cream Makers', NULL, 0),
(277, 336, 'Sewing & Ironing', NULL, 0),
(278, 337, 'Sewing Machines', NULL, 0),
(279, 338, 'Warranty & Support', NULL, 0),
(280, 339, 'Warranty & Support Extensions', NULL, 0),
(281, 340, 'Installation Services', NULL, 0),
(282, 341, 'Printers & Supplies', NULL, 0),
(283, 342, 'Printing Supplies', NULL, 0),
(284, 343, 'Laser Toner & Cartridges', NULL, 0),
(285, 344, 'Networking', NULL, 0),
(286, 345, 'Network Antennas', NULL, 0),
(287, 346, 'Computer Components', NULL, 0),
(288, 347, 'System Components', NULL, 0),
(289, 348, 'Networking Cards', NULL, 0),
(290, 349, 'Software', NULL, 0),
(291, 350, 'Software Licenses/upgrades', NULL, 0),
(292, 351, 'Hardware Firewalls', NULL, 0),
(293, 352, 'Wireless Routers', NULL, 0),
(294, 353, 'Network Switches', NULL, 0),
(295, 354, 'Wired Routers', NULL, 0),
(296, 355, 'Gateways/controllers', NULL, 0),
(297, 356, 'WLAN Access Points', NULL, 0),
(298, 357, 'Network Media Converters', NULL, 0),
(299, 358, 'Modems', NULL, 0),
(300, 359, 'Computer Cables', NULL, 0),
(301, 360, 'Coaxial Cables', NULL, 0),
(302, 361, 'PoE Adapters', NULL, 0),
(303, 362, 'Cable Interface/gender Adapters', NULL, 0),
(304, 363, 'Chassis Components', NULL, 0),
(305, 364, 'Mounting Kits', NULL, 0),
(306, 410, 'Game consoles', NULL, 0),
(307, 409, 'Electronics', NULL, 0),
(308, 408, 'Game Consoles', NULL, 0),
(309, 368, 'Networking Software', NULL, 0),
(310, 369, 'Network Management Software', NULL, 0),
(311, 370, 'Camera Cases', NULL, 0),
(312, 371, 'Camera Flashes', NULL, 0),
(313, 372, 'Camera Filters', NULL, 0),
(314, 373, 'Underwater Camera Housings', NULL, 0),
(315, 374, 'Underwater Camera Housing Accessories', NULL, 0),
(316, 375, 'Binoculars', NULL, 0),
(317, 376, 'Webcams', NULL, 0),
(318, 377, 'Camera Flash Accessories', NULL, 0),
(319, 378, 'Camera Monopods', NULL, 0),
(320, 379, 'Camera Housings', NULL, 0),
(321, 380, 'Eyepieces', NULL, 0),
(322, 381, 'Eyepiece Accessories', NULL, 0),
(323, 382, 'Audio Modules', NULL, 0),
(324, 383, 'Blank Video Tapes', NULL, 0),
(325, 384, 'Film Cameras', NULL, 0),
(326, 385, 'Tripods', NULL, 0),
(327, 386, 'Straps', NULL, 0),
(328, 387, 'Digital Camera Battery Grips', NULL, 0),
(329, 388, 'Watches', NULL, 0),
(330, 389, 'TVs & Monitors', NULL, 0),
(331, 390, 'Flat Panel Accessories', NULL, 0),
(332, 391, 'PC Flat Panels', NULL, 0),
(333, 392, 'Flat Panel Desk Mounts', NULL, 0),
(334, 393, 'Monitors CRT', NULL, 0),
(335, 394, 'Flat Panel Floor Stands', NULL, 0),
(336, 395, 'Flat Panel Ceiling Mounts', NULL, 0),
(337, 396, 'LCD TVs', NULL, 0),
(338, 397, 'Flat Panel Wall Mounts', NULL, 0),
(339, 398, 'Display Privacy Filters', NULL, 0),
(340, 399, 'Digital Photo Frames', NULL, 0),
(341, 400, 'Wall & Ceiling Mounts Accessories', NULL, 0),
(342, 401, 'Video Splitters', NULL, 0),
(343, 402, 'Public Displays', NULL, 0),
(344, 403, 'Television Antennas', NULL, 0),
(345, 404, 'Plasma TVs', NULL, 0),
(346, 405, 'LED TVs', NULL, 0),
(347, 406, 'Touch Screen Monitors', NULL, 0),
(348, 407, 'Stereoscopic 3D Glasses', NULL, 0),
(349, 411, 'Consoles', NULL, 0),
(350, 412, 'Microsoft', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category_feature_rel`
--

CREATE TABLE `category_feature_rel` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_feature_rel`
--

INSERT INTO `category_feature_rel` (`id`, `category_id`, `feature_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feature_variants`
--

CREATE TABLE `feature_variants` (
  `id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feature_variants`
--

INSERT INTO `feature_variants` (`id`, `feature_id`, `status`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feature_variant_descriptions`
--

CREATE TABLE `feature_variant_descriptions` (
  `id` int(11) NOT NULL,
  `variant_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `variant` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lang_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feature_variant_descriptions`
--

INSERT INTO `feature_variant_descriptions` (`id`, `variant_id`, `variant`, `description`, `lang_id`) VALUES
(1, 1, 'karmir', 'karmir', 1),
(2, 1, 'red', 'red', 2),
(3, 1, 'krasny', 'krasny', 3),
(4, 2, 'kapuyt', 'kapuyt', 1),
(5, 2, 'blue', 'blue', 2),
(6, 2, 'sinii', 'sinii', 3),
(7, 3, 'spitak', 'spitak', 1),
(8, 3, 'white', 'white', 2),
(9, 3, 'belyi', 'belyi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `product_id`) VALUES
(1, 'https://s.list.am/p/331/25578331.webp', 1),
(2, 'https://s.list.am/p/332/25578332.webp', 1),
(3, 'https://s.list.am/p/334/25578334.webp', 1),
(4, 'https://s.list.am/p/749/24427749.webp', 2);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `code` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`) VALUES
(1, 'hy', 'Հայերեն'),
(2, 'ru', 'русский'),
(3, 'en', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `price` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `price`, `user_id`, `category_id`, `views`, `status`) VALUES
(1, 4002, 2, 1, 0, 0),
(2, 170004, 2, 1, 0, 0),
(3, 170006, 2, 1, 0, 0),
(4, 170008, 2, 1, 0, 0),
(5, 170010, 2, 1, 0, 0),
(6, 170012, 2, 1, 0, 0),
(7, 170014, 2, 1, 0, 0),
(8, 170015, 2, 1, 0, 0),
(9, 170016, 2, 1, 0, 0),
(10, 170017, 2, 1, 0, 0),
(11, 170018, 2, 1, 0, 0),
(12, 170019, 2, 1, 0, 0),
(13, 170020, 2, 1, 0, 0),
(14, 170021, 2, 1, 0, 0),
(15, 170022, 2, 1, 0, 0),
(16, 170023, 2, 1, 0, 0),
(17, 170024, 2, 1, 0, 0),
(18, 170025, 2, 1, 0, 0),
(19, 170026, 2, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_descriptions`
--

CREATE TABLE `product_descriptions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `lang_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_descriptions`
--

INSERT INTO `product_descriptions` (`id`, `product_id`, `name`, `description`, `lang_id`) VALUES
(1, 1, 'LG K20 V 16GB, 2GB RAM, 4x1.4 GHz, 5.3\" 720p, 13MP, ?????????, Android 7.0', 'Այլ հեռախոսների համար դիտեք իմ մյուս հայտարարությունները։\r\nԲոլոր նկարները հենց վաճառվող հեռախոսինն են։ Գտնվում է իդեալական վիճակում։ Ունի մատնահետքի սենսոր։ Աշխատում է Android 7.0 Nougat համակարգով։ Նկարում է գերազանց նկարներ և վիդեո։', 1),
(2, 2, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(3, 3, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(4, 4, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(5, 5, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(6, 6, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(7, 7, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(8, 8, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(9, 9, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(10, 10, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(11, 11, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(12, 12, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(13, 13, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(14, 14, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(15, 15, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(16, 16, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(17, 17, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(18, 18, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1),
(19, 19, 'Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%', 'IPhone 6s space gray gold and rose gold Pak tup\r\n16gb-155000 64gb-170000\r\nAparik vajarq 0% kanxavjar ACBA ECONOM. VTB\r\nAraqum ANVJAR\r\nNver patyan ev dimapaki\r\nErashxiq!\r\nORIGINAL!', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_features`
--

CREATE TABLE `product_features` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_features`
--

INSERT INTO `product_features` (`id`, `status`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_features_descriptions`
--

CREATE TABLE `product_features_descriptions` (
  `id` int(11) NOT NULL,
  `feature_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `full_description` mediumtext,
  `lang_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_features_descriptions`
--

INSERT INTO `product_features_descriptions` (`id`, `feature_id`, `name`, `full_description`, `lang_id`) VALUES
(1, 1, 'color', 'color', 2),
(2, 1, 'guyn', 'guyn', 1),
(3, 1, 'cvet', 'cvet', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_rel`
--

CREATE TABLE `product_variant_rel` (
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role`) VALUES
(1, 'ADMIN'),
(2, 'CLIENT');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `active`, `email`, `last_name`, `name`, `password`) VALUES
(1, 1, 'vigenshakaryan@gmail.com', 'shakaryan', 'vigen shakaryan', '$2a$10$J4tdVPxmnAUZbWKnjUKLLeKXZtEYwwZGz7ZtT5xTZYqwyy3t/TCuS');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_descriptions`
--
ALTER TABLE `category_descriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKch10o5wqmvlq3ysnow4n55qlg` (`category_id`);

--
-- Indexes for table `category_feature_rel`
--
ALTER TABLE `category_feature_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_variants`
--
ALTER TABLE `feature_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_id` (`feature_id`);

--
-- Indexes for table `feature_variant_descriptions`
--
ALTER TABLE `feature_variant_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `product_descriptions`
--
ALTER TABLE `product_descriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKr2nayvgycfj7grrhagiojxct6` (`product_id`);

--
-- Indexes for table `product_features`
--
ALTER TABLE `product_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_features_descriptions`
--
ALTER TABLE `product_features_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variant_rel`
--
ALTER TABLE `product_variant_rel`
  ADD UNIQUE KEY `product_id` (`product_id`,`variant_id`) USING BTREE,
  ADD KEY `variant_id` (`variant_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `category_descriptions`
--
ALTER TABLE `category_descriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `category_feature_rel`
--
ALTER TABLE `category_feature_rel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feature_variants`
--
ALTER TABLE `feature_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feature_variant_descriptions`
--
ALTER TABLE `feature_variant_descriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_descriptions`
--
ALTER TABLE `product_descriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_features_descriptions`
--
ALTER TABLE `product_features_descriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feature_variants`
--
ALTER TABLE `feature_variants`
  ADD CONSTRAINT `feature_variants_ibfk_1` FOREIGN KEY (`feature_id`) REFERENCES `product_features` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_descriptions`
--
ALTER TABLE `product_descriptions`
  ADD CONSTRAINT `FKr2nayvgycfj7grrhagiojxct6` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_variant_rel`
--
ALTER TABLE `product_variant_rel`
  ADD CONSTRAINT `product_variant_rel_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_variant_rel_ibfk_2` FOREIGN KEY (`variant_id`) REFERENCES `feature_variants` (`id`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
