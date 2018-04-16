-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2018 年 03 月 14 日 16:46
-- 伺服器版本: 5.7.21-0ubuntu0.16.04.1
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
(10, '發表論證'),
(11, '論證+論證'),
(12, '論證+筆記'),
(14, '論證+瀏覽網頁'),
(20, '做筆記'),
(21, '筆記+論證'),
(22, '筆記+筆記'),
(24, '筆記+瀏覽網頁'),
(30, '搜尋關鍵字'),
(31, '搜尋關鍵字+論證'),
(32, '搜尋關鍵字+筆記'),
(34, '搜尋關鍵字+瀏覽網頁'),
(40, '瀏覽網頁'),
(41, '瀏覽網頁+論證'),
(42, '瀏覽網頁+筆記'),
(44, '瀏覽網頁+瀏覽網頁');

-- --------------------------------------------------------

--
-- 資料表結構 `action_list`
--

CREATE TABLE `action_list` (
  `action_id` int(11) NOT NULL,
  `actionDoc_id` int(11) NOT NULL,
  `tester_id` int(11) NOT NULL,
  `exe_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '-1',
  `sub_windows_last_exe` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `action_list`
--

INSERT INTO `action_list` (`action_id`, `actionDoc_id`, `tester_id`, `exe_time`, `content`, `sub_windows_last_exe`) VALUES
(1, 2, 1, '2018-01-30 23:34:17', '', '1000-01-01 00:00:00'),
(2, 1, 1, '2018-01-30 23:34:26', '[發表論述]  侒', '1000-01-01 00:00:00'),
(3, 1, 1, '2018-01-30 23:34:39', '[發表論述]  侒', '1000-01-01 00:00:00'),
(4, 1, 1, '2018-01-30 23:34:42', '[發表論述]  侒', '1000-01-01 00:00:00'),
(5, 1, 1, '2018-01-30 23:34:46', '[發表論述]  侒', '1000-01-01 00:00:00'),
(6, 1, 2, '2018-01-31 01:34:41', '[反對對方意見]  wwwww', '1000-01-01 00:00:00'),
(7, 1, 2, '2018-01-31 01:35:56', '[反對對方意見]  kkkkkk', '1000-01-01 00:00:00'),
(8, 1, 2, '2018-01-31 01:36:06', '[反對對方意見]  kkkkk', '1000-01-01 00:00:00'),
(9, 1, 2, '2018-01-31 01:37:02', '[反對對方意見]  www', '1000-01-01 00:00:00'),
(10, 1, 1, '2018-01-31 02:02:56', '[發表論述]  ', '1000-01-01 00:00:00'),
(11, -1, -1, '2018-02-05 15:09:39', 'API測試', '2001-01-01 00:20:00'),
(12, 1, 1, '2018-02-10 23:28:00', '[發表論述]  安安', '1000-01-01 00:00:00'),
(13, 1, 1, '2018-02-11 02:55:20', '[發表論述]  wwww', '1000-01-01 00:00:00'),
(14, 1, 3, '2018-02-11 02:56:26', '[發表論述]  安安', '1000-01-01 00:00:00'),
(15, 1, 1, '2018-02-11 03:13:44', '[發表論述]  swww', '1000-01-01 00:00:00'),
(16, 1, 1, '2018-02-11 03:16:00', '[發表論述]  www', '1000-01-01 00:00:00'),
(17, 1, 3, '2018-02-11 03:16:08', '[發表論述]  0 0 ', '1000-01-01 00:00:00'),
(18, 1, 3, '2018-02-11 03:16:29', '[發表論述]  eeeeeeeeeeeeeeee', '1000-01-01 00:00:00'),
(19, 1, 1, '2018-02-11 03:21:14', '[發表論述]  wwww', '1000-01-01 00:00:00'),
(20, 1, 2, '2018-02-11 03:21:46', '[發表論述]  ??', '1000-01-01 00:00:00'),
(21, 1, 2, '2018-02-11 03:24:14', '[發表論述]  ;;', '1000-01-01 00:00:00'),
(22, 1, 1, '2018-02-11 03:24:21', '[發表論述]  ??', '1000-01-01 00:00:00'),
(23, 1, 2, '2018-02-11 03:33:35', '[發表論述]  wwwww', '1000-01-01 00:00:00'),
(24, 1, 1, '2018-02-22 08:37:43', '[發表論述]  ssss', '1000-01-01 00:00:00'),
(25, 1, 1, '2018-02-22 08:37:46', '[發表論述]  ssssssssss', '1000-01-01 00:00:00'),
(26, 1, 1, '2018-02-22 08:37:49', '[發表論述]  sssss', '1000-01-01 00:00:00'),
(27, 1, 1, '2018-02-22 08:37:56', '[發表論述]  ssssssssssssasasas', '1000-01-01 00:00:00'),
(28, 1, 1, '2018-02-22 08:38:17', '[發表論述]  aaaaaaaaaa', '1000-01-01 00:00:00'),
(29, 1, 1, '2018-02-22 08:38:19', '[發表論述]  aaaaaaaaaaaaaa', '1000-01-01 00:00:00'),
(30, 1, 1, '2018-02-22 08:38:25', '[發表論述]  ] aaaaaaaaaaaaaa', '1000-01-01 00:00:00'),
(31, 1, 1, '2018-02-22 08:38:27', '[發表論述]  ] aaaaaaaaaaaaaa', '1000-01-01 00:00:00'),
(32, 1, 1, '2018-02-22 08:38:28', '[發表論述]  ] aaaaaaaaaaaaaa', '1000-01-01 00:00:00'),
(33, 1, 1, '2018-02-22 08:38:28', '[發表論述]  ] aaaaaaaaaaaaaa', '1000-01-01 00:00:00'),
(34, 1, 1, '2018-02-22 08:38:30', '[發表論述]  ] aaaaaaaaaaaaaa] aaaaaaaaaaaaaa] aaaaaaaaaaaaaa', '1000-01-01 00:00:00'),
(35, 1, 1, '2018-02-22 08:38:30', '[發表論述]  ] aaaaaaaaaaaaaa', '1000-01-01 00:00:00'),
(36, 1, 1, '2018-02-22 08:38:31', '[發表論述]  ] aaaaaaaaaaaaaa', '1000-01-01 00:00:00'),
(37, 1, 1, '2018-02-22 08:38:31', '[發表論述]  ] aaaaaaaaaaaaaa', '1000-01-01 00:00:00'),
(38, 1, 1, '2018-02-22 08:38:32', '[發表論述]  ] aaaaaaaaaaaaaa', '1000-01-01 00:00:00'),
(39, 1, 1, '2018-02-22 08:38:32', '[發表論述]  ] aaaaaaaaaaaaaa', '1000-01-01 00:00:00'),
(40, 2, 23, '2018-02-24 16:03:39', '', '2018-02-25 00:03:35'),
(41, 1, 23, '2018-02-26 01:09:15', '[發表論述]  安安', '1000-01-01 00:00:00'),
(42, 1, 23, '2018-02-26 02:40:09', '[發表論述]  安安安安', '1000-01-01 00:00:00'),
(43, 1, 23, '2018-02-26 02:40:11', '[發表論述]  安安安', '1000-01-01 00:00:00'),
(44, 1, 23, '2018-02-26 02:40:52', '[發表論述]  安安安', '1000-01-01 00:00:00'),
(45, 1, 23, '2018-02-26 02:41:25', '[反對對方意見]  安安安安', '1000-01-01 00:00:00'),
(46, 3, 23, '2018-02-26 02:45:24', '核能', '1000-01-01 00:00:00'),
(47, 3, 23, '2018-02-26 02:45:26', '核能', '1000-01-01 00:00:00'),
(48, 3, 23, '2018-02-26 02:45:30', '核', '1000-01-01 00:00:00'),
(49, 21, 23, '2018-02-26 02:46:17', 'uuuuu', '2018-02-26 10:46:05'),
(50, 1, 23, '2018-02-27 02:51:49', '[發表論述]  安安安安安', '1000-01-01 00:00:00'),
(51, 1, 23, '2018-02-27 02:51:51', '[發表論述]  安安安安安', '1000-01-01 00:00:00'),
(52, 1, 23, '2018-02-27 02:51:53', '[發表論述]  哈瞜', '1000-01-01 00:00:00'),
(53, 1, 23, '2018-02-27 02:51:58', '[發表論述]  我是一號學生喔', '1000-01-01 00:00:00'),
(54, 3, 23, '2018-02-27 02:52:22', '核', '1000-01-01 00:00:00'),
(55, 3, 23, '2018-02-27 02:52:27', '', '1000-01-01 00:00:00'),
(56, 4, 23, '2018-02-27 02:52:45', '核子動力是利用核反應來獲取能量', '1000-01-01 00:00:00'),
(57, 1, 23, '2018-02-28 02:12:35', '[提出新想法]  安安你好', '1000-01-01 00:00:00'),
(58, 1, 23, '2018-02-28 07:28:50', '[none]  wwwww', '1000-01-01 00:00:00'),
(59, 1, 23, '2018-02-28 07:30:54', '[none]  ww', '1000-01-01 00:00:00'),
(60, 1, 23, '2018-02-28 07:33:06', '[none]  2222', '1000-01-01 00:00:00'),
(61, 1, 23, '2018-02-28 07:34:57', '[none]  ', '1000-01-01 00:00:00'),
(62, 1, 23, '2018-02-28 07:35:50', '[提出新想法]  qweqweqwe', '1000-01-01 00:00:00'),
(63, 1, 23, '2018-02-28 07:35:55', '[提出新想法]  qweqweqweqwe', '1000-01-01 00:00:00'),
(64, 1, 23, '2018-02-28 07:36:02', '[提出新想法]  qweqwe', '1000-01-01 00:00:00'),
(65, 1, 23, '2018-02-28 07:36:07', '[贊同對方意見]  qweqweqwe', '1000-01-01 00:00:00'),
(66, 1, 23, '2018-02-28 07:37:25', '[提出新想法]  ', '1000-01-01 00:00:00'),
(67, 1, 23, '2018-02-28 07:37:30', '[提出新想法]  安安', '1000-01-01 00:00:00'),
(68, 1, 23, '2018-03-01 00:58:56', '[發表論述]  我認為經濟發展十分重要', '1000-01-01 00:00:00'),
(69, 2, 23, '2018-03-01 02:53:34', 'sdfsfsdfsdf', '1000-01-01 00:00:00'),
(70, 1, 23, '2018-03-01 02:53:39', '[提出新想法]  1231231313213', '1000-01-01 00:00:00'),
(71, 1, 23, '2018-03-01 02:53:43', '[提出新想法]  sdasdasd', '1000-01-01 00:00:00'),
(72, 1, 23, '2018-03-01 03:31:23', '[提出新想法]  asdasdasd', '1000-01-01 00:00:00'),
(73, 1, 23, '2018-03-01 03:31:27', '[提出新想法]  asdasd', '1000-01-01 00:00:00'),
(74, 1, 23, '2018-03-01 03:31:31', '[提出新想法]  asdasdasd', '1000-01-01 00:00:00'),
(75, 1, 23, '2018-03-01 03:44:38', '[提出新想法]  werwerwer', '1000-01-01 00:00:00'),
(76, 1, 23, '2018-03-01 03:45:37', '[提出新想法]  qweqwe', '1000-01-01 00:00:00'),
(77, 1, 23, '2018-03-01 04:54:04', '[提出新想法]  ssss', '1000-01-01 00:00:00'),
(78, 2, 23, '2018-03-01 04:56:02', '', '1000-01-01 00:00:00'),
(79, 1, 23, '2018-03-01 09:02:58', '[提出新想法]  你說的很好，但是', '1000-01-01 00:00:00'),
(80, 1, 23, '2018-03-05 03:45:03', '[反對對方意見]  我認為你的論述並不正確', '1000-01-01 00:00:00'),
(81, 1, 23, '2018-03-05 03:46:04', '[反對對方意見]  我認為你的論述並不正確', '1000-01-01 00:00:00'),
(82, 1, 23, '2018-03-05 03:52:24', '[反對對方意見]  我無法同意你，因為', '1000-01-01 00:00:00'),
(83, 1, 23, '2018-03-05 03:52:30', '[反對對方意見]  我認為你的論述並不正確', '1000-01-01 00:00:00'),
(84, 1, 23, '2018-03-05 03:52:35', '[反對對方意見]  我無法同意你，因為', '1000-01-01 00:00:00'),
(85, 1, 23, '2018-03-05 03:58:48', '[提出新想法]  或者我們可以', '1000-01-01 00:00:00'),
(86, 1, 23, '2018-03-05 04:00:48', '[提出新想法]  我有一個新的想法了！', '1000-01-01 00:00:00'),
(87, 1, 23, '2018-03-05 04:00:51', '[提出新想法]  我有一個新的想法了！', '1000-01-01 00:00:00'),
(88, 1, 23, '2018-03-05 04:00:53', '[提出新想法]  我有一個新的想法了！', '1000-01-01 00:00:00'),
(89, 1, 23, '2018-03-05 04:00:54', '[提出新想法]  我有一個新的想法了！', '1000-01-01 00:00:00'),
(90, 2, 23, '2018-03-06 20:44:20', '', '1000-01-01 00:00:00'),
(91, 3, 23, '2018-03-06 20:44:25', '核能', '1000-01-01 00:00:00'),
(92, 4, 23, '2018-03-06 20:44:26', '核能- 维基百科，自由的百科全书', '1000-01-01 00:00:00'),
(93, 4, 23, '2018-03-06 20:44:54', '【影片】核能的正反思考（下）：擁核的三大理由- The News Lens 關鍵評論網', '1000-01-01 00:00:00'),
(94, 4, 23, '2018-03-06 20:45:03', '核能流言終結者- 首頁| Facebook', '1000-01-01 00:00:00'),
(95, 4, 23, '2018-03-06 20:45:23', 'MYOOPS 講堂｜ 辯論：這個世界需要核能嗎？', '1000-01-01 00:00:00'),
(96, 4, 23, '2018-03-06 20:45:30', '核能安全？ | 綠色和平－臺灣網站 - Greenpeace USA', '1000-01-01 00:00:00'),
(97, 3, 23, '2018-03-06 20:45:49', '核能 電', '1000-01-01 00:00:00'),
(98, 3, 23, '2018-03-06 20:46:06', '電力', '1000-01-01 00:00:00'),
(99, 3, 23, '2018-03-06 20:46:16', '3d', '1000-01-01 00:00:00'),
(100, 4, 23, '2018-03-06 20:46:20', '核能發電3d動畫- YouTube', '1000-01-01 00:00:00'),
(101, 4, 23, '2018-03-06 20:46:28', '核能發電3d動畫- YouTube', '1000-01-01 00:00:00'),
(102, 1, 23, '2018-03-12 00:33:54', '[提出新想法]  如果是這樣', '1000-01-01 00:00:00'),
(103, 1, 23, '2018-03-12 00:34:16', '[反對對方意見]  123', '1000-01-01 00:00:00'),
(104, 1, 23, '2018-03-12 00:34:25', '[反對對方意見]  我認為你考慮的並不周全，例如123', '1000-01-01 00:00:00'),
(105, 1, 23, '2018-03-12 00:34:48', '[贊同對方意見]  456', '1000-01-01 00:00:00'),
(106, 1, 23, '2018-03-12 00:35:04', '[提出新想法]  123', '1000-01-01 00:00:00'),
(107, 1, 23, '2018-03-12 00:36:24', '[反對對方意見]  123', '1000-01-01 00:00:00'),
(108, 2, 23, '2018-03-12 00:36:39', '', '1000-01-01 00:00:00'),
(109, 1, 23, '2018-03-12 00:37:16', '[反對對方意見]  234', '1000-01-01 00:00:00'),
(110, 1, 23, '2018-03-12 00:37:22', '[反對對方意見]  245', '1000-01-01 00:00:00'),
(111, 1, 23, '2018-03-14 07:09:13', '[提出新想法]  我有一個新的想法了！', '1000-01-01 00:00:00'),
(112, 1, 23, '2018-03-14 07:10:12', '[提出新想法]  qweqweqwe', '1000-01-01 00:00:00'),
(113, 1, 23, '2018-03-14 07:29:55', '[提出新想法]  wwwww', '1000-01-01 00:00:00'),
(114, 1, 23, '2018-03-14 07:30:30', '[提出新想法]  如果換成另外一個方式呢？例如', '1000-01-01 00:00:00');

-- --------------------------------------------------------

--
-- 資料表結構 `activity_list`
--

CREATE TABLE `activity_list` (
  `avtivity_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `unicode` varchar(20) DEFAULT NULL,
  `timeofactivity` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `activity_list`
--

INSERT INTO `activity_list` (`avtivity_id`, `topic_id`, `user_id`, `unicode`, `timeofactivity`) VALUES
(1, 1, 1, '1-1517244419', '2018-01-12'),
(2, 1, 1, '1-1517298191', '2018-01-19'),
(3, 1, 1, '1-1517322981', '2018-01-14'),
(4, 2, 2, '2-1517327192', '2018-01-06'),
(5, 1, 1, '1-1517353429', '2018-03-10'),
(6, 2, 2, '2-1518318422', '2018-03-10'),
(7, 4, 8, '8-1518326563', '2018-02-09'),
(8, 5, 10, '10-1519362901', '2018-05-11'),
(9, 6, 10, '10-1519363134', '2018-01-11'),
(10, 8, 11, '11-1520303416', '2018-01-11'),
(11, 9, 18, '18-1520548298', '2018-01-27'),
(12, 10, 10, '10-1520557677', '2018-03-09');

-- --------------------------------------------------------

--
-- 資料表結構 `assessment_list`
--

CREATE TABLE `assessment_list` (
  `assessment_id` int(11) NOT NULL,
  `content` varchar(3000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `activity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `assessment_list`
--

INSERT INTO `assessment_list` (`assessment_id`, `content`, `activity_id`) VALUES
(2, 'question 1 ', 1),
(3, 'question 2', 1),
(4, 'question 2', 3),
(5, 'question 1 ', 3),
(6, 'question 3', 1),
(7, '今天天氣很好', 1),
(8, '「勞動基準法部分條文修正案」經歷立法院徹夜討論，在今天凌晨三讀通過。這次的修法，究竟做了哪些調整？以下整理成5大要點，讓你快速掌握：  1. 休息日加班的工時，改為核實計算 105年12月公布的勞基法條文規定，員工若需在休息日出勤，雇主計算工資的方式，是加班工時未滿4小時，以4小時計；超過4小時、未滿8小時，則以8小時計；超過8小時、未滿12小時，就以12小時計，希望透過抬高加班費的做法，抑制雇主讓勞工過度加班。  而本次修法將此條移除，休息日加班的工時改為核實計算，加班幾小時，就以相同小時數去計算加班日所需付的工資。  2. 每月加班上限從46小時增加為54小時，三個月不超過138小時 原先勞基法規定，雇主延長勞工工時，一個月不得超過46小時，但本次修法增加新的條文， 如雇主經工會同意，無工會者經勞資會議協商，一個月可延長的工時不得超過54小時，三個月不得超過138小時（平均一個月為46小時） 。  3. 輪班間隔的休息時間，從11小時縮減為8小時 之前勞基法規定，有換班需求的的雇主，需讓員工上班到下班時間間隔11小時以上 （但當時沒有擇定執行日期） 。   本次修法新增條文， 允許因「工作特性」或「特殊原因」，經過中央目的事業主管機關商請勞動部公告後，始得變更輪班間隔的休息時間，雇主經工會同意，無工會者透過勞資協商，就可以縮減至8小時。  4. 7天必須休1天，變成14天內休息日跟例假日有4天 過去的勞基法限制雇主，必須讓勞工每7日就要有1日例假日（不可加班）。此次修法放寬標準， 經中央目的事業主管機關同意，且為中央主管機關指定的行業，例假日也可調整，鬆綁成「14休4（包含例假日和休假日）」 。改完之後，符合條件的企業勞工如果休假日全數加班，最多可連續工作12天。  5. 當年未休完的特休假，從直接換算薪資，變成可積假到明年 以前當年度未休完的特休假，員工可折換成薪資。此次修法增加條文， 經勞雇雙方協商，未休完的特休假，可遞延到明年 。如果到次年底結算還是沒休完，才折換成薪資。 ', 5),
(9, 'question ....', 1),
(10, 'question ....', 1),
(11, 'question', 1),
(12, 'www', 6),
(13, '你覺得使用核能所帶來的經濟效益足以讓台灣接受核能帶來危險的可能性嗎？', 8),
(14, '你在以往的核能問題上是屬於支持核能的立場嗎', 8),
(15, '一般情況下，你支持台灣的核能繼續擴大發展?', 10),
(16, '你認為補習學習外語是十分有用的？', 11),
(17, '你是否支持台灣興建核電廠，以解決供電不足的問題？', 12);

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
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, -1),
(31, -1),
(32, -1),
(33, -1),
(34, -1),
(35, 1),
(36, 1),
(37, 6),
(38, 7),
(39, 8),
(40, 11),
(41, 11),
(42, 12),
(43, 12),
(44, 8);

-- --------------------------------------------------------

--
-- 資料表結構 `references_for_search`
--

CREATE TABLE `references_for_search` (
  `references_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `memo` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `references_for_search`
--

INSERT INTO `references_for_search` (`references_id`, `title`, `link`, `memo`) VALUES
(1, '核子動力是利用核反應來獲取能量', 'https://zh.wikipedia.org/wiki/%E6%A0%B8%E5%8B%95%E5%8A%9B', '核子動力'),
(2, '車諾比ㄏ子事故', 'https://zh.wikipedia.org/wiki/%E5%88%87%E5%B0%94%E8%AF%BA%E8%B4%9D%E5%88%A9%E6%A0%B8%E4%BA%8B%E6%95%85', '車諾比 核子事故'),
(3, '哪種勞工，可能連續上班 12 天？勞動部對勞基法 7 休 1 的解釋', 'https://www.managertoday.com.tw/articles/view/55569', '勞基法 勞工 加班'),
(4, '能力好、態度差 vs. 能力差、態度好，優秀主管會留下哪種人？', 'https://www.managertoday.com.tw/help/view/55468', '經理人'),
(5, '我把每天早上的咖啡換成玄米咖啡之後', 'http://jpwawawa.com/simanoya-coffee03/', '美的方程式 咖啡'),
(6, '你跟到「超級老闆」了嗎？', 'https://www.managertoday.com.tw/books/view/55446', '經理人'),
(7, '你真的會用 iPhone 嗎？多數人不知道，卻超好用的 10 大功能', 'https://www.managertoday.com.tw/articles/view/55516', '經理人'),
(8, 'connect to GitHub', 'https://studentcodebank.wordpress.com/2017/08/30/github-connect-to-github/', 'theta'),
(9, '核動力- 维基百科，自由的百科全书', 'https://zh.wikipedia.org/zh-tw/%E6%A0%B8%E5%8B%95%E5%8A%9B', '核動力- 维基百科，自由的百科全书'),
(10, '核能- 维基百科，自由的百科全书', 'https://zh.wikipedia.org/zh-tw/%E6%A0%B8%E8%83%BD', '核能- 维基百科，自由的百科全书'),
(11, '核能的優點和缺點| 核能與我 - 設計者：陳緯庭 - WordPress.com', 'https://kts1d5.wordpress.com/%E6%A0%B8%E8%83%BD%E5%84%AA%E9%BB%9E%E5%92%8C%E7%BC%BA%E9%BB%9E/', '核能的優點和缺點| 核能與我 - 設計者：陳緯庭 - WordPress.com'),
(12, '核能| TechNews 科技新報', 'https://technews.tw/category/%E8%83%BD%E6%BA%90%E7%A7%91%E6%8A%80/nuclear/', '核能| TechNews 科技新報'),
(13, '甚麼是核能| 核電| 中電集團 - CLP Group', 'https://www.clpgroup.com/NuclearEnergy/Chi/science/science3_1.aspx', '甚麼是核能| 核電| 中電集團 - CLP Group'),
(14, '核能的發展史| 核電| 中電集團 - CLP Group', 'https://www.clpgroup.com/nuclearenergy/Chi/science/science3_3.aspx', '核能的發展史| 核電| 中電集團 - CLP Group'),
(15, '核能流言終結者', 'http://nuclearmb.org/', '核能流言終結者'),
(16, '核能', 'http://web.cc.ntnu.edu.tw/~497700231/may29.htm', '核能'),
(17, '火力發電vs 核能發電：誰的殺傷力大- PanSci 泛科學', 'http://pansci.asia/archives/59450', '火力發電vs 核能發電：誰的殺傷力大- PanSci 泛科學'),
(18, '核能還有未來嗎？ - 中時電子報', 'http://www.chinatimes.com/newspapers/20170709000209-260209', '核能還有未來嗎？ - 中時電子報'),
(19, '核能- MBA智库百科', 'http://wiki.mbalib.com/zh-tw/%E6%A0%B8%E8%83%BD', '核能- MBA智库百科'),
(20, '【核能發電】從台灣停電到平衡環保與發展｜馬新維｜香港01｜博評', 'https://www.hk01.com/01%E5%8D%9A%E8%A9%95-%E6%94%BF%E7%B6%93%E7%A4%BE/112908/-%E6%A0%B8%E8%83%BD%E7%99%BC%E9%9B%BB-%E5%8D%9A%E8%A9%95-%E5%BE%9E%E5%8F%B0%E7%81%A3%E5%81%9C%E9%9B%BB%E5%88%B0%E5%B9%B3%E8%A1%A1%E7%92%B0%E4%BF%9D%E8%88%87%E7%99%BC%E5%B1%95', '【核能發電】從台灣停電到平衡環保與發展｜馬新維｜香港01｜博評'),
(21, '核能發電3d動畫- YouTube', 'https://www.youtube.com/watch?v=WrmZwq3yyAU', '核能發電3d動畫- YouTube'),
(22, '引領「全球核能復興」 大陸2030年前要蓋100座核電廠 - ETtoday新聞雲', 'https://www.ettoday.net/news/20171101/1042953.htm', '引領「全球核能復興」 大陸2030年前要蓋100座核電廠 - ETtoday新聞雲'),
(23, '輻射小知識- 取之不盡的核能', 'http://www.hko.gov.hk/prtver/html/docs/radiation/tidbit/200906/ne_uc.shtml', '輻射小知識- 取之不盡的核能'),
(24, '核電與科技：核能發電的原理@ 核電議題你知多少？ :: 痞客邦PIXNET ::', 'http://medialiteracy.pixnet.net/blog/post/80267760-%E6%A0%B8%E9%9B%BB%E8%88%87%E7%A7%91%E6%8A%80%EF%BC%9A%E6%A0%B8%E8%83%BD%E7%99%BC%E9%9B%BB%E7%9A%84%E5%8E%9F%E7%90%86', '核電與科技：核能發電的原理@ 核電議題你知多少？ :: 痞客邦PIXNET ::'),
(25, '核電與民生、其他:核能發電的歷史@ 核電議題你知多少？ :: 痞客邦 ...', 'http://medialiteracy.pixnet.net/blog/post/81510562-%E6%A0%B8%E9%9B%BB%E8%88%87%E6%B0%91%E7%94%9F%E3%80%81%E5%85%B6%E4%BB%96%3A%E6%A0%B8%E8%83%BD%E7%99%BC%E9%9B%BB%E7%9A%84%E6%AD%B7%E5%8F%B2', '核電與民生、其他:核能發電的歷史@ 核電議題你知多少？ :: 痞客邦 ...'),
(26, '核能 NUCLEAR POWER', 'http://ihouse.hkedcity.net/~hm1203/eco-activities/energy-nuclear.htm', '核能 NUCLEAR POWER'),
(27, '核能電廠環境輻射監測 - 台灣電力公司', 'http://wapp4.taipower.com.tw/nsis/', '核能電廠環境輻射監測 - 台灣電力公司'),
(28, '行政院原子能委員會核能研究所', 'https://www.iner.gov.tw/', '行政院原子能委員會核能研究所'),
(29, '核能_百度百科', 'https://baike.baidu.com/item/%E6%A0%B8%E8%83%BD', '核能_百度百科'),
(30, '【影片】核能的正反思考（下）：擁核的三大理由- The News Lens 關鍵評論網', 'https://www.thenewslens.com/article/38938', '【影片】核能的正反思考（下）：擁核的三大理由- The News Lens 關鍵評論網'),
(31, '核能最便宜？ 台電自打臉- 財經- 自由時報電子報', 'http://news.ltn.com.tw/news/business/paper/1083379', '核能最便宜？ 台電自打臉- 財經- 自由時報電子報'),
(32, '核能| 台灣環境資訊協會-環境資訊中心', 'http://e-info.org.tw/taxonomy/term/221', '核能| 台灣環境資訊協會-環境資訊中心'),
(33, '核電廠即時資訊- 行政院原子能委員會', 'https://www.aec.gov.tw/nuclearlive', '核電廠即時資訊- 行政院原子能委員會'),
(34, '核能一廠- 行政院原子能委員會', 'https://www.aec.gov.tw/%E6%A0%B8%E8%83%BD%E5%AE%89%E5%85%A8/%E6%A0%B8%E8%83%BD%E9%9B%BB%E5%BB%A0%E5%9F%BA%E6%9C%AC%E8%B3%87%E6%96%99--3_19.html', '核能一廠- 行政院原子能委員會'),
(35, '核能流言終結者- 首頁| Facebook', 'https://zh-tw.facebook.com/NuclearMythbusters/', '核能流言終結者- 首頁| Facebook'),
(36, '核能發電 - 台灣國際造船股份有限公司', 'http://www.csbcnet.com.tw/Service/RenewableEnergy/NuclearPower.htm', '核能發電 - 台灣國際造船股份有限公司'),
(37, '核能發電很危險所以該反對？他用科學數據道出真相：怕核電廠殺人？你 ...', 'http://www.storm.mg/lifestyle/275955', '核能發電很危險所以該反對？他用科學數據道出真相：怕核電廠殺人？你 ...'),
(38, '核能發電的特性 - 中華民國核能學會', 'http://archived.chns.org/s.php@id=6&id2=35.html', '核能發電的特性 - 中華民國核能學會'),
(39, '貯存回饋要點 - 核能發電後端營運', 'http://www.nbef.org.tw/page.php?level1_id=2&level2_id=6', '貯存回饋要點 - 核能發電後端營運'),
(40, '用電吃緊？賴清德鬆口：再轉核能電廠是最後手段| 台灣綠電路漫漫| 要聞 ...', 'https://udn.com/news/story/6656/2804737', '用電吃緊？賴清德鬆口：再轉核能電廠是最後手段| 台灣綠電路漫漫| 要聞 ...'),
(41, '廢核是世界主流？ | 核能流言終結者維基| FANDOM powered by Wikia', 'http://zh.nuke.wikia.com/wiki/%E5%BB%A2%E6%A0%B8%E6%98%AF%E4%B8%96%E7%95%8C%E4%B8%BB%E6%B5%81%EF%BC%9F', '廢核是世界主流？ | 核能流言終結者維基| FANDOM powered by Wikia'),
(42, '305教學資源~~核 能', 'https://market.cloud.edu.tw/content/junior/life_tech/tc_jr/life_tech03/305/305source20.htm', '305教學資源~~核 能'),
(43, '[PDF]\n核能利用之反思與挑戰', 'http://web.ntpu.edu.tw/~kswang/101B/source/homework/A3.pdf', '[PDF]\n核能利用之反思與挑戰'),
(44, '財團法人核能資訊中心-', 'http://www.nicenter.org.tw/', '財團法人核能資訊中心-'),
(45, '《核能應用解析》用過燃料97%可再回收', 'http://mail1.ctsh.mlc.edu.tw/~ctsh_h/cthchem/psweb/newspaper/nuclear_energy.html', '《核能應用解析》用過燃料97%可再回收'),
(46, '[PDF]\n核能，不能輕言放棄的選擇', 'http://cge.gec.nthu.edu.tw/download/2.pdf', '[PDF]\n核能，不能輕言放棄的選擇'),
(47, '核能災害與防災 - 氣候天氣災害研究中心 - 國立臺灣大學', 'http://www.wcdr.ntu.edu.tw/26680330212879723475332873845028797.html', '核能災害與防災 - 氣候天氣災害研究中心 - 國立臺灣大學'),
(48, '震驚全球5大核能災難| 大紀元', 'http://www.epochtimes.com/b5/11/3/18/n3201776.htm', '震驚全球5大核能災難| 大紀元'),
(49, '比爾蓋茲將讓中國成為世界第一核電強國？｜環境｜能源｜2017-11-30 ...', 'https://www.cw.com.tw/article/article.action?id=5086508', '比爾蓋茲將讓中國成為世界第一核電強國？｜環境｜能源｜2017-11-30 ...'),
(50, '不學德國廢核馬克宏：靠核能減碳| 國際| 中央社CNA', 'http://www.cna.com.tw/news/aopl/201712180089-1.aspx', '不學德國廢核馬克宏：靠核能減碳| 國際| 中央社CNA'),
(51, '核能爭議 - (LMS), NCU.', 'https://lms.ncu.edu.tw/q?pg=blog&bId=27', '核能爭議 - (LMS), NCU.'),
(52, '[PDF]\n核能能災害及其防救救', 'http://ir.nuk.edu.tw:8080/bitstream/310360000Q/11875/2/%E7%94%9F%E6%B4%BB%E9%98%B2%E7%81%BD_%E7%AC%AC16%E9%80%B1_%E6%A0%B8%E8%83%BD%E7%81%BD%E5%AE%B3%E5%8F%8A%E5%85%B6%E9%98%B2%E6%95%91.pdf', '[PDF]\n核能能災害及其防救救'),
(53, '[PDF]\n核能發電概述', 'http://web1.fyh.mohw.gov.tw/depweb/protection/%E8%BC%BB%E9%98%B2%E5%B8%B8%E8%AD%98/9.%E6%A0%B8%E8%83%BD%E7%99%BC%E9%9B%BB%E6%A6%82%E8%BF%B0.pdf', '[PDF]\n核能發電概述'),
(54, 'MYOOPS 講堂｜ 辯論：這個世界需要核能嗎？', 'http://www.myoops.org/ted_detail.php?id=361', 'MYOOPS 講堂｜ 辯論：這個世界需要核能嗎？'),
(55, '核能新思維 - 科學人雜誌', 'http://sa.ylib.com/MagCont.aspx?Unit=featurearticles&id=1198', '核能新思維 - 科學人雜誌'),
(56, '啟動核一、核四，並以核能發電盈餘發展綠色能源- 提點子-公共政策網路 ...', 'https://join.gov.tw/idea/detail/2167dce7-4be9-4df3-964b-b63594cca4be', '啟動核一、核四，並以核能發電盈餘發展綠色能源- 提點子-公共政策網路 ...'),
(57, '重啟核能當然是選項| 蘋果日報', 'https://tw.appledaily.com/new/realtime/20170816/1183617/', '重啟核能當然是選項| 蘋果日報'),
(58, 'HKNIC - 認識核能', 'https://www.hknuclear.com/nuclear/Pages/LearnNuclear.aspx?lang=tc', 'HKNIC - 認識核能'),
(59, '核能發電優缺點 - 太陽能發電', 'http://www.solar2money.com/index/solarpower_good_bad/nuclear_power.html', '核能發電優缺點 - 太陽能發電'),
(60, '【心得】阿MOSA教：Factorio 異星工廠核能發電篇@異星工廠（Factorio） - 哈 ...', 'https://forum.gamer.com.tw/C.php?bsn=28459&snA=220', '【心得】阿MOSA教：Factorio 異星工廠核能發電篇@異星工廠（Factorio） - 哈 ...'),
(61, '【週四｜小心！有陷阱】冀劍制：核能的文明秀-精選專欄-博客來OKAPI', 'http://okapi.books.com.tw/article/index/518', '【週四｜小心！有陷阱】冀劍制：核能的文明秀-精選專欄-博客來OKAPI'),
(62, '联合国｜安全核能', 'http://www.un.org/zh/development/progareas/global/nuclear.shtml', '联合国｜安全核能'),
(63, '核能- 萌典', 'https://www.moedict.tw/%E6%A0%B8%E8%83%BD', '核能- 萌典'),
(64, 'NPOst 週報No. 56：楊斯棓醫師vs 核能流言終結者：網路核能論辯的觀察 ...', 'http://npost.tw/archives/2536', 'NPOst 週報No. 56：楊斯棓醫師vs 核能流言終結者：網路核能論辯的觀察 ...'),
(65, '核能大地| 公共電視紀錄片平台', 'https://viewpoint.pts.org.tw/ptsdoc_video/%E6%A0%B8%E8%83%BD%E5%A4%A7%E5%9C%B0/', '核能大地| 公共電視紀錄片平台'),
(66, '認識：為什麼反核？ - 全國廢核行動平台', 'http://nonukeyesvote.tw/whynonuke.php', '認識：為什麼反核？ - 全國廢核行動平台'),
(67, '核能發電- 財經百科- 財經知識庫- MoneyDJ理財網', 'https://www.moneydj.com/KMDJ/wiki/WikiViewer.aspx?Title=%E6%A0%B8%E8%83%BD%E7%99%BC%E9%9B%BB', '核能發電- 財經百科- 財經知識庫- MoneyDJ理財網'),
(68, '核能- Yahoo奇摩字典搜尋結果', 'https://tw.dictionary.yahoo.com/dictionary?p=%E6%A0%B8%E8%83%BD', '核能- Yahoo奇摩字典搜尋結果'),
(69, 'Stewart Brand + Mark Z. Jacobson: 辯論：這個世界需要核能嗎? | TED ...', 'https://www.ted.com/talks/debate_does_the_world_need_nuclear_energy?language=zh-tw', 'Stewart Brand + Mark Z. Jacobson: 辯論：這個世界需要核能嗎? | TED ...'),
(70, '[PDF]\n認識核能發電', 'http://www.tucheng.ntpc.gov.tw/archive/file/4-1%E8%AA%8D%E8%AD%98%E6%A0%B8%E8%83%BD%E7%99%BC%E9%9B%BB.pdf', '[PDF]\n認識核能發電'),
(71, '核能安全？ | 綠色和平－臺灣網站 - Greenpeace USA', 'http://www.greenpeace.org/taiwan/zh/campaigns/climate-energy/end-nuclear/nuclear-safety/', '核能安全？ | 綠色和平－臺灣網站 - Greenpeace USA'),
(72, '屏東縣監督核能安全委員會 - 屏東縣政府環保局', 'https://www.ptepb.gov.tw/nuclear/', '屏東縣監督核能安全委員會 - 屏東縣政府環保局'),
(73, '核能爭議 - 找議題| 沃草國會無雙| 沃草國會無雙', 'https://musou.tw/topics/13', '核能爭議 - 找議題| 沃草國會無雙| 沃草國會無雙'),
(74, '[PPT]\n台灣的環安衛問題-台灣的核能危機', 'https://eportal.stust.edu.tw/eshare/EshareFile/2014_4/2014_4_81592df9.ppt', '[PPT]\n台灣的環安衛問題-台灣的核能危機'),
(75, '『輻射與核能』教育 - 單位網', 'https://depart.moe.edu.tw/ed2700/News_Content.aspx?n=F84C9B045D336AF4&sms=BFD0035AFA4CEA76&s=0A88FB674DE26A69', '『輻射與核能』教育 - 單位網'),
(76, '[PDF]\nI. 臺灣萬一發生嚴重核災, 該去哪?', 'http://www.tipi.com.tw/Nuclear123.pdf', '[PDF]\nI. 臺灣萬一發生嚴重核災, 該去哪?'),
(77, '核能 - 臺灣閩南語常用詞辭典', 'http://twblg.dict.edu.tw/holodict_new/result_detail.jsp?n_no=6147&curpage=1&sample=%E6%A0%B8%E8%83%BD&radiobutton=1&querytarget=1&limit=20&pagenum=1&rowcount=1', '核能 - 臺灣閩南語常用詞辭典'),
(78, '[PDF]\n確保核安穩健減核打造綠能低碳環境逐步邁向非核家園 - 行政院', 'https://www.ey.gov.tw/DL.ashx?u=/Upload/RelFile/2710/703787/%25e8%2583%25bd%25e6%25ba%2590%25e5%25ae%2589%25e5%2585%25a8%25e8%2588%2587%25e9%259d%259e%25e6%25a0%25b8%25e5%25ae%25b6%25e5%259c%2592.pdf', '[PDF]\n確保核安穩健減核打造綠能低碳環境逐步邁向非核家園 - 行政院'),
(79, '核能與新能源教育與研究協進會', 'http://www.nneerf.org.tw/', '核能與新能源教育與研究協進會'),
(80, '[PDF]\n擁核vs.反核：媒體報導與個人特質對核能態度之影響', 'http://ccs.nccu.edu.tw/word/HISTORY_PAPER_FILES/23537132015.pdf', '[PDF]\n擁核vs.反核：媒體報導與個人特質對核能態度之影響'),
(81, '科技大觀園-- 於對談中學習：核能發電的輻安與防範', 'https://scitechvista.nat.gov.tw/c/sfvR.htm', '科技大觀園-- 於對談中學習：核能發電的輻安與防範'),
(82, '【台灣核能發電超級懶人包】 – I\'mPress 深刻記錄者– Medium', 'https://medium.com/impress-%E6%B7%B1%E5%88%BB%E6%9C%AD%E8%A8%98/%E5%8F%B0%E7%81%A3%E6%A0%B8%E8%83%BD%E7%99%BC%E9%9B%BB-%E8%B6%85%E7%B4%9A%E6%87%B6%E4%BA%BA%E5%8C%85-eb3e93594323', '【台灣核能發電超級懶人包】 – I\'mPress 深刻記錄者– Medium'),
(83, '[PDF]\n核能組A - 中日工程技術研討會', 'https://sinojp.thb.gov.tw/30/30_015.pdf', '[PDF]\n核能組A - 中日工程技術研討會'),
(84, '核能利用與法之規制-元照網路書店 - 元照出版', 'http://www.angle.com.tw/book.asp?BKID=23', '核能利用與法之規制-元照網路書店 - 元照出版'),
(85, '戶外參訪～探索核能與人文的世界 - 明志科技大學', 'http://www.mcut.edu.tw/p/404-1000-1510.php?Lang=zh-tw', '戶外參訪～探索核能與人文的世界 - 明志科技大學'),
(86, '[PDF]\n核能發電條例草案 - 立法會', 'https://www.legco.gov.hk/chinese/education/files/LMP_S_nuclear_c.pdf', '[PDF]\n核能發電條例草案 - 立法會'),
(87, '《臺日核能管制資訊交流備忘錄》 (103年11月20日簽署) - 臺灣日本關係協會', 'https://www.mofa.gov.tw/aear/cp.aspx?n=1BADFD219F88BA62', '《臺日核能管制資訊交流備忘錄》 (103年11月20日簽署) - 臺灣日本關係協會'),
(88, '先进核能系统和高温气冷堆 - 第 19 頁 - Google 圖書結果', 'https://books.google.com.tw/books?id=uJ9zUu39Nl0C&pg=PA19&lpg=PA19&dq=%E6%A0%B8%E8%83%BD&source=bl&ots=F4UAQGID8q&sig=ExPk1HLhq1UjNatdVO20O2nH4To&hl=zh-TW&sa=X&ved=0ahUKEwj8_v7Ux9jZAhVFqJQKHR_iCkY4UBDoAQgpMAA', '先进核能系统和高温气冷堆 - 第 19 頁 - Google 圖書結果'),
(89, '立法院-核能發電後端基金107年度預算評估報告', 'https://www.ly.gov.tw/Pages/List.aspx?nodeid=12707', '立法院-核能發電後端基金107年度預算評估報告'),
(90, '核能: 无穷的能源 - 第 101 頁 - Google 圖書結果', 'https://books.google.com.tw/books?id=f-i9KOTAazgC&pg=PA101&lpg=PA101&dq=%E6%A0%B8%E8%83%BD&source=bl&ots=XfgBZoZonG&sig=ZuAS9YsChovnZzddqX0FNthHPeU&hl=zh-TW&sa=X&ved=0ahUKEwj8_v7Ux9jZAhVFqJQKHR_iCkY4UBDoAQg0MAI', '核能: 无穷的能源 - 第 101 頁 - Google 圖書結果'),
(91, '立法院-核能發電後端營運基金100年度預算評估報告', 'https://www.ly.gov.tw/Pages/List.aspx?nodeid=8706', '立法院-核能發電後端營運基金100年度預算評估報告'),
(92, '核能研究所- 科技專案補助資源- 經濟部技術處 - 中華民國經濟部', 'https://www.moea.gov.tw/MNS/doit/content/Content.aspx?menu_id=13489', '核能研究所- 科技專案補助資源- 經濟部技術處 - 中華民國經濟部'),
(93, '行政院環境保護署 核能四廠環境保護監督委員會委員名單', 'https://www.epa.gov.tw/lp.asp?ctNode=31795&CtUnit=1545&BaseDSD=7&mp=epa', '行政院環境保護署 核能四廠環境保護監督委員會委員名單'),
(94, 'Event Report WANO與EDF在核能安全座談會中一起工作', 'http://www.wano.info/zh-cn/InsideWANO/articles/eventreport/Pages/WANO-and-EDF-working-together-at-Nuclear-Safety-Symposium.aspx', 'Event Report WANO與EDF在核能安全座談會中一起工作'),
(95, '中国核能行业协会', 'http://www.china-nea.cn/', '中国核能行业协会'),
(96, '核能_北极星电力新闻网', 'http://news.bjx.com.cn/zt.asp?topic=%BA%CB%C4%DC', '核能_北极星电力新闻网'),
(97, '中核集团核能发电30年相当于造林210万公顷-新华网 - 新华社', 'http://www.xinhuanet.com/2018-03/06/c_1122497282.htm', '中核集团核能发电30年相当于造林210万公顷-新华网 - 新华社'),
(98, '怎樣搭巴士去New Taipei City的第二核能發電廠減容中心| Moovit', 'https://moovitapp.com/index/zh-tw/%E5%85%AC%E5%85%B1%E4%BA%A4%E9%80%9A-%E7%AC%AC%E4%BA%8C%E6%A0%B8%E8%83%BD%E7%99%BC%E9%9B%BB%E5%BB%A0%E6%B8%9B%E5%AE%B9%E4%B8%AD%E5%BF%83-Taipei-site_17678476-3843', '怎樣搭巴士去New Taipei City的第二核能發電廠減容中心| Moovit'),
(99, '中国核工业集团公司', 'http://www.cnnc.com.cn/', '中国核工业集团公司'),
(100, 'Q13我國核能研究所功能是檢測核電污染，但現在邊境食品輻射檢測都 ...', 'https://www.fda.gov.tw/tc/siteContent.aspx?sid=9180', 'Q13我國核能研究所功能是檢測核電污染，但現在邊境食品輻射檢測都 ...'),
(101, '中國核能科技 (611) CNE TECH CORP - 免費即時股票報價HK Stock ...', 'http://www.aastocks.com/tc/LTP/RTQuote.aspx?Symbol=00611', '中國核能科技 (611) CNE TECH CORP - 免費即時股票報價HK Stock ...'),
(102, '停機逾600天原能會同意台電再啟動核二廠2號機| 台灣好新聞TaiwanHot ...', 'http://www.taiwanhot.net/?p=551590', '停機逾600天原能會同意台電再啟動核二廠2號機| 台灣好新聞TaiwanHot ...'),
(103, '中核集团核能发电30年相当于造林210万公顷-财经频道-金融界', 'http://finance.jrj.com.cn/2018/03/07012324201621.shtml', '中核集团核能发电30年相当于造林210万公顷-财经频道-金融界'),
(104, '核能_核能价格_核能生产厂家_中国新能源网', 'http://www.china-nengyuan.com/product/product_small_1045.html', '核能_核能价格_核能生产厂家_中国新能源网'),
(105, '[PDF]\n國立台北科技大學核能科技學程施行細則 - 國立臺北科技大學學生事務處', 'http://osa.ntut.edu.tw/ezfiles/3/1003/img/2354/137247558.pdf', '[PDF]\n國立台北科技大學核能科技學程施行細則 - 國立臺北科技大學學生事務處'),
(106, '用電量創歷年3月新高核二2號機啟動過關 | 卡優新聞網', 'http://www.cardu.com.tw/news/detail.php?35084', '用電量創歷年3月新高核二2號機啟動過關 | 卡優新聞網'),
(107, '【新聞稿】核二違法重啟，公民團體再告經濟部、原能會公共危險罪| 苦勞網', 'http://www.coolloud.org.tw/node/90285', '【新聞稿】核二違法重啟，公民團體再告經濟部、原能會公共危險罪| 苦勞網'),
(108, '有關 網路對學生的影響 的學術文章', 'http://scholar.google.com.tw/scholar?q=%E7%B6%B2%E8%B7%AF%E5%B0%8D%E5%AD%B8%E7%94%9F%E7%9A%84%E5%BD%B1%E9%9F%BF&hl=zh-TW&as_sdt=0&as_vis=1&oi=scholart&sa=X&ved=0ahUKEwjqjoLfydjZAhUHjZQKHS_6B-MQgQMIKDAA', '有關 網路對學生的影響 的學術文章'),
(109, '網路遊戲對學生的影響- 中小學網路素養與認知', 'https://eteacher.edu.tw/Article.aspx?id=222', '網路遊戲對學生的影響- 中小學網路素養與認知'),
(110, '[PDF]\n網路對學生的影響', 'http://museum.lib.nctu.edu.tw/share/ys/ys0358-05.pdf', '[PDF]\n網路對學生的影響'),
(111, '[PDF]\n大學生網路使用行為與網路影響之研究 - 高苑科技大學', 'http://www.kyu.edu.tw/volume/volume17/17-2/02-12.pdf', '[PDF]\n大學生網路使用行為與網路影響之研究 - 高苑科技大學'),
(112, '[PDF]\n網路使用之態度、動機與影響 - 南華大學', 'http://www.nhu.edu.tw/~society/jccic/12/fu/12-03.pdf', '[PDF]\n網路使用之態度、動機與影響 - 南華大學'),
(113, '[PDF]\n網際網路對羅東高商學生之影響研究 - 中學生網站', 'http://www.shs.edu.tw/works/essay/2009/03/2009033116132906.pdf', '[PDF]\n網際網路對羅東高商學生之影響研究 - 中學生網站'),
(114, '[PDF]\n網路對青少年的影響 - 瑞祥高中圖書館', 'http://lib.rssh.kh.edu.tw/essay/94essay/67.pdf', '[PDF]\n網路對青少年的影響 - 瑞祥高中圖書館'),
(115, '網路對學生的影響| Yahoo奇摩知識+', 'https://tw.answers.yahoo.com/question/index?qid=20101030000016KK00464', '網路對學生的影響| Yahoo奇摩知識+'),
(116, '[DOC]\n網絡語言對學生的影響 - 教學資源庫', 'https://resources.hkedcity.net/downloadResource.php?rid=188463177&pid=113444950', '[DOC]\n網絡語言對學生的影響 - 教學資源庫'),
(117, '網路沈迷可能成因與因應策略 - 國立成功大學學生事務處', 'http://stud.adm.ncku.edu.tw/stu/chinese/communication/vol-21/love005.htm', '網路沈迷可能成因與因應策略 - 國立成功大學學生事務處'),
(118, '[PDF]\n手機網路對學生習專心度的影響 - 臺南市私立崑山高級中學', 'http://www.kssh.tn.edu.tw/ezfiles/0/1000/img/17/143096864.pdf', '[PDF]\n手機網路對學生習專心度的影響 - 臺南市私立崑山高級中學'),
(119, '[PDF]\n影響學生學業成就與網路使用行為之相關研究 以桃園縣一所 ... - NTCUIR', 'http://ntcuir.ntcu.edu.tw/bitstream/987654321/6056/2/%E6%95%B8%E7%90%86%E9%A1%9E%EF%BC%88%E9%BB%83%E9%80%A3%E8%88%88%EF%BC%89.pdf', '[PDF]\n影響學生學業成就與網路使用行為之相關研究 以桃園縣一所 ... - NTCUIR'),
(120, '網路成癮對學生的影響與因應之道- 臺北市立內湖高工', 'http://web.nihs.tp.edu.tw/files/16-1001-2859.php', '網路成癮對學生的影響與因應之道- 臺北市立內湖高工'),
(121, '[PDF]\n第一章研究動機', 'http://teacher.sjps.ptc.edu.tw/sjpsweb/online_tool/xoops/modules/tad_uploader/index.php?op=dlfile&cfsn=127&cat_sn=30', '[PDF]\n第一章研究動機'),
(122, '網路科技對教育的影響', 'http://cmr.ba.ouhk.edu.hk/cmr/oldweb/n5/981025.html', '網路科技對教育的影響'),
(123, '科技產品對學生弊大於利？ | 大紀元', 'http://www.epochtimes.com/b5/15/3/17/n4389972.htm', '科技產品對學生弊大於利？ | 大紀元'),
(124, '[PDF]\n探討現今科技發達時代對學生之影響作者 - 育達高中', 'http://ydweb.yuda.tyc.edu.tw/Page/BBP/BBP_Upload/333/9038/%E9%99%84%E4%BB%B609_20120406022824.pdf', '[PDF]\n探討現今科技發達時代對學生之影響作者 - 育達高中'),
(125, '[PDF]\n國小學生網路成癮個案研究 - 國家教育研究院', 'https://www.naer.edu.tw/ezfiles/0/1000/attach/62/pta_6113_5002739_31220.pdf', '[PDF]\n國小學生網路成癮個案研究 - 國家教育研究院'),
(126, '第四節電腦網路對青少年性知識的影響 - 有愛無礙For General', 'https://general.dale.nthu.edu.tw/special/special-4-7-4.html', '第四節電腦網路對青少年性知識的影響 - 有愛無礙For General'),
(127, '[PDF]\n虛擬桃花源---網路成癮 - 國立臺南大學', 'http://www2.nutn.edu.tw/gac690/ckImage/files/104-2-6%E6%9C%88%E4%BB%BD%E5%AD%B8%E7%94%9F%E8%BC%94%E5%B0%8E%E5%A2%9E%E8%83%BD%E6%96%87%E7%AB%A0%EF%BC%9A%E3%80%8C%E8%99%9B%E6%93%AC%E6%A1%83%E8%8A%B1%E6%BA%90---%E7%B6%B2%E8%B7%AF%E6%88%90%E7%99%AE%E3%80%8D.pdf', '[PDF]\n虛擬桃花源---網路成癮 - 國立臺南大學'),
(128, '迷惘、迷網—談青少年網路使用與輔導 - 台灣心理諮商資訊網', 'http://www.heart.net.tw/paper4.shtml', '迷惘、迷網—談青少年網路使用與輔導 - 台灣心理諮商資訊網'),
(129, '網路科技對教育的影響—學習環境、學習型式、師生互動、與教學內容的 ...', 'http://acbe.tku.edu.tw/iccai8/12/12.htm', '網路科技對教育的影響—學習環境、學習型式、師生互動、與教學內容的 ...'),
(130, '高雄市立文山高級中學-優等--玩網路遊戲時間與數理成績的影響 - 文山高中', 'http://www.wsm.ks.edu.tw/releaseRedirect.do?unitID=183&pageID=3298', '高雄市立文山高級中學-優等--玩網路遊戲時間與數理成績的影響 - 文山高中'),
(131, '網路文化對校園的影響 - 臺北市政府衛生局社區心理衛生中心', 'http://mental.health.gov.tw/WebForm/External/ArticleDetail.aspx?ArticleID=21&Type=04', '網路文化對校園的影響 - 臺北市政府衛生局社區心理衛生中心'),
(132, '健康遠見- 對身體好！：別讓3C成癮影響了課業學習與親子關係！', 'https://health.gvm.com.tw/webonly_content_5286.html', '健康遠見- 對身體好！：別讓3C成癮影響了課業學習與親子關係！'),
(133, '教師心裡苦對學生影響力不如手機網路| 生活| 中央社CNA', 'http://www.cna.com.tw/news/ahel/201609270211-1.aspx', '教師心裡苦對學生影響力不如手機網路| 生活| 中央社CNA'),
(134, '[DOC]\n大學生對網路美食資訊搜尋決策研究 - 建國科技大學', 'http://ir.lib.ctu.edu.tw/bitstream/310909700/7004/2/%E5%A4%A7%E5%AD%B8%E7%94%9F%E5%B0%8D%E7%B6%B2%E8%B7%AF%E7%BE%8E%E9%A3%9F%E8%B3%87%E8%A8%8A%E6%90%9C%E5%B0%8B%E6%B1%BA%E7%AD%96%E7%A0%94%E7%A9%B6.doc', '[DOC]\n大學生對網路美食資訊搜尋決策研究 - 建國科技大學'),
(135, '[PPT]\n社群網站對大學生人際關係影響之調查研究 - 朝陽科技大學', 'https://lms.ctl.cyut.edu.tw/blog/lib/read_attach.php?id=259339', '[PPT]\n社群網站對大學生人際關係影響之調查研究 - 朝陽科技大學'),
(136, '團體課程對「網路成癮」國中學生影響之行動研究__臺灣博碩士論文知識 ...', 'https://ndltd.ncl.edu.tw/cgi-bin/gs32/gsweb.cgi?o=dnclcdr&s=id=%22093NDHU5331023%22.&searchmode=basic', '團體課程對「網路成癮」國中學生影響之行動研究__臺灣博碩士論文知識 ...'),
(137, '網絡文化對學生影響有多大，看看大家怎麼說？ - 每日頭條', 'https://kknews.cc/zh-tw/education/v2vapl.html', '網絡文化對學生影響有多大，看看大家怎麼說？ - 每日頭條'),
(138, '對學生影響力不及手機老師心裡苦- 中時電子報', 'http://www.chinatimes.com/realtimenews/20160927004079-260405', '對學生影響力不及手機老師心裡苦- 中時電子報'),
(139, '網路與我 - 作文易學堂EzWriting.com.tw', 'https://www.ezwriting.com.tw/zh-tw/creative-letter_view.asp?id=17886', '網路與我 - 作文易學堂EzWriting.com.tw'),
(140, '資訊科技的發展與教育模式的相互影響 陳年興教授- 國立中山大學管理 ...', 'http://cgc.nsysu.edu.tw/files/15-1268-103945,c100-1.php', '資訊科技的發展與教育模式的相互影響 陳年興教授- 國立中山大學管理 ...'),
(141, '教育學刊第38期: Educational Review Vol.38', 'https://books.google.com.tw/books?id=m1FgBAAAQBAJ&pg=PA67&lpg=PA67&dq=%E7%B6%B2%E8%B7%AF%E5%B0%8D%E5%AD%B8%E7%94%9F%E7%9A%84%E5%BD%B1%E9%9F%BF&source=bl&ots=71LHORq4Ou&sig=iZ_AdnQdk9nKm3FZh_9HwgOy5KI&hl=zh-TW&sa=X&ved=0ahUKEwiGyLvjydjZAhUFopQKHc6nCFU4HhDoAQg1MAI', '教育學刊第38期: Educational Review Vol.38'),
(142, 'WebQuest網路探究/教師與學生在網路探究中的角色 - 维基教科书', 'https://zh.wikibooks.org/zh-tw/WebQuest%E7%B6%B2%E8%B7%AF%E6%8E%A2%E7%A9%B6/%E6%95%99%E5%B8%AB%E8%88%87%E5%AD%B8%E7%94%9F%E5%9C%A8%E7%B6%B2%E8%B7%AF%E6%8E%A2%E7%A9%B6%E4%B8%AD%E7%9A%84%E8%A7%92%E8%89%B2', 'WebQuest網路探究/教師與學生在網路探究中的角色 - 维基教科书'),
(143, '[PDF]\n數位時代的閱讀：青少年網路閱讀的爭議與未來 - 圖書資訊學刊 - 國立 ...', 'http://jlis.lis.ntu.edu.tw/article/v8-2-3.pdf', '[PDF]\n數位時代的閱讀：青少年網路閱讀的爭議與未來 - 圖書資訊學刊 - 國立 ...'),
(144, '(Entertainment Media) 對學生學業及社會發展的影響 ... - 數位學習無國界', 'http://chinese.classroom-aid.com/2012/12/part-i.html/', '(Entertainment Media) 對學生學業及社會發展的影響 ... - 數位學習無國界'),
(145, '[PDF]\n第七章傳播媒體對青少年性知識的影響 - 特殊教育性別平等', 'http://gender.set.edu.tw/Texbook/Textbook/10_7Learning-disabilities.pdf', '[PDF]\n第七章傳播媒體對青少年性知識的影響 - 特殊教育性別平等'),
(146, '電腦對未來生活可能的影響', 'https://market.cloud.edu.tw/content/primary/info_edu/cy_sa/content/2/2-5.htm', '電腦對未來生活可能的影響'),
(147, '[PDF]\n網路化問題解決教學策略對學生生物學習成效的影響 - 國內學術電子期刊 ...', 'http://ejournal.stpi.narl.org.tw/index/items/download?viId=DCBAF86E-1F41-4EC4-AE8C-72C6B17ED529', '[PDF]\n網路化問題解決教學策略對學生生物學習成效的影響 - 國內學術電子期刊 ...'),
(148, '熱點中國：轉型時期的挑戰 - 第 283 頁 - Google 圖書結果', 'https://books.google.com.tw/books?id=ifmzCwAAQBAJ&pg=PA283&lpg=PA283&dq=%E7%B6%B2%E8%B7%AF%E5%B0%8D%E5%AD%B8%E7%94%9F%E7%9A%84%E5%BD%B1%E9%9F%BF&source=bl&ots=QGzBCJdI6X&sig=ue1R-AGU0d50enb5KymsJHdL1Oc&hl=zh-TW&sa=X&ved=0ahUKEwiGyLvjydjZAhUFopQKHc6nCFU4HhDoAQhcMAk', '熱點中國：轉型時期的挑戰 - 第 283 頁 - Google 圖書結果'),
(149, '大學生網路安全教育案例: - Google 圖書結果', 'https://books.google.com.tw/books?id=paVBDwAAQBAJ&pg=PT37&lpg=PT37&dq=%E7%B6%B2%E8%B7%AF%E5%B0%8D%E5%AD%B8%E7%94%9F%E7%9A%84%E5%BD%B1%E9%9F%BF&source=bl&ots=kDmDY7F8xX&sig=HC3KLl22guP3RF-NbgoyuvKGtTg&hl=zh-TW&sa=X&ved=0ahUKEwj0tfTkydjZAhWFo5QKHaUQAnc4KBDoAQgpMAA', '大學生網路安全教育案例: - Google 圖書結果'),
(150, '[PDF]\n網路使用與青少年性健康 - 台灣護理學會', 'http://www.twna.org.tw/TWNA_BACKEND/upload/web/ePublication/7275/JNv59n6-086-091.pdf', '[PDF]\n網路使用與青少年性健康 - 台灣護理學會'),
(151, '圖解：Facebook 真的影響學生成績？ | TechOrange - BuzzOrange', 'https://buzzorange.com/techorange/2011/04/29/facebook-effect-students/', '圖解：Facebook 真的影響學生成績？ | TechOrange - BuzzOrange'),
(152, '[PDF]\n104年學生網路使用情形調查報告', 'https://ws.moe.edu.tw/Download.ashx?u=C099358C81D4876CA89ABD8A8B76D9997C8CD1ED0B5A2F1BC311B13FF031BBDE4498264B828085433B607DAB24FC7F73858E15E6313F81683B4DE235223D9E5CD2B31217D64090F8EC6406F7AD302580&n=7A6A299FC2448719FE8C99176A2268149DA07BCBF26F181E160AE730D6CFA1F0BC1504DC85B2F50580937C79381F748F&icon=..pdf', '[PDF]\n104年學生網路使用情形調查報告'),
(153, '環境污染與身心症--談網路文化對睡眠的影響', 'http://www.kmuh.org.tw/www/kmcj/data/9003/4673.htm', '環境污染與身心症--談網路文化對睡眠的影響'),
(154, '[PDF]\n國民小學學校創新對學生發展創新民小學學校創新對學生發展創新影響 ...', 'http://www.ncyu.edu.tw/files/site_content/giee/119-146-%E5%9C%8B%E6%B0%91%E5%B0%8F%E5%AD%B8%E5%AD%B8%E6%A0%A1%E5%89%B5%E6%96%B0%E5%B0%8D%E5%AD%B8%E7%94%9F%E7%99%BC%E5%B1%95%E5%89%B5%E6%96%B0%E5%BD%B1%E9%9F%BF%E9%97%9C%E4%BF%82%E4%B9%8B%E5%88%86%E6%9E%90.pdf', '[PDF]\n國民小學學校創新對學生發展創新民小學學校創新對學生發展創新影響 ...'),
(155, '教育部電子報_教授網路不當發言被迫休假對學生造成影響？', 'https://epaper.edu.tw/windows.aspx?windows_sn=20480', '教育部電子報_教授網路不當發言被迫休假對學生造成影響？'),
(156, '[PDF]\n淺談資訊網路對人力資源發展之影響---參加ARTDO 第29 ... - 國家文官學院', 'http://www.nacs.gov.tw/NcsiWebFileDocuments/db0609a4d75357ddbce052972d50cbb7.pdf', '[PDF]\n淺談資訊網路對人力資源發展之影響---參加ARTDO 第29 ... - 國家文官學院'),
(157, '第八章資訊科技對文化與社會的影響 - 文獻處理實驗室', 'http://cdp.sinica.edu.tw/project/01/8_1.htm', '第八章資訊科技對文化與社會的影響 - 文獻處理實驗室'),
(158, '用全面性的角度正視學生上網的問題 - 新竹市教育處', 'http://www4.hc.edu.tw/epaper/no83/live1.asp', '用全面性的角度正視學生上網的問題 - 新竹市教育處'),
(159, '[PDF]\n電腦和網際網路對e 世代人類的影響-以馬公高中二年級學生為例', 'http://203.71.79.117/mklibrary/include/download.php?p=thesis/01&f=2008033101_970331003.pdf&n=2008033101_970331003.pdf', '[PDF]\n電腦和網際網路對e 世代人類的影響-以馬公高中二年級學生為例'),
(160, '[PDF]\n影響網路學習成效之相關研究 - 數位典藏系統', 'http://ir.lib.tut.edu.tw/wSite/PDFReader?xmlId=59420&fileName=1426002680135&format=pdf', '[PDF]\n影響網路學習成效之相關研究 - 數位典藏系統'),
(161, '[PDF]\n網路沉迷、因應、孤寂感與網路社會支持之關係：男女大學生之比較', 'http://ojs.lib.ntnu.edu.tw/index.php/bep/article/viewFile/88/72', '[PDF]\n網路沉迷、因應、孤寂感與網路社會支持之關係：男女大學生之比較'),
(162, '學測國文寫作：網路影響認知嗎？ | 朱家安| 鳴人堂', 'https://opinion.udn.com/opinion/story/6068/2962377', '學測國文寫作：網路影響認知嗎？ | 朱家安| 鳴人堂'),
(163, '[PDF]\n網路購物平台的出現對於消費行為改變之研究1 以東海大學學生為例', 'http://soc.thu.edu.tw/fskang/2008social%20research.pdf', '[PDF]\n網路購物平台的出現對於消費行為改變之研究1 以東海大學學生為例'),
(164, '教團調查老師影響力不如同儕與網路- 生活- 自由時報電子報', 'http://news.ltn.com.tw/news/life/breakingnews/1113463', '教團調查老師影響力不如同儕與網路- 生活- 自由時報電子報'),
(165, '教師心裡苦對學生影響力不如手機網路: 美麗島電子報', 'http://www.my-formosa.com/DOC_106922.htm', '教師心裡苦對學生影響力不如手機網路: 美麗島電子報'),
(166, '[PDF]\n網路同儕互評與標準建構歷程對國小學生後設認知影響 ... - 國北教大教務處', 'http://academic.ntue.edu.tw/ezfiles/7/1007/img/41/17-1-8.pdf', '[PDF]\n網路同儕互評與標準建構歷程對國小學生後設認知影響 ... - 國北教大教務處'),
(167, '[DOC]\n融入數學寫作與科技於數學的學習對 - 科技部', 'https://www.most.gov.tw/most/attachments/5651ce66-7423-4838-bf65-82f13b4df562', '[DOC]\n融入數學寫作與科技於數學的學習對 - 科技部'),
(168, '網路騷擾的型態與影響 - 反性別暴力資源網TAGV - 衛生福利部', 'http://tagv.mohw.gov.tw/TAGV12_3.aspx?PK_ID=121&FPK=344', '網路騷擾的型態與影響 - 反性別暴力資源網TAGV - 衛生福利部'),
(169, '教師心裡苦對學生影響力不如手機網路-典通股份有限公司', 'http://www.statinc.com.tw/news/html/?2821.html', '教師心裡苦對學生影響力不如手機網路-典通股份有限公司'),
(170, '網路多元學生出題策略對國小學生認知策略與學習成就之影響', 'http://www.airitilibrary.com/Publication/alDetailedMesh?docid=1013090x-201406-201407110011-201407110011-1-33', '網路多元學生出題策略對國小學生認知策略與學習成就之影響'),
(171, '騙老師的學生，影響了我一生', 'http://www.wagor.tc.edu.tw/doc/articles/0296.htm', '騙老師的學生，影響了我一生'),
(172, '[PDF]\n網路輿論平台與影響 以臉書互動現象為例 - 2011台灣社會學會年會', 'https://2011tsa.files.wordpress.com/2011/11/e590b3e6ab82e98a931.pdf', '[PDF]\n網路輿論平台與影響 以臉書互動現象為例 - 2011台灣社會學會年會'),
(173, '網路世代的分心危機 - 科學人雜誌', 'http://sa.ylib.com/MagCont.aspx?Unit=columns&id=2309', '網路世代的分心危機 - 科學人雜誌'),
(174, '网络带来的好处与坏处有哪些？ _天涯问答_天涯社区', 'http://wenda.tianya.cn/question/40d3eee3202772e3', '网络带来的好处与坏处有哪些？ _天涯问答_天涯社区'),
(175, '網路學習- MBA智库百科', 'http://wiki.mbalib.com/zh-tw/%E7%BD%91%E7%BB%9C%E5%AD%A6%E4%B9%A0', '網路學習- MBA智库百科'),
(176, '[PDF]\n網路沉迷輔導', 'http://www.isu.edu.tw/upload/04/6/files/dept_6_lv_2_37627.pdf', '[PDF]\n網路沉迷輔導'),
(177, '智慧型手機影響學生課業？｜數位時代', 'https://www.bnext.com.tw/article/view/id/21132', '智慧型手機影響學生課業？｜數位時代'),
(178, '學校、家庭及社會的教育夥伴關係@ 閱讀與生活:: 隨意窩Xuite日誌', 'http://blog.xuite.net/kc6191/study/20677745-%E5%AD%B8%E6%A0%A1%E3%80%81%E5%AE%B6%E5%BA%AD%E5%8F%8A%E7%A4%BE%E6%9C%83%E7%9A%84%E6%95%99%E8%82%B2%E5%A4%A5%E4%BC%B4%E9%97%9C%E4%BF%82', '學校、家庭及社會的教育夥伴關係@ 閱讀與生活:: 隨意窩Xuite日誌'),
(179, '[PDF]\n7--吳嫦娥，「青少年網路應用問題之探討」', 'https://www.tpi.moj.gov.tw/HitCounter.asp?xItem=352746', '[PDF]\n7--吳嫦娥，「青少年網路應用問題之探討」'),
(180, '跟上時代，十分鐘了解全球化對你的影響！ - 作家生活誌', 'https://showwe.tw/choice/choice.aspx?c=23', '跟上時代，十分鐘了解全球化對你的影響！ - 作家生活誌'),
(181, '[PDF]\n網路時代大學生的社會參與－實體或虛擬？ - 臺灣教育評論學會', 'http://www.ater.org.tw/%E6%95%99%E8%A9%95%E6%9C%88%E5%88%8A/%E8%87%BA%E8%A9%95%E6%9C%88%E5%88%8A%E7%AC%AC%E5%9B%9B%E5%8D%B7%E7%AC%AC1%E6%9C%9F%E7%B6%B2%E8%B7%AF%E5%85%AC%E5%91%8A%E7%89%88/%E4%B8%BB%E9%A1%8C/020.%20%E6%9D%8E%E5%AE%97%E8%96%87%E3%80%81%E8%8E%8A%E4%BD%B3%E7%A9%8E_%E7%B6%B2%E8%B7%AF%E6%99%82%E4%BB%A3%E5%A4%A7%E5%AD%B8%E7%94%9F%E7%9A%84%E7%A4%BE%E6%9C%83%E5%8F%83%E8%88%87%EF%BC%8D%E5%AF%A6%E9%AB%94%E6%88%96%E8%99%9B%E6%93%AC%EF%BC%9F_page%2081-85.pdf', '[PDF]\n網路時代大學生的社會參與－實體或虛擬？ - 臺灣教育評論學會'),
(182, '[PDF]\n教師增能學生有福教師是影響學生學習的關鍵人物，一位具有專業和熱情 ...', 'http://www.k12ea.gov.tw/files/epaper_ext/c7d9c94a-6737-41a7-8197-431c3e00b252/doc/%E6%95%99%E5%B8%AB%E5%A2%9E%E8%83%BD%20%20%E5%AD%B8%E7%94%9F%E6%9C%89%E7%A6%8F.pdf', '[PDF]\n教師增能學生有福教師是影響學生學習的關鍵人物，一位具有專業和熱情 ...'),
(183, '手機深入校園暗藏危機 - 臺灣讀報教育指南', 'http://www.mdnkids.com/nie/nie_indicate/unit7/W-970625-15/W-970625-15.htm', '手機深入校園暗藏危機 - 臺灣讀報教育指南'),
(184, '老師好壞會影響學生未來收入 - 天下雜誌', 'https://www.cw.com.tw/article/article.action?id=5053131', '老師好壞會影響學生未來收入 - 天下雜誌'),
(185, '[PPT]\npptx 請', 'http://www.nhes.edu.tw/CMS_NHES_Official/Upload/Content/Other/files/104%E5%B9%B4%E5%BA%A6%E7%B6%B2%E8%B7%AF%E6%88%90%E7%99%AE%E5%85%B1%E9%80%9A%E7%89%88%E7%B0%A1%E5%A0%B1(final).pptx', '[PPT]\npptx 請'),
(186, '[PDF]\n不同網路遊戲使用時間的國中生在使用需求、自我效能、學業表現及同儕 ...', 'http://ir.nptu.edu.tw/bitstream/987654321/461/3/E22-3.pdf', '[PDF]\n不同網路遊戲使用時間的國中生在使用需求、自我效能、學業表現及同儕 ...'),
(187, '科技是如何改變人類的語言| TechNews 科技新報', 'http://technews.tw/2016/02/23/how-technology-can-change-human-language/', '科技是如何改變人類的語言| TechNews 科技新報'),
(188, '解決非法下載的雙贏方法(網路,下載,侵權,盜版,非法下載影響 ... - 商業周刊', 'https://www.businessweekly.com.tw/article.aspx?id=1256&type=Blog', '解決非法下載的雙贏方法(網路,下載,侵權,盜版,非法下載影響 ... - 商業周刊'),
(189, 'Gmail郵箱中斷影響中國學生申請美國大學- BBC 中文网 - BBC.com', 'http://www.bbc.com/zhongwen/trad/china/2014/12/141230_china_us_gmail_students', 'Gmail郵箱中斷影響中國學生申請美國大學- BBC 中文网 - BBC.com'),
(190, '科技大觀園-- 行為學習的探索：青少年也會失眠嗎', 'https://scitechvista.nat.gov.tw/c/sfxT.htm', '科技大觀園-- 行為學習的探索：青少年也會失眠嗎'),
(191, '[PDF]\n認識網路沉迷 - 國立東華大學諮商中心', 'http://www.pcc.ndhu.edu.tw/ezfiles/11/1011/img/3318/103092403.pdf', '[PDF]\n認識網路沉迷 - 國立東華大學諮商中心'),
(192, '非正式課程學習與社團學分化對社團經營與影響研討會- 中國文化大學 ...', 'http://activity.pccu.edu.tw/files/11-1035-9177.php', '非正式課程學習與社團學分化對社團經營與影響研討會- 中國文化大學 ...'),
(193, '[PDF]\n網路科技對勞動市場的衝擊 - 財團法人中技社', 'http://www.ctci.org.tw/public/Attachment/711016393771.pdf', '[PDF]\n網路科技對勞動市場的衝擊 - 財團法人中技社'),
(194, '[PDF]\n藝術教育與網路學習新思維 - 台灣藝術教育網', 'http://ed.arte.gov.tw/InvitePaper/..%5Cuploadfile%5CTwin_Focus%5C%E8%97%9D%E8%A1%93%E6%95%99%E8%82%B2%E8%88%87%E7%B6%B2%E8%B7%AF%E5%AD%B8%E7%BF%92%E6%96%B0%E6%80%9D%E7%B6%AD.pdf', '[PDF]\n藝術教育與網路學習新思維 - 台灣藝術教育網'),
(195, '[PDF]\n網路互動式遠距教學策略之構想與其可行性', 'http://www0.nttu.edu.tw/jmc/file/a04.pdf', '[PDF]\n網路互動式遠距教學策略之構想與其可行性'),
(196, '哪些社交網站對青少年有負面影響？ - 台灣大紀元', 'http://www.epochtimes.com.tw/n231832/%E5%93%AA%E4%BA%9B%E7%A4%BE%E4%BA%A4%E7%B6%B2%E7%AB%99%E5%B0%8D%E9%9D%92%E5%B0%91%E5%B9%B4%E6%9C%89%E8%B2%A0%E9%9D%A2%E5%BD%B1%E9%9F%BF-.html', '哪些社交網站對青少年有負面影響？ - 台灣大紀元'),
(197, '[PDF]\n提升學習動機：網路多媒體的形成性評量方案 - 國立臺灣圖書館', 'https://www.ntl.edu.tw/public/Attachment/992614512324.pdf', '[PDF]\n提升學習動機：網路多媒體的形成性評量方案 - 國立臺灣圖書館'),
(198, '[PDF]\n台灣網際網路發展與問題初探 - 中華傳播學會', 'http://ccs.nccu.edu.tw/word/HISTORY_PAPER_FILES/965_1.pdf', '[PDF]\n台灣網際網路發展與問題初探 - 中華傳播學會'),
(199, '自主學習——從教師做起-翻轉教育', 'https://flipedu.parenting.com.tw/article/3148', '自主學習——從教師做起-翻轉教育'),
(200, '大學報: 大學生瘋韓劇影響無所不在', 'http://uonlineblog.blogspot.com/2014/03/blog-post_9361.html', '大學報: 大學生瘋韓劇影響無所不在'),
(201, '[PDF]\n結合從眾行為探討影響網路團購購買意願因素 - 崇越論文大賞', 'http://thesis.topco-global.com/TopcoTRC/2010_Thesis/D0017.pdf', '[PDF]\n結合從眾行為探討影響網路團購購買意願因素 - 崇越論文大賞'),
(202, '未來的衝擊：大規模開放網路課程（MOOC）對MBA項目意味著什麼 ...', 'http://www.knowledgeatwharton.com.cn/zh-hant/article/7685/', '未來的衝擊：大規模開放網路課程（MOOC）對MBA項目意味著什麼 ...'),
(203, '[PDF]\n數位教材之音訊對學生學習成效之影響 - 正修科技大學管理學院', 'http://cm.csu.edu.tw/wSite/public/Data/f1441682713429.pdf', '[PDF]\n數位教材之音訊對學生學習成效之影響 - 正修科技大學管理學院'),
(204, '[PDF]\n多元教學方法對學生上課專注力之影響 - 馬偕醫學院教師發展中心', 'http://cfd.academic.mmc.edu.tw/UploadFile/file/2015/10/%E5%A4%9A%E5%85%83%E6%95%99%E5%AD%B8%E6%96%B9%E6%B3%95%E5%B0%8D%E5%AD%B8%E7%94%9F%E4%B8%8A%E8%AA%B2%E5%B0%88%E6%B3%A8%E5%8A%9B%E4%B9%8B%E5%BD%B1%E9%9F%BF-%E6%91%98%E8%A6%811001-1.pdf', '[PDF]\n多元教學方法對學生上課專注力之影響 - 馬偕醫學院教師發展中心'),
(205, '論沉迷網上交友對青少年的影響- 學生中文佳作共賞 - Google Sites', 'https://sites.google.com/a/tkp.edu.hk/chiworks/Home/20122013/lun-chen-mi-wang-shang-jiao-you-dui-qing-shao-nian-de-ying-xiang', '論沉迷網上交友對青少年的影響- 學生中文佳作共賞 - Google Sites'),
(206, '[PDF]\n「臉書選舉」？ 2012 年台灣總統大選社群媒體對政治參與行為的影響', 'http://www2.scu.edu.tw/politics/journal/doc/j311/1.pdf', '[PDF]\n「臉書選舉」？ 2012 年台灣總統大選社群媒體對政治參與行為的影響'),
(207, '[PDF]\n國立彰化師範大學學生心理諮商與輔導中心', 'http://ncuecounseling.ncue.edu.tw/ezfiles/9/1009/attach/74/pta_6767_6851445_27069.pdf', '[PDF]\n國立彰化師範大學學生心理諮商與輔導中心'),
(208, '國家講座主持人-蔡今中講座教授', 'http://cctsai.net/np18/Page1.aspx', '國家講座主持人-蔡今中講座教授'),
(209, '小學生好辛苦！ 全國逾7成課後得補習 TVBS新聞網', 'https://news.tvbs.com.tw/life/697980', '小學生好辛苦！ 全國逾7成課後得補習 TVBS新聞網'),
(210, '【家有小學生】補習及自主學習的平衡點– 媽媽經｜專屬於媽媽的網站', 'https://mamaclub.com/learn/%E3%80%90%E5%AE%B6%E6%9C%89%E5%B0%8F%E5%AD%B8%E7%94%9F%E3%80%91%E8%A3%9C%E7%BF%92%E5%8F%8A%E8%87%AA%E4%B8%BB%E5%AD%B8%E7%BF%92%E7%9A%84%E5%B9%B3%E8%A1%A1%E9%BB%9E/', '【家有小學生】補習及自主學習的平衡點– 媽媽經｜專屬於媽媽的網站'),
(211, '陸嚴打中小學生補習知名數學競賽被叫停| 兩岸| 中央社CNA', 'http://www.cna.com.tw/news/acn/201803030073-1.aspx', '陸嚴打中小學生補習知名數學競賽被叫停| 兩岸| 中央社CNA'),
(212, '每年全國小學生花601億補習10人有7人在補| 新聞追追追| 文教| 聯合 ...', 'https://udn.com/news/story/9/2197301', '每年全國小學生花601億補習10人有7人在補| 新聞追追追| 文教| 聯合 ...'),
(213, '小學生補習一年砸600億- 生活- 自由時報電子報', 'http://news.ltn.com.tw/news/life/paper/1066586', '小學生補習一年砸600億- 生活- 自由時報電子報'),
(214, '一個補教名師的告白：寧可小孩成績爛，別送孩子去補習班！ - 商業周刊', 'https://www.businessweekly.com.tw/article.aspx?id=15636&type=Blog', '一個補教名師的告白：寧可小孩成績爛，別送孩子去補習班！ - 商業周刊'),
(215, '[PDF]\n小學生補習率之探討', 'http://www.shs.edu.tw/works/essay/2008/03/2008033011305844.pdf', '[PDF]\n小學生補習率之探討'),
(216, '小學生一定要補習嗎?--求助發問-非常婚禮veryWed.com', 'http://verywed.com/forum/wedlife/351899.html', '小學生一定要補習嗎?--求助發問-非常婚禮veryWed.com'),
(217, '全台補習班不減反增國中小學生補最凶| 陳承璋| 遠見雜誌', 'https://www.gvm.com.tw/article.html?id=38318', '全台補習班不減反增國中小學生補最凶| 陳承璋| 遠見雜誌'),
(218, '《親子天下》韓國小學生補習才是王道(合輯) @ George Yeo 網路自強號 ...', 'http://linuxyeo.pixnet.net/blog/post/288478634-%E3%80%8A%E8%A6%AA%E5%AD%90%E5%A4%A9%E4%B8%8B%E3%80%8B%E9%9F%93%E5%9C%8B%E5%B0%8F%E5%AD%B8%E7%94%9F-%E8%A3%9C%E7%BF%92%E6%89%8D%E6%98%AF%E7%8E%8B%E9%81%93-%28%E5%90%88%E8%BC%AF', '《親子天下》韓國小學生補習才是王道(合輯) @ George Yeo 網路自強號 ...'),
(219, '沒有考試、沒有補習班，幸福的瑞典小學生要到12歲才第一次拿到分數 ...', 'https://www.thenewslens.com/article/13698', '沒有考試、沒有補習班，幸福的瑞典小學生要到12歲才第一次拿到分數 ...'),
(220, '認識6大數學補習體系/小學生-學習/親子天下', 'https://www.parenting.com.tw/article/5048431-%E8%AA%8D%E8%AD%986%E5%A4%A7%E6%95%B8%E5%AD%B8%E8%A3%9C%E7%BF%92%E9%AB%94%E7%B3%BB/', '認識6大數學補習體系/小學生-學習/親子天下'),
(221, '不補習，也能第一名的讀書方法/小學生-教養/親子天下', 'https://www.parenting.com.tw/article/5027433-%E4%B8%8D%E8%A3%9C%E7%BF%92%EF%BC%8C%E4%B9%9F%E8%83%BD%E7%AC%AC%E4%B8%80%E5%90%8D%E7%9A%84%E8%AE%80%E6%9B%B8%E6%96%B9%E6%B3%95/', '不補習，也能第一名的讀書方法/小學生-教養/親子天下'),
(222, '教育部調查小學生補習費年花600億元| 蘋果日報', 'https://tw.appledaily.com/new/realtime/20161228/1022993/', '教育部調查小學生補習費年花600億元| 蘋果日報'),
(223, '小學生補習為何居高不下？ - Yahoo奇摩新聞', 'https://tw.news.yahoo.com/blogs/for-young/%E5%B0%8F%E5%AD%B8%E7%94%9F%E8%A3%9C%E7%BF%92%E7%82%BA%E4%BD%95%E5%B1%85%E9%AB%98%E4%B8%8D%E4%B8%8B-020939330.html', '小學生補習為何居高不下？ - Yahoo奇摩新聞'),
(224, '小學生該不該上補習班- 每日頭條', 'https://kknews.cc/zh-tw/education/6kylmyl.html', '小學生該不該上補習班- 每日頭條'),
(225, '一團火- 為基層小學生補習，你有興趣加入嗎？你可否Share開去，讓更多 ...', 'https://www.facebook.com/onfire.hk/videos/1722439781111126/', '一團火- 為基層小學生補習，你有興趣加入嗎？你可否Share開去，讓更多 ...'),
(226, '學校加補習班一天上課12小時台灣小學生好命苦| ETtoday生活| ETtoday ...', 'https://www.ettoday.net/news/20121113/126742.htm', '學校加補習班一天上課12小時台灣小學生好命苦| ETtoday生活| ETtoday ...'),
(227, '小學生補習單肩包女生 - Taobao - 淘宝', 'https://world.taobao.com/product/%E5%B0%8F%E5%AD%B8%E7%94%9F%E8%A3%9C%E7%BF%92%E5%96%AE%E8%82%A9%E5%8C%85%E5%A5%B3%E7%94%9F.htm', '小學生補習單肩包女生 - Taobao - 淘宝'),
(228, 'go2tutor首頁- 免費找尋私人補習學生/導師- 教育及年輕人資訊網站 ...', 'http://www.go2tutor.com/', 'go2tutor首頁- 免費找尋私人補習學生/導師- 教育及年輕人資訊網站 ...'),
(229, '小學生應不應該補習呢? @ xzc3718840o1 :: 隨意窩Xuite日誌', 'http://blog.xuite.net/xzcacs/wretch/116942214-%E5%B0%8F%E5%AD%B8%E7%94%9F%E6%87%89%E4%B8%8D%E6%87%89%E8%A9%B2%E8%A3%9C%E7%BF%92%E5%91%A2%3F', '小學生應不應該補習呢? @ xzc3718840o1 :: 隨意窩Xuite日誌'),
(230, '補習班- 维基百科，自由的百科全书', 'https://zh.wikipedia.org/zh-tw/%E8%A3%9C%E7%BF%92%E7%8F%AD', '補習班- 维基百科，自由的百科全书'),
(231, '[PDF]\n補習 - Advance Academy of Houston', 'http://advanceacademyhouston.com/documents/HowardArticleP1.pdf', '[PDF]\n補習 - Advance Academy of Houston'),
(232, '小學生補習', 'http://ubeat.com.cuhk.edu.hk/ubeat_past/060373/ta_pst_edited.html', '小學生補習'),
(233, '頂手補習社- 行業概覽 - 自讓易', 'http://www.mybizsell.com/single-post/%E5%85%A8%E6%B8%AF%E4%B8%AD%E5%B0%8F%E5%AD%B8%E8%A3%9C%E7%BF%92%E7%A4%BE%E6%95%B8%E7%9B%AE%E3%80%81%E6%94%B6%E7%94%9F%E5%AD%B8%E8%B2%BB%E3%80%81%E8%A1%8C%E6%A5%AD%E7%AB%B6%E7%88%AD', '頂手補習社- 行業概覽 - 自讓易'),
(234, '小學不快樂！白天補習晚上自修「壓力超重」 - YouTube', 'https://www.youtube.com/watch?v=JKFECTfdXWs', '小學不快樂！白天補習晚上自修「壓力超重」 - YouTube'),
(235, '香港補習文化| 知識庫| 藍眼知識學院| 藍眼科技集團', 'https://academy.blueeyes.com.tw/knowledge_afterschool_HK.php', '香港補習文化| 知識庫| 藍眼知識學院| 藍眼科技集團'),
(236, '國小需要補習英文嗎？ - BabyHome親子討論區', 'https://forum.babyhome.com.tw/topic/4066019', '國小需要補習英文嗎？ - BabyHome親子討論區'),
(237, '私人補習、上門補習導師推介- HKTUTOR.HK', 'http://www.hktutor.hk/', '私人補習、上門補習導師推介- HKTUTOR.HK'),
(238, '[PDF]\n小學生是否需要上補習班6B 羅健聰近年，補習班如同雨後春筍般的出現 ...', 'http://www.htsps.edu.hk/it-school/php/webcms/files/upload/tinymce//05_student/studentwork/chiwork/stud29_1451282771.pdf', '[PDF]\n小學生是否需要上補習班6B 羅健聰近年，補習班如同雨後春筍般的出現 ...'),
(239, 'Sky-Tutor 上門補習介紹中心,為全港中小學生免費介紹補習,音樂,語文 ...', 'https://www.sky-tutor.com/', 'Sky-Tutor 上門補習介紹中心,為全港中小學生免費介紹補習,音樂,語文 ...'),
(240, '教育部：7成小學生補習，每年花601億元- 中時電子報', 'http://www.chinatimes.com/realtimenews/20161228005542-260405', '教育部：7成小學生補習，每年花601億元- 中時電子報'),
(241, '擦亮眼睛看教育 - Google 圖書結果', 'https://books.google.com.tw/books?id=6dYzDwAAQBAJ&pg=PT143&lpg=PT143&dq=%E5%B0%8F%E5%AD%B8%E7%94%9F+%E8%A3%9C%E7%BF%92&source=bl&ots=ccQ7-0stDN&sig=V26woz9LY3xnem58YZnuyvNhLJ0&hl=zh-TW&sa=X&ved=0ahUKEwiTuufsytjZAhUMjJQKHdJsBaY4HhDoAQg7MAM', '擦亮眼睛看教育 - Google 圖書結果'),
(242, '小學英語太簡單浪費黃金時間2017-03-31 - 徐薇英文', 'http://www.ruby.com.tw/about_inside.php?n_id=77', '小學英語太簡單浪費黃金時間2017-03-31 - 徐薇英文'),
(243, '你幫孩子挑對合適的英文補習班了嗎? @ Douze Academy :: 痞客邦 ...', 'http://douze.pixnet.net/blog/post/448659611-%E4%BD%A0%E5%B9%AB%E5%AD%A9%E5%AD%90%E6%8C%91%E5%B0%8D%E5%90%88%E9%81%A9%E7%9A%84%E8%8B%B1%E6%96%87%E8%A3%9C%E7%BF%92%E7%8F%AD%E4%BA%86%E5%97%8E%3F', '你幫孩子挑對合適的英文補習班了嗎? @ Douze Academy :: 痞客邦 ...'),
(244, '補習作文【共55篇】,關於補習的作文 - 白雲飄飄網', 'http://big5.baiyunpiaopiao.com/special/73426vz.shtml', '補習作文【共55篇】,關於補習的作文 - 白雲飄飄網'),
(245, '創作天地- 論學生應否上補習班 - 香港教育城', 'https://www.hkedcity.net/eworks/zh-hant/detail?work_id=599d0de7d65ee1613c3c986b', '創作天地- 論學生應否上補習班 - 香港教育城'),
(246, '21歲科技大學女補習Miss上門補習與15歲學生發生性關係! - Q博士', 'https://www.pixpo.net/post459906', '21歲科技大學女補習Miss上門補習與15歲學生發生性關係! - Q博士'),
(247, '#小學生補習• Instagram photos and videos', 'https://www.instagram.com/explore/tags/%E5%B0%8F%E5%AD%B8%E7%94%9F%E8%A3%9C%E7%BF%92/', '#小學生補習• Instagram photos and videos'),
(248, '創思補習中心-提供導師上門補習服務', 'http://www.tutor-centre.com/tutorlist.php?page=6&keyword=', '創思補習中心-提供導師上門補習服務'),
(249, '百度知道搜索_辩论小学生该不该上课外补习班', 'http://zidao.baidu.com/search?word=%B1%E7%C2%DB%20%D0%A1%D1%A7%C9%FA%B8%C3%B2%BB%B8%C3%C9%CF%BF%CE%CD%E2%B2%B9%CF%B0%B0%E0&ie=gbk&pn=0&rn=10&fr=qrl&cid=197', '百度知道搜索_辩论小学生该不该上课外补习班'),
(250, '接住孩子的青春變化球: 建中名師的親子甜蜜溝通24招', 'https://books.google.com.tw/books?id=qcaaAAAAQBAJ&pg=PA201&lpg=PA201&dq=%E5%B0%8F%E5%AD%B8%E7%94%9F+%E8%A3%9C%E7%BF%92&source=bl&ots=tHG7G0aano&sig=cIRr4ykxNPNBenMnf8kijwrUD8M&hl=zh-TW&sa=X&ved=0ahUKEwjOk6DuytjZAhXFnZQKHYEYBqo4KBDoAQg3MAI', '接住孩子的青春變化球: 建中名師的親子甜蜜溝通24招'),
(251, '[PDF]\n學科補習之動態變化對學習成就族群落差的影響：以屏東縣小學生為例', 'http://journal.naer.edu.tw/periodical_download.asp?DID=vol047_02', '[PDF]\n學科補習之動態變化對學習成就族群落差的影響：以屏東縣小學生為例'),
(252, '調查稱北京有小學生暑期最多上七個補習班| JGospel.Net', 'http://jgospel.net/world-view/china/%E8%AA%BF%E6%9F%A5%E7%A8%B1%E5%8C%97%E4%BA%AC%E6%9C%89%E5%B0%8F%E5%AD%B8%E7%94%9F%E6%9A%91%E6%9C%9F%E6%9C%80%E5%A4%9A%E4%B8%8A%E4%B8%83%E5%80%8B%E8%A3%9C%E7%BF%92%E7%8F%AD.c72709.aspx', '調查稱北京有小學生暑期最多上七個補習班| JGospel.Net'),
(253, '中國中小學生的“補習”暑假- FT中文網', 'http://big5.ftchinese.com/story/001062882', '中國中小學生的“補習”暑假- FT中文網'),
(254, '私立經典文理美語短期補習班＜公司簡介及所有工作機會＞ 104人力銀行', 'https://www.104.com.tw/jobbank/custjob/index.php?r=cust&j=4676482e5c3c455c3738406942343e2204e404a7364624427272727253f312c2b826j54', '私立經典文理美語短期補習班＜公司簡介及所有工作機會＞ 104人力銀行'),
(255, '68%受訪高小學生有補習- 東方日報', 'http://orientaldaily.on.cc/cnt/news/20151214/00176_037.html', '68%受訪高小學生有補習- 東方日報'),
(256, '我們的服務 - 香港義工補習社', 'http://hkvtutor.org/page.php?p=ourServices', '我們的服務 - 香港義工補習社'),
(257, '當補習才藝凌駕了學校課業.... @ 家在婆娑美麗處:小熊部落:: 痞客邦 ...', 'http://constancec1.pixnet.net/blog/post/29804245-%E7%95%B6%E8%A3%9C%E7%BF%92%E6%89%8D%E8%97%9D%E5%87%8C%E9%A7%95%E4%BA%86%E5%AD%B8%E6%A0%A1%E8%AA%B2%E6%A5%AD....', '當補習才藝凌駕了學校課業.... @ 家在婆娑美麗處:小熊部落:: 痞客邦 ...'),
(258, '小學生補習袋圖片 - 阿里巴巴商務搜索', 'http://tw.1688.com/pic/-D0A1D1A7C9FAB2B9CFB0B4FC.html', '小學生補習袋圖片 - 阿里巴巴商務搜索'),
(259, '【投書】這個教改的時代，難道我的孩子得為了考私中變成補習機器 ...', 'https://opinion.cw.com.tw/blog/profile/52/article/5438', '【投書】這個教改的時代，難道我的孩子得為了考私中變成補習機器 ...'),
(260, '上海小學生補習古文| 大紀元', 'http://www.epochtimes.com/b5/tag/%E4%B8%8A%E6%B5%B7%E5%B0%8F%E5%AD%B8%E7%94%9F%E8%A3%9C%E7%BF%92%E5%8F%A4%E6%96%87.html', '上海小學生補習古文| 大紀元'),
(261, '小熊媽的無國界創意教養 - Google 圖書結果', 'https://books.google.com.tw/books?id=FUi0DQAAQBAJ&pg=PT125&lpg=PT125&dq=%E5%B0%8F%E5%AD%B8%E7%94%9F+%E8%A3%9C%E7%BF%92&source=bl&ots=TDezmFiCHf&sig=CgduyE-B65iI1zdjQ1Oda3d9YX4&hl=zh-TW&sa=X&ved=0ahUKEwiTptrvytjZAhWHI5QKHaNrD_84MhDoAQg5MAM', '小熊媽的無國界創意教養 - Google 圖書結果'),
(262, '花園街，舊日子: - 第 152 頁 - Google 圖書結果', 'https://books.google.com.tw/books?id=gBTIAgAAQBAJ&pg=PA152&lpg=PA152&dq=%E5%B0%8F%E5%AD%B8%E7%94%9F+%E8%A3%9C%E7%BF%92&source=bl&ots=2cOPgsjJzD&sig=mw5DLTpgSx2esAlvaLAlRFr9xCM&hl=zh-TW&sa=X&ved=0ahUKEwiTptrvytjZAhWHI5QKHaNrD_84MhDoAQg-MAQ', '花園街，舊日子: - 第 152 頁 - Google 圖書結果'),
(263, '談「補習」的好與壞（視傳）＠沈寂，也是一種聲音｜PChome 個人新聞台', 'http://mypaper.pchome.com.tw/isabellew/post/1289723594', '談「補習」的好與壞（視傳）＠沈寂，也是一種聲音｜PChome 個人新聞台'),
(264, '小學生暑假忙補習逾一成家長為子女同時報5個興趣班｜香港01｜港聞｜', 'https://www.hk01.com/%E6%B8%AF%E8%81%9E/107027/%E5%B0%8F%E5%AD%B8%E7%94%9F%E6%9A%91%E5%81%87%E5%BF%99%E8%A3%9C%E7%BF%92-%E9%80%BE%E4%B8%80%E6%88%90%E5%AE%B6%E9%95%B7%E7%82%BA%E5%AD%90%E5%A5%B3%E5%90%8C%E6%99%82%E5%A0%B15%E5%80%8B%E8%88%88%E8%B6%A3%E7%8F%AD', '小學生暑假忙補習逾一成家長為子女同時報5個興趣班｜香港01｜港聞｜'),
(265, '補習工作| Part Time Jobs - 兼職網', 'http://www.parttime.hk/%E8%A3%9C%E7%BF%92-jobs.aspx', '補習工作| Part Time Jobs - 兼職網'),
(266, '搵私補，搵TutorDuck，得咗！ | 精英導師列表', 'https://www.tutorduck.co/blog', '搵私補，搵TutorDuck，得咗！ | 精英導師列表'),
(267, '荃灣、深水埗補習社- 小學$48、初中$58', 'https://www.panztutor.com/', '荃灣、深水埗補習社- 小學$48、初中$58'),
(268, '補習告示板: 私人補習老師你直接致電，無上門補習介紹中心', 'http://www.tutorboard.com.hk/', '補習告示板: 私人補習老師你直接致電，無上門補習介紹中心'),
(269, '快樂瑪麗全美語補習班、全美語幼兒園、雙語補習班、雙語幼兒園安加盟 ...', 'http://www.happymarian.com/', '快樂瑪麗全美語補習班、全美語幼兒園、雙語補習班、雙語幼兒園安加盟 ...'),
(270, '幼小補習參考價大學生幫小一學生溫書要幾錢？ - 香港經濟日報- TOPick ...', 'https://topick.hket.com/article/1658022/%E5%B9%BC%E5%B0%8F%E8%A3%9C%E7%BF%92%E5%8F%83%E8%80%83%E5%83%B9%20%20%20%20%E5%A4%A7%E5%AD%B8%E7%94%9F%E5%B9%AB%E5%B0%8F%E4%B8%80%E5%AD%B8%E7%94%9F%E6%BA%AB%E6%9B%B8%E8%A6%81%E5%B9%BE%E9%8C%A2%EF%BC%9F', '幼小補習參考價大學生幫小一學生溫書要幾錢？ - 香港經濟日報- TOPick ...'),
(271, 'DSEC - 2009/2010學年教育調查', 'http://www.dsec.gov.mo/Statistic/Social/EducationSurvey/EducationSurvey2010Y.aspx', 'DSEC - 2009/2010學年教育調查'),
(272, '補習通~TUTOR-TONE~私人補習介紹服務~PRIVATE TUTORIAL', 'http://www.tutor-tone.com/', '補習通~TUTOR-TONE~私人補習介紹服務~PRIVATE TUTORIAL'),
(273, '維也納小學上課無椅計劃', 'http://www.taipei.at/culture/system/20090818.htm', '維也納小學上課無椅計劃'),
(274, '小學生補習壓力不容忽視– 教得喜', 'http://teachlike.hk/2017/10/27/%E5%B0%8F%E5%AD%B8%E7%94%9F%E8%A3%9C%E7%BF%92%E5%A3%93%E5%8A%9B%E4%B8%8D%E5%AE%B9%E5%BF%BD%E8%A6%96/', '小學生補習壓力不容忽視– 教得喜'),
(275, '上門補習-私人補習介紹-Uni-Tutor.com', 'http://www.uni-tutor.com/', '上門補習-私人補習介紹-Uni-Tutor.com'),
(276, '【教學網誌042號】辯論：申論「小學生應該要補習」 – 天行者的異度', 'http://grc.hhups.tp.edu.tw/skywalker/?p=58', '【教學網誌042號】辯論：申論「小學生應該要補習」 – 天行者的異度'),
(277, '[PDF]\n港生每週平均學習時數高於「打工仔」工時 - 香港研究協會', 'http://www.rahk.org/research/1162/1162newsX.pdf', '[PDF]\n港生每週平均學習時數高於「打工仔」工時 - 香港研究協會'),
(278, '香港學童餘暇生活調查2014 | 香港教育專業人員協會', 'https://www.hkptu.org/19605', '香港學童餘暇生活調查2014 | 香港教育專業人員協會'),
(279, '韓國孩子若沒上補習班，表示父母嚴重失職？ | Readmoo閱讀最前線', 'https://news.readmoo.com/2017/04/18/korean-culture/', '韓國孩子若沒上補習班，表示父母嚴重失職？ | Readmoo閱讀最前線'),
(280, '該不該補習？ | 補習| 缺點| 好處| 台灣大紀元', 'https://www.epochtimes.com.tw/n81187/%E8%A9%B2%E4%B8%8D%E8%A9%B2%E8%A3%9C%E7%BF%92-.html', '該不該補習？ | 補習| 缺點| 好處| 台灣大紀元'),
(281, '東京都的小學生～補習班情況和吃飯與睡眠～ /Japan | The World\'s ...', 'https://wm-salon.com/zh-TW/primary_school_-children_tokyo_cramschool_food_sleep/', '東京都的小學生～補習班情況和吃飯與睡眠～ /Japan | The World\'s ...'),
(282, '點評中國：上海教育第一的真相- BBC 中文网 - BBC.com', 'http://www.bbc.com/zhongwen/trad/focus_on_china/2014/01/140120_cr_pisa_shanghai_education', '點評中國：上海教育第一的真相- BBC 中文网 - BBC.com'),
(283, '香港小学生狂补习弄巧成拙专家吁勿迷信补习班-新华网 - 新华社', 'http://www.xinhuanet.com/gangao/2015-07/07/c_127988889.htm', '香港小学生狂补习弄巧成拙专家吁勿迷信补习班-新华网 - 新华社'),
(284, '國際學校家長必看：美國小學生都上啥補習班- 壹讀', 'https://read01.com/QdLNQO.html', '國際學校家長必看：美國小學生都上啥補習班- 壹讀'),
(285, '請勿錯過孩子的英文學習黃金時間... - 敦煌CET', 'http://www.cavesbooks.com.tw/CET/clk/Clk.aspx?CDE=ART20150121105933U79', '請勿錯過孩子的英文學習黃金時間... - 敦煌CET'),
(286, '想幫小學生補習(頁1) - 子女教育- 香港討論區(純文字版本)', 'http://www.discuss.com.hk/archiver/?tid-23081873.html', '想幫小學生補習(頁1) - 子女教育- 香港討論區(純文字版本)'),
(287, '【補習小學篇】功課奇談：「5」字弧度不夠彎要改正| Oh!爸媽- Ohpama ...', 'http://www.ohpama.com/193557/primaryschool/%E8%A3%9C%E7%BF%92%E5%B0%8F%E5%AD%B8%E7%AF%87-%E5%8A%9F%E8%AA%B2%E5%A5%87%E8%AB%87-5%E5%AD%97%E5%BC%A7%E5%BA%A6%E4%B8%8D%E5%A4%A0%E5%BD%8E/', '【補習小學篇】功課奇談：「5」字弧度不夠彎要改正| Oh!爸媽- Ohpama ...'),
(288, '討論：要是小學沒有先補英文以後真的會跟不上嗎? | | ~小瓏英語書院 ...', 'http://www.xiaolongeng.com/%E8%A8%8E%E8%AB%96%EF%BC%9A%E8%A6%81%E6%98%AF%E5%B0%8F%E5%AD%B8%E6%B2%92%E6%9C%89%E5%85%88%E8%A3%9C%E8%8B%B1%E6%96%87%E4%BB%A5%E5%BE%8C%E7%9C%9F%E7%9A%84%E6%9C%83%E8%B7%9F%E4%B8%8D%E4%B8%8A%E5%97%8E/', '討論：要是小學沒有先補英文以後真的會跟不上嗎? | | ~小瓏英語書院 ...'),
(289, '[PDF]\n補習在臺灣的變遷、效能與階層化 - Taiwan Education Panel Survey', 'http://www.teps.sinica.edu.tw/report/diversified_enrollment_schem-final.pdf', '[PDF]\n補習在臺灣的變遷、效能與階層化 - Taiwan Education Panel Survey'),
(290, '[PDF]\n澳門補習班/督課班與關聯服務的現況及影響研究 - 教菁社區', 'http://portal.dsej.gov.mo/webdsejspace/addon/upload/Upload_viewfile_page.jsp?id=6520&sid=&', '[PDF]\n澳門補習班/督課班與關聯服務的現況及影響研究 - 教菁社區'),
(291, '澳洲的小學和我對補習的看法@ 千山萬水，千里迢迢，要帶著孩子環遊 ...', 'http://sunnymoonoz.pixnet.net/blog/post/184437093-%E6%BE%B3%E6%B4%B2%E7%9A%84%E5%B0%8F%E5%AD%B8%E5%92%8C%E6%88%91%E5%B0%8D%E8%A3%9C%E7%BF%92%E7%9A%84%E7%9C%8B%E6%B3%95', '澳洲的小學和我對補習的看法@ 千山萬水，千里迢迢，要帶著孩子環遊 ...'),
(292, '[PDF]\n小學生補習現象 - 青年研究中心 - 香港青年協會', 'https://yrc.hkfyg.org.hk/wp-content/uploads/sites/56/2017/12/2013%E5%B9%B403%E6%9C%8828%E6%97%A5-%E9%A6%99%E6%B8%AF%E4%B8%AD%E3%80%81%E5%B0%8F%E5%AD%B8%E7%94%9F%E8%A3%9C%E7%BF%92%E7%8F%BE%E8%B1%A1.pdf', '[PDF]\n小學生補習現象 - 青年研究中心 - 香港青年協會'),
(293, '[求教]第一次幫小學生補習唔太知點做好- 香港高登討論區', 'https://forum.hkgolden.com/view.aspx?message=4833341&page=2', '[求教]第一次幫小學生補習唔太知點做好- 香港高登討論區'),
(294, '美国小学生都上啥补习班你一定想不到_中国国际教育网', 'http://school.ieduchina.com/child/201702/21608.html', '美国小学生都上啥补习班你一定想不到_中国国际教育网'),
(295, '補弱還是補強---我們家不補習@ Anita的筆記本:: 痞客邦PIXNET ::', 'http://anita511.pixnet.net/blog/post/357530714-%E8%A3%9C%E5%BC%B1-%E9%82%84%E6%98%AF-%E8%A3%9C%E5%BC%B7---%E6%88%91%E5%80%91%E5%AE%B6%E4%B8%8D%E8%A3%9C%E7%BF%92-', '補弱還是補強---我們家不補習@ Anita的筆記本:: 痞客邦PIXNET ::'),
(296, '小學生忙趕場放學後補美課程- 英語相關新聞- 英語新聞/電子報-', 'http://www.english.com.tw/modules/news/article.php?storyid=956', '小學生忙趕場放學後補美課程- 英語相關新聞- 英語新聞/電子報-'),
(297, '活動導航——小學（補習班） - 教育雲Education Cloud', 'https://www.education.cloudmacau.com/parents/parents_detail.php?id=912', '活動導航——小學（補習班） - 教育雲Education Cloud'),
(298, '【討論】現在的小學生補英文數學對國中的幫助如何?-奇蜜家庭討論區-信誼 ...', 'http://bbs.kimy.com.tw/forumTopic_new.asp?topicID=301332&offset=30&allReply=y', '【討論】現在的小學生補英文數學對國中的幫助如何?-奇蜜家庭討論區-信誼 ...'),
(299, '報告析中小學生減負：課外補習時間「領跑全球」 - 雪花新聞', 'https://www.xuehua.us/2018/03/02/%E6%8A%A5%E5%91%8A%E6%9E%90%E4%B8%AD%E5%B0%8F%E5%AD%A6%E7%94%9F%E5%87%8F%E8%B4%9F%EF%BC%9A%E8%AF%BE%E5%A4%96%E8%A1%A5%E4%B9%A0%E6%97%B6%E9%97%B4%E9%A2%86%E8%B7%91%E5%85%A8%E7%90%83/zh-tw/', '報告析中小學生減負：課外補習時間「領跑全球」 - 雪花新聞'),
(300, '家長一定要邁過中小學生“補習”這道“坎” - 滴滴頭條', 'https://ddnews.me/world/fgms51sn.html', '家長一定要邁過中小學生“補習”這道“坎” - 滴滴頭條'),
(301, '中大文學院學生，精於文科，歡迎中小學生補習。 - OpenClass', 'https://openclass.hk/job/149-%E4%B8%AD%E5%A4%A7%E6%96%87%E5%AD%B8%E9%99%A2%E5%AD%B8%E7%94%9F%EF%BC%8C%E7%B2%BE%E6%96%BC%E6%96%87%E7%A7%91%EF%BC%8C%E6%AD%A1%E8%BF%8E%E4%B8%AD%E5%B0%8F%E5%AD%B8%E7%94%9F%E8%A3%9C%E7%BF%92%E3%80%82', '中大文學院學生，精於文科，歡迎中小學生補習。 - OpenClass'),
(302, '香港導師會: 兼職上門私人補習老師介紹| 上門補習導師推介服務機構', 'https://www.hkta.edu.hk/', '香港導師會: 兼職上門私人補習老師介紹| 上門補習導師推介服務機構'),
(303, '[PDF]\n二零一五年香港青年統計資料概覽數據趨勢分析 - 青年事務委員會', 'http://www.coy.gov.hk/filemanager/template/common/images/archive/research/YTA_2015_All_Chapters.pdf', '[PDF]\n二零一五年香港青年統計資料概覽數據趨勢分析 - 青年事務委員會'),
(304, '小學生補習手提單肩帆布書袋| 蝦皮拍賣', 'https://shopee.tw/%E5%B0%8F%E5%AD%B8%E7%94%9F%E8%A3%9C%E7%BF%92%E6%89%8B%E6%8F%90%E5%96%AE%E8%82%A9%E5%B8%86%E5%B8%83%E6%9B%B8%E8%A2%8B-i.2023565.136536038', '小學生補習手提單肩帆布書袋| 蝦皮拍賣'),
(305, '【桥头】正品迪士尼冰雪奇緣公主女童斜挎包小學生補習袋公主飯盒手提 ...', 'https://shopee.tw/%E3%80%90%E6%A1%A5%E5%A4%B4%E3%80%91%E6%AD%A3%E5%93%81%E8%BF%AA%E5%A3%AB%E5%B0%BC%E5%86%B0%E9%9B%AA%E5%A5%87%E7%B7%A3%E5%85%AC%E4%B8%BB%E5%A5%B3%E7%AB%A5%E6%96%9C%E6%8C%8E%E5%8C%85%E5%B0%8F%E5%AD%B8%E7%94%9F%E8%A3%9C%E7%BF%92%E8%A2%8B%E5%85%AC%E4%B8%BB%E9%A3%AF%E7%9B%92%E6%89%8B%E6%8F%90%E5%8C%85%E8%A2%8B-i.33387236.624830245', '【桥头】正品迪士尼冰雪奇緣公主女童斜挎包小學生補習袋公主飯盒手提 ...'),
(306, '招募長期義務老師教小學生補習係堅道明愛- 義工情報- 教育王國', 'https://www.edu-kingdom.com/forum.php?mod=viewthread&tid=3035020', '招募長期義務老師教小學生補習係堅道明愛- 義工情報- 教育王國'),
(307, '小學生補習包手提袋男童雙肩旅遊包女兒童補課書包迷彩單肩斜挎包 ...', 'http://goods.ruten.com.tw/item/show?21805665493908', '小學生補習包手提袋男童雙肩旅遊包女兒童補課書包迷彩單肩斜挎包 ...'),
(308, '有關 小學生 學習外語 的學術文章', 'http://scholar.google.com.tw/scholar?q=%E5%B0%8F%E5%AD%B8%E7%94%9F+%E5%AD%B8%E7%BF%92%E5%A4%96%E8%AA%9E&hl=zh-TW&as_sdt=0&as_vis=1&oi=scholart&sa=X&ved=0ahUKEwitxO6fy9jZAhVDH5QKHd8TCAUQgQMIKDAA', '有關 小學生 學習外語 的學術文章'),
(309, '歐盟小學生82％入學時即學習外語| 草根影響力新視野', 'http://grinews.com/news/%E6%AD%90%E7%9B%9F%E5%B0%8F%E5%AD%B8%E7%94%9F82%EF%BC%85%E5%85%A5%E5%AD%B8%E6%99%82%E5%8D%B3%E5%AD%B8%E7%BF%92%E5%A4%96%E8%AA%9E/', '歐盟小學生82％入學時即學習外語| 草根影響力新視野'),
(310, '教育部電子報_德國小學較歐盟其他國家更晚開始外語教育', 'https://epaper.edu.tw/windows.aspx?windows_sn=17890', '教育部電子報_德國小學較歐盟其他國家更晚開始外語教育'),
(311, '教育部電子報_﻿歐盟小學生學外語比例超過8成', 'https://epaper.edu.tw/windows.aspx?windows_sn=17483', '教育部電子報_﻿歐盟小學生學外語比例超過8成'),
(312, '歐盟小學生學外語比例超過8成｜教育｜教育趨勢｜2015-10-21｜即時 ...', 'https://www.cw.com.tw/article/article.action?id=5071732', '歐盟小學生學外語比例超過8成｜教育｜教育趨勢｜2015-10-21｜即時 ...'),
(313, '愈早學英文真的愈好？｜教育｜教育趨勢｜2011-04-19｜天下雜誌第 ...', 'https://www.cw.com.tw/article/article.action?id=5010969', '愈早學英文真的愈好？｜教育｜教育趨勢｜2011-04-19｜天下雜誌第 ...'),
(314, '[PDF]\n國民小學實施英語教學的困境與因應對策 - 國家教育研究院', 'https://www.naer.edu.tw/ezfiles/0/1000/attach/14/pta_875_8492003_30203.pdf', '[PDF]\n國民小學實施英語教學的困境與因應對策 - 國家教育研究院'),
(315, '荷蘭小學外語教學落後歐洲平均水平| 大紀元', 'http://www.epochtimes.com/b5/15/10/4/n4542733.htm', '荷蘭小學外語教學落後歐洲平均水平| 大紀元'),
(316, '專家指導：孩子從何時起學外語效果最好? - 英語相關新聞- 英語新聞/電子 ...', 'http://www.english.com.tw/modules/news/article.php?storyid=5884', '專家指導：孩子從何時起學外語效果最好? - 英語相關新聞- 英語新聞/電子 ...'),
(317, '台師大3D語言島虛擬世界學外語- YouTube', 'https://www.youtube.com/watch?v=oLNtksKZ1VQ', '台師大3D語言島虛擬世界學外語- YouTube');
INSERT INTO `references_for_search` (`references_id`, `title`, `link`, `memo`) VALUES
(318, '[PDF]\n國小外語學習 - LTTC 財團法人語言訓練測驗中心 - 國立臺灣大學', 'https://www.lttc.ntu.edu.tw/Journal/vol03/%E8%AA%9E%E8%A8%80%E4%B9%8B%E9%81%93No.3_%E3%80%90%E4%BA%BA%E7%89%A9%E5%B0%88%E8%A8%AA%E3%80%91%E5%9C%8B%E9%9A%9B%E5%8C%96%E6%BD%AE%E6%B5%81%E4%B8%8B%E7%9A%84%E5%9C%8B%E5%B0%8F%E5%A4%96%E8%AA%9E%E5%AD%B8%E7%BF%92%E2%94%80%E5%B0%88%E8%A8%AA%E6%95%99%E8%82%B2%E9%83%A8%E5%9C%8B%E6%B0%91%E5%8F%8A%E5%AD%B8%E5%89%8D%E6%95%99%E8%82%B2%E7%BD%B2%E7%BD%B2%E9%95%B7%E5%90%B3%E6%B8%85%E5%B1%B1.pdf', '[PDF]\n國小外語學習 - LTTC 財團法人語言訓練測驗中心 - 國立臺灣大學'),
(319, '英語啟蒙學習早利弊互見– 世新大學新聞系重點學門成果', 'http://shunews.shu.edu.tw/keys/2017/12/29/%E8%8B%B1%E8%AA%9E%E5%95%9F%E8%92%99%E5%AD%B8%E7%BF%92%E6%97%A9-%E6%95%99%E8%82%B2%E7%8F%BE%E6%B3%81%E6%9C%AA%E5%AE%9A%E8%AA%BF/', '英語啟蒙學習早利弊互見– 世新大學新聞系重點學門成果'),
(320, '學英語可以改變你的人生嗎？ ⋅ TEDxTaipei', 'http://tedxtaipei.com/articles/jay-walker-on-the-world-s-english-mania/', '學英語可以改變你的人生嗎？ ⋅ TEDxTaipei'),
(321, '提前学习外语的优缺点_百度知道', 'http://zhidao.baidu.com/question/28368283.html', '提前学习外语的优缺点_百度知道'),
(322, '孩子有沒有必要學習第二、第三外語？ - 每日頭條', 'https://kknews.cc/zh-tw/education/895gkaq.html', '孩子有沒有必要學習第二、第三外語？ - 每日頭條'),
(323, '英語教學法 - 第 310 頁 - Google 圖書結果', 'https://books.google.com.tw/books?id=c42JhEuHeCAC&pg=PA310&lpg=PA310&dq=%E5%B0%8F%E5%AD%B8%E7%94%9F+%E5%AD%B8%E7%BF%92%E5%A4%96%E8%AA%9E&source=bl&ots=e2latHr3Z3&sig=60_n1q0EkHnriZwARULvVeffad8&hl=zh-TW&sa=X&ved=0ahUKEwiSgbShy9jZAhWFHZQKHRtaBKE4ChDoAQhCMAQ', '英語教學法 - 第 310 頁 - Google 圖書結果'),
(324, '漢語成為美國中小學第四大外語課程 - 中評社', 'http://hk.crntt.com/doc/7_0_104701332_1.html', '漢語成為美國中小學第四大外語課程 - 中評社'),
(325, '小学英语 - 英孚教育', 'http://www.ef.com.cn/englishfirst/englishstudy/xiaoxue.aspx', '小学英语 - 英孚教育'),
(326, 'Cool English - 歐盟公布中小學外語教學概況報告【駐歐盟兼駐比利時 ...', 'https://www.facebook.com/coolenglsih/posts/1268580969935347', 'Cool English - 歐盟公布中小學外語教學概況報告【駐歐盟兼駐比利時 ...'),
(327, '教師甄試:教育政策關鍵報告: - 第 70 頁 - Google 圖書結果', 'https://books.google.com.tw/books?id=axoTULcf1F0C&pg=PA70&lpg=PA70&dq=%E5%B0%8F%E5%AD%B8%E7%94%9F+%E5%AD%B8%E7%BF%92%E5%A4%96%E8%AA%9E&source=bl&ots=YUNAuaJbcN&sig=aM10LOs2O1KhQ_-zMmjsP0_BPFQ&hl=zh-TW&sa=X&ved=0ahUKEwiSgbShy9jZAhWFHZQKHRtaBKE4ChDoAQhYMAg', '教師甄試:教育政策關鍵報告: - 第 70 頁 - Google 圖書結果'),
(328, '學習外語。肖像自信的少年女學生站在黑板字打招呼寫在不同的外語 ...', 'https://tw.123rf.com/photo_31661632_%E5%AD%B8%E7%BF%92%E5%A4%96%E8%AA%9E%E3%80%82%E8%82%96%E5%83%8F%E8%87%AA%E4%BF%A1%E7%9A%84%E5%B0%91%E5%B9%B4%E5%A5%B3%E5%AD%B8%E7%94%9F%E7%AB%99%E5%9C%A8%E9%BB%91%E6%9D%BF%E5%AD%97%E6%89%93%E6%8B%9B%E5%91%BC%E5%AF%AB%E5%9C%A8%E4%B8%8D%E5%90%8C%E7%9A%84%E5%A4%96%E8%AA%9E%E3%80%82%E6%95%99%E8%82%B2%E7%90%86%E5%BF%B5%EF%BC%8C%E5%9C%8B%E9%9A%9B%E4%BA%A4%E6%B5%81.html', '學習外語。肖像自信的少年女學生站在黑板字打招呼寫在不同的外語 ...'),
(329, '教育行政革新 - Google 圖書結果', 'https://books.google.com.tw/books?id=F8xDDwAAQBAJ&pg=PT63&lpg=PT63&dq=%E5%B0%8F%E5%AD%B8%E7%94%9F+%E5%AD%B8%E7%BF%92%E5%A4%96%E8%AA%9E&source=bl&ots=7skFoH08av&sig=igymCZ6ww36RWG1q4HVOfM-uRFM&hl=zh-TW&sa=X&ved=0ahUKEwiw9Ouiy9jZAhWBE5QKHX7tDck4FBDoAQgpMAA', '教育行政革新 - Google 圖書結果'),
(330, '成功家長.小學分冊（高）: - Google 圖書結果', 'https://books.google.com.tw/books?id=qALKDQAAQBAJ&pg=PT123&lpg=PT123&dq=%E5%B0%8F%E5%AD%B8%E7%94%9F+%E5%AD%B8%E7%BF%92%E5%A4%96%E8%AA%9E&source=bl&ots=IcjJEOvdbz&sig=xwQ8h7DDRUq3ii22hTFYOL9_GCA&hl=zh-TW&sa=X&ved=0ahUKEwiw9Ouiy9jZAhWBE5QKHX7tDck4FBDoAQgtMAE', '成功家長.小學分冊（高）: - Google 圖書結果'),
(331, '小學生學習新概念？方法很重要- 壹讀', 'https://read01.com/zh-tw/PM44L4.html', '小學生學習新概念？方法很重要- 壹讀'),
(332, '英語要好，先閱讀後文法/小學生-學習/親子天下', 'https://www.parenting.com.tw/article/5065470-%E8%8B%B1%E8%AA%9E%E8%A6%81%E5%A5%BD%EF%BC%8C%E5%85%88%E9%96%B1%E8%AE%80%E5%BE%8C%E6%96%87%E6%B3%95/', '英語要好，先閱讀後文法/小學生-學習/親子天下'),
(333, '財團法人瑪利亞社會福利基金會郵政劃撥帳號 - 2018小學生公益行動競賽', 'http://www.merrymama.org.tw/act_detail.php?ID=225', '財團法人瑪利亞社會福利基金會郵政劃撥帳號 - 2018小學生公益行動競賽'),
(334, '新課程小學英語教學理論與實踐（簡體書）-黎茂昌、潘景麗- 三民網路書店', 'http://sanmin.com.tw/product/index/002013690', '新課程小學英語教學理論與實踐（簡體書）-黎茂昌、潘景麗- 三民網路書店'),
(335, '跳到主要內容 Toggle navigation Menu 國中課程 國小課程 免費註冊 ...', 'https://www.coolenglish.edu.tw/moodle/about_us.php', '跳到主要內容 Toggle navigation Menu 國中課程 國小課程 免費註冊 ...'),
(336, '汉语可能将列入英国小学必修课- BBC 中文网', 'http://www.bbc.com/zhongwen/trad/uk/2012/06/120610_uk_children_study', '汉语可能将列入英国小学必修课- BBC 中文网'),
(337, '俄罗斯人学习何种外语，为什么？ | 透视俄罗斯| 俄罗斯新闻', 'http://tsrus.cn/wenhua/2014/12/29/38605.html', '俄罗斯人学习何种外语，为什么？ | 透视俄罗斯| 俄罗斯新闻'),
(338, 'K.K.音標與自然發音', 'http://www.cavesbooks.com.tw/Webpage/Topic/9206Topic/topic_1/index.htm', 'K.K.音標與自然發音'),
(339, '外國教授自學英文經驗談：學英文最好的方法就是不要「學」英文- The ...', 'https://www.thenewslens.com/article/1243', '外國教授自學英文經驗談：學英文最好的方法就是不要「學」英文- The ...'),
(340, '外語師資不足美國中小學生僅少數學習外語– 駐波士頓臺北經濟文化辦事 ...', 'http://www.moebos.org/2017/08/29/%E5%A4%96%E8%AA%9E%E5%B8%AB%E8%B3%87%E4%B8%8D%E8%B6%B3%E3%80%80%E7%BE%8E%E5%9C%8B%E4%B8%AD%E5%B0%8F%E5%AD%B8%E7%94%9F%E5%83%85%E5%B0%91%E6%95%B8%E5%AD%B8%E7%BF%92%E5%A4%96%E8%AA%9E/', '外語師資不足美國中小學生僅少數學習外語– 駐波士頓臺北經濟文化辦事 ...'),
(341, '木桶理論應用於國中生英語學習成效之行動研究', 'http://www.nhu.edu.tw/~society/e-j/105/a09.htm', '木桶理論應用於國中生英語學習成效之行動研究'),
(342, '小升初英语：小学生学习外语效率提高技巧- 小学一对一- 牛耳教育--桂林 ...', 'http://www.niuerfd.com/index.php?aid=1682', '小升初英语：小学生学习外语效率提高技巧- 小学一对一- 牛耳教育--桂林 ...'),
(343, '自學網站| 外語自學中心', 'http://s212.lc.stust.edu.tw/tc/node/05', '自學網站| 外語自學中心'),
(344, '實驗報告', 'http://weber.tn.edu.tw/eng/report.htm', '實驗報告'),
(345, '汉语成为美国中小学第四大外语课程_新闻频道_中华网', 'http://news.china.com/news100/11038989/20170602/30631127.html', '汉语成为美国中小学第四大外语课程_新闻频道_中华网'),
(346, '[DOC]\n全美語的迷思—幼兒外語學習時機與方式 - 台中教育大學', 'http://www.ntcu.edu.tw/chaoli/03_materials/01_CP/WK9/%E5%85%A8%E7%BE%8E%E8%AA%9E%E7%9A%84%E8%BF%B7%E6%80%9D%E2%80%94%E5%B9%BC%E5%85%92%E5%A4%96%E8%AA%9E%E5%AD%B8%E7%BF%92%E6%99%82%E6%A9%9F%E8%88%87%E6%96%B9%E5%BC%8F.doc', '[DOC]\n全美語的迷思—幼兒外語學習時機與方式 - 台中教育大學'),
(347, '[PDF]\n從比較文化談台灣英語學習的文化衝突', 'http://ir.lib.nchu.edu.tw/bitstream/11455/74845/1/17278562-201006-201008110069-201008110069-267-288.pdf', '[PDF]\n從比較文化談台灣英語學習的文化衝突'),
(348, '[DOC]\n東亞各地英語啟蒙教育實施情況之比較研究 - 國立臺灣師範大學教職員工 ...', 'http://web.cc.ntnu.edu.tw/~ting/publications/Ting%20(2003)%20English%20of%20Japen%20and%20Korea.doc', '[DOC]\n東亞各地英語啟蒙教育實施情況之比較研究 - 國立臺灣師範大學教職員工 ...'),
(349, '[PDF]\n從比較文化談台灣英語學習的文化衝突', 'http://ir.lib.nchu.edu.tw/bitstream/11455/74845/1/17278562-201006-201008110069-201008110069-267-288.pdf', '[PDF]\n從比較文化談台灣英語學習的文化衝突'),
(350, '[DOC]\n東亞各地英語啟蒙教育實施情況之比較研究 - 國立臺灣師範大學教職員工 ...', 'http://web.cc.ntnu.edu.tw/~ting/publications/Ting%20(2003)%20English%20of%20Japen%20and%20Korea.doc', '[DOC]\n東亞各地英語啟蒙教育實施情況之比較研究 - 國立臺灣師範大學教職員工 ...'),
(351, '[PDF]\n學業韌性、師生互動、英語學習焦慮與學習成效之關連性研究-以高雄市國 ...', 'http://dba.kuas.edu.tw/download.php?filename=1777_19972efd.pdf&dir=archive&title=34.%E5%AD%B8%E6%A5%AD%E9%9F%8C%E6%80%A7%E3%80%81%E5%B8%AB%E7%94%9F%E4%BA%92%E5%8B%95%E3%80%81%E8%8B%B1%E8%AA%9E%E5%AD%B8%E7%BF%92%E7%84%A6%E6%85%AE%E8%88%87%E5%AD%B8%E7%BF%92%E6%88%90%E6%95%88%E4%B9%8B%E9%97%9C%E9%80%A3%E6%80%A7%E7%A0%94%E7%A9%B6-%E4%BB%A5%E9%AB%98%E9%9B%84%E5%B8%82%E5%9C%8B%E5%B0%8F%E9%AB%98%E5%B9%B4%E7%B4%9A%E5%AD%B8%E7%AB%A5%E7%82%BA%E4%BE%8B.pdf', '[PDF]\n學業韌性、師生互動、英語學習焦慮與學習成效之關連性研究-以高雄市國 ...'),
(352, '國小瘋雙語教學恐造就雙語庸才？學者看法大不同| 觀點評論| 文教| 聯合 ...', 'https://udn.com/news/story/6887/2784965', '國小瘋雙語教學恐造就雙語庸才？學者看法大不同| 觀點評論| 文教| 聯合 ...'),
(353, '在線英語學習-QQEnglish-兒童英語-成人英語-外教一對一-網上學英語 ...', 'http://www.qqenglish.com.tw/', '在線英語學習-QQEnglish-兒童英語-成人英語-外教一對一-網上學英語 ...'),
(354, '[PDF]\n國際學伴串起連結～開啟國中小學子結交外籍友人之契機！', 'http://www.k12ea.gov.tw/files/epaper_ext/ac0a4c54-684e-4cd8-8b33-b755767e1d8e/doc/%E5%9C%8B%E9%9A%9B%E5%AD%B8%E4%BC%B4%20%E4%B8%B2%E8%B5%B7%E9%80%A3%E7%B5%90%EF%BD%9E%E9%96%8B%E5%95%9F%E5%9C%8B%E4%B8%AD%E5%B0%8F%E5%AD%B8%E5%AD%90%E7%B5%90%E4%BA%A4%E5%A4%96%E7%B1%8D%E5%8F%8B%E4%BA%BA%E4%B9%8B%E5%A5%91%E6%A9%9F%EF%BC%81.pdf', '[PDF]\n國際學伴串起連結～開啟國中小學子結交外籍友人之契機！'),
(355, '「歐盟」學生在鳳林 - 高雄市政府教育局全球資訊網-新聞稿', 'http://www.kh.edu.tw/publicInfo/bureauReport/20160151', '「歐盟」學生在鳳林 - 高雄市政府教育局全球資訊網-新聞稿'),
(356, '學習英文的六個正確態度 - HiTutor', 'http://www.hitutor.com.tw/learn-english-13.php', '學習英文的六個正確態度 - HiTutor'),
(357, '2014年起中文成英國小學必修課ACTFL LTI 國際語言測驗 ... - 迴音谷外語', 'http://echoabc.com.tw/actfl/2013/british-elemtary/', '2014年起中文成英國小學必修課ACTFL LTI 國際語言測驗 ... - 迴音谷外語'),
(358, '學外語比別人快10倍！ 「聽故事」提升高階讀寫能力| ETtoday生活 ...', 'https://www.ettoday.net/news/20170322/888829.htm', '學外語比別人快10倍！ 「聽故事」提升高階讀寫能力| ETtoday生活 ...'),
(359, '[PDF]\nPage 1 N SY S U 國立中山大學師資培育中心 實習輔導刊物 2008 S ...', 'http://e50.nsysu.edu.tw/ezfiles/127/1127/img/2923/212500915.pdf', '[PDF]\nPage 1 N SY S U 國立中山大學師資培育中心 實習輔導刊物 2008 S ...'),
(360, '十二年國教新制上路教育學者：國小英語學習恐現斷層- 中時電子報', 'http://www.chinatimes.com/realtimenews/20170804003490-260405', '十二年國教新制上路教育學者：國小英語學習恐現斷層- 中時電子報'),
(361, '[PDF]\n英語學習動機與學習困擾:理論的觀點 - 臺灣教育評論學會', 'http://www.ater.org.tw/%E6%95%99%E8%A9%95%E6%9C%88%E5%88%8A/%E8%87%BA%E8%A9%95%E6%9C%88%E5%88%8A%E7%AC%AC%E4%BA%94%E5%8D%B7%E7%AC%AC%E4%B8%83%E6%9C%9F%E7%B6%B2%E8%B7%AF%E5%85%AC%E5%91%8A%E7%89%88/%E5%B0%88%E8%AB%96/%E5%B0%88%E8%AB%96001.%20%E6%96%BD%E5%AE%A5%E5%BB%B7_%E8%8B%B1%E8%AA%9E%E5%AD%B8%E7%BF%92%E5%8B%95%E6%A9%9F%E8%88%87%E5%AD%B8%E7%BF%92%E5%9B%B0%E6%93%BE%EF%BC%9A%E7%90%86%E8%AB%96%E7%9A%84%E8%A7%80%E9%BB%9E.pdf', '[PDF]\n英語學習動機與學習困擾:理論的觀點 - 臺灣教育評論學會'),
(362, '[PPT]\n華語文教材教法與教材編寫ppt', 'http://www.isu.edu.tw/upload/263/6/01.ppt', '[PPT]\n華語文教材教法與教材編寫ppt'),
(363, '國際學伴串起連結～開啟國中小學子結交外籍友人之契機！ - 教育部', 'https://www.edu.tw/News_Content.aspx?n=9E7AC85F1954DDA8&s=B3C541F1F45FA8EB', '國際學伴串起連結～開啟國中小學子結交外籍友人之契機！ - 教育部'),
(364, 'GEPT Kids 小學英檢網', 'https://www.geptkids.org.tw/', 'GEPT Kids 小學英檢網'),
(365, '當前台灣小學英語教學之我見＠Jonathan 的英語教學網｜PChome 個人 ...', 'http://mypaper.pchome.com.tw/etjtes/post/1321518690/', '當前台灣小學英語教學之我見＠Jonathan 的英語教學網｜PChome 個人 ...'),
(366, '社區服務與英語智能 - 國立成功大學- 課程地圖', 'http://course-query.acad.ncku.edu.tw/crm/course_map/course.php?dept=A9&cono=A92E200', '社區服務與英語智能 - 國立成功大學- 課程地圖'),
(367, '學習外語的七大誤區@ starken :: 痞客邦PIXNET ::', 'http://starken.pixnet.net/blog/post/38087955-%E5%AD%B8%E7%BF%92%E5%A4%96%E8%AA%9E%E7%9A%84%E4%B8%83%E5%A4%A7%E8%AA%A4%E5%8D%80', '學習外語的七大誤區@ starken :: 痞客邦PIXNET ::'),
(368, '修訂過程及特色 - 九年一貫課程與教學網', 'http://teach.eje.edu.tw/9CC/brief/brief7.php', '修訂過程及特色 - 九年一貫課程與教學網'),
(369, '修訂過程及特色 - 九年一貫課程與教學網', 'http://teach.eje.edu.tw/9CC/brief/brief7.php', '修訂過程及特色 - 九年一貫課程與教學網'),
(370, '汉语成为美国中小学第四大外语课程--国际--人民网 - 人民网-国际频道', 'http://world.people.com.cn/n1/2017/0602/c1002-29314767.html', '汉语成为美国中小学第四大外语课程--国际--人民网 - 人民网-国际频道'),
(371, '[PDF]\n也談推行中葡雙語教育 - 澳門特別行政區行政公職局', 'http://www.safp.gov.mo/safptc/download/WCM_002893', '[PDF]\n也談推行中葡雙語教育 - 澳門特別行政區行政公職局'),
(372, '外語學習法 - 博客來', 'http://www.books.com.tw/web/sys_bbotm/books/170508', '外語學習法 - 博客來'),
(373, '告訴你外語學習的真實方法及誤區分析& 貓大叔的筆記本- aglaia1tw ...', 'https://aglaia1tw.tian.yam.com/posts/38295264', '告訴你外語學習的真實方法及誤區分析& 貓大叔的筆記本- aglaia1tw ...'),
(374, '[PDF]\n能力語境 - EDB', 'http://www.edb.gov.hk/attachment/tc/edu-system/primary-secondary/applicable-to-secondary/moi/koo.pdf', '[PDF]\n能力語境 - EDB'),
(375, '兒童學英文- VoiceTube《看影片學英語》', 'https://tw.voicetube.com/channel/kids', '兒童學英文- VoiceTube《看影片學英語》'),
(376, '全球化時代英語的未來| TOEIC OK News 多益情報站', 'http://www.toeicok.com.tw/%E5%85%A8%E7%90%83%E5%8C%96%E6%99%82%E4%BB%A3%E8%8B%B1%E8%AA%9E%E7%9A%84%E6%9C%AA%E4%BE%86/', '全球化時代英語的未來| TOEIC OK News 多益情報站'),
(377, '幼兒該不該提早學英語？ @ 幸福蟹居:: 痞客邦PIXNET ::', 'http://marieli518.pixnet.net/blog/post/29210253-%E5%B9%BC%E5%85%92%E8%A9%B2%E4%B8%8D%E8%A9%B2%E6%8F%90%E6%97%A9%E5%AD%B8%E8%8B%B1%E8%AA%9E%EF%BC%9F', '幼兒該不該提早學英語？ @ 幸福蟹居:: 痞客邦PIXNET ::'),
(378, '孩子六歲前到底該不該學外語- 媽咪學堂', 'http://www.mmready.com/content/290950.html', '孩子六歲前到底該不該學外語- 媽咪學堂'),
(379, '深度解析：中国小学生英语学习出路在何方|家长|孩子|学英语_新浪教育_ ...', 'http://edu.sina.com.cn/kids/2017-09-26/doc-ifymesii5813085.shtml', '深度解析：中国小学生英语学习出路在何方|家长|孩子|学英语_新浪教育_ ...'),
(380, '大葉大學外語學院', 'http://fl.dyu.edu.tw/zh-TW/chinese/cooperation.html', '大葉大學外語學院'),
(381, '不只大學國際化教育更要深入小學／專訪桃園市教育局長高安邦| | GEAT ...', 'http://www.geat.org.tw/english-career/53/%E4%B8%8D%E5%8F%AA%E5%A4%A7%E5%AD%B8-%E5%9C%8B%E9%9A%9B%E5%8C%96%E6%95%99%E8%82%B2%E6%9B%B4%E8%A6%81%E6%B7%B1%E5%85%A5%E5%B0%8F%E5%AD%B8%EF%BC%8F%E5%B0%88%E8%A8%AA%E6%A1%83%E5%9C%92%E5%B8%82%E6%95%99', '不只大學國際化教育更要深入小學／專訪桃園市教育局長高安邦| | GEAT ...'),
(382, '[PDF]\n全球化下的臺灣英文教育 - 國立臺灣科技大學應用外語學系', 'http://www.afl.ntust.edu.tw/files/writing_journal/82/173_45534a10.pdf', '[PDF]\n全球化下的臺灣英文教育 - 國立臺灣科技大學應用外語學系'),
(383, '美國人學中文：美國人學中文已成為主要語言之一@ Judy的學習充電站 ...', 'http://blog.xuite.net/chihlee8182/wretch/138226931-%E7%BE%8E%E5%9C%8B%E4%BA%BA%E5%AD%B8%E4%B8%AD%E6%96%87%EF%BC%9A%E7%BE%8E%E5%9C%8B%E4%BA%BA%E5%AD%B8%E4%B8%AD%E6%96%87%E5%B7%B2%E6%88%90%E7%82%BA%E4%B8%BB%E8%A6%81%E8%AA%9E%E8%A8%80%E4%B9%8B%E4%B8%80', '美國人學中文：美國人學中文已成為主要語言之一@ Judy的學習充電站 ...'),
(384, '討論：要是小學沒有先補英文以後真的會跟不上嗎? | | ~小瓏英語書院 ...', 'http://www.xiaolongeng.com/%E8%A8%8E%E8%AB%96%EF%BC%9A%E8%A6%81%E6%98%AF%E5%B0%8F%E5%AD%B8%E6%B2%92%E6%9C%89%E5%85%88%E8%A3%9C%E8%8B%B1%E6%96%87%E4%BB%A5%E5%BE%8C%E7%9C%9F%E7%9A%84%E6%9C%83%E8%B7%9F%E4%B8%8D%E4%B8%8A%E5%97%8E/', '討論：要是小學沒有先補英文以後真的會跟不上嗎? | | ~小瓏英語書院 ...'),
(385, '要升上國中了，該如何有效的銜接中小學的英語學習呢？ - 康軒學習雜誌', 'https://www.top945.com.tw/celebrity_Data.asp?ID=88', '要升上國中了，該如何有效的銜接中小學的英語學習呢？ - 康軒學習雜誌'),
(386, '孩子学外语越早越好？看中外幼儿教师怎么说 - China Daily', 'http://www.chinadaily.com.cn/interface/toutiao/1138561/2015-7-1/cd_21144610.html', '孩子学外语越早越好？看中外幼儿教师怎么说 - China Daily'),
(387, 'Ivy 外語學習之旅- 補充篇- BabyHome親子討論區', 'https://forum.babyhome.com.tw/topic/3954975', 'Ivy 外語學習之旅- 補充篇- BabyHome親子討論區'),
(388, '日本人具有「英語恐懼症」 日經中文網', 'https://zh.cn.nikkei.com/columnviewpoint/tearoom/13068-20150209.html', '日本人具有「英語恐懼症」 日經中文網'),
(389, '北美智權報第101期：台灣英語水平低落都是教育部害的!', 'http://www.naipo.com/Portals/1/web_tw/Knowledge_Center/Editorial/publish-141.htm', '北美智權報第101期：台灣英語水平低落都是教育部害的!'),
(390, '本系106年度「學海築夢：美國小學英語教學實習計畫」成果分享- 國立清華 ...', 'http://doei.web.nthu.edu.tw/files/14-1975-126730,r4-1.php?Lang=zh-tw', '本系106年度「學海築夢：美國小學英語教學實習計畫」成果分享- 國立清華 ...'),
(391, '学英语是否有必要从小学抓起？ | 问答| 问答| 果壳网科技有意思', 'https://www.guokr.com/question/500348/', '学英语是否有必要从小学抓起？ | 问答| 问答| 果壳网科技有意思'),
(392, '[PDF]\n合作學習教學法對高三學生英語閱讀理解及態度之效益研究 - 嘉義大學', 'http://www.ncyu.edu.tw/files/site_content/giee/9.pdf', '[PDF]\n合作學習教學法對高三學生英語閱讀理解及態度之效益研究 - 嘉義大學'),
(393, '佳音英語世界雜誌 Joy English,兒童美語,英文月刊', 'http://jo.joy.com.tw/action/magazine/Action_JoytotheWorld.php', '佳音英語世界雜誌 Joy English,兒童美語,英文月刊'),
(394, '[PDF]\n全肢體反應教學法對國小身心障礙學生功能性英語詞彙學習成效之研究', 'http://www.sped.nutn.edu.tw/upload/journal/prog/15-3.pdf', '[PDF]\n全肢體反應教學法對國小身心障礙學生功能性英語詞彙學習成效之研究'),
(395, 'Super教師的英語課：培養小小國際公民｜黃毓珍 - TutorABC', 'http://blog.tutorabc.com/blog/super%E6%95%99%E5%B8%AB%E7%9A%84%E8%8B%B1%E8%AA%9E%E8%AA%B2%EF%BC%9A%E5%9F%B9%E9%A4%8A%E5%B0%8F%E5%B0%8F%E5%9C%8B%E9%9A%9B%E5%85%AC%E6%B0%91%EF%BD%9C%E9%BB%83%E6%AF%93%E7%8F%8D/', 'Super教師的英語課：培養小小國際公民｜黃毓珍 - TutorABC'),
(396, '國小學童英語學習動機 - 臺灣博碩士論文知識加值系統 - 國家圖書館', 'https://ndltd.ncl.edu.tw/r/76681898054308735865', '國小學童英語學習動機 - 臺灣博碩士論文知識加值系統 - 國家圖書館'),
(397, '蘋果執行長庫克：學程式語言比學英語重要| 魯皓平| 遠見雜誌', 'https://www.gvm.com.tw/article.html?id=40477', '蘋果執行長庫克：學程式語言比學英語重要| 魯皓平| 遠見雜誌'),
(398, 'Duolingo 多鄰國讓學生的英語學習一開始就上手 - 宜蘭縣國教輔導團', 'http://blog.ilc.edu.tw/blog/index.php?op=printView&articleId=642538&blogId=5798', 'Duolingo 多鄰國讓學生的英語學習一開始就上手 - 宜蘭縣國教輔導團'),
(399, '英語不宜取代母語- 升學天地', 'https://www.schooland.hk/post/ee10', '英語不宜取代母語- 升學天地'),
(400, '英語教學網站 - 台北市教育入口網', 'http://home.lsjh.tp.edu.tw/middle/relatedwebsite/teachingwebsite.htm', '英語教學網站 - 台北市教育入口網'),
(401, '英語學習網站推薦', 'http://www.yces.chc.edu.tw/english/engweb001.htm', '英語學習網站推薦'),
(402, '[PDF]\n多媒體融入英語口說暨寫作之教學研究壹、 前言 - 新竹縣教育研究發展暨 ...', 'https://eb1.hcc.edu.tw/edu/data/page/20170411152243779.pdf', '[PDF]\n多媒體融入英語口說暨寫作之教學研究壹、 前言 - 新竹縣教育研究發展暨 ...'),
(403, '師德文教(股)公司- 師資訓練、檢定認證、英語資訊、英語人才資料庫 ...', 'http://www.cet-taiwan.com/drcet/detail.asp?serno=810', '師德文教(股)公司- 師資訓練、檢定認證、英語資訊、英語人才資料庫 ...'),
(404, '香港學生要學多少英文才好？ | 鄭楚雄| 灼見名家', 'http://www.master-insight.com/%E9%A6%99%E6%B8%AF%E5%AD%B8%E7%94%9F%E8%A6%81%E5%AD%B8%E5%A4%9A%E5%B0%91%E8%8B%B1%E6%96%87%E6%89%8D%E5%A5%BD%EF%BC%9F/', '香港學生要學多少英文才好？ | 鄭楚雄| 灼見名家'),
(405, '[教.養]英語學習年齡的迷思@ 樂學園:: 痞客邦PIXNET ::', 'http://yenging.pixnet.net/blog/post/21834619-%5B%E6%95%99.%E9%A4%8A%5D%E8%8B%B1%E8%AA%9E%E5%AD%B8%E7%BF%92%E5%B9%B4%E9%BD%A1%E7%9A%84%E8%BF%B7%E6%80%9D', '[教.養]英語學習年齡的迷思@ 樂學園:: 痞客邦PIXNET ::'),
(406, '為學前、幼兒及小學學生提供的英語學習小貼士| British Council', 'https://www.britishcouncil.hk/english/why-study/learning-tips/pre-school-kindergarten-primary', '為學前、幼兒及小學學生提供的英語學習小貼士| British Council'),
(407, '母語好外語才會好！(3y8m) @ A House—暮らしの熊本:: 痞客邦PIXNET ::', 'http://xsign.pixnet.net/blog/post/26446575-%E6%AF%8D%E8%AA%9E%E5%A5%BD%E5%A4%96%E8%AA%9E%E6%89%8D%E6%9C%83%E5%A5%BD%EF%BC%81%283y8m%29', '母語好外語才會好！(3y8m) @ A House—暮らしの熊本:: 痞客邦PIXNET ::'),
(408, '[PDF]\n造成國小學童英語學習成就城鄉差距之因果機制 - 學位論文上傳系統', 'http://paperupload.nttu.edu.tw/download.php?sn=3076', '[PDF]\n造成國小學童英語學習成就城鄉差距之因果機制 - 學位論文上傳系統'),
(409, '禁止孩子談戀愛呂秋遠：家長先想想這些事| 蘋果日報', 'https://tw.appledaily.com/new/realtime/20170411/1095322/', '禁止孩子談戀愛呂秋遠：家長先想想這些事| 蘋果日報'),
(410, '教孩子好好戀愛、好好分手/中學生-人際關係/親子天下', 'https://www.parenting.com.tw/article/5019922-%E6%95%99%E5%AD%A9%E5%AD%90%E5%A5%BD%E5%A5%BD%E6%88%80%E6%84%9B%E3%80%81%E5%A5%BD%E5%A5%BD%E5%88%86%E6%89%8B/', '教孩子好好戀愛、好好分手/中學生-人際關係/親子天下'),
(411, '孩子談戀愛， 爸媽是敵人還是朋友@ 大家健康部落格:: 痞客邦PIXNET ::', 'http://jtfhealth.pixnet.net/blog/post/32002895-%E5%AD%A9%E5%AD%90%E8%AB%87%E6%88%80%E6%84%9B%EF%BC%8C-%E7%88%B8%E5%AA%BD%E6%98%AF%E6%95%B5%E4%BA%BA%E9%82%84%E6%98%AF%E6%9C%8B%E5%8F%8B', '孩子談戀愛， 爸媽是敵人還是朋友@ 大家健康部落格:: 痞客邦PIXNET ::'),
(412, '你的小小孩談戀愛了嗎? | 育兒新知Babynews | in媽咪', 'http://babynews.in-mommy.com/2013/09/mykidfalleninlove.html', '你的小小孩談戀愛了嗎? | 育兒新知Babynews | in媽咪'),
(413, '孩子談戀愛，爸媽是敵人還是朋友 - 大家健康雜誌', 'https://www.jtf.org.tw/health/Show.asp?This=1335', '孩子談戀愛，爸媽是敵人還是朋友 - 大家健康雜誌'),
(414, '跟小孩子問這15個「戀愛大事」，他們的答案比大人還要有智慧！ - CMoney', 'https://www.cmoney.tw/notes/note-detail.aspx?nid=16966', '跟小孩子問這15個「戀愛大事」，他們的答案比大人還要有智慧！ - CMoney'),
(415, '孩子談戀愛爸媽如何不擔心！ - 康健雜誌113期', 'http://www.commonhealth.com.tw/article/article.action?nid=63227', '孩子談戀愛爸媽如何不擔心！ - 康健雜誌113期'),
(416, '孩子國中談戀愛，該干涉嗎？呂秋遠：想想你自己的15歲 TVBS新聞網', 'https://news.tvbs.com.tw/ttalk/detail/love/6350', '孩子國中談戀愛，該干涉嗎？呂秋遠：想想你自己的15歲 TVBS新聞網'),
(417, '談戀愛為何總偷偷摸摸？ 其實孩子是對父母這件事反感！ | ETtoday親子 ...', 'https://www.ettoday.net/news/20170603/935490.htm', '談戀愛為何總偷偷摸摸？ 其實孩子是對父母這件事反感！ | ETtoday親子 ...'),
(418, '孩子戀愛了，我卻很難欣賞他戀愛的對象？-未來Family', 'https://gfamily.cwgv.com.tw/content/index/6542', '孩子戀愛了，我卻很難欣賞他戀愛的對象？-未來Family'),
(419, '當幼兒園孩子談「戀愛」時，他們到底在談什麼？ - 每日頭條', 'https://kknews.cc/zh-tw/baby/92az6xl.html', '當幼兒園孩子談「戀愛」時，他們到底在談什麼？ - 每日頭條'),
(420, '孩子談戀愛，家長心要「大」。 - 每日頭條', 'https://kknews.cc/zh-tw/psychology/bxklz5m.html', '孩子談戀愛，家長心要「大」。 - 每日頭條'),
(421, '談戀愛對自己負責不怕父母反對- 中時電子報', 'http://campus.chinatimes.com/20160819004044-262307', '談戀愛對自己負責不怕父母反對- 中時電子報'),
(422, '教孩子好好戀愛、好好分手｜健康關係｜兩性關係｜2017-12-14｜親子 ...', 'https://www.cw.com.tw/article/article.action?id=5086854', '教孩子好好戀愛、好好分手｜健康關係｜兩性關係｜2017-12-14｜親子 ...'),
(423, '孩子開始談戀愛了，該禁止嗎？跟孩子談「戀愛」的3堂入門課-教育｜親子 ...', 'http://www.storm.mg/lifestyle/66693', '孩子開始談戀愛了，該禁止嗎？跟孩子談「戀愛」的3堂入門課-教育｜親子 ...'),
(424, '〈徵文大拼盤〉孩子談戀愛如何是好- 副刊- 自由時報電子報', 'http://news.ltn.com.tw/news/supplement/paper/962825', '〈徵文大拼盤〉孩子談戀愛如何是好- 副刊- 自由時報電子報'),
(425, '[PDF]\n子女戀愛篇-孩子談戀愛父母怎麼辦?', 'http://www.wufai.edu.tw/%E8%BC%94%E5%B0%8E%E5%AE%A4%E7%B6%B2%E9%A0%81/%E8%A6%AA%E8%81%B7%E6%95%99%E8%82%B2/data/%E5%AD%90%E5%A5%B3%E6%88%80%E6%84%9B%E7%AF%87.pdf', '[PDF]\n子女戀愛篇-孩子談戀愛父母怎麼辦?'),
(426, '小孩談戀愛怎麼辦 - 「爸媽頭很痛」小孩談戀愛怎麼辦@ 深夜遇見心理師 ...', 'http://counseloran.pixnet.net/blog/post/333370876-%E3%80%8C%E7%88%B8%E5%AA%BD%E9%A0%AD%E5%BE%88%E7%97%9B%E3%80%8D%E5%B0%8F%E5%AD%A9%E8%AB%87%E6%88%80%E6%84%9B%E6%80%8E%E9%BA%BC%E8%BE%A6', '小孩談戀愛怎麼辦 - 「爸媽頭很痛」小孩談戀愛怎麼辦@ 深夜遇見心理師 ...'),
(427, '我的孩子戀愛了—關於「青少年感情世界」的一次對話（張純玲）', 'http://parented.tripod.com/sex/980602.htm', '我的孩子戀愛了—關於「青少年感情世界」的一次對話（張純玲）'),
(428, '孩子談戀愛，父母怎麼辦？', 'http://www.beone.tw/index.php/2017-01-05-07-28-44/2017-01-05-09-39-14/15-2017-01-05-09-17-50', '孩子談戀愛，父母怎麼辦？'),
(429, '真愛談戀愛×真愛橋- 這...現在小孩...長大還得了啊？... - Facebook', 'https://www.facebook.com/ichangego/videos/1079688915478104/', '真愛談戀愛×真愛橋- 這...現在小孩...長大還得了啊？... - Facebook'),
(430, '有小孩後，記得找回戀愛時的甜蜜– 媽媽經｜專屬於媽媽的網站', 'https://mamaclub.com/learn/%E6%9C%89%E5%B0%8F%E5%AD%A9%E5%BE%8C%EF%BC%8C%E8%A8%98%E5%BE%97%E6%89%BE%E5%9B%9E%E6%88%80%E6%84%9B%E6%99%82%E7%9A%84%E7%94%9C%E8%9C%9C/', '有小孩後，記得找回戀愛時的甜蜜– 媽媽經｜專屬於媽媽的網站'),
(431, '【隨筆】孩子可以自由戀愛嗎? @ 葉淇淇。愛分享，寫親子，聊心情，玩導購 ...', 'http://yoyokiki.pixnet.net/blog/post/43342219-%E3%80%90%E9%9A%A8%E7%AD%86%E3%80%91%E5%AD%A9%E5%AD%90%E5%8F%AF%E4%BB%A5%E8%87%AA%E7%94%B1%E6%88%80%E6%84%9B%E5%97%8E%3F', '【隨筆】孩子可以自由戀愛嗎? @ 葉淇淇。愛分享，寫親子，聊心情，玩導購 ...'),
(432, '女兒小六談戀愛??有沒有爸媽有經驗的? - BabyHome親子討論區', 'https://forum.babyhome.com.tw/topic/4260616', '女兒小六談戀愛??有沒有爸媽有經驗的? - BabyHome親子討論區'),
(433, '與地球認真談戀愛地球才能永遠愛小孩，上人文化《科學環保圖畫12書 ...', 'https://info.babyhome.com.tw/article/15017', '與地球認真談戀愛地球才能永遠愛小孩，上人文化《科學環保圖畫12書 ...'),
(434, '幼兒教育大不同！德國小孩開始兩歲談戀愛父母完全不擔心| 生活| 三立 ...', 'http://www.setn.com/News.aspx?NewsID=221443', '幼兒教育大不同！德國小孩開始兩歲談戀愛父母完全不擔心| 生活| 三立 ...'),
(435, '小孩談戀愛@ 苑子老師的部落格:: 痞客邦PIXNET ::', 'http://yuansan.pixnet.net/blog/post/310686129-%E5%B0%8F%E5%AD%A9%E8%AB%87%E6%88%80%E6%84%9B', '小孩談戀愛@ 苑子老師的部落格:: 痞客邦PIXNET ::'),
(436, '一陣戀愛你不聽（小孩剪貼詩） | SOSreader', 'https://sosreader.com/n/old/article/24178', '一陣戀愛你不聽（小孩剪貼詩） | SOSreader'),
(437, '談戀愛就變了個人？ - 如何照顧戀愛中的內在小孩- 失戀花園', 'https://inbound.tw/product/%E8%AB%87%E6%88%80%E6%84%9B%E5%B0%B1%E8%AE%8A%E4%BA%86%E5%80%8B%E4%BA%BA%E5%A6%82%E4%BD%95%E7%85%A7%E9%A1%A7%E6%88%80%E6%84%9B%E4%B8%AD%E7%9A%84%E5%85%A7%E5%9C%A8%E5%B0%8F%E5%AD%A9/', '談戀愛就變了個人？ - 如何照顧戀愛中的內在小孩- 失戀花園'),
(438, '50個不思議戀愛心理測驗 - 第 24 頁 - Google 圖書結果', 'https://books.google.com.tw/books?id=6WTjBgAAQBAJ&pg=PA24&lpg=PA24&dq=%E5%B0%8F%E5%AD%A9+%E6%88%80%E6%84%9B&source=bl&ots=oBqRejmOoP&sig=OiWumpFELYcGmI33AH8zH8No4Hs&hl=zh-TW&sa=X&ved=0ahUKEwjEkL3Xy9jZAhVJupQKHdXHD8g4HhDoAQgpMAA', '50個不思議戀愛心理測驗 - 第 24 頁 - Google 圖書結果'),
(439, '老人和小孩恋爱叫什么名字_百度知道', 'https://zhidao.baidu.com/question/692463092901259204.html', '老人和小孩恋爱叫什么名字_百度知道'),
(440, '禁止談戀愛就可以了嗎？ - 生命不落國--生命因付出而有愛- udn部落格', 'http://blog.udn.com/lifeeducaiton/5179233', '禁止談戀愛就可以了嗎？ - 生命不落國--生命因付出而有愛- udn部落格'),
(441, '談戀愛跟愛小孩原來是一樣的@ 母雞帶小雞:: 隨意窩Xuite日誌', 'http://blog.xuite.net/glanny/myblog/25527698-%E8%AB%87%E6%88%80%E6%84%9B%E8%B7%9F%E6%84%9B%E5%B0%8F%E5%AD%A9%E5%8E%9F%E4%BE%86%E6%98%AF%E4%B8%80%E6%A8%A3%E7%9A%84', '談戀愛跟愛小孩原來是一樣的@ 母雞帶小雞:: 隨意窩Xuite日誌'),
(442, '談戀愛的人就像小孩子一樣..... - 痞客邦PIXNET', 'http://yuan19740421.pixnet.net/blog/post/79160157-%E8%AB%87%E6%88%80%E6%84%9B%E7%9A%84%E4%BA%BA%E5%B0%B1%E5%83%8F%E5%B0%8F%E5%AD%A9%E5%AD%90%E4%B8%80%E6%A8%A3.....', '談戀愛的人就像小孩子一樣..... - 痞客邦PIXNET'),
(443, '戀愛中，你被寵成了小孩，他卻累成了狗- Q博士', 'https://www.pixpo.net/love/0INbxYRC.html', '戀愛中，你被寵成了小孩，他卻累成了狗- Q博士'),
(444, '不當乖小孩不行嗎?:一定要建立的正確價值觀', 'https://books.google.com.tw/books?id=HI9GDwAAQBAJ&pg=PA144&lpg=PA144&dq=%E5%B0%8F%E5%AD%A9+%E6%88%80%E6%84%9B&source=bl&ots=ME-PtmWHeo&sig=o0t527-L8NT70ye_nBmD6V2Mqcg&hl=zh-TW&sa=X&ved=0ahUKEwjEkL3Xy9jZAhVJupQKHdXHD8g4HhDoAQhIMAY', '不當乖小孩不行嗎?:一定要建立的正確價值觀'),
(445, '一戀愛心智就像三歲小孩的星座女- COCOHK', 'http://www.cocohk.cc/post/644816?r=redred', '一戀愛心智就像三歲小孩的星座女- COCOHK'),
(446, '小孩早熟談戀愛父母怎面對？ | 媽媽育兒百科', 'https://mombaby.tw/article9322.html', '小孩早熟談戀愛父母怎面對？ | 媽媽育兒百科'),
(447, '99年的小孩问我：你会谈恋爱吗？不会我教你_中华头条_中华网', 'http://toutiao.china.com/qgsy/gundong/13000139/20171205/31766076_all.html', '99年的小孩问我：你会谈恋爱吗？不会我教你_中华头条_中华网'),
(448, '兒少戀愛ING?! - 兒童福利聯盟', 'https://www.children.org.tw/news/advocacy_detail/891', '兒少戀愛ING?! - 兒童福利聯盟'),
(449, '田馥甄Hebe老實說：「我覺得女生都需要戀愛！」 | Marie Claire 美麗佳人', 'https://www.marieclaire.com.tw/celebrity/story/23407/', '田馥甄Hebe老實說：「我覺得女生都需要戀愛！」 | Marie Claire 美麗佳人'),
(450, '南方都市报：当幼儿园孩子谈“恋爱”时，他们到底在谈什么？', 'http://m.mp.oeeee.com/a/BAAFRD00002017021527169.html', '南方都市报：当幼儿园孩子谈“恋爱”时，他们到底在谈什么？'),
(451, '小孩眼中的「戀愛大事」 童言童語逗樂你- 發現新鮮事', 'http://www.espialnews.com/index.php/2017/12/14/%E5%B0%8F%E5%AD%A9%E7%9C%BC%E4%B8%AD%E7%9A%84%E3%80%8C%E6%88%80%E6%84%9B%E5%A4%A7%E4%BA%8B%E3%80%8D-%E7%AB%A5%E8%A8%80%E7%AB%A5%E8%AA%9E%E9%80%97%E6%A8%82%E4%BD%A0/', '小孩眼中的「戀愛大事」 童言童語逗樂你- 發現新鮮事'),
(452, '【小孩大開講！他們早就想的跟大人不一樣！！】20160718 綜藝大熱門 ...', 'https://www.youtube.com/watch?v=kPTSHjgsT_c', '【小孩大開講！他們早就想的跟大人不一樣！！】20160718 綜藝大熱門 ...'),
(453, '父母不願意面對的真相！我的小孩戀愛了！？2013年4月5日節目預告 ...', 'https://www.babyou.com/opencms/channel5/Babyou013472.html', '父母不願意面對的真相！我的小孩戀愛了！？2013年4月5日節目預告 ...'),
(454, '見習探員Queen | #11 欺負人的小孩和戀愛事件| sanpachi | comico全彩 ...', 'http://www.comico.com.tw/11/11/', '見習探員Queen | #11 欺負人的小孩和戀愛事件| sanpachi | comico全彩 ...'),
(455, '(轉載)教孩子好好戀愛、好好分手@ 文苑老師的部落格:: 痞客邦PIXNET ::', 'http://mandymimi.pixnet.net/blog/post/35918897-%28%E8%BD%89%E8%BC%89%29%E6%95%99%E5%AD%A9%E5%AD%90%E5%A5%BD%E5%A5%BD%E6%88%80%E6%84%9B%E3%80%81%E5%A5%BD%E5%A5%BD%E5%88%86%E6%89%8B', '(轉載)教孩子好好戀愛、好好分手@ 文苑老師的部落格:: 痞客邦PIXNET ::'),
(456, '14歲小孩戀愛17歲生孩這樣的後果又是什麼- 壹讀', 'https://read01.com/myEAno.html', '14歲小孩戀愛17歲生孩這樣的後果又是什麼- 壹讀'),
(457, '如果男朋友只谈恋爱不想结婚生孩子怎么办？ - 知乎', 'https://www.zhihu.com/question/27274700', '如果男朋友只谈恋爱不想结婚生孩子怎么办？ - 知乎'),
(458, '為甚麼父母不讓小孩談戀愛? - 小蕃薯- 超欠揍猜謎', 'http://kids.yam.com/riddle/riddle.php?aid=516686&sid=0', '為甚麼父母不讓小孩談戀愛? - 小蕃薯- 超欠揍猜謎'),
(459, '唐立淇：父母如何察覺12星座小孩的戀愛徵兆？ - Lady M。拼經濟事務所', 'http://cigna.pixnet.net/blog/post/26809139-%E5%94%90%E7%AB%8B%E6%B7%87%EF%BC%9A%E7%88%B6%E6%AF%8D%E5%A6%82%E4%BD%95%E5%AF%9F%E8%A6%BA12%E6%98%9F%E5%BA%A7%E5%B0%8F%E5%AD%A9%E7%9A%84%E6%88%80%E6%84%9B%E5%BE%B5%E5%85%86', '唐立淇：父母如何察覺12星座小孩的戀愛徵兆？ - Lady M。拼經濟事務所'),
(460, '爸媽囧很大About Sex 20130822 單親小孩談戀愛?! 失婚媽媽窮緊張 ...', 'http://2013a.vslovetv.com/2013/08/about-sex-20130822.html', '爸媽囧很大About Sex 20130822 單親小孩談戀愛?! 失婚媽媽窮緊張 ...'),
(461, '养个孩子再恋爱|官方在线漫画全集-快看漫画', 'http://www.kuaikanmanhua.com/web/topic/1110/', '养个孩子再恋爱|官方在线漫画全集-快看漫画'),
(462, '父母的苦惱：青春期的孩子，只顧談戀愛不念書？精神科醫師的建議是 ...', 'https://health.businessweekly.com.tw/AArticle.aspx?id=ARTL000044127', '父母的苦惱：青春期的孩子，只顧談戀愛不念書？精神科醫師的建議是 ...'),
(463, '[PDF]\n國中生適合談戀愛嗎？ 諮商心理師張義平現代的孩子在生理發育上越來 ...', 'http://tscc.tp.edu.tw/sites/default/files/web-pages-attach/%E5%9C%8B%E4%B8%AD%E7%94%9F%E9%81%A9%E5%90%88%E8%AB%87%E6%88%80%E6%84%9B%E5%97%8E-%E6%80%A7%E5%88%A5%E6%95%99%E8%82%B2OK.pdf', '[PDF]\n國中生適合談戀愛嗎？ 諮商心理師張義平現代的孩子在生理發育上越來 ...'),
(464, '每個人都想談戀愛歌詞陳曉東※ Mojim.com 魔鏡歌詞網', 'https://mojim.com/twy100119x32x18.htm', '每個人都想談戀愛歌詞陳曉東※ Mojim.com 魔鏡歌詞網'),
(465, '让中学的孩子谈场恋爱吧| 海外文轩', 'http://www.overseaswindow.com/node/23589', '让中学的孩子谈场恋爱吧| 海外文轩'),
(466, '99年的小孩問我：你會談戀愛嗎？不會我教你-中國新聞網', 'https://www.xcnnews.com/cul/2268707.html', '99年的小孩問我：你會談戀愛嗎？不會我教你-中國新聞網'),
(467, '五招教孩子談戀愛 - 溫馨歇腳處- 文章分享', 'http://album.shmps.kh.edu.tw/~blog/modules/tadnews/index.php?nsn=53', '五招教孩子談戀愛 - 溫馨歇腳處- 文章分享'),
(468, '愛上年紀大的男人@ 閒閒桂夫人:: 痞客邦PIXNET ::', 'http://yoyovilla.pixnet.net/blog/post/14985689-%E6%84%9B%E4%B8%8A%E5%B9%B4%E7%B4%80%E5%A4%A7%E7%9A%84%E7%94%B7%E4%BA%BA', '愛上年紀大的男人@ 閒閒桂夫人:: 痞客邦PIXNET ::'),
(469, '[討論] 你們會禁止孩子學生時代談戀愛嗎? - 看板Boy-Girl - 批踢踢實業坊', 'https://www.ptt.cc/bbs/Boy-Girl/M.1498866900.A.0A4.html', '[討論] 你們會禁止孩子學生時代談戀愛嗎? - 看板Boy-Girl - 批踢踢實業坊'),
(470, '生活中的法文：戀愛是一輩子的事！法國人的愛情觀｜女人迷Womany', 'http://womany.net/read/article/5909', '生活中的法文：戀愛是一輩子的事！法國人的愛情觀｜女人迷Womany'),
(471, '《戀愛與謊言》那個來自於十年後的「恋の指輪物語」(特別編 ...', 'https://home.gamer.com.tw/creationDetail.php?sn=3694485', '《戀愛與謊言》那個來自於十年後的「恋の指輪物語」(特別編 ...'),
(472, '女孩子千万别随便就恋爱，会没命的！ - 日记- 豆瓣', 'https://m.douban.com/note/645517021/', '女孩子千万别随便就恋爱，会没命的！ - 日记- 豆瓣'),
(473, '孩子谈恋爱父母该是敌人还是朋友？-搜狐教育', 'http://learning.sohu.com/20140331/n397513365.shtml', '孩子谈恋爱父母该是敌人还是朋友？-搜狐教育'),
(474, '偷偷談戀愛有甚麼危險？ — 守望台線上書庫 - JW.org', 'https://wol.jw.org/sv/wol/d/r24/lp-ch/1102008092', '偷偷談戀愛有甚麼危險？ — 守望台線上書庫 - JW.org'),
(475, '【單身90後顏面何在啊！】現在的小孩怎麼都那麼早熟呢！？13歲就已經 ...', 'http://www.twgreatdaily.com/cat43/node1501785', '【單身90後顏面何在啊！】現在的小孩怎麼都那麼早熟呢！？13歲就已經 ...'),
(476, '《恋爱的发现》小孩都笑郑裕美脸上粘了东西，文晸赫非得说可爱！甜_ ...', 'https://v.qq.com/x/page/j03824vvhsy.html', '《恋爱的发现》小孩都笑郑裕美脸上粘了东西，文晸赫非得说可爱！甜_ ...'),
(477, '5 堂課安撫你心中缺乏安全感的小孩，還你一段成熟、持久的戀愛 ...', 'https://buzzorange.com/vidaorange/2017/07/24/insecurities/', '5 堂課安撫你心中缺乏安全感的小孩，還你一段成熟、持久的戀愛 ...'),
(478, '5.當孩子的戀愛軍師 汪詠黛-', 'http://guide.cpshs.hcc.edu.tw/files/16-1000-2445.php?Lang=zh-tw', '5.當孩子的戀愛軍師 汪詠黛-'),
(479, '婚姻和小孩如何平衡｜連小娟｜媽咪拜MamiBuy', 'https://mamibuy.com.tw/talk/article/90268', '婚姻和小孩如何平衡｜連小娟｜媽咪拜MamiBuy'),
(480, '[PPT]\n婚姻與戀愛的經濟分析', 'http://www3.nccu.edu.tw/~jthuang/love8.ppt', '[PPT]\n婚姻與戀愛的經濟分析'),
(481, '7-10歲的小孩的眼中,戀愛到底是什麼東西。答案都讓大人們慚愧 ...', 'http://tw.gigacircle.com/2327377-1', '7-10歲的小孩的眼中,戀愛到底是什麼東西。答案都讓大人們慚愧 ...'),
(482, '從《月薪嬌妻》看東西方戀愛觀的3個差異- Madeleine／說世界的語言，圓 ...', 'http://www.cheers.com.tw/blog/blogTopic.action?id=635&nid=7621', '從《月薪嬌妻》看東西方戀愛觀的3個差異- Madeleine／說世界的語言，圓 ...'),
(483, '三歲小孩的戀愛故事@ Jannie :: 痞客邦PIXNET ::', 'http://jannie888.pixnet.net/blog/post/78988929-%E4%B8%89%E6%AD%B2%E5%B0%8F%E5%AD%A9%E7%9A%84%E6%88%80%E6%84%9B%E6%95%85%E4%BA%8B', '三歲小孩的戀愛故事@ Jannie :: 痞客邦PIXNET ::'),
(484, '「顏清標家族」不簡單！兒子小6戀愛，17歲有孩子就結，三結兩離！美妻 ...', 'http://toments.com/68359/', '「顏清標家族」不簡單！兒子小6戀愛，17歲有孩子就結，三結兩離！美妻 ...'),
(485, '不喜歡孩子的戀愛對象怎麼辦？ - 星島日報', 'https://www.singtaousa.com/sf/15117-%E7%94%9F%E6%B4%BB/248482-%E4%B8%8D%E5%96%9C%E6%AD%A1%E5%AD%A9%E5%AD%90%E7%9A%84%E6%88%80%E6%84%9B%E5%B0%8D%E8%B1%A1%E6%80%8E%E9%BA%BC%E8%BE%A6%EF%BC%9F/?fromG=1', '不喜歡孩子的戀愛對象怎麼辦？ - 星島日報'),
(486, '不想瞎忙！六成日本適齡女性沒力氣談戀愛只想結婚- Yahoo奇摩新聞', 'https://tw.news.yahoo.com/%E4%B8%8D%E6%83%B3%E7%9E%8E%E5%BF%99-%E5%85%AD%E6%88%90%E6%97%A5%E6%9C%AC%E9%81%A9%E9%BD%A1%E5%A5%B3%E6%80%A7%E6%B2%92%E5%8A%9B%E6%B0%A3%E8%AB%87%E6%88%80%E6%84%9B%E5%8F%AA%E6%83%B3%E7%B5%90%E5%A9%9A-124959127.html', '不想瞎忙！六成日本適齡女性沒力氣談戀愛只想結婚- Yahoo奇摩新聞'),
(487, '戀愛大學 6/25(日)【萌寵愛聯誼】(毛小孩專屬聯誼！)-Accupass 活動通', 'https://old.accupass.com/event/register/1705020327128646882610', '戀愛大學 6/25(日)【萌寵愛聯誼】(毛小孩專屬聯誼！)-Accupass 活動通'),
(488, '她其實是熱情率直的小孩！如何跟白羊座談戀愛？ | ELLE.com.hk', 'https://www.elle.com.hk/astrology/feature/in-love-with-Aries-Ida-Chung', '她其實是熱情率直的小孩！如何跟白羊座談戀愛？ | ELLE.com.hk'),
(489, '5歲小孩告訴你，什麼是談戀愛，人為什麼要結婚on Vimeo', 'https://vimeo.com/178128744', '5歲小孩告訴你，什麼是談戀愛，人為什麼要結婚on Vimeo'),
(490, '【一条】5岁小孩告诉你：什么是谈恋爱，人为什么要结婚_搞笑_生活_ ...', 'https://www.bilibili.com/video/av5723568/', '【一条】5岁小孩告诉你：什么是谈恋爱，人为什么要结婚_搞笑_生活_ ...'),
(491, '問與答| 戀愛乾麻醬', 'http://lir.38.org.tw/faq-page', '問與答| 戀愛乾麻醬'),
(492, '國中生談戀愛爸媽贊成嗎？如果有，你又會怎麼回答？ - 親子寶貝館', 'http://babyonea.com/11471/', '國中生談戀愛爸媽贊成嗎？如果有，你又會怎麼回答？ - 親子寶貝館'),
(493, '超精準！從家中子女間的排行序看你的基本個性與戀愛觀|觀光旅遊 ...', 'https://www.vogue.com.tw/feature/travel/content-24967.html', '超精準！從家中子女間的排行序看你的基本個性與戀愛觀|觀光旅遊 ...'),
(494, '[電影] 戀愛教室Superstar、小孩不笨2 @ Without you I\'m Nothing :: 痞客 ...', 'http://cattyhsu.pixnet.net/blog/post/18031685-%5B%E9%9B%BB%E5%BD%B1%5D-%E6%88%80%E6%84%9B%E6%95%99%E5%AE%A4superstar%E3%80%81%E5%B0%8F%E5%AD%A9%E4%B8%8D%E7%AC%A8%EF%BC%92', '[電影] 戀愛教室Superstar、小孩不笨2 @ Without you I\'m Nothing :: 痞客 ...'),
(495, '家长发现孩子谈恋爱该怎么办？_关于早恋_100教育家长学院', 'http://www.100.com/article/301702.html', '家长发现孩子谈恋爱该怎么办？_关于早恋_100教育家长学院'),
(496, '醒醒吧!好人! 別聽你爸媽的話談戀愛！ @ 你要當好人還是廢物? 全台 ...', 'http://gn00116743.pixnet.net/blog/post/46103658-%E9%86%92%E9%86%92%E5%90%A7%21%E5%A5%BD%E4%BA%BA%21-%E5%88%A5%E8%81%BD%E4%BD%A0%E7%88%B8%E5%AA%BD%E7%9A%84%E8%A9%B1%E8%AB%87%E6%88%80%E6%84%9B%EF%BC%81-', '醒醒吧!好人! 別聽你爸媽的話談戀愛！ @ 你要當好人還是廢物? 全台 ...'),
(497, '上海女子放棄戀愛直飛澳洲“取精”生小孩| 中國報China Press', 'http://www.chinapress.com.my/20171213/%E4%B8%8A%E6%B5%B7%E5%A5%B3%E5%AD%90%E6%94%BE%E6%A3%84%E6%88%80%E6%84%9B-%E7%9B%B4%E9%A3%9B%E6%BE%B3%E6%B4%B2%E5%8F%96%E7%B2%BE%E7%94%9F%E5%B0%8F%E5%AD%A9-2/', '上海女子放棄戀愛直飛澳洲“取精”生小孩| 中國報China Press'),
(498, '戀愛中我們都需要私人空間，為什麼面對孩子卻忘記了？-親子關係,小孩怎 ...', 'http://www.spicemami.com/thread-37311-1-1.html', '戀愛中我們都需要私人空間，為什麼面對孩子卻忘記了？-親子關係,小孩怎 ...'),
(499, '【育兒經】1Y4M 讓孩子主動與環境談戀愛，發揮創意！ @ 圓滿三口組:: 痞 ...', 'http://syhi1019.pixnet.net/blog/post/413740909-%E3%80%90%E8%82%B2%E5%85%92%E7%B6%93%E3%80%911y4m-%E8%AE%93%E5%AD%A9%E5%AD%90%E4%B8%BB%E5%8B%95%E8%88%87%E7%92%B0%E5%A2%83%E8%AB%87%E6%88%80%E6%84%9B%EF%BC%8C%E7%99%BC', '【育兒經】1Y4M 讓孩子主動與環境談戀愛，發揮創意！ @ 圓滿三口組:: 痞 ...'),
(500, '陳曉東(Daniel Chan) - 每個人都想談戀愛(國語) - Album Version - KKBOX', 'https://www.kkbox.com/tw/tc/song/ruV.TYNx3008b.8rdgrdg0On-index.html', '陳曉東(Daniel Chan) - 每個人都想談戀愛(國語) - Album Version - KKBOX'),
(501, '不與異性結婚，不要小孩，不出櫃，不談戀愛的同志究竟是怎樣一種內心 ...', 'https://www.getit01.com/p20180127637271256/', '不與異性結婚，不要小孩，不出櫃，不談戀愛的同志究竟是怎樣一種內心 ...'),
(502, '學佛了，可否談戀愛或結婚？ @ 菩提彼岸:: 痞客邦PIXNET ::', 'http://bestzen.pixnet.net/blog/post/55019505-%E5%AD%B8%E4%BD%9B%E4%BA%86%EF%BC%8C%E5%8F%AF%E5%90%A6%E8%AB%87%E6%88%80%E6%84%9B%E6%88%96%E7%B5%90%E5%A9%9A%EF%BC%9F-', '學佛了，可否談戀愛或結婚？ @ 菩提彼岸:: 痞客邦PIXNET ::'),
(503, '丁雯靜陪女兒一起修戀愛課：媽媽當軍師，教女兒談戀愛 - MSN.com', 'https://www.msn.com/zh-tw/lifestyle/relationships/%E4%B8%81%E9%9B%AF%E9%9D%9C%E9%99%AA%E5%A5%B3%E5%85%92%E4%B8%80%E8%B5%B7%E4%BF%AE%E6%88%80%E6%84%9B%E8%AA%B2%E5%AA%BD%E5%AA%BD%E7%95%B6%E8%BB%8D%E5%B8%AB%EF%BC%8C%E6%95%99%E5%A5%B3%E5%85%92%E8%AB%87%E6%88%80%E6%84%9B/ar-BBIba6p?li=AAazr0y', '丁雯靜陪女兒一起修戀愛課：媽媽當軍師，教女兒談戀愛 - MSN.com'),
(504, '《轉貼》一個已婚的女人給所有戀愛中女孩子的忠告@ Just Women :: 痞客 ...', 'http://justwomen.pixnet.net/blog/post/48227214-%E3%80%8A%E8%BD%89%E8%B2%BC%E3%80%8B%E4%B8%80%E5%80%8B%E5%B7%B2%E5%A9%9A%E7%9A%84%E5%A5%B3%E4%BA%BA%E7%B5%A6%E6%89%80%E6%9C%89%E6%88%80%E6%84%9B%E4%B8%AD%E5%A5%B3%E5%AD%A9%E5%AD%90', '《轉貼》一個已婚的女人給所有戀愛中女孩子的忠告@ Just Women :: 痞客 ...'),
(505, '[愛情] 學生時代的戀愛要怎麼說服家長老師？ - 翱翔的姿態', 'http://tuanuu.tw/love-we-are-students/', '[愛情] 學生時代的戀愛要怎麼說服家長老師？ - 翱翔的姿態'),
(506, '申彗星(신혜성) [Shinhwa] - 어린애처럼像小孩一樣[戀愛的發現OST] | 優 ...', 'http://www.youtaker.com/video/svb5-8112cc44be0a4805a91c4ce1516b54f9090.html.%E7%94%B3%E5%BD%97%E6%98%9F-%EC%8B%A0%ED%98%9C%EC%84%B1-Shinhwa-45-%EC%96%B4%EB%A6%B0%EC%95%A0%EC%B2%98%EB%9F%BC-%E5%83%8F%E5%B0%8F%E5%AD%A9%E4%B8%80%E6%A8%A3-%E6%88%80%E6%84%9B%E7%9A%84%E7%99%BC%E7%8F%BE-OST-.html', '申彗星(신혜성) [Shinhwa] - 어린애처럼像小孩一樣[戀愛的發現OST] | 優 ...'),
(507, '[PDF]\n篇名： 談戀愛對高中生的影響作者： 林亭妤。私立治平高中。高一忠班', 'http://www.shs.edu.tw/works/essay/2008/10/2008102914085396.pdf', '[PDF]\n篇名： 談戀愛對高中生的影響作者： 林亭妤。私立治平高中。高一忠班'),
(508, '比爾蓋茲的小孩，幾歲有手機？｜教育｜親子教養｜2017-10-25｜即時 ...', 'http://www.cw.com.tw/article/article.action?id=5085744', '比爾蓋茲的小孩，幾歲有手機？｜教育｜親子教養｜2017-10-25｜即時 ...'),
(509, '幾歲才適合幫小孩買智慧型手機？ - 康健雜誌191期', 'http://www.commonhealth.com.tw/article/article.action?nid=69541', '幾歲才適合幫小孩買智慧型手機？ - 康健雜誌191期'),
(510, 'Asus (Android) - 適合小朋友使用的手機- 手機討論區- Mobile01', 'https://www.mobile01.com/topicdetail.php?f=588&t=5048995', 'Asus (Android) - 適合小朋友使用的手機- 手機討論區- Mobile01'),
(511, '何時才給小孩手機？ - 中時電子報', 'http://www.chinatimes.com/newspapers/20180204000348-260209', '何時才給小孩手機？ - 中時電子報'),
(512, '強烈建議！12歲以下兒童絕對不要滑手機(小孩看手機,幼兒看 ... - 商業周刊', 'https://www.businessweekly.com.tw/article.aspx?id=6732&type=Blog', '強烈建議！12歲以下兒童絕對不要滑手機(小孩看手機,幼兒看 ... - 商業周刊'),
(513, '這才是教育！美國家長給孩子「使用手機」的15 條家規，值得我們好好學習...', 'https://www.cmoney.tw/notes/note-detail.aspx?nid=51730', '這才是教育！美國家長給孩子「使用手機」的15 條家規，值得我們好好學習...'),
(514, '父母和青少年的手機攻防國、高中有不同策略| 教育評論| 文教| 聯合新聞網', 'https://udn.com/news/story/6887/1851080', '父母和青少年的手機攻防國、高中有不同策略| 教育評論| 文教| 聯合新聞網'),
(515, '該給小孩用手機嗎？/小學生-教養/親子天下', 'https://www.parenting.com.tw/article/5067623-%E8%A9%B2%E7%B5%A6%E5%B0%8F%E5%AD%A9%E7%94%A8%E6%89%8B%E6%A9%9F%E5%97%8E%EF%BC%9F/', '該給小孩用手機嗎？/小學生-教養/親子天下'),
(516, '孩子想要智慧型手機，該不該給他？ @ 陳安儀的筆下人生:: 痞客邦 ...', 'http://anyichen.pixnet.net/blog/post/30811126-%E5%AD%A9%E5%AD%90%E6%83%B3%E8%A6%81%E6%99%BA%E6%85%A7%E5%9E%8B%E6%89%8B%E6%A9%9F%EF%BC%8C%E8%A9%B2%E4%B8%8D%E8%A9%B2%E7%B5%A6%E4%BB%96%EF%BC%9F', '孩子想要智慧型手機，該不該給他？ @ 陳安儀的筆下人生:: 痞客邦 ...'),
(517, '[問題] 適合小孩的手機? - 看板MobileComm - 批踢踢實業坊', 'https://www.ptt.cc/bbs/MobileComm/M.1425468197.A.B89.html', '[問題] 適合小孩的手機? - 看板MobileComm - 批踢踢實業坊'),
(518, '小孩玩手機五缺點，戒手機爸媽先以身作則！ – 媽媽經｜專屬於媽媽的網站', 'https://mamaclub.com/learn/%E5%B0%8F%E5%AD%A9%E7%8E%A9%E6%89%8B%E6%A9%9F%E4%BA%94%E7%BC%BA%E9%BB%9E%EF%BC%8C%E6%88%92%E6%89%8B%E6%A9%9F%E7%88%B8%E5%AA%BD%E5%85%88%E4%BB%A5%E8%BA%AB%E4%BD%9C%E5%89%87%EF%BC%81/', '小孩玩手機五缺點，戒手機爸媽先以身作則！ – 媽媽經｜專屬於媽媽的網站'),
(519, '何時才給小孩手機？ - Yahoo奇摩新聞', 'https://tw.news.yahoo.com/%E4%BD%95%E6%99%82%E6%89%8D%E7%B5%A6%E5%B0%8F%E5%AD%A9%E6%89%8B%E6%A9%9F-215009362--finance.html', '何時才給小孩手機？ - Yahoo奇摩新聞'),
(520, '幾歲給孩子行動裝置最適合？蓋茲和賈伯斯各有各的作法| T客邦- 我只 ...', 'https://www.techbang.com/posts/51302-bill-gates-says-its-for-kids-with-smartphones-safe-when', '幾歲給孩子行動裝置最適合？蓋茲和賈伯斯各有各的作法| T客邦- 我只 ...'),
(521, '你家小孩手機成癮嗎? | 蘋果日報', 'https://tw.appledaily.com/new/realtime/20150904/684753/', '你家小孩手機成癮嗎? | 蘋果日報'),
(522, '爸媽來PK 孩子能不能擁有智慧型手機？（103年3月9日） 國語日報家庭 ...', 'https://www.mdnkids.com/family_edition/detail.asp?sn=757', '爸媽來PK 孩子能不能擁有智慧型手機？（103年3月9日） 國語日報家庭 ...'),
(523, '親子天下- 【討論】小孩使用智慧手機，是否該限制使用時間？... | Facebook', 'https://zh-tw.facebook.com/parentingtw/posts/10152050676748935', '親子天下- 【討論】小孩使用智慧手機，是否該限制使用時間？... | Facebook'),
(524, '小孩手機智能電話 - Taobao', 'https://world.taobao.com/product/%E5%B0%8F%E5%AD%A9%E6%89%8B%E6%A9%9F%E6%99%BA%E8%83%BD%E9%9B%BB%E8%A9%B1.htm', '小孩手機智能電話 - Taobao'),
(525, '【親子溝通】該給小孩用手機嗎？ @ 景美國小輔導小錦囊:: 痞客邦PIXNET ::', 'http://rudy790325.pixnet.net/blog/post/436476817-%E3%80%90%E8%A6%AA%E5%AD%90%E6%BA%9D%E9%80%9A%E3%80%91%E8%A9%B2%E7%B5%A6%E5%B0%8F%E5%AD%A9%E7%94%A8%E6%89%8B%E6%A9%9F%E5%97%8E%EF%BC%9F', '【親子溝通】該給小孩用手機嗎？ @ 景美國小輔導小錦囊:: 痞客邦PIXNET ::'),
(526, '小孩吵著看手機？ 1招讓他秒閉嘴- 生活- 自由時報電子報', 'http://news.ltn.com.tw/news/life/breakingnews/2015809', '小孩吵著看手機？ 1招讓他秒閉嘴- 生活- 自由時報電子報'),
(527, '你用手機養孩子嗎？你正在養出遲緩兒（上）手機上癮的症狀', 'https://tw.theasianparent.com/%E5%B0%8F%E5%AD%A9%E6%89%8B%E6%A9%9F%E4%B8%8A%E7%99%AE%E6%88%90%E7%99%AE%E5%AD%A9%E5%AD%90%E5%B9%B3%E6%9D%BF%E6%80%8E%E9%BA%BC%E8%BE%A6/', '你用手機養孩子嗎？你正在養出遲緩兒（上）手機上癮的症狀'),
(528, '近年小孩對手機依賴大曾因手機釀多起憾事父母難為| 社會| 三立新聞網 ...', 'http://www.setn.com/News.aspx?NewsID=354640', '近年小孩對手機依賴大曾因手機釀多起憾事父母難為| 社會| 三立新聞網 ...'),
(529, '不要再誤會孩子了，小孩會喜歡玩手機，不是因為貪玩，而是因為...，所有 ...', 'http://ezvivi2.com/article/178781.asp', '不要再誤會孩子了，小孩會喜歡玩手機，不是因為貪玩，而是因為...，所有 ...'),
(530, '不要因為懶一直給小孩滑手機「視力問題才不是最嚴重的」！專家：螢幕成 ...', 'http://www.teepr.com/896862/tinayi/%E5%AD%A9%E7%AB%A5%E8%9E%A2%E5%B9%95%E6%88%90%E7%99%AE/', '不要因為懶一直給小孩滑手機「視力問題才不是最嚴重的」！專家：螢幕成 ...'),
(531, '【假影片】孩子們在車上玩手機，而父母在外面加油？LINE 謠言啦！爆炸 ...', 'http://www.mygopen.com/2017/10/line_17.html', '【假影片】孩子們在車上玩手機，而父母在外面加油？LINE 謠言啦！爆炸 ...'),
(532, '小孩手機支付1萬6 到底幹了啥?-資訊--高清正版影音線上看-愛奇藝臺灣站', 'http://tw.iqiyi.com/v_19rr8fsrgc.html', '小孩手機支付1萬6 到底幹了啥?-資訊--高清正版影音線上看-愛奇藝臺灣站'),
(533, '父母愛滑手機，孩子行為異常機率大增| TechNews 科技新報', 'https://technews.tw/2017/06/12/children-with-smartphone/', '父母愛滑手機，孩子行為異常機率大增| TechNews 科技新報'),
(534, '買手機給小孩家長兩難| 財經新聞監測 - 聯合知識庫', 'https://udndata.com/ndapp/udntag/finance/Article?origid=8971025', '買手機給小孩家長兩難| 財經新聞監測 - 聯合知識庫'),
(535, '媽媽發現小孩手機裡竟裝有這個「類似計算機的app」，當她輸入', 'https://life.tw/?app=view&no=631880', '媽媽發現小孩手機裡竟裝有這個「類似計算機的app」，當她輸入'),
(536, '大家都會幫小孩辦怎樣的方案呢? - 手機綜合討論版- wetalk - let\'s talk!', 'https://www.wetalk.tw/thread-70782-1-1.html', '大家都會幫小孩辦怎樣的方案呢? - 手機綜合討論版- wetalk - let\'s talk!'),
(537, '小孩手機上癮怎麼辦？5個小妙招拯救孩子- 每日頭條', 'https://kknews.cc/zh-tw/baby/xvgpap9.html', '小孩手機上癮怎麼辦？5個小妙招拯救孩子- 每日頭條'),
(538, '給小孩不受駭客騷擾的手機- BabyHome 新知大耳朵', 'https://info.babyhome.com.tw/article/15546', '給小孩不受駭客騷擾的手機- BabyHome 新知大耳朵'),
(539, '研究：玩手機和平板電腦的小孩睡眠較少- BBC 中文网 - BBC.com', 'http://www.bbc.com/zhongwen/trad/science-39606904', '研究：玩手機和平板電腦的小孩睡眠較少- BBC 中文网 - BBC.com'),
(540, '在App Store 上的「小護視(使用時間計數器)」 - iTunes - Apple', 'https://itunes.apple.com/tw/app/%E5%B0%8F%E8%AD%B7%E8%A6%96-%E4%BD%BF%E7%94%A8%E6%99%82%E9%96%93%E8%A8%88%E6%95%B8%E5%99%A8/id871626629?mt=8', '在App Store 上的「小護視(使用時間計數器)」 - iTunes - Apple'),
(541, '孩子沉迷手機家長如何處理| 大紀元', 'http://www.epochtimes.com/b5/15/5/19/n4438445.htm', '孩子沉迷手機家長如何處理| 大紀元'),
(542, '父母過度使用手機會對小孩產生影響嗎？ | DQ 地球圖輯隊帶你看透全世界', 'https://dq.yam.com/post.php?id=7730', '父母過度使用手機會對小孩產生影響嗎？ | DQ 地球圖輯隊帶你看透全世界'),
(543, '精神科醫師談育兒：小孩5歲前不要擁有手機，使用平版要有嚴格規定 ...', 'https://www.thenewslens.com/article/31075', '精神科醫師談育兒：小孩5歲前不要擁有手機，使用平版要有嚴格規定 ...'),
(544, '「同學都有帶，為什麼我不行？」當小孩要求帶手機去學校，父母就該妥協 ...', 'http://www.storm.mg/lifestyle/149239', '「同學都有帶，為什麼我不行？」當小孩要求帶手機去學校，父母就該妥協 ...'),
(545, '正妹醫師娘拿手機拍小孩！竟驚見老公和「比基尼辣妹」洗澎澎| ETtoday ...', 'https://www.ettoday.net/news/20180224/1118536.htm', '正妹醫師娘拿手機拍小孩！竟驚見老公和「比基尼辣妹」洗澎澎| ETtoday ...'),
(546, '這個方案適合小孩嗎? - 手機館| ePrice 比價王', 'http://www.eprice.com.tw/mobile/talk/5035/5001675/1/', '這個方案適合小孩嗎? - 手機館| ePrice 比價王'),
(547, '格瑞思心理諮商所-- 小孩一直滑手機，父母怎麼辦？（一）', 'http://www.gracecc.com.tw/front/bin/ptdetail.phtml?Part=parent07&Category=20', '格瑞思心理諮商所-- 小孩一直滑手機，父母怎麼辦？（一）'),
(548, '一不小心把大腦都「滑」笨了…… 研究顯示：小孩過早使用智慧型手機會 ...', 'https://buzzorange.com/vidaorange/2018/02/12/kids-use-smartphone-talk-later/', '一不小心把大腦都「滑」笨了…… 研究顯示：小孩過早使用智慧型手機會 ...'),
(549, '搶三歲小孩手機栽在定位扯「人工智慧叫我搶」 - YouTube', 'https://www.youtube.com/watch?v=UpnHN5cOy50', '搶三歲小孩手機栽在定位扯「人工智慧叫我搶」 - YouTube'),
(550, 'Family Link - 限制小孩手機使用時間管理可用App | 愛瘋日報:最專注的 ...', 'http://www.iphonetaiwan.org/2017/04/google-family-link-app.html', 'Family Link - 限制小孩手機使用時間管理可用App | 愛瘋日報:最專注的 ...'),
(551, '不要給小孩買手機@ 阿榮的水電維修及小品文章分享:: 隨意窩Xuite日誌', 'http://blog.xuite.net/roc2573/blog/200709367-%E4%B8%8D%E8%A6%81%E7%B5%A6%E5%B0%8F%E5%AD%A9%E8%B2%B7%E6%89%8B%E6%A9%9F', '不要給小孩買手機@ 阿榮的水電維修及小品文章分享:: 隨意窩Xuite日誌'),
(552, '購買手機給小孩前的約法三章(正確使用手機的規範與禮儀) - 小丰子3C ...', 'https://tel3c.tw/blog/post/172855680', '購買手機給小孩前的約法三章(正確使用手機的規範與禮儀) - 小丰子3C ...'),
(553, '手機螢幕用小孩的照片不好- 《媽咪愛》育兒問答', 'https://mamilove.com.tw/qa/113906', '手機螢幕用小孩的照片不好- 《媽咪愛》育兒問答'),
(554, '小孩铃声小孩铃声下载小孩手机铃声', 'http://m.haolingsheng.com/lingsheng/jn965g.htm', '小孩铃声小孩铃声下载小孩手机铃声'),
(555, '教育博士:想減少孩子玩遊戲時間，就先讓他玩到膩吧!-未來Family', 'https://gfamily.cwgv.com.tw/content/index/1128', '教育博士:想減少孩子玩遊戲時間，就先讓他玩到膩吧!-未來Family'),
(556, '【情報】Family Link - 限制小孩手機使用時間管理可用App @iOS 綜合討論 ...', 'https://forum.gamer.com.tw/Co.php?bsn=60521&sn=49953', '【情報】Family Link - 限制小孩手機使用時間管理可用App @iOS 綜合討論 ...'),
(557, '管理者的新商業思維: - Google 圖書結果', 'https://books.google.com.tw/books?id=bi_0DQAAQBAJ&pg=PT15&lpg=PT15&dq=%E5%B0%8F%E5%AD%A9+%E6%89%8B%E6%A9%9F&source=bl&ots=LwzAuiovPf&sig=zvLodzy69PeNhjVEXoQT8blJNlE&hl=zh-TW&sa=X&ved=0ahUKEwjTvoiTzNjZAhUHFJQKHY_lCEY4MhDoAQgpMAA', '管理者的新商業思維: - Google 圖書結果'),
(558, '孩子手機不離手怎麼辦？教你10招有效管束孩子玩手機！-怎麼管教小孩-辣 ...', 'http://www.spicemami.com/thread-25457-1-1.html', '孩子手機不離手怎麼辦？教你10招有效管束孩子玩手機！-怎麼管教小孩-辣 ...'),
(559, '儿童小孩手机【多图】_价格_图片- 天猫精选 - Tmall.com', 'https://www.tmall.com/mlist/cp_tvnNr9ChuqLK1rv6.html', '儿童小孩手机【多图】_价格_图片- 天猫精选 - Tmall.com'),
(560, '台灣年輕人.返鄉經濟學: 台灣 對得起年輕人嗎？', 'https://books.google.com.tw/books?id=RckYBgAAQBAJ&pg=PA124&lpg=PA124&dq=%E5%B0%8F%E5%AD%A9+%E6%89%8B%E6%A9%9F&source=bl&ots=X1w2XAsRjt&sig=EViGa9IocJe_QL4ZCX_gwSKHWjw&hl=zh-TW&sa=X&ved=0ahUKEwjTvoiTzNjZAhUHFJQKHY_lCEY4MhDoAQg7MAM', '台灣年輕人.返鄉經濟學: 台灣 對得起年輕人嗎？'),
(561, '【3C．手機】不專業開箱又來了OPPO R11。前後2000萬畫素鏡頭，正中我 ...', 'http://joan770712.pixnet.net/blog/post/343516522-%E3%80%903c%EF%BC%8E%E6%89%8B%E6%A9%9F%E3%80%91%E4%B8%8D%E5%B0%88%E6%A5%AD%E9%96%8B%E7%AE%B1%E5%8F%88%E4%BE%86%E4%BA%86-oppo-r11%E3%80%82%E5%89%8D%E5%BE%8C2', '【3C．手機】不專業開箱又來了OPPO R11。前後2000萬畫素鏡頭，正中我 ...'),
(562, '你的一支手機是剛果小孩一生的苦難| 民報Taiwan People News', 'http://www.peoplenews.tw/news/3b537080-e27e-465a-a399-bc8db1c16ab7', '你的一支手機是剛果小孩一生的苦難| 民報Taiwan People News'),
(563, '窮出好小孩: - 第 81 頁 - Google 圖書結果', 'https://books.google.com.tw/books?id=KKfcCwAAQBAJ&pg=PA81&lpg=PA81&dq=%E5%B0%8F%E5%AD%A9+%E6%89%8B%E6%A9%9F&source=bl&ots=LIY9s6cuAg&sig=iEpQguHG5D_JIqfSNwqQfQ55WxE&hl=zh-TW&sa=X&ved=0ahUKEwjTvoiTzNjZAhUHFJQKHY_lCEY4MhDoAQhLMAY', '窮出好小孩: - 第 81 頁 - Google 圖書結果'),
(564, '如何禁止家人、小孩在Android 手機任意安裝App，用密碼鎖起來！ – 【重 ...', 'https://briian.com/15147/', '如何禁止家人、小孩在Android 手機任意安裝App，用密碼鎖起來！ – 【重 ...'),
(565, '小孩、手機、小狗- HTC論壇', 'https://community.htc.com/tw/chat.php?mod=viewthread&tid=13393', '小孩、手機、小狗- HTC論壇'),
(566, '该不该给中小学生买智能手机？ - 知乎', 'https://www.zhihu.com/question/22466696', '该不该给中小学生买智能手机？ - 知乎'),
(567, '『App Usage』完整掌握及管理你或小孩手機的使用時間、應用使用量 ...', 'https://www.kocpc.com.tw/archives/105093', '『App Usage』完整掌握及管理你或小孩手機的使用時間、應用使用量 ...'),
(568, '管不住小孩玩手机？这里有一招… – DinnerTime #Android #iOS | 爱范儿', 'http://www.ifanr.com/app/458077', '管不住小孩玩手机？这里有一招… – DinnerTime #Android #iOS | 爱范儿'),
(569, '科技遇上玩具杜絕小孩手機成癮問題| 預見雜誌', 'https://journal.eyeprophet.com/%E7%A7%91%E6%8A%80%E9%81%87%E4%B8%8A%E7%8E%A9%E5%85%B7-%E6%9D%9C%E7%B5%95%E5%B0%8F%E5%AD%A9%E6%89%8B%E6%A9%9F%E6%88%90%E7%99%AE%E5%95%8F%E9%A1%8C/', '科技遇上玩具杜絕小孩手機成癮問題| 預見雜誌'),
(570, '我要隱私權，爸媽別亂翻！ ｜婚姻家庭 姊妹淘babyou', 'https://www.babyou.com/opencms/channel5/Babyou003794.html', '我要隱私權，爸媽別亂翻！ ｜婚姻家庭 姊妹淘babyou'),
(571, '面對孩子青春期：同理不是「討好」，容忍不是「放縱」｜女人迷Womany', 'http://womany.net/read/article/7024', '面對孩子青春期：同理不是「討好」，容忍不是「放縱」｜女人迷Womany'),
(572, '孩子的第一隻智慧定位手錶-姚小鳳@ 姚小鳳育兒網-您育兒生活的好 ...', 'http://hikids.pixnet.net/blog/post/301577167', '孩子的第一隻智慧定位手錶-姚小鳳@ 姚小鳳育兒網-您育兒生活的好 ...'),
(573, '平板電腦和智慧型手機對小孩造成的傷害，絕對比你想像的還要可怕!', 'http://hssszn.com/archives/24424', '平板電腦和智慧型手機對小孩造成的傷害，絕對比你想像的還要可怕!'),
(574, 'BicCamera.com | 供試映圖香蕉小孩手機F-03J使用的防反射膠卷 ...', 'http://www.biccamera.com.t.lj.hp.transer.com/bc/disp/CSfGoodsPage_001.jsp?GOODS_NO=3615841', 'BicCamera.com | 供試映圖香蕉小孩手機F-03J使用的防反射膠卷 ...'),
(575, '拒絕養出低頭族小孩。七招！讓手機在餐桌上絕跡。 - Hanni．愛玩家', 'http://hannihung.blogspot.com/2014/03/blog-post.html', '拒絕養出低頭族小孩。七招！讓手機在餐桌上絕跡。 - Hanni．愛玩家'),
(576, '拍小孩必備- Sony Xperia XZ1、XZ1 Compact 開箱、評測、實拍照- 雲爸 ...', 'https://dacota.tw/blog/post/sony-xperia-xz1-compact-unboxing', '拍小孩必備- Sony Xperia XZ1、XZ1 Compact 開箱、評測、實拍照- 雲爸 ...'),
(577, '[PDF]\n該給小孩用手機嗎？ - 恆毅中學', 'http://www2.hchs.ntpc.edu.tw/ezfiles/0/1000/img/33/114616827.pdf', '[PDF]\n該給小孩用手機嗎？ - 恆毅中學'),
(578, '醫聲論壇• 檢視主題- 給個建議吧你給小孩用什麼手機用什麼費率的', 'http://ns2.doctorvoice.org/viewtopic.php?f=23&t=67738', '醫聲論壇• 檢視主題- 給個建議吧你給小孩用什麼手機用什麼費率的'),
(579, '請問大家都怎麼杜絕小孩玩手機?--求助發問-非常婚禮veryWed.com', 'http://verywed.com/forum/wedlife/2419460.html', '請問大家都怎麼杜絕小孩玩手機?--求助發問-非常婚禮veryWed.com'),
(580, '何時才給小孩手機？ | 焦點新聞| 20180204 | match生活網', 'http://m.match.net.tw/mi/news/headline/20180204/4398520', '何時才給小孩手機？ | 焦點新聞| 20180204 | match生活網'),
(581, '超有才！！意想不到的小孩手機APP 分類方式-新聞放送台 - Asus', 'https://www.asus.com/zentalk/tw/thread-74078-1-1.html', '超有才！！意想不到的小孩手機APP 分類方式-新聞放送台 - Asus'),
(582, '『App Usage』完整掌握及管理你或小孩手機的使用時間、應用使用量 ...', 'https://zi.media/@kocpc/post/SznARw', '『App Usage』完整掌握及管理你或小孩手機的使用時間、應用使用量 ...'),
(583, '不要再讓小孩玩手機了!!再玩下去他長大會恨你... | Oh!爸媽- Ohpama ...', 'http://www.ohpama.com/4756/24parent/%E4%B8%8D%E8%A6%81%E5%86%8D%E8%AE%93%E5%B0%8F%E5%AD%A9%E7%8E%A9%E6%89%8B%E6%A9%9F%E4%BA%86%E5%86%8D%E7%8E%A9%E4%B8%8B%E5%8E%BB%E4%BB%96%E9%95%B7%E5%A4%A7%E6%9C%83%E6%81%A8%E4%BD%A0/', '不要再讓小孩玩手機了!!再玩下去他長大會恨你... | Oh!爸媽- Ohpama ...'),
(584, '好後悔幫小孩買智慧型手機... - ~花時間~ - FashionGuide華人第一女性 ...', 'https://fgforum.fashionguide.com.tw/post_list?topic_id=963782', '好後悔幫小孩買智慧型手機... - ~花時間~ - FashionGuide華人第一女性 ...'),
(585, '何时给你的孩子买手机？ - 心理学空间', 'http://www.psychspace.com/psych/viewnews-7895', '何时给你的孩子买手机？ - 心理学空间'),
(586, 'emome 行動生活一摸就迷> 色情守門員行動版～讓您的小孩手機上網更 ...', 'https://www.emome.net/channel?chid=106&pid=3680', 'emome 行動生活一摸就迷> 色情守門員行動版～讓您的小孩手機上網更 ...'),
(587, '不看不知道原來小孩玩手機的危害竟然這麼大- 壹讀', 'https://read01.com/zh-tw/DNnk7Q.html', '不看不知道原來小孩玩手機的危害竟然這麼大- 壹讀'),
(588, '強國小孩被炸到飛起網民：強國手機你敢唔敢用？ - GreatDaily', 'http://www.greatdaily.pro/node/376294', '強國小孩被炸到飛起網民：強國手機你敢唔敢用？ - GreatDaily'),
(589, '神奇手機殼！幫家長控制小孩手機上網- ePrice.HK', 'http://www.eprice.com.hk/fun/talk/18/7799/', '神奇手機殼！幫家長控制小孩手機上網- ePrice.HK'),
(590, '蠢！腦殘小孩手機沒電竟拔了「那個」會致命的插頭！真的差一點點就要 ...', 'http://toments.com/25159/', '蠢！腦殘小孩手機沒電竟拔了「那個」會致命的插頭！真的差一點點就要 ...'),
(591, '搶三歲小孩手機栽在定位扯「人工智慧叫我搶」 - 東森新聞', 'https://news.ebc.net.tw/news.php?nid=81710', '搶三歲小孩手機栽在定位扯「人工智慧叫我搶」 - 東森新聞'),
(592, '[新聞] 手機被爸媽沒收男童想不開從學校頂樓跳- Gossiping板- Disp BBS', 'https://disp.cc/b/163-auIl', '[新聞] 手機被爸媽沒收男童想不開從學校頂樓跳- Gossiping板- Disp BBS'),
(593, '他拿的！忙顧小孩手機被撿走失主控侵佔 TVBS新聞網', 'https://news.tvbs.com.tw/local/606688', '他拿的！忙顧小孩手機被撿走失主控侵佔 TVBS新聞網'),
(594, '寵愛毛小孩手機APP輕鬆購物| 101創業大小事| 手機版', 'https://m.101media.com.tw/content/yWms7yFQ77VXfBRstrls53KuTqJDRc', '寵愛毛小孩手機APP輕鬆購物| 101創業大小事| 手機版'),
(595, '要孩子離開3C 家長先放下手機| 世界新聞網', 'https://www.worldjournal.com/5449368/article-%E8%A6%81%E5%AD%A9%E5%AD%90%E9%9B%A2%E9%96%8B3c-%E5%AE%B6%E9%95%B7%E5%85%88%E6%94%BE%E4%B8%8B%E6%89%8B%E6%A9%9F/', '要孩子離開3C 家長先放下手機| 世界新聞網'),
(596, '「熊孩子」連續輸錯密碼，媽媽iPhone被停用47年… - Q博士', 'https://www.pixpo.net/technology/0ITZGbsg.html', '「熊孩子」連續輸錯密碼，媽媽iPhone被停用47年… - Q博士'),
(597, '我接到恐嚇電話，怕小孩出事了，但小孩手機不通，可不可以幫 ... - 嘉義大學', 'http://www.ncyu.edu.tw/bioeng/faq.aspx?faq_sn=796&pages=0', '我接到恐嚇電話，怕小孩出事了，但小孩手機不通，可不可以幫 ... - 嘉義大學'),
(598, '網路購票 - EVA Air', 'https://booking.evaair.com/flyeva/eva/b2c/booking-online.aspx?lang=zh-tw', '網路購票 - EVA Air'),
(599, '解鎖等47年！ 2歲兒子想看佩佩豬「猛刷手機」 媽媽崩潰…網友 ... - boMb01', 'http://www.bomb01.com/article/52921', '解鎖等47年！ 2歲兒子想看佩佩豬「猛刷手機」 媽媽崩潰…網友 ... - boMb01'),
(600, '巧連智網站', 'http://www.benesse.com.tw/', '巧連智網站'),
(601, 'Coco Chang： 關於要不要給小孩手機的問題– Orz 網摘', 'https://orzhd.com/2279/', 'Coco Chang： 關於要不要給小孩手機的問題– Orz 網摘'),
(602, '2歲兒子想看佩佩豬「猛刷手機」 媽媽崩潰…網友壞笑：留給你 ... - COCO01', 'http://www.coco01.me/post/772192', '2歲兒子想看佩佩豬「猛刷手機」 媽媽崩潰…網友壞笑：留給你 ... - COCO01'),
(603, 'CMHK新推兒童智能追蹤手錶看管小孩「智」放心｜即時新聞｜生活｜on ...', 'http://hk.on.cc/hk/bkn/cnt/lifestyle/20170915/bkn-20170915163826567-0915_00982_001.html', 'CMHK新推兒童智能追蹤手錶看管小孩「智」放心｜即時新聞｜生活｜on ...'),
(604, '奧斯卡防信封門烏龍後台計票人禁用手機| 娛樂| 重點新聞| 中央社CNA', 'http://www.cna.com.tw/news/firstnews/201803050037-1.aspx', '奧斯卡防信封門烏龍後台計票人禁用手機| 娛樂| 重點新聞| 中央社CNA'),
(605, 'emartstore | 日本樂天市場: 注視小孩向手機小孩手機mamorino ...', 'https://global.rakuten.com/zh-tw/store/emartstore/item/all-001137-ki/', 'emartstore | 日本樂天市場: 注視小孩向手機小孩手機mamorino ...'),
(606, '小孩手機手錶的價格- 飛比價格', 'https://feebee.com.tw/s/%E5%B0%8F%E5%AD%A9%E6%89%8B%E6%A9%9F%E6%89%8B%E9%8C%B6/', '小孩手機手錶的價格- 飛比價格'),
(607, '基改食品究竟安全嗎？ - PanSci 泛科學', 'http://pansci.asia/archives/61656', '基改食品究竟安全嗎？ - PanSci 泛科學'),
(608, '基因改造食品- 维基百科，自由的百科全书', 'https://zh.wikipedia.org/zh-tw/%E5%9F%BA%E5%9B%A0%E6%94%B9%E9%80%A0%E9%A3%9F%E5%93%81', '基因改造食品- 维基百科，自由的百科全书'),
(609, '基改食品究竟安全嗎？ - PanSci 泛科學', 'http://pansci.asia/archives/61656', '基改食品究竟安全嗎？ - PanSci 泛科學'),
(610, '『基因改造食品』將為人類帶來是福？是禍？', 'http://www.taifer.com.tw/taifer/tf/051001/48.html', '『基因改造食品』將為人類帶來是福？是禍？'),
(611, '【基改追追追】生活中的基因改造食物有哪些?台灣目前可種植 ... - 農傳媒', 'https://www.agriharvest.tw/theme_data.php?theme=article&sub_theme=article&id=335', '【基改追追追】生活中的基因改造食物有哪些?台灣目前可種植 ... - 農傳媒'),
(612, '【參考】美國正式宣布基改食品有毒@ Peaceful :: 痞客邦::', 'http://san23.pixnet.net/blog/post/57907488-%E3%80%90%E5%8F%83%E8%80%83%E3%80%91%E7%BE%8E%E5%9C%8B%E6%AD%A3%E5%BC%8F%E5%AE%A3%E5%B8%83%E5%9F%BA%E6%94%B9%E9%A3%9F%E5%93%81%E6%9C%89%E6%AF%92', '【參考】美國正式宣布基改食品有毒@ Peaceful :: 痞客邦::'),
(613, '基因改造食品管理專區 - 衛生福利部食品藥物管理署', 'https://www.fda.gov.tw/TC/site.aspx?sid=3950', '基因改造食品管理專區 - 衛生福利部食品藥物管理署'),
(614, '基因改造食品管理專區 - 衛生福利部食品藥物管理署', 'https://www.fda.gov.tw/tc/sitecontent.aspx?sid=3964', '基因改造食品管理專區 - 衛生福利部食品藥物管理署'),
(615, '壹、何謂基因改造食品 - 衛生福利部食品藥物管理署', 'https://www.fda.gov.tw/tc/sitecontent.aspx?sid=3951', '壹、何謂基因改造食品 - 衛生福利部食品藥物管理署'),
(616, '基因改造食物安全嗎？ - 科學人雜誌', 'http://sa.ylib.com/read/readshow.asp?FDocNo=5', '基因改造食物安全嗎？ - 科學人雜誌');
INSERT INTO `references_for_search` (`references_id`, `title`, `link`, `memo`) VALUES
(617, '[闢謠]謠傳美國正式宣布基因改造食物含有嚴重的毒素，這是真的嗎？-大 ...', 'http://www.ttet.com.tw/index.php?option=module&lang=cht&task=pageinfo&id=198&index=7', '[闢謠]謠傳美國正式宣布基因改造食物含有嚴重的毒素，這是真的嗎？-大 ...'),
(618, '《基改食品的秘密》 奪回飲食知情選擇權| 台灣環境資訊協會-環境資訊中心', 'http://e-info.org.tw/node/202312', '《基改食品的秘密》 奪回飲食知情選擇權| 台灣環境資訊協會-環境資訊中心'),
(619, '吃基改食品不安全 - GMO面面觀', 'http://gmo.agron.ntu.edu.tw/noGM/gm-talk/gmtalk03.htm', '吃基改食品不安全 - GMO面面觀'),
(620, '吃基改食品安全嗎？ 完整告訴你什麼是基因改造食品| ETtoday健康雲 ...', 'https://health.ettoday.net/news/718862', '吃基改食品安全嗎？ 完整告訴你什麼是基因改造食品| ETtoday健康雲 ...'),
(621, '基因改造作物先誰先受害？是環境還是人？ | TechNews 科技新報', 'https://technews.tw/2014/07/19/gm-crop/', '基因改造作物先誰先受害？是環境還是人？ | TechNews 科技新報'),
(622, '台灣基改農產品有哪些？從哪裡來？ @ 食力foodNEXT‧食事求實的知識 ...', 'http://www.foodnext.net/science/scsource/paper/4852926145', '台灣基改農產品有哪些？從哪裡來？ @ 食力foodNEXT‧食事求實的知識 ...'),
(623, '選擇基改食物之前，應該知道的3件事@ 食力foodNEXT‧食事求實的知識 ...', 'http://www.foodnext.net/column/columnist/paper/4739549751', '選擇基改食物之前，應該知道的3件事@ 食力foodNEXT‧食事求實的知識 ...'),
(624, '基因改造食品可以吃嗎？ – 每日一冷– 你的冷知識入口', 'http://www.dailycold.tw/10101/gmofoodcontroversies/', '基因改造食品可以吃嗎？ – 每日一冷– 你的冷知識入口'),
(625, '基因改造食物安全嗎（賴秀穗） | 蘋果日報', 'https://tw.appledaily.com/headline/daily/20170107/37512306', '基因改造食物安全嗎（賴秀穗） | 蘋果日報'),
(626, '基改作物有害身體健康？美科學院表示：證據不足- The News Lens 關鍵 ...', 'https://www.thenewslens.com/article/40014', '基改作物有害身體健康？美科學院表示：證據不足- The News Lens 關鍵 ...'),
(627, '【生活小百科】 非基改食品怎麼找？ | IN生活', 'http://web-inlife.com/?q=node/214', '【生活小百科】 非基改食品怎麼找？ | IN生活'),
(628, '[PDF]\n基改食品 - 交通大學', 'http://ocw.nctu.edu.tw/course/fsl042/fsl042_160421_GMfood.pdf', '[PDF]\n基改食品 - 交通大學'),
(629, '基改食物能吃嗎？ | 元氣網', 'https://health.udn.com/health/story/6037/475157', '基改食物能吃嗎？ | 元氣網'),
(630, '投書：黑影幢幢的基因改造食品-- 上報/ 評論', 'http://www.upmedia.mg/news_info.php?SerialNo=15780', '投書：黑影幢幢的基因改造食品-- 上報/ 評論'),
(631, '立法院決議校園膳食禁用基改食品- 政治- 自由時報電子報', 'http://news.ltn.com.tw/news/politics/breakingnews/2032662', '立法院決議校園膳食禁用基改食品- 政治- 自由時報電子報'),
(632, '你錯了！基改食品到底安全否？ - CTnews話題', 'http://hottopic.chinatimes.com/20160521002052-260804', '你錯了！基改食品到底安全否？ - CTnews話題'),
(633, '實際上，基改作物對人體有害嗎？ | 食在很重要 - 觀樹教育基金會', 'http://www.kskk.org.tw/food/node/112', '實際上，基改作物對人體有害嗎？ | 食在很重要 - 觀樹教育基金會'),
(634, '基改食品藏民間? 帶您揭密\'隱藏版\'! 中視新聞20170619 - YouTube', 'https://www.youtube.com/watch?v=6EItegCXaME', '基改食品藏民間? 帶您揭密\'隱藏版\'! 中視新聞20170619 - YouTube'),
(635, '消費者對基因改造食品標示問題關切原因之探討(農委會)', 'https://www.coa.gov.tw/ws.php?id=7661', '消費者對基因改造食品標示問題關切原因之探討(農委會)'),
(636, '基改食品檢驗自己來| 主婦聯盟環境保護基金會', 'http://www.huf.org.tw/essay/content/3955', '基改食品檢驗自己來| 主婦聯盟環境保護基金會'),
(637, '基改食品為什麼不安全？答案可能跟你想得不太一樣-陳思廷-康健名家觀點', 'http://www.commonhealth.com.tw/blog/blogTopic.action?nid=1910', '基改食品為什麼不安全？答案可能跟你想得不太一樣-陳思廷-康健名家觀點'),
(638, '「營養午餐」禁基改食品遭美點名應開放 TVBS新聞網', 'https://news.tvbs.com.tw/life/717714', '「營養午餐」禁基改食品遭美點名應開放 TVBS新聞網'),
(639, '美國基因改造食品標示規範發展探討 以二 一六年聯邦 ... - 月旦知識庫', 'http://lawdata.com.tw/tw/doi/?doi=10.3966/102559312017110270010', '美國基因改造食品標示規範發展探討 以二 一六年聯邦 ... - 月旦知識庫'),
(640, '[PDF]\n台灣消費者對基因改造食品的反應 - 中央研究院電子報', 'http://newsletter.sinica.edu.tw/file/file/12/1274.pdf', '[PDF]\n台灣消費者對基因改造食品的反應 - 中央研究院電子報'),
(641, '基因改造食品安全嗎？ | PNN 公視新聞議題中心', 'https://pnn.pts.org.tw/main/2012/04/16/%E5%9F%BA%E5%9B%A0%E6%94%B9%E9%80%A0%E9%A3%9F%E5%93%81%E5%AE%89%E5%85%A8%E5%97%8E%EF%BC%9F/', '基因改造食品安全嗎？ | PNN 公視新聞議題中心'),
(642, '花縣加強稽查基改食品強制標示- 花蓮縣衛生局', 'http://www.hlshb.gov.tw/files/14-1006-73427,r27-1.php', '花縣加強稽查基改食品強制標示- 花蓮縣衛生局'),
(643, '基改食品的網路傳言 - 作物永續發展協會', 'http://www.croplifetaiwan.org/cropBiotech/rumors-about-gmo.php', '基改食品的網路傳言 - 作物永續發展協會'),
(644, '基因改造食品檢驗分析服務檢測優惠中- Superlab 台美檢驗科技有限公司', 'https://www.superlab.com.tw/s198/', '基因改造食品檢驗分析服務檢測優惠中- Superlab 台美檢驗科技有限公司'),
(645, '食品藥物管理署基因改造食品查驗管理措施- 衛生福利部全球網站中文版', 'https://www.mohw.gov.tw/cp-2626-19258-1.html', '食品藥物管理署基因改造食品查驗管理措施- 衛生福利部全球網站中文版'),
(646, '基改食品安不安全？ 食藥署為民眾把關| 生活| NOWnews今日新聞', 'https://www.nownews.com/news/20170712/2588069', '基改食品安不安全？ 食藥署為民眾把關| 生活| NOWnews今日新聞'),
(647, '破解謠言：基改食品有毒？！ | CNEWS匯流新聞網', 'https://cnews.com.tw/%E5%9C%96%E7%A0%B4%E8%A7%A3%E8%AC%A0%E8%A8%80%EF%BC%9A%E5%9F%BA%E6%94%B9%E9%A3%9F%E5%93%81%E6%9C%89%E6%AF%92%EF%BC%9F%EF%BC%81/', '破解謠言：基改食品有毒？！ | CNEWS匯流新聞網'),
(648, '網傳包裝條碼「8」開頭是基改食品？食藥署闢謠| 生活| 三立新聞網SETN ...', 'http://www.setn.com/News.aspx?NewsID=227415', '網傳包裝條碼「8」開頭是基改食品？食藥署闢謠| 生活| 三立新聞網SETN ...'),
(649, '狂賀！亞洲大學食安中心再度通過基因改造黃豆國際方法檢驗認證- Asia ...', 'http://als.asia.edu.tw/files/14-1009-46593,r331-1.php?Lang=zh-tw', '狂賀！亞洲大學食安中心再度通過基因改造黃豆國際方法檢驗認證- Asia ...'),
(650, '日本研擬擴大基改食品標示法規範圍| GMO FILE', 'https://nogmolunch.wordpress.com/2017/03/10/%E6%97%A5%E6%9C%AC%E7%A0%94%E6%93%AC%E6%93%B4%E5%A4%A7%E5%9F%BA%E6%94%B9%E9%A3%9F%E5%93%81%E6%A8%99%E7%A4%BA%E6%B3%95%E8%A6%8F%E7%AF%84%E5%9C%8D/', '日本研擬擴大基改食品標示法規範圍| GMO FILE'),
(651, '條碼8開頭、甜玉米、紫地瓜全是基改？食藥署闢謠：錯！若是基改食品會 ...', 'http://www.storm.mg/lifestyle/402202', '條碼8開頭、甜玉米、紫地瓜全是基改？食藥署闢謠：錯！若是基改食品會 ...'),
(652, '牛番茄、甜玉米和紫地瓜都是基因改造不能吃？謠言亂攻擊請問還有什麼 ...', 'http://www.rumtoast.com/4924/%E7%89%9B%E7%95%AA%E8%8C%84%E3%80%81%E7%94%9C%E7%8E%89%E7%B1%B3%E5%92%8C%E7%B4%AB%E5%9C%B0%E7%93%9C%E9%83%BD%E6%98%AF-%E5%9F%BA%E5%9B%A0%E6%94%B9%E9%80%A0-%E4%B8%8D%E8%83%BD%E5%90%83%EF%BC%9F%E8%AC%A0', '牛番茄、甜玉米和紫地瓜都是基因改造不能吃？謠言亂攻擊請問還有什麼 ...'),
(653, '科技農報Science Applied To Farm: 選擇基改食物之前，應該知道的3件事', 'https://gyowadeimia.blogspot.com/2018/01/3.html', '科技農報Science Applied To Farm: 選擇基改食物之前，應該知道的3件事'),
(654, '基因改造食品帶來成就還是破壞？ | 自然| 大紀元', 'http://www.epochtimes.com/b5/13/5/8/n3865593.htm', '基因改造食品帶來成就還是破壞？ | 自然| 大紀元'),
(655, '破除基改食品迷思信者恆信', 'http://cms.altruistictech.org/documents/1488388808.html', '破除基改食品迷思信者恆信'),
(656, '【假食安】可怕的訊息終於宣佈：美國正式宣布了？根本基因改造食物假 ...', 'https://www.mygopen.com/2017/05/blog-post_17.html', '【假食安】可怕的訊息終於宣佈：美國正式宣布了？根本基因改造食物假 ...'),
(657, '【假食安】可怕的訊息終於宣佈：美國正式宣布了？根本基因改造食物假 ...', 'https://www.mygopen.com/2017/05/blog-post_17.html', '【假食安】可怕的訊息終於宣佈：美國正式宣布了？根本基因改造食物假 ...'),
(658, '一顆黃豆揭開基改食品恐怖真相- 搜尋結果- 今周刊', 'https://www.businesstoday.com.tw/search-content?q=%E4%B8%80%E9%A1%86%E9%BB%83%E8%B1%86%20%E6%8F%AD%E9%96%8B%E5%9F%BA%E6%94%B9%E9%A3%9F%E5%93%81%E6%81%90%E6%80%96%E7%9C%9F%E7%9B%B8', '一顆黃豆揭開基改食品恐怖真相- 搜尋結果- 今周刊'),
(659, '「基改」改什麼？ | 土地與生態| 有機智慧| 天天里仁每一天更安心的選擇', 'https://www.leezen.com.tw/article_organic.php?id=382', '「基改」改什麼？ | 土地與生態| 有機智慧| 天天里仁每一天更安心的選擇'),
(660, '[PDF]\n基改食品標示中的符號與隱喻', 'https://scitechvista.nat.gov.tw/goto/a6e3bfafa81076950218eebb7554406ee7600bb0748843ad9e2f01c723251a85.htm', '[PDF]\n基改食品標示中的符號與隱喻'),
(661, '非基改校園午餐行動系列報導期末報告| weReport 調查報導公眾委製平台', 'http://we-report.org/report/10008', '非基改校園午餐行動系列報導期末報告| weReport 調查報導公眾委製平台'),
(662, '條碼\'8\'開頭是基改食品還有毒? 食藥署闢謠了- 華視新聞網', 'http://news.cts.com.tw/cts/life/201802/201802261915055.html', '條碼\'8\'開頭是基改食品還有毒? 食藥署闢謠了- 華視新聞網'),
(663, '有機農業全球資訊網-- 台灣基改食品標示新制說明20160803', 'http://info.organic.org.tw/supergood/front/bin/ptdetail.phtml?Part=20160803', '有機農業全球資訊網-- 台灣基改食品標示新制說明20160803'),
(664, '基改食品原料須經安全評估- Yahoo奇摩新聞', 'https://tw.news.yahoo.com/%E5%9F%BA%E6%94%B9%E9%A3%9F%E5%93%81%E5%8E%9F%E6%96%99-%E9%A0%88%E7%B6%93%E5%AE%89%E5%85%A8%E8%A9%95%E4%BC%B0-160000120.html', '基改食品原料須經安全評估- Yahoo奇摩新聞'),
(665, '科學的造化是福還是禍?一起認識基改食品的風險，揭開基改食品的秘密 ...', 'https://www.wetalk.tw/thread-32852-1-1.html', '科學的造化是福還是禍?一起認識基改食品的風險，揭開基改食品的秘密 ...'),
(666, '台反基改遭美列「貿易障礙」 民團遊行籲政府堅守立場| 焦點事件', 'http://www.eventsinfocus.org/news/1785', '台反基改遭美列「貿易障礙」 民團遊行籲政府堅守立場| 焦點事件'),
(667, '博客來-人造恐慌：擊破謠言和謬誤，告訴你真實的「基改食品」與「有機 ...', 'http://www.books.com.tw/products/0010739312', '博客來-人造恐慌：擊破謠言和謬誤，告訴你真實的「基改食品」與「有機 ...'),
(668, '[PDF]\n投稿類別:生物類篇名: 基因改造食品：植物篇作者: 王乙安。員林高中 ...', 'http://www.shs.edu.tw/works/essay/2013/10/2013101715041465.pdf', '[PDF]\n投稿類別:生物類篇名: 基因改造食品：植物篇作者: 王乙安。員林高中 ...'),
(669, '基因改造食品是飲鴆止渴還是終極解藥？', 'http://www.taiwanngo.tw/m/405-1000-30534,c1.php', '基因改造食品是飲鴆止渴還是終極解藥？'),
(670, '基改食品究竟安全嗎？ | GeneOnline News', 'http://geneonline.news/index.php/2016/06/01/genetically-engineered-crops/', '基改食品究竟安全嗎？ | GeneOnline News'),
(671, '[PDF]\n基因改造食品管理與檢驗訓練班簡章 - 食品工業發展研究所', 'http://train.firdi.org.tw/tsci/Doc/106B202.pdf', '[PDF]\n基因改造食品管理與檢驗訓練班簡章 - 食品工業發展研究所'),
(672, '比爾蓋茲：基因改造食品安全無害，對反對聲音非常失望- 明日科學', 'https://tomorrowsci.com/science/%E6%AF%94%E7%88%BE%E8%93%8B%E8%8C%B2%EF%BC%9A%E5%9F%BA%E5%9B%A0%E6%94%B9%E9%80%A0%E9%A3%9F%E5%93%81%E5%AE%89%E5%85%A8%E7%84%A1%E5%AE%B3%EF%BC%8C%E5%B0%8D%E5%8F%8D%E5%B0%8D%E8%81%B2%E9%9F%B3%E9%9D%9E/', '比爾蓋茲：基因改造食品安全無害，對反對聲音非常失望- 明日科學'),
(673, '迷霧中的基改食品審核資訊– 新公民議會', 'http://newcongress.tw/?p=9966', '迷霧中的基改食品審核資訊– 新公民議會'),
(674, '餐廳標示基改原料資訊透明更安心(食品安全資訊網-食品廣播站) - 行政院', 'https://www.ey.gov.tw/ofs/News_Content.aspx?n=BC949AD21F235EC7&sms=4326217BEFADD6FB&s=426855188B72D9EC', '餐廳標示基改原料資訊透明更安心(食品安全資訊網-食品廣播站) - 行政院'),
(675, '什麼是基因改造食品? 基改食品檢驗方式與國內法規@ 微杏基因生醫 ...', 'http://vaccigen2014.pixnet.net/blog/post/140443908-%E9%97%9C%E6%96%BC%E5%9F%BA%E5%9B%A0%E6%94%B9%E9%80%A0%E9%A3%9F%E5%93%81%E8%88%87%E5%9F%BA%E6%94%B9%E9%A3%9F%E5%93%81%E7%9A%84%E6%AA%A2%E9%A9%97', '什麼是基因改造食品? 基改食品檢驗方式與國內法規@ 微杏基因生醫 ...'),
(676, '稽查食品製售業基改與非基改食品原料來源 - 高雄市政府衛生局', 'http://khd.kcg.gov.tw/Main.aspx?sn=398&mt=14&gs=20082', '稽查食品製售業基改與非基改食品原料來源 - 高雄市政府衛生局'),
(677, '[PDF]\n基改食品的安全 - 國內學術電子期刊系統', 'http://ejournal.stpi.narl.org.tw/sd/download?source=10407/10407-03.pdf&vlId=6BEE0415-A6BE-4713-8967-08EAA6C64AAF&nd=0&ds=0', '[PDF]\n基改食品的安全 - 國內學術電子期刊系統'),
(678, '除了黃豆、玉米，台灣還有進口哪些「基改作物」？一次搞清楚！(基因改造 ...', 'https://health.businessweekly.com.tw/AArticle.aspx?id=ARTL000062330', '除了黃豆、玉米，台灣還有進口哪些「基改作物」？一次搞清楚！(基因改造 ...'),
(679, '吃基改食品傷身？ | 科學的養生保健', 'https://professorlin.com/2016/11/23/%E5%90%83%E5%9F%BA%E6%94%B9%E9%A3%9F%E5%93%81%E5%82%B7%E8%BA%AB%EF%BC%9F/', '吃基改食品傷身？ | 科學的養生保健'),
(680, '基改食物大解密！採買非基改食品5大指南|早安健康', 'https://www.everydayhealth.com.tw/article/10562', '基改食物大解密！採買非基改食品5大指南|早安健康'),
(681, '基改，反什麼？5個基因改造的農業迷思｜環境｜環境｜2016-11-13｜泛 ...', 'https://www.cw.com.tw/article/article.action?id=5079394', '基改，反什麼？5個基因改造的農業迷思｜環境｜環境｜2016-11-13｜泛 ...'),
(682, '常見「十大基改食物」暗藏健康隱憂！「餅乾、泡麵、嬰兒麥粉」全 - 每日健康', 'https://healthylives.tw/article/Z5A5X2ccQLQ.html', '常見「十大基改食物」暗藏健康隱憂！「餅乾、泡麵、嬰兒麥粉」全 - 每日健康'),
(683, '餐桌上的正義：每一口基改食物都是倫理選擇- 黃嘉琳- 新使者雜誌The ...', 'http://newmsgr.pct.org.tw/Magazine.aspx?strTID=1&strISID=152&strMAGID=M2016022303949', '餐桌上的正義：每一口基改食物都是倫理選擇- 黃嘉琳- 新使者雜誌The ...'),
(684, '基因改造食品大舉入侵生活影響的不只健康，還有生態、倫理與宗教危機 ...', 'https://news.readmoo.com/2015/02/10/genetic-science/', '基因改造食品大舉入侵生活影響的不只健康，還有生態、倫理與宗教危機 ...'),
(685, '基改食品標示美國行台灣不行？ | 想想論壇', 'http://www.thinkingtaiwan.com/content/5376', '基改食品標示美國行台灣不行？ | 想想論壇'),
(686, '美政府表態大陸基因改造食品安全再成焦點| 基因改造| 基改| 除草劑 ...', 'http://www.epochtimes.com.tw/n176166/%E7%BE%8E%E6%94%BF%E5%BA%9C%E8%A1%A8%E6%85%8B-%E5%A4%A7%E9%99%B8%E5%9F%BA%E5%9B%A0%E6%94%B9%E9%80%A0%E9%A3%9F%E5%93%81%E5%AE%89%E5%85%A8%E5%86%8D%E6%88%90%E7%84%A6%E9%BB%9E.html', '美政府表態大陸基因改造食品安全再成焦點| 基因改造| 基改| 除草劑 ...'),
(687, '基改食物潛藏風險您不可不知| 專題報導| 養生保健| 華人健康網', 'https://www.top1health.com/Article/25427', '基改食物潛藏風險您不可不知| 專題報導| 養生保健| 華人健康網'),
(688, '基改食品知多少？ 作者：臺大醫學院毒理學研究所副教授/毒物學學會 ...', 'http://epaper.ntuh.gov.tw/health/201412/special_1_1.html', '基改食品知多少？ 作者：臺大醫學院毒理學研究所副教授/毒物學學會 ...'),
(689, '[PDF]\n基改食品標示制度對經濟及產業之影響評估 - 生物科技產業研究中心', 'http://www.biotaiwan.org.tw/download/aboutchief2/104/3.%E5%9F%BA%E6%94%B9%E9%A3%9F%E5%93%81%E6%A8%99%E7%A4%BA%E5%88%B6%E5%BA%A6%E5%B0%8D%E7%B6%93%E6%BF%9F%E5%8F%8A%E7%94%A2%E6%A5%AD%E4%B9%8B%E5%BD%B1%E9%9F%BF%E8%A9%95%E4%BC%B0.pdf', '[PDF]\n基改食品標示制度對經濟及產業之影響評估 - 生物科技產業研究中心'),
(690, '【財經專欄：農業診斷】農業GMO基改食品| 民報Taiwan People News', 'http://www.peoplenews.tw/news/6aa0d72c-835e-4b71-ac68-758b15b773b6', '【財經專欄：農業診斷】農業GMO基改食品| 民報Taiwan People News'),
(691, '別輕易吃下基改食物| 綠色和平－臺灣網站 - Greenpeace USA', 'http://www.greenpeace.org/taiwan/zh/news/stories/food-agriculture/2013/no-trust-GE-food/', '別輕易吃下基改食物| 綠色和平－臺灣網站 - Greenpeace USA'),
(692, '數字真偽？還傻傻相信條碼「8」是基改食品– 媽媽經｜專屬於媽媽的網站', 'https://mamaclub.com/learn/%E6%95%B8%E5%AD%97%E7%9C%9F%E5%81%BD%EF%BC%9F%E9%82%84%E5%82%BB%E5%82%BB%E7%9B%B8%E4%BF%A1%E6%A2%9D%E7%A2%BC%E3%80%8C8%E3%80%8D%E6%98%AF%E5%9F%BA%E6%94%B9%E9%A3%9F%E5%93%81/', '數字真偽？還傻傻相信條碼「8」是基改食品– 媽媽經｜專屬於媽媽的網站'),
(693, '條碼8開頭是基改食品食藥署：謠言| 生活| 重點新聞| 中央社CNA', 'http://www.cna.com.tw/news/firstnews/201605010171-1.aspx', '條碼8開頭是基改食品食藥署：謠言| 生活| 重點新聞| 中央社CNA'),
(694, '基因改造食物利與弊| - 淨毒五郎生活百科', 'https://media.chef-clean.com/660/science-14', '基因改造食物利與弊| - 淨毒五郎生活百科'),
(695, '基改食品的疑慮｜天然食材基改篇2 | 健談havemary.com－用健康漫畫 ...', 'http://www.havemary.com/article.php?id=3633', '基改食品的疑慮｜天然食材基改篇2 | 健談havemary.com－用健康漫畫 ...'),
(696, '我們為何需要基改糧食? - 出版品- 工研院中文版 - 工業技術研究院', 'https://www.itri.org.tw/chi/Content/Publications/contents.aspx?&SiteID=1&MmmID=2000&MSid=621022615710646557', '我們為何需要基改糧食? - 出版品- 工研院中文版 - 工業技術研究院'),
(697, '台灣主婦聯盟生活消費合作社– OMG！基改食物揭密之旅', 'https://www.hucc-coop.tw/13713', '台灣主婦聯盟生活消費合作社– OMG！基改食物揭密之旅'),
(698, '告訴你什麼能安心吃：避免基改食品風險的8個原則- 第三媒體', 'http://3media.tw/index.php/2015/12/08/cul-food/', '告訴你什麼能安心吃：避免基改食品風險的8個原則- 第三媒體'),
(699, '基改世代: 基因改造的發展、爭議與規範 - 第 161 頁 - Google 圖書結果', 'https://books.google.com.tw/books?id=ufxJDwAAQBAJ&pg=PA161&lpg=PA161&dq=%E5%9F%BA%E6%94%B9%E9%A3%9F%E5%93%81&source=bl&ots=m6UZ7oexCD&sig=61FO6faLbHwDIcfZaSlzNKqJe-c&hl=zh-TW&sa=X&ved=0ahUKEwji2KSStuvZAhUMzLwKHapsAdA4WhDoAQg0MAI', '基改世代: 基因改造的發展、爭議與規範 - 第 161 頁 - Google 圖書結果'),
(700, '隱藏版基改食品！ - 國際黃金時代團隊', 'https://www.golden-ages.org/2015/03/23/0923/', '隱藏版基改食品！ - 國際黃金時代團隊'),
(701, '[PDF]\n我國基因改造食品標示規定修正草案與TBT 協定之合致性', 'http://www.tradelaw.nccu.edu.tw/epaper/no176/4.pdf', '[PDF]\n我國基因改造食品標示規定修正草案與TBT 協定之合致性'),
(702, '[PDF]\n基改食品之優點與爭議 - 中國文化大學保健營養學系', 'http://crffhn.pccu.edu.tw/bin/downloadfile.php?file=WVhSMFlXTm9MelF4TDNCMFlWOHhPVFE1TWw4ek9EQXlNekF4WHpVd05ESTBMbkJrWmc9PQ==&fname=NVorNjVwUzU2YU9mNVpPQjVMbUw1WVNxNmJ1ZTZJaUg1NGl0NksydzZLeWI1NzZwSUNnd05URXlLU0F1Y0dSbQ==', '[PDF]\n基改食品之優點與爭議 - 中國文化大學保健營養學系'),
(703, '政府把關高舉輕放基改食品的恐怖真相| 生活| 新頭殼Newtalk', 'https://newtalk.tw/news/view/2015-05-06/59813', '政府把關高舉輕放基改食品的恐怖真相| 生活| 新頭殼Newtalk'),
(704, '「學校衛生法」第5條 - 教育部學校衛生資訊網', 'https://cpd.moe.gov.tw/article-info.php?id=293', '「學校衛生法」第5條 - 教育部學校衛生資訊網'),
(705, '基改食物風險: 從未控制! | 10/10 HOPE 希望生活誌', 'https://www.1010hope.com/blog/%E5%9F%BA%E6%94%B9%E9%A3%9F%E7%89%A9%E9%A2%A8%E9%9A%AA-%E5%BE%9E%E6%9C%AA%E6%8E%A7%E5%88%B6/', '基改食物風險: 從未控制! | 10/10 HOPE 希望生活誌'),
(706, '從黃豆談基因改造食物 - 琉璃光養生世界', 'http://www.lapislazuli.org/tw/index.php?p=20120803.html', '從黃豆談基因改造食物 - 琉璃光養生世界');

-- --------------------------------------------------------

--
-- 資料表結構 `tester_list`
--

CREATE TABLE `tester_list` (
  `tester_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `avtivity_id` int(11) NOT NULL,
  `chatroom_id` int(11) NOT NULL DEFAULT '-1',
  `group_score` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `tester_list`
--

INSERT INTO `tester_list` (`tester_id`, `user_id`, `avtivity_id`, `chatroom_id`, `group_score`) VALUES
(1, 2, 1, 36, -1),
(2, 3, 1, 36, 9),
(3, 4, 1, 36, -1),
(4, 2, 2, 24, 1),
(5, 3, 2, 23, -1),
(6, 1, 4, -1, 2),
(7, 2, 3, -1, 3),
(8, 3, 3, -1, 4),
(9, 4, 3, -1, 6),
(10, 2, 5, -1, -1),
(11, 3, 5, -1, 1),
(12, 4, 5, -1, -1),
(13, -300, -1, -1, -1),
(14, -301, -1, -1, -1),
(15, -300, -1, -1, -1),
(16, -301, -1, -1, -1),
(17, -300, -1, -1, -1),
(18, -301, -1, -1, -1),
(19, 300, -1, -1, -1),
(20, 301, -1, -1, -1),
(21, 1, 6, 37, -1),
(22, 9, 7, 38, -1),
(23, 11, 8, 39, -1),
(24, 12, 8, 39, -1),
(25, 13, 8, 44, 10),
(26, 14, 8, -1, -1),
(27, 15, 9, -1, -1),
(28, 16, 9, -1, -1),
(29, 19, 11, 41, -1),
(30, 20, 11, 40, -1),
(31, 21, 11, 40, -1),
(32, 22, 11, -1, 5),
(33, 11, 8, -1, -1),
(34, 12, 8, -1, -1),
(35, 13, 8, -1, -1),
(36, 14, 8, -1, -1),
(37, 15, 8, 44, -1),
(38, 11, 12, 43, -1),
(39, 12, 12, 42, -1),
(40, 13, 12, 42, -1),
(41, 11, 8, -1, -1),
(42, 12, 8, -1, -1),
(43, 13, 8, -1, -1),
(44, 14, 8, -1, -1),
(45, 15, 8, -1, -1),
(46, 16, 8, -1, -1);

-- --------------------------------------------------------

--
-- 資料表結構 `topic_list`
--

CREATE TABLE `topic_list` (
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `topic_list`
--

INSERT INTO `topic_list` (`topic_id`, `user_id`, `content`) VALUES
(1, 1, '〔記者陳心瑜／新北報導〕新修勞基法放寬7休1、延長每月加班上限、輪班間隔有條件縮短及加班換補休等規定，勞動部近期將召集地方勞政機關蒐集意見，釐清條文內容，新北市政府勞工局提出「加班換補休範圍明確化」、「提升勞資會議法律位階」和「明定未休日數折算工資標準」等建議。呼籲勞動部應於施行細則規範配套措施，或者提升位階直接入法，才能讓地方政府執行勞檢有所依循，勞資也能清楚相關規定。'),
(2, 2, 'HTTP 狀態碼表明一個 HTTP 要求是否已經被完成。回應分為五種：資訊回應、成功回應、重定向、用戶端錯誤及伺服器端錯誤。'),
(3, -1, 'Topic Content'),
(4, 8, '關於資本社會與儒家社會文化之矛盾'),
(5, 10, '擁核、反核，對此外界一直爭論不休，擁核者多半拿經濟效益說服大眾，反核者一再強調不能承擔核災風險。亞洲各國在未來十年會是大力快展核電的地區，但如南韓、日本及台灣等地區，政府發展核電都遭到民間強烈反對。惟多國民調顯示，民眾都願意提高電費以支持政府發展可再生能源，但在現時技術仍未成熟的情況下，政府仍需與民眾協商既安全亦穩定的能源組合。'),
(6, 10, '大學入學考招新制明年起逐步上路，為保障高三生完整學習，大考招聯會將繁星推薦及個人申請從3到5月延後至5到6月，作業時程從原本5周壓縮至3周。有不少大學擔憂，恐造成各校衝堂率提升。根據最新大學入學統計資料顯示，明年有逾5成學校集中在第一周辦理個人申請二階甄試，一天最高達647校系；每名考生雖可申請6所校系，但考量衝堂，可能將被迫捨棄機會。'),
(7, 11, '123'),
(8, 11, '臺灣目前核能中利益與安全該怎麼取捨?'),
(9, 18, '小學生是否應該從小學開始學習外語'),
(10, 10, '你是否支持台灣興建核電廠，以解決供電不足的問題？');

-- --------------------------------------------------------

--
-- 資料表結構 `user_contact_list`
--

CREATE TABLE `user_contact_list` (
  `id` int(11) NOT NULL,
  `main_user_id` int(11) NOT NULL,
  `sub_user_id` int(11) NOT NULL,
  `contact` int(11) NOT NULL COMMENT '1:屬於'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `user_contact_list`
--

INSERT INTO `user_contact_list` (`id`, `main_user_id`, `sub_user_id`, `contact`) VALUES
(1, 1, 2, 1),
(2, 1, 3, 1),
(3, 1, 4, 1),
(4, 2, -1, 1),
(5, 2, -1, 1),
(6, 2, 1, 1),
(7, 3, 1, 1),
(8, 1, 6, 1),
(9, 1, 5, 1),
(10, 5, 4, 1),
(11, 8, 9, 1),
(12, 10, 11, 1),
(13, 10, 12, 1),
(14, 10, 13, 1),
(15, 10, 14, 1),
(16, 10, 15, 1),
(17, 10, 16, 1),
(18, 18, 19, 1),
(19, 18, 20, 1),
(20, 18, 21, 1),
(21, 18, 22, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `user_list`
--

CREATE TABLE `user_list` (
  `user_id` int(11) NOT NULL,
  `mail` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pws` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `user_list`
--

INSERT INTO `user_list` (`user_id`, `mail`, `pws`) VALUES
(1, 'gavin19950511@gmail.com', 'gavin84'),
(2, 'stu-1@mail.com', 'stu-1@mail.com'),
(3, 'stu-2@mail.com', 'stu-2@mail.com'),
(4, 'stu-3@mail.com', 'stu-3@mail.com'),
(5, 'stu-4@mail.com', 'stu-4@mail.com'),
(6, 'stu-5@mail.com', 'stu-5@mail.com'),
(8, 'testmail@mail.com', 'testmail@mail.com'),
(9, 'stu-11@mail.com', 'stu-11@mail.com'),
(10, 'teacherfordemo1@mail.com', 'teacherfordemo1@mail.com'),
(11, 'studentfordemo1@mail.com', 'studentfordemo1@mail.com'),
(12, 'studentfordemo2@mail.com', 'studentfordemo2@mail.com'),
(13, 'studentfordemo3@mail.com', 'studentfordemo3@mail.com'),
(14, 'studentfordemo4@mail.com', 'studentfordemo4@mail.com'),
(15, 'studentfordemo5@mail.com', 'studentfordemo5@mail.com'),
(16, 'studentfordemo6@mail.com', 'studentfordemo6@mail.com'),
(17, 'teacherfordemo2@mail.com', 'teacherfordemo2@mail.com'),
(18, 'teacherfordemo3@mail.com', 'teacherfordemo3@mail.com'),
(19, 'studentfordemo7@mail.com', 'studentfordemo7@mail.com'),
(20, 'studentfordemo8@mail.com', 'studentfordemo8@mail.com'),
(21, 'studentfordemo9@mail.com', 'studentfordemo9@mail.com'),
(22, 'studentfordemo10@mail.com', 'studentfordemo10@mail.com');

-- --------------------------------------------------------

--
-- 資料表結構 `user_list_public_data`
--

CREATE TABLE `user_list_public_data` (
  `user_id` int(11) NOT NULL,
  `school` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `user_list_public_data`
--

INSERT INTO `user_list_public_data` (`user_id`, `school`, `name`, `birthday`) VALUES
(1, '中央大學網學所', '王君善', '2018-01-11'),
(2, 'stu-1 s', 'stu-1 n', '2018-01-11'),
(3, 'stu-2 s', 'stu-2 n', '2010-02-03'),
(4, 'stu-3 s', 'stu-3 n', '2011-02-03'),
(5, 'stu-4 s', 'stu-4 n', '2018-01-11'),
(6, 'stu-5 s', 'stu-5 n', '2018-01-11'),
(8, '中正國中', '林老師', '2013-05-08'),
(9, '中正國中', '王同學', '2018-01-11'),
(10, '示範大學', '1號老師', '2018-01-11'),
(11, '示範大學', '一號學生', '2018-01-06'),
(12, '第二示範大學', '二號學生', '2018-01-06'),
(13, '示範大學', '三號學生', '2018-01-11'),
(14, '示範大學', '四號學生', '2018-01-11'),
(15, '第二示範大學', '五號學生', '1995-05-04'),
(16, '示範大學', '六號學生', '2011-01-11'),
(17, '第二示範大學', '鄂老師', '2018-01-11'),
(18, '第三示範大學', '参老師', '1995-05-11'),
(19, '第三示範大學', '柒學生', '2018-01-11'),
(20, '第三示範大學', '笆學生', '2018-01-11'),
(21, '第三示範大學', '玖學生', '2018-01-11'),
(22, '第三示範大學', '拾同學', '2018-01-11');

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
-- 資料表索引 `references_for_search`
--
ALTER TABLE `references_for_search`
  ADD PRIMARY KEY (`references_id`);

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
-- 資料表索引 `user_contact_list`
--
ALTER TABLE `user_contact_list`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- 資料表索引 `user_list_public_data`
--
ALTER TABLE `user_list_public_data`
  ADD PRIMARY KEY (`user_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `actionDoc_list`
--
ALTER TABLE `actionDoc_list`
  MODIFY `actionDoc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- 使用資料表 AUTO_INCREMENT `action_list`
--
ALTER TABLE `action_list`
  MODIFY `action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- 使用資料表 AUTO_INCREMENT `activity_list`
--
ALTER TABLE `activity_list`
  MODIFY `avtivity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用資料表 AUTO_INCREMENT `assessment_list`
--
ALTER TABLE `assessment_list`
  MODIFY `assessment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用資料表 AUTO_INCREMENT `chatroom_list`
--
ALTER TABLE `chatroom_list`
  MODIFY `chatroom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- 使用資料表 AUTO_INCREMENT `references_for_search`
--
ALTER TABLE `references_for_search`
  MODIFY `references_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=707;
--
-- 使用資料表 AUTO_INCREMENT `tester_list`
--
ALTER TABLE `tester_list`
  MODIFY `tester_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- 使用資料表 AUTO_INCREMENT `topic_list`
--
ALTER TABLE `topic_list`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用資料表 AUTO_INCREMENT `user_contact_list`
--
ALTER TABLE `user_contact_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- 使用資料表 AUTO_INCREMENT `user_list`
--
ALTER TABLE `user_list`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
