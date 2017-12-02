SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- template
-- CREATE TABLE `StudentList` (
--  `StuId` int(11) NOT NULL,
--  `ActionContent` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
--  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- ALTER TABLE `StudentList` ADD PRIMARY KEY (`StuId`);
-- ALTER TABLE `StudentList` MODIFY `StuId` int(11) NOT NULL AUTO_INCREMENT;






-- 學生列表 ->  : StudentList

CREATE TABLE `StudentList` (
  `StuId` int(11) NOT NULL,
  `TeacherId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
ALTER TABLE `StudentList` ADD PRIMARY KEY (`StuId`);
ALTER TABLE `StudentList` MODIFY `StuId` int(11) NOT NULL AUTO_INCREMENT;


-- 教師列表 ->  : TeacherList

CREATE TABLE `TeacherList` (
  `TeacherId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
ALTER TABLE `TeacherList` ADD PRIMARY KEY (`TeacherId`);
ALTER TABLE `TeacherList` MODIFY `TeacherId` int(11) NOT NULL AUTO_INCREMENT;


-- 列表 ->  : ActivityList

CREATE TABLE `ActivityList` (
  `ActivityId` int(11) NOT NULL,
  `TeacherId` int(11) NOT NULL,
  `TopicId` int(11) NOT NULL,
  `QuestionnaireId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
ALTER TABLE `ActivityList` ADD PRIMARY KEY (`ActivityId`);
ALTER TABLE `ActivityList` MODIFY `ActivityId` int(11) NOT NULL AUTO_INCREMENT;


-- 列表 ->  : ActivityMemberList

CREATE TABLE `ActivityMemberList` (
  `MemberId` int(11) NOT NULL,
  `StuId` int(11) NOT NULL,
  `ActivityId` int(11) NOT NULL,
  `ChatroomId` int(11),
  `Group` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
ALTER TABLE `ActivityMemberList` ADD PRIMARY KEY (`MemberId`);
ALTER TABLE `ActivityMemberList` MODIFY `MemberId` int(11) NOT NULL AUTO_INCREMENT;


-- 列表 ->  :ChatroomList

CREATE TABLE `ChatroomList` (
  `ChatroomId` int(11) NOT NULL,
  `ActivityId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
ALTER TABLE `ChatroomList` ADD PRIMARY KEY (`ChatroomId`);
ALTER TABLE `ChatroomList` MODIFY `ChatroomId` int(11) NOT NULL AUTO_INCREMENT;


-- 列表 ->  :BehaviorDoc

CREATE TABLE `BehaviorDoc` (
  `BehaviorId` int(11) NOT NULL,
  `BehaviorContent` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
ALTER TABLE `BehaviorDoc` ADD PRIMARY KEY (`BehaviorId`);
ALTER TABLE `BehaviorDoc` MODIFY `BehaviorId` int(11) NOT NULL AUTO_INCREMENT;



-- 列表 ->  :MemberBehaviorList

CREATE TABLE `MemberBehaviorList` (
  `MemberBehaviorId` int(11) NOT NULL,
  `BehaviorId` int(11) NOT NULL,
  `MemberId` int(11) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
ALTER TABLE `MemberBehaviorList` ADD PRIMARY KEY (`MemberBehaviorId`);
ALTER TABLE `MemberBehaviorList` MODIFY `MemberBehaviorId` int(11) NOT NULL AUTO_INCREMENT;


-- 列表 ->  :TopicDoc

CREATE TABLE `TopicDoc` (
  `TopicId` int(11) NOT NULL,
  `TopicContent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
ALTER TABLE `TopicDoc` ADD PRIMARY KEY (`TopicId`);
ALTER TABLE `TopicDoc` MODIFY `TopicId` int(11) NOT NULL AUTO_INCREMENT;
































