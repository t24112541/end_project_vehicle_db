/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : project_vehicle

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-03-10 23:47:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pk_accessories
-- ----------------------------
DROP TABLE IF EXISTS `pk_accessories`;
CREATE TABLE `pk_accessories` (
  `ac_id` int(5) NOT NULL AUTO_INCREMENT,
  `ac_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_u_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_u_table` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  PRIMARY KEY (`ac_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_accessories
-- ----------------------------
INSERT INTO `pk_accessories` VALUES ('35', 'actest_std01', 'actest_std01', '6039010002', 'pk_student', '1');
INSERT INTO `pk_accessories` VALUES ('36', 'battery', 'ssss', '6142040508', 'pk_student', '1');

-- ----------------------------
-- Table structure for pk_accessories_log
-- ----------------------------
DROP TABLE IF EXISTS `pk_accessories_log`;
CREATE TABLE `pk_accessories_log` (
  `run_id` int(5) NOT NULL AUTO_INCREMENT,
  `ac_id` int(5) DEFAULT NULL,
  `ac_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_u_id` int(5) NOT NULL,
  `ac_u_table` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `u_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_log_work` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_log_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`run_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_accessories_log
-- ----------------------------
INSERT INTO `pk_accessories_log` VALUES ('53', '35', 'actest_std01', 'actest_std01', '2147483647', 'pk_student', 't24112541', 'เพิ่มข้อมูล', '2019-03-06 22:19:17');
INSERT INTO `pk_accessories_log` VALUES ('54', '36', 'battery', 'ssss', '2147483647', 'pk_student', '6142040508', 'เพิ่มข้อมูล', '2019-03-06 22:47:00');

-- ----------------------------
-- Table structure for pk_admin
-- ----------------------------
DROP TABLE IF EXISTS `pk_admin`;
CREATE TABLE `pk_admin` (
  `a_id` int(5) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_id` int(5) DEFAULT NULL,
  `a_tel` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_admin
-- ----------------------------
INSERT INTO `pk_admin` VALUES ('1', 'charnvit', 'Master', '0', '0852114119', 't24112541', 't24112541');

-- ----------------------------
-- Table structure for pk_comment
-- ----------------------------
DROP TABLE IF EXISTS `pk_comment`;
CREATE TABLE `pk_comment` (
  `co_id` int(5) NOT NULL AUTO_INCREMENT,
  `co_co_u_id` int(10) DEFAULT NULL COMMENT 'รหัสคนออกความเห็น',
  `co_co_u_table` text COLLATE utf8mb4_unicode_ci COMMENT 'ตารางคนออกความเห็น',
  `co_u_id` int(10) DEFAULT NULL COMMENT 'รหัสสิ่งที่ออกความเห็น',
  `co_u_table` text COLLATE utf8mb4_unicode_ci COMMENT 'ตารางสิ่งที่ออกความเห็น',
  `co_comment` text COLLATE utf8mb4_unicode_ci,
  `co_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_comment
-- ----------------------------
INSERT INTO `pk_comment` VALUES ('1', '1', 'pk_admin', '1', 'object_control', 'ทดสอบ\n', '2019-03-08 16:31:38');
INSERT INTO `pk_comment` VALUES ('2', '1', 'pk_admin', '1', 'object_control', 'ปแปแปปแ', '2019-03-08 16:34:18');
INSERT INTO `pk_comment` VALUES ('3', '1', 'pk_admin', '1', 'object_control', 'แแแแแแแแแแแ', '2019-03-08 16:35:21');
INSERT INTO `pk_comment` VALUES ('4', '1', 'pk_admin', '1', 'object_control', 'wwwwwwwwwwww', '2019-03-08 16:37:18');
INSERT INTO `pk_comment` VALUES ('5', '1', 'pk_admin', '1', 'object_control', 'ทดสอบย้อนกลับ', '2019-03-08 16:42:08');
INSERT INTO `pk_comment` VALUES ('6', '1', 'pk_admin', '70', 'pk_missing', 'ทดสอบบอกเก้าเล่าไปเรื่อย', '2019-03-09 22:41:53');
INSERT INTO `pk_comment` VALUES ('7', '1', 'pk_admin', '70', 'pk_missing', 'บอกอีกซักที', '2019-03-09 22:43:56');
INSERT INTO `pk_comment` VALUES ('8', '229', 'pk_teacher', '70', 'pk_missing', 'ทดสอบ จากครูเอง', '2019-03-10 23:38:19');
INSERT INTO `pk_comment` VALUES ('9', '229', 'pk_teacher', '70', 'pk_missing', 'กำลังทำนุ่นนี่นั่นอยู่', '2019-03-10 23:44:33');

-- ----------------------------
-- Table structure for pk_control_edit_data
-- ----------------------------
DROP TABLE IF EXISTS `pk_control_edit_data`;
CREATE TABLE `pk_control_edit_data` (
  `ctrl_id` int(11) NOT NULL AUTO_INCREMENT,
  `ctrl_status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ctrl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_control_edit_data
-- ----------------------------
INSERT INTO `pk_control_edit_data` VALUES ('1', '0');

-- ----------------------------
-- Table structure for pk_department
-- ----------------------------
DROP TABLE IF EXISTS `pk_department`;
CREATE TABLE `pk_department` (
  `d_id` int(5) NOT NULL AUTO_INCREMENT,
  `d_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_department
-- ----------------------------
INSERT INTO `pk_department` VALUES ('34', '3204', 'คอมพิวเตอร์ธุรกิจ', '1');
INSERT INTO `pk_department` VALUES ('35', '3111', 'เทคนิคอุตสาหกรรม', '1');
INSERT INTO `pk_department` VALUES ('36', '3109', 'เทคโนโลยีสารสนเทศ', '1');
INSERT INTO `pk_department` VALUES ('37', '2201', 'พณิชยการ', '1');
INSERT INTO `pk_department` VALUES ('38', '2111', 'ซ่อมบำรุง', '1');
INSERT INTO `pk_department` VALUES ('39', '2107', 'ช่างโยธา', '1');
INSERT INTO `pk_department` VALUES ('40', '2106', 'ช่างก่อสร้าง', '1');
INSERT INTO `pk_department` VALUES ('41', '2105', 'ช่างอิเล็กทรอนิกส์', '1');
INSERT INTO `pk_department` VALUES ('42', '2104', 'ช่างไฟฟ้ากำลัง', '1');
INSERT INTO `pk_department` VALUES ('43', '2103', 'โลหะการ', '1');
INSERT INTO `pk_department` VALUES ('44', '2102', 'เครื่องมือกล', '1');
INSERT INTO `pk_department` VALUES ('45', '2101', 'ช่างยนต์', '1');

-- ----------------------------
-- Table structure for pk_department_log
-- ----------------------------
DROP TABLE IF EXISTS `pk_department_log`;
CREATE TABLE `pk_department_log` (
  `run_id` int(5) NOT NULL AUTO_INCREMENT,
  `d_id` int(5) NOT NULL,
  `d_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `u_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_log_work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'เพิ่ม ลบ หรือแก้ไข',
  `d_log_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`run_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_department_log
-- ----------------------------

-- ----------------------------
-- Table structure for pk_group
-- ----------------------------
DROP TABLE IF EXISTS `pk_group`;
CREATE TABLE `pk_group` (
  `g_id` int(5) NOT NULL AUTO_INCREMENT,
  `g_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `t_status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_group
-- ----------------------------
INSERT INTO `pk_group` VALUES ('90', '61420401', '3204', '61420401', '1');
INSERT INTO `pk_group` VALUES ('91', '61390105', '3109', '61390105', '1');
INSERT INTO `pk_group` VALUES ('92', '61390101', '3109', '61390101', '1');
INSERT INTO `pk_group` VALUES ('93', '61320405', '3204', '61320405', '1');
INSERT INTO `pk_group` VALUES ('94', '61320403', '3204', '61320403', '1');
INSERT INTO `pk_group` VALUES ('95', '61320401', '3204', '61320401', '1');
INSERT INTO `pk_group` VALUES ('96', '61310208', '2102', '61310208', '1');
INSERT INTO `pk_group` VALUES ('97', '61310207', '2102', '61310207', '1');
INSERT INTO `pk_group` VALUES ('98', '61310206', '2102', '61310206', '1');
INSERT INTO `pk_group` VALUES ('99', '61310205', '2102', '61310205', '1');
INSERT INTO `pk_group` VALUES ('100', '61310204', '2102', '61310204', '1');
INSERT INTO `pk_group` VALUES ('101', '61310203', '2102', '61310203', '1');
INSERT INTO `pk_group` VALUES ('102', '61310202', '2102', '61310202', '1');
INSERT INTO `pk_group` VALUES ('103', '61310201', '2102', '61310201', '1');
INSERT INTO `pk_group` VALUES ('104', '61290102', '3109', '61290102', '1');
INSERT INTO `pk_group` VALUES ('105', '61290101', '3109', '61290101', '1');
INSERT INTO `pk_group` VALUES ('106', '61220402', '3204', '61220402', '1');
INSERT INTO `pk_group` VALUES ('107', '61220401', '3204', '61220401', '1');
INSERT INTO `pk_group` VALUES ('108', '61210208', '2102', '61210208', '1');
INSERT INTO `pk_group` VALUES ('109', '61210207', '2102', '61210207', '1');
INSERT INTO `pk_group` VALUES ('110', '61210206', '2102', '61210206', '1');
INSERT INTO `pk_group` VALUES ('111', '61210205', '2102', '61210205', '1');
INSERT INTO `pk_group` VALUES ('112', '61210204', '2102', '61210204', '1');
INSERT INTO `pk_group` VALUES ('113', '61210203', '2102', '61210203', '1');
INSERT INTO `pk_group` VALUES ('114', '61210202', '2102', '61210202', '1');
INSERT INTO `pk_group` VALUES ('115', '61210201', '2102', '61210201', '1');
INSERT INTO `pk_group` VALUES ('116', '60420401', '3204', '60420401', '1');
INSERT INTO `pk_group` VALUES ('117', '60390105', '3109', '60390105', '1');
INSERT INTO `pk_group` VALUES ('118', '60390101', '3109', '60390101', '1');
INSERT INTO `pk_group` VALUES ('119', '60320405', '3204', '60320405', '1');
INSERT INTO `pk_group` VALUES ('120', '60320403', '3204', '60320403', '1');
INSERT INTO `pk_group` VALUES ('121', '60320401', '3204', '60320401', '1');
INSERT INTO `pk_group` VALUES ('122', '60310207', '2102', '60310207', '1');
INSERT INTO `pk_group` VALUES ('123', '60310206', '2102', '60310206', '1');
INSERT INTO `pk_group` VALUES ('124', '60310205', '2102', '60310205', '1');
INSERT INTO `pk_group` VALUES ('125', '60310203', '2102', '60310203', '1');
INSERT INTO `pk_group` VALUES ('126', '60310202', '2102', '60310202', '1');
INSERT INTO `pk_group` VALUES ('127', '60310201', '2102', '60310201', '1');
INSERT INTO `pk_group` VALUES ('128', '60290101', '3109', '60290101', '1');
INSERT INTO `pk_group` VALUES ('129', '60220403', '3204', '60220403', '1');
INSERT INTO `pk_group` VALUES ('130', '60220402', '3204', '60220402', '1');
INSERT INTO `pk_group` VALUES ('131', '60220401', '3204', '60220401', '1');
INSERT INTO `pk_group` VALUES ('132', '60210205', '2102', '60210205', '1');
INSERT INTO `pk_group` VALUES ('133', '60210204', '2102', '60210204', '1');
INSERT INTO `pk_group` VALUES ('134', '60210203', '2102', '60210203', '1');
INSERT INTO `pk_group` VALUES ('135', '60210202', '2102', '60210202', '1');
INSERT INTO `pk_group` VALUES ('136', '60210201', '2102', '60210201', '1');
INSERT INTO `pk_group` VALUES ('137', '59320405', '3204', '59320405', '1');
INSERT INTO `pk_group` VALUES ('138', '59310209', '2102', '59310209', '1');
INSERT INTO `pk_group` VALUES ('139', '59310203', '2102', '59310203', '1');
INSERT INTO `pk_group` VALUES ('140', '59290102', '3109', '59290102', '1');
INSERT INTO `pk_group` VALUES ('141', '59290101', '3109', '59290101', '1');
INSERT INTO `pk_group` VALUES ('142', '59220406', '3204', '59220406', '1');
INSERT INTO `pk_group` VALUES ('143', '59220405', '3204', '59220405', '1');
INSERT INTO `pk_group` VALUES ('144', '59220404', '3204', '59220404', '1');
INSERT INTO `pk_group` VALUES ('145', '59220403', '3204', '59220403', '1');
INSERT INTO `pk_group` VALUES ('146', '59220402', '3204', '59220402', '1');
INSERT INTO `pk_group` VALUES ('147', '59220401', '3204', '59220401', '1');
INSERT INTO `pk_group` VALUES ('148', '59210206', '2102', '59210206', '1');
INSERT INTO `pk_group` VALUES ('149', '59210205', '2102', '59210205', '1');
INSERT INTO `pk_group` VALUES ('150', '59210202', '2102', '59210202', '1');
INSERT INTO `pk_group` VALUES ('151', '59210201', '2102', '59210201', '1');
INSERT INTO `pk_group` VALUES ('152', '58290101', '3109', '58290101', '1');
INSERT INTO `pk_group` VALUES ('153', '58220404', '3204', '58220404', '1');
INSERT INTO `pk_group` VALUES ('154', '58220402', '3204', '58220402', '1');
INSERT INTO `pk_group` VALUES ('155', '58220401', '3204', '58220401', '1');
INSERT INTO `pk_group` VALUES ('156', '58210207', '2102', '58210207', '1');
INSERT INTO `pk_group` VALUES ('157', '58210206', '2102', '58210206', '1');
INSERT INTO `pk_group` VALUES ('158', '58210202', '2102', '58210202', '1');
INSERT INTO `pk_group` VALUES ('159', '58210201', '2102', '58210201', '1');
INSERT INTO `pk_group` VALUES ('160', '57210202', '2102', '57210202', '1');
INSERT INTO `pk_group` VALUES ('161', '45220106', '3204', '45220106', '1');

-- ----------------------------
-- Table structure for pk_group_log
-- ----------------------------
DROP TABLE IF EXISTS `pk_group_log`;
CREATE TABLE `pk_group_log` (
  `run_id` int(5) NOT NULL AUTO_INCREMENT,
  `g_id` int(5) NOT NULL,
  `g_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_code` text COLLATE utf8mb4_unicode_ci,
  `g_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `u_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_log_work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_log_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`run_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_group_log
-- ----------------------------

-- ----------------------------
-- Table structure for pk_img
-- ----------------------------
DROP TABLE IF EXISTS `pk_img`;
CREATE TABLE `pk_img` (
  `img_id` int(100) NOT NULL AUTO_INCREMENT,
  `img_img` text COLLATE utf8mb4_unicode_ci,
  `u_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `u_table` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=MyISAM AUTO_INCREMENT=875 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_img
-- ----------------------------
INSERT INTO `pk_img` VALUES ('687', 'veh-u-default.jpg', '658', 'pk_student');
INSERT INTO `pk_img` VALUES ('688', 'veh-u-default.jpg', '659', 'pk_student');
INSERT INTO `pk_img` VALUES ('689', 'veh-u-default.jpg', '660', 'pk_student');
INSERT INTO `pk_img` VALUES ('690', 'veh-u-default.jpg', '661', 'pk_student');
INSERT INTO `pk_img` VALUES ('691', 'veh-u-default.jpg', '662', 'pk_student');
INSERT INTO `pk_img` VALUES ('692', 'veh-u-default.jpg', '663', 'pk_student');
INSERT INTO `pk_img` VALUES ('693', 'veh-u-default.jpg', '664', 'pk_student');
INSERT INTO `pk_img` VALUES ('694', 'veh-u-default.jpg', '665', 'pk_student');
INSERT INTO `pk_img` VALUES ('695', 'veh-u-default.jpg', '666', 'pk_student');
INSERT INTO `pk_img` VALUES ('696', 'veh-u-default.jpg', '667', 'pk_student');
INSERT INTO `pk_img` VALUES ('697', 'veh-u-default.jpg', '668', 'pk_student');
INSERT INTO `pk_img` VALUES ('698', 'veh-u-default.jpg', '669', 'pk_student');
INSERT INTO `pk_img` VALUES ('699', 'veh-u-default.jpg', '670', 'pk_student');
INSERT INTO `pk_img` VALUES ('700', 'veh-u-default.jpg', '671', 'pk_student');
INSERT INTO `pk_img` VALUES ('701', 'veh-u-default.jpg', '672', 'pk_student');
INSERT INTO `pk_img` VALUES ('702', 'veh-u-default.jpg', '673', 'pk_student');
INSERT INTO `pk_img` VALUES ('703', 'veh-u-default.jpg', '674', 'pk_student');
INSERT INTO `pk_img` VALUES ('704', 'veh-u-default.jpg', '675', 'pk_student');
INSERT INTO `pk_img` VALUES ('705', 'veh-u-default.jpg', '676', 'pk_student');
INSERT INTO `pk_img` VALUES ('706', 'veh-u-default.jpg', '677', 'pk_student');
INSERT INTO `pk_img` VALUES ('707', 'veh-u-default.jpg', '678', 'pk_student');
INSERT INTO `pk_img` VALUES ('708', 'veh-u-default.jpg', '679', 'pk_student');
INSERT INTO `pk_img` VALUES ('709', 'veh-u-default.jpg', '680', 'pk_student');
INSERT INTO `pk_img` VALUES ('710', 'veh-u-default.jpg', '681', 'pk_student');
INSERT INTO `pk_img` VALUES ('711', 'veh-u-default.jpg', '682', 'pk_student');
INSERT INTO `pk_img` VALUES ('712', 'veh-u-default.jpg', '683', 'pk_student');
INSERT INTO `pk_img` VALUES ('713', 'veh-u-default.jpg', '684', 'pk_student');
INSERT INTO `pk_img` VALUES ('714', 'veh-u-default.jpg', '685', 'pk_student');
INSERT INTO `pk_img` VALUES ('715', 'veh-u-default.jpg', '686', 'pk_student');
INSERT INTO `pk_img` VALUES ('716', 'veh-u-default.jpg', '687', 'pk_student');
INSERT INTO `pk_img` VALUES ('717', 'veh-u-default.jpg', '688', 'pk_student');
INSERT INTO `pk_img` VALUES ('718', 'veh-u-default.jpg', '689', 'pk_student');
INSERT INTO `pk_img` VALUES ('719', 'veh-u-default.jpg', '690', 'pk_student');
INSERT INTO `pk_img` VALUES ('720', 'veh-u-default.jpg', '691', 'pk_student');
INSERT INTO `pk_img` VALUES ('721', 'veh-u-default.jpg', '692', 'pk_student');
INSERT INTO `pk_img` VALUES ('722', 'veh-u-default.jpg', '693', 'pk_student');
INSERT INTO `pk_img` VALUES ('723', 'veh-u-default.jpg', '694', 'pk_student');
INSERT INTO `pk_img` VALUES ('724', 'veh-u-default.jpg', '695', 'pk_student');
INSERT INTO `pk_img` VALUES ('725', 'veh-u-default.jpg', '696', 'pk_student');
INSERT INTO `pk_img` VALUES ('726', 'veh-u-default.jpg', '697', 'pk_student');
INSERT INTO `pk_img` VALUES ('727', 'veh-u-default.jpg', '698', 'pk_student');
INSERT INTO `pk_img` VALUES ('728', 'veh-u-default.jpg', '699', 'pk_student');
INSERT INTO `pk_img` VALUES ('729', 'veh-u-default.jpg', '700', 'pk_student');
INSERT INTO `pk_img` VALUES ('730', 'veh-u-default.jpg', '701', 'pk_student');
INSERT INTO `pk_img` VALUES ('731', 'veh-u-default.jpg', '702', 'pk_student');
INSERT INTO `pk_img` VALUES ('732', 'veh-u-default.jpg', '703', 'pk_student');
INSERT INTO `pk_img` VALUES ('733', 'veh-u-default.jpg', '704', 'pk_student');
INSERT INTO `pk_img` VALUES ('734', 'veh-u-default.jpg', '705', 'pk_student');
INSERT INTO `pk_img` VALUES ('735', 'veh-u-default.jpg', '706', 'pk_student');
INSERT INTO `pk_img` VALUES ('736', 'veh-u-default.jpg', '707', 'pk_student');
INSERT INTO `pk_img` VALUES ('737', 'veh-u-default.jpg', '206', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('738', 'veh-u-default.jpg', '207', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('739', 'veh-u-default.jpg', '208', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('740', 'veh-u-default.jpg', '209', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('741', 'veh-u-default.jpg', '210', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('742', 'veh-u-default.jpg', '211', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('743', 'veh-u-default.jpg', '212', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('744', 'veh-u-default.jpg', '213', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('745', 'veh-u-default.jpg', '214', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('746', 'veh-u-default.jpg', '215', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('747', 'veh-u-default.jpg', '216', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('748', 'veh-u-default.jpg', '217', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('749', 'veh-u-default.jpg', '218', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('750', 'veh-u-default.jpg', '219', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('751', 'veh-u-default.jpg', '220', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('752', 'veh-u-default.jpg', '221', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('753', 'veh-u-default.jpg', '222', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('754', 'veh-u-default.jpg', '223', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('755', 'veh-u-default.jpg', '224', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('756', 'veh-u-default.jpg', '225', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('757', 'veh-u-default.jpg', '226', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('758', 'veh-u-default.jpg', '227', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('759', 'veh-u-default.jpg', '228', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('760', 'veh-u-default.jpg', '229', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('761', 'veh-u-default.jpg', '230', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('762', 'veh-u-default.jpg', '231', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('763', 'veh-u-default.jpg', '232', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('764', 'veh-u-default.jpg', '233', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('765', 'veh-u-default.jpg', '234', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('766', 'veh-u-default.jpg', '235', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('767', 'veh-u-default.jpg', '236', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('768', 'veh-u-default.jpg', '237', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('769', 'veh-u-default.jpg', '238', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('770', 'veh-u-default.jpg', '239', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('771', 'veh-u-default.jpg', '240', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('772', 'veh-u-default.jpg', '241', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('773', 'veh-u-default.jpg', '242', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('774', 'veh-u-default.jpg', '243', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('775', 'veh-u-default.jpg', '244', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('776', 'veh-u-default.jpg', '245', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('777', 'veh-u-default.jpg', '246', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('778', 'veh-u-default.jpg', '247', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('779', 'veh-u-default.jpg', '248', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('780', 'veh-u-default.jpg', '249', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('781', 'veh-u-default.jpg', '250', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('782', 'veh-u-default.jpg', '251', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('783', 'veh-u-default.jpg', '252', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('784', 'veh-u-default.jpg', '253', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('785', 'veh-u-default.jpg', '254', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('786', 'veh-u-default.jpg', '255', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('787', 'veh-u-default.jpg', '256', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('788', 'veh-u-default.jpg', '257', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('789', 'veh-u-default.jpg', '258', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('790', 'veh-u-default.jpg', '259', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('791', 'veh-u-default.jpg', '260', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('792', 'veh-u-default.jpg', '261', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('793', 'veh-u-default.jpg', '262', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('794', 'veh-u-default.jpg', '263', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('795', 'veh-u-default.jpg', '264', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('796', 'veh-u-default.jpg', '265', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('797', 'veh-u-default.jpg', '266', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('798', 'veh-u-default.jpg', '267', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('799', 'veh-u-default.jpg', '268', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('800', 'veh-u-default.jpg', '269', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('801', 'veh-u-default.jpg', '270', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('802', 'veh-u-default.jpg', '271', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('803', 'veh-u-default.jpg', '272', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('804', 'veh-u-default.jpg', '708', 'pk_student');
INSERT INTO `pk_img` VALUES ('805', 'veh-u-default.jpg', '709', 'pk_student');
INSERT INTO `pk_img` VALUES ('806', 'veh-u-default.jpg', '710', 'pk_student');
INSERT INTO `pk_img` VALUES ('807', 'veh-u-default.jpg', '711', 'pk_student');
INSERT INTO `pk_img` VALUES ('808', 'veh-u-default.jpg', '712', 'pk_student');
INSERT INTO `pk_img` VALUES ('809', 'veh-u-default.jpg', '713', 'pk_student');
INSERT INTO `pk_img` VALUES ('810', 'veh-u-default.jpg', '714', 'pk_student');
INSERT INTO `pk_img` VALUES ('811', 'veh-u-default.jpg', '715', 'pk_student');
INSERT INTO `pk_img` VALUES ('812', 'veh-u-default.jpg', '716', 'pk_student');
INSERT INTO `pk_img` VALUES ('813', 'veh-u-default.jpg', '717', 'pk_student');
INSERT INTO `pk_img` VALUES ('814', 'veh-u-default.jpg', '718', 'pk_student');
INSERT INTO `pk_img` VALUES ('815', 'veh-u-default.jpg', '719', 'pk_student');
INSERT INTO `pk_img` VALUES ('816', 'veh-u-default.jpg', '720', 'pk_student');
INSERT INTO `pk_img` VALUES ('817', 'veh-u-default.jpg', '721', 'pk_student');
INSERT INTO `pk_img` VALUES ('818', 'veh-u-default.jpg', '722', 'pk_student');
INSERT INTO `pk_img` VALUES ('819', 'veh-u-default.jpg', '723', 'pk_student');
INSERT INTO `pk_img` VALUES ('820', 'veh-u-default.jpg', '724', 'pk_student');
INSERT INTO `pk_img` VALUES ('821', 'veh-u-default.jpg', '725', 'pk_student');
INSERT INTO `pk_img` VALUES ('822', 'veh-u-default.jpg', '726', 'pk_student');
INSERT INTO `pk_img` VALUES ('823', 'veh-u-default.jpg', '727', 'pk_student');
INSERT INTO `pk_img` VALUES ('824', 'veh-u-default.jpg', '728', 'pk_student');
INSERT INTO `pk_img` VALUES ('825', 'veh-u-default.jpg', '729', 'pk_student');
INSERT INTO `pk_img` VALUES ('826', 'veh-u-default.jpg', '730', 'pk_student');
INSERT INTO `pk_img` VALUES ('827', 'veh-u-default.jpg', '731', 'pk_student');
INSERT INTO `pk_img` VALUES ('828', 'veh-u-default.jpg', '732', 'pk_student');
INSERT INTO `pk_img` VALUES ('829', 'veh-u-default.jpg', '733', 'pk_student');
INSERT INTO `pk_img` VALUES ('830', 'veh-u-default.jpg', '734', 'pk_student');
INSERT INTO `pk_img` VALUES ('831', 'veh-u-default.jpg', '735', 'pk_student');
INSERT INTO `pk_img` VALUES ('832', 'veh-u-default.jpg', '736', 'pk_student');
INSERT INTO `pk_img` VALUES ('833', 'veh-u-default.jpg', '737', 'pk_student');
INSERT INTO `pk_img` VALUES ('834', 'veh-u-default.jpg', '738', 'pk_student');
INSERT INTO `pk_img` VALUES ('835', 'veh-u-default.jpg', '739', 'pk_student');
INSERT INTO `pk_img` VALUES ('836', 'veh-u-default.jpg', '740', 'pk_student');
INSERT INTO `pk_img` VALUES ('837', 'veh-u-default.jpg', '741', 'pk_student');
INSERT INTO `pk_img` VALUES ('838', 'veh-u-default.jpg', '742', 'pk_student');
INSERT INTO `pk_img` VALUES ('839', 'veh-u-default.jpg', '743', 'pk_student');
INSERT INTO `pk_img` VALUES ('840', 'veh-u-default.jpg', '744', 'pk_student');
INSERT INTO `pk_img` VALUES ('841', 'veh-u-default.jpg', '745', 'pk_student');
INSERT INTO `pk_img` VALUES ('842', 'veh-u-default.jpg', '746', 'pk_student');
INSERT INTO `pk_img` VALUES ('843', 'veh-u-default.jpg', '747', 'pk_student');
INSERT INTO `pk_img` VALUES ('844', 'veh-u-default.jpg', '748', 'pk_student');
INSERT INTO `pk_img` VALUES ('845', 'veh-u-default.jpg', '749', 'pk_student');
INSERT INTO `pk_img` VALUES ('846', 'veh-u-default.jpg', '750', 'pk_student');
INSERT INTO `pk_img` VALUES ('847', 'veh-u-default.jpg', '751', 'pk_student');
INSERT INTO `pk_img` VALUES ('848', 'veh-u-default.jpg', '752', 'pk_student');
INSERT INTO `pk_img` VALUES ('849', 'veh-u-default.jpg', '753', 'pk_student');
INSERT INTO `pk_img` VALUES ('850', 'veh-u-default.jpg', '754', 'pk_student');
INSERT INTO `pk_img` VALUES ('851', 'veh-u-default.jpg', '755', 'pk_student');
INSERT INTO `pk_img` VALUES ('852', 'veh-u-default.jpg', '756', 'pk_student');
INSERT INTO `pk_img` VALUES ('853', 'veh-u-default.jpg', '757', 'pk_student');
INSERT INTO `pk_img` VALUES ('854', 'veh-u-default.jpg', '758', 'pk_student');
INSERT INTO `pk_img` VALUES ('855', 'veh-ac-1551885557080.jpg', '35', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('856', 'veh-ac-1551885557085.jpg', '35', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('857', 'veh-ac-1551885557094.jpg', '35', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('858', 'veh-mc-1551886161794.jpg', '83', 'pk_machine');
INSERT INTO `pk_img` VALUES ('859', 'veh-mc-1551886161808.jpg', '83', 'pk_machine');
INSERT INTO `pk_img` VALUES ('860', 'veh-mc-1551886161816.jpg', '83', 'pk_machine');
INSERT INTO `pk_img` VALUES ('861', 'veh-mc-1551887198051.jpg', '84', 'pk_machine');
INSERT INTO `pk_img` VALUES ('862', 'veh-mc-1551887198053.jpg', '84', 'pk_machine');
INSERT INTO `pk_img` VALUES ('863', 'veh-mc-1551887198057.jpg', '84', 'pk_machine');
INSERT INTO `pk_img` VALUES ('864', 'veh-ac-1551887220735.jpg', '36', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('865', 'veh-ac-1551887220740.jpg', '36', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('866', 'veh-ac-1551887220744.jpg', '36', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('867', 'veh-mc-1552019613462.jpg', '85', 'pk_machine');
INSERT INTO `pk_img` VALUES ('868', 'veh-mc-1552019613467.jpg', '85', 'pk_machine');
INSERT INTO `pk_img` VALUES ('869', 'veh-mc-1552019613470.jpg', '85', 'pk_machine');
INSERT INTO `pk_img` VALUES ('870', 'veh-mc-1552019658907.jpg', '86', 'pk_machine');
INSERT INTO `pk_img` VALUES ('871', 'veh-mc-1552019658911.jpg', '86', 'pk_machine');
INSERT INTO `pk_img` VALUES ('872', 'veh-mc-1552019658914.jpg', '86', 'pk_machine');
INSERT INTO `pk_img` VALUES ('873', 'veh-oc-1552037470144.jpg', '1', 'pk_object_control');
INSERT INTO `pk_img` VALUES ('874', 'veh-ms-1552127470773.jpg', '70', 'pk_missing');

-- ----------------------------
-- Table structure for pk_item_object_control
-- ----------------------------
DROP TABLE IF EXISTS `pk_item_object_control`;
CREATE TABLE `pk_item_object_control` (
  `itm_oc_id` int(5) NOT NULL AUTO_INCREMENT,
  `itm_oc_name` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`itm_oc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_item_object_control
-- ----------------------------
INSERT INTO `pk_item_object_control` VALUES ('1', 'ท่อดัง');
INSERT INTO `pk_item_object_control` VALUES ('2', 'เตี้ย');
INSERT INTO `pk_item_object_control` VALUES ('3', 'ล้อรถ');
INSERT INTO `pk_item_object_control` VALUES ('4', 'ไม่สวมหมวกกันน็อก');
INSERT INTO `pk_item_object_control` VALUES ('5', 'จอดนอกสถานที่');

-- ----------------------------
-- Table structure for pk_machine
-- ----------------------------
DROP TABLE IF EXISTS `pk_machine`;
CREATE TABLE `pk_machine` (
  `mc_id` int(5) NOT NULL AUTO_INCREMENT,
  `mc_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mc_brand` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mc_series` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `mc_u_table` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mc_confirm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'false',
  `mc_confirm_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_machine
-- ----------------------------
INSERT INTO `pk_machine` VALUES ('85', 'cv', 'Honda', 'wave110', '6039010002', '1', 'pk_student', 'false', '2019-03-10 11:04:56');
INSERT INTO `pk_machine` VALUES ('86', 'cv2', 'Honda', 'wave110', '6039010002', '1', 'pk_student', 'true', '2019-03-10 11:28:39');

-- ----------------------------
-- Table structure for pk_machine_log
-- ----------------------------
DROP TABLE IF EXISTS `pk_machine_log`;
CREATE TABLE `pk_machine_log` (
  `run_id` int(5) NOT NULL AUTO_INCREMENT,
  `mc_id` int(5) NOT NULL,
  `mc_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mc_brand` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mc_series` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mc_log_work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mc_log_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `u_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`run_id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_machine_log
-- ----------------------------
INSERT INTO `pk_machine_log` VALUES ('99', '83', 'กพค 928 ชัยภูมิ', 'honda', 'wave110', '6039010002', 'เพิ่มข้อมูล', '2019-03-06 22:29:21', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('100', '84', '2222', 'Honda', 'wave110', '6142040508', 'เพิ่มข้อมูล', '2019-03-06 22:46:38', '6142040508');
INSERT INTO `pk_machine_log` VALUES ('101', '85', 'cv', 'Honda', 'wave110', '6039010002', 'เพิ่มข้อมูล', '2019-03-08 11:33:33', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('102', '86', 'cv2', 'Honda', 'wave110', '6039010002', 'เพิ่มข้อมูล', '2019-03-08 11:34:18', 't24112541');

-- ----------------------------
-- Table structure for pk_match_std_tch
-- ----------------------------
DROP TABLE IF EXISTS `pk_match_std_tch`;
CREATE TABLE `pk_match_std_tch` (
  `mst_id` int(5) NOT NULL AUTO_INCREMENT,
  `t_id` int(5) NOT NULL,
  `g_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`mst_id`)
) ENGINE=MyISAM AUTO_INCREMENT=516 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_match_std_tch
-- ----------------------------
INSERT INTO `pk_match_std_tch` VALUES ('248', '206', '61310601');
INSERT INTO `pk_match_std_tch` VALUES ('249', '206', '61310605');
INSERT INTO `pk_match_std_tch` VALUES ('250', '206', '60310601');
INSERT INTO `pk_match_std_tch` VALUES ('251', '206', '60310605');
INSERT INTO `pk_match_std_tch` VALUES ('252', '207', '0');
INSERT INTO `pk_match_std_tch` VALUES ('253', '207', '0');
INSERT INTO `pk_match_std_tch` VALUES ('254', '207', '0');
INSERT INTO `pk_match_std_tch` VALUES ('255', '207', '0');
INSERT INTO `pk_match_std_tch` VALUES ('256', '208', '60312101');
INSERT INTO `pk_match_std_tch` VALUES ('257', '208', '60312105');
INSERT INTO `pk_match_std_tch` VALUES ('258', '208', '60312106');
INSERT INTO `pk_match_std_tch` VALUES ('259', '208', '0');
INSERT INTO `pk_match_std_tch` VALUES ('260', '209', '57210601');
INSERT INTO `pk_match_std_tch` VALUES ('261', '209', '0');
INSERT INTO `pk_match_std_tch` VALUES ('262', '209', '0');
INSERT INTO `pk_match_std_tch` VALUES ('263', '209', '0');
INSERT INTO `pk_match_std_tch` VALUES ('264', '210', '61210601');
INSERT INTO `pk_match_std_tch` VALUES ('265', '210', '60210601');
INSERT INTO `pk_match_std_tch` VALUES ('266', '210', '0');
INSERT INTO `pk_match_std_tch` VALUES ('267', '210', '0');
INSERT INTO `pk_match_std_tch` VALUES ('268', '211', '60210110');
INSERT INTO `pk_match_std_tch` VALUES ('269', '211', '0');
INSERT INTO `pk_match_std_tch` VALUES ('270', '211', '0');
INSERT INTO `pk_match_std_tch` VALUES ('271', '211', '0');
INSERT INTO `pk_match_std_tch` VALUES ('272', '212', '61210107');
INSERT INTO `pk_match_std_tch` VALUES ('273', '212', '61210108');
INSERT INTO `pk_match_std_tch` VALUES ('274', '212', '0');
INSERT INTO `pk_match_std_tch` VALUES ('275', '212', '0');
INSERT INTO `pk_match_std_tch` VALUES ('276', '213', '60310101');
INSERT INTO `pk_match_std_tch` VALUES ('277', '213', '0');
INSERT INTO `pk_match_std_tch` VALUES ('278', '213', '0');
INSERT INTO `pk_match_std_tch` VALUES ('279', '213', '0');
INSERT INTO `pk_match_std_tch` VALUES ('280', '214', '61310102');
INSERT INTO `pk_match_std_tch` VALUES ('281', '214', '60410101');
INSERT INTO `pk_match_std_tch` VALUES ('282', '214', '0');
INSERT INTO `pk_match_std_tch` VALUES ('283', '214', '0');
INSERT INTO `pk_match_std_tch` VALUES ('284', '215', '61210101');
INSERT INTO `pk_match_std_tch` VALUES ('285', '215', '61210102');
INSERT INTO `pk_match_std_tch` VALUES ('286', '215', '61410101');
INSERT INTO `pk_match_std_tch` VALUES ('287', '215', '0');
INSERT INTO `pk_match_std_tch` VALUES ('288', '216', '61390101');
INSERT INTO `pk_match_std_tch` VALUES ('289', '216', '61390105');
INSERT INTO `pk_match_std_tch` VALUES ('290', '216', '0');
INSERT INTO `pk_match_std_tch` VALUES ('291', '216', '0');
INSERT INTO `pk_match_std_tch` VALUES ('292', '217', '61210402');
INSERT INTO `pk_match_std_tch` VALUES ('293', '217', '0');
INSERT INTO `pk_match_std_tch` VALUES ('294', '217', '0');
INSERT INTO `pk_match_std_tch` VALUES ('295', '217', '0');
INSERT INTO `pk_match_std_tch` VALUES ('296', '218', '61410501');
INSERT INTO `pk_match_std_tch` VALUES ('297', '218', '0');
INSERT INTO `pk_match_std_tch` VALUES ('298', '218', '0');
INSERT INTO `pk_match_std_tch` VALUES ('299', '218', '0');
INSERT INTO `pk_match_std_tch` VALUES ('300', '219', '61310501');
INSERT INTO `pk_match_std_tch` VALUES ('301', '219', '0');
INSERT INTO `pk_match_std_tch` VALUES ('302', '219', '0');
INSERT INTO `pk_match_std_tch` VALUES ('303', '219', '0');
INSERT INTO `pk_match_std_tch` VALUES ('304', '220', '60310501');
INSERT INTO `pk_match_std_tch` VALUES ('305', '220', '0');
INSERT INTO `pk_match_std_tch` VALUES ('306', '220', '0');
INSERT INTO `pk_match_std_tch` VALUES ('307', '220', '0');
INSERT INTO `pk_match_std_tch` VALUES ('308', '221', '0');
INSERT INTO `pk_match_std_tch` VALUES ('309', '221', '0');
INSERT INTO `pk_match_std_tch` VALUES ('310', '221', '0');
INSERT INTO `pk_match_std_tch` VALUES ('311', '221', '0');
INSERT INTO `pk_match_std_tch` VALUES ('312', '222', '60310503');
INSERT INTO `pk_match_std_tch` VALUES ('313', '222', '0');
INSERT INTO `pk_match_std_tch` VALUES ('314', '222', '0');
INSERT INTO `pk_match_std_tch` VALUES ('315', '222', '0');
INSERT INTO `pk_match_std_tch` VALUES ('316', '223', '60410501');
INSERT INTO `pk_match_std_tch` VALUES ('317', '223', '0');
INSERT INTO `pk_match_std_tch` VALUES ('318', '223', '0');
INSERT INTO `pk_match_std_tch` VALUES ('319', '223', '0');
INSERT INTO `pk_match_std_tch` VALUES ('320', '224', '61320405');
INSERT INTO `pk_match_std_tch` VALUES ('321', '224', '61420401');
INSERT INTO `pk_match_std_tch` VALUES ('322', '224', '0');
INSERT INTO `pk_match_std_tch` VALUES ('323', '224', '0');
INSERT INTO `pk_match_std_tch` VALUES ('324', '225', '60310102');
INSERT INTO `pk_match_std_tch` VALUES ('325', '225', '0');
INSERT INTO `pk_match_std_tch` VALUES ('326', '225', '0');
INSERT INTO `pk_match_std_tch` VALUES ('327', '225', '0');
INSERT INTO `pk_match_std_tch` VALUES ('328', '226', '60310105');
INSERT INTO `pk_match_std_tch` VALUES ('329', '226', '60310106');
INSERT INTO `pk_match_std_tch` VALUES ('330', '226', '0');
INSERT INTO `pk_match_std_tch` VALUES ('331', '226', '0');
INSERT INTO `pk_match_std_tch` VALUES ('332', '227', '59210101');
INSERT INTO `pk_match_std_tch` VALUES ('333', '227', '59210102');
INSERT INTO `pk_match_std_tch` VALUES ('334', '227', '0');
INSERT INTO `pk_match_std_tch` VALUES ('335', '227', '0');
INSERT INTO `pk_match_std_tch` VALUES ('336', '228', '0');
INSERT INTO `pk_match_std_tch` VALUES ('337', '228', '0');
INSERT INTO `pk_match_std_tch` VALUES ('338', '228', '0');
INSERT INTO `pk_match_std_tch` VALUES ('339', '228', '0');
INSERT INTO `pk_match_std_tch` VALUES ('340', '229', '60220401');
INSERT INTO `pk_match_std_tch` VALUES ('341', '229', '0');
INSERT INTO `pk_match_std_tch` VALUES ('342', '229', '0');
INSERT INTO `pk_match_std_tch` VALUES ('343', '229', '0');
INSERT INTO `pk_match_std_tch` VALUES ('344', '230', '0');
INSERT INTO `pk_match_std_tch` VALUES ('345', '230', '0');
INSERT INTO `pk_match_std_tch` VALUES ('346', '230', '0');
INSERT INTO `pk_match_std_tch` VALUES ('347', '230', '0');
INSERT INTO `pk_match_std_tch` VALUES ('348', '231', '60210502');
INSERT INTO `pk_match_std_tch` VALUES ('349', '231', '0');
INSERT INTO `pk_match_std_tch` VALUES ('350', '231', '0');
INSERT INTO `pk_match_std_tch` VALUES ('351', '231', '0');
INSERT INTO `pk_match_std_tch` VALUES ('352', '232', '0');
INSERT INTO `pk_match_std_tch` VALUES ('353', '232', '0');
INSERT INTO `pk_match_std_tch` VALUES ('354', '232', '0');
INSERT INTO `pk_match_std_tch` VALUES ('355', '232', '0');
INSERT INTO `pk_match_std_tch` VALUES ('356', '233', '61290101');
INSERT INTO `pk_match_std_tch` VALUES ('357', '233', '61290102');
INSERT INTO `pk_match_std_tch` VALUES ('358', '233', '0');
INSERT INTO `pk_match_std_tch` VALUES ('359', '233', '0');
INSERT INTO `pk_match_std_tch` VALUES ('360', '234', '0');
INSERT INTO `pk_match_std_tch` VALUES ('361', '234', '0');
INSERT INTO `pk_match_std_tch` VALUES ('362', '234', '0');
INSERT INTO `pk_match_std_tch` VALUES ('363', '234', '0');
INSERT INTO `pk_match_std_tch` VALUES ('364', '235', '61310101');
INSERT INTO `pk_match_std_tch` VALUES ('365', '235', '0');
INSERT INTO `pk_match_std_tch` VALUES ('366', '235', '0');
INSERT INTO `pk_match_std_tch` VALUES ('367', '235', '0');
INSERT INTO `pk_match_std_tch` VALUES ('368', '236', '60210501');
INSERT INTO `pk_match_std_tch` VALUES ('369', '236', '0');
INSERT INTO `pk_match_std_tch` VALUES ('370', '236', '0');
INSERT INTO `pk_match_std_tch` VALUES ('371', '236', '0');
INSERT INTO `pk_match_std_tch` VALUES ('372', '237', '60220402');
INSERT INTO `pk_match_std_tch` VALUES ('373', '237', '59220401');
INSERT INTO `pk_match_std_tch` VALUES ('374', '237', '0');
INSERT INTO `pk_match_std_tch` VALUES ('375', '237', '0');
INSERT INTO `pk_match_std_tch` VALUES ('376', '238', '59220403');
INSERT INTO `pk_match_std_tch` VALUES ('377', '238', '60320405');
INSERT INTO `pk_match_std_tch` VALUES ('378', '238', '60420401');
INSERT INTO `pk_match_std_tch` VALUES ('379', '238', '0');
INSERT INTO `pk_match_std_tch` VALUES ('380', '239', '60210103');
INSERT INTO `pk_match_std_tch` VALUES ('381', '239', '60210104');
INSERT INTO `pk_match_std_tch` VALUES ('382', '239', '0');
INSERT INTO `pk_match_std_tch` VALUES ('383', '239', '0');
INSERT INTO `pk_match_std_tch` VALUES ('384', '240', '61310503');
INSERT INTO `pk_match_std_tch` VALUES ('385', '240', '0');
INSERT INTO `pk_match_std_tch` VALUES ('386', '240', '0');
INSERT INTO `pk_match_std_tch` VALUES ('387', '240', '0');
INSERT INTO `pk_match_std_tch` VALUES ('388', '241', '59212101');
INSERT INTO `pk_match_std_tch` VALUES ('389', '241', '61312101');
INSERT INTO `pk_match_std_tch` VALUES ('390', '241', '61312105');
INSERT INTO `pk_match_std_tch` VALUES ('391', '241', '61312106');
INSERT INTO `pk_match_std_tch` VALUES ('392', '242', '0');
INSERT INTO `pk_match_std_tch` VALUES ('393', '242', '0');
INSERT INTO `pk_match_std_tch` VALUES ('394', '242', '0');
INSERT INTO `pk_match_std_tch` VALUES ('395', '242', '0');
INSERT INTO `pk_match_std_tch` VALUES ('396', '243', '60310103');
INSERT INTO `pk_match_std_tch` VALUES ('397', '243', '0');
INSERT INTO `pk_match_std_tch` VALUES ('398', '243', '0');
INSERT INTO `pk_match_std_tch` VALUES ('399', '243', '0');
INSERT INTO `pk_match_std_tch` VALUES ('400', '244', '61210501');
INSERT INTO `pk_match_std_tch` VALUES ('401', '244', '0');
INSERT INTO `pk_match_std_tch` VALUES ('402', '244', '0');
INSERT INTO `pk_match_std_tch` VALUES ('403', '244', '0');
INSERT INTO `pk_match_std_tch` VALUES ('404', '245', '61320403');
INSERT INTO `pk_match_std_tch` VALUES ('405', '245', '60320403');
INSERT INTO `pk_match_std_tch` VALUES ('406', '245', '0');
INSERT INTO `pk_match_std_tch` VALUES ('407', '245', '0');
INSERT INTO `pk_match_std_tch` VALUES ('408', '246', '60210107');
INSERT INTO `pk_match_std_tch` VALUES ('409', '246', '60210108');
INSERT INTO `pk_match_std_tch` VALUES ('410', '246', '0');
INSERT INTO `pk_match_std_tch` VALUES ('411', '246', '0');
INSERT INTO `pk_match_std_tch` VALUES ('412', '247', '61210109');
INSERT INTO `pk_match_std_tch` VALUES ('413', '247', '59210105');
INSERT INTO `pk_match_std_tch` VALUES ('414', '247', '59210106');
INSERT INTO `pk_match_std_tch` VALUES ('415', '247', '0');
INSERT INTO `pk_match_std_tch` VALUES ('416', '248', '60210101');
INSERT INTO `pk_match_std_tch` VALUES ('417', '248', '60210102');
INSERT INTO `pk_match_std_tch` VALUES ('418', '248', '0');
INSERT INTO `pk_match_std_tch` VALUES ('419', '248', '0');
INSERT INTO `pk_match_std_tch` VALUES ('420', '249', '0');
INSERT INTO `pk_match_std_tch` VALUES ('421', '249', '0');
INSERT INTO `pk_match_std_tch` VALUES ('422', '249', '0');
INSERT INTO `pk_match_std_tch` VALUES ('423', '249', '0');
INSERT INTO `pk_match_std_tch` VALUES ('424', '250', '0');
INSERT INTO `pk_match_std_tch` VALUES ('425', '250', '0');
INSERT INTO `pk_match_std_tch` VALUES ('426', '250', '0');
INSERT INTO `pk_match_std_tch` VALUES ('427', '250', '0');
INSERT INTO `pk_match_std_tch` VALUES ('428', '251', '59290101');
INSERT INTO `pk_match_std_tch` VALUES ('429', '251', '59290102');
INSERT INTO `pk_match_std_tch` VALUES ('430', '251', '0');
INSERT INTO `pk_match_std_tch` VALUES ('431', '251', '0');
INSERT INTO `pk_match_std_tch` VALUES ('432', '252', '0');
INSERT INTO `pk_match_std_tch` VALUES ('433', '252', '0');
INSERT INTO `pk_match_std_tch` VALUES ('434', '252', '0');
INSERT INTO `pk_match_std_tch` VALUES ('435', '252', '0');
INSERT INTO `pk_match_std_tch` VALUES ('436', '253', '61310103');
INSERT INTO `pk_match_std_tch` VALUES ('437', '253', '61310104');
INSERT INTO `pk_match_std_tch` VALUES ('438', '253', '0');
INSERT INTO `pk_match_std_tch` VALUES ('439', '253', '0');
INSERT INTO `pk_match_std_tch` VALUES ('440', '254', '61210105');
INSERT INTO `pk_match_std_tch` VALUES ('441', '254', '61210106');
INSERT INTO `pk_match_std_tch` VALUES ('442', '254', '0');
INSERT INTO `pk_match_std_tch` VALUES ('443', '254', '0');
INSERT INTO `pk_match_std_tch` VALUES ('444', '255', '60212101');
INSERT INTO `pk_match_std_tch` VALUES ('445', '255', '60212102');
INSERT INTO `pk_match_std_tch` VALUES ('446', '255', '0');
INSERT INTO `pk_match_std_tch` VALUES ('447', '255', '0');
INSERT INTO `pk_match_std_tch` VALUES ('448', '256', '61220401');
INSERT INTO `pk_match_std_tch` VALUES ('449', '256', '59220402');
INSERT INTO `pk_match_std_tch` VALUES ('450', '256', '0');
INSERT INTO `pk_match_std_tch` VALUES ('451', '256', '0');
INSERT INTO `pk_match_std_tch` VALUES ('452', '257', '61320401');
INSERT INTO `pk_match_std_tch` VALUES ('453', '257', '0');
INSERT INTO `pk_match_std_tch` VALUES ('454', '257', '0');
INSERT INTO `pk_match_std_tch` VALUES ('455', '257', '0');
INSERT INTO `pk_match_std_tch` VALUES ('456', '258', '60390101');
INSERT INTO `pk_match_std_tch` VALUES ('457', '258', '60390105');
INSERT INTO `pk_match_std_tch` VALUES ('458', '258', '0');
INSERT INTO `pk_match_std_tch` VALUES ('459', '258', '0');
INSERT INTO `pk_match_std_tch` VALUES ('460', '259', '61310107');
INSERT INTO `pk_match_std_tch` VALUES ('461', '259', '61310108');
INSERT INTO `pk_match_std_tch` VALUES ('462', '259', '60310107');
INSERT INTO `pk_match_std_tch` VALUES ('463', '259', '60310108');
INSERT INTO `pk_match_std_tch` VALUES ('464', '260', '0');
INSERT INTO `pk_match_std_tch` VALUES ('465', '260', '0');
INSERT INTO `pk_match_std_tch` VALUES ('466', '260', '0');
INSERT INTO `pk_match_std_tch` VALUES ('467', '260', '0');
INSERT INTO `pk_match_std_tch` VALUES ('468', '261', '61210103');
INSERT INTO `pk_match_std_tch` VALUES ('469', '261', '61210104');
INSERT INTO `pk_match_std_tch` VALUES ('470', '261', '59210103');
INSERT INTO `pk_match_std_tch` VALUES ('471', '261', '0');
INSERT INTO `pk_match_std_tch` VALUES ('472', '262', '59210110');
INSERT INTO `pk_match_std_tch` VALUES ('473', '262', '59210111');
INSERT INTO `pk_match_std_tch` VALUES ('474', '262', '0');
INSERT INTO `pk_match_std_tch` VALUES ('475', '262', '0');
INSERT INTO `pk_match_std_tch` VALUES ('476', '263', '61310105');
INSERT INTO `pk_match_std_tch` VALUES ('477', '263', '61310106');
INSERT INTO `pk_match_std_tch` VALUES ('478', '263', '0');
INSERT INTO `pk_match_std_tch` VALUES ('479', '263', '0');
INSERT INTO `pk_match_std_tch` VALUES ('480', '264', '60210105');
INSERT INTO `pk_match_std_tch` VALUES ('481', '264', '60210106');
INSERT INTO `pk_match_std_tch` VALUES ('482', '264', '0');
INSERT INTO `pk_match_std_tch` VALUES ('483', '264', '0');
INSERT INTO `pk_match_std_tch` VALUES ('484', '265', '61210502');
INSERT INTO `pk_match_std_tch` VALUES ('485', '265', '0');
INSERT INTO `pk_match_std_tch` VALUES ('486', '265', '0');
INSERT INTO `pk_match_std_tch` VALUES ('487', '265', '0');
INSERT INTO `pk_match_std_tch` VALUES ('488', '266', '61310505');
INSERT INTO `pk_match_std_tch` VALUES ('489', '266', '0');
INSERT INTO `pk_match_std_tch` VALUES ('490', '266', '0');
INSERT INTO `pk_match_std_tch` VALUES ('491', '266', '0');
INSERT INTO `pk_match_std_tch` VALUES ('492', '267', '60290101');
INSERT INTO `pk_match_std_tch` VALUES ('493', '267', '0');
INSERT INTO `pk_match_std_tch` VALUES ('494', '267', '0');
INSERT INTO `pk_match_std_tch` VALUES ('495', '267', '0');
INSERT INTO `pk_match_std_tch` VALUES ('496', '268', '0');
INSERT INTO `pk_match_std_tch` VALUES ('497', '268', '0');
INSERT INTO `pk_match_std_tch` VALUES ('498', '268', '0');
INSERT INTO `pk_match_std_tch` VALUES ('499', '268', '0');
INSERT INTO `pk_match_std_tch` VALUES ('500', '269', '61212101');
INSERT INTO `pk_match_std_tch` VALUES ('501', '269', '61212102');
INSERT INTO `pk_match_std_tch` VALUES ('502', '269', '0');
INSERT INTO `pk_match_std_tch` VALUES ('503', '269', '0');
INSERT INTO `pk_match_std_tch` VALUES ('504', '270', '60310401');
INSERT INTO `pk_match_std_tch` VALUES ('505', '270', '0');
INSERT INTO `pk_match_std_tch` VALUES ('506', '270', '0');
INSERT INTO `pk_match_std_tch` VALUES ('507', '270', '0');
INSERT INTO `pk_match_std_tch` VALUES ('508', '271', '61210406');
INSERT INTO `pk_match_std_tch` VALUES ('509', '271', '0');
INSERT INTO `pk_match_std_tch` VALUES ('510', '271', '0');
INSERT INTO `pk_match_std_tch` VALUES ('511', '271', '0');
INSERT INTO `pk_match_std_tch` VALUES ('512', '272', '61312107');
INSERT INTO `pk_match_std_tch` VALUES ('513', '272', '0');
INSERT INTO `pk_match_std_tch` VALUES ('514', '272', '0');
INSERT INTO `pk_match_std_tch` VALUES ('515', '272', '0');

-- ----------------------------
-- Table structure for pk_missing
-- ----------------------------
DROP TABLE IF EXISTS `pk_missing`;
CREATE TABLE `pk_missing` (
  `ms_id` int(5) NOT NULL AUTO_INCREMENT,
  `ms_u_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ms_u_table` text COLLATE utf8mb4_unicode_ci,
  `u_id` int(20) DEFAULT NULL,
  `ms_table` text COLLATE utf8mb4_unicode_ci,
  `ms_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `u_ms_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ms_status` text COLLATE utf8mb4_unicode_ci,
  `ms_detail` text COLLATE utf8mb4_unicode_ci,
  `ms_chart_month` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ms_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_missing
-- ----------------------------
INSERT INTO `pk_missing` VALUES ('70', 't24112541', 'pk_admin', '86', 'pk_machine', '2019-03-09 17:31:10', '2019-03-09 17:31:46', 'ขั้นที่ 2 รับเรื่องแล้ว', 'asdfghjkl;\'\n', '03');

-- ----------------------------
-- Table structure for pk_object_control
-- ----------------------------
DROP TABLE IF EXISTS `pk_object_control`;
CREATE TABLE `pk_object_control` (
  `oc_id` int(5) NOT NULL AUTO_INCREMENT,
  `oc_u_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oc_u_table` text COLLATE utf8mb4_unicode_ci,
  `oc_oc_u_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oc_oc_u_table` text COLLATE utf8mb4_unicode_ci,
  `oc_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `oc_update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `oc_status` text COLLATE utf8mb4_unicode_ci,
  `itm_oc_id` int(5) DEFAULT NULL,
  `oc_chart_month` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`oc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_object_control
-- ----------------------------
INSERT INTO `pk_object_control` VALUES ('1', '85', 'pk_machine', 't24112541', 'pk_admin', '2019-03-08 16:31:10', '2019-03-08 16:42:10', 'ผิดระเบียบ', '1', '03');

-- ----------------------------
-- Table structure for pk_student
-- ----------------------------
DROP TABLE IF EXISTS `pk_student`;
CREATE TABLE `pk_student` (
  `std_id` int(5) NOT NULL AUTO_INCREMENT,
  `std_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_gender` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_prename` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_lname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_pin_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_birthday` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_tel2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_tel` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_blood` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  PRIMARY KEY (`std_id`)
) ENGINE=MyISAM AUTO_INCREMENT=759 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_student
-- ----------------------------
INSERT INTO `pk_student` VALUES ('658', '6041010515', 'ช', 'นาย', 'สมรักษ์', 'เดชอุดม', '1369900375888', '04/08/39', '6041010515', '1369900375888', '60410101', '-', '-', 'B', '1');
INSERT INTO `pk_student` VALUES ('659', '6041010514', 'ช', 'นาย', 'ปัณณวัฒน์', 'ไทยชัยภูมิ', '1330700165997', '17/03/40', '6041010514', '1330700165997', '60410101', '-', '-', 'A', '1');
INSERT INTO `pk_student` VALUES ('660', '6041010513', 'ช', 'นาย', 'เกียรติก้อง', 'ไกรมาทขาว', '2360800020859', '19/09/39', '6041010513', '2360800020859', '60410101', '-', '-', 'AB', '1');
INSERT INTO `pk_student` VALUES ('661', '6041010512', 'ช', 'นาย', 'จักรพันธุ์', 'ชัยณรงค์', '1369900364746', '23/04/39', '6041010512', '1369900364746', '60410101', '-', '-', 'AB', '1');
INSERT INTO `pk_student` VALUES ('662', '6041010511', 'ช', 'นาย', 'เอกรัตน์', 'อินสา', '1240800170543', '08/05/40', '6041010511', '1240800170543', '60410101', '-', '-', 'O', '1');
INSERT INTO `pk_student` VALUES ('663', '6041010510', 'ญ', 'นางสาว', 'พิรุณพร', 'ดีมูล', '1360500235525', '18/05/39', '6041010510', '1360500235525', '60410101', '-', '-', 'O', '1');
INSERT INTO `pk_student` VALUES ('664', '6041010509', 'ช', 'นาย', 'ประเวศ', 'จำปาทอง', '1360600191473', '11/01/39', '6041010509', '1360600191473', '60410101', '-', '-', 'AB', '1');
INSERT INTO `pk_student` VALUES ('665', '6041010508', 'ช', 'นาย', 'พงศกร', 'แสนศรีจันทร์', '1100400929225', '22/12/40', '6041010508', '1100400929225', '60410101', '-', '-', 'B', '1');
INSERT INTO `pk_student` VALUES ('666', '6041010507', 'ช', 'นาย', 'จารุเดช', 'พรประไพร', '1100801201559', '07/05/40', '6041010507', '1100801201559', '60410101', '-', '-', 'O', '1');
INSERT INTO `pk_student` VALUES ('667', '6041010506', 'ช', 'นาย', 'ณัฐพงษ์', 'แนวประเสริฐ', '1409600215850', '05/10/39', '6041010506', '1409600215850', '60410101', '-', '-', 'O', '1');
INSERT INTO `pk_student` VALUES ('668', '6041010505', 'ช', 'นาย', 'วุฒิพงศ์', 'ผลธรรมไทย', '1360500225309', '09/05/38', '6041010505', '1360500225309', '60410101', '0982232314', '0982232314', 'O', '1');
INSERT INTO `pk_student` VALUES ('669', '6041010504', 'ช', 'นาย', 'รตนสยม', 'วรรัตนมงคล', '1369900326755', '05/04/38', '6041010504', '1369900326755', '60410101', '-', '-', 'B', '1');
INSERT INTO `pk_student` VALUES ('670', '6041010502', 'ช', 'นาย', 'ณัฐพล', 'พรมนอก', '1369900393347', '05/01/40', '6041010502', '1369900393347', '60410101', '0872448057', '0872448057', 'B', '1');
INSERT INTO `pk_student` VALUES ('671', '6041010501', 'ช', 'นาย', 'อัชญา', 'ขลังวิชา', '1369900302287', '30/07/37', '6041010501', '1369900302287', '60410101', '-', '-', 'B', '1');
INSERT INTO `pk_student` VALUES ('672', '6039010035', 'ญ', 'นางสาว', 'อาทิติยา', 'ใจเย็น', '1190600061296', '06/12/41', '6039010035', '1190600061296', '60390105', '-', '-', 'O', '1');
INSERT INTO `pk_student` VALUES ('673', '6039010030', 'ช', 'นาย', 'อานนท์', 'ชินแสง', '1102002882093', '21/02/41', '6039010030', '1102002882093', '60390105', '230', '0877500534', 'O', '1');
INSERT INTO `pk_student` VALUES ('674', '6039010029', 'ญ', 'นางสาว', 'นฤมนต์', 'ธงสันเทียะ', '1360500250087', '22/10/40', '6039010029', '1360500250087', '60390105', '0807872939', '0807872939', 'B', '1');
INSERT INTO `pk_student` VALUES ('675', '6039010026', 'ญ', 'นางสาว', 'ศริญญา', 'ทวีคูณ', '1369900441813', '08/04/41', '6039010026', '1369900441813', '60390105', '0982017014', '0982017014', 'O', '1');
INSERT INTO `pk_student` VALUES ('676', '6039010025', 'ช', 'นาย', 'ธนกร', 'จุลอักษร', '1309901041304', '13/06/37', '6039010025', '1309901041304', '60390105', '0908297456', '0908297456', 'O', '1');
INSERT INTO `pk_student` VALUES ('677', '6039010023', 'ญ', 'นางสาว', 'อาทิตยา', 'เพชรสิงห์', '1369900405191', '04/05/40', '6039010023', '1369900405191', '60390105', '0621290951', '0621290951', 'O', '1');
INSERT INTO `pk_student` VALUES ('678', '6039010022', 'ญ', 'นางสาว', 'จุฑาทิพย์', 'อุทัย', '1369900463914', '17/10/41', '6039010022', '1369900463914', '60390105', '0897212253', '0897212253', 'O', '1');
INSERT INTO `pk_student` VALUES ('679', '6039010021', 'ญ', 'นางสาว', 'ณัฐณิชา', 'เติบสูงเนิน', '1361500008325', '08/05/40', '6039010021', '1361500008325', '60390105', '-', '-', 'B', '1');
INSERT INTO `pk_student` VALUES ('680', '6039010019', 'ญ', 'นางสาว', 'พรพรรณ', 'สันติพงษ์ไพบูลย์', '1360100132885', '25/01/42', '6039010019', '1360100132885', '60390105', '0981299186', '0981299186', 'A', '1');
INSERT INTO `pk_student` VALUES ('681', '6039010018', 'ช', 'นาย', 'ศุภชัย', 'กุลเกตุ', '1369900490733', '24/07/42', '6039010018', '1369900490733', '60390105', '0986806072', '-', 'O', '1');
INSERT INTO `pk_student` VALUES ('682', '6039010014', 'ช', 'นาย', 'สหรัถ', 'ต่อพล', '1361200235431', '24/03/40', '6039010014', '1361200235431', '60390105', '0632433386', '-', 'B', '1');
INSERT INTO `pk_student` VALUES ('683', '6039010013', 'ช', 'นาย', 'ปิยวัช', 'น้อยยอด', '1360200070342', '08/07/41', '6039010013', '1360200070342', '60390105', '0851301822', '0851301822', 'A', '1');
INSERT INTO `pk_student` VALUES ('684', '6039010012', 'ช', 'นาย', 'วรวุฒิ', 'ชัยสนาม', '1369900439380', '11/03/41', '6039010012', '1369900439380', '60390105', '0894463962', '0894463962', 'O', '1');
INSERT INTO `pk_student` VALUES ('685', '6039010010', 'ญ', 'นางสาว', 'ปาริฉัตร', 'ทองธรรมชาติ', '1369900470007', '16/12/41', '6039010010', '1369900470007', '60390105', '-', '-', 'O', '1');
INSERT INTO `pk_student` VALUES ('686', '6039010008', 'ญ', 'นางสาว', 'ศิริลักษณ์', 'จันทร์ศรี', '1369900469611', '18/12/41', '6039010008', '1369900469611', '60390101', '0810462836', '0875435160', 'O', '1');
INSERT INTO `pk_student` VALUES ('687', '6039010007', 'ญ', 'นางสาว', 'สุนิสา', 'วงศ์พรม', '1361000306386', '18/12/41', '6039010007', '1361000306386', '60390101', '0896186462', '0896186462', 'O', '1');
INSERT INTO `pk_student` VALUES ('688', '6039010006', 'ญ', 'นางสาว', 'ปณิดา', 'จำนงบุญ', '1119900817718', '19/01/42', '6039010006', '1119900817718', '60390101', '0827960969', '0827960969', 'B', '1');
INSERT INTO `pk_student` VALUES ('689', '6039010005', 'ช', 'นาย', 'สรรเพชญ', 'กิจเปรื่อง', '1100702832437', '18/02/42', '6039010005', '1100702832437', '60390101', '0896249274', '0896249274', 'A', '1');
INSERT INTO `pk_student` VALUES ('690', '6039010003', 'ญ', 'นางสาว', 'นนทิยา', 'ผลาผล', '1451100255863', '05/12/41', '6039010003', '1451100255863', '60390101', '0869222062', '0869222062', '-', '1');
INSERT INTO `pk_student` VALUES ('691', '6039010002', 'ช', 'นาย', 'ชาญวิทย์', 'บุญปลื้ม', '1369900467391', '24/11/41', '6039010002', '1369900467391', '60390101', '0852114119', '0852114119', 'B', '1');
INSERT INTO `pk_student` VALUES ('692', '6039010001', 'ญ', 'นางสาว', 'กรุณาพร', 'ผลปาน', '1369900474509', '11/02/42', '6039010001', '1369900474509', '60390101', '0929734500', '0929734500', 'O', '1');
INSERT INTO `pk_student` VALUES ('693', '6032040098', 'ญ', 'นางสาว', 'ฉัตรฤทัย', 'หอมสันเทียะ', '1369900464171', '15/10/41', '6032040098', '1369900464171', '60320405', '-', '-', 'A', '1');
INSERT INTO `pk_student` VALUES ('694', '6032040097', 'ช', 'นาย', 'พีลพล', 'สิงห์วี', '1100400909801', '28/09/40', '6032040097', '1100400909801', '60320405', '0979389815', '0979389815', 'B', '1');
INSERT INTO `pk_student` VALUES ('695', '6032040096', 'ญ', 'นางสาว', 'น้ำเพชร', 'ไกรบำรุง', '1369900467740', '03/12/41', '6032040096', '1369900467740', '60320405', '0883153953', '0883153953', 'A', '1');
INSERT INTO `pk_student` VALUES ('696', '6032040095', 'ญ', 'นางสาว', 'สุวรรณี', 'พูนประสิทธิ์', '1360600204214', '19/03/41', '6032040095', '1360600204214', '60320405', '0872423974', '0872423974', 'O', '1');
INSERT INTO `pk_student` VALUES ('697', '6032040094', 'ญ', 'นางสาว', 'จันทกานต์', 'โพธิ์นอก', '1369900478121', '22/06/42', '6032040094', '1369900478121', '60320405', '0906969851', '0906969851', '-', '1');
INSERT INTO `pk_student` VALUES ('698', '6032040093', 'ญ', 'นางสาว', 'ภัทราวดี', 'ลาภเกิด', '1410601360634', '16/03/42', '6032040093', '1410601360634', '60320401', '0860260338', '0860260338', 'O', '1');
INSERT INTO `pk_student` VALUES ('699', '6032040092', 'ญ', 'นางสาว', 'ปนิดา', 'นาประจักร', '1369900458601', '08/08/41', '6032040092', '1369900458601', '60320405', '0830527364', '0830527364', 'A', '1');
INSERT INTO `pk_student` VALUES ('700', '6032040091', 'ญ', 'นางสาว', 'สุภาพร', 'มั่งคั่ง', '1360500264932', '26/05/42', '6032040091', '1360500264932', '60320405', '-', '0833773828', '-', '1');
INSERT INTO `pk_student` VALUES ('701', '6032040090', 'ญ', 'นางสาว', 'ณัฐวรรณ', 'นุชสุวรรณ', '2302301011619', '24/09/41', '6032040090', '2302301011619', '60320405', '0987066005', '0987066005', 'B', '1');
INSERT INTO `pk_student` VALUES ('702', '6032040089', 'ช', 'นาย', 'กิตติชาติ', 'ตู้จินดา', '1102003050431', '18/06/42', '6032040089', '1102003050431', '60320405', '0892435514', '0892435514', '-', '1');
INSERT INTO `pk_student` VALUES ('703', '6032040088', 'ช', 'นาย', 'ปิยพัทธ์', 'พิพิธกุล', '1369900469076', '06/12/41', '6032040088', '1369900469076', '60320405', '0828687939', '0856380038', '-', '1');
INSERT INTO `pk_student` VALUES ('704', '6032040087', 'ญ', 'นางสาว', 'อภิรดี', 'พงษ์สุพรรณ', '1361200234265', '18/02/40', '6032040087', '1361200234265', '60320405', '0630565103', '0630565103', 'O', '1');
INSERT INTO `pk_student` VALUES ('705', '6032040086', 'ญ', 'นางสาว', 'สุวลักษณ์', 'สินขาว', '1302300042881', '03/04/39', '6032040086', '1302300042881', '60320405', '0816007918', '0816007918', 'B', '1');
INSERT INTO `pk_student` VALUES ('706', '6032040084', 'ช', 'นาย', 'รักพงศ์', 'ดวงเงิน', '1369900415855', '14/08/40', '6032040084', '1369900415855', '60320405', '0816001205', '0816001205', 'AB', '1');
INSERT INTO `pk_student` VALUES ('707', '6032040083', 'ช', 'นาย', 'ณครินทร์', 'พูนชัยภูมิ', '1369900464635', '29/10/41', '6032040083', '1369900464635', '60320405', '0863235521', '0863235521', 'O', '1');
INSERT INTO `pk_student` VALUES ('708', '6142040508', 'ญ', 'นางสาว', 'ดวงเดือน', 'อักษรเสือ', '1360600205369', '09/06/41', '6142040508', '1360600205369', '61420401', '', '0951061566', 'B', '1');
INSERT INTO `pk_student` VALUES ('709', '6142040507', 'ช', 'นาย', 'ทีปกร', 'ต่อศักดิ์', '1369900378721', '01/09/39', '6142040507', '1369900378721', '61420401', '0440671756', '0896300340', 'O', '1');
INSERT INTO `pk_student` VALUES ('710', '6142040506', 'ช', 'นาย', 'เกียรติศักดิ์', 'เขียนไธสง', '1369900388408', '25/11/39', '6142040506', '1369900388408', '61420401', '0872425314', '0872425314', 'O', '1');
INSERT INTO `pk_student` VALUES ('711', '6142040505', 'ญ', 'นางสาว', 'ธัญชนก', 'ตั้งพงษ์', '1361000288736', '05/01/41', '6142040505', '1361000288736', '61420401', '0887034447', '0887034447', 'O', '1');
INSERT INTO `pk_student` VALUES ('712', '6142040504', 'ช', 'นาย', 'กัมปนาท', 'บำรุงญาติ', '1360500241657', '16/12/39', '6142040504', '1360500241657', '61420401', '0833719942', '0833719942', 'AB', '1');
INSERT INTO `pk_student` VALUES ('713', '6142040503', 'ญ', 'นางสาว', 'เกศินี', 'ปาดเปอร์', '1369900423301', '13/10/40', '6142040503', '1369900423301', '61420401', '0848323760', '0848323760', 'A', '1');
INSERT INTO `pk_student` VALUES ('714', '6142040502', 'ญ', 'นางสาว', 'พรนรินทร์', 'ศรีษะเทียน', '1360200069263', '14/11/40', '6142040502', '1360200069263', '61420401', '0868863777', '0868863777', 'A', '1');
INSERT INTO `pk_student` VALUES ('715', '6142040501', 'ช', 'นาย', 'จิรัฏฐ์', 'ปุนราชม', '1369900414573', '03/08/40', '6142040501', '1369900414573', '61420401', '0815477421', '0894230529', 'B', '1');
INSERT INTO `pk_student` VALUES ('716', '6142010507', 'ช', 'นาย', 'ณัฐริญ', 'มหานพ', '1119900294634', '23/05/34', '6142010507', '1119900294634', '61420101', '0821556221', '0821556221', 'B', '1');
INSERT INTO `pk_student` VALUES ('717', '6142010506', 'ญ', 'นางสาว', 'รุ่งฤดี', 'ธรรมรักษา', '1369900368091', '25/05/39', '6142010506', '1369900368091', '61420101', '0929320874', '0929320874', '-', '1');
INSERT INTO `pk_student` VALUES ('718', '6142010505', 'ญ', 'นางสาว', 'กมลชนก', 'นิตย์งาม', '1103300188684', '09/06/40', '6142010505', '1103300188684', '61420101', '0818672008', '0854918312', 'A', '1');
INSERT INTO `pk_student` VALUES ('719', '6142010504', 'ญ', 'นางสาว', 'ธนาพร', 'สมมาตย์', '1309902566508', '07/04/41', '6142010504', '1309902566508', '61420101', '0887124212', '0887124212', '-', '1');
INSERT INTO `pk_student` VALUES ('720', '6142010503', 'ญ', 'นางสาว', 'สิริลักษณ์', 'ขอดตะครุ', '1360600192437', '14/03/40', '6142010503', '1360600192437', '61420101', '0933920168', '0933920168', '-', '1');
INSERT INTO `pk_student` VALUES ('721', '6142010502', 'ญ', 'นางสาว', 'ศรีสุดา', 'กุลรอด', '1369900407291', '23/05/40', '6142010502', '1369900407291', '61420101', '0850248919', '0850248919', '-', '1');
INSERT INTO `pk_student` VALUES ('722', '6142010501', 'ญ', 'นางสาว', 'จรรยา', 'พุฒกลาง', '1369900374521', '28/07/39', '6142010501', '1369900374521', '61420101', '0819669458', '0819669458', '-', '1');
INSERT INTO `pk_student` VALUES ('723', '6141050513', 'ช', 'นาย', 'โชติวัฒน์', 'น้อยวัน', '1369900374032', '11/07/39', '6141050513', '1369900374032', '61410501', '0992477277', '0992477277', 'O', '1');
INSERT INTO `pk_student` VALUES ('724', '6141050512', 'ช', 'นาย', 'วันเฉลิม', 'พรหมสุขันธ์', '1369900418722', '01/02/40', '6141050512', '1369900418722', '61410501', '0611295319', '0611295319', 'AB', '1');
INSERT INTO `pk_student` VALUES ('725', '6141050511', 'ช', 'นาย', 'เกรียงไกร', 'สายโสภา', '1620800008360', '19/07/41', '6141050511', '1620800008360', '61410501', '0828195648', '0828195648', 'B', '1');
INSERT INTO `pk_student` VALUES ('726', '6141050510', 'ญ', 'นางสาว', 'กนกกร', 'กายชัยภูมิ', '1369900426911', '06/11/40', '6141050510', '1369900426911', '61410501', '', '', 'B', '1');
INSERT INTO `pk_student` VALUES ('727', '6141050509', 'ช', 'นาย', 'สวราชย์', 'สุภาพงษ์', '1369900426709', '06/11/40', '6141050509', '1369900426709', '61410501', '0951768027', '0951768027', 'O', '1');
INSERT INTO `pk_student` VALUES ('728', '6141050508', 'ช', 'นาย', 'นนทกร', 'คำลาย', '1360600203587', '26/01/41', '6141050508', '1360600203587', '61410501', '', '', 'AB', '1');
INSERT INTO `pk_student` VALUES ('729', '6141050507', 'ช', 'นาย', 'สุดใจ', 'เพชรสูงเนิน', '1365600011771', '29/05/40', '6141050507', '1365600011771', '61410501', '0615309513', '0615309513', 'B', '1');
INSERT INTO `pk_student` VALUES ('730', '6141050506', 'ช', 'นาย', 'ศราวุธ', 'เกิดนาแซง', '1360600194561', '01/08/39', '6141050506', '1360600194561', '61410501', '0807318694', '0807318694', 'A', '1');
INSERT INTO `pk_student` VALUES ('731', '6141050505', 'ช', 'นาย', 'ปราบ', 'ขาวขำ', '1399900039268', '23/12/39', '6141050505', '1399900039268', '61410501', '085311316', '0853113316', 'A', '1');
INSERT INTO `pk_student` VALUES ('732', '6141050504', 'ช', 'นาย', 'ไพศาล', 'คิ้มเข้ม', '1360100124424', '15/02/36', '6141050504', '1360100124424', '61410501', '0872516764', '0872516764', 'B', '1');
INSERT INTO `pk_student` VALUES ('733', '6141050503', 'ช', 'นาย', 'ศักดิ์ดา', 'นิ่มนวน', '1369900408280', '02/06/40', '6141050503', '1369900408280', '61410501', '0922548289', '0922548289', 'O', '1');
INSERT INTO `pk_student` VALUES ('734', '6141050502', 'ช', 'นาย', 'ชาญณรงค์', 'มาสอาด', '1369900401412', '31/03/40', '6141050502', '1369900401412', '61410501', '0822469112', '0822469112', 'A', '1');
INSERT INTO `pk_student` VALUES ('735', '6141050501', 'ช', 'นาย', 'พิพัฒน์', 'ดีดศรี', '1360700113881', '30/07/39', '6141050501', '1360700113881', '61410501', '0845774550', '0845774550', 'O', '1');
INSERT INTO `pk_student` VALUES ('736', '6141040520', 'ช', 'นาย', 'วัฒน์ธนัชชนม์', 'พันธ์อินป้อ', '1319900527998', '04/02/40', '6141040520', '1319900527998', '61410401', '0857749485', '0857749485', 'A', '1');
INSERT INTO `pk_student` VALUES ('737', '6141040519', 'ช', 'นาย', 'ประมวลพจน์', 'โชคบัณฑิต', '1390300033074', '12/09/40', '6141040519', '1390300033074', '61410401', '0967893983', '096789383', 'B', '1');
INSERT INTO `pk_student` VALUES ('738', '6141040518', 'ช', 'นาย', 'ถกลเกียรติ', 'ฐานมั่น', '1369900444537', '22/04/40', '6141040518', '1369900444537', '61410401', '0643575209', '0643575209', 'A', '1');
INSERT INTO `pk_student` VALUES ('739', '6141040517', 'ช', 'นาย', 'พัทณะ', 'พงษ์จันทร์', '1269900264921', '25/10/40', '6141040517', '1269900264921', '61410401', '-', '0931296838', 'B', '1');
INSERT INTO `pk_student` VALUES ('740', '6141040516', 'ช', 'นาย', 'ปกครอง', 'วิพันธ์', '1369900422002', '30/09/40', '6141040516', '1369900422002', '61410401', '0892108721', '0892108721', 'B', '1');
INSERT INTO `pk_student` VALUES ('741', '6141040515', 'ช', 'นาย', 'สัญญา', 'ยศรุ่งเรือง', '1360400229221', '08/07/40', '6141040515', '1360400229221', '61410401', '0872556182', '0872556182', 'B', '1');
INSERT INTO `pk_student` VALUES ('742', '6141040514', 'ช', 'นาย', 'ถิรวุฒิ', 'ศรีดาว', '1100501459747', '21/10/40', '6141040514', '1100501459747', '61410401', '0892185931', '-', 'O', '1');
INSERT INTO `pk_student` VALUES ('743', '6141040513', 'ช', 'นาย', 'ภาสกร', 'เพิ่มยินดี', '1100501419923', '05/06/40', '6141040513', '1100501419923', '61410401', '0897457373', '0897457373', 'O', '1');
INSERT INTO `pk_student` VALUES ('744', '6141040512', 'ช', 'นาย', 'เนติพงษ์', 'เตลอด', '1360800082783', '29/05/40', '6141040512', '1360800082783', '61410401', '-', '-', 'B', '1');
INSERT INTO `pk_student` VALUES ('745', '6141040511', 'ช', 'นาย', 'ทัตพงษ์', 'ลำเปิงมี', '1570300141894', '25/08/39', '6141040511', '1570300141894', '61410401', '0869955913', '0869955913', 'A', '1');
INSERT INTO `pk_student` VALUES ('746', '6141040510', 'ช', 'นาย', 'สหรัฐ', 'หร่ายขุนทด', '1100701849697', '26/05/37', '6141040510', '1100701849697', '61410401', '0942895249', '0942895249', 'A', '1');
INSERT INTO `pk_student` VALUES ('747', '6141040509', 'ช', 'นาย', 'ภิญโญ', 'โคตจันทึก', '1100702585740', '18/09/40', '6141040509', '1100702585740', '61410401', '0983249590', '0983249590', 'B', '1');
INSERT INTO `pk_student` VALUES ('748', '6141040508', 'ช', 'นาย', 'ศักรินทร์', 'มีมั่งคั่ง', '1369900415511', '06/08/40', '6141040508', '1369900415511', '61410401', '0903648335', '0903648335', 'AB', '1');
INSERT INTO `pk_student` VALUES ('749', '6141040507', 'ช', 'นาย', 'วิทยา', 'หาญชาติ', '1369900436798', '18/02/41', '6141040507', '1369900436798', '61410401', '0923185073', '0923185073', 'AB', '1');
INSERT INTO `pk_student` VALUES ('750', '6141040506', 'ช', 'นาย', 'ไกรวิชญ์', 'ยอดท่าหว้า', '1369900378097', '22/08/39', '6141040506', '1369900378097', '61410401', '0930349860', '0930349860', 'O', '1');
INSERT INTO `pk_student` VALUES ('751', '6141040505', 'ช', 'นาย', 'ณัฐกรณ์', 'หฤชัยงาม', '1309902488876', '01/09/40', '6141040505', '1309902488876', '61410401', '-', '-', 'B', '1');
INSERT INTO `pk_student` VALUES ('752', '6141040504', 'ช', 'นาย', 'สุภกิจ', 'โชคเหมาะ', '1369900411043', '27/06/40', '6141040504', '1369900411043', '61410401', '0812821011', '0812821011', '-', '1');
INSERT INTO `pk_student` VALUES ('753', '6141040503', 'ช', 'นาย', 'สุรเวช', 'สุนทริยานนท์', '1369900409961', '14/06/40', '6141040503', '1369900409961', '61410401', '0835858958', '0835858958', 'B', '1');
INSERT INTO `pk_student` VALUES ('754', '6141040502', 'ช', 'นาย', 'ธนวัฒน์', 'สิงห์โตทอง', '1101500972816', '21/04/41', '6141040502', '1101500972816', '61410401', '0899461547', '0899461547', 'O', '1');
INSERT INTO `pk_student` VALUES ('755', '6141040501', 'ช', 'นาย', 'ธีรพงษ์', 'ฉายศรี', '1369900372439', '07/07/39', '6141040501', '1369900372439', '61410401', '0872597335', '0872597335', 'B', '1');
INSERT INTO `pk_student` VALUES ('756', '6141020521', 'ช', 'นาย', 'บดินทร์', 'บุญมาตุ่น', '1369900464724', '28/10/41', '6141020521', '1369900464724', '61410201', '-', '-', 'O', '1');
INSERT INTO `pk_student` VALUES ('757', '6141020520', 'ช', 'นาย', 'ฤทธิไกร', 'พลศรีราษฎร์', '1369900433454', '06/01/41', '6141020520', '1369900433454', '61410201', '-', '0872397082', 'B', '1');
INSERT INTO `pk_student` VALUES ('758', '1', 'ช', 'นาย', '1', '1', '1', '2017-02-01', '1', '1', '61310208', '1', '1', 'B', '1');

-- ----------------------------
-- Table structure for pk_student_log
-- ----------------------------
DROP TABLE IF EXISTS `pk_student_log`;
CREATE TABLE `pk_student_log` (
  `run_id` int(5) NOT NULL AUTO_INCREMENT,
  `std_id` int(5) NOT NULL,
  `std_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_gender` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_prename` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_lname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_pin_id` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_birthday` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_code` text COLLATE utf8mb4_unicode_ci,
  `std_tel2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_tel` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_blood` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_log_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `u_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_log_work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`run_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_student_log
-- ----------------------------
INSERT INTO `pk_student_log` VALUES ('76', '758', '1', 'ช', 'นาย', '1', '1', '1', '2017-02-01', '1', '1', '61310208', '1', '1', 'B', '2019-03-06 22:13:49', 't24112541', 'เพิ่มข้อมูล');

-- ----------------------------
-- Table structure for pk_teacher
-- ----------------------------
DROP TABLE IF EXISTS `pk_teacher`;
CREATE TABLE `pk_teacher` (
  `t_id` int(5) NOT NULL AUTO_INCREMENT,
  `t_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_dep` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_tel` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  PRIMARY KEY (`t_id`)
) ENGINE=MyISAM AUTO_INCREMENT=273 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_teacher
-- ----------------------------
INSERT INTO `pk_teacher` VALUES ('206', '6061001', 'นายชัยรัตน์  สุตภักดี', '2106', '0818784216', '6061001', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('207', '5052002', 'นายกมลาสน์  คำวชิรพิทักษ์', '2105', '0810655142', '5052002', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('208', '6063101', 'นายสกนธ์  หมั่นกิจ', '2107', '0819774280', '6063101', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('209', '6061003', 'นางสมหมาย  คำหงษา', '2106', '0887117748', '6061003', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('210', '6061002', 'นายฉลอง  ม่วงทิพย์', '2106', '0833653323', '6061002', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('211', '2011003', 'นายธีรพงษ์   อินทรสมบัติ', '2101', '-', '2011003', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('212', '2011004', 'นายอาทิตย์  บุตรสุด', '2101', '0819990977', '2011004', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('213', '2011001', 'นายเสถียร  มะสุทธิ', '2101', '0818765165', '2011001', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('214', '2011007', 'นายคงฤทธิ์  สีชำนิ', '2101', '0818762951', '2011007', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('215', '2011006', 'นายบุญมี  โคตรประทุม', '2101', '0868700706', '2011006', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('216', '7071001', 'นายกัมปนาท  หวะสุวรรณ', '3109', '', '7071001', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('217', '5051005', 'นายกฤษะ  ฤาชา', '2104', '0897129870', '5051005', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('218', '5052001', 'นายสุพิน  ปานะสุนทร', '2105', '0817893644', '5052001', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('219', '5052005', 'นายจีรปัฎน์  พุ่มศฤงฆาร', '2105', '0819673053', '5052005', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('220', '5052007', 'นายประภาส  สุวรรณเพชร', '2105', '0862578230', '5052007', '12345654321', '1');
INSERT INTO `pk_teacher` VALUES ('221', '5052009', 'นางสาวปาณิศา  ทองสกุล', '2105', '0868029777', '5052009', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('222', '5052006', 'นายทิพยา  สุวรรณชัย', '2105', '0862578230', '5052006', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('223', '5052008', 'นายสุขสรรค์  พรธิอั้ว', '2105', '0804754910', '5052008', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('224', '8084001', 'นางประภัสสร  อนิลบล', '3204', '0896260273', '8084001', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('225', '2011009', 'นายมนูศักดิ์  สารผล', '2101', '0876765982', '2011009', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('226', '2011010', 'นายวิธวัฒน์  สารโภค', '2101', '0812687585', '2011010', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('227', '2011008', 'นายชัชชัย  จุงอินทะ', '2101', '0844294057', '2011008', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('228', '8084006', 'นายพูนศักดิ์  ศรีดี', '3204', '0876782754', '8084006', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('229', '8084005', 'นายยอดเยี่ยม  เหล่านนท์ชัย', '3204', '0854401991', '8084005', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('230', '5052011', 'นายเกียรติศักดิ์  บุรีจันทร์', '2105', '', '5052011', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('231', '5052013', 'นายศราวุธ  ดีแสง', '2105', '-', '5052013', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('232', '5052010', 'นายอภิรักษ์  รักษากุล', '2105', '0898445675', '5052010', '445675', '1');
INSERT INTO `pk_teacher` VALUES ('233', '7071002', 'จ่าสิบเอกเอกศักดิ์  แหชัยภูมิ', '3109', '0806085870', '7071002', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('234', '6063103', 'นายณรงค์ฤทธิ์  เจริญภูมิ', '2107', '', '6063103', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('235', '2011005', 'นายนิวัฒน์  ศิริวุฒิ', '2101', '0818768116', '2011005', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('236', '5052012', 'นายกาญจน์  เหลืองดอกไม้', '2105', '0854687988', '5052012', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('237', '8084007', 'นางสาวเสาวลักษณ์  ตันติพัฒนานนท์', '3204', '0877791953', '8084007', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('238', '8084008', 'นางสาวรำไพ  อมรเจริญกุล', '3204', '0868750027', '8084008', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('239', '2011011', 'นายศักดิ์สิทธิ์  บุญมาก', '2101', '0894243544', '2011011', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('240', '5052004', 'นายวิรุฬห์  คเชนทร์รัตนกุล', '2105', '0862472884', '5052004', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('241', '6063102', 'นายยศวัฒน์  บุญมาปัด', '2107', '0892814443', '6063102', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('242', '8084009', 'นางสาวมณีรัตน์  พระไตรยะ', '3204', '-', '8084009', '66543211', '1');
INSERT INTO `pk_teacher` VALUES ('243', '2011012', 'นายสมชาย  เจริญผล', '2101', '0823051936', '2011012', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('244', '5052003', 'นายจุลศักดิ์  ศิริโชติ', '2105', '-', '5052003', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('245', '8084002', 'นายปิยะ  วันทาแท่น', '3204', '0898562209', '8084002', '0883502900', '1');
INSERT INTO `pk_teacher` VALUES ('246', '2011013', 'นายกิตติพงษ์  ยืดยาว', '2101', '', '2011013', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('247', '2011014', 'นายพิทักษ์  รวมขุนทด', '2101', '', '2011014', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('248', '2011002', 'นายวินัย  จันทร์ขามป้อม', '2101', '', '2011002', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('249', '8084004', 'นายปรีชา  ปรือปรัง', '3204', '-', '8084004', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('250', '2011015', 'นายอนุชา คำนนอินทร์', '2101', '', '2011015', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('251', '7071003', 'นางสาวกฤษณา  แนววิเศษ', '3109', '', '7071003', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('252', '5052014_14', 'นางชุติญา  อัยยะ', '2105', '', '5052014_14', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('253', '2011016', 'นายไกรภูมิ  คำนาค', '2101', '', '2011016', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('254', '2011017', 'นายเฉลิมวุฒิ  อาจกมล', '2101', '', '2011017', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('255', '6063104', 'นายสุริยา  พลทะยาน', '2107', '', '6063104', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('256', '8084010', 'นางสาวมณีรัตน์  ประดับค่าย', '3204', '', '8084010', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('257', '8084011', 'นางนันท์นภัส  คำวชิรพิทักษ์', '3204', '', '8084011', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('258', '7071004', 'นายอลงกรณ์  ภูคงคา', '3109', '', '7071004', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('259', '2011020', 'นายศรรตยา  พิณพาทย์', '2101', '', '2011020', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('260', '2011018', 'นายวสันต์  สมวงษ์สา', '2101', '', '2011018', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('261', '2011019', 'นายณัฐกรณ์  พั้วสุ', '2101', '', '2011019', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('262', '2011021', 'นายธีรศักดิ์  สาวะถี', '2101', '', '2011021', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('263', '2011022', 'นายณัฐวุฒิ  ดื่มโชค', '2101', '', '2011022', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('264', '2011023', 'นายภัทรพล  ระโยธี', '2101', '', '2011023', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('265', '5052014', 'นายณัฐดนัย  ชมภูพาน', '2105', '0866525943', '5052014', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('266', '5052015', 'นายวัชราวุธ  สอนชัยภูมิ ', '2105', '0866525943', '5052015', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('267', '7071005', 'นายเจษฎา  มาประเสริฐ ', '3109', '0866525943', '7071005', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('268', '6061004', 'นางใจแก้ว  ศิริโชติ', '2106', '', '6061004', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('269', '6063107', 'นายเจษฎา  จิตแสง', '2107', '', '6063107', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('270', '5051025', 'นายนภัทร  จงใจภักดิ์', '2104', '', '5051025', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('271', '5051026', 'นายณัฐวัฒน์  ชูศรี', '2104', '', '5051026', '654321', '1');
INSERT INTO `pk_teacher` VALUES ('272', '6063106', 'นางสาวพัชรี   ศรีน้อย', '2107', '', '6063106', '654321', '1');

-- ----------------------------
-- Table structure for pk_teacher_log
-- ----------------------------
DROP TABLE IF EXISTS `pk_teacher_log`;
CREATE TABLE `pk_teacher_log` (
  `run_id` int(5) NOT NULL AUTO_INCREMENT,
  `t_id` int(5) DEFAULT NULL,
  `t_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_name` text COLLATE utf8mb4_unicode_ci,
  `d_code` text COLLATE utf8mb4_unicode_ci,
  `t_tel` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_log_work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_log_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `u_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`run_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_teacher_log
-- ----------------------------
