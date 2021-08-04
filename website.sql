/*
 Navicat Premium Data Transfer

 Source Server         : 腾讯云
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : 49.235.66.139:3306
 Source Schema         : website

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 04/08/2021 14:19:52
*/
CREATE DATABASE `website` CHARACTER SET 'utf8';
use website;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('001', 'Home', '1', '/index', 1, NULL, 0);
INSERT INTO `menu` VALUES ('002', 'Blank', '2', '/layout-blank', 1, NULL, 3);
INSERT INTO `menu` VALUES ('003', 'Inbox', '3', '/email-inbox', 1, NULL, 7);
INSERT INTO `menu` VALUES ('004', 'Profile', '4', '/app-profile', 1, NULL, 11);
INSERT INTO `menu` VALUES ('005', 'Flot', '5', '/chart-flot', 1, NULL, 14);
INSERT INTO `menu` VALUES ('006', 'Accordion', '6', '/ui-accordion', 1, NULL, 18);
INSERT INTO `menu` VALUES ('008', 'Basic Form', '8', '/form-basic', 1, NULL, 22);
INSERT INTO `menu` VALUES ('009', 'Basic Table', '9', '/tablebasic', 1, NULL, 25);
INSERT INTO `menu` VALUES ('012', 'One Column', '2', '/layout-one-column', 1, NULL, 4);
INSERT INTO `menu` VALUES ('013', 'Read', '3', '/email-read', 1, NULL, 8);
INSERT INTO `menu` VALUES ('014', 'Calender', '4', '/app-calender', 1, NULL, 12);
INSERT INTO `menu` VALUES ('015', 'Morris', '5', '/chart-morris', 1, NULL, 15);
INSERT INTO `menu` VALUES ('016', 'Alert', '6', '/ui-alert', 1, NULL, 19);
INSERT INTO `menu` VALUES ('018', 'Form Validation', '8', '/form-validation', 1, NULL, 23);
INSERT INTO `menu` VALUES ('019', 'Data Table', '9', '/tabledata', 1, NULL, 26);
INSERT INTO `menu` VALUES ('022', 'Two column', '2', '/layout-two-column', 1, NULL, 5);
INSERT INTO `menu` VALUES ('023', 'Compose', '3', '/email-compose', 1, NULL, 9);
INSERT INTO `menu` VALUES ('025', 'Sparkline', '5', '/chart-sparkline', 1, NULL, 16);
INSERT INTO `menu` VALUES ('1', 'Dashboard', NULL, NULL, 0, 'icon-speedometer menu-icon', 1);
INSERT INTO `menu` VALUES ('2', 'Layouts', NULL, NULL, 0, 'icon-globe-alt menu-icon', 2);
INSERT INTO `menu` VALUES ('3', 'Email', NULL, NULL, 0, 'icon-envelope menu-icon', 6);
INSERT INTO `menu` VALUES ('4', 'Apps', NULL, NULL, 0, 'icon-screen-tablet menu-icon', 10);
INSERT INTO `menu` VALUES ('5', 'Charts', NULL, NULL, 0, 'icon-graph menu-icon', 13);
INSERT INTO `menu` VALUES ('6', 'UI Components', NULL, NULL, 0, 'icon-grid menu-icon', 17);
INSERT INTO `menu` VALUES ('7', 'Widget', NULL, '/widgets', 1, 'icon-badge menu-icon', 20);
INSERT INTO `menu` VALUES ('8', 'Forms', NULL, NULL, 0, 'icon-note menu-icon', 21);
INSERT INTO `menu` VALUES ('9', 'Table', NULL, NULL, 0, 'icon-menu menu-icon', 24);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('t1', 'yihua', '$2a$10$pAuzCLIe6Sl7kXfX6FEQ1uzM79V2njg.KtL9qawg9JkW7e1f417k2');

SET FOREIGN_KEY_CHECKS = 1;
