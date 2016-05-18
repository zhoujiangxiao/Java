/*
Navicat MySQL Data Transfer

Source Server         : MyDB
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : informationcenterdb

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-05-18 10:39:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `nationality`
-- ----------------------------
DROP TABLE IF EXISTS `nationality`;
CREATE TABLE `nationality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of nationality
-- ----------------------------
INSERT INTO `nationality` VALUES ('1', '中国');
INSERT INTO `nationality` VALUES ('2', '美国');
INSERT INTO `nationality` VALUES ('3', '韩国');
INSERT INTO `nationality` VALUES ('4', '日本');
INSERT INTO `nationality` VALUES ('5', '英国');
INSERT INTO `nationality` VALUES ('6', '法国');
INSERT INTO `nationality` VALUES ('7', '俄罗斯');
INSERT INTO `nationality` VALUES ('8', '加拿大');
INSERT INTO `nationality` VALUES ('9', '蒙古');
INSERT INTO `nationality` VALUES ('10', '朝鲜');
INSERT INTO `nationality` VALUES ('11', '菲律宾');
INSERT INTO `nationality` VALUES ('12', '越南');
INSERT INTO `nationality` VALUES ('13', '老挝');
INSERT INTO `nationality` VALUES ('14', '柬埔寨');
INSERT INTO `nationality` VALUES ('15', '缅甸');
INSERT INTO `nationality` VALUES ('16', '泰国');
INSERT INTO `nationality` VALUES ('17', '马来西亚');
INSERT INTO `nationality` VALUES ('18', '文莱');
INSERT INTO `nationality` VALUES ('19', '新加坡');
INSERT INTO `nationality` VALUES ('20', '印度尼西亚');
INSERT INTO `nationality` VALUES ('21', '东帝汶');
INSERT INTO `nationality` VALUES ('22', '尼泊尔');
INSERT INTO `nationality` VALUES ('23', '不丹');
INSERT INTO `nationality` VALUES ('24', '孟加拉国');
INSERT INTO `nationality` VALUES ('25', '印度');
INSERT INTO `nationality` VALUES ('26', '巴基斯坦');
INSERT INTO `nationality` VALUES ('27', '斯里兰卡');
INSERT INTO `nationality` VALUES ('28', '马尔代夫');
INSERT INTO `nationality` VALUES ('29', '哈萨克斯坦');
INSERT INTO `nationality` VALUES ('30', '吉尔吉斯斯坦');
INSERT INTO `nationality` VALUES ('31', '塔吉克斯坦');
INSERT INTO `nationality` VALUES ('32', '乌兹别克斯坦');
INSERT INTO `nationality` VALUES ('33', '土库曼斯坦');
INSERT INTO `nationality` VALUES ('34', '阿富汗');
INSERT INTO `nationality` VALUES ('35', '伊拉克');
INSERT INTO `nationality` VALUES ('36', '伊朗');
INSERT INTO `nationality` VALUES ('37', '叙利亚');
INSERT INTO `nationality` VALUES ('38', '约旦');
INSERT INTO `nationality` VALUES ('39', '黎巴嫩');
INSERT INTO `nationality` VALUES ('40', '以色列');
INSERT INTO `nationality` VALUES ('41', '巴勒斯坦');
INSERT INTO `nationality` VALUES ('42', '沙特阿拉伯');
INSERT INTO `nationality` VALUES ('43', '巴林');
INSERT INTO `nationality` VALUES ('44', '卡塔尔');
INSERT INTO `nationality` VALUES ('45', '科威特');
INSERT INTO `nationality` VALUES ('46', '阿拉伯联合酋长国（阿联酋');
INSERT INTO `nationality` VALUES ('47', '阿曼');
INSERT INTO `nationality` VALUES ('48', '也门');
INSERT INTO `nationality` VALUES ('49', '格鲁吉亚');
INSERT INTO `nationality` VALUES ('50', '亚美尼亚');
INSERT INTO `nationality` VALUES ('51', '阿塞拜疆');
INSERT INTO `nationality` VALUES ('52', '土耳其');
INSERT INTO `nationality` VALUES ('53', '塞浦路斯');
INSERT INTO `nationality` VALUES ('54', '芬兰');
INSERT INTO `nationality` VALUES ('55', '瑞典');
INSERT INTO `nationality` VALUES ('56', '挪威');
INSERT INTO `nationality` VALUES ('57', '冰岛');
INSERT INTO `nationality` VALUES ('58', '丹麦');
INSERT INTO `nationality` VALUES ('59', '法罗群岛（丹）');
INSERT INTO `nationality` VALUES ('60', '爱沙尼亚');
INSERT INTO `nationality` VALUES ('61', '拉脱维亚');
INSERT INTO `nationality` VALUES ('62', '立陶宛');
INSERT INTO `nationality` VALUES ('63', '白俄罗斯');
INSERT INTO `nationality` VALUES ('64', '乌克兰');
INSERT INTO `nationality` VALUES ('65', '摩尔多瓦');
INSERT INTO `nationality` VALUES ('66', '波兰');
INSERT INTO `nationality` VALUES ('67', '捷克');
INSERT INTO `nationality` VALUES ('68', '斯洛伐克');
INSERT INTO `nationality` VALUES ('69', '匈牙利');
INSERT INTO `nationality` VALUES ('70', '德国');
INSERT INTO `nationality` VALUES ('71', '奥地利');
INSERT INTO `nationality` VALUES ('72', '瑞士');
INSERT INTO `nationality` VALUES ('73', '列支敦士登');
INSERT INTO `nationality` VALUES ('74', '爱尔兰');
INSERT INTO `nationality` VALUES ('75', '荷兰');
INSERT INTO `nationality` VALUES ('76', '比利时');
INSERT INTO `nationality` VALUES ('77', '卢森堡');
INSERT INTO `nationality` VALUES ('78', '法国');
INSERT INTO `nationality` VALUES ('79', '摩纳哥');
INSERT INTO `nationality` VALUES ('80', '罗马尼亚');
INSERT INTO `nationality` VALUES ('81', '保加利亚');
INSERT INTO `nationality` VALUES ('82', '塞尔维亚');
INSERT INTO `nationality` VALUES ('83', '马其顿');
INSERT INTO `nationality` VALUES ('84', '阿尔巴尼亚');
INSERT INTO `nationality` VALUES ('85', '希腊');
INSERT INTO `nationality` VALUES ('86', '斯洛文尼亚');
INSERT INTO `nationality` VALUES ('87', '克罗地亚');
INSERT INTO `nationality` VALUES ('88', '波斯尼亚和墨塞哥维那');
INSERT INTO `nationality` VALUES ('89', '意大利');
INSERT INTO `nationality` VALUES ('90', '梵蒂冈');
INSERT INTO `nationality` VALUES ('91', '圣马力诺');
INSERT INTO `nationality` VALUES ('92', '马耳他');
INSERT INTO `nationality` VALUES ('93', '西班牙');
INSERT INTO `nationality` VALUES ('94', '葡萄牙');
INSERT INTO `nationality` VALUES ('95', '安道尔');
INSERT INTO `nationality` VALUES ('96', '埃及');
INSERT INTO `nationality` VALUES ('97', '利比亚');
INSERT INTO `nationality` VALUES ('98', '苏丹');
INSERT INTO `nationality` VALUES ('99', '突尼斯');
INSERT INTO `nationality` VALUES ('100', '阿尔及利亚');
INSERT INTO `nationality` VALUES ('101', '摩洛哥');
INSERT INTO `nationality` VALUES ('102', '亚速尔群岛（葡）');
INSERT INTO `nationality` VALUES ('103', '马德拉群岛（葡）');
INSERT INTO `nationality` VALUES ('104', '埃塞俄比亚');
INSERT INTO `nationality` VALUES ('105', '厄立特里亚');
INSERT INTO `nationality` VALUES ('106', '索马里');
INSERT INTO `nationality` VALUES ('107', '吉布提');
INSERT INTO `nationality` VALUES ('108', '肯尼亚');
INSERT INTO `nationality` VALUES ('109', '坦桑尼亚');
INSERT INTO `nationality` VALUES ('110', '乌干达');
INSERT INTO `nationality` VALUES ('111', '卢旺达');
INSERT INTO `nationality` VALUES ('112', '布隆迪');
INSERT INTO `nationality` VALUES ('113', '塞舌尔');
INSERT INTO `nationality` VALUES ('114', '乍得');
INSERT INTO `nationality` VALUES ('115', '中非');
INSERT INTO `nationality` VALUES ('116', '喀麦隆');
INSERT INTO `nationality` VALUES ('117', '赤道几内亚');
INSERT INTO `nationality` VALUES ('118', '加蓬');
INSERT INTO `nationality` VALUES ('119', '刚果共和国（即：刚果（布））');
INSERT INTO `nationality` VALUES ('120', '刚果民主共和国（即：刚果（金））');
INSERT INTO `nationality` VALUES ('121', '圣多美及普林西比');
INSERT INTO `nationality` VALUES ('122', '毛里塔尼亚');
INSERT INTO `nationality` VALUES ('123', '西撒哈拉');
INSERT INTO `nationality` VALUES ('124', '塞内加尔');
INSERT INTO `nationality` VALUES ('125', '冈比亚');
INSERT INTO `nationality` VALUES ('126', '马里');
INSERT INTO `nationality` VALUES ('127', '布基纳法索');
INSERT INTO `nationality` VALUES ('128', '几内亚');
INSERT INTO `nationality` VALUES ('129', '几内亚比绍');
INSERT INTO `nationality` VALUES ('130', '佛得角');
INSERT INTO `nationality` VALUES ('131', '塞拉利昂');
INSERT INTO `nationality` VALUES ('132', '利比里亚');
INSERT INTO `nationality` VALUES ('133', '科特迪瓦');
INSERT INTO `nationality` VALUES ('134', '加纳');
INSERT INTO `nationality` VALUES ('135', '多哥');
INSERT INTO `nationality` VALUES ('136', '贝宁');
INSERT INTO `nationality` VALUES ('137', '尼日尔');
INSERT INTO `nationality` VALUES ('138', '加那利群岛（西）');
INSERT INTO `nationality` VALUES ('139', '赞比亚');
INSERT INTO `nationality` VALUES ('140', '安哥拉');
INSERT INTO `nationality` VALUES ('141', '津巴布韦');
INSERT INTO `nationality` VALUES ('142', '马拉维');
INSERT INTO `nationality` VALUES ('143', '莫桑比克');
INSERT INTO `nationality` VALUES ('144', '博茨瓦纳');
INSERT INTO `nationality` VALUES ('145', '纳米比亚');
INSERT INTO `nationality` VALUES ('146', '南非');
INSERT INTO `nationality` VALUES ('147', '斯威士兰');
INSERT INTO `nationality` VALUES ('148', '莱索托');
INSERT INTO `nationality` VALUES ('149', '马达加斯加');
INSERT INTO `nationality` VALUES ('150', '科摩罗');
INSERT INTO `nationality` VALUES ('151', '毛里求斯');
INSERT INTO `nationality` VALUES ('152', '留尼旺（法）');
INSERT INTO `nationality` VALUES ('153', '圣赫勒拿（英）');
INSERT INTO `nationality` VALUES ('154', '澳大利亚');
INSERT INTO `nationality` VALUES ('155', '新西兰');
INSERT INTO `nationality` VALUES ('156', '巴布亚新几内亚');
INSERT INTO `nationality` VALUES ('157', '所罗门群岛');
INSERT INTO `nationality` VALUES ('158', '瓦努阿图');
INSERT INTO `nationality` VALUES ('159', '密克罗尼西亚');
INSERT INTO `nationality` VALUES ('160', '马绍尔群岛');
INSERT INTO `nationality` VALUES ('161', '帕劳');
INSERT INTO `nationality` VALUES ('162', '瑙鲁');
INSERT INTO `nationality` VALUES ('163', '基里巴斯');
INSERT INTO `nationality` VALUES ('164', '图瓦卢');
INSERT INTO `nationality` VALUES ('165', '萨摩亚');
INSERT INTO `nationality` VALUES ('166', '斐济群岛');
INSERT INTO `nationality` VALUES ('167', '汤加');
INSERT INTO `nationality` VALUES ('168', '库克群岛（新）');
INSERT INTO `nationality` VALUES ('169', '关岛（美）');
INSERT INTO `nationality` VALUES ('170', '新喀里多尼亚（法）');
INSERT INTO `nationality` VALUES ('171', '法属波利尼西亚');
INSERT INTO `nationality` VALUES ('172', '皮特凯恩岛（英）');
INSERT INTO `nationality` VALUES ('173', '瓦利斯与富图纳（法）');
INSERT INTO `nationality` VALUES ('174', '纽埃（新）');
INSERT INTO `nationality` VALUES ('175', '托克劳（新）');
INSERT INTO `nationality` VALUES ('176', '美属萨摩亚');
INSERT INTO `nationality` VALUES ('177', '北马里亚纳（美）');
INSERT INTO `nationality` VALUES ('178', '墨西哥');
INSERT INTO `nationality` VALUES ('179', '格陵兰（丹）');
INSERT INTO `nationality` VALUES ('180', '危地马拉');
INSERT INTO `nationality` VALUES ('181', '伯利兹');
INSERT INTO `nationality` VALUES ('182', '萨尔瓦多');
INSERT INTO `nationality` VALUES ('183', '洪都拉斯');
INSERT INTO `nationality` VALUES ('184', '尼加拉瓜');
INSERT INTO `nationality` VALUES ('185', '哥斯达黎加');
INSERT INTO `nationality` VALUES ('186', '巴拿马');
INSERT INTO `nationality` VALUES ('187', '巴哈马');
INSERT INTO `nationality` VALUES ('188', '古巴');
INSERT INTO `nationality` VALUES ('189', '牙买加');
INSERT INTO `nationality` VALUES ('190', '海地');
INSERT INTO `nationality` VALUES ('191', '多米尼加共和国');
INSERT INTO `nationality` VALUES ('192', '安提瓜和巴布达');
INSERT INTO `nationality` VALUES ('193', '圣基茨和尼维斯');
INSERT INTO `nationality` VALUES ('194', '多米尼克');
INSERT INTO `nationality` VALUES ('195', '圣卢西亚');
INSERT INTO `nationality` VALUES ('196', '圣文森特和格林纳丁斯');
INSERT INTO `nationality` VALUES ('197', '格林纳达');
INSERT INTO `nationality` VALUES ('198', '巴巴多斯');
INSERT INTO `nationality` VALUES ('199', '特立尼达和多巴哥');
INSERT INTO `nationality` VALUES ('200', '波多黎各（美）');
INSERT INTO `nationality` VALUES ('201', '英属维尔京群岛');
INSERT INTO `nationality` VALUES ('202', '美属维尔京群岛');
INSERT INTO `nationality` VALUES ('203', '安圭拉（英）');
INSERT INTO `nationality` VALUES ('204', '蒙特塞拉特（英）');
INSERT INTO `nationality` VALUES ('205', '瓜德罗普（法）');
INSERT INTO `nationality` VALUES ('206', '马提尼克（法）');
INSERT INTO `nationality` VALUES ('207', '荷属安的列斯');
INSERT INTO `nationality` VALUES ('208', '阿鲁巴（荷）');
INSERT INTO `nationality` VALUES ('209', '特克斯和凯科斯群岛（英）');
INSERT INTO `nationality` VALUES ('210', '开曼群岛（英）');
INSERT INTO `nationality` VALUES ('211', '百慕大（英）');
INSERT INTO `nationality` VALUES ('212', '哥伦比亚');
INSERT INTO `nationality` VALUES ('213', '委内瑞拉');
INSERT INTO `nationality` VALUES ('214', '圭亚那');
INSERT INTO `nationality` VALUES ('215', '法属圭亚那');
INSERT INTO `nationality` VALUES ('216', '苏里南');
INSERT INTO `nationality` VALUES ('217', '厄瓜多尔');
INSERT INTO `nationality` VALUES ('218', '秘鲁');
INSERT INTO `nationality` VALUES ('219', '玻利维亚');
INSERT INTO `nationality` VALUES ('220', '巴西');
INSERT INTO `nationality` VALUES ('221', '智利');
INSERT INTO `nationality` VALUES ('222', '阿根廷');
INSERT INTO `nationality` VALUES ('223', '乌拉圭');
INSERT INTO `nationality` VALUES ('224', '巴拉圭');
