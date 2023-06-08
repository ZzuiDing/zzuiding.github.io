/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80028 (8.0.28)
 Source Host           : localhost:3306
 Source Schema         : books

 Target Server Type    : MySQL
 Target Server Version : 80028 (8.0.28)
 File Encoding         : 65001

 Date: 13/05/2023 22:21:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '书籍id',
  `book_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '书籍名称',
  `author` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '作者',
  `publish` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '出版社',
  `isbn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '书籍编码',
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '书籍介绍',
  `language` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '书籍语言',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '书籍售价',
  `pubdate` datetime NULL DEFAULT NULL COMMENT '发布日期',
  `pressmark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '书架号',
  `state` int NULL DEFAULT 0 COMMENT '书籍状态  0 空闲 1借阅 2下架 3 其他',
  `borrowcount` int NULL DEFAULT 0 COMMENT '书被借阅的次数',
  `borrowCardId` int NULL DEFAULT NULL COMMENT '被哪一张卡借走了',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO t_book (book_name, author, publish, isbn, introduction, language, price, pubdate, pressmark, state, borrowcount, borrowCardId)
VALUES
  ('Java编程思想', 'Bruce Eckel', '机械工业出版社', '9787115277389', '《Java编程思想》是一本Java语言编程的经典著作，涵盖了Java语言的基本概念和高级特性，适合Java程序员和初学者阅读。', '中文', 69.90, '2021-01-15 10:30:00', 'A001', 0, 0, NULL),
  ('Python编程从入门到实践', 'Eric Matthes', '人民邮电出版社', '9787115476422', '《Python编程从入门到实践》是一本适合初学者的Python编程教材，通过实际案例和项目实践帮助读者掌握Python编程的基础知识和应用技巧。', '中文', 59.80, '2021-03-20 14:15:00', 'B002', 0, 0, NULL),
  ('数据结构与算法分析', 'Mark Allen Weiss', '清华大学出版社', '9787302392801', '《数据结构与算法分析》是一本经典的计算机科学教材，讲解了常用的数据结构和算法，并提供了代码实现和分析。适合计算机专业的学生和从事编程开发的人员阅读。', '中文', 89.50, '2021-02-10 09:45:00', 'C003', 0, 0, NULL),
  ('Deep Learning', 'Ian Goodfellow, Yoshua Bengio, Aaron Courville', 'MIT Press', '9780262035613', '《Deep Learning》 is a comprehensive book on deep learning algorithms and techniques. It covers various topics such as neural networks, deep learning architectures, and optimization algorithms. Recommended for researchers and practitioners in the field of artificial intelligence.', 'English', 129.99, '2020-12-05 16:20:00', 'D004', 0, 0, NULL),
  ('人工智能简史', '尼克·布斯特罗姆', '人民邮电出版社', '9787115429572', '《人工智能简史》介绍了人工智能的发展历史、技术原理和应用领域，以及人工智能对社会和人类的影响。适合对人工智能感兴趣的读者阅读。', '中文', 45.00, '2021-04-30 11:10:00', 'E005', 0, 0, NULL),
  ('The Lean Startup', 'Eric Ries', 'Crown Business', '9780307887894', 'The Lean Startup is a popular book on startup methodology, emphasizing the importance of iterative product development, validated learning, and continuous improvement. Recommended for aspiring entrepreneurs and startup founders.', 'English', 24.99, '2020-11-18 13:55:00', 'F006', 0, 0, NULL),
  ('计算机网络：自顶向下方法', 'James F. Kurose, Keith W. Ross', '机械工业出版社', '9787111576746', '《计算机网络：自顶向下方法》是一本经典的计算机网络教材，介绍了计算机网络的原理、协议和应用，适合计算机专业学生和从事网络相关工作的人员阅读。', '中文', 79.00, '2021-06-25 08:40:00', 'G007', 0, 0, NULL),
  ('Clean Code', 'Robert C. Martin', 'Prentice Hall', '9780132350884', 'Clean Code is a guidebook for writing clean and maintainable code. It offers practical advice and best practices for software developers to improve their coding skills. Recommended for programmers and software engineers.', 'English', 49.99, '2021-07-12 15:25:00', 'H008', 0, 0, NULL),
  ('软件工程导论', '张海藩', '清华大学出版社', '9787302041542', '《软件工程导论》是一本软件工程的入门教材，介绍了软件工程的基本概念、原理和方法。适合计算机专业的学生和对软件开发感兴趣的人员阅读。', '中文', 68.00, '2021-08-08 12:05:00', 'I009', 0, 0, NULL),
  ('Design Patterns', 'Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides', 'Addison-Wesley Professional', '9780201633610', 'Design Patterns is a classic book on object-oriented design patterns. It provides reusable solutions to common software design problems. Recommended for software architects and experienced developers.', 'English', 59.99, '2021-09-01 17:30:00', 'J010', 0, 0, NULL);

-- ----------------------------
-- Table structure for t_class
-- ----------------------------
DROP TABLE IF EXISTS `t_class`;
CREATE TABLE `t_class`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '班级编号',
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '班级名称',
  `class_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '班级描述',
  `dept_id` int NULL DEFAULT NULL COMMENT '所属系别编号',
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属系别名称-冗余字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_class
-- ----------------------------
INSERT INTO t_class (class_name, class_desc, dept_id, dept_name)
VALUES
  ('计算机科学与技术', '计算机科学与技术专业班级', 1, '计算机系'),
  ('软件工程', '软件工程专业班级', 2, '软件工程系'),
  ('信息安全', '信息安全专业班级', 1, '计算机系'),
  ('数据科学与大数据技术', '数据科学与大数据技术专业班级', 3, '数据科学系'),
  ('人工智能', '人工智能专业班级', 4, '人工智能系'),
  ('物联网工程', '物联网工程专业班级', 5, '物联网工程系'),
  ('数字媒体技术', '数字媒体技术专业班级', 6, '数字媒体系'),
  ('电子信息工程', '电子信息工程专业班级', 7, '电子信息工程系'),
  ('通信工程', '通信工程专业班级', 8, '通信工程系'),
  ('计算机应用技术', '计算机应用技术专业班级', 1, '计算机系');

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '系别id',
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '系别名称',
  `dept_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '系别描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO t_department (department, dept_desc)
VALUES
  ('计算机系', '计算机科学与技术系'),
  ('软件工程系', '软件工程系'),
  ('数据科学系', '数据科学与大数据技术系'),
  ('人工智能系', '人工智能系'),
  ('物联网工程系', '物联网工程系'),
  ('数字媒体系', '数字媒体技术系'),
  ('电子信息工程系', '电子信息工程系'),
  ('通信工程系', '通信工程系'),
  ('自动化系', '自动化系');

-- ----------------------------
-- Table structure for t_lend_list
-- ----------------------------
DROP TABLE IF EXISTS `t_lend_list`;
CREATE TABLE `t_lend_list`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '借阅记录id',
  `book_id` int NULL DEFAULT NULL COMMENT '书籍编号',
  `card_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '书籍卡编号',
  `lend_date` datetime NULL DEFAULT NULL COMMENT '借阅时间',
  `back_date` datetime NULL DEFAULT NULL COMMENT '归还时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_lend_list
-- ----------------------------
INSERT INTO t_lend_list (book_id, card_id, lend_date, back_date)
VALUES
  (1, 'A001', '2022-01-01 09:30:00', '2022-01-15 11:45:00'),
  (2, 'B002', '2022-02-05 14:20:00', '2022-02-20 16:30:00'),
  (3, 'C003', '2022-03-10 10:00:00', '2022-03-25 12:15:00'),
  (4, 'D004', '2022-04-15 11:30:00', '2022-04-30 13:45:00'),
  (5, 'E005', '2022-05-20 08:45:00', '2022-06-05 10:55:00'),
  (6, 'F006', '2022-06-25 13:15:00', '2022-07-10 15:30:00'),
  (7, 'G007', '2022-07-30 16:40:00', '2022-08-14 18:50:00'),
  (8, 'H008', '2022-08-25 12:00:00', '2022-09-09 14:10:00'),
  (9, 'I009', '2022-09-30 15:20:00', '2022-10-15 17:30:00'),
  (10, 'J010', '2022-10-25 17:40:00', '2022-11-09 19:50:00');

-- ----------------------------
-- Table structure for t_reader_card
-- ----------------------------
DROP TABLE IF EXISTS `t_reader_card`;
CREATE TABLE `t_reader_card`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '借书卡id',
  `stu_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生编号',
  `stu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生姓名-冗余字段',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '借书卡密码',
  `state` int NULL DEFAULT 0 COMMENT '借书卡状态 0 未使用  1 已使用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_reader_card
INSERT INTO t_reader_card (stu_id, stu_name, password, state)
VALUES
  ('2021001', '张三', '123456', 0),
  ('2021002', '李四', 'abcdef', 0),
  ('2021003', '王五', 'qwerty', 0),
  ('2021004', '赵六', 'p@ssw0rd', 0),
  ('2021005', '陈七', 'password123', 0),
  ('2021006', '刘八', 'pass1234', 0),
  ('2021007', '朱九', 'abc123', 0),
  ('2021008', '杨十', 'testpass', 0),
  ('2021009', '吴十一', 'securepwd', 0),
  ('2021010', '郑十二', 'mypassword', 0);

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '学员id',
  `stu_num` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学籍编号',
  `stu_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学员姓名',
  `phone_num` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `gender` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '家庭地址',
  `classid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属班级',
  `class_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '班级名称-冗余字段',
  `departid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属系别-冗余字段',
  `depart_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '院系名称-冗余字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO t_student (stu_num, stu_name, phone_num, gender, address, classid, class_name, departid, depart_name)
VALUES
  ('2021001', '张三', '1234567890', '男', '北京市朝阳区', '1', '一班', '1', '计算机科学与技术'),
  ('2021002', '李四', '9876543210', '女', '上海市浦东新区', '1', '一班', '1', '计算机科学与技术'),
  ('2021003', '王五', '1357924680', '男', '广州市天河区', '2', '二班', '2', '软件工程'),
  ('2021004', '赵六', '2468135790', '女', '深圳市福田区', '2', '二班', '2', '软件工程'),
  ('2021005', '陈七', '1597532468', '男', '成都市锦江区', '3', '三班', '3', '网络工程'),
  ('2021006', '刘八', '8765432190', '女', '武汉市江汉区', '3', '三班', '3', '网络工程'),
  ('2021007', '朱九', '9876543210', '男', '南京市鼓楼区', '4', '四班', '4', '信息安全'),
  ('2021008', '杨十', '1234567890', '女', '重庆市渝中区', '4', '四班', '4', '信息安全'),
  ('2021009', '吴十一', '1357924680', '男', '天津市和平区', '5', '五班', '5', '物联网工程'),
  ('2021010', '郑十二', '2468135790', '女', '青岛市市南区', '5', '五班', '5', '物联网工程'),
  ('2021011', '周十三', '1597532468', '男', '北京市海淀区', '6', '六班', '6', '电子工程'),
  ('2021012', '孙十四', '8765432190', '女', '上海市静安区', '6', '六班', '6', '电子工程'),
  ('2021013', '钱十五', '9876543210', '男', '广州市越秀区', '7', '七班', '7', '自动化'),
  ('2021014', '李十六', '1234567890', '女', '深圳市南山区', '7', '七班', '7', '自动化'),
  ('2021015', '王十七', '1357924680', '男', '成都市高新区', '8', '八班', '8', '通信工程'),
  ('2021016', '赵十八', '2468135790', '女', '武汉市洪山区', '8', '八班', '8', '通信工程'),
  ('2021017', '陈十九', '9876543210', '男', '南京市秦淮区', '9', '九班', '9', '电气工程'),
  ('2021018', '刘二十', '1234567890', '女', '重庆市江北区', '9', '九班', '9', '电气工程'),
  ('2021019', '朱二十一', '1357924680', '男', '天津市河西区', '10', '十班', '10', '机械工程'),
  ('2021020', '杨二十二', '2468135790', '女', '青岛市市北区', '10', '十班', '10', '机械工程');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `phone_num` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `salt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '加密-盐值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO t_user (user_name, password, phone_num, email, salt)
VALUES
  ('admin', '123', '1234567890', 'admin@example.com', 'somesaltvalue'),
  ('user1', 'password1', '9876543210', 'user1@example.com', 'anothersaltvalue'),
  ('user2', 'password2', '4567890123', 'user2@example.com', 'moresaltvalue'),
  ('user3', 'password3', '7890123456', 'user3@example.com', 'yetsaltvalue'),
  ('user4', 'password4', '2345678901', 'user4@example.com', 'extrasaltvalue'),
  ('johndoe', 'P@ssw0rd1', '9876543210', 'johndoe@example.com', 'x0eNslA7t'),
  ('janedoe', 'SecurePwd123', '1234567890', 'janedoe@example.com', 'y8sTm9b2F'),
  ('alexsmith', 'Passw0rd!', '4567890123', 'alexsmith@example.com', 'p5bQr1d2M'),
  ('emilyjones', 'StrongP@ss', '8901234567', 'emilyjones@example.com', 'k9aFh6s3R'),
  ('michaeldavis', 'Secret123', '2345678901', 'michaeldavis@example.com', 'z2vCp3o7X');

SET FOREIGN_KEY_CHECKS = 1;
