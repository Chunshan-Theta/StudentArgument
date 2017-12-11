-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2017 年 12 月 11 日 14:33
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
-- 資料表結構 `ActivityList`
--

CREATE TABLE `ActivityList` (
  `ActivityId` int(11) NOT NULL,
  `TeacherId` int(11) NOT NULL,
  `TopicId` int(11) NOT NULL,
  `QuestionNaireId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `ActivityMemberList`
--

CREATE TABLE `ActivityMemberList` (
  `MemberId` int(11) NOT NULL,
  `StuId` int(11) NOT NULL,
  `ActivityId` int(11) NOT NULL,
  `ChatroomId` int(11) DEFAULT NULL,
  `Group` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `BehaviorDoc`
--

CREATE TABLE `BehaviorDoc` (
  `BehaviorId` int(11) NOT NULL,
  `BehaviorContent` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `ChatroomList`
--

CREATE TABLE `ChatroomList` (
  `ChatroomId` int(11) NOT NULL,
  `ActivityId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `MemberBehaviorList`
--

CREATE TABLE `MemberBehaviorList` (
  `MemberBehaviorId` int(11) NOT NULL,
  `BehaviorId` int(11) NOT NULL,
  `MemberId` int(11) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `QuestionNaire`
--

CREATE TABLE `QuestionNaire` (
  `QuestionNaireId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `StudentList`
--

CREATE TABLE `StudentList` (
  `StuId` int(11) NOT NULL,
  `TeacherId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `TeacherList`
--

CREATE TABLE `TeacherList` (
  `TeacherId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `TopicDoc`
--

CREATE TABLE `TopicDoc` (
  `TopicId` int(11) NOT NULL,
  `TopicContent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `ActivityList`
--
ALTER TABLE `ActivityList`
  ADD PRIMARY KEY (`ActivityId`);

--
-- 資料表索引 `ActivityMemberList`
--
ALTER TABLE `ActivityMemberList`
  ADD PRIMARY KEY (`MemberId`);

--
-- 資料表索引 `BehaviorDoc`
--
ALTER TABLE `BehaviorDoc`
  ADD PRIMARY KEY (`BehaviorId`);

--
-- 資料表索引 `ChatroomList`
--
ALTER TABLE `ChatroomList`
  ADD PRIMARY KEY (`ChatroomId`);

--
-- 資料表索引 `MemberBehaviorList`
--
ALTER TABLE `MemberBehaviorList`
  ADD PRIMARY KEY (`MemberBehaviorId`);

--
-- 資料表索引 `QuestionNaire`
--
ALTER TABLE `QuestionNaire`
  ADD PRIMARY KEY (`QuestionNaireId`);

--
-- 資料表索引 `StudentList`
--
ALTER TABLE `StudentList`
  ADD PRIMARY KEY (`StuId`);

--
-- 資料表索引 `TeacherList`
--
ALTER TABLE `TeacherList`
  ADD PRIMARY KEY (`TeacherId`);

--
-- 資料表索引 `TopicDoc`
--
ALTER TABLE `TopicDoc`
  ADD PRIMARY KEY (`TopicId`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `ActivityList`
--
ALTER TABLE `ActivityList`
  MODIFY `ActivityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用資料表 AUTO_INCREMENT `ActivityMemberList`
--
ALTER TABLE `ActivityMemberList`
  MODIFY `MemberId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用資料表 AUTO_INCREMENT `BehaviorDoc`
--
ALTER TABLE `BehaviorDoc`
  MODIFY `BehaviorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用資料表 AUTO_INCREMENT `ChatroomList`
--
ALTER TABLE `ChatroomList`
  MODIFY `ChatroomId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用資料表 AUTO_INCREMENT `MemberBehaviorList`
--
ALTER TABLE `MemberBehaviorList`
  MODIFY `MemberBehaviorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用資料表 AUTO_INCREMENT `QuestionNaire`
--
ALTER TABLE `QuestionNaire`
  MODIFY `QuestionNaireId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `StudentList`
--
ALTER TABLE `StudentList`
  MODIFY `StuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用資料表 AUTO_INCREMENT `TeacherList`
--
ALTER TABLE `TeacherList`
  MODIFY `TeacherId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `TopicDoc`
--
ALTER TABLE `TopicDoc`
  MODIFY `TopicId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
