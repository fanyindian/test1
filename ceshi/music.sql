/*
 Navicat Premium Data Transfer

 Source Server         : music
 Source Server Type    : MySQL
 Source Server Version : 50168
 Source Host           : localhost:3306
 Source Schema         : music

 Target Server Type    : MySQL
 Target Server Version : 50168
 File Encoding         : 65001

 Date: 24/06/2020 15:31:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` int(255) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('小王', 123456);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `cid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ca` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '华语歌曲', 'a1');
INSERT INTO `category` VALUES ('2', '日韩歌曲', 'a2');
INSERT INTO `category` VALUES ('3', '欧美歌曲', 'a3');
INSERT INTO `category` VALUES ('4', '热门歌曲', 'a4');

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music`  (
  `pid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gsname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gimage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gimage2` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `sfk_0001`(`cid`) USING BTREE,
  CONSTRAINT `sfk_0001` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES ('1', '光年之外', '邓紫棋', 'images/h1.jpg', 'fs', '1', 'video/h1.mp3');
INSERT INTO `music` VALUES ('10', '负けないで', 'ZARD', 'images/r5.jpg', NULL, '2', 'video/r5.mp3');
INSERT INTO `music` VALUES ('11', 'immortals<', 'Fall Out Boy', 'images/o1.jpg', NULL, '3', 'video/o1.mp3');
INSERT INTO `music` VALUES ('12', 'Faint', 'LINKIN PARK', 'images/o2.jpg', NULL, '3', NULL);
INSERT INTO `music` VALUES ('13', 'New York', 'Baptiste Giabiconi', 'images/o3.jpg', NULL, '3', NULL);
INSERT INTO `music` VALUES ('14', 'In The End', 'LINKIN PARK', 'images/o4.jpg', NULL, '3', NULL);
INSERT INTO `music` VALUES ('15', 'All I Have Is Love', 'Stevie Hoang', 'images/o5.jpg', NULL, '3', NULL);
INSERT INTO `music` VALUES ('16', '9420', '麦小兜', 'images/m1.jpg', NULL, '4', 'video/m1.mp3');
INSERT INTO `music` VALUES ('17', 'もっとGO!GO!', 'Apink', 'images/m2.jpg', NULL, '4', NULL);
INSERT INTO `music` VALUES ('18', 'Diaminds', 'Rihanna', 'images/m3.jpg', NULL, '4', NULL);
INSERT INTO `music` VALUES ('19', '等你下课', '周杰伦', 'images/m4.jpg', NULL, '4', NULL);
INSERT INTO `music` VALUES ('2', '病变', '鞠文娴', 'images/h2.jpg', 'dw', '1', 'video/h2.mp3');
INSERT INTO `music` VALUES ('20', '沙漠骆驼', '叶洛洛', 'images/m5.jpg', NULL, '4', NULL);
INSERT INTO `music` VALUES ('3', '烟火里的尘埃', '华晨宇', 'images/h4.jpg', '325', '1', NULL);
INSERT INTO `music` VALUES ('4', '耳朵', '李荣浩', 'images/h5.jpg', '24', '1', NULL);
INSERT INTO `music` VALUES ('5', '岁月神偷', '金玟岐', 'images/h3.jpg', NULL, '1', NULL);
INSERT INTO `music` VALUES ('6', 'lemon', '米津玄師', 'images/r1.jpg', NULL, '2', 'video/r1.mp3');
INSERT INTO `music` VALUES ('7', '我的名字叫', 'T—ara', 'images/r2.jpg', NULL, '2', NULL);
INSERT INTO `music` VALUES ('8', 'TT', 'TWICE', 'images/r3.jpg', NULL, '2', NULL);
INSERT INTO `music` VALUES ('9', '红色味道', 'Red Velvet', 'images/r4.jpg', NULL, '2', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `usersex` enum('男','女') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userphone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `birthday` date NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `code` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '李四', '123456', '男', '123456789', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (2, '王五', '123457', '男', '4538783', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (3, '小红', '1234568', '女', '5464646', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (4, '小李', '124', '男', NULL, '145@qq.com', '2020-05-20', NULL, NULL);
INSERT INTO `user` VALUES (5, '小命', '325', '男', NULL, '143252@qq.com', '2020-05-29', NULL, NULL);
INSERT INTO `user` VALUES (6, 'zhangsan2', '235', '男', NULL, '1436402@qq.com', '2020-06-07', NULL, NULL);
INSERT INTO `user` VALUES (7, '小法', '4235', '男', NULL, '1433@qq.com', '2020-06-08', NULL, NULL);
INSERT INTO `user` VALUES (8, 'cdef', '234', '男', NULL, '1343@qq.com', '2020-06-03', NULL, NULL);
INSERT INTO `user` VALUES (9, '小刚', '123458', '男', NULL, '1443@qq.com', '2020-06-09', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
