/*
Navicat MySQL Data Transfer

Source Server         : MyDB
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : informationcenterdb

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-05-18 10:38:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_code` varchar(50) DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `english_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `phone_number_other` varchar(50) DEFAULT NULL,
  `qq_number` varchar(50) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `finally_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('4', '', '', '°¢¶û¶î', null, '1', '', null, '', '', '', '', null, null, null);
INSERT INTO `users` VALUES ('6', '', '', '????', null, '1', '', null, '', '', '', '', null, null, null);
INSERT INTO `users` VALUES ('7', '', '', 'à?à?à?', null, '1', '', null, '', '', '', '', null, null, null);
INSERT INTO `users` VALUES ('8', '', '', 'µ¥Î»¶Ë', null, '1', '', null, '', '', '', '', null, null, null);
INSERT INTO `users` VALUES ('9', '', '', '¶Ô¶Ô¶Ô', null, '1', '', null, '', '', '', '', null, null, null);
INSERT INTO `users` VALUES ('10', '', '', '¶Ô¶Ô¶Ô', null, '1', '', null, '', '', '', '', null, null, null);
INSERT INTO `users` VALUES ('11', '', '', '¶÷¶÷', null, '1', '', null, '', '', '', '', null, null, null);
INSERT INTO `users` VALUES ('12', '', '', '¶î¶î', null, '1', '', null, '', '', '', '', null, null, null);
INSERT INTO `users` VALUES ('13', '', '', 'µÄ·½·¨', null, '1', '', null, '', '', '', '', null, null, null);
INSERT INTO `users` VALUES ('14', '', '', 'È¤ÍæÍø', null, '1', '', null, '', '', '', '', null, null, null);
INSERT INTO `users` VALUES ('15', '', '', 'µÈµÈ', null, '1', '', null, '', '', '', '', null, null, null);
