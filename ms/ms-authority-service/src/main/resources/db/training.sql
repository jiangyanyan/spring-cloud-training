/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50019
Source Host           : localhost:3306
Source Database       : web-pms

Target Server Type    : MYSQL
Target Server Version : 50019
File Encoding         : 65001

Date: 2017-07-21 16:49:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `author`
-- ----------------------------
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id` bigint(19) NOT NULL auto_increment COMMENT '主键id',
  `name` varchar(64) NOT NULL COMMENT '作者名称',
  `description` longtext COMMENT '简介',
  `country` varchar(64) default '' COMMENT '所属国家',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='作者';

-- ----------------------------
-- Records of author
-- ----------------------------
INSERT INTO `author` VALUES ('1', '罗伯特·巴瑞文', '', '美国', '2017-04-11 21:28:52', '2017-04-11 21:28:52');
INSERT INTO `author` VALUES ('2', '吉尔曼', '大师：吉尔曼', '美国', '2017-04-11 21:29:13', '2017-04-11 21:33:03');
INSERT INTO `author` VALUES ('3', '比阿特丽克斯.波特', '', '', '2017-04-11 21:32:41', '2017-04-11 21:32:41');

-- ----------------------------
-- Table structure for `board_game`
-- ----------------------------
DROP TABLE IF EXISTS `board_game`;
CREATE TABLE `board_game` (
  `id` bigint(19) NOT NULL auto_increment COMMENT '自增ID',
  `brand` varchar(50) default NULL COMMENT '品牌',
  `code` varchar(50) NOT NULL COMMENT '游戏唯一编码',
  `name` varchar(255) NOT NULL COMMENT '游戏名称',
  `fit_age` varchar(20) default NULL COMMENT '适合年龄',
  `player_num` varchar(10) default NULL COMMENT '游戏人数',
  `play_time` varchar(10) default NULL COMMENT '游戏时间',
  `growth_direction` varchar(255) default NULL COMMENT '成长方向,多个用","(英文逗号)分隔',
  `create_time` datetime default NULL COMMENT '创建时间',
  `update_time` datetime default NULL COMMENT '更新时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='桌游';

-- ----------------------------
-- Records of board_game
-- ----------------------------

-- ----------------------------
-- Table structure for `cont_picture`
-- ----------------------------
DROP TABLE IF EXISTS `cont_picture`;
CREATE TABLE `cont_picture` (
  `id` bigint(13) NOT NULL auto_increment COMMENT '编号',
  `picture_name` varchar(255) default NULL COMMENT '图片名称',
  `big_picture_url` varchar(255) default NULL COMMENT '图片URL',
  `small_picture_url` varchar(255) default NULL COMMENT '缩略图URL',
  `picture_type` smallint(4) default NULL COMMENT '图片类型 1：壁纸；',
  `seq` bigint(13) default NULL COMMENT '顺序号',
  `partner_code` varchar(50) default NULL COMMENT '合作伙伴代码',
  `is_online` smallint(4) default NULL COMMENT '上线状态',
  `create_time` datetime default NULL COMMENT '创建时间',
  `update_time` datetime default NULL COMMENT '更新时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片表';

-- ----------------------------
-- Records of cont_picture
-- ----------------------------

-- ----------------------------
-- Table structure for `dictionary`
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` bigint(19) NOT NULL auto_increment COMMENT '自增ID',
  `dic_code` varchar(24) NOT NULL COMMENT '数据类型代码',
  `dic_key` smallint(11) NOT NULL COMMENT '数据键',
  `dic_value` varchar(64) NOT NULL COMMENT '数据值',
  `description` varchar(128) default NULL COMMENT '描述',
  `create_time` datetime default NULL COMMENT '创建时间',
  `update_time` datetime default NULL COMMENT '更新时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据字典';

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES ('2', 'GrowthDirection', '1', '分享', '成长方向：分享（Sharing）', '2017-04-18 22:20:17', '2017-04-18 22:34:00');
INSERT INTO `dictionary` VALUES ('3', 'GrowthDirection', '2', '记忆力', '成长方向：记忆力(Memory)', '2017-04-18 22:21:22', '2017-04-18 22:21:22');
INSERT INTO `dictionary` VALUES ('4', 'GrowthDirection', '3', '专注力', '成长方向：Concentration 专注力', '2017-04-18 22:42:09', '2017-04-18 22:42:42');
INSERT INTO `dictionary` VALUES ('5', 'GrowthDirection', '4', '持久力', '成长方向：Endurance 持久力', '2017-04-18 22:43:20', '2017-04-18 22:43:20');
INSERT INTO `dictionary` VALUES ('6', 'GrowthDirection', '5', '自我认知', '成长方向：Self-cognition 自我认知', '2017-04-18 22:44:11', '2017-04-18 22:44:11');
INSERT INTO `dictionary` VALUES ('7', 'GrowthDirection', '6', '想象力', '成长方向：Imagination 想象力', '2017-04-18 22:44:40', '2017-04-18 22:44:40');
INSERT INTO `dictionary` VALUES ('8', 'GrowthDirection', '7', '创造力', '成长方向：Creativity 创造力', '2017-04-18 22:45:11', '2017-04-18 22:45:11');
INSERT INTO `dictionary` VALUES ('9', 'GrowthDirection', '8', '手眼协调', '成长方向：Hands & eyes Coordination 手眼协调', '2017-04-18 22:45:56', '2017-04-18 22:45:56');
INSERT INTO `dictionary` VALUES ('10', 'GrowthDirection', '9', '团队合作', '成长方向：Team coorperation 团队合作', '2017-04-18 22:46:34', '2017-04-18 22:46:34');
INSERT INTO `dictionary` VALUES ('11', 'GrowthDirection', '10', '因果意识', '成长方向：Causes & Effects 因果意识', '2017-04-18 22:47:05', '2017-04-18 22:47:05');
INSERT INTO `dictionary` VALUES ('12', 'GrowthDirection', '11', '预测能力', 'Forecasting ability 预测能力', '2017-04-18 22:47:38', '2017-04-18 22:47:38');
INSERT INTO `dictionary` VALUES ('13', 'GrowthDirection', '12', '战略性思考', 'Strategy & Tactical skill\n战略性思考', '2017-04-18 22:48:37', '2017-04-18 22:48:37');
INSERT INTO `dictionary` VALUES ('14', 'GrowthDirection', '13', '逻辑思维', 'Logical Thinking\n逻辑思维', '2017-04-18 22:49:11', '2017-04-18 22:49:25');
INSERT INTO `dictionary` VALUES ('15', 'GrowthDirection', '14', '理解规则', 'Understanding Rule 了解规则的意义', '2017-04-18 22:50:10', '2017-04-18 22:50:10');
INSERT INTO `dictionary` VALUES ('16', 'GrowthDirection', '15', '角色扮演', 'Roll Play\n角色扮演', '2017-04-18 22:50:49', '2017-04-18 22:50:49');
INSERT INTO `dictionary` VALUES ('17', 'GrowthDirection', '16', '语言表达', 'Language expression\n语言表达', '2017-04-18 22:51:08', '2017-04-18 22:51:08');
INSERT INTO `dictionary` VALUES ('18', 'GrowthDirection', '17', '职业学习', 'Profession learning\n职业学习', '2017-04-18 22:51:33', '2017-04-18 22:51:33');
INSERT INTO `dictionary` VALUES ('19', 'GrowthDirection', '18', '聆听能力', 'Listening Skill\n聆听能力', '2017-04-18 22:51:59', '2017-04-18 22:51:59');
INSERT INTO `dictionary` VALUES ('20', 'GrowthDirection', '19', '大运动神经', 'Large Motor Skill\n大运动神经', '2017-04-18 22:52:18', '2017-04-18 22:52:18');
INSERT INTO `dictionary` VALUES ('21', 'GrowthDirection', '20', '细小运动', 'Fine Motor Skill\n细小运动', '2017-04-18 22:52:35', '2017-04-18 22:52:35');
INSERT INTO `dictionary` VALUES ('22', 'GrowthDirection', '21', '快速反应', 'Fast Reaction\n快速反应', '2017-04-18 22:52:52', '2017-04-18 22:52:52');
INSERT INTO `dictionary` VALUES ('23', 'GrowthDirection', '22', '颜色认知', 'Color Recognition\n颜色认知', '2017-04-18 22:53:08', '2017-04-18 22:53:08');
INSERT INTO `dictionary` VALUES ('24', 'GrowthDirection', '23', '形状认知', 'Shape Recognition\n形状认知', '2017-04-18 22:53:30', '2017-04-18 22:53:30');
INSERT INTO `dictionary` VALUES ('25', 'GrowthDirection', '24', '视觉', 'Visual Ability\n视觉', '2017-04-18 22:53:47', '2017-04-18 22:53:47');
INSERT INTO `dictionary` VALUES ('26', 'GrowthDirection', '25', '触觉', 'Sense of Touch\n触觉', '2017-04-18 22:54:04', '2017-04-18 22:54:04');
INSERT INTO `dictionary` VALUES ('27', 'GrowthDirection', '26', '听觉', 'Sense of Hearing\n听觉', '2017-04-18 22:54:21', '2017-04-18 22:54:21');
INSERT INTO `dictionary` VALUES ('28', 'GrowthDirection', '27', '感觉整体训练', 'All Senses Training 感觉整体训练', '2017-04-18 22:54:43', '2017-04-18 22:54:43');
INSERT INTO `dictionary` VALUES ('29', 'GrowthDirection', '28', '自由游戏', 'Free Play\n自由游戏', '2017-04-18 22:55:09', '2017-04-18 22:55:09');
INSERT INTO `dictionary` VALUES ('30', 'GrowthDirection', '29', '保密', 'Keep Secret\n保密', '2017-04-18 22:55:27', '2017-04-18 22:55:27');
INSERT INTO `dictionary` VALUES ('31', 'GrowthDirection', '30', '懂得取舍', 'Understand the trade-offs\n懂得取舍', '2017-04-18 22:55:52', '2017-04-18 22:55:52');
INSERT INTO `dictionary` VALUES ('32', 'GrowthDirection', '31', '细节观察', 'Observation\n细节观察', '2017-04-18 22:56:14', '2017-04-18 22:56:14');
INSERT INTO `dictionary` VALUES ('33', 'GrowthDirection', '32', '推理技能', 'Reasoning Skill\n推理技能', '2017-04-18 22:56:33', '2017-04-18 22:56:33');
INSERT INTO `dictionary` VALUES ('34', 'GrowthDirection', '33', '学习字母', 'Alphabet & Phonics 学习字母', '2017-04-18 22:56:49', '2017-04-18 22:56:49');
INSERT INTO `dictionary` VALUES ('35', 'GrowthDirection', '34', '数学能力', 'Mathmetics learning ability\n数学能力', '2017-04-18 22:57:09', '2017-04-18 22:57:09');
INSERT INTO `dictionary` VALUES ('36', 'GrowthDirection', '35', '学习外语', 'English Learning\n学习外语', '2017-04-18 22:57:38', '2017-04-18 22:57:38');
INSERT INTO `dictionary` VALUES ('37', 'GrowthDirection', '36', '阅读能力', 'Reading Ability\n阅读能力', '2017-04-18 22:57:53', '2017-04-18 22:57:53');
INSERT INTO `dictionary` VALUES ('38', 'GrowthDirection', '37', '距离长短的认知', 'Idea of distance\n距离长短的认知', '2017-04-18 22:58:28', '2017-04-18 22:58:28');
INSERT INTO `dictionary` VALUES ('39', 'GrowthDirection', '38', '模仿能力', 'Imitation Skill \n模仿能力', '2017-04-18 22:58:52', '2017-04-18 22:58:52');
INSERT INTO `dictionary` VALUES ('40', 'GrowthDirection', '39', '时间认知', 'Time acknowldege\n时间认知', '2017-04-18 22:59:15', '2017-04-18 22:59:15');

-- ----------------------------
-- Table structure for `organization`
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` bigint(19) NOT NULL auto_increment COMMENT '主键id',
  `name` varchar(64) NOT NULL COMMENT '组织名',
  `address` varchar(100) default NULL COMMENT '地址',
  `code` varchar(64) NOT NULL COMMENT '编号',
  `icon` varchar(32) default NULL COMMENT '图标',
  `pid` bigint(19) default NULL COMMENT '父级主键',
  `seq` int(10) NOT NULL default '0' COMMENT '排序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织机构';

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('1', '总经办', '王家桥', '01', 'fi-social-windows', null, '0', '2017-03-15 21:28:26', '2017-03-15 21:28:26');
INSERT INTO `organization` VALUES ('3', '技术部', '', '02', 'fi-social-github', null, '1', '2017-03-15 21:28:26', '2017-03-15 21:28:26');
INSERT INTO `organization` VALUES ('5', '产品部', '', '03', 'fi-social-apple', null, '2', '2017-03-15 21:28:27', '2017-03-15 21:28:27');
INSERT INTO `organization` VALUES ('6', '测试组', '', '04', 'fi-social-snapchat', '3', '0', '2017-03-15 21:28:27', '2017-03-15 21:28:27');

-- ----------------------------
-- Table structure for `press`
-- ----------------------------
DROP TABLE IF EXISTS `press`;
CREATE TABLE `press` (
  `id` bigint(19) NOT NULL auto_increment COMMENT '主键id',
  `code` varchar(64) NOT NULL COMMENT '输入码',
  `isbn` varchar(64) NOT NULL COMMENT 'ISBN',
  `name` varchar(64) NOT NULL COMMENT '出版社名称',
  `description` longtext COMMENT '简介',
  `country` varchar(64) default NULL COMMENT '所属国家',
  `address` varchar(64) default '' COMMENT '出版地',
  `create_time` datetime default NULL COMMENT '创建时间',
  `update_time` datetime default NULL COMMENT '更新时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='出版社';

-- ----------------------------
-- Records of press
-- ----------------------------
INSERT INTO `press` VALUES ('1', 'RMCBS', '7-01', '人民出版社', '', '中国', '北京', '2017-04-09 16:29:20', '2017-04-09 16:29:23');
INSERT INTO `press` VALUES ('2', 'RMWXCBS', '7-02', '人民文学出版社', '', '中国', '北京', '2017-04-09 16:36:59', '2017-04-09 16:37:01');
INSERT INTO `press` VALUES ('3', 'KXCBS', '7-03', '科学出版社', '', '中国', '北京', '2017-04-11 21:02:14', '2017-04-11 21:02:14');

-- ----------------------------
-- Table structure for `resource`
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` bigint(19) NOT NULL auto_increment COMMENT '主键',
  `name` varchar(64) NOT NULL COMMENT '资源名称',
  `url` varchar(100) default NULL COMMENT '资源路径',
  `open_mode` varchar(32) default NULL COMMENT '打开方式 ajax,iframe',
  `description` varchar(255) default NULL COMMENT '资源介绍',
  `icon` varchar(32) default NULL COMMENT '资源图标',
  `pid` bigint(19) default NULL COMMENT '父级资源id',
  `seq` int(10) NOT NULL default '0' COMMENT '排序',
  `status` tinyint(2) NOT NULL default '0' COMMENT '状态',
  `resource_type` tinyint(2) NOT NULL default '0' COMMENT '资源类别',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源';

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '权限管理', '', null, '系统管理', 'fi-folder', null, '0', '0', '0', '2017-03-15 21:28:27', '2017-03-15 21:28:27');
INSERT INTO `resource` VALUES ('11', '资源管理', '/resource/manager', 'ajax', '资源管理', 'fi-database', '1', '1', '0', '0', '2017-03-15 21:28:27', '2017-03-15 21:28:27');
INSERT INTO `resource` VALUES ('12', '角色管理', '/role/manager', 'ajax', '角色管理', 'fi-torso-business', '1', '2', '0', '0', '2017-03-15 21:28:27', '2017-03-15 21:28:27');
INSERT INTO `resource` VALUES ('13', '用户管理', '/user/manager', 'ajax', '用户管理', 'fi-torsos-all', '1', '3', '0', '0', '2017-03-15 21:28:27', '2017-03-15 21:28:27');
INSERT INTO `resource` VALUES ('14', '部门管理', '/organization/manager', 'ajax', '部门管理', 'fi-results-demographics', '1', '4', '0', '0', '2017-03-15 21:28:27', '2017-03-15 21:28:27');
INSERT INTO `resource` VALUES ('111', '列表', '/resource/treeGrid', 'ajax', '资源列表', 'fi-list', '11', '0', '0', '1', '2017-03-15 21:28:27', '2017-03-15 21:28:27');
INSERT INTO `resource` VALUES ('112', '添加', '/resource/add', 'ajax', '资源添加', 'fi-page-add', '11', '0', '0', '1', '2017-03-15 21:28:27', '2017-03-15 21:28:27');
INSERT INTO `resource` VALUES ('113', '编辑', '/resource/edit', 'ajax', '资源编辑', 'fi-page-edit', '11', '0', '0', '1', '2017-03-15 21:28:27', '2017-03-15 21:28:27');
INSERT INTO `resource` VALUES ('114', '删除', '/resource/delete', 'ajax', '资源删除', 'fi-page-delete', '11', '0', '0', '1', '2017-03-15 21:28:27', '2017-03-15 21:28:27');
INSERT INTO `resource` VALUES ('121', '列表', '/role/dataGrid', 'ajax', '角色列表', 'fi-list', '12', '0', '0', '1', '2017-03-15 21:28:27', '2017-03-15 21:28:27');
INSERT INTO `resource` VALUES ('122', '添加', '/role/add', 'ajax', '角色添加', 'fi-page-add', '12', '0', '0', '1', '2017-03-15 21:28:27', '2017-03-15 21:28:27');
INSERT INTO `resource` VALUES ('123', '编辑', '/role/edit', 'ajax', '角色编辑', 'fi-page-edit', '12', '0', '0', '1', '2017-03-15 21:28:27', '2017-03-15 21:28:27');
INSERT INTO `resource` VALUES ('124', '删除', '/role/delete', 'ajax', '角色删除', 'fi-page-delete', '12', '0', '0', '1', '2017-03-15 21:28:28', '2017-03-15 21:28:28');
INSERT INTO `resource` VALUES ('125', '授权', '/role/grant', 'ajax', '角色授权', 'fi-check', '12', '0', '0', '1', '2017-03-15 21:28:28', '2017-03-15 21:28:28');
INSERT INTO `resource` VALUES ('131', '列表', '/user/dataGrid', 'ajax', '用户列表', 'fi-list', '13', '0', '0', '1', '2017-03-15 21:28:28', '2017-03-15 21:28:28');
INSERT INTO `resource` VALUES ('132', '添加', '/user/add', 'ajax', '用户添加', 'fi-page-add', '13', '0', '0', '1', '2017-03-15 21:28:28', '2017-03-15 21:28:28');
INSERT INTO `resource` VALUES ('133', '编辑', '/user/edit', 'ajax', '用户编辑', 'fi-page-edit', '13', '0', '0', '1', '2017-03-15 21:28:28', '2017-03-15 21:28:28');
INSERT INTO `resource` VALUES ('134', '删除', '/user/delete', 'ajax', '用户删除', 'fi-page-delete', '13', '0', '0', '1', '2017-03-15 21:28:28', '2017-03-15 21:28:28');
INSERT INTO `resource` VALUES ('141', '列表', '/organization/treeGrid', 'ajax', '用户列表', 'fi-list', '14', '0', '0', '1', '2017-03-15 21:28:28', '2017-03-15 21:28:28');
INSERT INTO `resource` VALUES ('142', '添加', '/organization/add', 'ajax', '部门添加', 'fi-page-add', '14', '0', '0', '1', '2017-03-15 21:28:28', '2017-03-15 21:28:28');
INSERT INTO `resource` VALUES ('143', '编辑', '/organization/edit', 'ajax', '部门编辑', 'fi-page-edit', '14', '0', '0', '1', '2017-03-15 21:28:28', '2017-03-15 21:28:28');
INSERT INTO `resource` VALUES ('144', '删除', '/organization/delete', 'ajax', '部门删除', 'fi-page-delete', '14', '0', '0', '1', '2017-03-15 21:28:28', '2017-03-15 21:28:28');
INSERT INTO `resource` VALUES ('221', '日志监控', '', null, null, 'fi-folder', null, '2', '0', '0', '2017-03-15 21:28:28', '2017-03-15 21:28:28');
INSERT INTO `resource` VALUES ('222', '视频教程', '', null, null, 'fi-folder', null, '1', '0', '0', '2017-03-15 21:28:28', '2017-03-15 21:28:28');
INSERT INTO `resource` VALUES ('223', '官方网站', 'http://www.dreamlu.net/', 'iframe', null, 'fi-home', '222', '0', '0', '0', '2017-03-15 21:28:28', '2017-03-15 21:28:28');
INSERT INTO `resource` VALUES ('224', 'jfinal视频', 'http://blog.dreamlu.net/blog/79', 'iframe', null, 'fi-video', '222', '1', '0', '0', '2017-03-15 21:28:28', '2017-03-15 21:28:28');
INSERT INTO `resource` VALUES ('226', '修改密码', '/user/editPwdPage', 'ajax', null, 'fi-unlock', null, '3', '0', '1', '2017-03-15 21:28:28', '2017-03-15 21:28:28');
INSERT INTO `resource` VALUES ('227', '登录日志', '/sysLog/manager', 'ajax', null, 'fi-info', '221', '0', '0', '0', '2017-03-15 21:28:28', '2017-03-15 21:28:28');
INSERT INTO `resource` VALUES ('228', 'Druid监控', '/druid', 'iframe', null, 'fi-monitor', '221', '0', '0', '0', '2017-03-15 21:28:29', '2017-03-15 21:28:29');
INSERT INTO `resource` VALUES ('229', '系统图标', '/icons.html', 'ajax', null, 'fi-photo', '221', '0', '0', '0', '2017-03-15 21:28:29', '2017-03-15 21:28:29');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(19) NOT NULL auto_increment COMMENT '主键id',
  `name` varchar(64) NOT NULL COMMENT '角色名',
  `description` varchar(255) default NULL COMMENT '简介',
  `status` tinyint(2) NOT NULL default '0' COMMENT '状态',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin', '超级管理员', '1', '2017-03-15 21:28:29', '2017-04-08 22:19:50');
INSERT INTO `role` VALUES ('2', 'de', '技术部经理', '1', '2017-03-15 21:28:29', '2017-04-08 22:19:48');
INSERT INTO `role` VALUES ('7', 'pm', '产品部经理', '1', '2017-03-15 21:28:29', '2017-04-08 22:19:43');

-- ----------------------------
-- Table structure for `role_resource`
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource` (
  `id` bigint(19) NOT NULL auto_increment COMMENT '主键id',
  `role_id` bigint(19) NOT NULL COMMENT '角色id',
  `resource_id` bigint(19) NOT NULL COMMENT '资源id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色资源';

-- ----------------------------
-- Records of role_resource
-- ----------------------------
INSERT INTO `role_resource` VALUES ('158', '3', '1', '2017-03-15 21:28:29');
INSERT INTO `role_resource` VALUES ('159', '3', '11', '2017-03-15 21:28:29');
INSERT INTO `role_resource` VALUES ('160', '3', '111', '2017-03-15 21:28:29');
INSERT INTO `role_resource` VALUES ('161', '3', '112', '2017-03-15 21:28:29');
INSERT INTO `role_resource` VALUES ('162', '3', '113', '2017-03-15 21:28:29');
INSERT INTO `role_resource` VALUES ('163', '3', '114', '2017-03-15 21:28:29');
INSERT INTO `role_resource` VALUES ('164', '3', '12', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('165', '3', '121', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('166', '3', '122', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('167', '3', '123', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('168', '3', '124', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('169', '3', '125', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('170', '3', '13', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('171', '3', '131', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('172', '3', '132', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('173', '3', '133', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('174', '3', '134', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('175', '3', '14', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('176', '3', '141', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('177', '3', '142', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('178', '3', '143', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('179', '3', '144', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('359', '7', '1', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('360', '7', '14', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('361', '7', '141', '2017-03-15 21:28:30');
INSERT INTO `role_resource` VALUES ('362', '7', '142', '2017-03-15 21:28:31');
INSERT INTO `role_resource` VALUES ('363', '7', '143', '2017-03-15 21:28:31');
INSERT INTO `role_resource` VALUES ('364', '7', '222', '2017-03-15 21:28:31');
INSERT INTO `role_resource` VALUES ('365', '7', '223', '2017-03-15 21:28:31');
INSERT INTO `role_resource` VALUES ('366', '7', '224', '2017-03-15 21:28:31');
INSERT INTO `role_resource` VALUES ('367', '7', '221', '2017-03-15 21:28:31');
INSERT INTO `role_resource` VALUES ('368', '7', '226', '2017-03-15 21:28:31');
INSERT INTO `role_resource` VALUES ('409', '1', '1', '2017-03-15 21:28:31');
INSERT INTO `role_resource` VALUES ('410', '1', '11', '2017-03-15 21:28:31');
INSERT INTO `role_resource` VALUES ('411', '1', '111', '2017-03-15 21:28:31');
INSERT INTO `role_resource` VALUES ('412', '1', '112', '2017-03-15 21:28:31');
INSERT INTO `role_resource` VALUES ('413', '1', '113', '2017-03-15 21:28:31');
INSERT INTO `role_resource` VALUES ('414', '1', '114', '2017-03-15 21:28:31');
INSERT INTO `role_resource` VALUES ('415', '1', '12', '2017-03-15 21:28:31');
INSERT INTO `role_resource` VALUES ('416', '1', '121', '2017-03-15 21:28:31');
INSERT INTO `role_resource` VALUES ('417', '1', '122', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('418', '1', '123', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('419', '1', '124', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('420', '1', '125', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('421', '1', '13', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('422', '1', '131', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('423', '1', '132', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('424', '1', '133', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('425', '1', '134', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('426', '1', '14', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('427', '1', '141', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('428', '1', '142', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('429', '1', '143', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('430', '1', '144', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('431', '1', '222', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('432', '1', '223', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('433', '1', '224', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('434', '1', '221', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('435', '1', '227', '2017-03-15 21:28:32');
INSERT INTO `role_resource` VALUES ('436', '1', '228', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('437', '2', '1', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('438', '2', '13', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('439', '2', '131', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('440', '2', '132', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('441', '2', '133', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('442', '2', '222', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('443', '2', '223', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('444', '2', '224', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('445', '2', '221', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('446', '2', '227', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('447', '2', '228', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('448', '8', '1', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('449', '8', '11', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('450', '8', '111', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('451', '8', '12', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('452', '8', '121', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('453', '8', '13', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('454', '8', '131', '2017-03-15 21:28:33');
INSERT INTO `role_resource` VALUES ('455', '8', '14', '2017-03-15 21:28:34');
INSERT INTO `role_resource` VALUES ('456', '8', '141', '2017-03-15 21:28:34');
INSERT INTO `role_resource` VALUES ('457', '8', '222', '2017-03-15 21:28:34');
INSERT INTO `role_resource` VALUES ('458', '8', '223', '2017-03-15 21:28:34');
INSERT INTO `role_resource` VALUES ('459', '8', '224', '2017-03-15 21:28:34');
INSERT INTO `role_resource` VALUES ('460', '8', '221', '2017-03-15 21:28:34');
INSERT INTO `role_resource` VALUES ('461', '8', '227', '2017-03-15 21:28:34');
INSERT INTO `role_resource` VALUES ('462', '8', '228', '2017-03-15 21:28:34');
INSERT INTO `role_resource` VALUES ('478', '8', '229', '2017-03-15 21:28:34');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '主键id',
  `username` varchar(255) default NULL COMMENT '用户名',
  `role_name` varchar(255) default NULL COMMENT '角色名',
  `opt_content` varchar(1024) default NULL COMMENT '内容',
  `client_ip` varchar(255) default NULL COMMENT '客户端ip',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(19) NOT NULL auto_increment COMMENT '主键id',
  `username` varchar(64) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `sex` tinyint(2) NOT NULL default '0' COMMENT '性别',
  `age` tinyint(2) default '0' COMMENT '年龄',
  `phone` varchar(20) default NULL COMMENT '手机号',
  `user_type` tinyint(2) NOT NULL default '0' COMMENT '用户类别',
  `status` tinyint(2) NOT NULL default '0' COMMENT '用户状态',
  `organization_id` bigint(19) NOT NULL default '0' COMMENT '所属机构',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '0', '25', '18707173376', '0', '0', '1', '2017-03-15 21:28:34', '2017-03-15 21:28:34');
INSERT INTO `user` VALUES ('15', 'test', 'test', '0', '25', '18707173376', '1', '0', '6', '2017-03-15 21:28:34', '2017-03-15 21:28:34');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(19) NOT NULL auto_increment COMMENT '主键id',
  `user_id` bigint(19) NOT NULL COMMENT '用户id',
  `role_id` bigint(19) NOT NULL COMMENT '角色id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('53', '15', '8', '2017-03-15 21:28:35');
INSERT INTO `user_role` VALUES ('60', '1', '1', '2017-03-15 21:28:35');
INSERT INTO `user_role` VALUES ('61', '1', '2', '2017-03-15 21:28:35');
INSERT INTO `user_role` VALUES ('62', '1', '7', '2017-03-15 21:28:35');
INSERT INTO `user_role` VALUES ('63', '13', '2', '2017-03-15 21:28:35');
INSERT INTO `user_role` VALUES ('64', '14', '7', '2017-03-15 21:28:35');
INSERT INTO `user_role` VALUES ('65', '1', '8', '2017-03-15 21:28:35');
