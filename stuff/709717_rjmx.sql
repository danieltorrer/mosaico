/*
 Navicat Premium Data Transfer

 Source Server         : RedJuvenilMX Rackspace
 Source Server Type    : MySQL
 Source Server Version : 50161
 Source Host           : 50.57.219.115
 Source Database       : 709717_rjmx

 Target Server Type    : MySQL
 Target Server Version : 50161
 File Encoding         : utf-8

 Date: 11/19/2012 19:47:38 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `answer_quiz_debate`
-- ----------------------------
DROP TABLE IF EXISTS `answer_quiz_debate`;
CREATE TABLE `answer_quiz_debate` (
  `idanswer_quiz_debate` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(200) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `idquiz_debate` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idanswer_quiz_debate`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `answer_quiz_workshop`
-- ----------------------------
DROP TABLE IF EXISTS `answer_quiz_workshop`;
CREATE TABLE `answer_quiz_workshop` (
  `idanswer_quiz_workshop` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(200) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `idquiz_workshop` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idanswer_quiz_workshop`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `api_log`
-- ----------------------------
DROP TABLE IF EXISTS `api_log`;
CREATE TABLE `api_log` (
  `idapi_log` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(120) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `user_agent` text,
  `country` varchar(45) DEFAULT NULL,
  `call` varchar(45) DEFAULT NULL,
  `app` varchar(45) DEFAULT NULL,
  `apikey` varchar(45) DEFAULT NULL,
  `request_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idapi_log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `app`
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `idapp` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(45) DEFAULT NULL,
  `apikey` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idapp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `article_category_column`
-- ----------------------------
DROP TABLE IF EXISTS `article_category_column`;
CREATE TABLE `article_category_column` (
  `idarticle_category_column` int(11) NOT NULL AUTO_INCREMENT,
  `idarticle_column` int(11) NOT NULL,
  `idcategory_column` int(11) NOT NULL,
  PRIMARY KEY (`idarticle_category_column`,`idarticle_column`,`idcategory_column`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `article_category_editorial`
-- ----------------------------
DROP TABLE IF EXISTS `article_category_editorial`;
CREATE TABLE `article_category_editorial` (
  `idarticle_category_editorial` int(11) NOT NULL AUTO_INCREMENT,
  `idarticle_editorial` int(11) NOT NULL,
  `idcategory_editorial` int(11) NOT NULL,
  PRIMARY KEY (`idarticle_category_editorial`,`idarticle_editorial`,`idcategory_editorial`),
  KEY `fk_article_category_editorial_article_editorial1` (`idarticle_editorial`),
  KEY `fk_article_category_editorial_category_editorial1` (`idcategory_editorial`),
  CONSTRAINT `fk_article_category_editorial_article_editorial1` FOREIGN KEY (`idarticle_editorial`) REFERENCES `article_editorial` (`idarticle_editorial`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_article_category_editorial_category_editorial1` FOREIGN KEY (`idcategory_editorial`) REFERENCES `category_editorial` (`idcategory_editorial`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=738 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `article_category_project`
-- ----------------------------
DROP TABLE IF EXISTS `article_category_project`;
CREATE TABLE `article_category_project` (
  `idarticle_category_project` int(11) NOT NULL AUTO_INCREMENT,
  `idarticle_project` int(11) NOT NULL,
  `idcategory_project` int(11) NOT NULL,
  PRIMARY KEY (`idarticle_category_project`,`idarticle_project`,`idcategory_project`),
  KEY `fk_article_category_project_article_project1` (`idarticle_project`),
  KEY `fk_article_category_project_category_project1` (`idcategory_project`),
  CONSTRAINT `fk_article_category_project_article_project1` FOREIGN KEY (`idarticle_project`) REFERENCES `article_project` (`idarticle_project`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_article_category_project_category_project1` FOREIGN KEY (`idcategory_project`) REFERENCES `category_project` (`idcategory_project`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `article_column`
-- ----------------------------
DROP TABLE IF EXISTS `article_column`;
CREATE TABLE `article_column` (
  `idarticle_column` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `content` text,
  `idauthor` int(11) DEFAULT NULL,
  `excerpt` text,
  `featured_image` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idarticle_column`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `article_editorial`
-- ----------------------------
DROP TABLE IF EXISTS `article_editorial`;
CREATE TABLE `article_editorial` (
  `idarticle_editorial` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `content` text,
  `idauthor` int(11) DEFAULT NULL,
  `excerpt` text,
  `featured_image` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idarticle_editorial`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `article_project`
-- ----------------------------
DROP TABLE IF EXISTS `article_project`;
CREATE TABLE `article_project` (
  `idarticle_project` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `content` text,
  `idauthor` int(11) DEFAULT NULL,
  `excerpt` text,
  `featured_image` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idarticle_project`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `article_tag_column`
-- ----------------------------
DROP TABLE IF EXISTS `article_tag_column`;
CREATE TABLE `article_tag_column` (
  `idarticle_tag_column` int(11) NOT NULL AUTO_INCREMENT,
  `idarticle_column` int(11) NOT NULL,
  `idtag_column` int(11) NOT NULL,
  PRIMARY KEY (`idarticle_tag_column`,`idarticle_column`,`idtag_column`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `article_tag_editorial`
-- ----------------------------
DROP TABLE IF EXISTS `article_tag_editorial`;
CREATE TABLE `article_tag_editorial` (
  `idarticle_tag_editorial` int(11) NOT NULL AUTO_INCREMENT,
  `idarticle_editorial` int(11) NOT NULL,
  `idtag_editorial` int(11) NOT NULL,
  PRIMARY KEY (`idarticle_tag_editorial`,`idarticle_editorial`,`idtag_editorial`),
  KEY `fk_article_tag_editorial_article_editorial1` (`idarticle_editorial`),
  KEY `fk_article_tag_editorial_tag_editorial1` (`idtag_editorial`),
  CONSTRAINT `fk_article_tag_editorial_article_editorial1` FOREIGN KEY (`idarticle_editorial`) REFERENCES `article_editorial` (`idarticle_editorial`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_article_tag_editorial_tag_editorial1` FOREIGN KEY (`idtag_editorial`) REFERENCES `tag_editorial` (`idtag_editorial`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `article_tag_project`
-- ----------------------------
DROP TABLE IF EXISTS `article_tag_project`;
CREATE TABLE `article_tag_project` (
  `idarticle_tag_project` int(11) NOT NULL AUTO_INCREMENT,
  `idarticle_project` int(11) NOT NULL,
  `idtag_project` int(11) NOT NULL,
  PRIMARY KEY (`idarticle_tag_project`,`idarticle_project`,`idtag_project`),
  KEY `fk_article_tag_editorial_article_project1` (`idarticle_project`),
  KEY `fk_article_tag_editorial_tag_project1` (`idtag_project`),
  CONSTRAINT `fk_article_tag_editorial_article_project1` FOREIGN KEY (`idarticle_project`) REFERENCES `article_project` (`idarticle_project`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_article_tag_editorial_tag_project1` FOREIGN KEY (`idtag_project`) REFERENCES `tag_project` (`idtag_project`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `article_user`
-- ----------------------------
DROP TABLE IF EXISTS `article_user`;
CREATE TABLE `article_user` (
  `idarticle_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `content` text,
  `url` varchar(200) DEFAULT NULL,
  `comment` text,
  `iduser` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idarticle_user`,`iduser`),
  KEY `fk_article_user_user1` (`iduser`),
  CONSTRAINT `fk_article_user_user1` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `badge`
-- ----------------------------
DROP TABLE IF EXISTS `badge`;
CREATE TABLE `badge` (
  `idbadge` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` text,
  `url` varchar(200) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `message` text,
  `idgame` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idbadge`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `badge_user`
-- ----------------------------
DROP TABLE IF EXISTS `badge_user`;
CREATE TABLE `badge_user` (
  `idbadge_user` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) DEFAULT NULL,
  `idbadge` int(11) DEFAULT NULL,
  PRIMARY KEY (`idbadge_user`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `category_column`
-- ----------------------------
DROP TABLE IF EXISTS `category_column`;
CREATE TABLE `category_column` (
  `idcategory_column` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `slug` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcategory_column`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `category_editorial`
-- ----------------------------
DROP TABLE IF EXISTS `category_editorial`;
CREATE TABLE `category_editorial` (
  `idcategory_editorial` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `slug` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcategory_editorial`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `category_project`
-- ----------------------------
DROP TABLE IF EXISTS `category_project`;
CREATE TABLE `category_project` (
  `idcategory_project` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `slug` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcategory_project`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `codigo`
-- ----------------------------
DROP TABLE IF EXISTS `codigo`;
CREATE TABLE `codigo` (
  `idcodigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_postal` varchar(5) DEFAULT NULL,
  `municipio` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcodigo`)
) ENGINE=InnoDB AUTO_INCREMENT=133337 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `idcomment` int(11) NOT NULL AUTO_INCREMENT,
  `url` text,
  `text` text,
  `iduser` int(11) DEFAULT NULL,
  `reply` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcomment`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `comment_user`
-- ----------------------------
DROP TABLE IF EXISTS `comment_user`;
CREATE TABLE `comment_user` (
  `idcomment_user` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`idcomment_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `crew`
-- ----------------------------
DROP TABLE IF EXISTS `crew`;
CREATE TABLE `crew` (
  `idcrew` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idcrew`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `crew_project`
-- ----------------------------
DROP TABLE IF EXISTS `crew_project`;
CREATE TABLE `crew_project` (
  `idcrew_project` int(11) NOT NULL AUTO_INCREMENT,
  `idcrew` int(11) NOT NULL,
  PRIMARY KEY (`idcrew_project`,`idcrew`),
  KEY `fk_crew_project_crew1` (`idcrew`),
  CONSTRAINT `fk_crew_project_crew1` FOREIGN KEY (`idcrew`) REFERENCES `crew` (`idcrew`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `debate`
-- ----------------------------
DROP TABLE IF EXISTS `debate`;
CREATE TABLE `debate` (
  `iddebate` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `subtitle` varchar(100) DEFAULT NULL,
  `slug` varchar(110) DEFAULT NULL,
  `content` text,
  `excerpt` text,
  `web` varchar(120) DEFAULT NULL,
  `featured_image` varchar(200) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddebate`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `debate_resource`
-- ----------------------------
DROP TABLE IF EXISTS `debate_resource`;
CREATE TABLE `debate_resource` (
  `iddebate_resource` int(11) NOT NULL AUTO_INCREMENT,
  `iddebate` int(11) NOT NULL,
  `idresource_debate` int(11) NOT NULL,
  PRIMARY KEY (`iddebate_resource`,`iddebate`,`idresource_debate`),
  KEY `fk_debate_resource_debate1` (`iddebate`),
  KEY `fk_debate_resource_resource_debate1` (`idresource_debate`),
  CONSTRAINT `fk_debate_resource_debate1` FOREIGN KEY (`iddebate`) REFERENCES `debate` (`iddebate`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_debate_resource_resource_debate1` FOREIGN KEY (`idresource_debate`) REFERENCES `resource_debate` (`idresource_debate`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `debate_tag`
-- ----------------------------
DROP TABLE IF EXISTS `debate_tag`;
CREATE TABLE `debate_tag` (
  `iddebate_tag` int(11) NOT NULL AUTO_INCREMENT,
  `iddebate` int(11) NOT NULL,
  `idtag_debate` int(11) NOT NULL,
  PRIMARY KEY (`iddebate_tag`,`iddebate`,`idtag_debate`),
  KEY `fk_debate_tag_debate1` (`iddebate`),
  KEY `fk_debate_tag_tag_debate1` (`idtag_debate`),
  CONSTRAINT `fk_debate_tag_debate1` FOREIGN KEY (`iddebate`) REFERENCES `debate` (`iddebate`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_debate_tag_tag_debate1` FOREIGN KEY (`idtag_debate`) REFERENCES `tag_debate` (`idtag_debate`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `debate_user`
-- ----------------------------
DROP TABLE IF EXISTS `debate_user`;
CREATE TABLE `debate_user` (
  `iddebate_user` int(11) NOT NULL AUTO_INCREMENT,
  `iddebate` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`iddebate_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `debate_video`
-- ----------------------------
DROP TABLE IF EXISTS `debate_video`;
CREATE TABLE `debate_video` (
  `iddebate_video` int(11) NOT NULL AUTO_INCREMENT,
  `iddebate` int(11) NOT NULL,
  `idvideo_debate` int(11) NOT NULL,
  PRIMARY KEY (`iddebate_video`,`iddebate`,`idvideo_debate`),
  KEY `fk_debate_video_debate1` (`iddebate`),
  KEY `fk_debate_video_video_debate1` (`idvideo_debate`),
  CONSTRAINT `fk_debate_video_debate1` FOREIGN KEY (`iddebate`) REFERENCES `debate` (`iddebate`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_debate_video_video_debate1` FOREIGN KEY (`idvideo_debate`) REFERENCES `video_debate` (`idvideo_debate`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `extra`
-- ----------------------------
DROP TABLE IF EXISTS `extra`;
CREATE TABLE `extra` (
  `idextra` int(11) NOT NULL AUTO_INCREMENT,
  `employment` varchar(200) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `facebook_id` varchar(45) DEFAULT NULL,
  `access_token` varchar(200) DEFAULT NULL,
  `access_token_long` varchar(200) DEFAULT NULL,
  `publish` int(11) DEFAULT NULL,
  `iduser` int(11) NOT NULL,
  PRIMARY KEY (`idextra`,`iduser`),
  KEY `fk_extra_user1` (`iduser`),
  CONSTRAINT `fk_extra_user1` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `follower_group`
-- ----------------------------
DROP TABLE IF EXISTS `follower_group`;
CREATE TABLE `follower_group` (
  `idfollower_group` int(11) NOT NULL AUTO_INCREMENT,
  `idgroup` int(11) DEFAULT NULL,
  `idfollower` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfollower_group`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `follower_project`
-- ----------------------------
DROP TABLE IF EXISTS `follower_project`;
CREATE TABLE `follower_project` (
  `idfollower_project` int(11) NOT NULL AUTO_INCREMENT,
  `idproject` int(11) DEFAULT NULL,
  `idfollower` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfollower_project`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `follower_user`
-- ----------------------------
DROP TABLE IF EXISTS `follower_user`;
CREATE TABLE `follower_user` (
  `idfollower_user` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) DEFAULT NULL,
  `idfollower` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfollower_user`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `form`
-- ----------------------------
DROP TABLE IF EXISTS `form`;
CREATE TABLE `form` (
  `idform` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(160) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` text,
  `idtype_form` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idform`,`idtype_form`),
  KEY `fk_form_type_form1` (`idtype_form`),
  CONSTRAINT `fk_form_type_form1` FOREIGN KEY (`idtype_form`) REFERENCES `type_form` (`idtype_form`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `game`
-- ----------------------------
DROP TABLE IF EXISTS `game`;
CREATE TABLE `game` (
  `idgame` int(11) NOT NULL AUTO_INCREMENT,
  `game` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgame`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `gamification`
-- ----------------------------
DROP TABLE IF EXISTS `gamification`;
CREATE TABLE `gamification` (
  `idgamification` int(11) NOT NULL AUTO_INCREMENT,
  `idgame` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  PRIMARY KEY (`idgamification`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `group`
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `idgroup` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `cover` varchar(200) DEFAULT NULL,
  `iduser` int(11) NOT NULL,
  `description` text,
  `date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idgroup`,`iduser`),
  KEY `fk_group_user1` (`iduser`),
  CONSTRAINT `fk_group_user1` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `helper_project`
-- ----------------------------
DROP TABLE IF EXISTS `helper_project`;
CREATE TABLE `helper_project` (
  `idhelper_project` int(11) NOT NULL AUTO_INCREMENT,
  `idproject` int(11) DEFAULT NULL,
  `idhelper` int(11) DEFAULT NULL,
  PRIMARY KEY (`idhelper_project`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `like_comment`
-- ----------------------------
DROP TABLE IF EXISTS `like_comment`;
CREATE TABLE `like_comment` (
  `idlike_comment` int(11) NOT NULL AUTO_INCREMENT,
  `idcomment` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  PRIMARY KEY (`idlike_comment`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `log_user`
-- ----------------------------
DROP TABLE IF EXISTS `log_user`;
CREATE TABLE `log_user` (
  `idlog_user` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `related` int(11) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idlog_user`)
) ENGINE=InnoDB AUTO_INCREMENT=525 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `page`
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `idpage` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `content` text,
  `featured_image` varchar(100) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpage`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `profile`
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `idprofile` int(11) NOT NULL AUTO_INCREMENT,
  `profile` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idprofile`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `project`
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `idproject` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `cover` varchar(200) DEFAULT NULL,
  `iduser` int(11) NOT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `twitter` varchar(45) DEFAULT NULL,
  `facebook` varchar(45) DEFAULT NULL,
  `who` text,
  `what` text,
  `how` text,
  `advice` text,
  `idtype_project` int(11) NOT NULL,
  `state` varchar(45) DEFAULT NULL,
  `town` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idproject`,`iduser`,`idtype_project`),
  KEY `fk_project_user1` (`iduser`),
  KEY `fk_project_type_project1` (`idtype_project`),
  CONSTRAINT `fk_project_user1` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_project_type_project1` FOREIGN KEY (`idtype_project`) REFERENCES `type_project` (`idtype_project`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `quiz_debate`
-- ----------------------------
DROP TABLE IF EXISTS `quiz_debate`;
CREATE TABLE `quiz_debate` (
  `idquiz_debate` int(11) NOT NULL AUTO_INCREMENT,
  `quiz` varchar(200) DEFAULT NULL,
  `iddebate` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idquiz_debate`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `quiz_workshop`
-- ----------------------------
DROP TABLE IF EXISTS `quiz_workshop`;
CREATE TABLE `quiz_workshop` (
  `idquiz_workshop` int(11) NOT NULL AUTO_INCREMENT,
  `quiz` varchar(200) DEFAULT NULL,
  `idworkshop` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idquiz_workshop`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `read_user`
-- ----------------------------
DROP TABLE IF EXISTS `read_user`;
CREATE TABLE `read_user` (
  `idread_user` int(11) NOT NULL AUTO_INCREMENT,
  `idarticle` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`idread_user`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `reminder_group`
-- ----------------------------
DROP TABLE IF EXISTS `reminder_group`;
CREATE TABLE `reminder_group` (
  `idreminder_group` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `date` datetime DEFAULT NULL,
  `idgroup` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idreminder_group`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `resource_debate`
-- ----------------------------
DROP TABLE IF EXISTS `resource_debate`;
CREATE TABLE `resource_debate` (
  `idresource_debate` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `resource` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idresource_debate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `resource_workshop`
-- ----------------------------
DROP TABLE IF EXISTS `resource_workshop`;
CREATE TABLE `resource_workshop` (
  `idresource_workshop` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `resource` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`idresource_workshop`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `share_user`
-- ----------------------------
DROP TABLE IF EXISTS `share_user`;
CREATE TABLE `share_user` (
  `idshare_user` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(45) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`idshare_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `sidebar`
-- ----------------------------
DROP TABLE IF EXISTS `sidebar`;
CREATE TABLE `sidebar` (
  `idsidebar` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `section` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsidebar`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `tag_column`
-- ----------------------------
DROP TABLE IF EXISTS `tag_column`;
CREATE TABLE `tag_column` (
  `idtag_column` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtag_column`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `tag_debate`
-- ----------------------------
DROP TABLE IF EXISTS `tag_debate`;
CREATE TABLE `tag_debate` (
  `idtag_debate` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtag_debate`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `tag_editorial`
-- ----------------------------
DROP TABLE IF EXISTS `tag_editorial`;
CREATE TABLE `tag_editorial` (
  `idtag_editorial` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtag_editorial`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `tag_project`
-- ----------------------------
DROP TABLE IF EXISTS `tag_project`;
CREATE TABLE `tag_project` (
  `idtag_project` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtag_project`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `tag_workshop`
-- ----------------------------
DROP TABLE IF EXISTS `tag_workshop`;
CREATE TABLE `tag_workshop` (
  `idtag_workshop` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtag_workshop`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `type_form`
-- ----------------------------
DROP TABLE IF EXISTS `type_form`;
CREATE TABLE `type_form` (
  `idtype_form` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtype_form`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `type_project`
-- ----------------------------
DROP TABLE IF EXISTS `type_project`;
CREATE TABLE `type_project` (
  `idtype_project` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idtype_project`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `publicname` varchar(100) DEFAULT NULL,
  `web` varchar(120) DEFAULT NULL,
  `twitter` varchar(120) DEFAULT NULL,
  `facebook` varchar(120) DEFAULT NULL,
  `avatar` varchar(120) DEFAULT NULL,
  `bio` text,
  `idprofile` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`iduser`,`idprofile`),
  KEY `fk_user_profile` (`idprofile`),
  CONSTRAINT `fk_user_profile` FOREIGN KEY (`idprofile`) REFERENCES `profile` (`idprofile`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `video_debate`
-- ----------------------------
DROP TABLE IF EXISTS `video_debate`;
CREATE TABLE `video_debate` (
  `idvideo_debate` int(11) NOT NULL AUTO_INCREMENT,
  `video` text,
  PRIMARY KEY (`idvideo_debate`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `video_workshop`
-- ----------------------------
DROP TABLE IF EXISTS `video_workshop`;
CREATE TABLE `video_workshop` (
  `idvideo_workshop` int(11) NOT NULL AUTO_INCREMENT,
  `video` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idvideo_workshop`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `workshop`
-- ----------------------------
DROP TABLE IF EXISTS `workshop`;
CREATE TABLE `workshop` (
  `idworkshop` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `subtitle` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `content` text,
  `excerpt` text,
  `web` varchar(120) DEFAULT NULL,
  `featured_image` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idworkshop`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `workshop_resource`
-- ----------------------------
DROP TABLE IF EXISTS `workshop_resource`;
CREATE TABLE `workshop_resource` (
  `idworkshop_resource` int(11) NOT NULL AUTO_INCREMENT,
  `idworkshop` int(11) NOT NULL,
  `idresource_workshop` int(11) NOT NULL,
  PRIMARY KEY (`idworkshop_resource`,`idworkshop`,`idresource_workshop`),
  KEY `fk_workshop_resource_workshop1` (`idworkshop`),
  KEY `fk_workshop_resource_resource_workshop1` (`idresource_workshop`),
  CONSTRAINT `fk_workshop_resource_resource_workshop1` FOREIGN KEY (`idresource_workshop`) REFERENCES `resource_workshop` (`idresource_workshop`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_workshop_resource_workshop1` FOREIGN KEY (`idworkshop`) REFERENCES `workshop` (`idworkshop`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `workshop_tag`
-- ----------------------------
DROP TABLE IF EXISTS `workshop_tag`;
CREATE TABLE `workshop_tag` (
  `idworkshop_tag` int(11) NOT NULL AUTO_INCREMENT,
  `idworkshop` int(11) NOT NULL,
  `idtag_workshop` int(11) NOT NULL,
  PRIMARY KEY (`idworkshop_tag`,`idworkshop`,`idtag_workshop`),
  KEY `fk_workshop_tag_workshop1` (`idworkshop`),
  KEY `fk_workshop_tag_tag_workshop1` (`idtag_workshop`),
  CONSTRAINT `fk_workshop_tag_workshop1` FOREIGN KEY (`idworkshop`) REFERENCES `workshop` (`idworkshop`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_workshop_tag_tag_workshop1` FOREIGN KEY (`idtag_workshop`) REFERENCES `tag_workshop` (`idtag_workshop`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `workshop_user`
-- ----------------------------
DROP TABLE IF EXISTS `workshop_user`;
CREATE TABLE `workshop_user` (
  `idworkshop_user` int(11) NOT NULL AUTO_INCREMENT,
  `idworkshop` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`idworkshop_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `workshop_video`
-- ----------------------------
DROP TABLE IF EXISTS `workshop_video`;
CREATE TABLE `workshop_video` (
  `idworkshop_video` int(11) NOT NULL AUTO_INCREMENT,
  `idworkshop` int(11) NOT NULL,
  `idvideo_workshop` int(11) NOT NULL,
  PRIMARY KEY (`idworkshop_video`,`idworkshop`,`idvideo_workshop`),
  KEY `fk_workshop_video_workshop1` (`idworkshop`),
  KEY `fk_workshop_video_video_workshop1` (`idvideo_workshop`),
  CONSTRAINT `fk_workshop_video_workshop1` FOREIGN KEY (`idworkshop`) REFERENCES `workshop` (`idworkshop`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_workshop_video_video_workshop1` FOREIGN KEY (`idvideo_workshop`) REFERENCES `video_workshop` (`idvideo_workshop`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

SET FOREIGN_KEY_CHECKS = 1;
