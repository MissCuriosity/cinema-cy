/*
Navicat MySQL Data Transfer

Source Server         : xmc1993
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : cinema_database

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-04-05 15:43:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `uid` int(7) NOT NULL,
  `bankAccount` varchar(19) NOT NULL,
  `lastTime` timestamp NULL DEFAULT NULL,
  `balance` double NOT NULL,
  `isValid` int(1) NOT NULL,
  `rank` int(1) NOT NULL,
  `integration` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('2', '11', '6222024301070354321', '2015-06-25 20:18:42', '938.5', '1', '2', '686');
INSERT INTO `account` VALUES ('3', '12', '6222024301070259351', '2015-07-09 10:24:42', '2111.2', '1', '4', '0');
INSERT INTO `account` VALUES ('4', '13', '6222024301070259351', '2015-05-27 10:23:23', '2970.5', '1', '4', '229');
INSERT INTO `account` VALUES ('5', '14', '622024301070259351', '2015-04-01 11:58:56', '300', '1', '1', '0');
INSERT INTO `account` VALUES ('6', '15', '62202430104443333', '2015-04-01 12:01:09', '257.25', '1', '1', '42');
INSERT INTO `account` VALUES ('7', '16', '123456789', '2015-04-01 15:14:36', '930.5', '1', '3', '0');
INSERT INTO `account` VALUES ('8', '17', '1234567890', '2015-05-27 10:27:29', '10000', '1', '4', '0');
INSERT INTO `account` VALUES ('9', '18', '12344321', '2015-05-30 13:08:32', '359.5', '1', '2', '40');
INSERT INTO `account` VALUES ('10', '19', '12344321', '2015-05-30 13:18:21', '400', '1', '2', '0');
INSERT INTO `account` VALUES ('11', '20', '12344321', '2015-05-30 13:27:29', '400', '1', '2', '0');

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `qid` int(7) NOT NULL,
  `uid` int(7) NOT NULL,
  `answer` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('1', '6', '12', '2');
INSERT INTO `answer` VALUES ('2', '8', '12', '2');
INSERT INTO `answer` VALUES ('3', '6', '16', '2');

-- ----------------------------
-- Table structure for answermap
-- ----------------------------
DROP TABLE IF EXISTS `answermap`;
CREATE TABLE `answermap` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `uid` int(7) NOT NULL,
  `qid` int(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answermap
-- ----------------------------
INSERT INTO `answermap` VALUES ('1', '11', '4');
INSERT INTO `answermap` VALUES ('2', '11', '5');
INSERT INTO `answermap` VALUES ('3', '11', '6');
INSERT INTO `answermap` VALUES ('5', '13', '6');
INSERT INTO `answermap` VALUES ('6', '15', '6');
INSERT INTO `answermap` VALUES ('8', '11', '8');
INSERT INTO `answermap` VALUES ('9', '18', '6');
INSERT INTO `answermap` VALUES ('10', '18', '9');
INSERT INTO `answermap` VALUES ('11', '11', '9');
INSERT INTO `answermap` VALUES ('12', '12', '9');
INSERT INTO `answermap` VALUES ('13', '12', '6');

-- ----------------------------
-- Table structure for consumption
-- ----------------------------
DROP TABLE IF EXISTS `consumption`;
CREATE TABLE `consumption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `planId` int(8) NOT NULL,
  `amount` int(11) NOT NULL,
  `item` varchar(32) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` double NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consumption
-- ----------------------------
INSERT INTO `consumption` VALUES ('1', '11', '7', '1', '黄海', '2015-03-16 08:20:57', '45', '45');
INSERT INTO `consumption` VALUES ('2', '11', '7', '1', '黄海', '2015-03-17 14:31:52', '45', '45');
INSERT INTO `consumption` VALUES ('3', '11', '7', '2', '黄海', '2015-03-18 15:41:21', '45', '90');
INSERT INTO `consumption` VALUES ('4', '11', '7', '2', '黄海', '2015-03-18 15:42:05', '45', '90');
INSERT INTO `consumption` VALUES ('5', '11', '8', '1', '失孤', '2015-03-25 19:41:52', '45', '45');
INSERT INTO `consumption` VALUES ('6', '11', '8', '1', '失孤', '2015-03-25 19:43:27', '45', '45');
INSERT INTO `consumption` VALUES ('7', '11', '8', '2', '失孤', '2015-03-27 16:52:01', '45', '90');
INSERT INTO `consumption` VALUES ('8', '11', '8', '2', '失孤', '2015-03-28 10:00:51', '45', '81');
INSERT INTO `consumption` VALUES ('9', '11', '8', '2', '失孤', '2015-03-28 10:10:56', '45', '81');
INSERT INTO `consumption` VALUES ('10', '11', '8', '2', '失孤', '2015-03-28 10:16:01', '45', '81');
INSERT INTO `consumption` VALUES ('11', '11', '8', '1', '失孤', '2015-03-28 16:50:57', '45', '40.5');
INSERT INTO `consumption` VALUES ('12', '11', '8', '2', '失孤', '2015-03-29 17:03:29', '45', '81');
INSERT INTO `consumption` VALUES ('13', '11', '8', '2', '失孤', '2015-03-29 19:42:38', '45', '81');
INSERT INTO `consumption` VALUES ('14', '11', '8', '1', '失孤', '2015-03-30 08:37:58', '45', '40.5');
INSERT INTO `consumption` VALUES ('15', '11', '8', '2', '失孤', '2015-03-30 08:40:59', '45', '81');
INSERT INTO `consumption` VALUES ('16', '12', '8', '2', '失孤', '2015-03-31 09:58:23', '45', '72');
INSERT INTO `consumption` VALUES ('17', '13', '16', '2', '失孤', '2015-03-31 10:08:32', '45', '85.5');
INSERT INTO `consumption` VALUES ('18', '15', '8', '1', '失孤', '2015-04-01 12:01:40', '45', '42.75');
INSERT INTO `consumption` VALUES ('19', '16', '8', '2', '失孤', '2015-04-01 15:15:21', '45', '76.5');
INSERT INTO `consumption` VALUES ('20', '11', '8', '2', '失孤', '2015-04-01 15:16:45', '45', '81');
INSERT INTO `consumption` VALUES ('21', '11', '28', '1', '测试', '2015-04-01 15:19:13', '45', '40.5');
INSERT INTO `consumption` VALUES ('22', '13', '8', '2', '失孤', '2015-05-27 10:23:59', '45', '72');
INSERT INTO `consumption` VALUES ('23', '13', '16', '2', '失孤', '2015-05-27 10:24:17', '45', '72');
INSERT INTO `consumption` VALUES ('24', '18', '8', '1', '失孤', '2015-05-30 13:09:14', '45', '40.5');
INSERT INTO `consumption` VALUES ('25', '11', '8', '1', '失孤', '2015-05-30 13:19:21', '45', '40.5');
INSERT INTO `consumption` VALUES ('26', '11', '8', '1', '失孤', '2015-05-30 13:28:29', '45', '40.5');
INSERT INTO `consumption` VALUES ('28', '11', '19', '2', '超凡蜘蛛侠2', '2015-07-07 16:34:19', '45', '81');
INSERT INTO `consumption` VALUES ('29', '11', '9', '2', '超凡蜘蛛侠2', '2015-07-07 16:34:40', '45', '81');
INSERT INTO `consumption` VALUES ('30', '12', '9', '2', '超凡蜘蛛侠2', '2015-07-07 16:35:25', '45', '72');
INSERT INTO `consumption` VALUES ('31', '12', '8', '2', '失孤', '2015-07-09 10:24:14', '45', '72');

-- ----------------------------
-- Table structure for film
-- ----------------------------
DROP TABLE IF EXISTS `film`;
CREATE TABLE `film` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `director` varchar(32) NOT NULL,
  `type` varchar(16) NOT NULL,
  `language` varchar(16) NOT NULL,
  `duration` varchar(16) NOT NULL,
  `firstRunTime` varchar(24) NOT NULL,
  `posturl` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of film
-- ----------------------------
INSERT INTO `film` VALUES ('3', '黄海', '罗宏镇', '犯罪/动作/剧情', '3D中文', '120分钟', '2015年3月15日', 'post/黄海.jpg');
INSERT INTO `film` VALUES ('4', '失孤', '彭三源', '剧情/家庭', '中文', '120分钟', '2015年4月1日', 'post/失孤.jpg');
INSERT INTO `film` VALUES ('5', '超凡蜘蛛侠2', '马克韦布', '科幻/动作/爱情', '英语', '142分钟', '2015年4月3日', 'post/超凡蜘蛛侠2.jpg');
INSERT INTO `film` VALUES ('6', '超能陆战队', '1', '1', '1', '1', '1', 'post/超能陆战队.jpg');
INSERT INTO `film` VALUES ('7', '测试', '1', '1', '1', '1', '1', 'post/超能陆战队.jpg');
INSERT INTO `film` VALUES ('8', 'test', 'test', 'test', 'test', 'test', 'test', 'post/1.1.png');

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `mid` char(7) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fee` double NOT NULL,
  `bankAccount` varchar(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES ('1', '11', '2015-03-24 17:39:28', '200', '6222024301070259358');
INSERT INTO `payment` VALUES ('2', '11', '2015-03-28 10:21:54', '400', '6222024301070354321');
INSERT INTO `payment` VALUES ('3', '11', '2015-03-28 10:33:02', '400', '6222024301070354321');
INSERT INTO `payment` VALUES ('4', '11', '2015-03-28 10:43:54', '400', '6222024301070354321');
INSERT INTO `payment` VALUES ('5', '11', '2015-03-28 10:47:59', '400', '6222024301070354321');
INSERT INTO `payment` VALUES ('6', '11', '2015-03-28 10:54:49', '400', '6222024301070354321');
INSERT INTO `payment` VALUES ('7', '13', '2015-03-29 19:00:43', '200', '6222024301070259351');
INSERT INTO `payment` VALUES ('8', '14', '2015-04-01 11:58:56', '300', '622024301070259351');
INSERT INTO `payment` VALUES ('9', '15', '2015-04-01 12:01:09', '300', '');
INSERT INTO `payment` VALUES ('10', '16', '2015-04-01 15:14:36', '1000', '');
INSERT INTO `payment` VALUES ('11', '13', '2015-05-27 10:23:23', '3000', '6222024301070259351');
INSERT INTO `payment` VALUES ('12', '17', '2015-05-27 10:27:28', '10000', '');
INSERT INTO `payment` VALUES ('13', '18', '2015-05-30 13:08:32', '400', '');
INSERT INTO `payment` VALUES ('14', '19', '2015-05-30 13:18:20', '400', '');
INSERT INTO `payment` VALUES ('15', '20', '2015-05-30 13:27:28', '400', '');
INSERT INTO `payment` VALUES ('16', '11', '2015-06-25 20:18:42', '300', '6222024301070354321');
INSERT INTO `payment` VALUES ('17', '12', '2015-07-09 10:24:41', '400', '6222024301070259351');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `content` varchar(100) NOT NULL,
  `option1` varchar(40) NOT NULL,
  `option2` varchar(40) NOT NULL,
  `option3` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '<少年时代>好看么？', '好看', '一般', '不好看');
INSERT INTO `question` VALUES ('2', '<黄海>好看么？', '好看', '一般', '不好看');
INSERT INTO `question` VALUES ('3', '电影<黄海>好看么？', '好看', '一般', '不好看');
INSERT INTO `question` VALUES ('4', '电影<黄海>的男主演技怎么样？', '很好', '一般', '不怎么样');
INSERT INTO `question` VALUES ('5', '电影<黄海>的女主漂亮么？', '漂亮', '一般', '不怎么样');
INSERT INTO `question` VALUES ('6', '<失孤>的男主角演的怎么样', '一般', '很好', '很差');
INSERT INTO `question` VALUES ('7', '<失孤>的女主角演的怎么样', '一般', '很好', '很差');
INSERT INTO `question` VALUES ('8', '123', '1', '2', '3');
INSERT INTO `question` VALUES ('9', '男主角演技怎么样？', '很好', '一般', '很差');
INSERT INTO `question` VALUES ('10', '影的男主角演技如何', '很差', '一般', '很好');
INSERT INTO `question` VALUES ('11', '电影的男主角演技如何', '很差', '一般', '很好');

-- ----------------------------
-- Table structure for questionmap
-- ----------------------------
DROP TABLE IF EXISTS `questionmap`;
CREATE TABLE `questionmap` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `pid` int(8) NOT NULL,
  `qid` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionmap
-- ----------------------------
INSERT INTO `questionmap` VALUES ('2', '7', '4');
INSERT INTO `questionmap` VALUES ('3', '7', '5');
INSERT INTO `questionmap` VALUES ('4', '8', '6');
INSERT INTO `questionmap` VALUES ('5', '16', '6');
INSERT INTO `questionmap` VALUES ('6', '17', '6');
INSERT INTO `questionmap` VALUES ('7', '13', '4');
INSERT INTO `questionmap` VALUES ('8', '14', '4');
INSERT INTO `questionmap` VALUES ('9', '15', '4');
INSERT INTO `questionmap` VALUES ('10', '13', '4');
INSERT INTO `questionmap` VALUES ('11', '14', '4');
INSERT INTO `questionmap` VALUES ('12', '15', '4');
INSERT INTO `questionmap` VALUES ('13', '28', '8');
INSERT INTO `questionmap` VALUES ('14', '8', '9');
INSERT INTO `questionmap` VALUES ('15', '9', '9');
INSERT INTO `questionmap` VALUES ('16', '7', '10');
INSERT INTO `questionmap` VALUES ('17', '7', '11');

-- ----------------------------
-- Table structure for screeningplan
-- ----------------------------
DROP TABLE IF EXISTS `screeningplan`;
CREATE TABLE `screeningplan` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `director` varchar(32) NOT NULL,
  `type` varchar(16) NOT NULL,
  `language` varchar(16) NOT NULL,
  `duration` varchar(16) NOT NULL,
  `firstRunTime` varchar(24) NOT NULL,
  `airTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `price` double NOT NULL,
  `hallNumber` int(11) NOT NULL,
  `posturl` varchar(100) NOT NULL,
  `state` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of screeningplan
-- ----------------------------
INSERT INTO `screeningplan` VALUES ('7', '黄海', '罗宏镇', '犯罪/动作/剧情', '3D中文', '120分钟', '2015年3月15日', '2015-03-21 11:25:00', '2015-03-21 01:25:00', '45', '1', 'post/黄海.jpg', '2');
INSERT INTO `screeningplan` VALUES ('8', '失孤', '彭三源', '剧情/家庭', '中文', '120分钟', '2015年4月1日', '2015-04-02 11:25:00', '2015-04-02 13:25:00', '45', '1', 'post/失孤.jpg', '1');
INSERT INTO `screeningplan` VALUES ('9', '超凡蜘蛛侠2', '马克韦布', '科幻/动作/爱情', '英语', '142分钟', '2015年4月3日', '2015-04-14 12:25:00', '2015-04-14 14:25:00', '45', '3', 'post/超凡蜘蛛侠2.jpg', '1');
INSERT INTO `screeningplan` VALUES ('10', '超凡蜘蛛侠2', '马克韦布', '科幻/动作/爱情', '英语', '142分钟', '2015年4月3日', '2015-04-22 08:35:00', '2015-04-22 10:30:00', '45', '4', 'post/超凡蜘蛛侠2.jpg', '-1');
INSERT INTO `screeningplan` VALUES ('11', '黄海', '罗宏镇', '犯罪/动作/剧情', '3D中文', '120分钟', '2015年3月15日', '2015-04-24 07:25:00', '2015-04-24 09:25:00', '50', '6', 'post/黄海.jpg', '-1');
INSERT INTO `screeningplan` VALUES ('12', '黄海', '罗宏镇', '犯罪/动作/剧情', '3D中文', '120分钟', '2015年3月15日', '2015-04-24 07:25:00', '2015-04-24 09:25:00', '50', '4', 'post/黄海.jpg', '1');
INSERT INTO `screeningplan` VALUES ('13', '黄海', '罗宏镇', '犯罪/动作/剧情', '3D中文', '120分钟', '2015年3月15日', '2015-04-22 07:25:00', '2015-04-22 09:25:00', '45', '3', 'post/黄海.jpg', '1');
INSERT INTO `screeningplan` VALUES ('14', '黄海', '罗宏镇', '犯罪/动作/剧情', '3D中文', '120分钟', '2015年3月15日', '2015-04-22 14:25:00', '2015-04-22 16:25:00', '45', '5', 'post/黄海.jpg', '1');
INSERT INTO `screeningplan` VALUES ('15', '黄海', '罗宏镇', '犯罪/动作/剧情', '3D中文', '120分钟', '2015年3月15日', '2015-04-20 07:25:00', '2015-04-20 09:25:00', '45', '1', 'post/黄海.jpg', '0');
INSERT INTO `screeningplan` VALUES ('16', '失孤', '彭三源', '剧情/家庭', '中文', '120分钟', '2015年4月1日', '2015-04-25 11:25:00', '2015-04-25 13:25:00', '45', '6', 'post/失孤.jpg', '1');
INSERT INTO `screeningplan` VALUES ('17', '失孤', '彭三源', '剧情/家庭', '中文', '120分钟', '2015年4月1日', '2015-04-26 11:25:00', '2015-04-26 13:25:00', '45', '2', 'post/失孤.jpg', '1');
INSERT INTO `screeningplan` VALUES ('18', '失孤', '彭三源', '剧情/家庭', '中文', '120分钟', '2015年4月1日', '2015-04-27 11:25:00', '2015-04-27 13:25:00', '45', '1', 'post/失孤.jpg', '1');
INSERT INTO `screeningplan` VALUES ('19', '超凡蜘蛛侠2', '马克韦布', '科幻/动作/爱情', '英语', '142分钟', '2015年4月3日', '2015-04-21 08:35:00', '2015-04-21 10:30:00', '45', '6', 'post/超凡蜘蛛侠2.jpg', '1');
INSERT INTO `screeningplan` VALUES ('20', '超凡蜘蛛侠2', '马克韦布', '科幻/动作/爱情', '英语', '142分钟', '2015年4月3日', '2015-04-13 08:35:00', '2015-04-13 10:30:00', '45', '6', 'post/超凡蜘蛛侠2.jpg', '-1');
INSERT INTO `screeningplan` VALUES ('21', '失孤', '彭三源', '剧情/家庭', '中文', '120分钟', '2015年4月1日', '2015-04-25 11:25:00', '2015-04-25 13:25:00', '45', '3', 'post/失孤.jpg', '-1');
INSERT INTO `screeningplan` VALUES ('22', '黄海', '罗宏镇', '犯罪/动作/剧情', '3D中文', '120分钟', '2015年3月15日', '2015-03-21 11:25:00', '2015-03-21 01:25:00', '45', '6', 'post/黄海.jpg', '2');
INSERT INTO `screeningplan` VALUES ('23', '失孤', '罗宏镇', '犯罪/动作/剧情', '3D中文', '120分钟', '2015年4月3日', '2015-01-10 07:30:00', '2015-01-07 09:35:00', '45', '4', 'post/失孤.jpg', '1');
INSERT INTO `screeningplan` VALUES ('27', '失孤', '罗宏镇', '犯罪/动作/剧情', '3D中文', '120分钟', '2015年4月3日', '2015-04-05 06:30:00', '2015-04-05 08:30:00', '30', '3', 'post/失孤.jpg', '0');
INSERT INTO `screeningplan` VALUES ('28', '测试', '1', '1', '1', '1', '1', '2015-01-02 06:30:00', '2015-01-02 09:30:00', '45', '6', 'post/超能陆战队.jpg', '1');
INSERT INTO `screeningplan` VALUES ('29', 'test', 'test', 'test', 'test', 'test', 'test', '2015-04-02 06:25:00', '2015-04-02 09:25:00', '40', '2', 'post/1.1.png', '1');

-- ----------------------------
-- Table structure for seat
-- ----------------------------
DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `pid` int(7) NOT NULL,
  `state` varchar(101) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seat
-- ----------------------------
INSERT INTO `seat` VALUES ('1', '8', 'nyyynnnyynnnyyyynyyyynynnyynnnnnyynyyynynnnnyynynynnnnnnnnnnnnnnyyynnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn');
INSERT INTO `seat` VALUES ('2', '9', 'nnyynnynnnyyyynnnnnnnyynnyynnnnnnnyynnnnnnnnnnnnnnnnnnnnnyyynnnnnyyyynnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn');
INSERT INTO `seat` VALUES ('3', '13', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn');
INSERT INTO `seat` VALUES ('4', '14', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn');
INSERT INTO `seat` VALUES ('5', '15', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn');
INSERT INTO `seat` VALUES ('6', '16', 'nnnnyynnnnnnnnnnnnnnnnnnnyynnnnnnnnnnnnnnnnyynnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn');
INSERT INTO `seat` VALUES ('7', '17', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn');
INSERT INTO `seat` VALUES ('8', '19', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn');
INSERT INTO `seat` VALUES ('9', '23', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn');
INSERT INTO `seat` VALUES ('19', '18', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn');
INSERT INTO `seat` VALUES ('20', '12', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn');
INSERT INTO `seat` VALUES ('21', '28', 'nnnnnnnynnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn');
INSERT INTO `seat` VALUES ('22', '29', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn');

-- ----------------------------
-- Table structure for ticketmanage
-- ----------------------------
DROP TABLE IF EXISTS `ticketmanage`;
CREATE TABLE `ticketmanage` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `pid` int(8) NOT NULL,
  `sold` int(3) NOT NULL,
  `total` int(3) NOT NULL,
  `remain` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ticketmanage
-- ----------------------------
INSERT INTO `ticketmanage` VALUES ('1', '7', '0', '100', '100');
INSERT INTO `ticketmanage` VALUES ('2', '8', '30', '100', '70');
INSERT INTO `ticketmanage` VALUES ('3', '9', '20', '100', '80');
INSERT INTO `ticketmanage` VALUES ('4', '13', '0', '100', '100');
INSERT INTO `ticketmanage` VALUES ('5', '14', '0', '100', '100');
INSERT INTO `ticketmanage` VALUES ('6', '15', '0', '100', '100');
INSERT INTO `ticketmanage` VALUES ('7', '16', '6', '100', '94');
INSERT INTO `ticketmanage` VALUES ('8', '17', '0', '100', '100');
INSERT INTO `ticketmanage` VALUES ('9', '19', '2', '100', '98');
INSERT INTO `ticketmanage` VALUES ('11', '23', '0', '100', '100');
INSERT INTO `ticketmanage` VALUES ('20', '18', '0', '100', '100');
INSERT INTO `ticketmanage` VALUES ('21', '12', '0', '100', '100');
INSERT INTO `ticketmanage` VALUES ('31', '27', '0', '100', '100');
INSERT INTO `ticketmanage` VALUES ('32', '28', '3', '100', '97');
INSERT INTO `ticketmanage` VALUES ('33', '28', '3', '100', '97');
INSERT INTO `ticketmanage` VALUES ('34', '28', '3', '100', '97');
INSERT INTO `ticketmanage` VALUES ('35', '28', '3', '100', '97');
INSERT INTO `ticketmanage` VALUES ('36', '29', '0', '100', '100');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `gendar` int(1) NOT NULL,
  `city` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('11', 'x_m_c', '123', '0', '南京', '2010-01-04', '123@qq.com');
INSERT INTO `user` VALUES ('12', 'x_y_d', '123', '0', '南京', '2010-01-04', '123@qq.com');
INSERT INTO `user` VALUES ('13', 'x_w_s', '123', '0', '南京', '1993-01-15', '1170@qq.com');
INSERT INTO `user` VALUES ('14', 'x_h', '123', '0', '南京', '1982-01-04', 'x_h@qq.com');
INSERT INTO `user` VALUES ('15', 'x_y_p', '123', '1', '南京', '2015-01-02', '1234@qq.com');
INSERT INTO `user` VALUES ('16', 'xmc', '123', '0', '南京', '2015-01-02', '12345@qq.com');
INSERT INTO `user` VALUES ('17', 'w_y_f', '123', '0', '南京', '2015-01-22', 'w_y_f@qq.com');
INSERT INTO `user` VALUES ('18', 'x_test', '123', '0', '南京', '2015-01-02', '1234@qq.com');
INSERT INTO `user` VALUES ('19', 'xyd', '123', '0', '南京', '1994-01-15', 'xyd@qq.com');
INSERT INTO `user` VALUES ('20', 'wsy', '123', '0', '南京', '1993-01-06', '314784088@qq.com');
