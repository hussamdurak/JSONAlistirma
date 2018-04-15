/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100128
 Source Host           : localhost:3306
 Source Schema         : obs

 Target Server Type    : MySQL
 Target Server Version : 100128
 File Encoding         : 65001

 Date: 14/04/2018 23:53:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dersler
-- ----------------------------
DROP TABLE IF EXISTS `dersler`;
CREATE TABLE `dersler`  (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `dkodu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `dadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `dicerigi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`did`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dersler
-- ----------------------------
INSERT INTO `dersler` VALUES (0, 'BSM 103', 'Programlamaya Giriş', 'giriş');
INSERT INTO `dersler` VALUES (1, 'BSM 201', 'Elektrik Devre Temelleri', 'edt');
INSERT INTO `dersler` VALUES (2, 'BSM 205', 'Web Programlama', 'web programlama');
INSERT INTO `dersler` VALUES (3, 'BSM 309', 'İşletim Sistemleri', 'işletim sistemleri');
INSERT INTO `dersler` VALUES (4, 'BSM 458', 'Ağ Programlama', 'ağ programlama');

SET FOREIGN_KEY_CHECKS = 1;
