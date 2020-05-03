/*
Navicat MySQL Data Transfer

Source Server         : nms
Source Server Version : 50546
Source Host           : localhost:3306
Source Database       : datang

Target Server Type    : MYSQL
Target Server Version : 50546
File Encoding         : 65001

Date: 2019-03-26 19:02:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `boss` int(255) DEFAULT NULL,
  `sex` varchar(5) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `job` varchar(20) NOT NULL,
  `entrytime` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT '1' COMMENT '用户类型(1 : 管理员,2 : 主管,3 : 员工)',
  `education` varchar(20) NOT NULL,
  `speciality` varchar(20) NOT NULL,
  `experience` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'li', '21232F297A57A5A743894A0E4A801FC3', '李xx', null, '1', '1974-06-12', '项目经理', '2019-03-01', '2', '硕士研究生', '全栈工程师', '10年工作经验');
INSERT INTO `employee` VALUES ('2', 'wang', '21232F297A57A5A743894A0E4A801FC3', '王xx', null, '1', '1990-03-08', '项目经理', '2019-03-20', '2', '本科', '前端工程师', '1年工作经验');
INSERT INTO `employee` VALUES ('3', 'wu', '21232F297A57A5A743894A0E4A801FC3', '吴xx', '1', '2', '1995-03-20', '管理员', '2019-03-20', '1', '本科', '数据库管理', '1年工作经验');
INSERT INTO `employee` VALUES ('4', 'qian', '21232F297A57A5A743894A0E4A801FC3', '钱xx', '2', '1', '1995-01-23', '员工', '2019-03-20', '3', '本科', '前端工程师', '1年工作经验');
INSERT INTO `employee` VALUES ('5', 'sun', '21232F297A57A5A743894A0E4A801FC3', '孙xx', '1', '2', '1992-03-27', '员工', '2019-03-20', '3', '本科', '前端工程师', '1年工作经验');
INSERT INTO `employee` VALUES ('6', 'zhou', '21232F297A57A5A743894A0E4A801FC3', '周xx', '1', '2', '1996-01-23', '员工', '2019-03-20', '3', '硕士研究生', '前端工程师', '1年工作经验');
INSERT INTO `employee` VALUES ('7', 'feng', '21232F297A57A5A743894A0E4A801FC3', '冯xx', '1', '1', '1996-01-23', '员工', '2019-03-20', '3', '本科', '前端工程师', '1年工作经验');
INSERT INTO `employee` VALUES ('8', 'chen', '21232F297A57A5A743894A0E4A801FC3', '陈xx', '2', '2', '1996-01-23', '员工', '2019-03-20', '3', '硕士研究生', '前端工程师', '1年工作经验');
INSERT INTO `employee` VALUES ('9', 'chu', '21232F297A57A5A743894A0E4A801FC3', '楚xx', '1', '2', '1996-01-23', '员工', '2019-03-20', '3', '本科', '前端工程师', '1年工作经验');
INSERT INTO `employee` VALUES ('10', 'han', '21232F297A57A5A743894A0E4A801FC3', '韩xx', '2', '2', '1996-01-23', '员工', '2019-03-20', '3', '本科', '前端工程师', '1年工作经验');
INSERT INTO `employee` VALUES ('11', 'yang', '21232F297A57A5A743894A0E4A801FC3', '杨xx', '1', '1', '1996-01-23', '员工', '2019-03-20', '3', '硕士研究生', '前端工程师', '1年工作经验');
INSERT INTO `employee` VALUES ('12', 'bai', '21232F297A57A5A743894A0E4A801FC3', '白xx', '2', '1', '1996-01-23', '员工', '2019-03-20', '3', '本科', '前端工程师', '1年工作经验');
INSERT INTO `employee` VALUES ('15', 'wang', 'admin', '王xx', null, '1', '1998-07-23', '员工', '2019-03-20', '3', '本科', '前端工程师', 'qwe');

-- ----------------------------
-- Table structure for employee_备份
-- ----------------------------
DROP TABLE IF EXISTS `employee_备份`;
CREATE TABLE `employee_备份` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `boss` int(255) DEFAULT NULL,
  `sex` varchar(5) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `job` varchar(20) NOT NULL,
  `entrytime` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT '1' COMMENT '用户类型(1 : 管理员,2 : 主管,3 : 员工)',
  `education` varchar(20) NOT NULL,
  `speciality` varchar(20) NOT NULL,
  `experience` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee_备份
-- ----------------------------
INSERT INTO `employee_备份` VALUES ('1', 'li', '21232F297A57A5A743894A0E4A801FC3', '李xx', null, '1', '1974-06-12', '项目经理', '2019-03-01', '2', '硕士研究生', '全栈工程师', '10年工作经验');
INSERT INTO `employee_备份` VALUES ('2', 'wang', '21232F297A57A5A743894A0E4A801FC3', '王xx', '1', '1', '1990-03-08', '员工', '2019-03-20', '3', '本科', '前端工程师', '1年工作经验');
INSERT INTO `employee_备份` VALUES ('3', 'wu', '21232F297A57A5A743894A0E4A801FC3', '吴xx', '1', '2', '1995-03-20', '管理员', '2019-03-20', '1', '本科', '数据库管理', '1年工作经验');
INSERT INTO `employee_备份` VALUES ('4', 'asd', 'asd', 'asd', null, '1', '123', '123', '123', '2', '123', '123', '123');

-- ----------------------------
-- Table structure for plan
-- ----------------------------
DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan` (
  `planid` int(11) NOT NULL AUTO_INCREMENT,
  `planname` varchar(20) NOT NULL,
  `planinfo` varchar(255) NOT NULL,
  `begintime` varchar(255) NOT NULL,
  `endtime` varchar(255) NOT NULL,
  `taskid` int(11) NOT NULL,
  `isfeedback` varchar(20) DEFAULT '未反馈',
  `state` varchar(20) NOT NULL DEFAULT '未完成',
  `feedback` varchar(255) DEFAULT NULL,
  `creater` int(255) DEFAULT NULL,
  PRIMARY KEY (`planid`),
  KEY `r_taskid_taskid` (`taskid`),
  KEY `r_creater_userid` (`creater`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plan
-- ----------------------------
INSERT INTO `plan` VALUES ('1', '增', '人员增', '2019-03-26', '2019-03-27', '1', '已反馈', '已完成', '1', '1');
INSERT INTO `plan` VALUES ('2', '删', '人员删', '2019-03-27', '2019-03-28', '1', '已反馈', '已完成', '1', '1');
INSERT INTO `plan` VALUES ('3', '改', '人员改', '2019-03-28', '2019-03-29', '1', '未反馈', '未完成', '1', '1');
INSERT INTO `plan` VALUES ('4', '查', '人员查', '2019-03-29', '2019-03-30', '1', '未反馈', '未完成', '2', '1');
INSERT INTO `plan` VALUES ('5', '测试', '测试整合', '2019-03-30', '2019-03-31', '1', '未反馈', '未完成', '2', '1');
INSERT INTO `plan` VALUES ('6', '增', '任务增', '2019-02-26', '2019-02-27', '2', '已反馈', '已完成', '1', '2');
INSERT INTO `plan` VALUES ('7', '删', '任务删', '2019-02-26', '2019-02-27', '2', '已反馈', '已完成', '2', '2');
INSERT INTO `plan` VALUES ('8', '改', '任务改', '2019-02-26', '2019-02-27', '2', '已反馈', '已完成', '1', '2');
INSERT INTO `plan` VALUES ('9', '查', '任务查', '2019-02-26', '2019-02-27', '2', '已反馈', '已完成', '2', '2');
INSERT INTO `plan` VALUES ('11', '改bug', '改', '2019-04-02', '2019-04-03', '1', '未反馈', '未完成', '1', '2');

-- ----------------------------
-- Table structure for plan_copy
-- ----------------------------
DROP TABLE IF EXISTS `plan_copy`;
CREATE TABLE `plan_copy` (
  `planid` int(11) NOT NULL AUTO_INCREMENT,
  `planname` varchar(20) NOT NULL,
  `planinfo` varchar(255) NOT NULL,
  `begintime` date NOT NULL,
  `endtime` date NOT NULL,
  `taskid` int(11) NOT NULL,
  `isfeedback` varchar(20) DEFAULT '未反馈',
  `state` varchar(20) NOT NULL DEFAULT '未完成',
  `feebback` varchar(255) DEFAULT NULL,
  `creater` int(255) DEFAULT NULL,
  PRIMARY KEY (`planid`),
  KEY `r_taskid_taskid` (`taskid`),
  KEY `r_creater_userid` (`creater`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plan_copy
-- ----------------------------
INSERT INTO `plan_copy` VALUES ('1', '', '', '0000-00-00', '0000-00-00', '0', '未反馈', '未完成', null, null);

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `taskid` int(11) NOT NULL AUTO_INCREMENT,
  `taskname` varchar(20) NOT NULL,
  `depict` varchar(255) NOT NULL,
  `begintime` varchar(255) NOT NULL,
  `endtime` varchar(255) NOT NULL,
  `realbegintime` varchar(255) DEFAULT NULL,
  `realendtime` varchar(255) DEFAULT NULL,
  `implperson` int(255) NOT NULL,
  `state` varchar(20) NOT NULL DEFAULT '未完成',
  `creater` int(255) NOT NULL,
  PRIMARY KEY (`taskid`),
  KEY `r_implperson_userid` (`implperson`),
  KEY `r_creater_userid` (`creater`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('1', '大唐', '实现大唐电信项目', '2019-03-26', '2019-03-31', '2019-03-26', '2019-04-01', '1', '未完成', '1');
INSERT INTO `task` VALUES ('2', '小唐', '实现小唐电信项目', '2019-02-26', '2019-02-31', '2019-02-31', '2019-03-01', '2', '已完成', '2');

-- ----------------------------
-- Table structure for task_copy
-- ----------------------------
DROP TABLE IF EXISTS `task_copy`;
CREATE TABLE `task_copy` (
  `taskid` int(11) NOT NULL AUTO_INCREMENT,
  `taskname` varchar(20) NOT NULL,
  `depict` varchar(255) NOT NULL,
  `begintime` date NOT NULL,
  `endtime` date NOT NULL,
  `realbegintime` date DEFAULT NULL,
  `realendtime` date DEFAULT NULL,
  `implperson` int(255) NOT NULL,
  `state` varchar(20) NOT NULL DEFAULT '未完成',
  `creater` int(255) NOT NULL,
  PRIMARY KEY (`taskid`),
  KEY `r_implperson_userid` (`implperson`),
  KEY `r_creater_userid` (`creater`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_copy
-- ----------------------------
