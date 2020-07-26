/*
 Navicat Premium Data Transfer

 Source Server         : MySQLConnetion
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : blogdb

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 26/03/2018 10:48:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'rum', '123');
INSERT INTO `admins` VALUES (2, 'hello', '123123');

-- ----------------------------
-- Table structure for ggfiles
-- ----------------------------
DROP TABLE IF EXISTS `ggfiles`;
CREATE TABLE `ggfiles`  (
  `id` int(11) NOT NULL,
  `linkdownload` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ggfiles
-- ----------------------------
INSERT INTO `ggfiles` VALUES (3, 'https://drive.google.com/open?id=1upulw1ymlpokXr5zSne0V9ZJITVrqpun', 'KTM-RC.jpg');
INSERT INTO `ggfiles` VALUES (8, 'https://drive.google.com/uc?id=1LVxEOKIRcPNjYfk4WOZjXbZqFhWXYGmP&export=download', 'addtext_com_MDk1OTA3NDYzNDc.png');

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (1);
INSERT INTO `hibernate_sequence` VALUES (1);

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `header` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`header`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('About', 'My company is the best, ever ever ever', '<p><u><em><strong>Hello, my name is Rum, i havent ever work in IT, but i will do it after those subject</strong></em></u></p>\r\n\r\n<p><u><em><strong>Hello every one, my name is Rum, this is my first Spring Boot app.</strong></em></u></p>\r\n');
INSERT INTO `pages` VALUES ('Event', 'Holiday in Vietnam Edit', '<p>This is very happy because thats Vietnam</p>\r\n\r\n<p>Hello 123</p>\r\n\r\n<p><strong>123123123</strong></p>\r\n\r\n<ul>\r\n	<li><strong>hello</strong></li>\r\n	<li><strong>how are you</strong></li>\r\n	<li><strong>im fire</strong></li>\r\n</ul>\r\n');
insert into pages (header, title, content) values ('Speakers', '', '');
insert into pages (header, title, content) values ('Schedule', '', '');
insert into pages (header, title, content) values ('Sponsors', '', '');
insert into pages (header, title, content) values ('Venue', '', '');
-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 'Man must explore, and this is exploration at its greatest.', 'Problems look mighty small from 150 miles up  editedddd', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec mauris urna. Nulla ut condimentum velit. Maecenas et rhoncus justo, eget cursus turpis. Aliquam non enim odio. Nullam consectetur posuere molestie. Sed in sem faucibus, viverra mi non, semper dolor. Donec eget tortor magna. Sed hendrerit malesuada urna, sit amet faucibus purus tincidunt a. Aliquam quis aliquet velit. In hac habitasse platea dictumst. Quisque laoreet lobortis ligula, eget vestibulum diam cursus et. Etiam ultrices, enim eu elementum rhoncus, nisi sapien congue augue, nec fermentum nibh mauris sit amet est. Phasellus vel vehicula diam. Etiam id felis id neque cursus porta sit amet vel orci.</p>\r\n');
INSERT INTO `posts` VALUES (2, 'I believe every human has a finite number of heartbeats. I don\'t intend to waste any of mine. ', '', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec mauris urna</strong>. Nulla ut condimentum velit. Maecenas et rhoncus justo, eget cursus turpis. Aliquam non enim odio. Nullam consectetur posuere molestie. Sed in sem faucibus, viverra mi non, semper dolor. Donec eget tortor magna. Sed hendrerit malesuada urna, sit amet faucibus purus tincidunt a. Aliquam quis aliquet velit. In hac habitasse platea dictumst. Quisque laoreet lobort<u><strong><em>is ligula, eget vestibulum diam cursus et. Etiam ultrices, </em></strong></u>enim eu elementum rhoncus, nisi sapien congue augue, nec fermentum nibh m<u>auris sit amet est. Phasellus vel vehicula dia</u>m. Etiam id felis id neque cursus porta sit amet vel orci.</p>\r\n');
INSERT INTO `posts` VALUES (3, 'Science has not yet mastered prophecy ', '', '<p><em><strong>Nam mollis cursus ante in mollis. Vivamus pulvinar enim vel orci vestibulum rhoncus. Praesent commodo rutrum lorem, vel posuere nulla rhoncus vitae. Fusce efficitur commodo turpis vitae eleifend. Suspendisse dignissim dui sed dapibus venenatis. Fusce bibendum risus felis. Nullam aliquam nibh vitae odio congue, vitae porttitor lacus consectetur. Nulla pretium cursus urna.</strong></em></p>\r\n');
INSERT INTO `posts` VALUES (5, 'Windows .NET is the borest framework i have erver seen', 'Yeah, click', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec mauris urna. Nulla ut condimentum velit. Maecenas et rhoncus justo, eget cursus turpis. Aliquam non enim odio. Nullam consectetur posuere molestie. Sed in sem faucibus, viverra mi non, semper dolor. Donec eget tortor magna. Sed hendrerit malesuada urna, sit amet faucibus purus tincidunt a. Aliquam quis aliquet velit. In hac habitasse platea dictumst. Quisque laoreet lobortis ligula, eget vestibulum diam cursus et. Etiam ultrices, enim eu elementum rhoncus, nisi sapien congue augue, nec fermentum nibh mauris sit amet est. Phasellus vel vehicula diam. Etiam id felis id neque cursus porta sit amet vel orci. ');
INSERT INTO `posts` VALUES (7, 'aaaaaaaaaaaaaaa', 'ddddddddddd', '<p>asaaaa</p>\r\n');
INSERT INTO `posts` VALUES (8, 'qqqqqqqqqqqqqq', 'qqqqqqqqq', '<p>qqqqqqqqqqqqqqqqqqqqqqqqq</p>\r\n');

SET FOREIGN_KEY_CHECKS = 1;
