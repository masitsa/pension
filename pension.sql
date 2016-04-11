/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : pension

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-04-11 15:03:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(50) DEFAULT NULL,
  `account_status` tinyint(1) DEFAULT '1',
  `branch_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'Administration', '1', 'OSH');
INSERT INTO `account` VALUES ('2', 'Kitchen', '1', 'OSH');
INSERT INTO `account` VALUES ('3', 'Waste Management', '1', 'OSH');
INSERT INTO `account` VALUES ('4', 'Nursing Station', '1', 'OSH');
INSERT INTO `account` VALUES ('5', 'Telephone & postage', '1', 'OSH');
INSERT INTO `account` VALUES ('6', 'Laboratory', '1', 'OSH');
INSERT INTO `account` VALUES ('7', 'Travelling & subsistence', '1', 'OSH');
INSERT INTO `account` VALUES ('8', 'Pharmacy', '1', 'OSH');
INSERT INTO `account` VALUES ('9', 'Generator', '1', 'OSH');
INSERT INTO `account` VALUES ('10', 'Theatre', '1', 'OSH');
INSERT INTO `account` VALUES ('11', 'Petty Cash', '1', 'OSH');
INSERT INTO `account` VALUES ('12', 'Opening balance', '1', 'OSH');

-- ----------------------------
-- Table structure for `account_credit`
-- ----------------------------
DROP TABLE IF EXISTS `account_credit`;
CREATE TABLE `account_credit` (
  `account_credit` int(11) NOT NULL AUTO_INCREMENT,
  `visit_type_id` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `efect_date` date NOT NULL,
  PRIMARY KEY (`account_credit`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of account_credit
-- ----------------------------
INSERT INTO `account_credit` VALUES ('3', '1', '800', '2013-06-01');
INSERT INTO `account_credit` VALUES ('4', '5', '900', '2014-05-31');

-- ----------------------------
-- Table structure for `allowance`
-- ----------------------------
DROP TABLE IF EXISTS `allowance`;
CREATE TABLE `allowance` (
  `allowance_id` int(11) NOT NULL AUTO_INCREMENT,
  `allowance_name` varchar(45) DEFAULT NULL,
  `allowance_status` int(11) NOT NULL DEFAULT '0',
  `allowance_abbr` varchar(10) NOT NULL,
  `allowance_taxable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`allowance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of allowance
-- ----------------------------
INSERT INTO `allowance` VALUES ('5', 'House', '0', '', '1');
INSERT INTO `allowance` VALUES ('6', 'Overtime', '0', '', '1');
INSERT INTO `allowance` VALUES ('7', 'Medical', '0', '', '1');
INSERT INTO `allowance` VALUES ('8', 'Transport', '0', '', '1');

-- ----------------------------
-- Table structure for `benefit`
-- ----------------------------
DROP TABLE IF EXISTS `benefit`;
CREATE TABLE `benefit` (
  `benefit_id` int(11) NOT NULL AUTO_INCREMENT,
  `benefit_name` varchar(45) DEFAULT NULL,
  `benefit_status` int(11) NOT NULL DEFAULT '0',
  `benefit_abbr` varchar(10) NOT NULL,
  `benefit_taxable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`benefit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of benefit
-- ----------------------------

-- ----------------------------
-- Table structure for `branch`
-- ----------------------------
DROP TABLE IF EXISTS `branch`;
CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_email` varchar(100) NOT NULL,
  `branch_phone` varchar(100) NOT NULL,
  `branch_address` varchar(100) DEFAULT NULL,
  `branch_post_code` varchar(100) DEFAULT NULL,
  `branch_building` varchar(100) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `branch_image_name` varchar(200) NOT NULL,
  `branch_thumb_name` varchar(200) NOT NULL,
  `branch_city` varchar(100) DEFAULT NULL,
  `branch_floor` varchar(100) DEFAULT NULL,
  `branch_location` varchar(100) DEFAULT NULL,
  `branch_working_weekday` varchar(100) DEFAULT NULL,
  `branch_working_weekend` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `branch_status` tinyint(1) NOT NULL DEFAULT '1',
  `branch_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of branch
-- ----------------------------
INSERT INTO `branch` VALUES ('2', 'info@omnis.co.ke', '0726149351', '70922', '00400', 'Galana Plaza', 'Omnis', '06b397e653873532c404c568b2e2c180.png', 'thumbnail_06b397e653873532c404c568b2e2c180.png', 'Nairobi', '6th', 'Kilimani', '0', '0', '2015-08-28 07:27:08', '85', '2015-11-28 10:26:55', '0', '1', 'ALV');

-- ----------------------------
-- Table structure for `civil_status`
-- ----------------------------
DROP TABLE IF EXISTS `civil_status`;
CREATE TABLE `civil_status` (
  `civil_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `civil_status_name` varchar(20) NOT NULL,
  PRIMARY KEY (`civil_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of civil_status
-- ----------------------------
INSERT INTO `civil_status` VALUES ('1', 'Single');
INSERT INTO `civil_status` VALUES ('2', 'Married');
INSERT INTO `civil_status` VALUES ('3', 'Divorced');
INSERT INTO `civil_status` VALUES ('4', 'Widowed');

-- ----------------------------
-- Table structure for `companies`
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `companies_id` int(11) NOT NULL AUTO_INCREMENT,
  `companies_name` varchar(255) NOT NULL,
  `companies_email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`companies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of companies
-- ----------------------------
INSERT INTO `companies` VALUES ('1', 'Total', 'tottalbychoice', '1');
INSERT INTO `companies` VALUES ('2', 'Mavji', 'info@mavji.com', '0');
INSERT INTO `companies` VALUES ('3', '', '', '0');
INSERT INTO `companies` VALUES ('4', 'Madison', 'info@madison.co.ke', '0');

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(20) NOT NULL,
  `company_contact_person_name` varchar(50) DEFAULT NULL,
  `company_contact_person_phone1` varchar(20) DEFAULT NULL,
  `company_contact_person_phone2` varchar(20) DEFAULT NULL,
  `company_contact_person_email1` varchar(30) DEFAULT NULL,
  `company_contact_person_email2` varchar(30) DEFAULT NULL,
  `company_description` text,
  `company_status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of company
-- ----------------------------

-- ----------------------------
-- Table structure for `company_insuarance`
-- ----------------------------
DROP TABLE IF EXISTS `company_insuarance`;
CREATE TABLE `company_insuarance` (
  `company_insurance_id` int(11) NOT NULL AUTO_INCREMENT,
  `companies_id` int(11) NOT NULL,
  `insurance_company_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `insurance_company_name` varchar(100) NOT NULL,
  PRIMARY KEY (`company_insurance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of company_insuarance
-- ----------------------------
INSERT INTO `company_insuarance` VALUES ('1', '1', '1', '0', '', 'UAP');
INSERT INTO `company_insuarance` VALUES ('2', '1', '2', '0', '', 'Clarkson');
INSERT INTO `company_insuarance` VALUES ('3', '4', '2', '0', '', 'Clarkson');

-- ----------------------------
-- Table structure for `compounding_period`
-- ----------------------------
DROP TABLE IF EXISTS `compounding_period`;
CREATE TABLE `compounding_period` (
  `compounding_period_id` int(11) NOT NULL AUTO_INCREMENT,
  `compounding_period_name` varchar(50) NOT NULL,
  `compounding_period_no` int(1) NOT NULL,
  PRIMARY KEY (`compounding_period_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of compounding_period
-- ----------------------------
INSERT INTO `compounding_period` VALUES ('1', 'Daily', '365');
INSERT INTO `compounding_period` VALUES ('2', 'Monthly', '12');
INSERT INTO `compounding_period` VALUES ('3', 'Quaterly', '4');
INSERT INTO `compounding_period` VALUES ('4', 'Semi annually', '2');
INSERT INTO `compounding_period` VALUES ('5', 'Annually', '1');

-- ----------------------------
-- Table structure for `configuration`
-- ----------------------------
DROP TABLE IF EXISTS `configuration`;
CREATE TABLE `configuration` (
  `configuration_id` int(11) NOT NULL AUTO_INCREMENT,
  `mandrill` varchar(100) DEFAULT NULL,
  `sms_key` varchar(100) DEFAULT NULL,
  `sms_user` varchar(100) NOT NULL,
  `facebook_api` varchar(100) DEFAULT NULL,
  `facebook_secret` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`configuration_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of configuration
-- ----------------------------
INSERT INTO `configuration` VALUES ('1', 'lXh-1_wB5LGagH6TJniOSQ', '1f61510514421213f9566191a15caa94f3d930305c99dae2624dfb06ef54b703', 'alviem', null, null);

-- ----------------------------
-- Table structure for `contacts`
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `contacts_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `post_code` varchar(100) DEFAULT NULL,
  `building` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `motto` varchar(200) NOT NULL,
  `pintrest` varchar(200) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `floor` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `working_weekday` varchar(100) DEFAULT NULL,
  `working_weekend` varchar(100) DEFAULT NULL,
  `mission` text,
  `vision` text,
  `thumb` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `about` text,
  `objectives` text,
  `core_values` text,
  `site_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`contacts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('1', 'info@serenity.com', '020123456', '12345', '11200', '', 'https://www.facebook.com/dobi', 'Serenity', '59475fac8395d199428e32693cd98218.jpg', '0', '', 'Nairobi', '', 'Hurlingam', '', '', 'We aim to create an online market place where buyers of spare parts can easily find their needs, compare products and get a quick link to the seller of the spare parts they require<br>', 'Our vision is to have an e Commerce platform for vehicle spare parts<br>', 'thumbnail_59475fac8395d199428e32693cd98218.jpg', '', '<span >An online marketplace that links buyers and sellers of automotive parts. Sellers can post parts and buyers can search/filter parts which they are seeking.</span>', '<br>', '<br>', 'Autospares.co.ke');

-- ----------------------------
-- Table structure for `contacts_copy`
-- ----------------------------
DROP TABLE IF EXISTS `contacts_copy`;
CREATE TABLE `contacts_copy` (
  `contacts_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `post_code` varchar(100) DEFAULT NULL,
  `building` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `motto` varchar(200) NOT NULL,
  `pintrest` varchar(200) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `floor` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `working_weekday` varchar(100) DEFAULT NULL,
  `working_weekend` varchar(100) DEFAULT NULL,
  `mission` text,
  `vision` text,
  `thumb` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `about` text,
  `objectives` text,
  `core_values` text,
  `site_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`contacts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contacts_copy
-- ----------------------------
INSERT INTO `contacts_copy` VALUES ('1', 'info@serenity.com', '020123456', '12345', '11200', '', 'https://www.facebook.com/dobi', 'Serenity', '59475fac8395d199428e32693cd98218.jpg', '0', '', 'Nairobi', '', 'Hurlingam', '', '', 'We aim to create an online market place where buyers of spare parts can easily find their needs, compare products and get a quick link to the seller of the spare parts they require<br>', 'Our vision is to have an e Commerce platform for vehicle spare parts<br>', 'thumbnail_59475fac8395d199428e32693cd98218.jpg', '', '<span >An online marketplace that links buyers and sellers of automotive parts. Sellers can post parts and buyers can search/filter parts which they are seeking.</span>', '<br>', '<br>', 'Autospares.co.ke');

-- ----------------------------
-- Table structure for `contribution_type`
-- ----------------------------
DROP TABLE IF EXISTS `contribution_type`;
CREATE TABLE `contribution_type` (
  `contribution_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `contribution_type_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`contribution_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contribution_type
-- ----------------------------
INSERT INTO `contribution_type` VALUES ('1', 'Employer');
INSERT INTO `contribution_type` VALUES ('2', 'Employee');
INSERT INTO `contribution_type` VALUES ('3', 'Voluntary');

-- ----------------------------
-- Table structure for `creditor`
-- ----------------------------
DROP TABLE IF EXISTS `creditor`;
CREATE TABLE `creditor` (
  `creditor_id` int(11) NOT NULL AUTO_INCREMENT,
  `creditor_name` varchar(255) NOT NULL,
  `creditor_email` varchar(255) NOT NULL,
  `creditor_phone` varchar(255) NOT NULL,
  `creditor_location` varchar(100) NOT NULL,
  `creditor_contact_person_name` varchar(255) NOT NULL,
  `creditor_contact` varchar(255) NOT NULL,
  `creditor_status` tinyint(1) NOT NULL DEFAULT '0',
  `creditor_contact_person_onames` varchar(50) DEFAULT NULL,
  `creditor_contact_person_phone1` varchar(255) DEFAULT NULL,
  `creditor_contact_person_phone2` varchar(255) DEFAULT NULL,
  `creditor_contact_person_email` varchar(255) DEFAULT NULL,
  `creditor_description` text,
  `created_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `branch_code` varchar(10) DEFAULT NULL,
  `creditor_building` varchar(100) DEFAULT NULL,
  `creditor_floor` varchar(100) DEFAULT NULL,
  `creditor_address` varchar(100) DEFAULT NULL,
  `creditor_post_code` varchar(50) DEFAULT NULL,
  `creditor_city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`creditor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of creditor
-- ----------------------------
INSERT INTO `creditor` VALUES ('2', 'Nakumatt Ltd', '', '', '', '', '', '0', '', '0', '0', '', '', '0', '2015-11-11 18:28:25', '0', '2015-11-11 18:28:25', 'OSH', '', '', '', '', '');
INSERT INTO `creditor` VALUES ('3', 'Naivas', 'nssshq@naivas.co.ke', '', 'Kisii', '', '', '0', '', '0', '0', '', 'Kitchen, Administration', '0', '2015-11-11 18:55:53', '0', '2015-11-11 18:55:53', 'OSH', '', '', '61600', '00200', 'Nairobi');
INSERT INTO `creditor` VALUES ('4', 'Oasis Specialist Hospital', '', '', '', '', '', '0', '', '0', '0', '', '', '0', '2015-12-02 13:38:20', '0', '2015-12-02 15:38:20', 'ALV', '', '', '', '', '');

-- ----------------------------
-- Table structure for `creditor_account`
-- ----------------------------
DROP TABLE IF EXISTS `creditor_account`;
CREATE TABLE `creditor_account` (
  `creditor_account_id` int(11) NOT NULL AUTO_INCREMENT,
  `creditor_account_description` text,
  `creditor_account_amount` double DEFAULT NULL,
  `creditor_account_date` date DEFAULT NULL,
  `creditor_account_status` tinyint(1) DEFAULT '1',
  `creditor_id` int(11) DEFAULT NULL,
  `transaction_type_id` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`creditor_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of creditor_account
-- ----------------------------
INSERT INTO `creditor_account` VALUES ('2', 'Purchase of items invoice no. 14401100007852', '29864', '2015-09-17', '1', '3', '2', '2015-11-11 19:03:28', '14', '2015-11-11 19:18:01', '14');
INSERT INTO `creditor_account` VALUES ('3', 'Balance b/f as at 31/08/2015', '199929', '2015-09-15', '1', '3', '2', '2015-11-11 19:06:03', '14', '2015-11-11 19:18:01', '14');
INSERT INTO `creditor_account` VALUES ('4', 'Cheque deposit', '100560', '2015-09-16', '1', '3', '1', '2015-11-11 19:07:01', '14', '2015-11-11 19:18:01', '14');

-- ----------------------------
-- Table structure for `deduction`
-- ----------------------------
DROP TABLE IF EXISTS `deduction`;
CREATE TABLE `deduction` (
  `deduction_id` int(11) NOT NULL AUTO_INCREMENT,
  `deduction_name` varchar(45) DEFAULT NULL,
  `deduction_status` tinyint(1) NOT NULL DEFAULT '1',
  `deduction_abbr` varchar(10) NOT NULL,
  `deduction_taxable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`deduction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of deduction
-- ----------------------------
INSERT INTO `deduction` VALUES ('3', 'HELB', '1', 'HELB', '1');

-- ----------------------------
-- Table structure for `departments`
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `department_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(30) NOT NULL,
  `department_status` tinyint(1) DEFAULT '1',
  `visit` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `department_parent` int(11) DEFAULT NULL,
  `branch_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('1', 'Reception', '1', '0', null, null, '2015-09-28 13:05:44', null, null, 'OSH');
INSERT INTO `departments` VALUES ('2', 'Doctor', '1', '0', null, null, '2015-09-28 13:05:44', null, null, 'OSH');
INSERT INTO `departments` VALUES ('3', 'Administration', '0', '0', null, null, '2015-09-28 13:05:44', null, null, 'OSH');
INSERT INTO `departments` VALUES ('5', 'Pharmacy', '1', '1', null, null, '2015-09-28 13:05:44', null, null, 'OSH');
INSERT INTO `departments` VALUES ('6', 'Accounts', '1', '0', null, null, '2015-09-28 13:05:44', null, null, 'OSH');
INSERT INTO `departments` VALUES ('7', 'General Practice', '1', '1', null, null, '2015-09-28 13:05:44', '0', null, 'OSH');
INSERT INTO `departments` VALUES ('8', 'Medical Administration', '0', '0', null, null, '2015-09-28 13:05:44', null, null, 'OSH');
INSERT INTO `departments` VALUES ('10', 'Dental Surgery', '1', '1', null, null, '2015-10-04 15:55:23', '1', null, 'OSH');
INSERT INTO `departments` VALUES ('11', 'Radiology', '1', '1', null, null, '2015-10-04 15:55:30', '0', null, 'OSH');
INSERT INTO `departments` VALUES ('12', 'Counseling', '1', '0', null, null, '2015-10-04 15:57:23', null, null, 'OSH');
INSERT INTO `departments` VALUES ('13', 'Physiotherapy', '1', '0', null, null, '2015-09-28 13:05:44', null, null, 'OSH');
INSERT INTO `departments` VALUES ('14', 'Theatre', '1', '1', '2015-09-15 19:50:37', '0', '2015-10-04 15:55:48', '0', null, 'OSH');
INSERT INTO `departments` VALUES ('16', 'Outpatient', '1', '0', '2015-09-16 12:00:11', '0', '2015-09-28 13:05:44', '0', null, 'OSH');
INSERT INTO `departments` VALUES ('17', 'Inpatient', '1', '0', '2015-09-16 12:00:20', '0', '2015-09-28 13:05:44', '0', null, 'OSH');
INSERT INTO `departments` VALUES ('18', 'Laboratory', '1', '1', '2015-09-18 12:23:56', '0', '2015-10-04 15:56:47', null, null, 'OSH');
INSERT INTO `departments` VALUES ('19', 'Obstetrics & Gynaecology', '1', '0', '2015-09-18 15:40:02', '1', '2015-09-28 13:05:44', '1', null, 'OSH');
INSERT INTO `departments` VALUES ('20', 'Orthopaedics', '1', '0', '2015-09-18 15:41:47', '1', '2015-09-28 13:05:44', '1', null, 'OSH');
INSERT INTO `departments` VALUES ('21', 'Physician', '1', '0', '2015-09-18 15:42:08', '1', '2015-09-28 13:05:44', '1', null, 'OSH');
INSERT INTO `departments` VALUES ('22', 'Pathology', '1', '0', '2015-09-18 16:30:54', '1', '2015-09-28 13:05:44', '1', null, 'OSH');
INSERT INTO `departments` VALUES ('23', 'Paediatrics', '1', '0', '2015-09-18 16:34:26', '1', '2015-09-28 13:05:44', '1', null, 'OSH');
INSERT INTO `departments` VALUES ('24', 'Opthamology', '1', '0', '2015-09-18 16:39:50', '1', '2015-09-29 11:25:26', '0', null, 'OSH');
INSERT INTO `departments` VALUES ('25', 'Psychiatry', '1', '0', '2015-09-18 16:47:03', '1', '2015-09-28 13:05:44', '1', null, 'OSH');
INSERT INTO `departments` VALUES ('26', 'Demertology', '1', '0', '2015-09-18 16:51:54', '1', '2015-09-28 13:05:44', '1', null, 'OSH');

-- ----------------------------
-- Table structure for `document_uploads`
-- ----------------------------
DROP TABLE IF EXISTS `document_uploads`;
CREATE TABLE `document_uploads` (
  `document_upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `document_name` varchar(255) DEFAULT NULL,
  `document_upload_name` varchar(255) DEFAULT NULL,
  `individual_id` int(11) DEFAULT NULL,
  `document_status` int(11) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`document_upload_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of document_uploads
-- ----------------------------
INSERT INTO `document_uploads` VALUES ('1', '0', '6df3c328e2b7f25c4400b532945543ac.jpg', '95', '1', '0', '2015-12-01 14:47:23', '0', null);
INSERT INTO `document_uploads` VALUES ('2', 'Behtem', '0', '95', '1', '0', '2015-12-01 14:49:49', '0', null);

-- ----------------------------
-- Table structure for `gender`
-- ----------------------------
DROP TABLE IF EXISTS `gender`;
CREATE TABLE `gender` (
  `gender_id` int(11) NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`gender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gender
-- ----------------------------
INSERT INTO `gender` VALUES ('1', 'Male');
INSERT INTO `gender` VALUES ('2', 'Female');

-- ----------------------------
-- Table structure for `group`
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_contact_onames` varchar(45) DEFAULT NULL,
  `group_contact_fname` varchar(20) NOT NULL,
  `group_dob` date DEFAULT NULL,
  `group_email` varchar(45) DEFAULT NULL,
  `group_phone` varchar(45) DEFAULT NULL,
  `group_address` varchar(45) DEFAULT NULL,
  `group_locality` varchar(45) DEFAULT NULL,
  `group_username` varchar(45) DEFAULT NULL,
  `group_password` varchar(45) DEFAULT 'e10adc3949ba59abbe56e057f20f883e',
  `group_status` int(11) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `group_number` varchar(100) DEFAULT NULL,
  `group_post_code` varchar(10) DEFAULT NULL,
  `group_city` varchar(30) DEFAULT NULL,
  `group_account_status` tinyint(1) NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `group_phone2` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('1', 'Masitsa Mahasi', 'Alvaro', '0000-00-00', 'group@gmail.com', '0726149351', '70922', 'Westlands', null, 'e10adc3949ba59abbe56e057f20f883e', '0', null, null, null, null, '2015-08-04 13:48:44', '00125893', '00400', 'Westlands', '1', 'It Provider', '0774834466');

-- ----------------------------
-- Table structure for `income`
-- ----------------------------
DROP TABLE IF EXISTS `income`;
CREATE TABLE `income` (
  `income_id` int(11) NOT NULL AUTO_INCREMENT,
  `income_type_id` int(11) DEFAULT NULL,
  `income_status` tinyint(4) DEFAULT NULL,
  `income_date` date DEFAULT NULL,
  `income_amount` double DEFAULT NULL,
  `income_payment_date` date DEFAULT NULL,
  `income_payment_amount` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`income_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of income
-- ----------------------------
INSERT INTO `income` VALUES ('1', '1', null, '2009-01-01', '1000000', '2016-01-31', '1500000', '2016-02-04 12:57:42', '0', '2016-02-04 15:18:48', '0');
INSERT INTO `income` VALUES ('2', '2', null, '2016-01-01', '20000000', '2015-12-31', '30000000', '2016-02-04 16:16:31', '0', '2016-02-04 18:16:31', '0');

-- ----------------------------
-- Table structure for `income_type`
-- ----------------------------
DROP TABLE IF EXISTS `income_type`;
CREATE TABLE `income_type` (
  `income_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `income_type_name` varchar(255) DEFAULT NULL,
  `income_type_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`income_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of income_type
-- ----------------------------
INSERT INTO `income_type` VALUES ('1', 'Treasury bill', null);
INSERT INTO `income_type` VALUES ('2', 'Shares', null);
INSERT INTO `income_type` VALUES ('3', 'Corporate bond', null);
INSERT INTO `income_type` VALUES ('4', 'Fixed deposit', null);
INSERT INTO `income_type` VALUES ('5', ' Call deposit', null);
INSERT INTO `income_type` VALUES ('6', 'Treasury bonds', null);

-- ----------------------------
-- Table structure for `individual`
-- ----------------------------
DROP TABLE IF EXISTS `individual`;
CREATE TABLE `individual` (
  `individual_id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_mname` varchar(20) DEFAULT NULL,
  `individual_lname` varchar(20) DEFAULT NULL,
  `individual_fname` varchar(20) NOT NULL,
  `individual_dob` date DEFAULT NULL,
  `individual_email` varchar(45) DEFAULT NULL,
  `individual_phone` varchar(45) DEFAULT NULL,
  `individual_phone2` varchar(45) DEFAULT NULL,
  `individual_address` varchar(45) DEFAULT NULL,
  `individual_locality` varchar(45) DEFAULT NULL,
  `civilstatus_id` int(11) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `individual_username` varchar(45) DEFAULT NULL,
  `individual_password` varchar(45) DEFAULT 'e10adc3949ba59abbe56e057f20f883e',
  `individual_status` int(11) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `individual_number` varchar(100) DEFAULT NULL,
  `individual_post_code` varchar(10) DEFAULT NULL,
  `individual_city` varchar(30) DEFAULT NULL,
  `individual_account_status` tinyint(1) NOT NULL DEFAULT '1',
  `group_id` int(11) DEFAULT NULL,
  `image` varchar(60) DEFAULT NULL,
  `signature` varchar(60) DEFAULT NULL,
  `individual_email2` varchar(50) DEFAULT NULL,
  `document_id` tinyint(1) DEFAULT NULL,
  `document_number` varchar(50) DEFAULT NULL,
  `document_place` varchar(50) DEFAULT NULL,
  `kra_pin` int(11) DEFAULT NULL,
  `branch_code` varchar(5) DEFAULT NULL,
  `retirement_date` date DEFAULT NULL,
  PRIMARY KEY (`individual_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of individual
-- ----------------------------
INSERT INTO `individual` VALUES ('1', 'Mahasi', 'Masitsa', 'Alvaro', '1989-10-20', 'alvaro@omnis.co.ke', '0726149351', '0774834466', '70922', 'Lower Kabete', '1', '1', '1', null, 'e10adc3949ba59abbe56e057f20f883e', '0', null, null, null, null, '2016-02-03 16:00:45', '0', '00400', 'Lower Kabete', '1', null, null, null, '', '1', '27293827', 'Westlands', '0', null, '2030-10-20');

-- ----------------------------
-- Table structure for `individual_dependant`
-- ----------------------------
DROP TABLE IF EXISTS `individual_dependant`;
CREATE TABLE `individual_dependant` (
  `individual_dependant_id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_dependant_onames` varchar(45) DEFAULT NULL,
  `individual_dependant_fname` varchar(20) NOT NULL,
  `individual_dependant_email` varchar(45) DEFAULT NULL,
  `individual_dependant_phone` varchar(45) DEFAULT NULL,
  `individual_dependant_locality` varchar(45) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `relationship_id` int(11) DEFAULT NULL,
  `individual_dependant_status` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `individual_id` int(11) NOT NULL,
  `retirement_date` date DEFAULT NULL,
  PRIMARY KEY (`individual_dependant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of individual_dependant
-- ----------------------------

-- ----------------------------
-- Table structure for `individual_emergency`
-- ----------------------------
DROP TABLE IF EXISTS `individual_emergency`;
CREATE TABLE `individual_emergency` (
  `individual_emergency_id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_emergency_onames` varchar(45) DEFAULT NULL,
  `individual_emergency_fname` varchar(20) NOT NULL,
  `individual_emergency_email` varchar(45) DEFAULT NULL,
  `individual_emergency_phone` varchar(45) DEFAULT NULL,
  `individual_emergency_locality` varchar(45) DEFAULT NULL,
  `individual_emergency_email2` varchar(50) DEFAULT NULL,
  `individual_emergency_phone2` varchar(50) DEFAULT NULL,
  `relationship_id` int(11) DEFAULT NULL,
  `individual_emergency_status` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `individual_id` int(11) NOT NULL,
  `individual_emergency_dob` date DEFAULT NULL,
  `document_id` tinyint(1) DEFAULT NULL,
  `document_number` varchar(30) DEFAULT NULL,
  `document_place` varchar(50) DEFAULT NULL,
  `individual_emergency_address` varchar(50) DEFAULT NULL,
  `individual_emergency_city` varchar(50) DEFAULT NULL,
  `individual_emergency_post_code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`individual_emergency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of individual_emergency
-- ----------------------------

-- ----------------------------
-- Table structure for `individual_identification`
-- ----------------------------
DROP TABLE IF EXISTS `individual_identification`;
CREATE TABLE `individual_identification` (
  `individual_identification_id` int(11) NOT NULL AUTO_INCREMENT,
  `document_name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `document_status` int(11) DEFAULT '1',
  `individual_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`individual_identification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of individual_identification
-- ----------------------------

-- ----------------------------
-- Table structure for `individual_job`
-- ----------------------------
DROP TABLE IF EXISTS `individual_job`;
CREATE TABLE `individual_job` (
  `individual_job_id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_id` int(11) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `individual_job_status` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `employer` varchar(50) NOT NULL,
  `employment_date` date NOT NULL,
  `resignation_date` date DEFAULT NULL,
  PRIMARY KEY (`individual_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of individual_job
-- ----------------------------

-- ----------------------------
-- Table structure for `individual_loan`
-- ----------------------------
DROP TABLE IF EXISTS `individual_loan`;
CREATE TABLE `individual_loan` (
  `individual_loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `individual_loan_status` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `purpose` varchar(255) NOT NULL,
  `proposed_amount` double NOT NULL,
  `approved_amount` double DEFAULT NULL,
  `disbursed_amount` double DEFAULT NULL,
  `loans_plan_id` int(11) DEFAULT NULL,
  `grace_period` int(11) DEFAULT NULL,
  `no_of_repayments` int(11) DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `approved_date` date DEFAULT NULL,
  `disbursed_date` date DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `disbursed_by` int(11) DEFAULT NULL,
  `installment_type_duration` int(11) DEFAULT NULL,
  `interest_id` int(11) DEFAULT NULL,
  `interest_rate` double DEFAULT NULL,
  `branch_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`individual_loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of individual_loan
-- ----------------------------

-- ----------------------------
-- Table structure for `individual_savings`
-- ----------------------------
DROP TABLE IF EXISTS `individual_savings`;
CREATE TABLE `individual_savings` (
  `individual_savings_id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_id` int(11) NOT NULL,
  `savings_plan_id` int(11) NOT NULL,
  `individual_savings_opening_balance` double NOT NULL,
  `created` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `individual_savings_status` tinyint(1) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `document_number` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`individual_savings_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of individual_savings
-- ----------------------------

-- ----------------------------
-- Table structure for `installment_type`
-- ----------------------------
DROP TABLE IF EXISTS `installment_type`;
CREATE TABLE `installment_type` (
  `installment_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `installment_type_name` varchar(50) DEFAULT NULL,
  `installment_type_duration` int(11) DEFAULT NULL,
  PRIMARY KEY (`installment_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of installment_type
-- ----------------------------
INSERT INTO `installment_type` VALUES ('1', 'Daily', '1');
INSERT INTO `installment_type` VALUES ('2', 'Weekly', '7');
INSERT INTO `installment_type` VALUES ('3', 'Monthly', '30');
INSERT INTO `installment_type` VALUES ('4', 'User defined', '0');

-- ----------------------------
-- Table structure for `interest`
-- ----------------------------
DROP TABLE IF EXISTS `interest`;
CREATE TABLE `interest` (
  `interest_id` int(11) NOT NULL AUTO_INCREMENT,
  `interest_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`interest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of interest
-- ----------------------------
INSERT INTO `interest` VALUES ('1', 'Straight line');
INSERT INTO `interest` VALUES ('2', 'Reducing balance');

-- ----------------------------
-- Table structure for `inventory_level_status`
-- ----------------------------
DROP TABLE IF EXISTS `inventory_level_status`;
CREATE TABLE `inventory_level_status` (
  `inventory_level_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_level_status_name` varchar(255) NOT NULL,
  PRIMARY KEY (`inventory_level_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inventory_level_status
-- ----------------------------
INSERT INTO `inventory_level_status` VALUES ('1', 'Order Creation');
INSERT INTO `inventory_level_status` VALUES ('2', 'Department Approval');
INSERT INTO `inventory_level_status` VALUES ('3', 'Supplier Approval');
INSERT INTO `inventory_level_status` VALUES ('4', 'Financial Approval');
INSERT INTO `inventory_level_status` VALUES ('5', 'Administrative / LPO generation');
INSERT INTO `inventory_level_status` VALUES ('6', 'LPO Approval');
INSERT INTO `inventory_level_status` VALUES ('7', 'Delivery for Order');

-- ----------------------------
-- Table structure for `job_title`
-- ----------------------------
DROP TABLE IF EXISTS `job_title`;
CREATE TABLE `job_title` (
  `job_title_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title_name` varchar(100) NOT NULL,
  PRIMARY KEY (`job_title_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of job_title
-- ----------------------------
INSERT INTO `job_title` VALUES ('1', 'Administrator');
INSERT INTO `job_title` VALUES ('3', 'Accountant');
INSERT INTO `job_title` VALUES ('9', 'Sales rep');
INSERT INTO `job_title` VALUES ('10', 'Receptionist');
INSERT INTO `job_title` VALUES ('11', 'Director');
INSERT INTO `job_title` VALUES ('12', 'Doctor');
INSERT INTO `job_title` VALUES ('13', 'Director of Operations');
INSERT INTO `job_title` VALUES ('14', 'Director of Clinical Services');
INSERT INTO `job_title` VALUES ('15', 'CEO');

-- ----------------------------
-- Table structure for `leave_duration`
-- ----------------------------
DROP TABLE IF EXISTS `leave_duration`;
CREATE TABLE `leave_duration` (
  `leave_duration_id` int(200) NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `leave_type_id` int(200) NOT NULL,
  `personnel_id` int(200) NOT NULL,
  `leave_duration_status` int(20) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`leave_duration_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of leave_duration
-- ----------------------------
INSERT INTO `leave_duration` VALUES ('4', '2015-08-14', '2015-08-21', '3', '85', '0', '85', '85', '2015-08-12 15:32:04', null);
INSERT INTO `leave_duration` VALUES ('2', '2015-08-23', '2015-08-31', '1', '92', '1', '85', '85', '2015-08-12 15:06:10', null);
INSERT INTO `leave_duration` VALUES ('5', '2015-09-01', '2015-09-08', '3', '85', '0', '85', '85', '2015-08-12 15:33:23', null);
INSERT INTO `leave_duration` VALUES ('6', '2015-08-17', '2015-08-21', '4', '93', '0', '85', '85', '2015-08-13 14:05:21', null);
INSERT INTO `leave_duration` VALUES ('7', '2015-11-04', '2015-11-15', '4', '4', '0', '35', '35', '2015-10-28 13:29:38', null);

-- ----------------------------
-- Table structure for `leave_type`
-- ----------------------------
DROP TABLE IF EXISTS `leave_type`;
CREATE TABLE `leave_type` (
  `leave_type_id` int(200) NOT NULL AUTO_INCREMENT,
  `leave_type_name` varchar(200) NOT NULL,
  `leave_type_status` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`leave_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of leave_type
-- ----------------------------
INSERT INTO `leave_type` VALUES ('1', 'Paternity', '0');
INSERT INTO `leave_type` VALUES ('2', 'Maternity', '0');
INSERT INTO `leave_type` VALUES ('3', 'Sick', '0');
INSERT INTO `leave_type` VALUES ('4', 'Annual', '0');
INSERT INTO `leave_type` VALUES ('6', 'Compasionate', '0');

-- ----------------------------
-- Table structure for `ledger`
-- ----------------------------
DROP TABLE IF EXISTS `ledger`;
CREATE TABLE `ledger` (
  `ledger_id` int(11) NOT NULL AUTO_INCREMENT,
  `ledger_type_id` int(11) NOT NULL,
  `ledger_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ledger_amount` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `primary_key` int(11) NOT NULL,
  PRIMARY KEY (`ledger_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ledger
-- ----------------------------

-- ----------------------------
-- Table structure for `ledger_type`
-- ----------------------------
DROP TABLE IF EXISTS `ledger_type`;
CREATE TABLE `ledger_type` (
  `ledger_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `ledger_type_name` varchar(255) NOT NULL,
  PRIMARY KEY (`ledger_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ledger_type
-- ----------------------------
INSERT INTO `ledger_type` VALUES ('1', 'DEBIT');
INSERT INTO `ledger_type` VALUES ('2', 'CREDIT');

-- ----------------------------
-- Table structure for `loans_plan`
-- ----------------------------
DROP TABLE IF EXISTS `loans_plan`;
CREATE TABLE `loans_plan` (
  `loans_plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `loans_plan_name` varchar(100) DEFAULT NULL,
  `loans_plan_status` tinyint(1) DEFAULT '0',
  `interest_id` int(11) DEFAULT NULL,
  `installment_type_id` int(11) DEFAULT NULL,
  `grace_period_minimum` int(11) DEFAULT NULL,
  `grace_period_maximum` int(11) DEFAULT NULL,
  `grace_period_default` int(11) DEFAULT NULL,
  `charge_interest_over_grace_period` tinyint(1) DEFAULT NULL,
  `maximum_loan_amount` double DEFAULT NULL,
  `minimum_loan_amount` double DEFAULT NULL,
  `custom_loan_amount` double DEFAULT NULL,
  `maximum_number_of_installments` double DEFAULT NULL,
  `minimum_number_of_installments` double DEFAULT NULL,
  `custom_number_of_installments` double DEFAULT NULL,
  `minimum_late_fee_on_total_loan` double DEFAULT NULL,
  `maximum_late_fee_on_total_loan` double DEFAULT NULL,
  `custom_late_fee_on_total_loan` double DEFAULT NULL,
  `minimum_late_fee_on_overdue_principal` double DEFAULT NULL,
  `maximum_late_fee_on_overdue_principal` double DEFAULT NULL,
  `custom_late_fee_on_overdue_principal` double DEFAULT NULL,
  `minimum_late_fee_on_overdue_interest` double DEFAULT NULL,
  `maximum_late_fee_on_overdue_interest` double DEFAULT NULL,
  `custom_late_fee_on_overdue_interest` double DEFAULT NULL,
  `maximum_number_of_guarantors` int(11) DEFAULT NULL,
  `minimum_number_of_guarantors` int(11) DEFAULT NULL,
  `custom_number_of_guarantors` int(11) DEFAULT NULL,
  `interest_rate` double DEFAULT NULL,
  PRIMARY KEY (`loans_plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of loans_plan
-- ----------------------------
INSERT INTO `loans_plan` VALUES ('1', 'Car loan', '1', '2', '3', '30', '90', '30', '1', '1000000', '500000', '0', '36', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '3', '0', '15');
INSERT INTO `loans_plan` VALUES ('2', 'Education loan', '1', '1', '3', '0', '0', '0', '1', '2000000', '1000000', '0', '48', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '10');
INSERT INTO `loans_plan` VALUES ('3', 'Short loan', '1', '2', '3', '30', '90', '30', '1', '100000', '50000', '0', '10', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '20');
INSERT INTO `loans_plan` VALUES ('4', 'Development loan', '1', '2', '3', '0', '0', '0', '1', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for `loans_plan_entry_fees`
-- ----------------------------
DROP TABLE IF EXISTS `loans_plan_entry_fees`;
CREATE TABLE `loans_plan_entry_fees` (
  `loans_plan_entry_fees_id` int(11) NOT NULL AUTO_INCREMENT,
  `loans_plan_entry_fees_name` varchar(255) NOT NULL,
  `loans_plan_entry_fees_min` int(11) NOT NULL,
  `loans_plan_entry_fees_max` int(11) NOT NULL,
  `loans_plan_entry_fees_value` int(11) NOT NULL,
  `loans_plan_entry_fees_rate` varchar(255) NOT NULL,
  `loans_plan_id` int(11) NOT NULL,
  PRIMARY KEY (`loans_plan_entry_fees_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of loans_plan_entry_fees
-- ----------------------------
INSERT INTO `loans_plan_entry_fees` VALUES ('1', 'Starting Fee', '0', '0', '300', 'False', '1');
INSERT INTO `loans_plan_entry_fees` VALUES ('3', 'Admin Fee', '200', '500', '400', 'False', '1');

-- ----------------------------
-- Table structure for `loans_plan_interest_scheme`
-- ----------------------------
DROP TABLE IF EXISTS `loans_plan_interest_scheme`;
CREATE TABLE `loans_plan_interest_scheme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of loans_plan_interest_scheme
-- ----------------------------
INSERT INTO `loans_plan_interest_scheme` VALUES ('1', 'Actual/Actual');
INSERT INTO `loans_plan_interest_scheme` VALUES ('2', 'Actual/360');
INSERT INTO `loans_plan_interest_scheme` VALUES ('3', '30/Actual');
INSERT INTO `loans_plan_interest_scheme` VALUES ('4', '30/360');

-- ----------------------------
-- Table structure for `loans_plan_old`
-- ----------------------------
DROP TABLE IF EXISTS `loans_plan_old`;
CREATE TABLE `loans_plan_old` (
  `loans_plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `loans_plan_status` int(11) NOT NULL DEFAULT '0',
  `loans_plan_name` varchar(255) NOT NULL,
  `loans_plan_installment_type` varchar(255) NOT NULL,
  `loans_plan_grace_period_min` int(11) NOT NULL,
  `loans_plan_grace_period_max` int(11) NOT NULL,
  `loans_plan_grace_period_default` int(11) NOT NULL,
  `loans_plan_grace_period_interest` int(11) NOT NULL,
  `loans_plan_interest_scheme` varchar(255) NOT NULL,
  `loans_plan_funding_line` varchar(255) NOT NULL,
  `loans_plan_min_amount` int(11) NOT NULL,
  `loans_plan_max_amount` int(11) NOT NULL,
  `loans_plan_custom_amount` int(11) NOT NULL,
  `loans_plan_annual_min_interest` int(11) NOT NULL,
  `loans_plan_annual_max_interest` int(11) NOT NULL,
  `loans_plan_annual_custom_interest` int(11) NOT NULL,
  `loans_plan_min_installments` int(11) NOT NULL,
  `loans_plan_max_installments` int(11) NOT NULL,
  `loans_plan_custom_installments` int(11) NOT NULL,
  `loans_plan_entry_fees_id` int(11) NOT NULL,
  `loans_plan_late_fee_on_total_min` int(11) NOT NULL,
  `loans_plan_late_fee_on_total_max` int(11) NOT NULL,
  `loans_plan_late_fee_on_total_custom_value` int(11) NOT NULL,
  `loans_plan_lfoop_min` int(11) NOT NULL,
  `loans_plan_lfoop_max` int(11) NOT NULL,
  `loans_plan_lfoop_custom_value` int(11) NOT NULL,
  `loans_plan_lfoolb_min` int(11) NOT NULL,
  `loans_plan_lfoolb_max` int(11) NOT NULL,
  `loans_plan_lfoolb_custom_value` int(11) NOT NULL,
  `loans_plan_lfooverdue_min` int(11) NOT NULL,
  `loans_plan_lfooverdue_max` int(11) NOT NULL,
  `loans_plan_lfooverdue_custom_value` int(11) NOT NULL,
  `atr_fees_min` int(11) NOT NULL,
  `atr_fees_max` int(11) NOT NULL,
  `atr_fees_custom_value` int(11) NOT NULL,
  `apr_fees_min` int(11) NOT NULL,
  `apr_fees_max` int(11) NOT NULL,
  `apr_fees_custom_value` int(11) NOT NULL,
  `use_line_of_credit` tinyint(1) NOT NULL,
  `max_number_of_tranches` int(11) NOT NULL,
  `total_amout_of_loc_min` int(11) NOT NULL,
  `total_amout_of_loc_max` int(11) NOT NULL,
  `total_amout_of_loc_custom_value` int(11) NOT NULL,
  `number_of_installments_min` int(11) NOT NULL,
  `number_of_installments_max` int(11) NOT NULL,
  `number_of_installments_custom_value` int(11) NOT NULL,
  `credit_insurance_min` int(11) NOT NULL,
  `credit_insurance_max` int(11) NOT NULL,
  `credit_insurance_custom_value` int(11) NOT NULL,
  `use_gc` tinyint(1) NOT NULL,
  `min_gc` int(11) NOT NULL,
  `set_separate_gc` tinyint(1) NOT NULL,
  `min_guarantors` int(11) NOT NULL,
  `min_collaterals` int(11) NOT NULL,
  `use_compulsory_savings` int(11) NOT NULL,
  `compulsory_savings_min` int(11) NOT NULL,
  `compulsory_savings_max` int(11) NOT NULL,
  `compulsory_savings_custom_value` int(11) NOT NULL,
  `min_number_of_tranches` int(11) NOT NULL,
  `custom_number_of_tranches` int(11) NOT NULL,
  `interest_id` int(11) DEFAULT NULL,
  `minimum_number_of_guarantors` int(11) DEFAULT NULL,
  `maximum_number_of_guarantors` int(11) DEFAULT NULL,
  `custom_number_of_guarantors` int(11) DEFAULT NULL,
  `installment_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`loans_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of loans_plan_old
-- ----------------------------

-- ----------------------------
-- Table structure for `loan_guarantor`
-- ----------------------------
DROP TABLE IF EXISTS `loan_guarantor`;
CREATE TABLE `loan_guarantor` (
  `loan_guarantor_id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_loan_id` int(11) DEFAULT NULL,
  `individual_id` int(11) DEFAULT NULL,
  `loan_guarantor_delete` int(11) DEFAULT '0',
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `guaranteed_amount` double DEFAULT NULL,
  PRIMARY KEY (`loan_guarantor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of loan_guarantor
-- ----------------------------
INSERT INTO `loan_guarantor` VALUES ('1', '1', '95', '0', null, null, '2015-12-01 15:27:48', '0', '2015-12-01 17:27:48', '0', '50000');
INSERT INTO `loan_guarantor` VALUES ('2', '1', '93', '0', null, null, '2015-12-01 15:28:04', '0', '2015-12-01 17:28:04', '0', '50000');

-- ----------------------------
-- Table structure for `loan_payment`
-- ----------------------------
DROP TABLE IF EXISTS `loan_payment`;
CREATE TABLE `loan_payment` (
  `loan_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_loan_id` int(11) DEFAULT NULL,
  `loan_payment_delete` tinyint(1) DEFAULT '0',
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `payment_amount` double DEFAULT NULL,
  `payment_interest` double DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  PRIMARY KEY (`loan_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of loan_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `loan_plan_installment_type`
-- ----------------------------
DROP TABLE IF EXISTS `loan_plan_installment_type`;
CREATE TABLE `loan_plan_installment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of loan_plan_installment_type
-- ----------------------------
INSERT INTO `loan_plan_installment_type` VALUES ('1', 'Monthly');
INSERT INTO `loan_plan_installment_type` VALUES ('2', 'Weekly\r\n');
INSERT INTO `loan_plan_installment_type` VALUES ('3', 'Daily');
INSERT INTO `loan_plan_installment_type` VALUES ('4', 'Maturity');
INSERT INTO `loan_plan_installment_type` VALUES ('5', '30 days');

-- ----------------------------
-- Table structure for `loan_scheme`
-- ----------------------------
DROP TABLE IF EXISTS `loan_scheme`;
CREATE TABLE `loan_scheme` (
  `loan_scheme_id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_scheme_name` varchar(100) NOT NULL,
  `loan_scheme_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`loan_scheme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of loan_scheme
-- ----------------------------
INSERT INTO `loan_scheme` VALUES ('3', 'Family bank loan 2', '1');

-- ----------------------------
-- Table structure for `loan_type`
-- ----------------------------
DROP TABLE IF EXISTS `loan_type`;
CREATE TABLE `loan_type` (
  `loan_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_type_name` varchar(20) DEFAULT NULL,
  `loan_type_status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`loan_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of loan_type
-- ----------------------------
INSERT INTO `loan_type` VALUES ('1', 'Pending approval', '0');
INSERT INTO `loan_type` VALUES ('2', 'Approved', '1');
INSERT INTO `loan_type` VALUES ('3', 'Disbursed', '2');

-- ----------------------------
-- Table structure for `month`
-- ----------------------------
DROP TABLE IF EXISTS `month`;
CREATE TABLE `month` (
  `month_id` int(11) NOT NULL AUTO_INCREMENT,
  `month_name` varchar(5) NOT NULL,
  PRIMARY KEY (`month_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of month
-- ----------------------------
INSERT INTO `month` VALUES ('1', 'Jan');
INSERT INTO `month` VALUES ('2', 'Feb');
INSERT INTO `month` VALUES ('3', 'Mar');
INSERT INTO `month` VALUES ('4', 'Apr');
INSERT INTO `month` VALUES ('5', 'May');
INSERT INTO `month` VALUES ('6', 'Jun');
INSERT INTO `month` VALUES ('7', 'Jul');
INSERT INTO `month` VALUES ('8', 'Aug');
INSERT INTO `month` VALUES ('9', 'Sep');
INSERT INTO `month` VALUES ('10', 'Oct');
INSERT INTO `month` VALUES ('11', 'Nov');
INSERT INTO `month` VALUES ('12', 'Dec');

-- ----------------------------
-- Table structure for `other_deduction`
-- ----------------------------
DROP TABLE IF EXISTS `other_deduction`;
CREATE TABLE `other_deduction` (
  `other_deduction_id` int(11) NOT NULL AUTO_INCREMENT,
  `other_deduction_name` varchar(45) DEFAULT NULL,
  `other_deduction_status` tinyint(1) NOT NULL DEFAULT '1',
  `other_deduction_abbr` varchar(10) NOT NULL,
  `other_deduction_taxable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`other_deduction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of other_deduction
-- ----------------------------

-- ----------------------------
-- Table structure for `payment`
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_name` varchar(45) DEFAULT NULL,
  `payment_status` int(11) NOT NULL DEFAULT '0',
  `payment_abbr` varchar(10) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payment
-- ----------------------------

-- ----------------------------
-- Table structure for `payment_method`
-- ----------------------------
DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE `payment_method` (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(50) NOT NULL,
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payment_method
-- ----------------------------

-- ----------------------------
-- Table structure for `payment_type`
-- ----------------------------
DROP TABLE IF EXISTS `payment_type`;
CREATE TABLE `payment_type` (
  `payment_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type_name` varchar(20) NOT NULL,
  `payment_type_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`payment_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payment_type
-- ----------------------------

-- ----------------------------
-- Table structure for `payroll`
-- ----------------------------
DROP TABLE IF EXISTS `payroll`;
CREATE TABLE `payroll` (
  `payroll_id` int(11) NOT NULL AUTO_INCREMENT,
  `month_id` int(11) NOT NULL,
  `payroll_year` year(4) NOT NULL,
  `payroll_status` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`payroll_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payroll
-- ----------------------------
INSERT INTO `payroll` VALUES ('1', '8', '2015', '1', '2015-09-01 14:45:01', '85', '2015-09-01 16:44:37', '85', '1');
INSERT INTO `payroll` VALUES ('2', '9', '2015', '0', '2015-09-08 09:30:41', '0', '2015-09-08 11:30:17', '0', '2');
INSERT INTO `payroll` VALUES ('3', '9', '2015', '0', '2015-09-23 11:08:30', '3', '2015-09-23 12:08:06', '3', '2');
INSERT INTO `payroll` VALUES ('4', '9', '2015', '0', '2015-09-23 13:29:34', '3', '2015-09-23 14:29:10', '3', '2');
INSERT INTO `payroll` VALUES ('5', '9', '2015', '0', '2015-09-23 16:46:50', '0', '2015-09-23 17:46:26', '0', '2');
INSERT INTO `payroll` VALUES ('6', '9', '2015', '0', '2015-09-25 15:40:18', '35', '2015-09-25 16:39:54', '35', '2');
INSERT INTO `payroll` VALUES ('7', '9', '2015', '0', '2015-09-25 15:44:56', '35', '2015-09-25 16:44:32', '35', '2');
INSERT INTO `payroll` VALUES ('8', '9', '2015', '0', '2015-09-30 12:39:19', '35', '2015-09-30 13:38:55', '35', '2');
INSERT INTO `payroll` VALUES ('9', '9', '2015', '0', '2015-09-30 12:43:30', '35', '2015-09-30 13:43:06', '35', '2');
INSERT INTO `payroll` VALUES ('10', '9', '2015', '0', '2015-09-30 12:43:44', '35', '2015-09-30 13:43:20', '35', '2');
INSERT INTO `payroll` VALUES ('11', '9', '2015', '0', '2015-09-30 12:54:53', '35', '2015-09-30 13:54:29', '35', '2');
INSERT INTO `payroll` VALUES ('12', '9', '2015', '0', '2015-09-30 15:58:59', '35', '2015-09-30 16:58:35', '35', '2');
INSERT INTO `payroll` VALUES ('13', '9', '2015', '0', '2015-09-30 15:59:25', '35', '2015-09-30 16:59:01', '35', '2');
INSERT INTO `payroll` VALUES ('14', '10', '2015', '0', '2015-10-07 10:37:04', '3', '2015-10-07 11:36:40', '3', '2');
INSERT INTO `payroll` VALUES ('15', '9', '2015', '1', '2015-10-07 10:37:21', '3', '2015-10-07 11:36:57', '3', '2');
INSERT INTO `payroll` VALUES ('16', '10', '2015', '0', '2015-10-28 12:30:42', '35', '2015-10-28 12:30:18', '35', '2');
INSERT INTO `payroll` VALUES ('17', '10', '2015', '0', '2015-10-28 12:50:07', '35', '2015-10-28 12:49:43', '35', '2');
INSERT INTO `payroll` VALUES ('18', '10', '2015', '1', '2015-10-28 12:53:40', '35', '2015-10-28 12:53:16', '35', '2');

-- ----------------------------
-- Table structure for `payroll_item`
-- ----------------------------
DROP TABLE IF EXISTS `payroll_item`;
CREATE TABLE `payroll_item` (
  `payroll_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `table` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `payroll_item_amount` double NOT NULL,
  `payroll_item_status` tinyint(1) NOT NULL DEFAULT '1',
  `personnel_id` int(11) NOT NULL,
  `payroll_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`payroll_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2696 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payroll_item
-- ----------------------------
INSERT INTO `payroll_item` VALUES ('1', '7', '1', '50000', '1', '92', '2');
INSERT INTO `payroll_item` VALUES ('2', '9', '1', '10034.7', '1', '92', '2');
INSERT INTO `payroll_item` VALUES ('3', '10', '1', '1162', '1', '92', '2');
INSERT INTO `payroll_item` VALUES ('4', '16', '1', '0', '1', '92', '2');
INSERT INTO `payroll_item` VALUES ('5', '15', '1', '0', '1', '92', '2');
INSERT INTO `payroll_item` VALUES ('6', '11', '1', '200', '1', '92', '2');
INSERT INTO `payroll_item` VALUES ('7', '12', '1', '1200', '1', '92', '2');
INSERT INTO `payroll_item` VALUES ('8', '4', '3', '3000', '1', '92', '2');
INSERT INTO `payroll_item` VALUES ('9', '5', '2', '5000', '1', '92', '2');
INSERT INTO `payroll_item` VALUES ('10', '9', '1', '0', '1', '3', '3');
INSERT INTO `payroll_item` VALUES ('11', '10', '1', '1162', '1', '3', '3');
INSERT INTO `payroll_item` VALUES ('12', '16', '1', '0', '1', '3', '3');
INSERT INTO `payroll_item` VALUES ('13', '15', '1', '0', '1', '3', '3');
INSERT INTO `payroll_item` VALUES ('14', '11', '1', '1080', '1', '3', '3');
INSERT INTO `payroll_item` VALUES ('15', '12', '1', '150', '1', '3', '3');
INSERT INTO `payroll_item` VALUES ('16', '9', '1', '0', '1', '4', '3');
INSERT INTO `payroll_item` VALUES ('17', '10', '1', '1162', '1', '4', '3');
INSERT INTO `payroll_item` VALUES ('18', '16', '1', '0', '1', '4', '3');
INSERT INTO `payroll_item` VALUES ('19', '15', '1', '0', '1', '4', '3');
INSERT INTO `payroll_item` VALUES ('20', '11', '1', '1080', '1', '4', '3');
INSERT INTO `payroll_item` VALUES ('21', '12', '1', '150', '1', '4', '3');
INSERT INTO `payroll_item` VALUES ('22', '9', '1', '0', '1', '5', '3');
INSERT INTO `payroll_item` VALUES ('23', '10', '1', '1162', '1', '5', '3');
INSERT INTO `payroll_item` VALUES ('24', '16', '1', '0', '1', '5', '3');
INSERT INTO `payroll_item` VALUES ('25', '15', '1', '0', '1', '5', '3');
INSERT INTO `payroll_item` VALUES ('26', '11', '1', '1080', '1', '5', '3');
INSERT INTO `payroll_item` VALUES ('27', '12', '1', '150', '1', '5', '3');
INSERT INTO `payroll_item` VALUES ('28', '9', '1', '0', '1', '6', '3');
INSERT INTO `payroll_item` VALUES ('29', '10', '1', '1162', '1', '6', '3');
INSERT INTO `payroll_item` VALUES ('30', '16', '1', '0', '1', '6', '3');
INSERT INTO `payroll_item` VALUES ('31', '15', '1', '0', '1', '6', '3');
INSERT INTO `payroll_item` VALUES ('32', '11', '1', '1080', '1', '6', '3');
INSERT INTO `payroll_item` VALUES ('33', '12', '1', '150', '1', '6', '3');
INSERT INTO `payroll_item` VALUES ('34', '9', '1', '0', '1', '7', '3');
INSERT INTO `payroll_item` VALUES ('35', '10', '1', '1162', '1', '7', '3');
INSERT INTO `payroll_item` VALUES ('36', '16', '1', '0', '1', '7', '3');
INSERT INTO `payroll_item` VALUES ('37', '15', '1', '0', '1', '7', '3');
INSERT INTO `payroll_item` VALUES ('38', '11', '1', '1080', '1', '7', '3');
INSERT INTO `payroll_item` VALUES ('39', '12', '1', '150', '1', '7', '3');
INSERT INTO `payroll_item` VALUES ('40', '9', '1', '0', '1', '8', '3');
INSERT INTO `payroll_item` VALUES ('41', '10', '1', '1162', '1', '8', '3');
INSERT INTO `payroll_item` VALUES ('42', '16', '1', '0', '1', '8', '3');
INSERT INTO `payroll_item` VALUES ('43', '15', '1', '0', '1', '8', '3');
INSERT INTO `payroll_item` VALUES ('44', '11', '1', '1080', '1', '8', '3');
INSERT INTO `payroll_item` VALUES ('45', '12', '1', '150', '1', '8', '3');
INSERT INTO `payroll_item` VALUES ('46', '7', '1', '30000', '1', '9', '3');
INSERT INTO `payroll_item` VALUES ('47', '3', '5', '5000', '1', '9', '3');
INSERT INTO `payroll_item` VALUES ('48', '9', '1', '5519.15', '1', '9', '3');
INSERT INTO `payroll_item` VALUES ('49', '10', '1', '1162', '1', '9', '3');
INSERT INTO `payroll_item` VALUES ('50', '16', '1', '0', '1', '9', '3');
INSERT INTO `payroll_item` VALUES ('51', '15', '1', '0', '1', '9', '3');
INSERT INTO `payroll_item` VALUES ('52', '11', '1', '1080', '1', '9', '3');
INSERT INTO `payroll_item` VALUES ('53', '12', '1', '900', '1', '9', '3');
INSERT INTO `payroll_item` VALUES ('54', '9', '1', '0', '1', '10', '3');
INSERT INTO `payroll_item` VALUES ('55', '10', '1', '1162', '1', '10', '3');
INSERT INTO `payroll_item` VALUES ('56', '16', '1', '0', '1', '10', '3');
INSERT INTO `payroll_item` VALUES ('57', '15', '1', '0', '1', '10', '3');
INSERT INTO `payroll_item` VALUES ('58', '11', '1', '1080', '1', '10', '3');
INSERT INTO `payroll_item` VALUES ('59', '12', '1', '150', '1', '10', '3');
INSERT INTO `payroll_item` VALUES ('60', '9', '1', '0', '1', '11', '3');
INSERT INTO `payroll_item` VALUES ('61', '10', '1', '1162', '1', '11', '3');
INSERT INTO `payroll_item` VALUES ('62', '16', '1', '0', '1', '11', '3');
INSERT INTO `payroll_item` VALUES ('63', '15', '1', '0', '1', '11', '3');
INSERT INTO `payroll_item` VALUES ('64', '11', '1', '1080', '1', '11', '3');
INSERT INTO `payroll_item` VALUES ('65', '12', '1', '150', '1', '11', '3');
INSERT INTO `payroll_item` VALUES ('66', '7', '1', '20000', '1', '12', '3');
INSERT INTO `payroll_item` VALUES ('67', '3', '5', '3000', '1', '12', '3');
INSERT INTO `payroll_item` VALUES ('68', '9', '1', '2888.85', '1', '12', '3');
INSERT INTO `payroll_item` VALUES ('69', '10', '1', '1162', '1', '12', '3');
INSERT INTO `payroll_item` VALUES ('70', '16', '1', '0', '1', '12', '3');
INSERT INTO `payroll_item` VALUES ('71', '15', '1', '0', '1', '12', '3');
INSERT INTO `payroll_item` VALUES ('72', '11', '1', '1080', '1', '12', '3');
INSERT INTO `payroll_item` VALUES ('73', '12', '1', '750', '1', '12', '3');
INSERT INTO `payroll_item` VALUES ('74', '9', '1', '0', '1', '13', '3');
INSERT INTO `payroll_item` VALUES ('75', '10', '1', '1162', '1', '13', '3');
INSERT INTO `payroll_item` VALUES ('76', '16', '1', '0', '1', '13', '3');
INSERT INTO `payroll_item` VALUES ('77', '15', '1', '0', '1', '13', '3');
INSERT INTO `payroll_item` VALUES ('78', '11', '1', '1080', '1', '13', '3');
INSERT INTO `payroll_item` VALUES ('79', '12', '1', '150', '1', '13', '3');
INSERT INTO `payroll_item` VALUES ('80', '9', '1', '0', '1', '14', '3');
INSERT INTO `payroll_item` VALUES ('81', '10', '1', '1162', '1', '14', '3');
INSERT INTO `payroll_item` VALUES ('82', '16', '1', '0', '1', '14', '3');
INSERT INTO `payroll_item` VALUES ('83', '15', '1', '0', '1', '14', '3');
INSERT INTO `payroll_item` VALUES ('84', '11', '1', '1080', '1', '14', '3');
INSERT INTO `payroll_item` VALUES ('85', '12', '1', '150', '1', '14', '3');
INSERT INTO `payroll_item` VALUES ('86', '9', '1', '0', '1', '15', '3');
INSERT INTO `payroll_item` VALUES ('87', '10', '1', '1162', '1', '15', '3');
INSERT INTO `payroll_item` VALUES ('88', '16', '1', '0', '1', '15', '3');
INSERT INTO `payroll_item` VALUES ('89', '15', '1', '0', '1', '15', '3');
INSERT INTO `payroll_item` VALUES ('90', '11', '1', '1080', '1', '15', '3');
INSERT INTO `payroll_item` VALUES ('91', '12', '1', '150', '1', '15', '3');
INSERT INTO `payroll_item` VALUES ('92', '9', '1', '0', '1', '16', '3');
INSERT INTO `payroll_item` VALUES ('93', '10', '1', '1162', '1', '16', '3');
INSERT INTO `payroll_item` VALUES ('94', '16', '1', '0', '1', '16', '3');
INSERT INTO `payroll_item` VALUES ('95', '15', '1', '0', '1', '16', '3');
INSERT INTO `payroll_item` VALUES ('96', '11', '1', '1080', '1', '16', '3');
INSERT INTO `payroll_item` VALUES ('97', '12', '1', '150', '1', '16', '3');
INSERT INTO `payroll_item` VALUES ('98', '9', '1', '0', '1', '17', '3');
INSERT INTO `payroll_item` VALUES ('99', '10', '1', '1162', '1', '17', '3');
INSERT INTO `payroll_item` VALUES ('100', '16', '1', '0', '1', '17', '3');
INSERT INTO `payroll_item` VALUES ('101', '15', '1', '0', '1', '17', '3');
INSERT INTO `payroll_item` VALUES ('102', '11', '1', '1080', '1', '17', '3');
INSERT INTO `payroll_item` VALUES ('103', '12', '1', '150', '1', '17', '3');
INSERT INTO `payroll_item` VALUES ('104', '9', '1', '0', '1', '19', '3');
INSERT INTO `payroll_item` VALUES ('105', '10', '1', '1162', '1', '19', '3');
INSERT INTO `payroll_item` VALUES ('106', '16', '1', '0', '1', '19', '3');
INSERT INTO `payroll_item` VALUES ('107', '15', '1', '0', '1', '19', '3');
INSERT INTO `payroll_item` VALUES ('108', '11', '1', '1080', '1', '19', '3');
INSERT INTO `payroll_item` VALUES ('109', '12', '1', '150', '1', '19', '3');
INSERT INTO `payroll_item` VALUES ('110', '9', '1', '0', '1', '20', '3');
INSERT INTO `payroll_item` VALUES ('111', '10', '1', '1162', '1', '20', '3');
INSERT INTO `payroll_item` VALUES ('112', '16', '1', '0', '1', '20', '3');
INSERT INTO `payroll_item` VALUES ('113', '15', '1', '0', '1', '20', '3');
INSERT INTO `payroll_item` VALUES ('114', '11', '1', '1080', '1', '20', '3');
INSERT INTO `payroll_item` VALUES ('115', '12', '1', '150', '1', '20', '3');
INSERT INTO `payroll_item` VALUES ('116', '9', '1', '0', '1', '21', '3');
INSERT INTO `payroll_item` VALUES ('117', '10', '1', '1162', '1', '21', '3');
INSERT INTO `payroll_item` VALUES ('118', '16', '1', '0', '1', '21', '3');
INSERT INTO `payroll_item` VALUES ('119', '15', '1', '0', '1', '21', '3');
INSERT INTO `payroll_item` VALUES ('120', '11', '1', '1080', '1', '21', '3');
INSERT INTO `payroll_item` VALUES ('121', '12', '1', '150', '1', '21', '3');
INSERT INTO `payroll_item` VALUES ('122', '9', '1', '0', '1', '22', '3');
INSERT INTO `payroll_item` VALUES ('123', '10', '1', '1162', '1', '22', '3');
INSERT INTO `payroll_item` VALUES ('124', '16', '1', '0', '1', '22', '3');
INSERT INTO `payroll_item` VALUES ('125', '15', '1', '0', '1', '22', '3');
INSERT INTO `payroll_item` VALUES ('126', '11', '1', '1080', '1', '22', '3');
INSERT INTO `payroll_item` VALUES ('127', '12', '1', '150', '1', '22', '3');
INSERT INTO `payroll_item` VALUES ('128', '7', '1', '35000', '1', '3', '4');
INSERT INTO `payroll_item` VALUES ('129', '3', '5', '5250', '1', '3', '4');
INSERT INTO `payroll_item` VALUES ('130', '9', '1', '6845.7', '1', '3', '4');
INSERT INTO `payroll_item` VALUES ('131', '10', '1', '1162', '1', '3', '4');
INSERT INTO `payroll_item` VALUES ('132', '16', '1', '0', '1', '3', '4');
INSERT INTO `payroll_item` VALUES ('133', '15', '1', '0', '1', '3', '4');
INSERT INTO `payroll_item` VALUES ('134', '11', '1', '1080', '1', '3', '4');
INSERT INTO `payroll_item` VALUES ('135', '12', '1', '1000', '1', '3', '4');
INSERT INTO `payroll_item` VALUES ('136', '7', '1', '20000', '1', '4', '4');
INSERT INTO `payroll_item` VALUES ('137', '3', '5', '3000', '1', '4', '4');
INSERT INTO `payroll_item` VALUES ('138', '9', '1', '2888.85', '1', '4', '4');
INSERT INTO `payroll_item` VALUES ('139', '10', '1', '1162', '1', '4', '4');
INSERT INTO `payroll_item` VALUES ('140', '16', '1', '0', '1', '4', '4');
INSERT INTO `payroll_item` VALUES ('141', '15', '1', '0', '1', '4', '4');
INSERT INTO `payroll_item` VALUES ('142', '11', '1', '1080', '1', '4', '4');
INSERT INTO `payroll_item` VALUES ('143', '12', '1', '750', '1', '4', '4');
INSERT INTO `payroll_item` VALUES ('144', '7', '1', '20000', '1', '5', '4');
INSERT INTO `payroll_item` VALUES ('145', '3', '5', '3000', '1', '5', '4');
INSERT INTO `payroll_item` VALUES ('146', '9', '1', '2888.85', '1', '5', '4');
INSERT INTO `payroll_item` VALUES ('147', '10', '1', '1162', '1', '5', '4');
INSERT INTO `payroll_item` VALUES ('148', '16', '1', '0', '1', '5', '4');
INSERT INTO `payroll_item` VALUES ('149', '15', '1', '0', '1', '5', '4');
INSERT INTO `payroll_item` VALUES ('150', '11', '1', '1080', '1', '5', '4');
INSERT INTO `payroll_item` VALUES ('151', '12', '1', '750', '1', '5', '4');
INSERT INTO `payroll_item` VALUES ('152', '7', '1', '25000', '1', '6', '4');
INSERT INTO `payroll_item` VALUES ('153', '3', '5', '3750', '1', '6', '4');
INSERT INTO `payroll_item` VALUES ('154', '9', '1', '4038.85', '1', '6', '4');
INSERT INTO `payroll_item` VALUES ('155', '10', '1', '1162', '1', '6', '4');
INSERT INTO `payroll_item` VALUES ('156', '16', '1', '0', '1', '6', '4');
INSERT INTO `payroll_item` VALUES ('157', '15', '1', '0', '1', '6', '4');
INSERT INTO `payroll_item` VALUES ('158', '11', '1', '1080', '1', '6', '4');
INSERT INTO `payroll_item` VALUES ('159', '12', '1', '850', '1', '6', '4');
INSERT INTO `payroll_item` VALUES ('160', '7', '1', '25000', '1', '7', '4');
INSERT INTO `payroll_item` VALUES ('161', '3', '5', '3750', '1', '7', '4');
INSERT INTO `payroll_item` VALUES ('162', '9', '1', '4038.85', '1', '7', '4');
INSERT INTO `payroll_item` VALUES ('163', '10', '1', '1162', '1', '7', '4');
INSERT INTO `payroll_item` VALUES ('164', '16', '1', '0', '1', '7', '4');
INSERT INTO `payroll_item` VALUES ('165', '15', '1', '0', '1', '7', '4');
INSERT INTO `payroll_item` VALUES ('166', '11', '1', '1080', '1', '7', '4');
INSERT INTO `payroll_item` VALUES ('167', '12', '1', '850', '1', '7', '4');
INSERT INTO `payroll_item` VALUES ('168', '7', '1', '7826', '1', '8', '4');
INSERT INTO `payroll_item` VALUES ('169', '3', '5', '1174', '1', '8', '4');
INSERT INTO `payroll_item` VALUES ('170', '9', '1', '792', '1', '8', '4');
INSERT INTO `payroll_item` VALUES ('171', '10', '1', '1162', '1', '8', '4');
INSERT INTO `payroll_item` VALUES ('172', '16', '1', '0', '1', '8', '4');
INSERT INTO `payroll_item` VALUES ('173', '15', '1', '0', '1', '8', '4');
INSERT INTO `payroll_item` VALUES ('174', '11', '1', '1080', '1', '8', '4');
INSERT INTO `payroll_item` VALUES ('175', '12', '1', '400', '1', '8', '4');
INSERT INTO `payroll_item` VALUES ('176', '7', '1', '10000', '1', '9', '4');
INSERT INTO `payroll_item` VALUES ('177', '3', '5', '1500', '1', '9', '4');
INSERT INTO `payroll_item` VALUES ('178', '9', '1', '1054.8', '1', '9', '4');
INSERT INTO `payroll_item` VALUES ('179', '10', '1', '1162', '1', '9', '4');
INSERT INTO `payroll_item` VALUES ('180', '16', '1', '0', '1', '9', '4');
INSERT INTO `payroll_item` VALUES ('181', '15', '1', '0', '1', '9', '4');
INSERT INTO `payroll_item` VALUES ('182', '11', '1', '1080', '1', '9', '4');
INSERT INTO `payroll_item` VALUES ('183', '12', '1', '400', '1', '9', '4');
INSERT INTO `payroll_item` VALUES ('184', '7', '1', '15000', '1', '10', '4');
INSERT INTO `payroll_item` VALUES ('185', '3', '5', '2250', '1', '10', '4');
INSERT INTO `payroll_item` VALUES ('186', '9', '1', '1917.3', '1', '10', '4');
INSERT INTO `payroll_item` VALUES ('187', '10', '1', '1162', '1', '10', '4');
INSERT INTO `payroll_item` VALUES ('188', '16', '1', '0', '1', '10', '4');
INSERT INTO `payroll_item` VALUES ('189', '15', '1', '0', '1', '10', '4');
INSERT INTO `payroll_item` VALUES ('190', '11', '1', '1080', '1', '10', '4');
INSERT INTO `payroll_item` VALUES ('191', '12', '1', '600', '1', '10', '4');
INSERT INTO `payroll_item` VALUES ('192', '7', '1', '15000', '1', '11', '4');
INSERT INTO `payroll_item` VALUES ('193', '3', '5', '2250', '1', '11', '4');
INSERT INTO `payroll_item` VALUES ('194', '9', '1', '1917.3', '1', '11', '4');
INSERT INTO `payroll_item` VALUES ('195', '10', '1', '1162', '1', '11', '4');
INSERT INTO `payroll_item` VALUES ('196', '16', '1', '0', '1', '11', '4');
INSERT INTO `payroll_item` VALUES ('197', '15', '1', '0', '1', '11', '4');
INSERT INTO `payroll_item` VALUES ('198', '11', '1', '1080', '1', '11', '4');
INSERT INTO `payroll_item` VALUES ('199', '12', '1', '600', '1', '11', '4');
INSERT INTO `payroll_item` VALUES ('200', '7', '1', '20000', '1', '12', '4');
INSERT INTO `payroll_item` VALUES ('201', '3', '5', '3000', '1', '12', '4');
INSERT INTO `payroll_item` VALUES ('202', '9', '1', '2888.85', '1', '12', '4');
INSERT INTO `payroll_item` VALUES ('203', '10', '1', '1162', '1', '12', '4');
INSERT INTO `payroll_item` VALUES ('204', '16', '1', '0', '1', '12', '4');
INSERT INTO `payroll_item` VALUES ('205', '15', '1', '0', '1', '12', '4');
INSERT INTO `payroll_item` VALUES ('206', '11', '1', '1080', '1', '12', '4');
INSERT INTO `payroll_item` VALUES ('207', '12', '1', '750', '1', '12', '4');
INSERT INTO `payroll_item` VALUES ('208', '7', '1', '27000', '1', '13', '4');
INSERT INTO `payroll_item` VALUES ('209', '3', '5', '4050', '1', '13', '4');
INSERT INTO `payroll_item` VALUES ('210', '9', '1', '4531.65', '1', '13', '4');
INSERT INTO `payroll_item` VALUES ('211', '10', '1', '1162', '1', '13', '4');
INSERT INTO `payroll_item` VALUES ('212', '16', '1', '0', '1', '13', '4');
INSERT INTO `payroll_item` VALUES ('213', '15', '1', '0', '1', '13', '4');
INSERT INTO `payroll_item` VALUES ('214', '11', '1', '1080', '1', '13', '4');
INSERT INTO `payroll_item` VALUES ('215', '12', '1', '900', '1', '13', '4');
INSERT INTO `payroll_item` VALUES ('216', '7', '1', '18000', '1', '14', '4');
INSERT INTO `payroll_item` VALUES ('217', '3', '5', '2700', '1', '14', '4');
INSERT INTO `payroll_item` VALUES ('218', '9', '1', '2434.8', '1', '14', '4');
INSERT INTO `payroll_item` VALUES ('219', '10', '1', '1162', '1', '14', '4');
INSERT INTO `payroll_item` VALUES ('220', '16', '1', '0', '1', '14', '4');
INSERT INTO `payroll_item` VALUES ('221', '15', '1', '0', '1', '14', '4');
INSERT INTO `payroll_item` VALUES ('222', '11', '1', '1080', '1', '14', '4');
INSERT INTO `payroll_item` VALUES ('223', '12', '1', '750', '1', '14', '4');
INSERT INTO `payroll_item` VALUES ('224', '7', '1', '10000', '1', '15', '4');
INSERT INTO `payroll_item` VALUES ('225', '3', '5', '1500', '1', '15', '4');
INSERT INTO `payroll_item` VALUES ('226', '9', '1', '1054.8', '1', '15', '4');
INSERT INTO `payroll_item` VALUES ('227', '10', '1', '1162', '1', '15', '4');
INSERT INTO `payroll_item` VALUES ('228', '16', '1', '0', '1', '15', '4');
INSERT INTO `payroll_item` VALUES ('229', '15', '1', '0', '1', '15', '4');
INSERT INTO `payroll_item` VALUES ('230', '11', '1', '1080', '1', '15', '4');
INSERT INTO `payroll_item` VALUES ('231', '12', '1', '400', '1', '15', '4');
INSERT INTO `payroll_item` VALUES ('232', '7', '1', '14000', '1', '16', '4');
INSERT INTO `payroll_item` VALUES ('233', '3', '5', '2100', '1', '16', '4');
INSERT INTO `payroll_item` VALUES ('234', '9', '1', '1744.8', '1', '16', '4');
INSERT INTO `payroll_item` VALUES ('235', '10', '1', '1162', '1', '16', '4');
INSERT INTO `payroll_item` VALUES ('236', '16', '1', '0', '1', '16', '4');
INSERT INTO `payroll_item` VALUES ('237', '15', '1', '0', '1', '16', '4');
INSERT INTO `payroll_item` VALUES ('238', '11', '1', '1080', '1', '16', '4');
INSERT INTO `payroll_item` VALUES ('239', '12', '1', '600', '1', '16', '4');
INSERT INTO `payroll_item` VALUES ('240', '7', '1', '5436', '1', '17', '4');
INSERT INTO `payroll_item` VALUES ('241', '3', '5', '814', '1', '17', '4');
INSERT INTO `payroll_item` VALUES ('242', '9', '1', '517', '1', '17', '4');
INSERT INTO `payroll_item` VALUES ('243', '10', '1', '1162', '1', '17', '4');
INSERT INTO `payroll_item` VALUES ('244', '16', '1', '0', '1', '17', '4');
INSERT INTO `payroll_item` VALUES ('245', '15', '1', '0', '1', '17', '4');
INSERT INTO `payroll_item` VALUES ('246', '11', '1', '1080', '1', '17', '4');
INSERT INTO `payroll_item` VALUES ('247', '12', '1', '300', '1', '17', '4');
INSERT INTO `payroll_item` VALUES ('248', '7', '1', '25000', '1', '19', '4');
INSERT INTO `payroll_item` VALUES ('249', '3', '5', '3750', '1', '19', '4');
INSERT INTO `payroll_item` VALUES ('250', '9', '1', '4038.85', '1', '19', '4');
INSERT INTO `payroll_item` VALUES ('251', '10', '1', '1162', '1', '19', '4');
INSERT INTO `payroll_item` VALUES ('252', '16', '1', '0', '1', '19', '4');
INSERT INTO `payroll_item` VALUES ('253', '15', '1', '0', '1', '19', '4');
INSERT INTO `payroll_item` VALUES ('254', '11', '1', '1080', '1', '19', '4');
INSERT INTO `payroll_item` VALUES ('255', '12', '1', '850', '1', '19', '4');
INSERT INTO `payroll_item` VALUES ('256', '7', '1', '25000', '1', '20', '4');
INSERT INTO `payroll_item` VALUES ('257', '3', '5', '3750', '1', '20', '4');
INSERT INTO `payroll_item` VALUES ('258', '9', '1', '4038.85', '1', '20', '4');
INSERT INTO `payroll_item` VALUES ('259', '10', '1', '1162', '1', '20', '4');
INSERT INTO `payroll_item` VALUES ('260', '16', '1', '0', '1', '20', '4');
INSERT INTO `payroll_item` VALUES ('261', '15', '1', '0', '1', '20', '4');
INSERT INTO `payroll_item` VALUES ('262', '11', '1', '1080', '1', '20', '4');
INSERT INTO `payroll_item` VALUES ('263', '12', '1', '850', '1', '20', '4');
INSERT INTO `payroll_item` VALUES ('264', '7', '1', '25000', '1', '21', '4');
INSERT INTO `payroll_item` VALUES ('265', '3', '5', '3750', '1', '21', '4');
INSERT INTO `payroll_item` VALUES ('266', '9', '1', '4038.85', '1', '21', '4');
INSERT INTO `payroll_item` VALUES ('267', '10', '1', '1162', '1', '21', '4');
INSERT INTO `payroll_item` VALUES ('268', '16', '1', '0', '1', '21', '4');
INSERT INTO `payroll_item` VALUES ('269', '15', '1', '0', '1', '21', '4');
INSERT INTO `payroll_item` VALUES ('270', '11', '1', '1080', '1', '21', '4');
INSERT INTO `payroll_item` VALUES ('271', '12', '1', '850', '1', '21', '4');
INSERT INTO `payroll_item` VALUES ('272', '9', '1', '0', '1', '22', '4');
INSERT INTO `payroll_item` VALUES ('273', '10', '1', '1162', '1', '22', '4');
INSERT INTO `payroll_item` VALUES ('274', '16', '1', '0', '1', '22', '4');
INSERT INTO `payroll_item` VALUES ('275', '15', '1', '0', '1', '22', '4');
INSERT INTO `payroll_item` VALUES ('276', '11', '1', '1080', '1', '22', '4');
INSERT INTO `payroll_item` VALUES ('277', '12', '1', '150', '1', '22', '4');
INSERT INTO `payroll_item` VALUES ('278', '9', '1', '0', '1', '23', '4');
INSERT INTO `payroll_item` VALUES ('279', '10', '1', '1162', '1', '23', '4');
INSERT INTO `payroll_item` VALUES ('280', '16', '1', '0', '1', '23', '4');
INSERT INTO `payroll_item` VALUES ('281', '15', '1', '0', '1', '23', '4');
INSERT INTO `payroll_item` VALUES ('282', '11', '1', '1080', '1', '23', '4');
INSERT INTO `payroll_item` VALUES ('283', '12', '1', '150', '1', '23', '4');
INSERT INTO `payroll_item` VALUES ('284', '7', '1', '35000', '1', '3', '5');
INSERT INTO `payroll_item` VALUES ('285', '3', '5', '5250', '1', '3', '5');
INSERT INTO `payroll_item` VALUES ('286', '9', '1', '6497.9', '1', '3', '5');
INSERT INTO `payroll_item` VALUES ('287', '10', '1', '1162', '1', '3', '5');
INSERT INTO `payroll_item` VALUES ('288', '16', '1', '0', '1', '3', '5');
INSERT INTO `payroll_item` VALUES ('289', '15', '1', '0', '1', '3', '5');
INSERT INTO `payroll_item` VALUES ('290', '11', '1', '2415', '1', '3', '5');
INSERT INTO `payroll_item` VALUES ('291', '12', '1', '1000', '1', '3', '5');
INSERT INTO `payroll_item` VALUES ('292', '7', '1', '20000', '1', '4', '5');
INSERT INTO `payroll_item` VALUES ('293', '3', '5', '3000', '1', '4', '5');
INSERT INTO `payroll_item` VALUES ('294', '9', '1', '2828.85', '1', '4', '5');
INSERT INTO `payroll_item` VALUES ('295', '10', '1', '1162', '1', '4', '5');
INSERT INTO `payroll_item` VALUES ('296', '16', '1', '0', '1', '4', '5');
INSERT INTO `payroll_item` VALUES ('297', '15', '1', '0', '1', '4', '5');
INSERT INTO `payroll_item` VALUES ('298', '11', '1', '1380', '1', '4', '5');
INSERT INTO `payroll_item` VALUES ('299', '12', '1', '750', '1', '4', '5');
INSERT INTO `payroll_item` VALUES ('300', '7', '1', '20000', '1', '5', '5');
INSERT INTO `payroll_item` VALUES ('301', '3', '5', '3000', '1', '5', '5');
INSERT INTO `payroll_item` VALUES ('302', '9', '1', '2828.85', '1', '5', '5');
INSERT INTO `payroll_item` VALUES ('303', '10', '1', '1162', '1', '5', '5');
INSERT INTO `payroll_item` VALUES ('304', '16', '1', '0', '1', '5', '5');
INSERT INTO `payroll_item` VALUES ('305', '15', '1', '0', '1', '5', '5');
INSERT INTO `payroll_item` VALUES ('306', '11', '1', '1380', '1', '5', '5');
INSERT INTO `payroll_item` VALUES ('307', '12', '1', '750', '1', '5', '5');
INSERT INTO `payroll_item` VALUES ('308', '7', '1', '25000', '1', '6', '5');
INSERT INTO `payroll_item` VALUES ('309', '3', '5', '3750', '1', '6', '5');
INSERT INTO `payroll_item` VALUES ('310', '9', '1', '3909.85', '1', '6', '5');
INSERT INTO `payroll_item` VALUES ('311', '10', '1', '1162', '1', '6', '5');
INSERT INTO `payroll_item` VALUES ('312', '16', '1', '0', '1', '6', '5');
INSERT INTO `payroll_item` VALUES ('313', '15', '1', '0', '1', '6', '5');
INSERT INTO `payroll_item` VALUES ('314', '11', '1', '1725', '1', '6', '5');
INSERT INTO `payroll_item` VALUES ('315', '12', '1', '850', '1', '6', '5');
INSERT INTO `payroll_item` VALUES ('316', '7', '1', '25000', '1', '7', '5');
INSERT INTO `payroll_item` VALUES ('317', '3', '5', '3750', '1', '7', '5');
INSERT INTO `payroll_item` VALUES ('318', '9', '1', '3909.85', '1', '7', '5');
INSERT INTO `payroll_item` VALUES ('319', '10', '1', '1162', '1', '7', '5');
INSERT INTO `payroll_item` VALUES ('320', '16', '1', '0', '1', '7', '5');
INSERT INTO `payroll_item` VALUES ('321', '15', '1', '0', '1', '7', '5');
INSERT INTO `payroll_item` VALUES ('322', '11', '1', '1725', '1', '7', '5');
INSERT INTO `payroll_item` VALUES ('323', '12', '1', '850', '1', '7', '5');
INSERT INTO `payroll_item` VALUES ('324', '7', '1', '7826', '1', '8', '5');
INSERT INTO `payroll_item` VALUES ('325', '3', '5', '1174', '1', '8', '5');
INSERT INTO `payroll_item` VALUES ('326', '9', '1', '0', '1', '8', '5');
INSERT INTO `payroll_item` VALUES ('327', '10', '1', '1162', '1', '8', '5');
INSERT INTO `payroll_item` VALUES ('328', '16', '1', '0', '1', '8', '5');
INSERT INTO `payroll_item` VALUES ('329', '15', '1', '0', '1', '8', '5');
INSERT INTO `payroll_item` VALUES ('330', '11', '1', '540', '1', '8', '5');
INSERT INTO `payroll_item` VALUES ('331', '12', '1', '400', '1', '8', '5');
INSERT INTO `payroll_item` VALUES ('332', '7', '1', '10000', '1', '9', '5');
INSERT INTO `payroll_item` VALUES ('333', '3', '5', '1500', '1', '9', '5');
INSERT INTO `payroll_item` VALUES ('334', '9', '1', '1113.3', '1', '9', '5');
INSERT INTO `payroll_item` VALUES ('335', '10', '1', '1162', '1', '9', '5');
INSERT INTO `payroll_item` VALUES ('336', '16', '1', '0', '1', '9', '5');
INSERT INTO `payroll_item` VALUES ('337', '15', '1', '0', '1', '9', '5');
INSERT INTO `payroll_item` VALUES ('338', '11', '1', '690', '1', '9', '5');
INSERT INTO `payroll_item` VALUES ('339', '12', '1', '400', '1', '9', '5');
INSERT INTO `payroll_item` VALUES ('340', '7', '1', '15000', '1', '10', '5');
INSERT INTO `payroll_item` VALUES ('341', '3', '5', '2250', '1', '10', '5');
INSERT INTO `payroll_item` VALUES ('342', '9', '1', '1924.05', '1', '10', '5');
INSERT INTO `payroll_item` VALUES ('343', '10', '1', '1162', '1', '10', '5');
INSERT INTO `payroll_item` VALUES ('344', '16', '1', '0', '1', '10', '5');
INSERT INTO `payroll_item` VALUES ('345', '15', '1', '0', '1', '10', '5');
INSERT INTO `payroll_item` VALUES ('346', '11', '1', '1035', '1', '10', '5');
INSERT INTO `payroll_item` VALUES ('347', '12', '1', '600', '1', '10', '5');
INSERT INTO `payroll_item` VALUES ('348', '7', '1', '15000', '1', '11', '5');
INSERT INTO `payroll_item` VALUES ('349', '3', '5', '2250', '1', '11', '5');
INSERT INTO `payroll_item` VALUES ('350', '9', '1', '1924.05', '1', '11', '5');
INSERT INTO `payroll_item` VALUES ('351', '10', '1', '1162', '1', '11', '5');
INSERT INTO `payroll_item` VALUES ('352', '16', '1', '0', '1', '11', '5');
INSERT INTO `payroll_item` VALUES ('353', '15', '1', '0', '1', '11', '5');
INSERT INTO `payroll_item` VALUES ('354', '11', '1', '1035', '1', '11', '5');
INSERT INTO `payroll_item` VALUES ('355', '12', '1', '600', '1', '11', '5');
INSERT INTO `payroll_item` VALUES ('356', '7', '1', '20000', '1', '12', '5');
INSERT INTO `payroll_item` VALUES ('357', '3', '5', '3000', '1', '12', '5');
INSERT INTO `payroll_item` VALUES ('358', '9', '1', '2828.85', '1', '12', '5');
INSERT INTO `payroll_item` VALUES ('359', '10', '1', '1162', '1', '12', '5');
INSERT INTO `payroll_item` VALUES ('360', '16', '1', '0', '1', '12', '5');
INSERT INTO `payroll_item` VALUES ('361', '15', '1', '0', '1', '12', '5');
INSERT INTO `payroll_item` VALUES ('362', '11', '1', '1380', '1', '12', '5');
INSERT INTO `payroll_item` VALUES ('363', '12', '1', '750', '1', '12', '5');
INSERT INTO `payroll_item` VALUES ('364', '7', '1', '27000', '1', '13', '5');
INSERT INTO `payroll_item` VALUES ('365', '3', '5', '4050', '1', '13', '5');
INSERT INTO `payroll_item` VALUES ('366', '9', '1', '4342.25', '1', '13', '5');
INSERT INTO `payroll_item` VALUES ('367', '10', '1', '1162', '1', '13', '5');
INSERT INTO `payroll_item` VALUES ('368', '16', '1', '0', '1', '13', '5');
INSERT INTO `payroll_item` VALUES ('369', '15', '1', '0', '1', '13', '5');
INSERT INTO `payroll_item` VALUES ('370', '11', '1', '1863', '1', '13', '5');
INSERT INTO `payroll_item` VALUES ('371', '12', '1', '900', '1', '13', '5');
INSERT INTO `payroll_item` VALUES ('372', '7', '1', '18000', '1', '14', '5');
INSERT INTO `payroll_item` VALUES ('373', '3', '5', '2700', '1', '14', '5');
INSERT INTO `payroll_item` VALUES ('374', '9', '1', '2410.5', '1', '14', '5');
INSERT INTO `payroll_item` VALUES ('375', '10', '1', '1162', '1', '14', '5');
INSERT INTO `payroll_item` VALUES ('376', '16', '1', '0', '1', '14', '5');
INSERT INTO `payroll_item` VALUES ('377', '15', '1', '0', '1', '14', '5');
INSERT INTO `payroll_item` VALUES ('378', '11', '1', '1242', '1', '14', '5');
INSERT INTO `payroll_item` VALUES ('379', '12', '1', '750', '1', '14', '5');
INSERT INTO `payroll_item` VALUES ('380', '7', '1', '10000', '1', '15', '5');
INSERT INTO `payroll_item` VALUES ('381', '3', '5', '1500', '1', '15', '5');
INSERT INTO `payroll_item` VALUES ('382', '9', '1', '1113.3', '1', '15', '5');
INSERT INTO `payroll_item` VALUES ('383', '10', '1', '1162', '1', '15', '5');
INSERT INTO `payroll_item` VALUES ('384', '16', '1', '0', '1', '15', '5');
INSERT INTO `payroll_item` VALUES ('385', '15', '1', '0', '1', '15', '5');
INSERT INTO `payroll_item` VALUES ('386', '11', '1', '690', '1', '15', '5');
INSERT INTO `payroll_item` VALUES ('387', '12', '1', '400', '1', '15', '5');
INSERT INTO `payroll_item` VALUES ('388', '7', '1', '14000', '1', '16', '5');
INSERT INTO `payroll_item` VALUES ('389', '3', '5', '2100', '1', '16', '5');
INSERT INTO `payroll_item` VALUES ('390', '9', '1', '1761.9', '1', '16', '5');
INSERT INTO `payroll_item` VALUES ('391', '10', '1', '1162', '1', '16', '5');
INSERT INTO `payroll_item` VALUES ('392', '16', '1', '0', '1', '16', '5');
INSERT INTO `payroll_item` VALUES ('393', '15', '1', '0', '1', '16', '5');
INSERT INTO `payroll_item` VALUES ('394', '11', '1', '966', '1', '16', '5');
INSERT INTO `payroll_item` VALUES ('395', '12', '1', '600', '1', '16', '5');
INSERT INTO `payroll_item` VALUES ('396', '7', '1', '5436', '1', '17', '5');
INSERT INTO `payroll_item` VALUES ('397', '3', '5', '814', '1', '17', '5');
INSERT INTO `payroll_item` VALUES ('398', '9', '1', '0', '1', '17', '5');
INSERT INTO `payroll_item` VALUES ('399', '10', '1', '1162', '1', '17', '5');
INSERT INTO `payroll_item` VALUES ('400', '16', '1', '0', '1', '17', '5');
INSERT INTO `payroll_item` VALUES ('401', '15', '1', '0', '1', '17', '5');
INSERT INTO `payroll_item` VALUES ('402', '11', '1', '375', '1', '17', '5');
INSERT INTO `payroll_item` VALUES ('403', '12', '1', '300', '1', '17', '5');
INSERT INTO `payroll_item` VALUES ('404', '7', '1', '25000', '1', '19', '5');
INSERT INTO `payroll_item` VALUES ('405', '3', '5', '3750', '1', '19', '5');
INSERT INTO `payroll_item` VALUES ('406', '9', '1', '3909.85', '1', '19', '5');
INSERT INTO `payroll_item` VALUES ('407', '10', '1', '1162', '1', '19', '5');
INSERT INTO `payroll_item` VALUES ('408', '16', '1', '0', '1', '19', '5');
INSERT INTO `payroll_item` VALUES ('409', '15', '1', '0', '1', '19', '5');
INSERT INTO `payroll_item` VALUES ('410', '11', '1', '1725', '1', '19', '5');
INSERT INTO `payroll_item` VALUES ('411', '12', '1', '850', '1', '19', '5');
INSERT INTO `payroll_item` VALUES ('412', '7', '1', '25000', '1', '20', '5');
INSERT INTO `payroll_item` VALUES ('413', '3', '5', '3750', '1', '20', '5');
INSERT INTO `payroll_item` VALUES ('414', '9', '1', '3909.85', '1', '20', '5');
INSERT INTO `payroll_item` VALUES ('415', '10', '1', '1162', '1', '20', '5');
INSERT INTO `payroll_item` VALUES ('416', '16', '1', '0', '1', '20', '5');
INSERT INTO `payroll_item` VALUES ('417', '15', '1', '0', '1', '20', '5');
INSERT INTO `payroll_item` VALUES ('418', '11', '1', '1725', '1', '20', '5');
INSERT INTO `payroll_item` VALUES ('419', '12', '1', '850', '1', '20', '5');
INSERT INTO `payroll_item` VALUES ('420', '7', '1', '25000', '1', '21', '5');
INSERT INTO `payroll_item` VALUES ('421', '3', '5', '3750', '1', '21', '5');
INSERT INTO `payroll_item` VALUES ('422', '9', '1', '3909.85', '1', '21', '5');
INSERT INTO `payroll_item` VALUES ('423', '10', '1', '1162', '1', '21', '5');
INSERT INTO `payroll_item` VALUES ('424', '16', '1', '0', '1', '21', '5');
INSERT INTO `payroll_item` VALUES ('425', '15', '1', '0', '1', '21', '5');
INSERT INTO `payroll_item` VALUES ('426', '11', '1', '1725', '1', '21', '5');
INSERT INTO `payroll_item` VALUES ('427', '12', '1', '850', '1', '21', '5');
INSERT INTO `payroll_item` VALUES ('428', '9', '1', '0', '1', '22', '5');
INSERT INTO `payroll_item` VALUES ('429', '10', '1', '1162', '1', '22', '5');
INSERT INTO `payroll_item` VALUES ('430', '16', '1', '0', '1', '22', '5');
INSERT INTO `payroll_item` VALUES ('431', '15', '1', '0', '1', '22', '5');
INSERT INTO `payroll_item` VALUES ('432', '11', '1', '0', '1', '22', '5');
INSERT INTO `payroll_item` VALUES ('433', '12', '1', '150', '1', '22', '5');
INSERT INTO `payroll_item` VALUES ('434', '9', '1', '0', '1', '23', '5');
INSERT INTO `payroll_item` VALUES ('435', '10', '1', '1162', '1', '23', '5');
INSERT INTO `payroll_item` VALUES ('436', '16', '1', '0', '1', '23', '5');
INSERT INTO `payroll_item` VALUES ('437', '15', '1', '0', '1', '23', '5');
INSERT INTO `payroll_item` VALUES ('438', '11', '1', '0', '1', '23', '5');
INSERT INTO `payroll_item` VALUES ('439', '12', '1', '150', '1', '23', '5');
INSERT INTO `payroll_item` VALUES ('440', '9', '1', '0', '1', '24', '5');
INSERT INTO `payroll_item` VALUES ('441', '10', '1', '1162', '1', '24', '5');
INSERT INTO `payroll_item` VALUES ('442', '16', '1', '0', '1', '24', '5');
INSERT INTO `payroll_item` VALUES ('443', '15', '1', '0', '1', '24', '5');
INSERT INTO `payroll_item` VALUES ('444', '11', '1', '0', '1', '24', '5');
INSERT INTO `payroll_item` VALUES ('445', '12', '1', '150', '1', '24', '5');
INSERT INTO `payroll_item` VALUES ('446', '7', '1', '35000', '1', '3', '6');
INSERT INTO `payroll_item` VALUES ('447', '3', '5', '5250', '1', '3', '6');
INSERT INTO `payroll_item` VALUES ('448', '9', '1', '6497.9', '1', '3', '6');
INSERT INTO `payroll_item` VALUES ('449', '10', '1', '1162', '1', '3', '6');
INSERT INTO `payroll_item` VALUES ('450', '16', '1', '0', '1', '3', '6');
INSERT INTO `payroll_item` VALUES ('451', '15', '1', '0', '1', '3', '6');
INSERT INTO `payroll_item` VALUES ('452', '11', '1', '2415', '1', '3', '6');
INSERT INTO `payroll_item` VALUES ('453', '12', '1', '1000', '1', '3', '6');
INSERT INTO `payroll_item` VALUES ('454', '7', '1', '20000', '1', '4', '6');
INSERT INTO `payroll_item` VALUES ('455', '3', '5', '3000', '1', '4', '6');
INSERT INTO `payroll_item` VALUES ('456', '9', '1', '2828.85', '1', '4', '6');
INSERT INTO `payroll_item` VALUES ('457', '10', '1', '1162', '1', '4', '6');
INSERT INTO `payroll_item` VALUES ('458', '16', '1', '0', '1', '4', '6');
INSERT INTO `payroll_item` VALUES ('459', '15', '1', '0', '1', '4', '6');
INSERT INTO `payroll_item` VALUES ('460', '11', '1', '1380', '1', '4', '6');
INSERT INTO `payroll_item` VALUES ('461', '12', '1', '750', '1', '4', '6');
INSERT INTO `payroll_item` VALUES ('462', '7', '1', '20000', '1', '5', '6');
INSERT INTO `payroll_item` VALUES ('463', '3', '5', '3000', '1', '5', '6');
INSERT INTO `payroll_item` VALUES ('464', '9', '1', '2828.85', '1', '5', '6');
INSERT INTO `payroll_item` VALUES ('465', '10', '1', '1162', '1', '5', '6');
INSERT INTO `payroll_item` VALUES ('466', '16', '1', '0', '1', '5', '6');
INSERT INTO `payroll_item` VALUES ('467', '15', '1', '0', '1', '5', '6');
INSERT INTO `payroll_item` VALUES ('468', '11', '1', '1380', '1', '5', '6');
INSERT INTO `payroll_item` VALUES ('469', '12', '1', '750', '1', '5', '6');
INSERT INTO `payroll_item` VALUES ('470', '7', '1', '25000', '1', '6', '6');
INSERT INTO `payroll_item` VALUES ('471', '3', '5', '3750', '1', '6', '6');
INSERT INTO `payroll_item` VALUES ('472', '9', '1', '3909.85', '1', '6', '6');
INSERT INTO `payroll_item` VALUES ('473', '10', '1', '1162', '1', '6', '6');
INSERT INTO `payroll_item` VALUES ('474', '16', '1', '0', '1', '6', '6');
INSERT INTO `payroll_item` VALUES ('475', '15', '1', '0', '1', '6', '6');
INSERT INTO `payroll_item` VALUES ('476', '11', '1', '1725', '1', '6', '6');
INSERT INTO `payroll_item` VALUES ('477', '12', '1', '850', '1', '6', '6');
INSERT INTO `payroll_item` VALUES ('478', '7', '1', '25000', '1', '7', '6');
INSERT INTO `payroll_item` VALUES ('479', '3', '5', '3750', '1', '7', '6');
INSERT INTO `payroll_item` VALUES ('480', '9', '1', '3909.85', '1', '7', '6');
INSERT INTO `payroll_item` VALUES ('481', '10', '1', '1162', '1', '7', '6');
INSERT INTO `payroll_item` VALUES ('482', '16', '1', '0', '1', '7', '6');
INSERT INTO `payroll_item` VALUES ('483', '15', '1', '0', '1', '7', '6');
INSERT INTO `payroll_item` VALUES ('484', '11', '1', '1725', '1', '7', '6');
INSERT INTO `payroll_item` VALUES ('485', '12', '1', '850', '1', '7', '6');
INSERT INTO `payroll_item` VALUES ('486', '7', '1', '7826', '1', '8', '6');
INSERT INTO `payroll_item` VALUES ('487', '3', '5', '1174', '1', '8', '6');
INSERT INTO `payroll_item` VALUES ('488', '9', '1', '0', '1', '8', '6');
INSERT INTO `payroll_item` VALUES ('489', '10', '1', '1162', '1', '8', '6');
INSERT INTO `payroll_item` VALUES ('490', '16', '1', '0', '1', '8', '6');
INSERT INTO `payroll_item` VALUES ('491', '15', '1', '0', '1', '8', '6');
INSERT INTO `payroll_item` VALUES ('492', '11', '1', '540', '1', '8', '6');
INSERT INTO `payroll_item` VALUES ('493', '12', '1', '400', '1', '8', '6');
INSERT INTO `payroll_item` VALUES ('494', '7', '1', '10000', '1', '9', '6');
INSERT INTO `payroll_item` VALUES ('495', '3', '5', '1500', '1', '9', '6');
INSERT INTO `payroll_item` VALUES ('496', '9', '1', '1113.3', '1', '9', '6');
INSERT INTO `payroll_item` VALUES ('497', '10', '1', '1162', '1', '9', '6');
INSERT INTO `payroll_item` VALUES ('498', '16', '1', '0', '1', '9', '6');
INSERT INTO `payroll_item` VALUES ('499', '15', '1', '0', '1', '9', '6');
INSERT INTO `payroll_item` VALUES ('500', '11', '1', '690', '1', '9', '6');
INSERT INTO `payroll_item` VALUES ('501', '12', '1', '400', '1', '9', '6');
INSERT INTO `payroll_item` VALUES ('502', '7', '1', '15000', '1', '10', '6');
INSERT INTO `payroll_item` VALUES ('503', '3', '5', '2250', '1', '10', '6');
INSERT INTO `payroll_item` VALUES ('504', '9', '1', '1924.05', '1', '10', '6');
INSERT INTO `payroll_item` VALUES ('505', '10', '1', '1162', '1', '10', '6');
INSERT INTO `payroll_item` VALUES ('506', '16', '1', '0', '1', '10', '6');
INSERT INTO `payroll_item` VALUES ('507', '15', '1', '0', '1', '10', '6');
INSERT INTO `payroll_item` VALUES ('508', '11', '1', '1035', '1', '10', '6');
INSERT INTO `payroll_item` VALUES ('509', '12', '1', '600', '1', '10', '6');
INSERT INTO `payroll_item` VALUES ('510', '7', '1', '15000', '1', '11', '6');
INSERT INTO `payroll_item` VALUES ('511', '3', '5', '2250', '1', '11', '6');
INSERT INTO `payroll_item` VALUES ('512', '9', '1', '1924.05', '1', '11', '6');
INSERT INTO `payroll_item` VALUES ('513', '10', '1', '1162', '1', '11', '6');
INSERT INTO `payroll_item` VALUES ('514', '16', '1', '0', '1', '11', '6');
INSERT INTO `payroll_item` VALUES ('515', '15', '1', '0', '1', '11', '6');
INSERT INTO `payroll_item` VALUES ('516', '11', '1', '1035', '1', '11', '6');
INSERT INTO `payroll_item` VALUES ('517', '12', '1', '600', '1', '11', '6');
INSERT INTO `payroll_item` VALUES ('518', '7', '1', '20000', '1', '12', '6');
INSERT INTO `payroll_item` VALUES ('519', '3', '5', '3000', '1', '12', '6');
INSERT INTO `payroll_item` VALUES ('520', '9', '1', '2828.85', '1', '12', '6');
INSERT INTO `payroll_item` VALUES ('521', '10', '1', '1162', '1', '12', '6');
INSERT INTO `payroll_item` VALUES ('522', '16', '1', '0', '1', '12', '6');
INSERT INTO `payroll_item` VALUES ('523', '15', '1', '0', '1', '12', '6');
INSERT INTO `payroll_item` VALUES ('524', '11', '1', '1380', '1', '12', '6');
INSERT INTO `payroll_item` VALUES ('525', '12', '1', '750', '1', '12', '6');
INSERT INTO `payroll_item` VALUES ('526', '7', '1', '27000', '1', '13', '6');
INSERT INTO `payroll_item` VALUES ('527', '3', '5', '4050', '1', '13', '6');
INSERT INTO `payroll_item` VALUES ('528', '9', '1', '4342.25', '1', '13', '6');
INSERT INTO `payroll_item` VALUES ('529', '10', '1', '1162', '1', '13', '6');
INSERT INTO `payroll_item` VALUES ('530', '16', '1', '0', '1', '13', '6');
INSERT INTO `payroll_item` VALUES ('531', '15', '1', '0', '1', '13', '6');
INSERT INTO `payroll_item` VALUES ('532', '11', '1', '1863', '1', '13', '6');
INSERT INTO `payroll_item` VALUES ('533', '12', '1', '900', '1', '13', '6');
INSERT INTO `payroll_item` VALUES ('534', '7', '1', '18000', '1', '14', '6');
INSERT INTO `payroll_item` VALUES ('535', '3', '5', '2700', '1', '14', '6');
INSERT INTO `payroll_item` VALUES ('536', '9', '1', '2410.5', '1', '14', '6');
INSERT INTO `payroll_item` VALUES ('537', '10', '1', '1162', '1', '14', '6');
INSERT INTO `payroll_item` VALUES ('538', '16', '1', '0', '1', '14', '6');
INSERT INTO `payroll_item` VALUES ('539', '15', '1', '0', '1', '14', '6');
INSERT INTO `payroll_item` VALUES ('540', '11', '1', '1242', '1', '14', '6');
INSERT INTO `payroll_item` VALUES ('541', '12', '1', '750', '1', '14', '6');
INSERT INTO `payroll_item` VALUES ('542', '7', '1', '10000', '1', '15', '6');
INSERT INTO `payroll_item` VALUES ('543', '3', '5', '1500', '1', '15', '6');
INSERT INTO `payroll_item` VALUES ('544', '9', '1', '1113.3', '1', '15', '6');
INSERT INTO `payroll_item` VALUES ('545', '10', '1', '1162', '1', '15', '6');
INSERT INTO `payroll_item` VALUES ('546', '16', '1', '0', '1', '15', '6');
INSERT INTO `payroll_item` VALUES ('547', '15', '1', '0', '1', '15', '6');
INSERT INTO `payroll_item` VALUES ('548', '11', '1', '690', '1', '15', '6');
INSERT INTO `payroll_item` VALUES ('549', '12', '1', '400', '1', '15', '6');
INSERT INTO `payroll_item` VALUES ('550', '7', '1', '14000', '1', '16', '6');
INSERT INTO `payroll_item` VALUES ('551', '3', '5', '2100', '1', '16', '6');
INSERT INTO `payroll_item` VALUES ('552', '9', '1', '1761.9', '1', '16', '6');
INSERT INTO `payroll_item` VALUES ('553', '10', '1', '1162', '1', '16', '6');
INSERT INTO `payroll_item` VALUES ('554', '16', '1', '0', '1', '16', '6');
INSERT INTO `payroll_item` VALUES ('555', '15', '1', '0', '1', '16', '6');
INSERT INTO `payroll_item` VALUES ('556', '11', '1', '966', '1', '16', '6');
INSERT INTO `payroll_item` VALUES ('557', '12', '1', '600', '1', '16', '6');
INSERT INTO `payroll_item` VALUES ('558', '7', '1', '5436', '1', '17', '6');
INSERT INTO `payroll_item` VALUES ('559', '3', '5', '814', '1', '17', '6');
INSERT INTO `payroll_item` VALUES ('560', '9', '1', '0', '1', '17', '6');
INSERT INTO `payroll_item` VALUES ('561', '10', '1', '1162', '1', '17', '6');
INSERT INTO `payroll_item` VALUES ('562', '16', '1', '0', '1', '17', '6');
INSERT INTO `payroll_item` VALUES ('563', '15', '1', '0', '1', '17', '6');
INSERT INTO `payroll_item` VALUES ('564', '11', '1', '375', '1', '17', '6');
INSERT INTO `payroll_item` VALUES ('565', '12', '1', '300', '1', '17', '6');
INSERT INTO `payroll_item` VALUES ('566', '7', '1', '25000', '1', '19', '6');
INSERT INTO `payroll_item` VALUES ('567', '3', '5', '3750', '1', '19', '6');
INSERT INTO `payroll_item` VALUES ('568', '9', '1', '3909.85', '1', '19', '6');
INSERT INTO `payroll_item` VALUES ('569', '10', '1', '1162', '1', '19', '6');
INSERT INTO `payroll_item` VALUES ('570', '16', '1', '0', '1', '19', '6');
INSERT INTO `payroll_item` VALUES ('571', '15', '1', '0', '1', '19', '6');
INSERT INTO `payroll_item` VALUES ('572', '11', '1', '1725', '1', '19', '6');
INSERT INTO `payroll_item` VALUES ('573', '12', '1', '850', '1', '19', '6');
INSERT INTO `payroll_item` VALUES ('574', '7', '1', '25000', '1', '20', '6');
INSERT INTO `payroll_item` VALUES ('575', '3', '5', '3750', '1', '20', '6');
INSERT INTO `payroll_item` VALUES ('576', '9', '1', '3909.85', '1', '20', '6');
INSERT INTO `payroll_item` VALUES ('577', '10', '1', '1162', '1', '20', '6');
INSERT INTO `payroll_item` VALUES ('578', '16', '1', '0', '1', '20', '6');
INSERT INTO `payroll_item` VALUES ('579', '15', '1', '0', '1', '20', '6');
INSERT INTO `payroll_item` VALUES ('580', '11', '1', '1725', '1', '20', '6');
INSERT INTO `payroll_item` VALUES ('581', '12', '1', '850', '1', '20', '6');
INSERT INTO `payroll_item` VALUES ('582', '7', '1', '25000', '1', '21', '6');
INSERT INTO `payroll_item` VALUES ('583', '3', '5', '3750', '1', '21', '6');
INSERT INTO `payroll_item` VALUES ('584', '9', '1', '3909.85', '1', '21', '6');
INSERT INTO `payroll_item` VALUES ('585', '10', '1', '1162', '1', '21', '6');
INSERT INTO `payroll_item` VALUES ('586', '16', '1', '0', '1', '21', '6');
INSERT INTO `payroll_item` VALUES ('587', '15', '1', '0', '1', '21', '6');
INSERT INTO `payroll_item` VALUES ('588', '11', '1', '1725', '1', '21', '6');
INSERT INTO `payroll_item` VALUES ('589', '12', '1', '850', '1', '21', '6');
INSERT INTO `payroll_item` VALUES ('590', '9', '1', '0', '1', '22', '6');
INSERT INTO `payroll_item` VALUES ('591', '10', '1', '1162', '1', '22', '6');
INSERT INTO `payroll_item` VALUES ('592', '16', '1', '0', '1', '22', '6');
INSERT INTO `payroll_item` VALUES ('593', '15', '1', '0', '1', '22', '6');
INSERT INTO `payroll_item` VALUES ('594', '11', '1', '0', '1', '22', '6');
INSERT INTO `payroll_item` VALUES ('595', '12', '1', '150', '1', '22', '6');
INSERT INTO `payroll_item` VALUES ('596', '7', '1', '10000', '1', '23', '6');
INSERT INTO `payroll_item` VALUES ('597', '3', '5', '1500', '1', '23', '6');
INSERT INTO `payroll_item` VALUES ('598', '9', '1', '1113.3', '1', '23', '6');
INSERT INTO `payroll_item` VALUES ('599', '10', '1', '1162', '1', '23', '6');
INSERT INTO `payroll_item` VALUES ('600', '16', '1', '0', '1', '23', '6');
INSERT INTO `payroll_item` VALUES ('601', '15', '1', '0', '1', '23', '6');
INSERT INTO `payroll_item` VALUES ('602', '11', '1', '690', '1', '23', '6');
INSERT INTO `payroll_item` VALUES ('603', '12', '1', '400', '1', '23', '6');
INSERT INTO `payroll_item` VALUES ('604', '9', '1', '0', '1', '24', '6');
INSERT INTO `payroll_item` VALUES ('605', '10', '1', '1162', '1', '24', '6');
INSERT INTO `payroll_item` VALUES ('606', '16', '1', '0', '1', '24', '6');
INSERT INTO `payroll_item` VALUES ('607', '15', '1', '0', '1', '24', '6');
INSERT INTO `payroll_item` VALUES ('608', '11', '1', '0', '1', '24', '6');
INSERT INTO `payroll_item` VALUES ('609', '12', '1', '150', '1', '24', '6');
INSERT INTO `payroll_item` VALUES ('610', '9', '1', '0', '1', '25', '6');
INSERT INTO `payroll_item` VALUES ('611', '10', '1', '1162', '1', '25', '6');
INSERT INTO `payroll_item` VALUES ('612', '16', '1', '0', '1', '25', '6');
INSERT INTO `payroll_item` VALUES ('613', '15', '1', '0', '1', '25', '6');
INSERT INTO `payroll_item` VALUES ('614', '11', '1', '0', '1', '25', '6');
INSERT INTO `payroll_item` VALUES ('615', '12', '1', '150', '1', '25', '6');
INSERT INTO `payroll_item` VALUES ('616', '9', '1', '0', '1', '26', '6');
INSERT INTO `payroll_item` VALUES ('617', '10', '1', '1162', '1', '26', '6');
INSERT INTO `payroll_item` VALUES ('618', '16', '1', '0', '1', '26', '6');
INSERT INTO `payroll_item` VALUES ('619', '15', '1', '0', '1', '26', '6');
INSERT INTO `payroll_item` VALUES ('620', '11', '1', '0', '1', '26', '6');
INSERT INTO `payroll_item` VALUES ('621', '12', '1', '150', '1', '26', '6');
INSERT INTO `payroll_item` VALUES ('622', '9', '1', '0', '1', '27', '6');
INSERT INTO `payroll_item` VALUES ('623', '10', '1', '1162', '1', '27', '6');
INSERT INTO `payroll_item` VALUES ('624', '16', '1', '0', '1', '27', '6');
INSERT INTO `payroll_item` VALUES ('625', '15', '1', '0', '1', '27', '6');
INSERT INTO `payroll_item` VALUES ('626', '11', '1', '0', '1', '27', '6');
INSERT INTO `payroll_item` VALUES ('627', '12', '1', '150', '1', '27', '6');
INSERT INTO `payroll_item` VALUES ('628', '9', '1', '0', '1', '28', '6');
INSERT INTO `payroll_item` VALUES ('629', '10', '1', '1162', '1', '28', '6');
INSERT INTO `payroll_item` VALUES ('630', '16', '1', '0', '1', '28', '6');
INSERT INTO `payroll_item` VALUES ('631', '15', '1', '0', '1', '28', '6');
INSERT INTO `payroll_item` VALUES ('632', '11', '1', '0', '1', '28', '6');
INSERT INTO `payroll_item` VALUES ('633', '12', '1', '150', '1', '28', '6');
INSERT INTO `payroll_item` VALUES ('634', '9', '1', '0', '1', '29', '6');
INSERT INTO `payroll_item` VALUES ('635', '10', '1', '1162', '1', '29', '6');
INSERT INTO `payroll_item` VALUES ('636', '16', '1', '0', '1', '29', '6');
INSERT INTO `payroll_item` VALUES ('637', '15', '1', '0', '1', '29', '6');
INSERT INTO `payroll_item` VALUES ('638', '11', '1', '0', '1', '29', '6');
INSERT INTO `payroll_item` VALUES ('639', '12', '1', '150', '1', '29', '6');
INSERT INTO `payroll_item` VALUES ('640', '9', '1', '0', '1', '30', '6');
INSERT INTO `payroll_item` VALUES ('641', '10', '1', '1162', '1', '30', '6');
INSERT INTO `payroll_item` VALUES ('642', '16', '1', '0', '1', '30', '6');
INSERT INTO `payroll_item` VALUES ('643', '15', '1', '0', '1', '30', '6');
INSERT INTO `payroll_item` VALUES ('644', '11', '1', '0', '1', '30', '6');
INSERT INTO `payroll_item` VALUES ('645', '12', '1', '150', '1', '30', '6');
INSERT INTO `payroll_item` VALUES ('646', '9', '1', '0', '1', '31', '6');
INSERT INTO `payroll_item` VALUES ('647', '10', '1', '1162', '1', '31', '6');
INSERT INTO `payroll_item` VALUES ('648', '16', '1', '0', '1', '31', '6');
INSERT INTO `payroll_item` VALUES ('649', '15', '1', '0', '1', '31', '6');
INSERT INTO `payroll_item` VALUES ('650', '11', '1', '0', '1', '31', '6');
INSERT INTO `payroll_item` VALUES ('651', '12', '1', '150', '1', '31', '6');
INSERT INTO `payroll_item` VALUES ('652', '9', '1', '0', '1', '32', '6');
INSERT INTO `payroll_item` VALUES ('653', '10', '1', '1162', '1', '32', '6');
INSERT INTO `payroll_item` VALUES ('654', '16', '1', '0', '1', '32', '6');
INSERT INTO `payroll_item` VALUES ('655', '15', '1', '0', '1', '32', '6');
INSERT INTO `payroll_item` VALUES ('656', '11', '1', '0', '1', '32', '6');
INSERT INTO `payroll_item` VALUES ('657', '12', '1', '150', '1', '32', '6');
INSERT INTO `payroll_item` VALUES ('658', '9', '1', '0', '1', '33', '6');
INSERT INTO `payroll_item` VALUES ('659', '10', '1', '1162', '1', '33', '6');
INSERT INTO `payroll_item` VALUES ('660', '16', '1', '0', '1', '33', '6');
INSERT INTO `payroll_item` VALUES ('661', '15', '1', '0', '1', '33', '6');
INSERT INTO `payroll_item` VALUES ('662', '11', '1', '0', '1', '33', '6');
INSERT INTO `payroll_item` VALUES ('663', '12', '1', '150', '1', '33', '6');
INSERT INTO `payroll_item` VALUES ('664', '9', '1', '0', '1', '34', '6');
INSERT INTO `payroll_item` VALUES ('665', '10', '1', '1162', '1', '34', '6');
INSERT INTO `payroll_item` VALUES ('666', '16', '1', '0', '1', '34', '6');
INSERT INTO `payroll_item` VALUES ('667', '15', '1', '0', '1', '34', '6');
INSERT INTO `payroll_item` VALUES ('668', '11', '1', '0', '1', '34', '6');
INSERT INTO `payroll_item` VALUES ('669', '12', '1', '150', '1', '34', '6');
INSERT INTO `payroll_item` VALUES ('670', '7', '1', '20000', '1', '35', '6');
INSERT INTO `payroll_item` VALUES ('671', '3', '5', '3000', '1', '35', '6');
INSERT INTO `payroll_item` VALUES ('672', '9', '1', '2828.85', '1', '35', '6');
INSERT INTO `payroll_item` VALUES ('673', '10', '1', '1162', '1', '35', '6');
INSERT INTO `payroll_item` VALUES ('674', '16', '1', '0', '1', '35', '6');
INSERT INTO `payroll_item` VALUES ('675', '15', '1', '0', '1', '35', '6');
INSERT INTO `payroll_item` VALUES ('676', '11', '1', '1380', '1', '35', '6');
INSERT INTO `payroll_item` VALUES ('677', '12', '1', '750', '1', '35', '6');
INSERT INTO `payroll_item` VALUES ('678', '4', '3', '300', '1', '35', '6');
INSERT INTO `payroll_item` VALUES ('679', '7', '1', '35000', '1', '3', '7');
INSERT INTO `payroll_item` VALUES ('680', '3', '5', '5250', '1', '3', '7');
INSERT INTO `payroll_item` VALUES ('681', '9', '1', '6497.9', '1', '3', '7');
INSERT INTO `payroll_item` VALUES ('682', '10', '1', '1162', '1', '3', '7');
INSERT INTO `payroll_item` VALUES ('683', '16', '1', '0', '1', '3', '7');
INSERT INTO `payroll_item` VALUES ('684', '15', '1', '0', '1', '3', '7');
INSERT INTO `payroll_item` VALUES ('685', '11', '1', '2415', '1', '3', '7');
INSERT INTO `payroll_item` VALUES ('686', '12', '1', '1000', '1', '3', '7');
INSERT INTO `payroll_item` VALUES ('687', '7', '1', '20000', '1', '4', '7');
INSERT INTO `payroll_item` VALUES ('688', '3', '5', '3000', '1', '4', '7');
INSERT INTO `payroll_item` VALUES ('689', '9', '1', '2828.85', '1', '4', '7');
INSERT INTO `payroll_item` VALUES ('690', '10', '1', '1162', '1', '4', '7');
INSERT INTO `payroll_item` VALUES ('691', '16', '1', '0', '1', '4', '7');
INSERT INTO `payroll_item` VALUES ('692', '15', '1', '0', '1', '4', '7');
INSERT INTO `payroll_item` VALUES ('693', '11', '1', '1380', '1', '4', '7');
INSERT INTO `payroll_item` VALUES ('694', '12', '1', '750', '1', '4', '7');
INSERT INTO `payroll_item` VALUES ('695', '7', '1', '20000', '1', '5', '7');
INSERT INTO `payroll_item` VALUES ('696', '3', '5', '3000', '1', '5', '7');
INSERT INTO `payroll_item` VALUES ('697', '9', '1', '2828.85', '1', '5', '7');
INSERT INTO `payroll_item` VALUES ('698', '10', '1', '1162', '1', '5', '7');
INSERT INTO `payroll_item` VALUES ('699', '16', '1', '0', '1', '5', '7');
INSERT INTO `payroll_item` VALUES ('700', '15', '1', '0', '1', '5', '7');
INSERT INTO `payroll_item` VALUES ('701', '11', '1', '1380', '1', '5', '7');
INSERT INTO `payroll_item` VALUES ('702', '12', '1', '750', '1', '5', '7');
INSERT INTO `payroll_item` VALUES ('703', '7', '1', '25000', '1', '6', '7');
INSERT INTO `payroll_item` VALUES ('704', '3', '5', '3750', '1', '6', '7');
INSERT INTO `payroll_item` VALUES ('705', '9', '1', '3909.85', '1', '6', '7');
INSERT INTO `payroll_item` VALUES ('706', '10', '1', '1162', '1', '6', '7');
INSERT INTO `payroll_item` VALUES ('707', '16', '1', '0', '1', '6', '7');
INSERT INTO `payroll_item` VALUES ('708', '15', '1', '0', '1', '6', '7');
INSERT INTO `payroll_item` VALUES ('709', '11', '1', '1725', '1', '6', '7');
INSERT INTO `payroll_item` VALUES ('710', '12', '1', '850', '1', '6', '7');
INSERT INTO `payroll_item` VALUES ('711', '7', '1', '25000', '1', '7', '7');
INSERT INTO `payroll_item` VALUES ('712', '3', '5', '3750', '1', '7', '7');
INSERT INTO `payroll_item` VALUES ('713', '9', '1', '3909.85', '1', '7', '7');
INSERT INTO `payroll_item` VALUES ('714', '10', '1', '1162', '1', '7', '7');
INSERT INTO `payroll_item` VALUES ('715', '16', '1', '0', '1', '7', '7');
INSERT INTO `payroll_item` VALUES ('716', '15', '1', '0', '1', '7', '7');
INSERT INTO `payroll_item` VALUES ('717', '11', '1', '1725', '1', '7', '7');
INSERT INTO `payroll_item` VALUES ('718', '12', '1', '850', '1', '7', '7');
INSERT INTO `payroll_item` VALUES ('719', '7', '1', '7826', '1', '8', '7');
INSERT INTO `payroll_item` VALUES ('720', '3', '5', '1174', '1', '8', '7');
INSERT INTO `payroll_item` VALUES ('721', '9', '1', '0', '1', '8', '7');
INSERT INTO `payroll_item` VALUES ('722', '10', '1', '1162', '1', '8', '7');
INSERT INTO `payroll_item` VALUES ('723', '16', '1', '0', '1', '8', '7');
INSERT INTO `payroll_item` VALUES ('724', '15', '1', '0', '1', '8', '7');
INSERT INTO `payroll_item` VALUES ('725', '11', '1', '540', '1', '8', '7');
INSERT INTO `payroll_item` VALUES ('726', '12', '1', '400', '1', '8', '7');
INSERT INTO `payroll_item` VALUES ('727', '7', '1', '10000', '1', '9', '7');
INSERT INTO `payroll_item` VALUES ('728', '3', '5', '1500', '1', '9', '7');
INSERT INTO `payroll_item` VALUES ('729', '9', '1', '1113.3', '1', '9', '7');
INSERT INTO `payroll_item` VALUES ('730', '10', '1', '1162', '1', '9', '7');
INSERT INTO `payroll_item` VALUES ('731', '16', '1', '0', '1', '9', '7');
INSERT INTO `payroll_item` VALUES ('732', '15', '1', '0', '1', '9', '7');
INSERT INTO `payroll_item` VALUES ('733', '11', '1', '690', '1', '9', '7');
INSERT INTO `payroll_item` VALUES ('734', '12', '1', '400', '1', '9', '7');
INSERT INTO `payroll_item` VALUES ('735', '7', '1', '15000', '1', '10', '7');
INSERT INTO `payroll_item` VALUES ('736', '3', '5', '2250', '1', '10', '7');
INSERT INTO `payroll_item` VALUES ('737', '9', '1', '1924.05', '1', '10', '7');
INSERT INTO `payroll_item` VALUES ('738', '10', '1', '1162', '1', '10', '7');
INSERT INTO `payroll_item` VALUES ('739', '16', '1', '0', '1', '10', '7');
INSERT INTO `payroll_item` VALUES ('740', '15', '1', '0', '1', '10', '7');
INSERT INTO `payroll_item` VALUES ('741', '11', '1', '1035', '1', '10', '7');
INSERT INTO `payroll_item` VALUES ('742', '12', '1', '600', '1', '10', '7');
INSERT INTO `payroll_item` VALUES ('743', '7', '1', '15000', '1', '11', '7');
INSERT INTO `payroll_item` VALUES ('744', '3', '5', '2250', '1', '11', '7');
INSERT INTO `payroll_item` VALUES ('745', '9', '1', '1924.05', '1', '11', '7');
INSERT INTO `payroll_item` VALUES ('746', '10', '1', '1162', '1', '11', '7');
INSERT INTO `payroll_item` VALUES ('747', '16', '1', '0', '1', '11', '7');
INSERT INTO `payroll_item` VALUES ('748', '15', '1', '0', '1', '11', '7');
INSERT INTO `payroll_item` VALUES ('749', '11', '1', '1035', '1', '11', '7');
INSERT INTO `payroll_item` VALUES ('750', '12', '1', '600', '1', '11', '7');
INSERT INTO `payroll_item` VALUES ('751', '7', '1', '20000', '1', '12', '7');
INSERT INTO `payroll_item` VALUES ('752', '3', '5', '3000', '1', '12', '7');
INSERT INTO `payroll_item` VALUES ('753', '9', '1', '2828.85', '1', '12', '7');
INSERT INTO `payroll_item` VALUES ('754', '10', '1', '1162', '1', '12', '7');
INSERT INTO `payroll_item` VALUES ('755', '16', '1', '0', '1', '12', '7');
INSERT INTO `payroll_item` VALUES ('756', '15', '1', '0', '1', '12', '7');
INSERT INTO `payroll_item` VALUES ('757', '11', '1', '1380', '1', '12', '7');
INSERT INTO `payroll_item` VALUES ('758', '12', '1', '750', '1', '12', '7');
INSERT INTO `payroll_item` VALUES ('759', '7', '1', '27000', '1', '13', '7');
INSERT INTO `payroll_item` VALUES ('760', '3', '5', '4050', '1', '13', '7');
INSERT INTO `payroll_item` VALUES ('761', '9', '1', '4342.25', '1', '13', '7');
INSERT INTO `payroll_item` VALUES ('762', '10', '1', '1162', '1', '13', '7');
INSERT INTO `payroll_item` VALUES ('763', '16', '1', '0', '1', '13', '7');
INSERT INTO `payroll_item` VALUES ('764', '15', '1', '0', '1', '13', '7');
INSERT INTO `payroll_item` VALUES ('765', '11', '1', '1863', '1', '13', '7');
INSERT INTO `payroll_item` VALUES ('766', '12', '1', '900', '1', '13', '7');
INSERT INTO `payroll_item` VALUES ('767', '7', '1', '18000', '1', '14', '7');
INSERT INTO `payroll_item` VALUES ('768', '3', '5', '2700', '1', '14', '7');
INSERT INTO `payroll_item` VALUES ('769', '9', '1', '2410.5', '1', '14', '7');
INSERT INTO `payroll_item` VALUES ('770', '10', '1', '1162', '1', '14', '7');
INSERT INTO `payroll_item` VALUES ('771', '16', '1', '0', '1', '14', '7');
INSERT INTO `payroll_item` VALUES ('772', '15', '1', '0', '1', '14', '7');
INSERT INTO `payroll_item` VALUES ('773', '11', '1', '1242', '1', '14', '7');
INSERT INTO `payroll_item` VALUES ('774', '12', '1', '750', '1', '14', '7');
INSERT INTO `payroll_item` VALUES ('775', '7', '1', '10000', '1', '15', '7');
INSERT INTO `payroll_item` VALUES ('776', '3', '5', '1500', '1', '15', '7');
INSERT INTO `payroll_item` VALUES ('777', '9', '1', '1113.3', '1', '15', '7');
INSERT INTO `payroll_item` VALUES ('778', '10', '1', '1162', '1', '15', '7');
INSERT INTO `payroll_item` VALUES ('779', '16', '1', '0', '1', '15', '7');
INSERT INTO `payroll_item` VALUES ('780', '15', '1', '0', '1', '15', '7');
INSERT INTO `payroll_item` VALUES ('781', '11', '1', '690', '1', '15', '7');
INSERT INTO `payroll_item` VALUES ('782', '12', '1', '400', '1', '15', '7');
INSERT INTO `payroll_item` VALUES ('783', '7', '1', '14000', '1', '16', '7');
INSERT INTO `payroll_item` VALUES ('784', '3', '5', '2100', '1', '16', '7');
INSERT INTO `payroll_item` VALUES ('785', '9', '1', '1761.9', '1', '16', '7');
INSERT INTO `payroll_item` VALUES ('786', '10', '1', '1162', '1', '16', '7');
INSERT INTO `payroll_item` VALUES ('787', '16', '1', '0', '1', '16', '7');
INSERT INTO `payroll_item` VALUES ('788', '15', '1', '0', '1', '16', '7');
INSERT INTO `payroll_item` VALUES ('789', '11', '1', '966', '1', '16', '7');
INSERT INTO `payroll_item` VALUES ('790', '12', '1', '600', '1', '16', '7');
INSERT INTO `payroll_item` VALUES ('791', '7', '1', '5436', '1', '17', '7');
INSERT INTO `payroll_item` VALUES ('792', '3', '5', '814', '1', '17', '7');
INSERT INTO `payroll_item` VALUES ('793', '9', '1', '0', '1', '17', '7');
INSERT INTO `payroll_item` VALUES ('794', '10', '1', '1162', '1', '17', '7');
INSERT INTO `payroll_item` VALUES ('795', '16', '1', '0', '1', '17', '7');
INSERT INTO `payroll_item` VALUES ('796', '15', '1', '0', '1', '17', '7');
INSERT INTO `payroll_item` VALUES ('797', '11', '1', '375', '1', '17', '7');
INSERT INTO `payroll_item` VALUES ('798', '12', '1', '300', '1', '17', '7');
INSERT INTO `payroll_item` VALUES ('799', '7', '1', '25000', '1', '19', '7');
INSERT INTO `payroll_item` VALUES ('800', '3', '5', '3750', '1', '19', '7');
INSERT INTO `payroll_item` VALUES ('801', '9', '1', '3909.85', '1', '19', '7');
INSERT INTO `payroll_item` VALUES ('802', '10', '1', '1162', '1', '19', '7');
INSERT INTO `payroll_item` VALUES ('803', '16', '1', '0', '1', '19', '7');
INSERT INTO `payroll_item` VALUES ('804', '15', '1', '0', '1', '19', '7');
INSERT INTO `payroll_item` VALUES ('805', '11', '1', '1725', '1', '19', '7');
INSERT INTO `payroll_item` VALUES ('806', '12', '1', '850', '1', '19', '7');
INSERT INTO `payroll_item` VALUES ('807', '7', '1', '25000', '1', '20', '7');
INSERT INTO `payroll_item` VALUES ('808', '3', '5', '3750', '1', '20', '7');
INSERT INTO `payroll_item` VALUES ('809', '9', '1', '3909.85', '1', '20', '7');
INSERT INTO `payroll_item` VALUES ('810', '10', '1', '1162', '1', '20', '7');
INSERT INTO `payroll_item` VALUES ('811', '16', '1', '0', '1', '20', '7');
INSERT INTO `payroll_item` VALUES ('812', '15', '1', '0', '1', '20', '7');
INSERT INTO `payroll_item` VALUES ('813', '11', '1', '1725', '1', '20', '7');
INSERT INTO `payroll_item` VALUES ('814', '12', '1', '850', '1', '20', '7');
INSERT INTO `payroll_item` VALUES ('815', '7', '1', '25000', '1', '21', '7');
INSERT INTO `payroll_item` VALUES ('816', '3', '5', '3750', '1', '21', '7');
INSERT INTO `payroll_item` VALUES ('817', '9', '1', '3909.85', '1', '21', '7');
INSERT INTO `payroll_item` VALUES ('818', '10', '1', '1162', '1', '21', '7');
INSERT INTO `payroll_item` VALUES ('819', '16', '1', '0', '1', '21', '7');
INSERT INTO `payroll_item` VALUES ('820', '15', '1', '0', '1', '21', '7');
INSERT INTO `payroll_item` VALUES ('821', '11', '1', '1725', '1', '21', '7');
INSERT INTO `payroll_item` VALUES ('822', '12', '1', '850', '1', '21', '7');
INSERT INTO `payroll_item` VALUES ('823', '9', '1', '0', '1', '22', '7');
INSERT INTO `payroll_item` VALUES ('824', '10', '1', '1162', '1', '22', '7');
INSERT INTO `payroll_item` VALUES ('825', '16', '1', '0', '1', '22', '7');
INSERT INTO `payroll_item` VALUES ('826', '15', '1', '0', '1', '22', '7');
INSERT INTO `payroll_item` VALUES ('827', '11', '1', '0', '1', '22', '7');
INSERT INTO `payroll_item` VALUES ('828', '12', '1', '150', '1', '22', '7');
INSERT INTO `payroll_item` VALUES ('829', '7', '1', '10000', '1', '23', '7');
INSERT INTO `payroll_item` VALUES ('830', '3', '5', '1500', '1', '23', '7');
INSERT INTO `payroll_item` VALUES ('831', '9', '1', '1113.3', '1', '23', '7');
INSERT INTO `payroll_item` VALUES ('832', '10', '1', '1162', '1', '23', '7');
INSERT INTO `payroll_item` VALUES ('833', '16', '1', '0', '1', '23', '7');
INSERT INTO `payroll_item` VALUES ('834', '15', '1', '0', '1', '23', '7');
INSERT INTO `payroll_item` VALUES ('835', '11', '1', '690', '1', '23', '7');
INSERT INTO `payroll_item` VALUES ('836', '12', '1', '400', '1', '23', '7');
INSERT INTO `payroll_item` VALUES ('837', '9', '1', '0', '1', '24', '7');
INSERT INTO `payroll_item` VALUES ('838', '10', '1', '1162', '1', '24', '7');
INSERT INTO `payroll_item` VALUES ('839', '16', '1', '0', '1', '24', '7');
INSERT INTO `payroll_item` VALUES ('840', '15', '1', '0', '1', '24', '7');
INSERT INTO `payroll_item` VALUES ('841', '11', '1', '0', '1', '24', '7');
INSERT INTO `payroll_item` VALUES ('842', '12', '1', '150', '1', '24', '7');
INSERT INTO `payroll_item` VALUES ('843', '9', '1', '0', '1', '25', '7');
INSERT INTO `payroll_item` VALUES ('844', '10', '1', '1162', '1', '25', '7');
INSERT INTO `payroll_item` VALUES ('845', '16', '1', '0', '1', '25', '7');
INSERT INTO `payroll_item` VALUES ('846', '15', '1', '0', '1', '25', '7');
INSERT INTO `payroll_item` VALUES ('847', '11', '1', '0', '1', '25', '7');
INSERT INTO `payroll_item` VALUES ('848', '12', '1', '150', '1', '25', '7');
INSERT INTO `payroll_item` VALUES ('849', '9', '1', '0', '1', '26', '7');
INSERT INTO `payroll_item` VALUES ('850', '10', '1', '1162', '1', '26', '7');
INSERT INTO `payroll_item` VALUES ('851', '16', '1', '0', '1', '26', '7');
INSERT INTO `payroll_item` VALUES ('852', '15', '1', '0', '1', '26', '7');
INSERT INTO `payroll_item` VALUES ('853', '11', '1', '0', '1', '26', '7');
INSERT INTO `payroll_item` VALUES ('854', '12', '1', '150', '1', '26', '7');
INSERT INTO `payroll_item` VALUES ('855', '9', '1', '0', '1', '27', '7');
INSERT INTO `payroll_item` VALUES ('856', '10', '1', '1162', '1', '27', '7');
INSERT INTO `payroll_item` VALUES ('857', '16', '1', '0', '1', '27', '7');
INSERT INTO `payroll_item` VALUES ('858', '15', '1', '0', '1', '27', '7');
INSERT INTO `payroll_item` VALUES ('859', '11', '1', '0', '1', '27', '7');
INSERT INTO `payroll_item` VALUES ('860', '12', '1', '150', '1', '27', '7');
INSERT INTO `payroll_item` VALUES ('861', '9', '1', '0', '1', '28', '7');
INSERT INTO `payroll_item` VALUES ('862', '10', '1', '1162', '1', '28', '7');
INSERT INTO `payroll_item` VALUES ('863', '16', '1', '0', '1', '28', '7');
INSERT INTO `payroll_item` VALUES ('864', '15', '1', '0', '1', '28', '7');
INSERT INTO `payroll_item` VALUES ('865', '11', '1', '0', '1', '28', '7');
INSERT INTO `payroll_item` VALUES ('866', '12', '1', '150', '1', '28', '7');
INSERT INTO `payroll_item` VALUES ('867', '9', '1', '0', '1', '29', '7');
INSERT INTO `payroll_item` VALUES ('868', '10', '1', '1162', '1', '29', '7');
INSERT INTO `payroll_item` VALUES ('869', '16', '1', '0', '1', '29', '7');
INSERT INTO `payroll_item` VALUES ('870', '15', '1', '0', '1', '29', '7');
INSERT INTO `payroll_item` VALUES ('871', '11', '1', '0', '1', '29', '7');
INSERT INTO `payroll_item` VALUES ('872', '12', '1', '150', '1', '29', '7');
INSERT INTO `payroll_item` VALUES ('873', '9', '1', '0', '1', '30', '7');
INSERT INTO `payroll_item` VALUES ('874', '10', '1', '1162', '1', '30', '7');
INSERT INTO `payroll_item` VALUES ('875', '16', '1', '0', '1', '30', '7');
INSERT INTO `payroll_item` VALUES ('876', '15', '1', '0', '1', '30', '7');
INSERT INTO `payroll_item` VALUES ('877', '11', '1', '0', '1', '30', '7');
INSERT INTO `payroll_item` VALUES ('878', '12', '1', '150', '1', '30', '7');
INSERT INTO `payroll_item` VALUES ('879', '9', '1', '0', '1', '31', '7');
INSERT INTO `payroll_item` VALUES ('880', '10', '1', '1162', '1', '31', '7');
INSERT INTO `payroll_item` VALUES ('881', '16', '1', '0', '1', '31', '7');
INSERT INTO `payroll_item` VALUES ('882', '15', '1', '0', '1', '31', '7');
INSERT INTO `payroll_item` VALUES ('883', '11', '1', '0', '1', '31', '7');
INSERT INTO `payroll_item` VALUES ('884', '12', '1', '150', '1', '31', '7');
INSERT INTO `payroll_item` VALUES ('885', '9', '1', '0', '1', '32', '7');
INSERT INTO `payroll_item` VALUES ('886', '10', '1', '1162', '1', '32', '7');
INSERT INTO `payroll_item` VALUES ('887', '16', '1', '0', '1', '32', '7');
INSERT INTO `payroll_item` VALUES ('888', '15', '1', '0', '1', '32', '7');
INSERT INTO `payroll_item` VALUES ('889', '11', '1', '0', '1', '32', '7');
INSERT INTO `payroll_item` VALUES ('890', '12', '1', '150', '1', '32', '7');
INSERT INTO `payroll_item` VALUES ('891', '9', '1', '0', '1', '33', '7');
INSERT INTO `payroll_item` VALUES ('892', '10', '1', '1162', '1', '33', '7');
INSERT INTO `payroll_item` VALUES ('893', '16', '1', '0', '1', '33', '7');
INSERT INTO `payroll_item` VALUES ('894', '15', '1', '0', '1', '33', '7');
INSERT INTO `payroll_item` VALUES ('895', '11', '1', '0', '1', '33', '7');
INSERT INTO `payroll_item` VALUES ('896', '12', '1', '150', '1', '33', '7');
INSERT INTO `payroll_item` VALUES ('897', '9', '1', '0', '1', '34', '7');
INSERT INTO `payroll_item` VALUES ('898', '10', '1', '1162', '1', '34', '7');
INSERT INTO `payroll_item` VALUES ('899', '16', '1', '0', '1', '34', '7');
INSERT INTO `payroll_item` VALUES ('900', '15', '1', '0', '1', '34', '7');
INSERT INTO `payroll_item` VALUES ('901', '11', '1', '0', '1', '34', '7');
INSERT INTO `payroll_item` VALUES ('902', '12', '1', '150', '1', '34', '7');
INSERT INTO `payroll_item` VALUES ('903', '7', '1', '20000', '1', '35', '7');
INSERT INTO `payroll_item` VALUES ('904', '3', '5', '3000', '1', '35', '7');
INSERT INTO `payroll_item` VALUES ('905', '9', '1', '2828.85', '1', '35', '7');
INSERT INTO `payroll_item` VALUES ('906', '10', '1', '1162', '1', '35', '7');
INSERT INTO `payroll_item` VALUES ('907', '16', '1', '0', '1', '35', '7');
INSERT INTO `payroll_item` VALUES ('908', '15', '1', '0', '1', '35', '7');
INSERT INTO `payroll_item` VALUES ('909', '11', '1', '1380', '1', '35', '7');
INSERT INTO `payroll_item` VALUES ('910', '12', '1', '750', '1', '35', '7');
INSERT INTO `payroll_item` VALUES ('911', '4', '3', '300', '1', '35', '7');
INSERT INTO `payroll_item` VALUES ('912', '7', '1', '35000', '1', '3', '8');
INSERT INTO `payroll_item` VALUES ('913', '3', '5', '5250', '1', '3', '8');
INSERT INTO `payroll_item` VALUES ('914', '9', '1', '6497.9', '1', '3', '8');
INSERT INTO `payroll_item` VALUES ('915', '10', '1', '1162', '1', '3', '8');
INSERT INTO `payroll_item` VALUES ('916', '16', '1', '0', '1', '3', '8');
INSERT INTO `payroll_item` VALUES ('917', '15', '1', '0', '1', '3', '8');
INSERT INTO `payroll_item` VALUES ('918', '11', '1', '2415', '1', '3', '8');
INSERT INTO `payroll_item` VALUES ('919', '12', '1', '1000', '1', '3', '8');
INSERT INTO `payroll_item` VALUES ('920', '7', '1', '20000', '1', '4', '8');
INSERT INTO `payroll_item` VALUES ('921', '3', '5', '3000', '1', '4', '8');
INSERT INTO `payroll_item` VALUES ('922', '9', '1', '2828.85', '1', '4', '8');
INSERT INTO `payroll_item` VALUES ('923', '10', '1', '1162', '1', '4', '8');
INSERT INTO `payroll_item` VALUES ('924', '16', '1', '0', '1', '4', '8');
INSERT INTO `payroll_item` VALUES ('925', '15', '1', '0', '1', '4', '8');
INSERT INTO `payroll_item` VALUES ('926', '11', '1', '1380', '1', '4', '8');
INSERT INTO `payroll_item` VALUES ('927', '12', '1', '750', '1', '4', '8');
INSERT INTO `payroll_item` VALUES ('928', '7', '1', '20000', '1', '5', '8');
INSERT INTO `payroll_item` VALUES ('929', '3', '5', '3000', '1', '5', '8');
INSERT INTO `payroll_item` VALUES ('930', '9', '1', '2828.85', '1', '5', '8');
INSERT INTO `payroll_item` VALUES ('931', '10', '1', '1162', '1', '5', '8');
INSERT INTO `payroll_item` VALUES ('932', '16', '1', '0', '1', '5', '8');
INSERT INTO `payroll_item` VALUES ('933', '15', '1', '0', '1', '5', '8');
INSERT INTO `payroll_item` VALUES ('934', '11', '1', '1380', '1', '5', '8');
INSERT INTO `payroll_item` VALUES ('935', '12', '1', '750', '1', '5', '8');
INSERT INTO `payroll_item` VALUES ('936', '7', '1', '25000', '1', '6', '8');
INSERT INTO `payroll_item` VALUES ('937', '3', '5', '3750', '1', '6', '8');
INSERT INTO `payroll_item` VALUES ('938', '9', '1', '3909.85', '1', '6', '8');
INSERT INTO `payroll_item` VALUES ('939', '10', '1', '1162', '1', '6', '8');
INSERT INTO `payroll_item` VALUES ('940', '16', '1', '0', '1', '6', '8');
INSERT INTO `payroll_item` VALUES ('941', '15', '1', '0', '1', '6', '8');
INSERT INTO `payroll_item` VALUES ('942', '11', '1', '1725', '1', '6', '8');
INSERT INTO `payroll_item` VALUES ('943', '12', '1', '850', '1', '6', '8');
INSERT INTO `payroll_item` VALUES ('944', '7', '1', '25000', '1', '7', '8');
INSERT INTO `payroll_item` VALUES ('945', '3', '5', '3750', '1', '7', '8');
INSERT INTO `payroll_item` VALUES ('946', '9', '1', '3909.85', '1', '7', '8');
INSERT INTO `payroll_item` VALUES ('947', '10', '1', '1162', '1', '7', '8');
INSERT INTO `payroll_item` VALUES ('948', '16', '1', '0', '1', '7', '8');
INSERT INTO `payroll_item` VALUES ('949', '15', '1', '0', '1', '7', '8');
INSERT INTO `payroll_item` VALUES ('950', '11', '1', '1725', '1', '7', '8');
INSERT INTO `payroll_item` VALUES ('951', '12', '1', '850', '1', '7', '8');
INSERT INTO `payroll_item` VALUES ('952', '7', '1', '7826', '1', '8', '8');
INSERT INTO `payroll_item` VALUES ('953', '3', '5', '1174', '1', '8', '8');
INSERT INTO `payroll_item` VALUES ('954', '9', '1', '0', '1', '8', '8');
INSERT INTO `payroll_item` VALUES ('955', '10', '1', '1162', '1', '8', '8');
INSERT INTO `payroll_item` VALUES ('956', '16', '1', '0', '1', '8', '8');
INSERT INTO `payroll_item` VALUES ('957', '15', '1', '0', '1', '8', '8');
INSERT INTO `payroll_item` VALUES ('958', '11', '1', '540', '1', '8', '8');
INSERT INTO `payroll_item` VALUES ('959', '12', '1', '400', '1', '8', '8');
INSERT INTO `payroll_item` VALUES ('960', '7', '1', '10000', '1', '9', '8');
INSERT INTO `payroll_item` VALUES ('961', '3', '5', '1500', '1', '9', '8');
INSERT INTO `payroll_item` VALUES ('962', '9', '1', '1113.3', '1', '9', '8');
INSERT INTO `payroll_item` VALUES ('963', '10', '1', '1162', '1', '9', '8');
INSERT INTO `payroll_item` VALUES ('964', '16', '1', '0', '1', '9', '8');
INSERT INTO `payroll_item` VALUES ('965', '15', '1', '0', '1', '9', '8');
INSERT INTO `payroll_item` VALUES ('966', '11', '1', '690', '1', '9', '8');
INSERT INTO `payroll_item` VALUES ('967', '12', '1', '400', '1', '9', '8');
INSERT INTO `payroll_item` VALUES ('968', '7', '1', '15000', '1', '10', '8');
INSERT INTO `payroll_item` VALUES ('969', '3', '5', '2250', '1', '10', '8');
INSERT INTO `payroll_item` VALUES ('970', '9', '1', '1924.05', '1', '10', '8');
INSERT INTO `payroll_item` VALUES ('971', '10', '1', '1162', '1', '10', '8');
INSERT INTO `payroll_item` VALUES ('972', '16', '1', '0', '1', '10', '8');
INSERT INTO `payroll_item` VALUES ('973', '15', '1', '0', '1', '10', '8');
INSERT INTO `payroll_item` VALUES ('974', '11', '1', '1035', '1', '10', '8');
INSERT INTO `payroll_item` VALUES ('975', '12', '1', '600', '1', '10', '8');
INSERT INTO `payroll_item` VALUES ('976', '7', '1', '15000', '1', '11', '8');
INSERT INTO `payroll_item` VALUES ('977', '3', '5', '2250', '1', '11', '8');
INSERT INTO `payroll_item` VALUES ('978', '9', '1', '1924.05', '1', '11', '8');
INSERT INTO `payroll_item` VALUES ('979', '10', '1', '1162', '1', '11', '8');
INSERT INTO `payroll_item` VALUES ('980', '16', '1', '0', '1', '11', '8');
INSERT INTO `payroll_item` VALUES ('981', '15', '1', '0', '1', '11', '8');
INSERT INTO `payroll_item` VALUES ('982', '11', '1', '1035', '1', '11', '8');
INSERT INTO `payroll_item` VALUES ('983', '12', '1', '600', '1', '11', '8');
INSERT INTO `payroll_item` VALUES ('984', '7', '1', '20000', '1', '12', '8');
INSERT INTO `payroll_item` VALUES ('985', '3', '5', '3000', '1', '12', '8');
INSERT INTO `payroll_item` VALUES ('986', '9', '1', '2828.85', '1', '12', '8');
INSERT INTO `payroll_item` VALUES ('987', '10', '1', '1162', '1', '12', '8');
INSERT INTO `payroll_item` VALUES ('988', '16', '1', '0', '1', '12', '8');
INSERT INTO `payroll_item` VALUES ('989', '15', '1', '0', '1', '12', '8');
INSERT INTO `payroll_item` VALUES ('990', '11', '1', '1380', '1', '12', '8');
INSERT INTO `payroll_item` VALUES ('991', '12', '1', '750', '1', '12', '8');
INSERT INTO `payroll_item` VALUES ('992', '7', '1', '27000', '1', '13', '8');
INSERT INTO `payroll_item` VALUES ('993', '3', '5', '4050', '1', '13', '8');
INSERT INTO `payroll_item` VALUES ('994', '9', '1', '4342.25', '1', '13', '8');
INSERT INTO `payroll_item` VALUES ('995', '10', '1', '1162', '1', '13', '8');
INSERT INTO `payroll_item` VALUES ('996', '16', '1', '0', '1', '13', '8');
INSERT INTO `payroll_item` VALUES ('997', '15', '1', '0', '1', '13', '8');
INSERT INTO `payroll_item` VALUES ('998', '11', '1', '1863', '1', '13', '8');
INSERT INTO `payroll_item` VALUES ('999', '12', '1', '900', '1', '13', '8');
INSERT INTO `payroll_item` VALUES ('1000', '7', '1', '18000', '1', '14', '8');
INSERT INTO `payroll_item` VALUES ('1001', '3', '5', '2700', '1', '14', '8');
INSERT INTO `payroll_item` VALUES ('1002', '9', '1', '2410.5', '1', '14', '8');
INSERT INTO `payroll_item` VALUES ('1003', '10', '1', '1162', '1', '14', '8');
INSERT INTO `payroll_item` VALUES ('1004', '16', '1', '0', '1', '14', '8');
INSERT INTO `payroll_item` VALUES ('1005', '15', '1', '0', '1', '14', '8');
INSERT INTO `payroll_item` VALUES ('1006', '11', '1', '1242', '1', '14', '8');
INSERT INTO `payroll_item` VALUES ('1007', '12', '1', '750', '1', '14', '8');
INSERT INTO `payroll_item` VALUES ('1008', '7', '1', '10000', '1', '15', '8');
INSERT INTO `payroll_item` VALUES ('1009', '3', '5', '1500', '1', '15', '8');
INSERT INTO `payroll_item` VALUES ('1010', '9', '1', '1113.3', '1', '15', '8');
INSERT INTO `payroll_item` VALUES ('1011', '10', '1', '1162', '1', '15', '8');
INSERT INTO `payroll_item` VALUES ('1012', '16', '1', '0', '1', '15', '8');
INSERT INTO `payroll_item` VALUES ('1013', '15', '1', '0', '1', '15', '8');
INSERT INTO `payroll_item` VALUES ('1014', '11', '1', '690', '1', '15', '8');
INSERT INTO `payroll_item` VALUES ('1015', '12', '1', '400', '1', '15', '8');
INSERT INTO `payroll_item` VALUES ('1016', '7', '1', '14000', '1', '16', '8');
INSERT INTO `payroll_item` VALUES ('1017', '3', '5', '2100', '1', '16', '8');
INSERT INTO `payroll_item` VALUES ('1018', '9', '1', '1761.9', '1', '16', '8');
INSERT INTO `payroll_item` VALUES ('1019', '10', '1', '1162', '1', '16', '8');
INSERT INTO `payroll_item` VALUES ('1020', '16', '1', '0', '1', '16', '8');
INSERT INTO `payroll_item` VALUES ('1021', '15', '1', '0', '1', '16', '8');
INSERT INTO `payroll_item` VALUES ('1022', '11', '1', '966', '1', '16', '8');
INSERT INTO `payroll_item` VALUES ('1023', '12', '1', '600', '1', '16', '8');
INSERT INTO `payroll_item` VALUES ('1024', '7', '1', '5436', '1', '17', '8');
INSERT INTO `payroll_item` VALUES ('1025', '3', '5', '814', '1', '17', '8');
INSERT INTO `payroll_item` VALUES ('1026', '9', '1', '0', '1', '17', '8');
INSERT INTO `payroll_item` VALUES ('1027', '10', '1', '1162', '1', '17', '8');
INSERT INTO `payroll_item` VALUES ('1028', '16', '1', '0', '1', '17', '8');
INSERT INTO `payroll_item` VALUES ('1029', '15', '1', '0', '1', '17', '8');
INSERT INTO `payroll_item` VALUES ('1030', '11', '1', '375', '1', '17', '8');
INSERT INTO `payroll_item` VALUES ('1031', '12', '1', '300', '1', '17', '8');
INSERT INTO `payroll_item` VALUES ('1032', '7', '1', '25000', '1', '19', '8');
INSERT INTO `payroll_item` VALUES ('1033', '3', '5', '3750', '1', '19', '8');
INSERT INTO `payroll_item` VALUES ('1034', '9', '1', '3909.85', '1', '19', '8');
INSERT INTO `payroll_item` VALUES ('1035', '10', '1', '1162', '1', '19', '8');
INSERT INTO `payroll_item` VALUES ('1036', '16', '1', '0', '1', '19', '8');
INSERT INTO `payroll_item` VALUES ('1037', '15', '1', '0', '1', '19', '8');
INSERT INTO `payroll_item` VALUES ('1038', '11', '1', '1725', '1', '19', '8');
INSERT INTO `payroll_item` VALUES ('1039', '12', '1', '850', '1', '19', '8');
INSERT INTO `payroll_item` VALUES ('1040', '7', '1', '25000', '1', '20', '8');
INSERT INTO `payroll_item` VALUES ('1041', '3', '5', '3750', '1', '20', '8');
INSERT INTO `payroll_item` VALUES ('1042', '9', '1', '3909.85', '1', '20', '8');
INSERT INTO `payroll_item` VALUES ('1043', '10', '1', '1162', '1', '20', '8');
INSERT INTO `payroll_item` VALUES ('1044', '16', '1', '0', '1', '20', '8');
INSERT INTO `payroll_item` VALUES ('1045', '15', '1', '0', '1', '20', '8');
INSERT INTO `payroll_item` VALUES ('1046', '11', '1', '1725', '1', '20', '8');
INSERT INTO `payroll_item` VALUES ('1047', '12', '1', '850', '1', '20', '8');
INSERT INTO `payroll_item` VALUES ('1048', '7', '1', '25000', '1', '21', '8');
INSERT INTO `payroll_item` VALUES ('1049', '3', '5', '3750', '1', '21', '8');
INSERT INTO `payroll_item` VALUES ('1050', '9', '1', '3909.85', '1', '21', '8');
INSERT INTO `payroll_item` VALUES ('1051', '10', '1', '1162', '1', '21', '8');
INSERT INTO `payroll_item` VALUES ('1052', '16', '1', '0', '1', '21', '8');
INSERT INTO `payroll_item` VALUES ('1053', '15', '1', '0', '1', '21', '8');
INSERT INTO `payroll_item` VALUES ('1054', '11', '1', '1725', '1', '21', '8');
INSERT INTO `payroll_item` VALUES ('1055', '12', '1', '850', '1', '21', '8');
INSERT INTO `payroll_item` VALUES ('1056', '7', '1', '10000', '1', '23', '8');
INSERT INTO `payroll_item` VALUES ('1057', '3', '5', '1500', '1', '23', '8');
INSERT INTO `payroll_item` VALUES ('1058', '9', '1', '1113.3', '1', '23', '8');
INSERT INTO `payroll_item` VALUES ('1059', '10', '1', '1162', '1', '23', '8');
INSERT INTO `payroll_item` VALUES ('1060', '16', '1', '0', '1', '23', '8');
INSERT INTO `payroll_item` VALUES ('1061', '15', '1', '0', '1', '23', '8');
INSERT INTO `payroll_item` VALUES ('1062', '11', '1', '690', '1', '23', '8');
INSERT INTO `payroll_item` VALUES ('1063', '12', '1', '400', '1', '23', '8');
INSERT INTO `payroll_item` VALUES ('1064', '7', '1', '20000', '1', '35', '8');
INSERT INTO `payroll_item` VALUES ('1065', '3', '5', '3000', '1', '35', '8');
INSERT INTO `payroll_item` VALUES ('1066', '9', '1', '2828.85', '1', '35', '8');
INSERT INTO `payroll_item` VALUES ('1067', '10', '1', '1162', '1', '35', '8');
INSERT INTO `payroll_item` VALUES ('1068', '16', '1', '0', '1', '35', '8');
INSERT INTO `payroll_item` VALUES ('1069', '15', '1', '0', '1', '35', '8');
INSERT INTO `payroll_item` VALUES ('1070', '11', '1', '1380', '1', '35', '8');
INSERT INTO `payroll_item` VALUES ('1071', '12', '1', '750', '1', '35', '8');
INSERT INTO `payroll_item` VALUES ('1072', '4', '3', '300', '1', '35', '8');
INSERT INTO `payroll_item` VALUES ('1073', '7', '1', '21000', '1', '40', '8');
INSERT INTO `payroll_item` VALUES ('1074', '3', '5', '1500', '1', '40', '8');
INSERT INTO `payroll_item` VALUES ('1075', '9', '1', '2734.85', '1', '40', '8');
INSERT INTO `payroll_item` VALUES ('1076', '10', '1', '1162', '1', '40', '8');
INSERT INTO `payroll_item` VALUES ('1077', '16', '1', '0', '1', '40', '8');
INSERT INTO `payroll_item` VALUES ('1078', '15', '1', '0', '1', '40', '8');
INSERT INTO `payroll_item` VALUES ('1079', '11', '1', '1350', '1', '40', '8');
INSERT INTO `payroll_item` VALUES ('1080', '12', '1', '750', '1', '40', '8');
INSERT INTO `payroll_item` VALUES ('1081', '7', '1', '35000', '1', '3', '9');
INSERT INTO `payroll_item` VALUES ('1082', '3', '5', '5250', '1', '3', '9');
INSERT INTO `payroll_item` VALUES ('1083', '9', '1', '6497.9', '1', '3', '9');
INSERT INTO `payroll_item` VALUES ('1084', '10', '1', '1162', '1', '3', '9');
INSERT INTO `payroll_item` VALUES ('1085', '16', '1', '0', '1', '3', '9');
INSERT INTO `payroll_item` VALUES ('1086', '15', '1', '0', '1', '3', '9');
INSERT INTO `payroll_item` VALUES ('1087', '11', '1', '2415', '1', '3', '9');
INSERT INTO `payroll_item` VALUES ('1088', '12', '1', '1000', '1', '3', '9');
INSERT INTO `payroll_item` VALUES ('1089', '7', '1', '20000', '1', '4', '9');
INSERT INTO `payroll_item` VALUES ('1090', '3', '5', '3000', '1', '4', '9');
INSERT INTO `payroll_item` VALUES ('1091', '9', '1', '2828.85', '1', '4', '9');
INSERT INTO `payroll_item` VALUES ('1092', '10', '1', '1162', '1', '4', '9');
INSERT INTO `payroll_item` VALUES ('1093', '16', '1', '0', '1', '4', '9');
INSERT INTO `payroll_item` VALUES ('1094', '15', '1', '0', '1', '4', '9');
INSERT INTO `payroll_item` VALUES ('1095', '11', '1', '1380', '1', '4', '9');
INSERT INTO `payroll_item` VALUES ('1096', '12', '1', '750', '1', '4', '9');
INSERT INTO `payroll_item` VALUES ('1097', '7', '1', '20000', '1', '5', '9');
INSERT INTO `payroll_item` VALUES ('1098', '3', '5', '3000', '1', '5', '9');
INSERT INTO `payroll_item` VALUES ('1099', '9', '1', '2828.85', '1', '5', '9');
INSERT INTO `payroll_item` VALUES ('1100', '10', '1', '1162', '1', '5', '9');
INSERT INTO `payroll_item` VALUES ('1101', '16', '1', '0', '1', '5', '9');
INSERT INTO `payroll_item` VALUES ('1102', '15', '1', '0', '1', '5', '9');
INSERT INTO `payroll_item` VALUES ('1103', '11', '1', '1380', '1', '5', '9');
INSERT INTO `payroll_item` VALUES ('1104', '12', '1', '750', '1', '5', '9');
INSERT INTO `payroll_item` VALUES ('1105', '7', '1', '25000', '1', '6', '9');
INSERT INTO `payroll_item` VALUES ('1106', '3', '5', '3750', '1', '6', '9');
INSERT INTO `payroll_item` VALUES ('1107', '9', '1', '3909.85', '1', '6', '9');
INSERT INTO `payroll_item` VALUES ('1108', '10', '1', '1162', '1', '6', '9');
INSERT INTO `payroll_item` VALUES ('1109', '16', '1', '0', '1', '6', '9');
INSERT INTO `payroll_item` VALUES ('1110', '15', '1', '0', '1', '6', '9');
INSERT INTO `payroll_item` VALUES ('1111', '11', '1', '1725', '1', '6', '9');
INSERT INTO `payroll_item` VALUES ('1112', '12', '1', '850', '1', '6', '9');
INSERT INTO `payroll_item` VALUES ('1113', '7', '1', '25000', '1', '7', '9');
INSERT INTO `payroll_item` VALUES ('1114', '3', '5', '3750', '1', '7', '9');
INSERT INTO `payroll_item` VALUES ('1115', '9', '1', '3909.85', '1', '7', '9');
INSERT INTO `payroll_item` VALUES ('1116', '10', '1', '1162', '1', '7', '9');
INSERT INTO `payroll_item` VALUES ('1117', '16', '1', '0', '1', '7', '9');
INSERT INTO `payroll_item` VALUES ('1118', '15', '1', '0', '1', '7', '9');
INSERT INTO `payroll_item` VALUES ('1119', '11', '1', '1725', '1', '7', '9');
INSERT INTO `payroll_item` VALUES ('1120', '12', '1', '850', '1', '7', '9');
INSERT INTO `payroll_item` VALUES ('1121', '7', '1', '7826', '1', '8', '9');
INSERT INTO `payroll_item` VALUES ('1122', '3', '5', '1174', '1', '8', '9');
INSERT INTO `payroll_item` VALUES ('1123', '9', '1', '0', '1', '8', '9');
INSERT INTO `payroll_item` VALUES ('1124', '10', '1', '1162', '1', '8', '9');
INSERT INTO `payroll_item` VALUES ('1125', '16', '1', '0', '1', '8', '9');
INSERT INTO `payroll_item` VALUES ('1126', '15', '1', '0', '1', '8', '9');
INSERT INTO `payroll_item` VALUES ('1127', '11', '1', '540', '1', '8', '9');
INSERT INTO `payroll_item` VALUES ('1128', '12', '1', '400', '1', '8', '9');
INSERT INTO `payroll_item` VALUES ('1129', '7', '1', '10000', '1', '9', '9');
INSERT INTO `payroll_item` VALUES ('1130', '3', '5', '1500', '1', '9', '9');
INSERT INTO `payroll_item` VALUES ('1131', '9', '1', '1113.3', '1', '9', '9');
INSERT INTO `payroll_item` VALUES ('1132', '10', '1', '1162', '1', '9', '9');
INSERT INTO `payroll_item` VALUES ('1133', '16', '1', '0', '1', '9', '9');
INSERT INTO `payroll_item` VALUES ('1134', '15', '1', '0', '1', '9', '9');
INSERT INTO `payroll_item` VALUES ('1135', '11', '1', '690', '1', '9', '9');
INSERT INTO `payroll_item` VALUES ('1136', '12', '1', '400', '1', '9', '9');
INSERT INTO `payroll_item` VALUES ('1137', '7', '1', '15000', '1', '10', '9');
INSERT INTO `payroll_item` VALUES ('1138', '3', '5', '2250', '1', '10', '9');
INSERT INTO `payroll_item` VALUES ('1139', '9', '1', '1924.05', '1', '10', '9');
INSERT INTO `payroll_item` VALUES ('1140', '10', '1', '1162', '1', '10', '9');
INSERT INTO `payroll_item` VALUES ('1141', '16', '1', '0', '1', '10', '9');
INSERT INTO `payroll_item` VALUES ('1142', '15', '1', '0', '1', '10', '9');
INSERT INTO `payroll_item` VALUES ('1143', '11', '1', '1035', '1', '10', '9');
INSERT INTO `payroll_item` VALUES ('1144', '12', '1', '600', '1', '10', '9');
INSERT INTO `payroll_item` VALUES ('1145', '7', '1', '15000', '1', '11', '9');
INSERT INTO `payroll_item` VALUES ('1146', '3', '5', '2250', '1', '11', '9');
INSERT INTO `payroll_item` VALUES ('1147', '9', '1', '1924.05', '1', '11', '9');
INSERT INTO `payroll_item` VALUES ('1148', '10', '1', '1162', '1', '11', '9');
INSERT INTO `payroll_item` VALUES ('1149', '16', '1', '0', '1', '11', '9');
INSERT INTO `payroll_item` VALUES ('1150', '15', '1', '0', '1', '11', '9');
INSERT INTO `payroll_item` VALUES ('1151', '11', '1', '1035', '1', '11', '9');
INSERT INTO `payroll_item` VALUES ('1152', '12', '1', '600', '1', '11', '9');
INSERT INTO `payroll_item` VALUES ('1153', '7', '1', '20000', '1', '12', '9');
INSERT INTO `payroll_item` VALUES ('1154', '3', '5', '3000', '1', '12', '9');
INSERT INTO `payroll_item` VALUES ('1155', '9', '1', '2828.85', '1', '12', '9');
INSERT INTO `payroll_item` VALUES ('1156', '10', '1', '1162', '1', '12', '9');
INSERT INTO `payroll_item` VALUES ('1157', '16', '1', '0', '1', '12', '9');
INSERT INTO `payroll_item` VALUES ('1158', '15', '1', '0', '1', '12', '9');
INSERT INTO `payroll_item` VALUES ('1159', '11', '1', '1380', '1', '12', '9');
INSERT INTO `payroll_item` VALUES ('1160', '12', '1', '750', '1', '12', '9');
INSERT INTO `payroll_item` VALUES ('1161', '7', '1', '27000', '1', '13', '9');
INSERT INTO `payroll_item` VALUES ('1162', '3', '5', '4050', '1', '13', '9');
INSERT INTO `payroll_item` VALUES ('1163', '3', '6', '1000', '1', '13', '9');
INSERT INTO `payroll_item` VALUES ('1164', '9', '1', '4570.9', '1', '13', '9');
INSERT INTO `payroll_item` VALUES ('1165', '10', '1', '1162', '1', '13', '9');
INSERT INTO `payroll_item` VALUES ('1166', '16', '1', '0', '1', '13', '9');
INSERT INTO `payroll_item` VALUES ('1167', '15', '1', '0', '1', '13', '9');
INSERT INTO `payroll_item` VALUES ('1168', '11', '1', '1923', '1', '13', '9');
INSERT INTO `payroll_item` VALUES ('1169', '12', '1', '900', '1', '13', '9');
INSERT INTO `payroll_item` VALUES ('1170', '7', '1', '18000', '1', '14', '9');
INSERT INTO `payroll_item` VALUES ('1171', '3', '5', '2700', '1', '14', '9');
INSERT INTO `payroll_item` VALUES ('1172', '9', '1', '2410.5', '1', '14', '9');
INSERT INTO `payroll_item` VALUES ('1173', '10', '1', '1162', '1', '14', '9');
INSERT INTO `payroll_item` VALUES ('1174', '16', '1', '0', '1', '14', '9');
INSERT INTO `payroll_item` VALUES ('1175', '15', '1', '0', '1', '14', '9');
INSERT INTO `payroll_item` VALUES ('1176', '11', '1', '1242', '1', '14', '9');
INSERT INTO `payroll_item` VALUES ('1177', '12', '1', '750', '1', '14', '9');
INSERT INTO `payroll_item` VALUES ('1178', '7', '1', '10000', '1', '15', '9');
INSERT INTO `payroll_item` VALUES ('1179', '3', '5', '1500', '1', '15', '9');
INSERT INTO `payroll_item` VALUES ('1180', '9', '1', '1113.3', '1', '15', '9');
INSERT INTO `payroll_item` VALUES ('1181', '10', '1', '1162', '1', '15', '9');
INSERT INTO `payroll_item` VALUES ('1182', '16', '1', '0', '1', '15', '9');
INSERT INTO `payroll_item` VALUES ('1183', '15', '1', '0', '1', '15', '9');
INSERT INTO `payroll_item` VALUES ('1184', '11', '1', '690', '1', '15', '9');
INSERT INTO `payroll_item` VALUES ('1185', '12', '1', '400', '1', '15', '9');
INSERT INTO `payroll_item` VALUES ('1186', '7', '1', '14000', '1', '16', '9');
INSERT INTO `payroll_item` VALUES ('1187', '3', '5', '2100', '1', '16', '9');
INSERT INTO `payroll_item` VALUES ('1188', '9', '1', '1761.9', '1', '16', '9');
INSERT INTO `payroll_item` VALUES ('1189', '10', '1', '1162', '1', '16', '9');
INSERT INTO `payroll_item` VALUES ('1190', '16', '1', '0', '1', '16', '9');
INSERT INTO `payroll_item` VALUES ('1191', '15', '1', '0', '1', '16', '9');
INSERT INTO `payroll_item` VALUES ('1192', '11', '1', '966', '1', '16', '9');
INSERT INTO `payroll_item` VALUES ('1193', '12', '1', '600', '1', '16', '9');
INSERT INTO `payroll_item` VALUES ('1194', '7', '1', '5436', '1', '17', '9');
INSERT INTO `payroll_item` VALUES ('1195', '3', '5', '814', '1', '17', '9');
INSERT INTO `payroll_item` VALUES ('1196', '9', '1', '0', '1', '17', '9');
INSERT INTO `payroll_item` VALUES ('1197', '10', '1', '1162', '1', '17', '9');
INSERT INTO `payroll_item` VALUES ('1198', '16', '1', '0', '1', '17', '9');
INSERT INTO `payroll_item` VALUES ('1199', '15', '1', '0', '1', '17', '9');
INSERT INTO `payroll_item` VALUES ('1200', '11', '1', '375', '1', '17', '9');
INSERT INTO `payroll_item` VALUES ('1201', '12', '1', '300', '1', '17', '9');
INSERT INTO `payroll_item` VALUES ('1202', '7', '1', '25000', '1', '19', '9');
INSERT INTO `payroll_item` VALUES ('1203', '3', '5', '3750', '1', '19', '9');
INSERT INTO `payroll_item` VALUES ('1204', '9', '1', '3909.85', '1', '19', '9');
INSERT INTO `payroll_item` VALUES ('1205', '10', '1', '1162', '1', '19', '9');
INSERT INTO `payroll_item` VALUES ('1206', '16', '1', '0', '1', '19', '9');
INSERT INTO `payroll_item` VALUES ('1207', '15', '1', '0', '1', '19', '9');
INSERT INTO `payroll_item` VALUES ('1208', '11', '1', '1725', '1', '19', '9');
INSERT INTO `payroll_item` VALUES ('1209', '12', '1', '850', '1', '19', '9');
INSERT INTO `payroll_item` VALUES ('1210', '7', '1', '25000', '1', '20', '9');
INSERT INTO `payroll_item` VALUES ('1211', '3', '5', '3750', '1', '20', '9');
INSERT INTO `payroll_item` VALUES ('1212', '9', '1', '3909.85', '1', '20', '9');
INSERT INTO `payroll_item` VALUES ('1213', '10', '1', '1162', '1', '20', '9');
INSERT INTO `payroll_item` VALUES ('1214', '16', '1', '0', '1', '20', '9');
INSERT INTO `payroll_item` VALUES ('1215', '15', '1', '0', '1', '20', '9');
INSERT INTO `payroll_item` VALUES ('1216', '11', '1', '1725', '1', '20', '9');
INSERT INTO `payroll_item` VALUES ('1217', '12', '1', '850', '1', '20', '9');
INSERT INTO `payroll_item` VALUES ('1218', '7', '1', '25000', '1', '21', '9');
INSERT INTO `payroll_item` VALUES ('1219', '3', '5', '3750', '1', '21', '9');
INSERT INTO `payroll_item` VALUES ('1220', '9', '1', '3909.85', '1', '21', '9');
INSERT INTO `payroll_item` VALUES ('1221', '10', '1', '1162', '1', '21', '9');
INSERT INTO `payroll_item` VALUES ('1222', '16', '1', '0', '1', '21', '9');
INSERT INTO `payroll_item` VALUES ('1223', '15', '1', '0', '1', '21', '9');
INSERT INTO `payroll_item` VALUES ('1224', '11', '1', '1725', '1', '21', '9');
INSERT INTO `payroll_item` VALUES ('1225', '12', '1', '850', '1', '21', '9');
INSERT INTO `payroll_item` VALUES ('1226', '7', '1', '10000', '1', '23', '9');
INSERT INTO `payroll_item` VALUES ('1227', '3', '5', '1500', '1', '23', '9');
INSERT INTO `payroll_item` VALUES ('1228', '9', '1', '1113.3', '1', '23', '9');
INSERT INTO `payroll_item` VALUES ('1229', '10', '1', '1162', '1', '23', '9');
INSERT INTO `payroll_item` VALUES ('1230', '16', '1', '0', '1', '23', '9');
INSERT INTO `payroll_item` VALUES ('1231', '15', '1', '0', '1', '23', '9');
INSERT INTO `payroll_item` VALUES ('1232', '11', '1', '690', '1', '23', '9');
INSERT INTO `payroll_item` VALUES ('1233', '12', '1', '400', '1', '23', '9');
INSERT INTO `payroll_item` VALUES ('1234', '7', '1', '20000', '1', '35', '9');
INSERT INTO `payroll_item` VALUES ('1235', '3', '5', '3000', '1', '35', '9');
INSERT INTO `payroll_item` VALUES ('1236', '9', '1', '2828.85', '1', '35', '9');
INSERT INTO `payroll_item` VALUES ('1237', '10', '1', '1162', '1', '35', '9');
INSERT INTO `payroll_item` VALUES ('1238', '16', '1', '0', '1', '35', '9');
INSERT INTO `payroll_item` VALUES ('1239', '15', '1', '0', '1', '35', '9');
INSERT INTO `payroll_item` VALUES ('1240', '11', '1', '1380', '1', '35', '9');
INSERT INTO `payroll_item` VALUES ('1241', '12', '1', '750', '1', '35', '9');
INSERT INTO `payroll_item` VALUES ('1242', '4', '3', '300', '1', '35', '9');
INSERT INTO `payroll_item` VALUES ('1243', '7', '1', '21000', '1', '40', '9');
INSERT INTO `payroll_item` VALUES ('1244', '3', '5', '3150', '1', '40', '9');
INSERT INTO `payroll_item` VALUES ('1245', '9', '1', '3045.05', '1', '40', '9');
INSERT INTO `payroll_item` VALUES ('1246', '10', '1', '1162', '1', '40', '9');
INSERT INTO `payroll_item` VALUES ('1247', '16', '1', '0', '1', '40', '9');
INSERT INTO `payroll_item` VALUES ('1248', '15', '1', '0', '1', '40', '9');
INSERT INTO `payroll_item` VALUES ('1249', '11', '1', '1449', '1', '40', '9');
INSERT INTO `payroll_item` VALUES ('1250', '12', '1', '750', '1', '40', '9');
INSERT INTO `payroll_item` VALUES ('1251', '7', '1', '35000', '1', '3', '10');
INSERT INTO `payroll_item` VALUES ('1252', '3', '5', '5250', '1', '3', '10');
INSERT INTO `payroll_item` VALUES ('1253', '9', '1', '6497.9', '1', '3', '10');
INSERT INTO `payroll_item` VALUES ('1254', '10', '1', '1162', '1', '3', '10');
INSERT INTO `payroll_item` VALUES ('1255', '16', '1', '0', '1', '3', '10');
INSERT INTO `payroll_item` VALUES ('1256', '15', '1', '0', '1', '3', '10');
INSERT INTO `payroll_item` VALUES ('1257', '11', '1', '2415', '1', '3', '10');
INSERT INTO `payroll_item` VALUES ('1258', '12', '1', '1000', '1', '3', '10');
INSERT INTO `payroll_item` VALUES ('1259', '7', '1', '20000', '1', '4', '10');
INSERT INTO `payroll_item` VALUES ('1260', '3', '5', '3000', '1', '4', '10');
INSERT INTO `payroll_item` VALUES ('1261', '9', '1', '2828.85', '1', '4', '10');
INSERT INTO `payroll_item` VALUES ('1262', '10', '1', '1162', '1', '4', '10');
INSERT INTO `payroll_item` VALUES ('1263', '16', '1', '0', '1', '4', '10');
INSERT INTO `payroll_item` VALUES ('1264', '15', '1', '0', '1', '4', '10');
INSERT INTO `payroll_item` VALUES ('1265', '11', '1', '1380', '1', '4', '10');
INSERT INTO `payroll_item` VALUES ('1266', '12', '1', '750', '1', '4', '10');
INSERT INTO `payroll_item` VALUES ('1267', '7', '1', '20000', '1', '5', '10');
INSERT INTO `payroll_item` VALUES ('1268', '3', '5', '3000', '1', '5', '10');
INSERT INTO `payroll_item` VALUES ('1269', '9', '1', '2828.85', '1', '5', '10');
INSERT INTO `payroll_item` VALUES ('1270', '10', '1', '1162', '1', '5', '10');
INSERT INTO `payroll_item` VALUES ('1271', '16', '1', '0', '1', '5', '10');
INSERT INTO `payroll_item` VALUES ('1272', '15', '1', '0', '1', '5', '10');
INSERT INTO `payroll_item` VALUES ('1273', '11', '1', '1380', '1', '5', '10');
INSERT INTO `payroll_item` VALUES ('1274', '12', '1', '750', '1', '5', '10');
INSERT INTO `payroll_item` VALUES ('1275', '7', '1', '25000', '1', '6', '10');
INSERT INTO `payroll_item` VALUES ('1276', '3', '5', '3750', '1', '6', '10');
INSERT INTO `payroll_item` VALUES ('1277', '9', '1', '3909.85', '1', '6', '10');
INSERT INTO `payroll_item` VALUES ('1278', '10', '1', '1162', '1', '6', '10');
INSERT INTO `payroll_item` VALUES ('1279', '16', '1', '0', '1', '6', '10');
INSERT INTO `payroll_item` VALUES ('1280', '15', '1', '0', '1', '6', '10');
INSERT INTO `payroll_item` VALUES ('1281', '11', '1', '1725', '1', '6', '10');
INSERT INTO `payroll_item` VALUES ('1282', '12', '1', '850', '1', '6', '10');
INSERT INTO `payroll_item` VALUES ('1283', '7', '1', '25000', '1', '7', '10');
INSERT INTO `payroll_item` VALUES ('1284', '3', '5', '3750', '1', '7', '10');
INSERT INTO `payroll_item` VALUES ('1285', '9', '1', '3909.85', '1', '7', '10');
INSERT INTO `payroll_item` VALUES ('1286', '10', '1', '1162', '1', '7', '10');
INSERT INTO `payroll_item` VALUES ('1287', '16', '1', '0', '1', '7', '10');
INSERT INTO `payroll_item` VALUES ('1288', '15', '1', '0', '1', '7', '10');
INSERT INTO `payroll_item` VALUES ('1289', '11', '1', '1725', '1', '7', '10');
INSERT INTO `payroll_item` VALUES ('1290', '12', '1', '850', '1', '7', '10');
INSERT INTO `payroll_item` VALUES ('1291', '7', '1', '7826', '1', '8', '10');
INSERT INTO `payroll_item` VALUES ('1292', '3', '5', '1174', '1', '8', '10');
INSERT INTO `payroll_item` VALUES ('1293', '9', '1', '0', '1', '8', '10');
INSERT INTO `payroll_item` VALUES ('1294', '10', '1', '1162', '1', '8', '10');
INSERT INTO `payroll_item` VALUES ('1295', '16', '1', '0', '1', '8', '10');
INSERT INTO `payroll_item` VALUES ('1296', '15', '1', '0', '1', '8', '10');
INSERT INTO `payroll_item` VALUES ('1297', '11', '1', '540', '1', '8', '10');
INSERT INTO `payroll_item` VALUES ('1298', '12', '1', '400', '1', '8', '10');
INSERT INTO `payroll_item` VALUES ('1299', '7', '1', '10000', '1', '9', '10');
INSERT INTO `payroll_item` VALUES ('1300', '3', '5', '1500', '1', '9', '10');
INSERT INTO `payroll_item` VALUES ('1301', '9', '1', '1113.3', '1', '9', '10');
INSERT INTO `payroll_item` VALUES ('1302', '10', '1', '1162', '1', '9', '10');
INSERT INTO `payroll_item` VALUES ('1303', '16', '1', '0', '1', '9', '10');
INSERT INTO `payroll_item` VALUES ('1304', '15', '1', '0', '1', '9', '10');
INSERT INTO `payroll_item` VALUES ('1305', '11', '1', '690', '1', '9', '10');
INSERT INTO `payroll_item` VALUES ('1306', '12', '1', '400', '1', '9', '10');
INSERT INTO `payroll_item` VALUES ('1307', '7', '1', '15000', '1', '10', '10');
INSERT INTO `payroll_item` VALUES ('1308', '3', '5', '2250', '1', '10', '10');
INSERT INTO `payroll_item` VALUES ('1309', '9', '1', '1924.05', '1', '10', '10');
INSERT INTO `payroll_item` VALUES ('1310', '10', '1', '1162', '1', '10', '10');
INSERT INTO `payroll_item` VALUES ('1311', '16', '1', '0', '1', '10', '10');
INSERT INTO `payroll_item` VALUES ('1312', '15', '1', '0', '1', '10', '10');
INSERT INTO `payroll_item` VALUES ('1313', '11', '1', '1035', '1', '10', '10');
INSERT INTO `payroll_item` VALUES ('1314', '12', '1', '600', '1', '10', '10');
INSERT INTO `payroll_item` VALUES ('1315', '7', '1', '15000', '1', '11', '10');
INSERT INTO `payroll_item` VALUES ('1316', '3', '5', '2250', '1', '11', '10');
INSERT INTO `payroll_item` VALUES ('1317', '9', '1', '1924.05', '1', '11', '10');
INSERT INTO `payroll_item` VALUES ('1318', '10', '1', '1162', '1', '11', '10');
INSERT INTO `payroll_item` VALUES ('1319', '16', '1', '0', '1', '11', '10');
INSERT INTO `payroll_item` VALUES ('1320', '15', '1', '0', '1', '11', '10');
INSERT INTO `payroll_item` VALUES ('1321', '11', '1', '1035', '1', '11', '10');
INSERT INTO `payroll_item` VALUES ('1322', '12', '1', '600', '1', '11', '10');
INSERT INTO `payroll_item` VALUES ('1323', '7', '1', '20000', '1', '12', '10');
INSERT INTO `payroll_item` VALUES ('1324', '3', '5', '3000', '1', '12', '10');
INSERT INTO `payroll_item` VALUES ('1325', '9', '1', '2828.85', '1', '12', '10');
INSERT INTO `payroll_item` VALUES ('1326', '10', '1', '1162', '1', '12', '10');
INSERT INTO `payroll_item` VALUES ('1327', '16', '1', '0', '1', '12', '10');
INSERT INTO `payroll_item` VALUES ('1328', '15', '1', '0', '1', '12', '10');
INSERT INTO `payroll_item` VALUES ('1329', '11', '1', '1380', '1', '12', '10');
INSERT INTO `payroll_item` VALUES ('1330', '12', '1', '750', '1', '12', '10');
INSERT INTO `payroll_item` VALUES ('1331', '7', '1', '27000', '1', '13', '10');
INSERT INTO `payroll_item` VALUES ('1332', '3', '5', '4050', '1', '13', '10');
INSERT INTO `payroll_item` VALUES ('1333', '3', '6', '1000', '1', '13', '10');
INSERT INTO `payroll_item` VALUES ('1334', '9', '1', '4570.9', '1', '13', '10');
INSERT INTO `payroll_item` VALUES ('1335', '10', '1', '1162', '1', '13', '10');
INSERT INTO `payroll_item` VALUES ('1336', '16', '1', '0', '1', '13', '10');
INSERT INTO `payroll_item` VALUES ('1337', '15', '1', '0', '1', '13', '10');
INSERT INTO `payroll_item` VALUES ('1338', '11', '1', '1923', '1', '13', '10');
INSERT INTO `payroll_item` VALUES ('1339', '12', '1', '900', '1', '13', '10');
INSERT INTO `payroll_item` VALUES ('1340', '7', '1', '18000', '1', '14', '10');
INSERT INTO `payroll_item` VALUES ('1341', '3', '5', '2700', '1', '14', '10');
INSERT INTO `payroll_item` VALUES ('1342', '9', '1', '2410.5', '1', '14', '10');
INSERT INTO `payroll_item` VALUES ('1343', '10', '1', '1162', '1', '14', '10');
INSERT INTO `payroll_item` VALUES ('1344', '16', '1', '0', '1', '14', '10');
INSERT INTO `payroll_item` VALUES ('1345', '15', '1', '0', '1', '14', '10');
INSERT INTO `payroll_item` VALUES ('1346', '11', '1', '1242', '1', '14', '10');
INSERT INTO `payroll_item` VALUES ('1347', '12', '1', '750', '1', '14', '10');
INSERT INTO `payroll_item` VALUES ('1348', '7', '1', '10000', '1', '15', '10');
INSERT INTO `payroll_item` VALUES ('1349', '3', '5', '1500', '1', '15', '10');
INSERT INTO `payroll_item` VALUES ('1350', '9', '1', '1113.3', '1', '15', '10');
INSERT INTO `payroll_item` VALUES ('1351', '10', '1', '1162', '1', '15', '10');
INSERT INTO `payroll_item` VALUES ('1352', '16', '1', '0', '1', '15', '10');
INSERT INTO `payroll_item` VALUES ('1353', '15', '1', '0', '1', '15', '10');
INSERT INTO `payroll_item` VALUES ('1354', '11', '1', '690', '1', '15', '10');
INSERT INTO `payroll_item` VALUES ('1355', '12', '1', '400', '1', '15', '10');
INSERT INTO `payroll_item` VALUES ('1356', '7', '1', '14000', '1', '16', '10');
INSERT INTO `payroll_item` VALUES ('1357', '3', '5', '2100', '1', '16', '10');
INSERT INTO `payroll_item` VALUES ('1358', '9', '1', '1761.9', '1', '16', '10');
INSERT INTO `payroll_item` VALUES ('1359', '10', '1', '1162', '1', '16', '10');
INSERT INTO `payroll_item` VALUES ('1360', '16', '1', '0', '1', '16', '10');
INSERT INTO `payroll_item` VALUES ('1361', '15', '1', '0', '1', '16', '10');
INSERT INTO `payroll_item` VALUES ('1362', '11', '1', '966', '1', '16', '10');
INSERT INTO `payroll_item` VALUES ('1363', '12', '1', '600', '1', '16', '10');
INSERT INTO `payroll_item` VALUES ('1364', '7', '1', '5436', '1', '17', '10');
INSERT INTO `payroll_item` VALUES ('1365', '3', '5', '814', '1', '17', '10');
INSERT INTO `payroll_item` VALUES ('1366', '9', '1', '0', '1', '17', '10');
INSERT INTO `payroll_item` VALUES ('1367', '10', '1', '1162', '1', '17', '10');
INSERT INTO `payroll_item` VALUES ('1368', '16', '1', '0', '1', '17', '10');
INSERT INTO `payroll_item` VALUES ('1369', '15', '1', '0', '1', '17', '10');
INSERT INTO `payroll_item` VALUES ('1370', '11', '1', '375', '1', '17', '10');
INSERT INTO `payroll_item` VALUES ('1371', '12', '1', '300', '1', '17', '10');
INSERT INTO `payroll_item` VALUES ('1372', '7', '1', '25000', '1', '19', '10');
INSERT INTO `payroll_item` VALUES ('1373', '3', '5', '3750', '1', '19', '10');
INSERT INTO `payroll_item` VALUES ('1374', '9', '1', '3909.85', '1', '19', '10');
INSERT INTO `payroll_item` VALUES ('1375', '10', '1', '1162', '1', '19', '10');
INSERT INTO `payroll_item` VALUES ('1376', '16', '1', '0', '1', '19', '10');
INSERT INTO `payroll_item` VALUES ('1377', '15', '1', '0', '1', '19', '10');
INSERT INTO `payroll_item` VALUES ('1378', '11', '1', '1725', '1', '19', '10');
INSERT INTO `payroll_item` VALUES ('1379', '12', '1', '850', '1', '19', '10');
INSERT INTO `payroll_item` VALUES ('1380', '7', '1', '25000', '1', '20', '10');
INSERT INTO `payroll_item` VALUES ('1381', '3', '5', '3750', '1', '20', '10');
INSERT INTO `payroll_item` VALUES ('1382', '9', '1', '3909.85', '1', '20', '10');
INSERT INTO `payroll_item` VALUES ('1383', '10', '1', '1162', '1', '20', '10');
INSERT INTO `payroll_item` VALUES ('1384', '16', '1', '0', '1', '20', '10');
INSERT INTO `payroll_item` VALUES ('1385', '15', '1', '0', '1', '20', '10');
INSERT INTO `payroll_item` VALUES ('1386', '11', '1', '1725', '1', '20', '10');
INSERT INTO `payroll_item` VALUES ('1387', '12', '1', '850', '1', '20', '10');
INSERT INTO `payroll_item` VALUES ('1388', '7', '1', '25000', '1', '21', '10');
INSERT INTO `payroll_item` VALUES ('1389', '3', '5', '3750', '1', '21', '10');
INSERT INTO `payroll_item` VALUES ('1390', '9', '1', '3909.85', '1', '21', '10');
INSERT INTO `payroll_item` VALUES ('1391', '10', '1', '1162', '1', '21', '10');
INSERT INTO `payroll_item` VALUES ('1392', '16', '1', '0', '1', '21', '10');
INSERT INTO `payroll_item` VALUES ('1393', '15', '1', '0', '1', '21', '10');
INSERT INTO `payroll_item` VALUES ('1394', '11', '1', '1725', '1', '21', '10');
INSERT INTO `payroll_item` VALUES ('1395', '12', '1', '850', '1', '21', '10');
INSERT INTO `payroll_item` VALUES ('1396', '7', '1', '10000', '1', '23', '10');
INSERT INTO `payroll_item` VALUES ('1397', '3', '5', '1500', '1', '23', '10');
INSERT INTO `payroll_item` VALUES ('1398', '9', '1', '1113.3', '1', '23', '10');
INSERT INTO `payroll_item` VALUES ('1399', '10', '1', '1162', '1', '23', '10');
INSERT INTO `payroll_item` VALUES ('1400', '16', '1', '0', '1', '23', '10');
INSERT INTO `payroll_item` VALUES ('1401', '15', '1', '0', '1', '23', '10');
INSERT INTO `payroll_item` VALUES ('1402', '11', '1', '690', '1', '23', '10');
INSERT INTO `payroll_item` VALUES ('1403', '12', '1', '400', '1', '23', '10');
INSERT INTO `payroll_item` VALUES ('1404', '7', '1', '20000', '1', '35', '10');
INSERT INTO `payroll_item` VALUES ('1405', '3', '5', '3000', '1', '35', '10');
INSERT INTO `payroll_item` VALUES ('1406', '9', '1', '2828.85', '1', '35', '10');
INSERT INTO `payroll_item` VALUES ('1407', '10', '1', '1162', '1', '35', '10');
INSERT INTO `payroll_item` VALUES ('1408', '16', '1', '0', '1', '35', '10');
INSERT INTO `payroll_item` VALUES ('1409', '15', '1', '0', '1', '35', '10');
INSERT INTO `payroll_item` VALUES ('1410', '11', '1', '1380', '1', '35', '10');
INSERT INTO `payroll_item` VALUES ('1411', '12', '1', '750', '1', '35', '10');
INSERT INTO `payroll_item` VALUES ('1412', '4', '3', '300', '1', '35', '10');
INSERT INTO `payroll_item` VALUES ('1413', '7', '1', '21000', '1', '40', '10');
INSERT INTO `payroll_item` VALUES ('1414', '3', '5', '3150', '1', '40', '10');
INSERT INTO `payroll_item` VALUES ('1415', '9', '1', '3045.05', '1', '40', '10');
INSERT INTO `payroll_item` VALUES ('1416', '10', '1', '1162', '1', '40', '10');
INSERT INTO `payroll_item` VALUES ('1417', '16', '1', '0', '1', '40', '10');
INSERT INTO `payroll_item` VALUES ('1418', '15', '1', '0', '1', '40', '10');
INSERT INTO `payroll_item` VALUES ('1419', '11', '1', '1449', '1', '40', '10');
INSERT INTO `payroll_item` VALUES ('1420', '12', '1', '750', '1', '40', '10');
INSERT INTO `payroll_item` VALUES ('1421', '7', '1', '35000', '1', '3', '11');
INSERT INTO `payroll_item` VALUES ('1422', '3', '5', '5250', '1', '3', '11');
INSERT INTO `payroll_item` VALUES ('1423', '9', '1', '6497.9', '1', '3', '11');
INSERT INTO `payroll_item` VALUES ('1424', '10', '1', '1162', '1', '3', '11');
INSERT INTO `payroll_item` VALUES ('1425', '16', '1', '0', '1', '3', '11');
INSERT INTO `payroll_item` VALUES ('1426', '15', '1', '0', '1', '3', '11');
INSERT INTO `payroll_item` VALUES ('1427', '11', '1', '2415', '1', '3', '11');
INSERT INTO `payroll_item` VALUES ('1428', '12', '1', '1000', '1', '3', '11');
INSERT INTO `payroll_item` VALUES ('1429', '7', '1', '20000', '1', '4', '11');
INSERT INTO `payroll_item` VALUES ('1430', '3', '5', '3000', '1', '4', '11');
INSERT INTO `payroll_item` VALUES ('1431', '9', '1', '2828.85', '1', '4', '11');
INSERT INTO `payroll_item` VALUES ('1432', '10', '1', '1162', '1', '4', '11');
INSERT INTO `payroll_item` VALUES ('1433', '16', '1', '0', '1', '4', '11');
INSERT INTO `payroll_item` VALUES ('1434', '15', '1', '0', '1', '4', '11');
INSERT INTO `payroll_item` VALUES ('1435', '11', '1', '1380', '1', '4', '11');
INSERT INTO `payroll_item` VALUES ('1436', '12', '1', '750', '1', '4', '11');
INSERT INTO `payroll_item` VALUES ('1437', '7', '1', '20000', '1', '5', '11');
INSERT INTO `payroll_item` VALUES ('1438', '3', '5', '3000', '1', '5', '11');
INSERT INTO `payroll_item` VALUES ('1439', '9', '1', '2828.85', '1', '5', '11');
INSERT INTO `payroll_item` VALUES ('1440', '10', '1', '1162', '1', '5', '11');
INSERT INTO `payroll_item` VALUES ('1441', '16', '1', '0', '1', '5', '11');
INSERT INTO `payroll_item` VALUES ('1442', '15', '1', '0', '1', '5', '11');
INSERT INTO `payroll_item` VALUES ('1443', '11', '1', '1380', '1', '5', '11');
INSERT INTO `payroll_item` VALUES ('1444', '12', '1', '750', '1', '5', '11');
INSERT INTO `payroll_item` VALUES ('1445', '7', '1', '25000', '1', '6', '11');
INSERT INTO `payroll_item` VALUES ('1446', '3', '5', '3750', '1', '6', '11');
INSERT INTO `payroll_item` VALUES ('1447', '9', '1', '3909.85', '1', '6', '11');
INSERT INTO `payroll_item` VALUES ('1448', '10', '1', '1162', '1', '6', '11');
INSERT INTO `payroll_item` VALUES ('1449', '16', '1', '0', '1', '6', '11');
INSERT INTO `payroll_item` VALUES ('1450', '15', '1', '0', '1', '6', '11');
INSERT INTO `payroll_item` VALUES ('1451', '11', '1', '1725', '1', '6', '11');
INSERT INTO `payroll_item` VALUES ('1452', '12', '1', '850', '1', '6', '11');
INSERT INTO `payroll_item` VALUES ('1453', '7', '1', '25000', '1', '7', '11');
INSERT INTO `payroll_item` VALUES ('1454', '3', '5', '3750', '1', '7', '11');
INSERT INTO `payroll_item` VALUES ('1455', '9', '1', '3909.85', '1', '7', '11');
INSERT INTO `payroll_item` VALUES ('1456', '10', '1', '1162', '1', '7', '11');
INSERT INTO `payroll_item` VALUES ('1457', '16', '1', '0', '1', '7', '11');
INSERT INTO `payroll_item` VALUES ('1458', '15', '1', '0', '1', '7', '11');
INSERT INTO `payroll_item` VALUES ('1459', '11', '1', '1725', '1', '7', '11');
INSERT INTO `payroll_item` VALUES ('1460', '12', '1', '850', '1', '7', '11');
INSERT INTO `payroll_item` VALUES ('1461', '7', '1', '7826', '1', '8', '11');
INSERT INTO `payroll_item` VALUES ('1462', '3', '5', '1174', '1', '8', '11');
INSERT INTO `payroll_item` VALUES ('1463', '9', '1', '0', '1', '8', '11');
INSERT INTO `payroll_item` VALUES ('1464', '10', '1', '1162', '1', '8', '11');
INSERT INTO `payroll_item` VALUES ('1465', '16', '1', '0', '1', '8', '11');
INSERT INTO `payroll_item` VALUES ('1466', '15', '1', '0', '1', '8', '11');
INSERT INTO `payroll_item` VALUES ('1467', '11', '1', '540', '1', '8', '11');
INSERT INTO `payroll_item` VALUES ('1468', '12', '1', '400', '1', '8', '11');
INSERT INTO `payroll_item` VALUES ('1469', '7', '1', '10000', '1', '9', '11');
INSERT INTO `payroll_item` VALUES ('1470', '3', '5', '1500', '1', '9', '11');
INSERT INTO `payroll_item` VALUES ('1471', '9', '1', '1113.3', '1', '9', '11');
INSERT INTO `payroll_item` VALUES ('1472', '10', '1', '1162', '1', '9', '11');
INSERT INTO `payroll_item` VALUES ('1473', '16', '1', '0', '1', '9', '11');
INSERT INTO `payroll_item` VALUES ('1474', '15', '1', '0', '1', '9', '11');
INSERT INTO `payroll_item` VALUES ('1475', '11', '1', '690', '1', '9', '11');
INSERT INTO `payroll_item` VALUES ('1476', '12', '1', '400', '1', '9', '11');
INSERT INTO `payroll_item` VALUES ('1477', '7', '1', '15000', '1', '10', '11');
INSERT INTO `payroll_item` VALUES ('1478', '3', '5', '2250', '1', '10', '11');
INSERT INTO `payroll_item` VALUES ('1479', '9', '1', '1924.05', '1', '10', '11');
INSERT INTO `payroll_item` VALUES ('1480', '10', '1', '1162', '1', '10', '11');
INSERT INTO `payroll_item` VALUES ('1481', '16', '1', '0', '1', '10', '11');
INSERT INTO `payroll_item` VALUES ('1482', '15', '1', '0', '1', '10', '11');
INSERT INTO `payroll_item` VALUES ('1483', '11', '1', '1035', '1', '10', '11');
INSERT INTO `payroll_item` VALUES ('1484', '12', '1', '600', '1', '10', '11');
INSERT INTO `payroll_item` VALUES ('1485', '7', '1', '15000', '1', '11', '11');
INSERT INTO `payroll_item` VALUES ('1486', '3', '5', '2250', '1', '11', '11');
INSERT INTO `payroll_item` VALUES ('1487', '9', '1', '1924.05', '1', '11', '11');
INSERT INTO `payroll_item` VALUES ('1488', '10', '1', '1162', '1', '11', '11');
INSERT INTO `payroll_item` VALUES ('1489', '16', '1', '0', '1', '11', '11');
INSERT INTO `payroll_item` VALUES ('1490', '15', '1', '0', '1', '11', '11');
INSERT INTO `payroll_item` VALUES ('1491', '11', '1', '1035', '1', '11', '11');
INSERT INTO `payroll_item` VALUES ('1492', '12', '1', '600', '1', '11', '11');
INSERT INTO `payroll_item` VALUES ('1493', '7', '1', '20000', '1', '12', '11');
INSERT INTO `payroll_item` VALUES ('1494', '3', '5', '3000', '1', '12', '11');
INSERT INTO `payroll_item` VALUES ('1495', '9', '1', '2828.85', '1', '12', '11');
INSERT INTO `payroll_item` VALUES ('1496', '10', '1', '1162', '1', '12', '11');
INSERT INTO `payroll_item` VALUES ('1497', '16', '1', '0', '1', '12', '11');
INSERT INTO `payroll_item` VALUES ('1498', '15', '1', '0', '1', '12', '11');
INSERT INTO `payroll_item` VALUES ('1499', '11', '1', '1380', '1', '12', '11');
INSERT INTO `payroll_item` VALUES ('1500', '12', '1', '750', '1', '12', '11');
INSERT INTO `payroll_item` VALUES ('1501', '7', '1', '27000', '1', '13', '11');
INSERT INTO `payroll_item` VALUES ('1502', '3', '5', '4050', '1', '13', '11');
INSERT INTO `payroll_item` VALUES ('1503', '3', '6', '1000', '1', '13', '11');
INSERT INTO `payroll_item` VALUES ('1504', '9', '1', '4570.9', '1', '13', '11');
INSERT INTO `payroll_item` VALUES ('1505', '10', '1', '1162', '1', '13', '11');
INSERT INTO `payroll_item` VALUES ('1506', '16', '1', '0', '1', '13', '11');
INSERT INTO `payroll_item` VALUES ('1507', '15', '1', '0', '1', '13', '11');
INSERT INTO `payroll_item` VALUES ('1508', '11', '1', '1923', '1', '13', '11');
INSERT INTO `payroll_item` VALUES ('1509', '12', '1', '900', '1', '13', '11');
INSERT INTO `payroll_item` VALUES ('1510', '7', '1', '18000', '1', '14', '11');
INSERT INTO `payroll_item` VALUES ('1511', '3', '5', '2700', '1', '14', '11');
INSERT INTO `payroll_item` VALUES ('1512', '9', '1', '2410.5', '1', '14', '11');
INSERT INTO `payroll_item` VALUES ('1513', '10', '1', '1162', '1', '14', '11');
INSERT INTO `payroll_item` VALUES ('1514', '16', '1', '0', '1', '14', '11');
INSERT INTO `payroll_item` VALUES ('1515', '15', '1', '0', '1', '14', '11');
INSERT INTO `payroll_item` VALUES ('1516', '11', '1', '1242', '1', '14', '11');
INSERT INTO `payroll_item` VALUES ('1517', '12', '1', '750', '1', '14', '11');
INSERT INTO `payroll_item` VALUES ('1518', '7', '1', '10000', '1', '15', '11');
INSERT INTO `payroll_item` VALUES ('1519', '3', '5', '1500', '1', '15', '11');
INSERT INTO `payroll_item` VALUES ('1520', '9', '1', '1113.3', '1', '15', '11');
INSERT INTO `payroll_item` VALUES ('1521', '10', '1', '1162', '1', '15', '11');
INSERT INTO `payroll_item` VALUES ('1522', '16', '1', '0', '1', '15', '11');
INSERT INTO `payroll_item` VALUES ('1523', '15', '1', '0', '1', '15', '11');
INSERT INTO `payroll_item` VALUES ('1524', '11', '1', '690', '1', '15', '11');
INSERT INTO `payroll_item` VALUES ('1525', '12', '1', '400', '1', '15', '11');
INSERT INTO `payroll_item` VALUES ('1526', '7', '1', '14000', '1', '16', '11');
INSERT INTO `payroll_item` VALUES ('1527', '3', '5', '2100', '1', '16', '11');
INSERT INTO `payroll_item` VALUES ('1528', '9', '1', '1761.9', '1', '16', '11');
INSERT INTO `payroll_item` VALUES ('1529', '10', '1', '1162', '1', '16', '11');
INSERT INTO `payroll_item` VALUES ('1530', '16', '1', '0', '1', '16', '11');
INSERT INTO `payroll_item` VALUES ('1531', '15', '1', '0', '1', '16', '11');
INSERT INTO `payroll_item` VALUES ('1532', '11', '1', '966', '1', '16', '11');
INSERT INTO `payroll_item` VALUES ('1533', '12', '1', '600', '1', '16', '11');
INSERT INTO `payroll_item` VALUES ('1534', '7', '1', '5436', '1', '17', '11');
INSERT INTO `payroll_item` VALUES ('1535', '3', '5', '814', '1', '17', '11');
INSERT INTO `payroll_item` VALUES ('1536', '9', '1', '0', '1', '17', '11');
INSERT INTO `payroll_item` VALUES ('1537', '10', '1', '1162', '1', '17', '11');
INSERT INTO `payroll_item` VALUES ('1538', '16', '1', '0', '1', '17', '11');
INSERT INTO `payroll_item` VALUES ('1539', '15', '1', '0', '1', '17', '11');
INSERT INTO `payroll_item` VALUES ('1540', '11', '1', '375', '1', '17', '11');
INSERT INTO `payroll_item` VALUES ('1541', '12', '1', '300', '1', '17', '11');
INSERT INTO `payroll_item` VALUES ('1542', '7', '1', '25000', '1', '19', '11');
INSERT INTO `payroll_item` VALUES ('1543', '3', '5', '3750', '1', '19', '11');
INSERT INTO `payroll_item` VALUES ('1544', '9', '1', '3909.85', '1', '19', '11');
INSERT INTO `payroll_item` VALUES ('1545', '10', '1', '1162', '1', '19', '11');
INSERT INTO `payroll_item` VALUES ('1546', '16', '1', '0', '1', '19', '11');
INSERT INTO `payroll_item` VALUES ('1547', '15', '1', '0', '1', '19', '11');
INSERT INTO `payroll_item` VALUES ('1548', '11', '1', '1725', '1', '19', '11');
INSERT INTO `payroll_item` VALUES ('1549', '12', '1', '850', '1', '19', '11');
INSERT INTO `payroll_item` VALUES ('1550', '7', '1', '25000', '1', '20', '11');
INSERT INTO `payroll_item` VALUES ('1551', '3', '5', '3750', '1', '20', '11');
INSERT INTO `payroll_item` VALUES ('1552', '9', '1', '3909.85', '1', '20', '11');
INSERT INTO `payroll_item` VALUES ('1553', '10', '1', '1162', '1', '20', '11');
INSERT INTO `payroll_item` VALUES ('1554', '16', '1', '0', '1', '20', '11');
INSERT INTO `payroll_item` VALUES ('1555', '15', '1', '0', '1', '20', '11');
INSERT INTO `payroll_item` VALUES ('1556', '11', '1', '1725', '1', '20', '11');
INSERT INTO `payroll_item` VALUES ('1557', '12', '1', '850', '1', '20', '11');
INSERT INTO `payroll_item` VALUES ('1558', '7', '1', '25000', '1', '21', '11');
INSERT INTO `payroll_item` VALUES ('1559', '3', '5', '3750', '1', '21', '11');
INSERT INTO `payroll_item` VALUES ('1560', '9', '1', '3909.85', '1', '21', '11');
INSERT INTO `payroll_item` VALUES ('1561', '10', '1', '1162', '1', '21', '11');
INSERT INTO `payroll_item` VALUES ('1562', '16', '1', '0', '1', '21', '11');
INSERT INTO `payroll_item` VALUES ('1563', '15', '1', '0', '1', '21', '11');
INSERT INTO `payroll_item` VALUES ('1564', '11', '1', '1725', '1', '21', '11');
INSERT INTO `payroll_item` VALUES ('1565', '12', '1', '850', '1', '21', '11');
INSERT INTO `payroll_item` VALUES ('1566', '7', '1', '10000', '1', '23', '11');
INSERT INTO `payroll_item` VALUES ('1567', '3', '5', '1500', '1', '23', '11');
INSERT INTO `payroll_item` VALUES ('1568', '9', '1', '1113.3', '1', '23', '11');
INSERT INTO `payroll_item` VALUES ('1569', '10', '1', '1162', '1', '23', '11');
INSERT INTO `payroll_item` VALUES ('1570', '16', '1', '0', '1', '23', '11');
INSERT INTO `payroll_item` VALUES ('1571', '15', '1', '0', '1', '23', '11');
INSERT INTO `payroll_item` VALUES ('1572', '11', '1', '690', '1', '23', '11');
INSERT INTO `payroll_item` VALUES ('1573', '12', '1', '400', '1', '23', '11');
INSERT INTO `payroll_item` VALUES ('1574', '7', '1', '20000', '1', '35', '11');
INSERT INTO `payroll_item` VALUES ('1575', '3', '5', '3000', '1', '35', '11');
INSERT INTO `payroll_item` VALUES ('1576', '9', '1', '2828.85', '1', '35', '11');
INSERT INTO `payroll_item` VALUES ('1577', '10', '1', '1162', '1', '35', '11');
INSERT INTO `payroll_item` VALUES ('1578', '16', '1', '0', '1', '35', '11');
INSERT INTO `payroll_item` VALUES ('1579', '15', '1', '0', '1', '35', '11');
INSERT INTO `payroll_item` VALUES ('1580', '11', '1', '1380', '1', '35', '11');
INSERT INTO `payroll_item` VALUES ('1581', '12', '1', '750', '1', '35', '11');
INSERT INTO `payroll_item` VALUES ('1582', '4', '3', '300', '1', '35', '11');
INSERT INTO `payroll_item` VALUES ('1583', '7', '1', '21000', '1', '40', '11');
INSERT INTO `payroll_item` VALUES ('1584', '3', '5', '3150', '1', '40', '11');
INSERT INTO `payroll_item` VALUES ('1585', '9', '1', '3045.05', '1', '40', '11');
INSERT INTO `payroll_item` VALUES ('1586', '10', '1', '1162', '1', '40', '11');
INSERT INTO `payroll_item` VALUES ('1587', '16', '1', '0', '1', '40', '11');
INSERT INTO `payroll_item` VALUES ('1588', '15', '1', '0', '1', '40', '11');
INSERT INTO `payroll_item` VALUES ('1589', '11', '1', '1449', '1', '40', '11');
INSERT INTO `payroll_item` VALUES ('1590', '12', '1', '750', '1', '40', '11');
INSERT INTO `payroll_item` VALUES ('1591', '7', '1', '35000', '1', '3', '12');
INSERT INTO `payroll_item` VALUES ('1592', '3', '5', '5250', '1', '3', '12');
INSERT INTO `payroll_item` VALUES ('1593', '9', '1', '6845.7', '1', '3', '12');
INSERT INTO `payroll_item` VALUES ('1594', '10', '1', '1162', '1', '3', '12');
INSERT INTO `payroll_item` VALUES ('1595', '16', '1', '0', '1', '3', '12');
INSERT INTO `payroll_item` VALUES ('1596', '15', '1', '0', '1', '3', '12');
INSERT INTO `payroll_item` VALUES ('1597', '11', '1', '1080', '1', '3', '12');
INSERT INTO `payroll_item` VALUES ('1598', '12', '1', '1000', '1', '3', '12');
INSERT INTO `payroll_item` VALUES ('1599', '7', '1', '20000', '1', '4', '12');
INSERT INTO `payroll_item` VALUES ('1600', '3', '5', '3000', '1', '4', '12');
INSERT INTO `payroll_item` VALUES ('1601', '9', '1', '2888.85', '1', '4', '12');
INSERT INTO `payroll_item` VALUES ('1602', '10', '1', '1162', '1', '4', '12');
INSERT INTO `payroll_item` VALUES ('1603', '16', '1', '0', '1', '4', '12');
INSERT INTO `payroll_item` VALUES ('1604', '15', '1', '0', '1', '4', '12');
INSERT INTO `payroll_item` VALUES ('1605', '11', '1', '1080', '1', '4', '12');
INSERT INTO `payroll_item` VALUES ('1606', '12', '1', '750', '1', '4', '12');
INSERT INTO `payroll_item` VALUES ('1607', '7', '1', '20000', '1', '5', '12');
INSERT INTO `payroll_item` VALUES ('1608', '3', '5', '3000', '1', '5', '12');
INSERT INTO `payroll_item` VALUES ('1609', '9', '1', '2888.85', '1', '5', '12');
INSERT INTO `payroll_item` VALUES ('1610', '10', '1', '1162', '1', '5', '12');
INSERT INTO `payroll_item` VALUES ('1611', '16', '1', '0', '1', '5', '12');
INSERT INTO `payroll_item` VALUES ('1612', '15', '1', '0', '1', '5', '12');
INSERT INTO `payroll_item` VALUES ('1613', '11', '1', '1080', '1', '5', '12');
INSERT INTO `payroll_item` VALUES ('1614', '12', '1', '750', '1', '5', '12');
INSERT INTO `payroll_item` VALUES ('1615', '7', '1', '25000', '1', '6', '12');
INSERT INTO `payroll_item` VALUES ('1616', '3', '5', '3750', '1', '6', '12');
INSERT INTO `payroll_item` VALUES ('1617', '9', '1', '4038.85', '1', '6', '12');
INSERT INTO `payroll_item` VALUES ('1618', '10', '1', '1162', '1', '6', '12');
INSERT INTO `payroll_item` VALUES ('1619', '16', '1', '0', '1', '6', '12');
INSERT INTO `payroll_item` VALUES ('1620', '15', '1', '0', '1', '6', '12');
INSERT INTO `payroll_item` VALUES ('1621', '11', '1', '1080', '1', '6', '12');
INSERT INTO `payroll_item` VALUES ('1622', '12', '1', '850', '1', '6', '12');
INSERT INTO `payroll_item` VALUES ('1623', '7', '1', '25000', '1', '7', '12');
INSERT INTO `payroll_item` VALUES ('1624', '3', '5', '3750', '1', '7', '12');
INSERT INTO `payroll_item` VALUES ('1625', '9', '1', '4038.85', '1', '7', '12');
INSERT INTO `payroll_item` VALUES ('1626', '10', '1', '1162', '1', '7', '12');
INSERT INTO `payroll_item` VALUES ('1627', '16', '1', '0', '1', '7', '12');
INSERT INTO `payroll_item` VALUES ('1628', '15', '1', '0', '1', '7', '12');
INSERT INTO `payroll_item` VALUES ('1629', '11', '1', '1080', '1', '7', '12');
INSERT INTO `payroll_item` VALUES ('1630', '12', '1', '850', '1', '7', '12');
INSERT INTO `payroll_item` VALUES ('1631', '7', '1', '7826', '1', '8', '12');
INSERT INTO `payroll_item` VALUES ('1632', '3', '5', '1174', '1', '8', '12');
INSERT INTO `payroll_item` VALUES ('1633', '9', '1', '0', '1', '8', '12');
INSERT INTO `payroll_item` VALUES ('1634', '10', '1', '1162', '1', '8', '12');
INSERT INTO `payroll_item` VALUES ('1635', '16', '1', '0', '1', '8', '12');
INSERT INTO `payroll_item` VALUES ('1636', '15', '1', '0', '1', '8', '12');
INSERT INTO `payroll_item` VALUES ('1637', '11', '1', '540', '1', '8', '12');
INSERT INTO `payroll_item` VALUES ('1638', '12', '1', '400', '1', '8', '12');
INSERT INTO `payroll_item` VALUES ('1639', '7', '1', '10000', '1', '9', '12');
INSERT INTO `payroll_item` VALUES ('1640', '3', '5', '1500', '1', '9', '12');
INSERT INTO `payroll_item` VALUES ('1641', '9', '1', '1113.3', '1', '9', '12');
INSERT INTO `payroll_item` VALUES ('1642', '10', '1', '1162', '1', '9', '12');
INSERT INTO `payroll_item` VALUES ('1643', '16', '1', '0', '1', '9', '12');
INSERT INTO `payroll_item` VALUES ('1644', '15', '1', '0', '1', '9', '12');
INSERT INTO `payroll_item` VALUES ('1645', '11', '1', '690', '1', '9', '12');
INSERT INTO `payroll_item` VALUES ('1646', '12', '1', '400', '1', '9', '12');
INSERT INTO `payroll_item` VALUES ('1647', '7', '1', '15000', '1', '10', '12');
INSERT INTO `payroll_item` VALUES ('1648', '3', '5', '2250', '1', '10', '12');
INSERT INTO `payroll_item` VALUES ('1649', '9', '1', '1924.05', '1', '10', '12');
INSERT INTO `payroll_item` VALUES ('1650', '10', '1', '1162', '1', '10', '12');
INSERT INTO `payroll_item` VALUES ('1651', '16', '1', '0', '1', '10', '12');
INSERT INTO `payroll_item` VALUES ('1652', '15', '1', '0', '1', '10', '12');
INSERT INTO `payroll_item` VALUES ('1653', '11', '1', '1035', '1', '10', '12');
INSERT INTO `payroll_item` VALUES ('1654', '12', '1', '600', '1', '10', '12');
INSERT INTO `payroll_item` VALUES ('1655', '7', '1', '15000', '1', '11', '12');
INSERT INTO `payroll_item` VALUES ('1656', '3', '5', '2250', '1', '11', '12');
INSERT INTO `payroll_item` VALUES ('1657', '9', '1', '1924.05', '1', '11', '12');
INSERT INTO `payroll_item` VALUES ('1658', '10', '1', '1162', '1', '11', '12');
INSERT INTO `payroll_item` VALUES ('1659', '16', '1', '0', '1', '11', '12');
INSERT INTO `payroll_item` VALUES ('1660', '15', '1', '0', '1', '11', '12');
INSERT INTO `payroll_item` VALUES ('1661', '11', '1', '1035', '1', '11', '12');
INSERT INTO `payroll_item` VALUES ('1662', '12', '1', '600', '1', '11', '12');
INSERT INTO `payroll_item` VALUES ('1663', '7', '1', '20000', '1', '12', '12');
INSERT INTO `payroll_item` VALUES ('1664', '3', '5', '3000', '1', '12', '12');
INSERT INTO `payroll_item` VALUES ('1665', '9', '1', '2888.85', '1', '12', '12');
INSERT INTO `payroll_item` VALUES ('1666', '10', '1', '1162', '1', '12', '12');
INSERT INTO `payroll_item` VALUES ('1667', '16', '1', '0', '1', '12', '12');
INSERT INTO `payroll_item` VALUES ('1668', '15', '1', '0', '1', '12', '12');
INSERT INTO `payroll_item` VALUES ('1669', '11', '1', '1080', '1', '12', '12');
INSERT INTO `payroll_item` VALUES ('1670', '12', '1', '750', '1', '12', '12');
INSERT INTO `payroll_item` VALUES ('1671', '7', '1', '27000', '1', '13', '12');
INSERT INTO `payroll_item` VALUES ('1672', '3', '5', '4050', '1', '13', '12');
INSERT INTO `payroll_item` VALUES ('1673', '3', '6', '1000', '1', '13', '12');
INSERT INTO `payroll_item` VALUES ('1674', '9', '1', '4781.65', '1', '13', '12');
INSERT INTO `payroll_item` VALUES ('1675', '10', '1', '1162', '1', '13', '12');
INSERT INTO `payroll_item` VALUES ('1676', '16', '1', '0', '1', '13', '12');
INSERT INTO `payroll_item` VALUES ('1677', '15', '1', '0', '1', '13', '12');
INSERT INTO `payroll_item` VALUES ('1678', '11', '1', '1080', '1', '13', '12');
INSERT INTO `payroll_item` VALUES ('1679', '12', '1', '900', '1', '13', '12');
INSERT INTO `payroll_item` VALUES ('1680', '7', '1', '18000', '1', '14', '12');
INSERT INTO `payroll_item` VALUES ('1681', '3', '5', '2700', '1', '14', '12');
INSERT INTO `payroll_item` VALUES ('1682', '9', '1', '2434.8', '1', '14', '12');
INSERT INTO `payroll_item` VALUES ('1683', '10', '1', '1162', '1', '14', '12');
INSERT INTO `payroll_item` VALUES ('1684', '16', '1', '0', '1', '14', '12');
INSERT INTO `payroll_item` VALUES ('1685', '15', '1', '0', '1', '14', '12');
INSERT INTO `payroll_item` VALUES ('1686', '11', '1', '1080', '1', '14', '12');
INSERT INTO `payroll_item` VALUES ('1687', '12', '1', '750', '1', '14', '12');
INSERT INTO `payroll_item` VALUES ('1688', '7', '1', '10000', '1', '15', '12');
INSERT INTO `payroll_item` VALUES ('1689', '3', '5', '1500', '1', '15', '12');
INSERT INTO `payroll_item` VALUES ('1690', '9', '1', '1113.3', '1', '15', '12');
INSERT INTO `payroll_item` VALUES ('1691', '10', '1', '1162', '1', '15', '12');
INSERT INTO `payroll_item` VALUES ('1692', '16', '1', '0', '1', '15', '12');
INSERT INTO `payroll_item` VALUES ('1693', '15', '1', '0', '1', '15', '12');
INSERT INTO `payroll_item` VALUES ('1694', '11', '1', '690', '1', '15', '12');
INSERT INTO `payroll_item` VALUES ('1695', '12', '1', '400', '1', '15', '12');
INSERT INTO `payroll_item` VALUES ('1696', '7', '1', '14000', '1', '16', '12');
INSERT INTO `payroll_item` VALUES ('1697', '3', '5', '2100', '1', '16', '12');
INSERT INTO `payroll_item` VALUES ('1698', '9', '1', '1761.9', '1', '16', '12');
INSERT INTO `payroll_item` VALUES ('1699', '10', '1', '1162', '1', '16', '12');
INSERT INTO `payroll_item` VALUES ('1700', '16', '1', '0', '1', '16', '12');
INSERT INTO `payroll_item` VALUES ('1701', '15', '1', '0', '1', '16', '12');
INSERT INTO `payroll_item` VALUES ('1702', '11', '1', '966', '1', '16', '12');
INSERT INTO `payroll_item` VALUES ('1703', '12', '1', '600', '1', '16', '12');
INSERT INTO `payroll_item` VALUES ('1704', '7', '1', '5436', '1', '17', '12');
INSERT INTO `payroll_item` VALUES ('1705', '3', '5', '814', '1', '17', '12');
INSERT INTO `payroll_item` VALUES ('1706', '9', '1', '0', '1', '17', '12');
INSERT INTO `payroll_item` VALUES ('1707', '10', '1', '1162', '1', '17', '12');
INSERT INTO `payroll_item` VALUES ('1708', '16', '1', '0', '1', '17', '12');
INSERT INTO `payroll_item` VALUES ('1709', '15', '1', '0', '1', '17', '12');
INSERT INTO `payroll_item` VALUES ('1710', '11', '1', '375', '1', '17', '12');
INSERT INTO `payroll_item` VALUES ('1711', '12', '1', '300', '1', '17', '12');
INSERT INTO `payroll_item` VALUES ('1712', '7', '1', '25000', '1', '19', '12');
INSERT INTO `payroll_item` VALUES ('1713', '3', '5', '3750', '1', '19', '12');
INSERT INTO `payroll_item` VALUES ('1714', '9', '1', '4038.85', '1', '19', '12');
INSERT INTO `payroll_item` VALUES ('1715', '10', '1', '1162', '1', '19', '12');
INSERT INTO `payroll_item` VALUES ('1716', '16', '1', '0', '1', '19', '12');
INSERT INTO `payroll_item` VALUES ('1717', '15', '1', '0', '1', '19', '12');
INSERT INTO `payroll_item` VALUES ('1718', '11', '1', '1080', '1', '19', '12');
INSERT INTO `payroll_item` VALUES ('1719', '12', '1', '850', '1', '19', '12');
INSERT INTO `payroll_item` VALUES ('1720', '7', '1', '25000', '1', '20', '12');
INSERT INTO `payroll_item` VALUES ('1721', '3', '5', '3750', '1', '20', '12');
INSERT INTO `payroll_item` VALUES ('1722', '9', '1', '4038.85', '1', '20', '12');
INSERT INTO `payroll_item` VALUES ('1723', '10', '1', '1162', '1', '20', '12');
INSERT INTO `payroll_item` VALUES ('1724', '16', '1', '0', '1', '20', '12');
INSERT INTO `payroll_item` VALUES ('1725', '15', '1', '0', '1', '20', '12');
INSERT INTO `payroll_item` VALUES ('1726', '11', '1', '1080', '1', '20', '12');
INSERT INTO `payroll_item` VALUES ('1727', '12', '1', '850', '1', '20', '12');
INSERT INTO `payroll_item` VALUES ('1728', '7', '1', '25000', '1', '21', '12');
INSERT INTO `payroll_item` VALUES ('1729', '3', '5', '3750', '1', '21', '12');
INSERT INTO `payroll_item` VALUES ('1730', '9', '1', '4038.85', '1', '21', '12');
INSERT INTO `payroll_item` VALUES ('1731', '10', '1', '1162', '1', '21', '12');
INSERT INTO `payroll_item` VALUES ('1732', '16', '1', '0', '1', '21', '12');
INSERT INTO `payroll_item` VALUES ('1733', '15', '1', '0', '1', '21', '12');
INSERT INTO `payroll_item` VALUES ('1734', '11', '1', '1080', '1', '21', '12');
INSERT INTO `payroll_item` VALUES ('1735', '12', '1', '850', '1', '21', '12');
INSERT INTO `payroll_item` VALUES ('1736', '7', '1', '10000', '1', '23', '12');
INSERT INTO `payroll_item` VALUES ('1737', '3', '5', '1500', '1', '23', '12');
INSERT INTO `payroll_item` VALUES ('1738', '9', '1', '1113.3', '1', '23', '12');
INSERT INTO `payroll_item` VALUES ('1739', '10', '1', '1162', '1', '23', '12');
INSERT INTO `payroll_item` VALUES ('1740', '16', '1', '0', '1', '23', '12');
INSERT INTO `payroll_item` VALUES ('1741', '15', '1', '0', '1', '23', '12');
INSERT INTO `payroll_item` VALUES ('1742', '11', '1', '690', '1', '23', '12');
INSERT INTO `payroll_item` VALUES ('1743', '12', '1', '400', '1', '23', '12');
INSERT INTO `payroll_item` VALUES ('1744', '7', '1', '20000', '1', '35', '12');
INSERT INTO `payroll_item` VALUES ('1745', '3', '5', '3000', '1', '35', '12');
INSERT INTO `payroll_item` VALUES ('1746', '9', '1', '2888.85', '1', '35', '12');
INSERT INTO `payroll_item` VALUES ('1747', '10', '1', '1162', '1', '35', '12');
INSERT INTO `payroll_item` VALUES ('1748', '16', '1', '0', '1', '35', '12');
INSERT INTO `payroll_item` VALUES ('1749', '15', '1', '0', '1', '35', '12');
INSERT INTO `payroll_item` VALUES ('1750', '11', '1', '1080', '1', '35', '12');
INSERT INTO `payroll_item` VALUES ('1751', '12', '1', '750', '1', '35', '12');
INSERT INTO `payroll_item` VALUES ('1752', '4', '3', '300', '1', '35', '12');
INSERT INTO `payroll_item` VALUES ('1753', '7', '1', '21000', '1', '40', '12');
INSERT INTO `payroll_item` VALUES ('1754', '3', '5', '3150', '1', '40', '12');
INSERT INTO `payroll_item` VALUES ('1755', '9', '1', '3118.85', '1', '40', '12');
INSERT INTO `payroll_item` VALUES ('1756', '10', '1', '1162', '1', '40', '12');
INSERT INTO `payroll_item` VALUES ('1757', '16', '1', '0', '1', '40', '12');
INSERT INTO `payroll_item` VALUES ('1758', '15', '1', '0', '1', '40', '12');
INSERT INTO `payroll_item` VALUES ('1759', '11', '1', '1080', '1', '40', '12');
INSERT INTO `payroll_item` VALUES ('1760', '12', '1', '750', '1', '40', '12');
INSERT INTO `payroll_item` VALUES ('1761', '7', '1', '35000', '1', '3', '13');
INSERT INTO `payroll_item` VALUES ('1762', '3', '5', '5250', '1', '3', '13');
INSERT INTO `payroll_item` VALUES ('1763', '9', '1', '6845.7', '1', '3', '13');
INSERT INTO `payroll_item` VALUES ('1764', '10', '1', '1162', '1', '3', '13');
INSERT INTO `payroll_item` VALUES ('1765', '16', '1', '0', '1', '3', '13');
INSERT INTO `payroll_item` VALUES ('1766', '15', '1', '0', '1', '3', '13');
INSERT INTO `payroll_item` VALUES ('1767', '11', '1', '1080', '1', '3', '13');
INSERT INTO `payroll_item` VALUES ('1768', '12', '1', '1000', '1', '3', '13');
INSERT INTO `payroll_item` VALUES ('1769', '7', '1', '20000', '1', '4', '13');
INSERT INTO `payroll_item` VALUES ('1770', '3', '5', '3000', '1', '4', '13');
INSERT INTO `payroll_item` VALUES ('1771', '9', '1', '2888.85', '1', '4', '13');
INSERT INTO `payroll_item` VALUES ('1772', '10', '1', '1162', '1', '4', '13');
INSERT INTO `payroll_item` VALUES ('1773', '16', '1', '0', '1', '4', '13');
INSERT INTO `payroll_item` VALUES ('1774', '15', '1', '0', '1', '4', '13');
INSERT INTO `payroll_item` VALUES ('1775', '11', '1', '1080', '1', '4', '13');
INSERT INTO `payroll_item` VALUES ('1776', '12', '1', '750', '1', '4', '13');
INSERT INTO `payroll_item` VALUES ('1777', '7', '1', '20000', '1', '5', '13');
INSERT INTO `payroll_item` VALUES ('1778', '3', '5', '3000', '1', '5', '13');
INSERT INTO `payroll_item` VALUES ('1779', '9', '1', '2888.85', '1', '5', '13');
INSERT INTO `payroll_item` VALUES ('1780', '10', '1', '1162', '1', '5', '13');
INSERT INTO `payroll_item` VALUES ('1781', '16', '1', '0', '1', '5', '13');
INSERT INTO `payroll_item` VALUES ('1782', '15', '1', '0', '1', '5', '13');
INSERT INTO `payroll_item` VALUES ('1783', '11', '1', '1080', '1', '5', '13');
INSERT INTO `payroll_item` VALUES ('1784', '12', '1', '750', '1', '5', '13');
INSERT INTO `payroll_item` VALUES ('1785', '7', '1', '25000', '1', '6', '13');
INSERT INTO `payroll_item` VALUES ('1786', '3', '5', '3750', '1', '6', '13');
INSERT INTO `payroll_item` VALUES ('1787', '9', '1', '4038.85', '1', '6', '13');
INSERT INTO `payroll_item` VALUES ('1788', '10', '1', '1162', '1', '6', '13');
INSERT INTO `payroll_item` VALUES ('1789', '16', '1', '0', '1', '6', '13');
INSERT INTO `payroll_item` VALUES ('1790', '15', '1', '0', '1', '6', '13');
INSERT INTO `payroll_item` VALUES ('1791', '11', '1', '1080', '1', '6', '13');
INSERT INTO `payroll_item` VALUES ('1792', '12', '1', '850', '1', '6', '13');
INSERT INTO `payroll_item` VALUES ('1793', '7', '1', '25000', '1', '7', '13');
INSERT INTO `payroll_item` VALUES ('1794', '3', '5', '3750', '1', '7', '13');
INSERT INTO `payroll_item` VALUES ('1795', '9', '1', '4038.85', '1', '7', '13');
INSERT INTO `payroll_item` VALUES ('1796', '10', '1', '1162', '1', '7', '13');
INSERT INTO `payroll_item` VALUES ('1797', '16', '1', '0', '1', '7', '13');
INSERT INTO `payroll_item` VALUES ('1798', '15', '1', '0', '1', '7', '13');
INSERT INTO `payroll_item` VALUES ('1799', '11', '1', '1080', '1', '7', '13');
INSERT INTO `payroll_item` VALUES ('1800', '12', '1', '850', '1', '7', '13');
INSERT INTO `payroll_item` VALUES ('1801', '7', '1', '7826', '1', '8', '13');
INSERT INTO `payroll_item` VALUES ('1802', '3', '5', '1174', '1', '8', '13');
INSERT INTO `payroll_item` VALUES ('1803', '9', '1', '0', '1', '8', '13');
INSERT INTO `payroll_item` VALUES ('1804', '10', '1', '1162', '1', '8', '13');
INSERT INTO `payroll_item` VALUES ('1805', '16', '1', '0', '1', '8', '13');
INSERT INTO `payroll_item` VALUES ('1806', '15', '1', '0', '1', '8', '13');
INSERT INTO `payroll_item` VALUES ('1807', '11', '1', '540', '1', '8', '13');
INSERT INTO `payroll_item` VALUES ('1808', '12', '1', '400', '1', '8', '13');
INSERT INTO `payroll_item` VALUES ('1809', '7', '1', '10000', '1', '9', '13');
INSERT INTO `payroll_item` VALUES ('1810', '3', '5', '1500', '1', '9', '13');
INSERT INTO `payroll_item` VALUES ('1811', '9', '1', '1113.3', '1', '9', '13');
INSERT INTO `payroll_item` VALUES ('1812', '10', '1', '1162', '1', '9', '13');
INSERT INTO `payroll_item` VALUES ('1813', '16', '1', '0', '1', '9', '13');
INSERT INTO `payroll_item` VALUES ('1814', '15', '1', '0', '1', '9', '13');
INSERT INTO `payroll_item` VALUES ('1815', '11', '1', '690', '1', '9', '13');
INSERT INTO `payroll_item` VALUES ('1816', '12', '1', '400', '1', '9', '13');
INSERT INTO `payroll_item` VALUES ('1817', '7', '1', '15000', '1', '10', '13');
INSERT INTO `payroll_item` VALUES ('1818', '3', '5', '2250', '1', '10', '13');
INSERT INTO `payroll_item` VALUES ('1819', '9', '1', '1924.05', '1', '10', '13');
INSERT INTO `payroll_item` VALUES ('1820', '10', '1', '1162', '1', '10', '13');
INSERT INTO `payroll_item` VALUES ('1821', '16', '1', '0', '1', '10', '13');
INSERT INTO `payroll_item` VALUES ('1822', '15', '1', '0', '1', '10', '13');
INSERT INTO `payroll_item` VALUES ('1823', '11', '1', '1035', '1', '10', '13');
INSERT INTO `payroll_item` VALUES ('1824', '12', '1', '600', '1', '10', '13');
INSERT INTO `payroll_item` VALUES ('1825', '7', '1', '15000', '1', '11', '13');
INSERT INTO `payroll_item` VALUES ('1826', '3', '5', '2250', '1', '11', '13');
INSERT INTO `payroll_item` VALUES ('1827', '9', '1', '1924.05', '1', '11', '13');
INSERT INTO `payroll_item` VALUES ('1828', '10', '1', '1162', '1', '11', '13');
INSERT INTO `payroll_item` VALUES ('1829', '16', '1', '0', '1', '11', '13');
INSERT INTO `payroll_item` VALUES ('1830', '15', '1', '0', '1', '11', '13');
INSERT INTO `payroll_item` VALUES ('1831', '11', '1', '1035', '1', '11', '13');
INSERT INTO `payroll_item` VALUES ('1832', '12', '1', '600', '1', '11', '13');
INSERT INTO `payroll_item` VALUES ('1833', '7', '1', '20000', '1', '12', '13');
INSERT INTO `payroll_item` VALUES ('1834', '3', '5', '3000', '1', '12', '13');
INSERT INTO `payroll_item` VALUES ('1835', '9', '1', '2888.85', '1', '12', '13');
INSERT INTO `payroll_item` VALUES ('1836', '10', '1', '1162', '1', '12', '13');
INSERT INTO `payroll_item` VALUES ('1837', '16', '1', '0', '1', '12', '13');
INSERT INTO `payroll_item` VALUES ('1838', '15', '1', '0', '1', '12', '13');
INSERT INTO `payroll_item` VALUES ('1839', '11', '1', '1080', '1', '12', '13');
INSERT INTO `payroll_item` VALUES ('1840', '12', '1', '750', '1', '12', '13');
INSERT INTO `payroll_item` VALUES ('1841', '7', '1', '27000', '1', '13', '13');
INSERT INTO `payroll_item` VALUES ('1842', '3', '5', '4050', '1', '13', '13');
INSERT INTO `payroll_item` VALUES ('1843', '3', '6', '1000', '1', '13', '13');
INSERT INTO `payroll_item` VALUES ('1844', '9', '1', '4781.65', '1', '13', '13');
INSERT INTO `payroll_item` VALUES ('1845', '10', '1', '1162', '1', '13', '13');
INSERT INTO `payroll_item` VALUES ('1846', '16', '1', '0', '1', '13', '13');
INSERT INTO `payroll_item` VALUES ('1847', '15', '1', '0', '1', '13', '13');
INSERT INTO `payroll_item` VALUES ('1848', '11', '1', '1080', '1', '13', '13');
INSERT INTO `payroll_item` VALUES ('1849', '12', '1', '900', '1', '13', '13');
INSERT INTO `payroll_item` VALUES ('1850', '7', '1', '18000', '1', '14', '13');
INSERT INTO `payroll_item` VALUES ('1851', '3', '5', '2700', '1', '14', '13');
INSERT INTO `payroll_item` VALUES ('1852', '9', '1', '2434.8', '1', '14', '13');
INSERT INTO `payroll_item` VALUES ('1853', '10', '1', '1162', '1', '14', '13');
INSERT INTO `payroll_item` VALUES ('1854', '16', '1', '0', '1', '14', '13');
INSERT INTO `payroll_item` VALUES ('1855', '15', '1', '0', '1', '14', '13');
INSERT INTO `payroll_item` VALUES ('1856', '11', '1', '1080', '1', '14', '13');
INSERT INTO `payroll_item` VALUES ('1857', '12', '1', '750', '1', '14', '13');
INSERT INTO `payroll_item` VALUES ('1858', '7', '1', '10000', '1', '15', '13');
INSERT INTO `payroll_item` VALUES ('1859', '3', '5', '1500', '1', '15', '13');
INSERT INTO `payroll_item` VALUES ('1860', '9', '1', '1113.3', '1', '15', '13');
INSERT INTO `payroll_item` VALUES ('1861', '10', '1', '1162', '1', '15', '13');
INSERT INTO `payroll_item` VALUES ('1862', '16', '1', '0', '1', '15', '13');
INSERT INTO `payroll_item` VALUES ('1863', '15', '1', '0', '1', '15', '13');
INSERT INTO `payroll_item` VALUES ('1864', '11', '1', '690', '1', '15', '13');
INSERT INTO `payroll_item` VALUES ('1865', '12', '1', '400', '1', '15', '13');
INSERT INTO `payroll_item` VALUES ('1866', '7', '1', '14000', '1', '16', '13');
INSERT INTO `payroll_item` VALUES ('1867', '3', '5', '2100', '1', '16', '13');
INSERT INTO `payroll_item` VALUES ('1868', '9', '1', '1761.9', '1', '16', '13');
INSERT INTO `payroll_item` VALUES ('1869', '10', '1', '1162', '1', '16', '13');
INSERT INTO `payroll_item` VALUES ('1870', '16', '1', '0', '1', '16', '13');
INSERT INTO `payroll_item` VALUES ('1871', '15', '1', '0', '1', '16', '13');
INSERT INTO `payroll_item` VALUES ('1872', '11', '1', '966', '1', '16', '13');
INSERT INTO `payroll_item` VALUES ('1873', '12', '1', '600', '1', '16', '13');
INSERT INTO `payroll_item` VALUES ('1874', '7', '1', '5436', '1', '17', '13');
INSERT INTO `payroll_item` VALUES ('1875', '3', '5', '814', '1', '17', '13');
INSERT INTO `payroll_item` VALUES ('1876', '9', '1', '0', '1', '17', '13');
INSERT INTO `payroll_item` VALUES ('1877', '10', '1', '1162', '1', '17', '13');
INSERT INTO `payroll_item` VALUES ('1878', '16', '1', '0', '1', '17', '13');
INSERT INTO `payroll_item` VALUES ('1879', '15', '1', '0', '1', '17', '13');
INSERT INTO `payroll_item` VALUES ('1880', '11', '1', '375', '1', '17', '13');
INSERT INTO `payroll_item` VALUES ('1881', '12', '1', '300', '1', '17', '13');
INSERT INTO `payroll_item` VALUES ('1882', '7', '1', '25000', '1', '19', '13');
INSERT INTO `payroll_item` VALUES ('1883', '3', '5', '3750', '1', '19', '13');
INSERT INTO `payroll_item` VALUES ('1884', '9', '1', '4038.85', '1', '19', '13');
INSERT INTO `payroll_item` VALUES ('1885', '10', '1', '1162', '1', '19', '13');
INSERT INTO `payroll_item` VALUES ('1886', '16', '1', '0', '1', '19', '13');
INSERT INTO `payroll_item` VALUES ('1887', '15', '1', '0', '1', '19', '13');
INSERT INTO `payroll_item` VALUES ('1888', '11', '1', '1080', '1', '19', '13');
INSERT INTO `payroll_item` VALUES ('1889', '12', '1', '850', '1', '19', '13');
INSERT INTO `payroll_item` VALUES ('1890', '7', '1', '25000', '1', '20', '13');
INSERT INTO `payroll_item` VALUES ('1891', '3', '5', '3750', '1', '20', '13');
INSERT INTO `payroll_item` VALUES ('1892', '9', '1', '4038.85', '1', '20', '13');
INSERT INTO `payroll_item` VALUES ('1893', '10', '1', '1162', '1', '20', '13');
INSERT INTO `payroll_item` VALUES ('1894', '16', '1', '0', '1', '20', '13');
INSERT INTO `payroll_item` VALUES ('1895', '15', '1', '0', '1', '20', '13');
INSERT INTO `payroll_item` VALUES ('1896', '11', '1', '1080', '1', '20', '13');
INSERT INTO `payroll_item` VALUES ('1897', '12', '1', '850', '1', '20', '13');
INSERT INTO `payroll_item` VALUES ('1898', '7', '1', '25000', '1', '21', '13');
INSERT INTO `payroll_item` VALUES ('1899', '3', '5', '3750', '1', '21', '13');
INSERT INTO `payroll_item` VALUES ('1900', '9', '1', '4038.85', '1', '21', '13');
INSERT INTO `payroll_item` VALUES ('1901', '10', '1', '1162', '1', '21', '13');
INSERT INTO `payroll_item` VALUES ('1902', '16', '1', '0', '1', '21', '13');
INSERT INTO `payroll_item` VALUES ('1903', '15', '1', '0', '1', '21', '13');
INSERT INTO `payroll_item` VALUES ('1904', '11', '1', '1080', '1', '21', '13');
INSERT INTO `payroll_item` VALUES ('1905', '12', '1', '850', '1', '21', '13');
INSERT INTO `payroll_item` VALUES ('1906', '7', '1', '10000', '1', '23', '13');
INSERT INTO `payroll_item` VALUES ('1907', '3', '5', '1500', '1', '23', '13');
INSERT INTO `payroll_item` VALUES ('1908', '9', '1', '1113.3', '1', '23', '13');
INSERT INTO `payroll_item` VALUES ('1909', '10', '1', '1162', '1', '23', '13');
INSERT INTO `payroll_item` VALUES ('1910', '16', '1', '0', '1', '23', '13');
INSERT INTO `payroll_item` VALUES ('1911', '15', '1', '0', '1', '23', '13');
INSERT INTO `payroll_item` VALUES ('1912', '11', '1', '690', '1', '23', '13');
INSERT INTO `payroll_item` VALUES ('1913', '12', '1', '400', '1', '23', '13');
INSERT INTO `payroll_item` VALUES ('1914', '7', '1', '20000', '1', '35', '13');
INSERT INTO `payroll_item` VALUES ('1915', '3', '5', '3000', '1', '35', '13');
INSERT INTO `payroll_item` VALUES ('1916', '9', '1', '2888.85', '1', '35', '13');
INSERT INTO `payroll_item` VALUES ('1917', '10', '1', '1162', '1', '35', '13');
INSERT INTO `payroll_item` VALUES ('1918', '16', '1', '0', '1', '35', '13');
INSERT INTO `payroll_item` VALUES ('1919', '15', '1', '0', '1', '35', '13');
INSERT INTO `payroll_item` VALUES ('1920', '11', '1', '1080', '1', '35', '13');
INSERT INTO `payroll_item` VALUES ('1921', '12', '1', '750', '1', '35', '13');
INSERT INTO `payroll_item` VALUES ('1922', '4', '3', '300', '1', '35', '13');
INSERT INTO `payroll_item` VALUES ('1923', '7', '1', '21000', '1', '40', '13');
INSERT INTO `payroll_item` VALUES ('1924', '3', '5', '3150', '1', '40', '13');
INSERT INTO `payroll_item` VALUES ('1925', '9', '1', '3118.85', '1', '40', '13');
INSERT INTO `payroll_item` VALUES ('1926', '10', '1', '1162', '1', '40', '13');
INSERT INTO `payroll_item` VALUES ('1927', '16', '1', '0', '1', '40', '13');
INSERT INTO `payroll_item` VALUES ('1928', '15', '1', '0', '1', '40', '13');
INSERT INTO `payroll_item` VALUES ('1929', '11', '1', '1080', '1', '40', '13');
INSERT INTO `payroll_item` VALUES ('1930', '12', '1', '750', '1', '40', '13');
INSERT INTO `payroll_item` VALUES ('1931', '7', '1', '35000', '1', '3', '14');
INSERT INTO `payroll_item` VALUES ('1932', '3', '5', '5250', '1', '3', '14');
INSERT INTO `payroll_item` VALUES ('1933', '9', '1', '6845.7', '1', '3', '14');
INSERT INTO `payroll_item` VALUES ('1934', '10', '1', '1162', '1', '3', '14');
INSERT INTO `payroll_item` VALUES ('1935', '16', '1', '0', '1', '3', '14');
INSERT INTO `payroll_item` VALUES ('1936', '15', '1', '0', '1', '3', '14');
INSERT INTO `payroll_item` VALUES ('1937', '11', '1', '1080', '1', '3', '14');
INSERT INTO `payroll_item` VALUES ('1938', '12', '1', '1000', '1', '3', '14');
INSERT INTO `payroll_item` VALUES ('1939', '7', '1', '20000', '1', '4', '14');
INSERT INTO `payroll_item` VALUES ('1940', '3', '5', '3000', '1', '4', '14');
INSERT INTO `payroll_item` VALUES ('1941', '9', '1', '2888.85', '1', '4', '14');
INSERT INTO `payroll_item` VALUES ('1942', '10', '1', '1162', '1', '4', '14');
INSERT INTO `payroll_item` VALUES ('1943', '16', '1', '0', '1', '4', '14');
INSERT INTO `payroll_item` VALUES ('1944', '15', '1', '0', '1', '4', '14');
INSERT INTO `payroll_item` VALUES ('1945', '11', '1', '1080', '1', '4', '14');
INSERT INTO `payroll_item` VALUES ('1946', '12', '1', '750', '1', '4', '14');
INSERT INTO `payroll_item` VALUES ('1947', '7', '1', '20000', '1', '5', '14');
INSERT INTO `payroll_item` VALUES ('1948', '3', '5', '3000', '1', '5', '14');
INSERT INTO `payroll_item` VALUES ('1949', '9', '1', '2888.85', '1', '5', '14');
INSERT INTO `payroll_item` VALUES ('1950', '10', '1', '1162', '1', '5', '14');
INSERT INTO `payroll_item` VALUES ('1951', '16', '1', '0', '1', '5', '14');
INSERT INTO `payroll_item` VALUES ('1952', '15', '1', '0', '1', '5', '14');
INSERT INTO `payroll_item` VALUES ('1953', '11', '1', '1080', '1', '5', '14');
INSERT INTO `payroll_item` VALUES ('1954', '12', '1', '750', '1', '5', '14');
INSERT INTO `payroll_item` VALUES ('1955', '7', '1', '25000', '1', '6', '14');
INSERT INTO `payroll_item` VALUES ('1956', '3', '5', '3750', '1', '6', '14');
INSERT INTO `payroll_item` VALUES ('1957', '9', '1', '4038.85', '1', '6', '14');
INSERT INTO `payroll_item` VALUES ('1958', '10', '1', '1162', '1', '6', '14');
INSERT INTO `payroll_item` VALUES ('1959', '16', '1', '0', '1', '6', '14');
INSERT INTO `payroll_item` VALUES ('1960', '15', '1', '0', '1', '6', '14');
INSERT INTO `payroll_item` VALUES ('1961', '11', '1', '1080', '1', '6', '14');
INSERT INTO `payroll_item` VALUES ('1962', '12', '1', '850', '1', '6', '14');
INSERT INTO `payroll_item` VALUES ('1963', '7', '1', '25000', '1', '7', '14');
INSERT INTO `payroll_item` VALUES ('1964', '3', '5', '3750', '1', '7', '14');
INSERT INTO `payroll_item` VALUES ('1965', '9', '1', '4038.85', '1', '7', '14');
INSERT INTO `payroll_item` VALUES ('1966', '10', '1', '1162', '1', '7', '14');
INSERT INTO `payroll_item` VALUES ('1967', '16', '1', '0', '1', '7', '14');
INSERT INTO `payroll_item` VALUES ('1968', '15', '1', '0', '1', '7', '14');
INSERT INTO `payroll_item` VALUES ('1969', '11', '1', '1080', '1', '7', '14');
INSERT INTO `payroll_item` VALUES ('1970', '12', '1', '850', '1', '7', '14');
INSERT INTO `payroll_item` VALUES ('1971', '7', '1', '7826', '1', '8', '14');
INSERT INTO `payroll_item` VALUES ('1972', '3', '5', '1174', '1', '8', '14');
INSERT INTO `payroll_item` VALUES ('1973', '9', '1', '0', '1', '8', '14');
INSERT INTO `payroll_item` VALUES ('1974', '10', '1', '1162', '1', '8', '14');
INSERT INTO `payroll_item` VALUES ('1975', '16', '1', '0', '1', '8', '14');
INSERT INTO `payroll_item` VALUES ('1976', '15', '1', '0', '1', '8', '14');
INSERT INTO `payroll_item` VALUES ('1977', '11', '1', '540', '1', '8', '14');
INSERT INTO `payroll_item` VALUES ('1978', '12', '1', '400', '1', '8', '14');
INSERT INTO `payroll_item` VALUES ('1979', '7', '1', '10000', '1', '9', '14');
INSERT INTO `payroll_item` VALUES ('1980', '3', '5', '1500', '1', '9', '14');
INSERT INTO `payroll_item` VALUES ('1981', '9', '1', '1113.3', '1', '9', '14');
INSERT INTO `payroll_item` VALUES ('1982', '10', '1', '1162', '1', '9', '14');
INSERT INTO `payroll_item` VALUES ('1983', '16', '1', '0', '1', '9', '14');
INSERT INTO `payroll_item` VALUES ('1984', '15', '1', '0', '1', '9', '14');
INSERT INTO `payroll_item` VALUES ('1985', '11', '1', '690', '1', '9', '14');
INSERT INTO `payroll_item` VALUES ('1986', '12', '1', '400', '1', '9', '14');
INSERT INTO `payroll_item` VALUES ('1987', '7', '1', '15000', '1', '10', '14');
INSERT INTO `payroll_item` VALUES ('1988', '3', '5', '2250', '1', '10', '14');
INSERT INTO `payroll_item` VALUES ('1989', '9', '1', '1924.05', '1', '10', '14');
INSERT INTO `payroll_item` VALUES ('1990', '10', '1', '1162', '1', '10', '14');
INSERT INTO `payroll_item` VALUES ('1991', '16', '1', '0', '1', '10', '14');
INSERT INTO `payroll_item` VALUES ('1992', '15', '1', '0', '1', '10', '14');
INSERT INTO `payroll_item` VALUES ('1993', '11', '1', '1035', '1', '10', '14');
INSERT INTO `payroll_item` VALUES ('1994', '12', '1', '600', '1', '10', '14');
INSERT INTO `payroll_item` VALUES ('1995', '7', '1', '15000', '1', '11', '14');
INSERT INTO `payroll_item` VALUES ('1996', '3', '5', '2250', '1', '11', '14');
INSERT INTO `payroll_item` VALUES ('1997', '9', '1', '1924.05', '1', '11', '14');
INSERT INTO `payroll_item` VALUES ('1998', '10', '1', '1162', '1', '11', '14');
INSERT INTO `payroll_item` VALUES ('1999', '16', '1', '0', '1', '11', '14');
INSERT INTO `payroll_item` VALUES ('2000', '15', '1', '0', '1', '11', '14');
INSERT INTO `payroll_item` VALUES ('2001', '11', '1', '1035', '1', '11', '14');
INSERT INTO `payroll_item` VALUES ('2002', '12', '1', '600', '1', '11', '14');
INSERT INTO `payroll_item` VALUES ('2003', '7', '1', '20000', '1', '12', '14');
INSERT INTO `payroll_item` VALUES ('2004', '3', '5', '3000', '1', '12', '14');
INSERT INTO `payroll_item` VALUES ('2005', '9', '1', '2888.85', '1', '12', '14');
INSERT INTO `payroll_item` VALUES ('2006', '10', '1', '1162', '1', '12', '14');
INSERT INTO `payroll_item` VALUES ('2007', '16', '1', '0', '1', '12', '14');
INSERT INTO `payroll_item` VALUES ('2008', '15', '1', '0', '1', '12', '14');
INSERT INTO `payroll_item` VALUES ('2009', '11', '1', '1080', '1', '12', '14');
INSERT INTO `payroll_item` VALUES ('2010', '12', '1', '750', '1', '12', '14');
INSERT INTO `payroll_item` VALUES ('2011', '7', '1', '27000', '1', '13', '14');
INSERT INTO `payroll_item` VALUES ('2012', '3', '5', '4050', '1', '13', '14');
INSERT INTO `payroll_item` VALUES ('2013', '3', '6', '1000', '1', '13', '14');
INSERT INTO `payroll_item` VALUES ('2014', '9', '1', '4781.65', '1', '13', '14');
INSERT INTO `payroll_item` VALUES ('2015', '10', '1', '1162', '1', '13', '14');
INSERT INTO `payroll_item` VALUES ('2016', '16', '1', '0', '1', '13', '14');
INSERT INTO `payroll_item` VALUES ('2017', '15', '1', '0', '1', '13', '14');
INSERT INTO `payroll_item` VALUES ('2018', '11', '1', '1080', '1', '13', '14');
INSERT INTO `payroll_item` VALUES ('2019', '12', '1', '900', '1', '13', '14');
INSERT INTO `payroll_item` VALUES ('2020', '7', '1', '18000', '1', '14', '14');
INSERT INTO `payroll_item` VALUES ('2021', '3', '5', '2700', '1', '14', '14');
INSERT INTO `payroll_item` VALUES ('2022', '9', '1', '2434.8', '1', '14', '14');
INSERT INTO `payroll_item` VALUES ('2023', '10', '1', '1162', '1', '14', '14');
INSERT INTO `payroll_item` VALUES ('2024', '16', '1', '0', '1', '14', '14');
INSERT INTO `payroll_item` VALUES ('2025', '15', '1', '0', '1', '14', '14');
INSERT INTO `payroll_item` VALUES ('2026', '11', '1', '1080', '1', '14', '14');
INSERT INTO `payroll_item` VALUES ('2027', '12', '1', '750', '1', '14', '14');
INSERT INTO `payroll_item` VALUES ('2028', '7', '1', '10000', '1', '15', '14');
INSERT INTO `payroll_item` VALUES ('2029', '3', '5', '1500', '1', '15', '14');
INSERT INTO `payroll_item` VALUES ('2030', '9', '1', '1113.3', '1', '15', '14');
INSERT INTO `payroll_item` VALUES ('2031', '10', '1', '1162', '1', '15', '14');
INSERT INTO `payroll_item` VALUES ('2032', '16', '1', '0', '1', '15', '14');
INSERT INTO `payroll_item` VALUES ('2033', '15', '1', '0', '1', '15', '14');
INSERT INTO `payroll_item` VALUES ('2034', '11', '1', '690', '1', '15', '14');
INSERT INTO `payroll_item` VALUES ('2035', '12', '1', '400', '1', '15', '14');
INSERT INTO `payroll_item` VALUES ('2036', '7', '1', '14000', '1', '16', '14');
INSERT INTO `payroll_item` VALUES ('2037', '3', '5', '2100', '1', '16', '14');
INSERT INTO `payroll_item` VALUES ('2038', '9', '1', '1761.9', '1', '16', '14');
INSERT INTO `payroll_item` VALUES ('2039', '10', '1', '1162', '1', '16', '14');
INSERT INTO `payroll_item` VALUES ('2040', '16', '1', '0', '1', '16', '14');
INSERT INTO `payroll_item` VALUES ('2041', '15', '1', '0', '1', '16', '14');
INSERT INTO `payroll_item` VALUES ('2042', '11', '1', '966', '1', '16', '14');
INSERT INTO `payroll_item` VALUES ('2043', '12', '1', '600', '1', '16', '14');
INSERT INTO `payroll_item` VALUES ('2044', '7', '1', '5436', '1', '17', '14');
INSERT INTO `payroll_item` VALUES ('2045', '3', '5', '814', '1', '17', '14');
INSERT INTO `payroll_item` VALUES ('2046', '9', '1', '0', '1', '17', '14');
INSERT INTO `payroll_item` VALUES ('2047', '10', '1', '1162', '1', '17', '14');
INSERT INTO `payroll_item` VALUES ('2048', '16', '1', '0', '1', '17', '14');
INSERT INTO `payroll_item` VALUES ('2049', '15', '1', '0', '1', '17', '14');
INSERT INTO `payroll_item` VALUES ('2050', '11', '1', '375', '1', '17', '14');
INSERT INTO `payroll_item` VALUES ('2051', '12', '1', '300', '1', '17', '14');
INSERT INTO `payroll_item` VALUES ('2052', '7', '1', '25000', '1', '19', '14');
INSERT INTO `payroll_item` VALUES ('2053', '3', '5', '3750', '1', '19', '14');
INSERT INTO `payroll_item` VALUES ('2054', '9', '1', '4038.85', '1', '19', '14');
INSERT INTO `payroll_item` VALUES ('2055', '10', '1', '1162', '1', '19', '14');
INSERT INTO `payroll_item` VALUES ('2056', '16', '1', '0', '1', '19', '14');
INSERT INTO `payroll_item` VALUES ('2057', '15', '1', '0', '1', '19', '14');
INSERT INTO `payroll_item` VALUES ('2058', '11', '1', '1080', '1', '19', '14');
INSERT INTO `payroll_item` VALUES ('2059', '12', '1', '850', '1', '19', '14');
INSERT INTO `payroll_item` VALUES ('2060', '7', '1', '25000', '1', '20', '14');
INSERT INTO `payroll_item` VALUES ('2061', '3', '5', '3750', '1', '20', '14');
INSERT INTO `payroll_item` VALUES ('2062', '9', '1', '4038.85', '1', '20', '14');
INSERT INTO `payroll_item` VALUES ('2063', '10', '1', '1162', '1', '20', '14');
INSERT INTO `payroll_item` VALUES ('2064', '16', '1', '0', '1', '20', '14');
INSERT INTO `payroll_item` VALUES ('2065', '15', '1', '0', '1', '20', '14');
INSERT INTO `payroll_item` VALUES ('2066', '11', '1', '1080', '1', '20', '14');
INSERT INTO `payroll_item` VALUES ('2067', '12', '1', '850', '1', '20', '14');
INSERT INTO `payroll_item` VALUES ('2068', '7', '1', '25000', '1', '21', '14');
INSERT INTO `payroll_item` VALUES ('2069', '3', '5', '3750', '1', '21', '14');
INSERT INTO `payroll_item` VALUES ('2070', '9', '1', '4038.85', '1', '21', '14');
INSERT INTO `payroll_item` VALUES ('2071', '10', '1', '1162', '1', '21', '14');
INSERT INTO `payroll_item` VALUES ('2072', '16', '1', '0', '1', '21', '14');
INSERT INTO `payroll_item` VALUES ('2073', '15', '1', '0', '1', '21', '14');
INSERT INTO `payroll_item` VALUES ('2074', '11', '1', '1080', '1', '21', '14');
INSERT INTO `payroll_item` VALUES ('2075', '12', '1', '850', '1', '21', '14');
INSERT INTO `payroll_item` VALUES ('2076', '7', '1', '21000', '1', '40', '14');
INSERT INTO `payroll_item` VALUES ('2077', '3', '5', '3150', '1', '40', '14');
INSERT INTO `payroll_item` VALUES ('2078', '9', '1', '3118.85', '1', '40', '14');
INSERT INTO `payroll_item` VALUES ('2079', '10', '1', '1162', '1', '40', '14');
INSERT INTO `payroll_item` VALUES ('2080', '16', '1', '0', '1', '40', '14');
INSERT INTO `payroll_item` VALUES ('2081', '15', '1', '0', '1', '40', '14');
INSERT INTO `payroll_item` VALUES ('2082', '11', '1', '1080', '1', '40', '14');
INSERT INTO `payroll_item` VALUES ('2083', '12', '1', '750', '1', '40', '14');
INSERT INTO `payroll_item` VALUES ('2084', '7', '1', '35000', '1', '3', '15');
INSERT INTO `payroll_item` VALUES ('2085', '3', '5', '5250', '1', '3', '15');
INSERT INTO `payroll_item` VALUES ('2086', '9', '1', '6845.7', '1', '3', '15');
INSERT INTO `payroll_item` VALUES ('2087', '10', '1', '1162', '1', '3', '15');
INSERT INTO `payroll_item` VALUES ('2088', '16', '1', '0', '1', '3', '15');
INSERT INTO `payroll_item` VALUES ('2089', '15', '1', '0', '1', '3', '15');
INSERT INTO `payroll_item` VALUES ('2090', '11', '1', '1080', '1', '3', '15');
INSERT INTO `payroll_item` VALUES ('2091', '12', '1', '1000', '1', '3', '15');
INSERT INTO `payroll_item` VALUES ('2092', '7', '1', '20000', '1', '4', '15');
INSERT INTO `payroll_item` VALUES ('2093', '3', '5', '3000', '1', '4', '15');
INSERT INTO `payroll_item` VALUES ('2094', '9', '1', '2888.85', '1', '4', '15');
INSERT INTO `payroll_item` VALUES ('2095', '10', '1', '1162', '1', '4', '15');
INSERT INTO `payroll_item` VALUES ('2096', '16', '1', '0', '1', '4', '15');
INSERT INTO `payroll_item` VALUES ('2097', '15', '1', '0', '1', '4', '15');
INSERT INTO `payroll_item` VALUES ('2098', '11', '1', '1080', '1', '4', '15');
INSERT INTO `payroll_item` VALUES ('2099', '12', '1', '750', '1', '4', '15');
INSERT INTO `payroll_item` VALUES ('2100', '7', '1', '20000', '1', '5', '15');
INSERT INTO `payroll_item` VALUES ('2101', '3', '5', '3000', '1', '5', '15');
INSERT INTO `payroll_item` VALUES ('2102', '9', '1', '2888.85', '1', '5', '15');
INSERT INTO `payroll_item` VALUES ('2103', '10', '1', '1162', '1', '5', '15');
INSERT INTO `payroll_item` VALUES ('2104', '16', '1', '0', '1', '5', '15');
INSERT INTO `payroll_item` VALUES ('2105', '15', '1', '0', '1', '5', '15');
INSERT INTO `payroll_item` VALUES ('2106', '11', '1', '1080', '1', '5', '15');
INSERT INTO `payroll_item` VALUES ('2107', '12', '1', '750', '1', '5', '15');
INSERT INTO `payroll_item` VALUES ('2108', '7', '1', '25000', '1', '6', '15');
INSERT INTO `payroll_item` VALUES ('2109', '3', '5', '3750', '1', '6', '15');
INSERT INTO `payroll_item` VALUES ('2110', '9', '1', '4038.85', '1', '6', '15');
INSERT INTO `payroll_item` VALUES ('2111', '10', '1', '1162', '1', '6', '15');
INSERT INTO `payroll_item` VALUES ('2112', '16', '1', '0', '1', '6', '15');
INSERT INTO `payroll_item` VALUES ('2113', '15', '1', '0', '1', '6', '15');
INSERT INTO `payroll_item` VALUES ('2114', '11', '1', '1080', '1', '6', '15');
INSERT INTO `payroll_item` VALUES ('2115', '12', '1', '850', '1', '6', '15');
INSERT INTO `payroll_item` VALUES ('2116', '7', '1', '25000', '1', '7', '15');
INSERT INTO `payroll_item` VALUES ('2117', '3', '5', '3750', '1', '7', '15');
INSERT INTO `payroll_item` VALUES ('2118', '9', '1', '4038.85', '1', '7', '15');
INSERT INTO `payroll_item` VALUES ('2119', '10', '1', '1162', '1', '7', '15');
INSERT INTO `payroll_item` VALUES ('2120', '16', '1', '0', '1', '7', '15');
INSERT INTO `payroll_item` VALUES ('2121', '15', '1', '0', '1', '7', '15');
INSERT INTO `payroll_item` VALUES ('2122', '11', '1', '1080', '1', '7', '15');
INSERT INTO `payroll_item` VALUES ('2123', '12', '1', '850', '1', '7', '15');
INSERT INTO `payroll_item` VALUES ('2124', '7', '1', '7826', '1', '8', '15');
INSERT INTO `payroll_item` VALUES ('2125', '3', '5', '1174', '1', '8', '15');
INSERT INTO `payroll_item` VALUES ('2126', '9', '1', '0', '1', '8', '15');
INSERT INTO `payroll_item` VALUES ('2127', '10', '1', '1162', '1', '8', '15');
INSERT INTO `payroll_item` VALUES ('2128', '16', '1', '0', '1', '8', '15');
INSERT INTO `payroll_item` VALUES ('2129', '15', '1', '0', '1', '8', '15');
INSERT INTO `payroll_item` VALUES ('2130', '11', '1', '540', '1', '8', '15');
INSERT INTO `payroll_item` VALUES ('2131', '12', '1', '400', '1', '8', '15');
INSERT INTO `payroll_item` VALUES ('2132', '7', '1', '10000', '1', '9', '15');
INSERT INTO `payroll_item` VALUES ('2133', '3', '5', '1500', '1', '9', '15');
INSERT INTO `payroll_item` VALUES ('2134', '9', '1', '1113.3', '1', '9', '15');
INSERT INTO `payroll_item` VALUES ('2135', '10', '1', '1162', '1', '9', '15');
INSERT INTO `payroll_item` VALUES ('2136', '16', '1', '0', '1', '9', '15');
INSERT INTO `payroll_item` VALUES ('2137', '15', '1', '0', '1', '9', '15');
INSERT INTO `payroll_item` VALUES ('2138', '11', '1', '690', '1', '9', '15');
INSERT INTO `payroll_item` VALUES ('2139', '12', '1', '400', '1', '9', '15');
INSERT INTO `payroll_item` VALUES ('2140', '7', '1', '15000', '1', '10', '15');
INSERT INTO `payroll_item` VALUES ('2141', '3', '5', '2250', '1', '10', '15');
INSERT INTO `payroll_item` VALUES ('2142', '9', '1', '1924.05', '1', '10', '15');
INSERT INTO `payroll_item` VALUES ('2143', '10', '1', '1162', '1', '10', '15');
INSERT INTO `payroll_item` VALUES ('2144', '16', '1', '0', '1', '10', '15');
INSERT INTO `payroll_item` VALUES ('2145', '15', '1', '0', '1', '10', '15');
INSERT INTO `payroll_item` VALUES ('2146', '11', '1', '1035', '1', '10', '15');
INSERT INTO `payroll_item` VALUES ('2147', '12', '1', '600', '1', '10', '15');
INSERT INTO `payroll_item` VALUES ('2148', '7', '1', '15000', '1', '11', '15');
INSERT INTO `payroll_item` VALUES ('2149', '3', '5', '2250', '1', '11', '15');
INSERT INTO `payroll_item` VALUES ('2150', '9', '1', '1924.05', '1', '11', '15');
INSERT INTO `payroll_item` VALUES ('2151', '10', '1', '1162', '1', '11', '15');
INSERT INTO `payroll_item` VALUES ('2152', '16', '1', '0', '1', '11', '15');
INSERT INTO `payroll_item` VALUES ('2153', '15', '1', '0', '1', '11', '15');
INSERT INTO `payroll_item` VALUES ('2154', '11', '1', '1035', '1', '11', '15');
INSERT INTO `payroll_item` VALUES ('2155', '12', '1', '600', '1', '11', '15');
INSERT INTO `payroll_item` VALUES ('2156', '7', '1', '20000', '1', '12', '15');
INSERT INTO `payroll_item` VALUES ('2157', '3', '5', '3000', '1', '12', '15');
INSERT INTO `payroll_item` VALUES ('2158', '9', '1', '2888.85', '1', '12', '15');
INSERT INTO `payroll_item` VALUES ('2159', '10', '1', '1162', '1', '12', '15');
INSERT INTO `payroll_item` VALUES ('2160', '16', '1', '0', '1', '12', '15');
INSERT INTO `payroll_item` VALUES ('2161', '15', '1', '0', '1', '12', '15');
INSERT INTO `payroll_item` VALUES ('2162', '11', '1', '1080', '1', '12', '15');
INSERT INTO `payroll_item` VALUES ('2163', '12', '1', '750', '1', '12', '15');
INSERT INTO `payroll_item` VALUES ('2164', '7', '1', '27000', '1', '13', '15');
INSERT INTO `payroll_item` VALUES ('2165', '3', '5', '4050', '1', '13', '15');
INSERT INTO `payroll_item` VALUES ('2166', '3', '6', '1000', '1', '13', '15');
INSERT INTO `payroll_item` VALUES ('2167', '9', '1', '4781.65', '1', '13', '15');
INSERT INTO `payroll_item` VALUES ('2168', '10', '1', '1162', '1', '13', '15');
INSERT INTO `payroll_item` VALUES ('2169', '16', '1', '0', '1', '13', '15');
INSERT INTO `payroll_item` VALUES ('2170', '15', '1', '0', '1', '13', '15');
INSERT INTO `payroll_item` VALUES ('2171', '11', '1', '1080', '1', '13', '15');
INSERT INTO `payroll_item` VALUES ('2172', '12', '1', '900', '1', '13', '15');
INSERT INTO `payroll_item` VALUES ('2173', '7', '1', '18000', '1', '14', '15');
INSERT INTO `payroll_item` VALUES ('2174', '3', '5', '2700', '1', '14', '15');
INSERT INTO `payroll_item` VALUES ('2175', '9', '1', '2434.8', '1', '14', '15');
INSERT INTO `payroll_item` VALUES ('2176', '10', '1', '1162', '1', '14', '15');
INSERT INTO `payroll_item` VALUES ('2177', '16', '1', '0', '1', '14', '15');
INSERT INTO `payroll_item` VALUES ('2178', '15', '1', '0', '1', '14', '15');
INSERT INTO `payroll_item` VALUES ('2179', '11', '1', '1080', '1', '14', '15');
INSERT INTO `payroll_item` VALUES ('2180', '12', '1', '750', '1', '14', '15');
INSERT INTO `payroll_item` VALUES ('2181', '7', '1', '10000', '1', '15', '15');
INSERT INTO `payroll_item` VALUES ('2182', '3', '5', '1500', '1', '15', '15');
INSERT INTO `payroll_item` VALUES ('2183', '9', '1', '1113.3', '1', '15', '15');
INSERT INTO `payroll_item` VALUES ('2184', '10', '1', '1162', '1', '15', '15');
INSERT INTO `payroll_item` VALUES ('2185', '16', '1', '0', '1', '15', '15');
INSERT INTO `payroll_item` VALUES ('2186', '15', '1', '0', '1', '15', '15');
INSERT INTO `payroll_item` VALUES ('2187', '11', '1', '690', '1', '15', '15');
INSERT INTO `payroll_item` VALUES ('2188', '12', '1', '400', '1', '15', '15');
INSERT INTO `payroll_item` VALUES ('2189', '7', '1', '14000', '1', '16', '15');
INSERT INTO `payroll_item` VALUES ('2190', '3', '5', '2100', '1', '16', '15');
INSERT INTO `payroll_item` VALUES ('2191', '9', '1', '1761.9', '1', '16', '15');
INSERT INTO `payroll_item` VALUES ('2192', '10', '1', '1162', '1', '16', '15');
INSERT INTO `payroll_item` VALUES ('2193', '16', '1', '0', '1', '16', '15');
INSERT INTO `payroll_item` VALUES ('2194', '15', '1', '0', '1', '16', '15');
INSERT INTO `payroll_item` VALUES ('2195', '11', '1', '966', '1', '16', '15');
INSERT INTO `payroll_item` VALUES ('2196', '12', '1', '600', '1', '16', '15');
INSERT INTO `payroll_item` VALUES ('2197', '7', '1', '5436', '1', '17', '15');
INSERT INTO `payroll_item` VALUES ('2198', '3', '5', '814', '1', '17', '15');
INSERT INTO `payroll_item` VALUES ('2199', '9', '1', '0', '1', '17', '15');
INSERT INTO `payroll_item` VALUES ('2200', '10', '1', '1162', '1', '17', '15');
INSERT INTO `payroll_item` VALUES ('2201', '16', '1', '0', '1', '17', '15');
INSERT INTO `payroll_item` VALUES ('2202', '15', '1', '0', '1', '17', '15');
INSERT INTO `payroll_item` VALUES ('2203', '11', '1', '375', '1', '17', '15');
INSERT INTO `payroll_item` VALUES ('2204', '12', '1', '300', '1', '17', '15');
INSERT INTO `payroll_item` VALUES ('2205', '7', '1', '25000', '1', '19', '15');
INSERT INTO `payroll_item` VALUES ('2206', '3', '5', '3750', '1', '19', '15');
INSERT INTO `payroll_item` VALUES ('2207', '9', '1', '4038.85', '1', '19', '15');
INSERT INTO `payroll_item` VALUES ('2208', '10', '1', '1162', '1', '19', '15');
INSERT INTO `payroll_item` VALUES ('2209', '16', '1', '0', '1', '19', '15');
INSERT INTO `payroll_item` VALUES ('2210', '15', '1', '0', '1', '19', '15');
INSERT INTO `payroll_item` VALUES ('2211', '11', '1', '1080', '1', '19', '15');
INSERT INTO `payroll_item` VALUES ('2212', '12', '1', '850', '1', '19', '15');
INSERT INTO `payroll_item` VALUES ('2213', '7', '1', '25000', '1', '20', '15');
INSERT INTO `payroll_item` VALUES ('2214', '3', '5', '3750', '1', '20', '15');
INSERT INTO `payroll_item` VALUES ('2215', '9', '1', '4038.85', '1', '20', '15');
INSERT INTO `payroll_item` VALUES ('2216', '10', '1', '1162', '1', '20', '15');
INSERT INTO `payroll_item` VALUES ('2217', '16', '1', '0', '1', '20', '15');
INSERT INTO `payroll_item` VALUES ('2218', '15', '1', '0', '1', '20', '15');
INSERT INTO `payroll_item` VALUES ('2219', '11', '1', '1080', '1', '20', '15');
INSERT INTO `payroll_item` VALUES ('2220', '12', '1', '850', '1', '20', '15');
INSERT INTO `payroll_item` VALUES ('2221', '7', '1', '25000', '1', '21', '15');
INSERT INTO `payroll_item` VALUES ('2222', '3', '5', '3750', '1', '21', '15');
INSERT INTO `payroll_item` VALUES ('2223', '9', '1', '4038.85', '1', '21', '15');
INSERT INTO `payroll_item` VALUES ('2224', '10', '1', '1162', '1', '21', '15');
INSERT INTO `payroll_item` VALUES ('2225', '16', '1', '0', '1', '21', '15');
INSERT INTO `payroll_item` VALUES ('2226', '15', '1', '0', '1', '21', '15');
INSERT INTO `payroll_item` VALUES ('2227', '11', '1', '1080', '1', '21', '15');
INSERT INTO `payroll_item` VALUES ('2228', '12', '1', '850', '1', '21', '15');
INSERT INTO `payroll_item` VALUES ('2229', '7', '1', '21000', '1', '40', '15');
INSERT INTO `payroll_item` VALUES ('2230', '3', '5', '3150', '1', '40', '15');
INSERT INTO `payroll_item` VALUES ('2231', '9', '1', '3118.85', '1', '40', '15');
INSERT INTO `payroll_item` VALUES ('2232', '10', '1', '1162', '1', '40', '15');
INSERT INTO `payroll_item` VALUES ('2233', '16', '1', '0', '1', '40', '15');
INSERT INTO `payroll_item` VALUES ('2234', '15', '1', '0', '1', '40', '15');
INSERT INTO `payroll_item` VALUES ('2235', '11', '1', '1080', '1', '40', '15');
INSERT INTO `payroll_item` VALUES ('2236', '12', '1', '750', '1', '40', '15');
INSERT INTO `payroll_item` VALUES ('2237', '7', '1', '35000', '1', '3', '16');
INSERT INTO `payroll_item` VALUES ('2238', '3', '5', '5250', '1', '3', '16');
INSERT INTO `payroll_item` VALUES ('2239', '9', '1', '6845.7', '1', '3', '16');
INSERT INTO `payroll_item` VALUES ('2240', '10', '1', '1162', '1', '3', '16');
INSERT INTO `payroll_item` VALUES ('2241', '16', '1', '0', '1', '3', '16');
INSERT INTO `payroll_item` VALUES ('2242', '15', '1', '0', '1', '3', '16');
INSERT INTO `payroll_item` VALUES ('2243', '11', '1', '1080', '1', '3', '16');
INSERT INTO `payroll_item` VALUES ('2244', '12', '1', '1000', '1', '3', '16');
INSERT INTO `payroll_item` VALUES ('2245', '7', '1', '20000', '1', '4', '16');
INSERT INTO `payroll_item` VALUES ('2246', '3', '5', '3000', '1', '4', '16');
INSERT INTO `payroll_item` VALUES ('2247', '9', '1', '2888.85', '1', '4', '16');
INSERT INTO `payroll_item` VALUES ('2248', '10', '1', '1162', '1', '4', '16');
INSERT INTO `payroll_item` VALUES ('2249', '16', '1', '0', '1', '4', '16');
INSERT INTO `payroll_item` VALUES ('2250', '15', '1', '0', '1', '4', '16');
INSERT INTO `payroll_item` VALUES ('2251', '11', '1', '1080', '1', '4', '16');
INSERT INTO `payroll_item` VALUES ('2252', '12', '1', '750', '1', '4', '16');
INSERT INTO `payroll_item` VALUES ('2253', '7', '1', '20000', '1', '5', '16');
INSERT INTO `payroll_item` VALUES ('2254', '3', '5', '3000', '1', '5', '16');
INSERT INTO `payroll_item` VALUES ('2255', '9', '1', '2888.85', '1', '5', '16');
INSERT INTO `payroll_item` VALUES ('2256', '10', '1', '1162', '1', '5', '16');
INSERT INTO `payroll_item` VALUES ('2257', '16', '1', '0', '1', '5', '16');
INSERT INTO `payroll_item` VALUES ('2258', '15', '1', '0', '1', '5', '16');
INSERT INTO `payroll_item` VALUES ('2259', '11', '1', '1080', '1', '5', '16');
INSERT INTO `payroll_item` VALUES ('2260', '12', '1', '750', '1', '5', '16');
INSERT INTO `payroll_item` VALUES ('2261', '7', '1', '25000', '1', '6', '16');
INSERT INTO `payroll_item` VALUES ('2262', '3', '5', '3750', '1', '6', '16');
INSERT INTO `payroll_item` VALUES ('2263', '9', '1', '4038.85', '1', '6', '16');
INSERT INTO `payroll_item` VALUES ('2264', '10', '1', '1162', '1', '6', '16');
INSERT INTO `payroll_item` VALUES ('2265', '16', '1', '0', '1', '6', '16');
INSERT INTO `payroll_item` VALUES ('2266', '15', '1', '0', '1', '6', '16');
INSERT INTO `payroll_item` VALUES ('2267', '11', '1', '1080', '1', '6', '16');
INSERT INTO `payroll_item` VALUES ('2268', '12', '1', '850', '1', '6', '16');
INSERT INTO `payroll_item` VALUES ('2269', '7', '1', '25000', '1', '7', '16');
INSERT INTO `payroll_item` VALUES ('2270', '3', '5', '3750', '1', '7', '16');
INSERT INTO `payroll_item` VALUES ('2271', '9', '1', '4038.85', '1', '7', '16');
INSERT INTO `payroll_item` VALUES ('2272', '10', '1', '1162', '1', '7', '16');
INSERT INTO `payroll_item` VALUES ('2273', '16', '1', '0', '1', '7', '16');
INSERT INTO `payroll_item` VALUES ('2274', '15', '1', '0', '1', '7', '16');
INSERT INTO `payroll_item` VALUES ('2275', '11', '1', '1080', '1', '7', '16');
INSERT INTO `payroll_item` VALUES ('2276', '12', '1', '850', '1', '7', '16');
INSERT INTO `payroll_item` VALUES ('2277', '7', '1', '7826', '1', '8', '16');
INSERT INTO `payroll_item` VALUES ('2278', '3', '5', '1174', '1', '8', '16');
INSERT INTO `payroll_item` VALUES ('2279', '9', '1', '0', '1', '8', '16');
INSERT INTO `payroll_item` VALUES ('2280', '10', '1', '1162', '1', '8', '16');
INSERT INTO `payroll_item` VALUES ('2281', '16', '1', '0', '1', '8', '16');
INSERT INTO `payroll_item` VALUES ('2282', '15', '1', '0', '1', '8', '16');
INSERT INTO `payroll_item` VALUES ('2283', '11', '1', '540', '1', '8', '16');
INSERT INTO `payroll_item` VALUES ('2284', '12', '1', '400', '1', '8', '16');
INSERT INTO `payroll_item` VALUES ('2285', '7', '1', '10000', '1', '9', '16');
INSERT INTO `payroll_item` VALUES ('2286', '3', '5', '1500', '1', '9', '16');
INSERT INTO `payroll_item` VALUES ('2287', '9', '1', '1113.3', '1', '9', '16');
INSERT INTO `payroll_item` VALUES ('2288', '10', '1', '1162', '1', '9', '16');
INSERT INTO `payroll_item` VALUES ('2289', '16', '1', '0', '1', '9', '16');
INSERT INTO `payroll_item` VALUES ('2290', '15', '1', '0', '1', '9', '16');
INSERT INTO `payroll_item` VALUES ('2291', '11', '1', '690', '1', '9', '16');
INSERT INTO `payroll_item` VALUES ('2292', '12', '1', '400', '1', '9', '16');
INSERT INTO `payroll_item` VALUES ('2293', '7', '1', '15000', '1', '10', '16');
INSERT INTO `payroll_item` VALUES ('2294', '3', '5', '2250', '1', '10', '16');
INSERT INTO `payroll_item` VALUES ('2295', '9', '1', '1924.05', '1', '10', '16');
INSERT INTO `payroll_item` VALUES ('2296', '10', '1', '1162', '1', '10', '16');
INSERT INTO `payroll_item` VALUES ('2297', '16', '1', '0', '1', '10', '16');
INSERT INTO `payroll_item` VALUES ('2298', '15', '1', '0', '1', '10', '16');
INSERT INTO `payroll_item` VALUES ('2299', '11', '1', '1035', '1', '10', '16');
INSERT INTO `payroll_item` VALUES ('2300', '12', '1', '600', '1', '10', '16');
INSERT INTO `payroll_item` VALUES ('2301', '7', '1', '15000', '1', '11', '16');
INSERT INTO `payroll_item` VALUES ('2302', '3', '5', '2250', '1', '11', '16');
INSERT INTO `payroll_item` VALUES ('2303', '9', '1', '1924.05', '1', '11', '16');
INSERT INTO `payroll_item` VALUES ('2304', '10', '1', '1162', '1', '11', '16');
INSERT INTO `payroll_item` VALUES ('2305', '16', '1', '0', '1', '11', '16');
INSERT INTO `payroll_item` VALUES ('2306', '15', '1', '0', '1', '11', '16');
INSERT INTO `payroll_item` VALUES ('2307', '11', '1', '1035', '1', '11', '16');
INSERT INTO `payroll_item` VALUES ('2308', '12', '1', '600', '1', '11', '16');
INSERT INTO `payroll_item` VALUES ('2309', '7', '1', '20000', '1', '12', '16');
INSERT INTO `payroll_item` VALUES ('2310', '3', '5', '3000', '1', '12', '16');
INSERT INTO `payroll_item` VALUES ('2311', '9', '1', '2888.85', '1', '12', '16');
INSERT INTO `payroll_item` VALUES ('2312', '10', '1', '1162', '1', '12', '16');
INSERT INTO `payroll_item` VALUES ('2313', '16', '1', '0', '1', '12', '16');
INSERT INTO `payroll_item` VALUES ('2314', '15', '1', '0', '1', '12', '16');
INSERT INTO `payroll_item` VALUES ('2315', '11', '1', '1080', '1', '12', '16');
INSERT INTO `payroll_item` VALUES ('2316', '12', '1', '750', '1', '12', '16');
INSERT INTO `payroll_item` VALUES ('2317', '7', '1', '27000', '1', '13', '16');
INSERT INTO `payroll_item` VALUES ('2318', '3', '5', '4050', '1', '13', '16');
INSERT INTO `payroll_item` VALUES ('2319', '3', '6', '1000', '1', '13', '16');
INSERT INTO `payroll_item` VALUES ('2320', '9', '1', '4781.65', '1', '13', '16');
INSERT INTO `payroll_item` VALUES ('2321', '10', '1', '1162', '1', '13', '16');
INSERT INTO `payroll_item` VALUES ('2322', '16', '1', '0', '1', '13', '16');
INSERT INTO `payroll_item` VALUES ('2323', '15', '1', '0', '1', '13', '16');
INSERT INTO `payroll_item` VALUES ('2324', '11', '1', '1080', '1', '13', '16');
INSERT INTO `payroll_item` VALUES ('2325', '12', '1', '900', '1', '13', '16');
INSERT INTO `payroll_item` VALUES ('2326', '7', '1', '18000', '1', '14', '16');
INSERT INTO `payroll_item` VALUES ('2327', '3', '5', '2700', '1', '14', '16');
INSERT INTO `payroll_item` VALUES ('2328', '9', '1', '2434.8', '1', '14', '16');
INSERT INTO `payroll_item` VALUES ('2329', '10', '1', '1162', '1', '14', '16');
INSERT INTO `payroll_item` VALUES ('2330', '16', '1', '0', '1', '14', '16');
INSERT INTO `payroll_item` VALUES ('2331', '15', '1', '0', '1', '14', '16');
INSERT INTO `payroll_item` VALUES ('2332', '11', '1', '1080', '1', '14', '16');
INSERT INTO `payroll_item` VALUES ('2333', '12', '1', '750', '1', '14', '16');
INSERT INTO `payroll_item` VALUES ('2334', '7', '1', '10000', '1', '15', '16');
INSERT INTO `payroll_item` VALUES ('2335', '3', '5', '1500', '1', '15', '16');
INSERT INTO `payroll_item` VALUES ('2336', '9', '1', '1113.3', '1', '15', '16');
INSERT INTO `payroll_item` VALUES ('2337', '10', '1', '1162', '1', '15', '16');
INSERT INTO `payroll_item` VALUES ('2338', '16', '1', '0', '1', '15', '16');
INSERT INTO `payroll_item` VALUES ('2339', '15', '1', '0', '1', '15', '16');
INSERT INTO `payroll_item` VALUES ('2340', '11', '1', '690', '1', '15', '16');
INSERT INTO `payroll_item` VALUES ('2341', '12', '1', '400', '1', '15', '16');
INSERT INTO `payroll_item` VALUES ('2342', '7', '1', '14000', '1', '16', '16');
INSERT INTO `payroll_item` VALUES ('2343', '3', '5', '2100', '1', '16', '16');
INSERT INTO `payroll_item` VALUES ('2344', '9', '1', '1761.9', '1', '16', '16');
INSERT INTO `payroll_item` VALUES ('2345', '10', '1', '1162', '1', '16', '16');
INSERT INTO `payroll_item` VALUES ('2346', '16', '1', '0', '1', '16', '16');
INSERT INTO `payroll_item` VALUES ('2347', '15', '1', '0', '1', '16', '16');
INSERT INTO `payroll_item` VALUES ('2348', '11', '1', '966', '1', '16', '16');
INSERT INTO `payroll_item` VALUES ('2349', '12', '1', '600', '1', '16', '16');
INSERT INTO `payroll_item` VALUES ('2350', '7', '1', '5436', '1', '17', '16');
INSERT INTO `payroll_item` VALUES ('2351', '3', '5', '814', '1', '17', '16');
INSERT INTO `payroll_item` VALUES ('2352', '9', '1', '0', '1', '17', '16');
INSERT INTO `payroll_item` VALUES ('2353', '10', '1', '1162', '1', '17', '16');
INSERT INTO `payroll_item` VALUES ('2354', '16', '1', '0', '1', '17', '16');
INSERT INTO `payroll_item` VALUES ('2355', '15', '1', '0', '1', '17', '16');
INSERT INTO `payroll_item` VALUES ('2356', '11', '1', '375', '1', '17', '16');
INSERT INTO `payroll_item` VALUES ('2357', '12', '1', '300', '1', '17', '16');
INSERT INTO `payroll_item` VALUES ('2358', '7', '1', '25000', '1', '19', '16');
INSERT INTO `payroll_item` VALUES ('2359', '3', '5', '3750', '1', '19', '16');
INSERT INTO `payroll_item` VALUES ('2360', '9', '1', '4038.85', '1', '19', '16');
INSERT INTO `payroll_item` VALUES ('2361', '10', '1', '1162', '1', '19', '16');
INSERT INTO `payroll_item` VALUES ('2362', '16', '1', '0', '1', '19', '16');
INSERT INTO `payroll_item` VALUES ('2363', '15', '1', '0', '1', '19', '16');
INSERT INTO `payroll_item` VALUES ('2364', '11', '1', '1080', '1', '19', '16');
INSERT INTO `payroll_item` VALUES ('2365', '12', '1', '850', '1', '19', '16');
INSERT INTO `payroll_item` VALUES ('2366', '7', '1', '25000', '1', '20', '16');
INSERT INTO `payroll_item` VALUES ('2367', '3', '5', '3750', '1', '20', '16');
INSERT INTO `payroll_item` VALUES ('2368', '9', '1', '4038.85', '1', '20', '16');
INSERT INTO `payroll_item` VALUES ('2369', '10', '1', '1162', '1', '20', '16');
INSERT INTO `payroll_item` VALUES ('2370', '16', '1', '0', '1', '20', '16');
INSERT INTO `payroll_item` VALUES ('2371', '15', '1', '0', '1', '20', '16');
INSERT INTO `payroll_item` VALUES ('2372', '11', '1', '1080', '1', '20', '16');
INSERT INTO `payroll_item` VALUES ('2373', '12', '1', '850', '1', '20', '16');
INSERT INTO `payroll_item` VALUES ('2374', '7', '1', '25000', '1', '21', '16');
INSERT INTO `payroll_item` VALUES ('2375', '3', '5', '3750', '1', '21', '16');
INSERT INTO `payroll_item` VALUES ('2376', '9', '1', '4038.85', '1', '21', '16');
INSERT INTO `payroll_item` VALUES ('2377', '10', '1', '1162', '1', '21', '16');
INSERT INTO `payroll_item` VALUES ('2378', '16', '1', '0', '1', '21', '16');
INSERT INTO `payroll_item` VALUES ('2379', '15', '1', '0', '1', '21', '16');
INSERT INTO `payroll_item` VALUES ('2380', '11', '1', '1080', '1', '21', '16');
INSERT INTO `payroll_item` VALUES ('2381', '12', '1', '850', '1', '21', '16');
INSERT INTO `payroll_item` VALUES ('2382', '7', '1', '21000', '1', '40', '16');
INSERT INTO `payroll_item` VALUES ('2383', '3', '5', '3150', '1', '40', '16');
INSERT INTO `payroll_item` VALUES ('2384', '9', '1', '3118.85', '1', '40', '16');
INSERT INTO `payroll_item` VALUES ('2385', '10', '1', '1162', '1', '40', '16');
INSERT INTO `payroll_item` VALUES ('2386', '16', '1', '0', '1', '40', '16');
INSERT INTO `payroll_item` VALUES ('2387', '15', '1', '0', '1', '40', '16');
INSERT INTO `payroll_item` VALUES ('2388', '11', '1', '1080', '1', '40', '16');
INSERT INTO `payroll_item` VALUES ('2389', '12', '1', '750', '1', '40', '16');
INSERT INTO `payroll_item` VALUES ('2390', '7', '1', '35000', '1', '3', '17');
INSERT INTO `payroll_item` VALUES ('2391', '3', '5', '5250', '1', '3', '17');
INSERT INTO `payroll_item` VALUES ('2392', '9', '1', '6845.7', '1', '3', '17');
INSERT INTO `payroll_item` VALUES ('2393', '10', '1', '1162', '1', '3', '17');
INSERT INTO `payroll_item` VALUES ('2394', '16', '1', '0', '1', '3', '17');
INSERT INTO `payroll_item` VALUES ('2395', '15', '1', '0', '1', '3', '17');
INSERT INTO `payroll_item` VALUES ('2396', '11', '1', '1080', '1', '3', '17');
INSERT INTO `payroll_item` VALUES ('2397', '12', '1', '1000', '1', '3', '17');
INSERT INTO `payroll_item` VALUES ('2398', '7', '1', '20000', '1', '4', '17');
INSERT INTO `payroll_item` VALUES ('2399', '3', '5', '3000', '1', '4', '17');
INSERT INTO `payroll_item` VALUES ('2400', '9', '1', '2888.85', '1', '4', '17');
INSERT INTO `payroll_item` VALUES ('2401', '10', '1', '1162', '1', '4', '17');
INSERT INTO `payroll_item` VALUES ('2402', '16', '1', '0', '1', '4', '17');
INSERT INTO `payroll_item` VALUES ('2403', '15', '1', '0', '1', '4', '17');
INSERT INTO `payroll_item` VALUES ('2404', '11', '1', '1080', '1', '4', '17');
INSERT INTO `payroll_item` VALUES ('2405', '12', '1', '750', '1', '4', '17');
INSERT INTO `payroll_item` VALUES ('2406', '7', '1', '20000', '1', '5', '17');
INSERT INTO `payroll_item` VALUES ('2407', '3', '5', '3000', '1', '5', '17');
INSERT INTO `payroll_item` VALUES ('2408', '9', '1', '2888.85', '1', '5', '17');
INSERT INTO `payroll_item` VALUES ('2409', '10', '1', '1162', '1', '5', '17');
INSERT INTO `payroll_item` VALUES ('2410', '16', '1', '0', '1', '5', '17');
INSERT INTO `payroll_item` VALUES ('2411', '15', '1', '0', '1', '5', '17');
INSERT INTO `payroll_item` VALUES ('2412', '11', '1', '1080', '1', '5', '17');
INSERT INTO `payroll_item` VALUES ('2413', '12', '1', '750', '1', '5', '17');
INSERT INTO `payroll_item` VALUES ('2414', '7', '1', '25000', '1', '6', '17');
INSERT INTO `payroll_item` VALUES ('2415', '3', '5', '3750', '1', '6', '17');
INSERT INTO `payroll_item` VALUES ('2416', '9', '1', '4038.85', '1', '6', '17');
INSERT INTO `payroll_item` VALUES ('2417', '10', '1', '1162', '1', '6', '17');
INSERT INTO `payroll_item` VALUES ('2418', '16', '1', '0', '1', '6', '17');
INSERT INTO `payroll_item` VALUES ('2419', '15', '1', '0', '1', '6', '17');
INSERT INTO `payroll_item` VALUES ('2420', '11', '1', '1080', '1', '6', '17');
INSERT INTO `payroll_item` VALUES ('2421', '12', '1', '850', '1', '6', '17');
INSERT INTO `payroll_item` VALUES ('2422', '7', '1', '27500', '1', '7', '17');
INSERT INTO `payroll_item` VALUES ('2423', '3', '5', '4125', '1', '7', '17');
INSERT INTO `payroll_item` VALUES ('2424', '9', '1', '4675.4', '1', '7', '17');
INSERT INTO `payroll_item` VALUES ('2425', '10', '1', '1162', '1', '7', '17');
INSERT INTO `payroll_item` VALUES ('2426', '16', '1', '0', '1', '7', '17');
INSERT INTO `payroll_item` VALUES ('2427', '15', '1', '0', '1', '7', '17');
INSERT INTO `payroll_item` VALUES ('2428', '11', '1', '1080', '1', '7', '17');
INSERT INTO `payroll_item` VALUES ('2429', '12', '1', '900', '1', '7', '17');
INSERT INTO `payroll_item` VALUES ('2430', '7', '1', '7826', '1', '8', '17');
INSERT INTO `payroll_item` VALUES ('2431', '3', '5', '1174', '1', '8', '17');
INSERT INTO `payroll_item` VALUES ('2432', '9', '1', '0', '1', '8', '17');
INSERT INTO `payroll_item` VALUES ('2433', '10', '1', '1162', '1', '8', '17');
INSERT INTO `payroll_item` VALUES ('2434', '16', '1', '0', '1', '8', '17');
INSERT INTO `payroll_item` VALUES ('2435', '15', '1', '0', '1', '8', '17');
INSERT INTO `payroll_item` VALUES ('2436', '11', '1', '540', '1', '8', '17');
INSERT INTO `payroll_item` VALUES ('2437', '12', '1', '400', '1', '8', '17');
INSERT INTO `payroll_item` VALUES ('2438', '7', '1', '10000', '1', '9', '17');
INSERT INTO `payroll_item` VALUES ('2439', '3', '5', '1500', '1', '9', '17');
INSERT INTO `payroll_item` VALUES ('2440', '9', '1', '1113.3', '1', '9', '17');
INSERT INTO `payroll_item` VALUES ('2441', '10', '1', '1162', '1', '9', '17');
INSERT INTO `payroll_item` VALUES ('2442', '16', '1', '0', '1', '9', '17');
INSERT INTO `payroll_item` VALUES ('2443', '15', '1', '0', '1', '9', '17');
INSERT INTO `payroll_item` VALUES ('2444', '11', '1', '690', '1', '9', '17');
INSERT INTO `payroll_item` VALUES ('2445', '12', '1', '400', '1', '9', '17');
INSERT INTO `payroll_item` VALUES ('2446', '7', '1', '16500', '1', '10', '17');
INSERT INTO `payroll_item` VALUES ('2447', '3', '5', '2475', '1', '10', '17');
INSERT INTO `payroll_item` VALUES ('2448', '9', '1', '2176.05', '1', '10', '17');
INSERT INTO `payroll_item` VALUES ('2449', '10', '1', '1162', '1', '10', '17');
INSERT INTO `payroll_item` VALUES ('2450', '16', '1', '0', '1', '10', '17');
INSERT INTO `payroll_item` VALUES ('2451', '15', '1', '0', '1', '10', '17');
INSERT INTO `payroll_item` VALUES ('2452', '11', '1', '1080', '1', '10', '17');
INSERT INTO `payroll_item` VALUES ('2453', '12', '1', '600', '1', '10', '17');
INSERT INTO `payroll_item` VALUES ('2454', '7', '1', '16500', '1', '11', '17');
INSERT INTO `payroll_item` VALUES ('2455', '3', '5', '2475', '1', '11', '17');
INSERT INTO `payroll_item` VALUES ('2456', '9', '1', '2176.05', '1', '11', '17');
INSERT INTO `payroll_item` VALUES ('2457', '10', '1', '1162', '1', '11', '17');
INSERT INTO `payroll_item` VALUES ('2458', '16', '1', '0', '1', '11', '17');
INSERT INTO `payroll_item` VALUES ('2459', '15', '1', '0', '1', '11', '17');
INSERT INTO `payroll_item` VALUES ('2460', '11', '1', '1080', '1', '11', '17');
INSERT INTO `payroll_item` VALUES ('2461', '12', '1', '600', '1', '11', '17');
INSERT INTO `payroll_item` VALUES ('2462', '7', '1', '22000', '1', '12', '17');
INSERT INTO `payroll_item` VALUES ('2463', '3', '5', '3300', '1', '12', '17');
INSERT INTO `payroll_item` VALUES ('2464', '9', '1', '3348.85', '1', '12', '17');
INSERT INTO `payroll_item` VALUES ('2465', '10', '1', '1162', '1', '12', '17');
INSERT INTO `payroll_item` VALUES ('2466', '16', '1', '0', '1', '12', '17');
INSERT INTO `payroll_item` VALUES ('2467', '15', '1', '0', '1', '12', '17');
INSERT INTO `payroll_item` VALUES ('2468', '11', '1', '1080', '1', '12', '17');
INSERT INTO `payroll_item` VALUES ('2469', '12', '1', '850', '1', '12', '17');
INSERT INTO `payroll_item` VALUES ('2470', '7', '1', '27000', '1', '13', '17');
INSERT INTO `payroll_item` VALUES ('2471', '3', '5', '4050', '1', '13', '17');
INSERT INTO `payroll_item` VALUES ('2472', '3', '6', '1000', '1', '13', '17');
INSERT INTO `payroll_item` VALUES ('2473', '9', '1', '4781.65', '1', '13', '17');
INSERT INTO `payroll_item` VALUES ('2474', '10', '1', '1162', '1', '13', '17');
INSERT INTO `payroll_item` VALUES ('2475', '16', '1', '0', '1', '13', '17');
INSERT INTO `payroll_item` VALUES ('2476', '15', '1', '0', '1', '13', '17');
INSERT INTO `payroll_item` VALUES ('2477', '11', '1', '1080', '1', '13', '17');
INSERT INTO `payroll_item` VALUES ('2478', '12', '1', '900', '1', '13', '17');
INSERT INTO `payroll_item` VALUES ('2479', '7', '1', '18000', '1', '14', '17');
INSERT INTO `payroll_item` VALUES ('2480', '3', '5', '2700', '1', '14', '17');
INSERT INTO `payroll_item` VALUES ('2481', '9', '1', '2434.8', '1', '14', '17');
INSERT INTO `payroll_item` VALUES ('2482', '10', '1', '1162', '1', '14', '17');
INSERT INTO `payroll_item` VALUES ('2483', '16', '1', '0', '1', '14', '17');
INSERT INTO `payroll_item` VALUES ('2484', '15', '1', '0', '1', '14', '17');
INSERT INTO `payroll_item` VALUES ('2485', '11', '1', '1080', '1', '14', '17');
INSERT INTO `payroll_item` VALUES ('2486', '12', '1', '750', '1', '14', '17');
INSERT INTO `payroll_item` VALUES ('2487', '7', '1', '10000', '1', '15', '17');
INSERT INTO `payroll_item` VALUES ('2488', '3', '5', '1500', '1', '15', '17');
INSERT INTO `payroll_item` VALUES ('2489', '9', '1', '1113.3', '1', '15', '17');
INSERT INTO `payroll_item` VALUES ('2490', '10', '1', '1162', '1', '15', '17');
INSERT INTO `payroll_item` VALUES ('2491', '16', '1', '0', '1', '15', '17');
INSERT INTO `payroll_item` VALUES ('2492', '15', '1', '0', '1', '15', '17');
INSERT INTO `payroll_item` VALUES ('2493', '11', '1', '690', '1', '15', '17');
INSERT INTO `payroll_item` VALUES ('2494', '12', '1', '400', '1', '15', '17');
INSERT INTO `payroll_item` VALUES ('2495', '7', '1', '14000', '1', '16', '17');
INSERT INTO `payroll_item` VALUES ('2496', '3', '5', '2100', '1', '16', '17');
INSERT INTO `payroll_item` VALUES ('2497', '9', '1', '1761.9', '1', '16', '17');
INSERT INTO `payroll_item` VALUES ('2498', '10', '1', '1162', '1', '16', '17');
INSERT INTO `payroll_item` VALUES ('2499', '16', '1', '0', '1', '16', '17');
INSERT INTO `payroll_item` VALUES ('2500', '15', '1', '0', '1', '16', '17');
INSERT INTO `payroll_item` VALUES ('2501', '11', '1', '966', '1', '16', '17');
INSERT INTO `payroll_item` VALUES ('2502', '12', '1', '600', '1', '16', '17');
INSERT INTO `payroll_item` VALUES ('2503', '7', '1', '5436', '1', '17', '17');
INSERT INTO `payroll_item` VALUES ('2504', '3', '5', '814', '1', '17', '17');
INSERT INTO `payroll_item` VALUES ('2505', '9', '1', '0', '1', '17', '17');
INSERT INTO `payroll_item` VALUES ('2506', '10', '1', '1162', '1', '17', '17');
INSERT INTO `payroll_item` VALUES ('2507', '16', '1', '0', '1', '17', '17');
INSERT INTO `payroll_item` VALUES ('2508', '15', '1', '0', '1', '17', '17');
INSERT INTO `payroll_item` VALUES ('2509', '11', '1', '375', '1', '17', '17');
INSERT INTO `payroll_item` VALUES ('2510', '12', '1', '300', '1', '17', '17');
INSERT INTO `payroll_item` VALUES ('2511', '7', '1', '25000', '1', '19', '17');
INSERT INTO `payroll_item` VALUES ('2512', '3', '5', '3750', '1', '19', '17');
INSERT INTO `payroll_item` VALUES ('2513', '9', '1', '4038.85', '1', '19', '17');
INSERT INTO `payroll_item` VALUES ('2514', '10', '1', '1162', '1', '19', '17');
INSERT INTO `payroll_item` VALUES ('2515', '16', '1', '0', '1', '19', '17');
INSERT INTO `payroll_item` VALUES ('2516', '15', '1', '0', '1', '19', '17');
INSERT INTO `payroll_item` VALUES ('2517', '11', '1', '1080', '1', '19', '17');
INSERT INTO `payroll_item` VALUES ('2518', '12', '1', '850', '1', '19', '17');
INSERT INTO `payroll_item` VALUES ('2519', '7', '1', '25000', '1', '20', '17');
INSERT INTO `payroll_item` VALUES ('2520', '3', '5', '3750', '1', '20', '17');
INSERT INTO `payroll_item` VALUES ('2521', '9', '1', '4038.85', '1', '20', '17');
INSERT INTO `payroll_item` VALUES ('2522', '10', '1', '1162', '1', '20', '17');
INSERT INTO `payroll_item` VALUES ('2523', '16', '1', '0', '1', '20', '17');
INSERT INTO `payroll_item` VALUES ('2524', '15', '1', '0', '1', '20', '17');
INSERT INTO `payroll_item` VALUES ('2525', '11', '1', '1080', '1', '20', '17');
INSERT INTO `payroll_item` VALUES ('2526', '12', '1', '850', '1', '20', '17');
INSERT INTO `payroll_item` VALUES ('2527', '7', '1', '25000', '1', '21', '17');
INSERT INTO `payroll_item` VALUES ('2528', '3', '5', '3750', '1', '21', '17');
INSERT INTO `payroll_item` VALUES ('2529', '9', '1', '4038.85', '1', '21', '17');
INSERT INTO `payroll_item` VALUES ('2530', '10', '1', '1162', '1', '21', '17');
INSERT INTO `payroll_item` VALUES ('2531', '16', '1', '0', '1', '21', '17');
INSERT INTO `payroll_item` VALUES ('2532', '15', '1', '0', '1', '21', '17');
INSERT INTO `payroll_item` VALUES ('2533', '11', '1', '1080', '1', '21', '17');
INSERT INTO `payroll_item` VALUES ('2534', '12', '1', '850', '1', '21', '17');
INSERT INTO `payroll_item` VALUES ('2535', '7', '1', '21000', '1', '40', '17');
INSERT INTO `payroll_item` VALUES ('2536', '3', '5', '3150', '1', '40', '17');
INSERT INTO `payroll_item` VALUES ('2537', '9', '1', '3118.85', '1', '40', '17');
INSERT INTO `payroll_item` VALUES ('2538', '10', '1', '1162', '1', '40', '17');
INSERT INTO `payroll_item` VALUES ('2539', '16', '1', '0', '1', '40', '17');
INSERT INTO `payroll_item` VALUES ('2540', '15', '1', '0', '1', '40', '17');
INSERT INTO `payroll_item` VALUES ('2541', '11', '1', '1080', '1', '40', '17');
INSERT INTO `payroll_item` VALUES ('2542', '12', '1', '750', '1', '40', '17');
INSERT INTO `payroll_item` VALUES ('2543', '7', '1', '35000', '1', '3', '18');
INSERT INTO `payroll_item` VALUES ('2544', '3', '5', '5250', '1', '3', '18');
INSERT INTO `payroll_item` VALUES ('2545', '9', '1', '6845.7', '1', '3', '18');
INSERT INTO `payroll_item` VALUES ('2546', '10', '1', '1162', '1', '3', '18');
INSERT INTO `payroll_item` VALUES ('2547', '16', '1', '0', '1', '3', '18');
INSERT INTO `payroll_item` VALUES ('2548', '15', '1', '0', '1', '3', '18');
INSERT INTO `payroll_item` VALUES ('2549', '11', '1', '1080', '1', '3', '18');
INSERT INTO `payroll_item` VALUES ('2550', '12', '1', '1000', '1', '3', '18');
INSERT INTO `payroll_item` VALUES ('2551', '7', '1', '20000', '1', '4', '18');
INSERT INTO `payroll_item` VALUES ('2552', '3', '5', '3000', '1', '4', '18');
INSERT INTO `payroll_item` VALUES ('2553', '9', '1', '2888.85', '1', '4', '18');
INSERT INTO `payroll_item` VALUES ('2554', '10', '1', '1162', '1', '4', '18');
INSERT INTO `payroll_item` VALUES ('2555', '16', '1', '0', '1', '4', '18');
INSERT INTO `payroll_item` VALUES ('2556', '15', '1', '0', '1', '4', '18');
INSERT INTO `payroll_item` VALUES ('2557', '11', '1', '1080', '1', '4', '18');
INSERT INTO `payroll_item` VALUES ('2558', '12', '1', '750', '1', '4', '18');
INSERT INTO `payroll_item` VALUES ('2559', '7', '1', '20000', '1', '5', '18');
INSERT INTO `payroll_item` VALUES ('2560', '3', '5', '3000', '1', '5', '18');
INSERT INTO `payroll_item` VALUES ('2561', '9', '1', '2888.85', '1', '5', '18');
INSERT INTO `payroll_item` VALUES ('2562', '10', '1', '1162', '1', '5', '18');
INSERT INTO `payroll_item` VALUES ('2563', '16', '1', '0', '1', '5', '18');
INSERT INTO `payroll_item` VALUES ('2564', '15', '1', '0', '1', '5', '18');
INSERT INTO `payroll_item` VALUES ('2565', '11', '1', '1080', '1', '5', '18');
INSERT INTO `payroll_item` VALUES ('2566', '12', '1', '750', '1', '5', '18');
INSERT INTO `payroll_item` VALUES ('2567', '7', '1', '25000', '1', '6', '18');
INSERT INTO `payroll_item` VALUES ('2568', '3', '5', '3750', '1', '6', '18');
INSERT INTO `payroll_item` VALUES ('2569', '9', '1', '4038.85', '1', '6', '18');
INSERT INTO `payroll_item` VALUES ('2570', '10', '1', '1162', '1', '6', '18');
INSERT INTO `payroll_item` VALUES ('2571', '16', '1', '0', '1', '6', '18');
INSERT INTO `payroll_item` VALUES ('2572', '15', '1', '0', '1', '6', '18');
INSERT INTO `payroll_item` VALUES ('2573', '11', '1', '1080', '1', '6', '18');
INSERT INTO `payroll_item` VALUES ('2574', '12', '1', '850', '1', '6', '18');
INSERT INTO `payroll_item` VALUES ('2575', '7', '1', '27500', '1', '7', '18');
INSERT INTO `payroll_item` VALUES ('2576', '3', '5', '4125', '1', '7', '18');
INSERT INTO `payroll_item` VALUES ('2577', '9', '1', '4675.4', '1', '7', '18');
INSERT INTO `payroll_item` VALUES ('2578', '10', '1', '1162', '1', '7', '18');
INSERT INTO `payroll_item` VALUES ('2579', '16', '1', '0', '1', '7', '18');
INSERT INTO `payroll_item` VALUES ('2580', '15', '1', '0', '1', '7', '18');
INSERT INTO `payroll_item` VALUES ('2581', '11', '1', '1080', '1', '7', '18');
INSERT INTO `payroll_item` VALUES ('2582', '12', '1', '900', '1', '7', '18');
INSERT INTO `payroll_item` VALUES ('2583', '7', '1', '8609', '1', '8', '18');
INSERT INTO `payroll_item` VALUES ('2584', '3', '5', '1291', '1', '8', '18');
INSERT INTO `payroll_item` VALUES ('2585', '9', '1', '0', '1', '8', '18');
INSERT INTO `payroll_item` VALUES ('2586', '10', '1', '1162', '1', '8', '18');
INSERT INTO `payroll_item` VALUES ('2587', '16', '1', '0', '1', '8', '18');
INSERT INTO `payroll_item` VALUES ('2588', '15', '1', '0', '1', '8', '18');
INSERT INTO `payroll_item` VALUES ('2589', '11', '1', '594', '1', '8', '18');
INSERT INTO `payroll_item` VALUES ('2590', '12', '1', '400', '1', '8', '18');
INSERT INTO `payroll_item` VALUES ('2591', '7', '1', '10000', '1', '9', '18');
INSERT INTO `payroll_item` VALUES ('2592', '3', '5', '1500', '1', '9', '18');
INSERT INTO `payroll_item` VALUES ('2593', '9', '1', '1113.3', '1', '9', '18');
INSERT INTO `payroll_item` VALUES ('2594', '10', '1', '1162', '1', '9', '18');
INSERT INTO `payroll_item` VALUES ('2595', '16', '1', '0', '1', '9', '18');
INSERT INTO `payroll_item` VALUES ('2596', '15', '1', '0', '1', '9', '18');
INSERT INTO `payroll_item` VALUES ('2597', '11', '1', '690', '1', '9', '18');
INSERT INTO `payroll_item` VALUES ('2598', '12', '1', '400', '1', '9', '18');
INSERT INTO `payroll_item` VALUES ('2599', '7', '1', '16500', '1', '10', '18');
INSERT INTO `payroll_item` VALUES ('2600', '3', '5', '2475', '1', '10', '18');
INSERT INTO `payroll_item` VALUES ('2601', '9', '1', '2176.05', '1', '10', '18');
INSERT INTO `payroll_item` VALUES ('2602', '10', '1', '1162', '1', '10', '18');
INSERT INTO `payroll_item` VALUES ('2603', '16', '1', '0', '1', '10', '18');
INSERT INTO `payroll_item` VALUES ('2604', '15', '1', '0', '1', '10', '18');
INSERT INTO `payroll_item` VALUES ('2605', '11', '1', '1080', '1', '10', '18');
INSERT INTO `payroll_item` VALUES ('2606', '12', '1', '600', '1', '10', '18');
INSERT INTO `payroll_item` VALUES ('2607', '7', '1', '16500', '1', '11', '18');
INSERT INTO `payroll_item` VALUES ('2608', '3', '5', '2475', '1', '11', '18');
INSERT INTO `payroll_item` VALUES ('2609', '9', '1', '2176.05', '1', '11', '18');
INSERT INTO `payroll_item` VALUES ('2610', '10', '1', '1162', '1', '11', '18');
INSERT INTO `payroll_item` VALUES ('2611', '16', '1', '0', '1', '11', '18');
INSERT INTO `payroll_item` VALUES ('2612', '15', '1', '0', '1', '11', '18');
INSERT INTO `payroll_item` VALUES ('2613', '11', '1', '1080', '1', '11', '18');
INSERT INTO `payroll_item` VALUES ('2614', '12', '1', '600', '1', '11', '18');
INSERT INTO `payroll_item` VALUES ('2615', '7', '1', '22000', '1', '12', '18');
INSERT INTO `payroll_item` VALUES ('2616', '3', '5', '3300', '1', '12', '18');
INSERT INTO `payroll_item` VALUES ('2617', '9', '1', '3348.85', '1', '12', '18');
INSERT INTO `payroll_item` VALUES ('2618', '10', '1', '1162', '1', '12', '18');
INSERT INTO `payroll_item` VALUES ('2619', '16', '1', '0', '1', '12', '18');
INSERT INTO `payroll_item` VALUES ('2620', '15', '1', '0', '1', '12', '18');
INSERT INTO `payroll_item` VALUES ('2621', '11', '1', '1080', '1', '12', '18');
INSERT INTO `payroll_item` VALUES ('2622', '12', '1', '850', '1', '12', '18');
INSERT INTO `payroll_item` VALUES ('2623', '7', '1', '27000', '1', '13', '18');
INSERT INTO `payroll_item` VALUES ('2624', '3', '5', '4050', '1', '13', '18');
INSERT INTO `payroll_item` VALUES ('2625', '3', '6', '1000', '1', '13', '18');
INSERT INTO `payroll_item` VALUES ('2626', '9', '1', '4781.65', '1', '13', '18');
INSERT INTO `payroll_item` VALUES ('2627', '10', '1', '1162', '1', '13', '18');
INSERT INTO `payroll_item` VALUES ('2628', '16', '1', '0', '1', '13', '18');
INSERT INTO `payroll_item` VALUES ('2629', '15', '1', '0', '1', '13', '18');
INSERT INTO `payroll_item` VALUES ('2630', '11', '1', '1080', '1', '13', '18');
INSERT INTO `payroll_item` VALUES ('2631', '12', '1', '900', '1', '13', '18');
INSERT INTO `payroll_item` VALUES ('2632', '7', '1', '18000', '1', '14', '18');
INSERT INTO `payroll_item` VALUES ('2633', '3', '5', '2700', '1', '14', '18');
INSERT INTO `payroll_item` VALUES ('2634', '9', '1', '2434.8', '1', '14', '18');
INSERT INTO `payroll_item` VALUES ('2635', '10', '1', '1162', '1', '14', '18');
INSERT INTO `payroll_item` VALUES ('2636', '16', '1', '0', '1', '14', '18');
INSERT INTO `payroll_item` VALUES ('2637', '15', '1', '0', '1', '14', '18');
INSERT INTO `payroll_item` VALUES ('2638', '11', '1', '1080', '1', '14', '18');
INSERT INTO `payroll_item` VALUES ('2639', '12', '1', '750', '1', '14', '18');
INSERT INTO `payroll_item` VALUES ('2640', '7', '1', '10000', '1', '15', '18');
INSERT INTO `payroll_item` VALUES ('2641', '3', '5', '1500', '1', '15', '18');
INSERT INTO `payroll_item` VALUES ('2642', '9', '1', '1113.3', '1', '15', '18');
INSERT INTO `payroll_item` VALUES ('2643', '10', '1', '1162', '1', '15', '18');
INSERT INTO `payroll_item` VALUES ('2644', '16', '1', '0', '1', '15', '18');
INSERT INTO `payroll_item` VALUES ('2645', '15', '1', '0', '1', '15', '18');
INSERT INTO `payroll_item` VALUES ('2646', '11', '1', '690', '1', '15', '18');
INSERT INTO `payroll_item` VALUES ('2647', '12', '1', '400', '1', '15', '18');
INSERT INTO `payroll_item` VALUES ('2648', '7', '1', '14000', '1', '16', '18');
INSERT INTO `payroll_item` VALUES ('2649', '3', '5', '2100', '1', '16', '18');
INSERT INTO `payroll_item` VALUES ('2650', '9', '1', '1761.9', '1', '16', '18');
INSERT INTO `payroll_item` VALUES ('2651', '10', '1', '1162', '1', '16', '18');
INSERT INTO `payroll_item` VALUES ('2652', '16', '1', '0', '1', '16', '18');
INSERT INTO `payroll_item` VALUES ('2653', '15', '1', '0', '1', '16', '18');
INSERT INTO `payroll_item` VALUES ('2654', '11', '1', '966', '1', '16', '18');
INSERT INTO `payroll_item` VALUES ('2655', '12', '1', '600', '1', '16', '18');
INSERT INTO `payroll_item` VALUES ('2656', '7', '1', '5436', '1', '17', '18');
INSERT INTO `payroll_item` VALUES ('2657', '3', '5', '814', '1', '17', '18');
INSERT INTO `payroll_item` VALUES ('2658', '9', '1', '0', '1', '17', '18');
INSERT INTO `payroll_item` VALUES ('2659', '10', '1', '1162', '1', '17', '18');
INSERT INTO `payroll_item` VALUES ('2660', '16', '1', '0', '1', '17', '18');
INSERT INTO `payroll_item` VALUES ('2661', '15', '1', '0', '1', '17', '18');
INSERT INTO `payroll_item` VALUES ('2662', '11', '1', '375', '1', '17', '18');
INSERT INTO `payroll_item` VALUES ('2663', '12', '1', '300', '1', '17', '18');
INSERT INTO `payroll_item` VALUES ('2664', '7', '1', '25000', '1', '19', '18');
INSERT INTO `payroll_item` VALUES ('2665', '3', '5', '3750', '1', '19', '18');
INSERT INTO `payroll_item` VALUES ('2666', '9', '1', '4038.85', '1', '19', '18');
INSERT INTO `payroll_item` VALUES ('2667', '10', '1', '1162', '1', '19', '18');
INSERT INTO `payroll_item` VALUES ('2668', '16', '1', '0', '1', '19', '18');
INSERT INTO `payroll_item` VALUES ('2669', '15', '1', '0', '1', '19', '18');
INSERT INTO `payroll_item` VALUES ('2670', '11', '1', '1080', '1', '19', '18');
INSERT INTO `payroll_item` VALUES ('2671', '12', '1', '850', '1', '19', '18');
INSERT INTO `payroll_item` VALUES ('2672', '7', '1', '25000', '1', '20', '18');
INSERT INTO `payroll_item` VALUES ('2673', '3', '5', '3750', '1', '20', '18');
INSERT INTO `payroll_item` VALUES ('2674', '9', '1', '4038.85', '1', '20', '18');
INSERT INTO `payroll_item` VALUES ('2675', '10', '1', '1162', '1', '20', '18');
INSERT INTO `payroll_item` VALUES ('2676', '16', '1', '0', '1', '20', '18');
INSERT INTO `payroll_item` VALUES ('2677', '15', '1', '0', '1', '20', '18');
INSERT INTO `payroll_item` VALUES ('2678', '11', '1', '1080', '1', '20', '18');
INSERT INTO `payroll_item` VALUES ('2679', '12', '1', '850', '1', '20', '18');
INSERT INTO `payroll_item` VALUES ('2680', '7', '1', '25000', '1', '21', '18');
INSERT INTO `payroll_item` VALUES ('2681', '3', '5', '3750', '1', '21', '18');
INSERT INTO `payroll_item` VALUES ('2682', '9', '1', '4038.85', '1', '21', '18');
INSERT INTO `payroll_item` VALUES ('2683', '10', '1', '1162', '1', '21', '18');
INSERT INTO `payroll_item` VALUES ('2684', '16', '1', '0', '1', '21', '18');
INSERT INTO `payroll_item` VALUES ('2685', '15', '1', '0', '1', '21', '18');
INSERT INTO `payroll_item` VALUES ('2686', '11', '1', '1080', '1', '21', '18');
INSERT INTO `payroll_item` VALUES ('2687', '12', '1', '850', '1', '21', '18');
INSERT INTO `payroll_item` VALUES ('2688', '7', '1', '21000', '1', '40', '18');
INSERT INTO `payroll_item` VALUES ('2689', '3', '5', '3150', '1', '40', '18');
INSERT INTO `payroll_item` VALUES ('2690', '9', '1', '3118.85', '1', '40', '18');
INSERT INTO `payroll_item` VALUES ('2691', '10', '1', '1162', '1', '40', '18');
INSERT INTO `payroll_item` VALUES ('2692', '16', '1', '0', '1', '40', '18');
INSERT INTO `payroll_item` VALUES ('2693', '15', '1', '0', '1', '40', '18');
INSERT INTO `payroll_item` VALUES ('2694', '11', '1', '1080', '1', '40', '18');
INSERT INTO `payroll_item` VALUES ('2695', '12', '1', '750', '1', '40', '18');

-- ----------------------------
-- Table structure for `personnel`
-- ----------------------------
DROP TABLE IF EXISTS `personnel`;
CREATE TABLE `personnel` (
  `personnel_id` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_onames` varchar(45) DEFAULT NULL,
  `personnel_fname` varchar(20) NOT NULL,
  `personnel_dob` date DEFAULT NULL,
  `personnel_email` varchar(45) DEFAULT NULL,
  `personnel_phone` varchar(45) DEFAULT NULL,
  `personnel_address` varchar(45) DEFAULT NULL,
  `personnel_locality` varchar(45) DEFAULT NULL,
  `civilstatus_id` int(11) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `personnel_username` varchar(45) DEFAULT NULL,
  `personnel_password` varchar(45) DEFAULT 'e10adc3949ba59abbe56e057f20f883e',
  `personnel_kin_fname` varchar(45) DEFAULT NULL,
  `personnel_kin_onames` varchar(45) DEFAULT NULL,
  `personnel_kin_contact` varchar(45) DEFAULT NULL,
  `personnel_kin_address` varchar(45) DEFAULT NULL,
  `kin_relationship_id` int(11) DEFAULT NULL,
  `personnel_status` tinyint(1) NOT NULL DEFAULT '1',
  `job_title_id` int(11) NOT NULL,
  `personnel_surname` varchar(20) NOT NULL,
  `personnel_staff_id` varchar(20) NOT NULL,
  `authorise` int(11) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `personnel_number` varchar(100) DEFAULT NULL,
  `personnel_post_code` varchar(10) DEFAULT NULL,
  `personnel_city` varchar(30) DEFAULT NULL,
  `personnel_account_status` tinyint(1) NOT NULL DEFAULT '1',
  `branch_id` int(11) DEFAULT NULL,
  `authorize_invoice_changes` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`personnel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel
-- ----------------------------
INSERT INTO `personnel` VALUES ('1', 'Tarus', 'Martin', '0000-00-00', '', '', '', '', '1', '1', '1', 'mtarus', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '1', '0', '', '', '0', '2015-09-20 07:09:48', null, null, null, '2015-09-20 08:09:48', '', '', '', '1', '2', '0');
INSERT INTO `personnel` VALUES ('2', 'Mahasi Masitsa', 'Alvaro', '0000-00-00', '', '', '', '', '1', '1', '1', 'alvaro', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '1', '0', '', '', '0', '2015-09-20 08:04:09', null, null, null, '2015-09-20 09:04:09', '', '', '', '1', '3', '1');

-- ----------------------------
-- Table structure for `personnel_allowance`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_allowance`;
CREATE TABLE `personnel_allowance` (
  `personnel_allowance_id` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_id` int(11) DEFAULT NULL,
  `allowance_id` int(11) DEFAULT NULL,
  `personnel_allowance_amount` double NOT NULL,
  `personnel_allowance_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `personnel_allowance_status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`personnel_allowance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_allowance
-- ----------------------------
INSERT INTO `personnel_allowance` VALUES ('5', '3', '5', '5250', '2015-09-23 13:34:30', '1');
INSERT INTO `personnel_allowance` VALUES ('6', '4', '5', '3000', '2015-09-23 13:35:33', '1');
INSERT INTO `personnel_allowance` VALUES ('8', '6', '5', '3750', '2015-09-23 13:37:13', '1');
INSERT INTO `personnel_allowance` VALUES ('9', '14', '5', '2700', '2015-09-23 13:38:00', '1');
INSERT INTO `personnel_allowance` VALUES ('12', '5', '5', '3000', '2015-09-23 13:41:38', '1');
INSERT INTO `personnel_allowance` VALUES ('14', '15', '5', '1500', '2015-09-23 13:42:49', '1');
INSERT INTO `personnel_allowance` VALUES ('16', '19', '5', '3750', '2015-09-23 13:48:55', '1');
INSERT INTO `personnel_allowance` VALUES ('17', '21', '5', '3750', '2015-09-23 13:49:27', '1');
INSERT INTO `personnel_allowance` VALUES ('18', '20', '5', '3750', '2015-09-23 13:50:06', '1');
INSERT INTO `personnel_allowance` VALUES ('19', '16', '5', '2100', '2015-09-23 14:06:33', '1');
INSERT INTO `personnel_allowance` VALUES ('20', '17', '5', '814', '2015-09-23 14:21:28', '1');
INSERT INTO `personnel_allowance` VALUES ('21', '23', '5', '1500', '2015-09-23 18:42:30', '1');
INSERT INTO `personnel_allowance` VALUES ('23', '35', '5', '3000', '2015-09-25 16:31:44', '1');
INSERT INTO `personnel_allowance` VALUES ('25', '9', '5', '1500', '2015-09-25 16:39:38', '1');
INSERT INTO `personnel_allowance` VALUES ('27', '40', '5', '3150', '2015-09-30 13:40:36', '1');
INSERT INTO `personnel_allowance` VALUES ('28', '13', '5', '4050', '2015-09-30 13:41:35', '1');
INSERT INTO `personnel_allowance` VALUES ('29', '13', '6', '1000', '2015-09-30 13:41:35', '1');
INSERT INTO `personnel_allowance` VALUES ('31', '10', '5', '2475', '2015-10-28 12:37:20', '1');
INSERT INTO `personnel_allowance` VALUES ('32', '12', '5', '3300', '2015-10-28 12:38:51', '1');
INSERT INTO `personnel_allowance` VALUES ('33', '7', '5', '4125', '2015-10-28 12:40:12', '1');
INSERT INTO `personnel_allowance` VALUES ('34', '11', '5', '2475', '2015-10-28 12:41:31', '1');
INSERT INTO `personnel_allowance` VALUES ('35', '8', '5', '1291', '2015-10-28 12:52:18', '1');

-- ----------------------------
-- Table structure for `personnel_approval`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_approval`;
CREATE TABLE `personnel_approval` (
  `personnel_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval_status_id` int(11) NOT NULL,
  `personnel_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`personnel_approval_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_approval
-- ----------------------------

-- ----------------------------
-- Table structure for `personnel_benefit`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_benefit`;
CREATE TABLE `personnel_benefit` (
  `personnel_benefit_id` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_id` int(11) DEFAULT NULL,
  `benefit_id` int(11) DEFAULT NULL,
  `personnel_benefit_amount` double NOT NULL,
  `personnel_benefit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `personnel_benefit_status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`personnel_benefit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_benefit
-- ----------------------------

-- ----------------------------
-- Table structure for `personnel_deduction`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_deduction`;
CREATE TABLE `personnel_deduction` (
  `personnel_deduction_id` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_id` int(11) DEFAULT NULL,
  `deduction_id` int(11) DEFAULT NULL,
  `personnel_deduction_amount` double NOT NULL,
  `personnel_deduction_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `personnel_deduction_status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`personnel_deduction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_deduction
-- ----------------------------
INSERT INTO `personnel_deduction` VALUES ('1', '35', '3', '300', '2015-09-25 16:31:01', '1');

-- ----------------------------
-- Table structure for `personnel_department`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_department`;
CREATE TABLE `personnel_department` (
  `personnel_department_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `personnel_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`personnel_department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_department
-- ----------------------------

-- ----------------------------
-- Table structure for `personnel_dependant`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_dependant`;
CREATE TABLE `personnel_dependant` (
  `personnel_dependant_id` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_dependant_onames` varchar(45) DEFAULT NULL,
  `personnel_dependant_fname` varchar(20) NOT NULL,
  `personnel_dependant_email` varchar(45) DEFAULT NULL,
  `personnel_dependant_phone` varchar(45) DEFAULT NULL,
  `personnel_dependant_locality` varchar(45) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `relationship_id` int(11) DEFAULT NULL,
  `personnel_dependant_status` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `personnel_id` int(11) NOT NULL,
  PRIMARY KEY (`personnel_dependant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_dependant
-- ----------------------------

-- ----------------------------
-- Table structure for `personnel_emergency`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_emergency`;
CREATE TABLE `personnel_emergency` (
  `personnel_emergency_id` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_emergency_onames` varchar(45) DEFAULT NULL,
  `personnel_emergency_fname` varchar(20) NOT NULL,
  `personnel_emergency_email` varchar(45) DEFAULT NULL,
  `personnel_emergency_phone` varchar(45) DEFAULT NULL,
  `personnel_emergency_locality` varchar(45) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `relationship_id` int(11) DEFAULT NULL,
  `personnel_emergency_status` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `personnel_id` int(11) NOT NULL,
  PRIMARY KEY (`personnel_emergency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_emergency
-- ----------------------------

-- ----------------------------
-- Table structure for `personnel_job`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_job`;
CREATE TABLE `personnel_job` (
  `personnel_job_id` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_id` int(11) NOT NULL,
  `job_title_id` int(11) NOT NULL,
  `personnel_job_status` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `job_commencement_date` date DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`personnel_job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_job
-- ----------------------------
INSERT INTO `personnel_job` VALUES ('1', '22', '12', '1', '2015-09-23 10:44:28', '2015-09-23 11:44:04', '0', '0', '2015-09-23', '7');
INSERT INTO `personnel_job` VALUES ('2', '24', '12', '1', '2015-09-23 15:58:23', '2015-09-23 16:57:59', '3', '3', '2015-09-23', '7');
INSERT INTO `personnel_job` VALUES ('3', '25', '12', '1', '2015-09-24 10:12:50', '2015-09-24 11:12:26', '0', '0', '2015-09-24', '7');
INSERT INTO `personnel_job` VALUES ('4', '26', '12', '1', '2015-09-25 09:22:11', '2015-09-25 10:21:47', '0', '0', '2015-09-25', '2');
INSERT INTO `personnel_job` VALUES ('5', '33', '12', '1', '2015-09-25 10:35:37', '2015-09-25 11:35:13', '0', '0', '0000-00-00', '7');
INSERT INTO `personnel_job` VALUES ('6', '27', '12', '1', '2015-09-25 10:37:00', '2015-09-25 11:36:36', '0', '0', '0000-00-00', '7');
INSERT INTO `personnel_job` VALUES ('7', '28', '12', '1', '2015-09-25 10:37:16', '2015-09-25 11:36:52', '0', '0', '0000-00-00', '7');
INSERT INTO `personnel_job` VALUES ('8', '29', '12', '1', '2015-09-25 10:37:38', '2015-09-25 11:37:14', '0', '0', '0000-00-00', '2');
INSERT INTO `personnel_job` VALUES ('9', '30', '12', '1', '2015-09-25 10:39:57', '2015-09-25 11:39:33', '0', '0', '0000-00-00', '7');
INSERT INTO `personnel_job` VALUES ('10', '31', '12', '1', '2015-09-25 10:40:26', '2015-09-25 11:40:02', '0', '0', '0000-00-00', '7');
INSERT INTO `personnel_job` VALUES ('11', '32', '12', '1', '2015-09-25 10:41:41', '2015-09-25 11:41:17', '0', '0', '0000-00-00', '7');
INSERT INTO `personnel_job` VALUES ('12', '34', '12', '1', '2015-09-25 10:42:46', '2015-09-25 11:42:22', '0', '0', '0000-00-00', '7');
INSERT INTO `personnel_job` VALUES ('13', '38', '12', '1', '2015-09-28 14:35:33', '2015-09-28 15:35:09', '3', '3', '0000-00-00', '7');
INSERT INTO `personnel_job` VALUES ('14', '39', '12', '1', '2015-09-29 08:45:00', '2015-09-29 09:44:36', '0', '0', '2015-09-29', '7');
INSERT INTO `personnel_job` VALUES ('15', '41', '12', '1', '2015-10-01 16:47:03', '2015-10-01 17:46:39', '0', '0', '2015-10-01', '17');
INSERT INTO `personnel_job` VALUES ('16', '42', '12', '1', '2015-10-02 17:29:37', '2015-10-02 18:29:13', '0', '0', '2015-10-02', '7');
INSERT INTO `personnel_job` VALUES ('17', '43', '12', '1', '2015-10-06 14:06:36', '2015-10-06 15:06:12', '0', '0', '2015-10-06', '7');
INSERT INTO `personnel_job` VALUES ('18', '44', '12', '1', '2015-10-07 14:19:27', '2015-10-07 15:19:03', '0', '0', '2015-10-07', '7');
INSERT INTO `personnel_job` VALUES ('20', '46', '12', '1', '2015-10-12 09:10:01', '2015-10-12 10:09:37', '3', '3', '0000-00-00', '7');
INSERT INTO `personnel_job` VALUES ('21', '47', '12', '1', '2015-10-13 09:11:49', '2015-10-13 10:11:25', '3', '3', '0000-00-00', '7');
INSERT INTO `personnel_job` VALUES ('22', '48', '12', '1', '2015-10-17 15:43:47', '2015-10-17 16:43:23', '0', '0', '0000-00-00', '7');
INSERT INTO `personnel_job` VALUES ('23', '50', '12', '1', '2015-10-18 18:18:29', '2015-10-18 19:18:05', '0', '0', '0000-00-00', '7');
INSERT INTO `personnel_job` VALUES ('24', '51', '12', '1', '2015-10-21 10:03:41', '2015-10-21 11:03:17', '3', '3', '2015-10-21', '7');
INSERT INTO `personnel_job` VALUES ('25', '52', '12', '1', '2015-10-21 11:03:40', '2015-10-21 12:03:16', '3', '3', '2015-10-21', '7');
INSERT INTO `personnel_job` VALUES ('26', '53', '12', '1', '2015-10-21 11:41:40', '2015-10-21 12:41:16', '3', '3', '2015-10-21', '7');
INSERT INTO `personnel_job` VALUES ('27', '54', '12', '1', '2015-10-26 17:04:11', '2015-10-26 17:03:47', '3', '3', '2015-10-26', '25');
INSERT INTO `personnel_job` VALUES ('28', '55', '12', '1', '2015-11-02 09:17:54', '2015-11-02 09:17:30', '4', '4', '2015-12-02', '7');
INSERT INTO `personnel_job` VALUES ('29', '56', '12', '1', '2015-11-03 10:04:52', '2015-11-03 10:04:28', '0', '0', '2015-11-03', '7');

-- ----------------------------
-- Table structure for `personnel_other_deduction`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_other_deduction`;
CREATE TABLE `personnel_other_deduction` (
  `personnel_other_deduction_id` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_id` int(11) DEFAULT NULL,
  `other_deduction_id` int(11) DEFAULT NULL,
  `personnel_other_deduction_amount` double NOT NULL,
  `personnel_other_deduction_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `personnel_other_deduction_status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`personnel_other_deduction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_other_deduction
-- ----------------------------

-- ----------------------------
-- Table structure for `personnel_payment`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_payment`;
CREATE TABLE `personnel_payment` (
  `personnel_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `personnel_payment_amount` double NOT NULL,
  `personnel_payment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `personnel_payment_status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`personnel_payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_payment
-- ----------------------------
INSERT INTO `personnel_payment` VALUES ('5', '3', '1', '35000', '2015-09-23 13:34:23', '1');
INSERT INTO `personnel_payment` VALUES ('6', '4', '1', '20000', '2015-09-23 13:35:26', '1');
INSERT INTO `personnel_payment` VALUES ('7', '9', '1', '10000', '2015-09-23 13:36:23', '1');
INSERT INTO `personnel_payment` VALUES ('8', '6', '1', '25000', '2015-09-23 13:37:05', '1');
INSERT INTO `personnel_payment` VALUES ('9', '14', '1', '18000', '2015-09-23 13:37:55', '1');
INSERT INTO `personnel_payment` VALUES ('12', '5', '1', '20000', '2015-09-23 13:41:01', '1');
INSERT INTO `personnel_payment` VALUES ('13', '13', '1', '27000', '2015-09-23 13:42:06', '1');
INSERT INTO `personnel_payment` VALUES ('14', '15', '1', '10000', '2015-09-23 13:42:44', '1');
INSERT INTO `personnel_payment` VALUES ('16', '19', '1', '25000', '2015-09-23 13:48:49', '1');
INSERT INTO `personnel_payment` VALUES ('17', '21', '1', '25000', '2015-09-23 13:49:20', '1');
INSERT INTO `personnel_payment` VALUES ('18', '20', '1', '25000', '2015-09-23 13:49:54', '1');
INSERT INTO `personnel_payment` VALUES ('19', '16', '1', '14000', '2015-09-23 14:06:25', '1');
INSERT INTO `personnel_payment` VALUES ('20', '17', '1', '5436', '2015-09-23 14:21:21', '1');
INSERT INTO `personnel_payment` VALUES ('21', '23', '1', '10000', '2015-09-23 18:41:52', '1');
INSERT INTO `personnel_payment` VALUES ('23', '35', '1', '20000', '2015-09-25 16:31:36', '1');
INSERT INTO `personnel_payment` VALUES ('24', '40', '1', '21000', '2015-09-30 13:26:27', '1');
INSERT INTO `personnel_payment` VALUES ('25', '10', '1', '16500', '2015-10-28 12:37:09', '1');
INSERT INTO `personnel_payment` VALUES ('26', '12', '1', '22000', '2015-10-28 12:38:32', '1');
INSERT INTO `personnel_payment` VALUES ('27', '7', '1', '27500', '2015-10-28 12:39:55', '1');
INSERT INTO `personnel_payment` VALUES ('28', '11', '1', '16500', '2015-10-28 12:41:07', '1');
INSERT INTO `personnel_payment` VALUES ('29', '8', '1', '8609', '2015-10-28 12:51:54', '1');

-- ----------------------------
-- Table structure for `personnel_relief`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_relief`;
CREATE TABLE `personnel_relief` (
  `personnel_relief_id` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_id` int(11) DEFAULT NULL,
  `relief_id` int(11) DEFAULT NULL,
  `personnel_relief_amount` double NOT NULL,
  `personnel_relief_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `personnel_relief_status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`personnel_relief_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_relief
-- ----------------------------

-- ----------------------------
-- Table structure for `personnel_rooms`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_rooms`;
CREATE TABLE `personnel_rooms` (
  `personnel_rooms_id` int(11) NOT NULL AUTO_INCREMENT,
  `rooms_id` int(11) NOT NULL,
  `personnel_id` int(11) NOT NULL,
  PRIMARY KEY (`personnel_rooms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_rooms
-- ----------------------------

-- ----------------------------
-- Table structure for `personnel_savings`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_savings`;
CREATE TABLE `personnel_savings` (
  `personnel_savings_id` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_id` int(11) NOT NULL,
  `savings_id` int(11) NOT NULL,
  `personnel_savings_status` tinyint(1) NOT NULL DEFAULT '1',
  `personnel_savings_amount` double NOT NULL,
  `personnel_savings_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `personnel_savings_opening` float DEFAULT NULL,
  PRIMARY KEY (`personnel_savings_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_savings
-- ----------------------------

-- ----------------------------
-- Table structure for `personnel_scheme`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_scheme`;
CREATE TABLE `personnel_scheme` (
  `personnel_scheme_id` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_id` int(11) NOT NULL,
  `loan_scheme_id` int(11) NOT NULL,
  `personnel_scheme_repayment_sdate` date NOT NULL,
  `personnel_scheme_repayment_edate` date NOT NULL,
  `personnel_scheme_interest` double NOT NULL,
  `personnel_scheme_amount` double NOT NULL,
  `personnel_scheme_status` tinyint(1) NOT NULL DEFAULT '1',
  `personnel_scheme_monthly` int(11) NOT NULL,
  `personnel_scheme_int` int(11) NOT NULL,
  PRIMARY KEY (`personnel_scheme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_scheme
-- ----------------------------

-- ----------------------------
-- Table structure for `personnel_section`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_section`;
CREATE TABLE `personnel_section` (
  `personnel_section_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `personnel_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`personnel_section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_section
-- ----------------------------
INSERT INTO `personnel_section` VALUES ('32', '3', '92', '0', '0', '2015-09-22 23:58:27', '2015-09-23 00:58:03', '0', null, null);
INSERT INTO `personnel_section` VALUES ('35', '3', '19', '0', '0', '2015-09-22 23:59:19', '2015-09-23 00:58:55', '0', null, null);
INSERT INTO `personnel_section` VALUES ('36', '3', '67', '0', '0', '2015-09-22 23:59:29', '2015-09-23 00:59:05', '0', null, null);
INSERT INTO `personnel_section` VALUES ('37', '4', '47', '0', '0', '2015-09-23 00:00:19', '2015-09-23 00:59:55', '0', null, null);
INSERT INTO `personnel_section` VALUES ('43', '21', '49', '3', '3', '2015-09-23 10:09:27', '2015-09-23 11:09:03', '0', null, null);
INSERT INTO `personnel_section` VALUES ('44', '23', '79', '0', '0', '2015-09-23 11:14:22', '2015-09-23 12:13:58', '0', null, null);
INSERT INTO `personnel_section` VALUES ('45', '23', '51', '0', '0', '2015-09-23 11:14:46', '2015-09-23 12:14:22', '0', null, null);
INSERT INTO `personnel_section` VALUES ('47', '4', '69', '0', '0', '2015-09-23 11:40:58', '2015-09-23 12:40:34', '0', null, null);
INSERT INTO `personnel_section` VALUES ('49', '15', '47', '0', '0', '2015-09-24 11:04:00', '2015-09-24 12:03:36', '0', null, null);
INSERT INTO `personnel_section` VALUES ('54', '8', '47', '0', '0', '2015-09-24 11:05:21', '2015-09-24 12:04:57', '0', null, null);
INSERT INTO `personnel_section` VALUES ('59', '12', '49', '0', '0', '2015-09-24 16:24:50', '2015-09-24 17:24:26', '0', null, null);
INSERT INTO `personnel_section` VALUES ('60', '6', '49', '0', '0', '2015-09-24 16:26:13', '2015-09-24 17:25:49', '0', null, null);
INSERT INTO `personnel_section` VALUES ('61', '24', '41', '0', '0', '2015-09-24 16:40:44', '2015-09-24 17:40:20', '0', null, null);
INSERT INTO `personnel_section` VALUES ('62', '13', '49', '0', '0', '2015-09-24 17:58:59', '2015-09-24 18:58:35', '0', null, null);
INSERT INTO `personnel_section` VALUES ('63', '26', '41', '0', '0', '2015-09-25 09:21:55', '2015-09-25 10:21:31', '0', null, null);
INSERT INTO `personnel_section` VALUES ('64', '11', '50', '0', '0', '2015-09-25 09:47:35', '2015-09-25 10:47:11', '0', null, null);
INSERT INTO `personnel_section` VALUES ('65', '27', '41', '0', '0', '2015-09-25 10:29:12', '2015-09-25 11:28:48', '0', null, null);
INSERT INTO `personnel_section` VALUES ('66', '28', '41', '0', '0', '2015-09-25 10:30:39', '2015-09-25 11:30:15', '0', null, null);
INSERT INTO `personnel_section` VALUES ('67', '29', '41', '0', '0', '2015-09-25 10:31:42', '2015-09-25 11:31:18', '0', null, null);
INSERT INTO `personnel_section` VALUES ('68', '30', '41', '0', '0', '2015-09-25 10:32:56', '2015-09-25 11:32:32', '0', null, null);
INSERT INTO `personnel_section` VALUES ('69', '32', '41', '0', '0', '2015-09-25 10:34:10', '2015-09-25 11:33:46', '0', null, null);
INSERT INTO `personnel_section` VALUES ('70', '33', '41', '0', '0', '2015-09-25 10:35:05', '2015-09-25 11:34:41', '0', null, null);
INSERT INTO `personnel_section` VALUES ('71', '31', '41', '0', '0', '2015-09-25 10:41:02', '2015-09-25 11:40:38', '0', null, null);
INSERT INTO `personnel_section` VALUES ('72', '34', '41', '0', '0', '2015-09-25 10:42:36', '2015-09-25 11:42:12', '0', null, null);
INSERT INTO `personnel_section` VALUES ('73', '35', '19', '3', '3', '2015-09-25 15:21:55', '2015-09-25 16:21:31', '0', null, null);
INSERT INTO `personnel_section` VALUES ('74', '35', '25', '3', '3', '2015-09-25 15:22:24', '2015-09-25 16:22:00', '0', null, null);
INSERT INTO `personnel_section` VALUES ('75', '35', '88', '3', '3', '2015-09-25 15:22:38', '2015-09-25 16:22:14', '0', null, null);
INSERT INTO `personnel_section` VALUES ('76', '25', '41', '3', '3', '2015-09-26 09:18:50', '2015-09-26 10:18:26', '0', null, null);
INSERT INTO `personnel_section` VALUES ('77', '22', '41', '0', '0', '2015-09-28 08:34:43', '2015-09-28 09:34:19', '0', null, null);
INSERT INTO `personnel_section` VALUES ('78', '7', '51', '0', '0', '2015-09-28 08:55:45', '2015-09-28 09:55:21', '0', null, null);
INSERT INTO `personnel_section` VALUES ('79', '7', '79', '0', '0', '2015-09-28 08:55:55', '2015-09-28 09:55:31', '0', null, null);
INSERT INTO `personnel_section` VALUES ('80', '36', '49', '0', '0', '2015-09-28 10:19:41', '2015-09-28 11:19:17', '0', null, null);
INSERT INTO `personnel_section` VALUES ('81', '37', '49', '0', '0', '2015-09-28 10:20:41', '2015-09-28 11:20:17', '0', null, null);
INSERT INTO `personnel_section` VALUES ('82', '16', '49', '0', '0', '2015-09-28 11:00:45', '2015-09-28 12:00:21', '0', null, null);
INSERT INTO `personnel_section` VALUES ('83', '10', '50', '0', '0', '2015-09-28 11:11:25', '2015-09-28 12:11:01', '0', null, null);
INSERT INTO `personnel_section` VALUES ('84', '10', '78', '0', '0', '2015-09-28 11:11:34', '2015-09-28 12:11:10', '0', null, null);
INSERT INTO `personnel_section` VALUES ('85', '38', '41', '3', '3', '2015-09-28 14:35:11', '2015-09-28 15:34:47', '0', null, null);
INSERT INTO `personnel_section` VALUES ('86', '9', '49', '0', '0', '2015-09-28 15:55:12', '2015-09-28 16:54:48', '0', null, null);
INSERT INTO `personnel_section` VALUES ('87', '20', '49', '0', '0', '2015-09-28 19:31:50', '2015-09-28 20:31:26', '0', null, null);
INSERT INTO `personnel_section` VALUES ('88', '39', '41', '0', '0', '2015-09-29 08:44:43', '2015-09-29 09:44:19', '0', null, null);
INSERT INTO `personnel_section` VALUES ('89', '15', '45', '0', '0', '2015-09-30 14:05:40', '2015-09-30 15:05:16', '0', null, null);
INSERT INTO `personnel_section` VALUES ('91', '19', '49', '0', '0', '2015-10-01 12:06:57', '2015-10-01 13:06:33', '0', null, null);
INSERT INTO `personnel_section` VALUES ('92', '19', '53', '0', '0', '2015-10-01 12:07:25', '2015-10-01 13:07:01', '0', null, null);
INSERT INTO `personnel_section` VALUES ('93', '19', '54', '0', '0', '2015-10-01 12:07:48', '2015-10-01 13:07:24', '0', null, null);
INSERT INTO `personnel_section` VALUES ('94', '16', '53', '0', '0', '2015-10-01 12:08:28', '2015-10-01 13:08:04', '0', null, null);
INSERT INTO `personnel_section` VALUES ('95', '16', '59', '0', '0', '2015-10-01 12:08:36', '2015-10-01 13:08:12', '0', null, null);
INSERT INTO `personnel_section` VALUES ('99', '41', '41', '0', '0', '2015-10-01 16:46:43', '2015-10-01 17:46:19', '0', null, null);
INSERT INTO `personnel_section` VALUES ('100', '40', '50', '0', '0', '2015-10-02 10:26:54', '2015-10-02 11:26:30', '0', null, null);
INSERT INTO `personnel_section` VALUES ('101', '40', '78', '0', '0', '2015-10-02 10:27:00', '2015-10-02 11:26:36', '0', null, null);
INSERT INTO `personnel_section` VALUES ('102', '42', '41', '0', '0', '2015-10-02 14:25:54', '2015-10-02 15:25:30', '0', null, null);
INSERT INTO `personnel_section` VALUES ('103', '43', '41', '0', '0', '2015-10-06 14:06:22', '2015-10-06 15:05:58', '0', null, null);
INSERT INTO `personnel_section` VALUES ('104', '44', '41', '0', '0', '2015-10-07 14:19:15', '2015-10-07 15:18:51', '0', null, null);
INSERT INTO `personnel_section` VALUES ('106', '45', '110', '3', '3', '2015-10-12 08:54:04', '2015-10-12 09:53:40', '0', null, null);
INSERT INTO `personnel_section` VALUES ('107', '46', '41', '3', '3', '2015-10-12 09:07:34', '2015-10-12 10:07:10', '0', null, null);
INSERT INTO `personnel_section` VALUES ('108', '3', '24', '3', '3', '2015-10-13 08:57:45', '2015-10-13 09:57:21', '0', null, null);
INSERT INTO `personnel_section` VALUES ('109', '3', '127', '3', '3', '2015-10-13 08:57:54', '2015-10-13 09:57:30', '0', null, null);
INSERT INTO `personnel_section` VALUES ('110', '47', '41', '3', '3', '2015-10-13 09:10:51', '2015-10-13 10:10:27', '0', null, null);
INSERT INTO `personnel_section` VALUES ('111', '47', '47', '0', '0', '2015-10-14 12:19:14', '2015-10-14 13:18:50', '0', null, null);
INSERT INTO `personnel_section` VALUES ('112', '48', '41', '0', '0', '2015-10-17 15:43:37', '2015-10-17 16:43:13', '0', null, null);
INSERT INTO `personnel_section` VALUES ('113', '13', '120', '0', '0', '2015-10-18 12:45:50', '2015-10-18 13:45:26', '0', null, null);
INSERT INTO `personnel_section` VALUES ('114', '7', '120', '0', '0', '2015-10-18 12:58:32', '2015-10-18 13:58:08', '0', null, null);
INSERT INTO `personnel_section` VALUES ('116', '4', '70', '0', '0', '2015-10-18 15:12:51', '2015-10-18 16:12:27', '0', null, null);
INSERT INTO `personnel_section` VALUES ('117', '4', '24', '0', '0', '2015-10-18 15:13:36', '2015-10-18 16:13:12', '0', null, null);
INSERT INTO `personnel_section` VALUES ('118', '49', '110', '0', '0', '2015-10-18 17:31:47', '2015-10-18 18:31:23', '0', null, null);
INSERT INTO `personnel_section` VALUES ('119', '50', '92', '0', '0', '2015-10-18 18:17:14', '2015-10-18 19:16:50', '0', null, null);
INSERT INTO `personnel_section` VALUES ('120', '50', '67', '0', '0', '2015-10-18 18:17:25', '2015-10-18 19:17:01', '0', null, null);
INSERT INTO `personnel_section` VALUES ('121', '50', '120', '0', '0', '2015-10-18 18:17:57', '2015-10-18 19:17:33', '0', null, null);
INSERT INTO `personnel_section` VALUES ('122', '50', '127', '0', '0', '2015-10-18 18:21:29', '2015-10-18 19:21:05', '0', null, null);
INSERT INTO `personnel_section` VALUES ('123', '14', '127', '0', '0', '2015-10-18 18:42:27', '2015-10-18 19:42:03', '0', null, null);
INSERT INTO `personnel_section` VALUES ('124', '14', '105', '0', '0', '2015-10-18 18:42:49', '2015-10-18 19:42:25', '0', null, null);
INSERT INTO `personnel_section` VALUES ('126', '51', '41', '3', '3', '2015-10-21 10:02:56', '2015-10-21 11:02:32', '0', null, null);
INSERT INTO `personnel_section` VALUES ('127', '11', '78', '0', '0', '2015-10-21 10:45:28', '2015-10-21 11:45:04', '0', null, null);
INSERT INTO `personnel_section` VALUES ('128', '52', '41', '3', '3', '2015-10-21 11:02:54', '2015-10-21 12:02:30', '0', null, null);
INSERT INTO `personnel_section` VALUES ('129', '53', '41', '3', '3', '2015-10-21 11:41:19', '2015-10-21 12:40:55', '0', null, null);
INSERT INTO `personnel_section` VALUES ('130', '53', '110', '0', '0', '2015-10-21 14:23:35', '2015-10-21 15:23:11', '0', null, null);
INSERT INTO `personnel_section` VALUES ('131', '54', '41', '3', '3', '2015-10-26 17:03:35', '2015-10-26 17:03:11', '0', null, null);
INSERT INTO `personnel_section` VALUES ('132', '8', '24', '0', '0', '2015-10-28 17:07:39', '2015-10-28 17:07:15', '0', null, null);
INSERT INTO `personnel_section` VALUES ('133', '8', '69', '0', '0', '2015-10-28 17:07:49', '2015-10-28 17:07:25', '0', null, null);
INSERT INTO `personnel_section` VALUES ('134', '8', '70', '0', '0', '2015-10-28 17:08:07', '2015-10-28 17:07:43', '0', null, null);
INSERT INTO `personnel_section` VALUES ('135', '4', '19', '0', '0', '2015-11-02 09:13:01', '2015-11-02 09:12:37', '0', null, null);
INSERT INTO `personnel_section` VALUES ('136', '55', '41', '4', '4', '2015-11-02 09:19:01', '2015-11-02 09:18:37', '0', null, null);
INSERT INTO `personnel_section` VALUES ('137', '4', '49', '4', '4', '2015-11-02 09:55:52', '2015-11-02 09:55:28', '0', null, null);
INSERT INTO `personnel_section` VALUES ('138', '4', '41', '4', '4', '2015-11-02 09:56:02', '2015-11-02 09:55:38', '0', null, null);
INSERT INTO `personnel_section` VALUES ('139', '56', '41', '0', '0', '2015-11-03 10:04:38', '2015-11-03 10:04:14', '0', null, null);
INSERT INTO `personnel_section` VALUES ('140', '57', '50', '4', '4', '2015-11-03 10:26:10', '2015-11-03 10:25:46', '0', null, null);
INSERT INTO `personnel_section` VALUES ('141', '13', '47', '0', '0', '2015-11-04 17:30:59', '2015-11-04 17:30:35', '0', null, null);
INSERT INTO `personnel_section` VALUES ('142', '13', '24', '0', '0', '2015-11-04 17:31:41', '2015-11-04 17:31:17', '0', null, null);
INSERT INTO `personnel_section` VALUES ('143', '14', '67', '0', '0', '2015-11-05 09:02:56', '2015-11-05 09:02:32', '0', null, null);
INSERT INTO `personnel_section` VALUES ('144', '12', '47', '0', '0', '2015-11-07 18:23:06', '2015-11-07 18:22:42', '0', null, null);
INSERT INTO `personnel_section` VALUES ('145', '12', '24', '0', '0', '2015-11-07 18:23:26', '2015-11-07 18:23:02', '0', null, null);
INSERT INTO `personnel_section` VALUES ('146', '19', '47', '0', '0', '2015-11-07 19:21:13', '2015-11-07 19:20:49', '0', null, null);
INSERT INTO `personnel_section` VALUES ('147', '19', '24', '0', '0', '2015-11-07 19:21:26', '2015-11-07 19:21:02', '0', null, null);
INSERT INTO `personnel_section` VALUES ('148', '3', '41', '3', '3', '2015-11-11 10:18:11', '2015-11-11 10:17:47', '0', null, null);
INSERT INTO `personnel_section` VALUES ('149', '6', '47', '0', '0', '2015-11-11 19:59:24', '2015-11-11 19:59:00', '0', null, null);
INSERT INTO `personnel_section` VALUES ('151', '6', '24', '0', '0', '2015-11-11 20:00:53', '2015-11-11 20:00:29', '0', null, null);
INSERT INTO `personnel_section` VALUES ('152', '15', '24', '0', '0', '2015-11-13 10:01:53', '2015-11-13 10:01:29', '0', null, null);
INSERT INTO `personnel_section` VALUES ('153', '15', '69', '0', '0', '2015-11-13 10:02:31', '2015-11-13 10:02:07', '0', null, null);
INSERT INTO `personnel_section` VALUES ('154', '15', '70', '0', '0', '2015-11-13 10:02:43', '2015-11-13 10:02:19', '0', null, null);

-- ----------------------------
-- Table structure for `personnel_store`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_store`;
CREATE TABLE `personnel_store` (
  `personnel_store_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `personnel_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`personnel_store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_store
-- ----------------------------
INSERT INTO `personnel_store` VALUES ('4', '7', '13', '2015-10-18 12:46:02', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `personnel_store` VALUES ('5', '8', '13', '2015-10-18 12:46:12', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `personnel_store` VALUES ('6', '5', '7', '2015-10-18 12:55:53', '0', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for `personnel_type`
-- ----------------------------
DROP TABLE IF EXISTS `personnel_type`;
CREATE TABLE `personnel_type` (
  `personnel_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_type_name` varchar(30) DEFAULT NULL,
  `personnel_type_payment` tinyint(4) DEFAULT NULL,
  `personnel_type_payment_amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`personnel_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personnel_type
-- ----------------------------
INSERT INTO `personnel_type` VALUES ('1', 'Full Time', null, null);
INSERT INTO `personnel_type` VALUES ('2', 'Consultant', '1', null);
INSERT INTO `personnel_type` VALUES ('3', 'Accountant', '2', null);
INSERT INTO `personnel_type` VALUES ('4', 'CEO', '4', null);
INSERT INTO `personnel_type` VALUES ('5', 'Account manager', '3', null);

-- ----------------------------
-- Table structure for `petty_cash`
-- ----------------------------
DROP TABLE IF EXISTS `petty_cash`;
CREATE TABLE `petty_cash` (
  `petty_cash_id` int(11) NOT NULL AUTO_INCREMENT,
  `petty_cash_description` text,
  `petty_cash_amount` double DEFAULT NULL,
  `petty_cash_date` date DEFAULT NULL,
  `petty_cash_status` tinyint(1) DEFAULT '1',
  `account_id` int(11) DEFAULT NULL,
  `transaction_type_id` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `branch_code` varchar(10) NOT NULL DEFAULT 'OSH',
  `is_synced` int(11) DEFAULT '0',
  PRIMARY KEY (`petty_cash_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of petty_cash
-- ----------------------------
INSERT INTO `petty_cash` VALUES ('1', 'Petty cash reimbursement (cheque no. 456)', '20000', '2015-09-17', '1', '11', '1', '2015-10-30 10:10:20', '14', '2015-11-01 10:54:15', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('2', 'Fare to and from Nyamira', '220', '2015-09-17', '1', '7', '2', '2015-10-30 10:13:20', '14', '2015-10-30 16:41:34', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('3', 'Purchase of sugar, milk and bread', '570', '2015-09-17', '1', '2', '2', '2015-10-30 10:15:54', '14', '2015-10-30 16:41:45', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('4', 'Posting of claims voucher no.003', '2720', '2015-09-18', '1', '5', '2', '2015-10-30 10:17:51', '14', '2015-10-30 16:41:54', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('5', 'Purchase of bread', '100', '2015-09-19', '1', '2', '2', '2015-10-30 10:20:08', '14', '2015-10-30 16:42:00', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('6', 'Fare to and from naivas to refill gas cylinder', '50', '2015-09-19', '1', '7', '2', '2015-10-30 10:21:30', '14', '2015-10-30 16:42:10', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('7', 'Fare to and from level vi to refill oxygen cylinder', '100', '2015-09-21', '1', '7', '2', '2015-10-30 10:24:11', '14', '2015-10-30 16:42:18', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('8', 'Purchase of bread', '100', '2015-09-21', '1', '2', '2', '2015-10-30 10:25:17', '14', '2015-10-30 16:42:26', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('9', 'Purchase of airtime invoice no.009', '1000', '2015-09-22', '1', '5', '2', '2015-10-30 10:27:03', '14', '2015-10-30 16:42:34', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('10', 'upkeep money for the system guys invoice no.010', '5000', '2015-09-22', '1', '7', '2', '2015-10-30 10:28:33', '14', '2015-10-30 16:43:21', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('11', 'Locum services invoice no.011', '900', '2015-09-22', '1', '2', '2', '2015-10-30 10:30:08', '14', '2015-10-30 16:43:25', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('12', 'Purchase of bread', '100', '2015-09-22', '1', '2', '2', '2015-10-30 10:31:01', '14', '2015-10-30 16:43:33', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('13', 'Fare to and from naivas to refill the gas cylinder voucher no.014', '50', '0000-00-00', '0', '2', '2', '2015-10-30 10:34:30', '14', '2015-11-01 13:33:22', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('14', 'Purchase of wimbi voucher no.015', '900', '2015-09-23', '1', '2', '2', '2015-10-30 10:35:20', '14', '2015-10-30 16:44:01', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('15', 'Purchase of trunking pipes voucher no.016', '450', '2015-09-24', '1', '1', '2', '2015-10-30 10:37:05', '14', '2015-10-30 16:44:09', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('16', 'Start up of email by sasahost limited  voucher no.017', '3555', '2015-09-23', '1', '1', '2', '2015-10-30 10:39:51', '14', '2015-10-30 16:44:23', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('17', 'Purchase of conta and mini trunk voucher no.018', '500', '2015-09-23', '1', '1', '2', '2015-10-30 10:41:20', '14', '2015-10-30 16:44:27', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('18', 'Fare to and from banking voucher no.019', '50', '2015-09-23', '1', '7', '2', '2015-10-30 10:42:39', '14', '2015-10-30 16:44:34', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('19', 'Purchase of medicotts voucher no.020', '285', '2015-09-24', '1', '8', '2', '2015-10-30 10:44:18', '14', '2015-10-30 16:44:40', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('20', 'Petty cash reimbursement (cheque no.464)', '20000', '2015-09-25', '1', '11', '1', '2015-10-30 10:48:59', '14', '2015-10-30 10:48:59', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('21', 'Purchase of trunking, single patters and conta voucher no.022', '1050', '2015-09-25', '1', '1', '2', '2015-10-30 10:50:51', '14', '2015-10-30 16:44:45', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('22', 'Still birth disposal voucher no.026', '1000', '2015-09-25', '1', '3', '2', '2015-10-30 10:51:53', '14', '2015-10-30 16:44:54', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('23', 'Purchase of bread voucher no. 021', '88', '0000-00-00', '0', '2', '2', '2015-10-30 10:52:39', '14', '2015-11-01 13:33:19', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('24', 'Posting of CIC claim forms voucher no.023', '340', '2015-09-28', '1', '5', '2', '2015-10-30 10:53:49', '14', '2015-10-30 16:45:03', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('25', 'Fare to and from st. judes for lab test voucher no. 025', '400', '2015-08-28', '0', '6', '2', '2015-10-30 10:55:04', '14', '2015-11-01 13:33:17', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('26', 'Fare to and from Nyamira (Sharon) invoice no.027', '220', '2015-09-29', '1', '7', '2', '2015-10-30 10:56:20', '14', '2015-10-30 16:45:20', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('27', 'Purchase of syscans i.v voucher no.028', '330', '2015-09-29', '1', '8', '2', '2015-10-30 10:57:25', '14', '2015-10-30 16:45:24', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('28', 'Purchase of 40 liters of diesel and fare voucher no.029', '3370', '2015-09-29', '1', '9', '2', '2015-10-30 10:58:23', '14', '2015-10-30 16:45:31', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('29', 'INR/PTI sample to st. Judes voucher no. 024', '400', '2015-09-29', '1', '6', '2', '2015-10-30 10:59:28', '14', '2015-10-30 16:45:48', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('30', 'Fridge delivered to nakumatt for repair voucher no. 030', '200', '2015-09-30', '1', '1', '2', '2015-10-30 11:01:00', '14', '2015-10-30 16:46:07', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('31', 'Purchase of cassava voucher no. 031', '100', '2015-09-30', '1', '2', '2', '2015-10-30 11:01:53', '14', '2015-10-30 16:46:15', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('32', 'Poshomill voucher no. 032', '60', '2015-09-30', '1', '2', '2', '2015-10-30 11:02:36', '14', '2015-10-30 16:46:19', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('33', 'Purchase of airtime invoice no.033', '1000', '2015-09-30', '1', '5', '2', '2015-10-30 11:03:27', '14', '2015-10-30 16:46:24', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('34', 'Purchase of drugs voucher no. 074', '920', '2015-09-30', '1', '8', '2', '2015-10-30 11:04:17', '14', '2015-10-30 16:46:27', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('35', 'Purchase of syscans i.v voucher no.035', '660', '2015-09-30', '1', '8', '2', '2015-10-30 11:05:08', '14', '2015-10-30 16:46:29', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('36', 'Refund to Atera for purchase of drugs voucher no.034', '70', '2015-10-02', '1', '8', '2', '2015-10-30 11:06:24', '14', '2015-10-30 16:46:32', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('37', 'Purchase of drugs voucher no. 036', '5000', '2015-10-02', '1', '8', '2', '2015-10-30 11:09:45', '14', '2015-10-30 16:46:40', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('38', 'Posting of claim forms voucher no. 040', '2680', '2015-10-03', '1', '5', '2', '2015-10-30 11:10:56', '14', '2015-10-30 16:46:44', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('39', 'Purchase of drugs', '420', '2015-10-03', '1', '8', '2', '2015-10-30 11:12:32', '14', '2015-10-30 16:46:46', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('40', 'Purchase of sukumawiki voucher no. 037', '50', '2015-10-04', '1', '2', '2', '2015-10-30 11:14:00', '14', '2015-10-30 16:46:49', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('41', 'Purchase of bread voucher no.038', '90', '2015-10-04', '1', '2', '2', '2015-10-30 11:14:59', '14', '2015-10-30 16:46:51', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('42', 'Purchase of drugs voucher no.041', '290', '2015-10-06', '1', '8', '2', '2015-10-30 11:16:20', '14', '2015-10-30 16:46:56', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('43', 'Purchase of airtime voucher no. 042', '500', '2015-10-06', '1', '5', '2', '2015-10-30 11:17:52', '14', '2015-10-30 16:47:00', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('44', 'Purchase of bread voucher no. 043', '100', '2015-10-09', '1', '2', '2', '2015-10-30 11:18:30', '14', '2015-10-30 16:47:03', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('45', 'Purchase of bread voucher no. 044', '100', '2015-10-10', '1', '2', '2', '2015-10-30 11:19:19', '14', '2015-10-30 16:47:05', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('46', 'Purchase of bread voucher no. 045', '86', '2015-10-11', '1', '2', '2', '2015-10-30 11:19:56', '14', '2015-10-30 16:47:16', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('47', 'Purchase of bread voucher no. 046', '100', '2015-10-12', '1', '2', '2', '2015-10-30 11:20:38', '14', '2015-10-30 16:47:22', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('48', 'Purchase of aitime voucher no. 047', '50', '2015-10-12', '1', '5', '2', '2015-10-30 11:21:20', '14', '2015-10-30 16:47:25', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('49', 'Petty cash reimbursement (cheque no.492)', '20000', '2015-10-13', '1', '11', '1', '2015-10-30 11:23:58', '14', '2015-10-30 11:23:58', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('50', 'Purchase of bread voucher no. 048', '106', '2015-10-13', '1', '2', '2', '2015-10-30 11:24:52', '14', '2015-10-30 16:47:31', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('51', 'Purchase of cassava and milling voucher no. 049', '130', '2015-10-14', '1', '2', '2', '2015-10-30 11:25:41', '14', '2015-10-30 16:47:35', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('52', 'Purchase of bread, Golden fry, jogoo maize, water and fare voucher no. 050', '965', '2015-10-14', '1', '2', '2', '2015-10-30 11:27:19', '14', '2015-10-30 16:47:51', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('53', 'Purchase of airtime voucher no. 051', '100', '2015-10-14', '1', '5', '2', '2015-10-30 11:27:57', '14', '2015-10-30 16:48:13', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('54', 'Purchase of adult pampers and packing bags voucher no. 052', '1080', '2015-10-14', '1', '8', '2', '2015-10-30 11:29:11', '14', '2015-10-30 16:48:24', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('55', 'Purchase of kitchen items voucher no. 053', '8435', '2015-10-15', '1', '2', '2', '2015-10-30 11:30:02', '14', '2015-10-30 16:48:37', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('56', 'Purchase of airtime voucher no. 054', '900', '2015-10-15', '1', '5', '2', '2015-10-30 11:30:39', '14', '2015-10-30 16:48:40', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('57', 'Purchase of drugs voucher no. 055', '4345', '2015-10-15', '1', '8', '2', '2015-10-30 11:31:28', '14', '2015-10-30 16:48:50', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('58', 'Fare to and from Nyamira voucher no. 056', '220', '2015-10-16', '1', '7', '2', '2015-10-30 11:33:02', '14', '2015-10-30 16:49:03', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('59', 'Posting of letter to NITA voucher no. 073', '50', '2015-10-14', '1', '5', '2', '2015-10-30 11:35:53', '14', '2015-10-30 16:49:09', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('60', 'Purchase of fuse voucher no. 057', '500', '2015-10-16', '1', '1', '2', '2015-10-30 11:36:42', '14', '2015-10-30 16:49:17', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('61', 'Purchase of drugs voucher no.058', '200', '2015-10-16', '1', '8', '2', '2015-10-30 11:39:09', '14', '2015-10-30 16:50:10', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('62', 'Purchase of bread voucher no. 059', '94', '2015-10-16', '1', '2', '2', '2015-10-30 11:40:09', '14', '2015-10-30 16:50:15', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('63', 'Labour for repair of generator voucher no. 060', '500', '2015-10-16', '1', '9', '2', '2015-10-30 11:41:36', '14', '2015-10-30 16:58:38', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('64', 'Purchase of tomatoes voucher no. 065', '40', '2015-10-16', '1', '2', '2', '2015-10-30 11:42:13', '14', '2015-10-30 16:58:50', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('65', 'Purchase of bread voucher no. 064', '98', '2015-10-17', '1', '2', '2', '2015-10-30 11:42:50', '14', '2015-10-30 16:58:52', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('66', 'Printing and photocopying services voucher no. 063', '120', '2015-10-18', '1', '1', '2', '2015-10-30 11:43:49', '14', '2015-10-30 16:59:01', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('67', 'Purchase of drugs voucher no. 061', '960', '2015-10-18', '1', '8', '2', '2015-10-30 11:44:28', '14', '2015-10-30 16:59:03', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('68', 'Purchase of drugs voucher no. 062', '200', '2015-10-18', '1', '8', '2', '2015-10-30 11:45:06', '14', '2015-10-30 16:59:07', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('69', 'Repair of printer machine voucher no. 067', '200', '2015-10-18', '1', '1', '2', '2015-10-30 11:46:21', '14', '2015-10-30 16:59:11', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('70', 'Fare to and from mosocho (Lilian Okengo) voucher no. 068', '200', '2015-10-19', '1', '7', '2', '2015-10-30 11:47:26', '14', '2015-10-30 16:59:17', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('71', 'Purchase of steel nails voucher no. 069', '100', '2015-10-19', '1', '1', '2', '2015-10-30 11:48:11', '14', '2015-10-30 16:59:21', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('72', 'Purchase of bread voucher no. 070', '90', '2015-10-20', '1', '2', '2', '2015-10-30 11:48:55', '14', '2015-10-30 16:59:23', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('73', 'Purchase of airtime voucher no. 071', '200', '2015-10-20', '1', '5', '2', '2015-10-30 11:49:52', '14', '2015-10-30 16:59:27', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('74', 'Purchase of bread voucher no. 072', '80', '2015-10-20', '1', '2', '2', '2015-10-30 11:50:25', '14', '2015-10-30 16:59:29', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('75', 'Petty cash reimbursement (cheque no.513)', '19980', '2015-10-21', '1', '11', '1', '2015-10-30 11:55:52', '14', '2015-10-30 11:55:52', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('76', 'Purchase of bread voucher no. 075', '89', '2015-10-21', '1', '2', '2', '2015-10-30 11:56:51', '14', '2015-10-30 16:59:37', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('77', 'Purchase of bread voucher no. 076', '88', '2015-10-23', '1', '2', '2', '2015-10-30 11:57:31', '14', '2015-10-30 16:59:41', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('78', 'Purchase of vegetable oil voucher no. 077', '483', '2015-10-23', '1', '2', '2', '2015-10-30 11:58:18', '14', '2015-10-30 16:59:45', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('79', 'Fare to and from Nyamira voucher no. 078', '220', '2015-10-23', '1', '7', '2', '2015-10-30 11:59:28', '14', '2015-10-30 17:00:15', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('80', 'Generator repair', '2800', '2015-10-23', '1', '9', '2', '2015-10-30 12:02:01', '14', '2015-10-30 17:00:20', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('81', 'Purchase of wimbi, cassava and poshomill voucher no. 080', '540', '2015-10-23', '1', '2', '2', '2015-10-30 12:02:58', '14', '2015-10-30 17:00:22', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('82', 'Purchase of drugs voucher no. 081', '120', '2015-10-24', '1', '8', '2', '2015-10-30 12:03:44', '14', '2015-10-30 17:00:24', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('83', 'Purchase of 42 liters of diesel and fare voucher no. 082', '3650', '2015-10-25', '1', '9', '2', '2015-10-30 12:04:52', '14', '2015-10-30 17:00:26', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('84', 'Purchase of airtime voucher no. 083', '1000', '2015-10-24', '1', '5', '2', '2015-10-30 12:05:33', '14', '2015-10-30 17:00:29', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('85', 'Purchase of wimbi, cassava, poshomill and fare voucher no. 084', '1140', '2015-10-25', '1', '2', '2', '2015-10-30 12:06:39', '14', '2015-10-30 17:00:31', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('86', 'Fare to and from level vi for oxygen refill', '200', '2015-10-27', '1', '10', '2', '2015-10-30 12:07:32', '14', '2015-10-30 17:00:39', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('87', 'Purchase of bread voucher no. 088', '100', '2015-10-26', '1', '2', '2', '2015-10-30 12:08:07', '14', '2015-10-30 17:00:42', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('88', 'Fare to and from banking voucher no. 087', '60', '2015-10-27', '1', '7', '2', '2015-10-30 12:08:46', '14', '2015-10-30 17:00:48', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('89', 'Purchase of charger voucher no. 086', '150', '2015-10-27', '1', '5', '2', '2015-10-30 12:36:05', '14', '2015-10-30 17:00:58', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('90', 'Purchase of conta voucher no. 091', '1550', '2015-10-28', '1', '1', '2', '2015-10-30 12:36:43', '14', '2015-10-30 17:01:01', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('91', 'Purchase of row bolt voucher no. 092', '400', '2015-10-28', '1', '1', '2', '2015-10-30 12:37:45', '14', '2015-10-30 17:01:12', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('92', 'Purchase of drugs voucher no. 093', '800', '2015-10-28', '1', '8', '2', '2015-10-30 12:38:22', '14', '2015-10-30 17:01:16', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('93', 'Purchase of 20 liters of diesel and fare voucher no. 094', '1720', '2015-10-28', '1', '9', '2', '2015-10-30 12:39:13', '14', '2015-10-30 17:01:24', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('94', 'Refill of 13 kg gas cylinder and fare voucher no. 095', '1180', '2015-10-29', '1', '2', '2', '2015-10-30 12:40:21', '14', '2015-10-30 17:01:28', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('95', 'Purchase of airtime voucher no. 096', '1000', '2015-10-30', '1', '5', '2', '2015-10-30 12:41:02', '14', '2015-10-30 17:01:40', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('96', 'Fare to and from level vi for oxygen refill voucher no.097', '200', '2015-10-30', '1', '10', '2', '2015-10-30 12:42:01', '14', '2015-10-30 17:01:47', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('97', 'Purchase of 42 liters of fuel and fare voucher no. 013', '3650', '2015-09-22', '1', '9', '2', '2015-10-30 12:48:16', '14', '2015-10-30 17:01:58', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('98', 'Fare to and from naivas to refill gas cylinder voucher no. 014', '50', '2015-09-23', '1', '2', '2', '2015-10-30 12:49:33', '14', '2015-10-30 17:02:13', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('103', 'Posting of claims voucher no.89', '2380', '2015-10-27', '1', '5', '2', '2015-10-30 19:01:12', '14', '2015-10-30 19:01:12', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('104', 'Purchase of bread voucher no. 090', '100', '2015-10-27', '1', '2', '2', '2015-10-30 19:02:08', '14', '2015-10-30 19:02:08', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('105', 'Purchase of Bread voucher No. 066', '89', '2015-10-18', '1', '2', '2', '2015-10-30 19:49:09', '14', '2015-10-30 19:49:09', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('108', 'Purchase of Bread voucher no. 021', '88', '2015-09-27', '1', '2', '2', '2015-10-30 19:57:49', '14', '2015-10-30 19:58:25', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('109', 'Fare to and From St. Judes voucher no. 025', '400', '2015-09-28', '1', '7', '2', '2015-10-30 20:00:26', '14', '2015-10-30 20:00:26', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('111', 'Purchase of bread voucher no. 103', '178', '2015-11-02', '1', '2', '2', '2015-11-06 18:05:35', '14', '2015-11-06 18:05:35', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('112', 'Petty cash reimbursement cheque no. 544', '19970', '2015-11-01', '1', '11', '1', '2015-11-06 18:12:00', '14', '2015-11-06 18:12:00', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('113', 'Purchase of packing bags voucher no. 104', '80', '2015-11-02', '1', '8', '2', '2015-11-06 18:17:41', '14', '2015-11-06 18:17:41', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('114', 'Purchase of drugs voucher no. 105', '810', '2015-11-05', '1', '8', '2', '2015-11-06 18:21:13', '14', '2015-11-06 18:21:13', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('115', 'Purchase of airtime voucher no. 106', '1000', '2015-11-06', '1', '5', '2', '2015-11-06 18:22:32', '14', '2015-11-06 18:22:32', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('116', 'Fare to and from Nyamira voucher no. 107', '220', '2015-11-06', '1', '7', '2', '2015-11-06 18:23:22', '14', '2015-11-06 18:23:22', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('117', 'Purchase of mixavit drops voucher no. 108', '500', '2015-11-07', '1', '8', '2', '2015-11-07 15:31:06', '14', '2015-11-07 15:31:06', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('118', 'Fare to and from Nyamache to bring lab reagents voucher no. 109', '100', '2015-11-08', '1', '6', '2', '2015-11-08 15:54:47', '14', '2015-11-08 15:54:47', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('119', 'Purchase of drugs voucher no. 110', '1630', '2015-11-08', '1', '8', '2', '2015-11-08 15:56:21', '14', '2015-11-08 15:56:21', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('120', 'Purchase of bread voucher no. 111', '86', '2015-11-08', '1', '2', '2', '2015-11-12 08:52:32', '14', '2015-11-12 08:52:32', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('121', 'Purchase of diesel and fare voucher no. 112', '3370', '2015-11-09', '1', '9', '2', '2015-11-12 08:53:26', '14', '2015-11-12 08:53:26', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('122', 'Purchase of hub swabs voucher no. 113', '100', '2015-11-09', '1', '6', '2', '2015-11-12 08:54:52', '14', '2015-11-12 08:54:52', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('123', 'Gas refill and fare voucher no. 114', '2560', '2015-11-11', '1', '2', '2', '2015-11-12 08:55:44', '14', '2015-11-12 08:55:44', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('124', 'Posting of claim forms voucher no. 115', '2380', '2015-11-11', '1', '5', '2', '2015-11-12 08:56:46', '14', '2015-11-12 08:56:46', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('125', 'Fare from Davis And Shirt lift for the purchase of water pump voucher no. 116', '50', '2015-11-11', '1', '7', '2', '2015-11-12 13:31:51', '14', '2015-11-12 13:31:51', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('126', 'Repair of billboards voucher no. 117', '3500', '2015-11-12', '1', '1', '2', '2015-11-12 13:33:34', '14', '2015-11-12 13:33:34', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('127', 'Purchase of 6 padlocks voucher no. 118', '1380', '2015-11-12', '1', '1', '2', '2015-11-12 15:15:24', '14', '2015-11-12 15:15:24', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('128', 'Purchase of beans voucher no. 119', '400', '2015-11-13', '1', '2', '2', '2015-11-13 13:47:56', '14', '2015-11-13 13:47:56', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('129', 'Purchase of envelopes voucher no. 120', '300', '2015-11-13', '1', '1', '2', '2015-11-13 13:50:42', '14', '2015-11-13 13:50:42', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('130', 'Posting of letter to NITA voucher no. 121', '50', '2015-11-13', '1', '5', '2', '2015-11-13 13:51:50', '14', '2015-11-13 13:51:50', '14', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('131', 'Purchase of airtime voucher no.122', '1000', '2015-11-15', '1', '5', '2', '2015-11-18 10:20:54', '0', '2015-11-18 10:20:54', '0', 'OSH', '0');
INSERT INTO `petty_cash` VALUES ('132', 'Purchase of bread voucher no. 123', '86', '2015-11-16', '1', '2', '2', '2015-11-18 10:22:08', '0', '2015-11-18 10:22:08', '0', 'OSH', '0');

-- ----------------------------
-- Table structure for `relationship`
-- ----------------------------
DROP TABLE IF EXISTS `relationship`;
CREATE TABLE `relationship` (
  `relationship_id` int(11) NOT NULL AUTO_INCREMENT,
  `relationship_name` varchar(20) NOT NULL,
  PRIMARY KEY (`relationship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of relationship
-- ----------------------------
INSERT INTO `relationship` VALUES ('1', 'Father');
INSERT INTO `relationship` VALUES ('2', 'Mother');
INSERT INTO `relationship` VALUES ('3', 'Brother');
INSERT INTO `relationship` VALUES ('4', 'Sister');
INSERT INTO `relationship` VALUES ('5', 'Son');
INSERT INTO `relationship` VALUES ('6', 'Daughter');
INSERT INTO `relationship` VALUES ('7', 'Aunt');
INSERT INTO `relationship` VALUES ('8', 'Uncle');
INSERT INTO `relationship` VALUES ('9', 'Guardian');
INSERT INTO `relationship` VALUES ('10', 'Wife');
INSERT INTO `relationship` VALUES ('11', 'Husband');
INSERT INTO `relationship` VALUES ('12', 'Spouse');
INSERT INTO `relationship` VALUES ('13', 'Cousin');
INSERT INTO `relationship` VALUES ('14', 'Other');

-- ----------------------------
-- Table structure for `relief`
-- ----------------------------
DROP TABLE IF EXISTS `relief`;
CREATE TABLE `relief` (
  `relief_id` int(11) NOT NULL AUTO_INCREMENT,
  `relief_name` varchar(45) DEFAULT NULL,
  `relief_status` tinyint(1) NOT NULL DEFAULT '1',
  `relief_abbr` varchar(10) NOT NULL,
  `relief_type` tinyint(1) NOT NULL DEFAULT '1',
  `relief_amount` float DEFAULT NULL,
  PRIMARY KEY (`relief_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of relief
-- ----------------------------
INSERT INTO `relief` VALUES ('3', 'Insurance Relief', '1', 'Insurance', '0', '15');
INSERT INTO `relief` VALUES ('5', 'Monthly Relief', '1', 'Monthly', '1', '1162');

-- ----------------------------
-- Table structure for `religion`
-- ----------------------------
DROP TABLE IF EXISTS `religion`;
CREATE TABLE `religion` (
  `religion_id` int(11) NOT NULL AUTO_INCREMENT,
  `religion_name` varchar(20) NOT NULL,
  PRIMARY KEY (`religion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of religion
-- ----------------------------
INSERT INTO `religion` VALUES ('1', 'Christian');
INSERT INTO `religion` VALUES ('2', 'Muslim');
INSERT INTO `religion` VALUES ('3', 'Hindu');
INSERT INTO `religion` VALUES ('4', 'Budhist');
INSERT INTO `religion` VALUES ('5', 'Other');

-- ----------------------------
-- Table structure for `savings`
-- ----------------------------
DROP TABLE IF EXISTS `savings`;
CREATE TABLE `savings` (
  `savings_id` int(11) NOT NULL AUTO_INCREMENT,
  `savings_name` varchar(100) NOT NULL,
  `savings_status` int(11) NOT NULL,
  PRIMARY KEY (`savings_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of savings
-- ----------------------------
INSERT INTO `savings` VALUES ('2', 'Mzima Springs', '0');

-- ----------------------------
-- Table structure for `savings_payment`
-- ----------------------------
DROP TABLE IF EXISTS `savings_payment`;
CREATE TABLE `savings_payment` (
  `savings_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `individual__id` int(11) DEFAULT NULL,
  `savings_payment_delete` tinyint(1) DEFAULT '0',
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `payment_amount` double DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `branch_code` varchar(10) DEFAULT NULL,
  `individual_id` int(11) DEFAULT NULL,
  `document_number` varchar(100) DEFAULT NULL,
  `contribution_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`savings_payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of savings_payment
-- ----------------------------
INSERT INTO `savings_payment` VALUES ('1', null, '0', null, null, '2016-02-03 13:24:40', '0', '2016-02-03 15:24:40', '0', '5000', '2016-02-01', 'ALV', '1', '123456', null);
INSERT INTO `savings_payment` VALUES ('2', null, '0', null, null, '2016-02-04 15:49:38', '0', '2016-02-04 17:49:38', '0', '3000', '2016-02-04', 'ALV', '1', '123456', '2');

-- ----------------------------
-- Table structure for `savings_plan`
-- ----------------------------
DROP TABLE IF EXISTS `savings_plan`;
CREATE TABLE `savings_plan` (
  `savings_plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `savings_plan_name` varchar(50) NOT NULL,
  `savings_plan_min_account_balance` double NOT NULL,
  `savings_plan_min_opening_balance` double NOT NULL,
  `charge_withdrawal` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) NOT NULL,
  `compounding_period_id` int(11) NOT NULL,
  `savings_plan_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`savings_plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of savings_plan
-- ----------------------------
INSERT INTO `savings_plan` VALUES ('1', 'Hekima', '0', '5000', '0', '2015-07-30 13:53:30', '85', '2015-07-30 14:53:30', '85', '5', '1');
INSERT INTO `savings_plan` VALUES ('2', 'Biashara', '5000', '25000', '1', '2015-07-30 13:54:17', '85', '2015-07-30 14:54:17', '85', '3', '1');
INSERT INTO `savings_plan` VALUES ('3', 'Ziada', '10000', '50000', '1', '2015-07-30 13:54:39', '85', '2015-07-30 14:54:39', '85', '2', '1');

-- ----------------------------
-- Table structure for `savings_withdrawal`
-- ----------------------------
DROP TABLE IF EXISTS `savings_withdrawal`;
CREATE TABLE `savings_withdrawal` (
  `savings_withdrawal_id` int(11) NOT NULL AUTO_INCREMENT,
  `individual__id` int(11) DEFAULT NULL,
  `savings_withdrawal_delete` tinyint(1) DEFAULT '0',
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `withdrawal_amount` double DEFAULT NULL,
  `withdrawal_date` date DEFAULT NULL,
  `branch_code` varchar(10) DEFAULT NULL,
  `individual_id` int(11) DEFAULT NULL,
  `document_number` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`savings_withdrawal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of savings_withdrawal
-- ----------------------------
INSERT INTO `savings_withdrawal` VALUES ('2', null, '0', null, null, '2016-02-03 13:47:30', '0', '2016-02-03 15:47:30', '0', '2000', '2016-02-02', 'ALV', '1', '123456');
INSERT INTO `savings_withdrawal` VALUES ('3', null, '0', null, null, '2016-02-04 16:04:07', '0', '2016-02-04 18:04:07', '0', '1000', '2016-02-04', 'ALV', '1', '123456');

-- ----------------------------
-- Table structure for `schedule`
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `schedule_id` int(5) NOT NULL AUTO_INCREMENT,
  `personnel_id` bigint(5) NOT NULL,
  `shift_id` int(5) NOT NULL,
  `room_id` int(5) NOT NULL,
  `schedule_date` date DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `personnel_id` (`personnel_id`),
  KEY `room_id` (`room_id`),
  KEY `shift_id` (`shift_id`),
  KEY `personnel_id_2` (`personnel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES ('1', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('3', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('5', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('6', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('7', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('8', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('9', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('10', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('11', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('12', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('13', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('14', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('15', '3', '0', '0', null);
INSERT INTO `schedule` VALUES ('16', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('17', '3', '0', '0', null);
INSERT INTO `schedule` VALUES ('18', '3', '0', '0', null);
INSERT INTO `schedule` VALUES ('19', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('20', '6', '0', '0', null);
INSERT INTO `schedule` VALUES ('21', '3', '0', '0', null);
INSERT INTO `schedule` VALUES ('22', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('23', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('24', '6', '0', '0', null);
INSERT INTO `schedule` VALUES ('25', '6', '0', '0', null);
INSERT INTO `schedule` VALUES ('26', '6', '0', '0', null);
INSERT INTO `schedule` VALUES ('27', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('28', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('29', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('30', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('31', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('32', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('33', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('34', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('35', '3', '0', '0', null);
INSERT INTO `schedule` VALUES ('36', '3', '0', '0', null);
INSERT INTO `schedule` VALUES ('37', '3', '0', '0', null);
INSERT INTO `schedule` VALUES ('38', '3', '0', '0', null);
INSERT INTO `schedule` VALUES ('39', '3', '0', '0', null);
INSERT INTO `schedule` VALUES ('40', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('45', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('47', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('48', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('49', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('50', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('53', '0', '0', '0', null);
INSERT INTO `schedule` VALUES ('54', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('55', '4', '0', '0', null);
INSERT INTO `schedule` VALUES ('103', '0', '0', '0', null);
INSERT INTO `schedule` VALUES ('104', '0', '0', '0', null);
INSERT INTO `schedule` VALUES ('105', '4', '0', '0', null);

-- ----------------------------
-- Table structure for `section`
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(100) DEFAULT NULL,
  `section_status` tinyint(1) NOT NULL DEFAULT '1',
  `section_parent` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `section_user` int(11) DEFAULT NULL,
  `section_icon` varchar(20) DEFAULT NULL,
  `section_position` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES ('2', 'Company Profile', '0', '18', '2015-07-28 11:19:00', '2015-08-28 08:19:52', '85', '85', '1', '', '3');
INSERT INTO `section` VALUES ('14', 'Dashboard', '1', '0', '2015-07-28 11:19:00', '2015-07-29 12:46:55', '85', '85', '1', 'home', '1');
INSERT INTO `section` VALUES ('16', 'Sections', '1', '18', '2015-07-29 12:45:00', '2015-07-29 13:44:10', '85', '85', '1', 'lock', '1');
INSERT INTO `section` VALUES ('18', 'Administration', '1', '0', '2015-07-29 12:43:53', '2015-07-29 13:43:53', '85', '85', null, 'cog', '1');
INSERT INTO `section` VALUES ('32', 'Microfinance', '1', '0', '2015-07-30 10:46:43', '2015-12-02 14:52:37', '85', '0', null, 'balance-scale', '6');
INSERT INTO `section` VALUES ('33', 'Individual', '1', '32', '2015-07-30 10:47:11', '2015-07-30 11:56:48', '85', '85', null, '', '1');
INSERT INTO `section` VALUES ('34', 'Deposits', '1', '32', '2015-07-30 10:56:23', '2015-07-30 11:56:23', '85', '85', null, '', '3');
INSERT INTO `section` VALUES ('35', 'Groups', '1', '32', '2015-07-30 10:57:18', '2015-07-30 11:57:18', '85', '85', null, '', '2');
INSERT INTO `section` VALUES ('36', 'Loans', '1', '32', '2015-07-30 11:07:01', '2015-07-30 12:07:01', '85', '85', null, '', '4');
INSERT INTO `section` VALUES ('37', 'Savings Plan', '1', '32', '2015-07-30 13:07:12', '2015-07-30 14:07:12', '85', '85', null, '', '0');
INSERT INTO `section` VALUES ('39', 'Configuration', '1', '18', '2015-08-14 12:51:45', '2015-08-14 13:51:45', '85', '85', null, '', '1');
INSERT INTO `section` VALUES ('89', 'Branches', '1', '18', '2015-08-28 07:19:46', '2015-09-02 14:03:36', '85', '85', null, '', '1');
INSERT INTO `section` VALUES ('90', 'Human Resource', '1', '0', '2015-12-01 16:55:26', '2015-12-02 14:50:23', '0', '0', null, 'users', '4');
INSERT INTO `section` VALUES ('91', 'Personnel', '1', '90', '2015-12-01 16:56:48', '2015-12-01 16:56:24', '0', '0', null, 'cog', '1');
INSERT INTO `section` VALUES ('92', 'Accounts', '1', '0', '2015-12-01 17:22:30', '2015-12-01 17:23:26', '0', '0', null, 'money', '5');
INSERT INTO `section` VALUES ('93', 'Payroll Configuration', '1', '92', '2015-12-01 17:23:02', '2015-12-01 17:22:38', '0', '0', null, 'cogs', '1');
INSERT INTO `section` VALUES ('94', 'Payroll', '1', '92', '2015-12-01 17:23:18', '2015-12-01 17:22:54', '0', '0', null, 'cogs', '2');
INSERT INTO `section` VALUES ('95', 'Petty Cash', '1', '92', '2015-12-02 13:33:04', '2015-12-02 15:33:04', '0', '0', null, '', '0');
INSERT INTO `section` VALUES ('96', 'Creditors', '1', '92', '2015-12-02 13:34:37', '2015-12-02 15:34:37', '0', '0', null, '', '0');
INSERT INTO `section` VALUES ('97', 'Import', '1', '0', '2016-01-12 17:32:23', '2016-01-12 19:32:23', '0', '0', null, 'sign-in', '6');
INSERT INTO `section` VALUES ('98', 'Individuals', '1', '97', '2016-01-12 17:37:02', '2016-01-12 19:37:02', '0', '0', null, '', '1');
INSERT INTO `section` VALUES ('99', 'Savings', '1', '97', '2016-01-12 20:36:53', '2016-01-12 22:36:53', '0', '0', null, '', '2');
INSERT INTO `section` VALUES ('100', 'Loans', '1', '97', '2016-01-12 20:37:11', '2016-01-12 22:37:11', '0', '0', null, '', '3');
INSERT INTO `section` VALUES ('101', 'Loan Payments', '1', '97', '2016-01-12 20:37:40', '2016-01-12 22:37:40', '0', '0', null, '', '4');
INSERT INTO `section` VALUES ('102', 'Mfi Reports', '1', '0', '2016-01-13 10:07:44', '2016-01-13 12:07:44', '0', '0', null, 'area-chart', '6');
INSERT INTO `section` VALUES ('103', 'Interest Revenue', '1', '102', '2016-01-13 10:09:53', '2016-01-13 12:09:53', '0', '0', null, '', '1');
INSERT INTO `section` VALUES ('104', 'Savings Collection', '1', '102', '2016-01-13 10:10:13', '2016-01-13 12:10:13', '0', '0', null, '', '2');
INSERT INTO `section` VALUES ('105', 'Loans Collection', '1', '102', '2016-01-13 10:10:42', '2016-01-13 12:10:42', '0', '0', null, '', '3');
INSERT INTO `section` VALUES ('106', 'Members', '1', '102', '2016-01-13 10:11:28', '2016-01-13 12:11:28', '0', '0', null, '', '0');
INSERT INTO `section` VALUES ('107', 'Defaulters', '1', '102', '2016-01-13 10:11:46', '2016-01-13 12:11:46', '0', '0', null, '', '0');
INSERT INTO `section` VALUES ('108', 'Dashboard', '1', '102', '2016-01-13 10:12:04', '2016-01-13 12:12:04', '0', '0', null, '', '0');
INSERT INTO `section` VALUES ('109', 'Incomes', '1', '32', '2016-02-03 14:59:53', '2016-02-03 17:00:16', '0', '0', null, 'asterisk', '6');

-- ----------------------------
-- Table structure for `session`
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_id` int(11) NOT NULL,
  `session_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `session_name_id` int(11) NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of session
-- ----------------------------

-- ----------------------------
-- Table structure for `session_name`
-- ----------------------------
DROP TABLE IF EXISTS `session_name`;
CREATE TABLE `session_name` (
  `session_name_id` int(11) NOT NULL AUTO_INCREMENT,
  `session_name_name` varchar(10) NOT NULL,
  PRIMARY KEY (`session_name_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of session_name
-- ----------------------------
INSERT INTO `session_name` VALUES ('1', 'Login');
INSERT INTO `session_name` VALUES ('2', 'Logout');

-- ----------------------------
-- Table structure for `table`
-- ----------------------------
DROP TABLE IF EXISTS `table`;
CREATE TABLE `table` (
  `table_id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(30) NOT NULL,
  PRIMARY KEY (`table_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of table
-- ----------------------------
INSERT INTO `table` VALUES ('1', 'basic_pay');
INSERT INTO `table` VALUES ('2', 'personnel');
INSERT INTO `table` VALUES ('3', 'allowance');
INSERT INTO `table` VALUES ('4', 'deduction');
INSERT INTO `table` VALUES ('5', 'savings');
INSERT INTO `table` VALUES ('6', 'loan_scheme');
INSERT INTO `table` VALUES ('7', 'payment');
INSERT INTO `table` VALUES ('8', 'benefit');
INSERT INTO `table` VALUES ('9', 'paye');
INSERT INTO `table` VALUES ('10', 'relief');
INSERT INTO `table` VALUES ('11', 'nssf');
INSERT INTO `table` VALUES ('12', 'nhif');
INSERT INTO `table` VALUES ('13', 'other_deduction');
INSERT INTO `table` VALUES ('14', 'insruance_relief');
INSERT INTO `table` VALUES ('15', 'insurance_amount');
INSERT INTO `table` VALUES ('16', 'insurance_relief');

-- ----------------------------
-- Table structure for `targets`
-- ----------------------------
DROP TABLE IF EXISTS `targets`;
CREATE TABLE `targets` (
  `target_id` int(11) NOT NULL AUTO_INCREMENT,
  `target_name` varchar(50) NOT NULL,
  PRIMARY KEY (`target_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of targets
-- ----------------------------
INSERT INTO `targets` VALUES ('1', 'patients');
INSERT INTO `targets` VALUES ('2', 'revenue');

-- ----------------------------
-- Table structure for `title`
-- ----------------------------
DROP TABLE IF EXISTS `title`;
CREATE TABLE `title` (
  `title_id` int(11) NOT NULL AUTO_INCREMENT,
  `title_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`title_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of title
-- ----------------------------
INSERT INTO `title` VALUES ('1', 'Mr.');
INSERT INTO `title` VALUES ('2', 'Mrs.');
INSERT INTO `title` VALUES ('3', 'Miss');
INSERT INTO `title` VALUES ('4', 'Dr.');
INSERT INTO `title` VALUES ('5', 'Prof.');
INSERT INTO `title` VALUES ('6', 'Fr.');
INSERT INTO `title` VALUES ('7', 'Sr.');
INSERT INTO `title` VALUES ('8', 'Br.');

-- ----------------------------
-- Table structure for `transaction_type`
-- ----------------------------
DROP TABLE IF EXISTS `transaction_type`;
CREATE TABLE `transaction_type` (
  `transaction_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_type_name` varchar(20) DEFAULT NULL,
  `transaction_type_status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`transaction_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaction_type
-- ----------------------------
INSERT INTO `transaction_type` VALUES ('1', 'Debit', '1');
INSERT INTO `transaction_type` VALUES ('2', 'Credit', '1');

-- ----------------------------
-- Table structure for `unit`
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(45) DEFAULT NULL,
  `unit_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of unit
-- ----------------------------
INSERT INTO `unit` VALUES ('3', 'Pc', '0');
INSERT INTO `unit` VALUES ('5', '450gm', '0');
INSERT INTO `unit` VALUES ('7', '250gm', '0');
INSERT INTO `unit` VALUES ('9', '400gm', '0');
INSERT INTO `unit` VALUES ('10', '200gm', '0');
INSERT INTO `unit` VALUES ('14', '5ltr Can', '0');
INSERT INTO `unit` VALUES ('16', 'Ctn', '0');
INSERT INTO `unit` VALUES ('17', '500 Gms', '0');
INSERT INTO `unit` VALUES ('19', 'Pkt', '0');
INSERT INTO `unit` VALUES ('20', '750ml', '0');
INSERT INTO `unit` VALUES ('21', '2 Kg', '0');
INSERT INTO `unit` VALUES ('22', '340gm', '0');
INSERT INTO `unit` VALUES ('24', '3 Pack', '0');
INSERT INTO `unit` VALUES ('25', '50gms', '0');
INSERT INTO `unit` VALUES ('27', '20 Lts', '0');
INSERT INTO `unit` VALUES ('28', 'Tray', '0');
INSERT INTO `unit` VALUES ('29', '500ml', '0');
INSERT INTO `unit` VALUES ('30', '200ml', '0');
INSERT INTO `unit` VALUES ('33', 'gms', '0');
INSERT INTO `unit` VALUES ('38', '200 Ml', '0');
INSERT INTO `unit` VALUES ('39', '1 Litre', '0');
INSERT INTO `unit` VALUES ('41', 'Pcs', '0');
INSERT INTO `unit` VALUES ('43', ' Kgs', '0');
INSERT INTO `unit` VALUES ('45', '50 Gms', '0');
INSERT INTO `unit` VALUES ('46', '25 Gms', '0');
INSERT INTO `unit` VALUES ('47', '11 Gms', '0');
INSERT INTO `unit` VALUES ('50', 'Sachet', '0');
INSERT INTO `unit` VALUES ('51', 'Bar', '0');
INSERT INTO `unit` VALUES ('53', 'Bag', '0');
INSERT INTO `unit` VALUES ('54', '2 Litre', '0');
INSERT INTO `unit` VALUES ('57', 'Ml', '0');
INSERT INTO `unit` VALUES ('58', '300ml', '0');
INSERT INTO `unit` VALUES ('59', 'D4', '0');
INSERT INTO `unit` VALUES ('60', 'C12p', '0');
INSERT INTO `unit` VALUES ('61', 'L.20', '0');
INSERT INTO `unit` VALUES ('62', 'J3', '0');
INSERT INTO `unit` VALUES ('63', 'F8', '0');
INSERT INTO `unit` VALUES ('64', 'A3', '0');
INSERT INTO `unit` VALUES ('65', 'N3', '0');
INSERT INTO `unit` VALUES ('66', '250ml', '0');
INSERT INTO `unit` VALUES ('70', 'No.3', '0');
INSERT INTO `unit` VALUES ('71', '20lt', '0');
INSERT INTO `unit` VALUES ('72', '3.5kg', '0');
INSERT INTO `unit` VALUES ('73', '10*10', '0');
INSERT INTO `unit` VALUES ('74', '750gm', '0');
INSERT INTO `unit` VALUES ('75', 'K2', '0');
INSERT INTO `unit` VALUES ('76', '4 Pack', '0');
INSERT INTO `unit` VALUES ('78', 'B12', '0');
INSERT INTO `unit` VALUES ('79', '500gm', '0');
INSERT INTO `unit` VALUES ('81', 'Hd - 27', '0');
INSERT INTO `unit` VALUES ('83', '800gm', '0');
INSERT INTO `unit` VALUES ('84', '10pack', '0');
INSERT INTO `unit` VALUES ('85', '100ml', '0');
INSERT INTO `unit` VALUES ('86', 'Tp4', '0');
INSERT INTO `unit` VALUES ('87', '100gm', '0');
INSERT INTO `unit` VALUES ('89', 'Kg', '0');
INSERT INTO `unit` VALUES ('90', '1kg', '0');
INSERT INTO `unit` VALUES ('91', 'Bottle', '0');
INSERT INTO `unit` VALUES ('95', '2kg', '0');
INSERT INTO `unit` VALUES ('98', '20g Sact', '0');
INSERT INTO `unit` VALUES ('99', '5lts', '0');
INSERT INTO `unit` VALUES ('100', '100pkt', '0');
INSERT INTO `unit` VALUES ('102', 'Lt', '0');
INSERT INTO `unit` VALUES ('103', 'Bunch', '0');
INSERT INTO `unit` VALUES ('104', '8pc Pkt', '0');
INSERT INTO `unit` VALUES ('106', '20kg', '0');
INSERT INTO `unit` VALUES ('112', '10lts', '0');
INSERT INTO `unit` VALUES ('113', '100gm', '0');
INSERT INTO `unit` VALUES ('114', '-', '0');
