/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : education

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

*/

CREATE DATABASE education;
USE education;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Структура таблиц для классов
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `classNO` bigint(20) NOT NULL AUTO_INCREMENT,
  `facultyNO` bigint(20) NULL DEFAULT NULL,
  `classShortname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classSize` int(11) NULL DEFAULT NULL,
  `year` date NULL DEFAULT NULL,
  `counsellorNO` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`classNO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 756 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Пример записи классов
-- ----------------------------
INSERT INTO `education`.`class` (`classNO`,`facultyNO`,`classShortname`,`classSize`,`year`,`counsellorNO`) VALUES (1101,1,'ПР-10,11',30,'2022-09-01',1001);
INSERT INTO `education`.`class` (`classNO`,`facultyNO`,`classShortname`,`classSize`,`year`,`counsellorNO`) VALUES (1102,1,'ИТ-10',35,'2022-09-01',1002);
INSERT INTO `education`.`class` (`classNO`,`facultyNO`,`classShortname`,`classSize`,`year`,`counsellorNO`) VALUES (1201,1,'ПР-20',35,'2021-09-01',1002);
INSERT INTO `education`.`class` (`classNO`,`facultyNO`,`classShortname`,`classSize`,`year`,`counsellorNO`) VALUES (1301,1,'ПР-31',23,'2020-09-01',1003);
INSERT INTO `education`.`class` (`classNO`,`facultyNO`,`classShortname`,`classSize`,`year`,`counsellorNO`) VALUES (1401,1,'ПО-40',28,'2019-09-01',1004);
-- ----------------------------
-- Структура таблиц для classroom
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom`  (
  `classRoomNO` bigint(20) NOT NULL AUTO_INCREMENT,
  `capacity` int(11) NULL DEFAULT NULL,
  `isMultimedia` int(11) NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `locationNo` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`classRoomNO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1011 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Пример записи аудиторий
-- ----------------------------
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (10001,25,0,0,10);
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (10002,30,1,0,10);
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (10003,35,1,0,10);
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (10004,40,1,0,10);
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (10005,45,1,0,10);
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (10006,25,0,0,10);
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (10007,30,0,0,10);
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (10008,35,0,0,10);
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (10009,40,0,0,10);
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (10010,45,0,0,10);
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (10011,25,0,0,10);
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (10012,30,0,0,10);
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (10013,35,0,0,10);
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (10014,40,0,0,10);
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (10015,45,0,1,10);
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (10016,25,0,0,10);
INSERT INTO `education`.`classroom` (`classRoomNO`,`capacity`,`isMultimedia`,`state`,`locationNo`) VALUES (50005,70,0,0,50);
-- ----------------------------
-- Структура таблиц для курса
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `courseID` bigint(20) NOT NULL AUTO_INCREMENT,
  `courseName` varchar(210) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hour` int(11) NULL DEFAULT NULL,
  `credit` double NULL DEFAULT NULL,
  PRIMARY KEY (`courseID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Пример записи курса
-- ----------------------------
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1101101,'Русский язык ',30,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1101102,'Литература ',31,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1101103,'Иностранный язык ',32,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1101104,'История',33,6);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1101105,'Математика',34,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1101201,'Русский язык ',35,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1101202,'Литература ',36,6);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1101203,'Иностранный язык ',37,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1101204,'История',38,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1101205,'Математика',39,6);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1102101,'Астрономия',30,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1102102,'Информатика',31,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1102103,'Право',32,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1102104,'Экономика',33,6);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1102105,'Родная литература',34,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1102201,'Астрономия',35,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1102202,'Информатика',36,6);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1102203,'Право',37,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1102204,'Экономика',38,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1102205,'Родная литература',39,6);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1201101,'Экономика',30,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1201102,'Родная литература',31,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1201103,'Русский язык ',32,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1201104,'Литература ',33,6);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1201105,'Иностранный язык ',34,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1201201,'История',35,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1201202,'Физическая культура',36,6);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1201203,'Основы безопасности жизнедеятельности ',37,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1201204,'Астрономия',38,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1201205,'Информатика',39,6);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1301101,'Родная литература',30,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1301102,'Русский язык ',31,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1301103,'Литература ',32,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1301104,'Иностранный язык ',33,6);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1301105,'Математика',34,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1301201,'Право',35,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1301202,'Экономика',36,6);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1301203,'Родная литература',37,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1301204,'Русский язык ',38,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1301205,'Литература ',39,6);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1401101,'История',30,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1401102,'Физическая культура',31,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1401103,'Основы безопасности жизнедеятельности ',32,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1401104,'Астрономия',33,6);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1401105,'Информатика',34,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1401201,'Право',35,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1401202,'Экономика',36,6);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1401203,'Родная литература',37,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1401204,'Русский язык ',38,0);
INSERT INTO `education`.`course` (`courseID`,`courseName`,`hour`,`credit`) VALUES (1401205,'Литература ',39,6);
-- ----------------------------
-- Структура таблицы для расписания
-- ----------------------------
DROP TABLE IF EXISTS `curriculum`;
CREATE TABLE `curriculum`  (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `courseNO` bigint(20) NULL DEFAULT NULL,
  `classNO` bigint(20) NULL DEFAULT NULL,
  `teacherID` bigint(20) NULL DEFAULT NULL,
  `schoolYear` int(11) NULL DEFAULT NULL,
  `term` int(11) NULL DEFAULT NULL,
#   `startWeek` int(11) NULL DEFAULT NULL,
  `startWeek` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
#   `endWeek` int(11) NULL DEFAULT NULL,
  `weekday` int(11) NULL DEFAULT NULL,
  `section` int(11) NULL DEFAULT NULL,
  `locationNo` bigint(20) NULL DEFAULT NULL,
  `classRoomNO` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20210104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;
-- ----------------------------
-- Пример записи в расписании
-- ----------------------------
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (1,1101101,1101,1001,2022,0,'26.12.22-31.12.22',1,1,10,10001);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (2,1101102,1101,1001,2022,0,'26.12.22-31.12.22',1,2,10,10002);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (3,1101103,1101,1003,2022,0,'26.12.22-31.12.22',1,3,10,10003);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (4,1101104,1101,1002,2022,0,'26.12.22-31.12.22',1,4,10,10004);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (5,1102101,1102,1005,2022,0,'26.12.22-31.12.22',1,3,10,10012);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (6,1102102,1102,1004,2022,0,'26.12.22-31.12.22',1,4,10,10011);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (7,1102103,1102,3001,2022,0,'26.12.22-31.12.22',1,5,10,10010);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (8,1102104,1102,1004,2022,0,'26.12.22-31.12.22',1,6,10,10009);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (9,1101103,1101,1001,2022,0,'26.12.22-31.12.22',2,2,10,10001);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (10,1101103,1101,1001,2022,0,'26.12.22-31.12.22',2,3,10,10001);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (11,1101104,1101,1002,2022,0,'26.12.22-31.12.22',2,4,10,10002);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (12,1102203,1102,3001,2022,0,'26.12.22-31.12.22',2,4,10,10005);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (13,1102205,1102,1001,2022,0,'26.12.22-31.12.22',2,5,10,10007);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (14,1102105,1102,1001,2022,0,'26.12.22-31.12.22',2,6,10,10007);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (15,1102202,1102,1004,2022,0,'26.12.22-31.12.22',2,7,10,10012);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (16,1101101,1101,1001,2022,0,'26.12.22-31.12.22',3,4,10,10001);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (17,1101102,1101,1001,2022,0,'26.12.22-31.12.22',3,5,10,10002);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (18,1101103,1101,1003,2022,0,'26.12.22-31.12.22',3,6,10,10003);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (19,1101104,1101,1002,2022,0,'26.12.22-31.12.22',3,7,10,10004);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (20,1102101,1102,1005,2022,0,'26.12.22-31.12.22',3,1,10,10012);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (21,1102102,1102,1004,2022,0,'26.12.22-31.12.22',3,2,10,10011);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (22,1102103,1102,3001,2022,0,'26.12.22-31.12.22',3,3,10,10010);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (23,1102104,1102,1004,2022,0,'26.12.22-31.12.22',3,4,10,10009);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (24,1101103,1101,1001,2022,0,'26.12.22-31.12.22',4,3,10,10001);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (25,1101103,1101,1001,2022,0,'26.12.22-31.12.22',4,4,10,10001);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (26,1101104,1101,1002,2022,0,'26.12.22-31.12.22',4,5,10,10002);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (27,1102203,1102,3001,2022,0,'26.12.22-31.12.22',4,2,10,10005);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (28,1102205,1102,1001,2022,0,'26.12.22-31.12.22',4,3,10,10007);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (29,1102105,1102,1001,2022,0,'26.12.22-31.12.22',4,4,10,10007);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (30,1102202,1102,1004,2022,0,'26.12.22-31.12.22',4,5,10,10012);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (31,1101101,1101,1001,2022,0,'26.12.22-31.12.22',5,1,10,10001);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (32,1101102,1101,1001,2022,0,'26.12.22-31.12.22',5,2,10,10002);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (33,1101103,1101,1003,2022,0,'26.12.22-31.12.22',5,3,10,10003);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (34,1101104,1101,1002,2022,0,'26.12.22-31.12.22',5,4,10,10004);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (35,1102101,1102,1005,2022,0,'26.12.22-31.12.22',5,3,10,10012);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (36,1102102,1102,1004,2022,0,'26.12.22-31.12.22',5,4,10,10011);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (37,1102103,1102,3001,2022,0,'26.12.22-31.12.22',5,5,10,10010);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (38,1102104,1102,1004,2022,0,'26.12.22-31.12.22',5,6,10,10009);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (39,1101103,1101,1001,2022,0,'26.12.22-31.12.22',6,2,10,10001);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (40,1101103,1101,1001,2022,0,'26.12.22-31.12.22',6,3,10,10001);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (41,1101104,1101,1002,2022,0,'26.12.22-31.12.22',6,4,10,10002);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (42,1102203,1102,3001,2022,0,'26.12.22-31.12.22',6,4,10,10005);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (43,1102205,1102,1001,2022,0,'26.12.22-31.12.22',6,5,10,10007);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (44,1102105,1102,1001,2022,0,'26.12.22-31.12.22',6,6,10,10007);
INSERT INTO `education`.`curriculum` (`ID`,`courseNO`,`classNO`,`teacherID`,`schoolYear`,`term`,`startWeek`,`weekday`,`section`,`locationNo`,`classRoomNO`) VALUES (45,1102202,1102,1004,2022,0,'26.12.22-31.12.22',6,7,10,10012);
-- ----------------------------
-- Структура таблицы для факультетов
-- ----------------------------
DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty`  (
  `facultyNO` bigint(20) NOT NULL AUTO_INCREMENT,
  `facultyName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`facultyNO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Пример записи факультетов
-- ----------------------------
INSERT INTO `education`.`faculty` (`facultyNO`,`facultyName`) VALUES (1,'Технологический');
INSERT INTO `education`.`faculty` (`facultyNO`,`facultyName`) VALUES (2,'Исторический');
INSERT INTO `education`.`faculty` (`facultyNO`,`facultyName`) VALUES (3,'Юридический');
INSERT INTO `education`.`faculty` (`facultyNO`,`facultyName`) VALUES (4,'Экономический');
INSERT INTO `education`.`faculty` (`facultyNO`,`facultyName`) VALUES (5,'Физического воспитания');
-- ----------------------------
-- Структура таблицы корпусов
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location`  (
  `locationNo` bigint(20) NOT NULL AUTO_INCREMENT,
  `locationName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`locationNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Пример записи корпусов
-- ----------------------------
INSERT INTO `education`.`location` (`locationNo`,`locationName`) VALUES (10,'1 корпус технологического факультета');
INSERT INTO `education`.`location` (`locationNo`,`locationName`) VALUES (11,'2 корпус технологического факультета');
INSERT INTO `education`.`location` (`locationNo`,`locationName`) VALUES (20,'Корпус исторического факультета');
INSERT INTO `education`.`location` (`locationNo`,`locationName`) VALUES (30,'Корпус юридического факультета');
INSERT INTO `education`.`location` (`locationNo`,`locationName`) VALUES (40,'Корпус экономического факультета');
INSERT INTO `education`.`location` (`locationNo`,`locationName`) VALUES (50,'Корпус физического воспитания');
-- ----------------------------
-- Структура таблицы для студентов
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `studentID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` date NULL DEFAULT NULL,
  `facultyNO` bigint(20) NULL DEFAULT NULL,
  `classNO` bigint(20) NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`studentID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1913013 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Запись студентов
-- ----------------------------
INSERT INTO `education`.`student` (`studentID`,`name`,`birthday`,`facultyNO`,`classNO`,`address`,`phone`,`remark`,`sex`) VALUES (11001,'Смирнов А.И.',null,1,1101,null,null,null,1);
INSERT INTO `education`.`student` (`studentID`,`name`,`birthday`,`facultyNO`,`classNO`,`address`,`phone`,`remark`,`sex`) VALUES (11002,'Иванов В.Л.',null,1,1102,null,null,null,1);
INSERT INTO `education`.`student` (`studentID`,`name`,`birthday`,`facultyNO`,`classNO`,`address`,`phone`,`remark`,`sex`) VALUES (12003,'Сидоров С.В.',null,1,1201,null,null,null,1);
INSERT INTO `education`.`student` (`studentID`,`name`,`birthday`,`facultyNO`,`classNO`,`address`,`phone`,`remark`,`sex`) VALUES (13004,'Петров Е.А.',null,1,1301,null,null,null,1);
INSERT INTO `education`.`student` (`studentID`,`name`,`birthday`,`facultyNO`,`classNO`,`address`,`phone`,`remark`,`sex`) VALUES (14005,'Ларионова С.Н.',null,1,1401,null,null,null,1);
-- ----------------------------
-- Структура таблицы для учителя
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `teacherID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `facultyNO` bigint(20) NULL DEFAULT NULL,
  `speciality` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`teacherID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Запись учителей
-- ----------------------------
INSERT INTO `education`.`teacher` (`teacherID`,`name`,`facultyNO`,`speciality`,`title`) VALUES (1001,'Брюллов И.С.',1,'Лингвистика','Доцент');
INSERT INTO `education`.`teacher` (`teacherID`,`name`,`facultyNO`,`speciality`,`title`) VALUES (1002,'Ярославцев В.А.',1,'История','Профессор');
INSERT INTO `education`.`teacher` (`teacherID`,`name`,`facultyNO`,`speciality`,`title`) VALUES (1003,'Волконский С.Ф.',1,'Искусствоведение','Преподаватель');
INSERT INTO `education`.`teacher` (`teacherID`,`name`,`facultyNO`,`speciality`,`title`) VALUES (1004,'Турчинов Л.Н.',1,'Экономист','Доцент');
INSERT INTO `education`.`teacher` (`teacherID`,`name`,`facultyNO`,`speciality`,`title`) VALUES (1005,'Соломонов А.Д.',1,'Философ','Профессор');
INSERT INTO `education`.`teacher` (`teacherID`,`name`,`facultyNO`,`speciality`,`title`) VALUES (5001,'Карелин И.Л.',5,'Физическое воспитание','Преподаватель');
INSERT INTO `education`.`teacher` (`teacherID`,`name`,`facultyNO`,`speciality`,`title`) VALUES (3001,'Третьяков А.А.',3,'Юриспруденция','Профессор');
-- ----------------------------
-- Структура таблицы для пользователя
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int(11) NOT NULL,
  `disabled` int(11) NULL DEFAULT 0,
  `contrastStudentID` int(11) NULL DEFAULT NULL,
  `contrastTeacherID` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Пример записи аккаунтов пользователей
-- ----------------------------
INSERT INTO `education`.`user` (`id`,`username`,`password`,`type`,`disabled`,`contrastStudentID`,`contrastTeacherID`) VALUES (1,'admin','admin',2,0,null,null);
INSERT INTO `education`.`user` (`id`,`username`,`password`,`type`,`disabled`,`contrastStudentID`,`contrastTeacherID`) VALUES (30,'iwanow','123',0,0,11002,null);
INSERT INTO `education`.`user` (`id`,`username`,`password`,`type`,`disabled`,`contrastStudentID`,`contrastTeacherID`) VALUES (31,'sidorow','123',0,0,12003,null);
INSERT INTO `education`.`user` (`id`,`username`,`password`,`type`,`disabled`,`contrastStudentID`,`contrastTeacherID`) VALUES (32,'larionowa','123',0,0,14005,null);
INSERT INTO `education`.`user` (`id`,`username`,`password`,`type`,`disabled`,`contrastStudentID`,`contrastTeacherID`) VALUES (33,'solomonow','123',1,0,null,1005);


SET FOREIGN_KEY_CHECKS = 1;
