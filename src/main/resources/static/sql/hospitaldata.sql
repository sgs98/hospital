/*
Navicat MySQL Data Transfer

Source Server         : sdf
Source Server Version : 50562
Source Host           : 47.96.238.64:3306
Source Database       : hospitaldata

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-11-20 19:42:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `areaId` int(11) NOT NULL AUTO_INCREMENT,
  `areaName` varchar(50) NOT NULL,
  PRIMARY KEY (`areaId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('2', '河南有限公司');

-- ----------------------------
-- Table structure for ban
-- ----------------------------
DROP TABLE IF EXISTS `ban`;
CREATE TABLE `ban` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ban
-- ----------------------------
INSERT INTO `ban` VALUES ('1', '有班');
INSERT INTO `ban` VALUES ('2', '无班');

-- ----------------------------
-- Table structure for baoque
-- ----------------------------
DROP TABLE IF EXISTS `baoque`;
CREATE TABLE `baoque` (
  `baoqueid` int(11) NOT NULL AUTO_INCREMENT,
  `baoqueName` varchar(100) DEFAULT NULL,
  `baoqueNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`baoqueid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baoque
-- ----------------------------

-- ----------------------------
-- Table structure for bed
-- ----------------------------
DROP TABLE IF EXISTS `bed`;
CREATE TABLE `bed` (
  `bedId` int(11) NOT NULL AUTO_INCREMENT,
  `bedname` varchar(300) NOT NULL,
  `departmentId` int(11) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  PRIMARY KEY (`bedId`),
  KEY `fk_bedDepartmentid` (`departmentId`),
  CONSTRAINT `fk_bedDepartmentid` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`departmentid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bed
-- ----------------------------
INSERT INTO `bed` VALUES ('2', '外科1', '3', '0', '10');
INSERT INTO `bed` VALUES ('3', '内科1', '2', '0', '10');

-- ----------------------------
-- Table structure for caigou
-- ----------------------------
DROP TABLE IF EXISTS `caigou`;
CREATE TABLE `caigou` (
  `caigouid` int(11) NOT NULL AUTO_INCREMENT,
  `caigouname` varchar(50) DEFAULT NULL,
  `gonghuoshang` varchar(50) DEFAULT NULL,
  `danwei` varchar(10) DEFAULT NULL,
  `candi` varchar(100) DEFAULT NULL,
  `leixing` varchar(20) DEFAULT NULL,
  `shuliang` int(11) DEFAULT NULL,
  PRIMARY KEY (`caigouid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caigou
-- ----------------------------

-- ----------------------------
-- Table structure for cashier
-- ----------------------------
DROP TABLE IF EXISTS `cashier`;
CREATE TABLE `cashier` (
  `cashier` int(11) NOT NULL AUTO_INCREMENT,
  `reportId` int(11) NOT NULL,
  `durgname` varchar(500) NOT NULL,
  `durgnum` int(11) NOT NULL,
  `repiceprice` double NOT NULL,
  `repicetotal` double NOT NULL,
  `state` int(11) DEFAULT NULL,
  `ctime` date DEFAULT NULL,
  `ostate` int(11) DEFAULT NULL,
  `jie` varchar(500) DEFAULT NULL,
  `mstate` int(11) DEFAULT NULL,
  PRIMARY KEY (`cashier`),
  KEY `fk_reportId` (`reportId`),
  CONSTRAINT `fk_reportId` FOREIGN KEY (`reportId`) REFERENCES `report` (`reportid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cashier
-- ----------------------------
INSERT INTO `cashier` VALUES ('10', '11', '诊查费', '1', '20', '20', '1', '2019-11-20', '0', null, '1');
INSERT INTO `cashier` VALUES ('11', '11', 'ct', '1', '100', '100', '1', '2019-11-20', '1', null, '1');
INSERT INTO `cashier` VALUES ('12', '11', '胃镜', '1', '300', '300', '1', '2019-11-20', '1', '没事', '1');
INSERT INTO `cashier` VALUES ('13', '14', '阿莫西林', '1', '30', '30', '0', '2019-11-20', null, null, null);
INSERT INTO `cashier` VALUES ('14', '14', '挂号费', '1', '90', '90', '2', '2019-11-20', null, null, null);
INSERT INTO `cashier` VALUES ('15', '15', '阿莫西林', '1', '30', '30', '0', '2019-11-20', null, null, null);
INSERT INTO `cashier` VALUES ('16', '15', '挂号费', '1', '90', '90', '2', '2019-11-20', null, null, null);
INSERT INTO `cashier` VALUES ('17', '16', '阿莫西林', '1', '30', '30', '0', '2019-11-20', null, null, null);
INSERT INTO `cashier` VALUES ('18', '16', '挂号费', '1', '90', '90', '2', '2019-11-20', null, null, null);
INSERT INTO `cashier` VALUES ('19', '17', '阿莫西林', '1', '30', '30', '0', '2019-11-20', null, null, null);
INSERT INTO `cashier` VALUES ('20', '17', '挂号费', '1', '90', '90', '2', '2019-11-20', null, null, null);
INSERT INTO `cashier` VALUES ('21', '18', '阿莫西林', '1', '30', '30', '0', '2019-11-20', null, null, null);
INSERT INTO `cashier` VALUES ('22', '18', '挂号费', '1', '90', '90', '2', '2019-11-20', null, null, null);
INSERT INTO `cashier` VALUES ('23', '19', '阿莫西林', '1', '30', '30', '0', '2019-11-20', null, null, null);
INSERT INTO `cashier` VALUES ('24', '19', '挂号费', '1', '90', '90', '2', '2019-11-20', null, null, null);
INSERT INTO `cashier` VALUES ('25', '20', '阿莫西林', '1', '30', '30', '0', '2019-11-20', null, null, null);
INSERT INTO `cashier` VALUES ('26', '20', '挂号费', '1', '90', '90', '2', '2019-11-20', null, null, null);

-- ----------------------------
-- Table structure for checkup
-- ----------------------------
DROP TABLE IF EXISTS `checkup`;
CREATE TABLE `checkup` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `registerid` int(11) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `fk_rid` (`registerid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkup
-- ----------------------------
INSERT INTO `checkup` VALUES ('11', '7', '', '2019-11-20 13:53:28');

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `departmentId` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(300) NOT NULL,
  PRIMARY KEY (`departmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('2', '内科');
INSERT INTO `departments` VALUES ('3', '外科');

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `doctorId` int(11) NOT NULL AUTO_INCREMENT,
  `doctorName` varchar(300) NOT NULL,
  `departmentId` int(11) NOT NULL,
  `registeredId` int(11) NOT NULL,
  `dstate` int(11) DEFAULT NULL,
  `amStartTime` varchar(10) DEFAULT '8:00',
  `amEndTime` varchar(10) DEFAULT '12:00',
  `pmStartTime` varchar(10) DEFAULT '14:00',
  `pmEndTime` varchar(10) DEFAULT '18:00',
  PRIMARY KEY (`doctorId`),
  KEY `fk_department` (`departmentId`),
  KEY `fk_registeredtype` (`registeredId`),
  CONSTRAINT `fk_department` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`departmentId`),
  CONSTRAINT `fk_registeredtype` FOREIGN KEY (`registeredId`) REFERENCES `registeredtype` (`registeredid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('3', '华佗', '2', '1', '0', '8:00', '12:00', '14:00', '18:00');
INSERT INTO `doctor` VALUES ('4', '张仲景', '3', '2', '0', '8:00', '12:00', '14:00', '18:00');
INSERT INTO `doctor` VALUES ('5', '张春明', '2', '1', '1', '8:00', '12:00', '14:00', '18:00');
INSERT INTO `doctor` VALUES ('6', '扁鹊', '3', '2', '1', '8:00', '12:00', '14:00', '18:00');

-- ----------------------------
-- Table structure for drugdictionary
-- ----------------------------
DROP TABLE IF EXISTS `drugdictionary`;
CREATE TABLE `drugdictionary` (
  `drugId` int(11) NOT NULL AUTO_INCREMENT,
  `drugName` varchar(50) NOT NULL,
  `unitId` int(11) NOT NULL,
  `sellingPrice` double NOT NULL,
  `areaId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  PRIMARY KEY (`drugId`),
  KEY `fk_unitid` (`unitId`),
  KEY `fk_areaId` (`areaId`),
  KEY `fk_typeId` (`typeId`),
  CONSTRAINT `fk_areaId` FOREIGN KEY (`areaId`) REFERENCES `area` (`areaId`),
  CONSTRAINT `fk_typeId` FOREIGN KEY (`typeId`) REFERENCES `type` (`typeid`),
  CONSTRAINT `fk_unitid` FOREIGN KEY (`unitId`) REFERENCES `unit` (`unitid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of drugdictionary
-- ----------------------------
INSERT INTO `drugdictionary` VALUES ('4', '阿莫西林', '1', '30', '2', '1');
INSERT INTO `drugdictionary` VALUES ('5', '六味地黄丸', '1', '50', '2', '1');

-- ----------------------------
-- Table structure for drugstore
-- ----------------------------
DROP TABLE IF EXISTS `drugstore`;
CREATE TABLE `drugstore` (
  `rugstoreId` int(11) NOT NULL AUTO_INCREMENT,
  `drugstoreName` varchar(100) NOT NULL,
  `supplierId` int(11) DEFAULT NULL,
  `skullId` int(11) DEFAULT NULL,
  `warehouseId` int(11) DEFAULT NULL,
  `unit` int(11) NOT NULL,
  `tradePrice` double NOT NULL,
  `sellingPrice` double NOT NULL,
  `area` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `produceDate` date NOT NULL,
  `validDate` date NOT NULL,
  `drugstorenum` int(11) NOT NULL,
  `batch` varchar(200) NOT NULL,
  PRIMARY KEY (`rugstoreId`),
  KEY `fk_supplierId` (`supplierId`),
  KEY `fk_skullId` (`skullId`),
  KEY `fk_warehouseId` (`warehouseId`),
  KEY `fk_dgarea` (`area`),
  KEY `fk_dgunit` (`unit`),
  KEY `fk_dtype` (`type`),
  CONSTRAINT `fk_dgarea` FOREIGN KEY (`area`) REFERENCES `area` (`areaId`),
  CONSTRAINT `fk_dgunit` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`),
  CONSTRAINT `fk_dtype` FOREIGN KEY (`type`) REFERENCES `type` (`typeid`),
  CONSTRAINT `fk_skullId` FOREIGN KEY (`skullId`) REFERENCES `skull` (`skullid`),
  CONSTRAINT `fk_supplierId` FOREIGN KEY (`supplierId`) REFERENCES `upplier` (`supplierid`),
  CONSTRAINT `fk_warehouseId` FOREIGN KEY (`warehouseId`) REFERENCES `warehuose` (`warehouseid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of drugstore
-- ----------------------------
INSERT INTO `drugstore` VALUES ('7', '阿莫西林', '2', '1', '1', '1', '10', '30', '2', '1', '2019-11-19', '2020-02-08', '30', '20191120');

-- ----------------------------
-- Table structure for home
-- ----------------------------
DROP TABLE IF EXISTS `home`;
CREATE TABLE `home` (
  `homeId` int(11) NOT NULL AUTO_INCREMENT,
  `homeName` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `carId` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`homeId`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home
-- ----------------------------

-- ----------------------------
-- Table structure for hospitalprice
-- ----------------------------
DROP TABLE IF EXISTS `hospitalprice`;
CREATE TABLE `hospitalprice` (
  `hospitalpriceid` int(11) NOT NULL AUTO_INCREMENT,
  `registerId` int(11) NOT NULL,
  `durgname` varchar(500) NOT NULL,
  `durgnum` int(11) NOT NULL,
  `repiceprice` double NOT NULL,
  `repicetotal` double NOT NULL,
  `htime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`hospitalpriceid`),
  KEY `fk_registerId` (`registerId`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hospitalprice
-- ----------------------------
INSERT INTO `hospitalprice` VALUES ('97', '7', '阑尾切除', '1', '100', '100', '2019-11-20 13:59:29', '1');
INSERT INTO `hospitalprice` VALUES ('98', '7', '阿莫西林', '1', '30', '30', '2019-11-20 14:00:07', '2');

-- ----------------------------
-- Table structure for huishou
-- ----------------------------
DROP TABLE IF EXISTS `huishou`;
CREATE TABLE `huishou` (
  `huishouid` int(11) NOT NULL AUTO_INCREMENT,
  `huishouname` varchar(50) NOT NULL,
  `huishounumber` int(11) NOT NULL,
  `huishoupihao` varchar(50) DEFAULT NULL,
  `jbr` varchar(10) DEFAULT NULL,
  `beizhu` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`huishouid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huishou
-- ----------------------------

-- ----------------------------
-- Table structure for inhospitaltype
-- ----------------------------
DROP TABLE IF EXISTS `inhospitaltype`;
CREATE TABLE `inhospitaltype` (
  `inhospitalId` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(300) NOT NULL,
  `unit` int(11) NOT NULL,
  `price` double NOT NULL,
  `bigprojectId` int(11) NOT NULL,
  PRIMARY KEY (`inhospitalId`),
  KEY `fk_inhospitaltype` (`bigprojectId`),
  KEY `fk_inhunit` (`unit`),
  CONSTRAINT `fk_inhospitaltype` FOREIGN KEY (`bigprojectId`) REFERENCES `projecttype` (`projectid`),
  CONSTRAINT `fk_inhunit` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inhospitaltype
-- ----------------------------

-- ----------------------------
-- Table structure for inoutpatienttype
-- ----------------------------
DROP TABLE IF EXISTS `inoutpatienttype`;
CREATE TABLE `inoutpatienttype` (
  `inoutpatientId` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(300) NOT NULL,
  `unit` int(11) NOT NULL,
  `bigproJectId` int(11) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`inoutpatientId`),
  KEY `fk_inoutpatienttype` (`bigproJectId`),
  KEY `fk_intunit` (`unit`),
  CONSTRAINT `fk_inoutpatienttype` FOREIGN KEY (`bigproJectId`) REFERENCES `projecttype` (`projectid`),
  CONSTRAINT `fk_intunit` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inoutpatienttype
-- ----------------------------
INSERT INTO `inoutpatienttype` VALUES ('2', '阑尾切除', '2', '1', '100');

-- ----------------------------
-- Table structure for jilu
-- ----------------------------
DROP TABLE IF EXISTS `jilu`;
CREATE TABLE `jilu` (
  `jiluid` int(11) NOT NULL AUTO_INCREMENT,
  `jiluname` varchar(50) NOT NULL,
  `jilutime` datetime NOT NULL,
  `jilutype` varchar(50) NOT NULL,
  `jilupeople` varchar(20) NOT NULL,
  `jilunumber` int(11) DEFAULT NULL,
  `jilupihao` varchar(50) NOT NULL,
  PRIMARY KEY (`jiluid`)
) ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jilu
-- ----------------------------
INSERT INTO `jilu` VALUES ('161', '阿莫西林', '2019-11-20 13:41:21', '常规入库', '超级管理员', '100', '20191120');
INSERT INTO `jilu` VALUES ('162', '阿莫西林', '2019-11-20 13:41:57', '正常出库', '超级管理员', '50', '20191120');
INSERT INTO `jilu` VALUES ('163', '阿莫西林', '2019-11-20 14:05:15', '紧急补给药房', '超级管理员', '10', '20191120');
INSERT INTO `jilu` VALUES ('164', '阿莫西林', '2019-11-20 14:05:45', '紧急补给药房', '超级管理员', '2', '20191120');
INSERT INTO `jilu` VALUES ('165', '阿莫西林', '2019-11-20 14:07:58', '处理回收药品', '超级管理员', '59', '20191120');
INSERT INTO `jilu` VALUES ('166', '阿莫西林', '2019-11-20 18:39:04', '正常出库', '魏坚', '8', '20191120');

-- ----------------------------
-- Table structure for moneytype
-- ----------------------------
DROP TABLE IF EXISTS `moneytype`;
CREATE TABLE `moneytype` (
  `MoneyId` int(11) NOT NULL AUTO_INCREMENT,
  `Moneytype` varchar(300) NOT NULL,
  `Percent` varchar(30) NOT NULL,
  PRIMARY KEY (`MoneyId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneytype
-- ----------------------------
INSERT INTO `moneytype` VALUES ('10', '无', '0%');
INSERT INTO `moneytype` VALUES ('11', '城镇社保', '30%');
INSERT INTO `moneytype` VALUES ('12', '农村医疗合作社', '35%');

-- ----------------------------
-- Table structure for outpatienttype
-- ----------------------------
DROP TABLE IF EXISTS `outpatienttype`;
CREATE TABLE `outpatienttype` (
  `outpatientId` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(300) NOT NULL,
  `unit` int(11) NOT NULL,
  `bigprojectId` int(11) NOT NULL,
  `price` double NOT NULL,
  `ostate` int(10) DEFAULT NULL,
  PRIMARY KEY (`outpatientId`),
  KEY `fk_outpatienttype` (`bigprojectId`),
  KEY `fk_outunit` (`unit`),
  CONSTRAINT `fk_outpatienttype` FOREIGN KEY (`bigprojectId`) REFERENCES `projecttype` (`projectid`),
  CONSTRAINT `fk_outunit` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outpatienttype
-- ----------------------------
INSERT INTO `outpatienttype` VALUES ('2', '诊查费', '2', '2', '20', '0');
INSERT INTO `outpatienttype` VALUES ('3', 'ct', '2', '2', '100', '1');
INSERT INTO `outpatienttype` VALUES ('4', '胃镜', '2', '2', '300', '1');

-- ----------------------------
-- Table structure for paiban
-- ----------------------------
DROP TABLE IF EXISTS `paiban`;
CREATE TABLE `paiban` (
  `paiId` int(11) NOT NULL AUTO_INCREMENT,
  `one` varchar(50) DEFAULT '无班',
  `two` varchar(50) DEFAULT '无班',
  `three` varchar(50) DEFAULT '无班',
  `four` varchar(50) DEFAULT '无班',
  `five` varchar(50) DEFAULT '无班',
  `six` varchar(50) DEFAULT '无班',
  `seven` varchar(50) DEFAULT '无班',
  `doctorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`paiId`),
  KEY `fk_paiId` (`doctorId`),
  CONSTRAINT `fk_paiId` FOREIGN KEY (`doctorId`) REFERENCES `doctor` (`doctorId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paiban
-- ----------------------------
INSERT INTO `paiban` VALUES ('3', '有班', '有班', '有班', '有班', '有班', '有班', '有班', '6');
INSERT INTO `paiban` VALUES ('4', '有班', '有班', '有班', '有班', '有班', '有班', '有班', '5');
INSERT INTO `paiban` VALUES ('5', '有班', '有班', '无班', '有班', '有班', '有班', '有班', '4');
INSERT INTO `paiban` VALUES ('6', '有班', '有班', '有班', '有班', '有班', '有班', '有班', '3');

-- ----------------------------
-- Table structure for pay
-- ----------------------------
DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay` (
  `payid` int(11) NOT NULL AUTO_INCREMENT,
  `registerid` int(11) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `payDate` datetime DEFAULT NULL,
  PRIMARY KEY (`payid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay
-- ----------------------------
INSERT INTO `pay` VALUES ('1', '7', '10', '2019-11-20 13:50:30');

-- ----------------------------
-- Table structure for pharmacy
-- ----------------------------
DROP TABLE IF EXISTS `pharmacy`;
CREATE TABLE `pharmacy` (
  `pharmacyId` int(11) NOT NULL AUTO_INCREMENT,
  `pharmacyName` varchar(50) NOT NULL,
  `drugstoreId` int(11) DEFAULT NULL,
  `skullId` int(11) DEFAULT NULL,
  `warehouseId` int(11) DEFAULT NULL,
  `unit` int(11) NOT NULL,
  `sellingPrice` double NOT NULL,
  `area` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `produceDate` date NOT NULL,
  `validDate` date NOT NULL,
  `drugstorenum` int(11) NOT NULL,
  `skullbatch` varchar(200) NOT NULL,
  PRIMARY KEY (`pharmacyId`),
  KEY `fk_drugstoreIdp` (`drugstoreId`),
  KEY `fk_skullIdp` (`skullId`),
  KEY `fk_warehouseIdp` (`warehouseId`),
  KEY `fk_dgareap` (`area`),
  KEY `fk_unitp` (`unit`),
  KEY `fk_typep` (`type`),
  CONSTRAINT `fk_dgareap` FOREIGN KEY (`area`) REFERENCES `area` (`areaId`),
  CONSTRAINT `fk_drugstoreIdp` FOREIGN KEY (`drugstoreId`) REFERENCES `drugstore` (`rugstoreId`),
  CONSTRAINT `fk_skullIdp` FOREIGN KEY (`skullId`) REFERENCES `skull` (`skullid`),
  CONSTRAINT `fk_typep` FOREIGN KEY (`type`) REFERENCES `type` (`typeid`),
  CONSTRAINT `fk_unitp` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`),
  CONSTRAINT `fk_warehouseIdp` FOREIGN KEY (`warehouseId`) REFERENCES `warehuose` (`warehouseid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pharmacy
-- ----------------------------
INSERT INTO `pharmacy` VALUES ('4', '阿莫西林', '7', '1', '1', '1', '30', '2', '1', '2019-11-19', '2020-02-08', '1', '20191120');

-- ----------------------------
-- Table structure for projecttype
-- ----------------------------
DROP TABLE IF EXISTS `projecttype`;
CREATE TABLE `projecttype` (
  `projectId` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(300) NOT NULL,
  PRIMARY KEY (`projectId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of projecttype
-- ----------------------------
INSERT INTO `projecttype` VALUES ('1', '住院医疗综合服务类');
INSERT INTO `projecttype` VALUES ('2', '门诊医疗综合服务类');

-- ----------------------------
-- Table structure for register
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `registerid` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `department` int(11) NOT NULL,
  `doctor` int(11) NOT NULL,
  `diagnose` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `Phone` varchar(30) DEFAULT NULL,
  `Idcard` varchar(60) DEFAULT NULL,
  `registerDate` datetime DEFAULT NULL,
  `bedNum` int(11) DEFAULT NULL,
  `Operator` varchar(200) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `price` double unsigned DEFAULT NULL,
  `discount` varchar(10) DEFAULT NULL,
  `zhuan` datetime DEFAULT NULL,
  PRIMARY KEY (`registerid`),
  KEY `fk_regdepartment` (`department`),
  KEY `fk_regdoctor` (`doctor`),
  CONSTRAINT `fk_regdepartment` FOREIGN KEY (`department`) REFERENCES `departments` (`departmentId`),
  CONSTRAINT `fk_regdoctor` FOREIGN KEY (`doctor`) REFERENCES `doctor` (`doctorId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of register
-- ----------------------------
INSERT INTO `register` VALUES ('7', '赵永根', '20', '男', '3', '6', '胃病11', '河南', '12345678978', '123456789123456786', '2019-11-20 13:49:29', '2', '超级管理员', '2010', '1', '2019-11-20 14:00:21', '231', '30%', null);

-- ----------------------------
-- Table structure for registeredtype
-- ----------------------------
DROP TABLE IF EXISTS `registeredtype`;
CREATE TABLE `registeredtype` (
  `registeredId` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(300) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`registeredId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registeredtype
-- ----------------------------
INSERT INTO `registeredtype` VALUES ('1', '专家', '90');
INSERT INTO `registeredtype` VALUES ('2', '普通', '20');

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `reportId` int(11) NOT NULL AUTO_INCREMENT,
  `reportName` varchar(100) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `doctor` int(11) DEFAULT NULL,
  `reportType` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `users` varchar(100) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `carid` varchar(100) NOT NULL,
  `zhuan` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`reportId`),
  KEY `fk_departmentr` (`department`),
  KEY `fk_doctor` (`doctor`),
  KEY `fk_reportType` (`reportType`),
  CONSTRAINT `fk_departmentr` FOREIGN KEY (`department`) REFERENCES `departments` (`departmentId`),
  CONSTRAINT `fk_doctor` FOREIGN KEY (`doctor`) REFERENCES `doctor` (`doctorId`),
  CONSTRAINT `fk_reportType` FOREIGN KEY (`reportType`) REFERENCES `registeredtype` (`registeredId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report
-- ----------------------------
INSERT INTO `report` VALUES ('10', '赵永根', '男', '20', '2', '3', '1', '90', '2019-11-20 13:37:46', '超级管理员', '4', '12345678912', '123456789123456789', 'qwe');
INSERT INTO `report` VALUES ('11', '赵永根', '男', '20', '2', '3', '1', '90', '2019-11-20 13:38:27', '超级管理员', '5', '12345678978', '123456789123456786', '胃病11');
INSERT INTO `report` VALUES ('12', '赵永根', '男', '12', '2', '3', '1', '90', '2019-11-21 08:00:00', null, '0', '15565255027', '412702199808150571', null);
INSERT INTO `report` VALUES ('13', '魏坚', '男', '19', '2', '3', '1', '90', '2019-11-20 18:36:05', '魏坚', '0', '15915955536', '412826999966666666', null);
INSERT INTO `report` VALUES ('14', '魏坚', '男', '19', '2', '3', '1', '90', '2019-11-20 18:37:27', '魏坚', '2', '15565255027', '412222222222222222', '帅');
INSERT INTO `report` VALUES ('15', 'dfg', '男', '99', '2', '3', '1', '90', '2019-11-20 19:02:27', '魏坚', '2', '15936666666', '569696966666666666', 'fgjhk ');
INSERT INTO `report` VALUES ('16', 'cv', '男', '19', '2', '3', '1', '90', '2019-11-20 19:04:01', '魏坚', '2', '15565255027', '425252555555555555', 'b');
INSERT INTO `report` VALUES ('17', 'nk', '男', '19', '2', '3', '1', '90', '2019-11-20 19:05:41', '魏坚', '2', '15565255027', '555555555555555555', 'n');
INSERT INTO `report` VALUES ('18', 'dg', '男', '19', '2', '3', '1', '90', '2019-11-20 19:08:53', '魏坚', '2', '17634525258', '555555555555555555', 'cb');
INSERT INTO `report` VALUES ('19', 'sdf', '男', '19', '2', '3', '1', '90', '2019-11-20 19:14:24', '魏坚', '2', '17634525258', '412825555555555555', 'asd');
INSERT INTO `report` VALUES ('20', 'as', '男', '19', '2', '3', '1', '90', '2019-11-20 19:26:43', '魏坚', '2', '17634525258', '412823199999999999', 'sad');

-- ----------------------------
-- Table structure for skull
-- ----------------------------
DROP TABLE IF EXISTS `skull`;
CREATE TABLE `skull` (
  `skullId` int(11) NOT NULL AUTO_INCREMENT,
  `skullName` varchar(300) NOT NULL,
  PRIMARY KEY (`skullId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of skull
-- ----------------------------
INSERT INTO `skull` VALUES ('1', '汪星人');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `spread` int(255) DEFAULT NULL COMMENT '0不展开1展开',
  `target` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `available` int(255) DEFAULT NULL COMMENT '0不可用1可用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '医院管理系统', '', '1', null, '&#xe68e;', '1');
INSERT INTO `sys_menu` VALUES ('2', '1', '门诊管理', '', '0', null, '&#xe653;', '1');
INSERT INTO `sys_menu` VALUES ('3', '1', '住院管理', '', '0', null, '&#xe663;', '1');
INSERT INTO `sys_menu` VALUES ('4', '1', '系统管理', '', '0', '', '&#xe716;', '1');
INSERT INTO `sys_menu` VALUES ('5', '1', '统计管理', '', '0', null, '&#xe629;', '1');
INSERT INTO `sys_menu` VALUES ('6', '2', '用户挂号', '../cao/index', '0', null, '&#xe770;', '1');
INSERT INTO `sys_menu` VALUES ('7', '2', '处方划价', '../caocc/cc', '0', null, '&#xe657;', '1');
INSERT INTO `sys_menu` VALUES ('8', '3', '入院登记', '../liao/admin', '0', null, '&#xe65b;', '1');
INSERT INTO `sys_menu` VALUES ('9', '3', '缴费管理', '../liao/pay', '0', null, '&#xe6b2;', '1');
INSERT INTO `sys_menu` VALUES ('10', '3', '全身检查', '/liao/checkup', '0', null, '&#xe615;', '1');
INSERT INTO `sys_menu` VALUES ('11', '3', '药品记账', '../liao/drug', '0', null, '&#xe705;', '1');
INSERT INTO `sys_menu` VALUES ('12', '4', '菜单管理', '../toMenuManager', '0', null, '&#xe60f;', '1');
INSERT INTO `sys_menu` VALUES ('13', '4', '角色管理', '../toLoadAllRole', '0', '', '&#xe66f;', '1');
INSERT INTO `sys_menu` VALUES ('14', '4', '用户管理', '../toLoadAllUser', '0', null, '&#xe770;', '1');
INSERT INTO `sys_menu` VALUES ('15', '4', '图标管理', '../icon', '0', null, '&#xe655;', '1');
INSERT INTO `sys_menu` VALUES ('17', '4', '数据源监控', '../druid', '0', null, '&#xe857;', '1');
INSERT INTO `sys_menu` VALUES ('18', '5', '门诊月度统计', '../toReportFinance', '0', null, '&#xe63c;', '1');
INSERT INTO `sys_menu` VALUES ('19', '5', '住院月度统计', '../toZhuYaunManage', '0', null, '&#xe62c;', '1');
INSERT INTO `sys_menu` VALUES ('20', '5', '门诊年度统计', '../toBingYear', '0', null, '&#xe62d;', '1');
INSERT INTO `sys_menu` VALUES ('27', '2', '项目划价', '../caoout/xiang', '0', null, '&#xe60a;', '1');
INSERT INTO `sys_menu` VALUES ('28', '2', '项目缴费', '../xpay/xiangpay', '0', null, '&#xe65e;', '1');
INSERT INTO `sys_menu` VALUES ('30', '1', '数据中心', '', '0', null, '&#xe60a;', '1');
INSERT INTO `sys_menu` VALUES ('31', '30', '科室中心', '../toDepartments', '0', null, '&#xe68e;', '1');
INSERT INTO `sys_menu` VALUES ('32', '30', '医生列表', '../toDoctor', '0', null, '&#xe66f;', '1');
INSERT INTO `sys_menu` VALUES ('33', '30', '药品产地', '../toArea', '0', null, '&#xe630;', '1');
INSERT INTO `sys_menu` VALUES ('36', '30', '项目大类', '../toProjectTypeManage', '0', null, '&#xe620;', '1');
INSERT INTO `sys_menu` VALUES ('37', '30', '挂号类型', '../toRegisteredType', '0', null, '&#xe672;', '1');
INSERT INTO `sys_menu` VALUES ('40', '30', '仓库', '../toWarehuose', '0', null, '&#xe60a;', '1');
INSERT INTO `sys_menu` VALUES ('41', '30', '经办人', '../toSkull', '0', null, '&#xe612;', '1');
INSERT INTO `sys_menu` VALUES ('42', '30', '计量单位', '../toUnit', '0', null, '&#xe62a;', '1');
INSERT INTO `sys_menu` VALUES ('43', '30', '供货商', '../toSupply', '0', null, '&#xe613;', '1');
INSERT INTO `sys_menu` VALUES ('44', '30', '药品分类', '../toType', '0', null, '&#xe656;', '1');
INSERT INTO `sys_menu` VALUES ('46', '1', '排班管理', '1', '0', null, '&#xe770;', '1');
INSERT INTO `sys_menu` VALUES ('47', '46', '医生排班', '../toPaiban', '0', null, '&#xe770;', '1');
INSERT INTO `sys_menu` VALUES ('48', '30', '药品字典', '../toDrugdictionary', '0', null, '&#xe64d;', '1');
INSERT INTO `sys_menu` VALUES ('49', '3', '项目记账', '../liao/item', '0', null, '&#xe705;', '1');
INSERT INTO `sys_menu` VALUES ('52', '5', '住院年度统计', '../toBing2', '0', null, '&#xe630;', '1');
INSERT INTO `sys_menu` VALUES ('53', '2', '项目检查', '../xpay/seljian', '0', null, '&#xe674;', '1');
INSERT INTO `sys_menu` VALUES ('54', '1', '仓库管理', '', '0', null, '&#xe61c;', '1');
INSERT INTO `sys_menu` VALUES ('55', '54', '入库单', '../dsnavigation/beputinstorage', '0', null, '&#xe657;', '1');
INSERT INTO `sys_menu` VALUES ('56', '5', '医生统计对比', '../toDoctorDuibi', '0', null, '&#xe770;', '1');
INSERT INTO `sys_menu` VALUES ('57', '54', '库存查询', '../dsnavigation/selectdurg', '0', null, '&#xe62a;', '1');
INSERT INTO `sys_menu` VALUES ('58', '54', '出库单', '../dsnavigation/selectchuku', '0', null, '&#xe621;', '1');
INSERT INTO `sys_menu` VALUES ('59', '54', '库存不足', '../dsnavigation/selectless', '0', null, '&#xe6b2;', '1');
INSERT INTO `sys_menu` VALUES ('60', '54', '过期提醒', '../dsnavigation/seldrugDate', '0', null, '&#xe702;', '1');
INSERT INTO `sys_menu` VALUES ('61', '1', '药房管理', '', '0', null, '&#xe705;', '1');
INSERT INTO `sys_menu` VALUES ('62', '61', '药房详情', '../dsnavigation/pharymacyhtml', '0', null, '&#xe632;', '1');
INSERT INTO `sys_menu` VALUES ('64', '2', '药品缴费', '../caoout/out', '0', null, '&#xe65e;', '1');
INSERT INTO `sys_menu` VALUES ('65', '5', '门诊当天收入', '../toCurrent', '0', null, '&#xe60e;', '1');
INSERT INTO `sys_menu` VALUES ('69', '2', '门诊患者库', '../caotake/haun', '0', null, '&#xe66f;', '1');
INSERT INTO `sys_menu` VALUES ('70', '54', '操作记录', '../dsnavigation/record', '0', null, '&#xe6b2;', '1');
INSERT INTO `sys_menu` VALUES ('71', '54', '药品回收', '../dsnavigation/recycle', '0', null, '&#xe669;', '1');
INSERT INTO `sys_menu` VALUES ('72', '61', '门诊取药', '../caotake/seltake', '0', null, '&#xe857;', '1');
INSERT INTO `sys_menu` VALUES ('73', '61', '住院取药', '../liao/pharmacy', '0', null, '&#xe63c;', '1');
INSERT INTO `sys_menu` VALUES ('86', '3', '出院结算', '../liao/leave', '0', null, '&#xe65a;', '1');
INSERT INTO `sys_menu` VALUES ('87', '2', 'test', '', '0', null, '&#xe679', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  `roledesc` varchar(255) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '拥有所有菜单权限', '1');
INSERT INTO `sys_role` VALUES ('2', '门诊管理员', '拥有所有门诊业务', '1');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `rid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`rid`,`mid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '17');
INSERT INTO `sys_role_menu` VALUES ('1', '18');
INSERT INTO `sys_role_menu` VALUES ('1', '19');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '27');
INSERT INTO `sys_role_menu` VALUES ('1', '28');
INSERT INTO `sys_role_menu` VALUES ('1', '30');
INSERT INTO `sys_role_menu` VALUES ('1', '31');
INSERT INTO `sys_role_menu` VALUES ('1', '32');
INSERT INTO `sys_role_menu` VALUES ('1', '33');
INSERT INTO `sys_role_menu` VALUES ('1', '36');
INSERT INTO `sys_role_menu` VALUES ('1', '37');
INSERT INTO `sys_role_menu` VALUES ('1', '38');
INSERT INTO `sys_role_menu` VALUES ('1', '40');
INSERT INTO `sys_role_menu` VALUES ('1', '41');
INSERT INTO `sys_role_menu` VALUES ('1', '42');
INSERT INTO `sys_role_menu` VALUES ('1', '43');
INSERT INTO `sys_role_menu` VALUES ('1', '44');
INSERT INTO `sys_role_menu` VALUES ('1', '46');
INSERT INTO `sys_role_menu` VALUES ('1', '47');
INSERT INTO `sys_role_menu` VALUES ('1', '48');
INSERT INTO `sys_role_menu` VALUES ('1', '49');
INSERT INTO `sys_role_menu` VALUES ('1', '50');
INSERT INTO `sys_role_menu` VALUES ('1', '52');
INSERT INTO `sys_role_menu` VALUES ('1', '53');
INSERT INTO `sys_role_menu` VALUES ('1', '54');
INSERT INTO `sys_role_menu` VALUES ('1', '55');
INSERT INTO `sys_role_menu` VALUES ('1', '56');
INSERT INTO `sys_role_menu` VALUES ('1', '57');
INSERT INTO `sys_role_menu` VALUES ('1', '58');
INSERT INTO `sys_role_menu` VALUES ('1', '59');
INSERT INTO `sys_role_menu` VALUES ('1', '60');
INSERT INTO `sys_role_menu` VALUES ('1', '61');
INSERT INTO `sys_role_menu` VALUES ('1', '62');
INSERT INTO `sys_role_menu` VALUES ('1', '64');
INSERT INTO `sys_role_menu` VALUES ('1', '65');
INSERT INTO `sys_role_menu` VALUES ('1', '68');
INSERT INTO `sys_role_menu` VALUES ('1', '69');
INSERT INTO `sys_role_menu` VALUES ('1', '70');
INSERT INTO `sys_role_menu` VALUES ('1', '71');
INSERT INTO `sys_role_menu` VALUES ('1', '72');
INSERT INTO `sys_role_menu` VALUES ('1', '73');
INSERT INTO `sys_role_menu` VALUES ('1', '86');
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '6');
INSERT INTO `sys_role_menu` VALUES ('2', '7');
INSERT INTO `sys_role_menu` VALUES ('2', '27');
INSERT INTO `sys_role_menu` VALUES ('2', '28');
INSERT INTO `sys_role_menu` VALUES ('2', '53');
INSERT INTO `sys_role_menu` VALUES ('2', '64');
INSERT INTO `sys_role_menu` VALUES ('2', '69');
INSERT INTO `sys_role_menu` VALUES ('2', '87');

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user` (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`rid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES ('1', '1');
INSERT INTO `sys_role_user` VALUES ('9', '1');
INSERT INTO `sys_role_user` VALUES ('10', '1');
INSERT INTO `sys_role_user` VALUES ('11', '1');
INSERT INTO `sys_role_user` VALUES ('12', '1');
INSERT INTO `sys_role_user` VALUES ('13', '1');
INSERT INTO `sys_role_user` VALUES ('23', '1');
INSERT INTO `sys_role_user` VALUES ('24', '1');
INSERT INTO `sys_role_user` VALUES ('24', '2');
INSERT INTO `sys_role_user` VALUES ('25', '2');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` int(255) DEFAULT NULL COMMENT '0女1男',
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `type` int(255) DEFAULT '2' COMMENT '1，超级管理员,2，系统用户',
  `available` int(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '412365199601236544', '超级管理员', '1', '武汉', '13183380740', '6af4d08340b548cbcce38353d9bcaab4', 'CEO', '1', '1', 'd21fd4');
INSERT INTO `sys_user` VALUES ('23', 'liao', '412702167814561234', '李奥', '1', '河南省新乡市', '18348369382', 'c90ed4013d2558d2aeeee2dcf7d50769', '', '2', '1', 'bc1280');
INSERT INTO `sys_user` VALUES ('24', 'weijian', '412823199912242415', '魏坚', '1', 'asdsad', '17634525259', '7861c9bba398b7b1e2735928e623aa64', 'asdasd', '2', '1', 'c296bb');
INSERT INTO `sys_user` VALUES ('25', 'song', '412827199807156595', '宋高帅', '1', '河南', '13183380740', 'ca52a33142e6056b8285668bf41e0fd3', '管理员', '2', '1', 'e86a70');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(50) NOT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '西药');

-- ----------------------------
-- Table structure for unit
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `unitId` int(11) NOT NULL AUTO_INCREMENT,
  `unitName` varchar(50) NOT NULL,
  PRIMARY KEY (`unitId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unit
-- ----------------------------
INSERT INTO `unit` VALUES ('1', '盒');
INSERT INTO `unit` VALUES ('2', '次');

-- ----------------------------
-- Table structure for upplier
-- ----------------------------
DROP TABLE IF EXISTS `upplier`;
CREATE TABLE `upplier` (
  `supplierId` int(11) NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(300) NOT NULL,
  `supplierPhone` varchar(100) DEFAULT NULL,
  `supplierAddress` varchar(300) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`supplierId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upplier
-- ----------------------------
INSERT INTO `upplier` VALUES ('2', '春天大药房', null, null, '0');

-- ----------------------------
-- Table structure for warehuose
-- ----------------------------
DROP TABLE IF EXISTS `warehuose`;
CREATE TABLE `warehuose` (
  `warehouseId` int(11) NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(300) NOT NULL,
  PRIMARY KEY (`warehouseId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehuose
-- ----------------------------
INSERT INTO `warehuose` VALUES ('1', '仓库');
