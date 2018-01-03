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



/*template

-- ---------------------------------------------------------
-- 資料表結構 `Activity`
--

-- `id` int(11) NOT NULL,
-- `num` int(11) NOT NULL DEFAULT '-1',
-- `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- `string` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL


CREATE TABLE `Activity` (
  `activity_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




--
-- 資料表索引 `Activity`
--
ALTER TABLE `Activity`
  ADD PRIMARY KEY (`activity_Id`);


-- 使用資料表 AUTO_INCREMENT `Activity`
--
ALTER TABLE `Activity`
  MODIFY `activity_Id` int(11) NOT NULL AUTO_INCREMENT;
-- --------------------------------------------------------
*/




-- ---------------------------------------------------------
-- 資料表結構 `user_list`
--

CREATE TABLE `user_list` (
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- 資料表索引 `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`user_id`);


-- 使用資料表 AUTO_INCREMENT `user_list`
--
ALTER TABLE `user_list`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
-- --------------------------------------------------------


-- ---------------------------------------------------------
-- 資料表結構 `topic`
--

CREATE TABLE `topic_list` (
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- 資料表索引 `topic`
--
ALTER TABLE `topic_list`
  ADD PRIMARY KEY (`topic_id`);


-- 使用資料表 AUTO_INCREMENT `topic`
--
ALTER TABLE `topic_list`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT;
-- --------------------------------------------------------


-- ---------------------------------------------------------
-- 資料表結構 `activity`
--

-- `id` int(11) NOT NULL,
-- `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- `string` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL


CREATE TABLE `activity_list` (
  `avtivity_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `assessment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




--
-- 資料表索引 `activity`
--
ALTER TABLE `activity_list`
  ADD PRIMARY KEY (`avtivity_id`);


-- 使用資料表 AUTO_INCREMENT `activity`
--
ALTER TABLE `activity_list`
  MODIFY `avtivity_id` int(11) NOT NULL AUTO_INCREMENT;
-- --------------------------------------------------------



-- ---------------------------------------------------------
-- 資料表結構 `question`
--

-- `id` int(11) NOT NULL,
-- `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- `string` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL


CREATE TABLE `assessment_list` (
  `assessment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




--
-- 資料表索引 `question`
--
ALTER TABLE `assessment_list`
  ADD PRIMARY KEY (`assessment_id`);


-- 使用資料表 AUTO_INCREMENT `question`
--
ALTER TABLE `assessment_list`
  MODIFY `assessment_id` int(11) NOT NULL AUTO_INCREMENT;
-- --------------------------------------------------------
-- ---------------------------------------------------------
-- 資料表結構 `tester`
--

-- `id` int(11) NOT NULL,
-- `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- `string` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL


CREATE TABLE `tester_list` (
  `tester_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `avtivity_id` int(11) NOT NULL,
  `chatroom_id` int(11) NOT NULL DEFAULT '-1',
  `group` int(2) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




--
-- 資料表索引 `tester`
--
ALTER TABLE `tester_list`
  ADD PRIMARY KEY (`tester_id`);


-- 使用資料表 AUTO_INCREMENT `tester`
--
ALTER TABLE `tester_list`
  MODIFY `tester_id` int(11) NOT NULL AUTO_INCREMENT;
-- --------------------------------------------------------


-- ---------------------------------------------------------
-- 資料表結構 `chatroom`
--

-- `id` int(11) NOT NULL,
-- `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- `string` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL


CREATE TABLE `chatroom_list` (
  `chatroom_id` int(11) NOT NULL,
  `avtivity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




--
-- 資料表索引 `chatroom`
--
ALTER TABLE `chatroom_list`
  ADD PRIMARY KEY (`chatroom_id`);


-- 使用資料表 AUTO_INCREMENT `chatroom`
--
ALTER TABLE `chatroom_list`
  MODIFY `chatroom_id` int(11) NOT NULL AUTO_INCREMENT;
-- --------------------------------------------------------
-- ---------------------------------------------------------
-- 資料表結構 `actionDoc`
--

-- `id` int(11) NOT NULL,
-- `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- `string` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL


CREATE TABLE `actionDoc_list` (
  `actionDoc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




--
-- 資料表索引 `actionDoc`
--
ALTER TABLE `actionDoc_list`
  ADD PRIMARY KEY (`actionDoc_id`);


-- 使用資料表 AUTO_INCREMENT `actionDoc`
--
ALTER TABLE `actionDoc_list`
  MODIFY `actionDoc_id` int(11) NOT NULL AUTO_INCREMENT;
-- --------------------------------------------------------
-- ---------------------------------------------------------
-- 資料表結構 `action`
--

-- `id` int(11) NOT NULL,
-- `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- `string` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL


CREATE TABLE `action_list` (
  `action_id` int(11) NOT NULL,
  `actionDoc_id` int(11) NOT NULL,
  `tester_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




--
-- 資料表索引 `action`
--
ALTER TABLE `action_list`
  ADD PRIMARY KEY (`action_id`);


-- 使用資料表 AUTO_INCREMENT `action`
--
ALTER TABLE `action_list`
  MODIFY `action_id` int(11) NOT NULL AUTO_INCREMENT;
-- --------------------------------------------------------
