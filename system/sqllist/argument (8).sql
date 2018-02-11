-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2018 年 02 月 07 日 20:39
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
(11, -1, -1, '2018-02-05 15:09:39', 'API測試', '2001-01-01 00:20:00');

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
(5, 1, 1, '1-1517353429', '2018-03-10');

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
(11, 'question', 1);

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
(31, -1);

-- --------------------------------------------------------

--
-- 資料表結構 `references_for_search`
--

CREATE TABLE `references_for_search` (
  `references_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `memo` varchar(10) COLLATE utf8_unicode_ci NOT NULL
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
(8, 'connect to GitHub', 'https://studentcodebank.wordpress.com/2017/08/30/github-connect-to-github/', 'theta');

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
(1, 2, 1, 29, -1),
(2, 3, 1, 28, 9),
(3, 4, 1, 28, -1),
(4, 2, 2, 24, 1),
(5, 3, 2, 23, -1),
(6, 1, 4, -1, 2),
(7, 2, 3, -1, -1),
(8, 3, 3, -1, 4),
(9, 4, 3, -1, -1),
(10, 2, 5, -1, -1),
(11, 3, 5, -1, 1),
(12, 4, 5, -1, -1),
(13, -300, -1, -1, -1),
(14, -301, -1, -1, -1);

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
(3, -1, 'Topic Content');

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
(9, 1, 5, 1);

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
(6, 'stu-5@mail.com', 'stu-5@mail.com');

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
(6, 'stu-5 s', 'stu-5 n', '2018-01-11');

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
  MODIFY `action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用資料表 AUTO_INCREMENT `activity_list`
--
ALTER TABLE `activity_list`
  MODIFY `avtivity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用資料表 AUTO_INCREMENT `assessment_list`
--
ALTER TABLE `assessment_list`
  MODIFY `assessment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用資料表 AUTO_INCREMENT `chatroom_list`
--
ALTER TABLE `chatroom_list`
  MODIFY `chatroom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- 使用資料表 AUTO_INCREMENT `references_for_search`
--
ALTER TABLE `references_for_search`
  MODIFY `references_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用資料表 AUTO_INCREMENT `tester_list`
--
ALTER TABLE `tester_list`
  MODIFY `tester_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用資料表 AUTO_INCREMENT `topic_list`
--
ALTER TABLE `topic_list`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用資料表 AUTO_INCREMENT `user_contact_list`
--
ALTER TABLE `user_contact_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用資料表 AUTO_INCREMENT `user_list`
--
ALTER TABLE `user_list`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
