/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : php_db

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-01-09 13:19:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jrkj_account_log
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_account_log`;
CREATE TABLE `jrkj_account_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned DEFAULT NULL,
  `balance` float(20,2) DEFAULT NULL COMMENT '收入,支出',
  `frozen_money` decimal(10,2) DEFAULT NULL COMMENT '冻结金额',
  `deposit` decimal(10,2) DEFAULT NULL,
  `profit` decimal(10,2) DEFAULT NULL,
  `rank_points` mediumint(9) DEFAULT NULL,
  `pay_points` mediumint(9) DEFAULT NULL,
  `change_time` int(10) unsigned DEFAULT NULL,
  `change_desc` varchar(255) DEFAULT NULL,
  `change_type` tinyint(3) unsigned DEFAULT NULL COMMENT '\r\n        1 => ''后台管理员调整'',\r\n        2 => ''财务结算分帐'',\r\n        3 => ''扶持奖励'',\r\n        4 => ''店铺利润收益'',//结算\r\n        5 => ''推广用户收益'', //推广普通用户广告收益\r\n        6 => ''直推奖励'',\r\n        7 => ''收益提现'',\r\n        8 => ''管理业绩奖金'',\r\n        9 => ''市场店铺消费绩效收益'',\r\n        10=> ''店铺利润提成'', //预存消费推广的店铺利润提成\r\n        11=> ''消费积分变动'',\r\n        12=> ''店铺推广会员消费提成'',\r\n        13=> ''名下店铺收益提成'',\r\n        14=> ''名下店铺推广会员消费提成'',\r\n        15=> ''会员预存款'',\r\n        16=> ''取现'',\r\n        17=> ''循环消费'',\r\n        18=> ''预存返还'',\r\n        19=> ''退款'',\r\n        20=> ''支付订单'',\r\n    ',
  `create_time` int(10) unsigned DEFAULT NULL,
  `relation_id` int(10) unsigned DEFAULT NULL COMMENT '关联 pay_record id',
  PRIMARY KEY (`id`),
  KEY `user_id` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_account_log
-- ----------------------------
INSERT INTO `jrkj_account_log` VALUES ('148', '42', '-238.00', null, null, null, null, null, null, '支付订单', '20', '1477040277', '999');
INSERT INTO `jrkj_account_log` VALUES ('149', '45', '-500.00', null, null, null, null, null, null, '支付订单', '20', '1477042859', '1000');
INSERT INTO `jrkj_account_log` VALUES ('150', '45', '-1434.00', null, null, null, null, null, null, '支付订单', '20', '1477045222', '1001');
INSERT INTO `jrkj_account_log` VALUES ('151', '45', '-468.00', null, null, null, null, null, null, '支付订单', '20', '1477048649', '1002');
INSERT INTO `jrkj_account_log` VALUES ('152', '42', '-5728.00', null, null, null, null, null, null, '支付订单', '20', '1477126561', '1003');
INSERT INTO `jrkj_account_log` VALUES ('153', '42', '-6770.00', null, null, null, null, null, null, '支付订单', '20', '1477127566', '1004');
INSERT INTO `jrkj_account_log` VALUES ('154', '45', '-490.00', null, null, null, null, null, null, '支付订单', '20', '1477135251', '1005');
INSERT INTO `jrkj_account_log` VALUES ('159', '42', '-998.00', null, null, null, null, null, null, '支付订单', '20', '1477276234', '1010');
INSERT INTO `jrkj_account_log` VALUES ('160', '42', '-1910.00', null, null, null, null, null, null, '支付订单', '20', '1477276234', '1011');
INSERT INTO `jrkj_account_log` VALUES ('161', '45', '-478.00', null, null, null, null, null, null, '支付订单', '20', '1477282608', '1012');
INSERT INTO `jrkj_account_log` VALUES ('162', '45', '-2930.00', null, null, null, null, null, null, '支付订单', '20', '1477282608', '1013');
INSERT INTO `jrkj_account_log` VALUES ('163', '45', '-478.00', null, null, null, null, null, null, '支付订单', '20', '1477351959', '1014');
INSERT INTO `jrkj_account_log` VALUES ('164', '45', '-1910.00', null, null, null, null, null, null, '支付订单', '20', '1477351959', '1015');
INSERT INTO `jrkj_account_log` VALUES ('165', '45', '-478.00', null, null, null, null, null, null, '支付订单', '20', '1477527898', '1016');
INSERT INTO `jrkj_account_log` VALUES ('166', '42', '-510.00', null, null, null, null, null, null, '支付订单', '20', '1477544652', '1017');
INSERT INTO `jrkj_account_log` VALUES ('167', '42', '-510.00', null, null, null, null, null, null, '支付订单', '20', '1477546356', '1018');
INSERT INTO `jrkj_account_log` VALUES ('168', '42', '-510.00', null, null, null, null, null, null, '支付订单', '20', '1477558326', '1019');
INSERT INTO `jrkj_account_log` VALUES ('169', '42', '-1910.00', null, null, null, null, null, null, '支付订单', '20', '1477559138', '1020');
INSERT INTO `jrkj_account_log` VALUES ('170', '42', '-510.00', null, null, null, null, null, null, '支付订单', '20', '1477559944', '1021');
INSERT INTO `jrkj_account_log` VALUES ('171', '42', '-248.00', null, null, null, null, null, null, '支付订单', '20', '1477565165', '1022');
INSERT INTO `jrkj_account_log` VALUES ('172', '42', '-248.00', null, null, null, null, null, null, '支付订单', '20', '1477565278', '1023');
INSERT INTO `jrkj_account_log` VALUES ('173', '42', '-248.00', null, null, null, null, null, null, '支付订单', '20', '1477565342', '1024');
INSERT INTO `jrkj_account_log` VALUES ('174', '42', '-248.00', null, null, null, null, null, null, '支付订单', '20', '1477565405', '1025');
INSERT INTO `jrkj_account_log` VALUES ('175', '45', '-510.00', null, null, null, null, null, null, '支付订单', '20', '1477611552', '1026');
INSERT INTO `jrkj_account_log` VALUES ('176', '42', '-1910.00', null, null, null, null, null, null, '支付订单', '20', '1478567660', '1027');
INSERT INTO `jrkj_account_log` VALUES ('177', '42', '-478.00', null, null, null, null, null, null, '支付订单', '20', '1478568109', '1028');
INSERT INTO `jrkj_account_log` VALUES ('178', '42', '-1020.00', null, null, null, null, null, null, '支付订单', '20', '1479112107', '1029');

-- ----------------------------
-- Table structure for jrkj_ad
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_ad`;
CREATE TABLE `jrkj_ad` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `board_id` smallint(5) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `extimg` varchar(255) NOT NULL,
  `extval` varchar(200) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `start_time` int(10) NOT NULL,
  `end_time` int(10) NOT NULL,
  `clicks` int(10) NOT NULL DEFAULT '0',
  `add_time` int(10) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_ad
-- ----------------------------
INSERT INTO `jrkj_ad` VALUES ('9', '2', 'image', 'banner1', '', '1610/16/580324e4ac318.jpg', '', '', '', '1460995200', '1524067200', '0', '0', '2', '1');
INSERT INTO `jrkj_ad` VALUES ('13', '2', 'image', '双11', '', '1610/16/580327519ef37.jpg', '', '', '', '1476028800', '1508169600', '0', '0', '255', '1');
INSERT INTO `jrkj_ad` VALUES ('11', '2', 'image', 'banner2', '', '1610/16/58032627db9f3.jpg', '', '', '', '1460995200', '1492531200', '0', '0', '4', '1');

-- ----------------------------
-- Table structure for jrkj_adboard
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_adboard`;
CREATE TABLE `jrkj_adboard` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `width` smallint(5) NOT NULL,
  `height` smallint(5) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `allow_type` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_adboard
-- ----------------------------
INSERT INTO `jrkj_adboard` VALUES ('1', '吃喝玩乐banner', '1920', '500', '', '1', 'image|text|code');
INSERT INTO `jrkj_adboard` VALUES ('2', '手机端首页', '375', '180', '', '1', 'text|code');
INSERT INTO `jrkj_adboard` VALUES ('3', '测试广告位', '300', '300', '', '1', 'image|text');
INSERT INTO `jrkj_adboard` VALUES ('4', '测试广告', '300', '300', '', '1', 'image|text|code');

-- ----------------------------
-- Table structure for jrkj_address
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_address`;
CREATE TABLE `jrkj_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `consignee` varchar(20) NOT NULL DEFAULT '' COMMENT '收货人',
  `tel` varchar(15) NOT NULL DEFAULT '',
  `province` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `county` varchar(30) NOT NULL COMMENT '区',
  `address` varchar(50) NOT NULL DEFAULT '',
  `zipcode` char(6) NOT NULL DEFAULT '',
  `member_id` int(10) unsigned NOT NULL,
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '状态(1为默认，2为未默认)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=918 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_address
-- ----------------------------
INSERT INTO `jrkj_address` VALUES ('1', 'Fdaxiong大熊', 'Fdaxiong大熊', '188888888888', '江西省', '不知道', '未知', '我也不知道', '', '0', '2');
INSERT INTO `jrkj_address` VALUES ('890', '', '张青', '18970904745', '山西省', '长治市', '长治县', '光明路25号', '', '40', '1');
INSERT INTO `jrkj_address` VALUES ('894', '', '杨靖', '15959595959', '重庆市', '重庆市', '九龙坡区', '打算打算打打', '', '42', '1');
INSERT INTO `jrkj_address` VALUES ('897', '', '宋科', '15536258741', '山西省', '长治市', '长治县', '光明南络25号', '', '44', '2');
INSERT INTO `jrkj_address` VALUES ('898', '', '宋美娟', '18970904745', '江西省', '南昌市', '青云谱区', '解放西路金悦凯庭4楼', '', '44', '2');
INSERT INTO `jrkj_address` VALUES ('899', '', '飞雪', '13358958745', '江西省', '南昌市', '西湖区', '洪都南大道', '', '44', '1');
INSERT INTO `jrkj_address` VALUES ('900', '', '宋科', '15180163170', '山西省', '长治市', '长治县', '光明南路', '', '45', '1');
INSERT INTO `jrkj_address` VALUES ('902', '', '王明明', '15523568475', '山西省', '长治市', '长治县', '黎都大道阳明小区1栋单元203', '', '45', '2');
INSERT INTO `jrkj_address` VALUES ('903', '', '刘红', '15235685214', '江西省', '南昌市', '青山湖区', '高新南大道58号', '', '45', '2');
INSERT INTO `jrkj_address` VALUES ('907', '', 'Fdaxiong大熊', '1777777777', '江西', '鹰潭', '', '贵溪', '', '0', '2');
INSERT INTO `jrkj_address` VALUES ('908', '', 'Fdaxiong大熊', '1777777777', '江西', '鹰潭', '', '贵溪', '', '0', '2');
INSERT INTO `jrkj_address` VALUES ('910', 'Fdaxiong大熊', '小小', '777777777777777', '地球', '中国', '', '垃圾', '', '0', '2');
INSERT INTO `jrkj_address` VALUES ('913', 'Fdaxiong大熊', '123', '55555', '6666', '7777', '', '8888888', '', '0', '2');
INSERT INTO `jrkj_address` VALUES ('915', '123', '123', '123', '23', '', '', '', '', '0', '1');
INSERT INTO `jrkj_address` VALUES ('916', 'Fdaxiong大熊', '1111111', '22222222222', '2222222222', '2222222222223', '', '4444444444', '', '0', '2');
INSERT INTO `jrkj_address` VALUES ('917', 'Fdaxiong大熊', '陈振方', '13237017781', '江西省', '鹰潭', '', '江西师专', '', '0', '1');

-- ----------------------------
-- Table structure for jrkj_admin
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_admin`;
CREATE TABLE `jrkj_admin` (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role_id` smallint(5) NOT NULL,
  `last_ip` varchar(15) NOT NULL,
  `last_time` int(10) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_admin
-- ----------------------------
INSERT INTO `jrkj_admin` VALUES ('4', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '117.44.165.18', '1478671044', '', '1');

-- ----------------------------
-- Table structure for jrkj_admin_auth
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_admin_auth`;
CREATE TABLE `jrkj_admin_auth` (
  `role_id` tinyint(3) NOT NULL,
  `menu_id` smallint(6) NOT NULL,
  KEY `role_id` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_admin_auth
-- ----------------------------
INSERT INTO `jrkj_admin_auth` VALUES ('2', '36');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '37');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '38');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '50');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '51');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '52');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '54');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '56');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '57');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '58');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '59');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '70');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '117');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '118');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '119');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '149');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '150');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '164');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '181');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '186');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '187');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '190');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '192');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '199');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '200');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '201');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '202');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '203');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '249');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '250');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '253');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '255');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '267');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '268');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '277');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '279');
INSERT INTO `jrkj_admin_auth` VALUES ('2', '281');
INSERT INTO `jrkj_admin_auth` VALUES ('4', '320');
INSERT INTO `jrkj_admin_auth` VALUES ('4', '321');
INSERT INTO `jrkj_admin_auth` VALUES ('4', '322');
INSERT INTO `jrkj_admin_auth` VALUES ('4', '323');
INSERT INTO `jrkj_admin_auth` VALUES ('4', '324');
INSERT INTO `jrkj_admin_auth` VALUES ('4', '325');
INSERT INTO `jrkj_admin_auth` VALUES ('4', '327');
INSERT INTO `jrkj_admin_auth` VALUES ('4', '333');
INSERT INTO `jrkj_admin_auth` VALUES ('4', '334');
INSERT INTO `jrkj_admin_auth` VALUES ('4', '335');
INSERT INTO `jrkj_admin_auth` VALUES ('4', '336');
INSERT INTO `jrkj_admin_auth` VALUES ('4', '337');
INSERT INTO `jrkj_admin_auth` VALUES ('4', '339');

-- ----------------------------
-- Table structure for jrkj_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_admin_role`;
CREATE TABLE `jrkj_admin_role` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `remark` text NOT NULL,
  `ordid` tinyint(3) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_admin_role
-- ----------------------------
INSERT INTO `jrkj_admin_role` VALUES ('1', '超级管理员', '超级管理员', '0', '1');
INSERT INTO `jrkj_admin_role` VALUES ('3', '编辑', '网站编辑', '0', '1');
INSERT INTO `jrkj_admin_role` VALUES ('4', '财务', '', '0', '1');

-- ----------------------------
-- Table structure for jrkj_ad_dp
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_ad_dp`;
CREATE TABLE `jrkj_ad_dp` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '店铺轮动图',
  `merchant_id` int(11) NOT NULL COMMENT '店铺ID',
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `extimg` varchar(255) NOT NULL,
  `extval` varchar(200) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `start_time` int(10) NOT NULL,
  `end_time` int(10) NOT NULL,
  `clicks` int(10) NOT NULL DEFAULT '0',
  `add_time` int(10) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_ad_dp
-- ----------------------------
INSERT INTO `jrkj_ad_dp` VALUES ('8', '5', 'image', '首页滚动图1', 'index.php?s=/item-detail-id-200', '1604/19/5715efd17890f.jpg', '', '', '', '1460908800', '1524067200', '0', '0', '3', '1');
INSERT INTO `jrkj_ad_dp` VALUES ('9', '5', 'image', '首页滚动图2', 'index.php?s=/item-index-id-5-cate_id-8', '1604/19/5715f0069be94.jpg', '', '', '', '1460995200', '1524067200', '0', '0', '5', '1');
INSERT INTO `jrkj_ad_dp` VALUES ('10', '2', 'image', '首页滚动图3', '', '1604/20/571724b159c23.jpg', '', '', '', '1460995200', '1492531200', '0', '0', '255', '1');
INSERT INTO `jrkj_ad_dp` VALUES ('11', '2', 'image', '首页滚动图4', '', '1604/20/5717258875ecb.jpg', '', '', '', '1460995200', '1492531200', '0', '0', '255', '1');
INSERT INTO `jrkj_ad_dp` VALUES ('12', '5', '', '测试', 'http://cntvstu.0791jr.com/', '1605/14/5736ecc77b9de.jpg', '', '', '', '0', '0', '0', '0', '100', '0');
INSERT INTO `jrkj_ad_dp` VALUES ('13', '3', '', '001', 'http://wk.0791jr.com/index.php?s=/item-detail-id-150', '1605/24/57440d2a63eb4.jpg', '', '', '', '0', '0', '0', '0', '1', '1');
INSERT INTO `jrkj_ad_dp` VALUES ('14', '3', '', '开业海报', '.', '1605/24/57440d4641963.jpg', '', '', '', '0', '0', '0', '0', '3', '1');
INSERT INTO `jrkj_ad_dp` VALUES ('15', '4', '', '红糖', 'http://wk.0791jr.com/index.php?s=/item-detail-id-174', '1605/17/573ad550d50f4.jpg', '', '', '', '0', '0', '0', '0', '3', '1');
INSERT INTO `jrkj_ad_dp` VALUES ('16', '4', '', '鹅蛋', 'http://wk.0791jr.com/index.php?s=/item-detail-id-179', '1605/17/573adc16124e2.jpg', '', '', '', '0', '0', '0', '0', '2', '1');
INSERT INTO `jrkj_ad_dp` VALUES ('17', '3', '', '00', '0', '1605/24/57440d56caea7.jpg', '', '', '', '0', '0', '0', '0', '2', '1');

-- ----------------------------
-- Table structure for jrkj_apply
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_apply`;
CREATE TABLE `jrkj_apply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `age` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `add_time` int(11) DEFAULT NULL,
  `add_ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jrkj_apply
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_area
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_area`;
CREATE TABLE `jrkj_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `py` varchar(10) NOT NULL DEFAULT '',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_area
-- ----------------------------
INSERT INTO `jrkj_area` VALUES ('1', '西湖区', '0', 'xhq', '1', '0', '0', '', '0', '0');
INSERT INTO `jrkj_area` VALUES ('2', '西湖区', '0', 'xhq', '1', '0', '0', '', '0', '0');
INSERT INTO `jrkj_area` VALUES ('3', '江西', '0', 'jxs', '1', '0', '0', '', '0', '0');
INSERT INTO `jrkj_area` VALUES ('4', '老福山', '2', 'lfs', '1', '2', '0', '', '0', '0');

-- ----------------------------
-- Table structure for jrkj_article
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_article`;
CREATE TABLE `jrkj_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `merchant_id` int(8) DEFAULT NULL COMMENT '关联店铺ID',
  `cate_id` smallint(4) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `colors` varchar(10) NOT NULL DEFAULT '',
  `short_title` varchar(120) NOT NULL DEFAULT '',
  `alias` varchar(100) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `origin` varchar(30) NOT NULL DEFAULT '',
  `tags` varchar(100) NOT NULL DEFAULT '',
  `img` varchar(255) NOT NULL DEFAULT '',
  `intro` varchar(255) NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `comments` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序值',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keys` varchar(150) DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  `templet` varchar(60) NOT NULL DEFAULT '',
  `url` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_article
-- ----------------------------
INSERT INTO `jrkj_article` VALUES ('76', '3', '0', '热心小伙帮忙报警 温暖守候感动众人', '', '91岁老人意外走失，热心小伙守候在老人身旁', '', '邹鹏飞', '来源：南昌晚报', '', '1606/22/576a2c1cc37b2_thumb.jpg', '91岁老人意外走失，热心小伙守候在老人身旁', '&lt;p align=&quot;center&quot; style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;http://www.ncnews.com.cn/zt/xjfcmfzsf/zxbd/attachement/jpg/site2/20160616/00232460631618cc5a670d.jpg&quot; id=&quot;1220902&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p align=&quot;center&quot; style=&quot;text-align:center;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p align=&quot;center&quot; style=&quot;text-align:center;&quot;&gt;\r\n	老人独自走在马路上\r\n&lt;/p&gt;\r\n&lt;p align=&quot;center&quot; style=&quot;text-align:center;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p align=&quot;center&quot; style=&quot;text-align:center;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;“谢谢你出手相助，不然老人家还不知道什么时候才能找回来。”昨日上午，魏女士冒着大雨找到热心市民周伟，激动地向他致谢。原来6月14日傍晚7时左右，魏女士的父亲魏老汉在看病的过程中意外走失，晚上11时左右，周伟发现老人独自走在路边，及时报警求助，直到民警赶到才离开。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;91岁老人意外走失&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 魏女士说，父亲魏老汉今年91岁，从前年开始患上了老年痴呆症，会经&lt;span style=&quot;font-size:12px;line-height:1.5;&quot;&gt;常忘记回家的路。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12px;line-height:1.5;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 前段时间魏老汉的身体出现了问题，家人带着他从老家弋阳赶到南昌看病。6月14日，家人在铁路医院帮老汉办理了入院手续，而老人家意外从病房内走失了。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;“当时家里人下楼去买晚饭，嘱咐老人呆在病房内不要乱跑，结果回来的时候发现老人家不见了。”魏老汉失踪，家人慌了神，赶紧在医院内外找了个遍，可是始终未见到老人的踪影。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 魏女士一家人通过调取医院的监控录像，发现魏老先生在6点50分离开了医院。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	“老人家在南昌人生地不熟，身上又没有钱和联系方式，家里人都急死了。”魏女士家人立即报警求助，同时在朋友圈和微 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;博发布求助信息。就在魏女士一家忙着寻找老人时，当天晚上11时左右，他们接到派出所电话，称老人找到了。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;热心小伙守候在老人身旁&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 魏女士与家人赶到派出所，见到失踪的老人激动不已，原来老人从医院离开后，走到了施尧路靠近象湖湿地公园附近，幸好遇上了热心小伙周伟，老人才回到了家人身旁。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 昨日，记者联系上热心小伙周伟，得知他今年34岁，从事餐饮工作。6月14日晚上11时左右，他下班之后骑着电动车沿着施尧路回家，经过象湖湿地公园附近时，意外发现一位老人独自走在路边。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;“老人家穿着拖鞋，两只手拿着棍子，一根棍上还挂着牛奶袋子，走得很慢，并不停地左右查看，像是迷路了。”热心的周伟便骑着电动车靠近老人。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; “老大爷，你怎么不回家，是不是迷路了？”周伟说，老人则用不太标准的普通话说自己迷路了。周伟询问老人是否记得家人的联系方式，可是他怎么也回答不上来。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;担心老人出现意外，周伟立即拨打报警电话，且一直守候在老人身旁，直到民警赶到后才放心离开。\r\n&lt;/p&gt;', '0', '0', '255', '1466575498', '1466575900', '1', '热心小伙帮忙报警 温暖守候感动众人', null, '91岁老人意外走失，热心小伙守候在老人身旁', '', '');
INSERT INTO `jrkj_article` VALUES ('25', '4', '5', '如何免费获取积分', '', '', '', '', '', '', '', ' 如何免费获取积分 ', '&lt;a href=&quot;http://sy.0791jr.com/index.php?s=/Merchant-business#&quot; style=&quot;color:#666666;text-decoration:none;font-family:微软雅黑, 宋体;line-height:30px;white-space:normal;background-color:#FFFFFF;&quot;&gt;如何免费获取积分&lt;/a&gt;', '0', '8', '255', '1456299921', '1476504216', '1', '如何免费获取积分', '', ' 如何免费获取积分 ', '', '');
INSERT INTO `jrkj_article` VALUES ('78', '3', '0', '家传项链遗落 列车车长7小时内送还', '', '家传项链遗落 列车车长7小时内送还', '', '辜砚琦', '来源：南昌晚报', '', '1606/22/576a40fe41c80_thumb.jpg', '家传项链遗落 列车车长7小时内送还', '&lt;p align=&quot;center&quot; style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;http://www.ncnews.com.cn/zt/xjfcmfzsf/zxbd/attachement/jpg/site2/20160614/00232460631618ca0b5034.jpg&quot; id=&quot;1219789&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p align=&quot;center&quot; style=&quot;text-align:center;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p align=&quot;center&quot; style=&quot;text-align:center;&quot;&gt;\r\n	张女士遗落在卧铺枕头下的项链\r\n&lt;/p&gt;\r\n&lt;p align=&quot;center&quot; style=&quot;text-align:center;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; “我的黄金项链可能丢在火车上了，你们帮我找一找吧。”6月12日11时许，在石家庄火车站的站台上，一位中年妇女焦急地拨通了铁路客服电话，诉说其丢失黄金项链的经过，并向列车工作人员求助。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 原来，这名妇女名叫张文晔（音），家住河北省石家庄市。前日，张女士从鄂州乘T168次列车返回石家庄。12日9时40分许，列车驶抵石家庄站。张女士下车出站后便叫了一辆出租车回家。在出租车上，张女士从包里拿出镜子补妆，发现戴在脖子上的金项链不见了。这可把张女士急坏了，因为这项链上的玉佛是家里的老人留下的，自己将其镶嵌好后就一直戴在身上。思前想后，张女士认为项链还是落在火车上的可能性比较大。于是，她急忙叫出租车赶回火车站。可等张女士回到火车站，T168次列车早就开走了。最后，张女士只得拨通了铁路客服电话，希望列车工作人员能帮她找一找。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;得知张女士的黄金项链可能落在了列车上，想到张女士下车也快两个小时了，正在硬座车厢巡视的列车长立即返回卧铺车厢查找。经过仔细寻找，列车长终于在张女士睡过的卧铺枕头下找到了黄金项链。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 就在张女士为自己的粗心而懊悔之时，她的手机突然响了起来。电话中，列车长告诉张女士，她落在列车上的金项链找到了！听到这个消息，张女士悬着的心终于落下。当天17时许，当列车长值乘的列车从北京西站返回又一次停靠石家庄车站时，早已在站台上焦急等候的张女士终于从列车长手中接过了金项链，此时距她发现金项链丢失仅过了近7个小时。\r\n&lt;/p&gt;', '0', '0', '255', '1466578374', '1466581295', '1', '家传项链遗落 列车车长7小时内送还', null, '家传项链遗落 列车车长7小时内送还', '', '');
INSERT INTO `jrkj_article` VALUES ('77', '3', '0', '七旬老人资助贫困学生20年', '', '资助贫困学生近20年', '', '来源：南昌晚报', '来源：南昌晚报', '', '1606/22/576a347eb0685_thumb.jpg', '资助贫困学生近20年', '&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 家住惠民门的张春和虽已76岁，但仍然以一颗年轻的心有一分热发一分光。不仅如此，他还带动身边的150多位老人加入公益事业。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;资助贫困学生近20年&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 1997年，广润门街道成立了老年协会，专门为社区困难家庭提供一对一帮扶。张春和第一个报名加入了这个志愿者群体，从此开始了近20年的义务奉献生活。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 张春和一直关注贫困学生的情况，他说：“我的第一个帮扶对象叫胡秋明，他父亲因为身患糖尿病和肺结核不能工作，母亲靠打临工赚钱，家境非常贫寒。”张春和在得知胡秋明家的情况后，立马送去了学习用品和爱心资金。此后，近20年来，他对贫困学生的资助从未断过，受他资助的人越来越多。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;6年义务照顾独居老人&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 张春和坚持6年义务照顾邻居独居老人的事迹更是让居民竖起了大拇指。“我们社区有一位名叫范金枯的独居老人，张春和像照顾亲人一样照顾了她五六年。”对于张春和的事迹，社区里的人们都津津乐道。据了解，这位范老已经87岁高龄了，在得知范金枯一个人居住，且生活窘困时，张春和主动承担起了照顾老人的任务，经常给她买米、买菜，一干就是6年。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;带动150多位老人服务社区&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 广润门老年协会刚成立的时候只有17人，在张春和的积极倡导和带领下，如今已发展为152人。此前，西湖区要将中山路打造成文明示范街，需要组织义务志愿者巡逻，这个任务就交给了老年协会。张春和愉快地接受了任务，而且总把苦事、差事揽下带头干。\r\n&lt;/p&gt;\r\n&lt;br /&gt;', '0', '0', '255', '1466577794', '1466578050', '1', '七旬老人资助贫困学生20年', null, '资助贫困学生近20年', '', '');
INSERT INTO `jrkj_article` VALUES ('47', '5', '10', '都惠生活', '', '', '', '', '', '', '1605/21/57402ad117c1e_thumb.jpg', '联系我们', '联系电话：88851639', '0', '0', '255', '1458540881', '1463823057', '1', '都惠生活', '', '联系我们', '', '');
INSERT INTO `jrkj_article` VALUES ('42', '5', '19', '[现货]欧式套房儿童女孩美式实木象牙白新古典花朵简欧床头柜包邮', '', '', '', '', '', '', '', '现代简约白色储物柜 钢琴烤漆床头柜 二斗柜收纳柜 宜家特价定做', '&lt;span&gt;现代简约白色储物柜 钢琴烤漆床头柜 二斗柜收纳柜 宜家特价定做&lt;/span&gt;', '0', '6', '255', '1458267370', '1463817996', '1', '[现货]欧式套房儿童女孩美式实木象牙白新古典花朵简欧床头柜包邮', '', '现代简约白色储物柜 钢琴烤漆床头柜 二斗柜收纳柜 宜家特价定做', '', '');
INSERT INTO `jrkj_article` VALUES ('43', '5', '19', '现代简约白色储物柜 钢琴烤漆床头柜 二斗柜收纳柜 宜家特价定做', '', '', '', '', '', '', '', '现代简约白色储物柜 钢琴烤漆床头柜 二斗柜收纳柜 宜家特价定做', '&lt;span&gt;现代简约白色储物柜 钢琴烤漆床头柜 二斗柜收纳柜 宜家特价定做&lt;/span&gt;', '0', '16', '255', '1458267380', '1463818041', '1', '现代简约白色储物柜 钢琴烤漆床头柜 二斗柜收纳柜 宜家特价定做', '', '现代简约白色储物柜 钢琴烤漆床头柜 二斗柜收纳柜 宜家特价定做', '', '');
INSERT INTO `jrkj_article` VALUES ('79', '3', '0', '“大型生活服务社区行”首站活动走进公园街办', '', '志愿者来到社区免费修理家电提供法律援助 居民走上舞台与大家分享“好家风故事”', '', '刘七葆 邹鹏飞 刘永波 陈青青 文 王飞波 图', '地宝网', '', '1606/22/576a406cda5e8_thumb.jpg', '志愿者来到社区免费修理家电提供法律援助 居民走上舞台与大家分享“好家风故事”', '&amp;nbsp; &amp;nbsp; &amp;nbsp; 志愿者来到社区免费修理家电提供法律援助 居民走上舞台与大家分享“好家风故事”\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	文艺表演、家训征集、政协委员听民意……昨日，东湖区公园街办上营坊社区广场格外热闹，“兴家风、淳民风、正社风”主题宣传暨本报“大型生活服务社区行”活动首站在该社区盛大举行。首站活动由本报与东湖区委宣传部联合主办，包括律师、医生、记者在内的十多位志愿者，来到社区和居民面对面交流，居民还走上舞台与大家分享“好家风、家训故事”，度过了一个有意义的周末。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;市民赶早来参加活动&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 昨日，居民黄先生听说上午社区有活动，且可以免费维修家电，一大早就拿着家里坏了的电风扇前来等候。他说夏天来了，赶紧把坏了的电风扇修好，过阵子就可以用上。和黄先生一样，得知本报社区行活动的消息后，许多居民们纷纷赶来现场，很快社区广场便人头攒动。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;临近九点，舞台搭建好，现场被分为“三风”服务区、文化生活服务区、爱心商家服务区三大区域，共有政协委员服务处、家训征集处、心理咨询处、健康咨询处、金融服务处、家电清洗处、家电维修处等十多个服务点。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;为居民送上文艺大餐&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 九点，随着社区阿姨们激情的广场舞表演开始，活动拉开了序幕，观看节目表演的居民越来越多。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;跳完广场舞，由公园街办选送的太极拳表演，又吸引了大家的目光。只见两位阿姨在舞台上随着音乐，“一招一式”地打起了太极拳，看上去格外精神。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 接着，从莲塘三小赶来的三位小朋友魏诗慧、邬亚轩、熊雨涵，跳起了爵士舞《绅士》，赢得居民的热烈掌声。三位小朋友还向社区热爱舞蹈的阿姨发起了“挑战”，以斗舞的方式为大家表演了不一样的舞蹈《小苹果》。一个活泼可爱，一个端庄大气，小朋友和社区阿姨的表演各有亮点。他们的表演将活动推向了高潮。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;多个区域义务为居民服务&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; “请问这家电多久要清理一次？”“现在的股市行情您怎么看？”台上进行节目表演的同时，台下的三大服务区域也格外忙碌。政协委员唐士奎、陈宁江正在接待从大老远赶来的市民吴女士，得知吴女士家庭困难后，两位委员将情况作了认真的记录。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;在健康咨询处，老中医熊健康，特意放下手边的工作来为居民们把脉、诊断。短短一个多小时，他就为30余位居民把脉，并对需要的人开出中医处方。“能尽我的所学来帮居民解决健康问题是我的荣幸，这样的公益活动我以后还会经常参加。”熊医生说道。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;在心理咨询处，居民胡阿姨问道，她的孙子孙女正在读初中，有着较强烈的叛逆心理，应该怎么办？心理咨询师张收林建议说，刚上初中的孩子有叛逆心理比较正常，家长应多陪孩子，多与孩子沟通，多倾听孩子内心的话，少一点说教。律师唐乐也在耐心地为市民提供法律援助。唐律师说，当天咨询婚姻和交通纠纷的居民比较多。通过唐律师的解说，不少市民解开了心中的疑惑。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 此外，金融服务处、记者维权处、家电清洗处等服务点，都坐满了前来咨询了解情况的居民，志愿者们一面和他们拉家常，一面结合现场解决居民遇到的各种问题。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;居民在互动中介绍家训&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 活动中，本报还设立了“家训征集处”，吸引了许多市民前来填写自家的家训。为了让更多居民参与进来，我们还使用本报社区行QQ群、微信公众平台等网络媒介向大家征集家训。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 主持人宣布了游戏规则后，许多市民立刻加入QQ群。待主持人喊“开始发送”，大家一个个编辑自家的家训发到群里来，最终根据发送的先后，选出前三名幸运参与者。张先生的家训是简单的五个字“家和万事兴”，而这句家训得到了在场很多居民的认可，不少居民表示，只有家庭和睦，万事才会好起来。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;记者看到，大家在QQ群分享的家训还有“自强自立”、“从自身做起”、“一切皆有可能”等等。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;丰厚礼品送给社区居民&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;&lt;br /&gt;\r\n&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 本次活动还获得了许多热衷公益的企事业单位的支持，阳光乳业、怡宝、海尔电器、南昌金融服务中心、南昌蒙太奇文化传播有限公司、江西电视台移动电视等都以不同形式参与了活动。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;其中，由江西阳光乳业提供的牛奶颇受欢迎，大家纷纷前来咨询、扫晚报微信公众号二维码赢取牛奶。参与QQ群互动的居民，还获得了一整箱牛奶、怡宝水，让居民在家门口捧得奖品回家。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;1小时修30多台家电&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 昨日，人气较旺的服务点是中国好人范圣高给大家提供的免费家电维修点，他在短短的一个小时内就为居民维修了30多台家电。记者在现场看到，一个原本寿命到头的电饭煲，经过范师傅的维修，很快又“复活”了。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 市民段先生说，他特意从湾里赶来现场向范圣高表达感谢，因为今年春节范师傅了解到他的家庭比较困难，就特意从城区送了一台电视机到他家。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;随后，范师傅还走上舞台，向大家讲述了自己的经历和自家的家风家规，获得了居民的热烈掌声。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;从未清洗的空调“焕然一新”&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 在家电清洗服务处现场，社区居民邓大爷高兴得合不拢嘴，因为他家的空调很久未清洗了，海尔电器派来的技术人员热情地为他进行了免费清洗。邓大爷说，他70多岁了，现在一个人生活，家里的空调自从买了后就没清洗过，但又不知道在哪找清洗的。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 他说刚走出家门就看到晚报在做公益活动，于是就过来询问，没想到还有免费清洗家电的，老人便开心地向工作人员说出自己家的地址。海尔电器的技术人员表示，他们已经登记了许多需要清洗家电的居民信息，会尽快派师傅上门免费帮忙清洗，并且还会对居民的家电做一个简单的排查。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;“让我们零距离，&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;line-height:1.5;font-size:16px;&quot;&gt;&lt;strong&gt;倾听了百姓声音”&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 南昌市诚信促进会会长、市政协委员唐士奎：这次活动以点带面，很好地宣传了“三风”活动。通过这个活动，我们走进社区，零距离倾听了百姓的声音，从而能更全面地了解百姓生活，更好地履行自己身为政协委员的义务。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;“晚报的进社区活动，&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;line-height:1.5;font-size:16px;&quot;&gt;&lt;strong&gt;弘扬了社会正气”&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 江西3L集团销售公司总经理、市政协委员陈宁江：这次活动形式多样很有意义，弘扬了社会正气。通过文艺表演和志愿者服务等，我们更好地服务了社区的居民，也感受到了社区的和谐。\r\n&lt;/p&gt;\r\n&lt;!--/enpcontent--&gt;', '0', '0', '255', '1466579324', '1466581100', '1', '“大型生活服务社区行”首站活动走进公园街办', null, '志愿者来到社区免费修理家电提供法律援助 居民走上舞台与大家分享“好家风故事”', '', '');
INSERT INTO `jrkj_article` VALUES ('46', '5', '21', '地板产品质量仍是地板企业发展主方向', '', '', '', '', '', '', '', ' 目前，伴随地板行业的不断发展，地板市场上的竞争也俨然上升到了白热化的阶段。时下，面对层出不穷的竞争压力，以创新突围逐渐在地板企业中达成了共识。对于地板企业而言，在当下地板市场上，想要赢得长远发展，创', '&lt;span&gt; 目前，伴随地板行业的不断发展，地板市场上的竞争也俨然上升到了白热化的阶段。时下，面对层出不穷的竞争压力，以创新突围逐渐在地板企业中达成了共识。对于地板企业而言，在当下地板市场上，想要赢得长远发展，创新是不可或缺的。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span&gt; 【中国建材网】目前，伴随地板行业的不断发展，地板市场上的竞争也俨然上升到了白热化的阶段。时下，面对层出不穷的竞争压力，以创新突围逐渐在地板企业中达成了共识。对于地板企业而言，在当下地板市场上，想要赢得长远发展，创新是不可或缺的。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span&gt; 地板产品质量仍是地板企业发展主方向&lt;/span&gt;&lt;br /&gt;\r\n&lt;span&gt; 近年来，伴随地板行业市场竞争程度的加剧，以创新的思维谋发展逐渐成为企业战略方针中的重要内容之一。诚然，在同质化现象尤为严峻的市场上，创新已经成为企业差异化战略的必经之路。尽管创新的重要性对企业不言而喻，但企业在创新之前，也需保证产品的品质。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span&gt; 其实，无论地板品牌专卖店的装修多么奢侈豪华;无论地板产品的用材多么高端精贵;无论营销传播的渠道多么与时俱进，对于终端消费者而言，最终希望的还是地板能够“漂亮”和“质量稳定”，说白了，就是好看而且耐用，是的，这很像宜家的口号。对于消费者而言，还希望地板的价格能够更加透明实在;希望地板物流配送更加的省心顺畅。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span&gt; 地板市场环境的改变鞭策地板企业做出创新&lt;/span&gt;&lt;br /&gt;\r\n&lt;span&gt; 过去不到10年的时间里，地板行业出现了极为剧烈的变化，这种变化不仅体现在行业内，也展现在行业外。行业内，卖场扩张加速，虽然一方面让部分传统强势地板品牌实力进一步增强，也给了不少新品牌发展机会;但同时，越来越多的经销商都开始面临经营压力——这一时期，各种关于促销导购的培训风靡大江南北，是这种压力的一个衍生现象。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span&gt; 在地板终端市场，从基本的销售技巧训练，到小区拓展，再到爆破营销，各种能带来销售额的手段方式统统都被摆上了台面。而为了能够跟上现代消费节奏，网上舆论优化、新媒体传播，乃至电子商城，也是纷纷上阵。这些改变，多数都是市场“倒逼”下的行业行为调整，但是这些调整依然没能使销售状况出现根本改变。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span&gt; 行业外，随着地板主流使用人群的迭代，地板消费习惯也开始发生着改变。年轻的消费者开始习惯了登陆电脑查询地板信息，开始换上了智能手机并使用各种购物APP软件。行业的剧烈变革，消费方式的改变，地板行业也开始跟着调整。为了获取更多的市场份额，在地板产业链上游，更多新奇的地板风格、更多新颖的地板材种纷纷在地板行业涌现出来，实木地板行业甚至上演了比拼用料的大戏。&lt;/span&gt;&lt;br /&gt;\r\n&lt;span&gt; 在比较特殊的时期内，地板企业的发展如若不及时进行创新，在今后的发展过程中，也必将出现更多的发展桎梏，在这种情况下，地板企业唯有紧跟时代步伐，在解决消费“痛点”的前提下进行创新，才能在逆势之下赢得更为长远的发展。&lt;/span&gt;&lt;br /&gt;', '0', '6', '255', '1458539937', '1463817986', '1', '建材资讯', '建材资讯', '地板产品', '', '');
INSERT INTO `jrkj_article` VALUES ('75', '3', '0', '为帮邻居救火 他们汤碗都用上了!', '', '前进路社区一居民楼三楼阳台清晨着火，市民合力扑救', '', '邹鹏飞', '南昌新闻网——南昌晚报', '', '1606/22/576a28813285c_thumb.jpg', '前进路社区一居民楼三楼阳台清晨着火，市民合力扑救', '&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 昨日早上6时30分左右，天还未亮，许多人正在熟睡当中，然而将军渡巷前进路社区一居民楼突然发生火灾，三楼的阳台上冒出熊熊大火。屋内还住着人，情况十分危急，幸运的是，两名热心市民赶来帮忙，将火势控制住，随后赶到的消防官兵将大火扑灭。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;三楼阳台清晨冒出火光&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; 昨日上午，记者接到线索后赶到现场看到，三楼的阳台墙面已经被烧黑，防盗窗上残留着一些被烧毁的物品，四楼的空调外机受到大火的影响，有些损毁。随后，记者在事发居民屋内看到，烧着的部分只有阳台，其中一个角落已经被烧得一片狼藉，两个热水器、一座沙发以及其他物品都被烧得只剩下铁架子。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	“当时大家都在睡觉，三楼的阳台突然就发火了。”居民熊女士说，事发时间在早晨6时30分左右，有人突然大喊“着火了”，许多居民吓得来不及换上衣服，就从楼上跑了下来。“当时天还很暗，火势特别大，把楼下都照亮了。”\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;热心市民帮忙救火&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;据屋主钱女士介绍，她就睡在阳台隔壁的房间内。不过，事发时，她并未发现异常，直到有人大声拍门叫喊，拉开窗帘后她才发现阳台一片火光。她被眼前的一幕吓呆了，赶紧关上了通往阳台的大门。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	钱女士打开房门之后，两名热心的男子立即冲进房间内，帮忙救火，“当时情况很紧急，加上天色很暗，没有看清他们是谁，如果不是他们帮忙，后果不堪设想。”三人在房间内找来了脸盆和桶子，轮流接水往阳台上倒，与此同时，四楼的住户也从阳台洒水下来。在大家的帮助下，火势得到有效控制，此后，赶到的消防官兵利用水枪，很快将大火扑灭。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	四楼的住户告诉记者，为了救火，他们连装菜的汤碗都用上了，幸好没有造成人员伤亡。阳台为何会突然起火？钱女士称，阳台上原本放着香炉，昨日恰逢腊八节，可能是爸妈出门前在香炉内烧香导致的。目前，消防部门正在进一步调查起火的原因。\r\n&lt;/p&gt;', '0', '0', '255', '1466565183', '1466574977', '1', '为帮邻居救火 他们汤碗都用上了!', null, '前进路社区一居民楼三楼阳台清晨着火，市民合力扑救', '', '');
INSERT INTO `jrkj_article` VALUES ('80', '2', '0', '中式红木家具遭危机 实木家具走俏市场', '', '', '', '', '', '', '1610/15/5801b634ef422_thumb.jpg', ' 传统中式实木家具的诱人魅力,说起传统的中式实木家具当数明清红木家具最为闻名，影响至今。现在所说的红木家具就是中式传统的硬木家具。红木标准中定位为5属8类，分别为紫檀属、黄檀属、柿属、崖豆属、铁力木属', '&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;传统中式实木家具的诱人魅力,说起传统的中式实木家具当数明清红木家具最为闻名，影响至今。现在所说的红木家具就是中式传统的硬木家具。红木标准中定位为5属8类，分别为紫檀属、黄檀属、柿属、崖豆属、铁力木属，以及紫檀木类、花梨木类、香枝木类、黑酸枝木类、红酸枝木类、乌木类、条纹乌木类和鸡翅木类。这些木材都因为稀少变得弥足珍贵，特别是黄花梨和紫檀现在几乎绝迹。这些优质良材不但稳定性好，而且有天然花纹和悦目色彩，很多材料还有药用价值，比如紫檀可以止血止痛，黄花梨有降压作用。 \r\n　　实木家具价格上扬传统中式实木家具走红&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;除了物以稀为贵外，传统中式实木家具的价值还体现在其独特的造型和精湛的工艺上。中式家具工艺在明清两代发展到了顶峰，目前市场上的仿古家具大都参照明清家具的样式去设计制造。而明清两代的家具又各具特色。明式家具的质朴典雅，清式家具的精雕细琢，都达到了艺术高度。明式家具重结构，少装饰，注重细微变化。清式家具重装饰、轻结构、讲究整体的华丽感，但无论怎么变化，明清家具的造型都很有艺术特质，一件家具包含了中国人的哲学思想，处世之道&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;家具价格行情探析 实木家具走俏市场，在大型的家具专场，屏风、圈椅、翘头案、交椅、罗汉床等传统中式实木家具的经典款型是最为常见的。消费者可以通过观察、触摸、试坐去细细体味这些传统中式实木家具工艺及材质的诱人魅力。传统中式实木家具考验的是家具师傅的匠心。传统中式实木家具的制作过程与现代的家具大生产制作流程不同，虽然在家具的制作过程中加入了不少工业制作的流程，但手工制作在传统中式实木家具的生产中是必不可少的。 \r\n　　传统中式实木家具的工艺高超，主要体现在全靠精巧的结构上，上等的家具全部部件都可以靠插接组合，每一件传统中式实木家具都离不开家具制作师傅的经验及纯粹的手工工艺，所花费的时间比机械化大生产的家具所用的时间要多得多，这便是传统中式实木家具的工艺价值所在。 \r\n　　目前，选择传统中式实木家具的消费者除了看中这类家具美观、环保、耐用的价值外，更重要的是看中其投资收藏价值，这是众多款式家具、布艺、真皮家具无法比拟。由于木材资源严重紧缺，传统中式实木家具价格平均每年至少大幅上调一次，可见其增值空间巨大，家具木材含量越高，增值空间越大。随着二手实木家具市场的兴起，具有保值、增值功能的传统中式实木家具也悄悄成为一种独特的理财方式。 \r\n　　选择传统中式实木家具要慎重 \r\n　　传统中式实木家具价值不菲，一套家具的价格在几万至几十万元，因此在选择上更应慎重考虑。消费者购买实木家具时应该主动索要产品使用说明书和购物凭证，对产品说明书及经营者的承诺进行逐项核实。还要掌握相关的实木选购技巧，方能选择到优质的产品。红木家具面临价格盘整&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;在红木原材料价格中，最为名贵的是黄花梨、小叶紫檀、大红酸枝，其中黄花梨又分为海南黄花梨和越南黄花梨，由于海南黄花梨极为罕见，几乎是有价无市，常见的高端红木家具材料为越南黄花梨、小叶紫檀和大红酸枝。 \r\n　　中国家具协会传统家具专业委员会副秘书长邓雪松介绍，由于越南黄花梨近年来资源稀缺，原生林濒临枯竭，加上越南也完全禁止了该种木材的出口，因此价格持续上扬，去年越南黄花梨的木材价格涨了一倍，家具价格也迅速上涨。但是因为材质过于昂贵，很多厂家都没有制作此类家具，黄花梨的消费行为，已经完全由家居使用向投资收藏转变。而从2005年到今年，黄花梨的家具和木材价格涨幅都在几十倍以上。 \r\n　　大红酸枝是2010年到2011年拉升较快的木材，因为大红酸枝也是中国传统家具习惯用材，价值也得到公认，所以成为很多厂家主导的生产材料，而近年来新开设的厂家特别多，据中国家具协会传统家具专业委员会统计2010年到2011年，红木家具厂家大约新开了1万多家，因此导致大红酸枝的用量急剧增长，所以前年到去年，价格上涨大约在150%以上，木材的资源也频临灭绝。大料的涨幅更是高达数倍以上，例如60厘米以上的红酸枝的大板料都是以每块来论价格，相当于数百万一吨。小叶紫檀的价格去年也大约上涨了80%。 \r\n　　高端红木，盛世危机 \r\n　　高端红木价格的暴涨，让不少业内人士产生了需求不堪重负、价格终需回落的预期，红木价格的暴跌并非没有先例。 \r\n　　2007年到2008年，红木家具价格经历了从高到低的变化，直到全球金融危机逐渐过去，市场才有所回升。针对目前尚不明朗的国际形势，红木家具市场未来走势引发业内人士热议：不少人表示，随着红木原料的稀缺，红木价格仍将持续走高；但也有业内人士预测，在当前经济形势影响下，红木家具市场的投资已经缺乏后续动力，已现走低迹象，像小叶紫檀，在急速拉升后近期木材价格已经略有回落和整理。&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;而以斤论价的红木家具的报价似乎也在印证着红木价格盘整的说法，一家红木家具商在官网公布的红木家具价格情况来看，2010年11月到2011年4月，越南黄花梨和小叶紫檀都经历了一波价格快速爬升的过程，如越南黄花梨的起报价从每公斤1599元迅速升至4499元，价格涨了近2倍。然而，在经历如此一轮快速攀升后，越南黄花梨和小叶紫檀两种红木家具的报价在此后都不再变化，一直保持在这一价位，这让不少业内人士不得不担心，横盘过后，是否将引来价格下滑的拐点。 \r\n　　由于红木产品资金占用量大，加上有回落的可能，现在不少红木家具的代理商都开始存观望态度，有生产厂家表示，已经好久没进新货了，目前都以消化旧货为主，年前也不再考虑进货了，“怕跌价”。', '0', '0', '255', '1466584760', '1476507188', '1', '病魔无情 邻里有爱', '', '爱心汇聚 为尿毒症女孩点燃希望', '', '');
INSERT INTO `jrkj_article` VALUES ('81', '1', '0', '网上定制办公家具真的可行吗？', '', '', '', '', 'admin', '', '1610/15/5801b222d135d_thumb.jpg', '网上购物的方便快捷让现在的网购异常火爆，有人就问了:在网上定制办公家具真的可行吗？其实家具业同样适合网购，但定制过程中我们应注意以下几个方面。 一、确定尺寸 除了风格的选择之外，我们必须注意所定制办公', '网上购物的方便快捷让现在的网购异常火爆，有人就问了:在网上定制办公家具真的可行吗？其实家具业同样适合网购，但定制过程中我们应注意以下几个方面。 &lt;br /&gt;\r\n一、确定尺寸\r\n  除了风格的选择之外，我们必须注意所定制办公家具的尺寸，在选择办公家具的之前一定要对办公家具的尺寸、大小，做到心中有数，避免，买回来之后不满意甚至尺寸不合适的情况发生。 &lt;br /&gt;\r\n二、店铺选择\r\n  现在网上各种各样的网站，让人眼花缭乱，无所适从，关于店铺选择，一定要选择大的平台里的店铺或者办公家具厂家自己的网上商城，保证所定制办公家具的价格合理、质量保证。&lt;br /&gt;\r\n三、售后保障\r\n  产品的说明书、合格证、备品备件是否齐全都是售后的范畴，一定要仔细检查并收好相关证明，以备日后的维护使用。办公家具在使用过程中出现这样那样的问题，我们应该如何解决，找谁解决，这些在定制办公家具时一定得谨慎。', '0', '0', '255', '1466586560', '1476506146', '1', '“一天不敲都不习惯，怕邻居们惦记我”', '', '——记义务“打更”28年的陈凤娇 ', '', '');

-- ----------------------------
-- Table structure for jrkj_article_attr
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_article_attr`;
CREATE TABLE `jrkj_article_attr` (
  `article_id` int(10) unsigned NOT NULL,
  `attr_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_article_attr
-- ----------------------------
INSERT INTO `jrkj_article_attr` VALUES ('1', '2');
INSERT INTO `jrkj_article_attr` VALUES ('9', '1');
INSERT INTO `jrkj_article_attr` VALUES ('12', '1');
INSERT INTO `jrkj_article_attr` VALUES ('1', '1');
INSERT INTO `jrkj_article_attr` VALUES ('14', '1');

-- ----------------------------
-- Table structure for jrkj_article_cate
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_article_cate`;
CREATE TABLE `jrkj_article_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(100) NOT NULL DEFAULT '',
  `img` varchar(255) NOT NULL DEFAULT '',
  `pid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `spid` varchar(50) NOT NULL DEFAULT '',
  `ordid` smallint(4) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` varchar(150) NOT NULL DEFAULT '',
  `seo_keys` varchar(150) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  `index_templet` varchar(60) NOT NULL DEFAULT '',
  `category_templet` varchar(60) NOT NULL DEFAULT '',
  `detail_templet` varchar(60) NOT NULL DEFAULT '',
  `is_home` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_article_cate
-- ----------------------------
INSERT INTO `jrkj_article_cate` VALUES ('7', '0', '帮助中心', '', '', '0', '0', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('8', '0', '关于我们', '', '', '0', '0', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('9', '1', '平台介绍', '', '', '8', '8|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('10', '1', '联系我们', '', '', '8', '8|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('11', '0', '新手指南', '', '', '7', '7|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('13', '0', '关于支付', '', '', '7', '7|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('14', '0', '关于配送', '', '', '7', '7|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('15', '0', '售后服务', '', '', '7', '7|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('16', '0', '关于我们', '', '', '7', '7|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('17', '0', '新闻资讯', '', '', '0', '0', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('19', '0', '活动公告', '', '', '17', '17|', '255', '1', '', '', '', '', '', '', '0', '');
INSERT INTO `jrkj_article_cate` VALUES ('21', '0', '厨卫建材', '', '', '18', '18|', '255', '1', '', '', '', '', '', '', '0', '');

-- ----------------------------
-- Table structure for jrkj_article_copy
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_article_copy`;
CREATE TABLE `jrkj_article_copy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` smallint(4) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `colors` varchar(10) NOT NULL DEFAULT '',
  `short_title` varchar(120) NOT NULL DEFAULT '',
  `alias` varchar(100) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `origin` varchar(30) NOT NULL DEFAULT '',
  `tags` varchar(100) NOT NULL DEFAULT '',
  `img` varchar(255) NOT NULL DEFAULT '',
  `intro` varchar(255) NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `comments` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序值',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keys` varchar(150) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_article_copy
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_article_ext
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_article_ext`;
CREATE TABLE `jrkj_article_ext` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `article_id` int(10) NOT NULL,
  `ext_name` varchar(50) NOT NULL,
  `ext_value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_article_ext
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_article_img
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_article_img`;
CREATE TABLE `jrkj_article_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_article_img
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_article_page
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_article_page`;
CREATE TABLE `jrkj_article_page` (
  `merchant_id` int(10) DEFAULT NULL,
  `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `alias` varchar(100) NOT NULL DEFAULT '',
  `info` longtext NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `seo_keys` varchar(255) NOT NULL DEFAULT '',
  `seo_desc` text NOT NULL,
  `add_time` int(10) DEFAULT NULL,
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(3) DEFAULT '1' COMMENT '1 为 公告, 2为 帮帮忙',
  `status` tinyint(1) DEFAULT '0',
  `ordid` int(5) DEFAULT '255',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_article_page
-- ----------------------------
INSERT INTO `jrkj_article_page` VALUES ('5', '10', '新店开张,全场包邮', '', '11&lt;img src=&quot;/data/attachment/merchant/19/image/2016/05/5743c8857eb02.png&quot; alt=&quot;&quot; /&gt;', '0', '', '', '新店开张,全场包邮', '1464057967', '1464073475', '1', '1', '333');
INSERT INTO `jrkj_article_page` VALUES ('5', '9', '精选农家自养优质土白鹅', '', '', '0', '', '', '66666', '1463996908', '1463996908', '1', '1', '255');
INSERT INTO `jrkj_article_page` VALUES ('5', '12', '本店免费代收件', '111', '本店免费代收件,本店免费停车,本店不收门票,本店24小时不打烊', '0', '', '', '本店免费代收件', '1464058531', '1464074353', '2', '1', '255');
INSERT INTO `jrkj_article_page` VALUES ('5', '13', '精选农家自养优质鸽子', '11', '11&lt;img src=&quot;/data/attachment/merchant/19/image/2016/05/5743c8857eb02.png&quot; alt=&quot;&quot; /&gt;', '0', '', '', '11', '1464060039', '1464060681', '1', '1', '255');
INSERT INTO `jrkj_article_page` VALUES ('5', '15', '精选农家自养优质土鸭', '', '', '0', '', '', '77', '1464060538', '1464061061', '1', '1', '255');
INSERT INTO `jrkj_article_page` VALUES ('3', '16', '精选农家自养优质土鸡蛋', '12', '', '0', '', '', '精选农家自养优质土鸡蛋', '1464061128', '1464073400', '1', '1', '255');
INSERT INTO `jrkj_article_page` VALUES ('3', '17', '新上正宗南城五黑鸡/五黑鸡蛋', '', '', '0', '', '', '新上正宗南城五黑鸡/五黑鸡蛋', '1464073597', '1464144004', '1', '1', '255');
INSERT INTO `jrkj_article_page` VALUES ('3', '19', '小5帮忙', '', '&lt;table style=&quot;width:100%;&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; align=&quot;center&quot; border=&quot;1&quot; bordercolor=&quot;#000000&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align:center;&quot;&gt;\r\n				&lt;span style=&quot;color:#E53333;&quot;&gt;管道疏通&lt;/span&gt;&lt;br /&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;公司名称&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;联系方式（电话/QQ）&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;地址&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌小兰专业管道疏通&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;曹师傅 13077926117无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/枫林大道&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌沣荣园管道疏通服务中心&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;周强 15079035531/2661047710&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/庐山南大道&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌惠好疏通服务有限公司&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;吕师傅 13970089113/1593907077&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/玉屏大街&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;立达管道疏通&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;郭师傅 18970095114/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/庐山南大道/南昌各区有分点&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;未知&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;曹师傅 18179204925（九江）/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/下罗&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌经开区下罗昌北便民惠民服务中心&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;夏师傅 13870636133/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/庐山南大道/下罗附近&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌好帮手服务公司&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;刘师傅 18379208858（九江）/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/下罗/南昌各区有分点&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;未知&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;周师傅 0791-88439232/2224578929&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/双港大街&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌经开区利民管道疏通服务中心&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;蔡师傅 13807049438/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/下罗&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;未知&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;邹师傅 13177915568/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/下罗/青山湖区&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌辉煌管道清洗疏通工程公司&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;朱师傅 18070119148/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/江西省各地&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;未知&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;陈师傅 18170906005/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/下罗&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;九瑞建筑工程&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;何师傅 13687081851/1060464216&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/下罗&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;未知&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;刘师傅 18379208858（九江）/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/江西省各地&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align:center;&quot;&gt;\r\n				&lt;span style=&quot;color:#E53333;&quot;&gt;急开锁&lt;/span&gt;&lt;br /&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;个人&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;黄师傅 13970007529/2054433095&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/双港大街&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;个人&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;戴师傅 13177897842/2231946623&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/玉屏大街&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;个人&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;黄师傅 15270000953/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/下罗/双港大道&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;个人&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;李师傅 13970845633/310834464&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/蛟桥&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;个人&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;陈师傅 18170906005/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/蛟桥&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;个人&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;万师傅 18070380065/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/枫林大道/下罗&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;诚信锁业&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;党师傅 13576929919/2543803677&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;个人&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;谭师傅 15083554005/28745405&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/下罗&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align:center;&quot;&gt;\r\n				&lt;span style=&quot;color:#E53333;&quot;&gt;搬家&lt;/span&gt;&lt;br /&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌红牛搬家有限公司&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;乐经理 18807007565或15979055749/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北区/南昌各区有分点&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌棒棒哒搬家&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;江先生 15979125934或13361622938/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北区/南昌各区有分点&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌红谷鸿运搬家&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;陶经理 15879025812或83720004/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;未知&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌永顺搬家服务有限公司&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;杨经理 18870035784或15170066615/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;未知&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌旺旺搬家&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;徐经理 15979055749/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/庐山南大道/枫庐新天地&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;老涂面包车搬家&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;老涂 13217001983/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/庐山南大道&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌大运搬家公司&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;王先生 13677001601/1535714286&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/枫林大道&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌兴旺搬家公司&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;欧阳先生 13677001601/1535714286&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/庐山南大道&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌喜顺搬家公司&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;金先生 13307081960/841822496&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/双港大街&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌雷锋搬家经开区分公司&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;刘经理 18970034339/1514198095&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/枫林大道/下罗&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;个人&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;杨师傅 18579111170/85052768&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;昌北经开区/下罗财大/东湖周边&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align:center;&quot;&gt;\r\n				&lt;span style=&quot;color:#E53333;&quot;&gt;家电维修&lt;/span&gt;&lt;br /&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;重庆啄木鸟电器有限公司&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;易经理 18100795623或86127877/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;全南昌市&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌空调一站式服务公司&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;张师傅 87879666或15180116088/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;未知&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌兴隆家电维修部&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;李师傅 15970645607/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;未知&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;文龙家电&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;黄师傅 13207097278/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;全南昌市&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;南昌嘉和空调维修&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;于师傅 13507095655或18942232811/无&lt;/span&gt; \r\n				&lt;/div&gt;\r\n				&lt;div style=&quot;text-align:center;&quot;&gt;\r\n					&lt;span style=&quot;line-height:1.5;&quot;&gt;全南昌市&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;/span&gt; \r\n				&lt;/div&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n以上信息均来源地宝网，如需转载请注明出处，最终解释权归本公司所有。', '0', '', '', '小5帮忙', '1464143075', '1466495445', '2', '0', '255');

-- ----------------------------
-- Table structure for jrkj_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_article_tag`;
CREATE TABLE `jrkj_article_tag` (
  `article_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jrkj_article_tag
-- ----------------------------
INSERT INTO `jrkj_article_tag` VALUES ('3', '4');
INSERT INTO `jrkj_article_tag` VALUES ('3', '5');
INSERT INTO `jrkj_article_tag` VALUES ('3', '6');
INSERT INTO `jrkj_article_tag` VALUES ('4', '16');
INSERT INTO `jrkj_article_tag` VALUES ('4', '17');
INSERT INTO `jrkj_article_tag` VALUES ('4', '18');
INSERT INTO `jrkj_article_tag` VALUES ('2', '19');
INSERT INTO `jrkj_article_tag` VALUES ('2', '20');
INSERT INTO `jrkj_article_tag` VALUES ('2', '21');
INSERT INTO `jrkj_article_tag` VALUES ('2', '22');
INSERT INTO `jrkj_article_tag` VALUES ('2', '23');

-- ----------------------------
-- Table structure for jrkj_attr
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_attr`;
CREATE TABLE `jrkj_attr` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_attr
-- ----------------------------
INSERT INTO `jrkj_attr` VALUES ('1', '头条');
INSERT INTO `jrkj_attr` VALUES ('2', '推荐');
INSERT INTO `jrkj_attr` VALUES ('3', '热门');

-- ----------------------------
-- Table structure for jrkj_attribute
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_attribute`;
CREATE TABLE `jrkj_attribute` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `item_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`item_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_attribute
-- ----------------------------
INSERT INTO `jrkj_attribute` VALUES ('1', '1', '颜色', '1', '1', '', '0', '0', '0', '0', '1');
INSERT INTO `jrkj_attribute` VALUES ('2', '1', '尺码', '1', '1', '', '0', '0', '0', '0', '1');
INSERT INTO `jrkj_attribute` VALUES ('3', '2', '裤子尺码', '1', '1', '', '0', '0', '0', '0', '1');
INSERT INTO `jrkj_attribute` VALUES ('4', '2', '鞋子尺码', '1', '1', '', '0', '0', '0', '0', '1');
INSERT INTO `jrkj_attribute` VALUES ('5', '3', '制式', '1', '1', '', '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for jrkj_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_attribute_value`;
CREATE TABLE `jrkj_attribute_value` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attr_id` int(10) unsigned NOT NULL,
  `value` varchar(20) NOT NULL DEFAULT '',
  `ordid` tinyint(4) unsigned NOT NULL DEFAULT '100',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_attribute_value
-- ----------------------------
INSERT INTO `jrkj_attribute_value` VALUES ('1', '1', '红色', '100', '1', '0');
INSERT INTO `jrkj_attribute_value` VALUES ('2', '1', '绿色', '100', '0', '2');
INSERT INTO `jrkj_attribute_value` VALUES ('3', '2', 'M', '100', '1', '0');
INSERT INTO `jrkj_attribute_value` VALUES ('4', '2', 'L', '100', '1', '0');
INSERT INTO `jrkj_attribute_value` VALUES ('5', '2', 'XL', '100', '1', '0');
INSERT INTO `jrkj_attribute_value` VALUES ('6', '3', '28', '100', '1', '0');
INSERT INTO `jrkj_attribute_value` VALUES ('7', '3', '29', '100', '1', '0');
INSERT INTO `jrkj_attribute_value` VALUES ('8', '3', '30', '100', '1', '0');
INSERT INTO `jrkj_attribute_value` VALUES ('9', '3', '31', '100', '1', '0');
INSERT INTO `jrkj_attribute_value` VALUES ('10', '1', '绿色', '100', '1', '1');
INSERT INTO `jrkj_attribute_value` VALUES ('11', '1', '棕色', '100', '1', '1');
INSERT INTO `jrkj_attribute_value` VALUES ('12', '1', '紫色', '100', '1', '1');
INSERT INTO `jrkj_attribute_value` VALUES ('13', '2', 's', '100', '1', '1');
INSERT INTO `jrkj_attribute_value` VALUES ('14', '5', '移动4G', '100', '1', '0');
INSERT INTO `jrkj_attribute_value` VALUES ('15', '5', '联通4G', '100', '1', '0');
INSERT INTO `jrkj_attribute_value` VALUES ('16', '5', '电信4G', '100', '1', '0');

-- ----------------------------
-- Table structure for jrkj_badword
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_badword`;
CREATE TABLE `jrkj_badword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `word_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1：禁用；2：替换；3：审核',
  `badword` varchar(100) NOT NULL,
  `replaceword` varchar(100) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_badword
-- ----------------------------
INSERT INTO `jrkj_badword` VALUES ('1', '1', '法轮功', '', '1426914502');

-- ----------------------------
-- Table structure for jrkj_bank
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_bank`;
CREATE TABLE `jrkj_bank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `bankname` varchar(30) NOT NULL DEFAULT '',
  `city` varchar(30) NOT NULL DEFAULT '',
  `branch` varchar(30) NOT NULL DEFAULT '',
  `bank_account` varchar(30) NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `uname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_bank
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_cart
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_cart`;
CREATE TABLE `jrkj_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `merchant_id` int(10) NOT NULL COMMENT '店铺ID',
  `sku_id` varchar(255) NOT NULL DEFAULT '',
  `item_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` float(20,2) unsigned NOT NULL DEFAULT '0.00',
  `settle_price` float(20,2) unsigned NOT NULL DEFAULT '0.00',
  `price` float(20,2) NOT NULL DEFAULT '0.00',
  `number` int(5) unsigned NOT NULL DEFAULT '0',
  `item_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(15) unsigned NOT NULL,
  `update_time` int(15) unsigned NOT NULL,
  `img` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1299 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_cart
-- ----------------------------
INSERT INTO `jrkj_cart` VALUES ('1293', '0', '188611013079', '301', '1', '', '力威办公家具屏风组合工作位员工卡位职员办公桌4人位', '588.00', '0.00', '500.00', '1', '', '0', '1479126247', '0', '/img/image/1.jpg');
INSERT INTO `jrkj_cart` VALUES ('1294', '0', '123', '289', '0', '', '办公家具简约时尚现代电脑桌屏风组合职员工作卡位果绿', '0.00', '0.00', '5800.00', '1', '', '0', '0', '0', '/img/image/4.jpg');
INSERT INTO `jrkj_cart` VALUES ('1295', '0', '123', '290', '0', '', '写字楼职员办公桌 屏风员工位4人位办公桌椅组合员工桌电脑桌卡座', '0.00', '0.00', '240.00', '1', '', '0', '0', '0', '/img/image/3.jpg');
INSERT INTO `jrkj_cart` VALUES ('1296', '0', '123', '293', '0', '', '欧式田园 畅销经典款 高档水牛头层真皮床 对称式描金雕花 1.8米精致水晶拉扣床', '0.00', '0.00', '2900.00', '2', '', '0', '0', '0', '/img/image/5.jpg');
INSERT INTO `jrkj_cart` VALUES ('1297', '0', '123', '291', '0', '', '办公家具员工桌简约职员办公桌现代屏风卡位4 6四人位电脑桌椅', '0.00', '0.00', '470.00', '2', '', '0', '0', '0', '/img/image/5.jpg');
INSERT INTO `jrkj_cart` VALUES ('1298', '0', '123', '292', '0', '', '现代风格 浩一 中式风格 2.3米大班台 老板桌 经理桌', '0.00', '0.00', '480.00', '1', '', '0', '0', '0', '/img/image/5.jpg');

-- ----------------------------
-- Table structure for jrkj_category
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_category`;
CREATE TABLE `jrkj_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL DEFAULT '',
  `alias` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_category
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_collect
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_collect`;
CREATE TABLE `jrkj_collect` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(20) NOT NULL COMMENT '用户ID',
  `item_id` int(20) DEFAULT NULL COMMENT '商品ID',
  `merchant_id` int(20) DEFAULT NULL COMMENT '商品ID',
  `add_time` int(20) NOT NULL,
  `type` int(20) NOT NULL DEFAULT '1' COMMENT '1.商品收藏  2.店铺收藏',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_collect
-- ----------------------------
INSERT INTO `jrkj_collect` VALUES ('23', '42', null, '2', '1477566477', '2');
INSERT INTO `jrkj_collect` VALUES ('21', '45', '301', null, '1477542865', '1');
INSERT INTO `jrkj_collect` VALUES ('22', '45', '292', null, '1477542908', '1');
INSERT INTO `jrkj_collect` VALUES ('19', '42', null, '1', '1477476903', '2');
INSERT INTO `jrkj_collect` VALUES ('24', '45', '289', null, '1477614695', '1');
INSERT INTO `jrkj_collect` VALUES ('26', '46', null, '1', '1478566371', '2');
INSERT INTO `jrkj_collect` VALUES ('25', '46', '301', null, '1478566364', '1');

-- ----------------------------
-- Table structure for jrkj_coupons
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_coupons`;
CREATE TABLE `jrkj_coupons` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(20) NOT NULL COMMENT '用户ID',
  `coupons_id` int(20) NOT NULL COMMENT '优惠卷ID',
  `coupons_price` int(20) NOT NULL COMMENT '优惠卷金额',
  `coupons_name` varchar(100) NOT NULL COMMENT '优惠卷名称',
  `start_time` int(20) NOT NULL,
  `end_time` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1.正常 2.未开始 3.已过期 4.已使用 ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_coupons
-- ----------------------------
INSERT INTO `jrkj_coupons` VALUES ('1', '42', '2', '50', ' 国庆', '1477411200', '1477584000', '2');

-- ----------------------------
-- Table structure for jrkj_coupons_list
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_coupons_list`;
CREATE TABLE `jrkj_coupons_list` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `coupons_name` varchar(50) NOT NULL COMMENT '优惠卷名称',
  `coupons_price` float(20,0) NOT NULL COMMENT '优惠卷面值',
  `start_time` int(20) NOT NULL COMMENT '开始使用时间',
  `end_time` int(20) NOT NULL COMMENT '结束时间',
  `create_time` int(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1.正常使用  2.未开始 3.已过期  ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_coupons_list
-- ----------------------------
INSERT INTO `jrkj_coupons_list` VALUES ('2', '国庆', '50', '1477411200', '1477584000', '1477375366', '2');

-- ----------------------------
-- Table structure for jrkj_crontab
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_crontab`;
CREATE TABLE `jrkj_crontab` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `task_id` varchar(32) NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL,
  `create_ip` char(15) NOT NULL,
  `hm_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1772 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_crontab
-- ----------------------------
INSERT INTO `jrkj_crontab` VALUES ('1', '586042', '1443236682', '182.101.41.246', '2015-09-26 11:04:42');
INSERT INTO `jrkj_crontab` VALUES ('2', '48610', '1443236711', '182.101.41.246', '2015-09-26 11:05:11');
INSERT INTO `jrkj_crontab` VALUES ('3', '283744', '1443238201', '121.41.16.149', '2015-09-26 11:30:01');
INSERT INTO `jrkj_crontab` VALUES ('4', '752073', '1443238801', '121.41.16.149', '2015-09-26 11:40:01');
INSERT INTO `jrkj_crontab` VALUES ('5', '893598', '1443239401', '121.41.16.149', '2015-09-26 11:50:01');
INSERT INTO `jrkj_crontab` VALUES ('6', '45018', '1443240001', '121.41.16.149', '2015-09-26 12:00:01');
INSERT INTO `jrkj_crontab` VALUES ('7', '363186', '1443240601', '121.41.16.149', '2015-09-26 12:10:01');
INSERT INTO `jrkj_crontab` VALUES ('8', '70727', '1443241201', '121.41.16.149', '2015-09-26 12:20:01');
INSERT INTO `jrkj_crontab` VALUES ('9', '81078', '1443241802', '121.41.16.149', '2015-09-26 12:30:02');
INSERT INTO `jrkj_crontab` VALUES ('10', '916941', '1443242401', '121.41.16.149', '2015-09-26 12:40:01');
INSERT INTO `jrkj_crontab` VALUES ('11', '478536', '1443243001', '121.41.16.149', '2015-09-26 12:50:01');
INSERT INTO `jrkj_crontab` VALUES ('12', '478946', '1443243601', '121.41.16.149', '2015-09-26 13:00:01');
INSERT INTO `jrkj_crontab` VALUES ('13', '671778', '1443244201', '121.41.16.149', '2015-09-26 13:10:01');
INSERT INTO `jrkj_crontab` VALUES ('14', '135505', '1443244801', '121.41.16.149', '2015-09-26 13:20:01');
INSERT INTO `jrkj_crontab` VALUES ('15', '851860', '1443245401', '121.41.16.149', '2015-09-26 13:30:01');
INSERT INTO `jrkj_crontab` VALUES ('16', '971863', '1443246001', '121.41.16.149', '2015-09-26 13:40:01');
INSERT INTO `jrkj_crontab` VALUES ('17', '753513', '1443246601', '121.41.16.149', '2015-09-26 13:50:01');
INSERT INTO `jrkj_crontab` VALUES ('18', '615409', '1443247201', '121.41.16.149', '2015-09-26 14:00:01');
INSERT INTO `jrkj_crontab` VALUES ('19', '335343', '1443247801', '121.41.16.149', '2015-09-26 14:10:01');
INSERT INTO `jrkj_crontab` VALUES ('20', '619803', '1443248401', '121.41.16.149', '2015-09-26 14:20:01');
INSERT INTO `jrkj_crontab` VALUES ('21', '131405', '1443249001', '121.41.16.149', '2015-09-26 14:30:01');
INSERT INTO `jrkj_crontab` VALUES ('22', '404090', '1443249601', '121.41.16.149', '2015-09-26 14:40:01');
INSERT INTO `jrkj_crontab` VALUES ('23', '167158', '1443250201', '121.41.16.149', '2015-09-26 14:50:01');
INSERT INTO `jrkj_crontab` VALUES ('24', '714559', '1443250801', '121.41.16.149', '2015-09-26 15:00:01');
INSERT INTO `jrkj_crontab` VALUES ('25', '632742', '1443251401', '121.41.16.149', '2015-09-26 15:10:01');
INSERT INTO `jrkj_crontab` VALUES ('26', '664592', '1443252001', '121.41.16.149', '2015-09-26 15:20:01');
INSERT INTO `jrkj_crontab` VALUES ('27', '558001', '1443252601', '121.41.16.149', '2015-09-26 15:30:01');
INSERT INTO `jrkj_crontab` VALUES ('28', '564719', '1443253201', '121.41.16.149', '2015-09-26 15:40:01');
INSERT INTO `jrkj_crontab` VALUES ('29', '502907', '1443253801', '121.41.16.149', '2015-09-26 15:50:01');
INSERT INTO `jrkj_crontab` VALUES ('30', '12718', '1443254401', '121.41.16.149', '2015-09-26 16:00:01');
INSERT INTO `jrkj_crontab` VALUES ('31', '383764', '1443255001', '121.41.16.149', '2015-09-26 16:10:01');
INSERT INTO `jrkj_crontab` VALUES ('32', '389157', '1443255601', '121.41.16.149', '2015-09-26 16:20:01');
INSERT INTO `jrkj_crontab` VALUES ('33', '480070', '1443256201', '121.41.16.149', '2015-09-26 16:30:01');
INSERT INTO `jrkj_crontab` VALUES ('34', '88445', '1443256801', '121.41.16.149', '2015-09-26 16:40:01');
INSERT INTO `jrkj_crontab` VALUES ('35', '311124', '1443257401', '121.41.16.149', '2015-09-26 16:50:01');
INSERT INTO `jrkj_crontab` VALUES ('36', '574010', '1443258001', '121.41.16.149', '2015-09-26 17:00:01');
INSERT INTO `jrkj_crontab` VALUES ('37', '952752', '1443258601', '121.41.16.149', '2015-09-26 17:10:01');
INSERT INTO `jrkj_crontab` VALUES ('38', '940546', '1443259201', '121.41.16.149', '2015-09-26 17:20:01');
INSERT INTO `jrkj_crontab` VALUES ('39', '804802', '1443259801', '121.41.16.149', '2015-09-26 17:30:01');
INSERT INTO `jrkj_crontab` VALUES ('40', '339374', '1443260401', '121.41.16.149', '2015-09-26 17:40:01');
INSERT INTO `jrkj_crontab` VALUES ('41', '222971', '1443261001', '121.41.16.149', '2015-09-26 17:50:01');
INSERT INTO `jrkj_crontab` VALUES ('42', '64967', '1443261601', '121.41.16.149', '2015-09-26 18:00:01');
INSERT INTO `jrkj_crontab` VALUES ('43', '451351', '1443262201', '121.41.16.149', '2015-09-26 18:10:01');
INSERT INTO `jrkj_crontab` VALUES ('44', '656225', '1443262801', '121.41.16.149', '2015-09-26 18:20:01');
INSERT INTO `jrkj_crontab` VALUES ('45', '853043', '1443263401', '121.41.16.149', '2015-09-26 18:30:01');
INSERT INTO `jrkj_crontab` VALUES ('46', '943864', '1443264001', '121.41.16.149', '2015-09-26 18:40:01');
INSERT INTO `jrkj_crontab` VALUES ('47', '841409', '1443264601', '121.41.16.149', '2015-09-26 18:50:01');
INSERT INTO `jrkj_crontab` VALUES ('48', '740516', '1443265201', '121.41.16.149', '2015-09-26 19:00:01');
INSERT INTO `jrkj_crontab` VALUES ('49', '828490', '1443265801', '121.41.16.149', '2015-09-26 19:10:01');
INSERT INTO `jrkj_crontab` VALUES ('50', '329507', '1443266401', '121.41.16.149', '2015-09-26 19:20:01');
INSERT INTO `jrkj_crontab` VALUES ('51', '616928', '1443267001', '121.41.16.149', '2015-09-26 19:30:01');
INSERT INTO `jrkj_crontab` VALUES ('52', '512895', '1443267601', '121.41.16.149', '2015-09-26 19:40:01');
INSERT INTO `jrkj_crontab` VALUES ('53', '384708', '1443268201', '121.41.16.149', '2015-09-26 19:50:01');
INSERT INTO `jrkj_crontab` VALUES ('54', '851851', '1443268801', '121.41.16.149', '2015-09-26 20:00:01');
INSERT INTO `jrkj_crontab` VALUES ('55', '90693', '1443269401', '121.41.16.149', '2015-09-26 20:10:01');
INSERT INTO `jrkj_crontab` VALUES ('56', '267035', '1443270001', '121.41.16.149', '2015-09-26 20:20:01');
INSERT INTO `jrkj_crontab` VALUES ('57', '597968', '1443270601', '121.41.16.149', '2015-09-26 20:30:01');
INSERT INTO `jrkj_crontab` VALUES ('58', '418249', '1443271201', '121.41.16.149', '2015-09-26 20:40:01');
INSERT INTO `jrkj_crontab` VALUES ('59', '370908', '1443271801', '121.41.16.149', '2015-09-26 20:50:01');
INSERT INTO `jrkj_crontab` VALUES ('60', '565420', '1443272401', '121.41.16.149', '2015-09-26 21:00:01');
INSERT INTO `jrkj_crontab` VALUES ('61', '72633', '1443273001', '121.41.16.149', '2015-09-26 21:10:01');
INSERT INTO `jrkj_crontab` VALUES ('62', '37609', '1443273602', '121.41.16.149', '2015-09-26 21:20:02');
INSERT INTO `jrkj_crontab` VALUES ('63', '936849', '1443274201', '121.41.16.149', '2015-09-26 21:30:01');
INSERT INTO `jrkj_crontab` VALUES ('64', '313138', '1443274801', '121.41.16.149', '2015-09-26 21:40:01');
INSERT INTO `jrkj_crontab` VALUES ('65', '965968', '1443275401', '121.41.16.149', '2015-09-26 21:50:01');
INSERT INTO `jrkj_crontab` VALUES ('66', '435260', '1443276001', '121.41.16.149', '2015-09-26 22:00:01');
INSERT INTO `jrkj_crontab` VALUES ('67', '502263', '1443276601', '121.41.16.149', '2015-09-26 22:10:01');
INSERT INTO `jrkj_crontab` VALUES ('68', '403323', '1443277201', '121.41.16.149', '2015-09-26 22:20:01');
INSERT INTO `jrkj_crontab` VALUES ('69', '690581', '1443277801', '121.41.16.149', '2015-09-26 22:30:01');
INSERT INTO `jrkj_crontab` VALUES ('70', '874636', '1443278401', '121.41.16.149', '2015-09-26 22:40:01');
INSERT INTO `jrkj_crontab` VALUES ('71', '459580', '1443279001', '121.41.16.149', '2015-09-26 22:50:01');
INSERT INTO `jrkj_crontab` VALUES ('72', '922947', '1443279601', '121.41.16.149', '2015-09-26 23:00:01');
INSERT INTO `jrkj_crontab` VALUES ('73', '155052', '1443280201', '121.41.16.149', '2015-09-26 23:10:01');
INSERT INTO `jrkj_crontab` VALUES ('74', '713023', '1443280801', '121.41.16.149', '2015-09-26 23:20:01');
INSERT INTO `jrkj_crontab` VALUES ('75', '852950', '1443281401', '121.41.16.149', '2015-09-26 23:30:01');
INSERT INTO `jrkj_crontab` VALUES ('76', '524722', '1443282001', '121.41.16.149', '2015-09-26 23:40:01');
INSERT INTO `jrkj_crontab` VALUES ('77', '469439', '1443282601', '121.41.16.149', '2015-09-26 23:50:01');
INSERT INTO `jrkj_crontab` VALUES ('78', '767482', '1443283201', '121.41.16.149', '2015-09-27 00:00:01');
INSERT INTO `jrkj_crontab` VALUES ('79', '677262', '1443283801', '121.41.16.149', '2015-09-27 00:10:01');
INSERT INTO `jrkj_crontab` VALUES ('80', '893338', '1443284401', '121.41.16.149', '2015-09-27 00:20:01');
INSERT INTO `jrkj_crontab` VALUES ('81', '911920', '1443285001', '121.41.16.149', '2015-09-27 00:30:01');
INSERT INTO `jrkj_crontab` VALUES ('82', '858896', '1443285601', '121.41.16.149', '2015-09-27 00:40:01');
INSERT INTO `jrkj_crontab` VALUES ('83', '79937', '1443286201', '121.41.16.149', '2015-09-27 00:50:01');
INSERT INTO `jrkj_crontab` VALUES ('84', '828038', '1443286801', '121.41.16.149', '2015-09-27 01:00:01');
INSERT INTO `jrkj_crontab` VALUES ('85', '453028', '1443287401', '121.41.16.149', '2015-09-27 01:10:01');
INSERT INTO `jrkj_crontab` VALUES ('86', '259169', '1443288001', '121.41.16.149', '2015-09-27 01:20:01');
INSERT INTO `jrkj_crontab` VALUES ('87', '323952', '1443288601', '121.41.16.149', '2015-09-27 01:30:01');
INSERT INTO `jrkj_crontab` VALUES ('88', '982846', '1443289201', '121.41.16.149', '2015-09-27 01:40:01');
INSERT INTO `jrkj_crontab` VALUES ('89', '349254', '1443289801', '121.41.16.149', '2015-09-27 01:50:01');
INSERT INTO `jrkj_crontab` VALUES ('90', '639984', '1443290401', '121.41.16.149', '2015-09-27 02:00:01');
INSERT INTO `jrkj_crontab` VALUES ('91', '906421', '1443291001', '121.41.16.149', '2015-09-27 02:10:01');
INSERT INTO `jrkj_crontab` VALUES ('92', '52600', '1443291601', '121.41.16.149', '2015-09-27 02:20:01');
INSERT INTO `jrkj_crontab` VALUES ('93', '747647', '1443292201', '121.41.16.149', '2015-09-27 02:30:01');
INSERT INTO `jrkj_crontab` VALUES ('94', '959788', '1443292801', '121.41.16.149', '2015-09-27 02:40:01');
INSERT INTO `jrkj_crontab` VALUES ('95', '616257', '1443293401', '121.41.16.149', '2015-09-27 02:50:01');
INSERT INTO `jrkj_crontab` VALUES ('96', '333796', '1443294001', '121.41.16.149', '2015-09-27 03:00:01');
INSERT INTO `jrkj_crontab` VALUES ('97', '986215', '1443294601', '121.41.16.149', '2015-09-27 03:10:01');
INSERT INTO `jrkj_crontab` VALUES ('98', '698362', '1443295201', '121.41.16.149', '2015-09-27 03:20:01');
INSERT INTO `jrkj_crontab` VALUES ('99', '634111', '1443295801', '121.41.16.149', '2015-09-27 03:30:01');
INSERT INTO `jrkj_crontab` VALUES ('100', '242672', '1443296401', '121.41.16.149', '2015-09-27 03:40:01');
INSERT INTO `jrkj_crontab` VALUES ('101', '444084', '1443297001', '121.41.16.149', '2015-09-27 03:50:01');
INSERT INTO `jrkj_crontab` VALUES ('102', '282437', '1443297601', '121.41.16.149', '2015-09-27 04:00:01');
INSERT INTO `jrkj_crontab` VALUES ('103', '950063', '1443298201', '121.41.16.149', '2015-09-27 04:10:01');
INSERT INTO `jrkj_crontab` VALUES ('104', '544304', '1443298801', '121.41.16.149', '2015-09-27 04:20:01');
INSERT INTO `jrkj_crontab` VALUES ('105', '823242', '1443299401', '121.41.16.149', '2015-09-27 04:30:01');
INSERT INTO `jrkj_crontab` VALUES ('106', '373498', '1443300001', '121.41.16.149', '2015-09-27 04:40:01');
INSERT INTO `jrkj_crontab` VALUES ('107', '349002', '1443300601', '121.41.16.149', '2015-09-27 04:50:01');
INSERT INTO `jrkj_crontab` VALUES ('108', '738198', '1443301201', '121.41.16.149', '2015-09-27 05:00:01');
INSERT INTO `jrkj_crontab` VALUES ('109', '758489', '1443301801', '121.41.16.149', '2015-09-27 05:10:01');
INSERT INTO `jrkj_crontab` VALUES ('110', '42890', '1443302401', '121.41.16.149', '2015-09-27 05:20:01');
INSERT INTO `jrkj_crontab` VALUES ('111', '197737', '1443303001', '121.41.16.149', '2015-09-27 05:30:01');
INSERT INTO `jrkj_crontab` VALUES ('112', '424810', '1443303601', '121.41.16.149', '2015-09-27 05:40:01');
INSERT INTO `jrkj_crontab` VALUES ('113', '241218', '1443304201', '121.41.16.149', '2015-09-27 05:50:01');
INSERT INTO `jrkj_crontab` VALUES ('114', '495978', '1443304801', '121.41.16.149', '2015-09-27 06:00:01');
INSERT INTO `jrkj_crontab` VALUES ('115', '56098', '1443305401', '121.41.16.149', '2015-09-27 06:10:01');
INSERT INTO `jrkj_crontab` VALUES ('116', '241429', '1443306001', '121.41.16.149', '2015-09-27 06:20:01');
INSERT INTO `jrkj_crontab` VALUES ('117', '132602', '1443306601', '121.41.16.149', '2015-09-27 06:30:01');
INSERT INTO `jrkj_crontab` VALUES ('118', '645822', '1443307201', '121.41.16.149', '2015-09-27 06:40:01');
INSERT INTO `jrkj_crontab` VALUES ('119', '648899', '1443307801', '121.41.16.149', '2015-09-27 06:50:01');
INSERT INTO `jrkj_crontab` VALUES ('120', '210764', '1443308401', '121.41.16.149', '2015-09-27 07:00:01');
INSERT INTO `jrkj_crontab` VALUES ('121', '199251', '1443309001', '121.41.16.149', '2015-09-27 07:10:01');
INSERT INTO `jrkj_crontab` VALUES ('122', '934831', '1443309601', '121.41.16.149', '2015-09-27 07:20:01');
INSERT INTO `jrkj_crontab` VALUES ('123', '135013', '1443310201', '121.41.16.149', '2015-09-27 07:30:01');
INSERT INTO `jrkj_crontab` VALUES ('124', '427237', '1443310801', '121.41.16.149', '2015-09-27 07:40:01');
INSERT INTO `jrkj_crontab` VALUES ('125', '532319', '1443311401', '121.41.16.149', '2015-09-27 07:50:01');
INSERT INTO `jrkj_crontab` VALUES ('126', '765377', '1443312001', '121.41.16.149', '2015-09-27 08:00:01');
INSERT INTO `jrkj_crontab` VALUES ('127', '431129', '1443312601', '121.41.16.149', '2015-09-27 08:10:01');
INSERT INTO `jrkj_crontab` VALUES ('128', '899216', '1443313201', '121.41.16.149', '2015-09-27 08:20:01');
INSERT INTO `jrkj_crontab` VALUES ('129', '953093', '1443313801', '121.41.16.149', '2015-09-27 08:30:01');
INSERT INTO `jrkj_crontab` VALUES ('130', '338870', '1443314401', '121.41.16.149', '2015-09-27 08:40:01');
INSERT INTO `jrkj_crontab` VALUES ('131', '568234', '1443315001', '121.41.16.149', '2015-09-27 08:50:01');
INSERT INTO `jrkj_crontab` VALUES ('132', '449390', '1443315601', '121.41.16.149', '2015-09-27 09:00:01');
INSERT INTO `jrkj_crontab` VALUES ('133', '778892', '1443316201', '121.41.16.149', '2015-09-27 09:10:01');
INSERT INTO `jrkj_crontab` VALUES ('134', '188704', '1443316801', '121.41.16.149', '2015-09-27 09:20:01');
INSERT INTO `jrkj_crontab` VALUES ('135', '341662', '1443317401', '121.41.16.149', '2015-09-27 09:30:01');
INSERT INTO `jrkj_crontab` VALUES ('136', '439845', '1443318001', '121.41.16.149', '2015-09-27 09:40:01');
INSERT INTO `jrkj_crontab` VALUES ('137', '929050', '1443318601', '121.41.16.149', '2015-09-27 09:50:01');
INSERT INTO `jrkj_crontab` VALUES ('138', '610932', '1443319201', '121.41.16.149', '2015-09-27 10:00:01');
INSERT INTO `jrkj_crontab` VALUES ('139', '765478', '1443319801', '121.41.16.149', '2015-09-27 10:10:01');
INSERT INTO `jrkj_crontab` VALUES ('140', '508725', '1443320401', '121.41.16.149', '2015-09-27 10:20:01');
INSERT INTO `jrkj_crontab` VALUES ('141', '991862', '1443321001', '121.41.16.149', '2015-09-27 10:30:01');
INSERT INTO `jrkj_crontab` VALUES ('142', '422165', '1443321601', '121.41.16.149', '2015-09-27 10:40:01');
INSERT INTO `jrkj_crontab` VALUES ('143', '908086', '1443322201', '121.41.16.149', '2015-09-27 10:50:01');
INSERT INTO `jrkj_crontab` VALUES ('144', '196988', '1443322801', '121.41.16.149', '2015-09-27 11:00:01');
INSERT INTO `jrkj_crontab` VALUES ('145', '251849', '1443323401', '121.41.16.149', '2015-09-27 11:10:01');
INSERT INTO `jrkj_crontab` VALUES ('146', '631847', '1443324001', '121.41.16.149', '2015-09-27 11:20:01');
INSERT INTO `jrkj_crontab` VALUES ('147', '765027', '1443324601', '121.41.16.149', '2015-09-27 11:30:01');
INSERT INTO `jrkj_crontab` VALUES ('148', '623739', '1443325201', '121.41.16.149', '2015-09-27 11:40:01');
INSERT INTO `jrkj_crontab` VALUES ('149', '178025', '1443325801', '121.41.16.149', '2015-09-27 11:50:01');
INSERT INTO `jrkj_crontab` VALUES ('150', '49660', '1443326402', '121.41.16.149', '2015-09-27 12:00:02');
INSERT INTO `jrkj_crontab` VALUES ('151', '700854', '1443327001', '121.41.16.149', '2015-09-27 12:10:01');
INSERT INTO `jrkj_crontab` VALUES ('152', '519504', '1443327601', '121.41.16.149', '2015-09-27 12:20:01');
INSERT INTO `jrkj_crontab` VALUES ('153', '441149', '1443328201', '121.41.16.149', '2015-09-27 12:30:01');
INSERT INTO `jrkj_crontab` VALUES ('154', '229005', '1443328801', '121.41.16.149', '2015-09-27 12:40:01');
INSERT INTO `jrkj_crontab` VALUES ('155', '949411', '1443329401', '121.41.16.149', '2015-09-27 12:50:01');
INSERT INTO `jrkj_crontab` VALUES ('156', '426510', '1443330001', '121.41.16.149', '2015-09-27 13:00:01');
INSERT INTO `jrkj_crontab` VALUES ('157', '939700', '1443330601', '121.41.16.149', '2015-09-27 13:10:01');
INSERT INTO `jrkj_crontab` VALUES ('158', '781774', '1443331201', '121.41.16.149', '2015-09-27 13:20:01');
INSERT INTO `jrkj_crontab` VALUES ('159', '524965', '1443331801', '121.41.16.149', '2015-09-27 13:30:01');
INSERT INTO `jrkj_crontab` VALUES ('160', '284791', '1443332401', '121.41.16.149', '2015-09-27 13:40:01');
INSERT INTO `jrkj_crontab` VALUES ('161', '723312', '1443333001', '121.41.16.149', '2015-09-27 13:50:01');
INSERT INTO `jrkj_crontab` VALUES ('162', '137965', '1443333601', '121.41.16.149', '2015-09-27 14:00:01');
INSERT INTO `jrkj_crontab` VALUES ('163', '827742', '1443334201', '121.41.16.149', '2015-09-27 14:10:01');
INSERT INTO `jrkj_crontab` VALUES ('164', '407755', '1443334801', '121.41.16.149', '2015-09-27 14:20:01');
INSERT INTO `jrkj_crontab` VALUES ('165', '648034', '1443335401', '121.41.16.149', '2015-09-27 14:30:01');
INSERT INTO `jrkj_crontab` VALUES ('166', '852335', '1443336001', '121.41.16.149', '2015-09-27 14:40:01');
INSERT INTO `jrkj_crontab` VALUES ('167', '901961', '1443336601', '121.41.16.149', '2015-09-27 14:50:01');
INSERT INTO `jrkj_crontab` VALUES ('168', '877753', '1443337202', '121.41.16.149', '2015-09-27 15:00:02');
INSERT INTO `jrkj_crontab` VALUES ('169', '928981', '1443337801', '121.41.16.149', '2015-09-27 15:10:01');
INSERT INTO `jrkj_crontab` VALUES ('170', '235778', '1443338401', '121.41.16.149', '2015-09-27 15:20:01');
INSERT INTO `jrkj_crontab` VALUES ('171', '414319', '1443339001', '121.41.16.149', '2015-09-27 15:30:01');
INSERT INTO `jrkj_crontab` VALUES ('172', '169076', '1443339601', '121.41.16.149', '2015-09-27 15:40:01');
INSERT INTO `jrkj_crontab` VALUES ('173', '726635', '1443340201', '121.41.16.149', '2015-09-27 15:50:01');
INSERT INTO `jrkj_crontab` VALUES ('174', '592068', '1443340801', '121.41.16.149', '2015-09-27 16:00:01');
INSERT INTO `jrkj_crontab` VALUES ('175', '468946', '1443341401', '121.41.16.149', '2015-09-27 16:10:01');
INSERT INTO `jrkj_crontab` VALUES ('176', '600344', '1443342001', '121.41.16.149', '2015-09-27 16:20:01');
INSERT INTO `jrkj_crontab` VALUES ('177', '822424', '1443342601', '121.41.16.149', '2015-09-27 16:30:01');
INSERT INTO `jrkj_crontab` VALUES ('178', '553592', '1443343201', '121.41.16.149', '2015-09-27 16:40:01');
INSERT INTO `jrkj_crontab` VALUES ('179', '519149', '1443343801', '121.41.16.149', '2015-09-27 16:50:01');
INSERT INTO `jrkj_crontab` VALUES ('180', '497042', '1443344401', '121.41.16.149', '2015-09-27 17:00:01');
INSERT INTO `jrkj_crontab` VALUES ('181', '290909', '1443345001', '121.41.16.149', '2015-09-27 17:10:01');
INSERT INTO `jrkj_crontab` VALUES ('182', '472443', '1443345601', '121.41.16.149', '2015-09-27 17:20:01');
INSERT INTO `jrkj_crontab` VALUES ('183', '141119', '1443346201', '121.41.16.149', '2015-09-27 17:30:01');
INSERT INTO `jrkj_crontab` VALUES ('184', '164207', '1443346801', '121.41.16.149', '2015-09-27 17:40:01');
INSERT INTO `jrkj_crontab` VALUES ('185', '218411', '1443347401', '121.41.16.149', '2015-09-27 17:50:01');
INSERT INTO `jrkj_crontab` VALUES ('186', '480305', '1443348001', '121.41.16.149', '2015-09-27 18:00:01');
INSERT INTO `jrkj_crontab` VALUES ('187', '215190', '1443348601', '121.41.16.149', '2015-09-27 18:10:01');
INSERT INTO `jrkj_crontab` VALUES ('188', '880560', '1443349201', '121.41.16.149', '2015-09-27 18:20:01');
INSERT INTO `jrkj_crontab` VALUES ('189', '369796', '1443349801', '121.41.16.149', '2015-09-27 18:30:01');
INSERT INTO `jrkj_crontab` VALUES ('190', '290782', '1443350401', '121.41.16.149', '2015-09-27 18:40:01');
INSERT INTO `jrkj_crontab` VALUES ('191', '682130', '1443351001', '121.41.16.149', '2015-09-27 18:50:01');
INSERT INTO `jrkj_crontab` VALUES ('192', '147545', '1443351601', '121.41.16.149', '2015-09-27 19:00:01');
INSERT INTO `jrkj_crontab` VALUES ('193', '246788', '1443352201', '121.41.16.149', '2015-09-27 19:10:01');
INSERT INTO `jrkj_crontab` VALUES ('194', '763509', '1443352801', '121.41.16.149', '2015-09-27 19:20:01');
INSERT INTO `jrkj_crontab` VALUES ('195', '789652', '1443353401', '121.41.16.149', '2015-09-27 19:30:01');
INSERT INTO `jrkj_crontab` VALUES ('196', '402475', '1443354001', '121.41.16.149', '2015-09-27 19:40:01');
INSERT INTO `jrkj_crontab` VALUES ('197', '119821', '1443354601', '121.41.16.149', '2015-09-27 19:50:01');
INSERT INTO `jrkj_crontab` VALUES ('198', '932517', '1443355201', '121.41.16.149', '2015-09-27 20:00:01');
INSERT INTO `jrkj_crontab` VALUES ('199', '226065', '1443355801', '121.41.16.149', '2015-09-27 20:10:01');
INSERT INTO `jrkj_crontab` VALUES ('200', '203418', '1443356401', '121.41.16.149', '2015-09-27 20:20:01');
INSERT INTO `jrkj_crontab` VALUES ('201', '478816', '1443357001', '121.41.16.149', '2015-09-27 20:30:01');
INSERT INTO `jrkj_crontab` VALUES ('202', '785764', '1443357601', '121.41.16.149', '2015-09-27 20:40:01');
INSERT INTO `jrkj_crontab` VALUES ('203', '94117', '1443358202', '121.41.16.149', '2015-09-27 20:50:02');
INSERT INTO `jrkj_crontab` VALUES ('204', '917553', '1443358801', '121.41.16.149', '2015-09-27 21:00:01');
INSERT INTO `jrkj_crontab` VALUES ('205', '702101', '1443359401', '121.41.16.149', '2015-09-27 21:10:01');
INSERT INTO `jrkj_crontab` VALUES ('206', '757069', '1443360001', '121.41.16.149', '2015-09-27 21:20:01');
INSERT INTO `jrkj_crontab` VALUES ('207', '648466', '1443360601', '121.41.16.149', '2015-09-27 21:30:01');
INSERT INTO `jrkj_crontab` VALUES ('208', '966546', '1443361201', '121.41.16.149', '2015-09-27 21:40:01');
INSERT INTO `jrkj_crontab` VALUES ('209', '318946', '1443361801', '121.41.16.149', '2015-09-27 21:50:01');
INSERT INTO `jrkj_crontab` VALUES ('210', '723986', '1443362401', '121.41.16.149', '2015-09-27 22:00:01');
INSERT INTO `jrkj_crontab` VALUES ('211', '951381', '1443363001', '121.41.16.149', '2015-09-27 22:10:01');
INSERT INTO `jrkj_crontab` VALUES ('212', '711403', '1443363601', '121.41.16.149', '2015-09-27 22:20:01');
INSERT INTO `jrkj_crontab` VALUES ('213', '766116', '1443364201', '121.41.16.149', '2015-09-27 22:30:01');
INSERT INTO `jrkj_crontab` VALUES ('214', '214225', '1443364801', '121.41.16.149', '2015-09-27 22:40:01');
INSERT INTO `jrkj_crontab` VALUES ('215', '681658', '1443365401', '121.41.16.149', '2015-09-27 22:50:01');
INSERT INTO `jrkj_crontab` VALUES ('216', '810797', '1443366001', '121.41.16.149', '2015-09-27 23:00:01');
INSERT INTO `jrkj_crontab` VALUES ('217', '86698', '1443366601', '121.41.16.149', '2015-09-27 23:10:01');
INSERT INTO `jrkj_crontab` VALUES ('218', '947996', '1443367201', '121.41.16.149', '2015-09-27 23:20:01');
INSERT INTO `jrkj_crontab` VALUES ('219', '975152', '1443367801', '121.41.16.149', '2015-09-27 23:30:01');
INSERT INTO `jrkj_crontab` VALUES ('220', '185841', '1443368402', '121.41.16.149', '2015-09-27 23:40:02');
INSERT INTO `jrkj_crontab` VALUES ('221', '203333', '1443369001', '121.41.16.149', '2015-09-27 23:50:01');
INSERT INTO `jrkj_crontab` VALUES ('222', '610937', '1443369601', '121.41.16.149', '2015-09-28 00:00:01');
INSERT INTO `jrkj_crontab` VALUES ('223', '278510', '1443370201', '121.41.16.149', '2015-09-28 00:10:01');
INSERT INTO `jrkj_crontab` VALUES ('224', '832118', '1443370801', '121.41.16.149', '2015-09-28 00:20:01');
INSERT INTO `jrkj_crontab` VALUES ('225', '502307', '1443371401', '121.41.16.149', '2015-09-28 00:30:01');
INSERT INTO `jrkj_crontab` VALUES ('226', '325720', '1443372001', '121.41.16.149', '2015-09-28 00:40:01');
INSERT INTO `jrkj_crontab` VALUES ('227', '466264', '1443372601', '121.41.16.149', '2015-09-28 00:50:01');
INSERT INTO `jrkj_crontab` VALUES ('228', '241017', '1443373201', '121.41.16.149', '2015-09-28 01:00:01');
INSERT INTO `jrkj_crontab` VALUES ('229', '912907', '1443373801', '121.41.16.149', '2015-09-28 01:10:01');
INSERT INTO `jrkj_crontab` VALUES ('230', '341302', '1443374401', '121.41.16.149', '2015-09-28 01:20:01');
INSERT INTO `jrkj_crontab` VALUES ('231', '828258', '1443375001', '121.41.16.149', '2015-09-28 01:30:01');
INSERT INTO `jrkj_crontab` VALUES ('232', '948491', '1443375601', '121.41.16.149', '2015-09-28 01:40:01');
INSERT INTO `jrkj_crontab` VALUES ('233', '440214', '1443376201', '121.41.16.149', '2015-09-28 01:50:01');
INSERT INTO `jrkj_crontab` VALUES ('234', '579622', '1443376801', '121.41.16.149', '2015-09-28 02:00:01');
INSERT INTO `jrkj_crontab` VALUES ('235', '190281', '1443377401', '121.41.16.149', '2015-09-28 02:10:01');
INSERT INTO `jrkj_crontab` VALUES ('236', '452397', '1443378001', '121.41.16.149', '2015-09-28 02:20:01');
INSERT INTO `jrkj_crontab` VALUES ('237', '354856', '1443378601', '121.41.16.149', '2015-09-28 02:30:01');
INSERT INTO `jrkj_crontab` VALUES ('238', '400462', '1443379201', '121.41.16.149', '2015-09-28 02:40:01');
INSERT INTO `jrkj_crontab` VALUES ('239', '172754', '1443379801', '121.41.16.149', '2015-09-28 02:50:01');
INSERT INTO `jrkj_crontab` VALUES ('240', '245489', '1443380401', '121.41.16.149', '2015-09-28 03:00:01');
INSERT INTO `jrkj_crontab` VALUES ('241', '86479', '1443381001', '121.41.16.149', '2015-09-28 03:10:01');
INSERT INTO `jrkj_crontab` VALUES ('242', '598214', '1443381601', '121.41.16.149', '2015-09-28 03:20:01');
INSERT INTO `jrkj_crontab` VALUES ('243', '707046', '1443382201', '121.41.16.149', '2015-09-28 03:30:01');
INSERT INTO `jrkj_crontab` VALUES ('244', '362535', '1443382801', '121.41.16.149', '2015-09-28 03:40:01');
INSERT INTO `jrkj_crontab` VALUES ('245', '284558', '1443383401', '121.41.16.149', '2015-09-28 03:50:01');
INSERT INTO `jrkj_crontab` VALUES ('246', '504909', '1443384001', '121.41.16.149', '2015-09-28 04:00:01');
INSERT INTO `jrkj_crontab` VALUES ('247', '515809', '1443384601', '121.41.16.149', '2015-09-28 04:10:01');
INSERT INTO `jrkj_crontab` VALUES ('248', '602849', '1443385201', '121.41.16.149', '2015-09-28 04:20:01');
INSERT INTO `jrkj_crontab` VALUES ('249', '144569', '1443385801', '121.41.16.149', '2015-09-28 04:30:01');
INSERT INTO `jrkj_crontab` VALUES ('250', '374392', '1443386401', '121.41.16.149', '2015-09-28 04:40:01');
INSERT INTO `jrkj_crontab` VALUES ('251', '422703', '1443387001', '121.41.16.149', '2015-09-28 04:50:01');
INSERT INTO `jrkj_crontab` VALUES ('252', '272512', '1443387601', '121.41.16.149', '2015-09-28 05:00:01');
INSERT INTO `jrkj_crontab` VALUES ('253', '197419', '1443388201', '121.41.16.149', '2015-09-28 05:10:01');
INSERT INTO `jrkj_crontab` VALUES ('254', '233945', '1443388801', '121.41.16.149', '2015-09-28 05:20:01');
INSERT INTO `jrkj_crontab` VALUES ('255', '888795', '1443389401', '121.41.16.149', '2015-09-28 05:30:01');
INSERT INTO `jrkj_crontab` VALUES ('256', '185225', '1443390001', '121.41.16.149', '2015-09-28 05:40:01');
INSERT INTO `jrkj_crontab` VALUES ('257', '269889', '1443390601', '121.41.16.149', '2015-09-28 05:50:01');
INSERT INTO `jrkj_crontab` VALUES ('258', '607942', '1443391201', '121.41.16.149', '2015-09-28 06:00:01');
INSERT INTO `jrkj_crontab` VALUES ('259', '23406', '1443391801', '121.41.16.149', '2015-09-28 06:10:01');
INSERT INTO `jrkj_crontab` VALUES ('260', '93349', '1443392401', '121.41.16.149', '2015-09-28 06:20:01');
INSERT INTO `jrkj_crontab` VALUES ('261', '590046', '1443393001', '121.41.16.149', '2015-09-28 06:30:01');
INSERT INTO `jrkj_crontab` VALUES ('262', '747238', '1443393601', '121.41.16.149', '2015-09-28 06:40:01');
INSERT INTO `jrkj_crontab` VALUES ('263', '597493', '1443394201', '121.41.16.149', '2015-09-28 06:50:01');
INSERT INTO `jrkj_crontab` VALUES ('264', '424056', '1443394801', '121.41.16.149', '2015-09-28 07:00:01');
INSERT INTO `jrkj_crontab` VALUES ('265', '839806', '1443395401', '121.41.16.149', '2015-09-28 07:10:01');
INSERT INTO `jrkj_crontab` VALUES ('266', '491617', '1443396001', '121.41.16.149', '2015-09-28 07:20:01');
INSERT INTO `jrkj_crontab` VALUES ('267', '672150', '1443396601', '121.41.16.149', '2015-09-28 07:30:01');
INSERT INTO `jrkj_crontab` VALUES ('268', '495065', '1443397201', '121.41.16.149', '2015-09-28 07:40:01');
INSERT INTO `jrkj_crontab` VALUES ('269', '566142', '1443397801', '121.41.16.149', '2015-09-28 07:50:01');
INSERT INTO `jrkj_crontab` VALUES ('270', '999379', '1443398401', '121.41.16.149', '2015-09-28 08:00:01');
INSERT INTO `jrkj_crontab` VALUES ('271', '239775', '1443399002', '121.41.16.149', '2015-09-28 08:10:02');
INSERT INTO `jrkj_crontab` VALUES ('272', '753727', '1443399601', '121.41.16.149', '2015-09-28 08:20:01');
INSERT INTO `jrkj_crontab` VALUES ('273', '445994', '1443400201', '121.41.16.149', '2015-09-28 08:30:01');
INSERT INTO `jrkj_crontab` VALUES ('274', '952623', '1443400801', '121.41.16.149', '2015-09-28 08:40:01');
INSERT INTO `jrkj_crontab` VALUES ('275', '780449', '1443401401', '121.41.16.149', '2015-09-28 08:50:01');
INSERT INTO `jrkj_crontab` VALUES ('276', '311664', '1443402001', '121.41.16.149', '2015-09-28 09:00:01');
INSERT INTO `jrkj_crontab` VALUES ('277', '797405', '1443402601', '121.41.16.149', '2015-09-28 09:10:01');
INSERT INTO `jrkj_crontab` VALUES ('278', '868118', '1443403201', '121.41.16.149', '2015-09-28 09:20:01');
INSERT INTO `jrkj_crontab` VALUES ('279', '200162', '1443403801', '121.41.16.149', '2015-09-28 09:30:01');
INSERT INTO `jrkj_crontab` VALUES ('280', '378247', '1443404401', '121.41.16.149', '2015-09-28 09:40:01');
INSERT INTO `jrkj_crontab` VALUES ('281', '234056', '1443405001', '121.41.16.149', '2015-09-28 09:50:01');
INSERT INTO `jrkj_crontab` VALUES ('282', '566728', '1443405601', '121.41.16.149', '2015-09-28 10:00:01');
INSERT INTO `jrkj_crontab` VALUES ('283', '65235', '1443406201', '121.41.16.149', '2015-09-28 10:10:01');
INSERT INTO `jrkj_crontab` VALUES ('284', '267785', '1443406801', '121.41.16.149', '2015-09-28 10:20:01');
INSERT INTO `jrkj_crontab` VALUES ('285', '608220', '1443407401', '121.41.16.149', '2015-09-28 10:30:01');
INSERT INTO `jrkj_crontab` VALUES ('286', '121701', '1443408001', '121.41.16.149', '2015-09-28 10:40:01');
INSERT INTO `jrkj_crontab` VALUES ('287', '978528', '1443408601', '121.41.16.149', '2015-09-28 10:50:01');
INSERT INTO `jrkj_crontab` VALUES ('288', '482292', '1443409201', '121.41.16.149', '2015-09-28 11:00:01');
INSERT INTO `jrkj_crontab` VALUES ('289', '888780', '1443409801', '121.41.16.149', '2015-09-28 11:10:01');
INSERT INTO `jrkj_crontab` VALUES ('290', '481777', '1443410401', '121.41.16.149', '2015-09-28 11:20:01');
INSERT INTO `jrkj_crontab` VALUES ('291', '599182', '1443411001', '121.41.16.149', '2015-09-28 11:30:01');
INSERT INTO `jrkj_crontab` VALUES ('292', '199979', '1443411601', '121.41.16.149', '2015-09-28 11:40:01');
INSERT INTO `jrkj_crontab` VALUES ('293', '236214', '1443412201', '121.41.16.149', '2015-09-28 11:50:01');
INSERT INTO `jrkj_crontab` VALUES ('294', '370145', '1443412801', '121.41.16.149', '2015-09-28 12:00:01');
INSERT INTO `jrkj_crontab` VALUES ('295', '58717', '1443413401', '121.41.16.149', '2015-09-28 12:10:01');
INSERT INTO `jrkj_crontab` VALUES ('296', '910072', '1443414001', '121.41.16.149', '2015-09-28 12:20:01');
INSERT INTO `jrkj_crontab` VALUES ('297', '34600', '1443414601', '121.41.16.149', '2015-09-28 12:30:01');
INSERT INTO `jrkj_crontab` VALUES ('298', '467210', '1443415201', '121.41.16.149', '2015-09-28 12:40:01');
INSERT INTO `jrkj_crontab` VALUES ('299', '16192', '1443415801', '121.41.16.149', '2015-09-28 12:50:01');
INSERT INTO `jrkj_crontab` VALUES ('300', '589780', '1443416401', '121.41.16.149', '2015-09-28 13:00:01');
INSERT INTO `jrkj_crontab` VALUES ('301', '483454', '1443417001', '121.41.16.149', '2015-09-28 13:10:01');
INSERT INTO `jrkj_crontab` VALUES ('302', '646994', '1443417601', '121.41.16.149', '2015-09-28 13:20:01');
INSERT INTO `jrkj_crontab` VALUES ('303', '55945', '1443418201', '121.41.16.149', '2015-09-28 13:30:01');
INSERT INTO `jrkj_crontab` VALUES ('304', '124804', '1443418801', '121.41.16.149', '2015-09-28 13:40:01');
INSERT INTO `jrkj_crontab` VALUES ('305', '235909', '1443419402', '121.41.16.149', '2015-09-28 13:50:02');
INSERT INTO `jrkj_crontab` VALUES ('306', '116218', '1443420001', '121.41.16.149', '2015-09-28 14:00:01');
INSERT INTO `jrkj_crontab` VALUES ('307', '310305', '1443420601', '121.41.16.149', '2015-09-28 14:10:01');
INSERT INTO `jrkj_crontab` VALUES ('308', '954723', '1443421201', '121.41.16.149', '2015-09-28 14:20:01');
INSERT INTO `jrkj_crontab` VALUES ('309', '277054', '1443421801', '121.41.16.149', '2015-09-28 14:30:01');
INSERT INTO `jrkj_crontab` VALUES ('310', '667794', '1443422401', '121.41.16.149', '2015-09-28 14:40:01');
INSERT INTO `jrkj_crontab` VALUES ('311', '918197', '1443423001', '121.41.16.149', '2015-09-28 14:50:01');
INSERT INTO `jrkj_crontab` VALUES ('312', '610926', '1443423601', '121.41.16.149', '2015-09-28 15:00:01');
INSERT INTO `jrkj_crontab` VALUES ('313', '91301', '1443424201', '121.41.16.149', '2015-09-28 15:10:01');
INSERT INTO `jrkj_crontab` VALUES ('314', '309933', '1443424801', '121.41.16.149', '2015-09-28 15:20:01');
INSERT INTO `jrkj_crontab` VALUES ('315', '670839', '1443425401', '121.41.16.149', '2015-09-28 15:30:01');
INSERT INTO `jrkj_crontab` VALUES ('316', '206834', '1443426001', '121.41.16.149', '2015-09-28 15:40:01');
INSERT INTO `jrkj_crontab` VALUES ('317', '331034', '1443426601', '121.41.16.149', '2015-09-28 15:50:01');
INSERT INTO `jrkj_crontab` VALUES ('318', '144085', '1443427201', '121.41.16.149', '2015-09-28 16:00:01');
INSERT INTO `jrkj_crontab` VALUES ('319', '102596', '1443427801', '121.41.16.149', '2015-09-28 16:10:01');
INSERT INTO `jrkj_crontab` VALUES ('320', '797425', '1443428401', '121.41.16.149', '2015-09-28 16:20:01');
INSERT INTO `jrkj_crontab` VALUES ('321', '46810', '1443429001', '121.41.16.149', '2015-09-28 16:30:01');
INSERT INTO `jrkj_crontab` VALUES ('322', '766018', '1443429601', '121.41.16.149', '2015-09-28 16:40:01');
INSERT INTO `jrkj_crontab` VALUES ('323', '835122', '1443430202', '121.41.16.149', '2015-09-28 16:50:02');
INSERT INTO `jrkj_crontab` VALUES ('324', '83393', '1443430801', '121.41.16.149', '2015-09-28 17:00:01');
INSERT INTO `jrkj_crontab` VALUES ('325', '151188', '1443431401', '121.41.16.149', '2015-09-28 17:10:01');
INSERT INTO `jrkj_crontab` VALUES ('326', '291434', '1443432001', '121.41.16.149', '2015-09-28 17:20:01');
INSERT INTO `jrkj_crontab` VALUES ('327', '575879', '1443432601', '121.41.16.149', '2015-09-28 17:30:01');
INSERT INTO `jrkj_crontab` VALUES ('328', '186494', '1443433201', '121.41.16.149', '2015-09-28 17:40:01');
INSERT INTO `jrkj_crontab` VALUES ('329', '737152', '1443433801', '121.41.16.149', '2015-09-28 17:50:01');
INSERT INTO `jrkj_crontab` VALUES ('330', '79372', '1443434401', '121.41.16.149', '2015-09-28 18:00:01');
INSERT INTO `jrkj_crontab` VALUES ('331', '300559', '1443435001', '121.41.16.149', '2015-09-28 18:10:01');
INSERT INTO `jrkj_crontab` VALUES ('332', '460536', '1443435601', '121.41.16.149', '2015-09-28 18:20:01');
INSERT INTO `jrkj_crontab` VALUES ('333', '220291', '1443436201', '121.41.16.149', '2015-09-28 18:30:01');
INSERT INTO `jrkj_crontab` VALUES ('334', '281286', '1443436801', '121.41.16.149', '2015-09-28 18:40:01');
INSERT INTO `jrkj_crontab` VALUES ('335', '60774', '1443437401', '121.41.16.149', '2015-09-28 18:50:01');
INSERT INTO `jrkj_crontab` VALUES ('336', '35461', '1443438001', '121.41.16.149', '2015-09-28 19:00:01');
INSERT INTO `jrkj_crontab` VALUES ('337', '808298', '1443438601', '121.41.16.149', '2015-09-28 19:10:01');
INSERT INTO `jrkj_crontab` VALUES ('338', '863459', '1443439201', '121.41.16.149', '2015-09-28 19:20:01');
INSERT INTO `jrkj_crontab` VALUES ('339', '252105', '1443439801', '121.41.16.149', '2015-09-28 19:30:01');
INSERT INTO `jrkj_crontab` VALUES ('340', '242005', '1443440401', '121.41.16.149', '2015-09-28 19:40:01');
INSERT INTO `jrkj_crontab` VALUES ('341', '144390', '1443441001', '121.41.16.149', '2015-09-28 19:50:01');
INSERT INTO `jrkj_crontab` VALUES ('342', '420294', '1443441601', '121.41.16.149', '2015-09-28 20:00:01');
INSERT INTO `jrkj_crontab` VALUES ('343', '274802', '1443442201', '121.41.16.149', '2015-09-28 20:10:01');
INSERT INTO `jrkj_crontab` VALUES ('344', '519925', '1443442801', '121.41.16.149', '2015-09-28 20:20:01');
INSERT INTO `jrkj_crontab` VALUES ('345', '354628', '1443443401', '121.41.16.149', '2015-09-28 20:30:01');
INSERT INTO `jrkj_crontab` VALUES ('346', '664423', '1443444001', '121.41.16.149', '2015-09-28 20:40:01');
INSERT INTO `jrkj_crontab` VALUES ('347', '798198', '1443444601', '121.41.16.149', '2015-09-28 20:50:01');
INSERT INTO `jrkj_crontab` VALUES ('348', '307222', '1443445201', '121.41.16.149', '2015-09-28 21:00:01');
INSERT INTO `jrkj_crontab` VALUES ('349', '940526', '1443445801', '121.41.16.149', '2015-09-28 21:10:01');
INSERT INTO `jrkj_crontab` VALUES ('350', '241829', '1443446401', '121.41.16.149', '2015-09-28 21:20:01');
INSERT INTO `jrkj_crontab` VALUES ('351', '773841', '1443447001', '121.41.16.149', '2015-09-28 21:30:01');
INSERT INTO `jrkj_crontab` VALUES ('352', '730306', '1443447601', '121.41.16.149', '2015-09-28 21:40:01');
INSERT INTO `jrkj_crontab` VALUES ('353', '505885', '1443448201', '121.41.16.149', '2015-09-28 21:50:01');
INSERT INTO `jrkj_crontab` VALUES ('354', '609862', '1443448801', '121.41.16.149', '2015-09-28 22:00:01');
INSERT INTO `jrkj_crontab` VALUES ('355', '405145', '1443449401', '121.41.16.149', '2015-09-28 22:10:01');
INSERT INTO `jrkj_crontab` VALUES ('356', '131106', '1443450001', '121.41.16.149', '2015-09-28 22:20:01');
INSERT INTO `jrkj_crontab` VALUES ('357', '911838', '1443450601', '121.41.16.149', '2015-09-28 22:30:01');
INSERT INTO `jrkj_crontab` VALUES ('358', '820214', '1443451201', '121.41.16.149', '2015-09-28 22:40:01');
INSERT INTO `jrkj_crontab` VALUES ('359', '548221', '1443451801', '121.41.16.149', '2015-09-28 22:50:01');
INSERT INTO `jrkj_crontab` VALUES ('360', '578524', '1443452401', '121.41.16.149', '2015-09-28 23:00:01');
INSERT INTO `jrkj_crontab` VALUES ('361', '59127', '1443453001', '121.41.16.149', '2015-09-28 23:10:01');
INSERT INTO `jrkj_crontab` VALUES ('362', '341977', '1443453601', '121.41.16.149', '2015-09-28 23:20:01');
INSERT INTO `jrkj_crontab` VALUES ('363', '961438', '1443454201', '121.41.16.149', '2015-09-28 23:30:01');
INSERT INTO `jrkj_crontab` VALUES ('364', '173149', '1443454801', '121.41.16.149', '2015-09-28 23:40:01');
INSERT INTO `jrkj_crontab` VALUES ('365', '668376', '1443455401', '121.41.16.149', '2015-09-28 23:50:01');
INSERT INTO `jrkj_crontab` VALUES ('366', '247663', '1443456001', '121.41.16.149', '2015-09-29 00:00:01');
INSERT INTO `jrkj_crontab` VALUES ('367', '421759', '1443456601', '121.41.16.149', '2015-09-29 00:10:01');
INSERT INTO `jrkj_crontab` VALUES ('368', '858707', '1443457201', '121.41.16.149', '2015-09-29 00:20:01');
INSERT INTO `jrkj_crontab` VALUES ('369', '53106', '1443457801', '121.41.16.149', '2015-09-29 00:30:01');
INSERT INTO `jrkj_crontab` VALUES ('370', '77470', '1443458401', '121.41.16.149', '2015-09-29 00:40:01');
INSERT INTO `jrkj_crontab` VALUES ('371', '885375', '1443459001', '121.41.16.149', '2015-09-29 00:50:01');
INSERT INTO `jrkj_crontab` VALUES ('372', '379485', '1443459601', '121.41.16.149', '2015-09-29 01:00:01');
INSERT INTO `jrkj_crontab` VALUES ('373', '350846', '1443460201', '121.41.16.149', '2015-09-29 01:10:01');
INSERT INTO `jrkj_crontab` VALUES ('374', '650396', '1443460802', '121.41.16.149', '2015-09-29 01:20:02');
INSERT INTO `jrkj_crontab` VALUES ('375', '362304', '1443461401', '121.41.16.149', '2015-09-29 01:30:01');
INSERT INTO `jrkj_crontab` VALUES ('376', '275672', '1443462001', '121.41.16.149', '2015-09-29 01:40:01');
INSERT INTO `jrkj_crontab` VALUES ('377', '45302', '1443462601', '121.41.16.149', '2015-09-29 01:50:01');
INSERT INTO `jrkj_crontab` VALUES ('378', '958492', '1443463201', '121.41.16.149', '2015-09-29 02:00:01');
INSERT INTO `jrkj_crontab` VALUES ('379', '186435', '1443463801', '121.41.16.149', '2015-09-29 02:10:01');
INSERT INTO `jrkj_crontab` VALUES ('380', '818447', '1443464401', '121.41.16.149', '2015-09-29 02:20:01');
INSERT INTO `jrkj_crontab` VALUES ('381', '462327', '1443465001', '121.41.16.149', '2015-09-29 02:30:01');
INSERT INTO `jrkj_crontab` VALUES ('382', '147960', '1443465601', '121.41.16.149', '2015-09-29 02:40:01');
INSERT INTO `jrkj_crontab` VALUES ('383', '98436', '1443466201', '121.41.16.149', '2015-09-29 02:50:01');
INSERT INTO `jrkj_crontab` VALUES ('384', '883756', '1443466801', '121.41.16.149', '2015-09-29 03:00:01');
INSERT INTO `jrkj_crontab` VALUES ('385', '211697', '1443467401', '121.41.16.149', '2015-09-29 03:10:01');
INSERT INTO `jrkj_crontab` VALUES ('386', '332620', '1443468001', '121.41.16.149', '2015-09-29 03:20:01');
INSERT INTO `jrkj_crontab` VALUES ('387', '960710', '1443468601', '121.41.16.149', '2015-09-29 03:30:01');
INSERT INTO `jrkj_crontab` VALUES ('388', '447808', '1443469201', '121.41.16.149', '2015-09-29 03:40:01');
INSERT INTO `jrkj_crontab` VALUES ('389', '154729', '1443469801', '121.41.16.149', '2015-09-29 03:50:01');
INSERT INTO `jrkj_crontab` VALUES ('390', '391859', '1443470401', '121.41.16.149', '2015-09-29 04:00:01');
INSERT INTO `jrkj_crontab` VALUES ('391', '182144', '1443471002', '121.41.16.149', '2015-09-29 04:10:02');
INSERT INTO `jrkj_crontab` VALUES ('392', '200558', '1443471601', '121.41.16.149', '2015-09-29 04:20:01');
INSERT INTO `jrkj_crontab` VALUES ('393', '788138', '1443472201', '121.41.16.149', '2015-09-29 04:30:01');
INSERT INTO `jrkj_crontab` VALUES ('394', '185997', '1443472801', '121.41.16.149', '2015-09-29 04:40:01');
INSERT INTO `jrkj_crontab` VALUES ('395', '101181', '1443473401', '121.41.16.149', '2015-09-29 04:50:01');
INSERT INTO `jrkj_crontab` VALUES ('396', '522677', '1443474001', '121.41.16.149', '2015-09-29 05:00:01');
INSERT INTO `jrkj_crontab` VALUES ('397', '489135', '1443474601', '121.41.16.149', '2015-09-29 05:10:01');
INSERT INTO `jrkj_crontab` VALUES ('398', '455536', '1443475201', '121.41.16.149', '2015-09-29 05:20:01');
INSERT INTO `jrkj_crontab` VALUES ('399', '904062', '1443475801', '121.41.16.149', '2015-09-29 05:30:01');
INSERT INTO `jrkj_crontab` VALUES ('400', '116286', '1443476401', '121.41.16.149', '2015-09-29 05:40:01');
INSERT INTO `jrkj_crontab` VALUES ('401', '243665', '1443477001', '121.41.16.149', '2015-09-29 05:50:01');
INSERT INTO `jrkj_crontab` VALUES ('402', '312258', '1443477601', '121.41.16.149', '2015-09-29 06:00:01');
INSERT INTO `jrkj_crontab` VALUES ('403', '255256', '1443478201', '121.41.16.149', '2015-09-29 06:10:01');
INSERT INTO `jrkj_crontab` VALUES ('404', '71372', '1443478801', '121.41.16.149', '2015-09-29 06:20:01');
INSERT INTO `jrkj_crontab` VALUES ('405', '287479', '1443479401', '121.41.16.149', '2015-09-29 06:30:01');
INSERT INTO `jrkj_crontab` VALUES ('406', '343891', '1443480001', '121.41.16.149', '2015-09-29 06:40:01');
INSERT INTO `jrkj_crontab` VALUES ('407', '139531', '1443480601', '121.41.16.149', '2015-09-29 06:50:01');
INSERT INTO `jrkj_crontab` VALUES ('408', '372240', '1443481201', '121.41.16.149', '2015-09-29 07:00:01');
INSERT INTO `jrkj_crontab` VALUES ('409', '805341', '1443481801', '121.41.16.149', '2015-09-29 07:10:01');
INSERT INTO `jrkj_crontab` VALUES ('410', '818530', '1443482401', '121.41.16.149', '2015-09-29 07:20:01');
INSERT INTO `jrkj_crontab` VALUES ('411', '824972', '1443483001', '121.41.16.149', '2015-09-29 07:30:01');
INSERT INTO `jrkj_crontab` VALUES ('412', '14125', '1443483601', '121.41.16.149', '2015-09-29 07:40:01');
INSERT INTO `jrkj_crontab` VALUES ('413', '698155', '1443484201', '121.41.16.149', '2015-09-29 07:50:01');
INSERT INTO `jrkj_crontab` VALUES ('414', '624039', '1443484801', '121.41.16.149', '2015-09-29 08:00:01');
INSERT INTO `jrkj_crontab` VALUES ('415', '196968', '1443485401', '121.41.16.149', '2015-09-29 08:10:01');
INSERT INTO `jrkj_crontab` VALUES ('416', '229476', '1443486001', '121.41.16.149', '2015-09-29 08:20:01');
INSERT INTO `jrkj_crontab` VALUES ('417', '721558', '1443486601', '121.41.16.149', '2015-09-29 08:30:01');
INSERT INTO `jrkj_crontab` VALUES ('418', '524147', '1443487201', '121.41.16.149', '2015-09-29 08:40:01');
INSERT INTO `jrkj_crontab` VALUES ('419', '429748', '1443487801', '121.41.16.149', '2015-09-29 08:50:01');
INSERT INTO `jrkj_crontab` VALUES ('420', '768348', '1443488401', '121.41.16.149', '2015-09-29 09:00:01');
INSERT INTO `jrkj_crontab` VALUES ('421', '25976', '1443489001', '121.41.16.149', '2015-09-29 09:10:01');
INSERT INTO `jrkj_crontab` VALUES ('422', '225283', '1443489601', '121.41.16.149', '2015-09-29 09:20:01');
INSERT INTO `jrkj_crontab` VALUES ('423', '945758', '1443490201', '121.41.16.149', '2015-09-29 09:30:01');
INSERT INTO `jrkj_crontab` VALUES ('424', '666050', '1443490801', '121.41.16.149', '2015-09-29 09:40:01');
INSERT INTO `jrkj_crontab` VALUES ('425', '44499', '1443491401', '121.41.16.149', '2015-09-29 09:50:01');
INSERT INTO `jrkj_crontab` VALUES ('426', '657027', '1443492001', '121.41.16.149', '2015-09-29 10:00:01');
INSERT INTO `jrkj_crontab` VALUES ('427', '37106', '1443492601', '121.41.16.149', '2015-09-29 10:10:01');
INSERT INTO `jrkj_crontab` VALUES ('428', '752019', '1443493201', '121.41.16.149', '2015-09-29 10:20:01');
INSERT INTO `jrkj_crontab` VALUES ('429', '610671', '1443493801', '121.41.16.149', '2015-09-29 10:30:01');
INSERT INTO `jrkj_crontab` VALUES ('430', '825871', '1443494401', '121.41.16.149', '2015-09-29 10:40:01');
INSERT INTO `jrkj_crontab` VALUES ('431', '236813', '1443495001', '121.41.16.149', '2015-09-29 10:50:01');
INSERT INTO `jrkj_crontab` VALUES ('432', '17281', '1443495601', '121.41.16.149', '2015-09-29 11:00:01');
INSERT INTO `jrkj_crontab` VALUES ('433', '903042', '1443496201', '121.41.16.149', '2015-09-29 11:10:01');
INSERT INTO `jrkj_crontab` VALUES ('434', '67962', '1443496801', '121.41.16.149', '2015-09-29 11:20:01');
INSERT INTO `jrkj_crontab` VALUES ('435', '767938', '1443497401', '121.41.16.149', '2015-09-29 11:30:01');
INSERT INTO `jrkj_crontab` VALUES ('436', '227823', '1443498001', '121.41.16.149', '2015-09-29 11:40:01');
INSERT INTO `jrkj_crontab` VALUES ('437', '136157', '1443498601', '121.41.16.149', '2015-09-29 11:50:01');
INSERT INTO `jrkj_crontab` VALUES ('438', '759068', '1443499201', '121.41.16.149', '2015-09-29 12:00:01');
INSERT INTO `jrkj_crontab` VALUES ('439', '749402', '1443499801', '121.41.16.149', '2015-09-29 12:10:01');
INSERT INTO `jrkj_crontab` VALUES ('440', '375757', '1443500401', '121.41.16.149', '2015-09-29 12:20:01');
INSERT INTO `jrkj_crontab` VALUES ('441', '807957', '1443501001', '121.41.16.149', '2015-09-29 12:30:01');
INSERT INTO `jrkj_crontab` VALUES ('442', '729241', '1443501601', '121.41.16.149', '2015-09-29 12:40:01');
INSERT INTO `jrkj_crontab` VALUES ('443', '412478', '1443502201', '121.41.16.149', '2015-09-29 12:50:01');
INSERT INTO `jrkj_crontab` VALUES ('444', '578396', '1443502801', '121.41.16.149', '2015-09-29 13:00:01');
INSERT INTO `jrkj_crontab` VALUES ('445', '27327', '1443503401', '121.41.16.149', '2015-09-29 13:10:01');
INSERT INTO `jrkj_crontab` VALUES ('446', '327382', '1443504001', '121.41.16.149', '2015-09-29 13:20:01');
INSERT INTO `jrkj_crontab` VALUES ('447', '826605', '1443504602', '121.41.16.149', '2015-09-29 13:30:02');
INSERT INTO `jrkj_crontab` VALUES ('448', '340385', '1443505201', '121.41.16.149', '2015-09-29 13:40:01');
INSERT INTO `jrkj_crontab` VALUES ('449', '392857', '1443505801', '121.41.16.149', '2015-09-29 13:50:01');
INSERT INTO `jrkj_crontab` VALUES ('450', '517830', '1443506401', '121.41.16.149', '2015-09-29 14:00:01');
INSERT INTO `jrkj_crontab` VALUES ('451', '267689', '1443507001', '121.41.16.149', '2015-09-29 14:10:01');
INSERT INTO `jrkj_crontab` VALUES ('452', '962161', '1443507601', '121.41.16.149', '2015-09-29 14:20:01');
INSERT INTO `jrkj_crontab` VALUES ('453', '741634', '1443508201', '121.41.16.149', '2015-09-29 14:30:01');
INSERT INTO `jrkj_crontab` VALUES ('454', '749627', '1443508801', '121.41.16.149', '2015-09-29 14:40:01');
INSERT INTO `jrkj_crontab` VALUES ('455', '946086', '1443509401', '121.41.16.149', '2015-09-29 14:50:01');
INSERT INTO `jrkj_crontab` VALUES ('456', '737398', '1443510001', '121.41.16.149', '2015-09-29 15:00:01');
INSERT INTO `jrkj_crontab` VALUES ('457', '610776', '1443510601', '121.41.16.149', '2015-09-29 15:10:01');
INSERT INTO `jrkj_crontab` VALUES ('458', '631369', '1443511201', '121.41.16.149', '2015-09-29 15:20:01');
INSERT INTO `jrkj_crontab` VALUES ('459', '271394', '1443511801', '121.41.16.149', '2015-09-29 15:30:01');
INSERT INTO `jrkj_crontab` VALUES ('460', '576403', '1443512401', '121.41.16.149', '2015-09-29 15:40:01');
INSERT INTO `jrkj_crontab` VALUES ('461', '448690', '1443513001', '121.41.16.149', '2015-09-29 15:50:01');
INSERT INTO `jrkj_crontab` VALUES ('462', '374861', '1443513601', '121.41.16.149', '2015-09-29 16:00:01');
INSERT INTO `jrkj_crontab` VALUES ('463', '273822', '1443514201', '121.41.16.149', '2015-09-29 16:10:01');
INSERT INTO `jrkj_crontab` VALUES ('464', '86438', '1443514801', '121.41.16.149', '2015-09-29 16:20:01');
INSERT INTO `jrkj_crontab` VALUES ('465', '692189', '1443515401', '121.41.16.149', '2015-09-29 16:30:01');
INSERT INTO `jrkj_crontab` VALUES ('466', '835481', '1443516001', '121.41.16.149', '2015-09-29 16:40:01');
INSERT INTO `jrkj_crontab` VALUES ('467', '889901', '1443516601', '121.41.16.149', '2015-09-29 16:50:01');
INSERT INTO `jrkj_crontab` VALUES ('468', '466519', '1443517201', '121.41.16.149', '2015-09-29 17:00:01');
INSERT INTO `jrkj_crontab` VALUES ('469', '720131', '1443517801', '121.41.16.149', '2015-09-29 17:10:01');
INSERT INTO `jrkj_crontab` VALUES ('470', '523032', '1443518401', '121.41.16.149', '2015-09-29 17:20:01');
INSERT INTO `jrkj_crontab` VALUES ('471', '827834', '1443519001', '121.41.16.149', '2015-09-29 17:30:01');
INSERT INTO `jrkj_crontab` VALUES ('472', '572512', '1443519601', '121.41.16.149', '2015-09-29 17:40:01');
INSERT INTO `jrkj_crontab` VALUES ('473', '447251', '1443520201', '121.41.16.149', '2015-09-29 17:50:01');
INSERT INTO `jrkj_crontab` VALUES ('474', '819033', '1443520801', '121.41.16.149', '2015-09-29 18:00:01');
INSERT INTO `jrkj_crontab` VALUES ('475', '953665', '1443521401', '121.41.16.149', '2015-09-29 18:10:01');
INSERT INTO `jrkj_crontab` VALUES ('476', '893700', '1443522001', '121.41.16.149', '2015-09-29 18:20:01');
INSERT INTO `jrkj_crontab` VALUES ('477', '740537', '1443522601', '121.41.16.149', '2015-09-29 18:30:01');
INSERT INTO `jrkj_crontab` VALUES ('478', '897293', '1443523201', '121.41.16.149', '2015-09-29 18:40:01');
INSERT INTO `jrkj_crontab` VALUES ('479', '764395', '1443523801', '121.41.16.149', '2015-09-29 18:50:01');
INSERT INTO `jrkj_crontab` VALUES ('480', '589725', '1443524401', '121.41.16.149', '2015-09-29 19:00:01');
INSERT INTO `jrkj_crontab` VALUES ('481', '240113', '1443525001', '121.41.16.149', '2015-09-29 19:10:01');
INSERT INTO `jrkj_crontab` VALUES ('482', '14515', '1443525601', '121.41.16.149', '2015-09-29 19:20:01');
INSERT INTO `jrkj_crontab` VALUES ('483', '621993', '1443526201', '121.41.16.149', '2015-09-29 19:30:01');
INSERT INTO `jrkj_crontab` VALUES ('484', '720326', '1443526801', '121.41.16.149', '2015-09-29 19:40:01');
INSERT INTO `jrkj_crontab` VALUES ('485', '363302', '1443527401', '121.41.16.149', '2015-09-29 19:50:01');
INSERT INTO `jrkj_crontab` VALUES ('486', '858326', '1443528001', '121.41.16.149', '2015-09-29 20:00:01');
INSERT INTO `jrkj_crontab` VALUES ('487', '850890', '1443528601', '121.41.16.149', '2015-09-29 20:10:01');
INSERT INTO `jrkj_crontab` VALUES ('488', '954244', '1443529201', '121.41.16.149', '2015-09-29 20:20:01');
INSERT INTO `jrkj_crontab` VALUES ('489', '553846', '1443529801', '121.41.16.149', '2015-09-29 20:30:01');
INSERT INTO `jrkj_crontab` VALUES ('490', '885503', '1443530401', '121.41.16.149', '2015-09-29 20:40:01');
INSERT INTO `jrkj_crontab` VALUES ('491', '624457', '1443531001', '121.41.16.149', '2015-09-29 20:50:01');
INSERT INTO `jrkj_crontab` VALUES ('492', '908560', '1443531601', '121.41.16.149', '2015-09-29 21:00:01');
INSERT INTO `jrkj_crontab` VALUES ('493', '385355', '1443532201', '121.41.16.149', '2015-09-29 21:10:01');
INSERT INTO `jrkj_crontab` VALUES ('494', '37830', '1443532801', '121.41.16.149', '2015-09-29 21:20:01');
INSERT INTO `jrkj_crontab` VALUES ('495', '97165', '1443533401', '121.41.16.149', '2015-09-29 21:30:01');
INSERT INTO `jrkj_crontab` VALUES ('496', '450173', '1443534001', '121.41.16.149', '2015-09-29 21:40:01');
INSERT INTO `jrkj_crontab` VALUES ('497', '482963', '1443534601', '121.41.16.149', '2015-09-29 21:50:01');
INSERT INTO `jrkj_crontab` VALUES ('498', '740548', '1443535201', '121.41.16.149', '2015-09-29 22:00:01');
INSERT INTO `jrkj_crontab` VALUES ('499', '695738', '1443535801', '121.41.16.149', '2015-09-29 22:10:01');
INSERT INTO `jrkj_crontab` VALUES ('500', '128593', '1443536401', '121.41.16.149', '2015-09-29 22:20:01');
INSERT INTO `jrkj_crontab` VALUES ('501', '826590', '1443537001', '121.41.16.149', '2015-09-29 22:30:01');
INSERT INTO `jrkj_crontab` VALUES ('502', '971678', '1443537601', '121.41.16.149', '2015-09-29 22:40:01');
INSERT INTO `jrkj_crontab` VALUES ('503', '489187', '1443538201', '121.41.16.149', '2015-09-29 22:50:01');
INSERT INTO `jrkj_crontab` VALUES ('504', '177019', '1443538801', '121.41.16.149', '2015-09-29 23:00:01');
INSERT INTO `jrkj_crontab` VALUES ('505', '611125', '1443539401', '121.41.16.149', '2015-09-29 23:10:01');
INSERT INTO `jrkj_crontab` VALUES ('506', '246907', '1443540001', '121.41.16.149', '2015-09-29 23:20:01');
INSERT INTO `jrkj_crontab` VALUES ('507', '100949', '1443540601', '121.41.16.149', '2015-09-29 23:30:01');
INSERT INTO `jrkj_crontab` VALUES ('508', '310228', '1443541201', '121.41.16.149', '2015-09-29 23:40:01');
INSERT INTO `jrkj_crontab` VALUES ('509', '683916', '1443541801', '121.41.16.149', '2015-09-29 23:50:01');
INSERT INTO `jrkj_crontab` VALUES ('510', '295103', '1443542401', '121.41.16.149', '2015-09-30 00:00:01');
INSERT INTO `jrkj_crontab` VALUES ('511', '455485', '1443543001', '121.41.16.149', '2015-09-30 00:10:01');
INSERT INTO `jrkj_crontab` VALUES ('512', '133003', '1443543601', '121.41.16.149', '2015-09-30 00:20:01');
INSERT INTO `jrkj_crontab` VALUES ('513', '314734', '1443544201', '121.41.16.149', '2015-09-30 00:30:01');
INSERT INTO `jrkj_crontab` VALUES ('514', '935683', '1443544801', '121.41.16.149', '2015-09-30 00:40:01');
INSERT INTO `jrkj_crontab` VALUES ('515', '28670', '1443545402', '121.41.16.149', '2015-09-30 00:50:02');
INSERT INTO `jrkj_crontab` VALUES ('516', '459417', '1443546001', '121.41.16.149', '2015-09-30 01:00:01');
INSERT INTO `jrkj_crontab` VALUES ('517', '334743', '1443546601', '121.41.16.149', '2015-09-30 01:10:01');
INSERT INTO `jrkj_crontab` VALUES ('518', '957898', '1443547201', '121.41.16.149', '2015-09-30 01:20:01');
INSERT INTO `jrkj_crontab` VALUES ('519', '477718', '1443547801', '121.41.16.149', '2015-09-30 01:30:01');
INSERT INTO `jrkj_crontab` VALUES ('520', '216621', '1443548401', '121.41.16.149', '2015-09-30 01:40:01');
INSERT INTO `jrkj_crontab` VALUES ('521', '967374', '1443549001', '121.41.16.149', '2015-09-30 01:50:01');
INSERT INTO `jrkj_crontab` VALUES ('522', '302175', '1443549601', '121.41.16.149', '2015-09-30 02:00:01');
INSERT INTO `jrkj_crontab` VALUES ('523', '15281', '1443550201', '121.41.16.149', '2015-09-30 02:10:01');
INSERT INTO `jrkj_crontab` VALUES ('524', '972901', '1443550801', '121.41.16.149', '2015-09-30 02:20:01');
INSERT INTO `jrkj_crontab` VALUES ('525', '902544', '1443551401', '121.41.16.149', '2015-09-30 02:30:01');
INSERT INTO `jrkj_crontab` VALUES ('526', '874335', '1443552001', '121.41.16.149', '2015-09-30 02:40:01');
INSERT INTO `jrkj_crontab` VALUES ('527', '260391', '1443552601', '121.41.16.149', '2015-09-30 02:50:01');
INSERT INTO `jrkj_crontab` VALUES ('528', '113939', '1443553201', '121.41.16.149', '2015-09-30 03:00:01');
INSERT INTO `jrkj_crontab` VALUES ('529', '712028', '1443553801', '121.41.16.149', '2015-09-30 03:10:01');
INSERT INTO `jrkj_crontab` VALUES ('530', '449020', '1443554401', '121.41.16.149', '2015-09-30 03:20:01');
INSERT INTO `jrkj_crontab` VALUES ('531', '342738', '1443555001', '121.41.16.149', '2015-09-30 03:30:01');
INSERT INTO `jrkj_crontab` VALUES ('532', '656023', '1443555602', '121.41.16.149', '2015-09-30 03:40:02');
INSERT INTO `jrkj_crontab` VALUES ('533', '962529', '1443556201', '121.41.16.149', '2015-09-30 03:50:01');
INSERT INTO `jrkj_crontab` VALUES ('534', '809941', '1443556801', '121.41.16.149', '2015-09-30 04:00:01');
INSERT INTO `jrkj_crontab` VALUES ('535', '816619', '1443557401', '121.41.16.149', '2015-09-30 04:10:01');
INSERT INTO `jrkj_crontab` VALUES ('536', '194770', '1443558001', '121.41.16.149', '2015-09-30 04:20:01');
INSERT INTO `jrkj_crontab` VALUES ('537', '233520', '1443558601', '121.41.16.149', '2015-09-30 04:30:01');
INSERT INTO `jrkj_crontab` VALUES ('538', '111164', '1443559201', '121.41.16.149', '2015-09-30 04:40:01');
INSERT INTO `jrkj_crontab` VALUES ('539', '824709', '1443559801', '121.41.16.149', '2015-09-30 04:50:01');
INSERT INTO `jrkj_crontab` VALUES ('540', '482829', '1443560401', '121.41.16.149', '2015-09-30 05:00:01');
INSERT INTO `jrkj_crontab` VALUES ('541', '666692', '1443561001', '121.41.16.149', '2015-09-30 05:10:01');
INSERT INTO `jrkj_crontab` VALUES ('542', '277730', '1443561601', '121.41.16.149', '2015-09-30 05:20:01');
INSERT INTO `jrkj_crontab` VALUES ('543', '952621', '1443562201', '121.41.16.149', '2015-09-30 05:30:01');
INSERT INTO `jrkj_crontab` VALUES ('544', '770580', '1443562801', '121.41.16.149', '2015-09-30 05:40:01');
INSERT INTO `jrkj_crontab` VALUES ('545', '585344', '1443563401', '121.41.16.149', '2015-09-30 05:50:01');
INSERT INTO `jrkj_crontab` VALUES ('546', '656497', '1443564001', '121.41.16.149', '2015-09-30 06:00:01');
INSERT INTO `jrkj_crontab` VALUES ('547', '537793', '1443564601', '121.41.16.149', '2015-09-30 06:10:01');
INSERT INTO `jrkj_crontab` VALUES ('548', '816585', '1443565201', '121.41.16.149', '2015-09-30 06:20:01');
INSERT INTO `jrkj_crontab` VALUES ('549', '742365', '1443565801', '121.41.16.149', '2015-09-30 06:30:01');
INSERT INTO `jrkj_crontab` VALUES ('550', '382334', '1443566402', '121.41.16.149', '2015-09-30 06:40:02');
INSERT INTO `jrkj_crontab` VALUES ('551', '581402', '1443567001', '121.41.16.149', '2015-09-30 06:50:01');
INSERT INTO `jrkj_crontab` VALUES ('552', '98644', '1443567601', '121.41.16.149', '2015-09-30 07:00:01');
INSERT INTO `jrkj_crontab` VALUES ('553', '242905', '1443568201', '121.41.16.149', '2015-09-30 07:10:01');
INSERT INTO `jrkj_crontab` VALUES ('554', '159034', '1443568801', '121.41.16.149', '2015-09-30 07:20:01');
INSERT INTO `jrkj_crontab` VALUES ('555', '579888', '1443569401', '121.41.16.149', '2015-09-30 07:30:01');
INSERT INTO `jrkj_crontab` VALUES ('556', '35205', '1443570001', '121.41.16.149', '2015-09-30 07:40:01');
INSERT INTO `jrkj_crontab` VALUES ('557', '691076', '1443570601', '121.41.16.149', '2015-09-30 07:50:01');
INSERT INTO `jrkj_crontab` VALUES ('558', '616082', '1443571201', '121.41.16.149', '2015-09-30 08:00:01');
INSERT INTO `jrkj_crontab` VALUES ('559', '405702', '1443571801', '121.41.16.149', '2015-09-30 08:10:01');
INSERT INTO `jrkj_crontab` VALUES ('560', '250572', '1443572401', '121.41.16.149', '2015-09-30 08:20:01');
INSERT INTO `jrkj_crontab` VALUES ('561', '438685', '1443573001', '121.41.16.149', '2015-09-30 08:30:01');
INSERT INTO `jrkj_crontab` VALUES ('562', '11640', '1443573601', '121.41.16.149', '2015-09-30 08:40:01');
INSERT INTO `jrkj_crontab` VALUES ('563', '653208', '1443574201', '121.41.16.149', '2015-09-30 08:50:01');
INSERT INTO `jrkj_crontab` VALUES ('564', '670452', '1443574801', '121.41.16.149', '2015-09-30 09:00:01');
INSERT INTO `jrkj_crontab` VALUES ('565', '548055', '1443575401', '121.41.16.149', '2015-09-30 09:10:01');
INSERT INTO `jrkj_crontab` VALUES ('566', '791235', '1443576001', '121.41.16.149', '2015-09-30 09:20:01');
INSERT INTO `jrkj_crontab` VALUES ('567', '893194', '1443576601', '121.41.16.149', '2015-09-30 09:30:01');
INSERT INTO `jrkj_crontab` VALUES ('568', '72182', '1443577202', '121.41.16.149', '2015-09-30 09:40:02');
INSERT INTO `jrkj_crontab` VALUES ('569', '46490', '1443577801', '121.41.16.149', '2015-09-30 09:50:01');
INSERT INTO `jrkj_crontab` VALUES ('570', '187929', '1443578401', '121.41.16.149', '2015-09-30 10:00:01');
INSERT INTO `jrkj_crontab` VALUES ('571', '42685', '1443579001', '121.41.16.149', '2015-09-30 10:10:01');
INSERT INTO `jrkj_crontab` VALUES ('572', '879518', '1443579601', '121.41.16.149', '2015-09-30 10:20:01');
INSERT INTO `jrkj_crontab` VALUES ('573', '92655', '1443580201', '121.41.16.149', '2015-09-30 10:30:01');
INSERT INTO `jrkj_crontab` VALUES ('574', '510281', '1443580801', '121.41.16.149', '2015-09-30 10:40:01');
INSERT INTO `jrkj_crontab` VALUES ('575', '811539', '1443581401', '121.41.16.149', '2015-09-30 10:50:01');
INSERT INTO `jrkj_crontab` VALUES ('576', '314747', '1443582001', '121.41.16.149', '2015-09-30 11:00:01');
INSERT INTO `jrkj_crontab` VALUES ('577', '75680', '1443582601', '121.41.16.149', '2015-09-30 11:10:01');
INSERT INTO `jrkj_crontab` VALUES ('578', '81288', '1443583201', '121.41.16.149', '2015-09-30 11:20:01');
INSERT INTO `jrkj_crontab` VALUES ('579', '261155', '1443583801', '121.41.16.149', '2015-09-30 11:30:01');
INSERT INTO `jrkj_crontab` VALUES ('580', '33483', '1443584401', '121.41.16.149', '2015-09-30 11:40:01');
INSERT INTO `jrkj_crontab` VALUES ('581', '360944', '1443585001', '121.41.16.149', '2015-09-30 11:50:01');
INSERT INTO `jrkj_crontab` VALUES ('582', '532907', '1443585601', '121.41.16.149', '2015-09-30 12:00:01');
INSERT INTO `jrkj_crontab` VALUES ('583', '892392', '1443586201', '121.41.16.149', '2015-09-30 12:10:01');
INSERT INTO `jrkj_crontab` VALUES ('584', '213898', '1443586801', '121.41.16.149', '2015-09-30 12:20:01');
INSERT INTO `jrkj_crontab` VALUES ('585', '257715', '1443587402', '121.41.16.149', '2015-09-30 12:30:02');
INSERT INTO `jrkj_crontab` VALUES ('586', '694695', '1443588001', '121.41.16.149', '2015-09-30 12:40:01');
INSERT INTO `jrkj_crontab` VALUES ('587', '287880', '1443588601', '121.41.16.149', '2015-09-30 12:50:01');
INSERT INTO `jrkj_crontab` VALUES ('588', '922640', '1443589201', '121.41.16.149', '2015-09-30 13:00:01');
INSERT INTO `jrkj_crontab` VALUES ('589', '275113', '1443589801', '121.41.16.149', '2015-09-30 13:10:01');
INSERT INTO `jrkj_crontab` VALUES ('590', '312961', '1443590401', '121.41.16.149', '2015-09-30 13:20:01');
INSERT INTO `jrkj_crontab` VALUES ('591', '38744', '1443591001', '121.41.16.149', '2015-09-30 13:30:01');
INSERT INTO `jrkj_crontab` VALUES ('592', '496997', '1443591601', '121.41.16.149', '2015-09-30 13:40:01');
INSERT INTO `jrkj_crontab` VALUES ('593', '990255', '1443592201', '121.41.16.149', '2015-09-30 13:50:01');
INSERT INTO `jrkj_crontab` VALUES ('594', '960091', '1443592801', '121.41.16.149', '2015-09-30 14:00:01');
INSERT INTO `jrkj_crontab` VALUES ('595', '929967', '1443593401', '121.41.16.149', '2015-09-30 14:10:01');
INSERT INTO `jrkj_crontab` VALUES ('596', '82150', '1443594001', '121.41.16.149', '2015-09-30 14:20:01');
INSERT INTO `jrkj_crontab` VALUES ('597', '871210', '1443594601', '121.41.16.149', '2015-09-30 14:30:01');
INSERT INTO `jrkj_crontab` VALUES ('598', '489972', '1443595201', '121.41.16.149', '2015-09-30 14:40:01');
INSERT INTO `jrkj_crontab` VALUES ('599', '617129', '1443595801', '121.41.16.149', '2015-09-30 14:50:01');
INSERT INTO `jrkj_crontab` VALUES ('600', '362302', '1443596401', '121.41.16.149', '2015-09-30 15:00:01');
INSERT INTO `jrkj_crontab` VALUES ('601', '830704', '1443597001', '121.41.16.149', '2015-09-30 15:10:01');
INSERT INTO `jrkj_crontab` VALUES ('602', '300607', '1443597601', '121.41.16.149', '2015-09-30 15:20:01');
INSERT INTO `jrkj_crontab` VALUES ('603', '491814', '1443598201', '121.41.16.149', '2015-09-30 15:30:01');
INSERT INTO `jrkj_crontab` VALUES ('604', '959773', '1443598801', '121.41.16.149', '2015-09-30 15:40:01');
INSERT INTO `jrkj_crontab` VALUES ('605', '776074', '1443599401', '121.41.16.149', '2015-09-30 15:50:01');
INSERT INTO `jrkj_crontab` VALUES ('606', '587305', '1443600001', '121.41.16.149', '2015-09-30 16:00:01');
INSERT INTO `jrkj_crontab` VALUES ('607', '481078', '1443600601', '121.41.16.149', '2015-09-30 16:10:01');
INSERT INTO `jrkj_crontab` VALUES ('608', '920788', '1443601201', '121.41.16.149', '2015-09-30 16:20:01');
INSERT INTO `jrkj_crontab` VALUES ('609', '753937', '1443601801', '121.41.16.149', '2015-09-30 16:30:01');
INSERT INTO `jrkj_crontab` VALUES ('610', '105789', '1443602401', '121.41.16.149', '2015-09-30 16:40:01');
INSERT INTO `jrkj_crontab` VALUES ('611', '282728', '1443603001', '121.41.16.149', '2015-09-30 16:50:01');
INSERT INTO `jrkj_crontab` VALUES ('612', '728877', '1443603601', '121.41.16.149', '2015-09-30 17:00:01');
INSERT INTO `jrkj_crontab` VALUES ('613', '295506', '1443604201', '121.41.16.149', '2015-09-30 17:10:01');
INSERT INTO `jrkj_crontab` VALUES ('614', '943491', '1443604801', '121.41.16.149', '2015-09-30 17:20:01');
INSERT INTO `jrkj_crontab` VALUES ('615', '254053', '1443605401', '121.41.16.149', '2015-09-30 17:30:01');
INSERT INTO `jrkj_crontab` VALUES ('616', '957882', '1443606001', '121.41.16.149', '2015-09-30 17:40:01');
INSERT INTO `jrkj_crontab` VALUES ('617', '582068', '1443606601', '121.41.16.149', '2015-09-30 17:50:01');
INSERT INTO `jrkj_crontab` VALUES ('618', '539065', '1443607201', '121.41.16.149', '2015-09-30 18:00:01');
INSERT INTO `jrkj_crontab` VALUES ('619', '336902', '1443607801', '121.41.16.149', '2015-09-30 18:10:01');
INSERT INTO `jrkj_crontab` VALUES ('620', '254542', '1443608401', '121.41.16.149', '2015-09-30 18:20:01');
INSERT INTO `jrkj_crontab` VALUES ('621', '914468', '1443609001', '121.41.16.149', '2015-09-30 18:30:01');
INSERT INTO `jrkj_crontab` VALUES ('622', '518214', '1443609601', '121.41.16.149', '2015-09-30 18:40:01');
INSERT INTO `jrkj_crontab` VALUES ('623', '295144', '1443610201', '121.41.16.149', '2015-09-30 18:50:01');
INSERT INTO `jrkj_crontab` VALUES ('624', '971420', '1443610801', '121.41.16.149', '2015-09-30 19:00:01');
INSERT INTO `jrkj_crontab` VALUES ('625', '709790', '1443611401', '121.41.16.149', '2015-09-30 19:10:01');
INSERT INTO `jrkj_crontab` VALUES ('626', '212521', '1443612001', '121.41.16.149', '2015-09-30 19:20:01');
INSERT INTO `jrkj_crontab` VALUES ('627', '945595', '1443612601', '121.41.16.149', '2015-09-30 19:30:01');
INSERT INTO `jrkj_crontab` VALUES ('628', '22026', '1443613201', '121.41.16.149', '2015-09-30 19:40:01');
INSERT INTO `jrkj_crontab` VALUES ('629', '597630', '1443613801', '121.41.16.149', '2015-09-30 19:50:01');
INSERT INTO `jrkj_crontab` VALUES ('630', '355943', '1443614401', '121.41.16.149', '2015-09-30 20:00:01');
INSERT INTO `jrkj_crontab` VALUES ('631', '680377', '1443615001', '121.41.16.149', '2015-09-30 20:10:01');
INSERT INTO `jrkj_crontab` VALUES ('632', '548743', '1443615601', '121.41.16.149', '2015-09-30 20:20:01');
INSERT INTO `jrkj_crontab` VALUES ('633', '514453', '1443616201', '121.41.16.149', '2015-09-30 20:30:01');
INSERT INTO `jrkj_crontab` VALUES ('634', '350215', '1443616801', '121.41.16.149', '2015-09-30 20:40:01');
INSERT INTO `jrkj_crontab` VALUES ('635', '370220', '1443617401', '121.41.16.149', '2015-09-30 20:50:01');
INSERT INTO `jrkj_crontab` VALUES ('636', '115030', '1443618002', '121.41.16.149', '2015-09-30 21:00:02');
INSERT INTO `jrkj_crontab` VALUES ('637', '310559', '1443618601', '121.41.16.149', '2015-09-30 21:10:01');
INSERT INTO `jrkj_crontab` VALUES ('638', '331926', '1443619201', '121.41.16.149', '2015-09-30 21:20:01');
INSERT INTO `jrkj_crontab` VALUES ('639', '284936', '1443619801', '121.41.16.149', '2015-09-30 21:30:01');
INSERT INTO `jrkj_crontab` VALUES ('640', '982531', '1443620401', '121.41.16.149', '2015-09-30 21:40:01');
INSERT INTO `jrkj_crontab` VALUES ('641', '218834', '1443621001', '121.41.16.149', '2015-09-30 21:50:01');
INSERT INTO `jrkj_crontab` VALUES ('642', '966797', '1443621601', '121.41.16.149', '2015-09-30 22:00:01');
INSERT INTO `jrkj_crontab` VALUES ('643', '47884', '1443622201', '121.41.16.149', '2015-09-30 22:10:01');
INSERT INTO `jrkj_crontab` VALUES ('644', '266041', '1443622801', '121.41.16.149', '2015-09-30 22:20:01');
INSERT INTO `jrkj_crontab` VALUES ('645', '372118', '1443623401', '121.41.16.149', '2015-09-30 22:30:01');
INSERT INTO `jrkj_crontab` VALUES ('646', '44702', '1443624001', '121.41.16.149', '2015-09-30 22:40:01');
INSERT INTO `jrkj_crontab` VALUES ('647', '777224', '1443624601', '121.41.16.149', '2015-09-30 22:50:01');
INSERT INTO `jrkj_crontab` VALUES ('648', '739282', '1443625201', '121.41.16.149', '2015-09-30 23:00:01');
INSERT INTO `jrkj_crontab` VALUES ('649', '239949', '1443625801', '121.41.16.149', '2015-09-30 23:10:01');
INSERT INTO `jrkj_crontab` VALUES ('650', '673593', '1443626401', '121.41.16.149', '2015-09-30 23:20:01');
INSERT INTO `jrkj_crontab` VALUES ('651', '669790', '1443627001', '121.41.16.149', '2015-09-30 23:30:01');
INSERT INTO `jrkj_crontab` VALUES ('652', '307703', '1443627601', '121.41.16.149', '2015-09-30 23:40:01');
INSERT INTO `jrkj_crontab` VALUES ('653', '164581', '1443628201', '121.41.16.149', '2015-09-30 23:50:01');
INSERT INTO `jrkj_crontab` VALUES ('654', '984896', '1443628802', '121.41.16.149', '2015-10-01 00:00:02');
INSERT INTO `jrkj_crontab` VALUES ('655', '660276', '1443629401', '121.41.16.149', '2015-10-01 00:10:01');
INSERT INTO `jrkj_crontab` VALUES ('656', '335865', '1443630001', '121.41.16.149', '2015-10-01 00:20:01');
INSERT INTO `jrkj_crontab` VALUES ('657', '559228', '1443630601', '121.41.16.149', '2015-10-01 00:30:01');
INSERT INTO `jrkj_crontab` VALUES ('658', '819245', '1443631201', '121.41.16.149', '2015-10-01 00:40:01');
INSERT INTO `jrkj_crontab` VALUES ('659', '543257', '1443631801', '121.41.16.149', '2015-10-01 00:50:01');
INSERT INTO `jrkj_crontab` VALUES ('660', '49703', '1443632401', '121.41.16.149', '2015-10-01 01:00:01');
INSERT INTO `jrkj_crontab` VALUES ('661', '448057', '1443633001', '121.41.16.149', '2015-10-01 01:10:01');
INSERT INTO `jrkj_crontab` VALUES ('662', '156350', '1443633601', '121.41.16.149', '2015-10-01 01:20:01');
INSERT INTO `jrkj_crontab` VALUES ('663', '675277', '1443634201', '121.41.16.149', '2015-10-01 01:30:01');
INSERT INTO `jrkj_crontab` VALUES ('664', '547705', '1443634801', '121.41.16.149', '2015-10-01 01:40:01');
INSERT INTO `jrkj_crontab` VALUES ('665', '163015', '1443635401', '121.41.16.149', '2015-10-01 01:50:01');
INSERT INTO `jrkj_crontab` VALUES ('666', '825659', '1443636001', '121.41.16.149', '2015-10-01 02:00:01');
INSERT INTO `jrkj_crontab` VALUES ('667', '660949', '1443636601', '121.41.16.149', '2015-10-01 02:10:01');
INSERT INTO `jrkj_crontab` VALUES ('668', '913080', '1443637201', '121.41.16.149', '2015-10-01 02:20:01');
INSERT INTO `jrkj_crontab` VALUES ('669', '430061', '1443637801', '121.41.16.149', '2015-10-01 02:30:01');
INSERT INTO `jrkj_crontab` VALUES ('670', '999437', '1443638401', '121.41.16.149', '2015-10-01 02:40:01');
INSERT INTO `jrkj_crontab` VALUES ('671', '718890', '1443639001', '121.41.16.149', '2015-10-01 02:50:01');
INSERT INTO `jrkj_crontab` VALUES ('672', '692942', '1443639601', '121.41.16.149', '2015-10-01 03:00:01');
INSERT INTO `jrkj_crontab` VALUES ('673', '32169', '1443640201', '121.41.16.149', '2015-10-01 03:10:01');
INSERT INTO `jrkj_crontab` VALUES ('674', '471934', '1443640801', '121.41.16.149', '2015-10-01 03:20:01');
INSERT INTO `jrkj_crontab` VALUES ('675', '51148', '1443641401', '121.41.16.149', '2015-10-01 03:30:01');
INSERT INTO `jrkj_crontab` VALUES ('676', '102284', '1443642001', '121.41.16.149', '2015-10-01 03:40:01');
INSERT INTO `jrkj_crontab` VALUES ('677', '662029', '1443642601', '121.41.16.149', '2015-10-01 03:50:01');
INSERT INTO `jrkj_crontab` VALUES ('678', '612582', '1443643201', '121.41.16.149', '2015-10-01 04:00:01');
INSERT INTO `jrkj_crontab` VALUES ('679', '560687', '1443643801', '121.41.16.149', '2015-10-01 04:10:01');
INSERT INTO `jrkj_crontab` VALUES ('680', '980804', '1443644401', '121.41.16.149', '2015-10-01 04:20:01');
INSERT INTO `jrkj_crontab` VALUES ('681', '166079', '1443645001', '121.41.16.149', '2015-10-01 04:30:01');
INSERT INTO `jrkj_crontab` VALUES ('682', '702659', '1443645601', '121.41.16.149', '2015-10-01 04:40:01');
INSERT INTO `jrkj_crontab` VALUES ('683', '34708', '1443646201', '121.41.16.149', '2015-10-01 04:50:01');
INSERT INTO `jrkj_crontab` VALUES ('684', '574333', '1443646801', '121.41.16.149', '2015-10-01 05:00:01');
INSERT INTO `jrkj_crontab` VALUES ('685', '446265', '1443647401', '121.41.16.149', '2015-10-01 05:10:01');
INSERT INTO `jrkj_crontab` VALUES ('686', '734501', '1443648001', '121.41.16.149', '2015-10-01 05:20:01');
INSERT INTO `jrkj_crontab` VALUES ('687', '152014', '1443648601', '121.41.16.149', '2015-10-01 05:30:01');
INSERT INTO `jrkj_crontab` VALUES ('688', '129867', '1443649201', '121.41.16.149', '2015-10-01 05:40:01');
INSERT INTO `jrkj_crontab` VALUES ('689', '290145', '1443649801', '121.41.16.149', '2015-10-01 05:50:01');
INSERT INTO `jrkj_crontab` VALUES ('690', '796296', '1443650401', '121.41.16.149', '2015-10-01 06:00:01');
INSERT INTO `jrkj_crontab` VALUES ('691', '579722', '1443651001', '121.41.16.149', '2015-10-01 06:10:01');
INSERT INTO `jrkj_crontab` VALUES ('692', '363727', '1443651601', '121.41.16.149', '2015-10-01 06:20:01');
INSERT INTO `jrkj_crontab` VALUES ('693', '171208', '1443652201', '121.41.16.149', '2015-10-01 06:30:01');
INSERT INTO `jrkj_crontab` VALUES ('694', '350189', '1443652801', '121.41.16.149', '2015-10-01 06:40:01');
INSERT INTO `jrkj_crontab` VALUES ('695', '773181', '1443653401', '121.41.16.149', '2015-10-01 06:50:01');
INSERT INTO `jrkj_crontab` VALUES ('696', '126310', '1443654001', '121.41.16.149', '2015-10-01 07:00:01');
INSERT INTO `jrkj_crontab` VALUES ('697', '912147', '1443654601', '121.41.16.149', '2015-10-01 07:10:01');
INSERT INTO `jrkj_crontab` VALUES ('698', '467656', '1443655201', '121.41.16.149', '2015-10-01 07:20:01');
INSERT INTO `jrkj_crontab` VALUES ('699', '361725', '1443655801', '121.41.16.149', '2015-10-01 07:30:01');
INSERT INTO `jrkj_crontab` VALUES ('700', '765143', '1443656401', '121.41.16.149', '2015-10-01 07:40:01');
INSERT INTO `jrkj_crontab` VALUES ('701', '865762', '1443657001', '121.41.16.149', '2015-10-01 07:50:01');
INSERT INTO `jrkj_crontab` VALUES ('702', '440438', '1443657601', '121.41.16.149', '2015-10-01 08:00:01');
INSERT INTO `jrkj_crontab` VALUES ('703', '365459', '1443658201', '121.41.16.149', '2015-10-01 08:10:01');
INSERT INTO `jrkj_crontab` VALUES ('704', '539571', '1443658801', '121.41.16.149', '2015-10-01 08:20:01');
INSERT INTO `jrkj_crontab` VALUES ('705', '413894', '1443659401', '121.41.16.149', '2015-10-01 08:30:01');
INSERT INTO `jrkj_crontab` VALUES ('706', '564503', '1443660001', '121.41.16.149', '2015-10-01 08:40:01');
INSERT INTO `jrkj_crontab` VALUES ('707', '460331', '1443660601', '121.41.16.149', '2015-10-01 08:50:01');
INSERT INTO `jrkj_crontab` VALUES ('708', '591149', '1443661201', '121.41.16.149', '2015-10-01 09:00:01');
INSERT INTO `jrkj_crontab` VALUES ('709', '742035', '1443661801', '121.41.16.149', '2015-10-01 09:10:01');
INSERT INTO `jrkj_crontab` VALUES ('710', '958313', '1443662401', '121.41.16.149', '2015-10-01 09:20:01');
INSERT INTO `jrkj_crontab` VALUES ('711', '503652', '1443663001', '121.41.16.149', '2015-10-01 09:30:01');
INSERT INTO `jrkj_crontab` VALUES ('712', '25551', '1443663601', '121.41.16.149', '2015-10-01 09:40:01');
INSERT INTO `jrkj_crontab` VALUES ('713', '296271', '1443664201', '121.41.16.149', '2015-10-01 09:50:01');
INSERT INTO `jrkj_crontab` VALUES ('714', '987481', '1443664801', '121.41.16.149', '2015-10-01 10:00:01');
INSERT INTO `jrkj_crontab` VALUES ('715', '758463', '1443665401', '121.41.16.149', '2015-10-01 10:10:01');
INSERT INTO `jrkj_crontab` VALUES ('716', '457703', '1443666001', '121.41.16.149', '2015-10-01 10:20:01');
INSERT INTO `jrkj_crontab` VALUES ('717', '790365', '1443666601', '121.41.16.149', '2015-10-01 10:30:01');
INSERT INTO `jrkj_crontab` VALUES ('718', '860200', '1443667201', '121.41.16.149', '2015-10-01 10:40:01');
INSERT INTO `jrkj_crontab` VALUES ('719', '751735', '1443667801', '121.41.16.149', '2015-10-01 10:50:01');
INSERT INTO `jrkj_crontab` VALUES ('720', '447794', '1443668401', '121.41.16.149', '2015-10-01 11:00:01');
INSERT INTO `jrkj_crontab` VALUES ('721', '954108', '1443669001', '121.41.16.149', '2015-10-01 11:10:01');
INSERT INTO `jrkj_crontab` VALUES ('722', '230784', '1443669601', '121.41.16.149', '2015-10-01 11:20:01');
INSERT INTO `jrkj_crontab` VALUES ('723', '371920', '1443670201', '121.41.16.149', '2015-10-01 11:30:01');
INSERT INTO `jrkj_crontab` VALUES ('724', '289627', '1443670801', '121.41.16.149', '2015-10-01 11:40:01');
INSERT INTO `jrkj_crontab` VALUES ('725', '560804', '1443671401', '121.41.16.149', '2015-10-01 11:50:01');
INSERT INTO `jrkj_crontab` VALUES ('726', '333906', '1443672001', '121.41.16.149', '2015-10-01 12:00:01');
INSERT INTO `jrkj_crontab` VALUES ('727', '925481', '1443672601', '121.41.16.149', '2015-10-01 12:10:01');
INSERT INTO `jrkj_crontab` VALUES ('728', '408511', '1443673201', '121.41.16.149', '2015-10-01 12:20:01');
INSERT INTO `jrkj_crontab` VALUES ('729', '843221', '1443673801', '121.41.16.149', '2015-10-01 12:30:01');
INSERT INTO `jrkj_crontab` VALUES ('730', '721028', '1443674401', '121.41.16.149', '2015-10-01 12:40:01');
INSERT INTO `jrkj_crontab` VALUES ('731', '724179', '1443675001', '121.41.16.149', '2015-10-01 12:50:01');
INSERT INTO `jrkj_crontab` VALUES ('732', '94184', '1443675601', '121.41.16.149', '2015-10-01 13:00:01');
INSERT INTO `jrkj_crontab` VALUES ('733', '596409', '1443676201', '121.41.16.149', '2015-10-01 13:10:01');
INSERT INTO `jrkj_crontab` VALUES ('734', '908520', '1443676801', '121.41.16.149', '2015-10-01 13:20:01');
INSERT INTO `jrkj_crontab` VALUES ('735', '910157', '1443677402', '121.41.16.149', '2015-10-01 13:30:02');
INSERT INTO `jrkj_crontab` VALUES ('736', '892265', '1443678001', '121.41.16.149', '2015-10-01 13:40:01');
INSERT INTO `jrkj_crontab` VALUES ('737', '646664', '1443678601', '121.41.16.149', '2015-10-01 13:50:01');
INSERT INTO `jrkj_crontab` VALUES ('738', '903990', '1443679201', '121.41.16.149', '2015-10-01 14:00:01');
INSERT INTO `jrkj_crontab` VALUES ('739', '427120', '1443679801', '121.41.16.149', '2015-10-01 14:10:01');
INSERT INTO `jrkj_crontab` VALUES ('740', '87317', '1443680401', '121.41.16.149', '2015-10-01 14:20:01');
INSERT INTO `jrkj_crontab` VALUES ('741', '452798', '1443681001', '121.41.16.149', '2015-10-01 14:30:01');
INSERT INTO `jrkj_crontab` VALUES ('742', '974019', '1443681601', '121.41.16.149', '2015-10-01 14:40:01');
INSERT INTO `jrkj_crontab` VALUES ('743', '676231', '1443682201', '121.41.16.149', '2015-10-01 14:50:01');
INSERT INTO `jrkj_crontab` VALUES ('744', '143318', '1443682801', '121.41.16.149', '2015-10-01 15:00:01');
INSERT INTO `jrkj_crontab` VALUES ('745', '626790', '1443683401', '121.41.16.149', '2015-10-01 15:10:01');
INSERT INTO `jrkj_crontab` VALUES ('746', '582167', '1443684001', '121.41.16.149', '2015-10-01 15:20:01');
INSERT INTO `jrkj_crontab` VALUES ('747', '863268', '1443684601', '121.41.16.149', '2015-10-01 15:30:01');
INSERT INTO `jrkj_crontab` VALUES ('748', '200031', '1443685201', '121.41.16.149', '2015-10-01 15:40:01');
INSERT INTO `jrkj_crontab` VALUES ('749', '270795', '1443685801', '121.41.16.149', '2015-10-01 15:50:01');
INSERT INTO `jrkj_crontab` VALUES ('750', '546690', '1443686401', '121.41.16.149', '2015-10-01 16:00:01');
INSERT INTO `jrkj_crontab` VALUES ('751', '693152', '1443687001', '121.41.16.149', '2015-10-01 16:10:01');
INSERT INTO `jrkj_crontab` VALUES ('752', '252562', '1443687601', '121.41.16.149', '2015-10-01 16:20:01');
INSERT INTO `jrkj_crontab` VALUES ('753', '594833', '1443688201', '121.41.16.149', '2015-10-01 16:30:01');
INSERT INTO `jrkj_crontab` VALUES ('754', '879202', '1443688801', '121.41.16.149', '2015-10-01 16:40:01');
INSERT INTO `jrkj_crontab` VALUES ('755', '880161', '1443689401', '121.41.16.149', '2015-10-01 16:50:01');
INSERT INTO `jrkj_crontab` VALUES ('756', '609386', '1443690001', '121.41.16.149', '2015-10-01 17:00:01');
INSERT INTO `jrkj_crontab` VALUES ('757', '403298', '1443690601', '121.41.16.149', '2015-10-01 17:10:01');
INSERT INTO `jrkj_crontab` VALUES ('758', '324139', '1443691201', '121.41.16.149', '2015-10-01 17:20:01');
INSERT INTO `jrkj_crontab` VALUES ('759', '682642', '1443691801', '121.41.16.149', '2015-10-01 17:30:01');
INSERT INTO `jrkj_crontab` VALUES ('760', '801337', '1443692401', '121.41.16.149', '2015-10-01 17:40:01');
INSERT INTO `jrkj_crontab` VALUES ('761', '153800', '1443693001', '121.41.16.149', '2015-10-01 17:50:01');
INSERT INTO `jrkj_crontab` VALUES ('762', '426960', '1443693601', '121.41.16.149', '2015-10-01 18:00:01');
INSERT INTO `jrkj_crontab` VALUES ('763', '617044', '1443694201', '121.41.16.149', '2015-10-01 18:10:01');
INSERT INTO `jrkj_crontab` VALUES ('764', '565222', '1443694801', '121.41.16.149', '2015-10-01 18:20:01');
INSERT INTO `jrkj_crontab` VALUES ('765', '271985', '1443695401', '121.41.16.149', '2015-10-01 18:30:01');
INSERT INTO `jrkj_crontab` VALUES ('766', '536723', '1443696001', '121.41.16.149', '2015-10-01 18:40:01');
INSERT INTO `jrkj_crontab` VALUES ('767', '253396', '1443696601', '121.41.16.149', '2015-10-01 18:50:01');
INSERT INTO `jrkj_crontab` VALUES ('768', '523009', '1443697201', '121.41.16.149', '2015-10-01 19:00:01');
INSERT INTO `jrkj_crontab` VALUES ('769', '170476', '1443697801', '121.41.16.149', '2015-10-01 19:10:01');
INSERT INTO `jrkj_crontab` VALUES ('770', '693700', '1443698401', '121.41.16.149', '2015-10-01 19:20:01');
INSERT INTO `jrkj_crontab` VALUES ('771', '660885', '1443699001', '121.41.16.149', '2015-10-01 19:30:01');
INSERT INTO `jrkj_crontab` VALUES ('772', '592191', '1443699601', '121.41.16.149', '2015-10-01 19:40:01');
INSERT INTO `jrkj_crontab` VALUES ('773', '151077', '1443700201', '121.41.16.149', '2015-10-01 19:50:01');
INSERT INTO `jrkj_crontab` VALUES ('774', '658075', '1443700801', '121.41.16.149', '2015-10-01 20:00:01');
INSERT INTO `jrkj_crontab` VALUES ('775', '111491', '1443701401', '121.41.16.149', '2015-10-01 20:10:01');
INSERT INTO `jrkj_crontab` VALUES ('776', '595034', '1443702001', '121.41.16.149', '2015-10-01 20:20:01');
INSERT INTO `jrkj_crontab` VALUES ('777', '266692', '1443702601', '121.41.16.149', '2015-10-01 20:30:01');
INSERT INTO `jrkj_crontab` VALUES ('778', '371704', '1443703201', '121.41.16.149', '2015-10-01 20:40:01');
INSERT INTO `jrkj_crontab` VALUES ('779', '166008', '1443703801', '121.41.16.149', '2015-10-01 20:50:01');
INSERT INTO `jrkj_crontab` VALUES ('780', '668842', '1443704401', '121.41.16.149', '2015-10-01 21:00:01');
INSERT INTO `jrkj_crontab` VALUES ('781', '690356', '1443705001', '121.41.16.149', '2015-10-01 21:10:01');
INSERT INTO `jrkj_crontab` VALUES ('782', '935759', '1443705601', '121.41.16.149', '2015-10-01 21:20:01');
INSERT INTO `jrkj_crontab` VALUES ('783', '536477', '1443706201', '121.41.16.149', '2015-10-01 21:30:01');
INSERT INTO `jrkj_crontab` VALUES ('784', '243026', '1443706801', '121.41.16.149', '2015-10-01 21:40:01');
INSERT INTO `jrkj_crontab` VALUES ('785', '866815', '1443707401', '121.41.16.149', '2015-10-01 21:50:01');
INSERT INTO `jrkj_crontab` VALUES ('786', '286652', '1443708001', '121.41.16.149', '2015-10-01 22:00:01');
INSERT INTO `jrkj_crontab` VALUES ('787', '671657', '1443708601', '121.41.16.149', '2015-10-01 22:10:01');
INSERT INTO `jrkj_crontab` VALUES ('788', '401308', '1443709201', '121.41.16.149', '2015-10-01 22:20:01');
INSERT INTO `jrkj_crontab` VALUES ('789', '292142', '1443709801', '121.41.16.149', '2015-10-01 22:30:01');
INSERT INTO `jrkj_crontab` VALUES ('790', '934400', '1443710401', '121.41.16.149', '2015-10-01 22:40:01');
INSERT INTO `jrkj_crontab` VALUES ('791', '336617', '1443711001', '121.41.16.149', '2015-10-01 22:50:01');
INSERT INTO `jrkj_crontab` VALUES ('792', '577743', '1443711601', '121.41.16.149', '2015-10-01 23:00:01');
INSERT INTO `jrkj_crontab` VALUES ('793', '633969', '1443712201', '121.41.16.149', '2015-10-01 23:10:01');
INSERT INTO `jrkj_crontab` VALUES ('794', '729118', '1443712801', '121.41.16.149', '2015-10-01 23:20:01');
INSERT INTO `jrkj_crontab` VALUES ('795', '958461', '1443713401', '121.41.16.149', '2015-10-01 23:30:01');
INSERT INTO `jrkj_crontab` VALUES ('796', '440376', '1443714001', '121.41.16.149', '2015-10-01 23:40:01');
INSERT INTO `jrkj_crontab` VALUES ('797', '269563', '1443714601', '121.41.16.149', '2015-10-01 23:50:01');
INSERT INTO `jrkj_crontab` VALUES ('798', '604314', '1443715201', '121.41.16.149', '2015-10-02 00:00:01');
INSERT INTO `jrkj_crontab` VALUES ('799', '614037', '1443715801', '121.41.16.149', '2015-10-02 00:10:01');
INSERT INTO `jrkj_crontab` VALUES ('800', '70694', '1443716401', '121.41.16.149', '2015-10-02 00:20:01');
INSERT INTO `jrkj_crontab` VALUES ('801', '40994', '1443717002', '121.41.16.149', '2015-10-02 00:30:02');
INSERT INTO `jrkj_crontab` VALUES ('802', '132403', '1443717601', '121.41.16.149', '2015-10-02 00:40:01');
INSERT INTO `jrkj_crontab` VALUES ('803', '105777', '1443718201', '121.41.16.149', '2015-10-02 00:50:01');
INSERT INTO `jrkj_crontab` VALUES ('804', '96365', '1443718801', '121.41.16.149', '2015-10-02 01:00:01');
INSERT INTO `jrkj_crontab` VALUES ('805', '530461', '1443719401', '121.41.16.149', '2015-10-02 01:10:01');
INSERT INTO `jrkj_crontab` VALUES ('806', '473649', '1443720001', '121.41.16.149', '2015-10-02 01:20:01');
INSERT INTO `jrkj_crontab` VALUES ('807', '666286', '1443720601', '121.41.16.149', '2015-10-02 01:30:01');
INSERT INTO `jrkj_crontab` VALUES ('808', '385412', '1443721201', '121.41.16.149', '2015-10-02 01:40:01');
INSERT INTO `jrkj_crontab` VALUES ('809', '789376', '1443721801', '121.41.16.149', '2015-10-02 01:50:01');
INSERT INTO `jrkj_crontab` VALUES ('810', '403953', '1443722401', '121.41.16.149', '2015-10-02 02:00:01');
INSERT INTO `jrkj_crontab` VALUES ('811', '556418', '1443723001', '121.41.16.149', '2015-10-02 02:10:01');
INSERT INTO `jrkj_crontab` VALUES ('812', '380537', '1443723601', '121.41.16.149', '2015-10-02 02:20:01');
INSERT INTO `jrkj_crontab` VALUES ('813', '279778', '1443724201', '121.41.16.149', '2015-10-02 02:30:01');
INSERT INTO `jrkj_crontab` VALUES ('814', '153418', '1443724801', '121.41.16.149', '2015-10-02 02:40:01');
INSERT INTO `jrkj_crontab` VALUES ('815', '14112', '1443725401', '121.41.16.149', '2015-10-02 02:50:01');
INSERT INTO `jrkj_crontab` VALUES ('816', '722886', '1443726001', '121.41.16.149', '2015-10-02 03:00:01');
INSERT INTO `jrkj_crontab` VALUES ('817', '366225', '1443726601', '121.41.16.149', '2015-10-02 03:10:01');
INSERT INTO `jrkj_crontab` VALUES ('818', '313008', '1443727201', '121.41.16.149', '2015-10-02 03:20:01');
INSERT INTO `jrkj_crontab` VALUES ('819', '850953', '1443727801', '121.41.16.149', '2015-10-02 03:30:01');
INSERT INTO `jrkj_crontab` VALUES ('820', '633202', '1443728401', '121.41.16.149', '2015-10-02 03:40:01');
INSERT INTO `jrkj_crontab` VALUES ('821', '668324', '1443729001', '121.41.16.149', '2015-10-02 03:50:01');
INSERT INTO `jrkj_crontab` VALUES ('822', '827071', '1443729601', '121.41.16.149', '2015-10-02 04:00:01');
INSERT INTO `jrkj_crontab` VALUES ('823', '814413', '1443730201', '121.41.16.149', '2015-10-02 04:10:01');
INSERT INTO `jrkj_crontab` VALUES ('824', '449062', '1443730801', '121.41.16.149', '2015-10-02 04:20:01');
INSERT INTO `jrkj_crontab` VALUES ('825', '806388', '1443731401', '121.41.16.149', '2015-10-02 04:30:01');
INSERT INTO `jrkj_crontab` VALUES ('826', '518017', '1443732001', '121.41.16.149', '2015-10-02 04:40:01');
INSERT INTO `jrkj_crontab` VALUES ('827', '27615', '1443732601', '121.41.16.149', '2015-10-02 04:50:01');
INSERT INTO `jrkj_crontab` VALUES ('828', '615077', '1443733201', '121.41.16.149', '2015-10-02 05:00:01');
INSERT INTO `jrkj_crontab` VALUES ('829', '60913', '1443733801', '121.41.16.149', '2015-10-02 05:10:01');
INSERT INTO `jrkj_crontab` VALUES ('830', '242738', '1443734401', '121.41.16.149', '2015-10-02 05:20:01');
INSERT INTO `jrkj_crontab` VALUES ('831', '298489', '1443735001', '121.41.16.149', '2015-10-02 05:30:01');
INSERT INTO `jrkj_crontab` VALUES ('832', '781282', '1443735601', '121.41.16.149', '2015-10-02 05:40:01');
INSERT INTO `jrkj_crontab` VALUES ('833', '114795', '1443736201', '121.41.16.149', '2015-10-02 05:50:01');
INSERT INTO `jrkj_crontab` VALUES ('834', '737109', '1443736801', '121.41.16.149', '2015-10-02 06:00:01');
INSERT INTO `jrkj_crontab` VALUES ('835', '278753', '1443737401', '121.41.16.149', '2015-10-02 06:10:01');
INSERT INTO `jrkj_crontab` VALUES ('836', '224637', '1443738001', '121.41.16.149', '2015-10-02 06:20:01');
INSERT INTO `jrkj_crontab` VALUES ('837', '115111', '1443738601', '121.41.16.149', '2015-10-02 06:30:01');
INSERT INTO `jrkj_crontab` VALUES ('838', '462398', '1443739201', '121.41.16.149', '2015-10-02 06:40:01');
INSERT INTO `jrkj_crontab` VALUES ('839', '715717', '1443739801', '121.41.16.149', '2015-10-02 06:50:01');
INSERT INTO `jrkj_crontab` VALUES ('840', '275360', '1443740401', '121.41.16.149', '2015-10-02 07:00:01');
INSERT INTO `jrkj_crontab` VALUES ('841', '432335', '1443741001', '121.41.16.149', '2015-10-02 07:10:01');
INSERT INTO `jrkj_crontab` VALUES ('842', '10855', '1443741601', '121.41.16.149', '2015-10-02 07:20:01');
INSERT INTO `jrkj_crontab` VALUES ('843', '719378', '1443742201', '121.41.16.149', '2015-10-02 07:30:01');
INSERT INTO `jrkj_crontab` VALUES ('844', '636214', '1443742801', '121.41.16.149', '2015-10-02 07:40:01');
INSERT INTO `jrkj_crontab` VALUES ('845', '471078', '1443743401', '121.41.16.149', '2015-10-02 07:50:01');
INSERT INTO `jrkj_crontab` VALUES ('846', '954957', '1443744001', '121.41.16.149', '2015-10-02 08:00:01');
INSERT INTO `jrkj_crontab` VALUES ('847', '888510', '1443744601', '121.41.16.149', '2015-10-02 08:10:01');
INSERT INTO `jrkj_crontab` VALUES ('848', '716318', '1443745201', '121.41.16.149', '2015-10-02 08:20:01');
INSERT INTO `jrkj_crontab` VALUES ('849', '831700', '1443745801', '121.41.16.149', '2015-10-02 08:30:01');
INSERT INTO `jrkj_crontab` VALUES ('850', '874376', '1443746401', '121.41.16.149', '2015-10-02 08:40:01');
INSERT INTO `jrkj_crontab` VALUES ('851', '650571', '1443747001', '121.41.16.149', '2015-10-02 08:50:01');
INSERT INTO `jrkj_crontab` VALUES ('852', '842068', '1443747602', '121.41.16.149', '2015-10-02 09:00:02');
INSERT INTO `jrkj_crontab` VALUES ('853', '812865', '1443748201', '121.41.16.149', '2015-10-02 09:10:01');
INSERT INTO `jrkj_crontab` VALUES ('854', '527606', '1443748801', '121.41.16.149', '2015-10-02 09:20:01');
INSERT INTO `jrkj_crontab` VALUES ('855', '243022', '1443749401', '121.41.16.149', '2015-10-02 09:30:01');
INSERT INTO `jrkj_crontab` VALUES ('856', '164258', '1443750001', '121.41.16.149', '2015-10-02 09:40:01');
INSERT INTO `jrkj_crontab` VALUES ('857', '141119', '1443750601', '121.41.16.149', '2015-10-02 09:50:01');
INSERT INTO `jrkj_crontab` VALUES ('858', '29894', '1443751201', '121.41.16.149', '2015-10-02 10:00:01');
INSERT INTO `jrkj_crontab` VALUES ('859', '686461', '1443751801', '121.41.16.149', '2015-10-02 10:10:01');
INSERT INTO `jrkj_crontab` VALUES ('860', '164703', '1443752401', '121.41.16.149', '2015-10-02 10:20:01');
INSERT INTO `jrkj_crontab` VALUES ('861', '332784', '1443753001', '121.41.16.149', '2015-10-02 10:30:01');
INSERT INTO `jrkj_crontab` VALUES ('862', '713788', '1443753601', '121.41.16.149', '2015-10-02 10:40:01');
INSERT INTO `jrkj_crontab` VALUES ('863', '22858', '1443754201', '121.41.16.149', '2015-10-02 10:50:01');
INSERT INTO `jrkj_crontab` VALUES ('864', '661873', '1443754801', '121.41.16.149', '2015-10-02 11:00:01');
INSERT INTO `jrkj_crontab` VALUES ('865', '987831', '1443755401', '121.41.16.149', '2015-10-02 11:10:01');
INSERT INTO `jrkj_crontab` VALUES ('866', '688328', '1443756001', '121.41.16.149', '2015-10-02 11:20:01');
INSERT INTO `jrkj_crontab` VALUES ('867', '670501', '1443756601', '121.41.16.149', '2015-10-02 11:30:01');
INSERT INTO `jrkj_crontab` VALUES ('868', '264938', '1443757201', '121.41.16.149', '2015-10-02 11:40:01');
INSERT INTO `jrkj_crontab` VALUES ('869', '749157', '1443757802', '121.41.16.149', '2015-10-02 11:50:02');
INSERT INTO `jrkj_crontab` VALUES ('870', '48619', '1443758401', '121.41.16.149', '2015-10-02 12:00:01');
INSERT INTO `jrkj_crontab` VALUES ('871', '93779', '1443759001', '121.41.16.149', '2015-10-02 12:10:01');
INSERT INTO `jrkj_crontab` VALUES ('872', '908785', '1443759601', '121.41.16.149', '2015-10-02 12:20:01');
INSERT INTO `jrkj_crontab` VALUES ('873', '161430', '1443760201', '121.41.16.149', '2015-10-02 12:30:01');
INSERT INTO `jrkj_crontab` VALUES ('874', '21911', '1443760801', '121.41.16.149', '2015-10-02 12:40:01');
INSERT INTO `jrkj_crontab` VALUES ('875', '438083', '1443761401', '121.41.16.149', '2015-10-02 12:50:01');
INSERT INTO `jrkj_crontab` VALUES ('876', '667514', '1443762001', '121.41.16.149', '2015-10-02 13:00:01');
INSERT INTO `jrkj_crontab` VALUES ('877', '308995', '1443762601', '121.41.16.149', '2015-10-02 13:10:01');
INSERT INTO `jrkj_crontab` VALUES ('878', '245252', '1443763201', '121.41.16.149', '2015-10-02 13:20:01');
INSERT INTO `jrkj_crontab` VALUES ('879', '552006', '1443763801', '121.41.16.149', '2015-10-02 13:30:01');
INSERT INTO `jrkj_crontab` VALUES ('880', '90950', '1443764401', '121.41.16.149', '2015-10-02 13:40:01');
INSERT INTO `jrkj_crontab` VALUES ('881', '347607', '1443765001', '121.41.16.149', '2015-10-02 13:50:01');
INSERT INTO `jrkj_crontab` VALUES ('882', '554864', '1443765601', '121.41.16.149', '2015-10-02 14:00:01');
INSERT INTO `jrkj_crontab` VALUES ('883', '458403', '1443766201', '121.41.16.149', '2015-10-02 14:10:01');
INSERT INTO `jrkj_crontab` VALUES ('884', '236644', '1443766801', '121.41.16.149', '2015-10-02 14:20:01');
INSERT INTO `jrkj_crontab` VALUES ('885', '902175', '1443767401', '121.41.16.149', '2015-10-02 14:30:01');
INSERT INTO `jrkj_crontab` VALUES ('886', '768979', '1443768001', '121.41.16.149', '2015-10-02 14:40:01');
INSERT INTO `jrkj_crontab` VALUES ('887', '267334', '1443768601', '121.41.16.149', '2015-10-02 14:50:01');
INSERT INTO `jrkj_crontab` VALUES ('888', '601962', '1443769201', '121.41.16.149', '2015-10-02 15:00:01');
INSERT INTO `jrkj_crontab` VALUES ('889', '528910', '1443769801', '121.41.16.149', '2015-10-02 15:10:01');
INSERT INTO `jrkj_crontab` VALUES ('890', '898640', '1443770401', '121.41.16.149', '2015-10-02 15:20:01');
INSERT INTO `jrkj_crontab` VALUES ('891', '864331', '1443771001', '121.41.16.149', '2015-10-02 15:30:01');
INSERT INTO `jrkj_crontab` VALUES ('892', '246210', '1443771601', '121.41.16.149', '2015-10-02 15:40:01');
INSERT INTO `jrkj_crontab` VALUES ('893', '638328', '1443772201', '121.41.16.149', '2015-10-02 15:50:01');
INSERT INTO `jrkj_crontab` VALUES ('894', '879726', '1443772801', '121.41.16.149', '2015-10-02 16:00:01');
INSERT INTO `jrkj_crontab` VALUES ('895', '539879', '1443773401', '121.41.16.149', '2015-10-02 16:10:01');
INSERT INTO `jrkj_crontab` VALUES ('896', '407709', '1443774001', '121.41.16.149', '2015-10-02 16:20:01');
INSERT INTO `jrkj_crontab` VALUES ('897', '939746', '1443774601', '121.41.16.149', '2015-10-02 16:30:01');
INSERT INTO `jrkj_crontab` VALUES ('898', '290061', '1443775201', '121.41.16.149', '2015-10-02 16:40:01');
INSERT INTO `jrkj_crontab` VALUES ('899', '288012', '1443775801', '121.41.16.149', '2015-10-02 16:50:01');
INSERT INTO `jrkj_crontab` VALUES ('900', '268359', '1443776401', '121.41.16.149', '2015-10-02 17:00:01');
INSERT INTO `jrkj_crontab` VALUES ('901', '323438', '1443777001', '121.41.16.149', '2015-10-02 17:10:01');
INSERT INTO `jrkj_crontab` VALUES ('902', '323479', '1443777601', '121.41.16.149', '2015-10-02 17:20:01');
INSERT INTO `jrkj_crontab` VALUES ('903', '396924', '1443778201', '121.41.16.149', '2015-10-02 17:30:01');
INSERT INTO `jrkj_crontab` VALUES ('904', '279287', '1443778802', '121.41.16.149', '2015-10-02 17:40:02');
INSERT INTO `jrkj_crontab` VALUES ('905', '648428', '1443779401', '121.41.16.149', '2015-10-02 17:50:01');
INSERT INTO `jrkj_crontab` VALUES ('906', '560719', '1443780001', '121.41.16.149', '2015-10-02 18:00:01');
INSERT INTO `jrkj_crontab` VALUES ('907', '913467', '1443780601', '121.41.16.149', '2015-10-02 18:10:01');
INSERT INTO `jrkj_crontab` VALUES ('908', '538652', '1443781201', '121.41.16.149', '2015-10-02 18:20:01');
INSERT INTO `jrkj_crontab` VALUES ('909', '568749', '1443781801', '121.41.16.149', '2015-10-02 18:30:01');
INSERT INTO `jrkj_crontab` VALUES ('910', '458064', '1443782401', '121.41.16.149', '2015-10-02 18:40:01');
INSERT INTO `jrkj_crontab` VALUES ('911', '193627', '1443783001', '121.41.16.149', '2015-10-02 18:50:01');
INSERT INTO `jrkj_crontab` VALUES ('912', '782491', '1443783601', '121.41.16.149', '2015-10-02 19:00:01');
INSERT INTO `jrkj_crontab` VALUES ('913', '736218', '1443784201', '121.41.16.149', '2015-10-02 19:10:01');
INSERT INTO `jrkj_crontab` VALUES ('914', '22433', '1443784801', '121.41.16.149', '2015-10-02 19:20:01');
INSERT INTO `jrkj_crontab` VALUES ('915', '585599', '1443785401', '121.41.16.149', '2015-10-02 19:30:01');
INSERT INTO `jrkj_crontab` VALUES ('916', '358676', '1443786001', '121.41.16.149', '2015-10-02 19:40:01');
INSERT INTO `jrkj_crontab` VALUES ('917', '286611', '1443786601', '121.41.16.149', '2015-10-02 19:50:01');
INSERT INTO `jrkj_crontab` VALUES ('918', '743358', '1443787201', '121.41.16.149', '2015-10-02 20:00:01');
INSERT INTO `jrkj_crontab` VALUES ('919', '168051', '1443787801', '121.41.16.149', '2015-10-02 20:10:01');
INSERT INTO `jrkj_crontab` VALUES ('920', '259123', '1443788401', '121.41.16.149', '2015-10-02 20:20:01');
INSERT INTO `jrkj_crontab` VALUES ('921', '679326', '1443789001', '121.41.16.149', '2015-10-02 20:30:01');
INSERT INTO `jrkj_crontab` VALUES ('922', '854797', '1443789601', '121.41.16.149', '2015-10-02 20:40:01');
INSERT INTO `jrkj_crontab` VALUES ('923', '420804', '1443790201', '121.41.16.149', '2015-10-02 20:50:01');
INSERT INTO `jrkj_crontab` VALUES ('924', '808417', '1443790801', '121.41.16.149', '2015-10-02 21:00:01');
INSERT INTO `jrkj_crontab` VALUES ('925', '350155', '1443791401', '121.41.16.149', '2015-10-02 21:10:01');
INSERT INTO `jrkj_crontab` VALUES ('926', '881661', '1443792001', '121.41.16.149', '2015-10-02 21:20:01');
INSERT INTO `jrkj_crontab` VALUES ('927', '863130', '1443792601', '121.41.16.149', '2015-10-02 21:30:01');
INSERT INTO `jrkj_crontab` VALUES ('928', '142518', '1443793201', '121.41.16.149', '2015-10-02 21:40:01');
INSERT INTO `jrkj_crontab` VALUES ('929', '50682', '1443793801', '121.41.16.149', '2015-10-02 21:50:01');
INSERT INTO `jrkj_crontab` VALUES ('930', '840651', '1443794401', '121.41.16.149', '2015-10-02 22:00:01');
INSERT INTO `jrkj_crontab` VALUES ('931', '396934', '1443795001', '121.41.16.149', '2015-10-02 22:10:01');
INSERT INTO `jrkj_crontab` VALUES ('932', '878060', '1443795601', '121.41.16.149', '2015-10-02 22:20:01');
INSERT INTO `jrkj_crontab` VALUES ('933', '352408', '1443796201', '121.41.16.149', '2015-10-02 22:30:01');
INSERT INTO `jrkj_crontab` VALUES ('934', '192259', '1443796801', '121.41.16.149', '2015-10-02 22:40:01');
INSERT INTO `jrkj_crontab` VALUES ('935', '528851', '1443797401', '121.41.16.149', '2015-10-02 22:50:01');
INSERT INTO `jrkj_crontab` VALUES ('936', '645633', '1443798001', '121.41.16.149', '2015-10-02 23:00:01');
INSERT INTO `jrkj_crontab` VALUES ('937', '207840', '1443798601', '121.41.16.149', '2015-10-02 23:10:01');
INSERT INTO `jrkj_crontab` VALUES ('938', '86810', '1443799201', '121.41.16.149', '2015-10-02 23:20:01');
INSERT INTO `jrkj_crontab` VALUES ('939', '734169', '1443799801', '121.41.16.149', '2015-10-02 23:30:01');
INSERT INTO `jrkj_crontab` VALUES ('940', '852233', '1443800401', '121.41.16.149', '2015-10-02 23:40:01');
INSERT INTO `jrkj_crontab` VALUES ('941', '454366', '1443801001', '121.41.16.149', '2015-10-02 23:50:01');
INSERT INTO `jrkj_crontab` VALUES ('942', '60218', '1443801601', '121.41.16.149', '2015-10-03 00:00:01');
INSERT INTO `jrkj_crontab` VALUES ('943', '792096', '1443802201', '121.41.16.149', '2015-10-03 00:10:01');
INSERT INTO `jrkj_crontab` VALUES ('944', '887915', '1443802801', '121.41.16.149', '2015-10-03 00:20:01');
INSERT INTO `jrkj_crontab` VALUES ('945', '629127', '1443803401', '121.41.16.149', '2015-10-03 00:30:01');
INSERT INTO `jrkj_crontab` VALUES ('946', '500225', '1443804001', '121.41.16.149', '2015-10-03 00:40:01');
INSERT INTO `jrkj_crontab` VALUES ('947', '786039', '1443804601', '121.41.16.149', '2015-10-03 00:50:01');
INSERT INTO `jrkj_crontab` VALUES ('948', '993364', '1443805201', '121.41.16.149', '2015-10-03 01:00:01');
INSERT INTO `jrkj_crontab` VALUES ('949', '22974', '1443805801', '121.41.16.149', '2015-10-03 01:10:01');
INSERT INTO `jrkj_crontab` VALUES ('950', '63270', '1443806401', '121.41.16.149', '2015-10-03 01:20:01');
INSERT INTO `jrkj_crontab` VALUES ('951', '727386', '1443807001', '121.41.16.149', '2015-10-03 01:30:01');
INSERT INTO `jrkj_crontab` VALUES ('952', '600300', '1443807601', '121.41.16.149', '2015-10-03 01:40:01');
INSERT INTO `jrkj_crontab` VALUES ('953', '829707', '1443808201', '121.41.16.149', '2015-10-03 01:50:01');
INSERT INTO `jrkj_crontab` VALUES ('954', '262705', '1443808801', '121.41.16.149', '2015-10-03 02:00:01');
INSERT INTO `jrkj_crontab` VALUES ('955', '128164', '1443809401', '121.41.16.149', '2015-10-03 02:10:01');
INSERT INTO `jrkj_crontab` VALUES ('956', '299198', '1443810002', '121.41.16.149', '2015-10-03 02:20:02');
INSERT INTO `jrkj_crontab` VALUES ('957', '599600', '1443810601', '121.41.16.149', '2015-10-03 02:30:01');
INSERT INTO `jrkj_crontab` VALUES ('958', '371112', '1443811201', '121.41.16.149', '2015-10-03 02:40:01');
INSERT INTO `jrkj_crontab` VALUES ('959', '592493', '1443811801', '121.41.16.149', '2015-10-03 02:50:01');
INSERT INTO `jrkj_crontab` VALUES ('960', '21400', '1443812401', '121.41.16.149', '2015-10-03 03:00:01');
INSERT INTO `jrkj_crontab` VALUES ('961', '159874', '1443813001', '121.41.16.149', '2015-10-03 03:10:01');
INSERT INTO `jrkj_crontab` VALUES ('962', '681350', '1443813601', '121.41.16.149', '2015-10-03 03:20:01');
INSERT INTO `jrkj_crontab` VALUES ('963', '424098', '1443814201', '121.41.16.149', '2015-10-03 03:30:01');
INSERT INTO `jrkj_crontab` VALUES ('964', '383662', '1443814801', '121.41.16.149', '2015-10-03 03:40:01');
INSERT INTO `jrkj_crontab` VALUES ('965', '748114', '1443815401', '121.41.16.149', '2015-10-03 03:50:01');
INSERT INTO `jrkj_crontab` VALUES ('966', '146052', '1443816001', '121.41.16.149', '2015-10-03 04:00:01');
INSERT INTO `jrkj_crontab` VALUES ('967', '736442', '1443816601', '121.41.16.149', '2015-10-03 04:10:01');
INSERT INTO `jrkj_crontab` VALUES ('968', '952697', '1443817201', '121.41.16.149', '2015-10-03 04:20:01');
INSERT INTO `jrkj_crontab` VALUES ('969', '742152', '1443817801', '121.41.16.149', '2015-10-03 04:30:01');
INSERT INTO `jrkj_crontab` VALUES ('970', '117794', '1443818401', '121.41.16.149', '2015-10-03 04:40:01');
INSERT INTO `jrkj_crontab` VALUES ('971', '35670', '1443819001', '121.41.16.149', '2015-10-03 04:50:01');
INSERT INTO `jrkj_crontab` VALUES ('972', '446205', '1443819601', '121.41.16.149', '2015-10-03 05:00:01');
INSERT INTO `jrkj_crontab` VALUES ('973', '385929', '1443820201', '121.41.16.149', '2015-10-03 05:10:01');
INSERT INTO `jrkj_crontab` VALUES ('974', '33701', '1443820801', '121.41.16.149', '2015-10-03 05:20:01');
INSERT INTO `jrkj_crontab` VALUES ('975', '180759', '1443821402', '121.41.16.149', '2015-10-03 05:30:02');
INSERT INTO `jrkj_crontab` VALUES ('976', '775337', '1443822001', '121.41.16.149', '2015-10-03 05:40:01');
INSERT INTO `jrkj_crontab` VALUES ('977', '998591', '1443822601', '121.41.16.149', '2015-10-03 05:50:01');
INSERT INTO `jrkj_crontab` VALUES ('978', '666222', '1443823201', '121.41.16.149', '2015-10-03 06:00:01');
INSERT INTO `jrkj_crontab` VALUES ('979', '423283', '1443823801', '121.41.16.149', '2015-10-03 06:10:01');
INSERT INTO `jrkj_crontab` VALUES ('980', '742974', '1443824401', '121.41.16.149', '2015-10-03 06:20:01');
INSERT INTO `jrkj_crontab` VALUES ('981', '720509', '1443825001', '121.41.16.149', '2015-10-03 06:30:01');
INSERT INTO `jrkj_crontab` VALUES ('982', '792732', '1443825601', '121.41.16.149', '2015-10-03 06:40:01');
INSERT INTO `jrkj_crontab` VALUES ('983', '167787', '1443826201', '121.41.16.149', '2015-10-03 06:50:01');
INSERT INTO `jrkj_crontab` VALUES ('984', '907421', '1443826801', '121.41.16.149', '2015-10-03 07:00:01');
INSERT INTO `jrkj_crontab` VALUES ('985', '327096', '1443827401', '121.41.16.149', '2015-10-03 07:10:01');
INSERT INTO `jrkj_crontab` VALUES ('986', '733240', '1443828001', '121.41.16.149', '2015-10-03 07:20:01');
INSERT INTO `jrkj_crontab` VALUES ('987', '460979', '1443828601', '121.41.16.149', '2015-10-03 07:30:01');
INSERT INTO `jrkj_crontab` VALUES ('988', '355703', '1443829201', '121.41.16.149', '2015-10-03 07:40:01');
INSERT INTO `jrkj_crontab` VALUES ('989', '394407', '1443829801', '121.41.16.149', '2015-10-03 07:50:01');
INSERT INTO `jrkj_crontab` VALUES ('990', '957640', '1443830401', '121.41.16.149', '2015-10-03 08:00:01');
INSERT INTO `jrkj_crontab` VALUES ('991', '372904', '1443831001', '121.41.16.149', '2015-10-03 08:10:01');
INSERT INTO `jrkj_crontab` VALUES ('992', '946224', '1443831601', '121.41.16.149', '2015-10-03 08:20:01');
INSERT INTO `jrkj_crontab` VALUES ('993', '713092', '1443832201', '121.41.16.149', '2015-10-03 08:30:01');
INSERT INTO `jrkj_crontab` VALUES ('994', '585761', '1443832801', '121.41.16.149', '2015-10-03 08:40:01');
INSERT INTO `jrkj_crontab` VALUES ('995', '30516', '1443833401', '121.41.16.149', '2015-10-03 08:50:01');
INSERT INTO `jrkj_crontab` VALUES ('996', '778919', '1443834001', '121.41.16.149', '2015-10-03 09:00:01');
INSERT INTO `jrkj_crontab` VALUES ('997', '294492', '1443834601', '121.41.16.149', '2015-10-03 09:10:01');
INSERT INTO `jrkj_crontab` VALUES ('998', '597027', '1443835201', '121.41.16.149', '2015-10-03 09:20:01');
INSERT INTO `jrkj_crontab` VALUES ('999', '178030', '1443835801', '121.41.16.149', '2015-10-03 09:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1000', '982573', '1443836401', '121.41.16.149', '2015-10-03 09:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1001', '625859', '1443837001', '121.41.16.149', '2015-10-03 09:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1002', '371496', '1443837601', '121.41.16.149', '2015-10-03 10:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1003', '484646', '1443838201', '121.41.16.149', '2015-10-03 10:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1004', '599566', '1443838801', '121.41.16.149', '2015-10-03 10:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1005', '653763', '1443839401', '121.41.16.149', '2015-10-03 10:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1006', '523601', '1443840001', '121.41.16.149', '2015-10-03 10:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1007', '815886', '1443840601', '121.41.16.149', '2015-10-03 10:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1008', '768841', '1443841201', '121.41.16.149', '2015-10-03 11:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1009', '427274', '1443841801', '121.41.16.149', '2015-10-03 11:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1010', '135324', '1443842401', '121.41.16.149', '2015-10-03 11:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1011', '445484', '1443843001', '121.41.16.149', '2015-10-03 11:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1012', '764539', '1443843601', '121.41.16.149', '2015-10-03 11:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1013', '23599', '1443844201', '121.41.16.149', '2015-10-03 11:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1014', '528198', '1443844801', '121.41.16.149', '2015-10-03 12:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1015', '752098', '1443845401', '121.41.16.149', '2015-10-03 12:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1016', '961527', '1443846001', '121.41.16.149', '2015-10-03 12:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1017', '38194', '1443846601', '121.41.16.149', '2015-10-03 12:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1018', '788882', '1443847201', '121.41.16.149', '2015-10-03 12:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1019', '523767', '1443847801', '121.41.16.149', '2015-10-03 12:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1020', '317620', '1443848401', '121.41.16.149', '2015-10-03 13:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1021', '787474', '1443849001', '121.41.16.149', '2015-10-03 13:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1022', '713319', '1443849601', '121.41.16.149', '2015-10-03 13:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1023', '324278', '1443850201', '121.41.16.149', '2015-10-03 13:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1024', '814018', '1443850801', '121.41.16.149', '2015-10-03 13:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1025', '929179', '1443851401', '121.41.16.149', '2015-10-03 13:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1026', '790393', '1443852001', '121.41.16.149', '2015-10-03 14:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1027', '97151', '1443852601', '121.41.16.149', '2015-10-03 14:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1028', '845411', '1443853201', '121.41.16.149', '2015-10-03 14:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1029', '528768', '1443853801', '121.41.16.149', '2015-10-03 14:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1030', '995271', '1443854401', '121.41.16.149', '2015-10-03 14:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1031', '230958', '1443855001', '121.41.16.149', '2015-10-03 14:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1032', '863407', '1443855601', '121.41.16.149', '2015-10-03 15:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1033', '532869', '1443856201', '121.41.16.149', '2015-10-03 15:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1034', '101658', '1443856801', '121.41.16.149', '2015-10-03 15:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1035', '954101', '1443857401', '121.41.16.149', '2015-10-03 15:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1036', '530986', '1443858001', '121.41.16.149', '2015-10-03 15:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1037', '72916', '1443858601', '121.41.16.149', '2015-10-03 15:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1038', '470892', '1443859201', '121.41.16.149', '2015-10-03 16:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1039', '664356', '1443859801', '121.41.16.149', '2015-10-03 16:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1040', '682388', '1443860401', '121.41.16.149', '2015-10-03 16:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1041', '764076', '1443861001', '121.41.16.149', '2015-10-03 16:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1042', '943336', '1443861601', '121.41.16.149', '2015-10-03 16:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1043', '575188', '1443862201', '121.41.16.149', '2015-10-03 16:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1044', '975618', '1443862801', '121.41.16.149', '2015-10-03 17:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1045', '484550', '1443863401', '121.41.16.149', '2015-10-03 17:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1046', '111399', '1443864001', '121.41.16.149', '2015-10-03 17:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1047', '730639', '1443864601', '121.41.16.149', '2015-10-03 17:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1048', '840599', '1443865201', '121.41.16.149', '2015-10-03 17:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1049', '675322', '1443865801', '121.41.16.149', '2015-10-03 17:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1050', '426601', '1443866401', '121.41.16.149', '2015-10-03 18:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1051', '663907', '1443867001', '121.41.16.149', '2015-10-03 18:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1052', '940222', '1443867601', '121.41.16.149', '2015-10-03 18:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1053', '76189', '1443868201', '121.41.16.149', '2015-10-03 18:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1054', '714907', '1443868801', '121.41.16.149', '2015-10-03 18:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1055', '716083', '1443869401', '121.41.16.149', '2015-10-03 18:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1056', '558212', '1443870001', '121.41.16.149', '2015-10-03 19:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1057', '668780', '1443870601', '121.41.16.149', '2015-10-03 19:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1058', '934586', '1443871201', '121.41.16.149', '2015-10-03 19:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1059', '157188', '1443871801', '121.41.16.149', '2015-10-03 19:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1060', '74236', '1443872401', '121.41.16.149', '2015-10-03 19:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1061', '755466', '1443873001', '121.41.16.149', '2015-10-03 19:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1062', '159597', '1443873602', '121.41.16.149', '2015-10-03 20:00:02');
INSERT INTO `jrkj_crontab` VALUES ('1063', '618717', '1443874201', '121.41.16.149', '2015-10-03 20:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1064', '424798', '1443874801', '121.41.16.149', '2015-10-03 20:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1065', '985118', '1443875401', '121.41.16.149', '2015-10-03 20:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1066', '986156', '1443876001', '121.41.16.149', '2015-10-03 20:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1067', '161800', '1443876601', '121.41.16.149', '2015-10-03 20:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1068', '264735', '1443877201', '121.41.16.149', '2015-10-03 21:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1069', '336436', '1443877801', '121.41.16.149', '2015-10-03 21:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1070', '908473', '1443878401', '121.41.16.149', '2015-10-03 21:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1071', '914523', '1443879001', '121.41.16.149', '2015-10-03 21:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1072', '919062', '1443879601', '121.41.16.149', '2015-10-03 21:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1073', '641353', '1443880201', '121.41.16.149', '2015-10-03 21:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1074', '736315', '1443880801', '121.41.16.149', '2015-10-03 22:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1075', '646193', '1443881401', '121.41.16.149', '2015-10-03 22:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1076', '953977', '1443882001', '121.41.16.149', '2015-10-03 22:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1077', '360640', '1443882601', '121.41.16.149', '2015-10-03 22:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1078', '358778', '1443883201', '121.41.16.149', '2015-10-03 22:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1079', '839439', '1443883801', '121.41.16.149', '2015-10-03 22:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1080', '209178', '1443884401', '121.41.16.149', '2015-10-03 23:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1081', '20988', '1443885001', '121.41.16.149', '2015-10-03 23:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1082', '876211', '1443885601', '121.41.16.149', '2015-10-03 23:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1083', '282378', '1443886201', '121.41.16.149', '2015-10-03 23:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1084', '293848', '1443886801', '121.41.16.149', '2015-10-03 23:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1085', '448416', '1443887401', '121.41.16.149', '2015-10-03 23:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1086', '638654', '1443888001', '121.41.16.149', '2015-10-04 00:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1087', '825353', '1443888601', '121.41.16.149', '2015-10-04 00:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1088', '988755', '1443889201', '121.41.16.149', '2015-10-04 00:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1089', '585381', '1443889801', '121.41.16.149', '2015-10-04 00:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1090', '776037', '1443890401', '121.41.16.149', '2015-10-04 00:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1091', '458064', '1443891001', '121.41.16.149', '2015-10-04 00:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1092', '774653', '1443891601', '121.41.16.149', '2015-10-04 01:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1093', '70103', '1443892201', '121.41.16.149', '2015-10-04 01:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1094', '694958', '1443892801', '121.41.16.149', '2015-10-04 01:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1095', '67578', '1443893401', '121.41.16.149', '2015-10-04 01:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1096', '796330', '1443894001', '121.41.16.149', '2015-10-04 01:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1097', '302235', '1443894601', '121.41.16.149', '2015-10-04 01:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1098', '112474', '1443895201', '121.41.16.149', '2015-10-04 02:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1099', '941798', '1443895801', '121.41.16.149', '2015-10-04 02:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1100', '212900', '1443896401', '121.41.16.149', '2015-10-04 02:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1101', '689176', '1443897001', '121.41.16.149', '2015-10-04 02:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1102', '812117', '1443897601', '121.41.16.149', '2015-10-04 02:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1103', '187996', '1443898201', '121.41.16.149', '2015-10-04 02:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1104', '793894', '1443898801', '121.41.16.149', '2015-10-04 03:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1105', '689942', '1443899401', '121.41.16.149', '2015-10-04 03:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1106', '815345', '1443900001', '121.41.16.149', '2015-10-04 03:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1107', '463114', '1443900601', '121.41.16.149', '2015-10-04 03:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1108', '684982', '1443901201', '121.41.16.149', '2015-10-04 03:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1109', '528616', '1443901801', '121.41.16.149', '2015-10-04 03:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1110', '418369', '1443902401', '121.41.16.149', '2015-10-04 04:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1111', '869070', '1443903001', '121.41.16.149', '2015-10-04 04:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1112', '804882', '1443903601', '121.41.16.149', '2015-10-04 04:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1113', '440343', '1443904201', '121.41.16.149', '2015-10-04 04:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1114', '620313', '1443904801', '121.41.16.149', '2015-10-04 04:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1115', '649466', '1443905402', '121.41.16.149', '2015-10-04 04:50:02');
INSERT INTO `jrkj_crontab` VALUES ('1116', '124281', '1443906001', '121.41.16.149', '2015-10-04 05:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1117', '149556', '1443906601', '121.41.16.149', '2015-10-04 05:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1118', '900349', '1443907201', '121.41.16.149', '2015-10-04 05:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1119', '608491', '1443907801', '121.41.16.149', '2015-10-04 05:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1120', '345275', '1443908401', '121.41.16.149', '2015-10-04 05:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1121', '343409', '1443909001', '121.41.16.149', '2015-10-04 05:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1122', '809652', '1443909601', '121.41.16.149', '2015-10-04 06:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1123', '667756', '1443910201', '121.41.16.149', '2015-10-04 06:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1124', '814056', '1443910801', '121.41.16.149', '2015-10-04 06:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1125', '453792', '1443911401', '121.41.16.149', '2015-10-04 06:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1126', '155364', '1443912001', '121.41.16.149', '2015-10-04 06:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1127', '108398', '1443912601', '121.41.16.149', '2015-10-04 06:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1128', '909291', '1443913201', '121.41.16.149', '2015-10-04 07:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1129', '47373', '1443913801', '121.41.16.149', '2015-10-04 07:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1130', '664534', '1443914401', '121.41.16.149', '2015-10-04 07:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1131', '732445', '1443915001', '121.41.16.149', '2015-10-04 07:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1132', '214240', '1443915601', '121.41.16.149', '2015-10-04 07:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1133', '669119', '1443916201', '121.41.16.149', '2015-10-04 07:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1134', '378200', '1443916801', '121.41.16.149', '2015-10-04 08:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1135', '922067', '1443917401', '121.41.16.149', '2015-10-04 08:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1136', '625195', '1443918001', '121.41.16.149', '2015-10-04 08:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1137', '527003', '1443918601', '121.41.16.149', '2015-10-04 08:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1138', '50647', '1443919201', '121.41.16.149', '2015-10-04 08:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1139', '720582', '1443919801', '121.41.16.149', '2015-10-04 08:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1140', '585839', '1443920401', '121.41.16.149', '2015-10-04 09:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1141', '842768', '1443921001', '121.41.16.149', '2015-10-04 09:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1142', '540888', '1443921601', '121.41.16.149', '2015-10-04 09:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1143', '837322', '1443922201', '121.41.16.149', '2015-10-04 09:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1144', '635333', '1443922801', '121.41.16.149', '2015-10-04 09:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1145', '634109', '1443923401', '121.41.16.149', '2015-10-04 09:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1146', '838358', '1443924001', '121.41.16.149', '2015-10-04 10:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1147', '972569', '1443924601', '121.41.16.149', '2015-10-04 10:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1148', '278352', '1443925201', '121.41.16.149', '2015-10-04 10:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1149', '777155', '1443925801', '121.41.16.149', '2015-10-04 10:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1150', '636094', '1443926401', '121.41.16.149', '2015-10-04 10:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1151', '443516', '1443927001', '121.41.16.149', '2015-10-04 10:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1152', '69896', '1443927601', '121.41.16.149', '2015-10-04 11:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1153', '907366', '1443928201', '121.41.16.149', '2015-10-04 11:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1154', '213569', '1443928801', '121.41.16.149', '2015-10-04 11:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1155', '18215', '1443929401', '121.41.16.149', '2015-10-04 11:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1156', '518667', '1443930001', '121.41.16.149', '2015-10-04 11:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1157', '478205', '1443930601', '121.41.16.149', '2015-10-04 11:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1158', '105522', '1443931201', '121.41.16.149', '2015-10-04 12:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1159', '724561', '1443931801', '121.41.16.149', '2015-10-04 12:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1160', '572400', '1443932401', '121.41.16.149', '2015-10-04 12:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1161', '915437', '1443933001', '121.41.16.149', '2015-10-04 12:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1162', '837543', '1443933601', '121.41.16.149', '2015-10-04 12:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1163', '14939', '1443934201', '121.41.16.149', '2015-10-04 12:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1164', '883810', '1443934801', '121.41.16.149', '2015-10-04 13:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1165', '994202', '1443935401', '121.41.16.149', '2015-10-04 13:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1166', '268043', '1443936002', '121.41.16.149', '2015-10-04 13:20:02');
INSERT INTO `jrkj_crontab` VALUES ('1167', '555979', '1443936601', '121.41.16.149', '2015-10-04 13:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1168', '537170', '1443937201', '121.41.16.149', '2015-10-04 13:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1169', '890932', '1443937801', '121.41.16.149', '2015-10-04 13:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1170', '110846', '1443938401', '121.41.16.149', '2015-10-04 14:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1171', '923309', '1443939001', '121.41.16.149', '2015-10-04 14:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1172', '456222', '1443939601', '121.41.16.149', '2015-10-04 14:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1173', '38094', '1443940201', '121.41.16.149', '2015-10-04 14:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1174', '894581', '1443940801', '121.41.16.149', '2015-10-04 14:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1175', '412358', '1443941401', '121.41.16.149', '2015-10-04 14:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1176', '20665', '1443942001', '121.41.16.149', '2015-10-04 15:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1177', '311125', '1443942601', '121.41.16.149', '2015-10-04 15:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1178', '395015', '1443943201', '121.41.16.149', '2015-10-04 15:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1179', '376771', '1443943801', '121.41.16.149', '2015-10-04 15:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1180', '289813', '1443944401', '121.41.16.149', '2015-10-04 15:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1181', '51440', '1443945001', '121.41.16.149', '2015-10-04 15:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1182', '560651', '1443945601', '121.41.16.149', '2015-10-04 16:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1183', '212542', '1443946201', '121.41.16.149', '2015-10-04 16:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1184', '237793', '1443946801', '121.41.16.149', '2015-10-04 16:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1185', '723352', '1443947401', '121.41.16.149', '2015-10-04 16:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1186', '106728', '1443948001', '121.41.16.149', '2015-10-04 16:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1187', '586176', '1443948601', '121.41.16.149', '2015-10-04 16:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1188', '507965', '1443949201', '121.41.16.149', '2015-10-04 17:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1189', '78683', '1443949801', '121.41.16.149', '2015-10-04 17:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1190', '79151', '1443950401', '121.41.16.149', '2015-10-04 17:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1191', '163212', '1443951001', '121.41.16.149', '2015-10-04 17:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1192', '88438', '1443951601', '121.41.16.149', '2015-10-04 17:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1193', '51643', '1443952201', '121.41.16.149', '2015-10-04 17:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1194', '431092', '1443952801', '121.41.16.149', '2015-10-04 18:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1195', '473661', '1443953401', '121.41.16.149', '2015-10-04 18:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1196', '654342', '1443954001', '121.41.16.149', '2015-10-04 18:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1197', '366550', '1443954601', '121.41.16.149', '2015-10-04 18:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1198', '403060', '1443955201', '121.41.16.149', '2015-10-04 18:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1199', '393553', '1443955801', '121.41.16.149', '2015-10-04 18:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1200', '593771', '1443956401', '121.41.16.149', '2015-10-04 19:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1201', '19188', '1443957002', '121.41.16.149', '2015-10-04 19:10:02');
INSERT INTO `jrkj_crontab` VALUES ('1202', '375459', '1443957601', '121.41.16.149', '2015-10-04 19:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1203', '571196', '1443958201', '121.41.16.149', '2015-10-04 19:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1204', '200083', '1443958801', '121.41.16.149', '2015-10-04 19:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1205', '945005', '1443959401', '121.41.16.149', '2015-10-04 19:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1206', '641573', '1443960001', '121.41.16.149', '2015-10-04 20:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1207', '112193', '1443960601', '121.41.16.149', '2015-10-04 20:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1208', '67771', '1443961201', '121.41.16.149', '2015-10-04 20:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1209', '321174', '1443961801', '121.41.16.149', '2015-10-04 20:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1210', '393905', '1443962401', '121.41.16.149', '2015-10-04 20:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1211', '302935', '1443963001', '121.41.16.149', '2015-10-04 20:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1212', '825220', '1443963601', '121.41.16.149', '2015-10-04 21:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1213', '541147', '1443964201', '121.41.16.149', '2015-10-04 21:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1214', '767516', '1443964801', '121.41.16.149', '2015-10-04 21:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1215', '831779', '1443965401', '121.41.16.149', '2015-10-04 21:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1216', '304424', '1443966001', '121.41.16.149', '2015-10-04 21:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1217', '138209', '1443966601', '121.41.16.149', '2015-10-04 21:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1218', '717251', '1443967201', '121.41.16.149', '2015-10-04 22:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1219', '884497', '1443967802', '121.41.16.149', '2015-10-04 22:10:02');
INSERT INTO `jrkj_crontab` VALUES ('1220', '198762', '1443968401', '121.41.16.149', '2015-10-04 22:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1221', '457183', '1443969001', '121.41.16.149', '2015-10-04 22:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1222', '796102', '1443969601', '121.41.16.149', '2015-10-04 22:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1223', '304856', '1443970201', '121.41.16.149', '2015-10-04 22:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1224', '310875', '1443970801', '121.41.16.149', '2015-10-04 23:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1225', '141313', '1443971401', '121.41.16.149', '2015-10-04 23:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1226', '942451', '1443972001', '121.41.16.149', '2015-10-04 23:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1227', '80578', '1443972601', '121.41.16.149', '2015-10-04 23:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1228', '571536', '1443973201', '121.41.16.149', '2015-10-04 23:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1229', '589108', '1443973801', '121.41.16.149', '2015-10-04 23:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1230', '715909', '1443974401', '121.41.16.149', '2015-10-05 00:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1231', '776187', '1443975001', '121.41.16.149', '2015-10-05 00:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1232', '830787', '1443975601', '121.41.16.149', '2015-10-05 00:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1233', '787887', '1443976201', '121.41.16.149', '2015-10-05 00:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1234', '377906', '1443976801', '121.41.16.149', '2015-10-05 00:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1235', '775038', '1443977401', '121.41.16.149', '2015-10-05 00:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1236', '217750', '1443978001', '121.41.16.149', '2015-10-05 01:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1237', '186409', '1443978601', '121.41.16.149', '2015-10-05 01:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1238', '300523', '1443979201', '121.41.16.149', '2015-10-05 01:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1239', '790597', '1443979801', '121.41.16.149', '2015-10-05 01:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1240', '19211', '1443980401', '121.41.16.149', '2015-10-05 01:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1241', '397810', '1443981001', '121.41.16.149', '2015-10-05 01:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1242', '812528', '1443981601', '121.41.16.149', '2015-10-05 02:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1243', '819732', '1443982201', '121.41.16.149', '2015-10-05 02:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1244', '75172', '1443982801', '121.41.16.149', '2015-10-05 02:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1245', '999250', '1443983401', '121.41.16.149', '2015-10-05 02:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1246', '914954', '1443984001', '121.41.16.149', '2015-10-05 02:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1247', '924668', '1443984601', '121.41.16.149', '2015-10-05 02:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1248', '744733', '1443985201', '121.41.16.149', '2015-10-05 03:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1249', '263712', '1443985801', '121.41.16.149', '2015-10-05 03:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1250', '479870', '1443986401', '121.41.16.149', '2015-10-05 03:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1251', '29879', '1443987001', '121.41.16.149', '2015-10-05 03:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1252', '231180', '1443987601', '121.41.16.149', '2015-10-05 03:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1253', '629055', '1443988201', '121.41.16.149', '2015-10-05 03:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1254', '327505', '1443988802', '121.41.16.149', '2015-10-05 04:00:02');
INSERT INTO `jrkj_crontab` VALUES ('1255', '551214', '1443989401', '121.41.16.149', '2015-10-05 04:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1256', '575627', '1443990001', '121.41.16.149', '2015-10-05 04:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1257', '95961', '1443990601', '121.41.16.149', '2015-10-05 04:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1258', '381214', '1443991201', '121.41.16.149', '2015-10-05 04:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1259', '130268', '1443991801', '121.41.16.149', '2015-10-05 04:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1260', '387218', '1443992401', '121.41.16.149', '2015-10-05 05:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1261', '224462', '1443993001', '121.41.16.149', '2015-10-05 05:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1262', '862058', '1443993601', '121.41.16.149', '2015-10-05 05:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1263', '372017', '1443994201', '121.41.16.149', '2015-10-05 05:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1264', '25233', '1443994801', '121.41.16.149', '2015-10-05 05:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1265', '951165', '1443995401', '121.41.16.149', '2015-10-05 05:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1266', '360557', '1443996001', '121.41.16.149', '2015-10-05 06:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1267', '633663', '1443996601', '121.41.16.149', '2015-10-05 06:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1268', '462474', '1443997201', '121.41.16.149', '2015-10-05 06:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1269', '747700', '1443997801', '121.41.16.149', '2015-10-05 06:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1270', '964720', '1443998401', '121.41.16.149', '2015-10-05 06:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1271', '806599', '1443999001', '121.41.16.149', '2015-10-05 06:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1272', '467661', '1443999601', '121.41.16.149', '2015-10-05 07:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1273', '300405', '1444000201', '121.41.16.149', '2015-10-05 07:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1274', '938777', '1444000801', '121.41.16.149', '2015-10-05 07:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1275', '123401', '1444001401', '121.41.16.149', '2015-10-05 07:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1276', '858922', '1444002001', '121.41.16.149', '2015-10-05 07:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1277', '826201', '1444002601', '121.41.16.149', '2015-10-05 07:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1278', '739862', '1444003201', '121.41.16.149', '2015-10-05 08:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1279', '429675', '1444003801', '121.41.16.149', '2015-10-05 08:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1280', '734052', '1444004401', '121.41.16.149', '2015-10-05 08:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1281', '292984', '1444005001', '121.41.16.149', '2015-10-05 08:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1282', '893923', '1444005601', '121.41.16.149', '2015-10-05 08:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1283', '715560', '1444006201', '121.41.16.149', '2015-10-05 08:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1284', '295438', '1444006801', '121.41.16.149', '2015-10-05 09:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1285', '575987', '1444007401', '121.41.16.149', '2015-10-05 09:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1286', '854105', '1444008001', '121.41.16.149', '2015-10-05 09:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1287', '959130', '1444008601', '121.41.16.149', '2015-10-05 09:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1288', '874620', '1444009202', '121.41.16.149', '2015-10-05 09:40:02');
INSERT INTO `jrkj_crontab` VALUES ('1289', '151001', '1444009801', '121.41.16.149', '2015-10-05 09:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1290', '787438', '1444010401', '121.41.16.149', '2015-10-05 10:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1291', '896328', '1444011001', '121.41.16.149', '2015-10-05 10:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1292', '943079', '1444011601', '121.41.16.149', '2015-10-05 10:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1293', '945660', '1444012201', '121.41.16.149', '2015-10-05 10:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1294', '107409', '1444012801', '121.41.16.149', '2015-10-05 10:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1295', '840469', '1444013401', '121.41.16.149', '2015-10-05 10:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1296', '362577', '1444014001', '121.41.16.149', '2015-10-05 11:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1297', '475748', '1444014601', '121.41.16.149', '2015-10-05 11:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1298', '357765', '1444015201', '121.41.16.149', '2015-10-05 11:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1299', '902353', '1444015801', '121.41.16.149', '2015-10-05 11:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1300', '453138', '1444016401', '121.41.16.149', '2015-10-05 11:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1301', '565767', '1444019402', '121.41.16.149', '2015-10-05 12:30:02');
INSERT INTO `jrkj_crontab` VALUES ('1302', '644070', '1444020001', '121.41.16.149', '2015-10-05 12:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1303', '668640', '1444020601', '121.41.16.149', '2015-10-05 12:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1304', '505961', '1444021201', '121.41.16.149', '2015-10-05 13:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1305', '492609', '1444021801', '121.41.16.149', '2015-10-05 13:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1306', '758542', '1444022401', '121.41.16.149', '2015-10-05 13:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1307', '806850', '1444023001', '121.41.16.149', '2015-10-05 13:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1308', '29385', '1444023601', '121.41.16.149', '2015-10-05 13:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1309', '124989', '1444024201', '121.41.16.149', '2015-10-05 13:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1310', '962898', '1444024801', '121.41.16.149', '2015-10-05 14:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1311', '881327', '1444025401', '121.41.16.149', '2015-10-05 14:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1312', '66193', '1444026001', '121.41.16.149', '2015-10-05 14:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1313', '817626', '1444026601', '121.41.16.149', '2015-10-05 14:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1314', '574816', '1444027201', '121.41.16.149', '2015-10-05 14:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1315', '942865', '1444027801', '121.41.16.149', '2015-10-05 14:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1316', '460169', '1444028401', '121.41.16.149', '2015-10-05 15:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1317', '642350', '1444029001', '121.41.16.149', '2015-10-05 15:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1318', '563359', '1444029601', '121.41.16.149', '2015-10-05 15:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1319', '762274', '1444030201', '121.41.16.149', '2015-10-05 15:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1320', '825391', '1444030801', '121.41.16.149', '2015-10-05 15:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1321', '939022', '1444031401', '121.41.16.149', '2015-10-05 15:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1322', '97871', '1444032001', '121.41.16.149', '2015-10-05 16:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1323', '766022', '1444032601', '121.41.16.149', '2015-10-05 16:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1324', '435151', '1444033201', '121.41.16.149', '2015-10-05 16:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1325', '474980', '1444033801', '121.41.16.149', '2015-10-05 16:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1326', '710904', '1444034401', '121.41.16.149', '2015-10-05 16:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1327', '675203', '1444035001', '121.41.16.149', '2015-10-05 16:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1328', '682293', '1444035601', '121.41.16.149', '2015-10-05 17:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1329', '735463', '1444036201', '121.41.16.149', '2015-10-05 17:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1330', '825876', '1444036801', '121.41.16.149', '2015-10-05 17:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1331', '709085', '1444037401', '121.41.16.149', '2015-10-05 17:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1332', '900622', '1444038001', '121.41.16.149', '2015-10-05 17:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1333', '420300', '1444038601', '121.41.16.149', '2015-10-05 17:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1334', '435551', '1444039201', '121.41.16.149', '2015-10-05 18:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1335', '229274', '1444039801', '121.41.16.149', '2015-10-05 18:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1336', '63783', '1444040402', '121.41.16.149', '2015-10-05 18:20:02');
INSERT INTO `jrkj_crontab` VALUES ('1337', '612544', '1444041001', '121.41.16.149', '2015-10-05 18:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1338', '580365', '1444041601', '121.41.16.149', '2015-10-05 18:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1339', '196494', '1444042201', '121.41.16.149', '2015-10-05 18:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1340', '461678', '1444042801', '121.41.16.149', '2015-10-05 19:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1341', '489659', '1444043401', '121.41.16.149', '2015-10-05 19:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1342', '283347', '1444044001', '121.41.16.149', '2015-10-05 19:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1343', '864042', '1444044601', '121.41.16.149', '2015-10-05 19:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1344', '821947', '1444045201', '121.41.16.149', '2015-10-05 19:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1345', '332051', '1444045801', '121.41.16.149', '2015-10-05 19:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1346', '695440', '1444046401', '121.41.16.149', '2015-10-05 20:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1347', '903741', '1444047001', '121.41.16.149', '2015-10-05 20:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1348', '192711', '1444047601', '121.41.16.149', '2015-10-05 20:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1349', '602310', '1444048201', '121.41.16.149', '2015-10-05 20:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1350', '567850', '1444048801', '121.41.16.149', '2015-10-05 20:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1351', '193872', '1444049401', '121.41.16.149', '2015-10-05 20:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1352', '331930', '1444050001', '121.41.16.149', '2015-10-05 21:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1353', '403828', '1444050601', '121.41.16.149', '2015-10-05 21:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1354', '728169', '1444051201', '121.41.16.149', '2015-10-05 21:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1355', '923695', '1444051801', '121.41.16.149', '2015-10-05 21:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1356', '461539', '1444052401', '121.41.16.149', '2015-10-05 21:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1357', '601247', '1444053001', '121.41.16.149', '2015-10-05 21:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1358', '960452', '1444053601', '121.41.16.149', '2015-10-05 22:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1359', '718070', '1444054201', '121.41.16.149', '2015-10-05 22:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1360', '653963', '1444054801', '121.41.16.149', '2015-10-05 22:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1361', '742399', '1444055401', '121.41.16.149', '2015-10-05 22:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1362', '446692', '1444056001', '121.41.16.149', '2015-10-05 22:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1363', '725136', '1444056601', '121.41.16.149', '2015-10-05 22:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1364', '625107', '1444057201', '121.41.16.149', '2015-10-05 23:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1365', '877302', '1444057801', '121.41.16.149', '2015-10-05 23:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1366', '620459', '1444058401', '121.41.16.149', '2015-10-05 23:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1367', '961760', '1444059001', '121.41.16.149', '2015-10-05 23:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1368', '729719', '1444059601', '121.41.16.149', '2015-10-05 23:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1369', '918908', '1444060201', '121.41.16.149', '2015-10-05 23:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1370', '969010', '1444060802', '121.41.16.149', '2015-10-06 00:00:02');
INSERT INTO `jrkj_crontab` VALUES ('1371', '32693', '1444061401', '121.41.16.149', '2015-10-06 00:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1372', '43190', '1444062001', '121.41.16.149', '2015-10-06 00:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1373', '200365', '1444062601', '121.41.16.149', '2015-10-06 00:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1374', '505817', '1444063201', '121.41.16.149', '2015-10-06 00:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1375', '104794', '1444063801', '121.41.16.149', '2015-10-06 00:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1376', '735289', '1444064401', '121.41.16.149', '2015-10-06 01:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1377', '508808', '1444065001', '121.41.16.149', '2015-10-06 01:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1378', '687368', '1444065601', '121.41.16.149', '2015-10-06 01:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1379', '516394', '1444066201', '121.41.16.149', '2015-10-06 01:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1380', '528361', '1444066801', '121.41.16.149', '2015-10-06 01:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1381', '488732', '1444067401', '121.41.16.149', '2015-10-06 01:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1382', '110689', '1444068001', '121.41.16.149', '2015-10-06 02:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1383', '714733', '1444068601', '121.41.16.149', '2015-10-06 02:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1384', '787035', '1444069201', '121.41.16.149', '2015-10-06 02:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1385', '438639', '1444069801', '121.41.16.149', '2015-10-06 02:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1386', '989839', '1444070401', '121.41.16.149', '2015-10-06 02:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1387', '143624', '1444071002', '121.41.16.149', '2015-10-06 02:50:02');
INSERT INTO `jrkj_crontab` VALUES ('1388', '63252', '1444071601', '121.41.16.149', '2015-10-06 03:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1389', '317321', '1444072201', '121.41.16.149', '2015-10-06 03:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1390', '113901', '1444072801', '121.41.16.149', '2015-10-06 03:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1391', '427925', '1444073401', '121.41.16.149', '2015-10-06 03:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1392', '76574', '1444074001', '121.41.16.149', '2015-10-06 03:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1393', '69237', '1444074601', '121.41.16.149', '2015-10-06 03:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1394', '673848', '1444075201', '121.41.16.149', '2015-10-06 04:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1395', '215246', '1444075801', '121.41.16.149', '2015-10-06 04:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1396', '938308', '1444076401', '121.41.16.149', '2015-10-06 04:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1397', '251284', '1444077001', '121.41.16.149', '2015-10-06 04:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1398', '91140', '1444077601', '121.41.16.149', '2015-10-06 04:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1399', '545486', '1444078201', '121.41.16.149', '2015-10-06 04:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1400', '398610', '1444078801', '121.41.16.149', '2015-10-06 05:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1401', '247975', '1444079401', '121.41.16.149', '2015-10-06 05:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1402', '31161', '1444080001', '121.41.16.149', '2015-10-06 05:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1403', '947736', '1444080601', '121.41.16.149', '2015-10-06 05:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1404', '747291', '1444081201', '121.41.16.149', '2015-10-06 05:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1405', '263728', '1444081801', '121.41.16.149', '2015-10-06 05:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1406', '250483', '1444082401', '121.41.16.149', '2015-10-06 06:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1407', '901661', '1444083001', '121.41.16.149', '2015-10-06 06:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1408', '658222', '1444083601', '121.41.16.149', '2015-10-06 06:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1409', '82926', '1444084201', '121.41.16.149', '2015-10-06 06:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1410', '861503', '1444084801', '121.41.16.149', '2015-10-06 06:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1411', '221526', '1444085401', '121.41.16.149', '2015-10-06 06:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1412', '873817', '1444086001', '121.41.16.149', '2015-10-06 07:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1413', '410947', '1444086601', '121.41.16.149', '2015-10-06 07:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1414', '697366', '1444087201', '121.41.16.149', '2015-10-06 07:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1415', '759545', '1444087801', '121.41.16.149', '2015-10-06 07:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1416', '150802', '1444088401', '121.41.16.149', '2015-10-06 07:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1417', '90330', '1444089001', '121.41.16.149', '2015-10-06 07:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1418', '926829', '1444089601', '121.41.16.149', '2015-10-06 08:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1419', '827072', '1444090201', '121.41.16.149', '2015-10-06 08:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1420', '656612', '1444090801', '121.41.16.149', '2015-10-06 08:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1421', '624168', '1444091401', '121.41.16.149', '2015-10-06 08:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1422', '631006', '1444092002', '121.41.16.149', '2015-10-06 08:40:02');
INSERT INTO `jrkj_crontab` VALUES ('1423', '516305', '1444092601', '121.41.16.149', '2015-10-06 08:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1424', '883632', '1444093201', '121.41.16.149', '2015-10-06 09:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1425', '34703', '1444093801', '121.41.16.149', '2015-10-06 09:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1426', '510653', '1444094401', '121.41.16.149', '2015-10-06 09:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1427', '449247', '1444095001', '121.41.16.149', '2015-10-06 09:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1428', '91459', '1444095601', '121.41.16.149', '2015-10-06 09:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1429', '787150', '1444096201', '121.41.16.149', '2015-10-06 09:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1430', '168529', '1444096801', '121.41.16.149', '2015-10-06 10:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1431', '844968', '1444097401', '121.41.16.149', '2015-10-06 10:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1432', '875926', '1444098001', '121.41.16.149', '2015-10-06 10:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1433', '170364', '1444098601', '121.41.16.149', '2015-10-06 10:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1434', '106890', '1444099201', '121.41.16.149', '2015-10-06 10:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1435', '558590', '1444099801', '121.41.16.149', '2015-10-06 10:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1436', '441115', '1444100401', '121.41.16.149', '2015-10-06 11:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1437', '380171', '1444101001', '121.41.16.149', '2015-10-06 11:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1438', '520984', '1444101601', '121.41.16.149', '2015-10-06 11:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1439', '71395', '1444102202', '121.41.16.149', '2015-10-06 11:30:02');
INSERT INTO `jrkj_crontab` VALUES ('1440', '373775', '1444102801', '121.41.16.149', '2015-10-06 11:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1441', '513189', '1444103401', '121.41.16.149', '2015-10-06 11:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1442', '243966', '1444104001', '121.41.16.149', '2015-10-06 12:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1443', '87835', '1444104601', '121.41.16.149', '2015-10-06 12:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1444', '664236', '1444105201', '121.41.16.149', '2015-10-06 12:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1445', '760697', '1444105801', '121.41.16.149', '2015-10-06 12:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1446', '249115', '1444106401', '121.41.16.149', '2015-10-06 12:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1447', '15820', '1444107001', '121.41.16.149', '2015-10-06 12:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1448', '191317', '1444107601', '121.41.16.149', '2015-10-06 13:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1449', '47423', '1444108201', '121.41.16.149', '2015-10-06 13:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1450', '673165', '1444108801', '121.41.16.149', '2015-10-06 13:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1451', '642015', '1444109401', '121.41.16.149', '2015-10-06 13:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1452', '629480', '1444110001', '121.41.16.149', '2015-10-06 13:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1453', '158154', '1444110601', '121.41.16.149', '2015-10-06 13:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1454', '728609', '1444111202', '121.41.16.149', '2015-10-06 14:00:02');
INSERT INTO `jrkj_crontab` VALUES ('1455', '891078', '1444111801', '121.41.16.149', '2015-10-06 14:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1456', '78363', '1444112401', '121.41.16.149', '2015-10-06 14:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1457', '154076', '1444113001', '121.41.16.149', '2015-10-06 14:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1458', '619039', '1444113601', '121.41.16.149', '2015-10-06 14:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1459', '743527', '1444114201', '121.41.16.149', '2015-10-06 14:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1460', '97256', '1444114801', '121.41.16.149', '2015-10-06 15:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1461', '524113', '1444115401', '121.41.16.149', '2015-10-06 15:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1462', '231649', '1444116001', '121.41.16.149', '2015-10-06 15:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1463', '457174', '1444116601', '121.41.16.149', '2015-10-06 15:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1464', '333002', '1444117201', '121.41.16.149', '2015-10-06 15:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1465', '514179', '1444117801', '121.41.16.149', '2015-10-06 15:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1466', '236444', '1444118401', '121.41.16.149', '2015-10-06 16:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1467', '672672', '1444119001', '121.41.16.149', '2015-10-06 16:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1468', '494419', '1444119601', '121.41.16.149', '2015-10-06 16:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1469', '797203', '1444120201', '121.41.16.149', '2015-10-06 16:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1470', '534157', '1444120801', '121.41.16.149', '2015-10-06 16:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1471', '707562', '1444121401', '121.41.16.149', '2015-10-06 16:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1472', '340084', '1444122001', '121.41.16.149', '2015-10-06 17:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1473', '962828', '1444122601', '121.41.16.149', '2015-10-06 17:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1474', '815814', '1444123201', '121.41.16.149', '2015-10-06 17:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1475', '349209', '1444123801', '121.41.16.149', '2015-10-06 17:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1476', '726894', '1444124401', '121.41.16.149', '2015-10-06 17:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1477', '386681', '1444125001', '121.41.16.149', '2015-10-06 17:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1478', '722266', '1444125601', '121.41.16.149', '2015-10-06 18:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1479', '257421', '1444126201', '121.41.16.149', '2015-10-06 18:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1480', '838278', '1444126801', '121.41.16.149', '2015-10-06 18:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1481', '666941', '1444127401', '121.41.16.149', '2015-10-06 18:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1482', '187747', '1444128001', '121.41.16.149', '2015-10-06 18:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1483', '599556', '1444128601', '121.41.16.149', '2015-10-06 18:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1484', '321009', '1444129201', '121.41.16.149', '2015-10-06 19:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1485', '516004', '1444129801', '121.41.16.149', '2015-10-06 19:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1486', '472038', '1444130401', '121.41.16.149', '2015-10-06 19:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1487', '484873', '1444131001', '121.41.16.149', '2015-10-06 19:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1488', '563991', '1444131601', '121.41.16.149', '2015-10-06 19:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1489', '42544', '1444132201', '121.41.16.149', '2015-10-06 19:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1490', '900541', '1444132801', '121.41.16.149', '2015-10-06 20:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1491', '745339', '1444133401', '121.41.16.149', '2015-10-06 20:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1492', '101921', '1444134001', '121.41.16.149', '2015-10-06 20:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1493', '485742', '1444134601', '121.41.16.149', '2015-10-06 20:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1494', '560452', '1444135201', '121.41.16.149', '2015-10-06 20:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1495', '756979', '1444135801', '121.41.16.149', '2015-10-06 20:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1496', '273918', '1444136401', '121.41.16.149', '2015-10-06 21:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1497', '305147', '1444137001', '121.41.16.149', '2015-10-06 21:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1498', '20142', '1444137601', '121.41.16.149', '2015-10-06 21:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1499', '573416', '1444138201', '121.41.16.149', '2015-10-06 21:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1500', '515383', '1444138801', '121.41.16.149', '2015-10-06 21:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1501', '539106', '1444139401', '121.41.16.149', '2015-10-06 21:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1502', '892461', '1444140001', '121.41.16.149', '2015-10-06 22:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1503', '686600', '1444140601', '121.41.16.149', '2015-10-06 22:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1504', '539606', '1444141202', '121.41.16.149', '2015-10-06 22:20:02');
INSERT INTO `jrkj_crontab` VALUES ('1505', '644459', '1444141801', '121.41.16.149', '2015-10-06 22:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1506', '266841', '1444142401', '121.41.16.149', '2015-10-06 22:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1507', '526758', '1444143001', '121.41.16.149', '2015-10-06 22:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1508', '784474', '1444143601', '121.41.16.149', '2015-10-06 23:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1509', '876030', '1444144201', '121.41.16.149', '2015-10-06 23:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1510', '526869', '1444144801', '121.41.16.149', '2015-10-06 23:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1511', '808224', '1444145401', '121.41.16.149', '2015-10-06 23:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1512', '572448', '1444146001', '121.41.16.149', '2015-10-06 23:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1513', '460355', '1444146601', '121.41.16.149', '2015-10-06 23:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1514', '925896', '1444147201', '121.41.16.149', '2015-10-07 00:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1515', '975362', '1444147801', '121.41.16.149', '2015-10-07 00:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1516', '933702', '1444148401', '121.41.16.149', '2015-10-07 00:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1517', '315640', '1444149001', '121.41.16.149', '2015-10-07 00:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1518', '630522', '1444149601', '121.41.16.149', '2015-10-07 00:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1519', '240543', '1444150201', '121.41.16.149', '2015-10-07 00:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1520', '870592', '1444150802', '121.41.16.149', '2015-10-07 01:00:02');
INSERT INTO `jrkj_crontab` VALUES ('1521', '315098', '1444151401', '121.41.16.149', '2015-10-07 01:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1522', '152605', '1444152001', '121.41.16.149', '2015-10-07 01:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1523', '570482', '1444152601', '121.41.16.149', '2015-10-07 01:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1524', '883299', '1444153201', '121.41.16.149', '2015-10-07 01:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1525', '702588', '1444153801', '121.41.16.149', '2015-10-07 01:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1526', '718927', '1444154401', '121.41.16.149', '2015-10-07 02:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1527', '934790', '1444155001', '121.41.16.149', '2015-10-07 02:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1528', '703633', '1444155601', '121.41.16.149', '2015-10-07 02:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1529', '221049', '1444156201', '121.41.16.149', '2015-10-07 02:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1530', '151873', '1444156801', '121.41.16.149', '2015-10-07 02:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1531', '802917', '1444157401', '121.41.16.149', '2015-10-07 02:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1532', '671582', '1444158001', '121.41.16.149', '2015-10-07 03:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1533', '474738', '1444158601', '121.41.16.149', '2015-10-07 03:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1534', '740570', '1444159201', '121.41.16.149', '2015-10-07 03:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1535', '592917', '1444159801', '121.41.16.149', '2015-10-07 03:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1536', '218671', '1444160401', '121.41.16.149', '2015-10-07 03:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1537', '752691', '1444161001', '121.41.16.149', '2015-10-07 03:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1538', '598130', '1444161601', '121.41.16.149', '2015-10-07 04:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1539', '348056', '1444162201', '121.41.16.149', '2015-10-07 04:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1540', '302874', '1444162801', '121.41.16.149', '2015-10-07 04:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1541', '818975', '1444163401', '121.41.16.149', '2015-10-07 04:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1542', '487895', '1444164001', '121.41.16.149', '2015-10-07 04:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1543', '605434', '1444164601', '121.41.16.149', '2015-10-07 04:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1544', '681108', '1444165201', '121.41.16.149', '2015-10-07 05:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1545', '336809', '1444165801', '121.41.16.149', '2015-10-07 05:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1546', '419466', '1444166401', '121.41.16.149', '2015-10-07 05:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1547', '415320', '1444167001', '121.41.16.149', '2015-10-07 05:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1548', '66145', '1444167601', '121.41.16.149', '2015-10-07 05:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1549', '146662', '1444168201', '121.41.16.149', '2015-10-07 05:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1550', '334405', '1444168801', '121.41.16.149', '2015-10-07 06:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1551', '945780', '1444169401', '121.41.16.149', '2015-10-07 06:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1552', '104906', '1444170001', '121.41.16.149', '2015-10-07 06:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1553', '178791', '1444170601', '121.41.16.149', '2015-10-07 06:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1554', '23009', '1444171202', '121.41.16.149', '2015-10-07 06:40:02');
INSERT INTO `jrkj_crontab` VALUES ('1555', '267738', '1444171801', '121.41.16.149', '2015-10-07 06:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1556', '984181', '1444172401', '121.41.16.149', '2015-10-07 07:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1557', '661471', '1444173001', '121.41.16.149', '2015-10-07 07:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1558', '530028', '1444173601', '121.41.16.149', '2015-10-07 07:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1559', '475308', '1444174201', '121.41.16.149', '2015-10-07 07:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1560', '59709', '1444174801', '121.41.16.149', '2015-10-07 07:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1561', '352998', '1444175401', '121.41.16.149', '2015-10-07 07:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1562', '141040', '1444176001', '121.41.16.149', '2015-10-07 08:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1563', '912237', '1444176601', '121.41.16.149', '2015-10-07 08:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1564', '636830', '1444177201', '121.41.16.149', '2015-10-07 08:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1565', '317387', '1444177801', '121.41.16.149', '2015-10-07 08:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1566', '56926', '1444178401', '121.41.16.149', '2015-10-07 08:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1567', '565104', '1444179001', '121.41.16.149', '2015-10-07 08:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1568', '101868', '1444179601', '121.41.16.149', '2015-10-07 09:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1569', '599135', '1444180201', '121.41.16.149', '2015-10-07 09:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1570', '295748', '1444180801', '121.41.16.149', '2015-10-07 09:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1571', '449199', '1444181401', '121.41.16.149', '2015-10-07 09:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1572', '272769', '1444182001', '121.41.16.149', '2015-10-07 09:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1573', '26948', '1444182601', '121.41.16.149', '2015-10-07 09:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1574', '858352', '1444183201', '121.41.16.149', '2015-10-07 10:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1575', '398115', '1444183801', '121.41.16.149', '2015-10-07 10:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1576', '412559', '1444184401', '121.41.16.149', '2015-10-07 10:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1577', '397460', '1444185001', '121.41.16.149', '2015-10-07 10:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1578', '604917', '1444185601', '121.41.16.149', '2015-10-07 10:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1579', '276474', '1444186201', '121.41.16.149', '2015-10-07 10:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1580', '193163', '1444186801', '121.41.16.149', '2015-10-07 11:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1581', '460812', '1444187401', '121.41.16.149', '2015-10-07 11:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1582', '542236', '1444188001', '121.41.16.149', '2015-10-07 11:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1583', '161454', '1444188601', '121.41.16.149', '2015-10-07 11:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1584', '651948', '1444189201', '121.41.16.149', '2015-10-07 11:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1585', '42299', '1444189801', '121.41.16.149', '2015-10-07 11:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1586', '651999', '1444190401', '121.41.16.149', '2015-10-07 12:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1587', '983483', '1444191001', '121.41.16.149', '2015-10-07 12:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1588', '21147', '1444191601', '121.41.16.149', '2015-10-07 12:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1589', '249896', '1444192201', '121.41.16.149', '2015-10-07 12:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1590', '847767', '1444192801', '121.41.16.149', '2015-10-07 12:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1591', '251561', '1444193401', '121.41.16.149', '2015-10-07 12:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1592', '945890', '1444194001', '121.41.16.149', '2015-10-07 13:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1593', '726620', '1444194601', '121.41.16.149', '2015-10-07 13:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1594', '396188', '1444195201', '121.41.16.149', '2015-10-07 13:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1595', '251654', '1444195801', '121.41.16.149', '2015-10-07 13:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1596', '374640', '1444196401', '121.41.16.149', '2015-10-07 13:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1597', '976309', '1444197001', '121.41.16.149', '2015-10-07 13:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1598', '896291', '1444197601', '121.41.16.149', '2015-10-07 14:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1599', '138254', '1444198201', '121.41.16.149', '2015-10-07 14:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1600', '320125', '1444198801', '121.41.16.149', '2015-10-07 14:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1601', '815931', '1444199401', '121.41.16.149', '2015-10-07 14:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1602', '361088', '1444200001', '121.41.16.149', '2015-10-07 14:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1603', '243115', '1444200601', '121.41.16.149', '2015-10-07 14:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1604', '494853', '1444201201', '121.41.16.149', '2015-10-07 15:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1605', '622097', '1444201802', '121.41.16.149', '2015-10-07 15:10:02');
INSERT INTO `jrkj_crontab` VALUES ('1606', '40939', '1444202401', '121.41.16.149', '2015-10-07 15:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1607', '305946', '1444203001', '121.41.16.149', '2015-10-07 15:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1608', '644313', '1444203601', '121.41.16.149', '2015-10-07 15:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1609', '198380', '1444204201', '121.41.16.149', '2015-10-07 15:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1610', '581118', '1444204801', '121.41.16.149', '2015-10-07 16:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1611', '630578', '1444205401', '121.41.16.149', '2015-10-07 16:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1612', '171857', '1444206001', '121.41.16.149', '2015-10-07 16:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1613', '417482', '1444206601', '121.41.16.149', '2015-10-07 16:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1614', '700911', '1444207201', '121.41.16.149', '2015-10-07 16:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1615', '912463', '1444207801', '121.41.16.149', '2015-10-07 16:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1616', '757706', '1444208401', '121.41.16.149', '2015-10-07 17:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1617', '318805', '1444209001', '121.41.16.149', '2015-10-07 17:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1618', '889163', '1444209601', '121.41.16.149', '2015-10-07 17:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1619', '226757', '1444210201', '121.41.16.149', '2015-10-07 17:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1620', '759352', '1444210801', '121.41.16.149', '2015-10-07 17:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1621', '516046', '1444211401', '121.41.16.149', '2015-10-07 17:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1622', '863309', '1444212001', '121.41.16.149', '2015-10-07 18:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1623', '819143', '1444212601', '121.41.16.149', '2015-10-07 18:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1624', '839607', '1444213201', '121.41.16.149', '2015-10-07 18:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1625', '95855', '1444213801', '121.41.16.149', '2015-10-07 18:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1626', '588666', '1444214401', '121.41.16.149', '2015-10-07 18:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1627', '748719', '1444215001', '121.41.16.149', '2015-10-07 18:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1628', '269452', '1444215601', '121.41.16.149', '2015-10-07 19:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1629', '599368', '1444216201', '121.41.16.149', '2015-10-07 19:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1630', '950833', '1444216801', '121.41.16.149', '2015-10-07 19:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1631', '406576', '1444217401', '121.41.16.149', '2015-10-07 19:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1632', '487155', '1444218001', '121.41.16.149', '2015-10-07 19:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1633', '404181', '1444218601', '121.41.16.149', '2015-10-07 19:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1634', '720261', '1444219201', '121.41.16.149', '2015-10-07 20:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1635', '71018', '1444219801', '121.41.16.149', '2015-10-07 20:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1636', '946569', '1444220401', '121.41.16.149', '2015-10-07 20:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1637', '486411', '1444221002', '121.41.16.149', '2015-10-07 20:30:02');
INSERT INTO `jrkj_crontab` VALUES ('1638', '376987', '1444221601', '121.41.16.149', '2015-10-07 20:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1639', '630505', '1444222201', '121.41.16.149', '2015-10-07 20:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1640', '375488', '1444222801', '121.41.16.149', '2015-10-07 21:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1641', '56950', '1444223401', '121.41.16.149', '2015-10-07 21:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1642', '692781', '1444224001', '121.41.16.149', '2015-10-07 21:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1643', '53888', '1444224601', '121.41.16.149', '2015-10-07 21:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1644', '999478', '1444225201', '121.41.16.149', '2015-10-07 21:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1645', '427849', '1444225801', '121.41.16.149', '2015-10-07 21:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1646', '793155', '1444226401', '121.41.16.149', '2015-10-07 22:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1647', '974231', '1444227001', '121.41.16.149', '2015-10-07 22:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1648', '493397', '1444227601', '121.41.16.149', '2015-10-07 22:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1649', '941958', '1444228201', '121.41.16.149', '2015-10-07 22:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1650', '891691', '1444228801', '121.41.16.149', '2015-10-07 22:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1651', '738045', '1444229401', '121.41.16.149', '2015-10-07 22:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1652', '568270', '1444230001', '121.41.16.149', '2015-10-07 23:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1653', '579594', '1444230601', '121.41.16.149', '2015-10-07 23:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1654', '854252', '1444231201', '121.41.16.149', '2015-10-07 23:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1655', '963788', '1444231801', '121.41.16.149', '2015-10-07 23:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1656', '180163', '1444232401', '121.41.16.149', '2015-10-07 23:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1657', '870829', '1444233001', '121.41.16.149', '2015-10-07 23:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1658', '220660', '1444233601', '121.41.16.149', '2015-10-08 00:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1659', '816645', '1444234201', '121.41.16.149', '2015-10-08 00:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1660', '894599', '1444234801', '121.41.16.149', '2015-10-08 00:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1661', '437987', '1444235401', '121.41.16.149', '2015-10-08 00:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1662', '136282', '1444236001', '121.41.16.149', '2015-10-08 00:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1663', '507567', '1444236601', '121.41.16.149', '2015-10-08 00:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1664', '611931', '1444237201', '121.41.16.149', '2015-10-08 01:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1665', '72046', '1444237801', '121.41.16.149', '2015-10-08 01:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1666', '539333', '1444238401', '121.41.16.149', '2015-10-08 01:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1667', '46823', '1444239001', '121.41.16.149', '2015-10-08 01:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1668', '610706', '1444239601', '121.41.16.149', '2015-10-08 01:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1669', '238515', '1444240201', '121.41.16.149', '2015-10-08 01:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1670', '276424', '1444240801', '121.41.16.149', '2015-10-08 02:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1671', '81400', '1444241401', '121.41.16.149', '2015-10-08 02:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1672', '875943', '1444242001', '121.41.16.149', '2015-10-08 02:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1673', '553672', '1444242601', '121.41.16.149', '2015-10-08 02:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1674', '159463', '1444243201', '121.41.16.149', '2015-10-08 02:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1675', '185508', '1444243801', '121.41.16.149', '2015-10-08 02:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1676', '530535', '1444244401', '121.41.16.149', '2015-10-08 03:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1677', '434527', '1444245001', '121.41.16.149', '2015-10-08 03:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1678', '702671', '1444245601', '121.41.16.149', '2015-10-08 03:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1679', '404508', '1444246201', '121.41.16.149', '2015-10-08 03:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1680', '301864', '1444246801', '121.41.16.149', '2015-10-08 03:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1681', '560255', '1444247401', '121.41.16.149', '2015-10-08 03:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1682', '904831', '1444248001', '121.41.16.149', '2015-10-08 04:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1683', '340972', '1444248601', '121.41.16.149', '2015-10-08 04:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1684', '863014', '1444249201', '121.41.16.149', '2015-10-08 04:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1685', '827278', '1444249801', '121.41.16.149', '2015-10-08 04:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1686', '57127', '1444250401', '121.41.16.149', '2015-10-08 04:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1687', '276896', '1444251001', '121.41.16.149', '2015-10-08 04:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1688', '438724', '1444251601', '121.41.16.149', '2015-10-08 05:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1689', '419234', '1444252201', '121.41.16.149', '2015-10-08 05:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1690', '537991', '1444252801', '121.41.16.149', '2015-10-08 05:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1691', '908949', '1444253401', '121.41.16.149', '2015-10-08 05:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1692', '585290', '1444254001', '121.41.16.149', '2015-10-08 05:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1693', '225985', '1444254601', '121.41.16.149', '2015-10-08 05:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1694', '445114', '1444255201', '121.41.16.149', '2015-10-08 06:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1695', '51457', '1444255801', '121.41.16.149', '2015-10-08 06:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1696', '832271', '1444256401', '121.41.16.149', '2015-10-08 06:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1697', '691917', '1444257001', '121.41.16.149', '2015-10-08 06:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1698', '930592', '1444257601', '121.41.16.149', '2015-10-08 06:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1699', '623260', '1444258201', '121.41.16.149', '2015-10-08 06:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1700', '720257', '1444258801', '121.41.16.149', '2015-10-08 07:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1701', '503186', '1444259401', '121.41.16.149', '2015-10-08 07:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1702', '609401', '1444260001', '121.41.16.149', '2015-10-08 07:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1703', '384045', '1444260601', '121.41.16.149', '2015-10-08 07:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1704', '876872', '1444261201', '121.41.16.149', '2015-10-08 07:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1705', '465939', '1444261801', '121.41.16.149', '2015-10-08 07:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1706', '511046', '1444262401', '121.41.16.149', '2015-10-08 08:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1707', '20337', '1444263001', '121.41.16.149', '2015-10-08 08:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1708', '432019', '1444263601', '121.41.16.149', '2015-10-08 08:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1709', '529663', '1444264201', '121.41.16.149', '2015-10-08 08:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1710', '544744', '1444264801', '121.41.16.149', '2015-10-08 08:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1711', '193686', '1444265401', '121.41.16.149', '2015-10-08 08:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1712', '718484', '1444266001', '121.41.16.149', '2015-10-08 09:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1713', '83013', '1444266601', '121.41.16.149', '2015-10-08 09:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1714', '432943', '1444267201', '121.41.16.149', '2015-10-08 09:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1715', '189064', '1444267801', '121.41.16.149', '2015-10-08 09:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1716', '937948', '1444268401', '121.41.16.149', '2015-10-08 09:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1717', '426480', '1444269001', '121.41.16.149', '2015-10-08 09:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1718', '359450', '1444269601', '121.41.16.149', '2015-10-08 10:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1719', '289899', '1444270201', '121.41.16.149', '2015-10-08 10:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1720', '459574', '1444270801', '121.41.16.149', '2015-10-08 10:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1721', '721945', '1444271401', '121.41.16.149', '2015-10-08 10:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1722', '91634', '1444272001', '121.41.16.149', '2015-10-08 10:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1723', '709754', '1444272601', '121.41.16.149', '2015-10-08 10:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1724', '318279', '1444273201', '121.41.16.149', '2015-10-08 11:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1725', '164521', '1444273801', '121.41.16.149', '2015-10-08 11:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1726', '984679', '1444274401', '121.41.16.149', '2015-10-08 11:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1727', '778387', '1444275001', '121.41.16.149', '2015-10-08 11:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1728', '734727', '1444275601', '121.41.16.149', '2015-10-08 11:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1729', '459016', '1444276201', '121.41.16.149', '2015-10-08 11:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1730', '154582', '1444276801', '121.41.16.149', '2015-10-08 12:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1731', '155250', '1444277401', '121.41.16.149', '2015-10-08 12:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1732', '606722', '1444278001', '121.41.16.149', '2015-10-08 12:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1733', '971585', '1444278601', '121.41.16.149', '2015-10-08 12:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1734', '950457', '1444279201', '121.41.16.149', '2015-10-08 12:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1735', '237979', '1444279801', '121.41.16.149', '2015-10-08 12:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1736', '896096', '1444280401', '121.41.16.149', '2015-10-08 13:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1737', '683275', '1444281001', '121.41.16.149', '2015-10-08 13:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1738', '512266', '1444281601', '121.41.16.149', '2015-10-08 13:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1739', '924536', '1444282201', '121.41.16.149', '2015-10-08 13:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1740', '472027', '1444282801', '121.41.16.149', '2015-10-08 13:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1741', '421811', '1444283401', '121.41.16.149', '2015-10-08 13:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1742', '356910', '1444284002', '121.41.16.149', '2015-10-08 14:00:02');
INSERT INTO `jrkj_crontab` VALUES ('1743', '285046', '1444284601', '121.41.16.149', '2015-10-08 14:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1744', '584160', '1444285201', '121.41.16.149', '2015-10-08 14:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1745', '393365', '1444285801', '121.41.16.149', '2015-10-08 14:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1746', '24880', '1444286401', '121.41.16.149', '2015-10-08 14:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1747', '104796', '1444287001', '121.41.16.149', '2015-10-08 14:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1748', '372410', '1444287601', '121.41.16.149', '2015-10-08 15:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1749', '717189', '1444288201', '121.41.16.149', '2015-10-08 15:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1750', '769508', '1444288801', '121.41.16.149', '2015-10-08 15:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1751', '88611', '1444289401', '121.41.16.149', '2015-10-08 15:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1752', '786934', '1444290001', '121.41.16.149', '2015-10-08 15:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1753', '489643', '1444290601', '121.41.16.149', '2015-10-08 15:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1754', '224496', '1444291201', '121.41.16.149', '2015-10-08 16:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1755', '999321', '1444291801', '121.41.16.149', '2015-10-08 16:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1756', '13599', '1444292401', '121.41.16.149', '2015-10-08 16:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1757', '45350', '1444293001', '121.41.16.149', '2015-10-08 16:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1758', '443418', '1444293601', '121.41.16.149', '2015-10-08 16:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1759', '683305', '1444294201', '121.41.16.149', '2015-10-08 16:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1760', '74540', '1444294801', '121.41.16.149', '2015-10-08 17:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1761', '853065', '1444295401', '121.41.16.149', '2015-10-08 17:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1762', '838204', '1444296001', '121.41.16.149', '2015-10-08 17:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1763', '887803', '1444296601', '121.41.16.149', '2015-10-08 17:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1764', '831995', '1444297201', '121.41.16.149', '2015-10-08 17:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1765', '473943', '1444297801', '121.41.16.149', '2015-10-08 17:50:01');
INSERT INTO `jrkj_crontab` VALUES ('1766', '570095', '1444298401', '121.41.16.149', '2015-10-08 18:00:01');
INSERT INTO `jrkj_crontab` VALUES ('1767', '665359', '1444299001', '121.41.16.149', '2015-10-08 18:10:01');
INSERT INTO `jrkj_crontab` VALUES ('1768', '161734', '1444299601', '121.41.16.149', '2015-10-08 18:20:01');
INSERT INTO `jrkj_crontab` VALUES ('1769', '387530', '1444300201', '121.41.16.149', '2015-10-08 18:30:01');
INSERT INTO `jrkj_crontab` VALUES ('1770', '687067', '1444300801', '121.41.16.149', '2015-10-08 18:40:01');
INSERT INTO `jrkj_crontab` VALUES ('1771', '443161', '1444301401', '121.41.16.149', '2015-10-08 18:50:01');

-- ----------------------------
-- Table structure for jrkj_finance
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_finance`;
CREATE TABLE `jrkj_finance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` char(18) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `total` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `log_type` tinyint(4) NOT NULL DEFAULT '1',
  `ip` char(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `status` tinyint(2) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jrkj_finance
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_flink
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_flink`;
CREATE TABLE `jrkj_flink` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `cate_id` smallint(5) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_flink
-- ----------------------------
INSERT INTO `jrkj_flink` VALUES ('2', '百度', '', 'http://www.baidu.com', '1', '100', '1');

-- ----------------------------
-- Table structure for jrkj_flink_cate
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_flink_cate`;
CREATE TABLE `jrkj_flink_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_flink_cate
-- ----------------------------
INSERT INTO `jrkj_flink_cate` VALUES ('1', '友情链接', '255', '1');
INSERT INTO `jrkj_flink_cate` VALUES ('2', '合作伙伴2', '255', '1');

-- ----------------------------
-- Table structure for jrkj_focus
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_focus`;
CREATE TABLE `jrkj_focus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` char(100) NOT NULL,
  `colors` varchar(10) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序值',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_focus
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_integral
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_integral`;
CREATE TABLE `jrkj_integral` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `list_id` int(20) NOT NULL COMMENT '商品ID',
  `member_id` int(20) NOT NULL COMMENT '用户ID',
  `integral` int(20) NOT NULL DEFAULT '0' COMMENT '商品积分',
  `type` int(5) NOT NULL DEFAULT '1' COMMENT '1.兑换商品 2.购物送积分 3.注册送积分',
  `add_time` int(20) NOT NULL COMMENT '添加时间',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1.申请兑换 2.驳回兑换 3.发货 4.到货',
  `address` text COMMENT '收货地址',
  `mobile` varchar(20) DEFAULT NULL COMMENT '收货电话',
  `name` varchar(20) DEFAULT NULL COMMENT '收货人姓名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_integral
-- ----------------------------
INSERT INTO `jrkj_integral` VALUES ('2', '4', '42', '400', '1', '1477556447', '1', '打算打算打算是', '15070994142', '杨靖');
INSERT INTO `jrkj_integral` VALUES ('3', '0', '46', '10', '3', '1478566255', '1', null, null, null);
INSERT INTO `jrkj_integral` VALUES ('4', '0', '47', '10', '3', '1478571982', '1', null, null, null);

-- ----------------------------
-- Table structure for jrkj_integral_list
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_integral_list`;
CREATE TABLE `jrkj_integral_list` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '积分商品标题',
  `intro` text COMMENT '简介',
  `integral` int(20) NOT NULL DEFAULT '0' COMMENT '兑换所需积分',
  `img` varchar(100) NOT NULL COMMENT '商品图片',
  `sales` int(20) NOT NULL DEFAULT '0' COMMENT '兑换量',
  `stock` int(20) NOT NULL DEFAULT '0' COMMENT '积分商品库存',
  `ordid` int(10) NOT NULL DEFAULT '255',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1.可兑换  0.不可兑换',
  `content` text COMMENT '积分详情',
  `add_time` int(20) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_integral_list
-- ----------------------------
INSERT INTO `jrkj_integral_list` VALUES ('3', '电风扇', '好用', '300', '/data/attachment/merchant//image/2016/10/58103dc2de5a8.jpg', '0', '20', '12', '1', '&lt;img src=&quot;/data/attachment/editer/image/2016/10/26/58103dc1073a0.jpg&quot; alt=&quot;&quot; /&gt;', '1477459395');
INSERT INTO `jrkj_integral_list` VALUES ('4', '水杯', '的萨达', '400', '/data/attachment/merchant//image/2016/10/58103de17d0b1.jpg', '0', '9', '20', '1', '&lt;img src=&quot;/data/attachment/editer/image/2016/10/26/58103ddf77491.jpg&quot; alt=&quot;&quot; /&gt;', '1477459425');

-- ----------------------------
-- Table structure for jrkj_item
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item`;
CREATE TABLE `jrkj_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_sn` varchar(30) NOT NULL DEFAULT '',
  `cate_id` smallint(4) unsigned DEFAULT NULL,
  `bianhao` varchar(30) DEFAULT NULL COMMENT '商家自定义编号',
  `merchant_id` int(10) unsigned DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `subtitle` varchar(150) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `img` varchar(255) DEFAULT '',
  `market_price` float(20,2) NOT NULL DEFAULT '0.00',
  `price` float(20,2) DEFAULT '0.00',
  `settle_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:商品,2:图片',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `comments` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `seo_title` varchar(255) DEFAULT '',
  `seo_keys` varchar(255) DEFAULT '',
  `seo_desc` text,
  `ordid` smallint(5) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `content` text NOT NULL,
  `attr_ids` varchar(255) NOT NULL DEFAULT '',
  `merchant_category_id` int(10) unsigned NOT NULL,
  `create_time` int(10) unsigned NOT NULL,
  `update_time` int(10) unsigned NOT NULL,
  `stock` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  `is_real` tinyint(1) unsigned NOT NULL COMMENT '店铺类型 0：O2O 1：BSC',
  `is_search` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '特价',
  `sub_content` text NOT NULL,
  `sale_start_time` int(11) DEFAULT NULL,
  `sale_end_time` int(11) DEFAULT NULL,
  `reference` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `is_home` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '首页显示',
  `major` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '大牌精选',
  `integral` int(10) NOT NULL DEFAULT '0' COMMENT '商品积分:兑换所需积分',
  PRIMARY KEY (`id`),
  KEY `cid` (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=302 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item
-- ----------------------------
INSERT INTO `jrkj_item` VALUES ('290', '64613', '79', 'LW-PF-002', '1', '写字楼职员办公桌 屏风员工位4人位办公桌椅组合员工桌电脑桌卡座', '', '', '/img/image/1.jpg', '258.00', '238.00', '0.00', '1', '5', '0', '', '', '', '255', '1', '&lt;img src=&quot;/data/attachment/editer/image/2016/10/15/580197b2e2257.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;', '', '0', '1469591532', '1476679561', '95', '0', '1', '0', '', '-28800', '57599', '1', '1', '0', '68');
INSERT INTO `jrkj_item` VALUES ('291', '9498', '79', 'LW-PF-003', '1', '办公家具员工桌简约职员办公桌现代屏风卡位4 6四人位电脑桌椅', '', '', '/img/image/2.jpg', '568.00', '468.00', '0.00', '1', '5', '0', '', '', '', '255', '1', '&lt;img src=&quot;/data/attachment/editer/image/2016/10/15/58019a319f7f4.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;img src=&quot;/data/attachment/editer/image/2016/10/15/58019a4383aa3.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;img src=&quot;/data/attachment/editer/image/2016/10/15/58019a5d2cca2.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;img src=&quot;/data/attachment/editer/image/2016/10/15/58019a6951ee8.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;img src=&quot;/data/attachment/editer/image/2016/10/15/58019a73c0e01.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;img src=&quot;/data/attachment/editer/image/2016/10/15/58019ac9566e9.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;', '', '0', '1469601558', '1476500229', '95', '0', '1', '0', '&lt;h1 style=&quot;font-size:16px;font-family:\'microsoft yahei\';background-color:#FFFFFF;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/h1&gt;', '-28800', '57599', '1', '1', '0', '18');
INSERT INTO `jrkj_item` VALUES ('292', '9489', '80', '', '1', '现代风格 浩一 中式风格 2.3米大班台 老板桌 经理桌', '', '', '/img/image/3.jpg', '508.00', '478.00', '0.00', '1', '7', '0', '', '', '', '255', '1', '', '', '0', '1469604865', '1476348565', '93', '0', '1', '0', '', '-28800', '57599', '1', '1', '0', '478');
INSERT INTO `jrkj_item` VALUES ('293', '9490', '81', '', '2', '欧式田园 畅销经典款 高档水牛头层真皮床 对称式描金雕花 1.8米精致水晶拉扣床', '', '', '/img/image/4.jpg', '3586.00', '2900.00', '0.00', '1', '4', '0', '', '', '', '255', '1', '&lt;img src=&quot;/data/attachment/editer/image/2016/10/12/57fe14ae6a633.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;img src=&quot;/data/attachment/editer/image/2016/10/12/57fe14b958543.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;img src=&quot;/data/attachment/editer/image/2016/10/12/57fe14c38625b.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;', '', '0', '1469610984', '1476337880', '96', '0', '1', '0', '', '-28800', '57599', '1', '1', '0', '28');
INSERT INTO `jrkj_item` VALUES ('289', '4616', '79', 'LW-PF-004', '1', '办公家具简约时尚现代电脑桌屏风组合职员工作卡位果绿', '', '', '/img/image/5.jpg', '6200.00', '5800.00', '0.00', '1', '0', '0', '', '', '', '255', '1', '&lt;img src=&quot;/data/attachment/editer/image/2016/10/15/58019c706578f.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;', '', '0', '1469589833', '1476500633', '100', '0', '1', '0', '', '-28800', '57599', '1', '0', '0', '28');
INSERT INTO `jrkj_item` VALUES ('294', '', '116', '', '2', '活动图片', '', '', '/img/image/6.jpg', '4360.00', '2180.00', '0.00', '1', '0', '0', '', '', '', '0', '1', '', '', '0', '1476334832', '1477042629', '200', '0', '1', '0', '', '1476288000', '57599', '0', '1', '1', '0');
INSERT INTO `jrkj_item` VALUES ('295', '', '79', 'HWF-6500', '1', '活动图片', '', '', '/img/image/7.jpg', '2380.00', '1880.00', '0.00', '1', '0', '0', '', '', '', '0', '1', '', '', '0', '1476344717', '1476348682', '100', '0', '1', '0', '', '1476288000', '1507910399', '0', '1', '1', '0');
INSERT INTO `jrkj_item` VALUES ('296', '', '116', '', '2', '活动图片', '', '', '/img/image/8.jpg', '158.00', '128.00', '0.00', '1', '0', '0', '', '', '', '23', '1', '', '', '0', '1476344845', '1477360372', '10', '0', '1', '0', '', '1476288000', '1507910399', '0', '1', '1', '128');
INSERT INTO `jrkj_item` VALUES ('299', '', '88', 'HRO-F5927', '2', '布艺会客接待洽谈沙发 办公沙发 休闲沙发 商务沙发 浩彬', '', '', '/img/image/9.jpg', '2380.00', '1880.00', '0.00', '1', '7', '0', '', '', '', '0', '1', '&lt;img src=&quot;/data/attachment/editer/image/2016/10/13/57ff49489a358.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/data/attachment/editer/image/2016/10/13/57ff49539b495.jpg&quot; alt=&quot;&quot; /&gt;', '', '0', '1476348249', '1476348249', '93', '0', '1', '0', '', '1476288000', '1507910399', '1', '1', '0', '10');
INSERT INTO `jrkj_item` VALUES ('301', '', '79', 'LW-PF001', '1', '力威办公家具屏风组合工作位员工卡位职员办公桌4人位', '', '', '/img/image/10.jpg', '588.00', '500.00', '0.00', '1', '18', '0', '', '', '', '9999', '1', '&lt;img src=&quot;/data/attachment/editer/image/2016/10/15/5801933d1cdc5.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;img src=&quot;/data/attachment/editer/image/2016/10/15/580193471f7aa.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;img src=&quot;/data/attachment/editer/image/2016/10/15/580193803f479.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;img src=&quot;/data/attachment/editer/image/2016/10/15/5801938ee4ea0.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;img src=&quot;/data/attachment/editer/image/2016/10/15/580193e24799e.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;img src=&quot;/data/attachment/editer/image/2016/10/15/580193ee15237.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;img src=&quot;/data/attachment/editer/image/2016/10/15/580193f724a79.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;img src=&quot;/data/attachment/editer/image/2016/10/15/58019401262df.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;br /&gt;', '', '0', '1476371620', '1476498726', '82', '0', '1', '0', '', '1476288000', '1507910399', '1', '1', '0', '0');

-- ----------------------------
-- Table structure for jrkj_item_attr_value
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item_attr_value`;
CREATE TABLE `jrkj_item_attr_value` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `attr_value_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item_attr_value
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_item_cate
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item_cate`;
CREATE TABLE `jrkj_item_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tags` varchar(50) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `fcolor` varchar(10) NOT NULL,
  `remark` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `update_time` int(10) unsigned NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `status` tinyint(1) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  `type` tinyint(2) NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `subtitle` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item_cate
-- ----------------------------
INSERT INTO `jrkj_item_cate` VALUES ('1', '办公家具', '', '0', '0', '57ffa21432155_thumb.jpg', '', '1', '1450427867', '1476370965', '1', '1', '', '', '', '0', '0', '');
INSERT INTO `jrkj_item_cate` VALUES ('2', '卧室', '', '0', '0', '5801a046817c7_thumb.jpg', '', '1', '1450427906', '1476501576', '3', '1', '', '', '', '0', '0', '');
INSERT INTO `jrkj_item_cate` VALUES ('3', '客厅', '', '0', '0', '5801dbb763665.jpg', '', '1', '1450427946', '1476516792', '3', '1', '', '', '', '0', '0', '');
INSERT INTO `jrkj_item_cate` VALUES ('4', '餐厅', '', '0', '0', '5803971bcf2f6.jpg', '', '1', '1450427985', '1476630301', '4', '1', '', '', '', '0', '0', '');
INSERT INTO `jrkj_item_cate` VALUES ('5', '书房', '', '0', '0', '58039845a34e0.jpg', '', '', '1450428018', '1476630598', '5', '1', '', '', '', '0', '0', '');
INSERT INTO `jrkj_item_cate` VALUES ('6', '儿童房', '', '0', '0', '580399118916e.jpg', '', '', '1450428047', '1476630802', '6', '1', '', '', '', '0', '0', '');
INSERT INTO `jrkj_item_cate` VALUES ('81', '床', '', '2', '2|', '58019e7b4717b_thumb.jpg', '', '', '1476161548', '1476501116', '100', '1', '', '', '', '0', '0', '');
INSERT INTO `jrkj_item_cate` VALUES ('82', '衣柜', '', '2', '2|', '58019fa3de6d6_thumb.jpg', '', '', '1476161562', '1476501412', '100', '1', '', '', '', '0', '0', '');
INSERT INTO `jrkj_item_cate` VALUES ('83', '沙发', '', '3', '3|', '5801db25c6a2b.jpg', '', '', '1476161599', '1476516646', '100', '1', '', '', '', '0', '0', '');
INSERT INTO `jrkj_item_cate` VALUES ('79', '屏风卡位', '', '1', '1|', '57ffa0617e2e0_thumb.jpg', '', '', '1464575485', '1476370530', '100', '1', '', '', '', '0', '0', '');
INSERT INTO `jrkj_item_cate` VALUES ('80', '班台', '', '1', '1|', '57ffa0f642514_thumb.jpg', '', '', '1476161438', '1476370679', '100', '1', '', '', '', '0', '0', '');
INSERT INTO `jrkj_item_cate` VALUES ('84', '电视柜', '', '3', '3|', '5801dbb022af3.jpg', '', '', '1476161611', '1476516784', '100', '1', '', '', '', '0', '0', '');
INSERT INTO `jrkj_item_cate` VALUES ('85', '餐桌', '', '4', '4|', '5803972750875.jpg', '', '', '1476162058', '1476630312', '100', '1', '', '', '', '0', '0', '');
INSERT INTO `jrkj_item_cate` VALUES ('86', '书桌', '', '5', '5|', '5803984dec87f.jpg', '', '', '1476162171', '1476630606', '100', '1', '', '', '', '0', '0', '');
INSERT INTO `jrkj_item_cate` VALUES ('87', '儿童床', '', '6', '6|', '580399193bf16.jpg', '', '', '1476162208', '1476630809', '100', '1', '', '', '', '0', '0', '');
INSERT INTO `jrkj_item_cate` VALUES ('88', '办公沙发', '', '1', '1|', '57ffa15dc3ae1_thumb.jpg', '', '', '1476258983', '1476370782', '100', '1', '', '', '', '0', '1', '');
INSERT INTO `jrkj_item_cate` VALUES ('89', '办公桌', '', '1', '1|', '57ffa20238658_thumb.jpg', '', '', '1476370830', '1476370947', '100', '1', '', '', '', '0', '1', '');
INSERT INTO `jrkj_item_cate` VALUES ('90', '会议桌', '', '1', '1|', '57ffa2e30975a_thumb.jpg', '', '', '1476371027', '1476371171', '100', '1', '', '', '', '0', '1', '');
INSERT INTO `jrkj_item_cate` VALUES ('91', '前台、文件柜', '', '1', '1|', '57ffa3af082f6_thumb.jpg', '', '', '1476371296', '1476631302', '100', '1', '', '', '', '0', '1', '');
INSERT INTO `jrkj_item_cate` VALUES ('92', '床头柜', '', '2', '2|', '5801a0ceb35a8_thumb.jpg', '', '', '1476501604', '1476501711', '100', '1', '', '', '', '0', '1', '');
INSERT INTO `jrkj_item_cate` VALUES ('93', '商超/专卖店', '', '0', '0', '5801a245e11c5_thumb.jpg', '', '', '1476501759', '1476502086', '2', '1', '', '', '', '0', '1', '');
INSERT INTO `jrkj_item_cate` VALUES ('94', '展柜', '', '93', '93|', '5801ba18d3895.jpg', '', '', '1476502104', '1476508194', '100', '1', '', '', '', '0', '1', '');
INSERT INTO `jrkj_item_cate` VALUES ('95', '货架', '', '93', '93|', '5801ba7d63243.jpg', '', '', '1476502124', '1476508286', '100', '1', '', '', '', '0', '1', '');
INSERT INTO `jrkj_item_cate` VALUES ('96', '床垫', '', '2', '2|', '5801c18a623d7.jpg', '', '', '1476510004', '1476510090', '100', '1', '', '', '', '0', '1', '');
INSERT INTO `jrkj_item_cate` VALUES ('97', '茶几', '', '3', '3|', '5801dc9c087f5.jpg', '', '', '1476516941', '1476517020', '100', '1', '', '', '', '0', '1', '');
INSERT INTO `jrkj_item_cate` VALUES ('98', '鞋柜', '', '3', '3|', '5801dd130d395.jpg', '', '', '1476517072', '1476517139', '100', '1', '', '', '', '0', '1', '');
INSERT INTO `jrkj_item_cate` VALUES ('99', '餐椅', '', '4', '4|', '580397d71ec0c.jpg', '', '', '1476630488', '1476630488', '100', '1', '', '', '', '0', '1', '');
INSERT INTO `jrkj_item_cate` VALUES ('100', '书柜', '', '5', '5|', '580398a7ac7cb.jpg', '', '', '1476630696', '1476630696', '100', '1', '', '', '', '0', '1', '');
INSERT INTO `jrkj_item_cate` VALUES ('101', '儿童桌', '', '6', '6|', '5803998ba3c59.jpg', '', '', '1476630924', '1476630924', '100', '1', '', '', '', '0', '1', '');
INSERT INTO `jrkj_item_cate` VALUES ('102', '办公椅子', '', '1', '1|', '58039ab82ec4d.jpg', '', '', '1476631224', '1476631224', '100', '1', '', '', '', '0', '1', '');

-- ----------------------------
-- Table structure for jrkj_item_cate_attribute
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item_cate_attribute`;
CREATE TABLE `jrkj_item_cate_attribute` (
  `item_cate_id` int(10) unsigned NOT NULL,
  `attribute_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item_cate_attribute
-- ----------------------------
INSERT INTO `jrkj_item_cate_attribute` VALUES ('7', '2');
INSERT INTO `jrkj_item_cate_attribute` VALUES ('7', '1');
INSERT INTO `jrkj_item_cate_attribute` VALUES ('8', '2');
INSERT INTO `jrkj_item_cate_attribute` VALUES ('8', '1');

-- ----------------------------
-- Table structure for jrkj_item_comment
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item_comment`;
CREATE TABLE `jrkj_item_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL COMMENT '订单号',
  `member_id` varchar(20) NOT NULL,
  `order_id` int(20) NOT NULL COMMENT '订单ID',
  `info` text,
  `add_time` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `score` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1.好评  2.中评  3.差评',
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item_comment
-- ----------------------------
INSERT INTO `jrkj_item_comment` VALUES ('187', '292', '42', '997', '阿斯达撒大苏打', '1477537165', '1', '1', null);
INSERT INTO `jrkj_item_comment` VALUES ('188', '301', '42', '997', '撒的撒打算', '1477537165', '1', '1', null);
INSERT INTO `jrkj_item_comment` VALUES ('189', '291', '45', '1006', '家具不错。', '1477577039', '1', '1', null);
INSERT INTO `jrkj_item_comment` VALUES ('190', '299', '45', '1007', '沙发不错', '1477611605', '1', '1', null);
INSERT INTO `jrkj_item_comment` VALUES ('202', '292', 'Fdaxiong大熊', '1139', '还可以', '2147483647', '1', '1', null);
INSERT INTO `jrkj_item_comment` VALUES ('201', '292', 'Fdaxiong大熊', '1139', '1', '2147483647', '1', '2', null);
INSERT INTO `jrkj_item_comment` VALUES ('200', '292', 'Fdaxiong大熊', '1139', '1', '2147483647', '1', '2', null);
INSERT INTO `jrkj_item_comment` VALUES ('198', '289', 'Fdaxiong大熊', '1136', '我', '2147483647', '1', '3', null);
INSERT INTO `jrkj_item_comment` VALUES ('199', '290', 'Fdaxiong大熊', '1136', '伤心', '2147483647', '1', '2', null);

-- ----------------------------
-- Table structure for jrkj_item_comment_img
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item_comment_img`;
CREATE TABLE `jrkj_item_comment_img` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_comment_id` int(20) NOT NULL COMMENT '评论ID',
  `item_id` int(20) NOT NULL COMMENT '订单ID',
  `order_id` int(20) NOT NULL COMMENT '订单ID',
  `url` varchar(200) NOT NULL COMMENT '图片',
  `add_time` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item_comment_img
-- ----------------------------
INSERT INTO `jrkj_item_comment_img` VALUES ('51', '187', '292', '997', '/data/attachment/item/1610/27/58116d84a0a09.jpg', '1477537156');
INSERT INTO `jrkj_item_comment_img` VALUES ('52', '188', '301', '997', '/data/attachment/item/1610/27/58116d8b384a7.jpg', '1477537163');
INSERT INTO `jrkj_item_comment_img` VALUES ('53', '189', '291', '1006', '/data/attachment/item/1610/27/5812094dd836a.jpg', '1477577037');
INSERT INTO `jrkj_item_comment_img` VALUES ('54', '190', '299', '1007', '/data/attachment/item/1610/28/5812905246561.jpg', '1477611602');

-- ----------------------------
-- Table structure for jrkj_item_img
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item_img`;
CREATE TABLE `jrkj_item_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item_img
-- ----------------------------
INSERT INTO `jrkj_item_img` VALUES ('213', '292', '2016/10/57ff4a9592397.jpg', '0', '255', '1');
INSERT INTO `jrkj_item_img` VALUES ('214', '292', '2016/10/57ff4a95a94b6.jpg', '0', '255', '1');
INSERT INTO `jrkj_item_img` VALUES ('215', '292', '2016/10/57ff4a95b4deb.jpg', '0', '255', '1');
INSERT INTO `jrkj_item_img` VALUES ('216', '295', '2016/10/57ff4b0a59050.jpg', '0', '255', '1');
INSERT INTO `jrkj_item_img` VALUES ('217', '295', '2016/10/57ff4b0a71322.jpg', '0', '255', '1');
INSERT INTO `jrkj_item_img` VALUES ('218', '295', '2016/10/57ff4b0a7d2d0.jpg', '0', '255', '1');
INSERT INTO `jrkj_item_img` VALUES ('226', '290', '2016/10/5801981501441.jpg', '0', '255', '1');
INSERT INTO `jrkj_item_img` VALUES ('227', '290', '2016/10/58019853857ef.jpg', '0', '255', '1');
INSERT INTO `jrkj_item_img` VALUES ('223', '301', '2016/10/58019495617a5.jpg', '0', '255', '1');
INSERT INTO `jrkj_item_img` VALUES ('224', '301', '2016/10/580194cf183a2.jpg', '0', '255', '1');
INSERT INTO `jrkj_item_img` VALUES ('225', '301', '2016/10/58019508cd919.jpg', '0', '255', '1');
INSERT INTO `jrkj_item_img` VALUES ('228', '290', '2016/10/580198904d04d.jpg', '0', '255', '1');
INSERT INTO `jrkj_item_img` VALUES ('229', '291', '2016/10/58019b054c770.jpg', '0', '255', '1');
INSERT INTO `jrkj_item_img` VALUES ('230', '291', '2016/10/58019b055d278.jpg', '0', '255', '1');
INSERT INTO `jrkj_item_img` VALUES ('231', '289', '2016/10/58019c9909b5c.jpg', '0', '255', '1');

-- ----------------------------
-- Table structure for jrkj_item_sku
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item_sku`;
CREATE TABLE `jrkj_item_sku` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku_id` varchar(255) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `stock` int(11) NOT NULL DEFAULT '0',
  `sku_sn` varchar(20) NOT NULL DEFAULT '',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `settle_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item_sku
-- ----------------------------
INSERT INTO `jrkj_item_sku` VALUES ('46', '', '8.00', '2', '', '294', '0.00');
INSERT INTO `jrkj_item_sku` VALUES ('47', '', '1.00', '1', '', '295', '0.00');
INSERT INTO `jrkj_item_sku` VALUES ('48', '', '0.00', '0', '', '296', '0.00');
INSERT INTO `jrkj_item_sku` VALUES ('51', '', '1.00', '1', '', '299', '0.00');
INSERT INTO `jrkj_item_sku` VALUES ('53', '', '5.00', '0', '', '301', '0.00');

-- ----------------------------
-- Table structure for jrkj_item_tag
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item_tag`;
CREATE TABLE `jrkj_item_tag` (
  `item_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `item_id` (`item_id`,`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item_tag
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_item_type
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item_type`;
CREATE TABLE `jrkj_item_type` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(60) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_group` varchar(255) NOT NULL,
  `ordid` tinyint(4) unsigned NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item_type
-- ----------------------------
INSERT INTO `jrkj_item_type` VALUES ('1', '衣服', '1', '', '100');
INSERT INTO `jrkj_item_type` VALUES ('2', '裤子', '1', '', '100');
INSERT INTO `jrkj_item_type` VALUES ('3', '全部', '1', '', '100');

-- ----------------------------
-- Table structure for jrkj_item_type_attr
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_item_type_attr`;
CREATE TABLE `jrkj_item_type_attr` (
  `item_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`item_attr_id`),
  KEY `goods_id` (`item_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_item_type_attr
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_linkage
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_linkage`;
CREATE TABLE `jrkj_linkage` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `style` varchar(35) NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `child` tinyint(1) NOT NULL,
  `arrchildid` mediumtext NOT NULL,
  `keyid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `setting` varchar(255) DEFAULT NULL,
  `siteid` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`keyid`),
  KEY `parentid` (`parentid`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3360 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_linkage
-- ----------------------------
INSERT INTO `jrkj_linkage` VALUES ('1', '中国', '1', '0', '0', '', '0', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2', '北京市', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3', '上海市', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('4', '天津市', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('5', '重庆市', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('6', '河北省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('7', '山西省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('8', '内蒙古', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('9', '辽宁省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('10', '吉林省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('11', '黑龙江省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('12', '江苏省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('13', '浙江省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('14', '安徽省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('15', '福建省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('16', '江西省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('17', '山东省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('18', '河南省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('19', '湖北省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('20', '湖南省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('21', '广东省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('22', '广西', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('23', '海南省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('24', '四川省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('25', '贵州省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('26', '云南省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('27', '西藏', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('28', '陕西省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('29', '甘肃省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('30', '青海省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('31', '宁夏', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('32', '新疆', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('33', '台湾省', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('34', '香港', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('35', '澳门', '0', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('36', '东城区', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('37', '西城区', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('38', '崇文区', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('39', '宣武区', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('40', '朝阳区', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('41', '石景山区', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('42', '海淀区', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('43', '门头沟区', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('44', '房山区', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('45', '通州区', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('46', '顺义区', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('47', '昌平区', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('48', '大兴区', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('49', '怀柔区', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('50', '平谷区', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('51', '密云县', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('52', '延庆县', '0', '2', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('53', '黄浦区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('54', '卢湾区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('55', '徐汇区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('56', '长宁区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('57', '静安区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('58', '普陀区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('59', '闸北区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('60', '虹口区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('61', '杨浦区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('62', '闵行区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('63', '宝山区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('64', '嘉定区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('65', '浦东新区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('66', '金山区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('67', '松江区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('68', '青浦区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('69', '南汇区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('70', '奉贤区', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('71', '崇明县', '0', '3', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('72', '和平区', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('73', '河东区', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('74', '河西区', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('75', '南开区', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('76', '河北区', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('77', '红桥区', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('78', '塘沽区', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('79', '汉沽区', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('80', '大港区', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('81', '东丽区', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('82', '西青区', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('83', '津南区', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('84', '北辰区', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('85', '武清区', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('86', '宝坻区', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('87', '宁河县', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('88', '静海县', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('89', '蓟县', '0', '4', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('90', '万州区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('91', '涪陵区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('92', '渝中区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('93', '大渡口区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('94', '江北区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('95', '沙坪坝区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('96', '九龙坡区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('97', '南岸区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('98', '北碚区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('99', '万盛区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('100', '双桥区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('101', '渝北区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('102', '巴南区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('103', '黔江区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('104', '长寿区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('105', '綦江县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('106', '潼南县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('107', '铜梁县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('108', '大足县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('109', '荣昌县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('110', '璧山县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('111', '梁平县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('112', '城口县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('113', '丰都县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('114', '垫江县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('115', '武隆县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('116', '忠县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('117', '开县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('118', '云阳县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('119', '奉节县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('120', '巫山县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('121', '巫溪县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('122', '石柱县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('123', '秀山县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('124', '酉阳县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('125', '彭水县', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('126', '江津区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('127', '合川区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('128', '永川区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('129', '南川区', '0', '5', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('130', '石家庄市', '0', '6', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('131', '唐山市', '0', '6', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('132', '秦皇岛市', '0', '6', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('133', '邯郸市', '0', '6', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('134', '邢台市', '0', '6', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('135', '保定市', '0', '6', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('136', '张家口市', '0', '6', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('137', '承德市', '0', '6', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('138', '沧州市', '0', '6', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('139', '廊坊市', '0', '6', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('140', '衡水市', '0', '6', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('141', '太原市', '0', '7', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('142', '大同市', '0', '7', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('143', '阳泉市', '0', '7', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('144', '长治市', '0', '7', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('145', '晋城市', '0', '7', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('146', '朔州市', '0', '7', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('147', '晋中市', '0', '7', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('148', '运城市', '0', '7', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('149', '忻州市', '0', '7', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('150', '临汾市', '0', '7', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('151', '吕梁市', '0', '7', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('152', '呼和浩特市', '0', '8', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('153', '包头市', '0', '8', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('154', '乌海市', '0', '8', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('155', '赤峰市', '0', '8', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('156', '通辽市', '0', '8', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('157', '鄂尔多斯市', '0', '8', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('158', '呼伦贝尔市', '0', '8', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('159', '巴彦淖尔市', '0', '8', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('160', '乌兰察布市', '0', '8', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('161', '兴安盟', '0', '8', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('162', '锡林郭勒盟', '0', '8', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('163', '阿拉善盟', '0', '8', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('164', '沈阳市', '0', '9', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('165', '大连市', '0', '9', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('166', '鞍山市', '0', '9', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('167', '抚顺市', '0', '9', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('168', '本溪市', '0', '9', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('169', '丹东市', '0', '9', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('170', '锦州市', '0', '9', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('171', '营口市', '0', '9', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('172', '阜新市', '0', '9', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('173', '辽阳市', '0', '9', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('174', '盘锦市', '0', '9', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('175', '铁岭市', '0', '9', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('176', '朝阳市', '0', '9', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('177', '葫芦岛市', '0', '9', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('178', '长春市', '0', '10', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('179', '吉林市', '0', '10', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('180', '四平市', '0', '10', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('181', '辽源市', '0', '10', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('182', '通化市', '0', '10', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('183', '白山市', '0', '10', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('184', '松原市', '0', '10', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('185', '白城市', '0', '10', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('186', '延边', '0', '10', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('187', '哈尔滨市', '0', '11', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('188', '齐齐哈尔市', '0', '11', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('189', '鸡西市', '0', '11', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('190', '鹤岗市', '0', '11', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('191', '双鸭山市', '0', '11', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('192', '大庆市', '0', '11', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('193', '伊春市', '0', '11', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('194', '佳木斯市', '0', '11', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('195', '七台河市', '0', '11', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('196', '牡丹江市', '0', '11', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('197', '黑河市', '0', '11', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('198', '绥化市', '0', '11', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('199', '大兴安岭地区', '0', '11', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('200', '南京市', '0', '12', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('201', '无锡市', '0', '12', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('202', '徐州市', '0', '12', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('203', '常州市', '0', '12', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('204', '苏州市', '0', '12', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('205', '南通市', '0', '12', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('206', '连云港市', '0', '12', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('207', '淮安市', '0', '12', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('208', '盐城市', '0', '12', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('209', '扬州市', '0', '12', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('210', '镇江市', '0', '12', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('211', '泰州市', '0', '12', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('212', '宿迁市', '0', '12', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('213', '杭州市', '0', '13', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('214', '宁波市', '0', '13', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('215', '温州市', '0', '13', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('216', '嘉兴市', '0', '13', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('217', '湖州市', '0', '13', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('218', '绍兴市', '0', '13', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('219', '金华市', '0', '13', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('220', '衢州市', '0', '13', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('221', '舟山市', '0', '13', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('222', '台州市', '0', '13', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('223', '丽水市', '0', '13', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('224', '合肥市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('225', '芜湖市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('226', '蚌埠市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('227', '淮南市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('228', '马鞍山市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('229', '淮北市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('230', '铜陵市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('231', '安庆市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('232', '黄山市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('233', '滁州市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('234', '阜阳市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('235', '宿州市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('236', '巢湖市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('237', '六安市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('238', '亳州市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('239', '池州市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('240', '宣城市', '0', '14', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('241', '福州市', '0', '15', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('242', '厦门市', '0', '15', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('243', '莆田市', '0', '15', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('244', '三明市', '0', '15', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('245', '泉州市', '0', '15', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('246', '漳州市', '0', '15', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('247', '南平市', '0', '15', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('248', '龙岩市', '0', '15', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('249', '宁德市', '0', '15', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('250', '南昌市', '0', '16', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('251', '景德镇市', '0', '16', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('252', '萍乡市', '0', '16', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('253', '九江市', '0', '16', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('254', '新余市', '0', '16', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('255', '鹰潭市', '0', '16', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('256', '赣州市', '0', '16', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('257', '吉安市', '0', '16', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('258', '宜春市', '0', '16', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('259', '抚州市', '0', '16', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('260', '上饶市', '0', '16', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('261', '济南市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('262', '青岛市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('263', '淄博市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('264', '枣庄市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('265', '东营市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('266', '烟台市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('267', '潍坊市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('268', '济宁市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('269', '泰安市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('270', '威海市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('271', '日照市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('272', '莱芜市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('273', '临沂市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('274', '德州市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('275', '聊城市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('276', '滨州市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('277', '荷泽市', '0', '17', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('278', '郑州市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('279', '开封市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('280', '洛阳市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('281', '平顶山市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('282', '安阳市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('283', '鹤壁市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('284', '新乡市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('285', '焦作市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('286', '濮阳市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('287', '许昌市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('288', '漯河市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('289', '三门峡市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('290', '南阳市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('291', '商丘市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('292', '信阳市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('293', '周口市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('294', '驻马店市', '0', '18', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('295', '武汉市', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('296', '黄石市', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('297', '十堰市', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('298', '宜昌市', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('299', '襄樊市', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('300', '鄂州市', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('301', '荆门市', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('302', '孝感市', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('303', '荆州市', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('304', '黄冈市', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('305', '咸宁市', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('306', '随州市', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('307', '恩施土家族苗族自治州', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('308', '仙桃市', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('309', '潜江市', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('310', '天门市', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('311', '神农架林区', '0', '19', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('312', '长沙市', '0', '20', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('313', '株洲市', '0', '20', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('314', '湘潭市', '0', '20', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('315', '衡阳市', '0', '20', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('316', '邵阳市', '0', '20', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('317', '岳阳市', '0', '20', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('318', '常德市', '0', '20', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('319', '张家界市', '0', '20', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('320', '益阳市', '0', '20', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('321', '郴州市', '0', '20', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('322', '永州市', '0', '20', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('323', '怀化市', '0', '20', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('324', '娄底市', '0', '20', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('325', '湘西土家族苗族自治州', '0', '20', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('326', '广州市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('327', '韶关市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('328', '深圳市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('329', '珠海市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('330', '汕头市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('331', '佛山市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('332', '江门市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('333', '湛江市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('334', '茂名市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('335', '肇庆市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('336', '惠州市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('337', '梅州市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('338', '汕尾市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('339', '河源市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('340', '阳江市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('341', '清远市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('342', '东莞市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('343', '中山市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('344', '潮州市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('345', '揭阳市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('346', '云浮市', '0', '21', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('347', '南宁市', '0', '22', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('348', '柳州市', '0', '22', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('349', '桂林市', '0', '22', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('350', '梧州市', '0', '22', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('351', '北海市', '0', '22', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('352', '防城港市', '0', '22', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('353', '钦州市', '0', '22', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('354', '贵港市', '0', '22', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('355', '玉林市', '0', '22', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('356', '百色市', '0', '22', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('357', '贺州市', '0', '22', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('358', '河池市', '0', '22', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('359', '来宾市', '0', '22', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('360', '崇左市', '0', '22', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('361', '海口市', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('362', '三亚市', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('363', '五指山市', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('364', '琼海市', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('365', '儋州市', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('366', '文昌市', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('367', '万宁市', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('368', '东方市', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('369', '定安县', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('370', '屯昌县', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('371', '澄迈县', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('372', '临高县', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('373', '白沙黎族自治县', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('374', '昌江黎族自治县', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('375', '乐东黎族自治县', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('376', '陵水黎族自治县', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('377', '保亭黎族苗族自治县', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('378', '琼中黎族苗族自治县', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('379', '西沙群岛', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('380', '南沙群岛', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('381', '中沙群岛的岛礁及其海域', '0', '23', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('382', '成都市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('383', '自贡市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('384', '攀枝花市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('385', '泸州市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('386', '德阳市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('387', '绵阳市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('388', '广元市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('389', '遂宁市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('390', '内江市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('391', '乐山市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('392', '南充市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('393', '眉山市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('394', '宜宾市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('395', '广安市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('396', '达州市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('397', '雅安市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('398', '巴中市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('399', '资阳市', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('400', '阿坝州', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('401', '甘孜州', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('402', '凉山州', '0', '24', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('403', '贵阳市', '0', '25', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('404', '六盘水市', '0', '25', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('405', '遵义市', '0', '25', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('406', '安顺市', '0', '25', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('407', '铜仁地区', '0', '25', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('408', '黔西南州', '0', '25', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('409', '毕节地区', '0', '25', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('410', '黔东南州', '0', '25', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('411', '黔南州', '0', '25', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('412', '昆明市', '0', '26', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('413', '曲靖市', '0', '26', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('414', '玉溪市', '0', '26', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('415', '保山市', '0', '26', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('416', '昭通市', '0', '26', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('417', '丽江市', '0', '26', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('418', '思茅市', '0', '26', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('419', '临沧市', '0', '26', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('420', '楚雄州', '0', '26', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('421', '红河州', '0', '26', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('422', '文山州', '0', '26', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('423', '西双版纳', '0', '26', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('424', '大理', '0', '26', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('425', '德宏', '0', '26', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('426', '怒江', '0', '26', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('427', '迪庆', '0', '26', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('428', '拉萨市', '0', '27', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('429', '昌都', '0', '27', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('430', '山南', '0', '27', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('431', '日喀则', '0', '27', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('432', '那曲', '0', '27', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('433', '阿里', '0', '27', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('434', '林芝', '0', '27', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('435', '西安市', '0', '28', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('436', '铜川市', '0', '28', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('437', '宝鸡市', '0', '28', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('438', '咸阳市', '0', '28', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('439', '渭南市', '0', '28', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('440', '延安市', '0', '28', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('441', '汉中市', '0', '28', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('442', '榆林市', '0', '28', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('443', '安康市', '0', '28', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('444', '商洛市', '0', '28', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('445', '兰州市', '0', '29', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('446', '嘉峪关市', '0', '29', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('447', '金昌市', '0', '29', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('448', '白银市', '0', '29', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('449', '天水市', '0', '29', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('450', '武威市', '0', '29', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('451', '张掖市', '0', '29', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('452', '平凉市', '0', '29', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('453', '酒泉市', '0', '29', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('454', '庆阳市', '0', '29', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('455', '定西市', '0', '29', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('456', '陇南市', '0', '29', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('457', '临夏州', '0', '29', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('458', '甘州', '0', '29', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('459', '西宁市', '0', '30', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('460', '海东地区', '0', '30', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('461', '海州', '0', '30', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('462', '黄南州', '0', '30', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('463', '海南州', '0', '30', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('464', '果洛州', '0', '30', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('465', '玉树州', '0', '30', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('466', '海西州', '0', '30', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('467', '银川市', '0', '31', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('468', '石嘴山市', '0', '31', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('469', '吴忠市', '0', '31', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('470', '固原市', '0', '31', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('471', '中卫市', '0', '31', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('472', '乌鲁木齐市', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('473', '克拉玛依市', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('474', '吐鲁番地区', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('475', '哈密地区', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('476', '昌吉州', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('477', '博尔州', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('478', '巴音郭楞州', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('479', '阿克苏地区', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('480', '克孜勒苏柯尔克孜自治州', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('481', '喀什地区', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('482', '和田地区', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('483', '伊犁州', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('484', '塔城地区', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('485', '阿勒泰地区', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('486', '石河子市', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('487', '阿拉尔市', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('488', '图木舒克市', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('489', '五家渠市', '0', '32', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('490', '台北市', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('491', '高雄市', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('492', '基隆市', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('493', '新竹市', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('494', '台中市', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('495', '嘉义市', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('496', '台南市', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('497', '台北县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('498', '桃园县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('499', '新竹县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('500', '苗栗县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('501', '台中县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('502', '彰化县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('503', '南投县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('504', '云林县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('505', '嘉义县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('506', '台南县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('507', '高雄县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('508', '屏东县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('509', '宜兰县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('510', '花莲县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('511', '台东县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('512', '澎湖县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('513', '金门县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('514', '连江县', '0', '33', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('515', '中西区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('516', '东区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('517', '南区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('518', '湾仔区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('519', '九龙城区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('520', '观塘区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('521', '深水埗区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('522', '黄大仙区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('523', '油尖旺区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('524', '离岛区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('525', '葵青区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('526', '北区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('527', '西贡区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('528', '沙田区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('529', '大埔区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('530', '荃湾区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('531', '屯门区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('532', '元朗区', '0', '34', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('533', '花地玛堂区', '0', '35', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('534', '市圣安多尼堂区', '0', '35', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('535', '大堂区', '0', '35', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('536', '望德堂区', '0', '35', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('537', '风顺堂区', '0', '35', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('538', '嘉模堂区', '0', '35', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('539', '圣方济各堂区', '0', '35', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('540', '长安区', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('541', '桥东区', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('542', '桥西区', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('543', '新华区', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('544', '井陉矿区', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('545', '裕华区', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('546', '井陉县', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('547', '正定县', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('548', '栾城县', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('549', '行唐县', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('550', '灵寿县', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('551', '高邑县', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('552', '深泽县', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('553', '赞皇县', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('554', '无极县', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('555', '平山县', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('556', '元氏县', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('557', '赵县', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('558', '辛集市', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('559', '藁城市', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('560', '晋州市', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('561', '新乐市', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('562', '鹿泉市', '0', '130', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('563', '路南区', '0', '131', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('564', '路北区', '0', '131', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('565', '古冶区', '0', '131', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('566', '开平区', '0', '131', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('567', '丰南区', '0', '131', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('568', '丰润区', '0', '131', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('569', '滦县', '0', '131', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('570', '滦南县', '0', '131', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('571', '乐亭县', '0', '131', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('572', '迁西县', '0', '131', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('573', '玉田县', '0', '131', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('574', '唐海县', '0', '131', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('575', '遵化市', '0', '131', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('576', '迁安市', '0', '131', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('577', '海港区', '0', '132', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('578', '山海关区', '0', '132', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('579', '北戴河区', '0', '132', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('580', '青龙县', '0', '132', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('581', '昌黎县', '0', '132', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('582', '抚宁县', '0', '132', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('583', '卢龙县', '0', '132', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('584', '邯山区', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('585', '丛台区', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('586', '复兴区', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('587', '峰峰矿区', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('588', '邯郸县', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('589', '临漳县', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('590', '成安县', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('591', '大名县', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('592', '涉县', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('593', '磁县', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('594', '肥乡县', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('595', '永年县', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('596', '邱县', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('597', '鸡泽县', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('598', '广平县', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('599', '馆陶县', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('600', '魏县', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('601', '曲周县', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('602', '武安市', '0', '133', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('603', '桥东区', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('604', '桥西区', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('605', '邢台县', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('606', '临城县', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('607', '内丘县', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('608', '柏乡县', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('609', '隆尧县', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('610', '任县', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('611', '南和县', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('612', '宁晋县', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('613', '巨鹿县', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('614', '新河县', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('615', '广宗县', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('616', '平乡县', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('617', '威县', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('618', '清河县', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('619', '临西县', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('620', '南宫市', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('621', '沙河市', '0', '134', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('622', '新市区', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('623', '北市区', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('624', '南市区', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('625', '满城县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('626', '清苑县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('627', '涞水县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('628', '阜平县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('629', '徐水县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('630', '定兴县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('631', '唐县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('632', '高阳县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('633', '容城县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('634', '涞源县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('635', '望都县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('636', '安新县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('637', '易县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('638', '曲阳县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('639', '蠡县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('640', '顺平县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('641', '博野县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('642', '雄县', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('643', '涿州市', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('644', '定州市', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('645', '安国市', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('646', '高碑店市', '0', '135', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('647', '桥东区', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('648', '桥西区', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('649', '宣化区', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('650', '下花园区', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('651', '宣化县', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('652', '张北县', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('653', '康保县', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('654', '沽源县', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('655', '尚义县', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('656', '蔚县', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('657', '阳原县', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('658', '怀安县', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('659', '万全县', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('660', '怀来县', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('661', '涿鹿县', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('662', '赤城县', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('663', '崇礼县', '0', '136', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('664', '双桥区', '0', '137', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('665', '双滦区', '0', '137', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('666', '鹰手营子矿区', '0', '137', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('667', '承德县', '0', '137', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('668', '兴隆县', '0', '137', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('669', '平泉县', '0', '137', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('670', '滦平县', '0', '137', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('671', '隆化县', '0', '137', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('672', '丰宁县', '0', '137', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('673', '宽城县', '0', '137', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('674', '围场县', '0', '137', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('675', '新华区', '0', '138', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('676', '运河区', '0', '138', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('677', '沧县', '0', '138', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('678', '青县', '0', '138', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('679', '东光县', '0', '138', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('680', '海兴县', '0', '138', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('681', '盐山县', '0', '138', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('682', '肃宁县', '0', '138', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('683', '南皮县', '0', '138', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('684', '吴桥县', '0', '138', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('685', '献县', '0', '138', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('686', '孟村县', '0', '138', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('687', '泊头市', '0', '138', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('688', '任丘市', '0', '138', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('689', '黄骅市', '0', '138', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('690', '河间市', '0', '138', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('691', '安次区', '0', '139', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('692', '广阳区', '0', '139', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('693', '固安县', '0', '139', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('694', '永清县', '0', '139', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('695', '香河县', '0', '139', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('696', '大城县', '0', '139', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('697', '文安县', '0', '139', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('698', '大厂县', '0', '139', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('699', '霸州市', '0', '139', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('700', '三河市', '0', '139', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('701', '桃城区', '0', '140', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('702', '枣强县', '0', '140', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('703', '武邑县', '0', '140', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('704', '武强县', '0', '140', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('705', '饶阳县', '0', '140', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('706', '安平县', '0', '140', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('707', '故城县', '0', '140', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('708', '景县', '0', '140', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('709', '阜城县', '0', '140', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('710', '冀州市', '0', '140', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('711', '深州市', '0', '140', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('712', '小店区', '0', '141', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('713', '迎泽区', '0', '141', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('714', '杏花岭区', '0', '141', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('715', '尖草坪区', '0', '141', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('716', '万柏林区', '0', '141', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('717', '晋源区', '0', '141', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('718', '清徐县', '0', '141', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('719', '阳曲县', '0', '141', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('720', '娄烦县', '0', '141', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('721', '古交市', '0', '141', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('722', '城区', '0', '142', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('723', '矿区', '0', '142', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('724', '南郊区', '0', '142', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('725', '新荣区', '0', '142', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('726', '阳高县', '0', '142', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('727', '天镇县', '0', '142', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('728', '广灵县', '0', '142', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('729', '灵丘县', '0', '142', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('730', '浑源县', '0', '142', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('731', '左云县', '0', '142', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('732', '大同县', '0', '142', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('733', '城区', '0', '143', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('734', '矿区', '0', '143', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('735', '郊区', '0', '143', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('736', '平定县', '0', '143', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('737', '盂县', '0', '143', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('738', '城区', '0', '144', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('739', '郊区', '0', '144', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('740', '长治县', '0', '144', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('741', '襄垣县', '0', '144', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('742', '屯留县', '0', '144', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('743', '平顺县', '0', '144', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('744', '黎城县', '0', '144', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('745', '壶关县', '0', '144', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('746', '长子县', '0', '144', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('747', '武乡县', '0', '144', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('748', '沁县', '0', '144', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('749', '沁源县', '0', '144', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('750', '潞城市', '0', '144', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('751', '城区', '0', '145', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('752', '沁水县', '0', '145', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('753', '阳城县', '0', '145', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('754', '陵川县', '0', '145', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('755', '泽州县', '0', '145', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('756', '高平市', '0', '145', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('757', '朔城区', '0', '146', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('758', '平鲁区', '0', '146', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('759', '山阴县', '0', '146', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('760', '应县', '0', '146', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('761', '右玉县', '0', '146', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('762', '怀仁县', '0', '146', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('763', '榆次区', '0', '147', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('764', '榆社县', '0', '147', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('765', '左权县', '0', '147', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('766', '和顺县', '0', '147', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('767', '昔阳县', '0', '147', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('768', '寿阳县', '0', '147', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('769', '太谷县', '0', '147', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('770', '祁县', '0', '147', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('771', '平遥县', '0', '147', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('772', '灵石县', '0', '147', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('773', '介休市', '0', '147', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('774', '盐湖区', '0', '148', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('775', '临猗县', '0', '148', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('776', '万荣县', '0', '148', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('777', '闻喜县', '0', '148', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('778', '稷山县', '0', '148', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('779', '新绛县', '0', '148', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('780', '绛县', '0', '148', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('781', '垣曲县', '0', '148', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('782', '夏县', '0', '148', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('783', '平陆县', '0', '148', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('784', '芮城县', '0', '148', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('785', '永济市', '0', '148', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('786', '河津市', '0', '148', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('787', '忻府区', '0', '149', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('788', '定襄县', '0', '149', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('789', '五台县', '0', '149', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('790', '代县', '0', '149', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('791', '繁峙县', '0', '149', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('792', '宁武县', '0', '149', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('793', '静乐县', '0', '149', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('794', '神池县', '0', '149', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('795', '五寨县', '0', '149', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('796', '岢岚县', '0', '149', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('797', '河曲县', '0', '149', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('798', '保德县', '0', '149', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('799', '偏关县', '0', '149', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('800', '原平市', '0', '149', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('801', '尧都区', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('802', '曲沃县', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('803', '翼城县', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('804', '襄汾县', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('805', '洪洞县', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('806', '古县', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('807', '安泽县', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('808', '浮山县', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('809', '吉县', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('810', '乡宁县', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('811', '大宁县', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('812', '隰县', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('813', '永和县', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('814', '蒲县', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('815', '汾西县', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('816', '侯马市', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('817', '霍州市', '0', '150', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('818', '离石区', '0', '151', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('819', '文水县', '0', '151', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('820', '交城县', '0', '151', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('821', '兴县', '0', '151', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('822', '临县', '0', '151', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('823', '柳林县', '0', '151', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('824', '石楼县', '0', '151', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('825', '岚县', '0', '151', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('826', '方山县', '0', '151', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('827', '中阳县', '0', '151', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('828', '交口县', '0', '151', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('829', '孝义市', '0', '151', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('830', '汾阳市', '0', '151', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('831', '新城区', '0', '152', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('832', '回民区', '0', '152', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('833', '玉泉区', '0', '152', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('834', '赛罕区', '0', '152', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('835', '土默特左旗', '0', '152', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('836', '托克托县', '0', '152', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('837', '和林格尔县', '0', '152', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('838', '清水河县', '0', '152', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('839', '武川县', '0', '152', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('840', '东河区', '0', '153', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('841', '昆都仑区', '0', '153', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('842', '青山区', '0', '153', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('843', '石拐区', '0', '153', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('844', '白云矿区', '0', '153', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('845', '九原区', '0', '153', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('846', '土默特右旗', '0', '153', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('847', '固阳县', '0', '153', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('848', '达尔罕茂明安联合旗', '0', '153', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('849', '海勃湾区', '0', '154', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('850', '海南区', '0', '154', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('851', '乌达区', '0', '154', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('852', '红山区', '0', '155', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('853', '元宝山区', '0', '155', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('854', '松山区', '0', '155', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('855', '阿鲁科尔沁旗', '0', '155', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('856', '巴林左旗', '0', '155', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('857', '巴林右旗', '0', '155', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('858', '林西县', '0', '155', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('859', '克什克腾旗', '0', '155', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('860', '翁牛特旗', '0', '155', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('861', '喀喇沁旗', '0', '155', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('862', '宁城县', '0', '155', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('863', '敖汉旗', '0', '155', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('864', '科尔沁区', '0', '156', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('865', '科尔沁左翼中旗', '0', '156', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('866', '科尔沁左翼后旗', '0', '156', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('867', '开鲁县', '0', '156', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('868', '库伦旗', '0', '156', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('869', '奈曼旗', '0', '156', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('870', '扎鲁特旗', '0', '156', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('871', '霍林郭勒市', '0', '156', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('872', '东胜区', '0', '157', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('873', '达拉特旗', '0', '157', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('874', '准格尔旗', '0', '157', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('875', '鄂托克前旗', '0', '157', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('876', '鄂托克旗', '0', '157', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('877', '杭锦旗', '0', '157', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('878', '乌审旗', '0', '157', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('879', '伊金霍洛旗', '0', '157', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('880', '海拉尔区', '0', '158', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('881', '阿荣旗', '0', '158', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('882', '莫力达瓦达斡尔族自治旗', '0', '158', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('883', '鄂伦春自治旗', '0', '158', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('884', '鄂温克族自治旗', '0', '158', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('885', '陈巴尔虎旗', '0', '158', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('886', '新巴尔虎左旗', '0', '158', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('887', '新巴尔虎右旗', '0', '158', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('888', '满洲里市', '0', '158', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('889', '牙克石市', '0', '158', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('890', '扎兰屯市', '0', '158', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('891', '额尔古纳市', '0', '158', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('892', '根河市', '0', '158', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('893', '临河区', '0', '159', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('894', '五原县', '0', '159', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('895', '磴口县', '0', '159', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('896', '乌拉特前旗', '0', '159', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('897', '乌拉特中旗', '0', '159', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('898', '乌拉特后旗', '0', '159', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('899', '杭锦后旗', '0', '159', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('900', '集宁区', '0', '160', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('901', '卓资县', '0', '160', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('902', '化德县', '0', '160', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('903', '商都县', '0', '160', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('904', '兴和县', '0', '160', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('905', '凉城县', '0', '160', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('906', '察哈尔右翼前旗', '0', '160', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('907', '察哈尔右翼中旗', '0', '160', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('908', '察哈尔右翼后旗', '0', '160', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('909', '四子王旗', '0', '160', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('910', '丰镇市', '0', '160', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('911', '乌兰浩特市', '0', '161', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('912', '阿尔山市', '0', '161', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('913', '科尔沁右翼前旗', '0', '161', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('914', '科尔沁右翼中旗', '0', '161', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('915', '扎赉特旗', '0', '161', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('916', '突泉县', '0', '161', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('917', '二连浩特市', '0', '162', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('918', '锡林浩特市', '0', '162', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('919', '阿巴嘎旗', '0', '162', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('920', '苏尼特左旗', '0', '162', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('921', '苏尼特右旗', '0', '162', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('922', '东乌珠穆沁旗', '0', '162', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('923', '西乌珠穆沁旗', '0', '162', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('924', '太仆寺旗', '0', '162', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('925', '镶黄旗', '0', '162', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('926', '正镶白旗', '0', '162', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('927', '正蓝旗', '0', '162', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('928', '多伦县', '0', '162', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('929', '阿拉善左旗', '0', '163', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('930', '阿拉善右旗', '0', '163', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('931', '额济纳旗', '0', '163', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('932', '和平区', '0', '164', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('933', '沈河区', '0', '164', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('934', '大东区', '0', '164', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('935', '皇姑区', '0', '164', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('936', '铁西区', '0', '164', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('937', '苏家屯区', '0', '164', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('938', '东陵区', '0', '164', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('939', '新城子区', '0', '164', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('940', '于洪区', '0', '164', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('941', '辽中县', '0', '164', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('942', '康平县', '0', '164', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('943', '法库县', '0', '164', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('944', '新民市', '0', '164', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('945', '中山区', '0', '165', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('946', '西岗区', '0', '165', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('947', '沙河口区', '0', '165', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('948', '甘井子区', '0', '165', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('949', '旅顺口区', '0', '165', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('950', '金州区', '0', '165', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('951', '长海县', '0', '165', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('952', '瓦房店市', '0', '165', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('953', '普兰店市', '0', '165', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('954', '庄河市', '0', '165', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('955', '铁东区', '0', '166', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('956', '铁西区', '0', '166', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('957', '立山区', '0', '166', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('958', '千山区', '0', '166', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('959', '台安县', '0', '166', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('960', '岫岩满族自治县', '0', '166', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('961', '海城市', '0', '166', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('962', '新抚区', '0', '167', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('963', '东洲区', '0', '167', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('964', '望花区', '0', '167', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('965', '顺城区', '0', '167', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('966', '抚顺县', '0', '167', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('967', '新宾满族自治县', '0', '167', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('968', '清原满族自治县', '0', '167', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('969', '平山区', '0', '168', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('970', '溪湖区', '0', '168', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('971', '明山区', '0', '168', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('972', '南芬区', '0', '168', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('973', '本溪满族自治县', '0', '168', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('974', '桓仁满族自治县', '0', '168', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('975', '元宝区', '0', '169', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('976', '振兴区', '0', '169', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('977', '振安区', '0', '169', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('978', '宽甸满族自治县', '0', '169', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('979', '东港市', '0', '169', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('980', '凤城市', '0', '169', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('981', '古塔区', '0', '170', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('982', '凌河区', '0', '170', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('983', '太和区', '0', '170', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('984', '黑山县', '0', '170', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('985', '义县', '0', '170', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('986', '凌海市', '0', '170', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('987', '北镇市', '0', '170', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('988', '站前区', '0', '171', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('989', '西市区', '0', '171', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('990', '鲅鱼圈区', '0', '171', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('991', '老边区', '0', '171', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('992', '盖州市', '0', '171', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('993', '大石桥市', '0', '171', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('994', '海州区', '0', '172', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('995', '新邱区', '0', '172', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('996', '太平区', '0', '172', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('997', '清河门区', '0', '172', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('998', '细河区', '0', '172', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('999', '阜新蒙古族自治县', '0', '172', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1000', '彰武县', '0', '172', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1001', '白塔区', '0', '173', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1002', '文圣区', '0', '173', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1003', '宏伟区', '0', '173', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1004', '弓长岭区', '0', '173', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1005', '太子河区', '0', '173', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1006', '辽阳县', '0', '173', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1007', '灯塔市', '0', '173', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1008', '双台子区', '0', '174', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1009', '兴隆台区', '0', '174', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1010', '大洼县', '0', '174', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1011', '盘山县', '0', '174', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1012', '银州区', '0', '175', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1013', '清河区', '0', '175', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1014', '铁岭县', '0', '175', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1015', '西丰县', '0', '175', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1016', '昌图县', '0', '175', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1017', '调兵山市', '0', '175', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1018', '开原市', '0', '175', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1019', '双塔区', '0', '176', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1020', '龙城区', '0', '176', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1021', '朝阳县', '0', '176', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1022', '建平县', '0', '176', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1023', '喀喇沁左翼蒙古族自治县', '0', '176', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1024', '北票市', '0', '176', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1025', '凌源市', '0', '176', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1026', '连山区', '0', '177', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1027', '龙港区', '0', '177', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1028', '南票区', '0', '177', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1029', '绥中县', '0', '177', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1030', '建昌县', '0', '177', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1031', '兴城市', '0', '177', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1032', '南关区', '0', '178', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1033', '宽城区', '0', '178', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1034', '朝阳区', '0', '178', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1035', '二道区', '0', '178', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1036', '绿园区', '0', '178', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1037', '双阳区', '0', '178', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1038', '农安县', '0', '178', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1039', '九台市', '0', '178', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1040', '榆树市', '0', '178', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1041', '德惠市', '0', '178', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1042', '昌邑区', '0', '179', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1043', '龙潭区', '0', '179', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1044', '船营区', '0', '179', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1045', '丰满区', '0', '179', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1046', '永吉县', '0', '179', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1047', '蛟河市', '0', '179', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1048', '桦甸市', '0', '179', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1049', '舒兰市', '0', '179', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1050', '磐石市', '0', '179', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1051', '铁西区', '0', '180', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1052', '铁东区', '0', '180', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1053', '梨树县', '0', '180', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1054', '伊通满族自治县', '0', '180', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1055', '公主岭市', '0', '180', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1056', '双辽市', '0', '180', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1057', '龙山区', '0', '181', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1058', '西安区', '0', '181', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1059', '东丰县', '0', '181', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1060', '东辽县', '0', '181', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1061', '东昌区', '0', '182', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1062', '二道江区', '0', '182', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1063', '通化县', '0', '182', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1064', '辉南县', '0', '182', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1065', '柳河县', '0', '182', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1066', '梅河口市', '0', '182', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1067', '集安市', '0', '182', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1068', '八道江区', '0', '183', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1069', '抚松县', '0', '183', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1070', '靖宇县', '0', '183', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1071', '长白朝鲜族自治县', '0', '183', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1072', '江源县', '0', '183', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1073', '临江市', '0', '183', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1074', '宁江区', '0', '184', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1075', '前郭尔罗斯蒙古族自治县', '0', '184', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1076', '长岭县', '0', '184', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1077', '乾安县', '0', '184', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1078', '扶余县', '0', '184', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1079', '洮北区', '0', '185', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1080', '镇赉县', '0', '185', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1081', '通榆县', '0', '185', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1082', '洮南市', '0', '185', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1083', '大安市', '0', '185', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1084', '延吉市', '0', '186', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1085', '图们市', '0', '186', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1086', '敦化市', '0', '186', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1087', '珲春市', '0', '186', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1088', '龙井市', '0', '186', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1089', '和龙市', '0', '186', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1090', '汪清县', '0', '186', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1091', '安图县', '0', '186', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1092', '道里区', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1093', '南岗区', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1094', '道外区', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1095', '香坊区', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1096', '动力区', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1097', '平房区', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1098', '松北区', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1099', '呼兰区', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1100', '依兰县', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1101', '方正县', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1102', '宾县', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1103', '巴彦县', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1104', '木兰县', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1105', '通河县', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1106', '延寿县', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1107', '阿城市', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1108', '双城市', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1109', '尚志市', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1110', '五常市', '0', '187', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1111', '龙沙区', '0', '188', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1112', '建华区', '0', '188', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1113', '铁锋区', '0', '188', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1114', '昂昂溪区', '0', '188', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1115', '富拉尔基区', '0', '188', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1116', '碾子山区', '0', '188', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1117', '梅里斯达斡尔族区', '0', '188', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1118', '龙江县', '0', '188', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1119', '依安县', '0', '188', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1120', '泰来县', '0', '188', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1121', '甘南县', '0', '188', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1122', '富裕县', '0', '188', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1123', '克山县', '0', '188', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1124', '克东县', '0', '188', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1125', '拜泉县', '0', '188', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1126', '讷河市', '0', '188', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1127', '鸡冠区', '0', '189', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1128', '恒山区', '0', '189', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1129', '滴道区', '0', '189', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1130', '梨树区', '0', '189', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1131', '城子河区', '0', '189', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1132', '麻山区', '0', '189', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1133', '鸡东县', '0', '189', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1134', '虎林市', '0', '189', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1135', '密山市', '0', '189', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1136', '向阳区', '0', '190', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1137', '工农区', '0', '190', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1138', '南山区', '0', '190', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1139', '兴安区', '0', '190', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1140', '东山区', '0', '190', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1141', '兴山区', '0', '190', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1142', '萝北县', '0', '190', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1143', '绥滨县', '0', '190', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1144', '尖山区', '0', '191', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1145', '岭东区', '0', '191', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1146', '四方台区', '0', '191', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1147', '宝山区', '0', '191', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1148', '集贤县', '0', '191', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1149', '友谊县', '0', '191', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1150', '宝清县', '0', '191', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1151', '饶河县', '0', '191', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1152', '萨尔图区', '0', '192', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1153', '龙凤区', '0', '192', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1154', '让胡路区', '0', '192', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1155', '红岗区', '0', '192', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1156', '大同区', '0', '192', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1157', '肇州县', '0', '192', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1158', '肇源县', '0', '192', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1159', '林甸县', '0', '192', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1160', '杜尔伯特蒙古族自治县', '0', '192', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1161', '伊春区', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1162', '南岔区', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1163', '友好区', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1164', '西林区', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1165', '翠峦区', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1166', '新青区', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1167', '美溪区', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1168', '金山屯区', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1169', '五营区', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1170', '乌马河区', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1171', '汤旺河区', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1172', '带岭区', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1173', '乌伊岭区', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1174', '红星区', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1175', '上甘岭区', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1176', '嘉荫县', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1177', '铁力市', '0', '193', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1178', '永红区', '0', '194', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1179', '向阳区', '0', '194', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1180', '前进区', '0', '194', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1181', '东风区', '0', '194', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1182', '郊区', '0', '194', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1183', '桦南县', '0', '194', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1184', '桦川县', '0', '194', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1185', '汤原县', '0', '194', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1186', '抚远县', '0', '194', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1187', '同江市', '0', '194', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1188', '富锦市', '0', '194', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1189', '新兴区', '0', '195', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1190', '桃山区', '0', '195', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1191', '茄子河区', '0', '195', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1192', '勃利县', '0', '195', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1193', '东安区', '0', '196', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1194', '阳明区', '0', '196', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1195', '爱民区', '0', '196', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1196', '西安区', '0', '196', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1197', '东宁县', '0', '196', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1198', '林口县', '0', '196', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1199', '绥芬河市', '0', '196', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1200', '海林市', '0', '196', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1201', '宁安市', '0', '196', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1202', '穆棱市', '0', '196', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1203', '爱辉区', '0', '197', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1204', '嫩江县', '0', '197', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1205', '逊克县', '0', '197', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1206', '孙吴县', '0', '197', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1207', '北安市', '0', '197', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1208', '五大连池市', '0', '197', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1209', '北林区', '0', '198', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1210', '望奎县', '0', '198', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1211', '兰西县', '0', '198', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1212', '青冈县', '0', '198', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1213', '庆安县', '0', '198', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1214', '明水县', '0', '198', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1215', '绥棱县', '0', '198', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1216', '安达市', '0', '198', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1217', '肇东市', '0', '198', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1218', '海伦市', '0', '198', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1219', '呼玛县', '0', '199', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1220', '塔河县', '0', '199', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1221', '漠河县', '0', '199', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1222', '玄武区', '0', '200', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1223', '白下区', '0', '200', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1224', '秦淮区', '0', '200', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1225', '建邺区', '0', '200', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1226', '鼓楼区', '0', '200', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1227', '下关区', '0', '200', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1228', '浦口区', '0', '200', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1229', '栖霞区', '0', '200', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1230', '雨花台区', '0', '200', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1231', '江宁区', '0', '200', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1232', '六合区', '0', '200', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1233', '溧水县', '0', '200', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1234', '高淳县', '0', '200', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1235', '崇安区', '0', '201', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1236', '南长区', '0', '201', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1237', '北塘区', '0', '201', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1238', '锡山区', '0', '201', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1239', '惠山区', '0', '201', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1240', '滨湖区', '0', '201', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1241', '江阴市', '0', '201', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1242', '宜兴市', '0', '201', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1243', '鼓楼区', '0', '202', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1244', '云龙区', '0', '202', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1245', '九里区', '0', '202', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1246', '贾汪区', '0', '202', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1247', '泉山区', '0', '202', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1248', '丰县', '0', '202', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1249', '沛县', '0', '202', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1250', '铜山县', '0', '202', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1251', '睢宁县', '0', '202', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1252', '新沂市', '0', '202', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1253', '邳州市', '0', '202', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1254', '天宁区', '0', '203', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1255', '钟楼区', '0', '203', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1256', '戚墅堰区', '0', '203', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1257', '新北区', '0', '203', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1258', '武进区', '0', '203', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1259', '溧阳市', '0', '203', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1260', '金坛市', '0', '203', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1261', '沧浪区', '0', '204', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1262', '平江区', '0', '204', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1263', '金阊区', '0', '204', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1264', '虎丘区', '0', '204', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1265', '吴中区', '0', '204', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1266', '相城区', '0', '204', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1267', '常熟市', '0', '204', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1268', '张家港市', '0', '204', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1269', '昆山市', '0', '204', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1270', '吴江市', '0', '204', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1271', '太仓市', '0', '204', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1272', '崇川区', '0', '205', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1273', '港闸区', '0', '205', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1274', '海安县', '0', '205', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1275', '如东县', '0', '205', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1276', '启东市', '0', '205', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1277', '如皋市', '0', '205', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1278', '通州市', '0', '205', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1279', '海门市', '0', '205', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1280', '连云区', '0', '206', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1281', '新浦区', '0', '206', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1282', '海州区', '0', '206', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1283', '赣榆县', '0', '206', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1284', '东海县', '0', '206', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1285', '灌云县', '0', '206', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1286', '灌南县', '0', '206', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1287', '清河区', '0', '207', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1288', '楚州区', '0', '207', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1289', '淮阴区', '0', '207', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1290', '清浦区', '0', '207', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1291', '涟水县', '0', '207', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1292', '洪泽县', '0', '207', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1293', '盱眙县', '0', '207', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1294', '金湖县', '0', '207', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1295', '亭湖区', '0', '208', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1296', '盐都区', '0', '208', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1297', '响水县', '0', '208', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1298', '滨海县', '0', '208', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1299', '阜宁县', '0', '208', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1300', '射阳县', '0', '208', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1301', '建湖县', '0', '208', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1302', '东台市', '0', '208', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1303', '大丰市', '0', '208', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1304', '广陵区', '0', '209', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1305', '邗江区', '0', '209', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1306', '维扬区', '0', '209', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1307', '宝应县', '0', '209', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1308', '仪征市', '0', '209', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1309', '高邮市', '0', '209', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1310', '江都市', '0', '209', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1311', '京口区', '0', '210', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1312', '润州区', '0', '210', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1313', '丹徒区', '0', '210', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1314', '丹阳市', '0', '210', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1315', '扬中市', '0', '210', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1316', '句容市', '0', '210', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1317', '海陵区', '0', '211', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1318', '高港区', '0', '211', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1319', '兴化市', '0', '211', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1320', '靖江市', '0', '211', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1321', '泰兴市', '0', '211', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1322', '姜堰市', '0', '211', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1323', '宿城区', '0', '212', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1324', '宿豫区', '0', '212', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1325', '沭阳县', '0', '212', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1326', '泗阳县', '0', '212', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1327', '泗洪县', '0', '212', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1328', '上城区', '0', '213', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1329', '下城区', '0', '213', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1330', '江干区', '0', '213', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1331', '拱墅区', '0', '213', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1332', '西湖区', '0', '213', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1333', '滨江区', '0', '213', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1334', '萧山区', '0', '213', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1335', '余杭区', '0', '213', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1336', '桐庐县', '0', '213', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1337', '淳安县', '0', '213', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1338', '建德市', '0', '213', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1339', '富阳市', '0', '213', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1340', '临安市', '0', '213', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1341', '海曙区', '0', '214', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1342', '江东区', '0', '214', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1343', '江北区', '0', '214', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1344', '北仑区', '0', '214', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1345', '镇海区', '0', '214', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1346', '鄞州区', '0', '214', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1347', '象山县', '0', '214', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1348', '宁海县', '0', '214', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1349', '余姚市', '0', '214', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1350', '慈溪市', '0', '214', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1351', '奉化市', '0', '214', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1352', '鹿城区', '0', '215', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1353', '龙湾区', '0', '215', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1354', '瓯海区', '0', '215', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1355', '洞头县', '0', '215', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1356', '永嘉县', '0', '215', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1357', '平阳县', '0', '215', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1358', '苍南县', '0', '215', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1359', '文成县', '0', '215', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1360', '泰顺县', '0', '215', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1361', '瑞安市', '0', '215', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1362', '乐清市', '0', '215', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1363', '秀城区', '0', '216', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1364', '秀洲区', '0', '216', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1365', '嘉善县', '0', '216', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1366', '海盐县', '0', '216', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1367', '海宁市', '0', '216', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1368', '平湖市', '0', '216', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1369', '桐乡市', '0', '216', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1370', '吴兴区', '0', '217', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1371', '南浔区', '0', '217', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1372', '德清县', '0', '217', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1373', '长兴县', '0', '217', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1374', '安吉县', '0', '217', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1375', '越城区', '0', '218', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1376', '绍兴县', '0', '218', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1377', '新昌县', '0', '218', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1378', '诸暨市', '0', '218', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1379', '上虞市', '0', '218', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1380', '嵊州市', '0', '218', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1381', '婺城区', '0', '219', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1382', '金东区', '0', '219', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1383', '武义县', '0', '219', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1384', '浦江县', '0', '219', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1385', '磐安县', '0', '219', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1386', '兰溪市', '0', '219', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1387', '义乌市', '0', '219', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1388', '东阳市', '0', '219', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1389', '永康市', '0', '219', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1390', '柯城区', '0', '220', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1391', '衢江区', '0', '220', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1392', '常山县', '0', '220', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1393', '开化县', '0', '220', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1394', '龙游县', '0', '220', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1395', '江山市', '0', '220', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1396', '定海区', '0', '221', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1397', '普陀区', '0', '221', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1398', '岱山县', '0', '221', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1399', '嵊泗县', '0', '221', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1400', '椒江区', '0', '222', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1401', '黄岩区', '0', '222', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1402', '路桥区', '0', '222', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1403', '玉环县', '0', '222', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1404', '三门县', '0', '222', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1405', '天台县', '0', '222', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1406', '仙居县', '0', '222', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1407', '温岭市', '0', '222', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1408', '临海市', '0', '222', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1409', '莲都区', '0', '223', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1410', '青田县', '0', '223', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1411', '缙云县', '0', '223', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1412', '遂昌县', '0', '223', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1413', '松阳县', '0', '223', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1414', '云和县', '0', '223', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1415', '庆元县', '0', '223', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1416', '景宁畲族自治县', '0', '223', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1417', '龙泉市', '0', '223', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1418', '瑶海区', '0', '224', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1419', '庐阳区', '0', '224', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1420', '蜀山区', '0', '224', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1421', '包河区', '0', '224', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1422', '长丰县', '0', '224', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1423', '肥东县', '0', '224', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1424', '肥西县', '0', '224', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1425', '镜湖区', '0', '225', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1426', '弋江区', '0', '225', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1427', '鸠江区', '0', '225', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1428', '三山区', '0', '225', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1429', '芜湖县', '0', '225', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1430', '繁昌县', '0', '225', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1431', '南陵县', '0', '225', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1432', '龙子湖区', '0', '226', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1433', '蚌山区', '0', '226', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1434', '禹会区', '0', '226', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1435', '淮上区', '0', '226', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1436', '怀远县', '0', '226', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1437', '五河县', '0', '226', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1438', '固镇县', '0', '226', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1439', '大通区', '0', '227', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1440', '田家庵区', '0', '227', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1441', '谢家集区', '0', '227', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1442', '八公山区', '0', '227', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1443', '潘集区', '0', '227', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1444', '凤台县', '0', '227', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1445', '金家庄区', '0', '228', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1446', '花山区', '0', '228', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1447', '雨山区', '0', '228', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1448', '当涂县', '0', '228', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1449', '杜集区', '0', '229', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1450', '相山区', '0', '229', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1451', '烈山区', '0', '229', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1452', '濉溪县', '0', '229', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1453', '铜官山区', '0', '230', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1454', '狮子山区', '0', '230', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1455', '郊区', '0', '230', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1456', '铜陵县', '0', '230', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1457', '迎江区', '0', '231', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1458', '大观区', '0', '231', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1459', '宜秀区', '0', '231', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1460', '怀宁县', '0', '231', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1461', '枞阳县', '0', '231', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1462', '潜山县', '0', '231', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1463', '太湖县', '0', '231', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1464', '宿松县', '0', '231', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1465', '望江县', '0', '231', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1466', '岳西县', '0', '231', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1467', '桐城市', '0', '231', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1468', '屯溪区', '0', '232', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1469', '黄山区', '0', '232', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1470', '徽州区', '0', '232', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1471', '歙县', '0', '232', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1472', '休宁县', '0', '232', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1473', '黟县', '0', '232', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1474', '祁门县', '0', '232', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1475', '琅琊区', '0', '233', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1476', '南谯区', '0', '233', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1477', '来安县', '0', '233', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1478', '全椒县', '0', '233', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1479', '定远县', '0', '233', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1480', '凤阳县', '0', '233', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1481', '天长市', '0', '233', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1482', '明光市', '0', '233', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1483', '颍州区', '0', '234', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1484', '颍东区', '0', '234', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1485', '颍泉区', '0', '234', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1486', '临泉县', '0', '234', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1487', '太和县', '0', '234', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1488', '阜南县', '0', '234', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1489', '颍上县', '0', '234', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1490', '界首市', '0', '234', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1491', '埇桥区', '0', '235', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1492', '砀山县', '0', '235', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1493', '萧县', '0', '235', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1494', '灵璧县', '0', '235', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1495', '泗县', '0', '235', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1496', '居巢区', '0', '236', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1497', '庐江县', '0', '236', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1498', '无为县', '0', '236', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1499', '含山县', '0', '236', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1500', '和县', '0', '236', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1501', '金安区', '0', '237', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1502', '裕安区', '0', '237', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1503', '寿县', '0', '237', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1504', '霍邱县', '0', '237', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1505', '舒城县', '0', '237', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1506', '金寨县', '0', '237', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1507', '霍山县', '0', '237', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1508', '谯城区', '0', '238', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1509', '涡阳县', '0', '238', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1510', '蒙城县', '0', '238', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1511', '利辛县', '0', '238', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1512', '贵池区', '0', '239', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1513', '东至县', '0', '239', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1514', '石台县', '0', '239', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1515', '青阳县', '0', '239', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1516', '宣州区', '0', '240', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1517', '郎溪县', '0', '240', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1518', '广德县', '0', '240', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1519', '泾县', '0', '240', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1520', '绩溪县', '0', '240', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1521', '旌德县', '0', '240', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1522', '宁国市', '0', '240', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1523', '鼓楼区', '0', '241', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1524', '台江区', '0', '241', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1525', '仓山区', '0', '241', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1526', '马尾区', '0', '241', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1527', '晋安区', '0', '241', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1528', '闽侯县', '0', '241', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1529', '连江县', '0', '241', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1530', '罗源县', '0', '241', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1531', '闽清县', '0', '241', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1532', '永泰县', '0', '241', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1533', '平潭县', '0', '241', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1534', '福清市', '0', '241', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1535', '长乐市', '0', '241', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1536', '思明区', '0', '242', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1537', '海沧区', '0', '242', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1538', '湖里区', '0', '242', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1539', '集美区', '0', '242', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1540', '同安区', '0', '242', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1541', '翔安区', '0', '242', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1542', '城厢区', '0', '243', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1543', '涵江区', '0', '243', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1544', '荔城区', '0', '243', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1545', '秀屿区', '0', '243', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1546', '仙游县', '0', '243', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1547', '梅列区', '0', '244', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1548', '三元区', '0', '244', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1549', '明溪县', '0', '244', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1550', '清流县', '0', '244', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1551', '宁化县', '0', '244', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1552', '大田县', '0', '244', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1553', '尤溪县', '0', '244', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1554', '沙县', '0', '244', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1555', '将乐县', '0', '244', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1556', '泰宁县', '0', '244', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1557', '建宁县', '0', '244', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1558', '永安市', '0', '244', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1559', '鲤城区', '0', '245', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1560', '丰泽区', '0', '245', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1561', '洛江区', '0', '245', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1562', '泉港区', '0', '245', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1563', '惠安县', '0', '245', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1564', '安溪县', '0', '245', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1565', '永春县', '0', '245', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1566', '德化县', '0', '245', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1567', '金门县', '0', '245', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1568', '石狮市', '0', '245', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1569', '晋江市', '0', '245', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1570', '南安市', '0', '245', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1571', '芗城区', '0', '246', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1572', '龙文区', '0', '246', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1573', '云霄县', '0', '246', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1574', '漳浦县', '0', '246', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1575', '诏安县', '0', '246', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1576', '长泰县', '0', '246', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1577', '东山县', '0', '246', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1578', '南靖县', '0', '246', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1579', '平和县', '0', '246', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1580', '华安县', '0', '246', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1581', '龙海市', '0', '246', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1582', '延平区', '0', '247', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1583', '顺昌县', '0', '247', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1584', '浦城县', '0', '247', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1585', '光泽县', '0', '247', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1586', '松溪县', '0', '247', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1587', '政和县', '0', '247', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1588', '邵武市', '0', '247', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1589', '武夷山市', '0', '247', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1590', '建瓯市', '0', '247', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1591', '建阳市', '0', '247', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1592', '新罗区', '0', '248', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1593', '长汀县', '0', '248', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1594', '永定县', '0', '248', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1595', '上杭县', '0', '248', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1596', '武平县', '0', '248', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1597', '连城县', '0', '248', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1598', '漳平市', '0', '248', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1599', '蕉城区', '0', '249', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1600', '霞浦县', '0', '249', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1601', '古田县', '0', '249', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1602', '屏南县', '0', '249', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1603', '寿宁县', '0', '249', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1604', '周宁县', '0', '249', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1605', '柘荣县', '0', '249', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1606', '福安市', '0', '249', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1607', '福鼎市', '0', '249', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1608', '东湖区', '0', '250', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1609', '西湖区', '0', '250', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1610', '青云谱区', '0', '250', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1611', '湾里区', '0', '250', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1612', '青山湖区', '0', '250', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1613', '南昌县', '0', '250', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1614', '新建县', '0', '250', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1615', '安义县', '0', '250', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1616', '进贤县', '0', '250', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1617', '昌江区', '0', '251', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1618', '珠山区', '0', '251', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1619', '浮梁县', '0', '251', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1620', '乐平市', '0', '251', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1621', '安源区', '0', '252', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1622', '湘东区', '0', '252', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1623', '莲花县', '0', '252', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1624', '上栗县', '0', '252', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1625', '芦溪县', '0', '252', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1626', '庐山区', '0', '253', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1627', '浔阳区', '0', '253', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1628', '九江县', '0', '253', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1629', '武宁县', '0', '253', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1630', '修水县', '0', '253', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1631', '永修县', '0', '253', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1632', '德安县', '0', '253', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1633', '星子县', '0', '253', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1634', '都昌县', '0', '253', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1635', '湖口县', '0', '253', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1636', '彭泽县', '0', '253', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1637', '瑞昌市', '0', '253', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1638', '渝水区', '0', '254', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1639', '分宜县', '0', '254', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1640', '月湖区', '0', '255', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1641', '余江县', '0', '255', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1642', '贵溪市', '0', '255', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1643', '章贡区', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1644', '赣县', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1645', '信丰县', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1646', '大余县', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1647', '上犹县', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1648', '崇义县', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1649', '安远县', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1650', '龙南县', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1651', '定南县', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1652', '全南县', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1653', '宁都县', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1654', '于都县', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1655', '兴国县', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1656', '会昌县', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1657', '寻乌县', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1658', '石城县', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1659', '瑞金市', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1660', '南康市', '0', '256', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1661', '吉州区', '0', '257', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1662', '青原区', '0', '257', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1663', '吉安县', '0', '257', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1664', '吉水县', '0', '257', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1665', '峡江县', '0', '257', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1666', '新干县', '0', '257', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1667', '永丰县', '0', '257', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1668', '泰和县', '0', '257', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1669', '遂川县', '0', '257', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1670', '万安县', '0', '257', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1671', '安福县', '0', '257', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1672', '永新县', '0', '257', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1673', '井冈山市', '0', '257', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1674', '袁州区', '0', '258', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1675', '奉新县', '0', '258', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1676', '万载县', '0', '258', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1677', '上高县', '0', '258', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1678', '宜丰县', '0', '258', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1679', '靖安县', '0', '258', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1680', '铜鼓县', '0', '258', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1681', '丰城市', '0', '258', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1682', '樟树市', '0', '258', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1683', '高安市', '0', '258', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1684', '临川区', '0', '259', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1685', '南城县', '0', '259', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1686', '黎川县', '0', '259', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1687', '南丰县', '0', '259', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1688', '崇仁县', '0', '259', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1689', '乐安县', '0', '259', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1690', '宜黄县', '0', '259', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1691', '金溪县', '0', '259', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1692', '资溪县', '0', '259', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1693', '东乡县', '0', '259', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1694', '广昌县', '0', '259', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1695', '信州区', '0', '260', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1696', '上饶县', '0', '260', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1697', '广丰县', '0', '260', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1698', '玉山县', '0', '260', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1699', '铅山县', '0', '260', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1700', '横峰县', '0', '260', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1701', '弋阳县', '0', '260', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1702', '余干县', '0', '260', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1703', '鄱阳县', '0', '260', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1704', '万年县', '0', '260', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1705', '婺源县', '0', '260', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1706', '德兴市', '0', '260', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1707', '历下区', '0', '261', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1708', '市中区', '0', '261', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1709', '槐荫区', '0', '261', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1710', '天桥区', '0', '261', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1711', '历城区', '0', '261', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1712', '长清区', '0', '261', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1713', '平阴县', '0', '261', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1714', '济阳县', '0', '261', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1715', '商河县', '0', '261', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1716', '章丘市', '0', '261', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1717', '市南区', '0', '262', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1718', '市北区', '0', '262', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1719', '四方区', '0', '262', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1720', '黄岛区', '0', '262', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1721', '崂山区', '0', '262', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1722', '李沧区', '0', '262', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1723', '城阳区', '0', '262', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1724', '胶州市', '0', '262', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1725', '即墨市', '0', '262', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1726', '平度市', '0', '262', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1727', '胶南市', '0', '262', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1728', '莱西市', '0', '262', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1729', '淄川区', '0', '263', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1730', '张店区', '0', '263', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1731', '博山区', '0', '263', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1732', '临淄区', '0', '263', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1733', '周村区', '0', '263', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1734', '桓台县', '0', '263', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1735', '高青县', '0', '263', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1736', '沂源县', '0', '263', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1737', '市中区', '0', '264', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1738', '薛城区', '0', '264', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1739', '峄城区', '0', '264', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1740', '台儿庄区', '0', '264', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1741', '山亭区', '0', '264', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1742', '滕州市', '0', '264', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1743', '东营区', '0', '265', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1744', '河口区', '0', '265', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1745', '垦利县', '0', '265', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1746', '利津县', '0', '265', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1747', '广饶县', '0', '265', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1748', '芝罘区', '0', '266', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1749', '福山区', '0', '266', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1750', '牟平区', '0', '266', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1751', '莱山区', '0', '266', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1752', '长岛县', '0', '266', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1753', '龙口市', '0', '266', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1754', '莱阳市', '0', '266', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1755', '莱州市', '0', '266', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1756', '蓬莱市', '0', '266', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1757', '招远市', '0', '266', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1758', '栖霞市', '0', '266', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1759', '海阳市', '0', '266', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1760', '潍城区', '0', '267', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1761', '寒亭区', '0', '267', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1762', '坊子区', '0', '267', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1763', '奎文区', '0', '267', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1764', '临朐县', '0', '267', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1765', '昌乐县', '0', '267', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1766', '青州市', '0', '267', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1767', '诸城市', '0', '267', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1768', '寿光市', '0', '267', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1769', '安丘市', '0', '267', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1770', '高密市', '0', '267', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1771', '昌邑市', '0', '267', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1772', '市中区', '0', '268', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1773', '任城区', '0', '268', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1774', '微山县', '0', '268', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1775', '鱼台县', '0', '268', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1776', '金乡县', '0', '268', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1777', '嘉祥县', '0', '268', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1778', '汶上县', '0', '268', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1779', '泗水县', '0', '268', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1780', '梁山县', '0', '268', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1781', '曲阜市', '0', '268', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1782', '兖州市', '0', '268', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1783', '邹城市', '0', '268', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1784', '泰山区', '0', '269', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1785', '岱岳区', '0', '269', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1786', '宁阳县', '0', '269', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1787', '东平县', '0', '269', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1788', '新泰市', '0', '269', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1789', '肥城市', '0', '269', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1790', '环翠区', '0', '270', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1791', '文登市', '0', '270', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1792', '荣成市', '0', '270', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1793', '乳山市', '0', '270', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1794', '东港区', '0', '271', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1795', '岚山区', '0', '271', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1796', '五莲县', '0', '271', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1797', '莒县', '0', '271', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1798', '莱城区', '0', '272', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1799', '钢城区', '0', '272', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1800', '兰山区', '0', '273', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1801', '罗庄区', '0', '273', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1802', '河东区', '0', '273', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1803', '沂南县', '0', '273', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1804', '郯城县', '0', '273', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1805', '沂水县', '0', '273', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1806', '苍山县', '0', '273', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1807', '费县', '0', '273', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1808', '平邑县', '0', '273', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1809', '莒南县', '0', '273', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1810', '蒙阴县', '0', '273', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1811', '临沭县', '0', '273', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1812', '德城区', '0', '274', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1813', '陵县', '0', '274', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1814', '宁津县', '0', '274', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1815', '庆云县', '0', '274', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1816', '临邑县', '0', '274', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1817', '齐河县', '0', '274', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1818', '平原县', '0', '274', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1819', '夏津县', '0', '274', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1820', '武城县', '0', '274', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1821', '乐陵市', '0', '274', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1822', '禹城市', '0', '274', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1823', '东昌府区', '0', '275', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1824', '阳谷县', '0', '275', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1825', '莘县', '0', '275', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1826', '茌平县', '0', '275', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1827', '东阿县', '0', '275', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1828', '冠县', '0', '275', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1829', '高唐县', '0', '275', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1830', '临清市', '0', '275', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1831', '滨城区', '0', '276', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1832', '惠民县', '0', '276', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1833', '阳信县', '0', '276', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1834', '无棣县', '0', '276', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1835', '沾化县', '0', '276', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1836', '博兴县', '0', '276', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1837', '邹平县', '0', '276', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1838', '牡丹区', '0', '277', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1839', '曹县', '0', '277', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1840', '单县', '0', '277', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1841', '成武县', '0', '277', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1842', '巨野县', '0', '277', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1843', '郓城县', '0', '277', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1844', '鄄城县', '0', '277', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1845', '定陶县', '0', '277', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1846', '东明县', '0', '277', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1847', '中原区', '0', '278', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1848', '二七区', '0', '278', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1849', '管城回族区', '0', '278', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1850', '金水区', '0', '278', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1851', '上街区', '0', '278', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1852', '惠济区', '0', '278', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1853', '中牟县', '0', '278', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1854', '巩义市', '0', '278', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1855', '荥阳市', '0', '278', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1856', '新密市', '0', '278', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1857', '新郑市', '0', '278', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1858', '登封市', '0', '278', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1859', '龙亭区', '0', '279', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1860', '顺河回族区', '0', '279', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1861', '鼓楼区', '0', '279', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1862', '禹王台区', '0', '279', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1863', '金明区', '0', '279', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1864', '杞县', '0', '279', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1865', '通许县', '0', '279', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1866', '尉氏县', '0', '279', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1867', '开封县', '0', '279', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1868', '兰考县', '0', '279', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1869', '老城区', '0', '280', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1870', '西工区', '0', '280', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1871', '廛河回族区', '0', '280', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1872', '涧西区', '0', '280', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1873', '吉利区', '0', '280', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1874', '洛龙区', '0', '280', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1875', '孟津县', '0', '280', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1876', '新安县', '0', '280', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1877', '栾川县', '0', '280', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1878', '嵩县', '0', '280', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1879', '汝阳县', '0', '280', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1880', '宜阳县', '0', '280', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1881', '洛宁县', '0', '280', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1882', '伊川县', '0', '280', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1883', '偃师市', '0', '280', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1884', '新华区', '0', '281', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1885', '卫东区', '0', '281', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1886', '石龙区', '0', '281', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1887', '湛河区', '0', '281', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1888', '宝丰县', '0', '281', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1889', '叶县', '0', '281', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1890', '鲁山县', '0', '281', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1891', '郏县', '0', '281', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1892', '舞钢市', '0', '281', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1893', '汝州市', '0', '281', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1894', '文峰区', '0', '282', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1895', '北关区', '0', '282', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1896', '殷都区', '0', '282', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1897', '龙安区', '0', '282', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1898', '安阳县', '0', '282', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1899', '汤阴县', '0', '282', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1900', '滑县', '0', '282', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1901', '内黄县', '0', '282', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1902', '林州市', '0', '282', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1903', '鹤山区', '0', '283', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1904', '山城区', '0', '283', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1905', '淇滨区', '0', '283', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1906', '浚县', '0', '283', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1907', '淇县', '0', '283', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1908', '红旗区', '0', '284', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1909', '卫滨区', '0', '284', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1910', '凤泉区', '0', '284', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1911', '牧野区', '0', '284', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1912', '新乡县', '0', '284', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1913', '获嘉县', '0', '284', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1914', '原阳县', '0', '284', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1915', '延津县', '0', '284', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1916', '封丘县', '0', '284', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1917', '长垣县', '0', '284', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1918', '卫辉市', '0', '284', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1919', '辉县市', '0', '284', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1920', '解放区', '0', '285', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1921', '中站区', '0', '285', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1922', '马村区', '0', '285', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1923', '山阳区', '0', '285', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1924', '修武县', '0', '285', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1925', '博爱县', '0', '285', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1926', '武陟县', '0', '285', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1927', '温县', '0', '285', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1928', '济源市', '0', '285', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1929', '沁阳市', '0', '285', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1930', '孟州市', '0', '285', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1931', '华龙区', '0', '286', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1932', '清丰县', '0', '286', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1933', '南乐县', '0', '286', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1934', '范县', '0', '286', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1935', '台前县', '0', '286', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1936', '濮阳县', '0', '286', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1937', '魏都区', '0', '287', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1938', '许昌县', '0', '287', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1939', '鄢陵县', '0', '287', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1940', '襄城县', '0', '287', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1941', '禹州市', '0', '287', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1942', '长葛市', '0', '287', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1943', '源汇区', '0', '288', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1944', '郾城区', '0', '288', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1945', '召陵区', '0', '288', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1946', '舞阳县', '0', '288', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1947', '临颍县', '0', '288', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1948', '湖滨区', '0', '289', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1949', '渑池县', '0', '289', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1950', '陕县', '0', '289', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1951', '卢氏县', '0', '289', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1952', '义马市', '0', '289', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1953', '灵宝市', '0', '289', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1954', '宛城区', '0', '290', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1955', '卧龙区', '0', '290', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1956', '南召县', '0', '290', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1957', '方城县', '0', '290', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1958', '西峡县', '0', '290', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1959', '镇平县', '0', '290', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1960', '内乡县', '0', '290', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1961', '淅川县', '0', '290', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1962', '社旗县', '0', '290', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1963', '唐河县', '0', '290', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1964', '新野县', '0', '290', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1965', '桐柏县', '0', '290', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1966', '邓州市', '0', '290', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1967', '梁园区', '0', '291', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1968', '睢阳区', '0', '291', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1969', '民权县', '0', '291', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1970', '睢县', '0', '291', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1971', '宁陵县', '0', '291', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1972', '柘城县', '0', '291', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1973', '虞城县', '0', '291', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1974', '夏邑县', '0', '291', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1975', '永城市', '0', '291', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1976', '浉河区', '0', '292', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1977', '平桥区', '0', '292', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1978', '罗山县', '0', '292', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1979', '光山县', '0', '292', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1980', '新县', '0', '292', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1981', '商城县', '0', '292', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1982', '固始县', '0', '292', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1983', '潢川县', '0', '292', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1984', '淮滨县', '0', '292', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1985', '息县', '0', '292', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1986', '川汇区', '0', '293', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1987', '扶沟县', '0', '293', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1988', '西华县', '0', '293', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1989', '商水县', '0', '293', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1990', '沈丘县', '0', '293', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1991', '郸城县', '0', '293', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1992', '淮阳县', '0', '293', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1993', '太康县', '0', '293', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1994', '鹿邑县', '0', '293', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1995', '项城市', '0', '293', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1996', '驿城区', '0', '294', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1997', '西平县', '0', '294', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1998', '上蔡县', '0', '294', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('1999', '平舆县', '0', '294', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2000', '正阳县', '0', '294', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2001', '确山县', '0', '294', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2002', '泌阳县', '0', '294', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2003', '汝南县', '0', '294', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2004', '遂平县', '0', '294', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2005', '新蔡县', '0', '294', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2006', '江岸区', '0', '295', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2007', '江汉区', '0', '295', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2008', '硚口区', '0', '295', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2009', '汉阳区', '0', '295', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2010', '武昌区', '0', '295', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2011', '青山区', '0', '295', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2012', '洪山区', '0', '295', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2013', '东西湖区', '0', '295', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2014', '汉南区', '0', '295', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2015', '蔡甸区', '0', '295', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2016', '江夏区', '0', '295', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2017', '黄陂区', '0', '295', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2018', '新洲区', '0', '295', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2019', '黄石港区', '0', '296', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2020', '西塞山区', '0', '296', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2021', '下陆区', '0', '296', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2022', '铁山区', '0', '296', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2023', '阳新县', '0', '296', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2024', '大冶市', '0', '296', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2025', '茅箭区', '0', '297', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2026', '张湾区', '0', '297', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2027', '郧县', '0', '297', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2028', '郧西县', '0', '297', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2029', '竹山县', '0', '297', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2030', '竹溪县', '0', '297', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2031', '房县', '0', '297', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2032', '丹江口市', '0', '297', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2033', '西陵区', '0', '298', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2034', '伍家岗区', '0', '298', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2035', '点军区', '0', '298', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2036', '猇亭区', '0', '298', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2037', '夷陵区', '0', '298', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2038', '远安县', '0', '298', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2039', '兴山县', '0', '298', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2040', '秭归县', '0', '298', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2041', '长阳土家族自治县', '0', '298', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2042', '五峰土家族自治县', '0', '298', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2043', '宜都市', '0', '298', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2044', '当阳市', '0', '298', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2045', '枝江市', '0', '298', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2046', '襄城区', '0', '299', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2047', '樊城区', '0', '299', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2048', '襄阳区', '0', '299', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2049', '南漳县', '0', '299', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2050', '谷城县', '0', '299', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2051', '保康县', '0', '299', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2052', '老河口市', '0', '299', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2053', '枣阳市', '0', '299', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2054', '宜城市', '0', '299', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2055', '梁子湖区', '0', '300', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2056', '华容区', '0', '300', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2057', '鄂城区', '0', '300', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2058', '东宝区', '0', '301', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2059', '掇刀区', '0', '301', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2060', '京山县', '0', '301', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2061', '沙洋县', '0', '301', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2062', '钟祥市', '0', '301', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2063', '孝南区', '0', '302', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2064', '孝昌县', '0', '302', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2065', '大悟县', '0', '302', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2066', '云梦县', '0', '302', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2067', '应城市', '0', '302', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2068', '安陆市', '0', '302', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2069', '汉川市', '0', '302', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2070', '沙市区', '0', '303', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2071', '荆州区', '0', '303', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2072', '公安县', '0', '303', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2073', '监利县', '0', '303', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2074', '江陵县', '0', '303', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2075', '石首市', '0', '303', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2076', '洪湖市', '0', '303', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2077', '松滋市', '0', '303', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2078', '黄州区', '0', '304', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2079', '团风县', '0', '304', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2080', '红安县', '0', '304', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2081', '罗田县', '0', '304', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2082', '英山县', '0', '304', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2083', '浠水县', '0', '304', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2084', '蕲春县', '0', '304', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2085', '黄梅县', '0', '304', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2086', '麻城市', '0', '304', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2087', '武穴市', '0', '304', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2088', '咸安区', '0', '305', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2089', '嘉鱼县', '0', '305', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2090', '通城县', '0', '305', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2091', '崇阳县', '0', '305', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2092', '通山县', '0', '305', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2093', '赤壁市', '0', '305', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2094', '曾都区', '0', '306', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2095', '广水市', '0', '306', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2096', '恩施市', '0', '307', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2097', '利川市', '0', '307', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2098', '建始县', '0', '307', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2099', '巴东县', '0', '307', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2100', '宣恩县', '0', '307', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2101', '咸丰县', '0', '307', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2102', '来凤县', '0', '307', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2103', '鹤峰县', '0', '307', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2104', '芙蓉区', '0', '312', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2105', '天心区', '0', '312', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2106', '岳麓区', '0', '312', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2107', '开福区', '0', '312', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2108', '雨花区', '0', '312', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2109', '长沙县', '0', '312', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2110', '望城县', '0', '312', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2111', '宁乡县', '0', '312', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2112', '浏阳市', '0', '312', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2113', '荷塘区', '0', '313', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2114', '芦淞区', '0', '313', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2115', '石峰区', '0', '313', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2116', '天元区', '0', '313', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2117', '株洲县', '0', '313', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2118', '攸县', '0', '313', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2119', '茶陵县', '0', '313', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2120', '炎陵县', '0', '313', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2121', '醴陵市', '0', '313', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2122', '雨湖区', '0', '314', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2123', '岳塘区', '0', '314', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2124', '湘潭县', '0', '314', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2125', '湘乡市', '0', '314', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2126', '韶山市', '0', '314', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2127', '珠晖区', '0', '315', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2128', '雁峰区', '0', '315', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2129', '石鼓区', '0', '315', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2130', '蒸湘区', '0', '315', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2131', '南岳区', '0', '315', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2132', '衡阳县', '0', '315', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2133', '衡南县', '0', '315', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2134', '衡山县', '0', '315', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2135', '衡东县', '0', '315', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2136', '祁东县', '0', '315', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2137', '耒阳市', '0', '315', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2138', '常宁市', '0', '315', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2139', '双清区', '0', '316', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2140', '大祥区', '0', '316', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2141', '北塔区', '0', '316', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2142', '邵东县', '0', '316', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2143', '新邵县', '0', '316', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2144', '邵阳县', '0', '316', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2145', '隆回县', '0', '316', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2146', '洞口县', '0', '316', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2147', '绥宁县', '0', '316', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2148', '新宁县', '0', '316', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2149', '城步苗族自治县', '0', '316', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2150', '武冈市', '0', '316', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2151', '岳阳楼区', '0', '317', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2152', '云溪区', '0', '317', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2153', '君山区', '0', '317', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2154', '岳阳县', '0', '317', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2155', '华容县', '0', '317', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2156', '湘阴县', '0', '317', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2157', '平江县', '0', '317', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2158', '汨罗市', '0', '317', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2159', '临湘市', '0', '317', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2160', '武陵区', '0', '318', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2161', '鼎城区', '0', '318', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2162', '安乡县', '0', '318', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2163', '汉寿县', '0', '318', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2164', '澧县', '0', '318', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2165', '临澧县', '0', '318', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2166', '桃源县', '0', '318', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2167', '石门县', '0', '318', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2168', '津市市', '0', '318', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2169', '永定区', '0', '319', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2170', '武陵源区', '0', '319', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2171', '慈利县', '0', '319', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2172', '桑植县', '0', '319', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2173', '资阳区', '0', '320', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2174', '赫山区', '0', '320', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2175', '南县', '0', '320', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2176', '桃江县', '0', '320', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2177', '安化县', '0', '320', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2178', '沅江市', '0', '320', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2179', '北湖区', '0', '321', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2180', '苏仙区', '0', '321', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2181', '桂阳县', '0', '321', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2182', '宜章县', '0', '321', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2183', '永兴县', '0', '321', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2184', '嘉禾县', '0', '321', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2185', '临武县', '0', '321', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2186', '汝城县', '0', '321', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2187', '桂东县', '0', '321', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2188', '安仁县', '0', '321', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2189', '资兴市', '0', '321', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2190', '零陵区', '0', '322', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2191', '冷水滩区', '0', '322', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2192', '祁阳县', '0', '322', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2193', '东安县', '0', '322', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2194', '双牌县', '0', '322', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2195', '道县', '0', '322', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2196', '江永县', '0', '322', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2197', '宁远县', '0', '322', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2198', '蓝山县', '0', '322', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2199', '新田县', '0', '322', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2200', '江华瑶族自治县', '0', '322', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2201', '鹤城区', '0', '323', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2202', '中方县', '0', '323', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2203', '沅陵县', '0', '323', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2204', '辰溪县', '0', '323', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2205', '溆浦县', '0', '323', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2206', '会同县', '0', '323', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2207', '麻阳苗族自治县', '0', '323', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2208', '新晃侗族自治县', '0', '323', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2209', '芷江侗族自治县', '0', '323', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2210', '靖州苗族侗族自治县', '0', '323', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2211', '通道侗族自治县', '0', '323', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2212', '洪江市', '0', '323', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2213', '娄星区', '0', '324', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2214', '双峰县', '0', '324', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2215', '新化县', '0', '324', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2216', '冷水江市', '0', '324', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2217', '涟源市', '0', '324', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2218', '吉首市', '0', '325', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2219', '泸溪县', '0', '325', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2220', '凤凰县', '0', '325', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2221', '花垣县', '0', '325', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2222', '保靖县', '0', '325', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2223', '古丈县', '0', '325', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2224', '永顺县', '0', '325', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2225', '龙山县', '0', '325', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2226', '荔湾区', '0', '326', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2227', '越秀区', '0', '326', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2228', '海珠区', '0', '326', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2229', '天河区', '0', '326', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2230', '白云区', '0', '326', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2231', '黄埔区', '0', '326', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2232', '番禺区', '0', '326', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2233', '花都区', '0', '326', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2234', '南沙区', '0', '326', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2235', '萝岗区', '0', '326', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2236', '增城市', '0', '326', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2237', '从化市', '0', '326', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2238', '武江区', '0', '327', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2239', '浈江区', '0', '327', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2240', '曲江区', '0', '327', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2241', '始兴县', '0', '327', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2242', '仁化县', '0', '327', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2243', '翁源县', '0', '327', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2244', '乳源瑶族自治县', '0', '327', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2245', '新丰县', '0', '327', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2246', '乐昌市', '0', '327', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2247', '南雄市', '0', '327', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2248', '罗湖区', '0', '328', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2249', '福田区', '0', '328', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2250', '南山区', '0', '328', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2251', '宝安区', '0', '328', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2252', '龙岗区', '0', '328', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2253', '盐田区', '0', '328', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2254', '香洲区', '0', '329', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2255', '斗门区', '0', '329', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2256', '金湾区', '0', '329', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2257', '龙湖区', '0', '330', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2258', '金平区', '0', '330', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2259', '濠江区', '0', '330', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2260', '潮阳区', '0', '330', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2261', '潮南区', '0', '330', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2262', '澄海区', '0', '330', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2263', '南澳县', '0', '330', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2264', '禅城区', '0', '331', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2265', '南海区', '0', '331', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2266', '顺德区', '0', '331', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2267', '三水区', '0', '331', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2268', '高明区', '0', '331', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2269', '蓬江区', '0', '332', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2270', '江海区', '0', '332', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2271', '新会区', '0', '332', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2272', '台山市', '0', '332', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2273', '开平市', '0', '332', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2274', '鹤山市', '0', '332', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2275', '恩平市', '0', '332', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2276', '赤坎区', '0', '333', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2277', '霞山区', '0', '333', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2278', '坡头区', '0', '333', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2279', '麻章区', '0', '333', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2280', '遂溪县', '0', '333', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2281', '徐闻县', '0', '333', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2282', '廉江市', '0', '333', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2283', '雷州市', '0', '333', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2284', '吴川市', '0', '333', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2285', '茂南区', '0', '334', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2286', '茂港区', '0', '334', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2287', '电白县', '0', '334', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2288', '高州市', '0', '334', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2289', '化州市', '0', '334', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2290', '信宜市', '0', '334', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2291', '端州区', '0', '335', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2292', '鼎湖区', '0', '335', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2293', '广宁县', '0', '335', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2294', '怀集县', '0', '335', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2295', '封开县', '0', '335', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2296', '德庆县', '0', '335', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2297', '高要市', '0', '335', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2298', '四会市', '0', '335', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2299', '惠城区', '0', '336', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2300', '惠阳区', '0', '336', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2301', '博罗县', '0', '336', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2302', '惠东县', '0', '336', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2303', '龙门县', '0', '336', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2304', '梅江区', '0', '337', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2305', '梅县', '0', '337', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2306', '大埔县', '0', '337', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2307', '丰顺县', '0', '337', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2308', '五华县', '0', '337', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2309', '平远县', '0', '337', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2310', '蕉岭县', '0', '337', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2311', '兴宁市', '0', '337', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2312', '城区', '0', '338', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2313', '海丰县', '0', '338', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2314', '陆河县', '0', '338', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2315', '陆丰市', '0', '338', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2316', '源城区', '0', '339', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2317', '紫金县', '0', '339', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2318', '龙川县', '0', '339', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2319', '连平县', '0', '339', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2320', '和平县', '0', '339', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2321', '东源县', '0', '339', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2322', '江城区', '0', '340', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2323', '阳西县', '0', '340', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2324', '阳东县', '0', '340', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2325', '阳春市', '0', '340', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2326', '清城区', '0', '341', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2327', '佛冈县', '0', '341', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2328', '阳山县', '0', '341', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2329', '连山壮族瑶族自治县', '0', '341', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2330', '连南瑶族自治县', '0', '341', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2331', '清新县', '0', '341', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2332', '英德市', '0', '341', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2333', '连州市', '0', '341', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2334', '湘桥区', '0', '344', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2335', '潮安县', '0', '344', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2336', '饶平县', '0', '344', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2337', '榕城区', '0', '345', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2338', '揭东县', '0', '345', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2339', '揭西县', '0', '345', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2340', '惠来县', '0', '345', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2341', '普宁市', '0', '345', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2342', '云城区', '0', '346', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2343', '新兴县', '0', '346', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2344', '郁南县', '0', '346', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2345', '云安县', '0', '346', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2346', '罗定市', '0', '346', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2347', '兴宁区', '0', '347', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2348', '青秀区', '0', '347', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2349', '江南区', '0', '347', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2350', '西乡塘区', '0', '347', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2351', '良庆区', '0', '347', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2352', '邕宁区', '0', '347', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2353', '武鸣县', '0', '347', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2354', '隆安县', '0', '347', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2355', '马山县', '0', '347', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2356', '上林县', '0', '347', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2357', '宾阳县', '0', '347', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2358', '横县', '0', '347', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2359', '城中区', '0', '348', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2360', '鱼峰区', '0', '348', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2361', '柳南区', '0', '348', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2362', '柳北区', '0', '348', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2363', '柳江县', '0', '348', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2364', '柳城县', '0', '348', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2365', '鹿寨县', '0', '348', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2366', '融安县', '0', '348', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2367', '融水苗族自治县', '0', '348', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2368', '三江侗族自治县', '0', '348', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2369', '秀峰区', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2370', '叠彩区', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2371', '象山区', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2372', '七星区', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2373', '雁山区', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2374', '阳朔县', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2375', '临桂县', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2376', '灵川县', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2377', '全州县', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2378', '兴安县', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2379', '永福县', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2380', '灌阳县', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2381', '龙胜各族自治县', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2382', '资源县', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2383', '平乐县', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2384', '荔蒲县', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2385', '恭城瑶族自治县', '0', '349', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2386', '万秀区', '0', '350', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2387', '蝶山区', '0', '350', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2388', '长洲区', '0', '350', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2389', '苍梧县', '0', '350', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2390', '藤县', '0', '350', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2391', '蒙山县', '0', '350', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2392', '岑溪市', '0', '350', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2393', '海城区', '0', '351', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2394', '银海区', '0', '351', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2395', '铁山港区', '0', '351', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2396', '合浦县', '0', '351', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2397', '港口区', '0', '352', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2398', '防城区', '0', '352', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2399', '上思县', '0', '352', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2400', '东兴市', '0', '352', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2401', '钦南区', '0', '353', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2402', '钦北区', '0', '353', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2403', '灵山县', '0', '353', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2404', '浦北县', '0', '353', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2405', '港北区', '0', '354', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2406', '港南区', '0', '354', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2407', '覃塘区', '0', '354', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2408', '平南县', '0', '354', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2409', '桂平市', '0', '354', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2410', '玉州区', '0', '355', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2411', '容县', '0', '355', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2412', '陆川县', '0', '355', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2413', '博白县', '0', '355', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2414', '兴业县', '0', '355', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2415', '北流市', '0', '355', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2416', '右江区', '0', '356', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2417', '田阳县', '0', '356', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2418', '田东县', '0', '356', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2419', '平果县', '0', '356', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2420', '德保县', '0', '356', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2421', '靖西县', '0', '356', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2422', '那坡县', '0', '356', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2423', '凌云县', '0', '356', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2424', '乐业县', '0', '356', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2425', '田林县', '0', '356', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2426', '西林县', '0', '356', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2427', '隆林各族自治县', '0', '356', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2428', '八步区', '0', '357', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2429', '昭平县', '0', '357', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2430', '钟山县', '0', '357', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2431', '富川瑶族自治县', '0', '357', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2432', '金城江区', '0', '358', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2433', '南丹县', '0', '358', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2434', '天峨县', '0', '358', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2435', '凤山县', '0', '358', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2436', '东兰县', '0', '358', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2437', '罗城仫佬族自治县', '0', '358', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2438', '环江毛南族自治县', '0', '358', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2439', '巴马瑶族自治县', '0', '358', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2440', '都安瑶族自治县', '0', '358', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2441', '大化瑶族自治县', '0', '358', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2442', '宜州市', '0', '358', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2443', '兴宾区', '0', '359', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2444', '忻城县', '0', '359', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2445', '象州县', '0', '359', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2446', '武宣县', '0', '359', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2447', '金秀瑶族自治县', '0', '359', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2448', '合山市', '0', '359', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2449', '江洲区', '0', '360', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2450', '扶绥县', '0', '360', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2451', '宁明县', '0', '360', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2452', '龙州县', '0', '360', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2453', '大新县', '0', '360', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2454', '天等县', '0', '360', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2455', '凭祥市', '0', '360', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2456', '秀英区', '0', '361', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2457', '龙华区', '0', '361', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2458', '琼山区', '0', '361', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2459', '美兰区', '0', '361', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2460', '锦江区', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2461', '青羊区', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2462', '金牛区', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2463', '武侯区', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2464', '成华区', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2465', '龙泉驿区', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2466', '青白江区', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2467', '新都区', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2468', '温江区', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2469', '金堂县', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2470', '双流县', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2471', '郫县', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2472', '大邑县', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2473', '蒲江县', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2474', '新津县', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2475', '都江堰市', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2476', '彭州市', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2477', '邛崃市', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2478', '崇州市', '0', '382', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2479', '自流井区', '0', '383', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2480', '贡井区', '0', '383', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2481', '大安区', '0', '383', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2482', '沿滩区', '0', '383', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2483', '荣县', '0', '383', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2484', '富顺县', '0', '383', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2485', '东区', '0', '384', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2486', '西区', '0', '384', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2487', '仁和区', '0', '384', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2488', '米易县', '0', '384', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2489', '盐边县', '0', '384', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2490', '江阳区', '0', '385', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2491', '纳溪区', '0', '385', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2492', '龙马潭区', '0', '385', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2493', '泸县', '0', '385', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2494', '合江县', '0', '385', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2495', '叙永县', '0', '385', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2496', '古蔺县', '0', '385', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2497', '旌阳区', '0', '386', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2498', '中江县', '0', '386', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2499', '罗江县', '0', '386', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2500', '广汉市', '0', '386', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2501', '什邡市', '0', '386', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2502', '绵竹市', '0', '386', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2503', '涪城区', '0', '387', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2504', '游仙区', '0', '387', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2505', '三台县', '0', '387', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2506', '盐亭县', '0', '387', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2507', '安县', '0', '387', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2508', '梓潼县', '0', '387', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2509', '北川羌族自治县', '0', '387', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2510', '平武县', '0', '387', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2511', '江油市', '0', '387', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2512', '市中区', '0', '388', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2513', '元坝区', '0', '388', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2514', '朝天区', '0', '388', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2515', '旺苍县', '0', '388', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2516', '青川县', '0', '388', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2517', '剑阁县', '0', '388', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2518', '苍溪县', '0', '388', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2519', '船山区', '0', '389', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2520', '安居区', '0', '389', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2521', '蓬溪县', '0', '389', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2522', '射洪县', '0', '389', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2523', '大英县', '0', '389', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2524', '市中区', '0', '390', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2525', '东兴区', '0', '390', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2526', '威远县', '0', '390', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2527', '资中县', '0', '390', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2528', '隆昌县', '0', '390', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2529', '市中区', '0', '391', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2530', '沙湾区', '0', '391', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2531', '五通桥区', '0', '391', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2532', '金口河区', '0', '391', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2533', '犍为县', '0', '391', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2534', '井研县', '0', '391', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2535', '夹江县', '0', '391', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2536', '沐川县', '0', '391', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2537', '峨边彝族自治县', '0', '391', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2538', '马边彝族自治县', '0', '391', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2539', '峨眉山市', '0', '391', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2540', '顺庆区', '0', '392', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2541', '高坪区', '0', '392', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2542', '嘉陵区', '0', '392', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2543', '南部县', '0', '392', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2544', '营山县', '0', '392', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2545', '蓬安县', '0', '392', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2546', '仪陇县', '0', '392', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2547', '西充县', '0', '392', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2548', '阆中市', '0', '392', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2549', '东坡区', '0', '393', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2550', '仁寿县', '0', '393', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2551', '彭山县', '0', '393', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2552', '洪雅县', '0', '393', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2553', '丹棱县', '0', '393', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2554', '青神县', '0', '393', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2555', '翠屏区', '0', '394', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2556', '宜宾县', '0', '394', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2557', '南溪县', '0', '394', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2558', '江安县', '0', '394', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2559', '长宁县', '0', '394', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2560', '高县', '0', '394', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2561', '珙县', '0', '394', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2562', '筠连县', '0', '394', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2563', '兴文县', '0', '394', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2564', '屏山县', '0', '394', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2565', '广安区', '0', '395', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2566', '岳池县', '0', '395', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2567', '武胜县', '0', '395', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2568', '邻水县', '0', '395', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2569', '华蓥市', '0', '395', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2570', '通川区', '0', '396', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2571', '达县', '0', '396', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2572', '宣汉县', '0', '396', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2573', '开江县', '0', '396', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2574', '大竹县', '0', '396', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2575', '渠县', '0', '396', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2576', '万源市', '0', '396', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2577', '雨城区', '0', '397', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2578', '名山县', '0', '397', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2579', '荥经县', '0', '397', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2580', '汉源县', '0', '397', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2581', '石棉县', '0', '397', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2582', '天全县', '0', '397', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2583', '芦山县', '0', '397', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2584', '宝兴县', '0', '397', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2585', '巴州区', '0', '398', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2586', '通江县', '0', '398', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2587', '南江县', '0', '398', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2588', '平昌县', '0', '398', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2589', '雁江区', '0', '399', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2590', '安岳县', '0', '399', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2591', '乐至县', '0', '399', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2592', '简阳市', '0', '399', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2593', '汶川县', '0', '400', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2594', '理县', '0', '400', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2595', '茂县', '0', '400', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2596', '松潘县', '0', '400', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2597', '九寨沟县', '0', '400', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2598', '金川县', '0', '400', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2599', '小金县', '0', '400', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2600', '黑水县', '0', '400', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2601', '马尔康县', '0', '400', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2602', '壤塘县', '0', '400', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2603', '阿坝县', '0', '400', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2604', '若尔盖县', '0', '400', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2605', '红原县', '0', '400', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2606', '康定县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2607', '泸定县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2608', '丹巴县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2609', '九龙县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2610', '雅江县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2611', '道孚县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2612', '炉霍县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2613', '甘孜县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2614', '新龙县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2615', '德格县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2616', '白玉县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2617', '石渠县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2618', '色达县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2619', '理塘县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2620', '巴塘县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2621', '乡城县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2622', '稻城县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2623', '得荣县', '0', '401', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2624', '西昌市', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2625', '木里藏族自治县', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2626', '盐源县', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2627', '德昌县', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2628', '会理县', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2629', '会东县', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2630', '宁南县', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2631', '普格县', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2632', '布拖县', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2633', '金阳县', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2634', '昭觉县', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2635', '喜德县', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2636', '冕宁县', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2637', '越西县', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2638', '甘洛县', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2639', '美姑县', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2640', '雷波县', '0', '402', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2641', '南明区', '0', '403', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2642', '云岩区', '0', '403', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2643', '花溪区', '0', '403', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2644', '乌当区', '0', '403', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2645', '白云区', '0', '403', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2646', '小河区', '0', '403', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2647', '开阳县', '0', '403', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2648', '息烽县', '0', '403', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2649', '修文县', '0', '403', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2650', '清镇市', '0', '403', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2651', '钟山区', '0', '404', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2652', '六枝特区', '0', '404', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2653', '水城县', '0', '404', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2654', '盘县', '0', '404', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2655', '红花岗区', '0', '405', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2656', '汇川区', '0', '405', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2657', '遵义县', '0', '405', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2658', '桐梓县', '0', '405', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2659', '绥阳县', '0', '405', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2660', '正安县', '0', '405', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2661', '道真仡佬族苗族自治县', '0', '405', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2662', '务川仡佬族苗族自治县', '0', '405', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2663', '凤冈县', '0', '405', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2664', '湄潭县', '0', '405', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2665', '余庆县', '0', '405', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2666', '习水县', '0', '405', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2667', '赤水市', '0', '405', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2668', '仁怀市', '0', '405', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2669', '西秀区', '0', '406', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2670', '平坝县', '0', '406', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2671', '普定县', '0', '406', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2672', '镇宁布依族苗族自治县', '0', '406', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2673', '关岭布依族苗族自治县', '0', '406', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2674', '紫云苗族布依族自治县', '0', '406', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2675', '铜仁市', '0', '407', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2676', '江口县', '0', '407', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2677', '玉屏侗族自治县', '0', '407', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2678', '石阡县', '0', '407', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2679', '思南县', '0', '407', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2680', '印江土家族苗族自治县', '0', '407', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2681', '德江县', '0', '407', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2682', '沿河土家族自治县', '0', '407', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2683', '松桃苗族自治县', '0', '407', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2684', '万山特区', '0', '407', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2685', '兴义市', '0', '408', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2686', '兴仁县', '0', '408', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2687', '普安县', '0', '408', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2688', '晴隆县', '0', '408', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2689', '贞丰县', '0', '408', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2690', '望谟县', '0', '408', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2691', '册亨县', '0', '408', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2692', '安龙县', '0', '408', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2693', '毕节市', '0', '409', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2694', '大方县', '0', '409', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2695', '黔西县', '0', '409', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2696', '金沙县', '0', '409', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2697', '织金县', '0', '409', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2698', '纳雍县', '0', '409', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2699', '威宁彝族回族苗族自治县', '0', '409', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2700', '赫章县', '0', '409', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2701', '凯里市', '0', '410', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2702', '黄平县', '0', '410', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2703', '施秉县', '0', '410', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2704', '三穗县', '0', '410', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2705', '镇远县', '0', '410', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2706', '岑巩县', '0', '410', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2707', '天柱县', '0', '410', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2708', '锦屏县', '0', '410', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2709', '剑河县', '0', '410', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2710', '台江县', '0', '410', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2711', '黎平县', '0', '410', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2712', '榕江县', '0', '410', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2713', '从江县', '0', '410', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2714', '雷山县', '0', '410', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2715', '麻江县', '0', '410', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2716', '丹寨县', '0', '410', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2717', '都匀市', '0', '411', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2718', '福泉市', '0', '411', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2719', '荔波县', '0', '411', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2720', '贵定县', '0', '411', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2721', '瓮安县', '0', '411', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2722', '独山县', '0', '411', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2723', '平塘县', '0', '411', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2724', '罗甸县', '0', '411', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2725', '长顺县', '0', '411', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2726', '龙里县', '0', '411', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2727', '惠水县', '0', '411', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2728', '三都水族自治县', '0', '411', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2729', '五华区', '0', '412', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2730', '盘龙区', '0', '412', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2731', '官渡区', '0', '412', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2732', '西山区', '0', '412', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2733', '东川区', '0', '412', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2734', '呈贡县', '0', '412', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2735', '晋宁县', '0', '412', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2736', '富民县', '0', '412', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2737', '宜良县', '0', '412', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2738', '石林彝族自治县', '0', '412', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2739', '嵩明县', '0', '412', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2740', '禄劝彝族苗族自治县', '0', '412', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2741', '寻甸回族彝族自治县', '0', '412', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2742', '安宁市', '0', '412', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2743', '麒麟区', '0', '413', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2744', '马龙县', '0', '413', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2745', '陆良县', '0', '413', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2746', '师宗县', '0', '413', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2747', '罗平县', '0', '413', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2748', '富源县', '0', '413', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2749', '会泽县', '0', '413', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2750', '沾益县', '0', '413', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2751', '宣威市', '0', '413', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2752', '红塔区', '0', '414', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2753', '江川县', '0', '414', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2754', '澄江县', '0', '414', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2755', '通海县', '0', '414', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2756', '华宁县', '0', '414', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2757', '易门县', '0', '414', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2758', '峨山彝族自治县', '0', '414', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2759', '新平彝族傣族自治县', '0', '414', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2760', '元江哈尼族彝族傣族自治县', '0', '414', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2761', '隆阳区', '0', '415', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2762', '施甸县', '0', '415', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2763', '腾冲县', '0', '415', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2764', '龙陵县', '0', '415', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2765', '昌宁县', '0', '415', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2766', '昭阳区', '0', '416', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2767', '鲁甸县', '0', '416', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2768', '巧家县', '0', '416', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2769', '盐津县', '0', '416', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2770', '大关县', '0', '416', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2771', '永善县', '0', '416', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2772', '绥江县', '0', '416', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2773', '镇雄县', '0', '416', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2774', '彝良县', '0', '416', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2775', '威信县', '0', '416', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2776', '水富县', '0', '416', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2777', '古城区', '0', '417', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2778', '玉龙纳西族自治县', '0', '417', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2779', '永胜县', '0', '417', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2780', '华坪县', '0', '417', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2781', '宁蒗彝族自治县', '0', '417', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2782', '翠云区', '0', '418', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2783', '普洱哈尼族彝族自治县', '0', '418', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2784', '墨江哈尼族自治县', '0', '418', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2785', '景东彝族自治县', '0', '418', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2786', '景谷傣族彝族自治县', '0', '418', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2787', '镇沅彝族哈尼族拉祜族自治县', '0', '418', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2788', '江城哈尼族彝族自治县', '0', '418', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2789', '孟连傣族拉祜族佤族自治县', '0', '418', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2790', '澜沧拉祜族自治县', '0', '418', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2791', '西盟佤族自治县', '0', '418', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2792', '临翔区', '0', '419', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2793', '凤庆县', '0', '419', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2794', '云县', '0', '419', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2795', '永德县', '0', '419', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2796', '镇康县', '0', '419', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2797', '双江拉祜族佤族布朗族傣族自治县', '0', '419', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2798', '耿马傣族佤族自治县', '0', '419', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2799', '沧源佤族自治县', '0', '420', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2800', '楚雄市', '0', '420', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2801', '双柏县', '0', '420', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2802', '牟定县', '0', '420', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2803', '南华县', '0', '420', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2804', '姚安县', '0', '420', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2805', '大姚县', '0', '420', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2806', '永仁县', '0', '420', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2807', '元谋县', '0', '420', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2808', '武定县', '0', '420', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2809', '禄丰县', '0', '420', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2810', '个旧市', '0', '421', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2811', '开远市', '0', '421', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2812', '蒙自县', '0', '421', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2813', '屏边苗族自治县', '0', '421', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2814', '建水县', '0', '421', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2815', '石屏县', '0', '421', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2816', '弥勒县', '0', '421', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2817', '泸西县', '0', '421', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2818', '元阳县', '0', '421', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2819', '红河县', '0', '421', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2820', '金平苗族瑶族傣族自治县', '0', '421', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2821', '绿春县', '0', '421', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2822', '河口瑶族自治县', '0', '421', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2823', '文山县', '0', '422', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2824', '砚山县', '0', '422', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2825', '西畴县', '0', '422', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2826', '麻栗坡县', '0', '422', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2827', '马关县', '0', '422', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2828', '丘北县', '0', '422', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2829', '广南县', '0', '422', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2830', '富宁县', '0', '422', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2831', '景洪市', '0', '423', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2832', '勐海县', '0', '423', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2833', '勐腊县', '0', '423', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2834', '大理市', '0', '424', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2835', '漾濞彝族自治县', '0', '424', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2836', '祥云县', '0', '424', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2837', '宾川县', '0', '424', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2838', '弥渡县', '0', '424', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2839', '南涧彝族自治县', '0', '424', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2840', '巍山彝族回族自治县', '0', '424', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2841', '永平县', '0', '424', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2842', '云龙县', '0', '424', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2843', '洱源县', '0', '424', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2844', '剑川县', '0', '424', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2845', '鹤庆县', '0', '424', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2846', '瑞丽市', '0', '425', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2847', '潞西市', '0', '425', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2848', '梁河县', '0', '425', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2849', '盈江县', '0', '425', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2850', '陇川县', '0', '425', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2851', '泸水县', '0', '426', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2852', '福贡县', '0', '426', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2853', '贡山独龙族怒族自治县', '0', '426', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2854', '兰坪白族普米族自治县', '0', '426', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2855', '香格里拉县', '0', '427', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2856', '德钦县', '0', '427', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2857', '维西傈僳族自治县', '0', '427', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2858', '城关区', '0', '428', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2859', '林周县', '0', '428', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2860', '当雄县', '0', '428', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2861', '尼木县', '0', '428', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2862', '曲水县', '0', '428', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2863', '堆龙德庆县', '0', '428', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2864', '达孜县', '0', '428', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2865', '墨竹工卡县', '0', '428', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2866', '昌都县', '0', '429', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2867', '江达县', '0', '429', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2868', '贡觉县', '0', '429', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2869', '类乌齐县', '0', '429', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2870', '丁青县', '0', '429', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2871', '察雅县', '0', '429', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2872', '八宿县', '0', '429', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2873', '左贡县', '0', '429', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2874', '芒康县', '0', '429', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2875', '洛隆县', '0', '429', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2876', '边坝县', '0', '429', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2877', '乃东县', '0', '430', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2878', '扎囊县', '0', '430', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2879', '贡嘎县', '0', '430', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2880', '桑日县', '0', '430', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2881', '琼结县', '0', '430', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2882', '曲松县', '0', '430', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2883', '措美县', '0', '430', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2884', '洛扎县', '0', '430', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2885', '加查县', '0', '430', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2886', '隆子县', '0', '430', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2887', '错那县', '0', '430', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2888', '浪卡子县', '0', '430', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2889', '日喀则市', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2890', '南木林县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2891', '江孜县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2892', '定日县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2893', '萨迦县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2894', '拉孜县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2895', '昂仁县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2896', '谢通门县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2897', '白朗县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2898', '仁布县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2899', '康马县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2900', '定结县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2901', '仲巴县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2902', '亚东县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2903', '吉隆县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2904', '聂拉木县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2905', '萨嘎县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2906', '岗巴县', '0', '431', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2907', '那曲县', '0', '432', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2908', '嘉黎县', '0', '432', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2909', '比如县', '0', '432', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2910', '聂荣县', '0', '432', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2911', '安多县', '0', '432', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2912', '申扎县', '0', '432', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2913', '索县', '0', '432', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2914', '班戈县', '0', '432', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2915', '巴青县', '0', '432', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2916', '尼玛县', '0', '432', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2917', '普兰县', '0', '433', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2918', '札达县', '0', '433', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2919', '噶尔县', '0', '433', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2920', '日土县', '0', '433', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2921', '革吉县', '0', '433', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2922', '改则县', '0', '433', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2923', '措勤县', '0', '433', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2924', '林芝县', '0', '434', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2925', '工布江达县', '0', '434', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2926', '米林县', '0', '434', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2927', '墨脱县', '0', '434', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2928', '波密县', '0', '434', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2929', '察隅县', '0', '434', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2930', '朗县', '0', '434', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2931', '新城区', '0', '435', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2932', '碑林区', '0', '435', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2933', '莲湖区', '0', '435', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2934', '灞桥区', '0', '435', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2935', '未央区', '0', '435', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2936', '雁塔区', '0', '435', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2937', '阎良区', '0', '435', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2938', '临潼区', '0', '435', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2939', '长安区', '0', '435', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2940', '蓝田县', '0', '435', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2941', '周至县', '0', '435', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2942', '户县', '0', '435', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2943', '高陵县', '0', '435', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2944', '王益区', '0', '436', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2945', '印台区', '0', '436', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2946', '耀州区', '0', '436', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2947', '宜君县', '0', '436', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2948', '渭滨区', '0', '437', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2949', '金台区', '0', '437', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2950', '陈仓区', '0', '437', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2951', '凤翔县', '0', '437', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2952', '岐山县', '0', '437', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2953', '扶风县', '0', '437', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2954', '眉县', '0', '437', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2955', '陇县', '0', '437', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2956', '千阳县', '0', '437', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2957', '麟游县', '0', '437', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2958', '凤县', '0', '437', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2959', '太白县', '0', '437', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2960', '秦都区', '0', '438', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2961', '杨凌区', '0', '438', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2962', '渭城区', '0', '438', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2963', '三原县', '0', '438', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2964', '泾阳县', '0', '438', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2965', '乾县', '0', '438', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2966', '礼泉县', '0', '438', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2967', '永寿县', '0', '438', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2968', '彬县', '0', '438', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2969', '长武县', '0', '438', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2970', '旬邑县', '0', '438', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2971', '淳化县', '0', '438', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2972', '武功县', '0', '438', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2973', '兴平市', '0', '438', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2974', '临渭区', '0', '439', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2975', '华县', '0', '439', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2976', '潼关县', '0', '439', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2977', '大荔县', '0', '439', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2978', '合阳县', '0', '439', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2979', '澄城县', '0', '439', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2980', '蒲城县', '0', '439', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2981', '白水县', '0', '439', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2982', '富平县', '0', '439', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2983', '韩城市', '0', '439', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2984', '华阴市', '0', '439', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2985', '宝塔区', '0', '440', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2986', '延长县', '0', '440', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2987', '延川县', '0', '440', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2988', '子长县', '0', '440', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2989', '安塞县', '0', '440', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2990', '志丹县', '0', '440', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2991', '吴起县', '0', '440', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2992', '甘泉县', '0', '440', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2993', '富县', '0', '440', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2994', '洛川县', '0', '440', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2995', '宜川县', '0', '440', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2996', '黄龙县', '0', '440', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2997', '黄陵县', '0', '440', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2998', '汉台区', '0', '441', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('2999', '南郑县', '0', '441', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3000', '城固县', '0', '441', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3001', '洋县', '0', '441', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3002', '西乡县', '0', '441', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3003', '勉县', '0', '441', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3004', '宁强县', '0', '441', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3005', '略阳县', '0', '441', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3006', '镇巴县', '0', '441', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3007', '留坝县', '0', '441', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3008', '佛坪县', '0', '441', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3009', '榆阳区', '0', '442', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3010', '神木县', '0', '442', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3011', '府谷县', '0', '442', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3012', '横山县', '0', '442', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3013', '靖边县', '0', '442', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3014', '定边县', '0', '442', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3015', '绥德县', '0', '442', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3016', '米脂县', '0', '442', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3017', '佳县', '0', '442', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3018', '吴堡县', '0', '442', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3019', '清涧县', '0', '442', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3020', '子洲县', '0', '442', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3021', '汉滨区', '0', '443', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3022', '汉阴县', '0', '443', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3023', '石泉县', '0', '443', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3024', '宁陕县', '0', '443', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3025', '紫阳县', '0', '443', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3026', '岚皋县', '0', '443', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3027', '平利县', '0', '443', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3028', '镇坪县', '0', '443', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3029', '旬阳县', '0', '443', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3030', '白河县', '0', '443', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3031', '商州区', '0', '444', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3032', '洛南县', '0', '444', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3033', '丹凤县', '0', '444', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3034', '商南县', '0', '444', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3035', '山阳县', '0', '444', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3036', '镇安县', '0', '444', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3037', '柞水县', '0', '444', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3038', '城关区', '0', '445', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3039', '七里河区', '0', '445', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3040', '西固区', '0', '445', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3041', '安宁区', '0', '445', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3042', '红古区', '0', '445', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3043', '永登县', '0', '445', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3044', '皋兰县', '0', '445', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3045', '榆中县', '0', '445', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3046', '金川区', '0', '447', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3047', '永昌县', '0', '447', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3048', '白银区', '0', '448', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3049', '平川区', '0', '448', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3050', '靖远县', '0', '448', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3051', '会宁县', '0', '448', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3052', '景泰县', '0', '448', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3053', '秦城区', '0', '449', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3054', '北道区', '0', '449', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3055', '清水县', '0', '449', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3056', '秦安县', '0', '449', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3057', '甘谷县', '0', '449', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3058', '武山县', '0', '449', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3059', '张家川回族自治县', '0', '449', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3060', '凉州区', '0', '450', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3061', '民勤县', '0', '450', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3062', '古浪县', '0', '450', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3063', '天祝藏族自治县', '0', '450', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3064', '甘州区', '0', '451', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3065', '肃南裕固族自治县', '0', '451', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3066', '民乐县', '0', '451', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3067', '临泽县', '0', '451', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3068', '高台县', '0', '451', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3069', '山丹县', '0', '451', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3070', '崆峒区', '0', '452', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3071', '泾川县', '0', '452', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3072', '灵台县', '0', '452', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3073', '崇信县', '0', '452', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3074', '华亭县', '0', '452', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3075', '庄浪县', '0', '452', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3076', '静宁县', '0', '452', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3077', '肃州区', '0', '453', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3078', '金塔县', '0', '453', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3079', '瓜州县', '0', '453', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3080', '肃北蒙古族自治县', '0', '453', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3081', '阿克塞哈萨克族自治县', '0', '453', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3082', '玉门市', '0', '453', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3083', '敦煌市', '0', '453', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3084', '西峰区', '0', '454', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3085', '庆城县', '0', '454', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3086', '环县', '0', '454', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3087', '华池县', '0', '454', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3088', '合水县', '0', '454', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3089', '正宁县', '0', '454', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3090', '宁县', '0', '454', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3091', '镇原县', '0', '454', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3092', '安定区', '0', '455', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3093', '通渭县', '0', '455', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3094', '陇西县', '0', '455', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3095', '渭源县', '0', '455', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3096', '临洮县', '0', '455', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3097', '漳县', '0', '455', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3098', '岷县', '0', '455', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3099', '武都区', '0', '456', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3100', '成县', '0', '456', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3101', '文县', '0', '456', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3102', '宕昌县', '0', '456', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3103', '康县', '0', '456', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3104', '西和县', '0', '456', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3105', '礼县', '0', '456', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3106', '徽县', '0', '456', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3107', '两当县', '0', '456', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3108', '临夏市', '0', '457', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3109', '临夏县', '0', '457', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3110', '康乐县', '0', '457', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3111', '永靖县', '0', '457', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3112', '广河县', '0', '457', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3113', '和政县', '0', '457', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3114', '东乡族自治县', '0', '457', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3115', '积石山保安族东乡族撒拉族自治县', '0', '457', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3116', '合作市', '0', '458', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3117', '临潭县', '0', '458', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3118', '卓尼县', '0', '458', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3119', '舟曲县', '0', '458', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3120', '迭部县', '0', '458', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3121', '玛曲县', '0', '458', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3122', '碌曲县', '0', '458', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3123', '夏河县', '0', '458', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3124', '城东区', '0', '459', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3125', '城中区', '0', '459', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3126', '城西区', '0', '459', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3127', '城北区', '0', '459', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3128', '大通回族土族自治县', '0', '459', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3129', '湟中县', '0', '459', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3130', '湟源县', '0', '459', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3131', '平安县', '0', '460', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3132', '民和回族土族自治县', '0', '460', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3133', '乐都县', '0', '460', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3134', '互助土族自治县', '0', '460', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3135', '化隆回族自治县', '0', '460', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3136', '循化撒拉族自治县', '0', '460', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3137', '门源回族自治县', '0', '461', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3138', '祁连县', '0', '461', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3139', '海晏县', '0', '461', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3140', '刚察县', '0', '461', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3141', '同仁县', '0', '462', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3142', '尖扎县', '0', '462', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3143', '泽库县', '0', '462', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3144', '河南蒙古族自治县', '0', '462', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3145', '共和县', '0', '463', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3146', '同德县', '0', '463', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3147', '贵德县', '0', '463', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3148', '兴海县', '0', '463', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3149', '贵南县', '0', '463', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3150', '玛沁县', '0', '464', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3151', '班玛县', '0', '464', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3152', '甘德县', '0', '464', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3153', '达日县', '0', '464', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3154', '久治县', '0', '464', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3155', '玛多县', '0', '464', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3156', '玉树县', '0', '465', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3157', '杂多县', '0', '465', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3158', '称多县', '0', '465', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3159', '治多县', '0', '465', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3160', '囊谦县', '0', '465', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3161', '曲麻莱县', '0', '465', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3162', '格尔木市', '0', '466', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3163', '德令哈市', '0', '466', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3164', '乌兰县', '0', '466', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3165', '都兰县', '0', '466', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3166', '天峻县', '0', '466', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3167', '兴庆区', '0', '467', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3168', '西夏区', '0', '467', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3169', '金凤区', '0', '467', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3170', '永宁县', '0', '467', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3171', '贺兰县', '0', '467', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3172', '灵武市', '0', '467', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3173', '大武口区', '0', '468', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3174', '惠农区', '0', '468', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3175', '平罗县', '0', '468', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3176', '利通区', '0', '469', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3177', '盐池县', '0', '469', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3178', '同心县', '0', '469', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3179', '青铜峡市', '0', '469', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3180', '原州区', '0', '470', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3181', '西吉县', '0', '470', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3182', '隆德县', '0', '470', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3183', '泾源县', '0', '470', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3184', '彭阳县', '0', '470', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3185', '沙坡头区', '0', '471', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3186', '中宁县', '0', '471', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3187', '海原县', '0', '471', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3188', '天山区', '0', '472', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3189', '沙依巴克区', '0', '472', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3190', '新市区', '0', '472', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3191', '水磨沟区', '0', '472', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3192', '头屯河区', '0', '472', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3193', '达坂城区', '0', '472', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3194', '东山区', '0', '472', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3195', '乌鲁木齐县', '0', '472', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3196', '独山子区', '0', '473', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3197', '克拉玛依区', '0', '473', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3198', '白碱滩区', '0', '473', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3199', '乌尔禾区', '0', '473', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3200', '吐鲁番市', '0', '474', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3201', '鄯善县', '0', '474', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3202', '托克逊县', '0', '474', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3203', '哈密市', '0', '475', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3204', '巴里坤哈萨克自治县', '0', '475', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3205', '伊吾县', '0', '475', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3206', '昌吉市', '0', '476', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3207', '阜康市', '0', '476', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3208', '米泉市', '0', '476', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3209', '呼图壁县', '0', '476', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3210', '玛纳斯县', '0', '476', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3211', '奇台县', '0', '476', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3212', '吉木萨尔县', '0', '476', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3213', '木垒哈萨克自治县', '0', '476', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3214', '博乐市', '0', '477', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3215', '精河县', '0', '477', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3216', '温泉县', '0', '477', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3217', '库尔勒市', '0', '478', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3218', '轮台县', '0', '478', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3219', '尉犁县', '0', '478', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3220', '若羌县', '0', '478', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3221', '且末县', '0', '478', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3222', '焉耆回族自治县', '0', '478', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3223', '和静县', '0', '478', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3224', '和硕县', '0', '478', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3225', '博湖县', '0', '478', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3226', '阿克苏市', '0', '479', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3227', '温宿县', '0', '479', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3228', '库车县', '0', '479', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3229', '沙雅县', '0', '479', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3230', '新和县', '0', '479', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3231', '拜城县', '0', '479', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3232', '乌什县', '0', '479', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3233', '阿瓦提县', '0', '479', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3234', '柯坪县', '0', '479', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3235', '阿图什市', '0', '480', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3236', '阿克陶县', '0', '480', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3237', '阿合奇县', '0', '480', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3238', '乌恰县', '0', '480', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3239', '喀什市', '0', '481', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3240', '疏附县', '0', '481', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3241', '疏勒县', '0', '481', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3242', '英吉沙县', '0', '481', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3243', '泽普县', '0', '481', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3244', '莎车县', '0', '481', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3245', '叶城县', '0', '481', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3246', '麦盖提县', '0', '481', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3247', '岳普湖县', '0', '481', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3248', '伽师县', '0', '481', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3249', '巴楚县', '0', '481', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3250', '塔什库尔干塔吉克自治县', '0', '481', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3251', '和田市', '0', '482', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3252', '和田县', '0', '482', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3253', '墨玉县', '0', '482', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3254', '皮山县', '0', '482', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3255', '洛浦县', '0', '482', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3256', '策勒县', '0', '482', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3257', '于田县', '0', '482', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3258', '民丰县', '0', '482', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3259', '伊宁市', '0', '483', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3260', '奎屯市', '0', '483', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3261', '伊宁县', '0', '483', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3262', '察布查尔锡伯自治县', '0', '483', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3263', '霍城县', '0', '483', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3264', '巩留县', '0', '483', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3265', '新源县', '0', '483', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3266', '昭苏县', '0', '483', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3267', '特克斯县', '0', '483', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3268', '尼勒克县', '0', '483', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3269', '塔城市', '0', '484', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3270', '乌苏市', '0', '484', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3271', '额敏县', '0', '484', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3272', '沙湾县', '0', '484', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3273', '托里县', '0', '484', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3274', '裕民县', '0', '484', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3275', '和布克赛尔蒙古自治县', '0', '484', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3276', '阿勒泰市', '0', '485', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3277', '布尔津县', '0', '485', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3278', '富蕴县', '0', '485', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3279', '福海县', '0', '485', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3280', '哈巴河县', '0', '485', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3281', '青河县', '0', '485', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3282', '吉木乃县', '0', '485', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3358', '钓鱼岛', '', '0', '0', '', '1', '0', '', null, '0');
INSERT INTO `jrkj_linkage` VALUES ('3359', '钓鱼岛', '', '3358', '0', '', '1', '0', '', null, '0');

-- ----------------------------
-- Table structure for jrkj_member
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_member`;
CREATE TABLE `jrkj_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `account` varchar(20) NOT NULL DEFAULT '' COMMENT '账号',
  `nickname` char(16) NOT NULL DEFAULT '' COMMENT '昵称',
  `truename` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `is_status` int(1) NOT NULL DEFAULT '1' COMMENT '用户状态 1.正常  2冻结',
  `login` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `reg_ip` char(15) NOT NULL DEFAULT '' COMMENT '注册IP',
  `invite` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` char(15) NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `update_time` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '会员状态',
  `balance` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `frozen_money` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '冻结金额',
  `rank_points` int(11) NOT NULL COMMENT '等级',
  `pay_points` int(11) NOT NULL,
  `deposit` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '保证金',
  `profit` float(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '利润',
  `level` tinyint(4) unsigned NOT NULL,
  `id_card` char(20) NOT NULL DEFAULT '' COMMENT '身份证',
  `merchant_invite` int(10) unsigned NOT NULL,
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `age` int(11) NOT NULL COMMENT '年龄',
  `evaluate` varchar(255) DEFAULT NULL COMMENT '评价',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `provice` varchar(255) DEFAULT NULL COMMENT '所在地（省）',
  `city` varchar(255) DEFAULT NULL COMMENT '所在地（市）',
  `district` varchar(255) DEFAULT NULL COMMENT '所在地（区）',
  `address` varchar(255) DEFAULT NULL COMMENT '所在地（详细地址）',
  `integral` int(20) NOT NULL DEFAULT '0' COMMENT '积分',
  `role` tinyint(1) NOT NULL DEFAULT '3' COMMENT '1修理厂2经销商 3车主',
  `is_vip` int(1) NOT NULL DEFAULT '0' COMMENT '是否VIP  0.普通  1.VIP',
  `weixin` varchar(30) DEFAULT NULL COMMENT '微信',
  `realaddress` varchar(100) DEFAULT NULL COMMENT '真实地址 ',
  `paypassword` varchar(100) DEFAULT NULL COMMENT '支付密码',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_member
-- ----------------------------
INSERT INTO `jrkj_member` VALUES ('42', 'shesebe', '', '杨靖', 'c6f4b02c1aa65a08af09cb8423c53c07', '15070994142', '627636297@qq.com', '1', '34', '', '0', '117.44.170.9', '1479112056', '1476955175', '1477040268', '0', '81912.00', '0.00', '0', '0', '0.00', '0.00', '0', '', '0', '1610/25/1477385703.jpeg', '0', null, '女', null, null, null, null, '10000', '3', '1', 'dsadsad', '南昌市徐家坊', 'c6f4b02c1aa65a08af09cb8423c53c07');
INSERT INTO `jrkj_member` VALUES ('45', 'Songke', '', '宋科', 'c6f4b02c1aa65a08af09cb8423c53c07', '15180163170', '1633967339@qq.com', '1', '10', '', '0', '117.44.170.9', '1479126302', '1477032710', '1477041822', '0', '304.00', '0.00', '0', '0', '0.00', '0.00', '0', '', '0', '1610/23/1477184283.jpeg', '0', null, '男', null, null, null, null, '10000', '3', '1', '15180163170', '江西省南昌市解放西路258号', 'ba373cd8512d36dbe3faab713118269d');
INSERT INTO `jrkj_member` VALUES ('47', 'w123456', '', '', 'c6f4b02c1aa65a08af09cb8423c53c07', '18858151090', '', '1', '1', '', '0', '', '1478571990', '1478571982', '0', '0', '0.00', '0.00', '0', '0', '0.00', '0.00', '0', '', '0', null, '0', null, null, null, null, null, null, '10', '3', '0', null, null, null);

-- ----------------------------
-- Table structure for jrkj_member_city
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_member_city`;
CREATE TABLE `jrkj_member_city` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) NOT NULL DEFAULT '',
  `city_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_access_time` int(10) unsigned NOT NULL DEFAULT '0',
  `access_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1067 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_member_city
-- ----------------------------
INSERT INTO `jrkj_member_city` VALUES ('1', '162', 'kl6egdf4dah6pgivkgfoe5c0i9jpfr0h', '17', '1443494212', '23');
INSERT INTO `jrkj_member_city` VALUES ('2', '91', '74b8teo5k8kvhmfc2bkpir2jmurtucn8', '98', '1443147078', '1');
INSERT INTO `jrkj_member_city` VALUES ('3', '91', '74b8teo5k8kvhmfc2bkpir2jmurtucn8', '17', '1450272072', '108');
INSERT INTO `jrkj_member_city` VALUES ('4', '155', 'ck3kqam7d32ogi8o6rm7e312ju1ql0n2', '16', '1448349313', '16');
INSERT INTO `jrkj_member_city` VALUES ('5', '63', 'sooo2m2ikk8ovic526uv6trie1f0uuok', '17', '1443181812', '2');
INSERT INTO `jrkj_member_city` VALUES ('6', '162', 'daj877j3o0fjcjcspnfk435dhon0utfc', '16', '1444182376', '13');
INSERT INTO `jrkj_member_city` VALUES ('7', '162', 'la4v1kcsmcsjet9s0a5jbn45ffh9iasa', '89', '1443255424', '6');
INSERT INTO `jrkj_member_city` VALUES ('8', '2', 'hrgbrsp1frk4f09oa54i1oq8vnc3ociv', '17', '1444633115', '22');
INSERT INTO `jrkj_member_city` VALUES ('9', '2', 'j50ahe6qqtu1gvqt5aget5ps678tl92v', '95', '1443192190', '2');
INSERT INTO `jrkj_member_city` VALUES ('10', '38', 'cdtltq8sfa8qlkl2ti47oifgqmgo9k7j', '17', '1447575442', '4');
INSERT INTO `jrkj_member_city` VALUES ('11', '2', 'uslvlq6irsqjank0vsvf2k2etq32u78o', '16', '1443571748', '12');
INSERT INTO `jrkj_member_city` VALUES ('12', '2', 'j50ahe6qqtu1gvqt5aget5ps678tl92v', '65', '1443190893', '1');
INSERT INTO `jrkj_member_city` VALUES ('13', '0', 'u6ps9e24lto7q1o1g5o1l24s3u1l15jc', '66', '1443194834', '2');
INSERT INTO `jrkj_member_city` VALUES ('14', '0', 'u6ps9e24lto7q1o1g5o1l24s3u1l15jc', '16', '1443194948', '2');
INSERT INTO `jrkj_member_city` VALUES ('15', '0', 'u6ps9e24lto7q1o1g5o1l24s3u1l15jc', '17', '1443194977', '2');
INSERT INTO `jrkj_member_city` VALUES ('16', '0', 'oatn9f5i1ucbf8ebosr3tk94b9idh8fp', '17', '1443194932', '1');
INSERT INTO `jrkj_member_city` VALUES ('17', '162', '0teuuk51rgp2m410mi1ht2c39sebc5ls', '65', '1443195126', '1');
INSERT INTO `jrkj_member_city` VALUES ('18', '0', 'ldr2tiue8eea8cs2vomdfqp65enkatth', '17', '1443195738', '1');
INSERT INTO `jrkj_member_city` VALUES ('19', '152', '6u3kb5jr7056147sk5lj9nksr8t2mgoo', '16', '1449727276', '35');
INSERT INTO `jrkj_member_city` VALUES ('20', '152', '6u3kb5jr7056147sk5lj9nksr8t2mgoo', '17', '1450066634', '18');
INSERT INTO `jrkj_member_city` VALUES ('21', '152', '6u3kb5jr7056147sk5lj9nksr8t2mgoo', '65', '1445660046', '2');
INSERT INTO `jrkj_member_city` VALUES ('22', '29', 'ohjusrstdidfr0e151m92b205j2ol17l', '17', '1443836127', '2');
INSERT INTO `jrkj_member_city` VALUES ('23', '0', 'eglcp31rsotovkajr6tmfsfgnb31tdlp', '17', '1443235456', '1');
INSERT INTO `jrkj_member_city` VALUES ('24', '0', '55mh3b31a93hpgha1d93n0oho2dgqhvv', '17', '1443235824', '1');
INSERT INTO `jrkj_member_city` VALUES ('25', '0', '5lq4cth7kr6q9sdntssao0ehjqj11br2', '17', '1443237203', '1');
INSERT INTO `jrkj_member_city` VALUES ('26', '10', '6qjbol5d055snr19ilbov1kfoq78vioq', '17', '1450261478', '74');
INSERT INTO `jrkj_member_city` VALUES ('27', '11', 'unf3407mmvhqi7tl63517ofaubtmsg3k', '17', '1449936267', '27');
INSERT INTO `jrkj_member_city` VALUES ('28', '0', '11st95b03jrev9s6ghf50u3kqbtp17i3', '17', '1446107946', '32');
INSERT INTO `jrkj_member_city` VALUES ('29', '0', '11st95b03jrev9s6ghf50u3kqbtp17i3', '16', '1445351195', '35');
INSERT INTO `jrkj_member_city` VALUES ('30', '0', 'd5mdhg6ul6krktmmq8ppd82p8m9m92bh', '17', '1443251624', '1');
INSERT INTO `jrkj_member_city` VALUES ('31', '0', 'd5mdhg6ul6krktmmq8ppd82p8m9m92bh', '16', '1443251649', '1');
INSERT INTO `jrkj_member_city` VALUES ('32', '0', '292ccvijc2bhc4us2eehukkeumi8r4uo', '16', '1443252272', '2');
INSERT INTO `jrkj_member_city` VALUES ('33', '0', '292ccvijc2bhc4us2eehukkeumi8r4uo', '73', '1443252230', '1');
INSERT INTO `jrkj_member_city` VALUES ('34', '13', 'mskviq7bhcplmi8tfdsi4vb5vlncm59n', '16', '1447292442', '6');
INSERT INTO `jrkj_member_city` VALUES ('35', '188', 'oqff3lkdf6dlusiu70v888l1lmi3cavp', '17', '1444819619', '11');
INSERT INTO `jrkj_member_city` VALUES ('36', '10', 'fiqr67slm82nhict7b44u5ro17am1s9k', '16', '1445394828', '6');
INSERT INTO `jrkj_member_city` VALUES ('37', '11', '9e82969aak63jibj52ntu6kmhms542l8', '16', '1444280072', '3');
INSERT INTO `jrkj_member_city` VALUES ('38', '0', 'fuvdst0vm8vu2chu5eurmlhguh8sacd7', '31', '1443256735', '1');
INSERT INTO `jrkj_member_city` VALUES ('39', '0', 'fuvdst0vm8vu2chu5eurmlhguh8sacd7', '24', '1443256749', '1');
INSERT INTO `jrkj_member_city` VALUES ('40', '0', '1r5rqf84a3mfg9513brdj9bgvcdt4k53', '16', '1443256812', '1');
INSERT INTO `jrkj_member_city` VALUES ('41', '0', 'fuvdst0vm8vu2chu5eurmlhguh8sacd7', '16', '1443256817', '1');
INSERT INTO `jrkj_member_city` VALUES ('42', '0', '1r5rqf84a3mfg9513brdj9bgvcdt4k53', '17', '1443256856', '1');
INSERT INTO `jrkj_member_city` VALUES ('43', '12', '8dseasfbeo1jm96fig4e1ufkdp9jd1nq', '16', '1448078816', '4');
INSERT INTO `jrkj_member_city` VALUES ('44', '112', '3na16pd3ssk6hu81ooj3ucj2m7b4cvds', '16', '1444457369', '4');
INSERT INTO `jrkj_member_city` VALUES ('45', '0', 'k6vcdm9rsqd49tfjmr3qoj6evetql0re', '16', '1443257372', '1');
INSERT INTO `jrkj_member_city` VALUES ('46', '0', '5ahfq4aup77sok8pqts6ia3ofsdf556k', '16', '1443257396', '2');
INSERT INTO `jrkj_member_city` VALUES ('47', '0', 'vighsrumkk20nhdctll04nl2tcb962em', '16', '1443258682', '1');
INSERT INTO `jrkj_member_city` VALUES ('48', '0', 'p5qeo70s2c4810skvmal0q309lfrt3un', '17', '1443314077', '3');
INSERT INTO `jrkj_member_city` VALUES ('49', '0', 'p5qeo70s2c4810skvmal0q309lfrt3un', '65', '1443314056', '2');
INSERT INTO `jrkj_member_city` VALUES ('50', '0', 'p5qeo70s2c4810skvmal0q309lfrt3un', '16', '1443314163', '3');
INSERT INTO `jrkj_member_city` VALUES ('51', '19', 'd0ljjl1ki7bl9mqme69k2i8c8rqguheu', '16', '1461289966', '3');
INSERT INTO `jrkj_member_city` VALUES ('52', '0', '2ibcqkp75j81jfuki4k7qm9ng8bj9llh', '16', '1443260455', '1');
INSERT INTO `jrkj_member_city` VALUES ('53', '0', '6vu7ep6cpspika228k1a0g3ehqp1o8j3', '16', '1443261086', '1');
INSERT INTO `jrkj_member_city` VALUES ('54', '161', 'ndq0250s8d96un91c3nsna13991ph0uk', '16', '1444461581', '2');
INSERT INTO `jrkj_member_city` VALUES ('55', '0', 'ic71pbftse606jvkm5o8q3lphfap0gvr', '17', '1443271458', '1');
INSERT INTO `jrkj_member_city` VALUES ('56', '2', 'tue3nvsujdvgueam6rptrfar6ev2nnnt', '89', '1443312256', '1');
INSERT INTO `jrkj_member_city` VALUES ('57', '0', 'p5qeo70s2c4810skvmal0q309lfrt3un', '95', '1443314047', '1');
INSERT INTO `jrkj_member_city` VALUES ('58', '0', 'p5qeo70s2c4810skvmal0q309lfrt3un', '30', '1443314069', '1');
INSERT INTO `jrkj_member_city` VALUES ('59', '85', 'tjqsfqkoadjvr5v6ouoluc2u1h0dhppr', '16', '1443327511', '1');
INSERT INTO `jrkj_member_city` VALUES ('60', '0', 'aojna07sdalkkg4eors5d9bvpbodt9hn', '17', '1443328533', '2');
INSERT INTO `jrkj_member_city` VALUES ('61', '0', 'aojna07sdalkkg4eors5d9bvpbodt9hn', '16', '1443328571', '1');
INSERT INTO `jrkj_member_city` VALUES ('62', '4', 'ka1orho581kc65i80im3kbd838bt3eof', '17', '1446186943', '6');
INSERT INTO `jrkj_member_city` VALUES ('63', '4', 'fq8lq9cfeklgo2emh3h6fgcii4ps80ml', '16', '1449817009', '8');
INSERT INTO `jrkj_member_city` VALUES ('64', '16', 'b6bsk8c7b01bfcu3tak6uv376tge72d9', '17', '1443337602', '1');
INSERT INTO `jrkj_member_city` VALUES ('65', '18', 'j3ldat27bqo8fqtlkohi51mg02', '16', '1466666388', '8');
INSERT INTO `jrkj_member_city` VALUES ('66', '16', 'n2natq4ant9dm5tl0sp6d0jrf3', '16', '1462511580', '5');
INSERT INTO `jrkj_member_city` VALUES ('67', '168', '5k3evbgkcaok0itva8aabujh9la7i2gm', '16', '1447840360', '4');
INSERT INTO `jrkj_member_city` VALUES ('68', '151', 'gejc3su7ehb38820kt68sfala49soskl', '95', '1443406087', '1');
INSERT INTO `jrkj_member_city` VALUES ('69', '151', 'gejc3su7ehb38820kt68sfala49soskl', '16', '1443406102', '1');
INSERT INTO `jrkj_member_city` VALUES ('70', '0', 'b1g9l9ih6e48a1kr2bud2kuoqrmtqeop', '17', '1443578051', '2');
INSERT INTO `jrkj_member_city` VALUES ('71', '156', 'j77ktca81llu0bpfe993lpc400sa83sf', '16', '1445427387', '2');
INSERT INTO `jrkj_member_city` VALUES ('72', '58', '8dn3rr0aq0vj425736s0cpk5i5sn8dge', '65', '1443412845', '1');
INSERT INTO `jrkj_member_city` VALUES ('73', '58', 'impa6n5orhenldr59bsgcni0nep0g215', '18', '1449316494', '5');
INSERT INTO `jrkj_member_city` VALUES ('74', '58', 'impa6n5orhenldr59bsgcni0nep0g215', '17', '1449723132', '5');
INSERT INTO `jrkj_member_city` VALUES ('75', '58', 'impa6n5orhenldr59bsgcni0nep0g215', '16', '1449655701', '7');
INSERT INTO `jrkj_member_city` VALUES ('76', '14', '1raai7kk2u7l1n0gi8al2omrbtaig4ka', '17', '1449933449', '8');
INSERT INTO `jrkj_member_city` VALUES ('77', '140', 'vbe8tu69fb07c00ubtusbo701keq9ri0', '17', '1450168922', '2');
INSERT INTO `jrkj_member_city` VALUES ('78', '140', 'vbe8tu69fb07c00ubtusbo701keq9ri0', '73', '1450169046', '2');
INSERT INTO `jrkj_member_city` VALUES ('79', '0', 'er9kvjkt00mr9j1i9jri9ta9uf5o5k41', '66', '1443416709', '1');
INSERT INTO `jrkj_member_city` VALUES ('80', '0', 'er9kvjkt00mr9j1i9jri9ta9uf5o5k41', '17', '1443416716', '1');
INSERT INTO `jrkj_member_city` VALUES ('81', '0', 'fsvrejb32839nlqneb6svah6kdb7dqf1', '16', '1443484902', '2');
INSERT INTO `jrkj_member_city` VALUES ('82', '0', 'fsvrejb32839nlqneb6svah6kdb7dqf1', '17', '1443418199', '1');
INSERT INTO `jrkj_member_city` VALUES ('83', '0', 'ev2sqid7rd8ckun57pp8dk9o4i7d3472', '25', '1443440108', '1');
INSERT INTO `jrkj_member_city` VALUES ('84', '0', 'n0q0nt0h112nparkqcgt3teq707jtvrl', '17', '1448461948', '2');
INSERT INTO `jrkj_member_city` VALUES ('85', '0', '7nqmr7cu988aam46n1dmi80ddqq10nei', '16', '1444021908', '4');
INSERT INTO `jrkj_member_city` VALUES ('86', '0', '7nqmr7cu988aam46n1dmi80ddqq10nei', '17', '1450240195', '5');
INSERT INTO `jrkj_member_city` VALUES ('87', '0', '7nqmr7cu988aam46n1dmi80ddqq10nei', '33', '1443445660', '1');
INSERT INTO `jrkj_member_city` VALUES ('88', '0', '7nqmr7cu988aam46n1dmi80ddqq10nei', '65', '1443445669', '1');
INSERT INTO `jrkj_member_city` VALUES ('89', '0', '7nqmr7cu988aam46n1dmi80ddqq10nei', '95', '1443445677', '1');
INSERT INTO `jrkj_member_city` VALUES ('90', '59', '1nkvtt4mqi49q0eqog6k19ur19q3fq8e', '16', '1444698348', '3');
INSERT INTO `jrkj_member_city` VALUES ('91', '0', 'afi0d36oarp8797ivo6f6m3pjrqn4m51', '17', '1443464958', '1');
INSERT INTO `jrkj_member_city` VALUES ('92', '0', 'll80lth7vq0it0r0f339pp63ue6qa7c8', '16', '1443487928', '1');
INSERT INTO `jrkj_member_city` VALUES ('93', '188', 'oqff3lkdf6dlusiu70v888l1lmi3cavp', '16', '1444819651', '24');
INSERT INTO `jrkj_member_city` VALUES ('94', '42', 's0r1h5m1911gvl2s1b8hm65lijhbho9r', '17', '1450273549', '27');
INSERT INTO `jrkj_member_city` VALUES ('95', '118', '3m7brbieoe0slto8jbdsjo9mph8lotkt', '16', '1444448481', '2');
INSERT INTO `jrkj_member_city` VALUES ('96', '118', '9vvllhl2m9v6r3551b6sqgknnrhqkumd', '17', '1443494793', '1');
INSERT INTO `jrkj_member_city` VALUES ('97', '0', 'b1g9l9ih6e48a1kr2bud2kuoqrmtqeop', '65', '1443507073', '1');
INSERT INTO `jrkj_member_city` VALUES ('98', '0', 'b1g9l9ih6e48a1kr2bud2kuoqrmtqeop', '16', '1443507091', '1');
INSERT INTO `jrkj_member_city` VALUES ('99', '52', 'ku307arkkg41tgoia05c59r9coonq3hs', '17', '1449918562', '19');
INSERT INTO `jrkj_member_city` VALUES ('100', '52', 'th18p3h8nm9ggeqmif5ubj8f4fe5dmbb', '16', '1444729707', '3');
INSERT INTO `jrkj_member_city` VALUES ('101', '22', 'msa4062cvmnr7q9e402thcnvk4', '16', '1467109224', '25');
INSERT INTO `jrkj_member_city` VALUES ('102', '22', '3vhcfi0jdlq3a403c0pgr4eri2', '17', '1466738571', '16');
INSERT INTO `jrkj_member_city` VALUES ('103', '18', '0f17kro6krqve6jj53faiahdp268ugfc', '17', '1461833163', '3');
INSERT INTO `jrkj_member_city` VALUES ('104', '0', '1kht16gotrb0g7vmdkib79i2s2jmceau', '16', '1443513077', '1');
INSERT INTO `jrkj_member_city` VALUES ('105', '0', 'b3gv68qufq1gt11q8b26srkmt4l0nk95', '17', '1443515930', '2');
INSERT INTO `jrkj_member_city` VALUES ('106', '171', '5lq4cth7kr6q9sdntssao0ehjqj11br2', '16', '1444883452', '4');
INSERT INTO `jrkj_member_city` VALUES ('107', '171', '5lq4cth7kr6q9sdntssao0ehjqj11br2', '17', '1443515753', '1');
INSERT INTO `jrkj_member_city` VALUES ('108', '0', 'smqjlm6gj09hptrguui3ep8ved43c3c1', '95', '1443517952', '1');
INSERT INTO `jrkj_member_city` VALUES ('109', '0', 'smqjlm6gj09hptrguui3ep8ved43c3c1', '17', '1443517968', '1');
INSERT INTO `jrkj_member_city` VALUES ('110', '36', 'a6d38bq9j4ci4b96kkhmg4eifs2kmdst', '89', '1443535612', '1');
INSERT INTO `jrkj_member_city` VALUES ('111', '0', 'cnr6vcugmph94sbepavcsaffp4r62nq6', '17', '1443535878', '1');
INSERT INTO `jrkj_member_city` VALUES ('112', '170', 'l6m5kkt7n6tm2sq5vnheu1miu8nj14j4', '16', '1444191916', '4');
INSERT INTO `jrkj_member_city` VALUES ('113', '197', 'elfgqmq6hcod8leqnad69ugv85ievpq0', '16', '1443567450', '1');
INSERT INTO `jrkj_member_city` VALUES ('114', '129', '3e4n38f1dqh1porn9ks47bk5ov7en601', '16', '1445231530', '12');
INSERT INTO `jrkj_member_city` VALUES ('115', '70', 'iuekljnf6r0t54t428a2vemqgp1mbt4m', '16', '1446634220', '3');
INSERT INTO `jrkj_member_city` VALUES ('116', '135', '39juu7uhgp1uic9hnp2604v5mq73fei7', '27', '1443576733', '1');
INSERT INTO `jrkj_member_city` VALUES ('117', '143', 'mdiq9f2ojtujdetdk5dhmadg51ikmkbr', '16', '1444785075', '4');
INSERT INTO `jrkj_member_city` VALUES ('118', '91', '74b8teo5k8kvhmfc2bkpir2jmurtucn8', '16', '1447825948', '7');
INSERT INTO `jrkj_member_city` VALUES ('119', '0', 'p3vgouopfuffj46jt8lvrjg5om72f3m3', '16', '1443582603', '1');
INSERT INTO `jrkj_member_city` VALUES ('120', '91', '74b8teo5k8kvhmfc2bkpir2jmurtucn8', '18', '1448959815', '4');
INSERT INTO `jrkj_member_city` VALUES ('121', '140', 'vbe8tu69fb07c00ubtusbo701keq9ri0', '16', '1450169074', '2');
INSERT INTO `jrkj_member_city` VALUES ('122', '196', '292ccvijc2bhc4us2eehukkeumi8r4uo', '17', '1443599232', '1');
INSERT INTO `jrkj_member_city` VALUES ('123', '0', 'hs7jjk7l3qhv4pqi9ioplah0dngupsl3', '17', '1443608632', '1');
INSERT INTO `jrkj_member_city` VALUES ('124', '0', 'k18q85qpvj01c7fcn8ke6gmcqkkvuvir', '17', '1443669367', '2');
INSERT INTO `jrkj_member_city` VALUES ('125', '170', 'l6m5kkt7n6tm2sq5vnheu1miu8nj14j4', '17', '1444185675', '2');
INSERT INTO `jrkj_member_city` VALUES ('126', '36', 'uoqebj926mouo09r40i6dfbt48gqtj0b', '17', '1443741097', '1');
INSERT INTO `jrkj_member_city` VALUES ('127', '36', 'uoqebj926mouo09r40i6dfbt48gqtj0b', '29', '1443741118', '1');
INSERT INTO `jrkj_member_city` VALUES ('128', '36', '0gk1pekrgte82lv9rq17kuc1e10l4ndt', '16', '1446618049', '2');
INSERT INTO `jrkj_member_city` VALUES ('129', '58', '8dn3rr0aq0vj425736s0cpk5i5sn8dge', '25', '1443759147', '1');
INSERT INTO `jrkj_member_city` VALUES ('130', '129', 'sfba3bj7pejvfvf2terkfq3frn977jpk', '17', '1447550518', '11');
INSERT INTO `jrkj_member_city` VALUES ('131', '129', 'lisjt2tu6nnc2fh83ukr2fsvb93gm61f', '65', '1443769717', '1');
INSERT INTO `jrkj_member_city` VALUES ('132', '129', 'lisjt2tu6nnc2fh83ukr2fsvb93gm61f', '95', '1443769726', '1');
INSERT INTO `jrkj_member_city` VALUES ('133', '112', '3na16pd3ssk6hu81ooj3ucj2m7b4cvds', '60', '1443785196', '1');
INSERT INTO `jrkj_member_city` VALUES ('134', '0', '40653a2brhhlhtmq2kiajgsvkd06paa8', '17', '1443790950', '1');
INSERT INTO `jrkj_member_city` VALUES ('135', '29', 'ohjusrstdidfr0e151m92b205j2ol17l', '16', '1443801376', '1');
INSERT INTO `jrkj_member_city` VALUES ('136', '49', 'on3rno038tobiqp0elqcdv541qdn10v9', '17', '1443962838', '1');
INSERT INTO `jrkj_member_city` VALUES ('137', '0', 'suj51hud8mavm8j0rvv4u5h0ohb470me', '17', '1443982593', '1');
INSERT INTO `jrkj_member_city` VALUES ('138', '150', 'hqoiurg0lsv39kc3vorosmpjqdtmsj57', '17', '1443983843', '2');
INSERT INTO `jrkj_member_city` VALUES ('139', '150', 'kgj3blnlgg5go7q18578r3s9k5n6srtm', '38', '1443982910', '1');
INSERT INTO `jrkj_member_city` VALUES ('140', '150', 'hqoiurg0lsv39kc3vorosmpjqdtmsj57', '65', '1443984028', '1');
INSERT INTO `jrkj_member_city` VALUES ('141', '0', 'bhbpbgmq8d6nuu5nnfo65hvtjb01fjh9', '17', '1443987965', '1');
INSERT INTO `jrkj_member_city` VALUES ('142', '14', 'k72t87ec9hbcn67sjc02gqj3g801aioc', '16', '1445041882', '2');
INSERT INTO `jrkj_member_city` VALUES ('143', '89', 'e190ufuf6ntnlpeejlad5gr5vk7c0n3a', '17', '1450234567', '16');
INSERT INTO `jrkj_member_city` VALUES ('144', '0', 'gaiip03m9u89dgrnikgtsd6an70ajnsn', '16', '1444008687', '1');
INSERT INTO `jrkj_member_city` VALUES ('145', '0', 'iqpv7gdgj0qeb7m771pibcii17jcqofq', '17', '1444014726', '1');
INSERT INTO `jrkj_member_city` VALUES ('146', '0', 'nadjohnvdk05eb89olbqfuufgdva3rav', '17', '1444015169', '1');
INSERT INTO `jrkj_member_city` VALUES ('147', '55', '8n49k2c2fbh18a491jn385890t6imjik', '17', '1450277089', '119');
INSERT INTO `jrkj_member_city` VALUES ('148', '0', 'o3eqaf0q3n28jim4g3cel25tc08aipe5', '16', '1444015878', '1');
INSERT INTO `jrkj_member_city` VALUES ('149', '0', '2fg29bfqb0dm6nl22cl7ba069664fe0m', '17', '1444019719', '1');
INSERT INTO `jrkj_member_city` VALUES ('150', '0', '1np05ga49uebrcjp3imj4huvjg3pbal5', '17', '1444028208', '1');
INSERT INTO `jrkj_member_city` VALUES ('151', '106', '008f0qht1crhnthv0qk136724s3j2hmp', '17', '1449911084', '2');
INSERT INTO `jrkj_member_city` VALUES ('152', '106', '8gph0pcpkm6mgne0b0ohoia52arsm700', '89', '1444038212', '1');
INSERT INTO `jrkj_member_city` VALUES ('153', '106', '8gph0pcpkm6mgne0b0ohoia52arsm700', '16', '1444038218', '1');
INSERT INTO `jrkj_member_city` VALUES ('154', '124', '9t89ukd5troknb7i2heujlgrntekdnss', '16', '1444459752', '2');
INSERT INTO `jrkj_member_city` VALUES ('155', '13', 'pjhq4so52bmu5v388q763t4psmis4kd4', '17', '1448497883', '4');
INSERT INTO `jrkj_member_city` VALUES ('156', '13', 'pjhq4so52bmu5v388q763t4psmis4kd4', '49', '1448497952', '2');
INSERT INTO `jrkj_member_city` VALUES ('157', '13', '93qbikv62guqfd8vkrjhlpololel79on', '95', '1444100736', '1');
INSERT INTO `jrkj_member_city` VALUES ('158', '13', 'pjhq4so52bmu5v388q763t4psmis4kd4', '18', '1448497977', '2');
INSERT INTO `jrkj_member_city` VALUES ('159', '71', '9l5uf1vsvin4hcqb3v285a2l0f94kqr5', '16', '1446863742', '7');
INSERT INTO `jrkj_member_city` VALUES ('160', '71', '9l5uf1vsvin4hcqb3v285a2l0f94kqr5', '17', '1446863616', '5');
INSERT INTO `jrkj_member_city` VALUES ('161', '0', 'edh4lapog2jgjek1h61agv6vjvgag1ng', '89', '1444106364', '1');
INSERT INTO `jrkj_member_city` VALUES ('162', '0', 'edh4lapog2jgjek1h61agv6vjvgag1ng', '16', '1444106451', '1');
INSERT INTO `jrkj_member_city` VALUES ('163', '152', '6u3kb5jr7056147sk5lj9nksr8t2mgoo', '18', '1450246124', '88');
INSERT INTO `jrkj_member_city` VALUES ('164', '0', 'tmiibn1icnvsr5rhrj87gnir1jiitivg', '17', '1444108867', '1');
INSERT INTO `jrkj_member_city` VALUES ('165', '129', 'llus4j8gdv5cpeordi1plepuu7tsrqc1', '73', '1444110652', '1');
INSERT INTO `jrkj_member_city` VALUES ('166', '129', 'sfba3bj7pejvfvf2terkfq3frn977jpk', '18', '1447550537', '6');
INSERT INTO `jrkj_member_city` VALUES ('167', '4', 'uqgovm062lnqvnj0i9nkdu6bakbcet34', '89', '1444111425', '1');
INSERT INTO `jrkj_member_city` VALUES ('168', '0', 'lrv50sn3tplnjtj3mb67760bji9jtdv7', '17', '1444117022', '1');
INSERT INTO `jrkj_member_city` VALUES ('169', '0', '5sb7gplmt5b1a11t3b6ap55jeb70u94v', '17', '1444117412', '1');
INSERT INTO `jrkj_member_city` VALUES ('170', '0', 'u3orhdjo6jtcdlc18cjaa494armhtqr4', '17', '1444119656', '1');
INSERT INTO `jrkj_member_city` VALUES ('171', '188', 'n93u7skikqvao00up6mhaf87d30ho0m6', '89', '1444277325', '4');
INSERT INTO `jrkj_member_city` VALUES ('172', '83', 'am8hpll2k8shnafccbrudtvnocapb0il', '17', '1450056636', '14');
INSERT INTO `jrkj_member_city` VALUES ('173', '0', '6ttcih86b39clea3svr8717lj06m44hr', '65', '1444125150', '1');
INSERT INTO `jrkj_member_city` VALUES ('174', '0', '6ttcih86b39clea3svr8717lj06m44hr', '18', '1444125176', '1');
INSERT INTO `jrkj_member_city` VALUES ('175', '0', 'hgri8ai71p2doipjsasibvp3q0938066', '17', '1444127765', '1');
INSERT INTO `jrkj_member_city` VALUES ('176', '47', 'hgri8ai71p2doipjsasibvp3q0938066', '95', '1444127848', '1');
INSERT INTO `jrkj_member_city` VALUES ('177', '96', 'to5tfnli0l68aiaf2k2lu2pqrreo0k10', '17', '1450060508', '5');
INSERT INTO `jrkj_member_city` VALUES ('178', '0', '9qf14ar9gnhq8dt9krduc8a0mt6rgptl', '17', '1444179558', '1');
INSERT INTO `jrkj_member_city` VALUES ('179', '170', 'l6m5kkt7n6tm2sq5vnheu1miu8nj14j4', '49', '1444185596', '1');
INSERT INTO `jrkj_member_city` VALUES ('180', '0', '11st95b03jrev9s6ghf50u3kqbtp17i3', '18', '1445565119', '9');
INSERT INTO `jrkj_member_city` VALUES ('181', '169', '33k7jbuosflfa6ep2j5g89vs13qisl1r', '18', '1449829157', '67');
INSERT INTO `jrkj_member_city` VALUES ('182', '24', 'kq7f0h8mag282j9gu7tcqm3g07ta5j8g', '17', '1447719575', '2');
INSERT INTO `jrkj_member_city` VALUES ('183', '24', 'kq7f0h8mag282j9gu7tcqm3g07ta5j8g', '16', '1447731245', '5');
INSERT INTO `jrkj_member_city` VALUES ('184', '19', 'pgfjelho3op2j0vergt2pl471nmjb7f7', '17', '1444190697', '1');
INSERT INTO `jrkj_member_city` VALUES ('185', '155', 'ck3kqam7d32ogi8o6rm7e312ju1ql0n2', '42', '1444193966', '1');
INSERT INTO `jrkj_member_city` VALUES ('186', '155', 'ck3kqam7d32ogi8o6rm7e312ju1ql0n2', '18', '1450322863', '83');
INSERT INTO `jrkj_member_city` VALUES ('187', '0', 'urtnnj0396kof1sknhpl19p8u5k89qam', '17', '1444195232', '1');
INSERT INTO `jrkj_member_city` VALUES ('188', '169', '33k7jbuosflfa6ep2j5g89vs13qisl1r', '16', '1449727351', '11');
INSERT INTO `jrkj_member_city` VALUES ('189', '155', 'ck3kqam7d32ogi8o6rm7e312ju1ql0n2', '17', '1447563381', '6');
INSERT INTO `jrkj_member_city` VALUES ('190', '0', '6o8ot9opmv3tumm2j5cl285pc24016v9', '18', '1444198893', '4');
INSERT INTO `jrkj_member_city` VALUES ('191', '0', '6o8ot9opmv3tumm2j5cl285pc24016v9', '32', '1444198705', '1');
INSERT INTO `jrkj_member_city` VALUES ('192', '0', '6o8ot9opmv3tumm2j5cl285pc24016v9', '52', '1444198863', '1');
INSERT INTO `jrkj_member_city` VALUES ('193', '169', '33k7jbuosflfa6ep2j5g89vs13qisl1r', '17', '1448278738', '11');
INSERT INTO `jrkj_member_city` VALUES ('194', '169', '33k7jbuosflfa6ep2j5g89vs13qisl1r', '95', '1444198955', '1');
INSERT INTO `jrkj_member_city` VALUES ('195', '169', '33k7jbuosflfa6ep2j5g89vs13qisl1r', '65', '1444533055', '2');
INSERT INTO `jrkj_member_city` VALUES ('196', '152', '6u3kb5jr7056147sk5lj9nksr8t2mgoo', '39', '1446602302', '4');
INSERT INTO `jrkj_member_city` VALUES ('197', '0', 'grhkieapovaper7o10dns0js250kf8h8', '17', '1447322115', '9');
INSERT INTO `jrkj_member_city` VALUES ('198', '0', 'sj2hhv1qbusj21bktfcmelvdjhtvfplt', '17', '1444202593', '1');
INSERT INTO `jrkj_member_city` VALUES ('199', '0', 'mk4unrsdlerv8d24m4m5512b4rst9j49', '17', '1444207859', '1');
INSERT INTO `jrkj_member_city` VALUES ('200', '0', '4satc7t8n1ase1ca64q58p7gps95i1eu', '16', '1444214515', '1');
INSERT INTO `jrkj_member_city` VALUES ('201', '0', 'grhkieapovaper7o10dns0js250kf8h8', '16', '1444221613', '2');
INSERT INTO `jrkj_member_city` VALUES ('202', '0', 'grhkieapovaper7o10dns0js250kf8h8', '65', '1444220736', '1');
INSERT INTO `jrkj_member_city` VALUES ('203', '0', 'i3cfbiia1nsplnbt4r59g4nkp517ug4l', '17', '1444221527', '1');
INSERT INTO `jrkj_member_city` VALUES ('204', '188', 'ij06hccmk6mal2paq36esnj8a177j1u3', '18', '1444492840', '4');
INSERT INTO `jrkj_member_city` VALUES ('205', '0', 'adqtrm3utl32fjsbp4n81es5l0j9i8ic', '18', '1444223094', '1');
INSERT INTO `jrkj_member_city` VALUES ('206', '47', 'hgri8ai71p2doipjsasibvp3q0938066', '16', '1444225365', '2');
INSERT INTO `jrkj_member_city` VALUES ('207', '0', 'on5c97nkqgmsb3vctvo1hb47o58gihaa', '16', '1444225615', '1');
INSERT INTO `jrkj_member_city` VALUES ('208', '0', 'on5c97nkqgmsb3vctvo1hb47o58gihaa', '24', '1444225974', '1');
INSERT INTO `jrkj_member_city` VALUES ('209', '0', 'bvlblulq53phi6ir9voe7lkn1rf7cdm1', '24', '1444226034', '1');
INSERT INTO `jrkj_member_city` VALUES ('210', '81', '67k6f5ngc746ps2pgp91obpliqsqpaor', '17', '1444235000', '1');
INSERT INTO `jrkj_member_city` VALUES ('211', '61', 'c1i356o31f8efq6nu58g2gj4oimh45vq', '16', '1446615774', '5');
INSERT INTO `jrkj_member_city` VALUES ('212', '55', '8n49k2c2fbh18a491jn385890t6imjik', '16', '1446602463', '3');
INSERT INTO `jrkj_member_city` VALUES ('213', '0', '9mdq92utjoabgpkg16fd1d4lcqr8s7fm', '16', '1444270243', '1');
INSERT INTO `jrkj_member_city` VALUES ('214', '161', '2dindac3ikh08hvnj84i356p1vsmeb4k', '89', '1444275256', '1');
INSERT INTO `jrkj_member_city` VALUES ('215', '161', '2dindac3ikh08hvnj84i356p1vsmeb4k', '90', '1444275274', '1');
INSERT INTO `jrkj_member_city` VALUES ('216', '103', 'on3rno038tobiqp0elqcdv541qdn10v9', '16', '1444285419', '1');
INSERT INTO `jrkj_member_city` VALUES ('217', '0', '43mtdvsh31qs53ao07mog825h8392edf', '17', '1444286605', '1');
INSERT INTO `jrkj_member_city` VALUES ('218', '0', 'ka1goqur6rodvhifbgnhdacbgbccq4a7', '17', '1444287095', '1');
INSERT INTO `jrkj_member_city` VALUES ('219', '0', 'otd53k6arttpmvkk0qlvacpjg26504or', '17', '1446788870', '9');
INSERT INTO `jrkj_member_city` VALUES ('220', '12', '8dseasfbeo1jm96fig4e1ufkdp9jd1nq', '17', '1448078573', '2');
INSERT INTO `jrkj_member_city` VALUES ('221', '0', 'oeoo344nobb728n1urq55n293jfle07j', '17', '1444294525', '1');
INSERT INTO `jrkj_member_city` VALUES ('222', '171', '5lq4cth7kr6q9sdntssao0ehjqj11br2', '39', '1444307924', '1');
INSERT INTO `jrkj_member_city` VALUES ('223', '129', 'nukfog27rtk6cmh4fnrd939v5trcbhc2', '24', '1444344998', '1');
INSERT INTO `jrkj_member_city` VALUES ('224', '129', 'nukfog27rtk6cmh4fnrd939v5trcbhc2', '30', '1444345009', '1');
INSERT INTO `jrkj_member_city` VALUES ('225', '133', 'r8rcl13c8cm9tibiiq5v81f8s3nnaa1t', '73', '1444360301', '1');
INSERT INTO `jrkj_member_city` VALUES ('226', '0', 'lctqeuhn22snbft0qbrp05pre5jp2c2n', '17', '1444360409', '1');
INSERT INTO `jrkj_member_city` VALUES ('227', '0', 'tfuijtsl0ququonde22urocc6d12vgmv', '17', '1444362636', '1');
INSERT INTO `jrkj_member_city` VALUES ('228', '0', 'tfuijtsl0ququonde22urocc6d12vgmv', '16', '1444362670', '1');
INSERT INTO `jrkj_member_city` VALUES ('229', '219', 'i9oh2vv0bcjq9t85b2htf59de41gs5ld', '16', '1444635644', '3');
INSERT INTO `jrkj_member_city` VALUES ('230', '3', 'fn0ikt437addj5ub6kpbg49ql5gb063d', '16', '1449621763', '10');
INSERT INTO `jrkj_member_city` VALUES ('231', '219', 'm3hc5vddemendqbdtrhu9leokkp64u06', '89', '1444532954', '2');
INSERT INTO `jrkj_member_city` VALUES ('232', '219', 'm3hc5vddemendqbdtrhu9leokkp64u06', '65', '1444532939', '2');
INSERT INTO `jrkj_member_city` VALUES ('233', '219', 'i9oh2vv0bcjq9t85b2htf59de41gs5ld', '95', '1444635569', '4');
INSERT INTO `jrkj_member_city` VALUES ('234', '219', 'm3hc5vddemendqbdtrhu9leokkp64u06', '73', '1444532857', '2');
INSERT INTO `jrkj_member_city` VALUES ('235', '219', 'i9oh2vv0bcjq9t85b2htf59de41gs5ld', '17', '1444635667', '4');
INSERT INTO `jrkj_member_city` VALUES ('236', '3', 'fn0ikt437addj5ub6kpbg49ql5gb063d', '17', '1449621623', '2');
INSERT INTO `jrkj_member_city` VALUES ('237', '206', 't34gd0r3b3i2pl614dmaa81j1n1fopck', '16', '1445001414', '2');
INSERT INTO `jrkj_member_city` VALUES ('238', '0', 'i949640n94l9g8gk9pvun55ofpe3jjom', '17', '1444399103', '1');
INSERT INTO `jrkj_member_city` VALUES ('239', '117', '4arsccpb8mt661tps34871fsmgnuc8nh', '17', '1450007778', '18');
INSERT INTO `jrkj_member_city` VALUES ('240', '0', '11st95b03jrev9s6ghf50u3kqbtp17i3', '26', '1444449746', '1');
INSERT INTO `jrkj_member_city` VALUES ('241', '61', 'c1i356o31f8efq6nu58g2gj4oimh45vq', '17', '1446615615', '3');
INSERT INTO `jrkj_member_city` VALUES ('242', '61', 'c1i356o31f8efq6nu58g2gj4oimh45vq', '65', '1444451188', '1');
INSERT INTO `jrkj_member_city` VALUES ('243', '61', 'c1i356o31f8efq6nu58g2gj4oimh45vq', '18', '1446615533', '3');
INSERT INTO `jrkj_member_city` VALUES ('244', '0', 'e66tkog8d1j8ch1endqvnlncbta4cq91', '16', '1444455850', '2');
INSERT INTO `jrkj_member_city` VALUES ('245', '18', 't2fu5ds3p5tiak83s08roieeinqe6mt2', '65', '1444455822', '1');
INSERT INTO `jrkj_member_city` VALUES ('246', '0', '9p6ui7reoc16l74o43act1bmqm68af0o', '17', '1444458605', '1');
INSERT INTO `jrkj_member_city` VALUES ('247', '121', 'e66tkog8d1j8ch1endqvnlncbta4cq91', '16', '1448153618', '2');
INSERT INTO `jrkj_member_city` VALUES ('248', '0', 'vans2hf2ecv1allfs5j11lnqde6332de', '16', '1444467457', '2');
INSERT INTO `jrkj_member_city` VALUES ('249', '83', 'is7b96ujh7545ap3k0dfk495klqb7mrm', '16', '1449973962', '2');
INSERT INTO `jrkj_member_city` VALUES ('250', '0', 'eif90lcg5lbbatspua9belk4ulilphho', '17', '1444489262', '1');
INSERT INTO `jrkj_member_city` VALUES ('251', '54', '7ftlt4rdb0u3c2mmti3d8ecerdll6lrp', '89', '1444489318', '1');
INSERT INTO `jrkj_member_city` VALUES ('252', '54', '7ftlt4rdb0u3c2mmti3d8ecerdll6lrp', '17', '1444489332', '1');
INSERT INTO `jrkj_member_city` VALUES ('253', '147', 'l6k3gkcs7arjb36pu2bjfghtje778tur', '17', '1449638736', '8');
INSERT INTO `jrkj_member_city` VALUES ('254', '34', '9k40an4c9a9jr63gvbop7j6h9ri4kc58', '89', '1444524926', '1');
INSERT INTO `jrkj_member_city` VALUES ('255', '34', '9k40an4c9a9jr63gvbop7j6h9ri4kc58', '95', '1444524957', '1');
INSERT INTO `jrkj_member_city` VALUES ('256', '34', '9k40an4c9a9jr63gvbop7j6h9ri4kc58', '17', '1444524969', '1');
INSERT INTO `jrkj_member_city` VALUES ('257', '0', 'i2c12vijr3b4frlf6278uf39hv5edks4', '17', '1444529036', '1');
INSERT INTO `jrkj_member_city` VALUES ('258', '34', '9k40an4c9a9jr63gvbop7j6h9ri4kc58', '18', '1444529119', '1');
INSERT INTO `jrkj_member_city` VALUES ('259', '34', '9k40an4c9a9jr63gvbop7j6h9ri4kc58', '16', '1444529169', '1');
INSERT INTO `jrkj_member_city` VALUES ('260', '0', '4sd642amgphbd0arh9uoqe35rpp3phtg', '17', '1444529247', '1');
INSERT INTO `jrkj_member_city` VALUES ('261', '219', 'uins39sronbgts7r9iqjreq4r6kskoog', '18', '1445419978', '2');
INSERT INTO `jrkj_member_city` VALUES ('262', '169', '33k7jbuosflfa6ep2j5g89vs13qisl1r', '73', '1444533066', '1');
INSERT INTO `jrkj_member_city` VALUES ('263', '0', 'smcveatk2g1ln3e8edur9sd2lagf6ikh', '17', '1444539161', '2');
INSERT INTO `jrkj_member_city` VALUES ('264', '0', '68h48k0otq28nk1fduoa6lshka4jc5vf', '17', '1444539142', '1');
INSERT INTO `jrkj_member_city` VALUES ('265', '0', '68h48k0otq28nk1fduoa6lshka4jc5vf', '16', '1444539160', '1');
INSERT INTO `jrkj_member_city` VALUES ('266', '0', 'l3fv4ftg6b5kq5reft5kmuvemuselt43', '17', '1444551596', '1');
INSERT INTO `jrkj_member_city` VALUES ('267', '7', 'kb1dukp35sqrumj5mqloebrtrdbd53bv', '16', '1444556135', '1');
INSERT INTO `jrkj_member_city` VALUES ('268', '0', 'eov1qmiultts5o35skde7l4gjkehjlln', '16', '1444557367', '1');
INSERT INTO `jrkj_member_city` VALUES ('269', '54', '7ftlt4rdb0u3c2mmti3d8ecerdll6lrp', '16', '1444571459', '1');
INSERT INTO `jrkj_member_city` VALUES ('270', '0', 'o3lt59782i30iinlmem2akfvb7an06sh', '16', '1445656991', '3');
INSERT INTO `jrkj_member_city` VALUES ('271', '0', '10gcacbempcmnb8a7ekdpl7rn6f0j21d', '16', '1444616609', '1');
INSERT INTO `jrkj_member_city` VALUES ('272', '0', '10gcacbempcmnb8a7ekdpl7rn6f0j21d', '17', '1444616638', '1');
INSERT INTO `jrkj_member_city` VALUES ('273', '89', 'e190ufuf6ntnlpeejlad5gr5vk7c0n3a', '16', '1445302711', '4');
INSERT INTO `jrkj_member_city` VALUES ('274', '89', 'e190ufuf6ntnlpeejlad5gr5vk7c0n3a', '18', '1444629063', '1');
INSERT INTO `jrkj_member_city` VALUES ('275', '196', '292ccvijc2bhc4us2eehukkeumi8r4uo', '16', '1444639701', '1');
INSERT INTO `jrkj_member_city` VALUES ('276', '75', '24hho8pa4vcd69lb65ckqb2cng7dab45', '17', '1449134849', '4');
INSERT INTO `jrkj_member_city` VALUES ('277', '75', '24hho8pa4vcd69lb65ckqb2cng7dab45', '16', '1449134973', '10');
INSERT INTO `jrkj_member_city` VALUES ('278', '10', 'u7vdjroas83bubene40b8qcesbldgrv4', '18', '1445103003', '2');
INSERT INTO `jrkj_member_city` VALUES ('279', '10', 'u7vdjroas83bubene40b8qcesbldgrv4', '49', '1445103058', '2');
INSERT INTO `jrkj_member_city` VALUES ('280', '0', 'pbak83o283jpj0ac8bnna3m5uvq0qpb9', '17', '1444723548', '1');
INSERT INTO `jrkj_member_city` VALUES ('281', '92', '5r2jjds2de9ccuattcu6aoh282ijt0o3', '17', '1444724537', '2');
INSERT INTO `jrkj_member_city` VALUES ('282', '92', '4hik24in7l8vnh1dm6a8i35qls6o9k6j', '18', '1445165235', '2');
INSERT INTO `jrkj_member_city` VALUES ('283', '92', '4hik24in7l8vnh1dm6a8i35qls6o9k6j', '16', '1445171118', '2');
INSERT INTO `jrkj_member_city` VALUES ('284', '52', '27d1i0874a49s8kmcop2l4n102rslr45', '65', '1444725589', '1');
INSERT INTO `jrkj_member_city` VALUES ('285', '0', '3e3ucaudt4j3iftjdddbhdmcqg9datcp', '17', '1444728712', '1');
INSERT INTO `jrkj_member_city` VALUES ('286', '0', 'nj71793vfb6jplkmcabkug0sr5j57u68', '17', '1444728771', '1');
INSERT INTO `jrkj_member_city` VALUES ('287', '89', 'e190ufuf6ntnlpeejlad5gr5vk7c0n3a', '66', '1444738339', '1');
INSERT INTO `jrkj_member_city` VALUES ('288', '89', 'e190ufuf6ntnlpeejlad5gr5vk7c0n3a', '32', '1444738356', '1');
INSERT INTO `jrkj_member_city` VALUES ('289', '168', '6u3kb5jr7056147sk5lj9nksr8t2mgoo', '18', '1450324649', '37');
INSERT INTO `jrkj_member_city` VALUES ('290', '168', 'giqgr0b8ea8je3lajnbc75poc00kq1rp', '17', '1448528757', '2');
INSERT INTO `jrkj_member_city` VALUES ('291', '168', 'bcahu8bif96k1mb73k78nmohd3teuqnd', '89', '1444751171', '1');
INSERT INTO `jrkj_member_city` VALUES ('292', '168', 'bcahu8bif96k1mb73k78nmohd3teuqnd', '65', '1444751183', '1');
INSERT INTO `jrkj_member_city` VALUES ('293', '168', 'giqgr0b8ea8je3lajnbc75poc00kq1rp', '49', '1448529126', '2');
INSERT INTO `jrkj_member_city` VALUES ('294', '143', 'mdiq9f2ojtujdetdk5dhmadg51ikmkbr', '17', '1444784900', '1');
INSERT INTO `jrkj_member_city` VALUES ('295', '143', 'mdiq9f2ojtujdetdk5dhmadg51ikmkbr', '65', '1444785018', '1');
INSERT INTO `jrkj_member_city` VALUES ('296', '143', 'mdiq9f2ojtujdetdk5dhmadg51ikmkbr', '18', '1444785051', '1');
INSERT INTO `jrkj_member_city` VALUES ('297', '268', '3e3ucaudt4j3iftjdddbhdmcqg9datcp', '16', '1444787102', '1');
INSERT INTO `jrkj_member_city` VALUES ('298', '268', '3e3ucaudt4j3iftjdddbhdmcqg9datcp', '17', '1444823976', '3');
INSERT INTO `jrkj_member_city` VALUES ('299', '0', '80f3ii7pm463lb59c9ki83clr3mbhp94', '17', '1444825882', '1');
INSERT INTO `jrkj_member_city` VALUES ('300', '75', '24hho8pa4vcd69lb65ckqb2cng7dab45', '89', '1449134960', '3');
INSERT INTO `jrkj_member_city` VALUES ('301', '0', 'c4ulegrjiui0h364e37qokvm6s73d6qv', '31', '1444878083', '1');
INSERT INTO `jrkj_member_city` VALUES ('302', '0', 'c4ulegrjiui0h364e37qokvm6s73d6qv', '16', '1444878103', '1');
INSERT INTO `jrkj_member_city` VALUES ('303', '0', '11st95b03jrev9s6ghf50u3kqbtp17i3', '73', '1444888976', '1');
INSERT INTO `jrkj_member_city` VALUES ('304', '0', '11st95b03jrev9s6ghf50u3kqbtp17i3', '89', '1444888988', '3');
INSERT INTO `jrkj_member_city` VALUES ('305', '0', '11st95b03jrev9s6ghf50u3kqbtp17i3', '95', '1444888998', '2');
INSERT INTO `jrkj_member_city` VALUES ('306', '169', '33k7jbuosflfa6ep2j5g89vs13qisl1r', '32', '1444971815', '1');
INSERT INTO `jrkj_member_city` VALUES ('307', '0', '195qdng4g3442dmhhek2v5a3nc6uvlqa', '17', '1444975129', '1');
INSERT INTO `jrkj_member_city` VALUES ('308', '97', '1bcppaj9hghkgvit91eojgijer1pe645', '17', '1444990188', '1');
INSERT INTO `jrkj_member_city` VALUES ('309', '97', '1bcppaj9hghkgvit91eojgijer1pe645', '65', '1444990217', '2');
INSERT INTO `jrkj_member_city` VALUES ('310', '97', '1bcppaj9hghkgvit91eojgijer1pe645', '16', '1445088676', '2');
INSERT INTO `jrkj_member_city` VALUES ('311', '115', 'jtbua54g6q9119i41sg0buc2nhjq7tq1', '16', '1444994174', '1');
INSERT INTO `jrkj_member_city` VALUES ('312', '0', 'hl0ite6h7puuj99j0e56t26lsivfggv1', '17', '1444999493', '1');
INSERT INTO `jrkj_member_city` VALUES ('313', '55', '8n49k2c2fbh18a491jn385890t6imjik', '66', '1445010069', '1');
INSERT INTO `jrkj_member_city` VALUES ('314', '55', '8n49k2c2fbh18a491jn385890t6imjik', '24', '1445010091', '1');
INSERT INTO `jrkj_member_city` VALUES ('315', '55', '8n49k2c2fbh18a491jn385890t6imjik', '29', '1445738473', '2');
INSERT INTO `jrkj_member_city` VALUES ('316', '55', '8n49k2c2fbh18a491jn385890t6imjik', '101', '1445010132', '1');
INSERT INTO `jrkj_member_city` VALUES ('317', '0', 'g0eo4a54nbb7gdrhrd3t12tq4fsvsod9', '17', '1445050147', '1');
INSERT INTO `jrkj_member_city` VALUES ('318', '235', 'sqc0vcj1pt86elmkcm9a6meut14npnfk', '17', '1445051761', '1');
INSERT INTO `jrkj_member_city` VALUES ('319', '208', 'iqpv7gdgj0qeb7m771pibcii17jcqofq', '16', '1445054312', '1');
INSERT INTO `jrkj_member_city` VALUES ('320', '0', 't933knh2ghvs6na2ppabps571639jkoh', '18', '1445068168', '1');
INSERT INTO `jrkj_member_city` VALUES ('321', '97', '1bcppaj9hghkgvit91eojgijer1pe645', '95', '1445074387', '1');
INSERT INTO `jrkj_member_city` VALUES ('322', '97', '1bcppaj9hghkgvit91eojgijer1pe645', '89', '1445074468', '1');
INSERT INTO `jrkj_member_city` VALUES ('323', '97', '1bcppaj9hghkgvit91eojgijer1pe645', '49', '1445074493', '1');
INSERT INTO `jrkj_member_city` VALUES ('324', '235', 'sqc0vcj1pt86elmkcm9a6meut14npnfk', '16', '1445078318', '1');
INSERT INTO `jrkj_member_city` VALUES ('325', '0', 'criq1t0he15vhncvqq7oo9nb8mrft351', '88', '1445091076', '1');
INSERT INTO `jrkj_member_city` VALUES ('326', '69', '339t8ads810msq2kqehba7j8icamt1a4', '17', '1445133944', '1');
INSERT INTO `jrkj_member_city` VALUES ('327', '69', '339t8ads810msq2kqehba7j8icamt1a4', '16', '1445133975', '1');
INSERT INTO `jrkj_member_city` VALUES ('328', '0', 'u1r4395f745gv0uljeo4ngt7i28h2fl2', '17', '1445141265', '1');
INSERT INTO `jrkj_member_city` VALUES ('329', '0', 'm2cfbd5r4o6i9h89pndpdk7mae6uq8vp', '17', '1445142329', '1');
INSERT INTO `jrkj_member_city` VALUES ('330', '299', '8mceom59mqangnbl0mge8vtc2let5vd6', '17', '1446793990', '12');
INSERT INTO `jrkj_member_city` VALUES ('331', '144', 'on5c97nkqgmsb3vctvo1hb47o58gihaa', '16', '1445228238', '5');
INSERT INTO `jrkj_member_city` VALUES ('332', '144', 'on5c97nkqgmsb3vctvo1hb47o58gihaa', '24', '1445169095', '2');
INSERT INTO `jrkj_member_city` VALUES ('333', '0', '850048c4r06vngtu0m4gl4encdq7pln2', '17', '1445177351', '2');
INSERT INTO `jrkj_member_city` VALUES ('334', '0', 'quanchvekfp0mn6hb8ls8r2afvsaj66o', '36', '1445183405', '1');
INSERT INTO `jrkj_member_city` VALUES ('335', '0', 'quanchvekfp0mn6hb8ls8r2afvsaj66o', '18', '1445183426', '1');
INSERT INTO `jrkj_member_city` VALUES ('336', '305', 'knm0u7f3fd1tisbtqhfe0575p1tdl7v3', '16', '1445208634', '1');
INSERT INTO `jrkj_member_city` VALUES ('337', '0', '2mh9qhmbduvcph3ta1sssov1tg39patq', '17', '1445221828', '1');
INSERT INTO `jrkj_member_city` VALUES ('338', '132', '8v60iiihvvrgrfbi7l83n334h7nevflm', '65', '1445226568', '1');
INSERT INTO `jrkj_member_city` VALUES ('339', '132', '8v60iiihvvrgrfbi7l83n334h7nevflm', '16', '1448281403', '3');
INSERT INTO `jrkj_member_city` VALUES ('340', '132', '8v60iiihvvrgrfbi7l83n334h7nevflm', '17', '1448281358', '3');
INSERT INTO `jrkj_member_city` VALUES ('341', '77', '5j4c3faia9h2ku13uhlrvhj0oc4mjd95', '17', '1445239169', '1');
INSERT INTO `jrkj_member_city` VALUES ('342', '77', '5j4c3faia9h2ku13uhlrvhj0oc4mjd95', '73', '1445239346', '1');
INSERT INTO `jrkj_member_city` VALUES ('343', '77', '5j4c3faia9h2ku13uhlrvhj0oc4mjd95', '18', '1448970206', '2');
INSERT INTO `jrkj_member_city` VALUES ('344', '77', '5j4c3faia9h2ku13uhlrvhj0oc4mjd95', '16', '1448970231', '2');
INSERT INTO `jrkj_member_city` VALUES ('345', '0', 'nh99r5q58cjjuj9bg08l8e1sns8ppt6p', '17', '1445247604', '1');
INSERT INTO `jrkj_member_city` VALUES ('346', '0', 't8n9bt3mq2ljtfuacvgvh3n5v30nu219', '17', '1445253581', '1');
INSERT INTO `jrkj_member_city` VALUES ('347', '0', 'h8cge5tnlf309ecs0k5o98vf3fk3l1ch', '17', '1445308285', '2');
INSERT INTO `jrkj_member_city` VALUES ('348', '343', '6mt3l5hlitf8otfjml09vhhu316hd3d2', '17', '1450330015', '6');
INSERT INTO `jrkj_member_city` VALUES ('349', '343', 'btr2l2vmrg6skd35a1a4r3e969c7nfca', '16', '1445312055', '2');
INSERT INTO `jrkj_member_city` VALUES ('350', '344', 'plbvq359cku4loskvub5v34rc2qtprpj', '16', '1445315052', '1');
INSERT INTO `jrkj_member_city` VALUES ('351', '0', 'c4s22vsddtc3d1elgpp01if0aqnk42en', '17', '1445316956', '1');
INSERT INTO `jrkj_member_city` VALUES ('352', '0', '8lkccan61fhl360men4f8dftqd60204o', '73', '1445324068', '1');
INSERT INTO `jrkj_member_city` VALUES ('353', '0', '8lkccan61fhl360men4f8dftqd60204o', '42', '1445324086', '1');
INSERT INTO `jrkj_member_city` VALUES ('354', '0', '8lkccan61fhl360men4f8dftqd60204o', '16', '1445324128', '1');
INSERT INTO `jrkj_member_city` VALUES ('355', '0', 'lbbbifrn6r9kohm4kfjf6ukof8aaj38r', '17', '1445336471', '1');
INSERT INTO `jrkj_member_city` VALUES ('356', '281', 'pa2q1t7abk8doj0s348b8mc1jpo78rd8', '17', '1445336471', '1');
INSERT INTO `jrkj_member_city` VALUES ('357', '336', 'ubrb0ot5ivg5kp5tk9uljkb4gm97fd45', '18', '1450153712', '25');
INSERT INTO `jrkj_member_city` VALUES ('358', '0', 'cham0r231cgikbilldtnas5nr8i6q3nf', '17', '1445341506', '1');
INSERT INTO `jrkj_member_city` VALUES ('359', '0', 'svf6tp9vno2o9jklivcd4oq8k533rt5b', '17', '1445401416', '3');
INSERT INTO `jrkj_member_city` VALUES ('360', '111', 'copiq8ske5j6oubqj4oiktq9gclclkp1', '29', '1445343231', '1');
INSERT INTO `jrkj_member_city` VALUES ('361', '111', 'copiq8ske5j6oubqj4oiktq9gclclkp1', '89', '1445343248', '1');
INSERT INTO `jrkj_member_city` VALUES ('362', '111', 'copiq8ske5j6oubqj4oiktq9gclclkp1', '17', '1445343260', '1');
INSERT INTO `jrkj_member_city` VALUES ('363', '173', '6g849s7plfshj6958kviates8b9t0tog', '16', '1445345438', '1');
INSERT INTO `jrkj_member_city` VALUES ('364', '229', '9nnutr99ocoa3fc4qlna6f4v9dg210u2', '16', '1445346221', '1');
INSERT INTO `jrkj_member_city` VALUES ('365', '91', '74b8teo5k8kvhmfc2bkpir2jmurtucn8', '65', '1446440777', '2');
INSERT INTO `jrkj_member_city` VALUES ('366', '91', '74b8teo5k8kvhmfc2bkpir2jmurtucn8', '49', '1448959714', '2');
INSERT INTO `jrkj_member_city` VALUES ('367', '91', '74b8teo5k8kvhmfc2bkpir2jmurtucn8', '66', '1445357206', '1');
INSERT INTO `jrkj_member_city` VALUES ('368', '91', '74b8teo5k8kvhmfc2bkpir2jmurtucn8', '29', '1446440839', '2');
INSERT INTO `jrkj_member_city` VALUES ('369', '94', 'khkrs00mcomfm89gtm4f612dt9vm26lo', '17', '1450156855', '8');
INSERT INTO `jrkj_member_city` VALUES ('370', '94', 'khkrs00mcomfm89gtm4f612dt9vm26lo', '18', '1450156986', '9');
INSERT INTO `jrkj_member_city` VALUES ('371', '94', '8dn3rr0aq0vj425736s0cpk5i5sn8dge', '51', '1445359231', '1');
INSERT INTO `jrkj_member_city` VALUES ('372', '94', '8dn3rr0aq0vj425736s0cpk5i5sn8dge', '49', '1445359271', '1');
INSERT INTO `jrkj_member_city` VALUES ('373', '236', 'urtnnj0396kof1sknhpl19p8u5k89qam', '17', '1448108632', '28');
INSERT INTO `jrkj_member_city` VALUES ('374', '266', '43mtdvsh31qs53ao07mog825h8392edf', '17', '1447551987', '2');
INSERT INTO `jrkj_member_city` VALUES ('375', '0', 'p13un2lg8r3c19jeb9pm69edoecrlajd', '18', '1445401187', '1');
INSERT INTO `jrkj_member_city` VALUES ('376', '299', '8mceom59mqangnbl0mge8vtc2let5vd6', '29', '1445401973', '1');
INSERT INTO `jrkj_member_city` VALUES ('377', '0', 'meo4954hoqqbae86cph4gvhf6i7nkfir', '16', '1445405312', '1');
INSERT INTO `jrkj_member_city` VALUES ('378', '18', '5ekoufaflrmrdb91rrgfkrmbjr7dmbte', '18', '1447679882', '4');
INSERT INTO `jrkj_member_city` VALUES ('379', '4', 'lrslr78hu5uea6988d1t2sntq0rg9r0p', '39', '1445411915', '1');
INSERT INTO `jrkj_member_city` VALUES ('380', '202', '6fl0jer5sdeif07p4sutevikenpinlph', '18', '1447831915', '7');
INSERT INTO `jrkj_member_city` VALUES ('381', '4', 'ka1orho581kc65i80im3kbd838bt3eof', '18', '1446187054', '3');
INSERT INTO `jrkj_member_city` VALUES ('382', '176', 'tbl2ed3qk02rfhgfip3f1uqk92mql2g2', '17', '1449033061', '3');
INSERT INTO `jrkj_member_city` VALUES ('383', '0', 'euivq8lvvg02t2mfijkpajfmm2qr4j3f', '17', '1445436618', '1');
INSERT INTO `jrkj_member_city` VALUES ('384', '0', 'is8bren3o1a4dbde3u6mhof6smenofke', '17', '1445469935', '1');
INSERT INTO `jrkj_member_city` VALUES ('385', '123', 'nm61s96f9bq1e4qqihj66vmin00v070p', '17', '1446276480', '2');
INSERT INTO `jrkj_member_city` VALUES ('386', '339', 'iqs1c5eqg7aalau9tkvc87a94a1vthjk', '17', '1448883075', '6');
INSERT INTO `jrkj_member_city` VALUES ('387', '0', '1ngvjvke1mhdqf6nvfc23l18o2gru3va', '18', '1445503585', '1');
INSERT INTO `jrkj_member_city` VALUES ('388', '355', '9dnc1vrcphm8k83p46c4dhh0rbbu314o', '18', '1447429281', '7');
INSERT INTO `jrkj_member_city` VALUES ('389', '352', '4ambjdjpl2c40534msfkbru7i8hfre4b', '18', '1449156983', '3');
INSERT INTO `jrkj_member_city` VALUES ('390', '0', 'kkm4mfcbn8r7onea6qf9l614latpq7lp', '17', '1445507836', '1');
INSERT INTO `jrkj_member_city` VALUES ('391', '391', '5hko77mkjiaeor2b7la09piopv34dage', '17', '1447116855', '2');
INSERT INTO `jrkj_member_city` VALUES ('392', '0', 'peafin6ce0rlihr0b5qdhametlrh3jsi', '17', '1445517545', '1');
INSERT INTO `jrkj_member_city` VALUES ('393', '0', 'mk43pn8jv9g54h7uv7mqss52ojb9hlea', '17', '1445517763', '1');
INSERT INTO `jrkj_member_city` VALUES ('394', '0', 'heifjks3ptbtprmrl7qf2m4igmogp64l', '16', '1446622412', '2');
INSERT INTO `jrkj_member_city` VALUES ('395', '0', 'heifjks3ptbtprmrl7qf2m4igmogp64l', '18', '1447221661', '4');
INSERT INTO `jrkj_member_city` VALUES ('396', '400', '3t0ddgnh8j6fsispq1ne14oo7las53e1', '17', '1448451187', '9');
INSERT INTO `jrkj_member_city` VALUES ('397', '400', '3t0ddgnh8j6fsispq1ne14oo7las53e1', '85', '1445569330', '1');
INSERT INTO `jrkj_member_city` VALUES ('398', '400', '3t0ddgnh8j6fsispq1ne14oo7las53e1', '29', '1445569353', '1');
INSERT INTO `jrkj_member_city` VALUES ('399', '24', 'kq7f0h8mag282j9gu7tcqm3g07ta5j8g', '95', '1447719620', '2');
INSERT INTO `jrkj_member_city` VALUES ('400', '24', 'kq7f0h8mag282j9gu7tcqm3g07ta5j8g', '66', '1447719568', '2');
INSERT INTO `jrkj_member_city` VALUES ('401', '24', 'kq7f0h8mag282j9gu7tcqm3g07ta5j8g', '49', '1447719558', '2');
INSERT INTO `jrkj_member_city` VALUES ('402', '0', '32qe5ag3aqukbkmsiorj1vtjlm6otmhq', '17', '1445571463', '1');
INSERT INTO `jrkj_member_city` VALUES ('403', '0', 'f5e1vbm8ihpqm3i8imdlk18uso72l2h4', '17', '1445571542', '1');
INSERT INTO `jrkj_member_city` VALUES ('404', '0', 'mtv19ctgvka1ki4ga50ge5e7hkq1vhm8', '17', '1445572167', '1');
INSERT INTO `jrkj_member_city` VALUES ('405', '415', 'dkfkknmur238in8pmasun52f6bge9ts7', '95', '1448687762', '2');
INSERT INTO `jrkj_member_city` VALUES ('406', '0', 'dntcfqadle825eb3safm92nrc6sdlm02', '17', '1445617775', '1');
INSERT INTO `jrkj_member_city` VALUES ('407', '203', 'cnr6vcugmph94sbepavcsaffp4r62nq6', '17', '1447118767', '2');
INSERT INTO `jrkj_member_city` VALUES ('408', '0', '95kkncd3rh0jdq30c3jfvvfo8ee3l58t', '17', '1445657998', '1');
INSERT INTO `jrkj_member_city` VALUES ('409', '152', '6u3kb5jr7056147sk5lj9nksr8t2mgoo', '49', '1450066690', '3');
INSERT INTO `jrkj_member_city` VALUES ('410', '412', '11st95b03jrev9s6ghf50u3kqbtp17i3', '17', '1446107946', '4');
INSERT INTO `jrkj_member_city` VALUES ('411', '0', 'bruamockr0vmo2v13fnidjfvpk860qm5', '17', '1445666286', '1');
INSERT INTO `jrkj_member_city` VALUES ('412', '0', '1sev3ko9ro564spg2q2t7sdg8n92c7dt', '17', '1445666798', '1');
INSERT INTO `jrkj_member_city` VALUES ('413', '0', '9cn94k4m5mgdg9mmj0h2ime27sl758qm', '17', '1445668161', '1');
INSERT INTO `jrkj_member_city` VALUES ('414', '412', '11st95b03jrev9s6ghf50u3kqbtp17i3', '16', '1445680462', '1');
INSERT INTO `jrkj_member_city` VALUES ('415', '0', '26vte6ecfoj4rhl7rovddjj1q5ukk8bv', '17', '1445681226', '1');
INSERT INTO `jrkj_member_city` VALUES ('416', '0', 'sknm95a0j4b1tsn72sckhkbbif1bu281', '17', '1445681318', '1');
INSERT INTO `jrkj_member_city` VALUES ('417', '0', 'vv1pqs8im2cflgn2lbdahegl1729t1a6', '17', '1445681825', '1');
INSERT INTO `jrkj_member_city` VALUES ('418', '0', '2g92rasproku5b7elq7l7tiqcd91hd31', '17', '1445686134', '1');
INSERT INTO `jrkj_member_city` VALUES ('419', '0', 'i7ra0bnu165v9lvr82a1s2aaedl6toe8', '17', '1445686368', '1');
INSERT INTO `jrkj_member_city` VALUES ('420', '330', 'ag8kgqrlrb7afdadpjce7rp0k1rt185s', '17', '1448356690', '8');
INSERT INTO `jrkj_member_city` VALUES ('421', '330', '84equdmrrn7pevdrqqiclhcaklceaqmg', '16', '1445695866', '1');
INSERT INTO `jrkj_member_city` VALUES ('422', '330', 'kfdpv38l4irpalv3jckpbpjjq0gg548s', '18', '1446121399', '2');
INSERT INTO `jrkj_member_city` VALUES ('423', '0', '1urub2of8g5b76i26i4jvooue00dd72p', '17', '1445698701', '1');
INSERT INTO `jrkj_member_city` VALUES ('424', '0', 'gfcdc1ctikr1o6k0s0tmnkgqvaduh93u', '17', '1445698701', '1');
INSERT INTO `jrkj_member_city` VALUES ('425', '447', '5acjj4jgrkmd6htsm4k9nsnr56dd2jrt', '17', '1446369014', '3');
INSERT INTO `jrkj_member_city` VALUES ('426', '55', '8n49k2c2fbh18a491jn385890t6imjik', '65', '1446602449', '2');
INSERT INTO `jrkj_member_city` VALUES ('427', '55', '8n49k2c2fbh18a491jn385890t6imjik', '89', '1445738531', '1');
INSERT INTO `jrkj_member_city` VALUES ('428', '425', 'v6q20sddn8sm2m28g35fo0pro16ua4g8', '17', '1445955632', '3');
INSERT INTO `jrkj_member_city` VALUES ('429', '0', '4uidv11o5hh6s5tpvp988clp00uj8qkd', '17', '1445754043', '1');
INSERT INTO `jrkj_member_city` VALUES ('430', '0', '4uidv11o5hh6s5tpvp988clp00uj8qkd', '16', '1445754087', '1');
INSERT INTO `jrkj_member_city` VALUES ('431', '0', '0n3fd261l9tucpugrq281ovg9k8jsipu', '16', '1447837194', '2');
INSERT INTO `jrkj_member_city` VALUES ('432', '426', '9ool93h9n721aq8tnblpioqjv6a6tcqp', '17', '1446735246', '2');
INSERT INTO `jrkj_member_city` VALUES ('433', '425', 'v6q20sddn8sm2m28g35fo0pro16ua4g8', '65', '1445955581', '2');
INSERT INTO `jrkj_member_city` VALUES ('434', '132', '8v60iiihvvrgrfbi7l83n334h7nevflm', '95', '1445777154', '1');
INSERT INTO `jrkj_member_city` VALUES ('435', '467', 'ihc3ldpvivrg1pi3ms6bnhgu345nsco6', '17', '1447646519', '4');
INSERT INTO `jrkj_member_city` VALUES ('436', '0', 'ke6g07snp8f1l5qddebr0loqhj9alptv', '17', '1446261645', '4');
INSERT INTO `jrkj_member_city` VALUES ('437', '285', 'nvrdbkjoor0i2aug2gqn1ai74vhkmc89', '18', '1449849025', '4');
INSERT INTO `jrkj_member_city` VALUES ('438', '0', 's5lh9daf3lqihjobbut6pqt1kv8ussbl', '17', '1445824631', '1');
INSERT INTO `jrkj_member_city` VALUES ('439', '267', 'nj71793vfb6jplkmcabkug0sr5j57u68', '17', '1447949410', '5');
INSERT INTO `jrkj_member_city` VALUES ('440', '0', 'e1hkh1rs37o6d7ttvi9g0pm50h04rvrs', '18', '1446376826', '3');
INSERT INTO `jrkj_member_city` VALUES ('441', '485', 'mko594s3n2uqm6sacs3hgn9kobr3sji6', '17', '1445916563', '2');
INSERT INTO `jrkj_member_city` VALUES ('442', '0', '0b2vttdvqkrqjg22i1844e43acplo641', '65', '1445851248', '1');
INSERT INTO `jrkj_member_city` VALUES ('443', '0', '0b2vttdvqkrqjg22i1844e43acplo641', '16', '1445851273', '1');
INSERT INTO `jrkj_member_city` VALUES ('444', '3', 'fn0ikt437addj5ub6kpbg49ql5gb063d', '18', '1449621479', '23');
INSERT INTO `jrkj_member_city` VALUES ('445', '0', '2o8r4kngdbtg2167gf3jtubi7oit5c32', '17', '1446538917', '4');
INSERT INTO `jrkj_member_city` VALUES ('446', '494', 'lqb5lir9rn3pgtsaf3hr9gg0pitda72b', '16', '1445866173', '3');
INSERT INTO `jrkj_member_city` VALUES ('447', '139', '0veiorpgn871v3rarn9pt70tijo7j916', '24', '1445866325', '1');
INSERT INTO `jrkj_member_city` VALUES ('448', '0', 'neesgs6t2buu4fs95p1qks9ulk85f832', '17', '1445918591', '1');
INSERT INTO `jrkj_member_city` VALUES ('449', '0', 'a4eao7qfvmoo2473ib757drjsedhqk1m', '18', '1445923313', '1');
INSERT INTO `jrkj_member_city` VALUES ('450', '0', 'a4eao7qfvmoo2473ib757drjsedhqk1m', '24', '1445923423', '1');
INSERT INTO `jrkj_member_city` VALUES ('451', '0', '88s13ip33amq7gm06jfnijpop2h11cd1', '18', '1445924011', '2');
INSERT INTO `jrkj_member_city` VALUES ('452', '0', '88s13ip33amq7gm06jfnijpop2h11cd1', '16', '1445923515', '1');
INSERT INTO `jrkj_member_city` VALUES ('453', '0', '88s13ip33amq7gm06jfnijpop2h11cd1', '17', '1445923526', '1');
INSERT INTO `jrkj_member_city` VALUES ('454', '0', 'a4eao7qfvmoo2473ib757drjsedhqk1m', '16', '1445923580', '1');
INSERT INTO `jrkj_member_city` VALUES ('455', '0', 'di39gtef412eth97l8396n5mbqk1mpmm', '18', '1445924604', '2');
INSERT INTO `jrkj_member_city` VALUES ('456', '0', 'di39gtef412eth97l8396n5mbqk1mpmm', '42', '1445924621', '1');
INSERT INTO `jrkj_member_city` VALUES ('457', '0', 'di39gtef412eth97l8396n5mbqk1mpmm', '16', '1445925154', '1');
INSERT INTO `jrkj_member_city` VALUES ('458', '0', 'aqsuhlp9s0o1arl01segapg35g4bgpar', '17', '1445931733', '1');
INSERT INTO `jrkj_member_city` VALUES ('459', '7', 'ngv5hkjark6cl19t37he96qihhi8htur', '17', '1445934802', '1');
INSERT INTO `jrkj_member_city` VALUES ('460', '0', 'h4icqp7h8hn0shkq95bf97vf8cf70rqg', '17', '1445935028', '2');
INSERT INTO `jrkj_member_city` VALUES ('461', '9', '7nqmr7cu988aam46n1dmi80ddqq10nei', '17', '1450240195', '2');
INSERT INTO `jrkj_member_city` VALUES ('462', '9', '7nqmr7cu988aam46n1dmi80ddqq10nei', '16', '1445937722', '1');
INSERT INTO `jrkj_member_city` VALUES ('463', '504', 'vaiij2kg63checn87vvlndvqsffulm4c', '16', '1445939470', '1');
INSERT INTO `jrkj_member_city` VALUES ('464', '504', 'dcdqg4lldf9idlli5cujh0teqk2267it', '17', '1446172484', '5');
INSERT INTO `jrkj_member_city` VALUES ('465', '0', '3v4hreovmuqot8i28aegokstknd35vsv', '17', '1445946388', '1');
INSERT INTO `jrkj_member_city` VALUES ('466', '425', 'v6q20sddn8sm2m28g35fo0pro16ua4g8', '73', '1445955604', '1');
INSERT INTO `jrkj_member_city` VALUES ('467', '498', 'u9v128vq34lj86q5k1iq8b13rnnkqrv0', '18', '1445959803', '1');
INSERT INTO `jrkj_member_city` VALUES ('468', '498', 'u9v128vq34lj86q5k1iq8b13rnnkqrv0', '16', '1445960006', '1');
INSERT INTO `jrkj_member_city` VALUES ('469', '498', 'u9v128vq34lj86q5k1iq8b13rnnkqrv0', '17', '1445961644', '1');
INSERT INTO `jrkj_member_city` VALUES ('470', '498', 'u9v128vq34lj86q5k1iq8b13rnnkqrv0', '65', '1445961764', '1');
INSERT INTO `jrkj_member_city` VALUES ('471', '498', 'u9v128vq34lj86q5k1iq8b13rnnkqrv0', '73', '1445961777', '1');
INSERT INTO `jrkj_member_city` VALUES ('472', '0', 'so2bvmq0qkamtd1nnpqpffb0d3296jal', '17', '1446008821', '1');
INSERT INTO `jrkj_member_city` VALUES ('473', '512', '23d1uupp35mfnvbmssc8jc8f53ehdg4a', '17', '1446886188', '6');
INSERT INTO `jrkj_member_city` VALUES ('474', '0', '57mcqk5dvotlm9gabsgm1rqaretj3jk4', '17', '1447243748', '12');
INSERT INTO `jrkj_member_city` VALUES ('475', '0', 'k774e1tu4dl2i8c312ui14h3bvl70pdc', '17', '1446045834', '1');
INSERT INTO `jrkj_member_city` VALUES ('476', '88', 'j9c0cmt0m7u0kj6t4lng8jo43r0flapm', '17', '1449905698', '8');
INSERT INTO `jrkj_member_city` VALUES ('477', '0', 'h3j4s7ti9u704vbk95q28cb3d7uu2r0v', '18', '1446047994', '1');
INSERT INTO `jrkj_member_city` VALUES ('478', '0', 'h3j4s7ti9u704vbk95q28cb3d7uu2r0v', '17', '1446048461', '2');
INSERT INTO `jrkj_member_city` VALUES ('479', '0', 'h3j4s7ti9u704vbk95q28cb3d7uu2r0v', '16', '1446048529', '2');
INSERT INTO `jrkj_member_city` VALUES ('480', '18', '04qp1ag3f1tdc96pkjctq0uoig4sbghc', '89', '1446055087', '1');
INSERT INTO `jrkj_member_city` VALUES ('481', '0', '3a3qj2308aqd72gg23gj8o2k0ia720bq', '18', '1446112255', '1');
INSERT INTO `jrkj_member_city` VALUES ('482', '0', 'qmjif8deu2sinas2ibaqn9982jj5fhcu', '40', '1446129984', '1');
INSERT INTO `jrkj_member_city` VALUES ('483', '0', 'k1nsihukpdm3kir5167pgsdss5psefhr', '18', '1446162102', '1');
INSERT INTO `jrkj_member_city` VALUES ('484', '0', 'k1nsihukpdm3kir5167pgsdss5psefhr', '36', '1446162122', '1');
INSERT INTO `jrkj_member_city` VALUES ('485', '425', 'v6q20sddn8sm2m28g35fo0pro16ua4g8', '16', '1446264816', '2');
INSERT INTO `jrkj_member_city` VALUES ('486', '425', 'v6q20sddn8sm2m28g35fo0pro16ua4g8', '42', '1446182918', '1');
INSERT INTO `jrkj_member_city` VALUES ('487', '0', 'q7llfltvqsq6jd4mq8aue53bst49ki4c', '18', '1447940252', '3');
INSERT INTO `jrkj_member_city` VALUES ('488', '310', 'dbqghf4a97sm38kl5n5b6ftu6smlggj4', '17', '1446188626', '1');
INSERT INTO `jrkj_member_city` VALUES ('489', '42', 's9ek8h7aoc2uvarhoif9dclklm5075r5', '95', '1446191627', '1');
INSERT INTO `jrkj_member_city` VALUES ('490', '42', 's9ek8h7aoc2uvarhoif9dclklm5075r5', '24', '1446191723', '1');
INSERT INTO `jrkj_member_city` VALUES ('491', '42', 's9ek8h7aoc2uvarhoif9dclklm5075r5', '30', '1446191786', '1');
INSERT INTO `jrkj_member_city` VALUES ('492', '42', 's9ek8h7aoc2uvarhoif9dclklm5075r5', '93', '1446191809', '1');
INSERT INTO `jrkj_member_city` VALUES ('493', '42', 's9ek8h7aoc2uvarhoif9dclklm5075r5', '50', '1446191838', '1');
INSERT INTO `jrkj_member_city` VALUES ('494', '42', 's9ek8h7aoc2uvarhoif9dclklm5075r5', '29', '1446191858', '1');
INSERT INTO `jrkj_member_city` VALUES ('495', '0', '3eu39kl16571eor8mftblueftgb8el90', '16', '1446195124', '1');
INSERT INTO `jrkj_member_city` VALUES ('496', '0', '19g9d44ah1tv0fgjvd1uv4sso7t49obb', '16', '1446220364', '1');
INSERT INTO `jrkj_member_city` VALUES ('497', '236', 'urtnnj0396kof1sknhpl19p8u5k89qam', '65', '1446258307', '1');
INSERT INTO `jrkj_member_city` VALUES ('498', '236', 'urtnnj0396kof1sknhpl19p8u5k89qam', '33', '1446258324', '1');
INSERT INTO `jrkj_member_city` VALUES ('499', '236', 'urtnnj0396kof1sknhpl19p8u5k89qam', '98', '1446258359', '1');
INSERT INTO `jrkj_member_city` VALUES ('500', '535', 'k9837glfnljgub1vvd9rai6dluafe31s', '65', '1446258818', '1');
INSERT INTO `jrkj_member_city` VALUES ('501', '535', 'k9837glfnljgub1vvd9rai6dluafe31s', '16', '1446263347', '7');
INSERT INTO `jrkj_member_city` VALUES ('502', '535', 'k9837glfnljgub1vvd9rai6dluafe31s', '73', '1446263216', '1');
INSERT INTO `jrkj_member_city` VALUES ('503', '535', '5mb2u16ldjjren7rcv0b12538qks3124', '24', '1446298551', '2');
INSERT INTO `jrkj_member_city` VALUES ('504', '534', 'jg0i6np9p0ae05s9k4h8otvfmmu2hfa7', '17', '1446263870', '1');
INSERT INTO `jrkj_member_city` VALUES ('505', '532', 'kosb33l283g553s47ous74agkonjedng', '16', '1450322954', '34');
INSERT INTO `jrkj_member_city` VALUES ('506', '308', 'q0m02hjgb4d73hgg6e7smuolgl35bbh0', '17', '1446273323', '1');
INSERT INTO `jrkj_member_city` VALUES ('507', '181', '11st95b03jrev9s6ghf50u3kqbtp17i3', '17', '1446627567', '4');
INSERT INTO `jrkj_member_city` VALUES ('508', '548', 'aj17oul6ho1u3bv0m2uvmme5q1eaieh2', '17', '1446278845', '1');
INSERT INTO `jrkj_member_city` VALUES ('509', '543', 't7g430i19aeanha93i9amm4eu4414a68', '16', '1446286311', '1');
INSERT INTO `jrkj_member_city` VALUES ('510', '0', 'he2b9sqaj4c9aejcnrd4b2qsn2lgvkuk', '17', '1446331735', '1');
INSERT INTO `jrkj_member_city` VALUES ('511', '290', 'lcn1pdb8br24b5vet1tg17lua38c1kok', '16', '1446345019', '1');
INSERT INTO `jrkj_member_city` VALUES ('512', '0', 'mkof523ps5b1t6ds2ak54o24nt8oah4o', '83', '1446347328', '1');
INSERT INTO `jrkj_member_city` VALUES ('513', '555', 'kfb2hgsab939f4h7fb3ffsgk05sg0cvo', '83', '1446347329', '1');
INSERT INTO `jrkj_member_city` VALUES ('514', '0', '4qp740uuniavd3d63bpstjfcj3fmla7f', '17', '1446349481', '1');
INSERT INTO `jrkj_member_city` VALUES ('515', '532', 'kosb33l283g553s47ous74agkonjedng', '17', '1450321234', '28');
INSERT INTO `jrkj_member_city` VALUES ('516', '558', 'um2da0cl0v6isj0udtfho06asls9sln5', '17', '1450324556', '4');
INSERT INTO `jrkj_member_city` VALUES ('517', '0', 'e1hkh1rs37o6d7ttvi9g0pm50h04rvrs', '95', '1446377125', '1');
INSERT INTO `jrkj_member_city` VALUES ('518', '0', 'e1hkh1rs37o6d7ttvi9g0pm50h04rvrs', '65', '1446377151', '1');
INSERT INTO `jrkj_member_city` VALUES ('519', '0', 'e1hkh1rs37o6d7ttvi9g0pm50h04rvrs', '16', '1446377170', '1');
INSERT INTO `jrkj_member_city` VALUES ('520', '0', 'dtrq1qibu056ek9pdanpeq1v0ovoq7bf', '83', '1446388132', '1');
INSERT INTO `jrkj_member_city` VALUES ('521', '0', 'dtrq1qibu056ek9pdanpeq1v0ovoq7bf', '17', '1446388153', '1');
INSERT INTO `jrkj_member_city` VALUES ('522', '0', 'heifjks3ptbtprmrl7qf2m4igmogp64l', '17', '1446614939', '2');
INSERT INTO `jrkj_member_city` VALUES ('523', '422', 'ac3rq7s9mp72qf181k9cp23v5srjm0di', '16', '1446437682', '1');
INSERT INTO `jrkj_member_city` VALUES ('524', '91', '74b8teo5k8kvhmfc2bkpir2jmurtucn8', '95', '1448959729', '2');
INSERT INTO `jrkj_member_city` VALUES ('525', '91', '74b8teo5k8kvhmfc2bkpir2jmurtucn8', '89', '1448959682', '2');
INSERT INTO `jrkj_member_city` VALUES ('526', '91', '74b8teo5k8kvhmfc2bkpir2jmurtucn8', '28', '1446440790', '1');
INSERT INTO `jrkj_member_city` VALUES ('527', '91', '74b8teo5k8kvhmfc2bkpir2jmurtucn8', '35', '1447221852', '2');
INSERT INTO `jrkj_member_city` VALUES ('528', '223', '5v9oqb8q7rddtpndlahju2ia46pj78r9', '17', '1446448866', '1');
INSERT INTO `jrkj_member_city` VALUES ('529', '553', 'o6p1s62th0ed4af3do33mkcfc8g08nhv', '16', '1446451132', '1');
INSERT INTO `jrkj_member_city` VALUES ('530', '0', 'qhnscevjieslf1lqgqnrvmgf97lsa8e2', '17', '1446456480', '2');
INSERT INTO `jrkj_member_city` VALUES ('531', '532', 'kosb33l283g553s47ous74agkonjedng', '65', '1448720109', '3');
INSERT INTO `jrkj_member_city` VALUES ('532', '532', 'kosb33l283g553s47ous74agkonjedng', '95', '1450321307', '2');
INSERT INTO `jrkj_member_city` VALUES ('533', '577', 's2u17c2dkqtg99jdp317ecn5usl8rrfn', '18', '1446519518', '1');
INSERT INTO `jrkj_member_city` VALUES ('534', '0', '0ks92hmehcfq7el3pcgctnnp9gh6hbeh', '17', '1446523016', '1');
INSERT INTO `jrkj_member_city` VALUES ('535', '152', '6u3kb5jr7056147sk5lj9nksr8t2mgoo', '32', '1446526177', '1');
INSERT INTO `jrkj_member_city` VALUES ('536', '581', 'n0tae4hltf4c6lm9g4ie8gj9ma6j904e', '37', '1446530587', '1');
INSERT INTO `jrkj_member_city` VALUES ('537', '581', 'n0tae4hltf4c6lm9g4ie8gj9ma6j904e', '28', '1446530624', '1');
INSERT INTO `jrkj_member_city` VALUES ('538', '0', '944l27k9jvr3lvbqsfhdhpanc8cevi87', '16', '1446540300', '2');
INSERT INTO `jrkj_member_city` VALUES ('539', '256', 'kc480n6v3nnqjfdcdjdkrjtqms066in1', '16', '1447820820', '2');
INSERT INTO `jrkj_member_city` VALUES ('540', '0', 'osrl89esa4tlq87agqb3aji4elpa45k1', '17', '1446550889', '1');
INSERT INTO `jrkj_member_city` VALUES ('541', '0', '0dmghds38kgfjdqqf73tciarvv83aml9', '17', '1446550889', '1');
INSERT INTO `jrkj_member_city` VALUES ('542', '0', '27er1qov7sojrglodtvfplihe2eth011', '17', '1446551855', '1');
INSERT INTO `jrkj_member_city` VALUES ('543', '0', 'nf0gf2d9ugcq2lhl511gslsa4ernif12', '17', '1446552761', '1');
INSERT INTO `jrkj_member_city` VALUES ('544', '0', 'um9cr91hajqaoa48qvo183cndvq43ktj', '17', '1446553079', '1');
INSERT INTO `jrkj_member_city` VALUES ('545', '0', 'sccq1lrjdfpsrfbi2bsb6u1mafohfm0k', '17', '1446554408', '1');
INSERT INTO `jrkj_member_city` VALUES ('546', '586', 'sccq1lrjdfpsrfbi2bsb6u1mafohfm0k', '17', '1446554433', '1');
INSERT INTO `jrkj_member_city` VALUES ('547', '58', 'impa6n5orhenldr59bsgcni0nep0g215', '49', '1449399556', '2');
INSERT INTO `jrkj_member_city` VALUES ('548', '0', '0j8g2mtb10as31sniqr4rvhcrvmlc0kj', '17', '1447911663', '6');
INSERT INTO `jrkj_member_city` VALUES ('549', '0', 'hflssrs9nnc4dpvg92qd3c20c9bg70tt', '17', '1446561593', '1');
INSERT INTO `jrkj_member_city` VALUES ('550', '55', '8n49k2c2fbh18a491jn385890t6imjik', '18', '1449999343', '4');
INSERT INTO `jrkj_member_city` VALUES ('551', '55', '8n49k2c2fbh18a491jn385890t6imjik', '33', '1446831601', '2');
INSERT INTO `jrkj_member_city` VALUES ('552', '55', '8n49k2c2fbh18a491jn385890t6imjik', '39', '1446602688', '1');
INSERT INTO `jrkj_member_city` VALUES ('553', '25', 'vu0p66aj67vng0nrohlonbrvcairi7m9', '73', '1446616880', '2');
INSERT INTO `jrkj_member_city` VALUES ('554', '25', 'vu0p66aj67vng0nrohlonbrvcairi7m9', '95', '1446616855', '2');
INSERT INTO `jrkj_member_city` VALUES ('555', '28', '6q5ejqjaunq128r8m2jvfc1cbd8vchnv', '65', '1446611760', '1');
INSERT INTO `jrkj_member_city` VALUES ('556', '25', 'vu0p66aj67vng0nrohlonbrvcairi7m9', '65', '1446616892', '2');
INSERT INTO `jrkj_member_city` VALUES ('557', '25', 'vu0p66aj67vng0nrohlonbrvcairi7m9', '17', '1446616912', '2');
INSERT INTO `jrkj_member_city` VALUES ('558', '28', '6q5ejqjaunq128r8m2jvfc1cbd8vchnv', '95', '1446611781', '1');
INSERT INTO `jrkj_member_city` VALUES ('559', '25', '4dnsupe2au1rnfcukf4m56ivbm0msm6j', '16', '1446613260', '1');
INSERT INTO `jrkj_member_city` VALUES ('560', '61', 'c1i356o31f8efq6nu58g2gj4oimh45vq', '49', '1446615732', '1');
INSERT INTO `jrkj_member_city` VALUES ('561', '25', 'vu0p66aj67vng0nrohlonbrvcairi7m9', '89', '1446616869', '1');
INSERT INTO `jrkj_member_city` VALUES ('562', '36', '0gk1pekrgte82lv9rq17kuc1e10l4ndt', '30', '1446618031', '1');
INSERT INTO `jrkj_member_city` VALUES ('563', '584', 'athaisnpn45ahcqvtgib8id5270m0ahf', '17', '1450158254', '25');
INSERT INTO `jrkj_member_city` VALUES ('564', '181', '11st95b03jrev9s6ghf50u3kqbtp17i3', '18', '1447220980', '3');
INSERT INTO `jrkj_member_city` VALUES ('565', '181', '11st95b03jrev9s6ghf50u3kqbtp17i3', '16', '1446627932', '1');
INSERT INTO `jrkj_member_city` VALUES ('566', '589', 'hflssrs9nnc4dpvg92qd3c20c9bg70tt', '17', '1447326591', '2');
INSERT INTO `jrkj_member_city` VALUES ('567', '75', '24hho8pa4vcd69lb65ckqb2cng7dab45', '65', '1449815845', '3');
INSERT INTO `jrkj_member_city` VALUES ('568', '523', 'cbrjq1q9svb857vdkc2226707evhpks5', '17', '1448411321', '7');
INSERT INTO `jrkj_member_city` VALUES ('569', '0', '0j8g2mtb10as31sniqr4rvhcrvmlc0kj', '25', '1446649583', '1');
INSERT INTO `jrkj_member_city` VALUES ('570', '67', 'odlgdu95g002r9v4kct87o12b2l084nu', '89', '1446651378', '1');
INSERT INTO `jrkj_member_city` VALUES ('571', '67', 'odlgdu95g002r9v4kct87o12b2l084nu', '30', '1446651403', '1');
INSERT INTO `jrkj_member_city` VALUES ('572', '592', 'o6p1s62th0ed4af3do33mkcfc8g08nhv', '16', '1446671921', '1');
INSERT INTO `jrkj_member_city` VALUES ('573', '26', 'favosevh8nrng8hhgkgspj5oejd7hotn', '16', '1447924895', '2');
INSERT INTO `jrkj_member_city` VALUES ('574', '597', '7cfeu43eli8sq8a345afj8069igdga2h', '17', '1446706769', '3');
INSERT INTO `jrkj_member_city` VALUES ('575', '591', 'jju4mtscds8ou147b0acvlmkc2041eji', '32', '1446706313', '1');
INSERT INTO `jrkj_member_city` VALUES ('576', '591', 'c6rrnq2jes8fo2s1pm2une9iscl1oh08', '16', '1450068431', '4');
INSERT INTO `jrkj_member_city` VALUES ('577', '0', '4kc7egidv7ei2qljhh0qndntfeon8uo9', '16', '1446796852', '1');
INSERT INTO `jrkj_member_city` VALUES ('578', '0', '4m4ebvacg9v7gpso9g83mbljg0ks0vrk', '17', '1446801075', '1');
INSERT INTO `jrkj_member_city` VALUES ('579', '76', '3g8psejjb58lb47t1f18t3i6pfl6pend', '17', '1446854127', '1');
INSERT INTO `jrkj_member_city` VALUES ('580', '71', '9l5uf1vsvin4hcqb3v285a2l0f94kqr5', '31', '1446863732', '1');
INSERT INTO `jrkj_member_city` VALUES ('581', '501', '8mceom59mqangnbl0mge8vtc2let5vd6', '17', '1449657158', '10');
INSERT INTO `jrkj_member_city` VALUES ('582', '5', '7nqmr7cu988aam46n1dmi80ddqq10nei', '17', '1450240195', '3');
INSERT INTO `jrkj_member_city` VALUES ('583', '5', '7nqmr7cu988aam46n1dmi80ddqq10nei', '65', '1446872838', '1');
INSERT INTO `jrkj_member_city` VALUES ('584', '5', '7nqmr7cu988aam46n1dmi80ddqq10nei', '73', '1446872850', '1');
INSERT INTO `jrkj_member_city` VALUES ('585', '5', '7nqmr7cu988aam46n1dmi80ddqq10nei', '16', '1446872856', '1');
INSERT INTO `jrkj_member_city` VALUES ('586', '466', 'ke6g07snp8f1l5qddebr0loqhj9alptv', '17', '1449469917', '2');
INSERT INTO `jrkj_member_city` VALUES ('587', '0', 'elpiqmlvoml9tg6mei7mrbin5hduq4j4', '17', '1446897296', '1');
INSERT INTO `jrkj_member_city` VALUES ('588', '0', 'eo6vcjlh3k3bk6sh6i8gc11n80e4leet', '17', '1446957051', '1');
INSERT INTO `jrkj_member_city` VALUES ('589', '0', '70ams0v3mbddb0rsnm2iv1mhkinuefaa', '17', '1446957431', '1');
INSERT INTO `jrkj_member_city` VALUES ('590', '582', '152mte598u2jup5n2nlkqjnj1bb793p2', '17', '1447122959', '3');
INSERT INTO `jrkj_member_city` VALUES ('591', '0', 'm9tlq33cii5v5ef379tbgpmkra3mq5ou', '17', '1446962867', '1');
INSERT INTO `jrkj_member_city` VALUES ('592', '641', '6tir052vh14ce5su5guleu4ad1mbrl5l', '18', '1446963023', '1');
INSERT INTO `jrkj_member_city` VALUES ('593', '361', '68h48k0otq28nk1fduoa6lshka4jc5vf', '16', '1446968771', '1');
INSERT INTO `jrkj_member_city` VALUES ('594', '0', 'oc5mbkv48p42butrjsd8ijk0f93933ol', '17', '1447034760', '2');
INSERT INTO `jrkj_member_city` VALUES ('595', '0', 't1pk5jgj4pqu1o0jblkinaej6g31emvd', '16', '1447056763', '2');
INSERT INTO `jrkj_member_city` VALUES ('596', '32', 'v7m5e1ub38fti1cavu3jnljht8p9vtnf', '17', '1449206238', '5');
INSERT INTO `jrkj_member_city` VALUES ('597', '11', 'f0k5i53d9j6ei3m9r089mb2jacqda95o', '33', '1447125570', '1');
INSERT INTO `jrkj_member_city` VALUES ('598', '582', '19qvrpspvb60ntecgig3jiouofe52fnh', '18', '1447125613', '1');
INSERT INTO `jrkj_member_city` VALUES ('599', '11', 'qj96hm9ps0mgcmqsok90luq4o7ditolu', '18', '1447125622', '1');
INSERT INTO `jrkj_member_city` VALUES ('600', '0', '0dr9o5kj04qn11hvi41d77n667r54tl0', '17', '1447133815', '2');
INSERT INTO `jrkj_member_city` VALUES ('601', '0', '0dr9o5kj04qn11hvi41d77n667r54tl0', '16', '1447133676', '1');
INSERT INTO `jrkj_member_city` VALUES ('602', '0', 'kla3qva195650n24ho04et98i2iv9iq9', '93', '1447163770', '1');
INSERT INTO `jrkj_member_city` VALUES ('603', '0', 'kla3qva195650n24ho04et98i2iv9iq9', '25', '1447163776', '1');
INSERT INTO `jrkj_member_city` VALUES ('604', '0', 'kla3qva195650n24ho04et98i2iv9iq9', '16', '1447163827', '1');
INSERT INTO `jrkj_member_city` VALUES ('605', '0', '7rqgepacn1a32t0h9enkr23d0n3jp8sp', '16', '1447213411', '1');
INSERT INTO `jrkj_member_city` VALUES ('606', '659', 'ele1pk09o24lsud9bog87r44l13eqgfn', '18', '1447222184', '1');
INSERT INTO `jrkj_member_city` VALUES ('607', '550', 'bdslv1jbqigfeltr0e4nedepr935r4rk', '17', '1450003239', '5');
INSERT INTO `jrkj_member_city` VALUES ('608', '92', '8kl88jc6aii5mqmva9q3bplvpplf2jrs', '73', '1447256627', '1');
INSERT INTO `jrkj_member_city` VALUES ('609', '205', '4um0h9aevk43vin5rdnke8pospnkpk6h', '17', '1447517621', '3');
INSERT INTO `jrkj_member_city` VALUES ('610', '205', '70dftlmlg7akknrop2etrknb1ndi1cru', '16', '1447266418', '1');
INSERT INTO `jrkj_member_city` VALUES ('611', '0', '0nka84cuqooru1v3m9ene8nua5unlpob', '17', '1447307178', '1');
INSERT INTO `jrkj_member_city` VALUES ('612', '0', 'hane1dq8hhc5gtc1ae4gc1am95iejqe3', '73', '1447321526', '1');
INSERT INTO `jrkj_member_city` VALUES ('613', '351', 'f62ifrgerqs2g1s2jhgpijsni8l5mrdp', '18', '1447343826', '2');
INSERT INTO `jrkj_member_city` VALUES ('614', '351', 'f62ifrgerqs2g1s2jhgpijsni8l5mrdp', '16', '1447343952', '1');
INSERT INTO `jrkj_member_city` VALUES ('615', '0', 't82bn2rrilm1ebp4fojm53384j42h47h', '89', '1447350081', '1');
INSERT INTO `jrkj_member_city` VALUES ('616', '0', 't82bn2rrilm1ebp4fojm53384j42h47h', '17', '1447350116', '1');
INSERT INTO `jrkj_member_city` VALUES ('617', '0', 't82bn2rrilm1ebp4fojm53384j42h47h', '95', '1447350387', '1');
INSERT INTO `jrkj_member_city` VALUES ('618', '0', 't82bn2rrilm1ebp4fojm53384j42h47h', '73', '1447350402', '1');
INSERT INTO `jrkj_member_city` VALUES ('619', '0', 't82bn2rrilm1ebp4fojm53384j42h47h', '16', '1447350419', '1');
INSERT INTO `jrkj_member_city` VALUES ('620', '0', '30a5tp2fk0oo2n4kb2l01dkdpfrqcpsk', '16', '1447376922', '1');
INSERT INTO `jrkj_member_city` VALUES ('621', '0', '6bg3jfcrt5b8ghiv611kocjqsnt12kuu', '17', '1447394959', '1');
INSERT INTO `jrkj_member_city` VALUES ('622', '110', '90j8tjkos0lqbluv4g2mn9f4t9um5nfq', '16', '1447406190', '1');
INSERT INTO `jrkj_member_city` VALUES ('623', '648', '2bmpniuie7luadton1eppv4kh5vas8g3', '18', '1447429829', '1');
INSERT INTO `jrkj_member_city` VALUES ('624', '737', 'tthjfedhh27gk5q1o536269i6lb2q1kn', '17', '1447518251', '1');
INSERT INTO `jrkj_member_city` VALUES ('625', '0', 'khkrs00mcomfm89gtm4f612dt9vm26lo', '16', '1447559275', '1');
INSERT INTO `jrkj_member_city` VALUES ('626', '0', 'aol5nkgvn3r6devj9d7q2vl68073mst2', '18', '1447561264', '1');
INSERT INTO `jrkj_member_city` VALUES ('627', '0', 'r0oucqqoimgpps42ffl2jk760qc17iq2', '18', '1447561264', '1');
INSERT INTO `jrkj_member_city` VALUES ('628', '79', 'imgpejvte10iqdmj50ovtq8vmni5lbcm', '17', '1447568808', '1');
INSERT INTO `jrkj_member_city` VALUES ('629', '79', 'imgpejvte10iqdmj50ovtq8vmni5lbcm', '65', '1447568815', '1');
INSERT INTO `jrkj_member_city` VALUES ('630', '0', '43tal0g3ie6u254kca199dvbdfqis5ga', '17', '1447594322', '1');
INSERT INTO `jrkj_member_city` VALUES ('631', '3', 'jt5ib2k3qem8fqahec2fq5tdiogf1sri', '33', '1447637025', '1');
INSERT INTO `jrkj_member_city` VALUES ('632', '0', 'ucndfvp9iqbctgoomui01e2srpkh08si', '17', '1450165867', '3');
INSERT INTO `jrkj_member_city` VALUES ('633', '0', 'ucndfvp9iqbctgoomui01e2srpkh08si', '16', '1447659431', '1');
INSERT INTO `jrkj_member_city` VALUES ('634', '0', '6kv17b3q4u56cqgdnhs22m0s3hpi5ica', '18', '1447672661', '1');
INSERT INTO `jrkj_member_city` VALUES ('635', '522', 'pf8nv6jhq0tuqn76pjpv2p13bld2burc', '17', '1449038744', '3');
INSERT INTO `jrkj_member_city` VALUES ('636', '0', 'ib9j31g8dj1p6s0gja7iq9ac7rjn1a17', '16', '1447719106', '1');
INSERT INTO `jrkj_member_city` VALUES ('637', '24', 'kq7f0h8mag282j9gu7tcqm3g07ta5j8g', '65', '1447719590', '1');
INSERT INTO `jrkj_member_city` VALUES ('638', '24', 'kq7f0h8mag282j9gu7tcqm3g07ta5j8g', '89', '1447719613', '1');
INSERT INTO `jrkj_member_city` VALUES ('639', '0', 'frr0tnbe06mahhiqbsqp0ei02omv65r2', '18', '1447721640', '1');
INSERT INTO `jrkj_member_city` VALUES ('640', '0', 'nei4t2n0ph737jqgkpkra0eisjsudmhi', '18', '1447721640', '1');
INSERT INTO `jrkj_member_city` VALUES ('641', '24', 'kq7f0h8mag282j9gu7tcqm3g07ta5j8g', '55', '1447731234', '1');
INSERT INTO `jrkj_member_city` VALUES ('642', '0', 'ntopjet5qibpcaooe6c9fpvcqtt4n0ag', '17', '1447737854', '1');
INSERT INTO `jrkj_member_city` VALUES ('643', '0', 'ntopjet5qibpcaooe6c9fpvcqtt4n0ag', '95', '1447737898', '1');
INSERT INTO `jrkj_member_city` VALUES ('644', '0', 'ntopjet5qibpcaooe6c9fpvcqtt4n0ag', '65', '1447737963', '2');
INSERT INTO `jrkj_member_city` VALUES ('645', '0', 'ntopjet5qibpcaooe6c9fpvcqtt4n0ag', '16', '1447737968', '1');
INSERT INTO `jrkj_member_city` VALUES ('646', '0', '9s3hn2a9tp8v4q5bt7s17tfkjdp5g9q7', '17', '1447741767', '1');
INSERT INTO `jrkj_member_city` VALUES ('647', '724', '8o3aqpk4ff17k92hjr11vkjnp12q7c6m', '16', '1447763079', '1');
INSERT INTO `jrkj_member_city` VALUES ('648', '621', 'vofd76cfr0vo0sgc571c4pol42qfaofi', '16', '1447819666', '1');
INSERT INTO `jrkj_member_city` VALUES ('649', '0', '1e5rnv88n5biq26gj5osg906e3rra9l0', '18', '1447820270', '1');
INSERT INTO `jrkj_member_city` VALUES ('650', '0', 'f7r6aq451c5dmr41ag2k4istso2j67rs', '101', '1447823885', '1');
INSERT INTO `jrkj_member_city` VALUES ('651', '567', 'ai0g0c9vl2bgm7107ue58b9fmrv4iroa', '28', '1447829127', '1');
INSERT INTO `jrkj_member_city` VALUES ('652', '567', 'ai0g0c9vl2bgm7107ue58b9fmrv4iroa', '16', '1447829140', '1');
INSERT INTO `jrkj_member_city` VALUES ('653', '168', '5k3evbgkcaok0itva8aabujh9la7i2gm', '33', '1447840259', '1');
INSERT INTO `jrkj_member_city` VALUES ('654', '0', 'ocd6cceon50r31be41q9ermeeeto3462', '18', '1447902585', '1');
INSERT INTO `jrkj_member_city` VALUES ('655', '201', 'lkoq4g3p865ommu1jflpgsfavdhle6bb', '18', '1447909298', '1');
INSERT INTO `jrkj_member_city` VALUES ('656', '0', 'karp17o714v4dv62hdnqk20sia3pfai4', '17', '1447916343', '1');
INSERT INTO `jrkj_member_city` VALUES ('657', '135', '5e8e5gt5c6pteu3r3g82fjqijnf7grgf', '89', '1447928729', '1');
INSERT INTO `jrkj_member_city` VALUES ('658', '796', '54vellhvsgopiv0t02t9138f1sec5bu9', '17', '1447945997', '2');
INSERT INTO `jrkj_member_city` VALUES ('659', '298', 'ocd6cceon50r31be41q9ermeeeto3462', '18', '1449191231', '2');
INSERT INTO `jrkj_member_city` VALUES ('660', '12', '8dseasfbeo1jm96fig4e1ufkdp9jd1nq', '18', '1448078727', '1');
INSERT INTO `jrkj_member_city` VALUES ('661', '0', 'k6tb5v14s34e81e6iti5obmfel4dbemu', '18', '1448083500', '1');
INSERT INTO `jrkj_member_city` VALUES ('662', '0', 'nnc8cu2s6umvr0tn1voc1uq0tm0on24s', '17', '1448095360', '2');
INSERT INTO `jrkj_member_city` VALUES ('663', '121', 'e66tkog8d1j8ch1endqvnlncbta4cq91', '17', '1448153416', '1');
INSERT INTO `jrkj_member_city` VALUES ('664', '121', 'e66tkog8d1j8ch1endqvnlncbta4cq91', '65', '1448153445', '1');
INSERT INTO `jrkj_member_city` VALUES ('665', '121', 'e66tkog8d1j8ch1endqvnlncbta4cq91', '73', '1448153482', '1');
INSERT INTO `jrkj_member_city` VALUES ('666', '121', 'e66tkog8d1j8ch1endqvnlncbta4cq91', '89', '1448153491', '1');
INSERT INTO `jrkj_member_city` VALUES ('667', '121', 'e66tkog8d1j8ch1endqvnlncbta4cq91', '95', '1448153501', '1');
INSERT INTO `jrkj_member_city` VALUES ('668', '121', 'e66tkog8d1j8ch1endqvnlncbta4cq91', '24', '1448153517', '1');
INSERT INTO `jrkj_member_city` VALUES ('669', '121', 'e66tkog8d1j8ch1endqvnlncbta4cq91', '49', '1448153557', '1');
INSERT INTO `jrkj_member_city` VALUES ('670', '121', 'e66tkog8d1j8ch1endqvnlncbta4cq91', '50', '1448153599', '1');
INSERT INTO `jrkj_member_city` VALUES ('671', '816', 'nnc8cu2s6umvr0tn1voc1uq0tm0on24s', '17', '1448155033', '1');
INSERT INTO `jrkj_member_city` VALUES ('672', '0', 't43hgigbqdcqas7gvtk59cpk7mnnk4qc', '95', '1448175408', '1');
INSERT INTO `jrkj_member_city` VALUES ('673', '86', 'j9pn4jqbmnvnpt9b3a9v327mfi75cf3a', '16', '1448192345', '2');
INSERT INTO `jrkj_member_city` VALUES ('674', '0', '6kdjjrulb43err23suiqj5q771cbi75t', '17', '1448201117', '1');
INSERT INTO `jrkj_member_city` VALUES ('675', '0', 'ik77ed4dqme2uetvent192hm8gi7vdal', '18', '1449473359', '4');
INSERT INTO `jrkj_member_city` VALUES ('676', '0', 'ik77ed4dqme2uetvent192hm8gi7vdal', '16', '1449473323', '2');
INSERT INTO `jrkj_member_city` VALUES ('677', '0', 'k8gdmde9e3e8c4444vh1dd85pueil14t', '18', '1448267385', '1');
INSERT INTO `jrkj_member_city` VALUES ('678', '0', 'k8gdmde9e3e8c4444vh1dd85pueil14t', '16', '1448268610', '1');
INSERT INTO `jrkj_member_city` VALUES ('679', '0', 'k8gdmde9e3e8c4444vh1dd85pueil14t', '33', '1448269609', '1');
INSERT INTO `jrkj_member_city` VALUES ('680', '132', '8v60iiihvvrgrfbi7l83n334h7nevflm', '32', '1448281338', '1');
INSERT INTO `jrkj_member_city` VALUES ('681', '0', '1omqbh73at2bjptajcveirlmde1cucf0', '17', '1448284090', '1');
INSERT INTO `jrkj_member_city` VALUES ('682', '470', 'b1ll3oecju3s65209krk14ordn9ddlsv', '17', '1449555363', '4');
INSERT INTO `jrkj_member_city` VALUES ('683', '0', '0nmhivahksuni4fnpg83vl1ql88pp2a3', '51', '1448290821', '1');
INSERT INTO `jrkj_member_city` VALUES ('684', '0', '0nmhivahksuni4fnpg83vl1ql88pp2a3', '49', '1448290847', '1');
INSERT INTO `jrkj_member_city` VALUES ('685', '0', '0nmhivahksuni4fnpg83vl1ql88pp2a3', '16', '1448290929', '1');
INSERT INTO `jrkj_member_city` VALUES ('686', '833', 'ed6d55n1khthplqo8qs1bisemge51jbt', '17', '1448294537', '1');
INSERT INTO `jrkj_member_city` VALUES ('687', '833', 'ed6d55n1khthplqo8qs1bisemge51jbt', '16', '1448294606', '1');
INSERT INTO `jrkj_member_city` VALUES ('688', '26', '7nqmr7cu988aam46n1dmi80ddqq10nei', '17', '1450240195', '2');
INSERT INTO `jrkj_member_city` VALUES ('689', '0', 'he31nihc6pcuu4pm811gkc55a3j9f4bp', '17', '1448872796', '4');
INSERT INTO `jrkj_member_city` VALUES ('690', '635', 'm8lvcpdj26b45p69j14mkb02a12ggkob', '17', '1448441929', '1');
INSERT INTO `jrkj_member_city` VALUES ('691', '0', 'cqg1j7uq66otque2b6us5usqekh98kh2', '16', '1448445636', '2');
INSERT INTO `jrkj_member_city` VALUES ('692', '0', 'cqg1j7uq66otque2b6us5usqekh98kh2', '17', '1448445624', '1');
INSERT INTO `jrkj_member_city` VALUES ('693', '0', 'phtie2m0eoid3njpq7p8iguaup7jomn7', '17', '1448452101', '1');
INSERT INTO `jrkj_member_city` VALUES ('694', '834', '31qqrdk7ne0b9o9bu8rc2rbfbbb2nila', '29', '1448472486', '1');
INSERT INTO `jrkj_member_city` VALUES ('695', '834', '31qqrdk7ne0b9o9bu8rc2rbfbbb2nila', '16', '1448472521', '1');
INSERT INTO `jrkj_member_city` VALUES ('696', '43', 'oaiivgl1g2i34n4sfqqh23j4ucc6umir', '16', '1448513916', '1');
INSERT INTO `jrkj_member_city` VALUES ('697', '168', 'giqgr0b8ea8je3lajnbc75poc00kq1rp', '29', '1448528958', '1');
INSERT INTO `jrkj_member_city` VALUES ('698', '168', 'giqgr0b8ea8je3lajnbc75poc00kq1rp', '32', '1448529072', '1');
INSERT INTO `jrkj_member_city` VALUES ('699', '0', 'o651ee6g4hlr4838p910gptl1adr4eb3', '16', '1448538929', '1');
INSERT INTO `jrkj_member_city` VALUES ('700', '0', 'nqtin9sgmpl6upqql1bjqi2ukgevcn5c', '17', '1448540305', '1');
INSERT INTO `jrkj_member_city` VALUES ('701', '103', 'on3rno038tobiqp0elqcdv541qdn10v9', '17', '1448588335', '1');
INSERT INTO `jrkj_member_city` VALUES ('702', '0', 'lhc5ptnelv0p2ij8sd0mslpetvorsji4', '17', '1448592808', '1');
INSERT INTO `jrkj_member_city` VALUES ('703', '0', 'n9sc206nglqa9ji7m2cv8kc41kvrv0vf', '17', '1448605672', '1');
INSERT INTO `jrkj_member_city` VALUES ('704', '0', '3ebb0421kv9ot3b23vff7d1seoa49p7b', '49', '1448607682', '2');
INSERT INTO `jrkj_member_city` VALUES ('705', '0', '3ebb0421kv9ot3b23vff7d1seoa49p7b', '16', '1448607683', '1');
INSERT INTO `jrkj_member_city` VALUES ('706', '0', 'athaisnpn45ahcqvtgib8id5270m0ahf', '17', '1448684346', '2');
INSERT INTO `jrkj_member_city` VALUES ('707', '0', 'adb92enlkdon9ada00k5gpmphe2ci3eb', '17', '1448623729', '1');
INSERT INTO `jrkj_member_city` VALUES ('708', '0', 'kfkukv6dbprja72nn7ecaus95bd5geqf', '16', '1448625676', '1');
INSERT INTO `jrkj_member_city` VALUES ('709', '0', 'kfkukv6dbprja72nn7ecaus95bd5geqf', '17', '1448625676', '2');
INSERT INTO `jrkj_member_city` VALUES ('710', '532', 'kosb33l283g553s47ous74agkonjedng', '18', '1450321179', '14');
INSERT INTO `jrkj_member_city` VALUES ('711', '187', '74b8teo5k8kvhmfc2bkpir2jmurtucn8', '17', '1448719834', '1');
INSERT INTO `jrkj_member_city` VALUES ('712', '532', 'kosb33l283g553s47ous74agkonjedng', '32', '1448794975', '2');
INSERT INTO `jrkj_member_city` VALUES ('713', '853', 'nldd17ggld25ese2pmbfpjmqk4dfhc3e', '17', '1448780393', '1');
INSERT INTO `jrkj_member_city` VALUES ('714', '853', 'nldd17ggld25ese2pmbfpjmqk4dfhc3e', '89', '1448780427', '1');
INSERT INTO `jrkj_member_city` VALUES ('715', '853', 'nldd17ggld25ese2pmbfpjmqk4dfhc3e', '65', '1448780443', '1');
INSERT INTO `jrkj_member_city` VALUES ('716', '853', 'nldd17ggld25ese2pmbfpjmqk4dfhc3e', '16', '1448780606', '1');
INSERT INTO `jrkj_member_city` VALUES ('717', '0', 'tra12nmgctlut0gt92kfehgc9d3ip0el', '17', '1448793873', '1');
INSERT INTO `jrkj_member_city` VALUES ('718', '0', 'oe45ql5b4drp9rtt5lqmdbpc4n6bt5s9', '17', '1448795186', '1');
INSERT INTO `jrkj_member_city` VALUES ('719', '0', '1tdm8753riodnk6mesmdrgu2vhdu6un2', '66', '1448801430', '1');
INSERT INTO `jrkj_member_city` VALUES ('720', '0', '1tdm8753riodnk6mesmdrgu2vhdu6un2', '16', '1448801431', '1');
INSERT INTO `jrkj_member_city` VALUES ('721', '837', 'uq0c27jtidbiuqi3657737d6pqsvn20c', '17', '1450181048', '7');
INSERT INTO `jrkj_member_city` VALUES ('722', '741', 'tt78r1qn1tlj07p1no69glnpl0k3famo', '16', '1448898277', '1');
INSERT INTO `jrkj_member_city` VALUES ('723', '94', 'khkrs00mcomfm89gtm4f612dt9vm26lo', '89', '1448942815', '1');
INSERT INTO `jrkj_member_city` VALUES ('724', '94', 'khkrs00mcomfm89gtm4f612dt9vm26lo', '16', '1450157207', '3');
INSERT INTO `jrkj_member_city` VALUES ('725', '0', '8m5e80qsfeh4hvm8buffinsubsec34ua', '17', '1448945841', '1');
INSERT INTO `jrkj_member_city` VALUES ('726', '91', '74b8teo5k8kvhmfc2bkpir2jmurtucn8', '37', '1448959948', '2');
INSERT INTO `jrkj_member_city` VALUES ('727', '729', '6kv17b3q4u56cqgdnhs22m0s3hpi5ica', '18', '1448968511', '1');
INSERT INTO `jrkj_member_city` VALUES ('728', '828', '4nj5drutju1fpvj1i2js51mlu7690oog', '16', '1449019216', '1');
INSERT INTO `jrkj_member_city` VALUES ('729', '0', 'o2uk04acdf51kif7j1njjjk7p3dk01pt', '17', '1449026716', '1');
INSERT INTO `jrkj_member_city` VALUES ('730', '0', 'o2uk04acdf51kif7j1njjjk7p3dk01pt', '16', '1449026973', '1');
INSERT INTO `jrkj_member_city` VALUES ('731', '532', 'kosb33l283g553s47ous74agkonjedng', '49', '1450321269', '5');
INSERT INTO `jrkj_member_city` VALUES ('732', '591', '7jmmt31caqhn2cadphciqr973l0q3t48', '17', '1449030735', '1');
INSERT INTO `jrkj_member_city` VALUES ('733', '0', '9fgq3tt0kn98n1m0qa872lho5k78a4j1', '18', '1449034135', '1');
INSERT INTO `jrkj_member_city` VALUES ('734', '0', '73aicfkkfn6iemqhtobq5o9b5737l4ba', '18', '1449034946', '1');
INSERT INTO `jrkj_member_city` VALUES ('735', '0', 'ik77ed4dqme2uetvent192hm8gi7vdal', '17', '1449473202', '3');
INSERT INTO `jrkj_member_city` VALUES ('736', '153', 'mlqhm58nb3jlgm9ofur5tebatgvaif8q', '17', '1450165894', '7');
INSERT INTO `jrkj_member_city` VALUES ('737', '142', '81b8u1ens8tug1gb9u5ltj13co4jiq61', '17', '1449104086', '1');
INSERT INTO `jrkj_member_city` VALUES ('738', '142', '81b8u1ens8tug1gb9u5ltj13co4jiq61', '18', '1449104119', '1');
INSERT INTO `jrkj_member_city` VALUES ('739', '142', '81b8u1ens8tug1gb9u5ltj13co4jiq61', '16', '1449104146', '1');
INSERT INTO `jrkj_member_city` VALUES ('740', '0', 'tqkmfnn74ii27kogkg4agitgu3uvfc2j', '17', '1449120804', '2');
INSERT INTO `jrkj_member_city` VALUES ('741', '0', 'tqkmfnn74ii27kogkg4agitgu3uvfc2j', '16', '1449120855', '2');
INSERT INTO `jrkj_member_city` VALUES ('742', '0', '0n621tl5l4ihtcesn5trblkgnovchitb', '17', '1449120914', '1');
INSERT INTO `jrkj_member_city` VALUES ('743', '142', 'ocukk8ug7h9hn8n644ppbtc5ck1cfegd', '49', '1449127971', '1');
INSERT INTO `jrkj_member_city` VALUES ('744', '117', 'lc0jni8auubkja92crkrjek8vu4cbhnf', '26', '1449148634', '1');
INSERT INTO `jrkj_member_city` VALUES ('745', '0', 'h7ogr3jnmjath60nam90j68ko1sfr2u8', '18', '1449179016', '1');
INSERT INTO `jrkj_member_city` VALUES ('746', '0', '8g38f4hgdk2qt45e24on6l3seefkf2m9', '17', '1449196856', '1');
INSERT INTO `jrkj_member_city` VALUES ('747', '0', '8g38f4hgdk2qt45e24on6l3seefkf2m9', '16', '1449197019', '1');
INSERT INTO `jrkj_member_city` VALUES ('748', '0', '8g38f4hgdk2qt45e24on6l3seefkf2m9', '18', '1449197858', '1');
INSERT INTO `jrkj_member_city` VALUES ('749', '239', '7bc79nolm5h7mug4hh0tec743bg9dugg', '16', '1449202647', '1');
INSERT INTO `jrkj_member_city` VALUES ('750', '844', 'k8gdmde9e3e8c4444vh1dd85pueil14t', '18', '1449205816', '1');
INSERT INTO `jrkj_member_city` VALUES ('751', '913', 't2vbk1l0nemp8s9bv69b62plhr82sba4', '89', '1449217327', '1');
INSERT INTO `jrkj_member_city` VALUES ('752', '913', 't2vbk1l0nemp8s9bv69b62plhr82sba4', '46', '1449217335', '1');
INSERT INTO `jrkj_member_city` VALUES ('753', '913', 't2vbk1l0nemp8s9bv69b62plhr82sba4', '36', '1449217355', '1');
INSERT INTO `jrkj_member_city` VALUES ('754', '43', 'ck3kqam7d32ogi8o6rm7e312ju1ql0n2', '18', '1449723249', '7');
INSERT INTO `jrkj_member_city` VALUES ('755', '851', 'k8gdmde9e3e8c4444vh1dd85pueil14t', '18', '1450327266', '9');
INSERT INTO `jrkj_member_city` VALUES ('756', '0', 'dvs35nvls53at8fiqtvbrvoms3ellc4i', '17', '1449232362', '1');
INSERT INTO `jrkj_member_city` VALUES ('757', '0', 'dvs35nvls53at8fiqtvbrvoms3ellc4i', '18', '1449232387', '1');
INSERT INTO `jrkj_member_city` VALUES ('758', '0', 'dvs35nvls53at8fiqtvbrvoms3ellc4i', '95', '1449232422', '1');
INSERT INTO `jrkj_member_city` VALUES ('759', '0', 'dvs35nvls53at8fiqtvbrvoms3ellc4i', '49', '1449232436', '1');
INSERT INTO `jrkj_member_city` VALUES ('760', '0', 'vl8vqs24anvmg3tq21c0iq4tgkh8rtn6', '73', '1449243885', '1');
INSERT INTO `jrkj_member_city` VALUES ('761', '0', 'vl8vqs24anvmg3tq21c0iq4tgkh8rtn6', '39', '1449243885', '1');
INSERT INTO `jrkj_member_city` VALUES ('762', '0', '66c3qvj6sfosoje8be62jgt6t4q6vvtb', '32', '1449285274', '1');
INSERT INTO `jrkj_member_city` VALUES ('763', '0', '66c3qvj6sfosoje8be62jgt6t4q6vvtb', '16', '1449285386', '2');
INSERT INTO `jrkj_member_city` VALUES ('764', '79', 'imgpejvte10iqdmj50ovtq8vmni5lbcm', '89', '1449322069', '1');
INSERT INTO `jrkj_member_city` VALUES ('765', '79', 'imgpejvte10iqdmj50ovtq8vmni5lbcm', '16', '1449322085', '1');
INSERT INTO `jrkj_member_city` VALUES ('766', '31', 'ch5nknggormj2o6u6vlt8vfl3osebocm', '73', '1449374927', '1');
INSERT INTO `jrkj_member_city` VALUES ('767', '31', 'ch5nknggormj2o6u6vlt8vfl3osebocm', '95', '1449374942', '1');
INSERT INTO `jrkj_member_city` VALUES ('768', '31', 'ch5nknggormj2o6u6vlt8vfl3osebocm', '17', '1449374953', '1');
INSERT INTO `jrkj_member_city` VALUES ('769', '31', 'n1slj1us857cnggmk732t5tsa4', '16', '1466051672', '4');
INSERT INTO `jrkj_member_city` VALUES ('770', '0', 'bq73uh9gsv8k2no0v8491s1bcpe6o7ji', '17', '1449395095', '1');
INSERT INTO `jrkj_member_city` VALUES ('771', '0', '8qioa0ingq4c9but7nq8i7uj4b70fdnc', '17', '1449395139', '1');
INSERT INTO `jrkj_member_city` VALUES ('772', '58', 'impa6n5orhenldr59bsgcni0nep0g215', '33', '1449399523', '1');
INSERT INTO `jrkj_member_city` VALUES ('773', '591', 'qivc7ls6cnfhab1rasdbpkr6p97nikcf', '89', '1449416812', '1');
INSERT INTO `jrkj_member_city` VALUES ('774', '591', 'qivc7ls6cnfhab1rasdbpkr6p97nikcf', '73', '1449416827', '1');
INSERT INTO `jrkj_member_city` VALUES ('775', '591', 'qivc7ls6cnfhab1rasdbpkr6p97nikcf', '39', '1449416889', '1');
INSERT INTO `jrkj_member_city` VALUES ('776', '0', 'aou6qqqi9rn7bnbo7e3lir6r61cc8u88', '17', '1449466469', '1');
INSERT INTO `jrkj_member_city` VALUES ('777', '0', 'ok6oelm7an1l8damkafvelii5s85afe0', '17', '1449483622', '1');
INSERT INTO `jrkj_member_city` VALUES ('778', '0', 'fnqo5ahjhalhpp0e0d0vha2kb6hm7i2a', '16', '1449493101', '1');
INSERT INTO `jrkj_member_city` VALUES ('779', '0', 'elk6a8utabjflr52drej68koaaik830u', '17', '1449537822', '1');
INSERT INTO `jrkj_member_city` VALUES ('780', '0', '8n5hm7vqbake8mp7ag07nqdhfq589u2u', '18', '1449557367', '3');
INSERT INTO `jrkj_member_city` VALUES ('781', '852', 'gkmppvksavorfggft20kr1ue57sfooap', '17', '1449744489', '4');
INSERT INTO `jrkj_member_city` VALUES ('782', '532', 'kosb33l283g553s47ous74agkonjedng', '57', '1449592872', '1');
INSERT INTO `jrkj_member_city` VALUES ('783', '3', 'fn0ikt437addj5ub6kpbg49ql5gb063d', '46', '1449621454', '1');
INSERT INTO `jrkj_member_city` VALUES ('784', '3', 'fn0ikt437addj5ub6kpbg49ql5gb063d', '88', '1449621471', '1');
INSERT INTO `jrkj_member_city` VALUES ('785', '0', 'out4mj6bp42bgs9bj7moh1t1d6s9c0se', '16', '1449629064', '1');
INSERT INTO `jrkj_member_city` VALUES ('786', '667', 'ljha00rd5mfbou38ohetbkh8f259t7rf', '98', '1449634761', '1');
INSERT INTO `jrkj_member_city` VALUES ('787', '667', 'ljha00rd5mfbou38ohetbkh8f259t7rf', '65', '1449634803', '1');
INSERT INTO `jrkj_member_city` VALUES ('788', '667', 'ljha00rd5mfbou38ohetbkh8f259t7rf', '31', '1449634822', '1');
INSERT INTO `jrkj_member_city` VALUES ('789', '667', 'ljha00rd5mfbou38ohetbkh8f259t7rf', '17', '1450061393', '2');
INSERT INTO `jrkj_member_city` VALUES ('790', '667', 'ljha00rd5mfbou38ohetbkh8f259t7rf', '16', '1450061462', '2');
INSERT INTO `jrkj_member_city` VALUES ('791', '0', 'm7r60f5r6qiglqqpc128m6bcl7p2el8h', '16', '1449651979', '1');
INSERT INTO `jrkj_member_city` VALUES ('792', '0', '833q4p4v0lcgdlcg09m7ts31v2gvqsvs', '17', '1449659503', '2');
INSERT INTO `jrkj_member_city` VALUES ('793', '0', 're0rqkuer2uplda6bc0veaut5gbeqfdh', '16', '1449667463', '1');
INSERT INTO `jrkj_member_city` VALUES ('794', '89', 'e190ufuf6ntnlpeejlad5gr5vk7c0n3a', '28', '1449712142', '1');
INSERT INTO `jrkj_member_city` VALUES ('795', '0', '5gcc7q381etc7dkg2il2eu3ute0hdhnp', '17', '1449722097', '1');
INSERT INTO `jrkj_member_city` VALUES ('796', '0', '6g90iqcvio40nnar78k4uv1uvt80ts3b', '17', '1449722683', '1');
INSERT INTO `jrkj_member_city` VALUES ('797', '0', '9jj82o53tbfdccsuhfsv0nv3977tvmul', '95', '1449736877', '1');
INSERT INTO `jrkj_member_city` VALUES ('798', '0', '9jj82o53tbfdccsuhfsv0nv3977tvmul', '16', '1449736883', '1');
INSERT INTO `jrkj_member_city` VALUES ('799', '0', '38km92a8ueam4eg1dutb5lfh0ien5ntp', '17', '1449737520', '1');
INSERT INTO `jrkj_member_city` VALUES ('800', '0', 'ucndfvp9iqbctgoomui01e2srpkh08si', '65', '1449750241', '1');
INSERT INTO `jrkj_member_city` VALUES ('801', '891', 'iocd0uhi9nbijip0a3k0b8umk6e22gie', '17', '1449906188', '3');
INSERT INTO `jrkj_member_city` VALUES ('802', '969', '0h7cs6ffthnk96e77i0ng76ppsesnqn5', '17', '1449758775', '1');
INSERT INTO `jrkj_member_city` VALUES ('803', '0', 'oholdmmjukcomer19u9m52fcehqtfirr', '17', '1449759668', '1');
INSERT INTO `jrkj_member_city` VALUES ('804', '0', '04b1fv1gccdm31gb1vok7r59meclqqvm', '28', '1449763765', '1');
INSERT INTO `jrkj_member_city` VALUES ('805', '0', '04b1fv1gccdm31gb1vok7r59meclqqvm', '16', '1449763782', '1');
INSERT INTO `jrkj_member_city` VALUES ('806', '0', '8v82dn8vp3einvq9r5cbsel96tk8bh3g', '17', '1449766723', '2');
INSERT INTO `jrkj_member_city` VALUES ('807', '0', '8v82dn8vp3einvq9r5cbsel96tk8bh3g', '65', '1449766608', '1');
INSERT INTO `jrkj_member_city` VALUES ('808', '0', '8v82dn8vp3einvq9r5cbsel96tk8bh3g', '73', '1449766627', '1');
INSERT INTO `jrkj_member_city` VALUES ('809', '0', '8v82dn8vp3einvq9r5cbsel96tk8bh3g', '89', '1449766639', '1');
INSERT INTO `jrkj_member_city` VALUES ('810', '0', '8v82dn8vp3einvq9r5cbsel96tk8bh3g', '16', '1449766717', '1');
INSERT INTO `jrkj_member_city` VALUES ('811', '0', '4eef807qopnsm7lpea9e8dpfukk865t2', '17', '1449796584', '1');
INSERT INTO `jrkj_member_city` VALUES ('812', '0', '4eef807qopnsm7lpea9e8dpfukk865t2', '39', '1449796770', '2');
INSERT INTO `jrkj_member_city` VALUES ('813', '0', '4eef807qopnsm7lpea9e8dpfukk865t2', '33', '1449796782', '1');
INSERT INTO `jrkj_member_city` VALUES ('814', '0', '4eef807qopnsm7lpea9e8dpfukk865t2', '65', '1449796792', '1');
INSERT INTO `jrkj_member_city` VALUES ('815', '0', '4eef807qopnsm7lpea9e8dpfukk865t2', '73', '1449796803', '1');
INSERT INTO `jrkj_member_city` VALUES ('816', '0', '4eef807qopnsm7lpea9e8dpfukk865t2', '16', '1449796821', '1');
INSERT INTO `jrkj_member_city` VALUES ('817', '916', 'fs0kujm114u9u9krvknijr45b92vbl2k', '95', '1450019851', '3');
INSERT INTO `jrkj_member_city` VALUES ('818', '916', 'fs0kujm114u9u9krvknijr45b92vbl2k', '16', '1449819948', '1');
INSERT INTO `jrkj_member_city` VALUES ('819', '0', 'ero6fc55m3g0tct2mqlettd0liv3rtnl', '17', '1449821886', '1');
INSERT INTO `jrkj_member_city` VALUES ('820', '0', 'qnnkf7umdg6af40qbsqa83h8gj04mhqi', '17', '1449822105', '1');
INSERT INTO `jrkj_member_city` VALUES ('821', '916', 'fs0kujm114u9u9krvknijr45b92vbl2k', '18', '1450019935', '2');
INSERT INTO `jrkj_member_city` VALUES ('822', '978', 'vrmdc51sjs08gmbvdr084nqut9rnhsim', '25', '1449844274', '1');
INSERT INTO `jrkj_member_city` VALUES ('823', '978', 'vrmdc51sjs08gmbvdr084nqut9rnhsim', '16', '1449846083', '2');
INSERT INTO `jrkj_member_city` VALUES ('824', '0', '8n7oir0dkvn44v8l7piqr181n97a3tug', '18', '1449892661', '1');
INSERT INTO `jrkj_member_city` VALUES ('825', '0', '180rtccge62ink8i44i50opv57n4kdau', '36', '1449903374', '1');
INSERT INTO `jrkj_member_city` VALUES ('826', '0', '180rtccge62ink8i44i50opv57n4kdau', '16', '1450268581', '3');
INSERT INTO `jrkj_member_city` VALUES ('827', '106', '008f0qht1crhnthv0qk136724s3j2hmp', '95', '1449911124', '1');
INSERT INTO `jrkj_member_city` VALUES ('828', '0', '18buf08h3injd1dgd8cr7d215cpn33t8', '17', '1449911131', '1');
INSERT INTO `jrkj_member_city` VALUES ('829', '0', 'n19a3vspqjms1skj9a9toof2bjvhnqdn', '17', '1449914838', '1');
INSERT INTO `jrkj_member_city` VALUES ('830', '966', '7hkl8gnuqd6pa4t903l395ius886hicv', '17', '1449915254', '1');
INSERT INTO `jrkj_member_city` VALUES ('831', '928', '7do6gjse6ln92bo1orp6dmkg9umr3pki', '16', '1449919774', '1');
INSERT INTO `jrkj_member_city` VALUES ('832', '900', '3p9b91r8l88b6qh2i3h4kb54f3imvi22', '17', '1450161951', '6');
INSERT INTO `jrkj_member_city` VALUES ('833', '0', '8lfmttd1po19nt2t6h0o5bgvm6vcvhir', '17', '1449985002', '1');
INSERT INTO `jrkj_member_city` VALUES ('834', '0', 'jan32tsf1tiujm25480niub75rl0dk2d', '16', '1449996065', '1');
INSERT INTO `jrkj_member_city` VALUES ('835', '0', '180rtccge62ink8i44i50opv57n4kdau', '65', '1449996447', '1');
INSERT INTO `jrkj_member_city` VALUES ('836', '995', 'jan32tsf1tiujm25480niub75rl0dk2d', '17', '1450006493', '2');
INSERT INTO `jrkj_member_city` VALUES ('837', '995', 'jan32tsf1tiujm25480niub75rl0dk2d', '24', '1450006474', '1');
INSERT INTO `jrkj_member_city` VALUES ('838', '995', 'jan32tsf1tiujm25480niub75rl0dk2d', '31', '1450006540', '1');
INSERT INTO `jrkj_member_city` VALUES ('839', '995', 'jan32tsf1tiujm25480niub75rl0dk2d', '27', '1450006841', '1');
INSERT INTO `jrkj_member_city` VALUES ('840', '995', 'jan32tsf1tiujm25480niub75rl0dk2d', '28', '1450006872', '1');
INSERT INTO `jrkj_member_city` VALUES ('841', '916', 'fs0kujm114u9u9krvknijr45b92vbl2k', '65', '1450019951', '1');
INSERT INTO `jrkj_member_city` VALUES ('842', '0', 'of4j5ktvpsmbum6t7hqquisqmd5vjgtq', '24', '1450050300', '1');
INSERT INTO `jrkj_member_city` VALUES ('843', '0', 'of4j5ktvpsmbum6t7hqquisqmd5vjgtq', '17', '1450050316', '1');
INSERT INTO `jrkj_member_city` VALUES ('844', '0', 'of4j5ktvpsmbum6t7hqquisqmd5vjgtq', '16', '1450050366', '1');
INSERT INTO `jrkj_member_city` VALUES ('845', '0', 'i5ija8ulr0l5vkq2rd6dje0e5s2m7376', '17', '1450065064', '1');
INSERT INTO `jrkj_member_city` VALUES ('846', '0', 'i5ija8ulr0l5vkq2rd6dje0e5s2m7376', '16', '1450073504', '1');
INSERT INTO `jrkj_member_city` VALUES ('847', '848', 'nagh67ehrpu0hdo4i6mmnrkgu3ua935i', '17', '1450089278', '1');
INSERT INTO `jrkj_member_city` VALUES ('848', '94', 'impa6n5orhenldr59bsgcni0nep0g215', '65', '1450097806', '1');
INSERT INTO `jrkj_member_city` VALUES ('849', '0', 'd9a8ict6ff8vf6ekk640meudbfl09rs8', '29', '1450102754', '1');
INSERT INTO `jrkj_member_city` VALUES ('850', '0', 'd9a8ict6ff8vf6ekk640meudbfl09rs8', '16', '1450102777', '1');
INSERT INTO `jrkj_member_city` VALUES ('851', '0', 'dvelnptmubr0c4hbnuh859pr54l0c78c', '16', '1450106530', '1');
INSERT INTO `jrkj_member_city` VALUES ('852', '1001', 'b66lf3ej9ko1mn06kg6coar2bj3tobvl', '16', '1450150322', '1');
INSERT INTO `jrkj_member_city` VALUES ('853', '114', '9v9pp4b6dm98nvo6rjth56e4q1to533b', '89', '1450152018', '1');
INSERT INTO `jrkj_member_city` VALUES ('854', '114', '9v9pp4b6dm98nvo6rjth56e4q1to533b', '73', '1450152052', '2');
INSERT INTO `jrkj_member_city` VALUES ('855', '114', '9v9pp4b6dm98nvo6rjth56e4q1to533b', '65', '1450152037', '1');
INSERT INTO `jrkj_member_city` VALUES ('856', '114', '9v9pp4b6dm98nvo6rjth56e4q1to533b', '17', '1450152059', '1');
INSERT INTO `jrkj_member_city` VALUES ('857', '0', '99rt1pj4dvqatptp7vcj2rrh274bpnii', '17', '1450154611', '1');
INSERT INTO `jrkj_member_city` VALUES ('858', '94', 'khkrs00mcomfm89gtm4f612dt9vm26lo', '95', '1450156961', '1');
INSERT INTO `jrkj_member_city` VALUES ('859', '0', 'ttefb516psn9tevvnnaco2j9t0q03i7m', '18', '1450166755', '1');
INSERT INTO `jrkj_member_city` VALUES ('860', '140', 'vbe8tu69fb07c00ubtusbo701keq9ri0', '65', '1450169037', '1');
INSERT INTO `jrkj_member_city` VALUES ('861', '140', 'vbe8tu69fb07c00ubtusbo701keq9ri0', '89', '1450169056', '1');
INSERT INTO `jrkj_member_city` VALUES ('862', '140', 'vbe8tu69fb07c00ubtusbo701keq9ri0', '95', '1450169064', '1');
INSERT INTO `jrkj_member_city` VALUES ('863', '980', '8n7oir0dkvn44v8l7piqr181n97a3tug', '18', '1450184826', '1');
INSERT INTO `jrkj_member_city` VALUES ('864', '772', 'gvom14l3tnbu7935lln3i3t95c6ac43p', '16', '1450243874', '1');
INSERT INTO `jrkj_member_city` VALUES ('865', '916', 'fs0kujm114u9u9krvknijr45b92vbl2k', '85', '1450250233', '1');
INSERT INTO `jrkj_member_city` VALUES ('866', '0', '2307rueiu2h4jhu8jqi96isvq3h17efg', '17', '1450323941', '4');
INSERT INTO `jrkj_member_city` VALUES ('867', '0', '180rtccge62ink8i44i50opv57n4kdau', '89', '1450266198', '1');
INSERT INTO `jrkj_member_city` VALUES ('868', '967', 'e54s916frbrassv1jq9d0ro589ahtsv5', '18', '1450267912', '1');
INSERT INTO `jrkj_member_city` VALUES ('869', '967', 'e54s916frbrassv1jq9d0ro589ahtsv5', '16', '1450267939', '1');
INSERT INTO `jrkj_member_city` VALUES ('870', '0', '2307rueiu2h4jhu8jqi96isvq3h17efg', '18', '1450322499', '1');
INSERT INTO `jrkj_member_city` VALUES ('871', '0', '2307rueiu2h4jhu8jqi96isvq3h17efg', '16', '1450323888', '1');
INSERT INTO `jrkj_member_city` VALUES ('872', '0', 'm23vi3uvcuo1hquj84ir5dv28clpqboi', '17', '1450329529', '1');
INSERT INTO `jrkj_member_city` VALUES ('873', '1011', 'ibbs26k1bcdnj09ampmiloo3i3', '39', '1452842036', '1');
INSERT INTO `jrkj_member_city` VALUES ('874', '1011', 'ibbs26k1bcdnj09ampmiloo3i3', '95', '1452842109', '1');
INSERT INTO `jrkj_member_city` VALUES ('875', '1011', 'ibbs26k1bcdnj09ampmiloo3i3', '51', '1452843884', '1');
INSERT INTO `jrkj_member_city` VALUES ('876', '1011', '8lai973tunu5041sre2d90tjs6', '16', '1453185504', '2');
INSERT INTO `jrkj_member_city` VALUES ('877', '1011', '8lai973tunu5041sre2d90tjs6', '17', '1453185267', '2');
INSERT INTO `jrkj_member_city` VALUES ('878', '0', 'kd5o7she23qhma5fd6cfhlll8d74lror', '16', '1457745171', '1');
INSERT INTO `jrkj_member_city` VALUES ('879', '0', 'kd5o7she23qhma5fd6cfhlll8d74lror', '65', '1457745178', '2');
INSERT INTO `jrkj_member_city` VALUES ('880', '0', 'kd5o7she23qhma5fd6cfhlll8d74lror', '39', '1457745189', '2');
INSERT INTO `jrkj_member_city` VALUES ('881', '0', 'j3umdcefti3258pcmm3qsre5scnd8pp6', '78', '1461033400', '2');
INSERT INTO `jrkj_member_city` VALUES ('882', '0', 'j3umdcefti3258pcmm3qsre5scnd8pp6', '17', '1461033833', '2');
INSERT INTO `jrkj_member_city` VALUES ('883', '0', 'j3umdcefti3258pcmm3qsre5scnd8pp6', '16', '1461034181', '1');
INSERT INTO `jrkj_member_city` VALUES ('884', '0', 'qb04ptm2220g10nlvhvujuh7tp342bgf', '80', '1461387375', '1');
INSERT INTO `jrkj_member_city` VALUES ('885', '0', 'hh410djmand1h743kkgf7tl9fvlrb86s', '32', '1461754893', '1');
INSERT INTO `jrkj_member_city` VALUES ('886', '22', 'cbdm60imge11b7tkebci28hib5', '89', '1462851633', '7');
INSERT INTO `jrkj_member_city` VALUES ('887', '16', 'e0p7i8kcncqs5u720q4fjmrif2', '97', '1462328622', '1');
INSERT INTO `jrkj_member_city` VALUES ('888', '0', 'ann034nmqt4psarar9q58i16b0', '97', '1462328622', '1');
INSERT INTO `jrkj_member_city` VALUES ('889', '0', 'hm2e6v5td6e0k17f2gl20puu14', '16', '1462443746', '1');
INSERT INTO `jrkj_member_city` VALUES ('890', '16', 'n2natq4ant9dm5tl0sp6d0jrf3', '18', '1462521143', '2');
INSERT INTO `jrkj_member_city` VALUES ('891', '16', '1anv2pu08hi17k84o0hj0gm5e3', '32', '1462511353', '5');
INSERT INTO `jrkj_member_city` VALUES ('892', '16', 'hu2jaa0orlbsmpe6tqjulv5mk7', '39', '1466497829', '2');
INSERT INTO `jrkj_member_city` VALUES ('893', '16', 'n2natq4ant9dm5tl0sp6d0jrf3', '33', '1462522886', '1');
INSERT INTO `jrkj_member_city` VALUES ('894', '0', '5tdkcvq3rfdd56492lstn9acv5', '16', '1462533625', '1');
INSERT INTO `jrkj_member_city` VALUES ('895', '0', 'q6t4lmvaoo4v8e0g8t53pcrcv1', '16', '1462533627', '1');
INSERT INTO `jrkj_member_city` VALUES ('896', '0', '5tdkcvq3rfdd56492lstn9acv5', '17', '1462536211', '1');
INSERT INTO `jrkj_member_city` VALUES ('897', '0', '5tdkcvq3rfdd56492lstn9acv5', '65', '1462536218', '1');
INSERT INTO `jrkj_member_city` VALUES ('898', '22', 'cbdm60imge11b7tkebci28hib5', '73', '1462851630', '5');
INSERT INTO `jrkj_member_city` VALUES ('899', '22', 'cbdm60imge11b7tkebci28hib5', '65', '1462851640', '2');
INSERT INTO `jrkj_member_city` VALUES ('900', '0', 'ob99vi3nvijd3lq9qqt46nq3k4', '16', '1463134673', '1');
INSERT INTO `jrkj_member_city` VALUES ('901', '0', 'tffjfnvu70t9q6v5mjh45kc123', '17', '1463382379', '1');
INSERT INTO `jrkj_member_city` VALUES ('902', '0', 'tffjfnvu70t9q6v5mjh45kc123', '39', '1463382383', '1');
INSERT INTO `jrkj_member_city` VALUES ('903', '0', 'tffjfnvu70t9q6v5mjh45kc123', '16', '1463382415', '2');
INSERT INTO `jrkj_member_city` VALUES ('904', '0', '71o3jv7qis3bqqk4segopppmm2', '16', '1463382399', '1');
INSERT INTO `jrkj_member_city` VALUES ('905', '0', 'gvka9hilu56juv3bnr4qedhd40', '16', '1463382425', '1');
INSERT INTO `jrkj_member_city` VALUES ('906', '0', 'vb50pn8vevs0k3bmtrkrjjljg1', '16', '1464332621', '1');
INSERT INTO `jrkj_member_city` VALUES ('907', '0', '3bt8kfd6pu08tn6psrv42c2p52', '17', '1464336544', '1');
INSERT INTO `jrkj_member_city` VALUES ('908', '0', '3bt8kfd6pu08tn6psrv42c2p52', '16', '1464336568', '1');
INSERT INTO `jrkj_member_city` VALUES ('909', '0', 'jv89misfrtc747hg8l82s1ikm2', '17', '1464752529', '1');
INSERT INTO `jrkj_member_city` VALUES ('910', '0', '32snfvhhnkufpcteoqv9epd102', '17', '1464752531', '1');
INSERT INTO `jrkj_member_city` VALUES ('911', '0', '5t93t3abmh55qa8mqrks8fr434', '17', '1464752531', '1');
INSERT INTO `jrkj_member_city` VALUES ('912', '0', 'jv89misfrtc747hg8l82s1ikm2', '65', '1464752536', '1');
INSERT INTO `jrkj_member_city` VALUES ('913', '0', 'p99f97150k2prhmr34fehboib1', '16', '1464932826', '1');
INSERT INTO `jrkj_member_city` VALUES ('914', '0', 'mhefh6aefe25t94vok9i1s6p16', '65', '1465948660', '1');
INSERT INTO `jrkj_member_city` VALUES ('915', '0', 'mhefh6aefe25t94vok9i1s6p16', '16', '1465948674', '1');
INSERT INTO `jrkj_member_city` VALUES ('916', '0', 'c6cdvufd346ss2t3amra2i5po6', '16', '1465952691', '1');
INSERT INTO `jrkj_member_city` VALUES ('917', '31', 'n1slj1us857cnggmk732t5tsa4', '42', '1466051565', '1');
INSERT INTO `jrkj_member_city` VALUES ('918', '0', 'ccp0khkm8urf6ttcqt5v9ildk0', '16', '1466479307', '1');
INSERT INTO `jrkj_member_city` VALUES ('919', '0', 'e0f2njsj5vhj2ub8hbkpg2bsl0', '16', '1466479308', '1');
INSERT INTO `jrkj_member_city` VALUES ('920', '0', 'mi0p530s01tfsd7mq68tvsarj5', '17', '1466481754', '1');
INSERT INTO `jrkj_member_city` VALUES ('921', '0', 'eds96sa0287jomjonrjstoh466', '17', '1466481754', '1');
INSERT INTO `jrkj_member_city` VALUES ('922', '0', '2v51f9iqev2aa556516c73mfe1', '17', '1466481760', '1');
INSERT INTO `jrkj_member_city` VALUES ('923', '0', 'mi0p530s01tfsd7mq68tvsarj5', '16', '1466481772', '1');
INSERT INTO `jrkj_member_city` VALUES ('924', '0', '44fti8l322sdt19edvvs57iin0', '17', '1466586375', '1');
INSERT INTO `jrkj_member_city` VALUES ('925', '22', 'msa4062cvmnr7q9e402thcnvk4', '39', '1467109203', '3');
INSERT INTO `jrkj_member_city` VALUES ('926', '0', 'ph94aap6vfp8via5a0dhqc1270', '39', '1466586384', '1');
INSERT INTO `jrkj_member_city` VALUES ('927', '0', '44fti8l322sdt19edvvs57iin0', '89', '1466586384', '1');
INSERT INTO `jrkj_member_city` VALUES ('928', '0', 'pkhngn9t4gonhjsemsscfefj60', '89', '1466586385', '1');
INSERT INTO `jrkj_member_city` VALUES ('929', '0', 't27qacr7g36meni9o45fv5cu34', '39', '1466586389', '1');
INSERT INTO `jrkj_member_city` VALUES ('930', '0', '44fti8l322sdt19edvvs57iin0', '16', '1466586389', '1');
INSERT INTO `jrkj_member_city` VALUES ('931', '0', 'cluc30eotitqohr2sr949sqvo4', '16', '1466641526', '2');
INSERT INTO `jrkj_member_city` VALUES ('932', '0', 'mppfhm86kdr9qtbjuf29ugutb3', '16', '1466666388', '1');
INSERT INTO `jrkj_member_city` VALUES ('933', '22', '86lv6kld3rppcm92uke5753bi0', '34', '1466675515', '1');
INSERT INTO `jrkj_member_city` VALUES ('934', '0', '6bu2clsad0hrbod400778jdg70', '34', '1466675519', '1');
INSERT INTO `jrkj_member_city` VALUES ('935', '22', '3vhcfi0jdlq3a403c0pgr4eri2', '35', '1466734516', '1');
INSERT INTO `jrkj_member_city` VALUES ('936', '0', 'm19j7snecduevemiffsnal8n15', '35', '1466734516', '1');
INSERT INTO `jrkj_member_city` VALUES ('937', '0', 'igsopt8i7rvfmq04akarjo85r1', '39', '1466736776', '1');
INSERT INTO `jrkj_member_city` VALUES ('938', '22', 'cluc30eotitqohr2sr949sqvo4', '37', '1466737447', '1');
INSERT INTO `jrkj_member_city` VALUES ('939', '0', 'cd3lfg3voobv1ivl18c1fhgjb2', '37', '1466737448', '1');
INSERT INTO `jrkj_member_city` VALUES ('940', '22', '3vhcfi0jdlq3a403c0pgr4eri2', '30', '1466738563', '1');
INSERT INTO `jrkj_member_city` VALUES ('941', '0', '4dclo4su8sn966uqev3dibv5v3', '30', '1466738564', '1');
INSERT INTO `jrkj_member_city` VALUES ('942', '0', '3h86n1mv2777705koluqe8j4r1', '17', '1466738576', '1');
INSERT INTO `jrkj_member_city` VALUES ('943', '0', '6089pemlhctst4eomgc69r4r87', '16', '1466740348', '1');
INSERT INTO `jrkj_member_city` VALUES ('944', '0', 'n3t9p27rro13js98d5i45vr2m6', '16', '1466746879', '1');
INSERT INTO `jrkj_member_city` VALUES ('945', '22', 'ceg3a8rsufcia1ecl027948ro3', '79', '1466762034', '1');
INSERT INTO `jrkj_member_city` VALUES ('946', '0', 'fn8leujkrti0pr6k682ha99nl0', '79', '1466762048', '1');
INSERT INTO `jrkj_member_city` VALUES ('947', '0', '63r8hj22mkqb6fdghvfmv01ab2', '87', '1466764470', '1');
INSERT INTO `jrkj_member_city` VALUES ('948', '0', '6dbipfvdn7q6nr04dbb0v5rjo0', '46', '1466764506', '1');
INSERT INTO `jrkj_member_city` VALUES ('949', '22', 'j9q9clca928gqr4macpolf0o96', '46', '1466764506', '1');
INSERT INTO `jrkj_member_city` VALUES ('950', '0', '63r8hj22mkqb6fdghvfmv01ab2', '16', '1466764512', '1');
INSERT INTO `jrkj_member_city` VALUES ('951', '22', 'j9q9clca928gqr4macpolf0o96', '98', '1466764568', '1');
INSERT INTO `jrkj_member_city` VALUES ('952', '0', '902pmccv87spjui0o1bgmp5us4', '98', '1466764568', '1');
INSERT INTO `jrkj_member_city` VALUES ('953', '0', 'r9v0fdulep0f9j800b808ahsq3', '66', '1466765050', '1');
INSERT INTO `jrkj_member_city` VALUES ('954', '22', 'j9q9clca928gqr4macpolf0o96', '66', '1466765050', '1');
INSERT INTO `jrkj_member_city` VALUES ('955', '0', 's7uuq8aqp927h4qluea5m6vtb6', '39', '1467109203', '1');
INSERT INTO `jrkj_member_city` VALUES ('956', '0', 'j88v3ov7i27l0c9lgtmlngv5n3', '16', '1467109224', '1');
INSERT INTO `jrkj_member_city` VALUES ('957', '0', 'n9al0aeg4ahcla36b9s8i329u6', '46', '1467172812', '1');
INSERT INTO `jrkj_member_city` VALUES ('958', '0', 'n9al0aeg4ahcla36b9s8i329u6', '17', '1467172820', '1');
INSERT INTO `jrkj_member_city` VALUES ('959', '0', 'n9al0aeg4ahcla36b9s8i329u6', '73', '1467172827', '1');
INSERT INTO `jrkj_member_city` VALUES ('960', '0', 'dgij3oqcto0m40bva3e0h46lt5', '73', '1467172827', '1');
INSERT INTO `jrkj_member_city` VALUES ('961', '22', 'n2l96ig5kvgb1u1sscu2l8qgt4', '78', '1467972954', '1');
INSERT INTO `jrkj_member_city` VALUES ('962', '0', '4aaqfbocumu0f3mn5uf9ml72c7', '78', '1467972954', '1');
INSERT INTO `jrkj_member_city` VALUES ('963', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '65', '1475545160', '1');
INSERT INTO `jrkj_member_city` VALUES ('964', '0', '1b5600iak11gc6ra0la6plbnk2cvlb2v', '17', '1475552866', '1');
INSERT INTO `jrkj_member_city` VALUES ('965', '0', '1b5600iak11gc6ra0la6plbnk2cvlb2v', '97', '1475557314', '2');
INSERT INTO `jrkj_member_city` VALUES ('966', '0', '1b5600iak11gc6ra0la6plbnk2cvlb2v', '37', '1475557319', '1');
INSERT INTO `jrkj_member_city` VALUES ('967', '0', '1b5600iak11gc6ra0la6plbnk2cvlb2v', '16', '1475565033', '3');
INSERT INTO `jrkj_member_city` VALUES ('968', '0', '1b5600iak11gc6ra0la6plbnk2cvlb2v', '39', '1475566082', '2');
INSERT INTO `jrkj_member_city` VALUES ('969', '0', '1b5600iak11gc6ra0la6plbnk2cvlb2v', '32', '1475558757', '1');
INSERT INTO `jrkj_member_city` VALUES ('970', '0', '1b5600iak11gc6ra0la6plbnk2cvlb2v', '28', '1475566086', '1');
INSERT INTO `jrkj_member_city` VALUES ('971', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '51', '1475652230', '2');
INSERT INTO `jrkj_member_city` VALUES ('972', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '97', '1475639079', '1');
INSERT INTO `jrkj_member_city` VALUES ('973', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '17', '1475652196', '2');
INSERT INTO `jrkj_member_city` VALUES ('974', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '53', '1475639836', '1');
INSERT INTO `jrkj_member_city` VALUES ('975', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '95', '1475643856', '1');
INSERT INTO `jrkj_member_city` VALUES ('976', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '71', '1475643869', '1');
INSERT INTO `jrkj_member_city` VALUES ('977', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '16', '1475655736', '3');
INSERT INTO `jrkj_member_city` VALUES ('978', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '32', '1475652469', '3');
INSERT INTO `jrkj_member_city` VALUES ('979', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '18', '1475656812', '2');
INSERT INTO `jrkj_member_city` VALUES ('980', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '73', '1475650897', '1');
INSERT INTO `jrkj_member_city` VALUES ('981', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '88', '1475651359', '1');
INSERT INTO `jrkj_member_city` VALUES ('982', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '39', '1475652239', '1');
INSERT INTO `jrkj_member_city` VALUES ('983', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '66', '1475652259', '1');
INSERT INTO `jrkj_member_city` VALUES ('984', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '79', '1475652279', '1');
INSERT INTO `jrkj_member_city` VALUES ('985', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '55', '1475652316', '1');
INSERT INTO `jrkj_member_city` VALUES ('986', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '35', '1475655331', '2');
INSERT INTO `jrkj_member_city` VALUES ('987', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '36', '1475659249', '1');
INSERT INTO `jrkj_member_city` VALUES ('988', '0', 'jt3aneod7eqpdvfa3us7sv0veg82fd5n', '89', '1475659270', '1');
INSERT INTO `jrkj_member_city` VALUES ('989', '0', '8proeishn8lr3ml3lbsf82ir5epjvodp', '73', '1475714892', '1');
INSERT INTO `jrkj_member_city` VALUES ('990', '0', 'hsukbdoo4gqsn25stg5nahj37ud381gf', '89', '1475823663', '1');
INSERT INTO `jrkj_member_city` VALUES ('991', '0', '9jn1e4h52g3l6s0vko5t3lqrgde3ii1v', '89', '1475823850', '1');
INSERT INTO `jrkj_member_city` VALUES ('992', '0', 'hsukbdoo4gqsn25stg5nahj37ud381gf', '39', '1475824427', '1');
INSERT INTO `jrkj_member_city` VALUES ('993', '0', 'n2uqlo39fbu5u56jq8dqsl2g5l9ljrfl', '39', '1475824613', '1');
INSERT INTO `jrkj_member_city` VALUES ('994', '0', 'ibgovva43kt3tqp1la8bmvv9movh3d0b', '39', '1475824805', '1');
INSERT INTO `jrkj_member_city` VALUES ('995', '0', 'cr7kv9ata90bk55g8ihlfipqaeo6chuu', '16', '1475829663', '1');
INSERT INTO `jrkj_member_city` VALUES ('996', '0', 'eoo6s7pkubsn0na1kk1nncmt5tl2ec2l', '16', '1475829849', '1');
INSERT INTO `jrkj_member_city` VALUES ('997', '0', 'oc760em6rp2pg31hhdcbihi4ehfhddgv', '16', '1475830144', '1');
INSERT INTO `jrkj_member_city` VALUES ('998', '0', 'oc760em6rp2pg31hhdcbihi4ehfhddgv', '89', '1475830148', '1');
INSERT INTO `jrkj_member_city` VALUES ('999', '0', 'oc760em6rp2pg31hhdcbihi4ehfhddgv', '95', '1475830157', '1');
INSERT INTO `jrkj_member_city` VALUES ('1000', '0', '1rrvod1ndhv4v67kamr692fvb7qdnt7u', '39', '1475830952', '1');
INSERT INTO `jrkj_member_city` VALUES ('1001', '0', 'pihk9cdub33f6j212ip1ih3n3b3nbple', '33', '1475831461', '1');
INSERT INTO `jrkj_member_city` VALUES ('1002', '0', 'ci4323acv8vfhtpldkpch3gttbj0nsms', '72', '1475831593', '1');
INSERT INTO `jrkj_member_city` VALUES ('1003', '0', 'k1h2kgjlca0d2bflsf5k2oqbtnafck7p', '46', '1475831692', '1');
INSERT INTO `jrkj_member_city` VALUES ('1004', '0', 'ljlhh4m1159vtlk39r2ie4m5ujam57k0', '33', '1475832169', '3');
INSERT INTO `jrkj_member_city` VALUES ('1005', '0', 'ljlhh4m1159vtlk39r2ie4m5ujam57k0', '39', '1475832157', '2');
INSERT INTO `jrkj_member_city` VALUES ('1006', '0', '0hprp2uf41t7vsrebd5cpge9hot9r447', '55', '1475832081', '1');
INSERT INTO `jrkj_member_city` VALUES ('1007', '0', '0hprp2uf41t7vsrebd5cpge9hot9r447', '39', '1475832095', '1');
INSERT INTO `jrkj_member_city` VALUES ('1008', '0', 'ljlhh4m1159vtlk39r2ie4m5ujam57k0', '66', '1475832161', '1');
INSERT INTO `jrkj_member_city` VALUES ('1009', '0', 'vrvj1eke9squmsbhp6ognlodugk35stj', '55', '1475832188', '1');
INSERT INTO `jrkj_member_city` VALUES ('1010', '0', 'vrvj1eke9squmsbhp6ognlodugk35stj', '25', '1475832192', '1');
INSERT INTO `jrkj_member_city` VALUES ('1011', '0', 'kat247h7jrm7vt8rmv6n8hhd3lu3his0', '42', '1475832228', '1');
INSERT INTO `jrkj_member_city` VALUES ('1012', '0', 'kat247h7jrm7vt8rmv6n8hhd3lu3his0', '46', '1475832233', '1');
INSERT INTO `jrkj_member_city` VALUES ('1013', '0', 'kat247h7jrm7vt8rmv6n8hhd3lu3his0', '66', '1475832237', '1');
INSERT INTO `jrkj_member_city` VALUES ('1014', '0', 'vrvj1eke9squmsbhp6ognlodugk35stj', '39', '1475832405', '1');
INSERT INTO `jrkj_member_city` VALUES ('1015', '0', 'vrvj1eke9squmsbhp6ognlodugk35stj', '66', '1475832552', '4');
INSERT INTO `jrkj_member_city` VALUES ('1016', '0', 'vrvj1eke9squmsbhp6ognlodugk35stj', '89', '1475832493', '1');
INSERT INTO `jrkj_member_city` VALUES ('1017', '0', 'vrvj1eke9squmsbhp6ognlodugk35stj', '52', '1475832506', '1');
INSERT INTO `jrkj_member_city` VALUES ('1018', '0', 'vrvj1eke9squmsbhp6ognlodugk35stj', '56', '1475832533', '1');
INSERT INTO `jrkj_member_city` VALUES ('1019', '0', 'vrvj1eke9squmsbhp6ognlodugk35stj', '43', '1475832546', '1');
INSERT INTO `jrkj_member_city` VALUES ('1020', '0', 'gqigck64tih08d9p4vles3nm4jaudpku', '66', '1475832904', '4');
INSERT INTO `jrkj_member_city` VALUES ('1021', '0', 'gqigck64tih08d9p4vles3nm4jaudpku', '42', '1475832711', '1');
INSERT INTO `jrkj_member_city` VALUES ('1022', '0', 'gqigck64tih08d9p4vles3nm4jaudpku', '95', '1475832721', '1');
INSERT INTO `jrkj_member_city` VALUES ('1023', '0', 'gqigck64tih08d9p4vles3nm4jaudpku', '55', '1475832724', '1');
INSERT INTO `jrkj_member_city` VALUES ('1024', '0', 'gqigck64tih08d9p4vles3nm4jaudpku', '28', '1475832907', '1');
INSERT INTO `jrkj_member_city` VALUES ('1025', '0', 'gqigck64tih08d9p4vles3nm4jaudpku', '67', '1475832959', '1');
INSERT INTO `jrkj_member_city` VALUES ('1026', '0', 'gqigck64tih08d9p4vles3nm4jaudpku', '89', '1475833672', '1');
INSERT INTO `jrkj_member_city` VALUES ('1027', '0', 'kat247h7jrm7vt8rmv6n8hhd3lu3his0', '45', '1475834936', '1');
INSERT INTO `jrkj_member_city` VALUES ('1028', '0', 'jk6s20u3r7m9ncdpq5idkhnqr3u1e9o6', '16', '1475834983', '1');
INSERT INTO `jrkj_member_city` VALUES ('1029', '0', 'jk6s20u3r7m9ncdpq5idkhnqr3u1e9o6', '32', '1475835041', '1');
INSERT INTO `jrkj_member_city` VALUES ('1030', '0', 'e3u2ctd2vadsul1r5pihin1op56600ql', '73', '1475890793', '1');
INSERT INTO `jrkj_member_city` VALUES ('1031', '0', 'e3u2ctd2vadsul1r5pihin1op56600ql', '101', '1475890813', '1');
INSERT INTO `jrkj_member_city` VALUES ('1032', '0', 'qp4p3lhskjdmli73vig214k860b4uipe', '73', '1475890981', '1');
INSERT INTO `jrkj_member_city` VALUES ('1033', '0', 'e4ua6770msgrooe6kun4ddpfg92j7jl1', '101', '1475890999', '1');
INSERT INTO `jrkj_member_city` VALUES ('1034', '0', 'pfm0u59mtdnv45g3j87cf8rcpok41f2m', '101', '1475891002', '1');
INSERT INTO `jrkj_member_city` VALUES ('1035', '0', '870g0mnsefmvq3irqqt9hbm5vrs3sf70', '73', '1475891168', '1');
INSERT INTO `jrkj_member_city` VALUES ('1036', '0', '3rhccl29t09u3iqu59jeguliv48itt7d', '101', '1475891277', '1');
INSERT INTO `jrkj_member_city` VALUES ('1037', '0', '13f7uajq9m8nhs72d5qm1higplu92si1', '104', '1475891406', '1');
INSERT INTO `jrkj_member_city` VALUES ('1038', '0', 'abeadhsl6niiq9tij79u3smc5hh55t6k', '104', '1475891592', '1');
INSERT INTO `jrkj_member_city` VALUES ('1039', '0', 'ir7glo93k45qt3db6mh44j68hlckqlup', '104', '1475891780', '1');
INSERT INTO `jrkj_member_city` VALUES ('1040', '0', '7homs44q4270ndkbg0s3dtm32ckh22vo', '39', '1475892150', '1');
INSERT INTO `jrkj_member_city` VALUES ('1041', '0', '7homs44q4270ndkbg0s3dtm32ckh22vo', '16', '1475892155', '1');
INSERT INTO `jrkj_member_city` VALUES ('1042', '0', '5orkhpt358jf2uf2h417p2hj9fvacmca', '45', '1475892647', '1');
INSERT INTO `jrkj_member_city` VALUES ('1043', '0', '5orkhpt358jf2uf2h417p2hj9fvacmca', '16', '1475892772', '1');
INSERT INTO `jrkj_member_city` VALUES ('1044', '0', 'qvrmb29tm72rg78u5ddt3ld8qmchvr7t', '89', '1475892827', '1');
INSERT INTO `jrkj_member_city` VALUES ('1045', '0', 'qvrmb29tm72rg78u5ddt3ld8qmchvr7t', '16', '1475898511', '4');
INSERT INTO `jrkj_member_city` VALUES ('1046', '0', 'qvrmb29tm72rg78u5ddt3ld8qmchvr7t', '65', '1475898713', '2');
INSERT INTO `jrkj_member_city` VALUES ('1047', '0', 'qvrmb29tm72rg78u5ddt3ld8qmchvr7t', '17', '1475898596', '3');
INSERT INTO `jrkj_member_city` VALUES ('1048', '0', 'qvrmb29tm72rg78u5ddt3ld8qmchvr7t', '97', '1475893438', '1');
INSERT INTO `jrkj_member_city` VALUES ('1049', '0', 'qvrmb29tm72rg78u5ddt3ld8qmchvr7t', '24', '1475898614', '2');
INSERT INTO `jrkj_member_city` VALUES ('1050', '0', 'qvrmb29tm72rg78u5ddt3ld8qmchvr7t', '39', '1475897377', '1');
INSERT INTO `jrkj_member_city` VALUES ('1051', '0', 'qvrmb29tm72rg78u5ddt3ld8qmchvr7t', '28', '1475898580', '1');
INSERT INTO `jrkj_member_city` VALUES ('1052', '0', 'qvrmb29tm72rg78u5ddt3ld8qmchvr7t', '31', '1475898670', '1');
INSERT INTO `jrkj_member_city` VALUES ('1053', '0', 'qvrmb29tm72rg78u5ddt3ld8qmchvr7t', '62', '1475898676', '1');
INSERT INTO `jrkj_member_city` VALUES ('1054', '0', 'qvrmb29tm72rg78u5ddt3ld8qmchvr7t', '37', '1475898688', '1');
INSERT INTO `jrkj_member_city` VALUES ('1055', '0', 'qvrmb29tm72rg78u5ddt3ld8qmchvr7t', '101', '1475898761', '2');
INSERT INTO `jrkj_member_city` VALUES ('1056', '0', 'qvrmb29tm72rg78u5ddt3ld8qmchvr7t', '63', '1475898722', '1');
INSERT INTO `jrkj_member_city` VALUES ('1057', '0', 'qvrmb29tm72rg78u5ddt3ld8qmchvr7t', '61', '1475898735', '1');
INSERT INTO `jrkj_member_city` VALUES ('1058', '0', 'qvrmb29tm72rg78u5ddt3ld8qmchvr7t', '75', '1475898784', '2');
INSERT INTO `jrkj_member_city` VALUES ('1059', '0', 'qvrmb29tm72rg78u5ddt3ld8qmchvr7t', '54', '1475898792', '1');
INSERT INTO `jrkj_member_city` VALUES ('1060', '0', 'tnjj3dp4q97t831rbj065g6qiriipkgu', '54', '1475903808', '8');
INSERT INTO `jrkj_member_city` VALUES ('1061', '0', 'tnjj3dp4q97t831rbj065g6qiriipkgu', '24', '1475898966', '1');
INSERT INTO `jrkj_member_city` VALUES ('1062', '0', 'tnjj3dp4q97t831rbj065g6qiriipkgu', '79', '1475899240', '1');
INSERT INTO `jrkj_member_city` VALUES ('1063', '0', 'tnjj3dp4q97t831rbj065g6qiriipkgu', '102', '1475903021', '1');
INSERT INTO `jrkj_member_city` VALUES ('1064', '0', 'tnjj3dp4q97t831rbj065g6qiriipkgu', '98', '1475903032', '1');
INSERT INTO `jrkj_member_city` VALUES ('1065', '0', 'tnjj3dp4q97t831rbj065g6qiriipkgu', '17', '1475903140', '1');
INSERT INTO `jrkj_member_city` VALUES ('1066', '0', 'tnjj3dp4q97t831rbj065g6qiriipkgu', '29', '1475903757', '1');

-- ----------------------------
-- Table structure for jrkj_member_copy
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_member_copy`;
CREATE TABLE `jrkj_member_copy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `account` varchar(20) NOT NULL DEFAULT '' COMMENT '账号',
  `nickname` char(16) NOT NULL DEFAULT '' COMMENT '昵称',
  `truename` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `is_status` int(1) NOT NULL DEFAULT '1' COMMENT '用户状态 1.正常  2冻结',
  `login` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `reg_ip` char(15) NOT NULL DEFAULT '' COMMENT '注册IP',
  `invite` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` char(15) NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `update_time` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '会员状态',
  `balance` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `frozen_money` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '冻结金额',
  `rank_points` int(11) NOT NULL COMMENT '等级',
  `pay_points` int(11) NOT NULL,
  `deposit` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '保证金',
  `profit` float(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '利润',
  `level` tinyint(4) unsigned NOT NULL,
  `id_card` char(20) NOT NULL DEFAULT '' COMMENT '身份证',
  `merchant_invite` int(10) unsigned NOT NULL,
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `age` int(11) NOT NULL COMMENT '年龄',
  `evaluate` varchar(255) DEFAULT NULL COMMENT '评价',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `provice` varchar(255) DEFAULT NULL COMMENT '所在地（省）',
  `city` varchar(255) DEFAULT NULL COMMENT '所在地（市）',
  `district` varchar(255) DEFAULT NULL COMMENT '所在地（区）',
  `address` varchar(255) DEFAULT NULL COMMENT '所在地（详细地址）',
  `integral` int(20) NOT NULL DEFAULT '0' COMMENT '积分',
  `role` tinyint(1) NOT NULL DEFAULT '3' COMMENT '1修理厂2经销商 3车主',
  `is_vip` int(1) NOT NULL DEFAULT '0' COMMENT '是否VIP  0.普通  1.VIP',
  `weixin` varchar(30) DEFAULT NULL COMMENT '微信',
  `realaddress` varchar(100) DEFAULT NULL COMMENT '真实地址 ',
  `paypassword` varchar(100) DEFAULT NULL COMMENT '支付密码',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_member_copy
-- ----------------------------
INSERT INTO `jrkj_member_copy` VALUES ('42', 'shesebe', '', '杨靖', 'c6f4b02c1aa65a08af09cb8423c53c07', '15070994142', '627636297@qq.com', '1', '34', '', '0', '117.44.170.9', '1479112056', '1476955175', '1477040268', '0', '81912.00', '0.00', '0', '0', '0.00', '0.00', '0', '', '0', '1610/25/1477385703.jpeg', '0', null, '女', null, null, null, null, '10000', '3', '1', 'dsadsad', '南昌市徐家坊', 'c6f4b02c1aa65a08af09cb8423c53c07');
INSERT INTO `jrkj_member_copy` VALUES ('45', 'Songke', '', '宋科', 'c6f4b02c1aa65a08af09cb8423c53c07', '15180163170', '1633967339@qq.com', '1', '10', '', '0', '117.44.170.9', '1479126302', '1477032710', '1477041822', '0', '304.00', '0.00', '0', '0', '0.00', '0.00', '0', '', '0', '1610/23/1477184283.jpeg', '0', null, '男', null, null, null, null, '10000', '3', '1', '15180163170', '江西省南昌市解放西路258号', 'ba373cd8512d36dbe3faab713118269d');
INSERT INTO `jrkj_member_copy` VALUES ('47', 'w123456', '', '', 'c6f4b02c1aa65a08af09cb8423c53c07', '18858151090', '', '1', '1', '', '0', '', '1478571990', '1478571982', '0', '0', '0.00', '0.00', '0', '0', '0.00', '0.00', '0', '', '0', null, '0', null, null, null, null, null, null, '10', '3', '0', null, null, null);

-- ----------------------------
-- Table structure for jrkj_member_msg
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_member_msg`;
CREATE TABLE `jrkj_member_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `oid` int(11) DEFAULT NULL COMMENT '订单ID',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态 1=未读 2=已读',
  `add_time` int(11) DEFAULT NULL COMMENT '消息添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_member_msg
-- ----------------------------
INSERT INTO `jrkj_member_msg` VALUES ('1', '19', null, '2', '0');
INSERT INTO `jrkj_member_msg` VALUES ('2', '19', null, '2', '0');
INSERT INTO `jrkj_member_msg` VALUES ('3', '19', null, '2', '0');
INSERT INTO `jrkj_member_msg` VALUES ('4', '19', null, '2', '1461739126');
INSERT INTO `jrkj_member_msg` VALUES ('5', '17', null, '2', '1461739150');
INSERT INTO `jrkj_member_msg` VALUES ('6', '16', null, '2', '1462332606');
INSERT INTO `jrkj_member_msg` VALUES ('7', '17', null, '2', '1462334284');
INSERT INTO `jrkj_member_msg` VALUES ('8', '17', null, '2', '1462342888');
INSERT INTO `jrkj_member_msg` VALUES ('9', '16', null, '2', '1462343915');
INSERT INTO `jrkj_member_msg` VALUES ('10', '19', null, '2', '1462511737');
INSERT INTO `jrkj_member_msg` VALUES ('11', '16', null, '2', '1462530180');
INSERT INTO `jrkj_member_msg` VALUES ('12', '16', null, '2', '1462536472');
INSERT INTO `jrkj_member_msg` VALUES ('13', '19', null, '2', '1462614258');
INSERT INTO `jrkj_member_msg` VALUES ('14', '19', null, '2', '1462861252');
INSERT INTO `jrkj_member_msg` VALUES ('15', '19', null, '2', '1462952794');
INSERT INTO `jrkj_member_msg` VALUES ('16', '19', null, '2', '1462952896');
INSERT INTO `jrkj_member_msg` VALUES ('17', '19', null, '2', '1463015105');
INSERT INTO `jrkj_member_msg` VALUES ('18', '19', null, '2', '1463015364');
INSERT INTO `jrkj_member_msg` VALUES ('19', '19', null, '2', '1463015723');
INSERT INTO `jrkj_member_msg` VALUES ('20', '19', null, '2', '1463017533');
INSERT INTO `jrkj_member_msg` VALUES ('21', '19', null, '2', '1463032525');
INSERT INTO `jrkj_member_msg` VALUES ('22', '16', null, '2', '1463036388');
INSERT INTO `jrkj_member_msg` VALUES ('23', '19', null, '2', '1463043310');
INSERT INTO `jrkj_member_msg` VALUES ('24', '19', null, '2', '1463043367');
INSERT INTO `jrkj_member_msg` VALUES ('25', '19', null, '2', '1463043830');
INSERT INTO `jrkj_member_msg` VALUES ('26', '19', null, '2', '1463043914');
INSERT INTO `jrkj_member_msg` VALUES ('27', '16', null, '2', '1463044902');
INSERT INTO `jrkj_member_msg` VALUES ('28', '16', null, '2', '1463044985');
INSERT INTO `jrkj_member_msg` VALUES ('29', '16', null, '2', '1463045025');
INSERT INTO `jrkj_member_msg` VALUES ('30', '16', null, '2', '1463045072');
INSERT INTO `jrkj_member_msg` VALUES ('31', '16', null, '2', '1463045209');
INSERT INTO `jrkj_member_msg` VALUES ('32', '16', null, '2', '1463045581');
INSERT INTO `jrkj_member_msg` VALUES ('33', '16', null, '2', '1463045720');
INSERT INTO `jrkj_member_msg` VALUES ('34', '16', null, '2', '1463117142');
INSERT INTO `jrkj_member_msg` VALUES ('35', '16', null, '2', '1464157054');
INSERT INTO `jrkj_member_msg` VALUES ('36', '16', null, '2', '1464228569');
INSERT INTO `jrkj_member_msg` VALUES ('37', '16', null, '2', '1464254055');
INSERT INTO `jrkj_member_msg` VALUES ('38', '19', null, '2', '1464314203');
INSERT INTO `jrkj_member_msg` VALUES ('39', '19', null, '2', '1464314331');
INSERT INTO `jrkj_member_msg` VALUES ('40', '19', null, '2', '1464314857');
INSERT INTO `jrkj_member_msg` VALUES ('41', '19', null, '2', '1464315002');
INSERT INTO `jrkj_member_msg` VALUES ('42', '19', null, '2', '1464315184');
INSERT INTO `jrkj_member_msg` VALUES ('43', '19', null, '2', '1464315226');
INSERT INTO `jrkj_member_msg` VALUES ('44', '16', null, '2', '1464316342');
INSERT INTO `jrkj_member_msg` VALUES ('45', '17', null, '2', '1464318593');
INSERT INTO `jrkj_member_msg` VALUES ('46', '17', null, '2', '1464335197');
INSERT INTO `jrkj_member_msg` VALUES ('47', '16', null, '2', '1464335403');
INSERT INTO `jrkj_member_msg` VALUES ('48', '16', null, '2', '1464336743');
INSERT INTO `jrkj_member_msg` VALUES ('49', '19', null, '2', '1464400999');
INSERT INTO `jrkj_member_msg` VALUES ('50', '16', null, '2', '1464416626');
INSERT INTO `jrkj_member_msg` VALUES ('51', '16', null, '2', '1464428188');
INSERT INTO `jrkj_member_msg` VALUES ('52', '16', null, '2', '1464574810');
INSERT INTO `jrkj_member_msg` VALUES ('53', '16', null, '2', '1464575035');
INSERT INTO `jrkj_member_msg` VALUES ('54', '16', null, '2', '1464580128');
INSERT INTO `jrkj_member_msg` VALUES ('55', '16', null, '2', '1464591021');
INSERT INTO `jrkj_member_msg` VALUES ('56', '16', null, '2', '1464591039');
INSERT INTO `jrkj_member_msg` VALUES ('57', '16', null, '2', '1464593851');
INSERT INTO `jrkj_member_msg` VALUES ('58', '16', null, '2', '1464595450');
INSERT INTO `jrkj_member_msg` VALUES ('59', '19', null, '2', '1464598441');
INSERT INTO `jrkj_member_msg` VALUES ('60', '16', null, '2', '1464661510');
INSERT INTO `jrkj_member_msg` VALUES ('61', '19', null, '2', '1464680732');
INSERT INTO `jrkj_member_msg` VALUES ('62', '19', null, '2', '1464682546');
INSERT INTO `jrkj_member_msg` VALUES ('63', '19', null, '2', '1464682588');
INSERT INTO `jrkj_member_msg` VALUES ('64', '16', null, '2', '1465180974');
INSERT INTO `jrkj_member_msg` VALUES ('65', '16', null, '2', '1465184687');
INSERT INTO `jrkj_member_msg` VALUES ('66', '16', null, '2', '1465267810');
INSERT INTO `jrkj_member_msg` VALUES ('67', '16', null, '2', '1465268984');
INSERT INTO `jrkj_member_msg` VALUES ('68', '19', null, '2', '1465797514');
INSERT INTO `jrkj_member_msg` VALUES ('69', '16', null, '2', '1465871690');
INSERT INTO `jrkj_member_msg` VALUES ('70', '16', null, '2', '1465871724');
INSERT INTO `jrkj_member_msg` VALUES ('71', '16', null, '2', '1465871785');
INSERT INTO `jrkj_member_msg` VALUES ('72', '16', null, '2', '1465876081');
INSERT INTO `jrkj_member_msg` VALUES ('73', '16', null, '2', '1465892807');
INSERT INTO `jrkj_member_msg` VALUES ('74', '19', null, '2', '1465952962');
INSERT INTO `jrkj_member_msg` VALUES ('75', '16', null, '2', '1466051487');
INSERT INTO `jrkj_member_msg` VALUES ('76', '16', null, '2', '1466065890');
INSERT INTO `jrkj_member_msg` VALUES ('77', '16', null, '2', '1466067090');
INSERT INTO `jrkj_member_msg` VALUES ('78', '16', null, '2', '1466217377');
INSERT INTO `jrkj_member_msg` VALUES ('79', '19', null, '2', '1466229549');
INSERT INTO `jrkj_member_msg` VALUES ('80', '19', null, '2', '1466230340');
INSERT INTO `jrkj_member_msg` VALUES ('81', '16', null, '2', '1466484155');
INSERT INTO `jrkj_member_msg` VALUES ('82', '19', null, '2', '1466498697');
INSERT INTO `jrkj_member_msg` VALUES ('83', '19', null, '2', '1466558298');
INSERT INTO `jrkj_member_msg` VALUES ('84', '19', null, '2', '1466563394');
INSERT INTO `jrkj_member_msg` VALUES ('85', '19', null, '2', '1466566895');
INSERT INTO `jrkj_member_msg` VALUES ('86', '19', null, '2', '1466577090');
INSERT INTO `jrkj_member_msg` VALUES ('87', '19', null, '2', '1466577265');
INSERT INTO `jrkj_member_msg` VALUES ('88', '19', null, '2', '1466577406');
INSERT INTO `jrkj_member_msg` VALUES ('89', '19', null, '2', '1466582525');
INSERT INTO `jrkj_member_msg` VALUES ('90', '16', null, '2', '1466667235');
INSERT INTO `jrkj_member_msg` VALUES ('91', '17', null, '2', '1466668117');
INSERT INTO `jrkj_member_msg` VALUES ('92', '16', null, '2', '1466670248');
INSERT INTO `jrkj_member_msg` VALUES ('93', '17', null, '1', '1467167030');
INSERT INTO `jrkj_member_msg` VALUES ('94', '16', null, '2', '1467167610');
INSERT INTO `jrkj_member_msg` VALUES ('95', '17', null, '1', '1467172252');
INSERT INTO `jrkj_member_msg` VALUES ('96', '16', null, '2', '1467172326');

-- ----------------------------
-- Table structure for jrkj_member_tree
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_member_tree`;
CREATE TABLE `jrkj_member_tree` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `invite_id` int(10) unsigned NOT NULL COMMENT '邀请id为member_id',
  `pid` int(10) unsigned NOT NULL COMMENT 'tree_parent_id',
  `spid` text NOT NULL,
  `create_time` int(10) unsigned NOT NULL,
  `update_time` int(10) unsigned NOT NULL,
  `rule_id` tinyint(4) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `branch` tinyint(1) unsigned NOT NULL COMMENT '1为左区，2为右区',
  `position` tinyint(1) unsigned NOT NULL COMMENT '职位',
  `team_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `status` tinyint(1) unsigned NOT NULL,
  `province_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_member_tree
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_member_verify
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_member_verify`;
CREATE TABLE `jrkj_member_verify` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL,
  `use_time` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_member_verify
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_menu
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_menu`;
CREATE TABLE `jrkj_menu` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `controller_name` varchar(20) NOT NULL,
  `action_name` varchar(20) NOT NULL,
  `data` varchar(120) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `often` tinyint(1) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `dialog` varchar(9) NOT NULL DEFAULT '',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=356 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_menu
-- ----------------------------
INSERT INTO `jrkj_menu` VALUES ('1', '全局管理', '0', 'setting', 'index', '', '', '0', '7', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('2', '核心设置', '1', 'setting', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('3', '全局参数', '148', 'setting', 'index', '&type=site', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('4', '邮件设置', '148', 'setting', 'index', '&type=mail', '', '0', '5', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('172', '专题管理', '50', 'topic', 'index', '', '', '0', '4', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('6', '菜单管理', '2', 'menu', 'index', '', '', '0', '7', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('7', '新增', '6', 'menu', 'add', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('8', '编辑', '6', 'menu', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('9', '删除', '6', 'menu', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('10', '运营管理', '0', 'operate', 'index', '', '', '0', '5', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('11', '广告管理', '10', 'advert', 'index', '', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('12', '广告管理', '11', 'ad', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('13', '广告位管理', '11', 'adboard', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('14', '友情链接', '10', 'flink', 'index', '', '', '0', '3', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('15', '友情链接', '14', 'flink', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('16', '链接分类', '14', 'flink_cate', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('17', '新增', '15', 'flink', 'add', '', '', '0', '0', '500|200', '1');
INSERT INTO `jrkj_menu` VALUES ('18', '编辑', '15', 'flink', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('19', '删除', '15', 'flink', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('20', '新增', '16', 'flink_cate', 'add', '', '', '0', '0', '500|200', '1');
INSERT INTO `jrkj_menu` VALUES ('21', '编辑', '16', 'flink_cate', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('22', '删除', '16', 'flink_cate', 'del', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('23', '新增', '12', 'ad', 'add', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('24', '编辑', '12', 'ad', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('25', '删除', '12', 'ad', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('26', '新增', '13', 'adboard', 'add', '', '', '0', '0', '500|400', '1');
INSERT INTO `jrkj_menu` VALUES ('27', '编辑', '13', 'adboard', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('28', '删除', '13', 'adboard', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('29', '数据', '0', 'data', 'index', '', '', '0', '5', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('31', '数据库管理', '29', 'backup', 'index', '', '', '0', '2', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('32', '数据备份', '31', 'backup', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('33', '数据恢复', '31', 'backup', 'restore', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('34', '缓存管理', '254', 'cache', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('195', '登陆接口', '245', 'oauth', 'index', '', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('36', '黑名单管理', '117', 'ipban', 'index', '', '', '0', '3', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('37', '新增', '36', 'ipban', 'add', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('38', '编辑', '36', 'ipban', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('50', '商品管理', '0', 'content', 'index', '', '', '0', '3', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('51', '商品管理', '50', 'item', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('52', '商品管理', '51', 'item', 'index', '', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('54', '编辑', '52', 'article', 'edit', '', '', '0', '3', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('190', '删除', '52', 'item', 'delete', '', '', '0', '4', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('56', '商品分类', '51', 'item_cate', 'index', '', '', '0', '6', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('57', '新增', '56', 'item_cate', 'add', '', '', '0', '0', '520|360', '1');
INSERT INTO `jrkj_menu` VALUES ('58', '编辑', '56', 'article_cate', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('59', '删除', '56', 'article_cate', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('60', '管理员管理', '1', 'admin', 'index', '', '', '0', '4', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('61', '管理员管理', '60', 'admin', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('62', '新增', '61', 'admin', 'add', '', '', '0', '0', '500|200', '1');
INSERT INTO `jrkj_menu` VALUES ('63', '编辑', '61', 'admin', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('64', '删除', '61', 'admin', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('65', '角色管理', '60', 'admin_role', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('66', '新增', '65', 'admin_role', 'add', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('70', '会员管理', '0', 'member', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('119', '新增', '149', 'member', 'add', '', '', '0', '3', '500|500', '1');
INSERT INTO `jrkj_menu` VALUES ('118', '编辑', '149', 'member', 'edit', '', '', '0', '4', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('117', '用户管理', '70', 'member', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('156', '栏目管理', '154', 'article_cate', 'index', '', '', '0', '3', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('151', '导航设置', '216', 'nav', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('149', '用户管理', '117', 'member', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('150', '删除', '149', 'member', 'delete', '', '', '0', '5', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('152', '主导航', '151', 'nav', 'index', '&type=main', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('153', '底部导航', '151', 'nav', 'index', '&type=bottom', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('154', '文章管理', '10', 'article', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('155', '文章管理', '154', 'article', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('148', '站点设置', '2', 'setting', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('157', '添加文章', '155', 'article', 'add', '', '', '0', '2', '', '1');
INSERT INTO `jrkj_menu` VALUES ('158', '编辑', '155', 'article', 'edit', '', '', '0', '3', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('159', '删除', '155', 'article', 'delete', '', '', '0', '4', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('160', '新增', '156', 'article_cate', 'add', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('161', '编辑', '156', 'article_cate', '编辑', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('162', '删除', '156', 'article_cate', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('174', '专题列表', '172', 'topic', 'index', '', '', '0', '3', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('175', '新增', '174', 'topic', 'add', '', '', '0', '0', '', '1');
INSERT INTO `jrkj_menu` VALUES ('176', '编辑', '174', 'topic', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('177', '删除', '174', 'topic', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('178', '敏感词管理', '254', 'badword', 'index', '', '', '0', '4', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('179', '新增', '178', 'badword', 'add', '', '', '0', '0', '500|300', '1');
INSERT INTO `jrkj_menu` VALUES ('180', '编辑', '178', 'badword', 'edit', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('181', '删除', '36', 'ipban', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('182', '删除', '178', 'badword', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('184', '标签管理', '254', 'tag', 'index', '', '', '0', '3', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('185', '商品接口', '245', 'item_site', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('186', '商品评论', '51', 'item_comment', 'index', '', '', '0', '7', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('187', '删除', '186', 'item_comment', 'delete', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('250', '一键删除', '51', 'item', 'delete_search', '', '', '0', '5', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('198', '新增', '196', 'message', 'add', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('249', '添加商品', '51', 'item', 'add', '', '', '0', '3', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('269', '积分设置', '2', 'score', 'setting', '', '', '0', '3', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('212', '日志管理', '29', 'log', 'index', '', '', '0', '3', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('213', '管理员日志', '212', 'log', 'index', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('214', '用户日志', '212', 'log', 'user', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('215', '积分日志', '212', 'log', 'score', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('216', '界面设置', '1', 'setting', 'index', '&amp;type=show', '', '0', '2', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('254', '系统数据', '29', 'tag', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('232', '站内信管理', '70', 'message', 'index', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('233', '系统通知', '232', 'message', 'index', '&type=1', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('235', '通知模版', '2', 'message_tpl', 'index', '&amp;type=msg', '', '0', '4', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('236', '添加模版', '235', 'message_tpl', 'add', '', '', '0', '7', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('237', '编辑', '235', 'message_tpl', 'edit', '', '', '0', '255', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('238', '删除', '235', 'message_tpl', 'delete', '', '', '0', '255', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('240', '单页管理', '154', 'article_page', 'index', '', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('242', '积分记录', '269', 'score', 'logs', '', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('244', '应用', '0', 'plugin', 'index', '', '', '0', '6', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('245', '系统接口', '244', 'apis', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('246', '应用管理', '244', 'plugin', 'index', '', '', '0', '3', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('247', '应用中心', '246', 'plugin', 'index', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('248', '已安装应用', '246', 'plugin', 'list', '', '', '0', '0', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('252', '用户整合', '245', 'integrate', 'index', '', '', '0', '255', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('253', '图片模式', '52', 'item', 'index', '&amp;sm=image', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('267', '批量注册', '149', 'member', 'add_users', '', '', '0', '2', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('270', '邮件模板', '235', 'message_tpl', 'index', '&type=mail', '', '0', '6', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('271', '短消息模板', '235', 'message_tpl', 'index', '&type=msg', '', '0', '5', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('272', '附件设置', '148', 'setting', 'index', '&type=attachment', '', '0', '4', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('273', '显示设置', '216', 'setting', 'index', '&type=style', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('274', '模板管理', '216', 'template', 'index', '', '', '0', '3', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('275', '站点设置', '148', 'setting', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('276', '积分设置', '269', 'score', 'setting', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('277', '商品管理', '52', 'item', 'index', '', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('278', '文章管理', '155', 'article', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('279', '用户管理', '149', 'member', 'index', '', '', '0', '1', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('282', 'SEO设置', '2', 'seo', 'url', '', '', '0', '5', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('283', 'UR静态化', '282', 'seo', 'url', '', '', '0', '255', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('284', '页面SEO', '282', 'seo', 'page', '', '', '0', '255', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('285', '模块', '0', 'module', 'index', '', '', '0', '7', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('286', '注册登陆', '2', 'setting', 'user', '', '', '0', '2', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('288', '添加单页', '240', 'article_page', 'add', '', '', '0', '255', '0', '1');
INSERT INTO `jrkj_menu` VALUES ('289', '文章属性', '154', 'attr', 'index', '', '', '0', '0', '0', '0');
INSERT INTO `jrkj_menu` VALUES ('290', '编辑单页', '240', 'article_page', 'edit', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('291', '删除单页', '240', 'article_page', 'delete', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('292', '单页管理', '240', 'article_page', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('293', '文章属性', '289', 'attr', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('294', '添加', '289', 'attr', 'add', '', '', '0', '100', '500|200', '1');
INSERT INTO `jrkj_menu` VALUES ('295', '编辑', '289', 'attr', 'edit', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('296', '删除', '289', 'attr', 'delete', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('297', '互动', '285', 'hudong', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('298', '报名管理', '297', 'apply', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('299', '留言管理', '297', 'message', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('300', '商家管理', '0', 'merchant', 'index', '', '', '0', '2', '', '1');
INSERT INTO `jrkj_menu` VALUES ('301', '店铺管理', '300', 'merchant', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('302', '店铺列表', '301', 'merchant', 'index', '', '', '0', '95', '', '1');
INSERT INTO `jrkj_menu` VALUES ('344', '优惠卷', '0', 'Coupons', 'index', '', '', '0', '4', '', '0');
INSERT INTO `jrkj_menu` VALUES ('304', '分布区域', '301', 'place', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('305', '添加', '304', 'place', 'add', '', '', '0', '100', '500|300', '1');
INSERT INTO `jrkj_menu` VALUES ('306', '商品类型', '51', 'item_type', 'index', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('307', '添加类型', '306', 'item_type', 'add', '', '', '0', '100', '500|300', '1');
INSERT INTO `jrkj_menu` VALUES ('308', '类型属性', '51', 'attribute', 'index', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('309', '添加属性', '308', 'attribute', 'add', '', '', '0', '100', '500|400', '1');
INSERT INTO `jrkj_menu` VALUES ('310', '属性值', '51', 'attribute_value', 'index', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('311', '添加属性值', '310', 'attribute_value', 'add', '', '', '0', '100', '500|300', '1');
INSERT INTO `jrkj_menu` VALUES ('312', '机构管理', '0', 'wealth', 'index', '', '', '0', '6', '', '0');
INSERT INTO `jrkj_menu` VALUES ('313', '创富设置', '312', 'wealth', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('314', '规则管理', '313', 'wealth_rule', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('315', '添加', '314', 'wealth_rule', 'add', '', '', '0', '100', '500|300', '1');
INSERT INTO `jrkj_menu` VALUES ('316', '团队管理', '313', 'member_tree', 'index', '', '', '0', '90', '', '1');
INSERT INTO `jrkj_menu` VALUES ('317', '添加', '316', 'member_tree', 'add', '', '', '0', '100', '500|300', '1');
INSERT INTO `jrkj_menu` VALUES ('318', '账户明细', '117', 'account_log', 'index', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('319', '添加', '318', 'account_log', 'add', '', '', '0', '100', '500|400', '0');
INSERT INTO `jrkj_menu` VALUES ('320', '交易管理', '0', 'pay_record', 'index', '', '', '0', '4', '', '1');
INSERT INTO `jrkj_menu` VALUES ('321', '交易管理', '320', 'pay_record', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('322', '交易记录', '321', 'pay_record', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('323', '商家结算', '321', 'settlement', 'index', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('324', '添加', '323', 'settlement', 'add', '', '', '0', '100', '500|300', '1');
INSERT INTO `jrkj_menu` VALUES ('325', '流水记录', '321', 'account_log', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('326', '会员激活', '313', 'wealth_apply', 'index', '&amp;type=1', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('327', '取现申请', '321', 'withdraw', 'index', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('328', '添加', '184', 'tag', 'add', '', '', '0', '100', '500|200', '1');
INSERT INTO `jrkj_menu` VALUES ('329', '商品审核', '51', 'item', 'index', '&amp;status=0', '', '0', '1', '', '1');
INSERT INTO `jrkj_menu` VALUES ('330', '审核店铺', '301', 'merchant', 'index', '&amp;status=2', '', '0', '90', '', '1');
INSERT INTO `jrkj_menu` VALUES ('331', '忠实用户', '117', 'member', 'loyal', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('332', '会员升级', '313', 'wealth_apply', 'index', '&amp;type=2', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('333', '订单管理', '321', 'order', 'index', '', '', '0', '50', '', '1');
INSERT INTO `jrkj_menu` VALUES ('334', '用户提现', '321', 'withdraw', 'index', '&amp;platform=wealth', '', '0', '51', '', '1');
INSERT INTO `jrkj_menu` VALUES ('335', '商家提现', '321', 'withdraw', 'index', '&amp;platform=merchant', '', '0', '52', '', '0');
INSERT INTO `jrkj_menu` VALUES ('336', '预存记录', '321', 'account_log', 'deposit', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('337', '退款记录', '321', 'refund', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('338', '结算中心', '301', 'settlement', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('339', '消费记录', '321', 'consumer', 'index', '', '', '0', '50', '', '0');
INSERT INTO `jrkj_menu` VALUES ('340', '积分兑换', '321', 'order', 'index_integral', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('341', '模板选择', '301', 'Moban', 'index', '', '', '0', '100', '', '0');
INSERT INTO `jrkj_menu` VALUES ('343', '添加店铺', '301', 'merchant', 'add', '', '', '0', '96', '', '1');
INSERT INTO `jrkj_menu` VALUES ('346', '优惠卷', '344', 'Coupons', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('347', '优惠卷列表', '346', 'coupons', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('348', '已发放优惠卷', '346', 'coupons', 'use_it', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('350', '添加优惠卷', '346', 'coupons', 'add', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('351', '积分商城', '0', 'integral', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('352', '积分商城', '351', 'integral', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('353', '积分商品列表', '352', 'integral', 'index', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('354', '添加积分商品', '352', 'integral', 'add', '', '', '0', '100', '', '1');
INSERT INTO `jrkj_menu` VALUES ('355', '兑换记录', '352', 'integral', 'list1', '', '', '0', '100', '', '1');

-- ----------------------------
-- Table structure for jrkj_merchant
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_merchant`;
CREATE TABLE `jrkj_merchant` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '商户名',
  `address` varchar(150) NOT NULL DEFAULT '' COMMENT '地址地址',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '店铺电话',
  `qq` varchar(20) NOT NULL DEFAULT '' COMMENT '店铺qq',
  `rate` tinyint(2) unsigned NOT NULL DEFAULT '5' COMMENT '分成比例 （%）',
  `logo` text NOT NULL COMMENT 'logo图片',
  `latitude` varchar(20) NOT NULL DEFAULT '' COMMENT '经纬度',
  `city_code` int(10) unsigned NOT NULL COMMENT '城市code',
  `province_id` int(11) NOT NULL COMMENT '省 place表',
  `city_id` int(10) unsigned NOT NULL COMMENT '市 place表',
  `place_id` int(11) NOT NULL DEFAULT '0' COMMENT '城市/区域 place表中的id ,如青山湖区',
  `district_id` int(10) unsigned NOT NULL COMMENT '区 place表',
  `per_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '人均消费',
  `office_hours` varchar(30) NOT NULL DEFAULT '' COMMENT '营业时间',
  `ordid` smallint(5) NOT NULL DEFAULT '1000' COMMENT '排序id',
  `intro` text NOT NULL COMMENT '简介',
  `info` text NOT NULL COMMENT '内容',
  `hits` int(20) NOT NULL DEFAULT '0' COMMENT '点击量（人气）',
  `is_home` int(1) NOT NULL DEFAULT '0' COMMENT '是否在首页推荐',
  `is_vip` int(1) NOT NULL DEFAULT '0' COMMENT '是否是VIP',
  `create_time` int(10) unsigned NOT NULL,
  `update_time` int(10) unsigned NOT NULL,
  `tags` varchar(150) NOT NULL DEFAULT '' COMMENT '标签',
  `owner` varchar(30) NOT NULL DEFAULT '' COMMENT '业主',
  `company` varchar(50) NOT NULL DEFAULT '' COMMENT '公司',
  `deliver_free` int(10) unsigned NOT NULL COMMENT '包邮起步价',
  `deliver` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_invoice` tinyint(1) NOT NULL DEFAULT '0' COMMENT '发票',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 1.退回    2.待审核    3.闭店中    4.营业中    5.已解约    ',
  `invite_id` int(10) unsigned NOT NULL COMMENT '推荐人id',
  `member_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `longitude` varchar(20) NOT NULL DEFAULT '' COMMENT '经纬度',
  `merchant_category_id` int(10) unsigned NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '店铺类型 0：O2O 1：BSC',
  `bankname` varchar(20) NOT NULL DEFAULT '' COMMENT '开户行',
  `branch` varchar(30) NOT NULL DEFAULT '' COMMENT '所在分支行',
  `uname` varchar(30) NOT NULL DEFAULT '' COMMENT '开户名',
  `bank_account` varchar(20) NOT NULL DEFAULT '' COMMENT '银行帐号',
  `settlement_type` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '结算模式',
  `refund_reason` varchar(255) NOT NULL DEFAULT '',
  `nav_id` varchar(255) NOT NULL DEFAULT '' COMMENT '商户设置的导航id(多个用逗号连接)',
  `comname` varchar(100) NOT NULL COMMENT '公司名字',
  `zhizhao` text NOT NULL COMMENT '营业执照',
  `shenfen1` text NOT NULL COMMENT '身份证正面',
  `shenfen2` text NOT NULL COMMENT '身份证反面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_merchant
-- ----------------------------
INSERT INTO `jrkj_merchant` VALUES ('1', '江西力威家具有限公司 ', '青云谱区广州路魏玛峰尚', '13576085791', '1633967339', '0', '5800a5c1936b4.jpg', '28.679961', '0', '14', '16', '110', '110', '0.00', '', '1000', '几年来，力威秉承“用诚恳的态度、优良的品质、完善的服务打动顾客”的经营理念', '&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;江西力威家具有限公司（南昌办公家具）多年来一直致力于办公家具的设计、开发、生产，销售和服务形成了具有自我品牌、自主知识产权的系列产品，成功地完成了一大批党政机关、大型企事业办公 家具项目的配套工程，赢得了广大客户的高度赞誉，在业界确立了一定的优势地位。几年来，力威秉承“用诚恳的态度、优良的品质、完善的服务打动顾客”的经营理念，并不断强化“专业专注，全心服务”的服务理念。凭借长期积累的专业化生产经验，高品质系列化的产品，极具市场竞争优势多层次价格，以及专业快捷的配送和安装服务，雄踞于竞争激烈的办公家具市场。&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;公司管理严密，已通过ISO9001:2000国际质量体系认证，ISO14001环境认证，凭借丰富的生产经验，以及对国内外的时尚把握，所生产的办公家具、书架、文件架、屏风桌椅、实木家具等，不仅工艺精湛，且外形典雅大方，深受广大用户好评。公司部断扩大技术创新的力度，研制开发的多种金融保险柜系列，为加入WTO体系在创生辉。 公司以优良的技术、齐全的品种、新颖的款式、优质的服务而闻名遐迩。“一流的产品，一流的服务时我们的宗旨。” 追求卓越是力威家具人的理念，公司竭诚欢迎海内外客户莅临指导，携手共创美好之明天.....', '231', '1', '1', '1457753933', '1476506733', '', '', '', '0', '0.00', '0', '4', '0', '3', '115.896075', '0', '1', '', '', '', '', '1', '', '', '江西力威家具有限公司 ', '', '', '');
INSERT INTO `jrkj_merchant` VALUES ('2', '法兰琳家居', '南昌市高新区天祥大道佳海产业园6栋', '', '', '4', '5801782a713e9.jpg', '28.711898', '0', '14', '16', '116', '116', '66.00', '', '1000', '法兰琳实业总部坐落于广东省佛山市南海区，公司始于1991年，发展至今近30年', '&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;法兰琳实业总部坐落于广东省佛山市南海区，公司始于1991年，发展至今近30年，一直以最热情的服务，最时尚的产品，最优异的质量取得市场认可。\r\n        公司发展至今，在业务渠道覆盖全国各省各市各县，在各大经济省区均设有子公司，福建法兰琳实业有限公司，江西法兰琳实业有限公司，湖南法兰琳实业有限公司，河南法兰琳实业有限公司，等等各大省会城市。&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;江西法兰琳实业有限公司坐落于江西南昌瑶湖大学城附近（详细地址：南昌市高新区天祥大道佳海产业园6栋）\r\n        公司主要生产家具系列产品，设计元素均出自国际设计师，产品主要有，法式浪漫套房系列，欧式宫庭套房系列，小美乡村系列，北欧名镇系列，现强势推出私人订制系列。', '59', '1', '1', '1458025288', '1476506927', '', '', '', '0', '0.00', '0', '4', '0', '12', '115.966218', '0', '1', '', '', '', '', '1', '', '', '江西法兰琳实业有限公司', '', '', '');
INSERT INTO `jrkj_merchant` VALUES ('3', '南昌日昌实业有限公司', '南昌市高新开发区创新一路春秋创新园', '15180163170', '1633967339', '0', '5801793138aa1.jpg', '28.73691', '0', '14', '16', '116', '116', '50.00', '', '1500', '倡导绿色环保家具、注重家具品质设计，为客户规划营造出环保、健康、舒适、愉悦的商务空间', '南昌日昌实业有限公司是一家集设计、研发、营销于一体的专业化家具公司，坐落于美丽的艾溪湖畔。公司专注于办公家具及酒店家具的生产及销售，是“中国驰名商标”、全国办公家具十大品牌之一的 “SUNON圣奥” 家具的品牌加盟商，以“让工作成为一种享受”为主导的理念，倡导绿色环保家具、注重家具品质设计，为客户规划营造出环保、健康、舒适、愉悦的商务空间。 &amp;lt;br /&amp;gt;&lt;br /&gt;\r\n&amp;lt;br /&amp;gt;&lt;br /&gt;\r\n&amp;amp;nbsp;企业精神：敬天爱人。&amp;nbsp;&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 企业使命：幸福员工、感动客户、引领行业、回馈社会。&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 企业愿景：成为国内一流、备受信赖的办公空间规划领航者&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 公司理念：品质为先，诚信为本；完善自我，追求卓越。&lt;br /&gt;', '33', '1', '0', '1461115850', '1476506974', '', '', '', '0', '0.00', '0', '4', '0', '16', '115.85036', '0', '1', '', '', '', '', '2', '', '', '南昌日昌实业有限公司', '', '', '');
INSERT INTO `jrkj_merchant` VALUES ('4', '江西爵派家具厂', '江西省南昌市青云谱区昌南工业园', '15180163170', '1633967339', '5', '5801a5a5e4bfc.jpg', '28.71087', '163', '14', '16', '116', '116', '0.00', '', '1000', '公司一贯承诺：只要您提供图样或产品描述，剩下的由我们去做', '&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;江西爵派家具厂是一家集设计、生产、销售文化行业货架及相关办公设备的大型企业。公司一贯承诺：只要您提供图样或产品描述，剩下的由我们去做。从CAD、3D制图，到产品设计、场地规划、原料加工、成品出厂均经反复、严格的审核，务必令每件出厂的产品都成为实用与艺术完美结合的精品。具有承接各种大型办公写字楼家具配套的能力，为广大企业、政府机关、院校、军警、医疗等单位提供标准系列办公家具。本公司拥有大批的专业技术人员，具有完善的生产管理和大型的生产厂房，样品展示厅。&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;办公家具系列是我们的主打产品，有大班台，会议桌，文件柜，讲台，诉讼台，沙发，茶几，茶水柜，班椅等，采用优良木质，分为怀旧 经典，欧陆风情，尊贵家族等组合，实用，气派，时尚，彰显独特个性。&lt;br /&gt;\r\n货架系列是本公司一大亮点系列主要有有书架、音像架、,家用家具图书店展示架、图书馆展示架、音像店展示架、食品店展示架、服装店展示架、油品店展示架、便利店展示架、超市展示架、药店展示架、专卖店展示架、化妆品店展示架、饰品店展示架、及其它各种展示架,产品的特点是款式新颖实用,结构简单大方,拆装携带方便。在江西货架行业享有极高的声誉。&lt;br /&gt;\r\n&lt;span style=&quot;line-height:1.5;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&quot;爵派&quot;以人为本，致力于品质与创新的结合；专注于文化行业的展示货架规划设计，充分适应不同客户现代化展示管理的要求；公司旗下 拥有一批高素质管理人才、资深设计师、高级销售工程师、高级技工，为客户提供方便、快捷、满意的一站式服务需求,公司通过《ISO9001~2000》国际质量认证，并导入《ISO14001~2000》环保管理体系。并严格按照其管理标准实施运作，从而确保产品质量稳定，品质优异。&lt;/span&gt; \r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&quot;爵派&quot;秉承“创新、务实、优质”的经营理念，凭着质地考究、做工精湛、款式时尚的产品，及优质高效的售后服务，不断得到广大客户 的青睐与认可，用户已遍布全国十七个省市。&amp;nbsp;&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&quot;我们坚信：每一件产品，都将是“&quot;爵派&quot;”的品牌使者；每一个设计作品，都将是“&quot;爵派&quot;”的形象代言人；每一次服务，都将是“&quot;爵 派&quot;”的口碑缔造者；我们不懈努力，勇于创新，将“&quot;爵派&quot;”打造成文化行业货架及设备的知名品牌。欢迎广大顾客洽谈合作。&lt;/span&gt; \r\n&lt;/p&gt;', '68', '1', '1', '1463641566', '1476508019', '', '', '', '0', '0.00', '0', '4', '0', '40', '115.872862', '0', '1', '', '', '', '', '2', '', '', '江西爵派家具厂', '', '', '');
INSERT INTO `jrkj_merchant` VALUES ('5', '南昌恒宇办公家具厂', '江西省南昌市昌南工业园 ', '15180163170', '1633967339', '0', '5801b34b1715e.jpg', '28.680796', '0', '14', '16', '116', '116', '0.00', '', '1000', '本公司坚持“以客户为中心，以技术为基础，以质量求生存，以诚信求发展”的企业方针。', '南昌恒宇家具厂位于江西省南昌市昌南工业园，是一家集开发、设计、制造、销售于一体的专业办公家具生产厂家，企业成立多年以来，始终坚持“以客户为中心，以技术为基础，以质量求生存，以诚信求发展”的企业方针。在江西这片红土地上服务出了大批的客户。 \r\n    本企业拥有专业的技术人员和完善的服务团队，具有承接各种大型办公写字楼家具的配套实力，免费提供上门设计、出图，并以快捷的运送，专业的安装等一条龙服务，为阁下创造品位超凡，优质舒适的办公环境。产品分为：办公台组合系列，座椅系列，屏风及高隔间系列，文件储存柜系列，沙发茶几系列，酒店及商用家具系列等。', '22', '1', '0', '1462505783', '1476506533', '', '', '', '0', '0.00', '0', '4', '0', '43', '115.910124', '0', '1', '', '', '', '', '2', '', '', '南昌恒宇办公家具厂', '', '', '');

-- ----------------------------
-- Table structure for jrkj_merchantcharge
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_merchantcharge`;
CREATE TABLE `jrkj_merchantcharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(8) DEFAULT NULL COMMENT '商家id',
  `charge` double(8,2) DEFAULT NULL COMMENT '支付给商家的佣金',
  `settle` tinyint(1) DEFAULT '0' COMMENT '状态',
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `create_time` int(11) DEFAULT NULL COMMENT '时间',
  `settlement_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_merchantcharge
-- ----------------------------
INSERT INTO `jrkj_merchantcharge` VALUES ('6', '9', '0.35', '1', '125', '1456479927', '3');
INSERT INTO `jrkj_merchantcharge` VALUES ('7', '4', '0.10', '1', '125', '1456479927', '4');

-- ----------------------------
-- Table structure for jrkj_merchant_category
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_merchant_category`;
CREATE TABLE `jrkj_merchant_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordid` tinyint(4) unsigned NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `parentId` (`status`),
  KEY `shopId` (`merchant_id`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_merchant_category
-- ----------------------------
INSERT INTO `jrkj_merchant_category` VALUES ('1', '0', '衣服', '1', '1', '100');
INSERT INTO `jrkj_merchant_category` VALUES ('2', '1', 'T恤', '1', '1', '100');
INSERT INTO `jrkj_merchant_category` VALUES ('3', '1', '衬衫', '1', '1', '100');
INSERT INTO `jrkj_merchant_category` VALUES ('4', '0', '裤子', '1', '1', '100');
INSERT INTO `jrkj_merchant_category` VALUES ('5', '4', '七分裤', '1', '1', '100');
INSERT INTO `jrkj_merchant_category` VALUES ('6', '0', '主打产品', '2', '1', '100');

-- ----------------------------
-- Table structure for jrkj_merchant_img
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_merchant_img`;
CREATE TABLE `jrkj_merchant_img` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `merchant_id` int(20) NOT NULL COMMENT '店铺ID',
  `url` varchar(100) NOT NULL COMMENT '图片',
  `add_time` int(15) NOT NULL COMMENT '添加时间',
  `ordid` int(10) NOT NULL DEFAULT '255' COMMENT '排序ID',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1.可用  0.不可用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_merchant_img
-- ----------------------------
INSERT INTO `jrkj_merchant_img` VALUES ('1', '6', '2016/10/580069ce06764.jpg', '1476422094', '255', '1');
INSERT INTO `jrkj_merchant_img` VALUES ('16', '4', '2016/10/5801a928a9407.jpg', '1476503848', '255', '1');
INSERT INTO `jrkj_merchant_img` VALUES ('12', '3', '2016/10/5801799c9b934.jpg', '1476491676', '255', '1');
INSERT INTO `jrkj_merchant_img` VALUES ('13', '3', '2016/10/58017a3718e6f.jpg', '1476491831', '255', '1');
INSERT INTO `jrkj_merchant_img` VALUES ('11', '2', '2016/10/5800b0b001c84.jpg', '1476440240', '255', '1');
INSERT INTO `jrkj_merchant_img` VALUES ('14', '1', '2016/10/58018f8d20322.jpg', '1476497293', '255', '1');
INSERT INTO `jrkj_merchant_img` VALUES ('15', '1', '2016/10/58018ff884dc8.jpg', '1476497400', '255', '1');
INSERT INTO `jrkj_merchant_img` VALUES ('17', '4', '2016/10/5801a94d4653b.jpg', '1476503885', '255', '1');

-- ----------------------------
-- Table structure for jrkj_message
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_message`;
CREATE TABLE `jrkj_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `add_time` int(11) NOT NULL,
  `add_ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jrkj_message
-- ----------------------------
INSERT INTO `jrkj_message` VALUES ('1', '刘石头', '13767114126', '905974667', '1428044100', '127.0.0.1', '1', '我就试试留言板有没有用！');

-- ----------------------------
-- Table structure for jrkj_order
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_order`;
CREATE TABLE `jrkj_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(255) NOT NULL DEFAULT '' COMMENT '订单编号',
  `all_dingdan` varchar(20) NOT NULL COMMENT '总订单号',
  `member_id` varchar(50) NOT NULL DEFAULT '0' COMMENT '用户id',
  `pay_id` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '支付方式 4= 余额  1= 支付宝 2 = 微信 3 =货到',
  `pay_name` varchar(120) DEFAULT '' COMMENT '支付名称',
  `amount` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '商品价',
  `yun` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '运费',
  `market_amount` float(20,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `settle_amount` float(20,2) unsigned DEFAULT '0.00' COMMENT '结算价',
  `ship_fee` decimal(10,2) DEFAULT '0.00',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `create_time` int(20) unsigned NOT NULL,
  `update_time` int(20) unsigned NOT NULL,
  `address_id` int(10) unsigned NOT NULL COMMENT '收货地址id',
  `tel` varchar(50) NOT NULL COMMENT '收货人电话',
  `consignee` varchar(20) NOT NULL COMMENT '收货人',
  `address` text NOT NULL COMMENT '地址',
  `status` tinyint(2) unsigned DEFAULT '1' COMMENT ' 1 => ''待支付'',    2 => ''待发货'', 3 => ''待收货'',  4 => ''待评价'',   5 => ''已评价'',  6 => ''申请退款'',  7 => ''已退款'',  8.=>'' 退款不通过'',     9=> ''已关闭'', 10 => ''已发货'',  11 => ''退款中'', 12 => ''已退款'',\r\n',
  `kuaidi` varchar(20) DEFAULT NULL COMMENT '快递单号',
  `type` varchar(15) DEFAULT '1' COMMENT '1=普通订单，2=积分兑换',
  `settle` tinyint(4) unsigned DEFAULT '0',
  `settle_id` int(10) unsigned DEFAULT NULL,
  `integral` int(20) DEFAULT '0' COMMENT '总积分，积分订单使用',
  `is_see` tinyint(1) DEFAULT '0' COMMENT '是否新订单,是否查看 1为已查看',
  `pay_time` int(10) unsigned NOT NULL COMMENT '支付时间',
  `merchant_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`member_id`),
  KEY `order_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1147 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_order
-- ----------------------------
INSERT INTO `jrkj_order` VALUES ('997', '188430640286', '', '42', '4', '', '978.00', '20.00', '1096.00', '0.00', '0.00', '', '1477274306', '1477276234', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '5', null, '1', '0', null, '0', '0', '1477276234', null);
INSERT INTO `jrkj_order` VALUES ('998', '188430664811', '', '42', '4', '', '1880.00', '30.00', '2380.00', '0.00', '0.00', '', '1477274306', '1477276234', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '4', null, '1', '0', null, '0', '0', '1477276234', null);
INSERT INTO `jrkj_order` VALUES ('1000', '188222689911', '', '42', '0', '', '1880.00', '30.00', '2380.00', '0.00', '0.00', '', '1477282226', '1477282226', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '7', null, '1', '0', null, '0', '0', '0', '2');
INSERT INTO `jrkj_order` VALUES ('1001', '188249032217', '', '45', '0', '', '500.00', '10.00', '588.00', '0.00', '0.00', '', '1477282490', '1477282490', '0', '15180163170', '宋科', '山西省长治市长治县光明南路', '6', null, '1', '0', null, '0', '0', '0', '1');
INSERT INTO `jrkj_order` VALUES ('1002', '188260449674', '', '45', '4', '', '468.00', '10.00', '568.00', '0.00', '0.00', '', '1477282604', '1477282608', '0', '15180163170', '宋科', '山西省长治市长治县光明南路', '6', null, '1', '0', null, '0', '0', '1477282608', '1');
INSERT INTO `jrkj_order` VALUES ('1003', '188260451804', '', '45', '4', '', '2900.00', '30.00', '3586.00', '0.00', '0.00', '', '1477282604', '1477282608', '0', '15180163170', '宋科', '山西省长治市长治县光明南路', '4', 'dsadasdsadsadsa', '1', '0', null, '0', '0', '1477282608', '2');
INSERT INTO `jrkj_order` VALUES ('1004', '188430217942', '', '45', '0', '', '500.00', '10.00', '588.00', '0.00', '0.00', '', '1477294302', '1477294302', '0', '15180163170', '宋科', '山西省长治市长治县光明南路', '1', null, '1', '0', null, '0', '0', '0', '1');
INSERT INTO `jrkj_order` VALUES ('1005', '188947215755', '', '45', '0', '', '468.00', '10.00', '568.00', '0.00', '0.00', '', '1477309472', '1477309472', '0', '13358652417', '刘红', '江西省南昌市青云谱区解放西路金悦凯庭4楼', '1', null, '1', '0', null, '0', '0', '0', '1');
INSERT INTO `jrkj_order` VALUES ('1006', '188195076232', '', '45', '4', '', '468.00', '10.00', '568.00', '0.00', '0.00', '要快哦', '1477351950', '1477351959', '0', '15523568475', '王明明', '山西省长治市长治县黎都大道阳明小区1栋单元203', '5', 'sadasdasdasd', '1', '0', null, '0', '0', '1477351959', '1');
INSERT INTO `jrkj_order` VALUES ('1007', '188195045206', '', '45', '4', '', '1880.00', '30.00', '2380.00', '0.00', '0.00', '要快哦', '1477351950', '1477351959', '0', '15523568475', '王明明', '山西省长治市长治县黎都大道阳明小区1栋单元203', '5', 'asdsadsad', '1', '0', null, '0', '0', '1477351959', '2');
INSERT INTO `jrkj_order` VALUES ('1008', '188756077329', '', '45', '0', '', '1880.00', '30.00', '2380.00', '0.00', '0.00', '', '1477457560', '1477457560', '0', '15523568475', '王明明', '山西省长治市长治县黎都大道阳明小区1栋单元203', '1', null, '1', '0', null, '0', '0', '0', '2');
INSERT INTO `jrkj_order` VALUES ('1009', '188789512784', '', '45', '4', '', '468.00', '10.00', '568.00', '0.00', '0.00', '', '1477527895', '1477527898', '0', '15523568475', '王明明', '山西省长治市长治县黎都大道阳明小区1栋单元203', '3', null, '1', '0', null, '0', '0', '1477527898', '1');
INSERT INTO `jrkj_order` VALUES ('1010', '188799383251', '', '45', '0', '', '1000.00', '20.00', '1176.00', '0.00', '0.00', '', '1477527993', '1477527993', '0', '15523568475', '王明明', '山西省长治市长治县黎都大道阳明小区1栋单元203', '1', null, '1', '0', null, '0', '0', '0', '1');
INSERT INTO `jrkj_order` VALUES ('1011', '188837229551', '', '42', '0', '', '1880.00', '30.00', '2380.00', '0.00', '0.00', '', '1477528372', '1477528372', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '1', null, '1', '0', null, '0', '0', '0', '2');
INSERT INTO `jrkj_order` VALUES ('1012', '188851950639', '', '42', '0', '', '238.00', '10.00', '258.00', '0.00', '0.00', '', '1477528519', '1477528519', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '1', null, '1', '0', null, '0', '0', '0', '1');
INSERT INTO `jrkj_order` VALUES ('1013', '188935866147', '', '42', '0', '', '238.00', '10.00', '258.00', '0.00', '0.00', '', '1477529358', '1477529358', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '1', null, '1', '0', null, '0', '0', '0', '1');
INSERT INTO `jrkj_order` VALUES ('1014', '188983643527', '', '42', '4', '', '500.00', '10.00', '588.00', '0.00', '0.00', '', '1477539836', '1477544652', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '3', null, '1', '0', null, '0', '0', '1477544652', '1');
INSERT INTO `jrkj_order` VALUES ('1015', '188983668236', '', '42', '0', '', '1880.00', '30.00', '2380.00', '0.00', '0.00', '', '1477539836', '1477539836', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '1', null, '1', '0', null, '0', '0', '0', '2');
INSERT INTO `jrkj_order` VALUES ('1016', '188634470940', '', '42', '4', '', '500.00', '10.00', '588.00', '0.00', '0.00', '', '1477546344', '1477546355', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '3', null, '1', '0', null, '0', '0', '1477546355', '1');
INSERT INTO `jrkj_order` VALUES ('1017', '188832196288', '', '42', '4', '', '500.00', '10.00', '588.00', '0.00', '0.00', '', '1477558321', '1477558326', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '3', null, '1', '0', null, '0', '0', '1477558326', '1');
INSERT INTO `jrkj_order` VALUES ('1018', '188913536907', '', '42', '4', '', '1880.00', '30.00', '2380.00', '0.00', '0.00', '', '1477559135', '1477559138', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '3', null, '1', '0', null, '0', '0', '1477559138', '2');
INSERT INTO `jrkj_order` VALUES ('1019', '188981224338', '', '42', '4', '', '500.00', '10.00', '588.00', '0.00', '0.00', '', '1477559812', '1477559944', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '3', null, '1', '0', null, '0', '0', '1477559944', '1');
INSERT INTO `jrkj_order` VALUES ('1020', '188004270608', '', '42', '0', '', '500.00', '10.00', '588.00', '0.00', '0.00', '', '1477560042', '1477560042', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '1', null, '1', '0', null, '0', '0', '0', '1');
INSERT INTO `jrkj_order` VALUES ('1021', '188330085907', '', '42', '0', '', '500.00', '10.00', '588.00', '0.00', '0.00', '', '1477563300', '1477563300', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '1', null, '1', '0', null, '0', '0', '0', '1');
INSERT INTO `jrkj_order` VALUES ('1022', '188350620748', '', '42', '0', '', '500.00', '10.00', '588.00', '0.00', '0.00', '', '1477563506', '1477563506', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '1', null, '1', '0', null, '0', '0', '0', '1');
INSERT INTO `jrkj_order` VALUES ('1023', '188379145322', '', '42', '0', '', '238.00', '10.00', '258.00', '0.00', '0.00', '', '1477563791', '1477563791', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '1', null, '1', '0', null, '0', '0', '0', '1');
INSERT INTO `jrkj_order` VALUES ('1024', '188516184205', '', '42', '4', '', '238.00', '10.00', '258.00', '0.00', '0.00', '', '1477565161', '1477565165', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '3', null, '1', '0', null, '0', '0', '1477565165', '1');
INSERT INTO `jrkj_order` VALUES ('1025', '188527440506', '', '42', '4', '', '238.00', '10.00', '258.00', '0.00', '0.00', '', '1477565274', '1477565278', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '3', null, '1', '0', null, '0', '0', '1477565278', '1');
INSERT INTO `jrkj_order` VALUES ('1026', '188530648224', '', '42', '4', '', '238.00', '10.00', '258.00', '0.00', '0.00', '', '1477565306', '1477565342', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '3', null, '1', '0', null, '0', '0', '1477565342', '1');
INSERT INTO `jrkj_order` VALUES ('1027', '188535424471', '', '42', '4', '', '238.00', '10.00', '258.00', '0.00', '0.00', '', '1477565354', '1477565405', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '3', null, '1', '0', null, '0', '0', '1477565405', '1');
INSERT INTO `jrkj_order` VALUES ('1028', '188654260153', '', '42', '0', '', '1880.00', '30.00', '2380.00', '0.00', '0.00', '', '1477566542', '1477566542', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '1', null, '1', '0', null, '0', '0', '0', '2');
INSERT INTO `jrkj_order` VALUES ('1029', '188153284402', '', '45', '4', '', '500.00', '10.00', '588.00', '0.00', '0.00', '', '1477611532', '1477611552', '0', '15180163170', '宋科', '山西省长治市长治县光明南路', '3', null, '1', '0', null, '0', '0', '1477611552', '1');
INSERT INTO `jrkj_order` VALUES ('1030', '188470669243', '', '45', '0', '', '5800.00', '30.00', '6200.00', '0.00', '0.00', '', '1477614706', '1477614706', '0', '15180163170', '宋科', '山西省长治市长治县光明南路', '1', null, '1', '0', null, '0', '0', '0', '1');
INSERT INTO `jrkj_order` VALUES ('1031', '188428975152', '', '42', '0', '', '1880.00', '30.00', '2380.00', '0.00', '0.00', '', '1477964289', '1477964289', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '1', null, '1', '0', null, '0', '0', '0', '2');
INSERT INTO `jrkj_order` VALUES ('1032', '188345455695', '', '42', '0', '', '1738.00', '20.00', '2022.00', '0.00', '0.00', '', '1478053455', '1478053455', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '1', null, '1', '0', null, '0', '0', '0', '1');
INSERT INTO `jrkj_order` VALUES ('1033', '188970231815', '', '42', '0', '', '1880.00', '30.00', '2380.00', '0.00', '0.00', '', '1478229702', '1478229702', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '1', null, '1', '0', null, '0', '0', '0', '2');
INSERT INTO `jrkj_order` VALUES ('1034', '188765693154', '', '42', '4', '', '1880.00', '30.00', '2380.00', '0.00', '0.00', '', '1478567656', '1478567659', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '3', null, '1', '0', null, '0', '0', '1478567659', '2');
INSERT INTO `jrkj_order` VALUES ('1035', '188810815393', '', '42', '4', '', '468.00', '10.00', '568.00', '0.00', '0.00', '', '1478568108', '1478568109', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '3', null, '1', '0', null, '0', '0', '1478568109', '1');
INSERT INTO `jrkj_order` VALUES ('1036', '188855650545', '', '42', '0', '', '468.00', '10.00', '568.00', '0.00', '0.00', '', '1478568556', '1478568556', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '1', null, '1', '0', null, '0', '0', '0', '1');
INSERT INTO `jrkj_order` VALUES ('1037', '188207983013', '', '42', '4', '', '1000.00', '20.00', '1176.00', '0.00', '0.00', '', '1479112079', '1479112107', '0', '15959595959', '杨靖', '重庆市重庆市九龙坡区打算打算打打', '2', null, '1', '0', null, '0', '0', '1479112107', '1');
INSERT INTO `jrkj_order` VALUES ('1138', '2018122410380710210057', '', 'Fdaxiong大熊', '0', '', '5800.00', '0.00', '0.00', '0.00', '0.00', '', '1545619087', '1545619087', '1', '188888888888', 'Fdaxiong大熊', '江西省不知道未知我也不知道', '1', null, '1', '0', null, '0', '0', '0', null);
INSERT INTO `jrkj_order` VALUES ('1139', '2018122410383810150100', '', 'Fdaxiong大熊', '0', '', '480.00', '0.00', '0.00', '0.00', '0.00', '', '1545619118', '1545619118', '1', '188888888888', 'Fdaxiong大熊', '江西省不知道未知我也不知道', '4', null, '1', '0', null, '0', '0', '0', null);
INSERT INTO `jrkj_order` VALUES ('1141', '2019010211045897539955', '', 'Fdaxiong大熊', '0', '', '5800.00', '0.00', '0.00', '0.00', '0.00', '', '1546398298', '1546398298', '1', '188888888888', 'Fdaxiong大熊', '江西省不知道未知我也不知道', '2', null, '1', '0', null, '0', '0', '0', null);
INSERT INTO `jrkj_order` VALUES ('1143', '2019010211360755100565', '', 'Fdaxiong大熊', '0', '', '470.00', '0.00', '0.00', '0.00', '0.00', '', '1546400167', '1546400167', '1', '188888888888', 'Fdaxiong大熊', '江西省不知道未知我也不知道', '2', null, '1', '0', null, '0', '0', '0', null);
INSERT INTO `jrkj_order` VALUES ('1144', '2019010211385097545051', '', 'Fdaxiong大熊', '0', '', '5800.00', '0.00', '0.00', '0.00', '0.00', '', '1546400330', '1546400330', '1', '188888888888', 'Fdaxiong大熊', '江西省不知道未知我也不知道', '3', null, '1', '0', null, '0', '0', '0', null);
INSERT INTO `jrkj_order` VALUES ('1145', '2019010211394099505252', '', 'Fdaxiong大熊', '0', '', '5800.00', '0.00', '0.00', '0.00', '0.00', '', '1546400380', '1546400380', '1', '188888888888', 'Fdaxiong大熊', '江西省不知道未知我也不知道', '2', null, '1', '0', null, '0', '0', '0', null);
INSERT INTO `jrkj_order` VALUES ('1146', '2019010414413850974952', '', 'Fdaxiong大熊', '0', '', '14740.00', '0.00', '0.00', '0.00', '0.00', '', '1546584098', '1546584098', '917', '13237017781', '陈振方', '江西省鹰潭江西师专', '2', null, '1', '0', null, '0', '0', '0', null);

-- ----------------------------
-- Table structure for jrkj_order_sku
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_order_sku`;
CREATE TABLE `jrkj_order_sku` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(20) NOT NULL DEFAULT '0' COMMENT '订单id',
  `item_id` int(20) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `item_name` varchar(120) NOT NULL DEFAULT '' COMMENT '商品名',
  `number` int(5) unsigned NOT NULL DEFAULT '1' COMMENT '数量',
  `price` float(20,2) NOT NULL DEFAULT '0.00',
  `img` varchar(150) NOT NULL DEFAULT '',
  `personal_id` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1086 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_order_sku
-- ----------------------------
INSERT INTO `jrkj_order_sku` VALUES ('997', '997', '292', '现代风格 浩一 中式风格 2.3米大班台 老板桌 经理桌', '1', '478.00', '/data/attachment/merchant/3/image/2016/10/57fe102671c29.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('998', '997', '301', '力威办公家具屏风组合工作位员工卡位职员办公桌4人位', '1', '500.00', '/data/attachment/merchant/3/image/2016/10/580193931a885.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('999', '998', '299', '布艺会客接待洽谈沙发 办公沙发 休闲沙发 商务沙发 浩彬', '1', '1880.00', '/data/attachment/merchant/12/image/2016/10/57ff495973f72.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1000', '1000', '299', '布艺会客接待洽谈沙发 办公沙发 休闲沙发 商务沙发 浩彬', '1', '1880.00', '/data/attachment/merchant/12/image/2016/10/57ff495973f72.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1001', '1001', '301', '力威办公家具屏风组合工作位员工卡位职员办公桌4人位', '1', '500.00', '/data/attachment/merchant/3/image/2016/10/580193931a885.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1002', '1002', '291', '办公家具员工桌简约职员办公桌现代屏风卡位4 6四人位电脑桌椅', '1', '468.00', '/data/attachment/merchant/3/image/2016/10/58019accd49a3.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1003', '1003', '293', '欧式田园 畅销经典款 高档水牛头层真皮床 对称式描金雕花 1.8米精致水晶拉扣床', '1', '2900.00', '/data/attachment/merchant/12/image/2016/10/57fe14c65729d.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1004', '1004', '301', '力威办公家具屏风组合工作位员工卡位职员办公桌4人位', '1', '500.00', '/data/attachment/merchant/3/image/2016/10/580193931a885.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1005', '1005', '291', '办公家具员工桌简约职员办公桌现代屏风卡位4 6四人位电脑桌椅', '1', '468.00', '/data/attachment/merchant/3/image/2016/10/58019accd49a3.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1006', '1006', '291', '办公家具员工桌简约职员办公桌现代屏风卡位4 6四人位电脑桌椅', '1', '468.00', '/data/attachment/merchant/3/image/2016/10/58019accd49a3.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1007', '1007', '299', '布艺会客接待洽谈沙发 办公沙发 休闲沙发 商务沙发 浩彬', '1', '1880.00', '/data/attachment/merchant/12/image/2016/10/57ff495973f72.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1008', '1008', '299', '布艺会客接待洽谈沙发 办公沙发 休闲沙发 商务沙发 浩彬', '1', '1880.00', '/data/attachment/merchant/12/image/2016/10/57ff495973f72.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1009', '1009', '291', '办公家具员工桌简约职员办公桌现代屏风卡位4 6四人位电脑桌椅', '1', '468.00', '/data/attachment/merchant/3/image/2016/10/58019accd49a3.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1010', '1010', '301', '力威办公家具屏风组合工作位员工卡位职员办公桌4人位', '2', '500.00', '/data/attachment/merchant/3/image/2016/10/580193931a885.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1011', '1011', '299', '布艺会客接待洽谈沙发 办公沙发 休闲沙发 商务沙发 浩彬', '1', '1880.00', '/data/attachment/merchant/12/image/2016/10/57ff495973f72.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1012', '1012', '290', '写字楼职员办公桌 屏风员工位4人位办公桌椅组合员工桌电脑桌卡座', '1', '238.00', '/data/attachment/merchant/3/image/2016/10/580197b72e9f6.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1013', '1013', '290', '写字楼职员办公桌 屏风员工位4人位办公桌椅组合员工桌电脑桌卡座', '1', '238.00', '/data/attachment/merchant/3/image/2016/10/580197b72e9f6.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1014', '1014', '301', '力威办公家具屏风组合工作位员工卡位职员办公桌4人位', '1', '500.00', '/data/attachment/merchant/3/image/2016/10/580193931a885.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1015', '1015', '299', '布艺会客接待洽谈沙发 办公沙发 休闲沙发 商务沙发 浩彬', '1', '1880.00', '/data/attachment/merchant/12/image/2016/10/57ff495973f72.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1016', '1016', '301', '力威办公家具屏风组合工作位员工卡位职员办公桌4人位', '1', '500.00', '/data/attachment/merchant/3/image/2016/10/580193931a885.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1017', '1017', '301', '力威办公家具屏风组合工作位员工卡位职员办公桌4人位', '1', '500.00', '/data/attachment/merchant/3/image/2016/10/580193931a885.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1018', '1018', '299', '布艺会客接待洽谈沙发 办公沙发 休闲沙发 商务沙发 浩彬', '1', '1880.00', '/data/attachment/merchant/12/image/2016/10/57ff495973f72.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1019', '1019', '301', '力威办公家具屏风组合工作位员工卡位职员办公桌4人位', '1', '500.00', '/data/attachment/merchant/3/image/2016/10/580193931a885.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1020', '1020', '301', '力威办公家具屏风组合工作位员工卡位职员办公桌4人位', '1', '500.00', '/data/attachment/merchant/3/image/2016/10/580193931a885.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1021', '1021', '301', '力威办公家具屏风组合工作位员工卡位职员办公桌4人位', '1', '500.00', '/data/attachment/merchant/3/image/2016/10/580193931a885.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1022', '1022', '301', '力威办公家具屏风组合工作位员工卡位职员办公桌4人位', '1', '500.00', '/data/attachment/merchant/3/image/2016/10/580193931a885.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1023', '1023', '290', '写字楼职员办公桌 屏风员工位4人位办公桌椅组合员工桌电脑桌卡座', '1', '238.00', '/data/attachment/merchant/3/image/2016/10/580197b72e9f6.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1024', '1024', '290', '写字楼职员办公桌 屏风员工位4人位办公桌椅组合员工桌电脑桌卡座', '1', '238.00', '/data/attachment/merchant/3/image/2016/10/580197b72e9f6.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1025', '1025', '290', '写字楼职员办公桌 屏风员工位4人位办公桌椅组合员工桌电脑桌卡座', '1', '238.00', '/data/attachment/merchant/3/image/2016/10/580197b72e9f6.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1026', '1026', '290', '写字楼职员办公桌 屏风员工位4人位办公桌椅组合员工桌电脑桌卡座', '1', '238.00', '/data/attachment/merchant/3/image/2016/10/580197b72e9f6.jpg', null);
INSERT INTO `jrkj_order_sku` VALUES ('1027', '1027', '290', '写字楼职员办公桌 屏风员工位4人位办公桌椅组合员工桌电脑桌卡座', '1', '238.00', '/data/attachment/merchant/3/image/2016/10/580197b72e9f6.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1028', '1028', '299', '布艺会客接待洽谈沙发 办公沙发 休闲沙发 商务沙发 浩彬', '1', '1880.00', '/data/attachment/merchant/12/image/2016/10/57ff495973f72.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1029', '1029', '301', '力威办公家具屏风组合工作位员工卡位职员办公桌4人位', '1', '500.00', '/data/attachment/merchant/3/image/2016/10/580193931a885.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1030', '1030', '289', '办公家具简约时尚现代电脑桌屏风组合职员工作卡位果绿', '1', '5800.00', '/data/attachment/merchant/3/image/2016/10/58019c7acca6b.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1031', '1031', '299', '布艺会客接待洽谈沙发 办公沙发 休闲沙发 商务沙发 浩彬', '1', '1880.00', '/data/attachment/merchant/12/image/2016/10/57ff495973f72.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1032', '1032', '301', '力威办公家具屏风组合工作位员工卡位职员办公桌4人位', '3', '500.00', '/data/attachment/merchant/3/image/2016/10/580193931a885.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1033', '1032', '290', '写字楼职员办公桌 屏风员工位4人位办公桌椅组合员工桌电脑桌卡座', '1', '238.00', '/data/attachment/merchant/3/image/2016/10/580197b72e9f6.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1034', '1033', '299', '布艺会客接待洽谈沙发 办公沙发 休闲沙发 商务沙发 浩彬', '1', '1880.00', '/data/attachment/merchant/12/image/2016/10/57ff495973f72.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1035', '1034', '299', '布艺会客接待洽谈沙发 办公沙发 休闲沙发 商务沙发 浩彬', '1', '1880.00', '/data/attachment/merchant/12/image/2016/10/57ff495973f72.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1036', '1035', '291', '办公家具员工桌简约职员办公桌现代屏风卡位4 6四人位电脑桌椅', '1', '468.00', '/data/attachment/merchant/3/image/2016/10/58019accd49a3.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1037', '1036', '291', '办公家具员工桌简约职员办公桌现代屏风卡位4 6四人位电脑桌椅', '1', '468.00', '/data/attachment/merchant/3/image/2016/10/58019accd49a3.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1038', '1037', '301', '力威办公家具屏风组合工作位员工卡位职员办公桌4人位', '2', '500.00', '/data/attachment/merchant/3/image/2016/10/580193931a885.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1043', '1102', '292', '现代风格 浩一 中式风格 2.3米大班台 老板桌 经理桌', '2', '480.00', '/img/image/3.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1070', '1136', '289', '办公家具简约时尚现代电脑桌屏风组合职员工作卡位果绿', '2', '5800.00', '/img/image/5.jpg', '2');
INSERT INTO `jrkj_order_sku` VALUES ('1071', '1136', '290', '写字楼职员办公桌 屏风员工位4人位办公桌椅组合员工桌电脑桌卡座', '1', '240.00', '/img/image/1.jpg', '2');
INSERT INTO `jrkj_order_sku` VALUES ('1072', '1137', '293', '欧式田园 畅销经典款 高档水牛头层真皮床 对称式描金雕花 1.8米精致水晶拉扣床', '1', '2900.00', '/img/image/4.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1073', '1137', '294', '活动图片', '2', '2200.00', '/img/image/6.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1074', '1137', '295', '活动图片', '1', '1900.00', '/img/image/7.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1075', '1138', '289', '办公家具简约时尚现代电脑桌屏风组合职员工作卡位果绿', '1', '5800.00', '/img/image/5.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1076', '1139', '292', '现代风格 浩一 中式风格 2.3米大班台 老板桌 经理桌', '1', '480.00', '/img/image/3.jpg', '2');
INSERT INTO `jrkj_order_sku` VALUES ('1077', '1140', '289', '办公家具简约时尚现代电脑桌屏风组合职员工作卡位果绿', '1', '5800.00', '/img/image/5.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1078', '1141', '289', '办公家具简约时尚现代电脑桌屏风组合职员工作卡位果绿', '1', '5800.00', '/img/image/5.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1079', '1143', '291', '办公家具员工桌简约职员办公桌现代屏风卡位4 6四人位电脑桌椅', '1', '470.00', '/img/image/2.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1080', '1144', '289', '办公家具简约时尚现代电脑桌屏风组合职员工作卡位果绿', '1', '5800.00', '/img/image/5.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1081', '1145', '289', '办公家具简约时尚现代电脑桌屏风组合职员工作卡位果绿', '1', '5800.00', '/img/image/5.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1082', '1146', '289', '办公家具简约时尚现代电脑桌屏风组合职员工作卡位果绿', '1', '5800.00', '/img/image/5.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1083', '1146', '289', '办公家具简约时尚现代电脑桌屏风组合职员工作卡位果绿', '2', '5800.00', '/img/image/5.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1084', '1146', '290', '写字楼职员办公桌 屏风员工位4人位办公桌椅组合员工桌电脑桌卡座', '1', '240.00', '/img/image/1.jpg', '1');
INSERT INTO `jrkj_order_sku` VALUES ('1085', '1146', '293', '欧式田园 畅销经典款 高档水牛头层真皮床 对称式描金雕花 1.8米精致水晶拉扣床', '1', '2900.00', '/img/image/4.jpg', '1');

-- ----------------------------
-- Table structure for jrkj_order_third
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_order_third`;
CREATE TABLE `jrkj_order_third` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL COMMENT '站内的订单id',
  `third_order_id` varchar(50) NOT NULL DEFAULT '' COMMENT '第三方返回的支付订单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_order_third
-- ----------------------------
INSERT INTO `jrkj_order_third` VALUES ('1', '344', '123');

-- ----------------------------
-- Table structure for jrkj_pay
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_pay`;
CREATE TABLE `jrkj_pay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(30) NOT NULL DEFAULT '',
  `out_trade_no` varchar(30) DEFAULT NULL,
  `money` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `callback` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `param` varchar(150) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_pay
-- ----------------------------
INSERT INTO `jrkj_pay` VALUES ('1', '', 'G3150626686049d', '1599.00', '0', 'home/public/pay_return', 'http://sy.0791jr.com/index.php?s=/order-index', 'a:1:{s:13:\"pay_record_id\";s:2:\"81\";}', '1458006266', '1458006266');
INSERT INTO `jrkj_pay` VALUES ('2', '', 'G3150629771351d', '1599.00', '0', 'home/public/pay_return', 'http://sy.0791jr.com/index.php?s=/order-index', 'a:1:{s:13:\"pay_record_id\";s:2:\"82\";}', '1458006297', '1458006297');
INSERT INTO `jrkj_pay` VALUES ('3', '', 'G3151241850120d', '1599.00', '0', 'home/public/pay_return', 'http://sy.0791jr.com/index.php?s=/order-index', 'a:1:{s:13:\"pay_record_id\";s:2:\"89\";}', '1458012418', '1458012418');
INSERT INTO `jrkj_pay` VALUES ('4', '', 'G3151270180742d', '1599.00', '0', 'home/public/pay_return', 'http://sy.0791jr.com/index.php?s=/order-index', 'a:1:{s:13:\"pay_record_id\";s:2:\"93\";}', '1458012701', '1458012701');
INSERT INTO `jrkj_pay` VALUES ('5', '', 'G3151271621137d', '1599.00', '0', 'home/public/pay_return', 'http://sy.0791jr.com/index.php?s=/order-index', 'a:1:{s:13:\"pay_record_id\";s:2:\"94\";}', '1458012716', '1458012716');
INSERT INTO `jrkj_pay` VALUES ('6', '', 'G3151278886940d', '1599.00', '0', 'home/public/pay_return', 'http://sy.0791jr.com/index.php?s=/order-index', 'a:1:{s:13:\"pay_record_id\";s:2:\"95\";}', '1458012788', '1458012788');
INSERT INTO `jrkj_pay` VALUES ('7', '', 'G3151336289486d', '1599.00', '0', 'home/public/pay_return', 'http://sy.0791jr.com/index.php?s=/order-index', 'a:1:{s:13:\"pay_record_id\";s:3:\"105\";}', '1458013362', '1458013362');
INSERT INTO `jrkj_pay` VALUES ('8', '', 'G3152182348276d', '2498.00', '0', 'home/public/pay_return', 'http://sy.0791jr.com/index.php?s=/order-index', 'a:1:{s:13:\"pay_record_id\";s:3:\"106\";}', '1458021823', '1458021823');
INSERT INTO `jrkj_pay` VALUES ('9', '', 'G3161910083297d', '4698.00', '0', 'home/public/pay_return', 'http://sy.0791jr.com/index.php?s=/order-index', 'a:1:{s:13:\"pay_record_id\";s:3:\"111\";}', '1458119100', '1458119100');
INSERT INTO `jrkj_pay` VALUES ('10', '', 'G4230398588320d', '45.00', '0', 'home/public/pay_return', 'http://wk.0791jr.com/index.php?s=/order-index', 'a:1:{s:13:\"pay_record_id\";s:3:\"122\";}', '1461403985', '1461403985');
INSERT INTO `jrkj_pay` VALUES ('11', '', 'G4254695620493d', '45.00', '0', 'home/public/pay_return', 'http://wk.0791jr.com/index.php?s=/order-index', 'a:1:{s:13:\"pay_record_id\";s:3:\"125\";}', '1461546956', '1461546956');
INSERT INTO `jrkj_pay` VALUES ('12', '', 'G4254696233471d', '45.00', '0', 'home/public/pay_return', 'http://wk.0791jr.com/index.php?s=/order-index', 'a:1:{s:13:\"pay_record_id\";s:3:\"126\";}', '1461546962', '1461546962');
INSERT INTO `jrkj_pay` VALUES ('13', '', 'G4254699146665d', '45.00', '0', 'home/public/pay_return', 'http://wk.0791jr.com/index.php?s=/order-index', 'a:1:{s:13:\"pay_record_id\";s:3:\"130\";}', '1461546991', '1461546991');
INSERT INTO `jrkj_pay` VALUES ('14', '', 'G4254708336550d', '45.00', '0', 'home/public/pay_return', 'http://wk.0791jr.com/index.php?s=/order-index', 'a:1:{s:13:\"pay_record_id\";s:3:\"134\";}', '1461547083', '1461547083');

-- ----------------------------
-- Table structure for jrkj_pay_record
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_pay_record`;
CREATE TABLE `jrkj_pay_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_ids` varchar(255) NOT NULL DEFAULT '',
  `member_id` int(10) unsigned NOT NULL,
  `amount` float(20,2) NOT NULL DEFAULT '0.00',
  `settle_amount` float(20,2) unsigned NOT NULL DEFAULT '0.00',
  `pay_id` tinyint(4) unsigned NOT NULL COMMENT '支付方式 4= 余额  1= 支付宝 2 = 微信',
  `create_time` int(10) unsigned NOT NULL,
  `update_time` int(10) unsigned NOT NULL,
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '1.正常',
  `pay_sn` varchar(20) NOT NULL DEFAULT '',
  `pay_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1030 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_pay_record
-- ----------------------------
INSERT INTO `jrkj_pay_record` VALUES ('999', '979', '42', '238.00', '0.00', '4', '1477040277', '1477040277', '1', '', '1477040277');
INSERT INTO `jrkj_pay_record` VALUES ('1000', '980', '45', '500.00', '0.00', '4', '1477042859', '1477042859', '1', '', '1477042859');
INSERT INTO `jrkj_pay_record` VALUES ('1001', '983', '45', '1434.00', '0.00', '4', '1477045222', '1477045222', '1', '', '1477045222');
INSERT INTO `jrkj_pay_record` VALUES ('1002', '984', '45', '468.00', '0.00', '4', '1477048649', '1477048649', '1', '', '1477048649');
INSERT INTO `jrkj_pay_record` VALUES ('1003', '987', '42', '5788.00', '0.00', '4', '1477126561', '1477126561', '1', '', '1477126561');
INSERT INTO `jrkj_pay_record` VALUES ('1004', '988', '42', '6830.00', '0.00', '4', '1477127566', '1477127566', '1', '', '1477127566');
INSERT INTO `jrkj_pay_record` VALUES ('1005', '990', '45', '510.00', '0.00', '4', '1477135251', '1477135251', '1', '', '1477135251');
INSERT INTO `jrkj_pay_record` VALUES ('1010', '997', '42', '998.00', '0.00', '4', '1477276234', '1477276234', '1', '', '1477276234');
INSERT INTO `jrkj_pay_record` VALUES ('1011', '998', '42', '1910.00', '0.00', '4', '1477276234', '1477276234', '1', '', '1477276234');
INSERT INTO `jrkj_pay_record` VALUES ('1012', '1002', '45', '478.00', '0.00', '4', '1477282608', '1477282608', '1', '', '1477282608');
INSERT INTO `jrkj_pay_record` VALUES ('1013', '1003', '45', '2930.00', '0.00', '4', '1477282608', '1477282608', '1', '', '1477282608');
INSERT INTO `jrkj_pay_record` VALUES ('1014', '1006', '45', '478.00', '0.00', '4', '1477351959', '1477351959', '1', '', '1477351959');
INSERT INTO `jrkj_pay_record` VALUES ('1015', '1007', '45', '1910.00', '0.00', '4', '1477351959', '1477351959', '1', '', '1477351959');
INSERT INTO `jrkj_pay_record` VALUES ('1016', '1009', '45', '478.00', '0.00', '4', '1477527898', '1477527898', '1', '', '1477527898');
INSERT INTO `jrkj_pay_record` VALUES ('1017', '1014', '42', '510.00', '0.00', '4', '1477544652', '1477544652', '1', '', '1477544652');
INSERT INTO `jrkj_pay_record` VALUES ('1018', '1016', '42', '510.00', '0.00', '4', '1477546356', '1477546356', '1', '', '1477546356');
INSERT INTO `jrkj_pay_record` VALUES ('1019', '1017', '42', '510.00', '0.00', '4', '1477558326', '1477558326', '1', '', '1477558326');
INSERT INTO `jrkj_pay_record` VALUES ('1020', '1018', '42', '1910.00', '0.00', '4', '1477559138', '1477559138', '1', '', '1477559138');
INSERT INTO `jrkj_pay_record` VALUES ('1021', '1019', '42', '510.00', '0.00', '4', '1477559944', '1477559944', '1', '', '1477559944');
INSERT INTO `jrkj_pay_record` VALUES ('1022', '1024', '42', '248.00', '0.00', '4', '1477565165', '1477565165', '1', '', '1477565165');
INSERT INTO `jrkj_pay_record` VALUES ('1023', '1025', '42', '248.00', '0.00', '4', '1477565278', '1477565278', '1', '', '1477565278');
INSERT INTO `jrkj_pay_record` VALUES ('1024', '1026', '42', '248.00', '0.00', '4', '1477565342', '1477565342', '1', '', '1477565342');
INSERT INTO `jrkj_pay_record` VALUES ('1025', '1027', '42', '248.00', '0.00', '4', '1477565405', '1477565405', '1', '', '1477565405');
INSERT INTO `jrkj_pay_record` VALUES ('1026', '1029', '45', '510.00', '0.00', '4', '1477611552', '1477611552', '1', '', '1477611552');
INSERT INTO `jrkj_pay_record` VALUES ('1027', '1034', '42', '1910.00', '0.00', '4', '1478567660', '1478567660', '1', '', '1478567660');
INSERT INTO `jrkj_pay_record` VALUES ('1028', '1035', '42', '478.00', '0.00', '4', '1478568109', '1478568109', '1', '', '1478568109');
INSERT INTO `jrkj_pay_record` VALUES ('1029', '1037', '42', '1020.00', '0.00', '4', '1479112107', '1479112107', '1', '', '1479112107');

-- ----------------------------
-- Table structure for jrkj_place
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_place`;
CREATE TABLE `jrkj_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `py` varchar(10) NOT NULL DEFAULT '',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `ordid` smallint(5) unsigned NOT NULL DEFAULT '100',
  `spid` varchar(255) DEFAULT NULL,
  `fcolor` varchar(8) NOT NULL DEFAULT '',
  `img` varchar(50) NOT NULL DEFAULT '',
  `bd_city_code` int(10) unsigned NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `letter` char(2) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_place
-- ----------------------------
INSERT INTO `jrkj_place` VALUES ('14', '1', '江西省', '0', 'jiangxishe', '1', '100', '0', '', '', '318', '1441946387', '1441946387', 'j', '115.676082', '27.757258', '0');
INSERT INTO `jrkj_place` VALUES ('15', '1', '安徽省', '0', '安徽省', '0', '100', '0', '', '', '127', '1441946503', '1461144264', 'a', '117.216005', '31.859252', '0');
INSERT INTO `jrkj_place` VALUES ('16', '2', '南昌', '14', 'nanchang', '1', '100', '14|', '', '', '163', '1441946622', '1443096256', 'n', '115.893528', '28.689578', '1');
INSERT INTO `jrkj_place` VALUES ('17', '2', '萍乡', '14', 'pingxiang', '0', '100', '14|', '', '', '350', '1441946694', '1461144307', 'p', '113.859917', '27.639544', '1');
INSERT INTO `jrkj_place` VALUES ('18', '2', '合肥', '15', 'hefei', '0', '100', '15|', '', '', '127', '1441946807', '1442808405', 'h', '117.282699', '31.866942', '0');
INSERT INTO `jrkj_place` VALUES ('20', '3', '南昌县', '16', 'nanchangxi', '1', '1', '14|16|', '', '', '163', '1442217521', '1442217521', 'n', '116.071261', '28.620772', '0');
INSERT INTO `jrkj_place` VALUES ('21', '3', '安源区', '17', '安源区', '0', '100', '14|17|', '', '', '350', '1442377849', '1442377849', 'a', '113.878869', '27.645395', '0');
INSERT INTO `jrkj_place` VALUES ('22', '3', '芦溪区', '17', 'luxiqu', '0', '100', '14|17|', '', '', '350', '1442377897', '1442377897', 'l', '114.070007', '27.578023', '0');
INSERT INTO `jrkj_place` VALUES ('24', '2', '九江', '14', 'jiujiang', '0', '100', '14|', '', '', '349', '1442807075', '1461144302', 'j', '115.999848', '29.71964', '0');
INSERT INTO `jrkj_place` VALUES ('25', '2', '景德镇', '14', 'jingdezhen', '0', '100', '14|', '', '', '225', '1442807123', '1461144506', 'j', '117.186523', '29.303563', '0');
INSERT INTO `jrkj_place` VALUES ('26', '2', '新余', '14', 'xinyu', '0', '100', '14|', '', '', '164', '1442807149', '1461144510', 'x', '114.947117', '27.822322', '0');
INSERT INTO `jrkj_place` VALUES ('27', '2', '鹰潭', '14', 'yingtan', '0', '100', '14|', '', '', '279', '1442807168', '1461144515', 'y', '117.03545', '28.24131', '0');
INSERT INTO `jrkj_place` VALUES ('28', '2', '赣州', '14', 'ganzhou', '0', '100', '14|', '', '', '365', '1442807180', '1461144522', 'g', '114.935909', '25.845296', '0');
INSERT INTO `jrkj_place` VALUES ('29', '2', '宜春', '14', 'yichun', '0', '100', '14|', '', '', '278', '1442807193', '1461144535', 'y', '114.400039', '27.81113', '0');
INSERT INTO `jrkj_place` VALUES ('30', '2', '上饶', '14', 'shangrao', '0', '100', '14|', '', '', '364', '1442807212', '1461144533', 's', '117.955464', '28.457623', '0');
INSERT INTO `jrkj_place` VALUES ('31', '2', '吉安', '14', 'jian', '0', '100', '14|', '', '', '318', '1442807244', '1461144528', 'j', '114.992039', '27.113848', '0');
INSERT INTO `jrkj_place` VALUES ('32', '2', '抚州', '14', 'fuzhou', '0', '100', '14|', '', '', '226', '1442807276', '1461144525', 'f', '116.360919', '27.954545', '0');
INSERT INTO `jrkj_place` VALUES ('33', '2', '蚌埠', '15', 'bengbu', '0', '100', '15|', '', '', '126', '1442808162', '1442808415', 'b', '117.35708', '32.929499', '0');
INSERT INTO `jrkj_place` VALUES ('34', '2', '芜湖', '15', 'wuhu', '0', '100', '15|', '', '', '129', '1442808185', '1442808422', 'w', '118.384108', '31.36602', '0');
INSERT INTO `jrkj_place` VALUES ('35', '2', '淮南', '15', 'huainan', '0', '100', '15|', '', '', '250', '1442808212', '1442808427', 'h', '117.018639', '32.642812', '0');
INSERT INTO `jrkj_place` VALUES ('36', '2', '马鞍山', '15', 'maanshan', '0', '100', '15|', '', '', '358', '1442808236', '1442808432', 'm', '118.515882', '31.688528', '0');
INSERT INTO `jrkj_place` VALUES ('37', '2', '淮北', '15', 'huaibei', '0', '100', '15|', '', '', '253', '1442808255', '1442808436', 'h', '116.791447', '33.960023', '0');
INSERT INTO `jrkj_place` VALUES ('38', '2', '铜陵', '15', 'tongling', '0', '100', '15|', '', '', '337', '1442808279', '1442808440', 't', '117.819429', '30.94093', '0');
INSERT INTO `jrkj_place` VALUES ('39', '2', '安庆', '15', 'anqing', '0', '100', '15|', '', '', '130', '1442808315', '1442808457', 'a', '117.058739', '30.537898', '0');
INSERT INTO `jrkj_place` VALUES ('40', '2', '黄山', '15', 'huangshan', '0', '100', '15|', '', '', '252', '1442808329', '1442808453', 'h', '118.077546', '30.277746', '0');
INSERT INTO `jrkj_place` VALUES ('41', '2', '宿州', '15', 'suzhou', '0', '100', '15|', '', '', '370', '1442808384', '1442808461', 's', '116.988692', '33.636772', '0');
INSERT INTO `jrkj_place` VALUES ('42', '2', '滁州', '15', 'chuzhou', '0', '100', '15|', '', '', '189', '1442808599', '1442808599', 'c', '118.32457', '32.317351', '0');
INSERT INTO `jrkj_place` VALUES ('43', '2', '六安', '15', 'liuan', '0', '100', '15|', '', '', '298', '1442808639', '1442808639', 'l', '116.505253', '31.755558', '0');
INSERT INTO `jrkj_place` VALUES ('44', '2', '宣城', '15', 'xuancheng', '0', '100', '15|', '', '', '190', '1442808658', '1442808658', 'x', '118.752096', '30.951642', '0');
INSERT INTO `jrkj_place` VALUES ('45', '2', '巢湖', '15', 'chaohu', '0', '100', '15|', '', '', '127', '1442808702', '1442808702', 'c', '117.88049', '31.608732', '0');
INSERT INTO `jrkj_place` VALUES ('46', '2', '池州', '15', 'chizhou', '0', '100', '15|', '', '', '299', '1442808721', '1442808721', 'c', '117.494477', '30.660019', '0');
INSERT INTO `jrkj_place` VALUES ('47', '2', '毫州', '15', 'haozhou', '0', '100', '15|', '', '', '0', '1442808738', '1442808738', 'h', '0', '0', '0');
INSERT INTO `jrkj_place` VALUES ('48', '1', '湖北省', '0', 'hubeisheng', '0', '100', '0', '', '', '217', '1442808782', '1461144270', 'h', '112.410562', '31.209316', '0');
INSERT INTO `jrkj_place` VALUES ('49', '2', '武汉', '48', 'wuhan', '0', '100', '48|', '', '', '218', '1442808846', '1442808846', 'w', '114.3162', '30.581084', '0');
INSERT INTO `jrkj_place` VALUES ('50', '2', '宜昌', '48', 'yichang', '0', '100', '48|', '', '', '270', '1442808870', '1442808870', 'y', '111.310981', '30.732758', '0');
INSERT INTO `jrkj_place` VALUES ('51', '2', '黄石', '48', 'huangshi', '0', '100', '48|', '', '', '311', '1442808883', '1442808883', 'h', '115.050683', '30.216127', '0');
INSERT INTO `jrkj_place` VALUES ('52', '2', '十堰', '48', 'shiyan', '0', '100', '48|', '', '', '216', '1442808898', '1442808898', 's', '110.801229', '32.636994', '0');
INSERT INTO `jrkj_place` VALUES ('53', '2', '荆州', '48', 'jingzhou', '0', '100', '48|', '', '', '157', '1442808926', '1442808926', 'j', '112.099857', '30.396103', '0');
INSERT INTO `jrkj_place` VALUES ('54', '2', '襄樊', '48', 'xiangfan', '0', '100', '48|', '', '', '157', '1442808945', '1442808945', 'x', '112.176326', '32.094934', '0');
INSERT INTO `jrkj_place` VALUES ('55', '2', '鄂州', '48', 'ezhou', '0', '100', '48|', '', '', '122', '1442808959', '1442808959', 'e', '114.895594', '30.384439', '0');
INSERT INTO `jrkj_place` VALUES ('56', '2', '荆门', '48', 'jingmen', '0', '100', '48|', '', '', '217', '1442808975', '1442808975', 'j', '112.21733', '31.042611', '0');
INSERT INTO `jrkj_place` VALUES ('57', '2', '孝感', '48', 'xiaogan', '0', '100', '48|', '', '', '310', '1442808998', '1442808998', 'x', '113.935734', '30.927955', '0');
INSERT INTO `jrkj_place` VALUES ('58', '2', '黄冈', '48', 'huanggang', '0', '100', '48|', '', '', '271', '1442809020', '1442809020', 'h', '114.906618', '30.446109', '0');
INSERT INTO `jrkj_place` VALUES ('59', '2', '咸宁', '48', 'xianning', '0', '100', '48|', '', '', '362', '1442809035', '1442809035', 'x', '114.300061', '29.880657', '0');
INSERT INTO `jrkj_place` VALUES ('60', '2', '随州', '48', 'suizhou', '0', '100', '48|', '', '', '371', '1442809140', '1442809140', 's', '113.379358', '31.717858', '0');
INSERT INTO `jrkj_place` VALUES ('61', '2', '仙桃', '48', 'xiantao', '0', '100', '48|', '', '', '371', '1442809173', '1442809173', 'x', '113.387448', '30.293966', '0');
INSERT INTO `jrkj_place` VALUES ('62', '2', '天门', '48', 'tianmen', '0', '100', '48|', '', '', '371', '1442809193', '1442809193', 't', '113.126231', '30.649047', '0');
INSERT INTO `jrkj_place` VALUES ('63', '2', '潜江', '48', 'qianjiang', '0', '100', '48|', '', '', '371', '1442809227', '1442809227', 'q', '112.768768', '30.343116', '0');
INSERT INTO `jrkj_place` VALUES ('64', '1', '江苏省', '0', 'jiangsushe', '0', '100', '0', '', '', '346', '1442809309', '1461144335', 'j', '119.368489', '33.013797', '0');
INSERT INTO `jrkj_place` VALUES ('65', '2', '南京', '64', 'nanjing', '0', '100', '64|', '', '', '315', '1442809606', '1443096285', 'n', '118.778074', '32.057236', '1');
INSERT INTO `jrkj_place` VALUES ('66', '2', '苏州', '64', 'suzhou', '0', '100', '64|', '', '', '224', '1442809629', '1442809629', 's', '120.619907', '31.317987', '0');
INSERT INTO `jrkj_place` VALUES ('67', '2', '昆山', '64', 'kunshan', '0', '100', '64|', '', '', '224', '1442809647', '1442809647', 'k', '120.965808', '31.328937', '0');
INSERT INTO `jrkj_place` VALUES ('68', '2', '太仓', '64', 'taicang', '0', '100', '64|', '', '', '224', '1442809662', '1442809662', 't', '121.158978', '31.571904', '0');
INSERT INTO `jrkj_place` VALUES ('69', '2', '常熟', '64', 'changshu', '0', '100', '64|', '', '', '224', '1442809681', '1442809681', 'c', '120.831486', '31.669446', '0');
INSERT INTO `jrkj_place` VALUES ('70', '2', '张家港', '64', 'zhangjiaga', '0', '100', '64|', '', '', '224', '1442812357', '1442812357', 'z', '120.627279', '31.907812', '0');
INSERT INTO `jrkj_place` VALUES ('71', '2', '无锡', '64', 'wuxi', '0', '100', '64|', '', '', '317', '1442812375', '1442812375', 'w', '120.305456', '31.570037', '0');
INSERT INTO `jrkj_place` VALUES ('72', '2', '常州', '64', 'changzhou', '0', '100', '64|', '', '', '348', '1442812396', '1442812396', 'c', '119.981861', '31.771397', '0');
INSERT INTO `jrkj_place` VALUES ('73', '2', '扬州', '64', 'yangzhou', '0', '100', '64|', '', '', '346', '1442812416', '1443096342', 'y', '119.427778', '32.408505', '1');
INSERT INTO `jrkj_place` VALUES ('74', '2', '镇江', '64', 'zhenjiang', '0', '100', '64|', '', '', '160', '1442812437', '1442812437', 'z', '119.455835', '32.20441', '0');
INSERT INTO `jrkj_place` VALUES ('75', '2', '南通', '64', 'nantong', '0', '100', '64|', '', '', '161', '1442812456', '1442812456', 'n', '120.873801', '32.014665', '0');
INSERT INTO `jrkj_place` VALUES ('76', '2', '徐州', '64', 'xuzhou', '0', '100', '64|', '', '', '316', '1442812482', '1442812482', 'x', '117.188107', '34.271553', '0');
INSERT INTO `jrkj_place` VALUES ('77', '2', '泰州', '64', 'taizhou', '0', '100', '64|', '', '', '276', '1442812511', '1442812511', 't', '119.919606', '32.476053', '0');
INSERT INTO `jrkj_place` VALUES ('78', '2', '盐城', '64', 'yancheng', '0', '100', '64|', '', '', '223', '1442812534', '1442812534', 'y', '120.148872', '33.379862', '0');
INSERT INTO `jrkj_place` VALUES ('79', '2', '淮安', '64', 'huaian', '0', '100', '64|', '', '', '162', '1442812559', '1442812559', 'h', '119.030186', '33.606513', '0');
INSERT INTO `jrkj_place` VALUES ('80', '2', '连云港', '64', 'lianyungan', '0', '100', '64|', '', '', '347', '1442812588', '1442812588', 'l', '119.173872', '34.601549', '0');
INSERT INTO `jrkj_place` VALUES ('81', '2', '宿迁', '64', 'suqian', '0', '100', '64|', '', '', '277', '1442812626', '1442812626', 's', '118.296893', '33.95205', '0');
INSERT INTO `jrkj_place` VALUES ('82', '1', '湖南省', '0', 'hunansheng', '0', '100', '0', '', '', '221', '1442812715', '1461144277', 'h', '111.720664', '27.695864', '0');
INSERT INTO `jrkj_place` VALUES ('83', '2', '湘潭', '82', 'xiangtan', '0', '100', '82|', '', '', '313', '1442812856', '1442812856', 'x', '112.935556', '27.835095', '0');
INSERT INTO `jrkj_place` VALUES ('84', '2', '岳阳', '82', 'yueyang', '0', '100', '82|', '', '', '220', '1442812930', '1442812930', 'y', '113.146196', '29.378007', '0');
INSERT INTO `jrkj_place` VALUES ('85', '2', '株洲', '82', 'zhuzhou', '0', '100', '82|', '', '', '222', '1442812950', '1442812950', 'z', '113.131695', '27.827433', '0');
INSERT INTO `jrkj_place` VALUES ('86', '2', '衡阳', '82', 'hengyang', '0', '100', '82|', '', '', '159', '1442812972', '1442812972', 'h', '112.583819', '26.898164', '0');
INSERT INTO `jrkj_place` VALUES ('87', '2', '邵阳', '82', 'shaoyang', '0', '100', '82|', '', '', '273', '1442812993', '1442812993', 's', '111.461525', '27.236811', '0');
INSERT INTO `jrkj_place` VALUES ('88', '2', '常德', '82', 'changde', '0', '100', '82|', '', '', '219', '1442813010', '1442813010', 'c', '111.653718', '29.012149', '0');
INSERT INTO `jrkj_place` VALUES ('89', '2', '张家界', '82', 'zhangjiaji', '0', '100', '82|', '', '', '312', '1442813030', '1443096330', 'z', '110.48162', '29.124889', '1');
INSERT INTO `jrkj_place` VALUES ('90', '2', '益阳', '82', 'yiyang', '0', '100', '82|', '', '', '272', '1442813046', '1442813046', 'y', '112.366547', '28.588088', '0');
INSERT INTO `jrkj_place` VALUES ('91', '2', '永州', '82', 'yongzhou', '0', '100', '82|', '', '', '314', '1442813087', '1442813087', 'y', '111.614648', '26.435972', '0');
INSERT INTO `jrkj_place` VALUES ('92', '2', '怀化', '82', 'huaihua', '0', '100', '82|', '', '', '363', '1442813111', '1442813111', 'h', '109.986959', '27.557483', '0');
INSERT INTO `jrkj_place` VALUES ('93', '2', '娄底', '82', 'loudi', '0', '100', '82|', '', '', '221', '1442813133', '1442813133', 'l', '111.996396', '27.741073', '0');
INSERT INTO `jrkj_place` VALUES ('94', '1', '四川省', '0', 'sichuanshe', '0', '100', '0', '', '', '76', '1442813180', '1461144339', 's', '102.89916', '30.367481', '0');
INSERT INTO `jrkj_place` VALUES ('95', '2', '成都', '94', 'chengdu', '0', '100', '94|', '', '', '75', '1442813226', '1461144448', 'c', '104.067923', '30.679943', '0');
INSERT INTO `jrkj_place` VALUES ('96', '2', '绵阳', '94', 'mianyang', '0', '100', '94|', '', '', '240', '1442813242', '1461144453', 'm', '104.705519', '31.504701', '0');
INSERT INTO `jrkj_place` VALUES ('97', '2', '德阳', '94', 'deyang', '0', '100', '94|', '', '', '74', '1442813258', '1461144458', 'd', '104.402398', '31.131139', '0');
INSERT INTO `jrkj_place` VALUES ('98', '2', '攀枝花', '94', 'panzhihua', '0', '100', '94|', '', '', '81', '1442813281', '1442813281', 'p', '101.722423', '26.587571', '0');
INSERT INTO `jrkj_place` VALUES ('99', '2', '遂宁', '94', 'suining', '0', '100', '94|', '', '', '330', '1442813297', '1461144475', 's', '105.564888', '30.557491', '0');
INSERT INTO `jrkj_place` VALUES ('100', '2', '南充', '94', 'nanchong', '0', '100', '94|', '', '', '291', '1442813317', '1461144472', 'n', '106.105554', '30.800965', '0');
INSERT INTO `jrkj_place` VALUES ('101', '2', '广元', '94', 'guangyuan', '0', '100', '94|', '', '', '329', '1442813331', '1461144469', 'g', '105.819687', '32.44104', '0');
INSERT INTO `jrkj_place` VALUES ('102', '2', '乐山', '94', 'leshan', '0', '100', '94|', '', '', '79', '1442813344', '1461144464', 'l', '103.760824', '29.600958', '0');
INSERT INTO `jrkj_place` VALUES ('104', '2', '都江堰', '103', 'dujiangyan', '1', '100', '94|103|', '', '', '75', '1442813477', '1442813477', 'd', '103.637342', '31.039123', '0');
INSERT INTO `jrkj_place` VALUES ('106', '3', '西湖区', '16', 'xihuqu', '1', '2', '14|16|', '', '', '163', '1443241851', '1462526720', 'x', '115.898948', '28.657326', '0');
INSERT INTO `jrkj_place` VALUES ('109', '3', '上栗区', '17', '上栗区', '0', '100', '14|17|', '', '', '350', '1446706106', '1446706106', 's', '113.867806', '27.83226', '0');
INSERT INTO `jrkj_place` VALUES ('110', '3', '青云谱', '16', 'yaohuqu', '1', '100', '14|16|', '', '', '350', '1449654199', '1449654199', 'y', '0', '0', '0');
INSERT INTO `jrkj_place` VALUES ('112', '0', '东湖区', '16', '', '1', '100', '14|16|', '', '', '163', '1461200920', '1461200920', '', '115.910148', '28.692375', '0');
INSERT INTO `jrkj_place` VALUES ('114', '3', '新建区', '16', 'xinjianqu', '1', '100', '14|16|', '', '', '163', '1461201207', '1461201635', 'x', '115.952954', '28.812629', '0');
INSERT INTO `jrkj_place` VALUES ('115', '0', '湾里区', '16', '', '1', '5', '14|16|', '', '', '163', '1461201596', '1476435874', '', '115.75048', '28.800557', '0');
INSERT INTO `jrkj_place` VALUES ('116', '3', '青山湖', '16', 'qingshanhu', '1', '100', '14|16|', '', '', '163', '1461201701', '1461201701', 'q', '115.930906', '28.700849', '0');
INSERT INTO `jrkj_place` VALUES ('118', '3', '进贤县', '16', '', '1', '100', '14|16|', '', '', '163', '1461201801', '1476435915', 'g', '116.317458', '28.441758', '0');

-- ----------------------------
-- Table structure for jrkj_portrait
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_portrait`;
CREATE TABLE `jrkj_portrait` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jrkj_portrait
-- ----------------------------
INSERT INTO `jrkj_portrait` VALUES ('1', 'Fdaxiong大熊', '/ThinkPHP2/uploads/181210/7e8b4ac8ly1fxv8by2fnzj21mo0x0nch.jpg');
INSERT INTO `jrkj_portrait` VALUES ('2', 'Fdaxiong大熊', '/ThinkPHP2/uploads/181210/111111.png');
INSERT INTO `jrkj_portrait` VALUES ('3', '123', '/ThinkPHP2/uploads/181210/111111.png');
INSERT INTO `jrkj_portrait` VALUES ('4', 'Fdaxiong大熊', '/ThinkPHP2/uploads/181210/7e8b4ac8ly1fxv8by2fnzj21mo0x0nch.jpg');
INSERT INTO `jrkj_portrait` VALUES ('5', 'Fdaxiong大熊', '/ThinkPHP2/uploads/181210/7e8b4ac8ly1fxv8by2fnzj21mo0x0nch.jpg');
INSERT INTO `jrkj_portrait` VALUES ('6', 'Fdaxiong大熊', '/ThinkPHP2/uploads/181210/111111.png');

-- ----------------------------
-- Table structure for jrkj_provincial
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_provincial`;
CREATE TABLE `jrkj_provincial` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `wm` varchar(10) NOT NULL COMMENT '简拼',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='中国省份表';

-- ----------------------------
-- Records of jrkj_provincial
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_recharge
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_recharge`;
CREATE TABLE `jrkj_recharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blanae` decimal(10,2) NOT NULL,
  `status` int(1) NOT NULL,
  `create` int(10) NOT NULL,
  `bana_no` varchar(50) NOT NULL,
  `member_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_recharge
-- ----------------------------
INSERT INTO `jrkj_recharge` VALUES ('1', '100.00', '0', '1458713057', '0', '1013');
INSERT INTO `jrkj_recharge` VALUES ('2', '11.00', '0', '1458718013', '1324885464', '1013');
INSERT INTO `jrkj_recharge` VALUES ('3', '11.00', '0', '1458718018', '1841606229', '1013');
INSERT INTO `jrkj_recharge` VALUES ('4', '11.00', '0', '1458720265', '2147483647', '1013');
INSERT INTO `jrkj_recharge` VALUES ('5', '11.00', '0', '1458721006', '621945065', '1013');
INSERT INTO `jrkj_recharge` VALUES ('6', '11.00', '0', '1458723280', '1324885464', '1013');
INSERT INTO `jrkj_recharge` VALUES ('7', '11.00', '0', '1458723510', '1324885464', '1013');
INSERT INTO `jrkj_recharge` VALUES ('8', '11.00', '0', '1458723533', '1324885464', '1013');
INSERT INTO `jrkj_recharge` VALUES ('9', '11.00', '0', '1458723617', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('10', '11.00', '0', '1458723832', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('11', '111.00', '0', '1458723913', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('12', '11.00', '0', '1458723946', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('13', '11.00', '0', '1458724039', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('14', '11.00', '0', '1458724134', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('15', '11.00', '0', '1458724141', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('16', '11.00', '0', '1458724189', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('17', '11.00', '0', '1458724402', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('18', '10.00', '0', '1458724509', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('19', '10.00', '0', '1458724513', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('20', '10.00', '0', '1458724586', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('21', '10.00', '0', '1458724697', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('22', '3.00', '0', '1458724757', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('23', '4.00', '0', '1458724767', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('24', '4.00', '0', '1458724807', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('25', '4.00', '0', '1458724812', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('26', '4.00', '0', '1458724862', '', '1013');
INSERT INTO `jrkj_recharge` VALUES ('27', '56.00', '0', '1458783039', '03918308757', '1013');
INSERT INTO `jrkj_recharge` VALUES ('28', '11.00', '0', '1458783610', '61062155651', '1013');
INSERT INTO `jrkj_recharge` VALUES ('29', '11.00', '0', '1458783882', '88259042859', '1013');
INSERT INTO `jrkj_recharge` VALUES ('30', '11.00', '0', '1458784035', '03530233107', '1013');
INSERT INTO `jrkj_recharge` VALUES ('31', '11.00', '0', '1458784054', '05470726279', '1013');
INSERT INTO `jrkj_recharge` VALUES ('32', '11.00', '0', '1458784130', '13092411850', '1013');
INSERT INTO `jrkj_recharge` VALUES ('33', '0.00', '0', '1458784177', '17756361954', '1013');
INSERT INTO `jrkj_recharge` VALUES ('34', '11.00', '0', '1458784624', '62420842261', '1013');
INSERT INTO `jrkj_recharge` VALUES ('35', '11.00', '0', '1458784679', '67993293045', '1013');
INSERT INTO `jrkj_recharge` VALUES ('36', '11.00', '0', '1458784741', '74129694337', '1013');
INSERT INTO `jrkj_recharge` VALUES ('37', '11.00', '0', '1458784787', '78785885962', '1013');
INSERT INTO `jrkj_recharge` VALUES ('38', '11.00', '0', '1458784893', '89314973454', '1013');
INSERT INTO `jrkj_recharge` VALUES ('39', '11.00', '0', '1458784899', '89961937926', '1013');
INSERT INTO `jrkj_recharge` VALUES ('40', '23.00', '0', '1458785044', '04410605584', '1013');
INSERT INTO `jrkj_recharge` VALUES ('41', '23.00', '0', '1458785077', '07738288491', '1013');
INSERT INTO `jrkj_recharge` VALUES ('42', '23.00', '0', '1458785372', '37250219289', '1013');
INSERT INTO `jrkj_recharge` VALUES ('43', '23.00', '0', '1458785391', '39131002585', '1013');
INSERT INTO `jrkj_recharge` VALUES ('44', '23.00', '0', '1458785406', '40629273872', '1013');
INSERT INTO `jrkj_recharge` VALUES ('45', '11.00', '0', '1458785419', '41993656716', '1013');
INSERT INTO `jrkj_recharge` VALUES ('46', '11.00', '0', '1458785451', '45199934372', '1013');
INSERT INTO `jrkj_recharge` VALUES ('47', '11.00', '0', '1458785529', '52911579211', '1013');
INSERT INTO `jrkj_recharge` VALUES ('48', '11.00', '0', '1458785540', '54046227216', '1013');
INSERT INTO `jrkj_recharge` VALUES ('49', '11.00', '0', '1458785560', '56013604875', '1013');
INSERT INTO `jrkj_recharge` VALUES ('50', '11.00', '0', '1458785580', '58013457388', '1013');
INSERT INTO `jrkj_recharge` VALUES ('51', '11.00', '0', '1458785590', '59052168541', '1013');
INSERT INTO `jrkj_recharge` VALUES ('52', '11.00', '0', '1458785892', '89217544151', '1013');
INSERT INTO `jrkj_recharge` VALUES ('53', '11.00', '0', '1458785934', '93422318691', '1013');
INSERT INTO `jrkj_recharge` VALUES ('54', '11.00', '0', '1458786110', '11029220105', '1013');
INSERT INTO `jrkj_recharge` VALUES ('55', '11.00', '0', '1458786158', '15850490080', '1013');
INSERT INTO `jrkj_recharge` VALUES ('56', '11.00', '0', '1458786237', '23728043019', '1013');
INSERT INTO `jrkj_recharge` VALUES ('57', '11.00', '0', '1458786276', '27681295925', '1013');
INSERT INTO `jrkj_recharge` VALUES ('58', '11.00', '0', '1458786424', '42433783072', '1013');
INSERT INTO `jrkj_recharge` VALUES ('59', '123123.00', '0', '1458786441', '44132765049', '1013');
INSERT INTO `jrkj_recharge` VALUES ('60', '23123.00', '0', '1458786469', '46977458375', '1013');
INSERT INTO `jrkj_recharge` VALUES ('61', '1111.00', '0', '1458786743', '74313882939', '1013');
INSERT INTO `jrkj_recharge` VALUES ('62', '1111.00', '0', '1458786788', '78819020017', '1013');
INSERT INTO `jrkj_recharge` VALUES ('63', '2313.00', '0', '1458786794', '79475343622', '1013');
INSERT INTO `jrkj_recharge` VALUES ('64', '122.00', '0', '1458786872', '87248926675', '1013');
INSERT INTO `jrkj_recharge` VALUES ('65', '123.00', '0', '1458786993', '99354003324', '1013');
INSERT INTO `jrkj_recharge` VALUES ('66', '2222.00', '0', '1458787232', '23226114942', '1013');
INSERT INTO `jrkj_recharge` VALUES ('67', '123123.00', '0', '1458787268', '26893600410', '1013');
INSERT INTO `jrkj_recharge` VALUES ('68', '123123.00', '0', '1458787288', '28817581044', '1013');
INSERT INTO `jrkj_recharge` VALUES ('69', '234234.00', '0', '1458787465', '46556345743', '1013');
INSERT INTO `jrkj_recharge` VALUES ('70', '11.00', '0', '1458787898', '89823341988', '1013');
INSERT INTO `jrkj_recharge` VALUES ('71', '11.00', '0', '1458788292', '29219340676', '1013');
INSERT INTO `jrkj_recharge` VALUES ('72', '11.00', '0', '1458788303', '30321233548', '1013');
INSERT INTO `jrkj_recharge` VALUES ('73', '11.00', '0', '1458788423', '42394425579', '1013');
INSERT INTO `jrkj_recharge` VALUES ('74', '11.00', '0', '1458788431', '43171034279', '1013');
INSERT INTO `jrkj_recharge` VALUES ('75', '11.00', '0', '1458788464', '46494631612', '1013');
INSERT INTO `jrkj_recharge` VALUES ('76', '11.00', '0', '1458789152', '15288143170', '1013');
INSERT INTO `jrkj_recharge` VALUES ('77', '11.00', '0', '1458789213', '21379236076', '1013');
INSERT INTO `jrkj_recharge` VALUES ('78', '11.00', '0', '1458789233', '23382155080', '1013');
INSERT INTO `jrkj_recharge` VALUES ('79', '11.00', '0', '1458789246', '24634530344', '1013');
INSERT INTO `jrkj_recharge` VALUES ('80', '111.00', '0', '1458789299', '29957058155', '1013');
INSERT INTO `jrkj_recharge` VALUES ('81', '111.00', '0', '1458789326', '32636689201', '1013');
INSERT INTO `jrkj_recharge` VALUES ('82', '111.00', '0', '1458789384', '38445607041', '1013');
INSERT INTO `jrkj_recharge` VALUES ('83', '111.00', '0', '1458789394', '39449702187', '1013');
INSERT INTO `jrkj_recharge` VALUES ('84', '111.00', '0', '1458789415', '41568452839', '1013');
INSERT INTO `jrkj_recharge` VALUES ('85', '111.00', '0', '1458789511', '51162007404', '1013');
INSERT INTO `jrkj_recharge` VALUES ('86', '111.00', '0', '1458789812', '81278255768', '1013');
INSERT INTO `jrkj_recharge` VALUES ('87', '11.00', '0', '1458790064', '06444309868', '1013');
INSERT INTO `jrkj_recharge` VALUES ('88', '11.00', '0', '1458790155', '15592098623', '1013');
INSERT INTO `jrkj_recharge` VALUES ('89', '10.00', '0', '1458790270', '27045218754', '1013');
INSERT INTO `jrkj_recharge` VALUES ('90', '10.00', '0', '1458790474', '47418536546', '1013');
INSERT INTO `jrkj_recharge` VALUES ('91', '10.00', '0', '1458790504', '50455964462', '1013');
INSERT INTO `jrkj_recharge` VALUES ('92', '10.00', '0', '1458790678', '67898615611', '1013');
INSERT INTO `jrkj_recharge` VALUES ('93', '111.00', '0', '1458803764', '76426398827', '1013');
INSERT INTO `jrkj_recharge` VALUES ('94', '111.00', '0', '1458805941', '94138183443', '1013');
INSERT INTO `jrkj_recharge` VALUES ('95', '0.00', '0', '1458809442', '44223944564', '1013');
INSERT INTO `jrkj_recharge` VALUES ('96', '0.01', '0', '1458811446', '44630384421', '1013');
INSERT INTO `jrkj_recharge` VALUES ('97', '0.01', '0', '1458811555', '55512500798', '1013');
INSERT INTO `jrkj_recharge` VALUES ('98', '0.01', '0', '1458811965', '96579680903', '1013');
INSERT INTO `jrkj_recharge` VALUES ('99', '0.01', '0', '1458812968', '96849976038', '1013');
INSERT INTO `jrkj_recharge` VALUES ('100', '0.01', '0', '1458814517', '51724121053', '1013');
INSERT INTO `jrkj_recharge` VALUES ('101', '0.01', '0', '1458814563', '56346173705', '1013');
INSERT INTO `jrkj_recharge` VALUES ('102', '0.01', '2', '1458814995', '99529812820', '1013');
INSERT INTO `jrkj_recharge` VALUES ('103', '0.01', '0', '1458874870', '87034100201', '1013');
INSERT INTO `jrkj_recharge` VALUES ('104', '0.01', '2', '1458874962', '96231542932', '1013');
INSERT INTO `jrkj_recharge` VALUES ('105', '0.01', '2', '1458875708', '70892719172', '1013');
INSERT INTO `jrkj_recharge` VALUES ('106', '0.01', '2', '1458876000', '00019033894', '1013');
INSERT INTO `jrkj_recharge` VALUES ('107', '0.01', '2', '1458877164', '16427724657', '1013');
INSERT INTO `jrkj_recharge` VALUES ('108', '0.01', '0', '1458877232', '23218433322', '1013');
INSERT INTO `jrkj_recharge` VALUES ('109', '0.01', '2', '1458877259', '25984607168', '1013');
INSERT INTO `jrkj_recharge` VALUES ('110', '0.01', '2', '1458877296', '29624272753', '1013');
INSERT INTO `jrkj_recharge` VALUES ('111', '0.01', '0', '1458877435', '43520820356', '1013');
INSERT INTO `jrkj_recharge` VALUES ('112', '0.00', '0', '1458882379', '37936334390', '1013');
INSERT INTO `jrkj_recharge` VALUES ('113', '0.00', '0', '1458882435', '43522796594', '1013');
INSERT INTO `jrkj_recharge` VALUES ('114', '0.00', '0', '1458882451', '45117339708', '1013');
INSERT INTO `jrkj_recharge` VALUES ('115', '0.00', '0', '1458882501', '50150566041', '1013');
INSERT INTO `jrkj_recharge` VALUES ('116', '0.00', '0', '1458882502', '50235371016', '1013');
INSERT INTO `jrkj_recharge` VALUES ('117', '0.00', '0', '1458882637', '63796327649', '1013');
INSERT INTO `jrkj_recharge` VALUES ('118', '0.00', '0', '1458882787', '78717553965', '1013');
INSERT INTO `jrkj_recharge` VALUES ('119', '0.00', '0', '1458882819', '81971369402', '1013');
INSERT INTO `jrkj_recharge` VALUES ('120', '0.00', '0', '1458883117', '11727368973', '1013');
INSERT INTO `jrkj_recharge` VALUES ('121', '0.00', '0', '1458883142', '14272370786', '1013');
INSERT INTO `jrkj_recharge` VALUES ('122', '0.00', '0', '1458883179', '17933688527', '1013');
INSERT INTO `jrkj_recharge` VALUES ('123', '0.00', '0', '1458883449', '44964777169', '1013');
INSERT INTO `jrkj_recharge` VALUES ('124', '0.01', '0', '1458959267', '26783482237', '1211');
INSERT INTO `jrkj_recharge` VALUES ('125', '0.01', '0', '1458959314', '31461100431', '1211');
INSERT INTO `jrkj_recharge` VALUES ('126', '0.01', '2', '1458959991', '99168287117', '1211');
INSERT INTO `jrkj_recharge` VALUES ('127', '100.00', '2', '1458963881', '88195830344', '1211');
INSERT INTO `jrkj_recharge` VALUES ('128', '2.00', '0', '1458971237', '23727616480', '31');
INSERT INTO `jrkj_recharge` VALUES ('129', '10.00', '2', '1459006496', '49637489901', '532');
INSERT INTO `jrkj_recharge` VALUES ('130', '10.00', '0', '1459006529', '52922816929', '532');
INSERT INTO `jrkj_recharge` VALUES ('131', '1.00', '0', '1459008758', '75880765387', '1457');
INSERT INTO `jrkj_recharge` VALUES ('132', '1.00', '0', '1459008842', '84239954463', '1457');
INSERT INTO `jrkj_recharge` VALUES ('133', '10.00', '2', '1459146007', '00783397762', '532');
INSERT INTO `jrkj_recharge` VALUES ('134', '10.00', '0', '1459146030', '03096247958', '532');
INSERT INTO `jrkj_recharge` VALUES ('135', '6.00', '2', '1459147121', '12164493606', '12');
INSERT INTO `jrkj_recharge` VALUES ('136', '100.00', '0', '1459149002', '00272803575', '1238');
INSERT INTO `jrkj_recharge` VALUES ('137', '50.00', '0', '1459313897', '89742221857', '1488');
INSERT INTO `jrkj_recharge` VALUES ('138', '8.00', '0', '1459329900', '90098108365', '1493');
INSERT INTO `jrkj_recharge` VALUES ('139', '8.00', '0', '1459329931', '93165840403', '1493');
INSERT INTO `jrkj_recharge` VALUES ('140', '1.00', '2', '1459353565', '56543479513', '18');
INSERT INTO `jrkj_recharge` VALUES ('141', '10.00', '2', '1459353583', '58394073796', '4');
INSERT INTO `jrkj_recharge` VALUES ('142', '1.00', '2', '1459353598', '59832370945', '18');
INSERT INTO `jrkj_recharge` VALUES ('143', '10.00', '2', '1459353626', '62681274734', '4');
INSERT INTO `jrkj_recharge` VALUES ('144', '0.01', '2', '1459408552', '55268675790', '1211');
INSERT INTO `jrkj_recharge` VALUES ('145', '0.01', '2', '1459409274', '27499464919', '1211');
INSERT INTO `jrkj_recharge` VALUES ('146', '20.00', '2', '1459421623', '62345596015', '1211');
INSERT INTO `jrkj_recharge` VALUES ('147', '60.00', '2', '1459434474', '47440333687', '994');
INSERT INTO `jrkj_recharge` VALUES ('148', '18.00', '2', '1459434618', '61842814979', '994');
INSERT INTO `jrkj_recharge` VALUES ('149', '10.00', '2', '1459481583', '58317705324', '987');
INSERT INTO `jrkj_recharge` VALUES ('150', '30.00', '0', '1459576895', '89585435979', '1531');
INSERT INTO `jrkj_recharge` VALUES ('151', '70.00', '2', '1459612152', '15294417420', '1239');
INSERT INTO `jrkj_recharge` VALUES ('152', '70.00', '0', '1459612210', '21010314808', '1239');
INSERT INTO `jrkj_recharge` VALUES ('153', '100.00', '2', '1459747789', '78935498599', '1488');
INSERT INTO `jrkj_recharge` VALUES ('154', '100.00', '0', '1459864621', '62118435691', '1525');
INSERT INTO `jrkj_recharge` VALUES ('155', '100.00', '2', '1459937183', '18371117763', '1488');
INSERT INTO `jrkj_recharge` VALUES ('156', '100.00', '2', '1460174194', '19478555756', '1571');
INSERT INTO `jrkj_recharge` VALUES ('157', '0.50', '0', '1460257344', '34451537666', '1504');
INSERT INTO `jrkj_recharge` VALUES ('158', '0.50', '0', '1460257358', '35895095938', '1504');
INSERT INTO `jrkj_recharge` VALUES ('159', '0.50', '2', '1460257535', '53562523641', '1504');
INSERT INTO `jrkj_recharge` VALUES ('160', '0.50', '0', '1460257554', '55470721148', '1504');
INSERT INTO `jrkj_recharge` VALUES ('161', '0.50', '0', '1460257559', '55933155721', '1504');
INSERT INTO `jrkj_recharge` VALUES ('162', '80.00', '0', '1460334430', '43090626224', '1384');
INSERT INTO `jrkj_recharge` VALUES ('163', '20.00', '2', '1460343583', '58391392130', '1488');
INSERT INTO `jrkj_recharge` VALUES ('164', '10.00', '0', '1460541422', '42287472720', '122');
INSERT INTO `jrkj_recharge` VALUES ('165', '10.00', '0', '1460541542', '54219524792', '122');
INSERT INTO `jrkj_recharge` VALUES ('166', '10.00', '0', '1460541544', '54438870662', '122');
INSERT INTO `jrkj_recharge` VALUES ('167', '30.00', '2', '1460728720', '72039856257', '1075');
INSERT INTO `jrkj_recharge` VALUES ('168', '99999999.99', '0', '1460787627', '62786874762', '93');
INSERT INTO `jrkj_recharge` VALUES ('169', '99999999.99', '0', '1460787635', '63558138806', '93');
INSERT INTO `jrkj_recharge` VALUES ('170', '1.00', '0', '1460818715', '71578354419', '1725');
INSERT INTO `jrkj_recharge` VALUES ('171', '2.00', '0', '1460827149', '14915929915', '55');
INSERT INTO `jrkj_recharge` VALUES ('172', '2.00', '0', '1460827152', '15214857254', '55');
INSERT INTO `jrkj_recharge` VALUES ('173', '58.00', '0', '1460830158', '15846681871', '1779');
INSERT INTO `jrkj_recharge` VALUES ('174', '58.00', '0', '1460830164', '16493837615', '1779');
INSERT INTO `jrkj_recharge` VALUES ('175', '58.00', '0', '1460830167', '16734576574', '1779');
INSERT INTO `jrkj_recharge` VALUES ('176', '8.00', '2', '1460964961', '96122669354', '994');
INSERT INTO `jrkj_recharge` VALUES ('177', '10.00', '2', '1460979103', '10365316995', '532');
INSERT INTO `jrkj_recharge` VALUES ('178', '10.00', '0', '1460979234', '23494619588', '532');
INSERT INTO `jrkj_recharge` VALUES ('179', '100.00', '0', '1461038909', '90912521170', '1571');
INSERT INTO `jrkj_recharge` VALUES ('180', '100.00', '2', '1461038945', '94591158795', '1571');
INSERT INTO `jrkj_recharge` VALUES ('181', '1.00', '0', '1461168088', '08863092022', '171');
INSERT INTO `jrkj_recharge` VALUES ('182', '1.00', '0', '1461168096', '09647580026', '171');
INSERT INTO `jrkj_recharge` VALUES ('183', '100.00', '2', '1461231874', '87494204287', '1571');
INSERT INTO `jrkj_recharge` VALUES ('184', '200.00', '2', '1461298945', '94598919259', '1488');
INSERT INTO `jrkj_recharge` VALUES ('185', '16.00', '2', '1461412508', '50827446878', '1492');
INSERT INTO `jrkj_recharge` VALUES ('186', '0.10', '2', '1461412653', '65323647804', '1492');
INSERT INTO `jrkj_recharge` VALUES ('187', '0.80', '2', '1461412763', '76353969366', '1492');
INSERT INTO `jrkj_recharge` VALUES ('188', '1.00', '2', '1461419207', '20742049312', '1711');
INSERT INTO `jrkj_recharge` VALUES ('189', '10.00', '0', '1461430393', '39357251754', '1954');
INSERT INTO `jrkj_recharge` VALUES ('190', '10.00', '0', '1461430399', '39948136014', '1954');
INSERT INTO `jrkj_recharge` VALUES ('191', '5.00', '2', '1461472110', '11045368911', '1571');
INSERT INTO `jrkj_recharge` VALUES ('192', '60.00', '0', '1461919441', '44188351278', '1638');
INSERT INTO `jrkj_recharge` VALUES ('193', '60.00', '0', '1461947554', '55431838571', '1638');
INSERT INTO `jrkj_recharge` VALUES ('194', '3.00', '0', '1461981125', '12582284639', '1153');
INSERT INTO `jrkj_recharge` VALUES ('195', '3.00', '0', '1461981136', '13612346826', '1153');
INSERT INTO `jrkj_recharge` VALUES ('196', '2.00', '2', '1461991487', '48796322049', '12');
INSERT INTO `jrkj_recharge` VALUES ('197', '1.00', '2', '1461992388', '38875242727', '1487');
INSERT INTO `jrkj_recharge` VALUES ('198', '50.00', '0', '1462075426', '42621316463', '1638');
INSERT INTO `jrkj_recharge` VALUES ('199', '10.00', '0', '1462075611', '61163562543', '1638');
INSERT INTO `jrkj_recharge` VALUES ('200', '100.00', '2', '1462076297', '29751559306', '1488');
INSERT INTO `jrkj_recharge` VALUES ('201', '100.00', '0', '1462104134', '13499584267', '2224');
INSERT INTO `jrkj_recharge` VALUES ('202', '100.00', '0', '1462104144', '14438789851', '2224');
INSERT INTO `jrkj_recharge` VALUES ('203', '1.00', '2', '1462160557', '55744599442', '253');
INSERT INTO `jrkj_recharge` VALUES ('204', '1.00', '0', '1462160626', '62662070593', '253');
INSERT INTO `jrkj_recharge` VALUES ('205', '2.00', '2', '1462249658', '65892784428', '1571');
INSERT INTO `jrkj_recharge` VALUES ('206', '50.00', '0', '1462352099', '09925947940', '1381');
INSERT INTO `jrkj_recharge` VALUES ('207', '50.00', '0', '1462352109', '10985830617', '1381');
INSERT INTO `jrkj_recharge` VALUES ('208', '216.00', '0', '1462361842', '84233777271', '2227');
INSERT INTO `jrkj_recharge` VALUES ('209', '216.00', '0', '1462361853', '85331363493', '2227');
INSERT INTO `jrkj_recharge` VALUES ('210', '100.00', '0', '1462446777', '77780011123', '2228');
INSERT INTO `jrkj_recharge` VALUES ('211', '100.00', '0', '1462446877', '87790840609', '2228');
INSERT INTO `jrkj_recharge` VALUES ('212', '100.00', '0', '1462446884', '88420913642', '2228');
INSERT INTO `jrkj_recharge` VALUES ('213', '50.00', '2', '1462453705', '70583156680', '1488');
INSERT INTO `jrkj_recharge` VALUES ('214', '10.00', '2', '1462507859', '85915485533', '92');
INSERT INTO `jrkj_recharge` VALUES ('215', '5.00', '0', '1462527852', '85224405010', '231');
INSERT INTO `jrkj_recharge` VALUES ('216', '5.00', '0', '1462527890', '89038042875', '231');
INSERT INTO `jrkj_recharge` VALUES ('217', '5.00', '0', '1462527896', '89646738215', '231');
INSERT INTO `jrkj_recharge` VALUES ('218', '5.00', '0', '1462527951', '95151249350', '231');
INSERT INTO `jrkj_recharge` VALUES ('219', '5.00', '0', '1462527964', '96471702373', '231');
INSERT INTO `jrkj_recharge` VALUES ('220', '30.00', '2', '1462594060', '06057515300', '1488');
INSERT INTO `jrkj_recharge` VALUES ('221', '3.00', '0', '1462788146', '14653726028', '543');
INSERT INTO `jrkj_recharge` VALUES ('222', '3.00', '0', '1462788151', '15121263246', '543');
INSERT INTO `jrkj_recharge` VALUES ('223', '50.00', '0', '1462788471', '47165848314', '2237');
INSERT INTO `jrkj_recharge` VALUES ('224', '0.30', '0', '1462849361', '36176064432', '1229');
INSERT INTO `jrkj_recharge` VALUES ('225', '60.00', '0', '1463448694', '69470850554', '1638');
INSERT INTO `jrkj_recharge` VALUES ('226', '60.00', '0', '1464060830', '83074325233', '1638');
INSERT INTO `jrkj_recharge` VALUES ('227', '1.00', '0', '1465194158', '15894635084', '2211');

-- ----------------------------
-- Table structure for jrkj_refund
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_refund`;
CREATE TABLE `jrkj_refund` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL COMMENT '订单号',
  `create_time` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0.申请退款  1.审核不通过 2.退款成功',
  `member_id` int(10) NOT NULL COMMENT '申请人ID',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `reason_id` tinyint(3) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '退款原因详情',
  `reply` varchar(255) NOT NULL DEFAULT '' COMMENT '退款理由',
  `amount` float(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_refund
-- ----------------------------
INSERT INTO `jrkj_refund` VALUES ('1', '408', '1464227215', '2', '0', '1464227215', '0', '', '', '20.00');
INSERT INTO `jrkj_refund` VALUES ('2', '406', '1464227210', '2', '0', '1464227210', '0', '', '', '20.00');
INSERT INTO `jrkj_refund` VALUES ('3', '407', '1464159516', '2', '0', '1464159516', '0', '', '', '20.00');
INSERT INTO `jrkj_refund` VALUES ('4', '400', '1464159508', '2', '0', '1464159508', '0', '', '', '20.00');
INSERT INTO `jrkj_refund` VALUES ('5', '512', '1464318693', '1', '0', '1464318693', '1', '', '', '0.01');
INSERT INTO `jrkj_refund` VALUES ('6', '513', '1464318690', '2', '0', '1464318690', '8', '', '', '0.01');
INSERT INTO `jrkj_refund` VALUES ('7', '541', '1464318666', '2', '0', '1464318666', '1', '', '', '0.01');
INSERT INTO `jrkj_refund` VALUES ('8', '596', '1464159078', '2', '0', '1464159078', '8', '测试', '', '15.00');
INSERT INTO `jrkj_refund` VALUES ('9', '635', '1464335497', '2', '0', '1464335497', '1', '测试', '', '15.00');
INSERT INTO `jrkj_refund` VALUES ('10', '636', '1464337383', '2', '0', '1464337383', '1', '', '', '32.05');
INSERT INTO `jrkj_refund` VALUES ('11', '826', '1465715455', '2', '0', '1465715455', '1', '333', '', '0.01');
INSERT INTO `jrkj_refund` VALUES ('12', '827', '1465875775', '2', '0', '1465875775', '7', '666', '', '8.00');
INSERT INTO `jrkj_refund` VALUES ('13', '931', '1469082957', '2', '0', '1469082957', '2', '', '', '1.00');
INSERT INTO `jrkj_refund` VALUES ('14', '1000', '1477301911', '2', '42', '1477301911', '0', '就是不想买', '我不买了大大大', '0.00');
INSERT INTO `jrkj_refund` VALUES ('15', '1002', '1477304271', '0', '45', '1477304271', '0', '不想买了', '', '468.00');

-- ----------------------------
-- Table structure for jrkj_repayment
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_repayment`;
CREATE TABLE `jrkj_repayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `repayment_no` varchar(50) NOT NULL,
  `member_id` int(11) NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `account_log_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_repayment
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_setting
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_setting`;
CREATE TABLE `jrkj_setting` (
  `name` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_setting
-- ----------------------------
INSERT INTO `jrkj_setting` VALUES ('site_name', '乐家淘', '');
INSERT INTO `jrkj_setting` VALUES ('site_title', '乐家淘-专业做家具订购的网站-厂家直销', '');
INSERT INTO `jrkj_setting` VALUES ('site_keyword', '南昌办公家具，南昌家具，南昌家具订做', '');
INSERT INTO `jrkj_setting` VALUES ('site_description', '乐家淘', '');
INSERT INTO `jrkj_setting` VALUES ('site_status', '1', '');
INSERT INTO `jrkj_setting` VALUES ('closed_reason', '', '');
INSERT INTO `jrkj_setting` VALUES ('site_icp', '', '');
INSERT INTO `jrkj_setting` VALUES ('statistics_code', '', '');
INSERT INTO `jrkj_setting` VALUES ('statics_url', 'theme/default/', '');
INSERT INTO `jrkj_setting` VALUES ('mail_server', '', '');
INSERT INTO `jrkj_setting` VALUES ('item_check', '0', '');
INSERT INTO `jrkj_setting` VALUES ('score_rule', 'a:16:{s:8:\"register\";s:2:\"20\";s:13:\"register_nums\";s:1:\"1\";s:5:\"login\";s:2:\"10\";s:10:\"login_nums\";s:1:\"5\";s:7:\"pubitem\";s:2:\"20\";s:12:\"pubitem_nums\";s:2:\"10\";s:8:\"likeitem\";s:1:\"1\";s:13:\"likeitem_nums\";s:2:\"20\";s:9:\"joinalbum\";s:1:\"2\";s:14:\"joinalbum_nums\";s:2:\"10\";s:6:\"fwitem\";s:1:\"2\";s:11:\"fwitem_nums\";s:2:\"10\";s:6:\"pubcmt\";s:1:\"1\";s:11:\"pubcmt_nums\";s:1:\"5\";s:7:\"delitem\";s:3:\"-20\";s:12:\"delitem_nums\";s:3:\"100\";}', '');
INSERT INTO `jrkj_setting` VALUES ('album_cover_items', '5', '专辑封面显示图片数量');
INSERT INTO `jrkj_setting` VALUES ('integrate_code', 'default', '');
INSERT INTO `jrkj_setting` VALUES ('integrate_config', '', '');
INSERT INTO `jrkj_setting` VALUES ('hot_tags', '家居,花园,美食,旅行,创意,建筑,户外,飘窗,卧室,城堡,DIY,萌宠,门厅,衣帽间,婚礼,书房,厨房,客厅,浴室,阳台,工作台,收纳,餐厅,阁楼,儿童房,小空间,性感', '');
INSERT INTO `jrkj_setting` VALUES ('wall_spage_max', '3', '');
INSERT INTO `jrkj_setting` VALUES ('wall_spage_size', '10', '');
INSERT INTO `jrkj_setting` VALUES ('book_page_max', '100', '');
INSERT INTO `jrkj_setting` VALUES ('default_keyword', '懒得逛了，我搜~', '');
INSERT INTO `jrkj_setting` VALUES ('album_default_title', '默认专辑', '');
INSERT INTO `jrkj_setting` VALUES ('avatar_size', '24,32,48,64,100,200', '');
INSERT INTO `jrkj_setting` VALUES ('attr_allow_exts', 'jpg,gif,png,jpeg,swf', '');
INSERT INTO `jrkj_setting` VALUES ('attr_allow_size', '2048', '');
INSERT INTO `jrkj_setting` VALUES ('itemcate_img', 'a:2:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"170\";}', '');
INSERT INTO `jrkj_setting` VALUES ('reg_protocol', '协议正在整理中...', '');
INSERT INTO `jrkj_setting` VALUES ('item_cover_comments', '2', '');
INSERT INTO `jrkj_setting` VALUES ('user_intro_default', '这个家伙太懒，什么都木留下~', '');
INSERT INTO `jrkj_setting` VALUES ('ipban_switch', '1', '');
INSERT INTO `jrkj_setting` VALUES ('score_item_img', 'a:4:{s:6:\"swidth\";s:3:\"210\";s:7:\"sheight\";s:3:\"210\";s:6:\"bwidth\";s:3:\"350\";s:7:\"bheight\";s:3:\"350\";}', '');
INSERT INTO `jrkj_setting` VALUES ('seo_config', 'a:6:{s:4:\"book\";a:3:{s:5:\"title\";s:23:\"{tag_name}-{site_title}\";s:8:\"keywords\";s:23:\"逛宝贝，{site_name}\";s:11:\"description\";s:18:\"{site_description}\";}s:4:\"cate\";a:3:{s:5:\"title\";s:23:\"{cate_name}-{seo_title}\";s:8:\"keywords\";s:14:\"{seo_keywords}\";s:11:\"description\";s:17:\"{seo_description}\";}s:5:\"album\";a:3:{s:5:\"title\";s:6:\"专辑\";s:8:\"keywords\";s:47:\"{site_name},购物分享,淘宝网购物,专辑\";s:11:\"description\";s:18:\"{site_description}\";}s:10:\"album_cate\";a:3:{s:5:\"title\";s:11:\"{seo_title}\";s:8:\"keywords\";s:14:\"{seo_keywords}\";s:11:\"description\";s:17:\"{seo_description}\";}s:12:\"album_detail\";a:3:{s:5:\"title\";s:13:\"{album_title}\";s:8:\"keywords\";s:13:\"{album_intro}\";s:11:\"description\";s:23:\"杂志详细Description\";}s:4:\"item\";a:3:{s:5:\"title\";s:12:\"{item_title}\";s:8:\"keywords\";s:10:\"{item_tag}\";s:11:\"description\";s:12:\"{item_intro}\";}}', '');
INSERT INTO `jrkj_setting` VALUES ('item_img', 'a:2:{s:5:\"width\";s:3:\"210\";s:6:\"height\";s:4:\"1000\";}', '');
INSERT INTO `jrkj_setting` VALUES ('item_simg', 'a:2:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"100\";}', '');
INSERT INTO `jrkj_setting` VALUES ('item_bimg', 'a:2:{s:5:\"width\";s:3:\"468\";s:6:\"height\";s:4:\"1000\";}', '');
INSERT INTO `jrkj_setting` VALUES ('attach_path', 'data/attachment/', '');
INSERT INTO `jrkj_setting` VALUES ('wall_distance', '500', '');
INSERT INTO `jrkj_setting` VALUES ('reg_status', '1', '');
INSERT INTO `jrkj_setting` VALUES ('reg_closed_reason', '&lt;h1&gt;暂时关闭注册&lt;/h1&gt;', '');
INSERT INTO `jrkj_setting` VALUES ('index_wall', '1', '');
INSERT INTO `jrkj_setting` VALUES ('article_cate_img', 'a:2:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"200\";}', '');
INSERT INTO `jrkj_setting` VALUES ('article_img', 'a:2:{s:5:\"width\";s:3:\"190\";s:6:\"height\";s:3:\"210\";}', '`wangtmp``jrkj_setting`');
INSERT INTO `jrkj_setting` VALUES ('email', '1633967339@qq.com', '');
INSERT INTO `jrkj_setting` VALUES ('address', '', '');
INSERT INTO `jrkj_setting` VALUES ('tel', '15180163170', '');
INSERT INTO `jrkj_setting` VALUES ('qq', '', '');
INSERT INTO `jrkj_setting` VALUES ('site_url', '', '');
INSERT INTO `jrkj_setting` VALUES ('mobile', '', '');
INSERT INTO `jrkj_setting` VALUES ('in_ratio', '10', '消费积分获取比例');
INSERT INTO `jrkj_setting` VALUES ('yunmin', '500', '');
INSERT INTO `jrkj_setting` VALUES ('yunmax', '1800', '');
INSERT INTO `jrkj_setting` VALUES ('yun1', '10', '');
INSERT INTO `jrkj_setting` VALUES ('yun2', '20', '');
INSERT INTO `jrkj_setting` VALUES ('yun3', '30', '');
INSERT INTO `jrkj_setting` VALUES ('reg', '10', '');

-- ----------------------------
-- Table structure for jrkj_settlement
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_settlement`;
CREATE TABLE `jrkj_settlement` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `merchant_id` int(10) unsigned NOT NULL COMMENT '店铺ID',
  `order_amount` float(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单总金额',
  `profit_amount` float(20,2) unsigned NOT NULL DEFAULT '0.00',
  `settle_amount` float(20,2) unsigned NOT NULL DEFAULT '0.00',
  `create_time` int(10) unsigned NOT NULL,
  `order_ids` text NOT NULL,
  `time_start` int(10) unsigned NOT NULL,
  `time_end` int(10) unsigned NOT NULL,
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `op_time` int(10) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_settlement
-- ----------------------------
INSERT INTO `jrkj_settlement` VALUES ('1', '1', '238.00', '258.00', '0.00', '1477040277', '979', '1477040277', '1477040277', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('2', '1', '2000.00', '2352.00', '0.00', '1477042859', '980', '1477042859', '1477042859', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('3', '1', '1434.00', '1524.00', '0.00', '1477045222', '983', '1477045222', '1477045222', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('4', '1', '468.00', '568.00', '0.00', '1477048649', '984', '1477048649', '1477048649', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('5', '2', '1880.00', '2380.00', '0.00', '1477126561', '987', '1477126561', '1477126561', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('6', '1', '500.00', '588.00', '0.00', '1477126561', '987', '1477126561', '1477126561', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('7', '1', '478.00', '508.00', '0.00', '1477126561', '987', '1477126561', '1477126561', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('8', '2', '2900.00', '3586.00', '0.00', '1477126561', '987', '1477126561', '1477126561', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('9', '1', '1000.00', '1176.00', '0.00', '1477127566', '988', '1477127566', '1477127566', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('10', '2', '5800.00', '7172.00', '0.00', '1477127566', '988', '1477127566', '1477127566', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('11', '1', '500.00', '588.00', '0.00', '1477135251', '990', '1477135251', '1477135251', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('18', '1', '478.00', '508.00', '0.00', '1477276234', '997', '1477276234', '1477276234', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('19', '1', '500.00', '588.00', '0.00', '1477276234', '997', '1477276234', '1477276234', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('20', '2', '1880.00', '2380.00', '0.00', '1477276234', '998', '1477276234', '1477276234', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('21', '1', '468.00', '568.00', '0.00', '1477282608', '1002', '1477282608', '1477282608', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('22', '2', '2900.00', '3586.00', '0.00', '1477282608', '1003', '1477282608', '1477282608', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('23', '1', '468.00', '568.00', '0.00', '1477351959', '1006', '1477351959', '1477351959', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('24', '2', '1880.00', '2380.00', '0.00', '1477351959', '1007', '1477351959', '1477351959', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('25', '1', '468.00', '568.00', '0.00', '1477527898', '1009', '1477527898', '1477527898', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('26', '1', '500.00', '588.00', '0.00', '1477544652', '1014', '1477544652', '1477544652', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('27', '1', '500.00', '588.00', '0.00', '1477546355', '1016', '1477546355', '1477546355', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('28', '1', '500.00', '588.00', '0.00', '1477558326', '1017', '1477558326', '1477558326', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('29', '2', '1880.00', '2380.00', '0.00', '1477559138', '1018', '1477559138', '1477559138', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('30', '1', '500.00', '588.00', '0.00', '1477559944', '1019', '1477559944', '1477559944', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('31', '1', '238.00', '258.00', '0.00', '1477565165', '1024', '1477565165', '1477565165', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('32', '1', '238.00', '258.00', '0.00', '1477565278', '1025', '1477565278', '1477565278', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('33', '1', '238.00', '258.00', '0.00', '1477565342', '1026', '1477565342', '1477565342', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('34', '1', '238.00', '258.00', '0.00', '1477565405', '1027', '1477565405', '1477565405', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('35', '1', '500.00', '588.00', '0.00', '1477611552', '1029', '1477611552', '1477611552', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('36', '2', '1880.00', '2380.00', '0.00', '1478567659', '1034', '1478567659', '1478567659', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('37', '1', '468.00', '568.00', '0.00', '1478568109', '1035', '1478568109', '1478568109', '1', '0', '');
INSERT INTO `jrkj_settlement` VALUES ('38', '1', '1000.00', '1176.00', '0.00', '1479112107', '1037', '1479112107', '1479112107', '1', '0', '');

-- ----------------------------
-- Table structure for jrkj_settlement_order
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_settlement_order`;
CREATE TABLE `jrkj_settlement_order` (
  `order_id` int(10) unsigned NOT NULL,
  `settlement_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_settlement_order
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_sn_code
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_sn_code`;
CREATE TABLE `jrkj_sn_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_sku_id` int(10) unsigned NOT NULL,
  `sn` char(16) NOT NULL DEFAULT '',
  `create_time` int(10) unsigned NOT NULL,
  `update_time` int(10) unsigned NOT NULL,
  `use_time` int(10) unsigned NOT NULL,
  `status` tinyint(4) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `pwd` char(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_sn_code
-- ----------------------------
INSERT INTO `jrkj_sn_code` VALUES ('1', '372', '16360152389', '1461397163', '1461397163', '0', '1', '350', '');
INSERT INTO `jrkj_sn_code` VALUES ('2', '375', '19615202769', '1461397196', '1461397196', '0', '1', '353', '');
INSERT INTO `jrkj_sn_code` VALUES ('3', '376', '28218947725', '1461397282', '1461397282', '0', '1', '354', '');
INSERT INTO `jrkj_sn_code` VALUES ('4', '377', '33780822287', '1461397337', '1461397337', '0', '1', '355', '');
INSERT INTO `jrkj_sn_code` VALUES ('5', '378', '36794020922', '1461397367', '1461397367', '0', '1', '356', '');
INSERT INTO `jrkj_sn_code` VALUES ('6', '379', '53066946556', '1461397530', '1461397530', '0', '1', '357', '');
INSERT INTO `jrkj_sn_code` VALUES ('7', '380', '59859221902', '1461397598', '1461397598', '0', '1', '358', '');
INSERT INTO `jrkj_sn_code` VALUES ('8', '381', '82145353002', '1461397821', '1461397821', '0', '1', '359', '');
INSERT INTO `jrkj_sn_code` VALUES ('9', '402', '55196633930', '1461636551', '1461636551', '0', '1', '397', '');
INSERT INTO `jrkj_sn_code` VALUES ('10', '404', '33217142557', '1461737332', '1461737332', '0', '1', '399', '');
INSERT INTO `jrkj_sn_code` VALUES ('12', '406', '64253908719', '1461738642', '1461738642', '0', '1', '401', '');
INSERT INTO `jrkj_sn_code` VALUES ('13', '407', '70041744037', '1461738700', '1461738700', '0', '1', '402', '');
INSERT INTO `jrkj_sn_code` VALUES ('14', '408', '80817576784', '1461738808', '1461738808', '0', '1', '403', '');
INSERT INTO `jrkj_sn_code` VALUES ('15', '410', '90990430937', '1461738909', '1461738909', '0', '1', '405', '');
INSERT INTO `jrkj_sn_code` VALUES ('19', '414', '15073745282', '1461739150', '1461739150', '0', '1', '409', '');
INSERT INTO `jrkj_sn_code` VALUES ('20', '432', '60656323893', '1462332606', '1462332606', '0', '1', '427', '');
INSERT INTO `jrkj_sn_code` VALUES ('21', '433', '28468658268', '1462334284', '1462334284', '0', '1', '428', '');
INSERT INTO `jrkj_sn_code` VALUES ('22', '435', '88844678581', '1462342888', '1462342888', '0', '1', '430', '');
INSERT INTO `jrkj_sn_code` VALUES ('23', '438', '91518931706', '1462343915', '1462343915', '0', '1', '432', '');
INSERT INTO `jrkj_sn_code` VALUES ('24', '439', '91569131706', '1462343915', '1462343915', '0', '1', '433', '');
INSERT INTO `jrkj_sn_code` VALUES ('25', '440', '91564333268', '1462343915', '1462343915', '0', '1', '433', '');
INSERT INTO `jrkj_sn_code` VALUES ('26', '440', '91594233268', '1462343915', '1462343915', '0', '1', '433', '');
INSERT INTO `jrkj_sn_code` VALUES ('27', '441', '91584933268', '1462343915', '1462343915', '0', '1', '433', '');
INSERT INTO `jrkj_sn_code` VALUES ('28', '460', '73792161756', '1462511737', '1462511737', '0', '1', '448', '');
INSERT INTO `jrkj_sn_code` VALUES ('29', '472', '18076652381', '1462530180', '1462530180', '0', '1', '460', '');
INSERT INTO `jrkj_sn_code` VALUES ('30', '473', '47214988318', '1462536472', '1462536472', '1462538034', '3', '461', '');
INSERT INTO `jrkj_sn_code` VALUES ('31', '504', '25858861756', '1462614258', '1462614258', '0', '1', '492', '');
INSERT INTO `jrkj_sn_code` VALUES ('32', '366', '39474216443', '1462757394', '1462757394', '0', '1', '344', '');
INSERT INTO `jrkj_sn_code` VALUES ('33', '523', '25274133659', '1462861252', '1462861252', '0', '1', '511', '');
INSERT INTO `jrkj_sn_code` VALUES ('34', '508', '79466399493', '1462952794', '1462952794', '0', '1', '496', '');
INSERT INTO `jrkj_sn_code` VALUES ('35', '536', '89610254180', '1462952896', '1462952896', '0', '1', '524', '');
INSERT INTO `jrkj_sn_code` VALUES ('36', '536', '89652855743', '1462952896', '1462952896', '0', '1', '524', '');
INSERT INTO `jrkj_sn_code` VALUES ('37', '539', '10564434116', '1463015105', '1463015105', '0', '1', '527', '');
INSERT INTO `jrkj_sn_code` VALUES ('38', '540', '36457460678', '1463015364', '1463015364', '0', '1', '528', '');
INSERT INTO `jrkj_sn_code` VALUES ('39', '541', '72346638803', '1463015723', '1463015723', '0', '1', '529', '');
INSERT INTO `jrkj_sn_code` VALUES ('40', '542', '53393657553', '1463017533', '1463017533', '0', '1', '530', '');
INSERT INTO `jrkj_sn_code` VALUES ('41', '548', '52588485678', '1463032525', '1463032525', '0', '1', '536', '');
INSERT INTO `jrkj_sn_code` VALUES ('42', '551', '38846507553', '1463036388', '1463036388', '0', '1', '539', '');
INSERT INTO `jrkj_sn_code` VALUES ('43', '554', '31037932553', '1463043310', '1463043310', '0', '1', '542', '');
INSERT INTO `jrkj_sn_code` VALUES ('44', '555', '36747826303', '1463043367', '1463043367', '0', '1', '543', '');
INSERT INTO `jrkj_sn_code` VALUES ('45', '556', '83078116928', '1463043830', '1463043830', '0', '1', '544', '');
INSERT INTO `jrkj_sn_code` VALUES ('46', '557', '91497224741', '1463043914', '1463043914', '0', '1', '545', '');
INSERT INTO `jrkj_sn_code` VALUES ('47', '561', '90292170053', '1463044902', '1463044902', '0', '1', '549', '');
INSERT INTO `jrkj_sn_code` VALUES ('48', '562', '98515296616', '1463044985', '1463044985', '0', '1', '550', '');
INSERT INTO `jrkj_sn_code` VALUES ('49', '564', '02562159116', '1463045025', '1463045025', '0', '1', '552', '');
INSERT INTO `jrkj_sn_code` VALUES ('50', '565', '07254954428', '1463045072', '1463045072', '0', '1', '553', '');
INSERT INTO `jrkj_sn_code` VALUES ('51', '579', '20977637241', '1463045209', '1463045209', '0', '1', '567', '');
INSERT INTO `jrkj_sn_code` VALUES ('52', '574', '58173895053', '1463045581', '1463045581', '0', '1', '562', '');
INSERT INTO `jrkj_sn_code` VALUES ('53', '574', '58126995053', '1463045581', '1463045581', '0', '1', '562', '');
INSERT INTO `jrkj_sn_code` VALUES ('54', '566', '72068582553', '1463045720', '1463045720', '0', '1', '554', '');
INSERT INTO `jrkj_sn_code` VALUES ('55', '587', '14247379648', '1463117142', '1463117142', '0', '1', '575', '');
INSERT INTO `jrkj_sn_code` VALUES ('57', '614', '56951123574', '1464228569', '1464228569', '0', '1', '602', '');
INSERT INTO `jrkj_sn_code` VALUES ('58', '633', '05543620449', '1464254055', '1464254055', '0', '1', '618', '');
INSERT INTO `jrkj_sn_code` VALUES ('59', '634', '05556620449', '1464254055', '1464254055', '0', '1', '619', '');
INSERT INTO `jrkj_sn_code` VALUES ('60', '642', '20311715597', '1464314203', '1464314203', '0', '1', '625', '');
INSERT INTO `jrkj_sn_code` VALUES ('61', '643', '33151746847', '1464314331', '1464314331', '0', '1', '626', '');
INSERT INTO `jrkj_sn_code` VALUES ('62', '644', '85716146847', '1464314857', '1464314857', '0', '1', '627', '');
INSERT INTO `jrkj_sn_code` VALUES ('63', '645', '00285981222', '1464315002', '1464315002', '0', '1', '628', '');
INSERT INTO `jrkj_sn_code` VALUES ('64', '646', '18438049972', '1464315184', '1464315184', '0', '1', '629', '');
INSERT INTO `jrkj_sn_code` VALUES ('65', '647', '22646529659', '1464315226', '1464315226', '0', '1', '630', '');
INSERT INTO `jrkj_sn_code` VALUES ('66', '648', '34268190597', '1464316342', '1464316342', '0', '1', '631', '');
INSERT INTO `jrkj_sn_code` VALUES ('67', '649', '34298690597', '1464316342', '1464316342', '0', '1', '631', '');
INSERT INTO `jrkj_sn_code` VALUES ('68', '650', '34245992159', '1464316342', '1464316342', '0', '1', '632', '');
INSERT INTO `jrkj_sn_code` VALUES ('69', '651', '34268492159', '1464316342', '1464316342', '0', '1', '632', '');
INSERT INTO `jrkj_sn_code` VALUES ('70', '652', '59211599972', '1464318592', '1464318592', '0', '1', '633', '');
INSERT INTO `jrkj_sn_code` VALUES ('71', '652', '59273899972', '1464318592', '1464318592', '0', '1', '633', '');
INSERT INTO `jrkj_sn_code` VALUES ('72', '652', '59264899972', '1464318592', '1464318592', '0', '1', '633', '');
INSERT INTO `jrkj_sn_code` VALUES ('73', '652', '59325701534', '1464318593', '1464318593', '0', '1', '633', '');
INSERT INTO `jrkj_sn_code` VALUES ('74', '652', '59364301534', '1464318593', '1464318593', '0', '1', '633', '');
INSERT INTO `jrkj_sn_code` VALUES ('75', '652', '59372301534', '1464318593', '1464318593', '0', '1', '633', '');
INSERT INTO `jrkj_sn_code` VALUES ('76', '653', '19761257030', '1464335197', '1464335197', '0', '1', '634', '');
INSERT INTO `jrkj_sn_code` VALUES ('77', '653', '19730157030', '1464335197', '1464335197', '0', '1', '634', '');
INSERT INTO `jrkj_sn_code` VALUES ('78', '653', '19724357030', '1464335197', '1464335197', '0', '1', '634', '');
INSERT INTO `jrkj_sn_code` VALUES ('79', '653', '19795458593', '1464335197', '1464335197', '0', '1', '634', '');
INSERT INTO `jrkj_sn_code` VALUES ('80', '653', '19746858593', '1464335197', '1464335197', '0', '1', '634', '');
INSERT INTO `jrkj_sn_code` VALUES ('81', '654', '19726558593', '1464335197', '1464335197', '0', '1', '634', '');
INSERT INTO `jrkj_sn_code` VALUES ('82', '654', '19795358593', '1464335197', '1464335197', '0', '1', '634', '');
INSERT INTO `jrkj_sn_code` VALUES ('83', '654', '19731760156', '1464335197', '1464335197', '0', '1', '634', '');
INSERT INTO `jrkj_sn_code` VALUES ('84', '654', '19760060156', '1464335197', '1464335197', '0', '1', '634', '');
INSERT INTO `jrkj_sn_code` VALUES ('95', '658', '74331246383', '1464336743', '1464336743', '0', '1', '637', '');
INSERT INTO `jrkj_sn_code` VALUES ('96', '658', '74386946383', '1464336743', '1464336743', '0', '1', '637', '');
INSERT INTO `jrkj_sn_code` VALUES ('97', '658', '74312047946', '1464336743', '1464336743', '0', '1', '637', '');
INSERT INTO `jrkj_sn_code` VALUES ('98', '659', '74367347946', '1464336743', '1464336743', '0', '1', '637', '');
INSERT INTO `jrkj_sn_code` VALUES ('99', '659', '74344747946', '1464336743', '1464336743', '0', '1', '637', '');
INSERT INTO `jrkj_sn_code` VALUES ('100', '671', '99936003510', '1464400999', '1464400999', '0', '1', '649', '');
INSERT INTO `jrkj_sn_code` VALUES ('101', '679', '62647613219', '1464416626', '1464416626', '0', '1', '657', '');
INSERT INTO `jrkj_sn_code` VALUES ('102', '681', '18843243515', '1464428188', '1464428188', '0', '1', '659', '');
INSERT INTO `jrkj_sn_code` VALUES ('103', '683', '60452210702', '1464430604', '1464430604', '0', '1', '661', '');
INSERT INTO `jrkj_sn_code` VALUES ('104', '683', '60429510702', '1464430604', '1464430604', '0', '1', '661', '');
INSERT INTO `jrkj_sn_code` VALUES ('105', '689', '81040436076', '1464574810', '1464574810', '0', '1', '663', '');
INSERT INTO `jrkj_sn_code` VALUES ('106', '689', '81095737638', '1464574810', '1464574810', '0', '1', '663', '');
INSERT INTO `jrkj_sn_code` VALUES ('107', '690', '03555245451', '1464575035', '1464575035', '1466496073', '3', '664', '');
INSERT INTO `jrkj_sn_code` VALUES ('108', '691', '03513447013', '1464575035', '1464575035', '1466496073', '3', '664', '');
INSERT INTO `jrkj_sn_code` VALUES ('109', '691', '03518247013', '1464575035', '1464575035', '1466496073', '3', '664', '');
INSERT INTO `jrkj_sn_code` VALUES ('110', '693', '12836915763', '1464580128', '1464580128', '0', '1', '666', '');
INSERT INTO `jrkj_sn_code` VALUES ('111', '693', '12896815763', '1464580128', '1464580128', '0', '1', '666', '');
INSERT INTO `jrkj_sn_code` VALUES ('112', '694', '12860115763', '1464580128', '1464580128', '0', '1', '666', '');
INSERT INTO `jrkj_sn_code` VALUES ('113', '694', '12866617326', '1464580128', '1464580128', '0', '1', '666', '');
INSERT INTO `jrkj_sn_code` VALUES ('114', '694', '12856017326', '1464580128', '1464580128', '0', '1', '666', '');
INSERT INTO `jrkj_sn_code` VALUES ('115', '695', '12822217326', '1464580128', '1464580128', '0', '1', '666', '');
INSERT INTO `jrkj_sn_code` VALUES ('116', '696', '02136112638', '1464591021', '1464591021', '0', '1', '667', '');
INSERT INTO `jrkj_sn_code` VALUES ('117', '697', '03934542326', '1464591039', '1464591039', '1466496155', '3', '668', '');
INSERT INTO `jrkj_sn_code` VALUES ('118', '697', '03910343888', '1464591039', '1464591039', '1466496155', '3', '668', '');
INSERT INTO `jrkj_sn_code` VALUES ('119', '698', '85115665763', '1464593851', '1464593851', '0', '1', '669', '');
INSERT INTO `jrkj_sn_code` VALUES ('120', '699', '85142165763', '1464593851', '1464593851', '0', '1', '670', '');
INSERT INTO `jrkj_sn_code` VALUES ('121', '700', '45034956388', '1464595450', '1464595450', '0', '1', '671', '');
INSERT INTO `jrkj_sn_code` VALUES ('122', '701', '45060456388', '1464595450', '1464595450', '0', '1', '672', '');
INSERT INTO `jrkj_sn_code` VALUES ('123', '702', '44196428263', '1464598441', '1464598441', '0', '1', '673', '');
INSERT INTO `jrkj_sn_code` VALUES ('124', '703', '51043373576', '1464661510', '1464661510', '0', '1', '674', '');
INSERT INTO `jrkj_sn_code` VALUES ('125', '703', '51089373576', '1464661510', '1464661510', '0', '1', '674', '');
INSERT INTO `jrkj_sn_code` VALUES ('126', '704', '51024073576', '1464661510', '1464661510', '0', '1', '674', '');
INSERT INTO `jrkj_sn_code` VALUES ('127', '704', '51061575138', '1464661510', '1464661510', '0', '1', '674', '');
INSERT INTO `jrkj_sn_code` VALUES ('128', '705', '73270173576', '1464680732', '1464680732', '0', '1', '675', '');
INSERT INTO `jrkj_sn_code` VALUES ('129', '709', '54614250138', '1464682546', '1464682546', '0', '1', '679', '');
INSERT INTO `jrkj_sn_code` VALUES ('130', '709', '54624150138', '1464682546', '1464682546', '0', '1', '679', '');
INSERT INTO `jrkj_sn_code` VALUES ('131', '710', '58829223576', '1464682588', '1464682588', '0', '1', '680', '');
INSERT INTO `jrkj_sn_code` VALUES ('132', '710', '58890623576', '1464682588', '1464682588', '0', '1', '680', '');
INSERT INTO `jrkj_sn_code` VALUES ('133', '775', '55684353009', '1465036556', '1465036556', '0', '1', '792', '');
INSERT INTO `jrkj_sn_code` VALUES ('134', '16', '82527893634', '1465036825', '1465036825', '0', '1', '16', '');
INSERT INTO `jrkj_sn_code` VALUES ('135', '774', '51256753009', '1465037512', '1465037512', '0', '1', '791', '');
INSERT INTO `jrkj_sn_code` VALUES ('136', '804', '25166653009', '1465039251', '1465039251', '0', '1', '821', '');
INSERT INTO `jrkj_sn_code` VALUES ('137', '805', '25183253009', '1465039251', '1465039251', '0', '1', '822', '');
INSERT INTO `jrkj_sn_code` VALUES ('138', '806', '53119618710', '1465178531', '1465178531', '0', '1', '823', '');
INSERT INTO `jrkj_sn_code` VALUES ('139', '807', '53125418710', '1465178531', '1465178531', '0', '1', '824', '');
INSERT INTO `jrkj_sn_code` VALUES ('140', '808', '80757874960', '1465180807', '1465180807', '0', '1', '825', '');
INSERT INTO `jrkj_sn_code` VALUES ('143', '811', '97421478085', '1465180974', '1465180974', '0', '1', '828', '');
INSERT INTO `jrkj_sn_code` VALUES ('144', '813', '68736614023', '1465184687', '1465184687', '0', '1', '830', '');
INSERT INTO `jrkj_sn_code` VALUES ('145', '823', '81023725075', '1465267810', '1465267810', '0', '1', '839', '');
INSERT INTO `jrkj_sn_code` VALUES ('146', '819', '98428704762', '1465268984', '1465268984', '0', '1', '836', '');
INSERT INTO `jrkj_sn_code` VALUES ('147', '820', '98464306325', '1465268984', '1465268984', '0', '1', '836', '');
INSERT INTO `jrkj_sn_code` VALUES ('148', '820', '98462307887', '1465268984', '1465268984', '0', '1', '836', '');
INSERT INTO `jrkj_sn_code` VALUES ('149', '828', '51498406555', '1465797514', '1465797514', '0', '1', '844', '');
INSERT INTO `jrkj_sn_code` VALUES ('150', '830', '69047775305', '1465871690', '1465871690', '0', '1', '846', '');
INSERT INTO `jrkj_sn_code` VALUES ('151', '831', '69018275305', '1465871690', '1465871690', '0', '1', '846', '');
INSERT INTO `jrkj_sn_code` VALUES ('152', '832', '69060576867', '1465871690', '1465871690', '0', '1', '846', '');
INSERT INTO `jrkj_sn_code` VALUES ('153', '833', '72444278430', '1465871724', '1465871724', '0', '1', '847', '');
INSERT INTO `jrkj_sn_code` VALUES ('154', '834', '78590308117', '1465871785', '1465871785', '0', '1', '848', '');
INSERT INTO `jrkj_sn_code` VALUES ('155', '834', '78562708117', '1465871785', '1465871785', '0', '1', '848', '');
INSERT INTO `jrkj_sn_code` VALUES ('156', '834', '78557708117', '1465871785', '1465871785', '0', '1', '848', '');
INSERT INTO `jrkj_sn_code` VALUES ('157', '837', '08135947180', '1465876081', '1465876081', '0', '1', '851', '');
INSERT INTO `jrkj_sn_code` VALUES ('158', '838', '80669198742', '1465892806', '1465892806', '0', '1', '852', '');
INSERT INTO `jrkj_sn_code` VALUES ('159', '840', '47538389367', '1465893475', '1465893475', '0', '1', '854', '');
INSERT INTO `jrkj_sn_code` VALUES ('160', '847', '36513994055', '1465952365', '1465952365', '0', '1', '861', '');
INSERT INTO `jrkj_sn_code` VALUES ('161', '848', '96285947180', '1465952962', '1465952962', '0', '1', '862', '');
INSERT INTO `jrkj_sn_code` VALUES ('162', '853', '46867628430', '1465979468', '1465979468', '0', '1', '867', '');
INSERT INTO `jrkj_sn_code` VALUES ('163', '854', '83220565930', '1465980832', '1465980832', '0', '1', '868', '');
INSERT INTO `jrkj_sn_code` VALUES ('164', '857', '48747495617', '1466051487', '1466051487', '0', '1', '871', '');
INSERT INTO `jrkj_sn_code` VALUES ('165', '858', '89046911242', '1466065890', '1466065890', '0', '1', '872', '');
INSERT INTO `jrkj_sn_code` VALUES ('166', '858', '89030112805', '1466065890', '1466065890', '0', '1', '872', '');
INSERT INTO `jrkj_sn_code` VALUES ('167', '859', '89026212805', '1466065890', '1466065890', '0', '1', '873', '');
INSERT INTO `jrkj_sn_code` VALUES ('168', '860', '09095058117', '1466067090', '1466067090', '0', '1', '874', '');
INSERT INTO `jrkj_sn_code` VALUES ('169', '861', '09098658117', '1466067090', '1466067090', '0', '1', '874', '');
INSERT INTO `jrkj_sn_code` VALUES ('170', '864', '98356556555', '1466153983', '1466153983', '0', '1', '877', '');
INSERT INTO `jrkj_sn_code` VALUES ('171', '871', '37722678468', '1466217377', '1466217377', '0', '1', '883', '');
INSERT INTO `jrkj_sn_code` VALUES ('172', '870', '76426464405', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('173', '870', '76441164405', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('174', '870', '76489265968', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('175', '870', '76462565968', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('176', '870', '76493665968', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('177', '870', '76491965968', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('178', '870', '76432067530', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('179', '870', '76491767530', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('180', '870', '76494267530', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('181', '870', '76431767530', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('182', '870', '76439767530', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('183', '870', '76412569093', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('184', '870', '76462769093', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('185', '870', '76485269093', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('186', '870', '76427369093', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('187', '870', '76468869093', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('188', '870', '76465770655', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('189', '870', '76442270655', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('190', '870', '76473070655', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('191', '870', '76418370655', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('192', '870', '76488272218', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('193', '870', '76458472218', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('194', '870', '76452072218', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('195', '870', '76462472218', '1466217764', '1466217764', '0', '1', '882', '');
INSERT INTO `jrkj_sn_code` VALUES ('196', '873', '26478781593', '1466218264', '1466218264', '0', '1', '885', '');
INSERT INTO `jrkj_sn_code` VALUES ('197', '874', '54987925343', '1466229549', '1466229549', '0', '1', '886', '');
INSERT INTO `jrkj_sn_code` VALUES ('198', '874', '54977525343', '1466229549', '1466229549', '0', '1', '886', '');
INSERT INTO `jrkj_sn_code` VALUES ('199', '875', '08399580030', '1466230083', '1466230083', '0', '1', '887', '');
INSERT INTO `jrkj_sn_code` VALUES ('200', '877', '34053950343', '1466230340', '1466230340', '0', '1', '889', '');
INSERT INTO `jrkj_sn_code` VALUES ('201', '878', '03112906593', '1466391031', '1466391031', '0', '1', '890', '');
INSERT INTO `jrkj_sn_code` VALUES ('202', '878', '03145608155', '1466391031', '1466391031', '0', '1', '890', '');
INSERT INTO `jrkj_sn_code` VALUES ('203', '879', '88539003468', '1466478885', '1466478885', '1466496038', '3', '891', '');
INSERT INTO `jrkj_sn_code` VALUES ('204', '883', '85747462843', '1466483857', '1466483857', '0', '1', '895', '');
INSERT INTO `jrkj_sn_code` VALUES ('205', '884', '03163611280', '1466484031', '1466484031', '0', '1', '896', '');
INSERT INTO `jrkj_sn_code` VALUES ('206', '885', '15596022218', '1466484155', '1466484155', '1466496410', '3', '897', '');
INSERT INTO `jrkj_sn_code` VALUES ('207', '887', '69797486280', '1466498697', '1466498697', '0', '1', '899', '');
INSERT INTO `jrkj_sn_code` VALUES ('208', '888', '82434612843', '1466498824', '1466498824', '0', '1', '900', '');
INSERT INTO `jrkj_sn_code` VALUES ('209', '886', '92596694093', '1466498925', '1466498925', '0', '1', '898', '');
INSERT INTO `jrkj_sn_code` VALUES ('210', '886', '92544994093', '1466498925', '1466498925', '0', '1', '898', '');
INSERT INTO `jrkj_sn_code` VALUES ('211', '889', '29871736280', '1466558298', '1466558298', '0', '1', '901', '');
INSERT INTO `jrkj_sn_code` VALUES ('212', '890', '39492453468', '1466563394', '1466563394', '0', '1', '902', '');
INSERT INTO `jrkj_sn_code` VALUES ('213', '891', '89560409756', '1466566895', '1466566895', '0', '1', '903', '');
INSERT INTO `jrkj_sn_code` VALUES ('214', '892', '44296558194', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('215', '892', '44254058194', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('216', '892', '44229759756', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('217', '892', '44225359756', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('218', '892', '44223359756', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('219', '892', '44250659756', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('220', '892', '44221261319', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('221', '892', '44296161319', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('222', '892', '44263561319', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('223', '892', '44275761319', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('224', '892', '44240362881', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('225', '892', '44252662881', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('226', '892', '44271762881', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('227', '892', '44229462881', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('228', '892', '44258164444', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('229', '892', '44221564444', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('230', '892', '44243664444', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('231', '892', '44214264444', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('232', '892', '44283464444', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('233', '892', '44261466006', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('234', '892', '44240866006', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('235', '892', '44276566006', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('236', '892', '44249766006', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('237', '892', '44220066006', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('238', '892', '44293167569', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('239', '892', '44214967569', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('240', '892', '44240667569', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('241', '892', '44282167569', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('242', '892', '44293267569', '1466570442', '1466570442', '0', '1', '905', '');
INSERT INTO `jrkj_sn_code` VALUES ('243', '893', '09024451944', '1466577090', '1466577090', '0', '1', '906', '');
INSERT INTO `jrkj_sn_code` VALUES ('244', '894', '26590997256', '1466577265', '1466577265', '0', '1', '907', '');
INSERT INTO `jrkj_sn_code` VALUES ('245', '895', '40677425381', '1466577406', '1466577406', '0', '1', '908', '');
INSERT INTO `jrkj_sn_code` VALUES ('246', '896', '52556769131', '1466582525', '1466582525', '0', '1', '909', '');
INSERT INTO `jrkj_sn_code` VALUES ('247', '896', '52530069131', '1466582525', '1466582525', '0', '1', '909', '');
INSERT INTO `jrkj_sn_code` VALUES ('248', '896', '52559869131', '1466582525', '1466582525', '0', '1', '909', '');
INSERT INTO `jrkj_sn_code` VALUES ('249', '896', '52532769131', '1466582525', '1466582525', '0', '1', '909', '');
INSERT INTO `jrkj_sn_code` VALUES ('250', '896', '52558470694', '1466582525', '1466582525', '0', '1', '909', '');
INSERT INTO `jrkj_sn_code` VALUES ('251', '896', '52571070694', '1466582525', '1466582525', '0', '1', '909', '');
INSERT INTO `jrkj_sn_code` VALUES ('252', '896', '52542070694', '1466582525', '1466582525', '0', '1', '909', '');
INSERT INTO `jrkj_sn_code` VALUES ('253', '896', '52532870694', '1466582525', '1466582525', '0', '1', '909', '');
INSERT INTO `jrkj_sn_code` VALUES ('254', '896', '52563372256', '1466582525', '1466582525', '0', '1', '909', '');
INSERT INTO `jrkj_sn_code` VALUES ('255', '896', '52556272256', '1466582525', '1466582525', '0', '1', '909', '');
INSERT INTO `jrkj_sn_code` VALUES ('256', '896', '52539572256', '1466582525', '1466582525', '0', '1', '909', '');
INSERT INTO `jrkj_sn_code` VALUES ('257', '896', '52551472256', '1466582525', '1466582525', '0', '1', '909', '');
INSERT INTO `jrkj_sn_code` VALUES ('258', '902', '99217795742', '1466665992', '1466665992', '0', '1', '914', '');
INSERT INTO `jrkj_sn_code` VALUES ('259', '903', '23570855117', '1466667235', '1466667235', '0', '1', '915', '');
INSERT INTO `jrkj_sn_code` VALUES ('260', '904', '23577656679', '1466667235', '1466667235', '0', '1', '916', '');
INSERT INTO `jrkj_sn_code` VALUES ('261', '905', '11749092617', '1466668117', '1466668117', '0', '1', '917', '');
INSERT INTO `jrkj_sn_code` VALUES ('262', '911', '24822976992', '1466670248', '1466670248', '0', '1', '923', '');
INSERT INTO `jrkj_sn_code` VALUES ('263', '912', '24879878554', '1466670248', '1466670248', '0', '1', '923', '');
INSERT INTO `jrkj_sn_code` VALUES ('264', '913', '96971975429', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('265', '913', '96933175429', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('266', '913', '96979976992', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('267', '913', '96935676992', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('268', '913', '96983176992', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('269', '913', '96982476992', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('270', '913', '96947476992', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('271', '913', '96943878554', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('272', '913', '96996178554', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('273', '913', '96982178554', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('274', '913', '96918278554', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('275', '913', '96953580117', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('276', '913', '96984180117', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('277', '913', '96985980117', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('278', '913', '96946580117', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('279', '913', '96922281679', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('280', '913', '96939981679', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('281', '913', '96924281679', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('282', '913', '96927681679', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('283', '913', '96977881679', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('284', '913', '96992883242', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('285', '913', '96986583242', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('286', '913', '96949083242', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('287', '913', '96917883242', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('288', '913', '96986783242', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('289', '913', '96915684804', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('290', '913', '96940984804', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('291', '913', '96996884804', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('292', '913', '96964584804', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('293', '913', '96998284804', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('294', '913', '96914486367', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('295', '913', '96956586367', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('296', '913', '96984486367', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('297', '913', '96915286367', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('298', '913', '96953886367', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('299', '913', '96956587929', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('300', '913', '96992887929', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('301', '913', '96945787929', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('302', '913', '96992187929', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('303', '913', '96911689492', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('304', '913', '96980089492', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('305', '913', '96970489492', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('306', '913', '96977391054', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('307', '913', '96992791054', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('308', '913', '96972891054', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('309', '913', '96955591054', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('310', '913', '96916491054', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('311', '913', '96966892617', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('312', '913', '96910892617', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('313', '913', '96974592617', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('314', '913', '96956692617', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('315', '913', '96954894179', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('316', '913', '96950294179', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('317', '913', '96938994179', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('318', '913', '96989294179', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('319', '913', '96920495742', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('320', '913', '96981695742', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('321', '913', '96974795742', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('322', '913', '96926595742', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('323', '913', '96930797304', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('324', '913', '96986597304', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('325', '913', '96995897304', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('326', '913', '96957597304', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('327', '913', '96940898867', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('328', '913', '96928098867', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('329', '913', '96951698867', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('330', '913', '96952098867', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('331', '913', '96973098867', '1466754969', '1466754969', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('332', '913', '97090600429', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('333', '913', '97029800429', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('334', '913', '97028300429', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('335', '913', '97083300429', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('336', '913', '97056001992', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('337', '913', '97070501992', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('338', '913', '97046201992', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('339', '913', '97026001992', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('340', '913', '97067003554', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('341', '913', '97044903554', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('342', '913', '97088803554', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('343', '913', '97038103554', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('344', '913', '97038603554', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('345', '913', '97083005117', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('346', '913', '97094405117', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('347', '913', '97084905117', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('348', '913', '97059205117', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('349', '913', '97013206679', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('350', '913', '97073906679', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('351', '913', '97069406679', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('352', '913', '97027506679', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('353', '913', '97010308242', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('354', '913', '97023608242', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('355', '913', '97015208242', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('356', '913', '97060909804', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('357', '913', '97013309804', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('358', '913', '97018811367', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('359', '913', '97066311367', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('360', '913', '97011511367', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('361', '913', '97018411367', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('362', '913', '97018911367', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('363', '913', '97094112929', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('364', '913', '97072012929', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('365', '913', '97071212929', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('366', '913', '97038612929', '1466754970', '1466754970', '0', '1', '924', '');
INSERT INTO `jrkj_sn_code` VALUES ('367', '915', '10536298867', '1466993105', '1466993105', '0', '1', '926', '');
INSERT INTO `jrkj_sn_code` VALUES ('368', '916', '86716489540', '1467166867', '1467166867', '0', '1', '927', '');
INSERT INTO `jrkj_sn_code` VALUES ('369', '917', '03067867665', '1467167030', '1467167030', '0', '1', '928', '');
INSERT INTO `jrkj_sn_code` VALUES ('370', '918', '61084837978', '1467167610', '1467167610', '0', '1', '929', '');
INSERT INTO `jrkj_sn_code` VALUES ('371', '919', '61058437978', '1467167610', '1467167610', '0', '1', '929', '');
INSERT INTO `jrkj_sn_code` VALUES ('372', '920', '25221394228', '1467172252', '1467172252', '0', '1', '930', '');
INSERT INTO `jrkj_sn_code` VALUES ('374', '922', '53149166103', '1467379531', '1467379531', '0', '1', '932', '');
INSERT INTO `jrkj_sn_code` VALUES ('375', '925', '66951511464', '1469171669', '1469171669', '0', '1', '935', '');

-- ----------------------------
-- Table structure for jrkj_supply
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_supply`;
CREATE TABLE `jrkj_supply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `brand` int(2) DEFAULT NULL COMMENT '品牌',
  `info` text COMMENT '采购描述',
  `num` varchar(50) DEFAULT NULL COMMENT '采购量',
  `area` varchar(200) DEFAULT NULL COMMENT '供货地址',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `status` tinyint(2) DEFAULT NULL COMMENT '状态 0为未审核  1为审核',
  `member_id` int(11) DEFAULT NULL COMMENT '会员id',
  `create_time` int(11) DEFAULT NULL COMMENT '插入到数据库的时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_supply
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_tag
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_tag`;
CREATE TABLE `jrkj_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `ordid` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_tag
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_test
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_test`;
CREATE TABLE `jrkj_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `author` varchar(60) DEFAULT NULL,
  `add_time` varchar(100) DEFAULT NULL,
  `content` text,
  `number` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_test
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_topic
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_topic`;
CREATE TABLE `jrkj_topic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `tags` varchar(100) NOT NULL,
  `img` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '200' COMMENT '排序值',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  `is_default` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `templet` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_topic
-- ----------------------------
INSERT INTO `jrkj_topic` VALUES ('1', '孔雀蛋', '', '1604//57173a7a5102d.jpg', '孔雀蛋上新~', '&lt;img src=&quot;/data/attachment/editer/image/2015/08/07/55c41fc9f0537.jpg&quot; alt=&quot;&quot; style=&quot;width:100%;&quot; /&gt;', '0', '200', '1427165588', '1461140090', '0', '微抢购', '微抢购', '微抢购', '0', '');
INSERT INTO `jrkj_topic` VALUES ('2', '今日上新', '', '1604//5717385385c1b.jpg', '今天有好货！', '', '0', '199', '1438853392', '1461139539', '0', '', '', '', '0', '');
INSERT INTO `jrkj_topic` VALUES ('3', '健康生活', '', '1604//5717363989f03.jpg', '绿色 安全 无添加', '&lt;br /&gt;', '0', '198', '1438854242', '1461139001', '0', '', '', '', '0', '');
INSERT INTO `jrkj_topic` VALUES ('4', '原生态', '', '1604//571736c66a4bf.jpg', '品味原生态', '&lt;br /&gt;', '0', '197', '1438854283', '1461139142', '0', '', '', '', '0', '');
INSERT INTO `jrkj_topic` VALUES ('5', '吃货天地', '', '1604//571604afe07aa.jpg', '吃点不一样的~', '&lt;img src=&quot;/theme/mobile/images/ggban.png&quot; alt=&quot;&quot; style=&quot;width:100%;&quot; /&gt;', '0', '150', '1438917488', '1461060783', '0', '', '', '', '0', '');
INSERT INTO `jrkj_topic` VALUES ('6', '店长推荐', '', '1605//573ae6abd8400.jpg', '', '', '0', '200', '1463477931', '1463477931', '1', '', '', '', '0', '');
INSERT INTO `jrkj_topic` VALUES ('7', '特价', '', '1605//573ae6e4712a3.jpg', '', '', '0', '200', '1463477961', '1463477988', '1', '', '', '', '0', '');
INSERT INTO `jrkj_topic` VALUES ('8', '新品上市', '', '1605//5746574c6ef5e.jpg', '', '', '0', '200', '1463477967', '1464227660', '1', '', '', '', '0', '');

-- ----------------------------
-- Table structure for jrkj_topic_item
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_topic_item`;
CREATE TABLE `jrkj_topic_item` (
  `topic_id` int(10) unsigned NOT NULL,
  `item_id` int(11) unsigned NOT NULL,
  `ordid` tinyint(4) unsigned NOT NULL DEFAULT '150'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_topic_item
-- ----------------------------
INSERT INTO `jrkj_topic_item` VALUES ('5', '140', '150');
INSERT INTO `jrkj_topic_item` VALUES ('4', '140', '150');
INSERT INTO `jrkj_topic_item` VALUES ('3', '140', '150');
INSERT INTO `jrkj_topic_item` VALUES ('2', '140', '150');
INSERT INTO `jrkj_topic_item` VALUES ('1', '140', '150');
INSERT INTO `jrkj_topic_item` VALUES ('1', '139', '150');
INSERT INTO `jrkj_topic_item` VALUES ('8', '200', '150');
INSERT INTO `jrkj_topic_item` VALUES ('7', '200', '150');
INSERT INTO `jrkj_topic_item` VALUES ('7', '142', '150');
INSERT INTO `jrkj_topic_item` VALUES ('6', '153', '150');
INSERT INTO `jrkj_topic_item` VALUES ('8', '219', '150');
INSERT INTO `jrkj_topic_item` VALUES ('8', '218', '150');
INSERT INTO `jrkj_topic_item` VALUES ('8', '217', '150');
INSERT INTO `jrkj_topic_item` VALUES ('6', '150', '150');

-- ----------------------------
-- Table structure for jrkj_wealth_apply
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_wealth_apply`;
CREATE TABLE `jrkj_wealth_apply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `apply_member_id` int(10) unsigned NOT NULL,
  `invite_id` int(10) unsigned NOT NULL,
  `bankname` varchar(20) NOT NULL DEFAULT '',
  `bank_account` varchar(30) NOT NULL DEFAULT '',
  `amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `flow_number` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL,
  `create_time` int(10) unsigned NOT NULL,
  `update_time` int(10) unsigned NOT NULL,
  `uname` varchar(30) NOT NULL DEFAULT '',
  `branch` varchar(30) NOT NULL DEFAULT '',
  `city` varchar(30) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_wealth_apply
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_wealth_deposit
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_wealth_deposit`;
CREATE TABLE `jrkj_wealth_deposit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `create_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_wealth_deposit
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_wealth_rule
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_wealth_rule`;
CREATE TABLE `jrkj_wealth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL DEFAULT '',
  `short_title` char(4) NOT NULL DEFAULT '',
  `level` tinyint(4) unsigned NOT NULL COMMENT '当前标准级别，数字大为级别高',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shop_number` tinyint(4) unsigned NOT NULL,
  `shop_rate` tinyint(4) unsigned NOT NULL COMMENT '商铺收益比例',
  `ordinary_max` int(10) unsigned NOT NULL COMMENT '推广普通用户上限',
  `ordinary_rate` tinyint(4) unsigned NOT NULL COMMENT '推广的普通用户消费额抽成',
  `invite_rate` tinyint(4) unsigned NOT NULL COMMENT '直推奖励比例',
  `support_space` tinyint(4) unsigned NOT NULL COMMENT '扶持奖励间隔',
  `support_rate` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_wealth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_withdraw`;
CREATE TABLE `jrkj_withdraw` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `bankname` varchar(30) NOT NULL DEFAULT '',
  `city` varchar(30) NOT NULL DEFAULT '',
  `branch` varchar(30) NOT NULL DEFAULT '',
  `bank_account` varchar(30) NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `uname` varchar(30) NOT NULL DEFAULT '',
  `available` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `rest` decimal(10,2) NOT NULL DEFAULT '0.00',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `platform` varchar(10) NOT NULL DEFAULT 'wealth',
  `type` varchar(10) NOT NULL DEFAULT 'profit',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrkj_withdraw
-- ----------------------------

-- ----------------------------
-- Table structure for jrkj_yh
-- ----------------------------
DROP TABLE IF EXISTS `jrkj_yh`;
CREATE TABLE `jrkj_yh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` decimal(50,2) DEFAULT '0.00',
  `pay_paw` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '123456' COMMENT '支付密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jrkj_yh
-- ----------------------------
INSERT INTO `jrkj_yh` VALUES ('1', '123', '202cb962ac59075b964b07152d234b70', '8888', '/ThinkPHP2/uploads/181211/7e8b4ac8ly1fxv8by2fnzj21mo0x0nch.jpg', null, '');
INSERT INTO `jrkj_yh` VALUES ('2', '222222222', '2222222222222222222', '222', null, null, '');
INSERT INTO `jrkj_yh` VALUES ('3', '熊', '202cb962ac59075b964b07152d234b70', '999999999999999999', null, null, '');
INSERT INTO `jrkj_yh` VALUES ('4', 'Fdaxiong大熊', 'e10adc3949ba59abbe56e057f20f883e', '884873111@qq.com', '/ThinkPHP2/uploads/190103/1.jpg', '72929.99', '456789');
INSERT INTO `jrkj_yh` VALUES ('5', '111', '111', '777', null, null, '');
INSERT INTO `jrkj_yh` VALUES ('6', '999', '6512bd43d9caa6e02c990b0a82652dca', '999', null, null, '');
INSERT INTO `jrkj_yh` VALUES ('7', '王者荣耀', '202cb962ac59075b964b07152d234b70', '884873111@QQcom', null, null, '');
INSERT INTO `jrkj_yh` VALUES ('10', '123456', 'e10adc3949ba59abbe56e057f20f883e', '123456', null, '0.00', '123456');
