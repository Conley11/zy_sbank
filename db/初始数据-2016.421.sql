/*
Navicat MySQL Data Transfer

Source Server         : zycz
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : zhuoyue

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2016-04-21 17:50:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_area`
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域表';

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('1', '0', '0,', '中国', '10', '100000', '1', '1', '2013-05-27 08:00:00', '1', '2015-08-05 18:13:12', '', '0');
INSERT INTO `sys_area` VALUES ('2', '1', '0,1,', '山东省', '20', '110000', '2', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_area` VALUES ('3', '2', '0,1,2,', '济南市', '30', '110101', '3', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_area` VALUES ('4', '3', '0,1,2,3,', '历城区', '40', '110102', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_area` VALUES ('5', '3', '0,1,2,3,', '历下区', '50', '110104', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_area` VALUES ('6', '3', '0,1,2,3,', '高新区', '60', '110105', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_area` VALUES ('781db57b43e146c5aa05002c93637c28', '1', '0,1,', '深圳', '30', '000001', '3', '1', '2016-04-21 16:10:51', '1', '2016-04-21 16:10:51', '', '0');

-- ----------------------------
-- Table structure for `sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '0', '正常', 'del_flag', '删除标记', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('10', 'yellow', '黄色', 'color', '颜色值', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('100', 'java.util.Date', 'Date', 'gen_java_type', 'Java类型', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('101', 'com.thinkgem.jeesite.modules.sys.entity.User', 'User', 'gen_java_type', 'Java类型', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('102', 'com.thinkgem.jeesite.modules.sys.entity.Office', 'Office', 'gen_java_type', 'Java类型', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('103', 'com.thinkgem.jeesite.modules.sys.entity.Area', 'Area', 'gen_java_type', 'Java类型', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('104', 'Custom', 'Custom', 'gen_java_type', 'Java类型', '90', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('105', '1', '会议通告\0\0', 'oa_notify_type', '通知通告类型', '10', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('106', '2', '奖惩通告\0\0', 'oa_notify_type', '通知通告类型', '20', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('107', '3', '活动通告\0\0', 'oa_notify_type', '通知通告类型', '30', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('108', '0', '草稿', 'oa_notify_status', '通知通告状态', '10', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('109', '1', '发布', 'oa_notify_status', '通知通告状态', '20', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('11', 'orange', '橙色', 'color', '颜色值', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('110', '0', '未读', 'oa_notify_read', '通知通告状态', '10', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('111', '1', '已读', 'oa_notify_read', '通知通告状态', '20', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('12', 'default', '默认主题', 'theme', '主题方案', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('13', 'cerulean', '天蓝主题', 'theme', '主题方案', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('14', 'readable', '橙色主题', 'theme', '主题方案', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('15', 'united', '红色主题', 'theme', '主题方案', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('16', 'flat', 'Flat主题', 'theme', '主题方案', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('17', '1', '国家', 'sys_area_type', '区域类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('18', '2', '省份、直辖市', 'sys_area_type', '区域类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('19', '3', '地市', 'sys_area_type', '区域类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('2', '1', '删除', 'del_flag', '删除标记', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('20', '4', '区县', 'sys_area_type', '区域类型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('21', '1', '公司', 'sys_office_type', '机构类型', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('22', '2', '部门', 'sys_office_type', '机构类型', '70', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('23', '3', '小组', 'sys_office_type', '机构类型', '80', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('24', '4', '其它', 'sys_office_type', '机构类型', '90', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('25', '1', '综合部', 'sys_office_common', '快捷通用部门', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('26', '2', '开发部', 'sys_office_common', '快捷通用部门', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('27', '3', '人力部', 'sys_office_common', '快捷通用部门', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('28', '1', '一级', 'sys_office_grade', '机构等级', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('29', '2', '二级', 'sys_office_grade', '机构等级', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('3', '1', '显示', 'show_hide', '显示/隐藏', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('30', '3', '三级', 'sys_office_grade', '机构等级', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('31', '4', '四级', 'sys_office_grade', '机构等级', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('32', '1', '所有数据', 'sys_data_scope', '数据范围', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('33', '2', '所在公司及以下数据', 'sys_data_scope', '数据范围', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('34', '3', '所在公司数据', 'sys_data_scope', '数据范围', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('35', '4', '所在部门及以下数据', 'sys_data_scope', '数据范围', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('36', '5', '所在部门数据', 'sys_data_scope', '数据范围', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('37', '8', '仅本人数据', 'sys_data_scope', '数据范围', '90', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('38', '9', '按明细设置', 'sys_data_scope', '数据范围', '100', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('39', '1', '系统管理', 'sys_user_type', '用户类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('4', '0', '隐藏', 'show_hide', '显示/隐藏', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('40', '2', '部门经理', 'sys_user_type', '用户类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('41', '3', '普通用户', 'sys_user_type', '用户类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('42', 'basic', '基础主题', 'cms_theme', '站点主题', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('43', 'blue', '蓝色主题', 'cms_theme', '站点主题', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('4376f37ce00e4b978201e4e2dc62bf0d', '1', '是', 'fash_top', '板块3是否置顶', '10', '0', '1', '2016-04-21 16:08:20', '1', '2016-04-21 16:08:20', '', '0');
INSERT INTO `sys_dict` VALUES ('44', 'red', '红色主题', 'cms_theme', '站点主题', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('45', 'article', '文章模型', 'cms_module', '栏目模型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('46', 'picture', '图片模型', 'cms_module', '栏目模型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('47', 'download', '下载模型', 'cms_module', '栏目模型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('48', 'link', '链接模型', 'cms_module', '栏目模型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('49', 'special', '专题模型', 'cms_module', '栏目模型', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('4d3474c3947a4cd19dd71483e73d147d', '0', '否', 'fash_top', '板块3是否置顶', '10', '0', '1', '2016-04-21 16:08:48', '1', '2016-04-21 16:08:48', '', '0');
INSERT INTO `sys_dict` VALUES ('5', '1', '是', 'yes_no', '是/否', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('50', '0', '默认展现方式', 'cms_show_modes', '展现方式', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('51', '1', '首栏目内容列表', 'cms_show_modes', '展现方式', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('52', '2', '栏目第一条内容', 'cms_show_modes', '展现方式', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('53', '0', '发布', 'cms_del_flag', '内容状态', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('54', '1', '删除', 'cms_del_flag', '内容状态', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('55', '2', '审核', 'cms_del_flag', '内容状态', '15', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('56', '1', '首页焦点图', 'cms_posid', '推荐位', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('57', '2', '栏目页文章推荐', 'cms_posid', '推荐位', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('58', '1', '咨询', 'cms_guestbook', '留言板分类', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('59', '2', '建议', 'cms_guestbook', '留言板分类', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('6', '0', '否', 'yes_no', '是/否', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('60', '3', '投诉', 'cms_guestbook', '留言板分类', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('61', '4', '其它', 'cms_guestbook', '留言板分类', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('62', '1', '公休', 'oa_leave_type', '请假类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('63', '2', '病假', 'oa_leave_type', '请假类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('64', '3', '事假', 'oa_leave_type', '请假类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('65', '4', '调休', 'oa_leave_type', '请假类型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('66', '5', '婚假', 'oa_leave_type', '请假类型', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('67', '1', '接入日志', 'sys_log_type', '日志类型', '30', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('68', '2', '异常日志', 'sys_log_type', '日志类型', '40', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('69', 'leave', '请假流程', 'act_type', '流程类型', '10', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('7', 'red', '红色', 'color', '颜色值', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('70', 'test_audit', '审批测试流程', 'act_type', '流程类型', '20', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('71', '1', '分类1', 'act_category', '流程分类', '10', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('72', '2', '分类2', 'act_category', '流程分类', '20', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('73', 'crud', '增删改查', 'gen_category', '代码生成分类', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('74', 'crud_many', '增删改查（包含从表）', 'gen_category', '代码生成分类', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('75', 'tree', '树结构', 'gen_category', '代码生成分类', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('76', '=', '=', 'gen_query_type', '查询方式', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('77', '!=', '!=', 'gen_query_type', '查询方式', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('78', '&gt;', '&gt;', 'gen_query_type', '查询方式', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('79', '&lt;', '&lt;', 'gen_query_type', '查询方式', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('8', 'green', '绿色', 'color', '颜色值', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('80', 'between', 'Between', 'gen_query_type', '查询方式', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('81', 'like', 'Like', 'gen_query_type', '查询方式', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('82', 'left_like', 'Left Like', 'gen_query_type', '查询方式', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('83', 'right_like', 'Right Like', 'gen_query_type', '查询方式', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('84', 'input', '文本框', 'gen_show_type', '字段生成方案', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('85', 'textarea', '文本域', 'gen_show_type', '字段生成方案', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('86', 'select', '下拉框', 'gen_show_type', '字段生成方案', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('87', 'checkbox', '复选框', 'gen_show_type', '字段生成方案', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('88', 'radiobox', '单选框', 'gen_show_type', '字段生成方案', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('89', 'dateselect', '日期选择', 'gen_show_type', '字段生成方案', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('8c1015e168914f168500681b7d2cbac3', '0', '停用', 'status_flag', '账号状态', '20', '0', '1', '2016-04-21 15:51:37', '1', '2016-04-21 15:52:00', '', '0');
INSERT INTO `sys_dict` VALUES ('9', 'blue', '蓝色', 'color', '颜色值', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('90', 'userselect', '人员选择', 'gen_show_type', '字段生成方案', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('91', 'officeselect', '部门选择', 'gen_show_type', '字段生成方案', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('92', 'areaselect', '区域选择', 'gen_show_type', '字段生成方案', '90', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('93', 'String', 'String', 'gen_java_type', 'Java类型', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('94', 'Long', 'Long', 'gen_java_type', 'Java类型', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('95', 'dao', '仅持久层', 'gen_category', '代码生成分类\0\0\0\0', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('96', '1', '男', 'sex', '性别', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('97', '2', '女', 'sex', '性别', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('98', 'Integer', 'Integer', 'gen_java_type', 'Java类型', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('99', 'Double', 'Double', 'gen_java_type', 'Java类型', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('b4b3b1c47c1b481980ffb0921a3fc9df', '1', '启用', 'status_flag', '账号状态', '10', '0', '1', '2016-04-21 15:50:36', '1', '2016-04-21 15:51:19', '', '0');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('006c121c3d91444bb36e3b396ad6c0fe', '1', '首页', '1', '2016-04-21 15:14:02', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('01abbb6b4ebf47eea92371dd324c247d', '1', '系统设置-系统设置-字典管理-修改', '1', '2016-04-21 16:08:48', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/save', 'POST', 'id=&value=0&label=否&type=fash_top&description=板块3是否置顶&sort=10&remarks=', '');
INSERT INTO `sys_log` VALUES ('01c66db2929143f6887ada801c68bca1', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:05:08', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('01e6a8fc3f294a009511b52a4e01150e', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 16:12:15', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'POST', 'pageNo=2&pageSize=30&type=&description=', '');
INSERT INTO `sys_log` VALUES ('0218995b93484d0aaf11f1d3f46d14d4', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:30:09', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=4f14a968044b4164886994955926c44f&parent.name=版本管理&name=查看&href=&target=&icon=&sort=30&isShow=0&permission=zhuoyue:softUpdate:view&remarks=', '');
INSERT INTO `sys_log` VALUES ('02f7d490a7a64db68ea2f2d5cf4628e1', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 16:08:20', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', 'repage=&type=fash_top', '');
INSERT INTO `sys_log` VALUES ('032c093ce5354b49a54e4171befadee6', '1', '首页-素材管理-课程管理', '1', '2016-04-21 15:33:20', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', 'tabPageId=jerichotabiframe_5', '');
INSERT INTO `sys_log` VALUES ('03fb4413c3b94704971b05d1431adbaa', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:25:26', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=f91be6a7899646379ede968464fc84cc', '');
INSERT INTO `sys_log` VALUES ('03fd13ebed3d45f3bed2e6f4687e97f0', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:23:50', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=b9dd4838092b44488a14be5eefbc64da&parent.name=讲师管理&name=查看&href=&target=&icon=&sort=30&isShow=0&permission=zhuoyue:teacher:view&remarks=', '');
INSERT INTO `sys_log` VALUES ('04203553b09247968c9569273cbec26a', '1', '系统设置-系统设置-角色管理', '1', '2016-04-21 16:19:15', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/role/', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('048d4dc2f9c5455484830a34f6eed5e2', '1', '首页-首页-介绍', '1', '2016-04-21 17:13:36', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('05f21b15d5be417c85a0ddee9a5e6345', '1', '系统设置-系统设置-角色管理-修改', '1', '2016-04-21 16:13:25', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/role/save', 'POST', 'id=1&office.id=1&office.name=系统高级管理员&oldName=系统管理员&name=系统管理员&oldEnname=dept&enname=admin&sysData=1&useable=1&dataScope=1&menuIds=24,7508f1db2f844ce0aca8ddef31a568dc,48a86f881149404185854c93aaaaec37,72ecee6e31ba455bbec71eb8d24a...&officeIds=&remarks=', '');
INSERT INTO `sys_log` VALUES ('05f89caade44460ca4efeee88dc02401', '1', '系统设置-系统设置-字典管理-修改', '1', '2016-04-21 16:12:20', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/delete', 'GET', 'id=23&type=sys_office_type', '');
INSERT INTO `sys_log` VALUES ('0673c71f17b24be492c8efc3016c3f94', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:29:07', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0753718d4de24f01bb9042b8aa1c80a5', '1', '首页-首页-介绍', '1', '2016-04-21 16:45:14', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('08fd963b95e84b5a8cd449e83788d875', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:28:50', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=fafaa7e52e5b4eb1a7b6293722da60b6&parent.name=短信管理&name=查看&href=&target=&icon=&sort=30&isShow=0&permission=zhuoyue:smsCode:view&remarks=', '');
INSERT INTO `sys_log` VALUES ('094861ba96494293b1906d997c169e40', '1', '首页-用户管理-学生管理', '1', '2016-04-21 16:05:37', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/student/studentList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0a0816db315f44feb972f939f16ab011', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-09-10 10:12:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0a70906b63434d21bdae4daa9af3a2ca', '1', '系统设置-机构用户-机构管理-查看', '1', '2016-04-21 16:12:30', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/office/form', 'GET', 'id=1&parent.id=', '');
INSERT INTO `sys_log` VALUES ('0b3e10da9dc840e6b339d10eeea88af9', '1', '系统设置-机构用户-用户管理-查看', '1', '2016-04-21 15:19:55', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0b5c9051b57d4c9ea10a5e7b5eac5beb', '1', '首页-其他管理-版本管理', '1', '2016-04-21 16:05:02', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/softUpdate/softUpdateList', 'GET', 'tabPageId=jerichotabiframe_3', '');
INSERT INTO `sys_log` VALUES ('0cc02f4e1d3f495baea19e00df8ce576', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:07:26', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0cd9b0fe9f3241018f5ebd8be72a97f7', '1', '首页-素材管理-课程管理', '1', '2016-04-21 16:17:24', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0cdc421e3d8747f2b4811bd56699afc1', '1', '首页-素材管理-课程分类管理', '1', '2016-04-21 15:33:10', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/courseDir/courseDirList', 'GET', 'tabPageId=jerichotabiframe_4', '');
INSERT INTO `sys_log` VALUES ('0f0cbb57f99a4812bf0b84731522ab33', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:31:57', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0f87dcb891904a39b1def6f78d0b57e0', '1', '系统设置-系统设置-字典管理-修改', '1', '2016-04-21 15:50:36', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/save', 'POST', 'id=&value=1&label=账号状态&type=status_flag&description=状态&sort=10&remarks=', '');
INSERT INTO `sys_log` VALUES ('0fb545c35832465daf240c2642dd0393', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:07:46', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=7508f1db2f844ce0aca8ddef31a568dc&parent.name=首页&name=素材管理&href=&target=&icon=&sort=30&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('1004fd2ccada45adb86fc726b1a4c6b2', '1', '首页-用户管理-群组管理', '1', '2016-04-21 16:05:22', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/userGroup/userGroupList', 'GET', 'tabPageId=jerichotabiframe_6', '');
INSERT INTO `sys_log` VALUES ('1054fb05ecb045c5ab1c40d38c00a674', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-09-10 10:15:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('10a633aaa2ea4136829c6e5cc9c6d3f5', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 15:50:36', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', 'repage=&type=status_flag', '');
INSERT INTO `sys_log` VALUES ('10ba066c0819449d8790246b5b5ca55d', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:08:46', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=7508f1db2f844ce0aca8ddef31a568dc&parent.name=首页&name=信息统计&href=&target=&icon=&sort=90&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('120b8dc9f716449792f66a2dfda93995', '1', '首页-用户管理-学生管理', '1', '2016-04-21 15:47:21', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/student/studentList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('12220c91944445cc99f4f4d4b5c3c590', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:31:04', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=24095d935b644e729821a37b7c3b457f', '');
INSERT INTO `sys_log` VALUES ('12e0166bcdd1402a8ea2111adbdd408a', '1', '首页-首页-介绍', '1', '2016-04-21 17:10:39', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('13fe3905d4a34e68810468f5c44a31c6', '2', '', '1', '2016-04-21 16:43:30', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/video/videoList', 'GET', 'courseId=3', 'org.apache.jasper.JasperException: javax.el.PropertyNotFoundException: Property \'dirName\' not found on type com.cnmobi.zhuoyue.modules.zhuoyue.entity.Video\r\n	at org.apache.jasper.servlet.JspServletWrapper.handleJspException(JspServletWrapper.java:556)\r\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:477)\r\n	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:395)\r\n	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:339)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:731)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:303)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:748)\r\n	at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:486)\r\n	at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:411)\r\n	at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:338)\r\n	at org.springframework.web.servlet.view.InternalResourceView.renderMergedOutputModel(InternalResourceView.java:209)\r\n	at org.springframework.web.servlet.view.AbstractView.render(AbstractView.java:267)\r\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1221)\r\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1005)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:952)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:870)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:961)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:852)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:624)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:837)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:731)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:303)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:344)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:261)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:88)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:220)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:122)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:505)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:170)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:103)\r\n	at org.apache.catalina.valves.AccessLogValve.invoke(AccessLogValve.java:957)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:116)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:423)\r\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1079)\r\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:620)\r\n	at org.apache.tomcat.util.net.JIoEndpoint$SocketProcessor.run(JIoEndpoint.java:318)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:722)\r\nCaused by: javax.el.PropertyNotFoundException: Property \'dirName\' not found on type com.cnmobi.zhuoyue.modules.zhuoyue.entity.Video\r\n	at javax.el.BeanELResolver$BeanProperties.get(BeanELResolver.java:290)\r\n	at javax.el.BeanELResolver$BeanProperties.access$300(BeanELResolver.java:243)\r\n	at javax.el.BeanELResolver.property(BeanELResolver.java:377)\r\n	at javax.el.BeanELResolver.getValue(BeanELResolver.java:97)\r\n	at org.apache.jasper.el.JasperELResolver.getValue(JasperELResolver.java:104)\r\n	at org.apache.el.parser.AstValue.getValue(AstValue.java:183)\r\n	at org.apache.el.ValueExpressionImpl.getValue(ValueExpressionImpl.java:184)\r\n	at org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate(PageContextImpl.java:944)\r\n	at org.apache.jsp.WEB_002dINF.views.modules.zhuoyue.videoList_jsp._jspx_meth_c_005fforEach_005f0(videoList_jsp.java:354)\r\n	at org.apache.jsp.WEB_002dINF.views.modules.zhuoyue.videoList_jsp._jspService(videoList_jsp.java:162)\r\n	at org.apache.jasper.runtime.HttpJspBase.service(HttpJspBase.java:70)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:731)\r\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:439)\r\n	... 67 more\r\n');
INSERT INTO `sys_log` VALUES ('144010a9c5b444a794a5845e25188152', '1', '系统设置-机构用户-用户管理-查看', '1', '2016-04-21 15:42:36', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('14934cdad4ca47c39a6dc91763c63465', '1', '首页-用户管理-学生管理', '1', '2016-04-21 15:46:16', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/student/studentList', 'GET', 'tabPageId=jerichotabiframe_4', '');
INSERT INTO `sys_log` VALUES ('14a9c2df37c948f6bb36f195cf828810', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:20:09', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=a57b15c831fa43bea9c71a5869169fdd&parent.id=182a72c7c0354120941fa48a04e9c8c4&parent.name=群组管理&name=修改&href=&target=&icon=&sort=60&isShow=0&permission=zhuoyue:userGroup:edit&remarks=', '');
INSERT INTO `sys_log` VALUES ('152de4048046449c966e5cd509af6345', '1', '首页-用户管理-学生管理', '1', '2016-04-21 15:43:00', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/student/studentList', 'GET', 'tabPageId=jerichotabiframe_4', '');
INSERT INTO `sys_log` VALUES ('157e2b8c53c049b7bcbe8c74f8b324d1', '1', '系统登录', '1', '2016-04-21 15:19:34', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('15e3f98d0a044151be964ddff329c1e6', '1', '首页-素材管理-课程管理', '1', '2016-04-21 16:24:57', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('16a276f6a244492383a2019a83c41566', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:20:10', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('16cf33b0bb264e778ae17e284d3a6f1f', '1', '系统登录', '1', '2016-04-21 16:13:29', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/role/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('17b744ae0faa48deae7b89697a631dfb', '1', '系统设置-系统设置-字典管理-查看', '1', '2016-04-21 15:51:23', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/form', 'GET', 'sort=10', '');
INSERT INTO `sys_log` VALUES ('18cd0d23dc264841b3db22872a5e318e', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:30:30', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=4f14a968044b4164886994955926c44f&parent.name=版本管理&name=修改&href=&target=&icon=&sort=60&isShow=0&permission=zhuoyue:softUpdate:edit&remarks=', '');
INSERT INTO `sys_log` VALUES ('19c682d187be43aca43fd9ec666b59bb', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:17:44', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=182a72c7c0354120941fa48a04e9c8c4', '');
INSERT INTO `sys_log` VALUES ('1a9b16dc4e4148c4b05f56988694b587', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 15:48:18', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', 'tabPageId=jerichotabiframe_8', '');
INSERT INTO `sys_log` VALUES ('1b9601aacde646149f7feb9eae54621d', '1', '首页-首页-介绍', '1', '2016-04-21 15:19:35', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('1bf611dd66f345929b7c9373b60dad25', '1', '系统设置-系统设置-角色管理-查看', '1', '2016-04-21 16:13:03', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/role/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('1c18c314a26349479c9139df67ac5be2', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:32:01', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=a90ef490a95f4300b23ad353f881044c', '');
INSERT INTO `sys_log` VALUES ('1c476a3eb78b4cd190498609353ec16d', '1', '首页-素材管理-课程管理', '1', '2016-04-21 15:37:07', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', 'tabPageId=jerichotabiframe_5', '');
INSERT INTO `sys_log` VALUES ('1d2fd14ebcc34db4807146044e912bb4', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 16:11:43', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', 'tabPageId=jerichotabiframe_17', '');
INSERT INTO `sys_log` VALUES ('1d905a311f7a4cbb9dfa254e6ce2d57d', '1', '系统登录', '1', '2016-04-21 15:02:34', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('1e27c86bada2467e9ed0ac149e03251c', '1', '首页-用户管理-群组管理', '1', '2016-04-21 15:44:40', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/userGroup/userGroupList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1e690106077e4e1c977092961f63a1cf', '1', '系统登录', '1', '2016-04-21 17:10:39', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('1f3a3473441d413eaea2474fd9004f29', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:21:45', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=5b6aadb217c94755bc586104ef6d6f7f', '');
INSERT INTO `sys_log` VALUES ('2016b43bed9642c9a0ce72a7f091f168', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:10:00', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/updateSort', 'POST', 'ids=7508f1db2f844ce0aca8ddef31a568dc&sorts=50', '');
INSERT INTO `sys_log` VALUES ('20d1b6caa64f4dc3b19e18c684976d40', '1', '系统设置-机构用户-用户管理-查看', '1', '2016-04-21 14:14:01', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('220b96d01d3b4d1cb5cc2b3e4cb5beef', '1', '系统设置-机构用户-用户管理', '1', '2016-04-21 15:19:55', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('224c5384140247ac91c90870ca072583', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 15:51:53', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('22c7229ef1434db895a15369c02f10ad', '1', '首页-素材管理-课程管理', '1', '2016-04-21 16:43:29', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('2301d439f59848e693ce2769a25f9653', '1', '系统登录', '1', '2016-04-21 15:14:41', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('23a8dc8cbfe5408498a8a9886086196f', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:10:00', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('23b9b41a51364705ab5a4b67c757e1aa', '1', '系统登录', '1', '2015-09-10 10:14:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('24c223c27ca848efa9df4dd95a79aa87', '1', '首页-用户管理-群组管理-修改', '1', '2016-04-21 15:44:40', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/userGroup/userGroupSave', 'POST', 'id=&groupName=计算机&groupContent=计算机软件相关的学员', '');
INSERT INTO `sys_log` VALUES ('2525254565b74cd4a2b421c37b4d8d6b', '1', '首页-用户管理-讲师管理', '1', '2016-04-21 15:49:20', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/teacher/teacherList', 'GET', 'tabPageId=jerichotabiframe_10', '');
INSERT INTO `sys_log` VALUES ('2615c65ac8574dd5a8453a5c9a6995ce', '1', '系统设置-系统设置-菜单管理', '1', '2015-09-09 18:27:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('26190411fbd44d7098dd25f99483bb47', '1', '系统设置-机构用户-用户管理-查看', '1', '2016-04-21 15:02:36', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2a87c31391bb490992965b8ce22ed9f9', '1', '首页-用户管理-学生管理-修改', '1', '2016-04-21 16:05:28', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/student/studentForm', 'GET', 'studentId=1', '');
INSERT INTO `sys_log` VALUES ('2afe5c8b7eb5447cbb6af86f55e0eb19', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:26:24', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=d3bd03ce8af0451abb8c741a900bcdd6&parent.name=素材管理&name=课程管理&href=/zhuoyue/course/courseList&target=&icon=&sort=60&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('2c1cc79bf8614cf2a0f2e546e0151f6f', '1', '系统设置-系统设置-角色管理', '1', '2016-04-21 16:11:42', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/role/', 'GET', 'tabPageId=jerichotabiframe_16', '');
INSERT INTO `sys_log` VALUES ('2ccb76ba18c9484a8621594656299c90', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-09-09 18:24:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2d575074c7d5492a918b12759eb51bca', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:12:30', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'id=7508f1db2f844ce0aca8ddef31a568dc', '');
INSERT INTO `sys_log` VALUES ('2d625366be064ad0b00f37dfed0133cc', '1', '首页-其他管理-版本管理', '1', '2016-04-21 16:03:54', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/softUpdate/softUpdateList', 'GET', 'tabPageId=jerichotabiframe_3', '');
INSERT INTO `sys_log` VALUES ('2db044a64f4a45cc977888f9342f8248', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:02:40', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('2dfafe55afa84e6c92f51fac183d790d', '1', '系统设置-系统设置-角色管理', '1', '2016-04-21 15:14:17', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/role/', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('2e823d60b95345188eca4c0fe4e5b932', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:18:15', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2eb3a7a39749428ab4a1177db40fd251', '1', '首页-素材管理-课程分类管理', '1', '2016-04-21 15:33:16', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/courseDir/courseDirList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2ee2620014a14dcdbdfff0bff7ee0cbe', '1', '系统设置-系统设置-角色管理-修改', '1', '2016-04-21 16:19:15', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/role/save', 'POST', 'id=&office.id=1&office.name=系统高级管理员&oldName=&name=销售人员&oldEnname=&enname=operation&sysData=1&useable=1&dataScope=8&menuIds=24,7508f1db2f844ce0aca8ddef31a568dc,48a86f881149404185854c93aaaaec37,72ecee6e31ba455bbec71eb8d24a...&officeIds=&remarks=', '');
INSERT INTO `sys_log` VALUES ('31737e7d375e46eeb96129af9211891e', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 17:10:34', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('320dc4f0205e46dbbde6c0b09e4a4edc', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:04:30', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('33ff1d9d22024e9ab4c9912115784336', '1', '首页-素材管理-课程管理', '1', '2016-04-21 16:03:49', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('36078d9dbdc5458cb2dd06a2e68e6175', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:10:44', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=7508f1db2f844ce0aca8ddef31a568dc', '');
INSERT INTO `sys_log` VALUES ('366a639e7fdc463992268aa7c10ac450', '1', '系统设置-机构用户-用户管理', '1', '2015-09-09 18:26:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('3741198455fd461f89f28c02d0b65a5d', '1', '系统设置-机构用户-机构管理', '1', '2016-04-21 16:11:00', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/office/', 'GET', 'tabPageId=jerichotabiframe_15', '');
INSERT INTO `sys_log` VALUES ('38ad3eece7c94d56bd775d51626ca8ec', '1', '首页-素材管理-课程管理', '1', '2016-04-21 16:45:16', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('3903a924c89846718bd52a410a488c28', '1', '系统登录', '1', '2016-04-21 16:24:53', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/WEB-INF/views/modules/zhuoyue/videoList.jsp', 'GET', 'courseId=3', '');
INSERT INTO `sys_log` VALUES ('3998955c6358462eaaeb56c1282305ac', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:23:03', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=6cbeb89ae050449c96cb98ce6b54bce5&parent.name=学生管理&name=修改&href=&target=&icon=&sort=60&isShow=0&permission=zhuoyue:student:edit&remarks=', '');
INSERT INTO `sys_log` VALUES ('3b020326c26d4b869f2e3e26a35f4a96', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:24:06', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3b416f1d6a3f45d29ad56a08ac615353', '1', '系统设置-系统设置-字典管理-查看', '1', '2016-04-21 16:08:22', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/form', 'GET', 'sort=10', '');
INSERT INTO `sys_log` VALUES ('3c1b75f91fcf49279f852fd2d452b3d9', '1', '首页-其他管理-短信管理', '1', '2016-04-21 16:05:19', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/smsCode/smsCodeList', 'GET', 'tabPageId=jerichotabiframe_5', '');
INSERT INTO `sys_log` VALUES ('3c4441315da84b9095329677c315df0f', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:26:39', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=a3a4101f509b4e209507f2a5b80a28ed&parent.name=课程管理&name=查看&href=&target=&icon=&sort=30&isShow=0&permission=zhuoyue:course:view&remarks=', '');
INSERT INTO `sys_log` VALUES ('3d54c16e6f244a5e9fecbfb30f199512', '1', '首页-首页-介绍', '1', '2016-04-21 15:21:19', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('3d84021fa41c426e857f452653e31fcf', '1', '首页-用户管理-群组管理-修改', '1', '2016-04-21 16:05:24', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/userGroup/userGroupForm', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('3d91b0c8f9674fb18496915610e85722', '1', '首页-用户管理-学生管理', '1', '2016-04-21 15:44:45', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/student/studentList', 'GET', 'tabPageId=jerichotabiframe_4', '');
INSERT INTO `sys_log` VALUES ('3d9f70f07b6c496abfc35f0d395b00c3', '1', '系统登录', '1', '2016-04-21 15:12:47', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'id=27', '');
INSERT INTO `sys_log` VALUES ('3ecb22ef962f4437b4ef3a402a6f13f3', '1', '首页-用户管理-学生管理-修改', '1', '2016-04-21 15:48:08', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/student/studentForm', 'GET', 'studentId=3', '');
INSERT INTO `sys_log` VALUES ('3fe51ced376c4cfca66b997820902215', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:23:06', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=5b6aadb217c94755bc586104ef6d6f7f', '');
INSERT INTO `sys_log` VALUES ('3ffad88711ca4aa4a94849efabdf9b52', '1', '首页-素材管理-课程管理', '1', '2016-04-21 17:05:54', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('40042bc0f5474ccd82b94655d79b20e1', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:23:31', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('419f3bfe72194c4b8f34c44b48842fe6', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 14:14:32', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', 'tabPageId=jerichotabiframe_3', '');
INSERT INTO `sys_log` VALUES ('42040f8a73f84456b9e93dfc06c454cb', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:06:07', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'id=13', '');
INSERT INTO `sys_log` VALUES ('424fdd8e40fd443e82f5470172b29edb', '1', '系统登录', '1', '2016-04-21 15:21:18', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('428b15b3e31f4acbb817268061b0e8ec', '1', '首页-素材管理-课程管理', '1', '2016-04-21 16:32:49', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('42ec56cdd344455bbf15f8bbf1ed48c5', '1', '首页-用户管理-群组管理', '1', '2016-04-21 15:43:58', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/userGroup/userGroupList', 'GET', 'tabPageId=jerichotabiframe_5', '');
INSERT INTO `sys_log` VALUES ('43debf89305d408591adcc950e103952', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:23:53', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=b9dd4838092b44488a14be5eefbc64da', '');
INSERT INTO `sys_log` VALUES ('44d4970dc4f74f02a465e3d0a8739984', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 15:49:58', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('45d931417a4842dc8eb905f72fb6ab91', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:26:39', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('45ffc4d925464c9fa8938b4825578adc', '1', '系统设置-机构用户-用户管理', '1', '2016-04-21 15:14:55', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('47dc07da4be4423583108d269257c48d', '1', '系统设置-系统设置-字典管理-查看', '1', '2016-04-21 16:07:43', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/form', 'GET', 'sort=10', '');
INSERT INTO `sys_log` VALUES ('47e251e3957f43c1b2420ede3f5d07d4', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:12:56', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4844c0eda4b143e5b038f5655d4a7aa1', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:14:57', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('492df067a44a41e49128d3a7a9a0dd89', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 15:52:01', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', 'repage=&type=status_flag', '');
INSERT INTO `sys_log` VALUES ('498ea809dac0442987e266990bca9a80', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:28:36', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=fafaa7e52e5b4eb1a7b6293722da60b6', '');
INSERT INTO `sys_log` VALUES ('49aee89069c74570a3e84eca96b6a4ee', '1', '首页', '1', '2015-09-09 18:27:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('49d2ba35fa004811a1d227a124b8d061', '1', '系统登录', '1', '2016-04-21 17:05:52', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('49ee12120b874fca9769e16fe4b0d7e4', '1', '系统设置-系统设置-字典管理-查看', '1', '2016-04-21 15:50:03', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/form', 'GET', 'sort=10', '');
INSERT INTO `sys_log` VALUES ('4a0a52d6ed1248fd9981fa357324ed45', '1', '首页-素材管理-课程管理', '1', '2016-04-21 17:13:38', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('4aa3afc55b44461aa3b908875cad8f9f', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:22:49', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=6cbeb89ae050449c96cb98ce6b54bce5', '');
INSERT INTO `sys_log` VALUES ('4ab6c36a7c9a44a1abd032f90d7bea5e', '1', '首页-用户管理-讲师管理', '1', '2016-04-21 16:05:40', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/teacher/teacherList', 'GET', 'tabPageId=jerichotabiframe_8', '');
INSERT INTO `sys_log` VALUES ('4b7c7f16069847978e2bddec51beb25a', '1', '首页-用户管理-群组管理-修改', '1', '2016-04-21 15:43:59', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/userGroup/userGroupForm', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4c236e23a43e439b9d81e3ca2bc1a375', '1', '系统设置-系统设置-角色管理', '1', '2016-04-21 16:07:41', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/role/', 'GET', 'tabPageId=jerichotabiframe_11', '');
INSERT INTO `sys_log` VALUES ('4e47b0fe64444441a7e574eb8accc082', '1', '系统登录', '1', '2016-04-21 15:31:41', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=24095d935b644e729821a37b7c3b457f&parent.name=其他管理&name=学员反馈&href=/zhuoyue/feedBack/feedBackList&target=&icon=&sort=90&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('4e8b7c00e4e74d29b58f1b76acb8e2e5', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 17:10:33', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=f91be6a7899646379ede968464fc84cc&parent.id=d3bd03ce8af0451abb8c741a900bcdd6&parent.name=素材管理&name=分类管理&href=/zhuoyue/courseDir/courseDirList&target=&icon=&sort=30&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('4e96fe5b28dc4759a5272f5ca66339bf', '1', '首页-素材管理-课程管理', '1', '2016-04-21 16:17:20', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4f12b0e7e8bf4df8a3c007eca79047d5', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:21:39', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', 'tabPageId=jerichotabiframe_3', '');
INSERT INTO `sys_log` VALUES ('4fbe26ecae534f7889fc3bedb6b4c74e', '1', '系统登录', '1', '2015-09-09 18:27:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('50f49d75fe5542338d4ec57c76a5cc9a', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:06:50', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=7508f1db2f844ce0aca8ddef31a568dc&parent.name=首页&name=用户管理&href=&target=&icon=&sort=30&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('534640d9f4ca450e9127ff31cc502ba0', '1', '首页-首页-介绍', '1', '2016-04-21 16:43:23', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('53dc64d3356345d28820a4106ae470c9', '1', '首页-用户管理-讲师管理', '1', '2016-04-21 15:53:44', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/teacher/teacherList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5447920a33b14a178e4e4526157cee08', '1', '首页-用户管理-群组管理', '1', '2016-04-21 15:44:17', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/userGroup/userGroupList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('54b236de1f5d4ea887c10839de6b0db9', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:21:06', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'id=29', '');
INSERT INTO `sys_log` VALUES ('55bdf724674640f4a0b9c7dab5ef85a2', '1', '系统设置-机构用户-机构管理-查看', '1', '2016-04-21 16:12:03', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/office/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('5642949ccb694c748b085d6d1cceada3', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:28:53', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=fafaa7e52e5b4eb1a7b6293722da60b6', '');
INSERT INTO `sys_log` VALUES ('5696f626e47740898a2a76a3d3ec5657', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:25:46', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('57aa6db3f1044493ae30030c0f0f795d', '1', '首页', '1', '2015-09-09 18:27:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('58ec2e46c1cb4070ba8980da13d2f4b6', '1', '系统设置-机构用户-用户管理-查看', '1', '2016-04-21 17:10:18', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('593906fabfd3447797d02027bc7ff7ea', '1', '系统登录', '1', '2016-04-21 16:45:14', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('59600e1c1323418db1be0497bcac859d', '1', '系统设置-系统设置-菜单管理', '1', '2015-09-09 18:27:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/menu/', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('599a1059e242480284c17e715eae8ae3', '1', '首页-用户管理-讲师管理', '1', '2016-04-21 15:53:49', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/teacher/teacherList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5ab5ca49b3fb462c8a46ad49102b2f91', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:28:50', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5c31ffe8da904dc3a57e2b5ee1ea9181', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 15:51:43', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5c692398af314aba8dda028cde8d667e', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 14:14:38', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'id=7508f1db2f844ce0aca8ddef31a568dc', '');
INSERT INTO `sys_log` VALUES ('5d819e8d33ff4d66a41d954d2e88c37b', '1', '系统设置-机构用户-用户管理', '1', '2016-04-21 15:42:36', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('5e231734fd404a1c98474ae876054a23', '1', '系统设置-系统设置-字典管理-修改', '1', '2016-04-21 16:12:23', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/delete', 'GET', 'id=24&type=sys_office_type', '');
INSERT INTO `sys_log` VALUES ('5efd6073d2744326bf636738ead2c601', '1', '系统设置-系统设置-字典管理-查看', '1', '2016-04-21 15:49:29', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/form', 'GET', 'sort=10', '');
INSERT INTO `sys_log` VALUES ('5f882442d38b4fd9825193cec5768640', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:17:18', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6032fbcf43d24cdc9a75ae27ad41cb8d', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:18:43', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=182a72c7c0354120941fa48a04e9c8c4&parent.name=群组管理&name=修改&href=&target=&icon=&sort=60&isShow=1&permission=zhuoyue:userGroup:edit&remarks=', '');
INSERT INTO `sys_log` VALUES ('606b64a26a694a20bf5d34ebfadeae26', '1', '首页-首页-介绍', '1', '2016-04-21 16:51:27', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('60717eca4672458aa44175e9bbc07681', '1', '首页-用户管理-讲师管理', '1', '2016-04-21 15:52:20', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/teacher/teacherList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('62c0c2612ada481daf1afcdb8811185e', '1', '首页-首页-介绍', '1', '2016-04-21 17:10:05', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('64668e5a1df7480b8e64aff19802f569', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:32:14', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=a90ef490a95f4300b23ad353f881044c&parent.name=学员反馈&name=修改&href=&target=&icon=&sort=60&isShow=0&permission=zhuoyue:feedBack:edit&remarks=', '');
INSERT INTO `sys_log` VALUES ('6487c59040b74cc9b334566fa3d86523', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 16:11:46', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'POST', 'pageNo=2&pageSize=30&type=&description=', '');
INSERT INTO `sys_log` VALUES ('649ba335bbaf473d86b73f417bdff816', '1', '首页', '1', '2016-04-21 15:03:25', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('64dd6fbe8db14a719c11f9403ecf8383', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:29:51', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=24095d935b644e729821a37b7c3b457f&parent.name=其他管理&name=版本管理&href=/zhuoyue/softUpdate/softUpdateList&target=&icon=&sort=60&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('655d43b225e24157a7ab941339647626', '1', '系统登录', '1', '2015-09-10 10:12:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('6578756855f14e5fb85a669c404696a7', '1', '系统设置-系统设置-字典管理-查看', '1', '2016-04-21 15:51:49', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/form', 'GET', 'id=b4b3b1c47c1b481980ffb0921a3fc9df', '');
INSERT INTO `sys_log` VALUES ('659ad636ac364b5fb18eb0367633562c', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 17:10:25', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'id=f91be6a7899646379ede968464fc84cc', '');
INSERT INTO `sys_log` VALUES ('66212d5d9eef413a9519bb39d7eb31d3', '1', '首页-用户管理-群组管理-修改', '1', '2016-04-21 15:21:31', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/userGroup/userGroupForm', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('67af6ed50fdf439ca47e0599ae11a0d0', '1', '系统设置-机构用户-用户管理', '1', '2016-04-21 16:07:38', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_10', '');
INSERT INTO `sys_log` VALUES ('689cb91a7c5546e98b1b75ef034762d5', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:12:10', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6990b70713e7494f9dc7673323499da8', '1', '首页-用户管理-群组管理-修改', '1', '2016-04-21 15:44:17', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/userGroup/userGroupSave', 'POST', 'id=&groupName=未分组&groupContent=未分组的学员', '');
INSERT INTO `sys_log` VALUES ('6999a566fa484075a43f04a324a4ea87', '1', '系统设置-系统设置-字典管理-修改', '1', '2016-04-21 16:11:53', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/delete', 'GET', 'id=30&type=sys_office_grade', '');
INSERT INTO `sys_log` VALUES ('6c9bd9a791d2466e8b4215bd29c3b5d4', '1', '首页', '1', '2016-04-21 14:14:19', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6d8f7a3814ed49a7968c41be9f809e3d', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-09-09 18:27:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/menu/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6d93613d3a274d7d9c322c4d823b409c', '1', '首页', '1', '2016-04-21 14:13:59', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6d9a2b2e99874c9b8a660700880f7cca', '1', '系统设置-机构用户-机构管理-修改', '1', '2016-04-21 16:11:34', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/office/save', 'POST', 'id=1&parent.id=&parent.name=&area.id=1&area.name=中国&name=深圳卓越教育咨询有限公司&code=001&type=1&grade=1&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=', '');
INSERT INTO `sys_log` VALUES ('6e5f3fc14ec146cabee8e0bcd17a3973', '1', '系统设置-机构用户-用户管理-查看', '1', '2016-04-21 15:14:55', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6f0e3635a22d47ba9ee65faac48fdf86', '1', '首页-素材管理-课程管理', '1', '2016-04-21 16:17:17', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6f0e906c6afa44d1bff89717b75f04bc', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:12:47', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'id=27', '');
INSERT INTO `sys_log` VALUES ('6f8cb0bdaa454292a11d29ca220104bf', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:25:22', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7172bc5e0a214d038f0c170231a60ddd', '1', '系统设置-机构用户-区域管理-修改', '1', '2016-04-21 16:10:51', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/area/save', 'POST', 'id=&parent.id=1&parent.name=中国&name=深圳&code=000001&type=3&remarks=', '');
INSERT INTO `sys_log` VALUES ('71aa13738f494c4885c7edf1e7148be6', '1', '系统设置-系统设置-角色管理', '1', '2016-04-21 15:14:08', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/role/', 'GET', 'tabPageId=jerichotabiframe_7', '');
INSERT INTO `sys_log` VALUES ('71e9123cb691422d8d57723f77c0edba', '1', '系统登录', '1', '2016-04-21 16:03:26', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('729764a2470545c3a136a6e3326004ca', '1', '系统登录', '1', '2016-04-21 17:10:51', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('75c053034d1a42028fe6c436810bcc11', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:30:12', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=4f14a968044b4164886994955926c44f', '');
INSERT INTO `sys_log` VALUES ('77bf5c8b5e1a4699b55924f9e698b1c7', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:05:53', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('77faf0ccf6594019bfbcb0869f12f1bc', '1', '首页-用户管理-学生管理', '1', '2016-04-21 15:44:47', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/student/studentList', 'GET', 'tabPageId=jerichotabiframe_4', '');
INSERT INTO `sys_log` VALUES ('7838ca4782a14a989f1c2deba0005f3f', '1', '系统设置-机构用户-用户管理', '1', '2016-04-21 15:21:37', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('7913aab62db44d3bbcb964550df43e0e', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:22:46', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=6cbeb89ae050449c96cb98ce6b54bce5&parent.name=学生管理&name=查看&href=&target=&icon=&sort=30&isShow=0&permission=zhuoyue:student:view&remarks=', '');
INSERT INTO `sys_log` VALUES ('79a10ab119184473a4dc5a08248ef057', '1', '首页-素材管理-课程管理', '1', '2016-04-21 17:10:11', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('7b0ff782e67940f2ba31ce44c25669b7', '1', '首页-用户管理-群组管理', '1', '2016-04-21 15:21:30', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/userGroup/userGroupList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7bcb73fd6ef84d929fcf399ede11a560', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:24:39', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=d3bd03ce8af0451abb8c741a900bcdd6', '');
INSERT INTO `sys_log` VALUES ('7c0302e0e2124abbbafe641286e6ab98', '1', '系统设置-系统设置-字典管理-修改', '1', '2016-04-21 15:51:37', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/save', 'POST', 'id=&value=0&label=停用&type=status_flag&description=账号状态&sort=10&remarks=', '');
INSERT INTO `sys_log` VALUES ('7c32c28d567e4fa4b0c93ac173684380', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:26:26', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=a3a4101f509b4e209507f2a5b80a28ed', '');
INSERT INTO `sys_log` VALUES ('7c3f1267052a4f84a581220a0ac5d133', '1', '系统设置-机构用户-机构管理-查看', '1', '2016-04-21 16:11:08', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/office/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('7ee2c91e858a4b9b90e90effa850530a', '1', '首页-首页-介绍', '1', '2016-04-21 15:39:25', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('7fd2b1510eb446f8bfa7fcaf1d66b037', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:30:30', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('85ab036e45a7481f9f961e628af1ac09', '1', '首页-素材管理-课程管理', '1', '2016-04-21 16:16:17', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('85f282332d754aa3a93a23afa4c758e4', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:28:32', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('86a9e5e9c1534aa1919b4a80d1172990', '1', '系统设置-机构用户-用户管理-查看', '1', '2016-04-21 14:14:17', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('86ab8fc6764e4ee1a98b42579835db4f', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:16:23', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('86e1ef865bcb4fec8d87bc05a754a429', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:23:31', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=5b6aadb217c94755bc586104ef6d6f7f&parent.name=用户管理&name=讲师管理&href=/zhuoyue/teacher/teacherList&target=&icon=&sort=90&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('8739d6ef8f6442049babbc0ffc44e58b', '1', '系统设置-机构用户-用户管理', '1', '2015-09-09 18:24:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('87bde55bbdc944ce8f8829e1c02ecb82', '1', '首页-其他管理-版本管理', '1', '2016-04-21 15:33:03', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/softUpdate/softUpdateList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('899791e11a6340fc9c6bb729077ef12a', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:26:03', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=d3bd03ce8af0451abb8c741a900bcdd6', '');
INSERT INTO `sys_log` VALUES ('89d7b3819f5145448e8e69882f3526f6', '1', '系统设置-机构用户-区域管理', '1', '2016-04-21 16:10:51', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('89d8349b2e6a4e8692fe70e696a96aef', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:16:47', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=5b6aadb217c94755bc586104ef6d6f7f', '');
INSERT INTO `sys_log` VALUES ('8a80c776849d4dcd902251d27d01d55b', '1', '首页-用户管理-学生管理', '1', '2016-04-21 15:48:05', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/student/studentList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8abcbc680a974839a5e8cc8f43499d38', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:27:02', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=24095d935b644e729821a37b7c3b457f', '');
INSERT INTO `sys_log` VALUES ('8c04808d1556470a83619db7cd464ee4', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:26:24', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8d0f42a1fe734a25ba87aa044a76b0d5', '1', '系统设置-机构用户-用户管理', '1', '2016-04-21 17:10:18', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('8d7d21149449461b914627a6cd16aa24', '1', '首页', '1', '2016-04-21 15:03:28', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8e7a544170cf491ca1f97c3e36c637e9', '1', '首页', '1', '2015-09-10 10:12:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8f5f002cacc14076859f2bbf3f94ba4e', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:23:34', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=b9dd4838092b44488a14be5eefbc64da', '');
INSERT INTO `sys_log` VALUES ('8ff6b6dee4f24d5c8047562dacd801f6', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:06:50', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('91066ba5f28043158df17f0043a20d76', '1', '首页', '1', '2015-09-10 10:12:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('916e372249154587a2f5da17584c762f', '1', '系统登录', '1', '2016-04-21 14:13:55', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('918ce428bbf946e7be7031eec68b57b1', '1', '首页-用户管理-讲师管理', '1', '2016-04-21 15:54:08', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/teacher/teacherList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9226c0f0de1242bb89020ffb6bda0581', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:19:58', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('947cc0477ff944a18f6e322587beb15b', '1', '系统设置-机构用户-机构管理-查看', '1', '2016-04-21 16:11:34', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/office/list', 'GET', 'id=&parentIds=0,', '');
INSERT INTO `sys_log` VALUES ('94f0b85660844fe580d873015d89d584', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:06:15', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('95d95f8b735b48a9a4cf0e36fe3a0eb1', '1', '首页-用户管理-讲师管理', '1', '2016-04-21 15:53:55', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/teacher/teacherList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('96d12757357640949c7e9a38a1cee6af', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 17:10:22', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', 'tabPageId=jerichotabiframe_3', '');
INSERT INTO `sys_log` VALUES ('981e3de1a148464bbd7bcd5e5cf2affc', '1', '系统设置-系统设置-字典管理', '1', '2015-09-09 18:27:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/dict/', 'GET', 'tabPageId=jerichotabiframe_3', '');
INSERT INTO `sys_log` VALUES ('984da17eb28c41fc89b27e04ca2e5269', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 16:12:12', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('98a528bfff7b4ed4afa88c99bc35c4f7', '1', '系统设置-机构用户-用户管理', '1', '2016-04-21 14:14:00', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('99cfd10ebf024368b2872895343474c4', '1', '系统设置-机构用户-机构管理-修改', '1', '2016-04-21 16:12:44', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/office/save', 'POST', 'id=1&parent.id=&parent.name=&area.id=781db57b43e146c5aa05002c93637c28&area.name=深圳&name=深圳卓越教育咨询有限公司&code=001&type=1&grade=1&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=', '');
INSERT INTO `sys_log` VALUES ('9ada1cd499fd4d89a3fdb7c419080a97', '1', '我的面板-个人信息-个人信息', '1', '2016-04-21 15:06:56', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_3', '');
INSERT INTO `sys_log` VALUES ('9b2dc17e4e0340e9a9dc254de4acf553', '1', '首页-首页-介绍', '1', '2016-04-21 17:10:42', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('9b42273e7548464a940ef116edfacad6', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:16:23', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=48a86f881149404185854c93aaaaec37&parent.name=首页&name=介绍&href=/sys/index&target=&icon=&sort=30&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('9c5e2b87ff764ceeaa98f3beaa80a6d1', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:29:51', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9c7a0a051ce74569b259363bcc29cb65', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:22:46', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9ccd815c05244b16bc10801c128433c0', '1', '首页-用户管理-群组管理', '1', '2016-04-21 15:21:21', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/userGroup/userGroupList', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('9cce9906c81e480793d782e84cb249e3', '1', '首页-素材管理-课程管理', '1', '2016-04-21 17:06:08', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9d20d168df0a4872b132ee6ee45c205a', '1', '系统设置-系统设置-字典管理-查看', '1', '2016-04-21 15:51:02', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/form', 'GET', 'id=b4b3b1c47c1b481980ffb0921a3fc9df', '');
INSERT INTO `sys_log` VALUES ('9dbc8d594bf448c18ee2e173a0886543', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 16:07:41', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', 'tabPageId=jerichotabiframe_12', '');
INSERT INTO `sys_log` VALUES ('9dc3400ea52c40a3a04fc7347f9e054c', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 14:14:42', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9e169b5161d041f3ad462bfa01dbc955', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:25:45', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=f91be6a7899646379ede968464fc84cc&parent.name=课程分类管理&name=查看&href=&target=&icon=&sort=30&isShow=0&permission=zhuoyue:courseDir:view&remarks=', '');
INSERT INTO `sys_log` VALUES ('9e54fa3b717c4d8091a31add73e2cb5b', '1', '首页-素材管理-课程管理', '1', '2016-04-21 16:18:24', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9f637103a3e24e68b4f11bbda39ab22f', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:08:49', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=7508f1db2f844ce0aca8ddef31a568dc', '');
INSERT INTO `sys_log` VALUES ('9f7372177f5c4080b260a3b63c1294eb', '1', '首页-素材管理-课程管理', '1', '2016-04-21 17:10:58', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('a02234e303034f40a23cdf9689d803fc', '1', '首页-用户管理-群组管理-修改', '1', '2016-04-21 15:21:27', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/userGroup/userGroupForm', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a04b07c29afb4c7aa7fd7d98aa2f32a6', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:09:42', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a0875c17431b4a1db4e1aaf0b625c9bf', '1', '系统设置-机构用户-用户管理-查看', '1', '2016-04-21 16:10:18', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a10a77bc64194c209553c22a2280f1a6', '1', '系统设置-系统设置-字典管理-修改', '1', '2016-04-21 16:08:20', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/save', 'POST', 'id=&value=1&label=是&type=fash_top&description=板块3是否置顶&sort=10&remarks=', '');
INSERT INTO `sys_log` VALUES ('a373aff181d6419dbe59f1e8e7b85c83', '1', '首页-素材管理-课程分类管理', '1', '2016-04-21 15:33:14', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/courseDir/courseDirList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a4a29c1ac8154967a60e34b7c8b3c4b2', '1', '首页-首页-介绍', '1', '2016-04-21 17:10:51', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('a5021dde5678420887dad4a100596a50', '1', '首页-首页-介绍', '1', '2016-04-21 17:05:52', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('a69db353ef50403bafac90d8c6651401', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 16:12:23', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', 'repage=&type=sys_office_type', '');
INSERT INTO `sys_log` VALUES ('a859c93dbe3843378f3c06d17ea8fcf2', '1', '首页-素材管理-分类管理', '1', '2016-04-21 17:10:53', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/courseDir/courseDirList', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('aa045bd71ea14fb5833de588fde1d980', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:13:02', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'id=7508f1db2f844ce0aca8ddef31a568dc', '');
INSERT INTO `sys_log` VALUES ('ad0bcb4fde184e40885bf59c97a23d3c', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:26:54', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=a3a4101f509b4e209507f2a5b80a28ed&parent.name=课程管理&name=修改&href=&target=&icon=&sort=60&isShow=0&permission=zhuoyue:course:edit&remarks=', '');
INSERT INTO `sys_log` VALUES ('ae8058c50cd449f8b0a1ff9b7f283793', '1', '首页-素材管理-课程管理', '1', '2016-04-21 15:39:31', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('aee0576f198d4fe1b3a7993da416a6db', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:25:59', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=f91be6a7899646379ede968464fc84cc&parent.name=课程分类管理&name=修改&href=&target=&icon=&sort=60&isShow=0&permission=zhuoyue:courseDir:edit&remarks=', '');
INSERT INTO `sys_log` VALUES ('afe3a0e9c8e94309853737aeabf87810', '1', '首页-首页-介绍', '1', '2016-04-21 16:03:27', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('b03c7c08e5684c90b507892d1792fd26', '1', '系统设置-系统设置-角色管理-查看', '1', '2016-04-21 16:13:29', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/role/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b144dddb7f74490f8a17fe77c2e809f9', '1', '我的面板-个人信息-个人信息', '1', '2015-09-10 10:15:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('b160c0f3ba6d490a973346cfd91c11d9', '1', '系统设置-机构用户-用户管理-查看', '1', '2016-04-21 16:07:39', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b17e558661dd4d9f99fe25edc6e1d7fa', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 15:51:19', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', 'repage=&type=status_flag', '');
INSERT INTO `sys_log` VALUES ('b21869094bb24a4ab0d232a70186eb49', '1', '系统登录', '1', '2016-04-21 16:32:47', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/WEB-INF/views/modules/zhuoyue/videoList.jsp', 'GET', 'courseId=4', '');
INSERT INTO `sys_log` VALUES ('b296517029bc4cf08fc8066bbce73a03', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 15:50:38', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b39fd0e713e3494ab9483d415b956c94', '1', '系统设置-机构用户-机构管理-查看', '1', '2016-04-21 16:12:44', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/office/list', 'GET', 'id=&parentIds=0,', '');
INSERT INTO `sys_log` VALUES ('b413b0922e0c4f4193ee7536a66eff06', '1', '首页', '1', '2016-04-21 14:14:04', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b44f0a7dd7c34fd4b333ddb7639abe3c', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:29:24', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=24095d935b644e729821a37b7c3b457f', '');
INSERT INTO `sys_log` VALUES ('b4ca08c5e3974230a06d71735416e4f6', '1', '系统设置-机构用户-区域管理-查看', '1', '2016-04-21 16:10:26', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/area/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('b4ec8e72d49541c9918275f22fef055b', '1', '系统设置-机构用户-区域管理', '1', '2016-04-21 16:10:23', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/area/', 'GET', 'tabPageId=jerichotabiframe_14', '');
INSERT INTO `sys_log` VALUES ('b6302ed26d5240a19f40ce704fc9bd41', '1', '首页-素材管理-课程管理', '1', '2016-04-21 16:17:44', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b63dd5a2c8734f18b4fad36f7358784c', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:28:32', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=24095d935b644e729821a37b7c3b457f&parent.name=其他管理&name=短信管理&href=/zhuoyue/smsCode/smsCodeList&target=&icon=&sort=30&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('b6cbff46b7b0408997aa36e44253dbc8', '1', '首页', '1', '2015-09-10 10:15:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b74e28d79acb468fa5c888f0f4a1e146', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:17:17', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=5b6aadb217c94755bc586104ef6d6f7f&parent.name=用户管理&name=群组管理&href=/zhuoyue/userGroup/userGroupList&target=&icon=&sort=30&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('b8365be1ef60421caeddf69f33a51316', '1', '首页-用户管理-群组管理-修改', '1', '2016-04-21 15:21:30', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/userGroup/userGroupForm', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ba69261be0684bf7a352bd05d2521bb1', '1', '首页-素材管理-课程管理', '1', '2016-04-21 16:09:19', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bada9633dbc84ab6bd17060b0d2e0504', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 16:08:48', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', 'repage=&type=fash_top', '');
INSERT INTO `sys_log` VALUES ('bb0bf4dcfd5848449e8544d36bac43af', '1', '首页-用户管理-讲师管理', '1', '2016-04-21 15:52:13', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/teacher/teacherList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bd8f9020efaf4896858097b2f97786ac', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 14:14:40', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bdc07df65dc5414397ce652d027b0f82', '1', '首页', '1', '2016-04-21 15:06:54', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bebec2d24540428e82f03ee568494d16', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:31:45', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=a90ef490a95f4300b23ad353f881044c', '');
INSERT INTO `sys_log` VALUES ('bee8445b975f4e16adcf532bc68a52f8', '1', '系统登录', '1', '2016-04-21 17:00:23', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/WEB-INF/views/modules/zhuoyue/videoList.jsp', 'GET', 'courseId=3', '');
INSERT INTO `sys_log` VALUES ('beeffdc1c931416e9723e86bd7ff58a8', '1', '首页-首页-介绍', '1', '2016-04-21 16:14:24', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', 'tabPageId=jerichotabiframe_20', '');
INSERT INTO `sys_log` VALUES ('bef1ae41b0894893a7170c72f7ec34d0', '1', '首页-素材管理-课程管理', '1', '2016-04-21 16:51:29', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('c33b2340e025497ab45a08166bc20e13', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:18:24', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=182a72c7c0354120941fa48a04e9c8c4', '');
INSERT INTO `sys_log` VALUES ('c3b82a0f9ddd4e34b7d6fd123bbce454', '1', '系统设置-系统设置-角色管理-修改', '1', '2016-04-21 15:14:17', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/role/save', 'POST', 'id=1&office.id=1&office.name=系统高级管理员&oldName=系统管理员&name=系统管理员&oldEnname=dept&enname=dept&sysData=1&useable=1&dataScope=1&menuIds=24,7508f1db2f844ce0aca8ddef31a568dc,48a86f881149404185854c93aaaaec37,5b6aadb217c94755bc586104ef6d...&officeIds=&remarks=', '');
INSERT INTO `sys_log` VALUES ('c455fe2a5d67494796ddc08e5d45b8dd', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-09-09 18:27:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c4d15073ed4e446dbc3aa00ad84c11e4', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:09:16', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c50b965f6630440b9d58e3a9eea77934', '1', '系统设置-机构用户-用户管理-查看', '1', '2016-04-21 15:21:37', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c66327bd1ed94458a91e788c769dfd39', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:29:54', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=4f14a968044b4164886994955926c44f', '');
INSERT INTO `sys_log` VALUES ('c741a79f408c4d618dacb566218c4ef3', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:26:54', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c802246a8f7b48ba80fd74310594dc6e', '1', '系统设置-系统设置-字典管理-修改', '1', '2016-04-21 15:51:19', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/save', 'POST', 'id=b4b3b1c47c1b481980ffb0921a3fc9df&value=1&label=启用&type=status_flag&description=账号状态&sort=10&remarks=', '');
INSERT INTO `sys_log` VALUES ('c83246af2bc54bbba9dce85a5829e7e9', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:31:57', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=a90ef490a95f4300b23ad353f881044c&parent.name=学员反馈&name=查看&href=&target=&icon=&sort=30&isShow=0&permission=zhuoyue:feedBack:view&remarks=', '');
INSERT INTO `sys_log` VALUES ('ca3a73014dec432a9a1b41078ed6ff19', '1', '首页-素材管理-课程管理', '1', '2016-04-21 16:19:24', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ca99840545f64879aedc05bb6ba8c8de', '1', '系统设置-机构用户-用户管理', '1', '2016-04-21 15:02:35', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('ccf1f8908d7b45a895026fa26e86e91f', '1', '首页-用户管理-学生管理', '1', '2016-04-21 15:43:06', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/student/studentList', 'GET', 'tabPageId=jerichotabiframe_4', '');
INSERT INTO `sys_log` VALUES ('ce830b94b5654626a67a816e27740f5d', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:06:14', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ced281e478584f748724151c006a7ad9', '1', '系统设置-机构用户-机构管理-查看', '1', '2016-04-21 16:11:00', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('cf901c058a3c4679a30f511ddc9e9cda', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:12:10', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=7508f1db2f844ce0aca8ddef31a568dc&parent.name=首页&name=首页&href=/sys/index&target=&icon=&sort=10&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('cfd3b791b0374141be91a03fc73ae3f4', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:22:13', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=5b6aadb217c94755bc586104ef6d6f7f&parent.name=用户管理&name=学生管理&href=/zhuoyue/student/studentList&target=&icon=&sort=60&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('cff4b5ab48324503be26a7be2119c161', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:18:44', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d02cd2f7587848218ef36109930825b5', '1', '系统设置-系统设置-角色管理-查看', '1', '2016-04-21 15:14:11', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/role/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('d03d05ecf817400dbdf7801b599817d7', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:09:16', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=7508f1db2f844ce0aca8ddef31a568dc&parent.name=首页&name=其他管理&href=&target=&icon=&sort=120&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('d15d502e33da49fca2f5b7e5b736780c', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:15:34', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=48a86f881149404185854c93aaaaec37', '');
INSERT INTO `sys_log` VALUES ('d2530993086144d394d06bde1d971d78', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:30:10', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d297dac9210f425cbbdd78a10f9780f5', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:23:50', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d2b411ad846c470b93a4443ab28a372c', '1', '系统设置-机构用户-机构管理-查看', '1', '2016-04-21 16:12:35', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/office/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('d2efe692b9fd4fa28fc0ffa7caa36af5', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:04:58', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d4e4ed9b72d24ab7b6d221277e823830', '1', '首页', '1', '2016-04-21 14:13:56', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d5974363ee604f1f94f1aea81d4505dc', '2', '', '1', '2016-04-21 17:11:01', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/video/videoList', 'GET', 'courseId=4', 'org.apache.jasper.JasperException: An exception occurred processing JSP page /WEB-INF/views/modules/zhuoyue/videoList.jsp at line 49\r\n\r\n46: 				<tr>\r\n47: 					<td>${video.videoId}</td>\r\n48: 					<td>${video.videoName}</td>\r\n49: 					<td>${video.bucketName}</td>\r\n50: 					<td>${video.totalTime}</td>\r\n51: 					<td>${video.freeTime}</td>\r\n52: 					<td><fmt:formatDate value=\"${video.uploadTime}\" type=\"both\" /></td>\r\n\r\n\r\nStacktrace:\r\n	at org.apache.jasper.servlet.JspServletWrapper.handleJspException(JspServletWrapper.java:575)\r\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:477)\r\n	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:395)\r\n	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:339)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:731)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:303)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:748)\r\n	at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:486)\r\n	at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:411)\r\n	at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:338)\r\n	at org.springframework.web.servlet.view.InternalResourceView.renderMergedOutputModel(InternalResourceView.java:209)\r\n	at org.springframework.web.servlet.view.AbstractView.render(AbstractView.java:267)\r\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1221)\r\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1005)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:952)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:870)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:961)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:852)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:624)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:837)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:731)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:303)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:344)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:261)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:88)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:220)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:122)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:505)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:170)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:103)\r\n	at org.apache.catalina.valves.AccessLogValve.invoke(AccessLogValve.java:957)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:116)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:423)\r\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1079)\r\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:620)\r\n	at org.apache.tomcat.util.net.JIoEndpoint$SocketProcessor.run(JIoEndpoint.java:318)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:722)\r\nCaused by: javax.el.PropertyNotFoundException: Property \'bucketName\' not found on type com.cnmobi.zhuoyue.modules.zhuoyue.entity.Video\r\n	at javax.el.BeanELResolver$BeanProperties.get(BeanELResolver.java:290)\r\n	at javax.el.BeanELResolver$BeanProperties.access$300(BeanELResolver.java:243)\r\n	at javax.el.BeanELResolver.property(BeanELResolver.java:377)\r\n	at javax.el.BeanELResolver.getValue(BeanELResolver.java:97)\r\n	at org.apache.jasper.el.JasperELResolver.getValue(JasperELResolver.java:104)\r\n	at org.apache.el.parser.AstValue.getValue(AstValue.java:183)\r\n	at org.apache.el.ValueExpressionImpl.getValue(ValueExpressionImpl.java:184)\r\n	at org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate(PageContextImpl.java:944)\r\n	at org.apache.jsp.WEB_002dINF.views.modules.zhuoyue.videoList_jsp._jspx_meth_c_005fforEach_005f0(videoList_jsp.java:354)\r\n	at org.apache.jsp.WEB_002dINF.views.modules.zhuoyue.videoList_jsp._jspService(videoList_jsp.java:162)\r\n	at org.apache.jasper.runtime.HttpJspBase.service(HttpJspBase.java:70)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:731)\r\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:439)\r\n	... 67 more\r\n');
INSERT INTO `sys_log` VALUES ('d5e5b06b9f58440babdc1207fc6231e6', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:29:07', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=fafaa7e52e5b4eb1a7b6293722da60b6&parent.name=短信管理&name=修改&href=&target=&icon=&sort=60&isShow=0&permission=zhuoyue:smsCode:edit&remarks=', '');
INSERT INTO `sys_log` VALUES ('d86bef2eb6ce4447a64dcaf821a2c7d9', '1', '系统登录', '1', '2016-04-21 15:32:46', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('d87367091d9b48769e069be27d1b459b', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 16:11:56', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', 'repage=&type=sys_office_grade', '');
INSERT INTO `sys_log` VALUES ('d9246d17726e4f4ea37f041f037cd435', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:08:21', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=7508f1db2f844ce0aca8ddef31a568dc', '');
INSERT INTO `sys_log` VALUES ('d93743a0b36e4c4fade36ba479876594', '1', '系统设置-机构用户-用户管理', '1', '2015-09-09 18:27:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('d94be0c192f3492da2a3157ef7abe0d4', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:08:46', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d95e1d5d3af54412930121036a4c77a2', '1', '首页-用户管理-讲师管理', '1', '2016-04-21 15:53:12', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/teacher/teacherList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d9d96adc05c241bfa565ec7f588e5c66', '1', '系统登录', '1', '2015-09-09 18:26:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('d9f2a08c05794c41885775cce351a046', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:25:59', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('da4d312f92384f70a2eefcdd19147ee7', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:22:18', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=6cbeb89ae050449c96cb98ce6b54bce5', '');
INSERT INTO `sys_log` VALUES ('da54ab57dda443c69d5dc90d4618d13e', '1', '首页', '1', '2015-09-09 18:26:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dbc48a07774849659856ba1120c090d2', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:23:03', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dbf5f4c980884affa533dbcd6b805b9e', '1', '系统登录', '1', '2016-04-21 15:49:29', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/form', 'GET', 'sort=10', '');
INSERT INTO `sys_log` VALUES ('dc085c8b4e29410380d94a3108418833', '1', '首页-首页-介绍', '1', '2016-04-21 15:32:46', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('dc1bbcf86cea42598974cfc9e94845d4', '1', '系统设置-机构用户-用户管理-查看', '1', '2016-04-21 14:14:16', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dc52a831d7cf449094a756df41751a11', '1', '首页-其他管理-短信管理', '1', '2016-04-21 15:32:53', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/smsCode/smsCodeList', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('dcd9f09c0b094c939d87d6d57f8d813f', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:25:48', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=f91be6a7899646379ede968464fc84cc', '');
INSERT INTO `sys_log` VALUES ('ddd2223404f04cadbb7ebaa639e7240f', '1', '首页-用户管理-学生管理', '1', '2016-04-21 15:45:40', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/student/studentList', 'GET', 'tabPageId=jerichotabiframe_4', '');
INSERT INTO `sys_log` VALUES ('de5d8ad886ff4055bdb78cdb078404d1', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:15:22', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'id=56', '');
INSERT INTO `sys_log` VALUES ('de63780fcf354928ad0fa330964c2a95', '1', '系统设置-系统设置-字典管理-查看', '1', '2016-04-21 15:51:56', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/form', 'GET', 'id=8c1015e168914f168500681b7d2cbac3', '');
INSERT INTO `sys_log` VALUES ('df2b357a46dc4df7969efc19ceca85d2', '1', '首页', '1', '2015-09-10 10:14:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('df992ee7a51c498eba3cf6441b4573c9', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 16:11:53', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', 'repage=&type=sys_office_grade', '');
INSERT INTO `sys_log` VALUES ('e05c4a1a813b4cc89202b2c1c1f42eb6', '1', '首页', '1', '2016-04-21 14:14:02', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e0fd8dbd5a9b474e9823cd9c0f7c00de', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:31:41', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e25ddb9eaa3a4dcd967e7d206bc0fa21', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:07:46', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e2937c8e85e1434c8205cb3e56e8aef1', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 16:12:20', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', 'repage=&type=sys_office_type', '');
INSERT INTO `sys_log` VALUES ('e2a71b0fa268470e915f42e6422cfe0d', '1', '首页-用户管理-学生管理', '1', '2016-04-21 15:47:03', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/student/studentList', 'GET', 'tabPageId=jerichotabiframe_4', '');
INSERT INTO `sys_log` VALUES ('e2caca6fd0774a7ab8de9b072250dc59', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:32:14', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e2d3b9e8380742abb3fa05381416d8f3', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:09:42', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/delete', 'GET', 'id=f753163c88fc486d84b8ae2617c88aec', '');
INSERT INTO `sys_log` VALUES ('e312d77d3d2545f88567d644a1d1d165', '1', '系统设置-日志查询-日志查询', '1', '2015-09-09 18:27:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/log', 'GET', 'tabPageId=jerichotabiframe_4', '');
INSERT INTO `sys_log` VALUES ('e3a00b167c3a43e8958b671500dfedc4', '1', '系统设置-系统设置-字典管理-修改', '1', '2016-04-21 15:52:00', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/save', 'POST', 'id=8c1015e168914f168500681b7d2cbac3&value=0&label=停用&type=status_flag&description=账号状态&sort=20&remarks=', '');
INSERT INTO `sys_log` VALUES ('e47567e5e57b43d79e355c72ddeedcdc', '1', '系统设置-系统设置-字典管理', '1', '2016-04-21 15:51:37', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/', 'GET', 'repage=&type=status_flag', '');
INSERT INTO `sys_log` VALUES ('e4c2d58dc4044bccb8d323f1e0137937', '1', '系统设置-系统设置-字典管理-修改', '1', '2016-04-21 16:11:56', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/dict/delete', 'GET', 'id=31&type=sys_office_grade', '');
INSERT INTO `sys_log` VALUES ('e56ca2a7e189442cbec70559bd67d191', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:18:15', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=182a72c7c0354120941fa48a04e9c8c4&parent.name=群组管理&name=查看&href=&target=&icon=&sort=30&isShow=0&permission=zhuoyue:userGroup:view&remarks=', '');
INSERT INTO `sys_log` VALUES ('e5eae852c4c94813a9080fed273bb8d4', '1', '系统登录', '1', '2016-04-21 16:51:26', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('ea34649c3eee4246a463b58fa5166901', '1', '首页-其他管理-学员反馈', '1', '2016-04-21 16:05:11', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/feedBack/feedBackList', 'GET', 'tabPageId=jerichotabiframe_4', '');
INSERT INTO `sys_log` VALUES ('ea863b2b4dc44d20821029a1df556159', '1', '系统设置-机构用户-区域管理-查看', '1', '2016-04-21 16:10:34', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/area/form', 'GET', 'parent.id=1', '');
INSERT INTO `sys_log` VALUES ('eb2f99c418bb4fcfbfd84178741c4b30', '1', '首页-素材管理-课程管理', '1', '2016-04-21 16:14:40', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', 'tabPageId=jerichotabiframe_21', '');
INSERT INTO `sys_log` VALUES ('ebcd90cf61d64e5d8c8f0f5816fdb83e', '1', '首页-素材管理-课程分类管理', '1', '2016-04-21 16:03:29', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/courseDir/courseDirList', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('ebe39681e0114aa7b2112fba5c56b05f', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:31:41', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=24095d935b644e729821a37b7c3b457f&parent.name=其他管理&name=学员反馈&href=/zhuoyue/feedBack/feedBackList&target=&icon=&sort=90&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('ed4f69735be341b4a6f5283726f746c6', '1', '首页-其他管理-版本管理', '1', '2016-04-21 15:32:58', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/softUpdate/softUpdateList', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('ee63c6997531495d9fa1db2e61220499', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:24:06', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=b9dd4838092b44488a14be5eefbc64da&parent.name=讲师管理&name=修改&href=&target=&icon=&sort=60&isShow=0&permission=zhuoyue:teacher:edit&remarks=', '');
INSERT INTO `sys_log` VALUES ('ef0e1c85a9f64fa5969bc5c21768df15', '1', '系统登录', '1', '2016-04-21 15:39:25', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('f0e27098055143d78570efb0718c5e11', '1', '系统登录', '1', '2016-04-21 16:43:23', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('f1e29468719b49cfba73971a34cb8cd3', '1', '系统设置-机构用户-用户管理', '1', '2016-04-21 16:10:18', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_13', '');
INSERT INTO `sys_log` VALUES ('f2ff78d0fe284fab99426be43f1cf35d', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:20:06', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'id=a57b15c831fa43bea9c71a5869169fdd', '');
INSERT INTO `sys_log` VALUES ('f3489293019b42d68dc37674db2605db', '1', '系统设置-系统设置-菜单管理', '1', '2016-04-21 15:22:13', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f3b5ae89b979421682e685e42bb96390', '1', '系统设置-系统设置-字典管理', '1', '2015-09-09 18:27:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/dict/', 'POST', 'description=&pageNo=2&pageSize=30&type=', '');
INSERT INTO `sys_log` VALUES ('f3e877e2838241e0b23bfb87059aa505', '1', '系统设置-机构用户-用户管理', '1', '2015-09-10 10:15:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('f55040ebc4d74cfda22f13b61814b35c', '1', '系统设置-系统设置-角色管理', '1', '2015-09-09 18:27:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/role/', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('f5ba59c9f01d454fbf7cbf8e9ce714a3', '1', '首页-用户管理-群组管理-修改', '1', '2016-04-21 15:44:18', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/userGroup/userGroupForm', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f71fb8795e5942dbbbc8cc8db8e822c9', '1', '首页', '1', '2016-04-21 15:02:34', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f7e604d0e24c494b8e149878d2260d8e', '1', '系统登录', '1', '2016-04-21 17:13:35', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('f82afd0021024c18a6bc122f6312b968', '1', '首页-用户管理-讲师管理', '1', '2016-04-21 15:53:59', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/teacher/teacherList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f8a91228b4774cf0aa8854a86fa14bcb', '1', '系统登录', '1', '2016-04-21 17:10:05', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('f92008307dcb4c2699af667248cc8ae7', '1', '系统设置-系统设置-菜单管理-查看', '1', '2016-04-21 15:26:42', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/form', 'GET', 'parent.id=a3a4101f509b4e209507f2a5b80a28ed', '');
INSERT INTO `sys_log` VALUES ('f98596a10c7b4918a61607aced5d4c59', '1', '首页-用户管理-学生管理', '1', '2016-04-21 16:05:26', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/student/studentList', 'GET', 'tabPageId=jerichotabiframe_7', '');
INSERT INTO `sys_log` VALUES ('fa8c0cacc9e648f7a5cc7fc6fa587fad', '1', '首页-素材管理-课程管理', '1', '2016-04-21 16:24:54', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/course/courseList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fb7ddb01762e462b899ab3aa37c9698b', '1', '系统设置-机构用户-用户管理', '1', '2015-09-10 10:12:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('fb990310782c4c258a22d38fd39f2e23', '1', '系统设置-系统设置-菜单管理-修改', '1', '2016-04-21 15:25:22', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/menu/save', 'POST', 'id=&parent.id=d3bd03ce8af0451abb8c741a900bcdd6&parent.name=素材管理&name=课程分类管理&href=/zhuoyue/courseDir/courseDirList&target=&icon=&sort=30&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('fbb8fa0385ae48e2a65d3ddb21e878fe', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-09-09 18:26:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fc6145862e69494f939a902d92892966', '1', '首页-用户管理-群组管理', '1', '2016-04-21 15:21:29', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/userGroup/userGroupList', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fe290fcff82b4ff48f86e45a3274c463', '1', '系统设置-系统设置-角色管理', '1', '2016-04-21 16:13:25', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/role/', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('ff06cc2237d94633a38b71a391fa382e', '1', '系统设置-机构用户-机构管理-查看', '1', '2016-04-21 16:12:30', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/sys/office/list', 'GET', 'id=&parentIds=0,', '');
INSERT INTO `sys_log` VALUES ('ff3c82dcd7374546bd12ff5dd63d933f', '1', '首页-其他管理-学员反馈', '1', '2016-04-21 15:33:04', '0:0:0:0:0:0:0:1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)', '/zhuoyue_cms/a/zhuoyue/feedBack/feedBackList', 'GET', 'tabPageId=jerichotabiframe_3', '');
INSERT INTO `sys_log` VALUES ('ff80689359e34685b961977d57f3d65f', '1', '我的面板-个人信息-个人信息', '1', '2015-09-10 10:12:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('ffe345d1683e4c9db5c5e1d6a9c5f6ac', '1', '首页', '1', '2015-09-09 18:24:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', '/zhuoyue_cms/a/sys/index', 'GET', '', '');

-- ----------------------------
-- Table structure for `sys_mdict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_mdict`;
CREATE TABLE `sys_mdict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='多级字典表';

-- ----------------------------
-- Records of sys_mdict
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('0a2b003daf084df1b21b08180fe2c419', '182a72c7c0354120941fa48a04e9c8c4', '0,1,7508f1db2f844ce0aca8ddef31a568dc,5b6aadb217c94755bc586104ef6d6f7f,182a72c7c0354120941fa48a04e9c8c4,', '查看', '30', '', '', '', '0', 'zhuoyue:userGroup:view', '1', '2016-04-21 15:18:15', '1', '2016-04-21 15:18:15', '', '0');
INSERT INTO `sys_menu` VALUES ('10', '3', '0,1,2,3,', '字典管理', '60', '/sys/dict/', null, 'th-list', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('100bc89271ca4ba28fb0e43c42581e74', '4f14a968044b4164886994955926c44f', '0,1,7508f1db2f844ce0aca8ddef31a568dc,24095d935b644e729821a37b7c3b457f,4f14a968044b4164886994955926c44f,', '修改', '60', '', '', '', '0', 'zhuoyue:softUpdate:edit', '1', '2016-04-21 15:30:30', '1', '2016-04-21 15:30:30', '', '0');
INSERT INTO `sys_menu` VALUES ('11', '10', '0,1,2,3,10,', '查看', '30', null, null, null, '0', 'sys:dict:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '10', '0,1,2,3,10,', '修改', '40', null, null, null, '0', 'sys:dict:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('13', '2', '0,1,2,', '机构用户', '970', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('14', '13', '0,1,2,13,', '区域管理', '50', '/sys/area/', null, 'th', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('15', '14', '0,1,2,13,14,', '查看', '30', null, null, null, '0', 'sys:area:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '14', '0,1,2,13,14,', '修改', '40', null, null, null, '0', 'sys:area:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '13', '0,1,2,13,', '机构管理', '40', '/sys/office/', null, 'th-large', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '17', '0,1,2,13,17,', '查看', '30', null, null, null, '0', 'sys:office:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('182a72c7c0354120941fa48a04e9c8c4', '5b6aadb217c94755bc586104ef6d6f7f', '0,1,7508f1db2f844ce0aca8ddef31a568dc,5b6aadb217c94755bc586104ef6d6f7f,', '群组管理', '30', '/zhuoyue/userGroup/userGroupList', '', '', '1', '', '1', '2016-04-21 15:17:17', '1', '2016-04-21 15:17:17', '', '0');
INSERT INTO `sys_menu` VALUES ('19', '17', '0,1,2,13,17,', '修改', '40', null, null, null, '0', 'sys:office:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '0,1,', '系统设置', '900', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '13', '0,1,2,13,', '用户管理', '30', '/sys/user/index', null, 'user', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '20', '0,1,2,13,20,', '查看', '30', null, null, null, '0', 'sys:user:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '20', '0,1,2,13,20,', '修改', '40', null, null, null, '0', 'sys:user:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '2', '0,1,2,', '关于帮助', '990', null, null, null, '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('24', '23', '0,1,2,23', '官方首页', '30', 'http://jeesite.com', '_blank', null, '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('24095d935b644e729821a37b7c3b457f', '7508f1db2f844ce0aca8ddef31a568dc', '0,1,7508f1db2f844ce0aca8ddef31a568dc,', '其他管理', '90', '', '', '', '1', '', '1', '2016-04-21 15:09:16', '1', '2016-04-21 15:09:16', '', '0');
INSERT INTO `sys_menu` VALUES ('25', '23', '0,1,2,23', '项目支持', '50', 'http://jeesite.com/donation.html', '_blank', null, '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('26', '23', '0,1,2,23', '论坛交流', '80', 'http://bbs.jeesite.com', '_blank', null, '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('27', '1', '0,1,', '我的面板', '800', '', '', '', '1', '', '1', '2013-05-27 08:00:00', '1', '2015-08-05 17:47:58', '', '0');
INSERT INTO `sys_menu` VALUES ('28', '27', '0,1,27,', '个人信息', '30', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('29', '28', '0,1,27,28,', '个人信息', '30', '/sys/user/info', null, 'user', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('3', '2', '0,1,2,', '系统设置', '980', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('30', '28', '0,1,27,28,', '修改密码', '40', '/sys/user/modifyPwd', null, 'lock', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('4', '3', '0,1,2,3,', '菜单管理', '30', '/sys/menu/', null, 'list-alt', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('48a86f881149404185854c93aaaaec37', '7508f1db2f844ce0aca8ddef31a568dc', '0,1,7508f1db2f844ce0aca8ddef31a568dc,', '首页', '10', '/sys/index', '', '', '1', '', '1', '2016-04-21 15:12:10', '1', '2016-04-21 15:12:10', '', '0');
INSERT INTO `sys_menu` VALUES ('4f14a968044b4164886994955926c44f', '24095d935b644e729821a37b7c3b457f', '0,1,7508f1db2f844ce0aca8ddef31a568dc,24095d935b644e729821a37b7c3b457f,', '版本管理', '60', '/zhuoyue/softUpdate/softUpdateList', '', '', '1', '', '1', '2016-04-21 15:29:51', '1', '2016-04-21 15:29:51', '', '0');
INSERT INTO `sys_menu` VALUES ('5', '4', '0,1,2,3,4,', '查看', '30', null, null, null, '0', 'sys:menu:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('56', '71', '0,1,27,71,', '文件管理', '10', '/../static/ckfinder/ckfinder.html', '', 'folder-open', '1', '', '1', '2013-05-27 08:00:00', '1', '2015-08-05 17:33:06', '', '0');
INSERT INTO `sys_menu` VALUES ('57', '56', '0,1,27,40,56,', '查看', '30', null, null, null, '0', 'cms:ckfinder:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('58', '56', '0,1,27,40,56,', '上传', '40', null, null, null, '0', 'cms:ckfinder:upload', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('59', '56', '0,1,27,40,56,', '修改', '50', null, null, null, '0', 'cms:ckfinder:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('5b6aadb217c94755bc586104ef6d6f7f', '7508f1db2f844ce0aca8ddef31a568dc', '0,1,7508f1db2f844ce0aca8ddef31a568dc,', '用户管理', '30', '', '', '', '1', '', '1', '2016-04-21 15:06:50', '1', '2016-04-21 15:06:50', '', '0');
INSERT INTO `sys_menu` VALUES ('5f7ab5fd18f441c2a2ba040f2f8f6af1', 'f91be6a7899646379ede968464fc84cc', '0,1,7508f1db2f844ce0aca8ddef31a568dc,d3bd03ce8af0451abb8c741a900bcdd6,f91be6a7899646379ede968464fc84cc,', '修改', '60', '', '', '', '0', 'zhuoyue:courseDir:edit', '1', '2016-04-21 15:25:59', '1', '2016-04-21 15:25:59', '', '0');
INSERT INTO `sys_menu` VALUES ('6', '4', '0,1,2,3,4,', '修改', '40', null, null, null, '0', 'sys:menu:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('67', '2', '0,1,2,', '日志查询', '985', null, null, null, '1', null, '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('68', '67', '0,1,2,67,', '日志查询', '30', '/sys/log', null, 'pencil', '1', 'sys:log:view', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('6cbeb89ae050449c96cb98ce6b54bce5', '5b6aadb217c94755bc586104ef6d6f7f', '0,1,7508f1db2f844ce0aca8ddef31a568dc,5b6aadb217c94755bc586104ef6d6f7f,', '学生管理', '60', '/zhuoyue/student/studentList', '', '', '1', '', '1', '2016-04-21 15:22:13', '1', '2016-04-21 15:22:13', '', '0');
INSERT INTO `sys_menu` VALUES ('7', '3', '0,1,2,3,', '角色管理', '50', '/sys/role/', null, 'lock', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('71', '27', '0,1,27,', '文件管理', '90', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('72ecee6e31ba455bbec71eb8d24ae905', '48a86f881149404185854c93aaaaec37', '0,1,7508f1db2f844ce0aca8ddef31a568dc,48a86f881149404185854c93aaaaec37,', '介绍', '30', '/sys/index', '', '', '1', '', '1', '2016-04-21 15:16:23', '1', '2016-04-21 15:16:23', '', '0');
INSERT INTO `sys_menu` VALUES ('7508f1db2f844ce0aca8ddef31a568dc', '1', '0,1,', '首页', '50', '', 'mainFrame', '', '1', '', '1', '2015-08-05 17:32:13', '1', '2015-08-07 09:19:48', '', '0');
INSERT INTO `sys_menu` VALUES ('7df6550030cd45ba9536794ce5b05c47', 'a3a4101f509b4e209507f2a5b80a28ed', '0,1,7508f1db2f844ce0aca8ddef31a568dc,d3bd03ce8af0451abb8c741a900bcdd6,a3a4101f509b4e209507f2a5b80a28ed,', '修改', '60', '', '', '', '0', 'zhuoyue:course:edit', '1', '2016-04-21 15:26:54', '1', '2016-04-21 15:26:54', '', '0');
INSERT INTO `sys_menu` VALUES ('8', '7', '0,1,2,3,7,', '查看', '30', null, null, null, '0', 'sys:role:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('84', '67', '0,1,2,67,', '连接池监视', '40', '/../druid', null, null, '1', null, '1', '2013-10-18 08:00:00', '1', '2013-10-18 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('8b4b02d57ba74233b81a84095cc5f0d3', 'a90ef490a95f4300b23ad353f881044c', '0,1,7508f1db2f844ce0aca8ddef31a568dc,24095d935b644e729821a37b7c3b457f,a90ef490a95f4300b23ad353f881044c,', '查看', '30', '', '', '', '0', 'zhuoyue:feedBack:view', '1', '2016-04-21 15:31:57', '1', '2016-04-21 15:31:57', '', '0');
INSERT INTO `sys_menu` VALUES ('8f388832adf0417ab2abd7e4ad86db6d', '6cbeb89ae050449c96cb98ce6b54bce5', '0,1,7508f1db2f844ce0aca8ddef31a568dc,5b6aadb217c94755bc586104ef6d6f7f,6cbeb89ae050449c96cb98ce6b54bce5,', '修改', '60', '', '', '', '0', 'zhuoyue:student:edit', '1', '2016-04-21 15:23:03', '1', '2016-04-21 15:23:03', '', '0');
INSERT INTO `sys_menu` VALUES ('9', '7', '0,1,2,3,7,', '修改', '40', null, null, null, '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('a13c2857126444aab408ea7c519f3c60', 'fafaa7e52e5b4eb1a7b6293722da60b6', '0,1,7508f1db2f844ce0aca8ddef31a568dc,24095d935b644e729821a37b7c3b457f,fafaa7e52e5b4eb1a7b6293722da60b6,', '修改', '60', '', '', '', '0', 'zhuoyue:smsCode:edit', '1', '2016-04-21 15:29:07', '1', '2016-04-21 15:29:07', '', '0');
INSERT INTO `sys_menu` VALUES ('a21ff036004c4d15b40126506c2cf36b', 'b9dd4838092b44488a14be5eefbc64da', '0,1,7508f1db2f844ce0aca8ddef31a568dc,5b6aadb217c94755bc586104ef6d6f7f,b9dd4838092b44488a14be5eefbc64da,', '修改', '60', '', '', '', '0', 'zhuoyue:teacher:edit', '1', '2016-04-21 15:24:06', '1', '2016-04-21 15:24:06', '', '0');
INSERT INTO `sys_menu` VALUES ('a3a4101f509b4e209507f2a5b80a28ed', 'd3bd03ce8af0451abb8c741a900bcdd6', '0,1,7508f1db2f844ce0aca8ddef31a568dc,d3bd03ce8af0451abb8c741a900bcdd6,', '课程管理', '60', '/zhuoyue/course/courseList', '', '', '1', '', '1', '2016-04-21 15:26:24', '1', '2016-04-21 15:26:24', '', '0');
INSERT INTO `sys_menu` VALUES ('a57b15c831fa43bea9c71a5869169fdd', '182a72c7c0354120941fa48a04e9c8c4', '0,1,7508f1db2f844ce0aca8ddef31a568dc,5b6aadb217c94755bc586104ef6d6f7f,182a72c7c0354120941fa48a04e9c8c4,', '修改', '60', '', '', '', '0', 'zhuoyue:userGroup:edit', '1', '2016-04-21 15:18:43', '1', '2016-04-21 15:20:09', '', '0');
INSERT INTO `sys_menu` VALUES ('a90ef490a95f4300b23ad353f881044c', '24095d935b644e729821a37b7c3b457f', '0,1,7508f1db2f844ce0aca8ddef31a568dc,24095d935b644e729821a37b7c3b457f,', '学员反馈', '90', '/zhuoyue/feedBack/feedBackList', '', '', '1', '', '1', '2016-04-21 15:31:41', '1', '2016-04-21 15:31:41', '', '0');
INSERT INTO `sys_menu` VALUES ('b6387ae2689a451fb4847bbdd9f130c0', 'b9dd4838092b44488a14be5eefbc64da', '0,1,7508f1db2f844ce0aca8ddef31a568dc,5b6aadb217c94755bc586104ef6d6f7f,b9dd4838092b44488a14be5eefbc64da,', '查看', '30', '', '', '', '0', 'zhuoyue:teacher:view', '1', '2016-04-21 15:23:50', '1', '2016-04-21 15:23:50', '', '0');
INSERT INTO `sys_menu` VALUES ('b9dd4838092b44488a14be5eefbc64da', '5b6aadb217c94755bc586104ef6d6f7f', '0,1,7508f1db2f844ce0aca8ddef31a568dc,5b6aadb217c94755bc586104ef6d6f7f,', '讲师管理', '90', '/zhuoyue/teacher/teacherList', '', '', '1', '', '1', '2016-04-21 15:23:31', '1', '2016-04-21 15:23:31', '', '0');
INSERT INTO `sys_menu` VALUES ('c716016103ca46c68412794ba1195fc5', 'f91be6a7899646379ede968464fc84cc', '0,1,7508f1db2f844ce0aca8ddef31a568dc,d3bd03ce8af0451abb8c741a900bcdd6,f91be6a7899646379ede968464fc84cc,', '查看', '30', '', '', '', '0', 'zhuoyue:courseDir:view', '1', '2016-04-21 15:25:45', '1', '2016-04-21 15:25:45', '', '0');
INSERT INTO `sys_menu` VALUES ('ca9f0268b7c14014832735845c9b7d82', 'fafaa7e52e5b4eb1a7b6293722da60b6', '0,1,7508f1db2f844ce0aca8ddef31a568dc,24095d935b644e729821a37b7c3b457f,fafaa7e52e5b4eb1a7b6293722da60b6,', '查看', '30', '', '', '', '0', 'zhuoyue:smsCode:view', '1', '2016-04-21 15:28:50', '1', '2016-04-21 15:28:50', '', '0');
INSERT INTO `sys_menu` VALUES ('d3bd03ce8af0451abb8c741a900bcdd6', '7508f1db2f844ce0aca8ddef31a568dc', '0,1,7508f1db2f844ce0aca8ddef31a568dc,', '素材管理', '60', '', '', '', '1', '', '1', '2016-04-21 15:07:46', '1', '2016-04-21 15:07:46', '', '0');
INSERT INTO `sys_menu` VALUES ('dbaa91b5c13f4d3fb8752434ae0b94d6', '6cbeb89ae050449c96cb98ce6b54bce5', '0,1,7508f1db2f844ce0aca8ddef31a568dc,5b6aadb217c94755bc586104ef6d6f7f,6cbeb89ae050449c96cb98ce6b54bce5,', '查看', '30', '', '', '', '0', 'zhuoyue:student:view', '1', '2016-04-21 15:22:46', '1', '2016-04-21 15:22:46', '', '0');
INSERT INTO `sys_menu` VALUES ('e926e84a91f9490ea9b47d5aaeb75777', 'a3a4101f509b4e209507f2a5b80a28ed', '0,1,7508f1db2f844ce0aca8ddef31a568dc,d3bd03ce8af0451abb8c741a900bcdd6,a3a4101f509b4e209507f2a5b80a28ed,', '查看', '30', '', '', '', '0', 'zhuoyue:course:view', '1', '2016-04-21 15:26:39', '1', '2016-04-21 15:26:39', '', '0');
INSERT INTO `sys_menu` VALUES ('f14d58b1c8ff4e03944c7e2b592c700b', '4f14a968044b4164886994955926c44f', '0,1,7508f1db2f844ce0aca8ddef31a568dc,24095d935b644e729821a37b7c3b457f,4f14a968044b4164886994955926c44f,', '查看', '30', '', '', '', '0', 'zhuoyue:softUpdate:view', '1', '2016-04-21 15:30:09', '1', '2016-04-21 15:30:09', '', '0');
INSERT INTO `sys_menu` VALUES ('f5fdf39825c34de8b5e77c6028365c34', 'a90ef490a95f4300b23ad353f881044c', '0,1,7508f1db2f844ce0aca8ddef31a568dc,24095d935b644e729821a37b7c3b457f,a90ef490a95f4300b23ad353f881044c,', '修改', '60', '', '', '', '0', 'zhuoyue:feedBack:edit', '1', '2016-04-21 15:32:14', '1', '2016-04-21 15:32:14', '', '0');
INSERT INTO `sys_menu` VALUES ('f753163c88fc486d84b8ae2617c88aec', '7508f1db2f844ce0aca8ddef31a568dc', '0,1,7508f1db2f844ce0aca8ddef31a568dc,', '信息统计', '90', '', '', '', '1', '', '1', '2016-04-21 15:08:45', '1', '2016-04-21 15:08:45', '', '1');
INSERT INTO `sys_menu` VALUES ('f91be6a7899646379ede968464fc84cc', 'd3bd03ce8af0451abb8c741a900bcdd6', '0,1,7508f1db2f844ce0aca8ddef31a568dc,d3bd03ce8af0451abb8c741a900bcdd6,', '分类管理', '30', '/zhuoyue/courseDir/courseDirList', '', '', '1', '', '1', '2016-04-21 15:25:21', '1', '2016-04-21 17:10:33', '', '0');
INSERT INTO `sys_menu` VALUES ('fafaa7e52e5b4eb1a7b6293722da60b6', '24095d935b644e729821a37b7c3b457f', '0,1,7508f1db2f844ce0aca8ddef31a568dc,24095d935b644e729821a37b7c3b457f,', '短信管理', '30', '/zhuoyue/smsCode/smsCodeList', '', '', '1', '', '1', '2016-04-21 15:28:32', '1', '2016-04-21 15:28:32', '', '0');

-- ----------------------------
-- Table structure for `sys_office`
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `area_id` varchar(64) NOT NULL COMMENT '归属区域',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) NOT NULL COMMENT '机构类型',
  `grade` char(1) NOT NULL COMMENT '机构等级',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) DEFAULT NULL COMMENT '传真',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) DEFAULT NULL COMMENT '副负责人',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机构表';

-- ----------------------------
-- Records of sys_office
-- ----------------------------
INSERT INTO `sys_office` VALUES ('1', '0', '0,', '深圳卓越教育咨询有限公司', '30', '781db57b43e146c5aa05002c93637c28', '001', '1', '1', '', '', '', '', '', '', '1', '', '', '1', '2015-08-05 16:41:37', '1', '2016-04-21 16:12:44', '', '0');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `enname` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '1', '系统管理员', 'admin', 'assignment', '1', '1', '1', '1', '2013-05-27 08:00:00', '1', '2016-04-21 16:13:25', '', '0');
INSERT INTO `sys_role` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', '1', '销售人员', 'operation', null, '8', '1', '1', '1', '2016-04-21 16:19:15', '1', '2016-04-21 16:19:15', '', '0');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '0a2b003daf084df1b21b08180fe2c419');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '100bc89271ca4ba28fb0e43c42581e74');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '16');
INSERT INTO `sys_role_menu` VALUES ('1', '17');
INSERT INTO `sys_role_menu` VALUES ('1', '18');
INSERT INTO `sys_role_menu` VALUES ('1', '182a72c7c0354120941fa48a04e9c8c4');
INSERT INTO `sys_role_menu` VALUES ('1', '19');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '21');
INSERT INTO `sys_role_menu` VALUES ('1', '22');
INSERT INTO `sys_role_menu` VALUES ('1', '24');
INSERT INTO `sys_role_menu` VALUES ('1', '24095d935b644e729821a37b7c3b457f');
INSERT INTO `sys_role_menu` VALUES ('1', '27');
INSERT INTO `sys_role_menu` VALUES ('1', '28');
INSERT INTO `sys_role_menu` VALUES ('1', '29');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '30');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '48a86f881149404185854c93aaaaec37');
INSERT INTO `sys_role_menu` VALUES ('1', '4f14a968044b4164886994955926c44f');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '56');
INSERT INTO `sys_role_menu` VALUES ('1', '57');
INSERT INTO `sys_role_menu` VALUES ('1', '58');
INSERT INTO `sys_role_menu` VALUES ('1', '59');
INSERT INTO `sys_role_menu` VALUES ('1', '5b6aadb217c94755bc586104ef6d6f7f');
INSERT INTO `sys_role_menu` VALUES ('1', '5f7ab5fd18f441c2a2ba040f2f8f6af1');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '67');
INSERT INTO `sys_role_menu` VALUES ('1', '68');
INSERT INTO `sys_role_menu` VALUES ('1', '6cbeb89ae050449c96cb98ce6b54bce5');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '71');
INSERT INTO `sys_role_menu` VALUES ('1', '72ecee6e31ba455bbec71eb8d24ae905');
INSERT INTO `sys_role_menu` VALUES ('1', '7508f1db2f844ce0aca8ddef31a568dc');
INSERT INTO `sys_role_menu` VALUES ('1', '7df6550030cd45ba9536794ce5b05c47');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '84');
INSERT INTO `sys_role_menu` VALUES ('1', '8b4b02d57ba74233b81a84095cc5f0d3');
INSERT INTO `sys_role_menu` VALUES ('1', '8f388832adf0417ab2abd7e4ad86db6d');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('1', 'a13c2857126444aab408ea7c519f3c60');
INSERT INTO `sys_role_menu` VALUES ('1', 'a21ff036004c4d15b40126506c2cf36b');
INSERT INTO `sys_role_menu` VALUES ('1', 'a3a4101f509b4e209507f2a5b80a28ed');
INSERT INTO `sys_role_menu` VALUES ('1', 'a57b15c831fa43bea9c71a5869169fdd');
INSERT INTO `sys_role_menu` VALUES ('1', 'a90ef490a95f4300b23ad353f881044c');
INSERT INTO `sys_role_menu` VALUES ('1', 'b6387ae2689a451fb4847bbdd9f130c0');
INSERT INTO `sys_role_menu` VALUES ('1', 'b9dd4838092b44488a14be5eefbc64da');
INSERT INTO `sys_role_menu` VALUES ('1', 'c716016103ca46c68412794ba1195fc5');
INSERT INTO `sys_role_menu` VALUES ('1', 'ca9f0268b7c14014832735845c9b7d82');
INSERT INTO `sys_role_menu` VALUES ('1', 'd3bd03ce8af0451abb8c741a900bcdd6');
INSERT INTO `sys_role_menu` VALUES ('1', 'dbaa91b5c13f4d3fb8752434ae0b94d6');
INSERT INTO `sys_role_menu` VALUES ('1', 'e926e84a91f9490ea9b47d5aaeb75777');
INSERT INTO `sys_role_menu` VALUES ('1', 'f14d58b1c8ff4e03944c7e2b592c700b');
INSERT INTO `sys_role_menu` VALUES ('1', 'f5fdf39825c34de8b5e77c6028365c34');
INSERT INTO `sys_role_menu` VALUES ('1', 'f91be6a7899646379ede968464fc84cc');
INSERT INTO `sys_role_menu` VALUES ('1', 'fafaa7e52e5b4eb1a7b6293722da60b6');
INSERT INTO `sys_role_menu` VALUES ('2', '10');
INSERT INTO `sys_role_menu` VALUES ('2', '11');
INSERT INTO `sys_role_menu` VALUES ('2', '12');
INSERT INTO `sys_role_menu` VALUES ('2', '13');
INSERT INTO `sys_role_menu` VALUES ('2', '14');
INSERT INTO `sys_role_menu` VALUES ('2', '15');
INSERT INTO `sys_role_menu` VALUES ('2', '16');
INSERT INTO `sys_role_menu` VALUES ('2', '17');
INSERT INTO `sys_role_menu` VALUES ('2', '18');
INSERT INTO `sys_role_menu` VALUES ('2', '19');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '20');
INSERT INTO `sys_role_menu` VALUES ('2', '21');
INSERT INTO `sys_role_menu` VALUES ('2', '22');
INSERT INTO `sys_role_menu` VALUES ('2', '23');
INSERT INTO `sys_role_menu` VALUES ('2', '24');
INSERT INTO `sys_role_menu` VALUES ('2', '25');
INSERT INTO `sys_role_menu` VALUES ('2', '26');
INSERT INTO `sys_role_menu` VALUES ('2', '27');
INSERT INTO `sys_role_menu` VALUES ('2', '28');
INSERT INTO `sys_role_menu` VALUES ('2', '29');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '30');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '5');
INSERT INTO `sys_role_menu` VALUES ('2', '56');
INSERT INTO `sys_role_menu` VALUES ('2', '57');
INSERT INTO `sys_role_menu` VALUES ('2', '58');
INSERT INTO `sys_role_menu` VALUES ('2', '59');
INSERT INTO `sys_role_menu` VALUES ('2', '6');
INSERT INTO `sys_role_menu` VALUES ('2', '67');
INSERT INTO `sys_role_menu` VALUES ('2', '68');
INSERT INTO `sys_role_menu` VALUES ('2', '7');
INSERT INTO `sys_role_menu` VALUES ('2', '71');
INSERT INTO `sys_role_menu` VALUES ('2', '8');
INSERT INTO `sys_role_menu` VALUES ('2', '84');
INSERT INTO `sys_role_menu` VALUES ('2', '9');
INSERT INTO `sys_role_menu` VALUES ('3', '10');
INSERT INTO `sys_role_menu` VALUES ('3', '11');
INSERT INTO `sys_role_menu` VALUES ('3', '12');
INSERT INTO `sys_role_menu` VALUES ('3', '13');
INSERT INTO `sys_role_menu` VALUES ('3', '14');
INSERT INTO `sys_role_menu` VALUES ('3', '15');
INSERT INTO `sys_role_menu` VALUES ('3', '16');
INSERT INTO `sys_role_menu` VALUES ('3', '17');
INSERT INTO `sys_role_menu` VALUES ('3', '18');
INSERT INTO `sys_role_menu` VALUES ('3', '19');
INSERT INTO `sys_role_menu` VALUES ('3', '2');
INSERT INTO `sys_role_menu` VALUES ('3', '20');
INSERT INTO `sys_role_menu` VALUES ('3', '21');
INSERT INTO `sys_role_menu` VALUES ('3', '22');
INSERT INTO `sys_role_menu` VALUES ('3', '23');
INSERT INTO `sys_role_menu` VALUES ('3', '24');
INSERT INTO `sys_role_menu` VALUES ('3', '25');
INSERT INTO `sys_role_menu` VALUES ('3', '26');
INSERT INTO `sys_role_menu` VALUES ('3', '27');
INSERT INTO `sys_role_menu` VALUES ('3', '28');
INSERT INTO `sys_role_menu` VALUES ('3', '29');
INSERT INTO `sys_role_menu` VALUES ('3', '3');
INSERT INTO `sys_role_menu` VALUES ('3', '30');
INSERT INTO `sys_role_menu` VALUES ('3', '4');
INSERT INTO `sys_role_menu` VALUES ('3', '5');
INSERT INTO `sys_role_menu` VALUES ('3', '56');
INSERT INTO `sys_role_menu` VALUES ('3', '57');
INSERT INTO `sys_role_menu` VALUES ('3', '58');
INSERT INTO `sys_role_menu` VALUES ('3', '59');
INSERT INTO `sys_role_menu` VALUES ('3', '6');
INSERT INTO `sys_role_menu` VALUES ('3', '67');
INSERT INTO `sys_role_menu` VALUES ('3', '68');
INSERT INTO `sys_role_menu` VALUES ('3', '7');
INSERT INTO `sys_role_menu` VALUES ('3', '71');
INSERT INTO `sys_role_menu` VALUES ('3', '8');
INSERT INTO `sys_role_menu` VALUES ('3', '84');
INSERT INTO `sys_role_menu` VALUES ('3', '9');
INSERT INTO `sys_role_menu` VALUES ('6', '27');
INSERT INTO `sys_role_menu` VALUES ('6', '28');
INSERT INTO `sys_role_menu` VALUES ('6', '29');
INSERT INTO `sys_role_menu` VALUES ('6', '30');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', '0a2b003daf084df1b21b08180fe2c419');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', '182a72c7c0354120941fa48a04e9c8c4');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', '24');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', '24095d935b644e729821a37b7c3b457f');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', '48a86f881149404185854c93aaaaec37');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', '4f14a968044b4164886994955926c44f');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', '5b6aadb217c94755bc586104ef6d6f7f');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', '6cbeb89ae050449c96cb98ce6b54bce5');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', '72ecee6e31ba455bbec71eb8d24ae905');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', '7508f1db2f844ce0aca8ddef31a568dc');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', '8b4b02d57ba74233b81a84095cc5f0d3');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', 'a3a4101f509b4e209507f2a5b80a28ed');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', 'a90ef490a95f4300b23ad353f881044c');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', 'b6387ae2689a451fb4847bbdd9f130c0');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', 'b9dd4838092b44488a14be5eefbc64da');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', 'c716016103ca46c68412794ba1195fc5');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', 'ca9f0268b7c14014832735845c9b7d82');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', 'd3bd03ce8af0451abb8c741a900bcdd6');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', 'dbaa91b5c13f4d3fb8752434ae0b94d6');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', 'e926e84a91f9490ea9b47d5aaeb75777');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', 'f14d58b1c8ff4e03944c7e2b592c700b');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', 'f91be6a7899646379ede968464fc84cc');
INSERT INTO `sys_role_menu` VALUES ('b90f662485b841ae9fb7f284a1c0e0b9', 'fafaa7e52e5b4eb1a7b6293722da60b6');

-- ----------------------------
-- Table structure for `sys_role_office`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_office`;
CREATE TABLE `sys_role_office` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-机构';

-- ----------------------------
-- Records of sys_role_office
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `company_id` varchar(64) NOT NULL COMMENT '归属公司',
  `office_id` varchar(64) NOT NULL COMMENT '归属部门',
  `login_name` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', '1', 'admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0001', '系统管理员', 'thinkgem@163.com', '86751', '8675', '', '/fabulous_cms/userfiles/1/images/photo/2015/08/1.png', '0:0:0:0:0:0:0:1', '2016-04-21 17:13:35', '1', '1', '2013-05-27 08:00:00', '1', '2015-09-09 18:14:13', '最高管理员', '0');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `z_banner`
-- ----------------------------
DROP TABLE IF EXISTS `z_banner`;
CREATE TABLE `z_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `img_url` varchar(30) DEFAULT NULL COMMENT '图片地址',
  `skip_url` varchar(50) DEFAULT NULL COMMENT '跳转地址',
  `sort_level` int(5) DEFAULT NULL COMMENT '排序级别',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='横幅广告表';

-- ----------------------------
-- Records of z_banner
-- ----------------------------
INSERT INTO `z_banner` VALUES ('1', 'B1001.jpg', '1', '1', '广告1');
INSERT INTO `z_banner` VALUES ('2', 'B1002.jpg', '2', '2', '广告2');
INSERT INTO `z_banner` VALUES ('3', 'B1003.jpg', '3', '3', '广告3');
INSERT INTO `z_banner` VALUES ('4', 'B1004.jpg', '4', '4', '广告4');
INSERT INTO `z_banner` VALUES ('5', 'B1005.jpg', '5', '5', '广告5');

-- ----------------------------
-- Table structure for `z_course`
-- ----------------------------
DROP TABLE IF EXISTS `z_course`;
CREATE TABLE `z_course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程基本信息主键id',
  `course_code` varchar(32) DEFAULT NULL COMMENT '课程代码',
  `course_name` varchar(100) DEFAULT NULL COMMENT '课程名称',
  `course_info` varchar(100) DEFAULT NULL COMMENT '课程摘要',
  `course_content` varchar(200) DEFAULT NULL COMMENT '课程内容',
  `teacher_id` int(11) NOT NULL COMMENT '讲师id',
  `assist_count` int(15) DEFAULT NULL COMMENT '学员点赞的数量',
  `price` double(10,2) DEFAULT NULL COMMENT '课程对应的价格',
  `share_count` int(10) DEFAULT NULL COMMENT '分享数量',
  `select_flag` int(1) DEFAULT NULL COMMENT '首页版块1的标志：精选好课',
  `thumb_url` varchar(50) DEFAULT NULL COMMENT '缩略图url',
  `special_flag` int(1) DEFAULT NULL COMMENT '首页版块2的标志：精选专题',
  `special_url` varchar(50) DEFAULT NULL COMMENT '首页版块2图片url',
  `fash_flag` int(1) DEFAULT NULL COMMENT '首页版块3的标志：文艺时尚',
  `fash_url` varchar(50) DEFAULT NULL COMMENT '首页版块3图片url',
  `valid` int(10) DEFAULT NULL COMMENT '课程有效期(单位:天)',
  `watch_count` int(10) DEFAULT NULL COMMENT '课程观看的次数',
  `status` int(1) DEFAULT '1' COMMENT '上线状态',
  `hold1` varchar(32) DEFAULT NULL COMMENT '扩展字段1(目前代表课程对应的目录id)',
  `hold2` int(1) DEFAULT '0' COMMENT '扩展字段2(这里代表模块三的第一张图标志)',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='课程基本信息';

-- ----------------------------
-- Records of z_course
-- ----------------------------
INSERT INTO `z_course` VALUES ('1', 'B1001', '中高端客户防流失的三种方法', '要发展先堵漏！中高端客户流失是银行储蓄余额可持续发展的大麻烦，如何才能有效防流失？', '要发展先堵漏！中高端客户流失是银行储蓄余额可持续发展的大麻烦，如何才能有效防流失？', '1', '12', '0.00', '14', '1', 'kc01.png', '0', '', '0', '', '854', '16', '1', '5', '0');
INSERT INTO `z_course` VALUES ('2', 'B1002', '存量客户盘活的提升和管理', '只重外拓不重存量客户盘活提升，“坐在金矿旁边讨饭吃”是常见的网点经营误区！存量客户是网点真正的金矿！', '只重外拓不重存量客户盘活提升，“坐在金矿旁边讨饭吃”是常见的网点经营误区！存量客户是网点真正的金矿！\r\n', '1', '52', '0.01', '14', '1', 'kc02.png', '0', null, '0', null, '100', '37', '1', '5', '0');
INSERT INTO `z_course` VALUES ('3', 'B1003', '客户经营之他行策反', '策反是一种能短期见效的客户经营方法之一，如何做好策反工作呢？\r\n', '策反是一种能短期见效的客户经营方法之一，如何做好策反工作呢？\r\n', '1', '5', '0.00', '18', '1', 'kc01.png', '0', null, '1', 'wy01_top1.jpg', '100', '29', '1', '6', '1');
INSERT INTO `z_course` VALUES ('4', 'B1004', '客户获取的四大模式', '银行网点如何有效获客？什么才是最高效、成本最低、获客质量最高的获客模式？', '银行网点如何有效获客？什么才是最高效、成本最低、获客质量最高的获客模式？', '1', '21', '0.00', '24', '1', 'kc02.png', '0', null, '1', 'wy02.jpg', '100', '125', '1', '6', '0');
INSERT INTO `z_course` VALUES ('5', 'B1005上', '厅堂促销活动如何组织', '一次成功的厅堂促销活动，可以快速有效地引爆网点产能。但是，往往存在“热闹有余而产能不足”的普遍现象。那么，如何举办一次有效的厅堂促销活动呢？', '一次成功的厅堂促销活动，可以快速有效地引爆网点产能。但是，往往存在“热闹有余而产能不足”的普遍现象。那么，如何举办一次有效的厅堂促销活动呢？', '1', '33', '0.00', '14', '0', 'kc01.png', '1', 'zt01_top1.jpg', '0', null, '100', '18', '1', '6', '0');
INSERT INTO `z_course` VALUES ('6', 'B1005下', '存款抓鸡蛋活动，抓出余额暴涨', '存款抓鸡蛋活动看似很平常，但其实只要举办的好一定能够有效拉动网点人气，促进存款余额发展。', '存款抓鸡蛋活动看似很平常，但其实只要举办的好一定能够有效拉动网点人气，促进存款余额发展。', '1', '15', '0.00', '54', '0', 'kc02.png', '1', 'zt02_top2.jpg', '0', null, '100', '47', '1', '6', '0');
INSERT INTO `z_course` VALUES ('7', 'B1006', '引爆产能：网点沙龙活动组织五大关键', '网点举办沙龙活动常常是吃力不讨好，费了力花了钱却没收到明显的效果，如何让沙龙成为生产力？', '网点举办沙龙活动常常是吃力不讨好，费了力花了钱却没收到明显的效果，如何让沙龙成为生产力？', '1', '20', '0.00', '19', '0', 'kc01.png', '1', 'zt03_top3.jpg', '0', null, '100', '32', '1', '7', '0');
INSERT INTO `z_course` VALUES ('8', 'B1007', '玩转厅堂：厅堂营销\"六\"看管理', '网点要管的事太多？营销管理怎样去繁就简？如何及时发现厅堂营销短板？抓牢六个管理关键，逐一落实到位，必能有效引爆网点产能。', '网点要管的事太多？营销管理怎样去繁就简？如何及时发现厅堂营销短板？抓牢六个管理关键，逐一落实到位，必能有效引爆网点产能。', '1', '43', '0.00', '8', '0', 'kc02.png', '0', null, '1', 'wy03.jpg', '100', '10', '1', '5', '0');
INSERT INTO `z_course` VALUES ('9', 'B1008', '开门红“爆”点营销攻略 - 精华版', '开门红能占全年业绩的40%以上，是每家银行必打的战役。此战役有三大特点：任务重、周期短、压力大。开门红，，如何短期引爆，达致“开门红，全年红”呢？', '开门红能占全年业绩的40%以上，是每家银行必打的战役。此战役有三大特点：任务重、周期短、压力大。开门红，，如何短期引爆，达致“开门红，全年红”呢？', '1', '17', '0.00', '25', '0', 'kc01.png', '0', null, '1', 'wy04.jpg', '100', '8', '1', '5', '0');
INSERT INTO `z_course` VALUES ('10', 'B1009', '开门红营销：分行如何组织推动', '管理行如何组织推动各网点开展“开门红营销”？ ', '管理行如何组织推动各网点开展“开门红营销”？ ', '1', '4', '0.00', '48', '0', 'kc02.png', '0', null, '1', 'wy05.jpg', '100', '59', '1', '8', '0');
INSERT INTO `z_course` VALUES ('11', 'B10010', '开门红营销保卫战攻略之以攻为守', '开门红前半段抓新增余额，后半段在保卫好成果的前提下继续调整节奏守中带攻、攻守兼备地打好开门红保卫战？', '开门红前半段抓新增余额，后半段在保卫好成果的前提下继续调整节奏守中带攻、攻守兼备地打好开门红保卫战？', '2', '8', '0.00', '41', '1', 'kc01.png', '0', null, '0', null, '150', '46', '1', '8', null);

-- ----------------------------
-- Table structure for `z_course_collection`
-- ----------------------------
DROP TABLE IF EXISTS `z_course_collection`;
CREATE TABLE `z_course_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int(11) NOT NULL COMMENT '学员id',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  `collection_time` datetime NOT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='课程收藏表';

-- ----------------------------
-- Records of z_course_collection
-- ----------------------------
INSERT INTO `z_course_collection` VALUES ('1', '6', '3', '2016-04-21 17:00:19');

-- ----------------------------
-- Table structure for `z_course_dir`
-- ----------------------------
DROP TABLE IF EXISTS `z_course_dir`;
CREATE TABLE `z_course_dir` (
  `dir_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '目录主键',
  `dir_name` varchar(50) DEFAULT NULL COMMENT '目录名称',
  `dir_code` varchar(20) DEFAULT NULL COMMENT '目录编号(如果是一级目录编号为空 二级编号对应的一级编号id)',
  `course_level` int(1) DEFAULT NULL COMMENT '目录级别(1代表一级,2代表二级)',
  `img_url` varchar(50) DEFAULT NULL COMMENT '图片路径',
  `sort` varchar(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`dir_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='课程目录';

-- ----------------------------
-- Records of z_course_dir
-- ----------------------------
INSERT INTO `z_course_dir` VALUES ('1', '管理类', null, '1', 'fl01.png', '100');
INSERT INTO `z_course_dir` VALUES ('2', '能力类', null, '1', 'fl02.png', '200');
INSERT INTO `z_course_dir` VALUES ('3', '岗位类', null, '1', 'fl03.png', '300');
INSERT INTO `z_course_dir` VALUES ('4', '金融创新类', null, '1', 'fl04.png', '400');
INSERT INTO `z_course_dir` VALUES ('5', '经济', '1', '2', null, '110');
INSERT INTO `z_course_dir` VALUES ('6', '法律', '1', '2', null, '120');
INSERT INTO `z_course_dir` VALUES ('7', '历史', '1', '2', null, '130');
INSERT INTO `z_course_dir` VALUES ('8', '其它', '1', '2', null, '140');

-- ----------------------------
-- Table structure for `z_course_like`
-- ----------------------------
DROP TABLE IF EXISTS `z_course_like`;
CREATE TABLE `z_course_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int(11) NOT NULL COMMENT '学员id',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  `like_time` datetime NOT NULL COMMENT '点赞时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学员对课程的点赞数';

-- ----------------------------
-- Records of z_course_like
-- ----------------------------

-- ----------------------------
-- Table structure for `z_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `z_feedback`;
CREATE TABLE `z_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int(11) NOT NULL COMMENT '反馈人id',
  `context` varchar(200) DEFAULT NULL COMMENT '反馈内容',
  `feedback_time` datetime NOT NULL COMMENT '反馈时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='有奖反馈表';

-- ----------------------------
-- Records of z_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `z_order`
-- ----------------------------
DROP TABLE IF EXISTS `z_order`;
CREATE TABLE `z_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_no` varchar(13) NOT NULL COMMENT '订单号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  `student_id` int(11) NOT NULL COMMENT '学员id',
  `pay_flag` int(1) NOT NULL COMMENT '是否付款',
  `payway_id` int(11) NOT NULL COMMENT '支付方式id',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `expire_time` datetime NOT NULL COMMENT '到期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of z_order
-- ----------------------------
INSERT INTO `z_order` VALUES ('2', '1461226260038', '2016-04-21 16:11:00', '2', '6', '0', '1', null, '2016-04-22 06:05:25');
INSERT INTO `z_order` VALUES ('3', '1461226266849', '2016-04-21 16:11:06', '2', '6', '0', '2', null, '2016-04-22 06:05:32');
INSERT INTO `z_order` VALUES ('4', '1461226277955', '2016-04-21 16:11:17', '2', '6', '0', '2', null, '2016-04-22 06:05:43');
INSERT INTO `z_order` VALUES ('5', '1461226286573', '2016-04-21 16:11:26', '2', '6', '0', '2', null, '2016-04-22 06:05:52');
INSERT INTO `z_order` VALUES ('6', '1461226593309', '2016-04-21 16:16:33', '2', '6', '0', '2', null, '2016-04-22 06:10:59');
INSERT INTO `z_order` VALUES ('7', '1461228757672', '2016-04-21 16:52:37', '2', '6', '0', '2', null, '2016-04-22 06:47:03');
INSERT INTO `z_order` VALUES ('8', '1461228854786', '2016-04-21 16:54:14', '2', '6', '0', '1', null, '2016-04-22 06:48:40');
INSERT INTO `z_order` VALUES ('9', '1461228871239', '2016-04-21 16:54:31', '2', '6', '0', '2', null, '2016-04-22 06:48:57');
INSERT INTO `z_order` VALUES ('10', '1461229136311', '2016-04-21 16:58:56', '2', '6', '0', '2', null, '2016-04-22 06:53:22');
INSERT INTO `z_order` VALUES ('11', '1461229820973', '2016-04-21 17:10:20', '2', '6', '0', '2', null, '2016-04-22 07:04:46');
INSERT INTO `z_order` VALUES ('12', '1461230353880', '2016-04-21 17:19:13', '2', '6', '0', '1', null, '2016-04-22 07:13:39');
INSERT INTO `z_order` VALUES ('13', '1461230722801', '2016-04-21 17:25:22', '2', '6', '0', '2', null, '2016-04-22 07:19:48');
INSERT INTO `z_order` VALUES ('14', '1461231116806', '2016-04-21 17:31:56', '2', '6', '0', '2', null, '2016-04-22 07:26:22');
INSERT INTO `z_order` VALUES ('15', '1461231580502', '2016-04-21 17:39:40', '2', '6', '0', '2', null, '2016-04-22 07:34:06');
INSERT INTO `z_order` VALUES ('16', '1461231598839', '2016-04-21 17:39:58', '2', '6', '0', '2', null, '2016-04-22 07:34:24');
INSERT INTO `z_order` VALUES ('17', '1461231830190', '2016-04-21 17:43:50', '2', '6', '0', '2', null, '2016-04-22 07:38:16');
INSERT INTO `z_order` VALUES ('18', '1461231919393', '2016-04-21 17:45:19', '2', '6', '0', '2', null, '2016-04-22 07:39:45');
INSERT INTO `z_order` VALUES ('19', '1461231977295', '2016-04-21 17:46:17', '2', '6', '0', '1', null, '2016-04-22 07:40:43');
INSERT INTO `z_order` VALUES ('20', '1461231999782', '2016-04-21 17:46:39', '2', '6', '0', '2', null, '2016-04-22 07:41:05');
INSERT INTO `z_order` VALUES ('21', '1461232185304', '2016-04-21 17:49:45', '2', '6', '0', '2', null, '2016-04-22 07:44:11');

-- ----------------------------
-- Table structure for `z_pay_way`
-- ----------------------------
DROP TABLE IF EXISTS `z_pay_way`;
CREATE TABLE `z_pay_way` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `payway_code` varchar(2) NOT NULL COMMENT '支付方式编码',
  `payway_name` varchar(32) NOT NULL COMMENT '支付方式名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='支付方式';

-- ----------------------------
-- Records of z_pay_way
-- ----------------------------
INSERT INTO `z_pay_way` VALUES ('1', '1', '微信支付');
INSERT INTO `z_pay_way` VALUES ('2', '2', '支付宝支付');

-- ----------------------------
-- Table structure for `z_question_comment`
-- ----------------------------
DROP TABLE IF EXISTS `z_question_comment`;
CREATE TABLE `z_question_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `context` varchar(200) DEFAULT NULL COMMENT '评论的内容',
  `sup_no` int(10) DEFAULT NULL COMMENT '上级编号',
  `create_date` datetime DEFAULT NULL COMMENT '回复时间',
  `reply_id` int(11) NOT NULL COMMENT '回复人id',
  `by_reply_id` int(11) NOT NULL COMMENT '被回复人对应id',
  `hold1` varchar(30) DEFAULT NULL COMMENT '备用字段',
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='回复表';

-- ----------------------------
-- Records of z_question_comment
-- ----------------------------
INSERT INTO `z_question_comment` VALUES ('1', '通过计算得出的答案是1265。', null, '2016-03-14 16:57:47', '1', '1', null, '1');
INSERT INTO `z_question_comment` VALUES ('2', '我计算出来的答案是1258。', '1', '2016-03-16 14:20:10', '1', '1', null, '1');
INSERT INTO `z_question_comment` VALUES ('3', '您再仔细算一下吧，这是官方答案。', '2', '2016-03-17 14:23:44', '1', '1', null, '1');
INSERT INTO `z_question_comment` VALUES ('4', '预计是在下个月吧。', null, '2016-03-16 15:11:30', '1', '1', null, '2');
INSERT INTO `z_question_comment` VALUES ('5', '能不能快一点，我敢时间？', '4', '2016-03-17 15:29:23', '1', '1', null, '2');

-- ----------------------------
-- Table structure for `z_register_code`
-- ----------------------------
DROP TABLE IF EXISTS `z_register_code`;
CREATE TABLE `z_register_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，自增',
  `mobile` char(11) NOT NULL COMMENT '接收短信的手机号码',
  `code` char(6) DEFAULT NULL,
  `creationdate` bigint(20) NOT NULL DEFAULT '0' COMMENT '保存的时间戳',
  `error_code` char(6) DEFAULT NULL COMMENT '短信服务器返回的错误码',
  `reason` varchar(50) DEFAULT NULL COMMENT '返回的说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='验证码表';

-- ----------------------------
-- Records of z_register_code
-- ----------------------------
INSERT INTO `z_register_code` VALUES ('1', '15801303009', '325565', '1457679675626', '0', '操作成功');
INSERT INTO `z_register_code` VALUES ('2', '15801303008', '617976', '1457679702978', '0', '操作成功');
INSERT INTO `z_register_code` VALUES ('3', '15801303008', '043587', '1457679843570', '0', '操作成功');
INSERT INTO `z_register_code` VALUES ('4', '11801303008', '125484', '1457679853201', '205401', '错误的手机号码');
INSERT INTO `z_register_code` VALUES ('5', '11801303008', '161921', '1457680095820', '205401', '错误的手机号码');
INSERT INTO `z_register_code` VALUES ('6', '11801303008', '379596', '1457680139453', '205401', '错误的手机号码');
INSERT INTO `z_register_code` VALUES ('7', '11801303009', '651384', '1457680192968', '205401', '错误的手机号码');
INSERT INTO `z_register_code` VALUES ('8', '15801303009', '892024', '1457680200586', '0', '操作成功');
INSERT INTO `z_register_code` VALUES ('9', '18390923049', '016470', '1457935335347', '0', '操作成功');
INSERT INTO `z_register_code` VALUES ('10', '18823675236', '095928', '1458005190869', '0', '操作成功');
INSERT INTO `z_register_code` VALUES ('11', '18390923049', '394988', '1458005440752', '0', '操作成功');
INSERT INTO `z_register_code` VALUES ('12', '18823675236', '230633', '1458005638139', '0', '操作成功');
INSERT INTO `z_register_code` VALUES ('13', '18390923049', '785708', '1458022879261', '0', '操作成功');
INSERT INTO `z_register_code` VALUES ('14', '18390923049', '711074', '1458024388270', '0', '操作成功');
INSERT INTO `z_register_code` VALUES ('15', '18390923049', '402553', '1458025017641', '0', '操作成功');
INSERT INTO `z_register_code` VALUES ('16', '17769288059', '688070', '1458096306095', '0', '操作成功');
INSERT INTO `z_register_code` VALUES ('17', '18390923049', '347128', '1461221243590', '0', '操作成功');

-- ----------------------------
-- Table structure for `z_score`
-- ----------------------------
DROP TABLE IF EXISTS `z_score`;
CREATE TABLE `z_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键  自增',
  `s_type` int(1) DEFAULT NULL COMMENT '0:差评  1好评  2中评',
  `s_level` int(1) DEFAULT NULL COMMENT '星级级别',
  `score_time` datetime DEFAULT NULL COMMENT '打分时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评分表';

-- ----------------------------
-- Records of z_score
-- ----------------------------

-- ----------------------------
-- Table structure for `z_search_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `z_search_keywords`;
CREATE TABLE `z_search_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `keyword_name` varchar(20) DEFAULT NULL COMMENT '关键字名称',
  `search_count` int(5) DEFAULT NULL COMMENT '搜索次数',
  `choose_flag` int(1) DEFAULT '0' COMMENT '是否推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='搜索关键字';

-- ----------------------------
-- Records of z_search_keywords
-- ----------------------------
INSERT INTO `z_search_keywords` VALUES ('1', 'java', '23', '1');
INSERT INTO `z_search_keywords` VALUES ('2', 'ios', '15', '1');
INSERT INTO `z_search_keywords` VALUES ('3', '安卓', '12', '1');
INSERT INTO `z_search_keywords` VALUES ('4', 'UI', '10', '1');
INSERT INTO `z_search_keywords` VALUES ('5', 'web', '8', '1');
INSERT INTO `z_search_keywords` VALUES ('6', 'php', '7', '1');
INSERT INTO `z_search_keywords` VALUES ('7', '.net', '5', '1');
INSERT INTO `z_search_keywords` VALUES ('8', 'C#', '3', '1');
INSERT INTO `z_search_keywords` VALUES ('9', 'js', '7', '1');
INSERT INTO `z_search_keywords` VALUES ('10', 'jsp', '5', '1');
INSERT INTO `z_search_keywords` VALUES ('12', '美工', '3', '0');
INSERT INTO `z_search_keywords` VALUES ('13', '课程', '4', '0');

-- ----------------------------
-- Table structure for `z_soft_update`
-- ----------------------------
DROP TABLE IF EXISTS `z_soft_update`;
CREATE TABLE `z_soft_update` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增',
  `versionCode` int(10) NOT NULL COMMENT '版本号，每次升级，依次递增',
  `versionName` varchar(100) NOT NULL COMMENT '版本号名称,对外',
  `softName` varchar(255) DEFAULT NULL COMMENT '安装包名称',
  `updateDescription` varchar(500) NOT NULL COMMENT '软件描述',
  `twocodeUrl` varchar(500) DEFAULT NULL COMMENT '二维码地址',
  `downloarUrl` varchar(255) DEFAULT NULL COMMENT '下载连接地址',
  `creationDate` bigint(20) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_soft_update
-- ----------------------------
INSERT INTO `z_soft_update` VALUES ('1', '4', 'v4', '卓越教育', '初始版本', 'http://....', 'http://d', '154');

-- ----------------------------
-- Table structure for `z_student`
-- ----------------------------
DROP TABLE IF EXISTS `z_student`;
CREATE TABLE `z_student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学员基本信息主键id',
  `phone` varchar(11) NOT NULL COMMENT '登录名(手机号)',
  `password` varchar(32) NOT NULL COMMENT '登录密码',
  `nick_name` varchar(20) DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(200) DEFAULT NULL COMMENT '头像所在的地址',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `gender` int(1) DEFAULT NULL COMMENT '性别， 枚举值包括 男（0）女（1）',
  `signature` varchar(200) DEFAULT '欢迎加入卓越！' COMMENT '个性签名',
  `create_id` int(11) DEFAULT NULL COMMENT '创建人id',
  `company` varchar(50) DEFAULT NULL COMMENT '学员所在公司',
  `job` varchar(50) DEFAULT NULL COMMENT '学员职位',
  `email` varchar(32) DEFAULT NULL COMMENT '电子邮箱',
  `group_id` int(11) DEFAULT '1' COMMENT '分组id',
  `modify_time` datetime DEFAULT NULL COMMENT '最近一次修改时间',
  `study_length` varchar(30) DEFAULT '0' COMMENT '学员学习时长',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `status` int(1) DEFAULT NULL COMMENT '学员账号状态:1表示开启 ，0表示禁用',
  `open_id` varchar(32) DEFAULT NULL COMMENT '第三方登录id',
  `device_code` varchar(32) DEFAULT NULL COMMENT '第三方设备号',
  `push_flag` int(1) DEFAULT NULL COMMENT '是否推送消息',
  `extend` varchar(32) DEFAULT NULL COMMENT '备用扩展',
  `extend1` varchar(32) DEFAULT NULL COMMENT '备用扩展',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='学员基本信息';

-- ----------------------------
-- Records of z_student
-- ----------------------------
INSERT INTO `z_student` VALUES ('1', '15801303009', '202cb962ac59075b964b07152d234b70', '张卓越', 'stu01.jpg', '2016-03-08', '1', '个性签名', '1', '11', '11', '840@163.com', '1', '2016-03-12 09:35:25', '14', '2016-03-01 09:35:38', '1', '1', '125', '1', null, null);
INSERT INTO `z_student` VALUES ('3', '18823675236', '96e79218965eb72c92a549dd5a330112', 'zhuoyue59', 'stu01.jpg', null, null, null, null, null, null, null, '1', null, '5', '2016-03-15 09:34:19', '1', null, null, null, null, null);
INSERT INTO `z_student` VALUES ('6', '18390923049', '202cb962ac59075b964b07152d234b70', 'zhuoyue31', 'default.jpg', null, null, '欢迎加入卓越！', null, null, null, null, '1', null, '0', '2016-03-15 14:57:21', '1', null, null, null, null, null);
INSERT INTO `z_student` VALUES ('7', '17769288059', '569805c1fe3a8a3458f5fed3d1b97731', 'zhuoyue43', 'default.jpg', null, null, '欢迎加入卓越！', null, null, null, null, '2', null, '0', '2016-03-16 10:45:25', '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for `z_student_course`
-- ----------------------------
DROP TABLE IF EXISTS `z_student_course`;
CREATE TABLE `z_student_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int(11) NOT NULL COMMENT '学员id',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  `source_flag` int(1) NOT NULL COMMENT '课程来源(0代表收费,1代表免费)',
  `create_time` datetime DEFAULT NULL COMMENT '我的课程创建时间',
  `course_schedule` varchar(50) DEFAULT NULL COMMENT '进度（集数的字符串<1,2,3....>）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='学员课程中间表(我的课程)';

-- ----------------------------
-- Records of z_student_course
-- ----------------------------

-- ----------------------------
-- Table structure for `z_stu_question`
-- ----------------------------
DROP TABLE IF EXISTS `z_stu_question`;
CREATE TABLE `z_stu_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `context` longtext COMMENT '问题的具体内容',
  `view_count` varchar(10) DEFAULT '0' COMMENT '该问题的浏览数量',
  `student_id` int(11) NOT NULL COMMENT '提问人id',
  `teacher_id` int(11) NOT NULL COMMENT '回答人id',
  `course_id` int(11) NOT NULL COMMENT '针对的课程id',
  `create_time` datetime NOT NULL COMMENT '该问题的创建时间',
  `hold1` varchar(20) DEFAULT NULL COMMENT '预留字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='存放学员提出的相关课程问题';

-- ----------------------------
-- Records of z_stu_question
-- ----------------------------
INSERT INTO `z_stu_question` VALUES ('1', '请问老师这个题目的答案是什么？', '12', '1', '1', '1', '2016-03-09 17:02:33', null);
INSERT INTO `z_stu_question` VALUES ('2', '这门课程什么时候更新完?', '0', '1', '1', '1', '2016-03-17 14:59:17', null);

-- ----------------------------
-- Table structure for `z_sys_msg`
-- ----------------------------
DROP TABLE IF EXISTS `z_sys_msg`;
CREATE TABLE `z_sys_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `context` varchar(200) DEFAULT NULL COMMENT '消息内容',
  `receive_id` int(11) NOT NULL COMMENT '接收人',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `see_flag` int(1) DEFAULT NULL COMMENT '是否查看(0未读,1已读,2删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统消息';

-- ----------------------------
-- Records of z_sys_msg
-- ----------------------------

-- ----------------------------
-- Table structure for `z_sys_param`
-- ----------------------------
DROP TABLE IF EXISTS `z_sys_param`;
CREATE TABLE `z_sys_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `para_key` varchar(20) DEFAULT NULL COMMENT '标志（xxx代表奖励规则  xxx代表系统头像）',
  `description` varchar(50) DEFAULT NULL COMMENT '参数的说明',
  `para_value` varchar(50) DEFAULT NULL COMMENT '参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统参数表（奖励原则 系统头像 首页标题相关）';

-- ----------------------------
-- Records of z_sys_param
-- ----------------------------
INSERT INTO `z_sys_param` VALUES ('1', 'frame1', '首页版块1', '精选好课');
INSERT INTO `z_sys_param` VALUES ('2', 'frame2', '首页版块2', '精选专题');
INSERT INTO `z_sys_param` VALUES ('3', 'frame3', '首页版块3', '文艺时尚');

-- ----------------------------
-- Table structure for `z_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `z_teacher`;
CREATE TABLE `z_teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '讲师基本信息主键id',
  `teacher_code` varchar(32) NOT NULL COMMENT '讲师编号',
  `nick_name` varchar(30) DEFAULT NULL COMMENT '讲师昵称',
  `password` varchar(32) NOT NULL COMMENT '讲师登录密码',
  `img_url` varchar(50) DEFAULT NULL COMMENT '头像地址',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `gender` int(1) DEFAULT NULL COMMENT '性别:男（0）女（1）',
  `user_type` varchar(32) DEFAULT '1' COMMENT '用户类型',
  `email` varchar(32) DEFAULT NULL COMMENT '电子邮箱',
  `status` int(1) DEFAULT NULL COMMENT '讲师账号状态',
  `assist_count` int(15) DEFAULT NULL COMMENT '学员点赞的数量',
  `pv_count` int(10) DEFAULT NULL COMMENT '该讲师的浏览量',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT NULL COMMENT '创建人id',
  `modify_time` datetime DEFAULT NULL COMMENT '最近一次修改时间',
  `teacher_tag` varchar(50) DEFAULT NULL COMMENT '讲师对应的热门标签',
  `teacher_description` varchar(100) DEFAULT NULL COMMENT '描述',
  `name` varchar(50) DEFAULT NULL COMMENT '讲师的称号',
  `extend` varchar(32) DEFAULT NULL COMMENT '备用扩展',
  `extend1` varchar(32) DEFAULT NULL COMMENT '备用扩展',
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='讲师、导师基本信息';

-- ----------------------------
-- Records of z_teacher
-- ----------------------------
INSERT INTO `z_teacher` VALUES ('1', 'js01', '卞维林', '202cb962ac59075b964b07152d234b70', '/tea01.png', '2016-03-07', '1', '1', '74@163.com', '1', '15', '88', '2016-03-13 15:51:58', '1', '2016-04-21 15:53:54', 'java,安卓，ios', '史上最火老师', '卞维林', null, null);
INSERT INTO `z_teacher` VALUES ('2', 'js02', '张晓茹', '202cb962ac59075b964b07152d234b70', '/tea02.png', '2016-03-16', '2', '1', '44@163.com', '1', '19', '28', '2016-03-17 17:31:58', '1', '2016-03-17 17:32:05', '市场营销，网络营销', '独家管理妙招激发晨会战斗力', '张晓茹', null, null);

-- ----------------------------
-- Table structure for `z_teacher_collection`
-- ----------------------------
DROP TABLE IF EXISTS `z_teacher_collection`;
CREATE TABLE `z_teacher_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int(11) NOT NULL COMMENT '学员id',
  `teacher_id` int(11) NOT NULL COMMENT '讲师id',
  `collection_time` datetime NOT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='讲师收藏表';

-- ----------------------------
-- Records of z_teacher_collection
-- ----------------------------

-- ----------------------------
-- Table structure for `z_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `z_user_group`;
CREATE TABLE `z_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `group_name` varchar(50) DEFAULT NULL COMMENT '群组名称',
  `group_content` varchar(200) DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户群组表';

-- ----------------------------
-- Records of z_user_group
-- ----------------------------
INSERT INTO `z_user_group` VALUES ('1', '未分组', '未分组的学员');
INSERT INTO `z_user_group` VALUES ('2', '计算机', '计算机软件相关的学员');

-- ----------------------------
-- Table structure for `z_video`
-- ----------------------------
DROP TABLE IF EXISTS `z_video`;
CREATE TABLE `z_video` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '视频主键',
  `bucket_name` varchar(50) DEFAULT NULL COMMENT '百度backet名称',
  `video_name` varchar(50) DEFAULT NULL COMMENT '视频名称',
  `total_time` varchar(10) DEFAULT NULL COMMENT '该视频总共时长',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  `video_url` varchar(500) DEFAULT NULL COMMENT '视频路径',
  `free_url` varchar(500) DEFAULT NULL COMMENT '免费播放地址',
  `free_time` varchar(10) DEFAULT NULL COMMENT '免费播放时间',
  `upload_time` datetime DEFAULT NULL COMMENT '视频上传时间',
  `hold1` varchar(32) DEFAULT NULL COMMENT '预留字段1',
  `hold2` varchar(32) DEFAULT NULL COMMENT '预留字段2',
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='视频';

-- ----------------------------
-- ----------------------------
-- Table structure for `z_video_playtime`
-- ----------------------------
DROP TABLE IF EXISTS `z_video_playtime`;
CREATE TABLE `z_video_playtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int(11) NOT NULL COMMENT '学员id',
  `video_id` varchar(20) NOT NULL COMMENT '视频id',
  `palyed_time` varchar(10) DEFAULT NULL COMMENT '记录已经播放到的时间',
  `last_play_time` datetime DEFAULT NULL COMMENT '学员上次播放的时间',
  `type` varchar(32) DEFAULT NULL COMMENT '观看手机类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录学员播放视频的时间';

-- ----------------------------
-- Records of z_video_playtime
-- ----------------------------
