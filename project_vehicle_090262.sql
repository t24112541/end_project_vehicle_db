/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : project_vehicle

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-02-09 00:35:59
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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_accessories
-- ----------------------------
INSERT INTO `pk_accessories` VALUES ('24', 'learning', 'learning', '2222222222', 'pk_teacher', '1');
INSERT INTO `pk_accessories` VALUES ('25', 'std', 'std-des', '6111111111', 'pk_student', '1');
INSERT INTO `pk_accessories` VALUES ('26', 'battery', 'dddddddddddddddddd', '6039010002', 'pk_student', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_accessories_log
-- ----------------------------
INSERT INTO `pk_accessories_log` VALUES ('29', '18', 'acc-test', 'acc-test-des', '7071001', 'pk_teacher', 't24112541', 'เพิ่มข้อมูล', '2019-01-11 23:07:39');
INSERT INTO `pk_accessories_log` VALUES ('30', '20', 'acc-test', 'acc-test-des', '7071001', 'pk_teacher', 't24112541', 'เพิ่มข้อมูล', '2019-01-11 23:20:37');
INSERT INTO `pk_accessories_log` VALUES ('31', '20', 'acc-test-2', 'acc-test-des-2', '7071001', 'pk_teacher', 't24112541', 'แก้ไขข้อมูล', '2019-01-11 23:48:04');
INSERT INTO `pk_accessories_log` VALUES ('32', '20', 'acc-test-2', 'acc-test-des-2', '7071001', 'pk_teacher', 't24112541', 'แก้ไขข้อมูล', '2019-01-11 23:48:26');
INSERT INTO `pk_accessories_log` VALUES ('33', '21', 'เบาะ', 'ctghjkmuvxn mb', '2147483647', 'pk_student', 't24112541', 'เพิ่มข้อมูล', '2019-01-11 23:49:32');
INSERT INTO `pk_accessories_log` VALUES ('34', '22', 'battery', 'battery-des', '2147483647', 'pk_student', 't24112541', 'เพิ่มข้อมูล', '2019-01-15 10:34:27');
INSERT INTO `pk_accessories_log` VALUES ('35', '23', 'max', 'max-des', '2147483647', 'pk_teacher', 't24112541', 'เพิ่มข้อมูล', '2019-01-15 10:35:29');
INSERT INTO `pk_accessories_log` VALUES ('36', '23', 'max', 'max-des 1234567890-\n', '2147483647', 'pk_teacher', 't24112541', 'แก้ไขข้อมูล', '2019-01-15 10:48:05');
INSERT INTO `pk_accessories_log` VALUES ('37', '23', 'max', 'max-des', '2147483647', 'pk_teacher', 't24112541', 'เรียกคืนข้อมูล', '2019-01-15 11:05:14');
INSERT INTO `pk_accessories_log` VALUES ('38', '24', 'learning', 'learning', '2147483647', 'pk_teacher', 't24112541', 'เพิ่มข้อมูล', '2019-01-15 14:29:51');
INSERT INTO `pk_accessories_log` VALUES ('39', '25', 'std', 'std-des', '2147483647', 'pk_student', 't24112541', 'เพิ่มข้อมูล', '2019-01-15 14:30:32');
INSERT INTO `pk_accessories_log` VALUES ('40', '26', 'battery', 'dddddddddddddddddd', '2147483647', 'pk_student', '2222222222', 'เพิ่มข้อมูล', '2019-01-24 23:16:24');
INSERT INTO `pk_accessories_log` VALUES ('41', '26', '', '', '0', '', '2222222222', 'ลบข้อมูล', '2019-01-24 23:23:46');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_comment
-- ----------------------------
INSERT INTO `pk_comment` VALUES ('1', null, null, null, null, null, null);
INSERT INTO `pk_comment` VALUES ('2', null, null, null, null, null, null);
INSERT INTO `pk_comment` VALUES ('3', null, null, null, null, null, null);
INSERT INTO `pk_comment` VALUES ('4', '1', 'pk_admin', '39', 'object_control', 'ไม่ให้ผ่าน\n', null);
INSERT INTO `pk_comment` VALUES ('5', '1', 'pk_admin', '39', 'object_control', 'qqq', null);
INSERT INTO `pk_comment` VALUES ('6', '1', 'pk_admin', '39', 'object_control', 'vu\n', '2019-02-03 23:02:41');
INSERT INTO `pk_comment` VALUES ('7', '1', 'pk_admin', '42', 'object_control', 'ซิ่งอยู่', '2019-02-04 09:40:49');
INSERT INTO `pk_comment` VALUES ('8', '1', 'pk_admin', '43', 'object_control', 'ไปทำมาใหม่\n', '2019-02-04 09:53:02');
INSERT INTO `pk_comment` VALUES ('9', '1', 'pk_admin', '43', 'object_control', 'ทำใหม่\n', '2019-02-04 09:56:48');
INSERT INTO `pk_comment` VALUES ('10', '1', 'pk_admin', '44', 'object_control', 'ยยยยยยยยยยยย', '2019-02-04 10:01:45');
INSERT INTO `pk_comment` VALUES ('11', '1', 'pk_admin', '44', 'object_control', 'ไปทำมาหม่ายยยยยยยยยยยยยย', '2019-02-04 10:28:23');
INSERT INTO `pk_comment` VALUES ('12', '1', 'pk_admin', '45', 'object_control', 'ดังอยู่', '2019-02-04 22:04:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_department
-- ----------------------------
INSERT INTO `pk_department` VALUES ('8', 'เทคโนโลยีสารสนเทศ', 'เทคโนโลยีสารสนเทศ', '1');
INSERT INTO `pk_department` VALUES ('9', '123', 'test', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_department_log
-- ----------------------------
INSERT INTO `pk_department_log` VALUES ('41', '8', 'เทคโนโลยีสารสนเทศ', 'เทคโนโลยีสารสนเทศ', 't24112541', 'แก้ไขข้อมูล', '2018-12-03 19:18:21');
INSERT INTO `pk_department_log` VALUES ('42', '8', 'เทคโนโลยีสารสนเทศ', 'เทคโนโลยีสารสนเทศ', 't24112541', 'เรียกคืนข้อมูล', '2018-12-03 19:18:32');
INSERT INTO `pk_department_log` VALUES ('43', '9', '123', 'test', 't24112541', 'เพิ่มข้อมูล', '2019-01-13 12:10:23');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_group
-- ----------------------------
INSERT INTO `pk_group` VALUES ('11', '60390101', 'เทคโนโลยีสารสนเทศ', 'E1', '1');
INSERT INTO `pk_group` VALUES ('12', '60390105', 'เทคโนโลยีสารสนเทศ', 'E5', '1');
INSERT INTO `pk_group` VALUES ('13', '11111', '123', 'ttt', '1');
INSERT INTO `pk_group` VALUES ('14', '2232323223', '123', '222test', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_group_log
-- ----------------------------
INSERT INTO `pk_group_log` VALUES ('32', '12', '60390105', 'เทคโนโลยีสารสนเทศ', 'E5', 't24112541', 'แก้ไขข้อมูล', '2018-12-03 19:14:14');
INSERT INTO `pk_group_log` VALUES ('33', '12', '60390105', 'เทคโนโลยีสารสนเทศ', 'E5', '1', 'เรียกคืนข้อมูล', '2018-12-03 19:18:55');
INSERT INTO `pk_group_log` VALUES ('34', '12', '60390105', 'เทคโนโลยีสารสนเทศ', 'E5', 't24112541', 'เรียกคืนข้อมูล', '2018-12-03 19:22:35');
INSERT INTO `pk_group_log` VALUES ('35', '13', '11111', '123', 'ttt', 't24112541', 'เพิ่มข้อมูล', '2019-01-13 12:10:40');
INSERT INTO `pk_group_log` VALUES ('36', '14', '2232323223', '123', '222test', 't24112541', 'เพิ่มข้อมูล', '2019-01-14 00:01:39');

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
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_img
-- ----------------------------
INSERT INTO `pk_img` VALUES ('107', 'veh-mc-1547286306942.jpg', '57', 'pk_machine');
INSERT INTO `pk_img` VALUES ('108', 'veh-mc-1547286306975.jpg', '57', 'pk_machine');
INSERT INTO `pk_img` VALUES ('109', 'veh-mc-1547286306982.jpg', '57', 'pk_machine');
INSERT INTO `pk_img` VALUES ('110', 'veh-1547136821509.jpg', '58', 'pk_machine');
INSERT INTO `pk_img` VALUES ('111', 'veh-1547136871083.jpg', '58', 'pk_machine');
INSERT INTO `pk_img` VALUES ('112', 'veh-1547136997167.jpg', '58', 'pk_machine');
INSERT INTO `pk_img` VALUES ('113', 'veh-1547137235921.jpg', '59', 'pk_machine');
INSERT INTO `pk_img` VALUES ('114', 'veh-1547137402437.jpg', '59', 'pk_machine');
INSERT INTO `pk_img` VALUES ('115', 'veh-1547137212438.jpg', '59', 'pk_machine');
INSERT INTO `pk_img` VALUES ('119', 'veh-ac-1547223637249.jpg', '20', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('120', 'veh-ac-1547225284895.jpg', '20', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('121', 'veh-ac-1547225306748.jpg', '20', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('122', 'veh-ac-1547225372174.jpg', '21', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('123', 'veh-ac-1547225372261.jpg', '21', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('124', 'veh-ac-1547225372296.jpg', '21', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('125', 'veh-u-1547307407540.jpg', '106', 'pk_student');
INSERT INTO `pk_img` VALUES ('126', 'veh-u-1547307432969.jpg', '107', 'pk_student');
INSERT INTO `pk_img` VALUES ('127', 'veh-u-1547291593514.jpg', '108', 'pk_student');
INSERT INTO `pk_img` VALUES ('128', 'veh-u-1547307289592.jpg', '109', 'pk_student');
INSERT INTO `pk_img` VALUES ('129', 'veh-u-1547308680628.jpg', '110', 'pk_student');
INSERT INTO `pk_img` VALUES ('130', 'veh-u-1547308655420.jpg', '111', 'pk_student');
INSERT INTO `pk_img` VALUES ('131', 'veh-u-1547390330081.jpg', '112', 'pk_student');
INSERT INTO `pk_img` VALUES ('132', 'veh-u-1547393041574.jpg', '29', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('133', 'veh-u-1547393257460.jpg', '30', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('134', 'veh-u-1547393348012.jpg', '31', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('135', 'veh-u-1547393409718.jpg', '32', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('136', 'veh-u-1547393456364.jpg', '33', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('137', 'veh-u-1547393552078.jpg', '34', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('138', 'veh-u-1547393577485.jpg', '35', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('139', 'veh-u-1547393590023.jpg', '36', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('140', 'veh-u-1547393640257.jpg', '37', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('141', 'veh-u-1547393686203.jpg', '38', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('142', 'veh-u-1547393741824.jpg', '39', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('143', 'veh-t-1547393849742.jpg', '40', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('144', 'veh-t-1547393900818.jpg', '41', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('145', 'veh-t-1547397249708.jpg', '42', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('146', 'veh-t-1547397279866.jpg', '43', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('147', 'veh-t-1547397375981.jpg', '44', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('148', 'veh-t-1547397416300.jpg', '45', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('149', 'veh-t-1547397439633.jpg', '46', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('150', 'veh-t-1547398424311.jpg', '47', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('151', 'veh-t-1547397498392.jpg', '48', 'pk_teacher');
INSERT INTO `pk_img` VALUES ('152', 'veh-mc-1547520889043.jpg', '60', 'pk_machine');
INSERT INTO `pk_img` VALUES ('153', 'veh-mc-1547520889050.jpg', '60', 'pk_machine');
INSERT INTO `pk_img` VALUES ('154', 'veh-mc-1547520889051.jpg', '60', 'pk_machine');
INSERT INTO `pk_img` VALUES ('155', 'veh-mc-1547522327133.jpg', '61', 'pk_machine');
INSERT INTO `pk_img` VALUES ('156', 'veh-mc-1547522327140.jpg', '61', 'pk_machine');
INSERT INTO `pk_img` VALUES ('157', 'veh-mc-1547522327146.jpg', '61', 'pk_machine');
INSERT INTO `pk_img` VALUES ('158', 'veh-mc-1547522599832.jpg', '62', 'pk_machine');
INSERT INTO `pk_img` VALUES ('159', 'veh-mc-1547522599843.jpg', '62', 'pk_machine');
INSERT INTO `pk_img` VALUES ('160', 'veh-mc-1547522599861.jpg', '62', 'pk_machine');
INSERT INTO `pk_img` VALUES ('161', 'veh-mc-1547523101632.jpg', '63', 'pk_machine');
INSERT INTO `pk_img` VALUES ('162', 'veh-mc-1547523101635.jpg', '63', 'pk_machine');
INSERT INTO `pk_img` VALUES ('163', 'veh-mc-1547523101637.jpg', '63', 'pk_machine');
INSERT INTO `pk_img` VALUES ('164', 'veh-mc-1547523161467.jpg', '64', 'pk_machine');
INSERT INTO `pk_img` VALUES ('165', 'veh-mc-1547523161470.jpg', '64', 'pk_machine');
INSERT INTO `pk_img` VALUES ('166', 'veh-mc-1547523161477.jpg', '64', 'pk_machine');
INSERT INTO `pk_img` VALUES ('167', 'veh-ac-1547523266962.jpg', '22', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('168', 'veh-ac-1547523266965.jpg', '22', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('169', 'veh-ac-1547523266976.jpg', '22', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('170', 'veh-ac-1547523329261.jpg', '23', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('171', 'veh-ac-1547523329277.jpg', '23', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('172', 'veh-ac-1547523329297.jpg', '23', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('173', 'veh-ac-1547537390976.jpg', '24', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('174', 'veh-ac-1547537391005.jpg', '24', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('175', 'veh-ac-1547537391054.jpg', '24', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('176', 'veh-ac-1547537432620.jpg', '25', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('177', 'veh-ac-1547537432624.jpg', '25', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('178', 'veh-ac-1547537432626.jpg', '25', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('179', 'veh-ms-1547621235454.jpg', '30', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('180', 'veh-ms-1547621531840.jpg', '31', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('181', 'veh-ms-1547621668613.jpg', '32', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('182', 'veh-u-default.jpg', '33', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('183', 'veh-u-default.jpg', '34', 'pk_missing');
INSERT INTO `pk_img` VALUES ('184', 'veh-u-default.jpg', '35', 'pk_missing');
INSERT INTO `pk_img` VALUES ('185', 'veh-ms-1547632555008.jpg', '36', 'pk_missing');
INSERT INTO `pk_img` VALUES ('186', 'veh-ms-1547820432257.jpg', '38', 'pk_missing');
INSERT INTO `pk_img` VALUES ('187', 'veh-ms-1547820520296.jpg', '39', 'pk_missing');
INSERT INTO `pk_img` VALUES ('188', 'veh-ms-1547821291815.jpg', '40', 'pk_missing');
INSERT INTO `pk_img` VALUES ('189', 'veh-mc-1548345595877.jpg', '66', 'pk_machine');
INSERT INTO `pk_img` VALUES ('190', 'veh-mc-1548345595882.jpg', '66', 'pk_machine');
INSERT INTO `pk_img` VALUES ('191', 'veh-mc-1548345595884.jpg', '66', 'pk_machine');
INSERT INTO `pk_img` VALUES ('192', 'veh-mc-1548345639132.jpg', '67', 'pk_machine');
INSERT INTO `pk_img` VALUES ('193', 'veh-mc-1548345639140.jpg', '67', 'pk_machine');
INSERT INTO `pk_img` VALUES ('194', 'veh-mc-1548345639179.jpg', '67', 'pk_machine');
INSERT INTO `pk_img` VALUES ('195', 'veh-mc-1548393283501.jpg', '68', 'pk_machine');
INSERT INTO `pk_img` VALUES ('196', 'veh-mc-1548393283507.jpg', '68', 'pk_machine');
INSERT INTO `pk_img` VALUES ('197', 'veh-mc-1548346248546.jpg', '68', 'pk_machine');
INSERT INTO `pk_img` VALUES ('198', 'veh-ac-1548346584776.jpg', '26', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('199', 'veh-ac-1548346584779.jpg', '26', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('200', 'veh-ac-1548346584788.jpg', '26', 'pk_accessories');
INSERT INTO `pk_img` VALUES ('201', 'veh-oc-1548393283501.jpg', '16', 'pk_object_control');
INSERT INTO `pk_img` VALUES ('202', null, '30', 'pk_object_control');
INSERT INTO `pk_img` VALUES ('203', 'veh-oc-1549106768795.jpg', '33', 'pk_object_control');
INSERT INTO `pk_img` VALUES ('204', 'veh-oc-1549106839965.jpg', '34', 'pk_object_control');
INSERT INTO `pk_img` VALUES ('205', '', '37', 'pk_object_control');
INSERT INTO `pk_img` VALUES ('206', 'veh-oc-1549107358465.jpg', '39', 'pk_object_control');
INSERT INTO `pk_img` VALUES ('207', 'veh-ms-1549247714373.jpg', '41', 'pk_missing');
INSERT INTO `pk_img` VALUES ('208', 'veh-oc-1549247739130.jpg', '40', 'pk_object_control');
INSERT INTO `pk_img` VALUES ('209', 'veh-oc-1549247952161.jpg', '41', 'pk_object_control');
INSERT INTO `pk_img` VALUES ('210', 'veh-u-default.jpg', '42', 'pk_missing');
INSERT INTO `pk_img` VALUES ('211', 'veh-oc-1549292627802.jpg', '45', 'pk_object_control');
INSERT INTO `pk_img` VALUES ('212', 'veh-oc-1549295828972.jpg', '46', 'pk_object_control');
INSERT INTO `pk_img` VALUES ('213', 'veh-oc-1549295894260.jpg', '47', 'pk_object_control');
INSERT INTO `pk_img` VALUES ('214', 'veh-ms-1549296112890.jpg', '43', 'pk_missing');
INSERT INTO `pk_img` VALUES ('215', 'veh-mc-1549470171797.jpg', '69', 'pk_machine');
INSERT INTO `pk_img` VALUES ('216', 'veh-mc-1549470171809.jpg', '69', 'pk_machine');
INSERT INTO `pk_img` VALUES ('217', 'veh-mc-1549470171812.jpg', '69', 'pk_machine');
INSERT INTO `pk_img` VALUES ('218', 'veh-ms-1549470440940.jpg', '44', 'pk_missing');
INSERT INTO `pk_img` VALUES ('219', 'veh-mc-1549470887225.jpg', '70', 'pk_machine');
INSERT INTO `pk_img` VALUES ('220', 'veh-mc-1549470887257.jpg', '70', 'pk_machine');
INSERT INTO `pk_img` VALUES ('221', 'veh-mc-1549470887293.jpg', '70', 'pk_machine');
INSERT INTO `pk_img` VALUES ('222', 'veh-ms-1549470900756.jpg', '45', 'pk_missing');
INSERT INTO `pk_img` VALUES ('223', 'veh-ms-1549642855517.jpg', '46', 'pk_missing');
INSERT INTO `pk_img` VALUES ('224', 'veh-ms-1549642898409.jpg', '47', 'pk_missing');
INSERT INTO `pk_img` VALUES ('225', 'veh-ms-1549643219742.jpg', '48', 'pk_missing');
INSERT INTO `pk_img` VALUES ('226', 'veh-ms-1549643289522.jpg', '49', 'pk_missing');
INSERT INTO `pk_img` VALUES ('227', 'veh-ms-1549643604135.jpg', '54', 'pk_missing');
INSERT INTO `pk_img` VALUES ('228', 'veh-ms-1549643670273.jpg', '55', 'pk_missing');

-- ----------------------------
-- Table structure for pk_item_object_control
-- ----------------------------
DROP TABLE IF EXISTS `pk_item_object_control`;
CREATE TABLE `pk_item_object_control` (
  `itm_oc_id` int(5) NOT NULL AUTO_INCREMENT,
  `itm_oc_name` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`itm_oc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_item_object_control
-- ----------------------------
INSERT INTO `pk_item_object_control` VALUES ('20', 'ท่อดัง');
INSERT INTO `pk_item_object_control` VALUES ('21', 'ท่อดัง');
INSERT INTO `pk_item_object_control` VALUES ('22', 'กวน');
INSERT INTO `pk_item_object_control` VALUES ('23', 'lf');
INSERT INTO `pk_item_object_control` VALUES ('24', 'else');
INSERT INTO `pk_item_object_control` VALUES ('25', 'llllllllllllllllllll');
INSERT INTO `pk_item_object_control` VALUES ('26', 'สวยเกิน');
INSERT INTO `pk_item_object_control` VALUES ('27', 'แต่งซิ่ง');

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
  PRIMARY KEY (`mc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_machine
-- ----------------------------
INSERT INTO `pk_machine` VALUES ('63', 'กจ 8987', 'honda', 'brio', '2222222222', '1', 'pk_teacher');
INSERT INTO `pk_machine` VALUES ('64', 'รท 7654', 'toyota', 'yaris', '6111111111', '1', 'pk_student');
INSERT INTO `pk_machine` VALUES ('70', '4444', 'hon', '125', '6039010001', '1', 'pk_student');
INSERT INTO `pk_machine` VALUES ('66', 'กพค 928 ชัยภูมิ', '4444', 'milky', '6039010001', '1', 'pk_student');
INSERT INTO `pk_machine` VALUES ('67', 'กรษ 252 ชัยภูมิ', 'Honda', '125', '6039010002', '0', 'pk_student');
INSERT INTO `pk_machine` VALUES ('68', 'กพค 924 ชัยภูมิ', 'IZUSU', 'D-MAX', '6039010001', '1', 'pk_student');
INSERT INTO `pk_machine` VALUES ('69', '9875', 'honda', 'wave 125i', '6039010002', '0', 'pk_student');

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
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_machine_log
-- ----------------------------
INSERT INTO `pk_machine_log` VALUES ('56', '57', 'olal', 'hon', 'da', '6039010002', 'เพิ่มข้อมูล', '2019-01-09 10:19:24', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('57', '58', '12346', '987', '666', '6039010002', 'เพิ่มข้อมูล', '2019-01-09 23:26:49', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('58', '57', 'ทัก', 'hon', 'da', '6039010002', 'แก้ไขข้อมูล', '2019-01-09 23:32:40', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('59', '58', '12346', '987', '666', '6039010002', 'แก้ไขข้อมูล', '2019-01-10 23:16:37', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('60', '58', 'test', '987', '666', '6039010002', 'แก้ไขข้อมูล', '2019-01-10 23:17:24', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('61', '59', 'preiw', 'err', '125', '6039010001', 'เพิ่มข้อมูล', '2019-01-10 23:20:12', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('62', '59', 'preiw', 'err', '125', '6039010001', 'แก้ไขข้อมูล', '2019-01-10 23:20:35', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('63', '59', 'preiw', 'err', '125', '6039010001', 'แก้ไขข้อมูล', '2019-01-10 23:23:05', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('64', '59', 'preiw', 'err', '125', '6039010001', 'แก้ไขข้อมูล', '2019-01-10 23:23:23', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('65', '57', 'ทัก', 'hon', 'da', '6039010002', 'แก้ไขข้อมูล', '2019-01-12 16:45:07', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('66', '60', '123456', 'FSS', 'ASDFGH', '1111111111', 'เพิ่มข้อมูล', '2019-01-15 09:54:49', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('67', '61', '1234567890-', '=-0987654', 'fghjkl;\'', '6039010002', 'เพิ่มข้อมูล', '2019-01-15 10:18:47', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('68', '62', 'asd', 'req', 'qwerg', '6039010001', 'เพิ่มข้อมูล', '2019-01-15 10:23:20', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('69', '63', 'กจ 8987', 'honda', 'brio', '2222222222', 'เพิ่มข้อมูล', '2019-01-15 10:31:41', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('70', '64', 'รท 7654', 'toyota', 'yaris', '6111111111', 'เพิ่มข้อมูล', '2019-01-15 10:32:41', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('71', '64', 'รท 7654', 'toyota', 'yaris', '6111111111', 'เรียกคืนข้อมูล', '2019-01-15 11:31:38', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('72', '66', 'กพค 928 ชัยภูมิ', '4444', 'milky', '6039010001', 'เพิ่มข้อมูล', '2019-01-24 22:59:55', '2222222222');
INSERT INTO `pk_machine_log` VALUES ('73', '67', 'กรษ 252 ชัยภูมิ', 'Honda', '125', '6039010002', 'เพิ่มข้อมูล', '2019-01-24 23:00:39', '2222222222');
INSERT INTO `pk_machine_log` VALUES ('74', '68', 'กพค 924 ชัยภูมิ', 'girl', '6543', '6039010001', 'เพิ่มข้อมูล', '2019-01-24 23:02:31', '2222222222');
INSERT INTO `pk_machine_log` VALUES ('75', '67', '', '', '', '', 'ลบข้อมูล', '2019-01-24 23:05:01', '2222222222');
INSERT INTO `pk_machine_log` VALUES ('76', '68', 'กพค 924 ชัยภูมิ', 'girlาาาาาาาาาาาาาาาา', '6543', '6039010001', 'แก้ไขข้อมูล', '2019-01-24 23:08:00', '2222222222');
INSERT INTO `pk_machine_log` VALUES ('77', '68', 'กพค 924 ชัยภูมิ', 'girlาาาาาาาาาาาาาาาา', '6543', '6039010001', 'แก้ไขข้อมูล', '2019-01-24 23:10:12', '2222222222');
INSERT INTO `pk_machine_log` VALUES ('78', '68', 'กพค 924 ชัยภูมิ', 'girlาาาาาาาาาาาาาาาา', '6543', '6039010001', 'แก้ไขข้อมูล', '2019-01-24 23:10:48', '2222222222');
INSERT INTO `pk_machine_log` VALUES ('79', '68', 'กพค 924 ชัยภูมิ', 'girlาาาาาาาาาาาาาาาา', '6543', '6039010001', 'แก้ไขข้อมูล', '2019-01-24 23:11:03', '2222222222');
INSERT INTO `pk_machine_log` VALUES ('80', '68', 'กพค 924 ชัยภูมิ', 'IZUSU', 'D-MAX', '6039010001', 'แก้ไขข้อมูล', '2019-01-25 12:14:43', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('81', '65', '', '', '', '', 'ลบข้อมูล', '2019-01-30 22:47:42', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('82', '69', '9875', 'honda', 'wave 125i', '6039010002', 'เพิ่มข้อมูล', '2019-02-06 23:22:52', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('83', '69', '', '', '', '', 'ลบข้อมูล', '2019-02-06 23:34:29', 't24112541');
INSERT INTO `pk_machine_log` VALUES ('84', '70', '4444', 'hon', '125', '6039010001', 'เพิ่มข้อมูล', '2019-02-06 23:34:47', 't24112541');

-- ----------------------------
-- Table structure for pk_match_std_tch
-- ----------------------------
DROP TABLE IF EXISTS `pk_match_std_tch`;
CREATE TABLE `pk_match_std_tch` (
  `mst_id` int(5) NOT NULL AUTO_INCREMENT,
  `t_id` int(5) NOT NULL,
  `g_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`mst_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_match_std_tch
-- ----------------------------
INSERT INTO `pk_match_std_tch` VALUES ('46', '47', '60390105');
INSERT INTO `pk_match_std_tch` VALUES ('47', '47', '60390101');
INSERT INTO `pk_match_std_tch` VALUES ('48', '48', '11111');

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
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_missing
-- ----------------------------
INSERT INTO `pk_missing` VALUES ('35', 't24112541', 'pk_admin', '25', 'pk_accessories', '2019-11-07 16:44:56', '2019-02-08 23:35:05', 'ขั้นที่ 1 รอรับเรื่อง', '', '01');
INSERT INTO `pk_missing` VALUES ('36', 't24112541', 'pk_admin', '25', 'pk_accessories', '2019-01-16 16:55:55', '2019-02-08 23:35:08', 'ขั้นที่ 2 รับเรื่องแล้ว', 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttestv', '01');
INSERT INTO `pk_missing` VALUES ('40', 't24112541', 'pk_admin', '63', 'pk_machine', '2019-01-18 21:21:32', '2019-02-08 23:35:09', 'ขั้นที่ 1 รอรับเรื่อง', 'test ms mc3', '01');
INSERT INTO `pk_missing` VALUES ('41', 't24112541', 'pk_admin', '25', 'pk_accessories', '2019-02-04 09:35:14', '2019-02-08 23:35:29', 'ขั้นที่ 1 รอรับเรื่อง', 'asdfghjkl;', '03');
INSERT INTO `pk_missing` VALUES ('42', 't24112541', 'pk_admin', '64', 'pk_machine', '2019-02-04 11:03:36', '2019-02-08 23:35:10', 'ขั้นที่ 3 พบเเล้ว', 'วิทยาลัยเทคนิคชัยภูมิ', '01');
INSERT INTO `pk_missing` VALUES ('43', 't24112541', 'pk_admin', '24', 'pk_accessories', '2019-02-04 23:01:55', '2019-02-08 23:35:11', 'ขั้นที่ 1 รอรับเรื่อง', 'myhome', '01');
INSERT INTO `pk_missing` VALUES ('45', 't24112541', 'pk_admin', '70', 'pk_machine', '2019-02-06 23:35:00', '2019-02-08 23:35:11', 'ขั้นที่ 2 รับเรื่องแล้ว', 'jhyycfgtj', '01');
INSERT INTO `pk_missing` VALUES ('46', 't24112541', 'pk_admin', '70', 'pk_machine', '2019-02-08 23:20:55', '2019-02-08 23:35:12', 'ขั้นที่ 1 รอรับเรื่อง', 'dwsdf', '01');
INSERT INTO `pk_missing` VALUES ('47', 't24112541', 'pk_admin', '70', 'pk_machine', '2019-02-08 23:21:38', '2019-02-08 23:35:28', 'ขั้นที่ 1 รอรับเรื่อง', 'dwsdf', '03');
INSERT INTO `pk_missing` VALUES ('48', 't24112541', 'pk_admin', '70', 'pk_machine', '2019-02-08 23:26:59', '2019-02-08 23:35:16', 'ขั้นที่ 1 รอรับเรื่อง', 'dwsdf', '02');
INSERT INTO `pk_missing` VALUES ('49', 't24112541', 'pk_admin', '70', 'pk_machine', '2019-02-08 23:28:09', '2019-02-08 23:35:17', 'ขั้นที่ 1 รอรับเรื่อง', 'dwsdf', '02');
INSERT INTO `pk_missing` VALUES ('50', 't24112541', 'pk_admin', '70', 'pk_machine', '2019-02-08 23:31:46', '2019-02-08 23:35:18', 'ขั้นที่ 1 รอรับเรื่อง', 'svdf', '02');
INSERT INTO `pk_missing` VALUES ('51', 't24112541', 'pk_admin', '70', 'pk_machine', '2019-02-08 23:32:29', '2019-02-08 23:35:18', 'ขั้นที่ 1 รอรับเรื่อง', 'svdf', '02');
INSERT INTO `pk_missing` VALUES ('52', 't24112541', 'pk_admin', '70', 'pk_machine', '2019-02-08 23:32:45', '2019-02-08 23:35:19', 'ขั้นที่ 1 รอรับเรื่อง', 'svdf', '02');
INSERT INTO `pk_missing` VALUES ('53', 't24112541', 'pk_admin', '70', 'pk_machine', '2019-02-08 23:33:07', '2019-02-08 23:35:23', 'ขั้นที่ 1 รอรับเรื่อง', 'svdf', '03');
INSERT INTO `pk_missing` VALUES ('54', 't24112541', 'pk_admin', '70', 'pk_machine', '2019-02-08 23:33:24', '2019-02-08 23:35:25', 'ขั้นที่ 1 รอรับเรื่อง', 'svdf', '03');
INSERT INTO `pk_missing` VALUES ('55', 't24112541', 'pk_admin', '70', 'pk_machine', '2019-02-08 23:34:30', '2019-02-08 23:34:30', 'ขั้นที่ 1 รอรับเรื่อง', 'svdfDVDVSFdbvFbSfbvfrFbvFbdfsb', '02');

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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_object_control
-- ----------------------------
INSERT INTO `pk_object_control` VALUES ('0', '68', 'pk_machine', 't24112541', 'pk_admin', '2019-02-04 10:01:10', '2019-02-09 00:33:31', 'ผ่านการตรวจสอบ', '20', '03');
INSERT INTO `pk_object_control` VALUES ('43', '25', 'pk_accessories', 't24112541', 'pk_admin', '2019-02-04 09:43:23', '2019-02-09 00:33:05', 'รอการตรวจสอบ', '27', '02');
INSERT INTO `pk_object_control` VALUES ('45', '25', 'pk_accessories', 't24112541', 'pk_admin', '2019-02-04 22:03:47', '2019-02-09 00:33:08', 'ผิดระเบียบ', '20', '02');
INSERT INTO `pk_object_control` VALUES ('46', '25', 'pk_accessories', 't24112541', 'pk_admin', '2019-02-04 22:57:09', '2019-02-09 00:31:06', 'ผิดระเบียบ', '22', '01');
INSERT INTO `pk_object_control` VALUES ('47', '66', 'pk_machine', 't24112541', 'pk_admin', '2019-02-04 22:58:14', '2019-02-09 00:31:07', 'ผิดระเบียบ', '24', '01');
INSERT INTO `pk_object_control` VALUES ('48', '24', 'pk_accessories', 't24112541', 'pk_admin', '2019-02-04 22:59:28', '2019-02-09 00:31:09', 'ผิดระเบียบ', '23', '02');
INSERT INTO `pk_object_control` VALUES ('49', '24', 'pk_accessories', 't24112541', 'pk_admin', '2019-02-04 23:01:09', '2019-02-09 00:31:10', 'ผิดระเบียบ', '23', '02');
INSERT INTO `pk_object_control` VALUES ('50', '24', 'pk_accessories', 't24112541', 'pk_admin', '2019-02-04 23:01:33', '2019-02-09 00:31:11', 'ผิดระเบียบ', '23', '02');

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
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_student
-- ----------------------------
INSERT INTO `pk_student` VALUES ('110', '6039010001', 'ญ', 'นางสาว', 'วริสรา', 'วรางกูลศิธา', '9876543212333', '2015-08-18', '6039010001', '9876543212333', '60390101', '0123456789', '0987654321', 'O', '1');
INSERT INTO `pk_student` VALUES ('111', '6039010008', 'ญ', 'นางสาว', 'ปฏิมากร', 'สายสะอาด', '1111111111111', '1998-04-08', '6039010008', '1111111111111', '60390101', '2222222222', '1111111111', 'B', '1');
INSERT INTO `pk_student` VALUES ('112', '6111111111', 'ญ', 'นางสาว', '1', '1', '6111111111111', '1989-08-23', '6111111111', '6111111111111', '11111', '0222222222', '0111111111', 'B', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_student_log
-- ----------------------------
INSERT INTO `pk_student_log` VALUES ('55', '110', '6039010001', 'ญ', 'นางสาว', 'สาว', 'สวย', '9876543212333', '2015-08-18', '6039010001', '9876543212333', '60390101', '9879879879', '7897987987', 'O', '2019-01-12 22:56:07', 't24112541', 'เพิ่มข้อมูล');
INSERT INTO `pk_student_log` VALUES ('56', '111', '6039010008', 'ญ', 'นางสาว', 'สาว', '234ty', '1111111111111', '2014-11-26', '6039010008', '1111111111111', '60390101', '2222222222', '1111111111', 'B', '2019-01-12 22:57:35', 't24112541', 'เพิ่มข้อมูล');
INSERT INTO `pk_student_log` VALUES ('57', '110', '6039010001', 'ญ', 'นางสาว', 'สาว', 'สวย', '9876543212333', '2015-08-18', '6039010001', '9876543212333', '60390101', '9879879879', '7897987987', 'O', '2019-01-12 22:58:00', 't24112541', 'แก้ไขข้อมูล');
INSERT INTO `pk_student_log` VALUES ('58', '110', '6039010001', 'ญ', 'นางสาว', 'สาว', 'สวย', '9876543212333', '2015-08-18', '6039010001', '9876543212333', '60390101', '9879879879', '7897987987', 'O', '2019-01-12 22:58:06', 't24112541', 'ลบข้อมูล');
INSERT INTO `pk_student_log` VALUES ('59', '110', '6039010001', 'ญ', 'นางสาว', 'สาว', 'สวย', '9876543212333', '2015-08-18', '6039010001', '9876543212333', '60390101', '9879879879', '7897987987', 'O', '2019-01-12 22:58:27', 't24112541', 'เรียกคืนข้อมูล');
INSERT INTO `pk_student_log` VALUES ('60', '111', '6039010008', 'ญ', 'นางสาว', 'สาว', '234ty', '1111111111111', '1998-08-12', '6039010008', '1111111111111', '60390101', '2222222222', '1111111111', 'B', '2019-01-13 11:54:13', 't24112541', 'แก้ไขข้อมูล');
INSERT INTO `pk_student_log` VALUES ('61', '112', '6111111111', 'ญ', 'นางสาว', '1', '1', '6111111111111', '1989-08-23', '6111111111', '6111111111111', '11111', '0222222222', '0111111111', 'B', '2019-01-13 21:38:22', 't24112541', 'เพิ่มข้อมูล');
INSERT INTO `pk_student_log` VALUES ('62', '112', '6111111111', 'ญ', 'นางสาว', '1', '1', '6111111111111', '1989-08-23', '6111111111', '6111111111111', '11111', '0222222222', '0111111111', 'B', '2019-01-13 21:38:50', 't24112541', 'แก้ไขข้อมูล');
INSERT INTO `pk_student_log` VALUES ('63', '112', '6111111111', 'ญ', 'นางสาว', '1', '1', '6111111111111', '1989-08-23', '6111111111', '6111111111111', '11111', '0222222222', '0111111111', 'B', '2019-01-15 14:31:06', 't24112541', 'แก้ไขข้อมูล');
INSERT INTO `pk_student_log` VALUES ('64', '111', '6039010008', 'ญ', 'นางสาว', 'ปฏิมากร', 'สายสะอาด', '1111111111111', '1998-08-12', '6039010008', '1111111111111', '60390101', '2222222222', '1111111111', 'B', '2019-01-24 23:13:55', '2222222222', 'แก้ไขข้อมูล');
INSERT INTO `pk_student_log` VALUES ('65', '111', '6039010008', 'ญ', 'นางสาว', 'ปฏิมากร', 'สายสะอาด', '1111111111111', '1998-04-08', '6039010008', '1111111111111', '60390101', '2222222222', '1111111111', 'B', '2019-01-24 23:14:23', '2222222222', 'แก้ไขข้อมูล');
INSERT INTO `pk_student_log` VALUES ('66', '110', '6039010001', 'ญ', 'นางสาว', 'วริสรา', 'วรางกูลศิธา', '9876543212333', '2015-08-18', '6039010001', '9876543212333', '60390101', '0123456789', '0987654321', 'O', '2019-01-25 12:15:46', 't24112541', 'แก้ไขข้อมูล');

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
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_teacher
-- ----------------------------
INSERT INTO `pk_teacher` VALUES ('47', '2222222222', 'เรียนเหอะ อยากสอน', 'เทคโนโลยีสารสนเทศ', '0852114117', '0444444444', '01111111111', '1');
INSERT INTO `pk_teacher` VALUES ('48', '1111111111', 'ครูอาย', '123', '1111111111', '1111111111', '1111111111', '1');

-- ----------------------------
-- Table structure for pk_teacher_log
-- ----------------------------
DROP TABLE IF EXISTS `pk_teacher_log`;
CREATE TABLE `pk_teacher_log` (
  `run_id` int(5) NOT NULL AUTO_INCREMENT,
  `t_id` int(5) DEFAULT NULL,
  `t_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d_code` text COLLATE utf8mb4_unicode_ci,
  `t_tel` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_log_work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_log_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `u_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`run_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pk_teacher_log
-- ----------------------------
INSERT INTO `pk_teacher_log` VALUES ('45', '47', '2222222222', 'เรียนเหอะ อยากสอน', 'เทคโนโลยีสารสนเทศ', '1111111111', '2222222222', '1111111111', 'เพิ่มข้อมูล', '2019-01-13 23:38:03', 't24112541');
INSERT INTO `pk_teacher_log` VALUES ('46', '48', '1111111111', 'ครูอาย', '123', '1111111111', '1111111111', '1111111111', 'เพิ่มข้อมูล', '2019-01-13 23:38:18', 't24112541');
INSERT INTO `pk_teacher_log` VALUES ('47', '47', '2222222222', 'เรียนเหอะ อยากสอน', 'เทคโนโลยีสารสนเทศ', '1111111111', '2222222222', '1111111111', 'แก้ไขข้อมูล', '2019-01-13 23:51:29', 't24112541');
INSERT INTO `pk_teacher_log` VALUES ('48', '47', '2222222222', 'เรียนเหอะ อยากสอน', 'เทคโนโลยีสารสนเทศ', '1111111111', '2222222222', '1111111111', 'แก้ไขข้อมูล', '2019-01-13 23:53:44', 't24112541');
INSERT INTO `pk_teacher_log` VALUES ('49', '47', '2222222222', 'เรียนเหอะ อยากสอน', 'เทคโนโลยีสารสนเทศ', '0444444444', '2222222222', '0444444444', 'แก้ไขข้อมูล', '2019-01-13 23:54:12', 't24112541');
