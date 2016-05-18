/*
Navicat MySQL Data Transfer

Source Server         : MyDB
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : informationcenterdb

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-05-18 10:39:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `province`
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `abbreviation` varchar(20) DEFAULT NULL,
  `abbreviationAnother` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', '河北省', '冀', null);
INSERT INTO `province` VALUES ('2', '山西省', '晋', null);
INSERT INTO `province` VALUES ('3', '辽宁省', '辽', null);
INSERT INTO `province` VALUES ('4', '吉林省', '吉', null);
INSERT INTO `province` VALUES ('5', '黑龙江省', '黑', null);
INSERT INTO `province` VALUES ('6', '江苏省', '苏', null);
INSERT INTO `province` VALUES ('7', '浙江省', '浙', null);
INSERT INTO `province` VALUES ('8', '安徽省', '皖', null);
INSERT INTO `province` VALUES ('9', '福建省', '闽', null);
INSERT INTO `province` VALUES ('10', '江西省', '赣', null);
INSERT INTO `province` VALUES ('11', '山东省', '鲁', null);
INSERT INTO `province` VALUES ('12', '河南省', '豫', null);
INSERT INTO `province` VALUES ('13', '湖北省', '鄂', null);
INSERT INTO `province` VALUES ('14', '湖南省', '湘', null);
INSERT INTO `province` VALUES ('15', '广东省', '粤', null);
INSERT INTO `province` VALUES ('16', '海南省', '琼', null);
INSERT INTO `province` VALUES ('17', '四川省', '川', '蜀');
INSERT INTO `province` VALUES ('18', '贵州省', '黔', '贵');
INSERT INTO `province` VALUES ('19', '云南省', '滇', '云');
INSERT INTO `province` VALUES ('20', '陕西省', '陕', '秦');
INSERT INTO `province` VALUES ('21', '甘肃省', '甘', '陇');
INSERT INTO `province` VALUES ('22', '青海省', '青', null);
INSERT INTO `province` VALUES ('23', '台湾省', '台', null);
INSERT INTO `province` VALUES ('24', '北京市', null, '京');
INSERT INTO `province` VALUES ('25', '天津市', null, null);
INSERT INTO `province` VALUES ('26', '上海市', null, null);
INSERT INTO `province` VALUES ('27', '重庆市', null, null);
INSERT INTO `province` VALUES ('28', '广西壮族自治区', null, null);
INSERT INTO `province` VALUES ('29', '内蒙古自治区', null, null);
INSERT INTO `province` VALUES ('30', '西藏自治区', null, null);
INSERT INTO `province` VALUES ('31', '宁夏回族自治区', null, null);
INSERT INTO `province` VALUES ('32', '新疆维吾尔自治区', null, null);
INSERT INTO `province` VALUES ('33', '香港特别行政区', null, null);
INSERT INTO `province` VALUES ('34', '澳门特别行政区', null, null);
