-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2018 年 01 月 11 日 14:32
-- 伺服器版本: 5.7.20-0ubuntu0.16.04.1
-- PHP 版本： 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `argument`
--
CREATE DATABASE IF NOT EXISTS `argument` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `argument`;

-- --------------------------------------------------------

--
-- 資料表結構 `actionDoc_list`
--

CREATE TABLE `actionDoc_list` (
  `actionDoc_id` int(11) NOT NULL,
  `content` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `actionDoc_list`
--

INSERT INTO `actionDoc_list` (`actionDoc_id`, `content`) VALUES
(1, '發表論證');

-- --------------------------------------------------------

--
-- 資料表結構 `action_list`
--

CREATE TABLE `action_list` (
  `action_id` int(11) NOT NULL,
  `actionDoc_id` int(11) NOT NULL,
  `tester_id` int(11) NOT NULL,
  `exe_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `action_list`
--

INSERT INTO `action_list` (`action_id`, `actionDoc_id`, `tester_id`, `exe_time`, `content`) VALUES
(1, 1, 1, '2018-01-07 12:31:15', '-1'),
(2, 1, 1, '2018-01-07 12:59:42', '-1'),
(3, 1, 1, '2018-01-07 13:14:09', '-1'),
(5, 2, 1, '2018-01-07 13:18:28', '-1'),
(6, 2, 2, '2018-01-07 13:19:25', '-1'),
(9, 1, 3, '2018-01-07 15:18:20', 'wwww'),
(10, 1, 2, '2018-01-07 15:18:46', '你好'),
(11, 1, 1, '2018-01-09 14:47:52', '222'),
(12, 1, 3, '2018-01-09 14:47:58', '333'),
(13, 1, 3, '2018-01-09 15:05:22', '123123'),
(14, 1, 3, '2018-01-09 15:05:26', '222222222222'),
(15, 1, 3, '2018-01-09 15:05:29', '33333333'),
(16, 1, 1, '2018-01-09 15:12:21', '111'),
(17, 1, 1, '2018-01-09 15:12:22', '222'),
(18, 1, 1, '2018-01-09 15:12:56', '111'),
(19, 1, 1, '2018-01-09 15:13:00', '222'),
(20, 1, 1, '2018-01-09 15:13:06', '222'),
(21, 1, 1, '2018-01-09 15:14:22', '1111'),
(22, 1, 1, '2018-01-09 15:17:13', '11'),
(23, 1, 1, '2018-01-09 15:17:13', '11'),
(24, 1, 1, '2018-01-09 15:17:14', '11'),
(25, 1, 1, '2018-01-09 15:17:15', '11'),
(26, 1, 1, '2018-01-09 15:17:15', '11'),
(27, 1, 1, '2018-01-09 15:17:16', '11'),
(28, 1, 1, '2018-01-09 15:17:17', '11'),
(29, 1, 1, '2018-01-09 15:17:18', '11'),
(30, 1, 1, '2018-01-09 15:17:18', '11'),
(31, 1, 1, '2018-01-09 15:17:19', '11'),
(32, 1, 1, '2018-01-09 15:17:20', '11'),
(33, 1, 1, '2018-01-09 15:17:21', '11'),
(34, 1, 1, '2018-01-09 15:20:34', '11'),
(35, 1, 1, '2018-01-09 15:20:36', '22'),
(36, 1, 1, '2018-01-09 15:23:15', '11'),
(37, 1, 1, '2018-01-09 15:23:16', '22'),
(38, 1, 1, '2018-01-09 15:23:17', '33'),
(39, 1, 1, '2018-01-09 15:33:06', '111'),
(40, 1, 1, '2018-01-09 15:33:07', '222'),
(41, 1, 1, '2018-01-09 15:33:08', '333'),
(42, 1, 1, '2018-01-09 15:33:09', '444'),
(43, 1, 1, '2018-01-09 15:33:10', '555'),
(44, 1, 1, '2018-01-09 15:33:11', '555'),
(45, 1, 1, '2018-01-09 15:33:13', '555'),
(46, 1, 1, '2018-01-09 15:33:14', '555'),
(47, 1, 1, '2018-01-09 15:33:15', '555'),
(48, 1, 1, '2018-01-09 15:33:18', '555'),
(49, 1, 1, '2018-01-09 15:33:19', '555'),
(50, 1, 1, '2018-01-09 15:33:20', '555'),
(51, 1, 1, '2018-01-09 15:33:22', '555'),
(52, 1, 1, '2018-01-09 15:33:23', '555'),
(53, 1, 1, '2018-01-09 15:33:24', '555'),
(54, 1, 1, '2018-01-09 15:33:26', '555'),
(55, 1, 1, '2018-01-09 15:33:28', '555'),
(56, 1, 1, '2018-01-09 15:33:30', '555'),
(57, 1, 1, '2018-01-09 15:37:50', '111'),
(58, 1, 1, '2018-01-09 15:37:52', '1111'),
(59, 1, 1, '2018-01-09 15:37:54', '111'),
(60, 1, 1, '2018-01-09 15:37:55', '111'),
(61, 1, 1, '2018-01-09 15:37:57', '123'),
(62, 1, 1, '2018-01-09 15:38:48', '111'),
(63, 1, 1, '2018-01-09 15:38:51', '你好'),
(64, 1, 1, '2018-01-09 15:38:54', '安安'),
(65, 1, 1, '2018-01-09 15:39:56', 'wwwwwww'),
(66, 1, 4, '2018-01-09 15:45:04', '安安'),
(67, 1, 4, '2018-01-09 15:45:12', '有人在嬤'),
(68, 1, 2, '2018-01-09 15:45:15', '有喔'),
(69, 1, 2, '2018-01-09 15:45:22', '顆顆白癡'),
(70, 1, 4, '2018-01-09 15:45:31', '很嘴很棒'),
(71, 1, 4, '2018-01-09 15:46:13', '刷起來'),
(72, 1, 4, '2018-01-09 15:46:16', '6666666666'),
(73, 1, 4, '2018-01-09 15:46:18', '666666666666'),
(74, 1, 4, '2018-01-09 15:46:21', '6'),
(75, 1, 4, '2018-01-09 15:46:22', '6'),
(76, 1, 4, '2018-01-09 15:46:22', '6'),
(77, 1, 4, '2018-01-09 15:46:22', '6'),
(78, 1, 4, '2018-01-09 15:46:23', '6'),
(79, 1, 4, '2018-01-09 15:46:23', '6'),
(80, 1, 4, '2018-01-09 15:46:23', '6'),
(81, 1, 4, '2018-01-09 15:46:23', '6'),
(82, 1, 4, '2018-01-09 15:46:24', '6'),
(83, 1, 4, '2018-01-09 15:46:24', '6'),
(84, 1, 4, '2018-01-09 15:46:24', '6'),
(85, 1, 4, '2018-01-09 15:46:24', '6'),
(86, 1, 4, '2018-01-09 15:46:25', '6'),
(87, 1, 1, '2018-01-09 16:01:43', '1'),
(88, 1, 1, '2018-01-09 16:01:44', '1'),
(89, 1, 1, '2018-01-09 16:01:44', '1'),
(90, 1, 1, '2018-01-09 16:01:44', '1'),
(91, 1, 1, '2018-01-09 16:01:45', '1'),
(92, 1, 1, '2018-01-09 16:02:01', '11'),
(93, 1, 1, '2018-01-09 16:02:02', '1'),
(94, 1, 1, '2018-01-09 16:02:02', '1'),
(95, 1, 1, '2018-01-09 16:02:02', '1'),
(96, 1, 1, '2018-01-09 16:02:03', '1'),
(97, 1, 4, '2018-01-09 16:10:59', '1'),
(98, 1, 4, '2018-01-09 16:10:59', '1'),
(99, 1, 4, '2018-01-09 16:11:00', '1'),
(100, 1, 4, '2018-01-09 16:11:00', '1'),
(101, 1, 4, '2018-01-09 16:11:00', '1'),
(102, 1, 4, '2018-01-09 16:11:01', '1'),
(103, 1, 4, '2018-01-09 16:11:01', '1'),
(104, 1, 4, '2018-01-09 16:11:01', '1'),
(105, 1, 4, '2018-01-09 16:11:02', '1'),
(106, 1, 4, '2018-01-09 16:11:02', '1'),
(107, 1, 4, '2018-01-09 16:11:02', '1'),
(108, 1, 4, '2018-01-09 16:11:02', '1'),
(109, 1, 4, '2018-01-09 16:11:03', '1'),
(110, 1, 4, '2018-01-09 16:11:03', '1'),
(111, 1, 4, '2018-01-09 16:11:03', '1'),
(112, 1, 4, '2018-01-09 16:11:04', '1'),
(113, 1, 4, '2018-01-09 16:11:04', '1'),
(114, 1, 4, '2018-01-09 16:11:15', '1'),
(115, 1, 4, '2018-01-09 16:11:15', '1'),
(116, 1, 4, '2018-01-09 16:11:15', '1'),
(117, 1, 4, '2018-01-09 16:11:16', '1'),
(118, 1, 4, '2018-01-09 16:11:16', '1'),
(119, 1, 4, '2018-01-09 16:11:19', '1111'),
(120, 1, 4, '2018-01-09 16:11:27', '1'),
(121, 1, 4, '2018-01-09 16:11:28', '1'),
(122, 1, 4, '2018-01-09 16:11:28', '1'),
(123, 1, 4, '2018-01-09 16:11:28', '1'),
(124, 1, 4, '2018-01-09 16:11:29', '1'),
(125, 1, 4, '2018-01-09 16:11:29', '1'),
(126, 1, 4, '2018-01-09 16:11:29', '1'),
(127, 1, 4, '2018-01-09 16:11:29', '1'),
(128, 1, 4, '2018-01-09 16:11:30', '1'),
(129, 1, 4, '2018-01-09 16:11:30', '1'),
(130, 1, 4, '2018-01-09 16:11:30', '1'),
(131, 1, 4, '2018-01-09 16:11:30', '1'),
(132, 1, 4, '2018-01-09 16:11:31', '1'),
(133, 1, 4, '2018-01-09 16:11:31', '1'),
(134, 1, 4, '2018-01-09 16:11:31', '1'),
(135, 1, 4, '2018-01-09 16:11:31', '1'),
(136, 1, 4, '2018-01-09 16:11:32', '1'),
(137, 1, 4, '2018-01-09 16:11:35', '1'),
(138, 1, 4, '2018-01-09 16:11:36', '1'),
(139, 1, 4, '2018-01-09 16:11:36', '1'),
(140, 1, 4, '2018-01-09 16:11:36', '1'),
(141, 1, 4, '2018-01-09 16:11:36', '1'),
(142, 1, 4, '2018-01-09 16:11:37', '1'),
(143, 1, 4, '2018-01-09 16:11:37', '1'),
(144, 1, 4, '2018-01-09 16:11:37', '1'),
(145, 1, 4, '2018-01-09 16:11:37', '1'),
(146, 1, 4, '2018-01-09 16:11:38', '1'),
(147, 1, 4, '2018-01-09 16:11:38', '1'),
(148, 1, 4, '2018-01-09 16:22:57', '1'),
(149, 1, 4, '2018-01-09 16:22:57', '1'),
(150, 1, 4, '2018-01-09 16:22:57', '1'),
(151, 1, 4, '2018-01-09 16:22:58', '1'),
(152, 1, 4, '2018-01-09 16:22:58', '1'),
(153, 1, 4, '2018-01-09 16:22:58', '1'),
(154, 1, 4, '2018-01-09 16:22:59', '1'),
(155, 1, 4, '2018-01-09 16:22:59', '1'),
(156, 1, 4, '2018-01-09 16:22:59', '1'),
(157, 1, 4, '2018-01-09 16:22:59', '1'),
(158, 1, 4, '2018-01-09 16:23:00', '1'),
(159, 1, 4, '2018-01-09 16:23:02', '1'),
(160, 1, 4, '2018-01-09 16:23:04', '1'),
(161, 1, 4, '2018-01-09 16:23:05', '1'),
(162, 1, 4, '2018-01-09 16:23:05', '1'),
(163, 1, 4, '2018-01-09 16:23:07', '1'),
(164, 1, 4, '2018-01-09 16:23:08', '1'),
(165, 1, 4, '2018-01-09 16:23:08', '1'),
(166, 1, 4, '2018-01-09 16:23:08', '1'),
(167, 1, 4, '2018-01-09 16:24:08', '1'),
(168, 1, 4, '2018-01-09 16:24:08', '1'),
(169, 1, 4, '2018-01-09 16:24:08', '1'),
(170, 1, 4, '2018-01-09 16:24:09', '1'),
(171, 1, 4, '2018-01-09 16:24:09', '1'),
(172, 1, 4, '2018-01-09 16:24:09', '1'),
(173, 1, 4, '2018-01-09 16:24:09', '1'),
(174, 1, 4, '2018-01-09 16:24:10', '1'),
(175, 1, 4, '2018-01-09 16:24:10', '1'),
(176, 1, 4, '2018-01-09 16:24:10', '1'),
(177, 1, 4, '2018-01-09 16:24:11', '1'),
(178, 1, 4, '2018-01-09 16:24:11', '1'),
(179, 1, 4, '2018-01-09 16:24:13', '1'),
(180, 1, 4, '2018-01-09 16:24:15', '1'),
(181, 1, 4, '2018-01-09 16:24:16', '1'),
(182, 1, 4, '2018-01-09 16:24:16', '1'),
(183, 1, 4, '2018-01-09 16:24:20', '1'),
(184, 1, 4, '2018-01-09 16:24:21', '1'),
(185, 1, 4, '2018-01-09 16:24:21', '1'),
(186, 1, 4, '2018-01-09 16:24:21', '1'),
(187, 1, 4, '2018-01-09 16:24:22', '1'),
(188, 1, 4, '2018-01-09 16:25:09', '1'),
(189, 1, 4, '2018-01-09 16:25:10', '1'),
(190, 1, 4, '2018-01-09 16:25:10', '1'),
(191, 1, 4, '2018-01-09 16:25:10', '1'),
(192, 1, 4, '2018-01-09 16:25:10', '1'),
(193, 1, 4, '2018-01-09 16:25:11', '1'),
(194, 1, 4, '2018-01-09 16:25:11', '1'),
(195, 1, 4, '2018-01-09 16:25:11', '1'),
(196, 1, 4, '2018-01-09 16:25:11', '1'),
(197, 1, 4, '2018-01-09 16:25:12', '1'),
(198, 1, 4, '2018-01-09 16:25:12', '1'),
(199, 1, 4, '2018-01-09 16:25:12', '1'),
(200, 1, 4, '2018-01-09 16:25:12', '1'),
(201, 1, 4, '2018-01-09 16:25:13', '1'),
(202, 1, 4, '2018-01-09 16:25:13', '1'),
(203, 1, 4, '2018-01-09 16:25:13', '1'),
(204, 1, 4, '2018-01-09 16:25:13', '1'),
(205, 1, 4, '2018-01-09 16:25:14', '1'),
(206, 1, 4, '2018-01-09 16:25:14', '1'),
(207, 1, 4, '2018-01-09 16:25:14', '1'),
(208, 1, 1, '2018-01-09 20:37:16', '111'),
(209, 1, 1, '2018-01-09 20:37:17', '111'),
(210, 1, 3, '2018-01-11 06:24:13', 'w'),
(211, 1, 3, '2018-01-11 06:24:13', 'w'),
(212, 1, 3, '2018-01-11 06:24:14', 'w'),
(213, 1, 3, '2018-01-11 06:24:14', 'w');

-- --------------------------------------------------------

--
-- 資料表結構 `activity_list`
--

CREATE TABLE `activity_list` (
  `avtivity_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `assessment_id` int(11) NOT NULL,
  `unicode` varchar(20) DEFAULT NULL,
  `timeofactivity` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `activity_list`
--

INSERT INTO `activity_list` (`avtivity_id`, `topic_id`, `user_id`, `assessment_id`, `unicode`, `timeofactivity`) VALUES
(1, 2, 2, 1, '2-1415649616', '2018-01-10'),
(6, 1, 1, 1, '1-1515649649', '2018-01-11'),
(7, 1, 4, 1, '4-1515649809', '2018-01-11'),
(8, 5, 3, 1, '3-1515650071', '2018-01-13'),
(9, 5, 3, 1, '3-1515650128', '2018-01-13'),
(10, 5, 3, 1, '3-1515650376', '2018-01-13'),
(11, 6, 1, 1, '1-1515651990', '2018-01-11');

-- --------------------------------------------------------

--
-- 資料表結構 `assessment_list`
--

CREATE TABLE `assessment_list` (
  `assessment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `assessment_list`
--

INSERT INTO `assessment_list` (`assessment_id`) VALUES
(1);

-- --------------------------------------------------------

--
-- 資料表結構 `chatroom_list`
--

CREATE TABLE `chatroom_list` (
  `chatroom_id` int(11) NOT NULL,
  `avtivity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `chatroom_list`
--

INSERT INTO `chatroom_list` (`chatroom_id`, `avtivity_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `tester_list`
--

CREATE TABLE `tester_list` (
  `tester_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `avtivity_id` int(11) NOT NULL,
  `chatroom_id` int(11) NOT NULL DEFAULT '-1',
  `group` int(2) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `tester_list`
--

INSERT INTO `tester_list` (`tester_id`, `user_id`, `avtivity_id`, `chatroom_id`, `group`) VALUES
(1, 1, 1, 6, -1),
(2, 2, 1, 7, -1),
(3, 3, 1, 6, -1),
(4, 4, 1, 7, -1);

-- --------------------------------------------------------

--
-- 資料表結構 `topic_list`
--

CREATE TABLE `topic_list` (
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `topic_list`
--

INSERT INTO `topic_list` (`topic_id`, `user_id`, `content`) VALUES
(1, 1, '核能'),
(2, 2, '經濟'),
(3, 2, '國家發展情況'),
(4, 2, '情流感'),
(5, 2, '勞基法'),
(6, 2, '新生兒銳減'),
(7, 2, '今天晚餐吃什麼？'),
(8, 1, '出去玩～');

-- --------------------------------------------------------

--
-- 資料表結構 `user_list`
--

CREATE TABLE `user_list` (
  `user_id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `StudentID` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `user_list`
--

INSERT INTO `user_list` (`user_id`, `name`, `school`, `StudentID`) VALUES
(1, '王小明', '一個國中', NULL),
(2, '路人甲', '一個國中', NULL),
(3, '想不到', '兩個國中', NULL),
(4, '不清楚', '兩個國中', NULL),
(5, '王王王', '哭哭國小', '9453'),
(6, 'null', 'null', 'null'),
(7, '王同學', '中央大學', '106524018'),
(19, '王同學', '中央大學', 'ncu106524018'),
(20, 'www', 'wwww', 'wwww');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `actionDoc_list`
--
ALTER TABLE `actionDoc_list`
  ADD PRIMARY KEY (`actionDoc_id`);

--
-- 資料表索引 `action_list`
--
ALTER TABLE `action_list`
  ADD PRIMARY KEY (`action_id`);

--
-- 資料表索引 `activity_list`
--
ALTER TABLE `activity_list`
  ADD PRIMARY KEY (`avtivity_id`),
  ADD UNIQUE KEY `unicode` (`unicode`);

--
-- 資料表索引 `assessment_list`
--
ALTER TABLE `assessment_list`
  ADD PRIMARY KEY (`assessment_id`);

--
-- 資料表索引 `chatroom_list`
--
ALTER TABLE `chatroom_list`
  ADD PRIMARY KEY (`chatroom_id`);

--
-- 資料表索引 `tester_list`
--
ALTER TABLE `tester_list`
  ADD PRIMARY KEY (`tester_id`);

--
-- 資料表索引 `topic_list`
--
ALTER TABLE `topic_list`
  ADD PRIMARY KEY (`topic_id`);

--
-- 資料表索引 `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `StudentID` (`StudentID`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `actionDoc_list`
--
ALTER TABLE `actionDoc_list`
  MODIFY `actionDoc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `action_list`
--
ALTER TABLE `action_list`
  MODIFY `action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;
--
-- 使用資料表 AUTO_INCREMENT `activity_list`
--
ALTER TABLE `activity_list`
  MODIFY `avtivity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用資料表 AUTO_INCREMENT `assessment_list`
--
ALTER TABLE `assessment_list`
  MODIFY `assessment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `chatroom_list`
--
ALTER TABLE `chatroom_list`
  MODIFY `chatroom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 使用資料表 AUTO_INCREMENT `tester_list`
--
ALTER TABLE `tester_list`
  MODIFY `tester_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用資料表 AUTO_INCREMENT `topic_list`
--
ALTER TABLE `topic_list`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用資料表 AUTO_INCREMENT `user_list`
--
ALTER TABLE `user_list`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
