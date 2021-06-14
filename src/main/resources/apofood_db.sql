/*
Navicat MySQL Data Transfer

Source Server         : eblog
Source Server Version : 50731
Source Host           : localhost:3306
Source Database       : apofood_db

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2021-06-14 10:41:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admininfo
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(50) DEFAULT NULL COMMENT '登录名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `adminName` varchar(20) NOT NULL COMMENT '管理员姓名',
  `pic` varchar(255) DEFAULT NULL COMMENT '管理员图像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admininfo
-- ----------------------------
INSERT INTO `admininfo` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '张三', '/headimg/user10.png');

-- ----------------------------
-- Table structure for dishes
-- ----------------------------
DROP TABLE IF EXISTS `dishes`;
CREATE TABLE `dishes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dishesName` varchar(50) NOT NULL COMMENT '菜品名称',
  `material` varchar(255) NOT NULL COMMENT '菜品原料',
  `marketPrice` double(10,2) NOT NULL COMMENT '市场价',
  `vipPrice` double(10,2) NOT NULL COMMENT '会员价',
  `dishesTypeId` int(11) NOT NULL COMMENT '菜品类型外键',
  `pic` varchar(255) DEFAULT NULL COMMENT '菜品图片',
  `desc` varchar(255) DEFAULT NULL COMMENT '说明',
  `status` int(255) DEFAULT NULL COMMENT '菜品状态:0  已删除   1    使用中',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dishesTypeId` (`dishesTypeId`) USING BTREE,
  CONSTRAINT `fk_dishestypeid` FOREIGN KEY (`dishesTypeId`) REFERENCES `dishestype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dishes
-- ----------------------------
INSERT INTO `dishes` VALUES ('1', '粉蒸肉', '米粉、五花肉', '26.00', '23.00', '4', '/images/fzr.jpg', ' 肥瘦相间，多吃不腻', '1');
INSERT INTO `dishes` VALUES ('2', '黄瓜拉皮', '黄瓜、拉皮', '8.00', '6.00', '1', '/images/hglp.jpg', '清凉爽口', '1');
INSERT INTO `dishes` VALUES ('3', '水煮鱼', '鱼、辣椒', '38.00', '32.00', '5', '/images/szy.jpg', '鲜、香、麻、辣', '1');
INSERT INTO `dishes` VALUES ('5', '糖醋排骨', '排骨、糖、醋', '26.00', '24.00', '2', '/images/tcpg.jpg', '酸酸甜甜', '1');
INSERT INTO `dishes` VALUES ('6', '五香驴肉', '驴肉、香料', '45.00', '40.00', '1', '/images/wxnr.jpg', '吃了驴肉忘了他', '1');
INSERT INTO `dishes` VALUES ('7', '咸肉菜饭', '青菜、米饭、咸肉', '28.00', '20.00', '3', '/images/xrcf.jpg', '饭菜有点咸，心有点甜', '1');
INSERT INTO `dishes` VALUES ('13', '煮豆丝', '豆丝、蒜苗、辣椒', '12.00', '10.00', '4', '/images/03.jpg', '好吃的豆丝', '0');
INSERT INTO `dishes` VALUES ('15', '青岛大虾', '肉虾', '58.00', '42.00', '4', '/images/01.jpg', '青岛大虾，粉嫩好吃又不贵', '1');
INSERT INTO `dishes` VALUES ('16', '东坡肉', '猪肉', '60.00', '45.00', '4', '/images/01.jpg', '苏轼的最爱', '0');
INSERT INTO `dishes` VALUES ('17', '猪肘子', '肘子', '35.00', '28.00', '4', '/images/01.jpg', '油腻肘子', '0');
INSERT INTO `dishes` VALUES ('18', '肉炒虾', '五花肉，肉虾', '52.00', '39.00', '4', '/images/01.jpg', '超好吃', '0');
INSERT INTO `dishes` VALUES ('19', '油焖大虾', '河虾', '49.00', '37.00', '2', '/images/01.jpg', '超香的大虾', '1');
INSERT INTO `dishes` VALUES ('20', '清蒸鲈鱼', '鲈鱼', '70.00', '56.00', '4', '/images/02.jpg', '新鲜鲈鱼，精致配菜，最高级的享受', '1');
INSERT INTO `dishes` VALUES ('21', '炒面片', '蒜苔，面粉', '30.00', '22.00', '2', '/images/03.jpg', '好吃的主食', '1');

-- ----------------------------
-- Table structure for dishestype
-- ----------------------------
DROP TABLE IF EXISTS `dishestype`;
CREATE TABLE `dishestype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(50) DEFAULT NULL COMMENT '类型名称',
  `status` int(255) DEFAULT NULL COMMENT '状态:0  删除   1  有效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dishestype
-- ----------------------------
INSERT INTO `dishestype` VALUES ('1', '凉菜', '1');
INSERT INTO `dishestype` VALUES ('2', '炒菜', '1');
INSERT INTO `dishestype` VALUES ('3', '炒饭', '1');
INSERT INTO `dishestype` VALUES ('4', '蒸菜', '1');
INSERT INTO `dishestype` VALUES ('5', '川菜', '1');
INSERT INTO `dishestype` VALUES ('84', '武汉菜', '1');
INSERT INTO `dishestype` VALUES ('85', '凉拌菜', '0');

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `factoryOutId` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material
-- ----------------------------
INSERT INTO `material` VALUES ('1', '西红柿', '2020-12-05-OO');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `content` varchar(255) DEFAULT NULL COMMENT '公告内容',
  `notTime` datetime DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '本店特色《咸肉菜饭》', '记得小时候每每妈妈做咸肉菜饭，我都要吃上两大碗，那个香啊，那个好吃啊。真的不知道怎样来形容，吃过的朋友，大家都懂的，呵呵！', '2021-05-23 11:03:13');
INSERT INTO `notice` VALUES ('2', '新增菜单《糖醋排骨》', '糖醋排骨超级好吃，再挑食的小朋友都无法拒绝酸甜的口味。吃光排骨，再用糖醋汁拌米饭，今天的饭量见长', '2021-05-23 11:03:13');
INSERT INTO `notice` VALUES ('3', '枸杞养生茶', '化痰祛湿，活血化瘀，清肝明目，止咳清肺，降低血脂。陈皮也称橘子皮，具有化瘀清热的功效。枸杞是公认的补气血的植物，养肝明目。', '2021-05-23 11:03:13');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT '用户外键',
  `dishesName` varchar(50) DEFAULT NULL COMMENT '菜品名称',
  `number` int(11) DEFAULT NULL COMMENT '数量',
  `orderTime` datetime DEFAULT NULL COMMENT '下单时间',
  `isDelivery` int(10) DEFAULT NULL COMMENT '是否派送:1  是   0  否',
  `status` int(10) DEFAULT NULL COMMENT '订单状态:0  已取消  1  确认   2  未操作',
  `price` double(10,2) DEFAULT NULL COMMENT '单价',
  `numPrice` double(10,2) DEFAULT NULL COMMENT '合计',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `userId` (`userId`) USING BTREE,
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for shoppingcar
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcar`;
CREATE TABLE `shoppingcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT '用户外键',
  `dishesName` varchar(50) DEFAULT NULL COMMENT '菜品名称',
  `number` int(11) DEFAULT NULL COMMENT '数量',
  `price` double(10,2) DEFAULT NULL COMMENT '单价',
  `shoppingTime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `usersId` (`userId`) USING BTREE,
  CONSTRAINT `usersId` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of shoppingcar
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `userName` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `sex` int(10) DEFAULT NULL COMMENT '性别: 1  男   0  女',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `idCard` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `address` varchar(100) DEFAULT NULL COMMENT '家庭住址',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'tom', '202cb962ac59075b964b07152d234b70', ' 尼古拉斯.赵四', '1', '26', '123321123321123456', '武汉', '11111111111', 'tom@163.com');
INSERT INTO `users` VALUES ('2', 'jack', '202cb962ac59075b964b07152d234b70', ' 杰森斯坦.郭达', '1', '40', '234432234432234432', '美国', '22222222222', 'jack@163.com');
INSERT INTO `users` VALUES ('3', 'Jerry', '202cb962ac59075b964b07152d234b70', '莱昂纳多·小沈阳', '0', '20', '345543345543345543', '沈阳', '33333333333', 'jerry@163.com');
INSERT INTO `users` VALUES ('4', 'alex', '202cb962ac59075b964b07152d234b70', '约翰尼·宋小宝', '0', '30', '456654456654456654', '辽宁', '44444444444', 'alex@163.com');
INSERT INTO `users` VALUES ('5', 'cristian', '202cb962ac59075b964b07152d234b70', '克里斯蒂安·刘能', '1', '45', '567765567765567765', '东北', '55555555555', 'cristian@163.com');
INSERT INTO `users` VALUES ('7', 'wang', '202cb962ac59075b964b07152d234b70', '王五', '1', '20', '123321123312123123', '武汉市青山区', '22222222222', 'wang@163.com');
INSERT INTO `users` VALUES ('8', '超级赛亚人', '202cb962ac59075b964b07152d234b70', '南叔苏苏', '1', '24', '4253131214231', '山东烟台', '18891763482', '1241223@qq.com');
INSERT INTO `users` VALUES ('9', 'jackson', '202cb962ac59075b964b07152d234b70', '郑爽儿子', '0', '20', '52219865381935761569', '甘肃兰州', '17756785524', '201858503201@qq.com');
INSERT INTO `users` VALUES ('10', 'hx', '202cb962ac59075b964b07152d234b70', '赵文卓大哥', '1', '4', '123123123', '烟台大学', '1233245345', '1221');
