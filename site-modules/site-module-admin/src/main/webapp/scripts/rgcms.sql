/*
MySQL Backup
Source Server Version: 5.6.27
Source Database: rgcms
Date: 10/3/2017 11:14:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` varchar(32) NOT NULL,
  `audit_flag` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `content` longtext,
  `cover_image_url` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `publisher` varchar(64) DEFAULT NULL,
  `source_from` varchar(64) DEFAULT NULL,
  `summary` varchar(512) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `column_info_id` varchar(32) DEFAULT NULL,
  `is_audit` bit(1) DEFAULT NULL,
  `is_top` bit(1) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `root_column_info_id` varchar(32) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_bcwrpr0ji2q3en1mrahtqkjwn` (`column_info_id`),
  KEY `FK_20m4l0vy20mnqtq74gs0nd8xo` (`root_column_info_id`),
  CONSTRAINT `FK_20m4l0vy20mnqtq74gs0nd8xo` FOREIGN KEY (`root_column_info_id`) REFERENCES `cms_column_info` (`id`),
  CONSTRAINT `FK_bcwrpr0ji2q3en1mrahtqkjwn` FOREIGN KEY (`column_info_id`) REFERENCES `cms_column_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `cms_column_info`
-- ----------------------------
DROP TABLE IF EXISTS `cms_column_info`;
CREATE TABLE `cms_column_info` (
  `id` varchar(32) NOT NULL,
  `audit_flag` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `path` varchar(512) DEFAULT NULL,
  `parent_id` varchar(32) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `channel` int(11) DEFAULT NULL,
  `menu_type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_8pcbm05c14nhwr1bu0ui96d85` (`parent_id`),
  CONSTRAINT `FK_8pcbm05c14nhwr1bu0ui96d85` FOREIGN KEY (`parent_id`) REFERENCES `cms_column_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ins_institution`
-- ----------------------------
DROP TABLE IF EXISTS `ins_institution`;
CREATE TABLE `ins_institution` (
  `id` varchar(32) NOT NULL,
  `audit_flag` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `contact` varchar(64) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `ins_type` int(11) DEFAULT NULL,
  `introduction` longtext,
  `logo` varchar(128) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `website` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `org_resource`
-- ----------------------------
DROP TABLE IF EXISTS `org_resource`;
CREATE TABLE `org_resource` (
  `id` varchar(32) NOT NULL,
  `audit_flag` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `icon` varchar(512) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `parent_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2qoscu42yxypno5iv9w9raj2n` (`parent_id`),
  CONSTRAINT `FK_2qoscu42yxypno5iv9w9raj2n` FOREIGN KEY (`parent_id`) REFERENCES `org_resource` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `org_role`
-- ----------------------------
DROP TABLE IF EXISTS `org_role`;
CREATE TABLE `org_role` (
  `id` varchar(32) NOT NULL,
  `audit_flag` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `code` varchar(128) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `no` int(11) DEFAULT NULL,
  `role_name` varchar(64) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `org_role_resource_rel`
-- ----------------------------
DROP TABLE IF EXISTS `org_role_resource_rel`;
CREATE TABLE `org_role_resource_rel` (
  `role_id` varchar(32) NOT NULL,
  `resources_id` varchar(32) NOT NULL,
  PRIMARY KEY (`role_id`,`resources_id`),
  KEY `FK_hpsdqtxbypycwcdrw23na40bp` (`resources_id`),
  CONSTRAINT `FK_ew2x71wsjwd939pdgqdsvnnsd` FOREIGN KEY (`role_id`) REFERENCES `org_role` (`id`),
  CONSTRAINT `FK_hpsdqtxbypycwcdrw23na40bp` FOREIGN KEY (`resources_id`) REFERENCES `org_resource` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `org_user`
-- ----------------------------
DROP TABLE IF EXISTS `org_user`;
CREATE TABLE `org_user` (
  `id` varchar(32) NOT NULL,
  `audit_flag` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `real_name` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  `current_skin` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `org_user_role_rel`
-- ----------------------------
DROP TABLE IF EXISTS `org_user_role_rel`;
CREATE TABLE `org_user_role_rel` (
  `user_id` varchar(32) NOT NULL,
  `role_id` varchar(32) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_ikyyd9vv4u7y3m3yqvqo1vwdd` (`role_id`),
  CONSTRAINT `FK_92837trmh851io1pb73qjakvf` FOREIGN KEY (`user_id`) REFERENCES `org_user` (`id`),
  CONSTRAINT `FK_ikyyd9vv4u7y3m3yqvqo1vwdd` FOREIGN KEY (`role_id`) REFERENCES `org_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `cms_article` VALUES ('8a2a08425b7a0b7b015b7a2e36ee0007',NULL,'2017-04-17 12:31:40','0','2017-09-26 17:44:52',NULL,NULL,'#','1','jc',NULL,NULL,'我们的校园','8a2a08425b7a0b7b015b7a2b0f060006','',NULL,'11','4028821e5b7a0971015b7a0a1cbf0000','2'), ('8a2a08425b7a0b7b015b7a30c1b40008',NULL,'2017-04-17 12:34:27','0','2017-09-15 14:30:26',NULL,NULL,'#','2','jc',NULL,NULL,'学校风景','8a2a08425b7a0b7b015b7a2b0f060006','',NULL,'9','4028821e5b7a0971015b7a0a1cbf0000','2');
INSERT INTO `cms_column_info` VALUES ('4028821e5b7a0971015b7a0a1cbf0000',NULL,'2017-04-17 11:52:14','0','2017-04-17 11:52:18','shouye','0','首页','1','4028821e5b7a0971015b7a0a1cbf0000',NULL,NULL,'0','0'), ('4028821e5b7a9cbf015b7a9f79e00000',NULL,'2017-04-17 14:35:23','0','2017-04-17 14:35:23','jiaoxuejiaoyan','0','教学教研','3','4028821e5b7a9cbf015b7a9f79e00000',NULL,NULL,'0','0'), ('8a2a08425b7a0b7b015b7a0cf4440000',NULL,'2017-04-17 11:55:21','0','2017-10-02 19:02:43','sy_xydt_ad','1','校园动态','11','4028821e5b7a0971015b7a0a1cbf0000/8a2a08425b7a0b7b015b7a0cf4440000','4028821e5b7a0971015b7a0a1cbf0000',NULL,'0','0'), ('8a2a08425b7a0b7b015b7a0ddd780001',NULL,'2017-04-17 11:56:20','0','2017-04-19 22:40:04','sy_xydt_right','1','校园动态（文字）','12','4028821e5b7a0971015b7a0a1cbf0000/8a2a08425b7a0b7b015b7a0ddd780001','4028821e5b7a0971015b7a0a1cbf0000',NULL,'0','0'), ('8a2a08425b7a0b7b015b7a0f32450002',NULL,'2017-04-17 11:57:47','0','2017-04-19 14:18:20','sy_xzjy','1','校长寄语','13','4028821e5b7a0971015b7a0a1cbf0000/8a2a08425b7a0b7b015b7a0f32450002','4028821e5b7a0971015b7a0a1cbf0000',NULL,'0','0'), ('8a2a08425b7a0b7b015b7a105a640003',NULL,'2017-04-17 11:59:03','0','2017-04-19 14:18:24','sy_tzgg','1','通知公告','14','4028821e5b7a0971015b7a0a1cbf0000/8a2a08425b7a0b7b015b7a105a640003','4028821e5b7a0971015b7a0a1cbf0000',NULL,'0','0'), ('8a2a08425b7a0b7b015b7a10d9120004',NULL,'2017-04-17 11:59:36','0','2017-04-19 14:18:29','sy_zsks','1','招生考试','15','4028821e5b7a0971015b7a0a1cbf0000/8a2a08425b7a0b7b015b7a10d9120004','4028821e5b7a0971015b7a0a1cbf0000',NULL,'0','0'), ('8a2a08425b7a0b7b015b7a2a82ab0005',NULL,'2017-04-17 12:27:38','0','2017-04-17 12:27:38','xuexiaogaikuang','0','学校概况','2','8a2a08425b7a0b7b015b7a2a82ab0005',NULL,NULL,'0','0'), ('8a2a08425b7a0b7b015b7a2b0f060006',NULL,'2017-04-17 12:28:13','0','2017-04-20 21:11:52','sy_ad','1','广告位','10','4028821e5b7a0971015b7a0a1cbf0000/8a2a08425b7a0b7b015b7a2b0f060006','4028821e5b7a0971015b7a0a1cbf0000',NULL,'0','0'), ('8a2a08425b7a0b7b015b7a9d0b2e000a',NULL,'2017-04-17 14:32:44','0','2017-04-17 14:35:34','xxgk_xxjj','1','学校简介','1','8a2a08425b7a0b7b015b7a2a82ab0005/8a2a08425b7a0b7b015b7a9d0b2e000a','8a2a08425b7a0b7b015b7a2a82ab0005',NULL,'0','0'), ('8a2a08425b7a0b7b015b7a9fdd47000b',NULL,'2017-04-17 14:35:48','0','2017-04-17 14:35:48','xxgk_xxld','1','学校领导','2','8a2a08425b7a0b7b015b7a2a82ab0005/8a2a08425b7a0b7b015b7a9fdd47000b','8a2a08425b7a0b7b015b7a2a82ab0005',NULL,'0','0'), ('8a2a08425b7a0b7b015b7aa0b065000c',NULL,'2017-04-17 14:36:42','0','2017-04-17 14:36:42','xxgk_xzjy','1','校长寄语','3','8a2a08425b7a0b7b015b7a2a82ab0005/8a2a08425b7a0b7b015b7aa0b065000c','8a2a08425b7a0b7b015b7a2a82ab0005',NULL,'0','0'), ('8a2a08425b7a0b7b015b7aa1330f000d',NULL,'2017-04-17 14:37:16','0','2017-04-17 14:37:16','xxgk_zzjg','1','组织机构','4','8a2a08425b7a0b7b015b7a2a82ab0005/8a2a08425b7a0b7b015b7aa1330f000d','8a2a08425b7a0b7b015b7a2a82ab0005',NULL,'0','0'), ('8a2a08425b7a0b7b015b7aa19a60000e',NULL,'2017-04-17 14:37:42','0','2017-04-17 14:37:42','xxgk_bxcj','1','办学成就','5','8a2a08425b7a0b7b015b7a2a82ab0005/8a2a08425b7a0b7b015b7aa19a60000e','8a2a08425b7a0b7b015b7a2a82ab0005',NULL,'0','0'), ('8a2a08425b7aa230015b7aa35b130000',NULL,'2017-04-17 14:39:37','1','2017-04-17 14:45:37','xxgk_ldgh','1','领导关怀','6','8a2a08425b7aa230015b7aa35b130000','4028821e5b7a9cbf015b7a9f79e00000',NULL,'0','0'), ('8a2a08425b7aa230015b7aa3b3eb0001',NULL,'2017-04-17 14:40:00','1','2017-04-19 22:54:14','ceshi','1','测试','20','8a2a08425b7aa230015b7aa3b3eb0001','4028821e5b7a9cbf015b7a9f79e00000',NULL,'0','0'), ('8a2a08425b7aa230015b7aa6740b0002',NULL,'2017-04-17 14:43:00','0','2017-04-17 14:43:00','xxgk_ldgh','1','领导关怀','6','8a2a08425b7a0b7b015b7a2a82ab0005/8a2a08425b7aa230015b7aa6740b0002','8a2a08425b7a0b7b015b7a2a82ab0005',NULL,'0','0'), ('8a2a08425b7aa230015b7aa6c3ec0003',NULL,'2017-04-17 14:43:21','1','2017-10-02 19:01:22','xxgk_xyfg','1','校园风光','7','8a2a08425b7a0b7b015b7a2a82ab0005/8a2a08425b7aa230015b7aa6c3ec0003','8a2a08425b7a0b7b015b7a2a82ab0005',NULL,'0','0'), ('8a2a08425b7aa230015b7aa9a1ad0004',NULL,'2017-04-17 14:46:29','0','2017-04-17 14:46:29','jxjy_jxyt','1','教学研讨','1','4028821e5b7a9cbf015b7a9f79e00000/8a2a08425b7aa230015b7aa9a1ad0004','4028821e5b7a9cbf015b7a9f79e00000',NULL,'0','0'), ('8a2a08425b7aa230015b7aa9f49d0005',NULL,'2017-04-17 14:46:50','0','2017-04-17 14:46:50','jxjy_jxzx','1','教学资讯','2','4028821e5b7a9cbf015b7a9f79e00000/8a2a08425b7aa230015b7aa9f49d0005','4028821e5b7a9cbf015b7a9f79e00000',NULL,'0','0'), ('8a2a08425b7aa230015b7aaa576d0006',NULL,'2017-04-17 14:47:15','0','2017-04-17 14:47:15','jxjy_szdw','1','师资队伍','3','4028821e5b7a9cbf015b7a9f79e00000/8a2a08425b7aa230015b7aaa576d0006','4028821e5b7a9cbf015b7a9f79e00000',NULL,'0','0'), ('8a2a08425b7aa230015b7aaa9ca10007',NULL,'2017-04-17 14:47:33','0','2017-04-17 14:47:33','jxjy_msfc','1','名师风采','4','4028821e5b7a9cbf015b7a9f79e00000/8a2a08425b7aa230015b7aaa9ca10007','4028821e5b7a9cbf015b7a9f79e00000',NULL,'0','0'), ('8a2a08425b7aa230015b7aaaebf50008',NULL,'2017-04-17 14:47:53','0','2017-04-17 14:47:53','jxjy_xkjs','1','学科建设','5','4028821e5b7a9cbf015b7a9f79e00000/8a2a08425b7aa230015b7aaaebf50008','4028821e5b7a9cbf015b7a9f79e00000',NULL,'0','0'), ('8a2a08425b7aa230015b7aaf09900009',NULL,'2017-04-17 14:52:23','0','2017-04-17 14:52:23','tsjy','0','特色教育','4','8a2a08425b7aa230015b7aaf09900009',NULL,NULL,'0','0'), ('8a2a08425b7aa230015b7aaf5b94000a',NULL,'2017-04-17 14:52:44','0','2017-04-17 14:52:44','tsjy_gfb','1','国防班','1','8a2a08425b7aa230015b7aaf09900009/8a2a08425b7aa230015b7aaf5b94000a','8a2a08425b7aa230015b7aaf09900009',NULL,'0','0'), ('8a2a08425b7aa230015b7aaf99fc000b',NULL,'2017-04-17 14:53:00','0','2017-04-17 14:53:00','tsjy_dly','1','冬令营','2','8a2a08425b7aa230015b7aaf09900009/8a2a08425b7aa230015b7aaf99fc000b','8a2a08425b7aa230015b7aaf09900009',NULL,'0','0'), ('8a2a08425b7aa230015b7aafd6f8000c',NULL,'2017-04-17 14:53:15','0','2017-04-17 14:53:15','tsjy_xly','1','夏令营','3','8a2a08425b7aa230015b7aaf09900009/8a2a08425b7aa230015b7aafd6f8000c','8a2a08425b7aa230015b7aaf09900009',NULL,'0','0'), ('8a2a08425b7aa230015b7ab025c5000d',NULL,'2017-04-17 14:53:36','0','2017-04-17 14:53:36','tsjy_xsjx','1','新生军训','4','8a2a08425b7aa230015b7aaf09900009/8a2a08425b7aa230015b7ab025c5000d','8a2a08425b7aa230015b7aaf09900009',NULL,'0','0'), ('8a2a08425b7aa230015b7ab178b2000e',NULL,'2017-04-17 14:55:02','0','2017-04-17 14:55:02','tsjy_tywhj','1','体育文化节','5','8a2a08425b7aa230015b7aaf09900009/8a2a08425b7aa230015b7ab178b2000e','8a2a08425b7aa230015b7aaf09900009',NULL,'0','0'), ('8a2a08425b7aa230015b7ab29b7e000f',NULL,'2017-04-17 14:56:17','0','2017-04-17 14:56:17','dyzx','0','德育在线','5','8a2a08425b7aa230015b7ab29b7e000f',NULL,NULL,'0','0'), ('8a2a08425b7aa230015b7ab30a3b0010',NULL,'2017-04-17 14:56:45','0','2017-04-17 14:56:45','dyzx_dyln','1','德育理念','1','8a2a08425b7aa230015b7ab29b7e000f/8a2a08425b7aa230015b7ab30a3b0010','8a2a08425b7aa230015b7ab29b7e000f',NULL,'0','0'), ('8a2a08425b7aa230015b7ab381580011',NULL,'2017-04-17 14:57:16','0','2017-04-17 14:57:16','dyzx_dyhd','1','德育活动','2','8a2a08425b7aa230015b7ab29b7e000f/8a2a08425b7aa230015b7ab381580011','8a2a08425b7aa230015b7ab29b7e000f',NULL,'0','0'), ('8a2a08425b7aa230015b7ab3d8580012',NULL,'2017-04-17 14:57:38','0','2017-04-17 14:57:38','dyzx_jzxx','1','家长学校','3','8a2a08425b7aa230015b7ab29b7e000f/8a2a08425b7aa230015b7ab3d8580012','8a2a08425b7aa230015b7ab29b7e000f',NULL,'0','0'), ('8a2a08425b7aa230015b7ab44ea90013',NULL,'2017-04-17 14:58:08','0','2017-04-17 14:58:08','xstd','0','学生天地','6','8a2a08425b7aa230015b7ab44ea90013',NULL,NULL,'0','0'), ('8a2a08425b7aa230015b7ab4ab360014',NULL,'2017-04-17 14:58:32','0','2017-04-17 14:58:32','xstd_xshd','1','学生活动','1','8a2a08425b7aa230015b7ab44ea90013/8a2a08425b7aa230015b7ab4ab360014','8a2a08425b7aa230015b7ab44ea90013',NULL,'0','0'), ('8a2a08425b7aa230015b7ab5134b0015',NULL,'2017-04-17 14:58:59','0','2017-04-17 14:58:59','xstd_ xsfc','1','学生风采','2','8a2a08425b7aa230015b7ab44ea90013/8a2a08425b7aa230015b7ab5134b0015','8a2a08425b7aa230015b7ab44ea90013',NULL,'0','0'), ('8a2a08425b7aa230015b7ab544ef0016',NULL,'2017-04-17 14:59:11','0','2017-04-17 14:59:11','xstd_xshj','1','学生获奖','3','8a2a08425b7aa230015b7ab44ea90013/8a2a08425b7aa230015b7ab544ef0016','8a2a08425b7aa230015b7ab44ea90013',NULL,'0','0'), ('8a2a08425b7aa230015b7ab5bb7d0017',NULL,'2017-04-17 14:59:42','0','2017-04-17 14:59:42','zsks','0','招生考试','7','8a2a08425b7aa230015b7ab5bb7d0017',NULL,NULL,'0','0'), ('8a2a08425b7aa230015b7ab61fcb0018',NULL,'2017-04-17 15:00:07','0','2017-04-17 15:00:07','zsks_zsjz','1','招生简章','1','8a2a08425b7aa230015b7ab5bb7d0017/8a2a08425b7aa230015b7ab61fcb0018','8a2a08425b7aa230015b7ab5bb7d0017',NULL,'0','0'), ('8a2a08425b7aa230015b7ab648660019',NULL,'2017-04-17 15:00:18','0','2017-04-17 15:00:18','zsks_jxj','1','奖学金','2','8a2a08425b7aa230015b7ab5bb7d0017/8a2a08425b7aa230015b7ab648660019','8a2a08425b7aa230015b7ab5bb7d0017',NULL,'0','0'), ('8a2a08425b7aa230015b7ab6a12d001a',NULL,'2017-04-17 15:00:40','0','2017-04-17 15:00:40','zsks_zszx','1','招生咨询','3','8a2a08425b7aa230015b7ab5bb7d0017/8a2a08425b7aa230015b7ab6a12d001a','8a2a08425b7aa230015b7ab5bb7d0017',NULL,'0','0'), ('8a2a08425b7aa230015b7ab6e46b001b',NULL,'2017-04-17 15:00:58','0','2017-04-17 15:00:58','zsks_zxbm','1','在线报名','4','8a2a08425b7aa230015b7ab5bb7d0017/8a2a08425b7aa230015b7ab6e46b001b','8a2a08425b7aa230015b7ab5bb7d0017',NULL,'0','0'), ('8a2a08425b7aa230015b7ab72967001c',NULL,'2017-04-17 15:01:15','0','2017-04-17 15:01:15','zsks_gkzx','1','高考资讯','5','8a2a08425b7aa230015b7ab5bb7d0017/8a2a08425b7aa230015b7ab72967001c','8a2a08425b7aa230015b7ab5bb7d0017',NULL,'0','0'), ('8a2a08425b7aa230015b7ab7f0ae001d',NULL,'2017-04-17 15:02:06','0','2017-04-17 15:02:06','lxwm','0','联系我们','8','8a2a08425b7aa230015b7ab7f0ae001d',NULL,NULL,'0','0'), ('8a2a08425b7aa230015b7ab849e6001e',NULL,'2017-04-17 15:02:29','0','2017-10-02 14:15:51','lxwm_lxwm','1','联系我们','1','8a2a08425b7aa230015b7ab7f0ae001d/8a2a08425b7aa230015b7ab849e6001e','8a2a08425b7aa230015b7ab7f0ae001d',NULL,'0','1'), ('8a2a08425b7aa230015b7ab88685001f',NULL,'2017-04-17 15:02:45','0','2017-04-17 15:02:45','lxwm_xzxx','1','校长信箱','2','8a2a08425b7aa230015b7ab7f0ae001d/8a2a08425b7aa230015b7ab88685001f','8a2a08425b7aa230015b7ab7f0ae001d',NULL,'0','0');
INSERT INTO `org_resource` VALUES ('2c9025ab5adb1eef015adb2e74b90000',NULL,'2017-03-17 15:32:19','0','2017-03-17 15:32:19','','修改密码','90','module','/user/update_pwd',NULL), ('2c9025ab5adb1eef015adb32ffb90001',NULL,'2017-03-17 15:37:16','0','2017-03-17 15:37:16','','内容管理','30','module','',NULL), ('2c9025ab5adb1eef015adb36bac60002',NULL,'2017-03-17 15:41:21','0','2017-03-17 16:17:12','','栏目列表','31','page','/cms/column/list','2c9025ab5adb1eef015adb32ffb90001'), ('2c9025ab5adb1eef015adb37ccd50003',NULL,'2017-03-17 15:42:31','0','2017-03-17 16:17:21','','文章列表','32','page','/cms/article/list','2c9025ab5adb1eef015adb32ffb90001'), ('2c9025ab5b140c22015b140fbbd30000',NULL,'2017-03-28 16:37:07','0','2017-03-28 16:37:07','','换肤管理','20','module','/user/skin/list',NULL), ('70',NULL,'2016-08-17 17:06:19','0','2016-10-28 17:02:57','','权限管理','10','module','/user/list',NULL), ('71',NULL,'2016-09-07 15:15:58','0','2016-10-28 17:03:06','','用户列表','11','page','/user/list','70'), ('72',NULL,'2016-09-07 15:17:37','0','2016-10-28 17:03:13','','角色列表','12','page','/user/role_list','70'), ('73',NULL,'2016-09-18 16:34:14','0','2016-10-28 17:03:19','','菜单列表','13','page','/user/menu_list','70'), ('8a9480a65ebd920b015ebd9c836c0000',NULL,'2017-09-26 17:55:04',NULL,'2017-09-26 17:56:15','','测试','100','module','',NULL), ('8a9480a65ebd920b015ebd9cf3bc0001',NULL,'2017-09-26 17:55:33',NULL,'2017-09-26 17:56:10','','测试01','101','page','/cms/column/list','8a9480a65ebd920b015ebd9c836c0000');
INSERT INTO `org_role` VALUES ('2c9025ab5a6f2b85015a6f2cef950000',NULL,'2017-02-24 16:11:40','0','2017-02-24 16:11:40',NULL,'可以分配后台用户','权限管理员',NULL,'',NULL), ('402881e457f075530157f0791e2f0000',NULL,'2016-10-23 15:37:31','0','2017-02-24 16:11:20',NULL,'拥有所有的权限','超级管理员',NULL,'role_admin',NULL);
INSERT INTO `org_role_resource_rel` VALUES ('2c9025ab5a6f2b85015a6f2cef950000','2c9025ab5adb1eef015adb2e74b90000'), ('2c9025ab5ada5755015ada59461d0000','2c9025ab5adb1eef015adb2e74b90000'), ('402881e457f075530157f0791e2f0000','2c9025ab5adb1eef015adb2e74b90000'), ('402881e457f075530157f0791e2f0000','2c9025ab5adb1eef015adb32ffb90001'), ('402881e457f075530157f0791e2f0000','2c9025ab5adb1eef015adb36bac60002'), ('402881e457f075530157f0791e2f0000','2c9025ab5adb1eef015adb37ccd50003'), ('402881e457f075530157f0791e2f0000','2c9025ab5b140c22015b140fbbd30000'), ('2c9025ab5a6f2b85015a6f2cef950000','70'), ('402881e457f075530157f0791e2f0000','70'), ('2c9025ab5a6f2b85015a6f2cef950000','71'), ('402881e457f075530157f0791e2f0000','71'), ('2c9025ab5a6f2b85015a6f2cef950000','72'), ('402881e457f075530157f0791e2f0000','72'), ('2c9025ab5a6f2b85015a6f2cef950000','73'), ('402881e457f075530157f0791e2f0000','73');
INSERT INTO `org_user` VALUES ('4028821e5b7a6947015b7a6ebacf0000',NULL,'2016-08-17 15:17:02','0','2017-04-20 21:48:41',NULL,'','E10ADC3949BA59ABBE56E057F20F883E','超级管理员','1','admin','0','skin_blue'), ('8a9480a65ebd920b015ebda0236c0002',NULL,'2017-09-26 17:59:02','0','2017-09-26 17:59:02',NULL,'','670A017307D8AAE23EC1C27138FF027E','','1','yayatest','0',NULL);
INSERT INTO `org_user_role_rel` VALUES ('4028821e5b7a6947015b7a6ebacf0000','2c9025ab5a6f2b85015a6f2cef950000'), ('8a9480a65ebd920b015ebda0236c0002','2c9025ab5a6f2b85015a6f2cef950000'), ('4028821e5b7a6947015b7a6ebacf0000','402881e457f075530157f0791e2f0000'), ('8a9480a65ebd920b015ebda0236c0002','402881e457f075530157f0791e2f0000');
