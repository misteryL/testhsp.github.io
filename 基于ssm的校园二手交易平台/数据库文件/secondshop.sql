/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : secondshop

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 27/05/2021 17:55:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) NULL DEFAULT NULL,
  `good_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (1, 7, '电风扇', 3);
INSERT INTO `collect` VALUES (2, 20, '牛仔裤', 4);

-- ----------------------------
-- Table structure for first_type
-- ----------------------------
DROP TABLE IF EXISTS `first_type`;
CREATE TABLE `first_type`  (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of first_type
-- ----------------------------
INSERT INTO `first_type` VALUES (1001, '电器');
INSERT INTO `first_type` VALUES (1002, '穿着');
INSERT INTO `first_type` VALUES (1003, '日用');
INSERT INTO `first_type` VALUES (1004, '办公');
INSERT INTO `first_type` VALUES (1005, '电子');
INSERT INTO `first_type` VALUES (1006, '测试');

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_type_id` int(11) NULL DEFAULT NULL,
  `second_type_id` int(11) NULL DEFAULT NULL,
  `describe` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upload_date` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `prise` float NULL DEFAULT NULL,
  `status_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `update` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES (1, '电磁炉', '/statics/image/goods/2/1/1u11JdttpRc.jpeg', 1001, 1001001, '大一的时候买的，就用了一二次，后面懒得用了，9成新', '2021-05-27 15:39:00', 50, 1, 2, '2021-05-27 15:46:20');
INSERT INTO `good` VALUES (2, '台灯', '/statics/image/goods/2/2/2qFwgdgUSrE.jpeg', 1001, 1001002, '我自己买的，用了一年多了，还是好的', '2021-05-27 16:23:25', 30, 0, 2, '2021-05-27 16:47:55');
INSERT INTO `good` VALUES (3, '锅铲', '/statics/image/goods/2/3/3w2aNrhHQR5.jpeg', 1001, 1001001, '自己开小灶用的', '2021-05-27 16:24:04', 10, 1, 2, '2021-05-27 16:24:22');
INSERT INTO `good` VALUES (4, '菜刀', '/statics/image/goods/2/4/4PFhF3aTwQp.jpeg', 1001, 1001001, '打架用的', '2021-05-27 16:26:13', 5, 1, 2, '2021-05-27 16:26:20');
INSERT INTO `good` VALUES (5, '饭勺', '/statics/image/goods/3/5/5wHuH2RF4Zh.jpeg', 1001, 1001001, '', '2021-05-27 16:49:18', 2, 1, 3, '2021-05-27 16:49:29');
INSERT INTO `good` VALUES (6, '砧板', '/statics/image/goods/3/6/6Es4yEkvM2I.jpeg', 1001, 1001001, '', '2021-05-27 16:50:22', 10, 1, 3, '2021-05-27 16:50:31');
INSERT INTO `good` VALUES (7, '电风扇', '/statics/image/goods/3/7/7hcJYNCaPru.jpeg', 1001, 1001002, '', '2021-05-27 16:50:58', 100, 1, 3, '2021-05-27 16:51:10');
INSERT INTO `good` VALUES (8, '吹风机', '/statics/image/goods/3/8/8F2V2R7Jz1U.jpeg', 1001, 1001002, '', '2021-05-27 16:53:29', 60, 1, 3, '2021-05-27 16:53:36');
INSERT INTO `good` VALUES (9, '拖线板', '/statics/image/goods/3/9/9FA52l4mAX6.jpeg', 1001, 1001002, '', '2021-05-27 16:53:48', 30, 1, 3, '2021-05-27 16:53:55');
INSERT INTO `good` VALUES (10, '电热水壶', '/statics/image/goods/3/10/10KfmXgKm41b.jpeg', 1001, 1001002, '', '2021-05-27 16:54:10', 40, 1, 3, '2021-05-27 16:54:21');
INSERT INTO `good` VALUES (11, '女士鞋', '/statics/image/goods/3/11/117YEj4a8RtX.jpeg', 1002, 1002004, '', '2021-05-27 17:00:18', 200, 1, 3, '2021-05-27 17:00:28');
INSERT INTO `good` VALUES (12, '板鞋', '/statics/image/goods/3/12/12fLdnB5THKf.jpeg', 1002, 1002004, '', '2021-05-27 17:00:52', 310, 1, 3, '2021-05-27 17:00:56');
INSERT INTO `good` VALUES (13, '夏天的衣服', '/statics/image/goods/2/13/131xUYtIeZuj.jpeg', 1002, 1002001, '', '2021-05-27 17:14:01', 100, 1, 2, '2021-05-27 17:14:09');
INSERT INTO `good` VALUES (14, '秋天的衣服', '/statics/image/goods/2/14/14TlVbutO2l4.jpeg', 1002, 1002001, '', '2021-05-27 17:14:23', 80, 1, 2, '2021-05-27 17:14:28');
INSERT INTO `good` VALUES (15, '春天的衣服', '/statics/image/goods/2/15/15aNfKBYpv5j.jpeg', 1002, 1002001, '', '2021-05-27 17:15:47', 500, 1, 2, '2021-05-27 17:15:55');
INSERT INTO `good` VALUES (16, '秋衣', '/statics/image/goods/2/16/16JdQuvqvCMR.jpeg', 1002, 1002001, '', '2021-05-27 17:16:17', 201, 1, 2, '2021-05-27 17:16:22');
INSERT INTO `good` VALUES (17, '毛衣', '/statics/image/goods/2/17/172suYjx9SMQ.jpeg', 1002, 1002001, '', '2021-05-27 17:16:32', 410, 1, 2, '2021-05-27 17:16:58');
INSERT INTO `good` VALUES (18, '毛裤', '/statics/image/goods/2/18/18fRDAAt7ihr.jpeg', 1002, 1002001, '', '2021-05-27 17:25:43', 68, 1, 2, '2021-05-27 17:25:50');
INSERT INTO `good` VALUES (19, '休闲裤', '/statics/image/goods/2/19/19at1bh3Mizc.jpeg', 1002, 1002003, '', '2021-05-27 17:26:03', 45, 1, 2, '2021-05-27 17:26:09');
INSERT INTO `good` VALUES (20, '牛仔裤', '/statics/image/goods/2/20/20HYtR9EMGq6.jpeg', 1002, 1002003, '', '2021-05-27 17:26:26', 89, 1, 2, '2021-05-27 17:26:31');
INSERT INTO `good` VALUES (21, '牛仔裤', '/statics/image/goods/2/21/21hh7EAKXbhG.jpeg', 1002, 1002003, '', '2021-05-27 17:26:44', 99, 1, 2, '2021-05-27 17:26:48');
INSERT INTO `good` VALUES (22, '女裙子', '/statics/image/goods/2/22/22XqMqrjncke.jpeg', 1002, 1002002, '', '2021-05-27 17:27:13', 88, 0, 2, '2021-05-27 17:35:25');
INSERT INTO `good` VALUES (23, '皮鞋', '/statics/image/goods/4/23/23uABXbZdY9M.jpeg', 1002, 1002004, '', '2021-05-27 17:35:47', 50, 1, 4, '2021-05-27 17:35:55');

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES (1, 1, '1lzVlVrZRzF.jpeg', '/statics/image/goods/2/1/1lzVlVrZRzF.jpeg');
INSERT INTO `image` VALUES (2, 1, '1iIwDlKGWN4.jpeg', '/statics/image/goods/2/1/1iIwDlKGWN4.jpeg');
INSERT INTO `image` VALUES (3, 2, '2tw4K1ppJ78.jpeg', '/statics/image/goods/2/2/2tw4K1ppJ78.jpeg');
INSERT INTO `image` VALUES (4, 2, '2W7ZWqEkOD7.jpeg', '/statics/image/goods/2/2/2W7ZWqEkOD7.jpeg');
INSERT INTO `image` VALUES (5, 3, '3jplsNAicBO.jpeg', '/statics/image/goods/2/3/3jplsNAicBO.jpeg');
INSERT INTO `image` VALUES (6, 3, '3Utfg1DuSyf.jpeg', '/statics/image/goods/2/3/3Utfg1DuSyf.jpeg');
INSERT INTO `image` VALUES (7, 4, '4laH94IPCXY.jpeg', '/statics/image/goods/2/4/4laH94IPCXY.jpeg');
INSERT INTO `image` VALUES (8, 4, '4aRQRwkd1fN.jpeg', '/statics/image/goods/2/4/4aRQRwkd1fN.jpeg');
INSERT INTO `image` VALUES (9, 5, '5E2wYRmSoxY.jpeg', '/statics/image/goods/3/5/5E2wYRmSoxY.jpeg');
INSERT INTO `image` VALUES (10, 5, '5tqMPBtRN5t.jpeg', '/statics/image/goods/3/5/5tqMPBtRN5t.jpeg');
INSERT INTO `image` VALUES (11, 6, '6hMrzB3KRY1.jpeg', '/statics/image/goods/3/6/6hMrzB3KRY1.jpeg');
INSERT INTO `image` VALUES (12, 6, '6iGy7g4iw5B.jpeg', '/statics/image/goods/3/6/6iGy7g4iw5B.jpeg');
INSERT INTO `image` VALUES (13, 7, '7DqGxpnttia.jpeg', '/statics/image/goods/3/7/7DqGxpnttia.jpeg');
INSERT INTO `image` VALUES (14, 7, '7A69HWzJIGO.jpeg', '/statics/image/goods/3/7/7A69HWzJIGO.jpeg');
INSERT INTO `image` VALUES (15, 8, '8zaJHm1CcVg.jpeg', '/statics/image/goods/3/8/8zaJHm1CcVg.jpeg');
INSERT INTO `image` VALUES (16, 8, '8tBMhBfu36k.jpeg', '/statics/image/goods/3/8/8tBMhBfu36k.jpeg');
INSERT INTO `image` VALUES (17, 9, '9KeCMfAHKuF.jpeg', '/statics/image/goods/3/9/9KeCMfAHKuF.jpeg');
INSERT INTO `image` VALUES (18, 9, '9LaQUccMBYL.jpeg', '/statics/image/goods/3/9/9LaQUccMBYL.jpeg');
INSERT INTO `image` VALUES (19, 10, '10FsH3a7zWft.jpeg', '/statics/image/goods/3/10/10FsH3a7zWft.jpeg');
INSERT INTO `image` VALUES (20, 10, '107wT4wc3cSJ.jpeg', '/statics/image/goods/3/10/107wT4wc3cSJ.jpeg');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `seller` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `seller_id` int(11) NULL DEFAULT NULL,
  `customer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `good_id` int(11) NULL DEFAULT NULL,
  `money` int(11) NULL DEFAULT NULL,
  `submit_date` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `end_date` datetime NULL DEFAULT NULL,
  `status_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, '台灯', '张三', 2, '李四', 3, 2, 30, '2021-05-27 16:47:55', '2021-05-27 16:48:02', 3);
INSERT INTO `order` VALUES (2, '女裙子', '张三', 2, '王二', 4, 22, 88, '2021-05-27 17:35:25', '2021-05-27 17:35:29', 3);

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review_id` int(11) NULL DEFAULT NULL,
  `from_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `from_user_id` int(11) NULL DEFAULT NULL,
  `to_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `to_user_id` int(11) NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upload_date` datetime NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL COMMENT '消息状态表；0：表示未读；1：表示已读。',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES (1, 2, '张三', 2, '王二', 4, '不好意思', '2021-05-27 17:44:08', 0);

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) NULL DEFAULT NULL,
  `from_user_id` int(11) NULL DEFAULT NULL,
  `from_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `to_user_id` int(11) NULL DEFAULT NULL,
  `to_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upload_date` datetime NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL COMMENT '消息状态；0：表示未读；1：表示已读。',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES (1, 7, 3, '李四', 3, NULL, '不好看', '2021-05-27 17:01:23', 0);
INSERT INTO `review` VALUES (2, 14, 4, '王二', 2, NULL, '不好看  真的不好看', '2021-05-27 17:37:13', 1);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (101, 'admin', '管理员');
INSERT INTO `role` VALUES (102, 'user', '用户');

-- ----------------------------
-- Table structure for second_type
-- ----------------------------
DROP TABLE IF EXISTS `second_type`;
CREATE TABLE `second_type`  (
  `id` int(11) NOT NULL,
  `first_type_id` int(11) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of second_type
-- ----------------------------
INSERT INTO `second_type` VALUES (1001001, 1001, '厨房电器');
INSERT INTO `second_type` VALUES (1001002, 1001, '日用电器');
INSERT INTO `second_type` VALUES (1002001, 1002, '上衣');
INSERT INTO `second_type` VALUES (1002002, 1002, '裙子');
INSERT INTO `second_type` VALUES (1002003, 1002, '裤子');
INSERT INTO `second_type` VALUES (1002004, 1002, '鞋');
INSERT INTO `second_type` VALUES (1003001, 1003, '纸巾');
INSERT INTO `second_type` VALUES (1003002, 1003, '牙膏');
INSERT INTO `second_type` VALUES (1003003, 1003, '毛巾');
INSERT INTO `second_type` VALUES (1004001, 1004, '笔');
INSERT INTO `second_type` VALUES (1004002, 1004, '书籍');
INSERT INTO `second_type` VALUES (1004003, 1004, '电脑');
INSERT INTO `second_type` VALUES (1005001, 1005, '手机');
INSERT INTO `second_type` VALUES (1005002, 1005, '电脑');
INSERT INTO `second_type` VALUES (1005003, 1005, '平板');
INSERT INTO `second_type` VALUES (1005004, 1005, '手环');
INSERT INTO `second_type` VALUES (1006001, 1006, '测试1');

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status`  (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `register_date` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `status_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', NULL, '111111@qq.com', 'admin', '101', NULL, 101, '1', '2021-05-01 11:23:14', 4);
INSERT INTO `user` VALUES (2, '张三', '15044444444', '15044444444@qq.com', 'e9165f7bcc0dacaa83c1caada86a41cc', 'VC7lM', '/statics/image/photos/default/default.png', 102, '男', '2021-05-27 15:38:12', 4);
INSERT INTO `user` VALUES (3, '李四', '15611111111', '15611111111@qq.com', '7dda689241989947c237ee7a79049f57', 'SCa49', '/statics/image/photos/default/default.png', 102, '男', '2021-05-27 16:46:43', 5);
INSERT INTO `user` VALUES (4, '王二', '15545124512', '15545124512@qq.com', '7342f76cad5dd447b890076e658f4570', '5o5gN', '/statics/image/photos/4/4Netrz8aCFI.jpeg', 102, '男', '2021-05-27 17:34:47', 4);

SET FOREIGN_KEY_CHECKS = 1;
