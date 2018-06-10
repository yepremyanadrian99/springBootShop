-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2018 at 03:04 AM
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
(1, 100, 'Women\'s Shavers', NULL, 1),
(2, 99, 'Men\'s Shavers', NULL, 1),
(3, 98, 'Hair Trimmers/clippers', NULL, 1),
(4, 80, 'Strip Lights', NULL, 1),
(5, 77, 'LED Bulbs', NULL, 1),
(6, 78, 'Dimmers', NULL, 1),
(7, 95, 'Toothbrush Heads', NULL, 1),
(8, 76, 'Infrared Bulbs', NULL, 1),
(9, 75, 'Incandescent Bulbs', NULL, 1),
(10, 74, 'Table Lamps', NULL, 1),
(11, 73, 'Flashlights', NULL, 1),
(12, 70, 'Bulbs', NULL, 1),
(13, 69, 'Lighting', NULL, 1),
(14, 68, 'Pillows', NULL, 1),
(15, 67, 'Electric Blankets/pillows', NULL, 1),
(16, 79, 'Fluorescent Bulbs', NULL, 1),
(17, 65, 'Trash Cans', NULL, 1),
(18, 64, 'Waste Baskets', NULL, 1),
(19, 63, 'Trash Bags', NULL, 1),
(20, 94, 'Electric Toothbrushes', NULL, 1),
(21, 92, 'Knives', NULL, 1),
(22, 93, 'Health & Beauty', NULL, 1),
(23, 91, 'Plates & Dishes', NULL, 1),
(24, 72, 'Halogen Bulbs', NULL, 1),
(25, 71, 'Ultraviolet (UV) Bulbs', NULL, 1),
(26, 90, 'Cups & Mugs', NULL, 1),
(27, 89, 'Food Storage Containers', NULL, 1),
(28, 86, 'Dishes, Servingware & Storage Containers', NULL, 1),
(29, 85, 'Kitchenware', NULL, 1),
(30, 84, 'Wall Lighting', NULL, 1),
(31, 62, 'Waste Containers & Accessories', NULL, 1),
(32, 60, 'Home', NULL, 1),
(33, 61, 'Kitchen & Houseware Accessories', NULL, 1),
(34, 88, 'Jugs', NULL, 1),
(35, 87, 'Thermoses', NULL, 1),
(36, 97, 'Hair Stylers', NULL, 1),
(37, 96, 'Hair Dryers', NULL, 1),
(38, 83, 'Ceiling Lighting', NULL, 1),
(39, 82, 'Lighting Spots', NULL, 1),
(40, 81, 'Electric Candles', NULL, 1),
(41, 66, 'Bedding & Linens', NULL, 1),
(42, 101, 'Entertainment', '', 1),
(43, 102, 'Video Games & Consoles', NULL, 1),
(44, 103, 'Video Games', NULL, 1),
(45, 104, 'Game Console Accessories', NULL, 1),
(46, 105, 'Game Consoles', NULL, 1),
(47, 106, 'Epilators', NULL, 1),
(48, 107, 'Shaver Accessories', NULL, 1),
(49, 108, 'Infotainment', NULL, 1),
(50, 109, 'BD/DVD Movies', NULL, 1),
(51, 110, 'Office', NULL, 1),
(52, 111, 'Equipment Cleansing Kit', NULL, 1),
(53, 112, 'Calculators', NULL, 1),
(54, 113, 'Folders, Binders & Indexes', NULL, 1),
(55, 114, 'Document Holders', NULL, 1),
(56, 115, 'Typewriters', NULL, 1),
(57, 116, 'Correction Ribbons', NULL, 1),
(58, 117, 'Desk Accessories & Supplies', NULL, 1),
(59, 118, 'Desk Supplies', NULL, 1),
(61, 120, 'Typewriter Ribbons', NULL, 1),
(62, 121, 'Glues', NULL, 1),
(63, 122, 'Boards', NULL, 1),
(64, 123, 'Easels', NULL, 1),
(65, 124, 'Mail Supplies', NULL, 1),
(66, 125, 'Packaging Materials', NULL, 1),
(67, 126, 'Box Sealing Tape Dispensers', NULL, 1),
(68, 127, 'Writing Paper', NULL, 1),
(69, 128, 'Writing Notebooks', NULL, 1),
(70, 129, 'Tab Indexes', NULL, 1),
(71, 130, 'Laminators', NULL, 1),
(72, 131, 'Lamination Films', NULL, 1),
(73, 132, 'Self Adhesive Tabs', NULL, 1),
(74, 133, 'Cleaning Wipes For Office', NULL, 1),
(75, 134, 'Paper Cutters', NULL, 1),
(76, 135, 'Office Furniture', NULL, 1),
(77, 136, 'Foot Rests', NULL, 1),
(78, 137, 'Seals', NULL, 1),
(79, 138, 'Tape Dispensers', NULL, 1),
(80, 139, 'Self-adhesive Labels', NULL, 1),
(81, 140, 'Staples', NULL, 1),
(82, 141, 'Printwheels', NULL, 1),
(83, 142, 'Laminator Pouches', NULL, 1),
(84, 143, 'Desk Trays', NULL, 1),
(85, 144, 'Writing Instruments', NULL, 1),
(86, 145, 'Pen Refills', NULL, 1),
(87, 146, 'Ink Pads', NULL, 1),
(88, 147, 'Carbon Paper', NULL, 1),
(89, 148, 'Desk Drawer Organizers', NULL, 1),
(90, 149, 'Drawing Supplies', NULL, 1),
(91, 150, 'Art Paper', NULL, 1),
(92, 151, 'Graph Paper', NULL, 1),
(93, 152, 'Inks', NULL, 1),
(94, 153, 'Clasp Fasteners', NULL, 1),
(95, 154, 'Dry Erase Boards', NULL, 1),
(96, 155, 'Paper Clips', NULL, 1),
(97, 156, 'Bulletin Boards', NULL, 1),
(98, 157, 'Correction Media', NULL, 1),
(99, 158, 'Correction Tapes', NULL, 1),
(100, 159, 'Multimedia Carts & Stands', NULL, 1),
(101, 160, 'Storage Chests & Cabinets & Trunks', NULL, 1),
(102, 161, 'Label Holders', NULL, 1),
(103, 162, 'Interactive Whiteboards', NULL, 1),
(104, 163, 'Markers', NULL, 1),
(105, 164, 'Smart Card Readers', NULL, 1),
(106, 165, 'Hooks', NULL, 1),
(107, 166, 'Baby & Children', NULL, 1),
(108, 167, 'Baby Safety', NULL, 1),
(109, 168, 'Babyphones', NULL, 1),
(110, 169, 'Baby Bathing & Potting', NULL, 1),
(111, 170, 'Bath Thermometers', NULL, 1),
(112, 171, 'Feeding, Diapering & Nursing', NULL, 1),
(113, 172, 'Bottle Sterilizers', NULL, 1),
(114, 173, 'Feeding Bottles', NULL, 1),
(115, 174, 'Bottle Nipples', NULL, 1),
(116, 175, 'Baby Video Monitors', NULL, 1),
(117, 176, 'Breast Pumps', NULL, 1),
(118, 177, 'Baby Pacifiers', NULL, 1),
(119, 178, 'Nipple Cream', NULL, 1),
(120, 179, 'Toddler Feeding Accessories', NULL, 1),
(121, 180, 'Teethers', NULL, 1),
(122, 181, 'Toddler Cutlery Sets', NULL, 1),
(123, 182, 'Toddler Feeding Sets', NULL, 1),
(124, 183, 'Toddler Drinking', NULL, 1),
(125, 184, 'Socket Covers', NULL, 1),
(126, 185, 'Baby Travel', NULL, 1),
(127, 186, 'Baby Car Seats', NULL, 1),
(128, 187, 'Newborn Feeding Starter Sets', NULL, 1),
(129, 188, 'Baby Furniture', NULL, 1),
(130, 189, 'Playpens', NULL, 1),
(131, 190, 'High Chairs', NULL, 1),
(132, 191, 'Storage Accessories For Office Machines', NULL, 1),
(133, 192, 'Folding Machines', NULL, 1),
(134, 193, 'Clipboards', NULL, 1),
(135, 194, 'Staplers', NULL, 1),
(136, 195, 'Hanging Folders & Accessories', NULL, 1),
(137, 196, 'Hole Punches', NULL, 1),
(138, 197, 'Hole Punch Accessories', NULL, 1),
(139, 198, 'Ring Binders', NULL, 1),
(140, 199, 'Non-adhesive Labels', NULL, 1),
(141, 200, 'Folders', NULL, 1),
(142, 201, 'Computer Furniture Parts', NULL, 1),
(143, 202, 'Sheet Protectors', NULL, 1),
(144, 203, 'Picture Frames', NULL, 1),
(145, 204, 'Photo Albums', NULL, 1),
(146, 205, 'File Storage Boxes & Organizers', NULL, 1),
(147, 206, 'Paper Shredders', NULL, 1),
(148, 207, 'Binding Machines', NULL, 1),
(149, 208, 'Cash Handling Supplies', NULL, 1),
(150, 209, 'Cash & Ticket Boxes', NULL, 1),
(151, 210, 'Folder Binding Accessories', NULL, 1),
(152, 211, 'Packaging Paper', NULL, 1),
(153, 212, 'Filing Pockets', NULL, 1),
(154, 213, 'Stapler Units', NULL, 1),
(155, 214, 'Dividers', NULL, 1),
(156, 215, 'Showcases', NULL, 1),
(157, 216, 'Pen & Pencil Holders', NULL, 1),
(158, 217, 'Computers & Electronics', NULL, 1),
(159, 218, 'Audio & Home Theatre', NULL, 1),
(160, 219, 'MP3/MP4 Players', NULL, 1),
(161, 220, 'MP3/MP4 Player Accessories', NULL, 1),
(162, 221, 'Video Capturing Devices', NULL, 1),
(163, 222, 'Microphones', NULL, 1),
(164, 223, 'MP3/MP4 Cases', NULL, 1),
(165, 224, 'Computer TV Tuners', NULL, 1),
(166, 225, 'Remote Controls', NULL, 1),
(167, 226, 'Docking Speakers', NULL, 1),
(168, 227, 'Headsets', NULL, 1),
(169, 228, 'CD Radios', NULL, 1),
(170, 229, 'Radios', NULL, 1),
(171, 230, 'Digital Media Players', NULL, 1),
(172, 231, 'Loudspeakers', NULL, 1),
(173, 232, 'Home Audio Sets', NULL, 1),
(174, 233, 'Headphones', NULL, 1),
(175, 234, 'Headphone Pillows', NULL, 1),
(176, 235, 'CD Players', NULL, 1),
(177, 236, 'Speaker Sets', NULL, 1),
(178, 237, 'Video Converters', NULL, 1),
(179, 238, 'Bluetooth Music Receivers', NULL, 1),
(180, 239, 'Multimedia Motion Sensors', NULL, 1),
(181, 240, 'Home Cinema Systems', NULL, 1),
(182, 241, 'Watches', '', 1),
(183, 242, 'Alarm clocks', '', 1),
(184, 243, 'Equipment Cases', '', 1),
(185, 244, 'Facial Saunas', NULL, 1),
(186, 245, 'Digital Body Thermometers', '', 1),
(187, 246, 'Solariums', NULL, 1),
(188, 247, 'Infrared Treatment', NULL, 1),
(189, 248, 'Teeth Care', NULL, 1),
(190, 249, 'Beard Trimmers', NULL, 1),
(191, 250, 'Hair Curlers', NULL, 1),
(192, 251, 'Hair Rollers', NULL, 1),
(193, 252, 'Precision Trimmers', NULL, 1),
(194, 253, 'Makeup Mirrors', NULL, 1),
(195, 254, 'Hair Straighteners', NULL, 1),
(196, 255, 'Blood Pressure Units', NULL, 1),
(197, 256, 'Massagers', NULL, 1),
(198, 257, 'Body Groomers/shavers', NULL, 1),
(199, 258, 'Personal Scales', NULL, 1),
(200, 259, 'Manicure/pedicure Implements', NULL, 1),
(201, 260, 'Alarm Clocks', NULL, 1),
(202, 261, 'Eyelash Curlers', NULL, 1),
(203, 262, 'Light Depilation', NULL, 1),
(204, 263, 'Baby Gift Sets', NULL, 1),
(205, 264, 'AV Receivers', NULL, 1),
(206, 265, 'FM Transmitters', NULL, 1),
(207, 266, 'Video Mixers', NULL, 1),
(208, 267, 'Video Switches', NULL, 1),
(209, 268, 'Scan Converters', NULL, 1),
(210, 269, 'AV Extenders', NULL, 1),
(211, 270, 'Audio Converters', NULL, 1),
(212, 271, 'Audio Amplifiers', NULL, 1),
(213, 272, 'Industrial & Lab Equipment', NULL, 1),
(214, 273, 'Electrical Equipment & Supplies', NULL, 1),
(215, 274, 'Power Conditioning', NULL, 1),
(216, 275, 'Power Adapters & Inverters', NULL, 1),
(217, 276, 'Batteries & Accessories', NULL, 1),
(218, 277, 'Rechargeable Batteries', NULL, 1),
(219, 278, 'Battery Chargers', NULL, 1),
(220, 279, 'Power Supply Units', NULL, 1),
(221, 280, 'Personal Safety & Protection', NULL, 1),
(222, 281, 'Hearing Protectors', NULL, 1),
(223, 282, 'Ear Plugs', NULL, 1),
(224, 283, 'Safety Helmets', NULL, 1),
(225, 284, 'Uninterruptible Power Supplies (UPSs)', NULL, 1),
(226, 285, 'Circuit Protection', NULL, 1),
(227, 286, 'Surge Protectors', NULL, 1),
(228, 287, 'Power Distribution Units (PDUs)', NULL, 1),
(229, 288, 'Electrical Boxes & Accessories', NULL, 1),
(230, 289, 'Electrical Boxes', NULL, 1),
(231, 290, 'UPS Batteries', NULL, 1),
(232, 291, 'Safety Glasses', NULL, 1),
(233, 292, 'Electrical Connection', NULL, 1),
(234, 293, 'Power Plug Adapters', NULL, 1),
(235, 294, 'Power Extensions', NULL, 1),
(236, 295, 'Cameras & Camcorders', NULL, 1),
(237, 296, 'Camcorders', NULL, 1),
(238, 297, 'Digital Cameras', NULL, 1),
(239, 298, 'Camera Accessories', NULL, 1),
(240, 299, 'Camera Docks', NULL, 1),
(241, 300, 'Camera Lens Adapters', NULL, 1),
(242, 301, 'Camera Lenses', NULL, 1),
(243, 302, 'Camera Kits', NULL, 1),
(244, 303, 'Lens Caps', NULL, 1),
(245, 304, 'Camera Cables', NULL, 1),
(246, 305, 'Lens Hoods', NULL, 1),
(247, 306, 'Domestic Appliances', NULL, 1),
(248, 307, 'Small Kitchen Appliances', NULL, 1),
(249, 308, 'Electric Kettles', NULL, 1),
(250, 309, 'Large Home Appliances', NULL, 1),
(251, 310, 'Dishwashers', NULL, 1),
(252, 311, 'Freezers', NULL, 1),
(253, 312, 'Floor Care', NULL, 1),
(254, 313, 'Vacuum Cleaners', NULL, 1),
(255, 314, 'Kitchen Scales', NULL, 1),
(256, 315, 'Cooker Hoods', NULL, 1),
(257, 316, 'Hobs', NULL, 1),
(258, 317, 'Microwaves', NULL, 1),
(259, 318, 'Tumble Dryers', NULL, 1),
(260, 319, 'Washing Machines', NULL, 1),
(261, 320, 'Fridge-freezers', NULL, 1),
(262, 321, 'Combi-fridges', NULL, 1),
(263, 322, 'Fridges', NULL, 1),
(264, 323, 'Ovens', NULL, 1),
(265, 324, 'Coffee Makers', NULL, 1),
(266, 325, 'Climate Control', NULL, 1),
(267, 326, 'Air Purifiers', NULL, 1),
(268, 327, 'Portable Vacuum Cleaners', NULL, 1),
(269, 328, 'Cooking Appliances Sets', NULL, 1),
(270, 329, 'Cookers', NULL, 1),
(271, 330, 'Vacuum Cleaner Supplies', NULL, 1),
(272, 331, 'Deep Fryers', NULL, 1),
(273, 332, 'Sanitary Ware', NULL, 1),
(274, 333, 'Faucets', NULL, 1),
(275, 334, 'Washer Dryers', NULL, 1),
(276, 335, 'Ice Cream Makers', NULL, 1),
(277, 336, 'Sewing & Ironing', NULL, 1),
(278, 337, 'Sewing Machines', NULL, 1),
(279, 338, 'Warranty & Support', NULL, 1),
(280, 339, 'Warranty & Support Extensions', NULL, 1),
(281, 340, 'Installation Services', NULL, 1),
(282, 341, 'Printers & Supplies', NULL, 1),
(283, 342, 'Printing Supplies', NULL, 1),
(284, 343, 'Laser Toner & Cartridges', NULL, 1),
(285, 344, 'Networking', NULL, 1),
(286, 345, 'Network Antennas', NULL, 1),
(287, 346, 'Computer Components', NULL, 1),
(288, 347, 'System Components', NULL, 1),
(289, 348, 'Networking Cards', NULL, 1),
(290, 349, 'Software', NULL, 1),
(291, 350, 'Software Licenses/upgrades', NULL, 1),
(292, 351, 'Hardware Firewalls', NULL, 1),
(293, 352, 'Wireless Routers', NULL, 1),
(294, 353, 'Network Switches', NULL, 1),
(295, 354, 'Wired Routers', NULL, 1),
(296, 355, 'Gateways/controllers', NULL, 1),
(297, 356, 'WLAN Access Points', NULL, 1),
(298, 357, 'Network Media Converters', NULL, 1),
(299, 358, 'Modems', NULL, 1),
(300, 359, 'Computer Cables', NULL, 1),
(301, 360, 'Coaxial Cables', NULL, 1),
(302, 361, 'PoE Adapters', NULL, 1),
(303, 362, 'Cable Interface/gender Adapters', NULL, 1),
(304, 363, 'Chassis Components', NULL, 1),
(305, 364, 'Mounting Kits', NULL, 1),
(306, 410, 'Game consoles', NULL, 1),
(307, 409, 'Electronics', NULL, 1),
(308, 408, 'Game Consoles', NULL, 1),
(309, 368, 'Networking Software', NULL, 1),
(310, 369, 'Network Management Software', NULL, 1),
(311, 370, 'Camera Cases', NULL, 1),
(312, 371, 'Camera Flashes', NULL, 1),
(313, 372, 'Camera Filters', NULL, 1),
(314, 373, 'Underwater Camera Housings', NULL, 1),
(315, 374, 'Underwater Camera Housing Accessories', NULL, 1),
(316, 375, 'Binoculars', NULL, 1),
(317, 376, 'Webcams', NULL, 1),
(318, 377, 'Camera Flash Accessories', NULL, 1),
(319, 378, 'Camera Monopods', NULL, 1),
(320, 379, 'Camera Housings', NULL, 1),
(321, 380, 'Eyepieces', NULL, 1),
(322, 381, 'Eyepiece Accessories', NULL, 1),
(323, 382, 'Audio Modules', NULL, 1),
(324, 383, 'Blank Video Tapes', NULL, 1),
(325, 384, 'Film Cameras', NULL, 1),
(326, 385, 'Tripods', NULL, 1),
(327, 386, 'Straps', NULL, 1),
(328, 387, 'Digital Camera Battery Grips', NULL, 1),
(329, 388, 'Watches', NULL, 1),
(330, 389, 'TVs & Monitors', NULL, 1),
(331, 390, 'Flat Panel Accessories', NULL, 1),
(332, 391, 'PC Flat Panels', NULL, 1),
(333, 392, 'Flat Panel Desk Mounts', NULL, 1),
(334, 393, 'Monitors CRT', NULL, 1),
(335, 394, 'Flat Panel Floor Stands', NULL, 1),
(336, 395, 'Flat Panel Ceiling Mounts', NULL, 1),
(337, 396, 'LCD TVs', NULL, 1),
(338, 397, 'Flat Panel Wall Mounts', NULL, 1),
(339, 398, 'Display Privacy Filters', NULL, 1),
(340, 399, 'Digital Photo Frames', NULL, 1),
(341, 400, 'Wall & Ceiling Mounts Accessories', NULL, 1),
(342, 401, 'Video Splitters', NULL, 1),
(343, 402, 'Public Displays', NULL, 1),
(344, 403, 'Television Antennas', NULL, 1),
(345, 404, 'Plasma TVs', NULL, 1),
(346, 405, 'LED TVs', NULL, 1),
(347, 406, 'Touch Screen Monitors', NULL, 1),
(348, 407, 'Stereoscopic 3D Glasses', NULL, 1),
(349, 411, 'Consoles', NULL, 1),
(350, 412, 'Microsoft', NULL, 1);

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
(1, 1, 1),
(2, 1, 2),
(3, 221, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feature_variants`
--

CREATE TABLE `feature_variants` (
  `id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `product_feature_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feature_variants`
--

INSERT INTO `feature_variants` (`id`, `feature_id`, `status`, `product_feature_id`) VALUES
(1, 1, 1, NULL),
(2, 1, 1, NULL),
(3, 2, 1, NULL),
(4, 2, 1, NULL),
(5, 2, 1, NULL),
(6, 2, 1, NULL);

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
(7, 3, 'BMV', 'spitak', 1),
(8, 3, 'BMV', 'white', 2),
(9, 3, 'BMV', 'belyi', 3),
(10, 4, 'mercedes', NULL, 1),
(11, 4, 'mercedes', NULL, 2),
(12, 4, 'mercedes', NULL, 3),
(13, 5, 'audi', NULL, 1),
(14, 5, 'audi', NULL, 2),
(15, 5, 'audi', NULL, 3),
(16, 6, 'ferrar1', NULL, 1),
(17, 6, 'ferrar', NULL, 2),
(18, 6, 'ferrar', NULL, 3);

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
(1, '40-viber image.jpg', 16),
(2, '40-viber image.jpg', 16),
(3, '40-viber image.jpg', 17),
(4, '40-viber image.jpg', 18),
(5, '40-viber image.jpg', 39),
(6, '40-viber image.jpg', 40),
(7, '40-viber image.jpg', 44),
(8, '40-viber image.jpg', 45),
(9, '40-viber image.jpg', 46),
(10, '40-viber image.jpg', 47),
(11, '40-viber image.jpg', 47),
(12, '40-viber image.jpg', 52),
(13, '53-viber image.jpg', 53),
(14, '54-viber image1.jpg', 54),
(15, '55-viber image.jpg', 55);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `code` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 NOT NULL,
  `current_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `current_id`) VALUES
(1, 'hy', 'Հայերեն', 0),
(2, 'ru', 'русский', 0),
(3, 'en', 'English', 0);

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
  `top` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `price`, `user_id`, `category_id`, `views`, `top`, `status`) VALUES
(8, 12, 1, 1, 0, 0, 1),
(9, 12, 1, 1, 0, 0, 1),
(10, 12, 1, 1, 0, 0, 1),
(11, 12, 1, 1, 0, 0, 1),
(12, 12, 1, 1, 0, 0, 1),
(13, 12, 1, 1, 0, 0, 1),
(14, 12, 1, 1, 0, 0, 1),
(15, 111, 0, 1, 0, 0, 1),
(16, 12, 0, 1, 0, 0, 1),
(17, 12, 0, 1, 0, 0, 1),
(18, 1111, 0, 1, 0, 0, 1),
(19, 14, 0, 1, 0, 0, 1),
(20, 23, 0, 1, 0, 0, 1),
(21, 12, 0, 1, 0, 0, 1),
(22, 12, 0, 1, 0, 0, 1),
(23, 12, 0, 1, 0, 0, 1),
(24, 12, 0, 1, 0, 0, 1),
(25, 12, 0, 1, 0, 0, 1),
(26, 112, 0, 1, 0, 0, 1),
(27, 112, 0, 1, 0, 0, 1),
(28, 14, 0, 1, 0, 0, 1),
(29, 121, 0, 1, 0, 0, 1),
(30, 232, 0, 1, 0, 0, 1),
(31, 232, 0, 1, 0, 0, 1),
(32, 11, 0, 1, 0, 0, 1),
(33, 11, 0, 1, 0, 0, 1),
(34, 11, 0, 1, 0, 0, 1),
(35, 11, 0, 1, 0, 0, 1),
(36, 11, 0, 1, 0, 0, 1),
(37, 11, 0, 1, 0, 0, 1),
(38, 11, 0, 1, 0, 0, 1),
(39, 11, 0, 1, 0, 0, 1),
(40, 11, 0, 1, 0, 0, 1),
(41, 445, 0, 221, 0, 0, 1),
(42, 445, 0, 221, 0, 0, 1),
(43, 445, 0, 221, 0, 0, 1),
(44, 23, 0, 221, 0, 0, 1),
(45, 23, 0, 221, 0, 0, 1),
(46, 23, 0, 221, 0, 0, 1),
(47, 24, 0, 221, 0, 0, 1),
(48, 12, 0, 1, 0, 0, 1),
(49, 12, 0, 1, 0, 0, 1),
(50, 12, 0, 1, 0, 0, 1),
(51, 234, 0, 1, 0, 0, 0),
(52, 121, 0, 1, 0, 1, 0),
(53, 12, 0, 1, 0, 1, 0),
(54, 12, 0, 1, 0, 1, 0),
(55, 12, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_descriptions`
--

CREATE TABLE `product_descriptions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_descriptions`
--

INSERT INTO `product_descriptions` (`id`, `product_id`, `name`, `description`, `lang_id`) VALUES
(4, 13, '1', '1', 1),
(5, 14, '1', '1', 1),
(6, 15, '454', '45', 1),
(7, 16, 'asd', 'ssdf', 1),
(8, 17, 'asd', 'ssdf', 1),
(9, 18, 'asd', 'asdas', 1),
(10, 19, '545', '454', 1),
(11, 20, '232', '2323', 1),
(12, 21, 'sdf', 'sdf', 1),
(13, 22, 'sdf', 'sdf', 1),
(14, 23, 'sdf', 'sdf', 1),
(15, 24, 'sdf', 'sdf', 1),
(16, 25, 'sdf', 'sdf', 1),
(17, 26, '121', 'sdfdsf', 1),
(18, 27, '121', 'sdfdsf', 1),
(19, 28, '44', '555', 1),
(20, 29, 'sdfds', 'sdfsdf', 1),
(21, 30, 'asdasd', 'asdasd', 1),
(22, 31, 'asdasd', 'asdasd', 1),
(23, 32, 'asd', 'asdasd', 1),
(24, 33, 'asd', 'asdasd', 1),
(25, 34, 'asd', 'asdasd', 1),
(26, 35, 'asd', 'asdasd', 1),
(27, 36, 'asd', 'asdasd', 1),
(28, 37, 'asd', 'asdasd', 1),
(29, 38, 'asd', 'asdasd', 1),
(30, 39, 'asd', 'asdasd', 1),
(31, 40, 'asd', 'asdasd', 1),
(32, 41, 'asd', 'asdas', 1),
(33, 42, 'asd', 'asdas', 1),
(34, 43, 'asd', 'asdas', 1),
(35, 44, 'asd', 'ssad', 1),
(36, 45, 'asd', 'ssad', 1),
(37, 46, 'sdfsd', 'sdfsdf', 1),
(38, 47, 'sdf', 'sdf', 0),
(39, 48, 'asdas', 'asdasd', 1),
(40, 49, 'asdas', 'asdasd', 1),
(41, 50, 'asd', 'asd', 1),
(42, 51, 'sfsdf', 'sdf', 0),
(43, 52, 'sdfsdf', 'sdf', 0),
(44, 53, 'ssdf', 'sdfdsf', 0),
(45, 54, 'asdasd', 'ssfdsf', 0),
(46, 55, 'asd', 'sdfsd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_features`
--

CREATE TABLE `product_features` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `type` enum('checkbox','select','radio','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_features`
--

INSERT INTO `product_features` (`id`, `status`, `type`) VALUES
(1, 1, 'select'),
(2, 1, 'checkbox');

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
(3, 1, 'cvet', 'cvet', 3),
(4, 2, 'model', NULL, 1),
(5, 2, 'model', NULL, 2),
(6, 2, 'model', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_rel`
--

CREATE TABLE `product_variant_rel` (
  `product_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_variant_rel`
--

INSERT INTO `product_variant_rel` (`product_id`, `variant_id`, `id`) VALUES
(14, 1, 4),
(15, 1, 5),
(15, 4, 6),
(16, 1, 7),
(16, 4, 8),
(17, 1, 9),
(17, 4, 10),
(18, 1, 11),
(18, 5, 12),
(19, 1, 13),
(19, 3, 14),
(20, 1, 15),
(20, 4, 16),
(21, 1, 17),
(21, 3, 18),
(22, 1, 19),
(22, 3, 20),
(23, 1, 21),
(23, 3, 22),
(24, 1, 23),
(24, 3, 24),
(25, 1, 25),
(25, 3, 26),
(26, 1, 27),
(26, 3, 28),
(27, 1, 29),
(27, 3, 30),
(28, 1, 31),
(28, 3, 32),
(29, 1, 33),
(29, 3, 34),
(30, 1, 35),
(30, 4, 36),
(31, 1, 37),
(31, 4, 38),
(32, 1, 39),
(32, 3, 40),
(33, 1, 41),
(33, 3, 42),
(34, 1, 43),
(34, 3, 44),
(35, 1, 45),
(35, 3, 46),
(36, 1, 47),
(36, 3, 48),
(37, 1, 49),
(37, 3, 50),
(38, 1, 51),
(38, 3, 52),
(39, 1, 53),
(39, 3, 54),
(40, 1, 55),
(40, 3, 56),
(47, 1, 57),
(51, 2, 58),
(51, 4, 59),
(52, 1, 60),
(52, 4, 61),
(53, 1, 62),
(53, 3, 63),
(54, 1, 64),
(54, 3, 65),
(55, 1, 66),
(55, 3, 67);

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
(1, 1, 'vigenshakaryan@gmail.com', 'shakaryan', 'vigen shakaryan', '$2a$10$J4tdVPxmnAUZbWKnjUKLLeKXZtEYwwZGz7ZtT5xTZYqwyy3t/TCuS'),
(2, 1, 'vasdas@gmail.com', 'asad', 'sdfsfsd', '$2a$10$h66MZxG4k3HCMHvXCrKOx.3s2NWsSK7RypSqEPhF3S9aESx5YvpOS'),
(3, 1, 'sdfsdfsdfsd@gmail.com', 'ssdfsdfs', 'sdfsdfsd', '$2a$10$Jw1tOYok3Z29kryTCQuKVuYol1PHBlzajFmEAyfCbGJi3/hynB15K');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phone_number` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `phone_number`) VALUES
(1, 'Arsen', 'Grigoryan', 'arsen-grigoryan@gmail.com', 'd66b3bac5c819c46c63f60fad08716950c97f5e3', '+37477864570'),
(2, 'Vahe', 'Mkrtchyan', 'vcmkrtchyan@gmail.com', '7e240de74fb1ed08fa08d38063f6a6a91462a815', '+37495914536');

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
(1, 1),
(2, 1),
(3, 2);

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
  ADD KEY `feature_id` (`feature_id`),
  ADD KEY `FKboclfny8nnlncnpveacbyj9cm` (`product_feature_id`);

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
  ADD KEY `product_id` (`product_id`);

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
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feature_variants`
--
ALTER TABLE `feature_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feature_variant_descriptions`
--
ALTER TABLE `feature_variant_descriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `product_descriptions`
--
ALTER TABLE `product_descriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_features_descriptions`
--
ALTER TABLE `product_features_descriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_variant_rel`
--
ALTER TABLE `product_variant_rel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  ADD CONSTRAINT `FKboclfny8nnlncnpveacbyj9cm` FOREIGN KEY (`product_feature_id`) REFERENCES `product_features` (`id`),
  ADD CONSTRAINT `feature_variants_ibfk_1` FOREIGN KEY (`feature_id`) REFERENCES `product_features` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FKghwsjbjo7mg3iufxruvq6iu3q` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_descriptions`
--
ALTER TABLE `product_descriptions`
  ADD CONSTRAINT `FKr2nayvgycfj7grrhagiojxct6` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_descriptions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_variant_rel`
--
ALTER TABLE `product_variant_rel`
  ADD CONSTRAINT `FKaky70d7v947uou70kd14ilbi7` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

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
