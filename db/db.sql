/*
Navicat MySQL Data Transfer

Source Server         : a01
Source Server Version : 50531
Source Host           : localhost:3306
Source Database       : db

Target Server Type    : MYSQL
Target Server Version : 50531
File Encoding         : 65001

Date: 2017-06-11 09:17:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` tinyint(2) DEFAULT '1',
  `dname` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '1', 'dept1', 'dept1 location', '2016-12-04 15:07:04');
INSERT INTO `department` VALUES ('2', '1', 'dept2', 'dept2 location', '2016-12-04 15:59:49');
INSERT INTO `department` VALUES ('3', '1', 'dept3', 'dept3 location', '2016-12-04 16:11:24');
INSERT INTO `department` VALUES ('17', '1', '234', '2', '2016-12-04 16:11:30');
INSERT INTO `department` VALUES ('18', '1', '23', '2', '2016-12-04 17:27:43');
INSERT INTO `department` VALUES ('19', '1', '3', '3', '2016-12-04 17:27:59');
INSERT INTO `department` VALUES ('20', '1', '4', '4', '2016-12-04 17:28:04');
INSERT INTO `department` VALUES ('21', '1', '5', '5', '2016-12-04 17:28:08');
INSERT INTO `department` VALUES ('22', '1', '6', '6', '2016-12-04 17:28:11');
INSERT INTO `department` VALUES ('23', '1', '7', '7', '2016-12-04 17:28:15');
INSERT INTO `department` VALUES ('24', '1', '8', '8', '2016-12-04 17:28:18');
INSERT INTO `department` VALUES ('25', '1', 'a', 'a', '2016-12-08 23:56:31');
INSERT INTO `department` VALUES ('26', '1', 'b', 'b', '2016-12-08 23:56:37');
INSERT INTO `department` VALUES ('27', '1', 'asdf', 'wrf', '2016-12-08 23:56:49');
INSERT INTO `department` VALUES ('28', '1', 'werdfsgsdfwer', 'werwer', '2016-12-08 23:56:54');
INSERT INTO `department` VALUES ('29', '1', 'sdfg', 'wref', '2016-12-08 23:56:58');
INSERT INTO `department` VALUES ('30', '1', 'sdfgdsf', 'artre', '2016-12-08 23:57:02');
INSERT INTO `department` VALUES ('31', '1', 'sdfbds', 'af', '2016-12-08 23:57:07');
INSERT INTO `department` VALUES ('32', '1', 'sdfgsd', 'sdfg', '2016-12-08 23:57:10');
INSERT INTO `department` VALUES ('33', '0', 'gaga', 'gaga', '2016-12-10 17:22:35');
INSERT INTO `department` VALUES ('34', '1', '123', '123', '2016-12-11 17:39:29');

-- ----------------------------
-- Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` tinyint(2) DEFAULT '1',
  `dept_id` int(11) DEFAULT NULL,
  `iname` varchar(20) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `value` int(5) DEFAULT NULL,
  `qty` int(3) DEFAULT NULL,
  `maxday` int(2) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('1', '0', '1', 'item', 'item stored', '100', '6', '1', '2016-12-11 08:50:01');
INSERT INTO `item` VALUES ('2', '1', '2', 'item2', 'item1', '2', '1', '2', '2016-12-10 10:34:55');
INSERT INTO `item` VALUES ('3', '1', '1', 'item3', '123', '12', '1', '2', '2016-12-11 17:56:49');
INSERT INTO `item` VALUES ('4', '1', '1', 'item4', 'item 12 11', '12', '12', '2', '2016-12-11 08:51:47');

-- ----------------------------
-- Table structure for `payment`
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `use_id` int(11) DEFAULT NULL,
  `flag` tinyint(2) DEFAULT '0',
  `approved_by` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `paytime` timestamp NULL DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES ('14', '19', '1', null, '2.00', '2016-12-14 01:48:44', '2016-12-12 12:36:37', 'update by system');
INSERT INTO `payment` VALUES ('15', '14', '1', null, '100.00', null, '2016-12-15 01:52:49', '100');

-- ----------------------------
-- Table structure for `personal`
-- ----------------------------
DROP TABLE IF EXISTS `personal`;
CREATE TABLE `personal` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` tinyint(2) DEFAULT '1',
  `dept_id` int(11) DEFAULT NULL,
  `loginname` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `firstname` varchar(10) DEFAULT NULL,
  `lastname` varchar(10) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `gender` tinyint(2) DEFAULT NULL,
  `birthday` timestamp NULL DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personal
-- ----------------------------
INSERT INTO `personal` VALUES ('1', '1', '1', 'admin', '2', 'first', 'last', 'ROLE_0', '2', '1993-11-26 11:18:45', null, null, '2016-11-26 11:18:45');
INSERT INTO `personal` VALUES ('2', '1', '2', '1', '1', 'first2', 'last2', '1', '1', '2007-04-24 00:00:00', 'afadf', '1', null);
INSERT INTO `personal` VALUES ('3', '1', '1', 'mike', 'mike', 'mike', 'mike', 'CEO', '1', '1995-12-05 00:00:00', '98787232@qq.com', '992029048', '2016-12-08 23:03:33');
INSERT INTO `personal` VALUES ('4', '1', '2', 'chen', '123', 'chen', 'chen', 'CS', '1', '2007-12-12 00:00:00', 'afhjk@gmail.com', '092950403423', '2016-12-11 09:00:25');

-- ----------------------------
-- Table structure for `trans`
-- ----------------------------
DROP TABLE IF EXISTS `trans`;
CREATE TABLE `trans` (
  `use_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `creattime` timestamp NULL DEFAULT NULL,
  `deadline` timestamp NULL DEFAULT NULL,
  `returntime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`use_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trans
-- ----------------------------
INSERT INTO `trans` VALUES ('1', '1', '1', '2016-11-26 11:18:45', '2016-11-26 11:18:45', '2016-11-26 11:18:45');
INSERT INTO `trans` VALUES ('14', '1', '1', '2016-12-11 17:48:08', '2016-12-12 10:27:36', null);
INSERT INTO `trans` VALUES ('15', '1', '1', '2016-12-11 18:07:08', '2016-12-12 10:27:40', null);
INSERT INTO `trans` VALUES ('16', '2', null, null, '2016-12-12 10:27:43', '2016-12-12 12:47:10');
INSERT INTO `trans` VALUES ('17', '1', '1', '2016-12-12 10:05:29', '2016-12-12 10:27:46', '2016-12-12 10:05:29');
INSERT INTO `trans` VALUES ('18', '1', '2', '2016-12-12 11:28:21', null, '2016-12-12 11:28:21');
INSERT INTO `trans` VALUES ('19', '3', '2', '2016-12-12 11:30:54', '2016-12-12 11:30:54', '2016-12-12 12:36:37');
INSERT INTO `trans` VALUES ('20', '1', '1', '2016-12-12 12:47:27', '2016-12-12 12:47:27', null);
INSERT INTO `trans` VALUES ('21', '2', '1', '2016-12-12 12:49:46', '2016-12-13 12:49:46', null);
INSERT INTO `trans` VALUES ('22', '2', '1', '2016-12-13 21:10:53', '2016-12-14 21:10:53', null);
INSERT INTO `trans` VALUES ('23', '2', '2', '2016-12-15 10:17:52', '2016-12-17 10:17:52', null);
