# Host: 123.206.9.233  (Version: 5.1.73)
# Date: 2021-03-20 10:27:48
# Generator: MySQL-Front 5.3  (Build 4.128)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin"
#

CREATE TABLE `admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `creattime` datetime DEFAULT NULL,
  `flag` int(4) DEFAULT NULL,
  `isuse` int(4) DEFAULT NULL,
  `logintimes` int(4) DEFAULT NULL,
  `quanxian` varchar(1000) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

#
# Data for table "admin"
#

INSERT INTO `admin` VALUES (1,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-04 02:26:21',1,1,126,'1');

#
# Structure for table "adminlog"
#

CREATE TABLE `adminlog` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  `loginip` varchar(50) DEFAULT NULL,
  `useros` varchar(50) DEFAULT NULL,
  `ok` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=gb2312;

#
# Data for table "adminlog"
#

INSERT INTO `adminlog` VALUES (43,'admin','ae7783f0ae4cb82dfe39bb4ec4a53047','2021-03-04 02:26:21','Mozilla/4.0 (compatible','127.0.0.1','true'),(44,'admin','ae7783f0ae4cb82dfe39bb4ec4a53047','2021-03-04 02:33:17','Mozilla/4.0 (compatible','127.0.0.1','true'),(45,'admin','ae7783f0ae4cb82dfe39bb4ec4a53047','2021-03-04 02:33:21','Mozilla/4.0 (compatible','127.0.0.1','true'),(46,'admin','ae7783f0ae4cb82dfe39bb4ec4a53047','2021-03-04 03:14:13','Mozilla/4.0 (compatible','127.0.0.1','true'),(47,'admin','ae7783f0ae4cb82dfe39bb4ec4a53047','2021-03-04 13:45:52','Mozilla/4.0 (compatible','127.0.0.1','true'),(48,'admin','ae7783f0ae4cb82dfe39bb4ec4a53047','2021-03-04 22:30:35','Mozilla/4.0 (compatible','127.0.0.1','true'),(49,'admin','ae7783f0ae4cb82dfe39bb4ec4a53047','2021-03-04 23:14:10','Mozilla/4.0 (compatible','127.0.0.1','true'),(50,'admin','ae7783f0ae4cb82dfe39bb4ec4a53047','2021-03-04 23:23:15','Mozilla/4.0 (compatible','127.0.0.1','true'),(51,'a','a','2021-05-29 21:53:18','Mozilla/4.0 (compatible','0:0:0:0:0:0:0:1','false'),(52,'admin','ae7783f0ae4cb82dfe39bb4ec4a53047','2021-05-29 21:53:25','Mozilla/4.0 (compatible','0:0:0:0:0:0:0:1','true'),(53,'admin','ae7783f0ae4cb82dfe39bb4ec4a53047','2021-06-17 13:46:09','Mozilla/4.0 (compatible','0:0:0:0:0:0:0:1','true'),(54,'admin','ae7783f0ae4cb82dfe39bb4ec4a53047','2021-06-17 13:50:23','Mozilla/4.0 (compatible','0:0:0:0:0:0:0:1','true'),(55,'admin','202cb962ac59075b964b07152d234b70','2021-03-14 15:29:22','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(56,'admin','202cb962ac59075b964b07152d234b70','2021-03-15 11:03:47','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(57,'admin','202cb962ac59075b964b07152d234b70','2021-03-15 15:04:39','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(58,'admin','202cb962ac59075b964b07152d234b70','2021-03-15 15:04:46','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(59,'admin','202cb962ac59075b964b07152d234b70','2021-03-15 15:07:14','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(60,'admin','202cb962ac59075b964b07152d234b70','2021-03-15 15:11:15','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(61,'admin','202cb962ac59075b964b07152d234b70','2021-03-15 15:14:10','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(62,'admin','202cb962ac59075b964b07152d234b70','2021-03-15 15:19:08','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(63,'admin','202cb962ac59075b964b07152d234b70','2021-03-15 15:20:20','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(64,'admin','202cb962ac59075b964b07152d234b70','2021-03-15 15:24:56','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(65,'admin','202cb962ac59075b964b07152d234b70','2021-03-15 16:05:36','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(66,'admin','202cb962ac59075b964b07152d234b70','2021-03-15 16:05:50','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(67,'admin','202cb962ac59075b964b07152d234b70','2021-03-15 16:06:36','Mozilla/5.0 (compatible','0:0:0:0:0:0:0:1','true'),(68,'admin','202cb962ac59075b964b07152d234b70','2021-03-15 16:07:08','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(69,'admin','202cb962ac59075b964b07152d234b70','2021-03-15 16:08:20','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(70,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:27:42','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(71,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:30:03','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(72,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:31:09','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(73,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:31:21','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(74,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:31:33','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(75,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:31:37','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(76,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:31:39','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(77,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:32:03','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(78,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:32:06','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(79,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:32:23','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(80,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:32:33','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(81,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:34:04','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(82,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:34:47','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(83,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:35:35','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(84,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:35:37','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(85,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:37:16','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(86,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:41:24','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(87,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:44:30','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(88,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:44:32','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(89,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:44:52','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(90,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:45:43','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(91,'admin','202cb962ac59075b964b07152d234b70','2021-03-16 11:45:59','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(92,'admin','admin','2021-03-17 11:09:25','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','false'),(93,'admin','202cb962ac59075b964b07152d234b70','2021-03-17 11:09:33','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(94,'admin','202cb962ac59075b964b07152d234b70','2021-03-17 11:10:00','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(95,'admin','admin','2021-03-17 11:10:11','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','false'),(96,'admin','admin','2021-03-17 11:10:47','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','false'),(97,'admin','admin','2021-03-17 11:10:51','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','false'),(98,'admin','admin','2021-03-17 11:11:07','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','false'),(99,'Username','******','2021-03-17 11:11:24','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','false'),(100,'admin','admin','2021-03-17 11:11:28','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','false'),(101,'admin','202cb962ac59075b964b07152d234b70','2021-03-17 11:11:31','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(102,'admin','admin','2021-03-17 11:12:03','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','false'),(103,'admin','202cb962ac59075b964b07152d234b70','2021-03-17 11:12:07','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(104,'admin','202cb962ac59075b964b07152d234b70','2021-03-17 11:13:39','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(105,'admin','202cb962ac59075b964b07152d234b70','2021-03-17 11:13:49','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(106,'admin','202cb962ac59075b964b07152d234b70','2021-03-17 11:14:34','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(107,'admin','202cb962ac59075b964b07152d234b70','2021-03-17 11:14:46','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(108,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-17 11:15:08','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(109,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-17 11:27:21','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(110,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-17 11:28:13','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(111,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-17 11:28:31','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(112,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-17 11:33:00','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(113,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-17 11:33:09','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(114,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-17 11:51:52','Mozilla/5.0 (Linux','117.136.4.140','true'),(115,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-17 17:46:31','Mozilla/5.0 (Windows NT 6.1','120.207.151.131','true'),(116,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-17 17:46:33','Mozilla/5.0 (Windows NT 6.1','120.207.151.131','true'),(117,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-17 17:56:19','Mozilla/5.0 (Linux','117.136.4.161','true'),(118,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-17 17:59:31','Mozilla/5.0 (Windows NT 6.1','120.207.151.131','true'),(119,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-17 18:03:16','Mozilla/5.0 (Windows NT 6.1','120.207.151.131','true'),(120,'admin','******','2021-03-17 18:10:31','Mozilla/5.0 (Windows NT 6.1','120.207.151.131','false'),(121,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-17 18:10:46','Mozilla/5.0 (Windows NT 6.1','120.207.151.131','true'),(122,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-17 18:18:58','Mozilla/5.0 (Windows NT 6.1','120.207.151.131','true'),(123,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-19 17:42:27','Mozilla/5.0 (Windows NT 6.1','221.239.71.128','true'),(124,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-19 17:51:21','Mozilla/5.0 (Linux','117.136.4.143','true'),(125,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-19 17:53:07','Mozilla/4.0 (compatible','223.104.14.34','true'),(126,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-20 09:25:17','Mozilla/5.0 (Windows NT 6.1','221.239.71.133','true'),(127,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-20 09:38:32','Mozilla/5.0 (Windows NT 6.1','221.239.71.133','true'),(128,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-20 09:40:08','Mozilla/5.0 (Windows NT 6.1','221.239.71.133','true'),(129,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-20 09:41:03','Mozilla/5.0 (Windows NT 6.1','221.239.71.133','true'),(130,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-20 09:45:32','Mozilla/5.0 (Windows NT 6.1','221.239.71.133','true'),(131,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-20 09:48:26','Mozilla/5.0 (Windows NT 6.1','221.239.71.133','true'),(132,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-20 10:01:45','Mozilla/5.0 (Windows NT 6.1','0:0:0:0:0:0:0:1','true'),(133,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-20 10:03:47','Mozilla/5.0 (Windows NT 6.1','221.239.71.133','true'),(134,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-20 10:06:18','Mozilla/5.0 (Windows NT 6.1','221.239.71.133','true'),(135,'admin','admion1','2021-03-20 10:20:29','Mozilla/5.0 (Windows NT 6.1','221.239.71.133','false'),(136,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-20 10:20:33','Mozilla/5.0 (Windows NT 6.1','221.239.71.133','true'),(137,'admin','e00cf25ad42683b3df678c61f42c6bda','2021-03-20 10:21:40','Mozilla/5.0 (Windows NT 6.1','221.239.71.133','true');

#
# Structure for table "affiche"
#

CREATE TABLE `affiche` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `addtime` varchar(30) DEFAULT NULL,
  `adder` varchar(50) DEFAULT NULL,
  `ifhide` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=gb2312;

#
# Data for table "affiche"
#

INSERT INTO `affiche` VALUES (10,'酒品特价优惠','注：会员可在10月28日前登陆酒吧网\r\n购买微醺生活馆特价酒品\r\n                                                携程酒吧网订票链接：http://piao.ctrip.com/dest/t75246.html\r\n驴妈妈酒吧网订票链接：http://ticket.lvmama.com/scenic-107933\r\n                                                  取票地址：微醺生活馆酒吧发展有限责任公司1楼右拐','2021-03-20 10:07:25','admin',1);

#
# Structure for table "friendlink"
#

CREATE TABLE `friendlink` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `linkname` varchar(50) DEFAULT NULL,
  `linkurl` varchar(50) DEFAULT NULL,
  `linkpic` varchar(200) DEFAULT NULL,
  `intero` varchar(300) DEFAULT NULL,
  `ifhide` int(4) DEFAULT NULL,
  `ordervalue` int(4) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Data for table "friendlink"
#


#
# Structure for table "guestbook"
#

CREATE TABLE `guestbook` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `weburl` varchar(50) DEFAULT NULL,
  `blogurl` varchar(50) DEFAULT NULL,
  `expressions` varchar(50) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `replay` int(4) DEFAULT NULL,
  `ifhide` int(4) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

#
# Data for table "guestbook"
#

INSERT INTO `guestbook` VALUES (1,'会员','images/nobody.gif','','','','','images/face/1.gif','湿答答','2021-03-15 11:35:34','0:0:0:0:0:0:0:1',0,1),(2,'会员','images/nobody.gif','','','','','images/face/1.gif','湿答答','2021-03-15 11:36:14','0:0:0:0:0:0:0:1',1,1),(3,'会员','images/nobody.gif','','','','','images/face/1.gif','存储','2021-03-20 10:06:02','221.239.71.133',0,1),(4,'会员','images/nobody.gif','','','','','images/face/1.gif','存储','2021-03-20 10:06:12','221.239.71.133',0,1);

#
# Structure for table "guestvisit"
#

CREATE TABLE `guestvisit` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `vtime` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Data for table "guestvisit"
#


#
# Structure for table "member"
#

CREATE TABLE `member` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `regtime` varchar(50) DEFAULT NULL,
  `ifuse` int(4) DEFAULT NULL,
  `logintimes` int(4) DEFAULT NULL,
  `lasttime` datetime DEFAULT NULL,
  `lastip` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

#
# Data for table "member"
#

INSERT INTO `member` VALUES (1,'xiaoqiang','96e79218965eb72c92a549dd5a330112','person','2021-03-07 17:51:48',0,12,'2021-03-04 13:42:22','127.0.0.1'),(2,'wsy','202cb962ac59075b964b07152d234b70','person','2021-06-17 13:49:19',1,3,'2021-03-14 15:33:32','0:0:0:0:0:0:0:1');

#
# Structure for table "news"
#

CREATE TABLE `news` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `fenlei` varchar(50) DEFAULT NULL,
  `content` text,
  `addtime` varchar(50) DEFAULT NULL,
  `adder` varchar(50) DEFAULT NULL,
  `visit` int(4) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=gb2312;

#
# Data for table "news"
#

INSERT INTO `news` VALUES (37,'微醺生活馆','游戏介绍','<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-weight: bold; font-family: 微软雅黑; white-space: normal; background-color: rgb(254, 254, 254); font-stretch: normal; line-height: 30px;\">景区介绍</p><p><span style=\"font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(254, 254, 254);\">微醺生活馆峰峦重叠，山峰尖峭，森林广茂，区内有700多种植物、240多种动物，100多种名贵中草药，是世界罕见的生态基因库。不仅拥有珍贵树种落叶松、云杉，而且是世界珍禽、国家一类保护动物、山西省鸟――褐马鸡的主要保护地。</span><br/><span style=\"font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(254, 254, 254);\">微醺生活馆主峰绝顶周方仅约10平方米的石坪上，巍然托起一座正方体状石砌建筑，这便是太子殿。因其位居群山之极，数十里外即可看到。&nbsp;</span><br/><span style=\"font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(254, 254, 254);\">&nbsp;&nbsp;&nbsp; 太子殿为石基石壁构筑，殿脊有一铁校直指苍穹，似为避雷特置。殿顶向四面披散，原以铜瓦铺盖，今已遗失。殿门北向而开，门据有石凿“太子殿”三字赫然醒目。两侧墙壁 又凿“佛祖”二字，工整雄劲。&nbsp;</span><br/><span style=\"font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(254, 254, 254);\">&nbsp;&nbsp;&nbsp; 相传，古时有一牧童，父母双亡后，只好寄宿于兄嫂门下。吝啬的嫂嫂不准牧童回家食宿，却要他成天放牧牛羊，砍柴做重活。可怜的牧童只好与羊群为伴，靠赏山花野草解除 苦闷。时间长，他发现每当营草叶下挂满露水珠时，就准定要下雨。他把这个发现告诉众乡亲。大伙按他提供的雨讯安排农活，果然很灵验。就这样，牧童受到―厂人们的喜 爱和尊敬，被视作专司云雨之职的神灵。他去世后，人们在他坐化的微醺生活馆主峰之巅修了一座石砌庙宇，即太子殿。&nbsp;</span><br/><span style=\"font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(254, 254, 254);\">&nbsp;&nbsp;&nbsp; 太子殿今有梯道可达，殿周新筑铁围栏可保临崖绕殿安全无虞。 殿门两侧石刻联语系光绪年间白文良倡修该殿时书凿，句为： “复慈云于中国，施法雨于边方。” 近人黄克毅有诗赞太子殿景致： 素仰芦芽景色美， 山静林幽惹人醉； 危崖嶙屿耸碧空， 太子殿前几忘归。”&nbsp;</span></p><p><br/></p>','2021-03-20 10:05:30','admin',3),(38,'万年冰洞 ','游戏介绍','<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-weight: bold; font-family: 微软雅黑; white-space: normal; background-color: rgb(254, 254, 254); font-stretch: normal; line-height: 30px;\">景区介绍</p><p><span style=\"font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(254, 254, 254);\">万年冰洞形成于新生代第四纪冰川期，距今已有300万年的历史。</span><br/><span style=\"font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(254, 254, 254);\">&nbsp;&nbsp;&nbsp; 它的奇特在于以本地洞外的气候条件论，根本构不成结冰的环境，而洞内一年四季冰柱不化，愈往深处冰愈厚。它是全国迄今发现的最大的冰洞，也是世界上迄今永久冻土层以外发现的罕见的大冰洞。2005年，宁武万年冰洞在第四批国家地质公园评审中，成为国家地质公园，现开发近百米。分成上下多层，通过钻冰洞，下冰楼梯，过冰栈，可到各层观光。每层可容纳数十人，洞内四周全是冰。由冰形成的冰柱、冰帘、冰瀑、冰花、冰佛、冰床、冰钟、冰人、冰菩萨等，千奇百怪、不一而足。洞内大大小小的景致或玲珑剔透，或晶莹夺目，或婀娜多姿，或雄伟壮丽，无不令人惊叹。堪称一个冰的世界。更使人们奇叹不已的是：与冰洞相距不到二百米处，有一处千年不熄的地火，当地人称千年火山。这一冰一火，本是相克，却奇妙地共存于同一山上，可谓世界奇观，中华一绝。&nbsp;</span></p><p><br/></p>','2021-03-20 10:08:16','admin',0),(39,'马仑草原','游戏介绍','<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-weight: bold; font-family: 微软雅黑; white-space: normal; background-color: rgb(254, 254, 254); font-stretch: normal; line-height: 30px;\">景区介绍</p><p><span style=\"font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(254, 254, 254);\">马仑草原海拔2721米，面积6000多亩，形成于75万年前的新生代第四纪冰川期，与微醺生活馆南北相望，是华北地区最大的亚高山草甸之一。这里牧草肥沃，是历代帝王牧养战马的基地。</span><br/><span style=\"font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(254, 254, 254);\">&nbsp;&nbsp;&nbsp; 马仑草原将草甸、森林、高山、峡谷、奇松、怪石、长城、将台、基塔融为一体。东南隅有怪松苑，正南面是奇石坡，西南隅坍塌的舍利塔群半掩半露隐没于草丛中，北齐长城纵贯草原东西。</span></p><p><br/></p>','2021-03-20 10:08:33','admin',0);

#
# Structure for table "pmember"
#

CREATE TABLE `pmember` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mid` int(4) DEFAULT NULL,
  `realname` varchar(100) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `bir` varchar(50) DEFAULT NULL,
  `sheng` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `telphone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `question` varchar(100) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

#
# Data for table "pmember"
#

INSERT INTO `pmember` VALUES (1,2,'刘三','m','2021-06-06','青海','西宁','13555555555','liusan@yahoo.cn','1222df','gddddd','北京路');

#
# Structure for table "prep"
#

CREATE TABLE `prep` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `rs` varchar(50) DEFAULT NULL,
  `sj` varchar(50) DEFAULT NULL,
  `ts` varchar(50) DEFAULT NULL,
  `lxr` varchar(50) DEFAULT NULL,
  `lxfs` varchar(50) DEFAULT NULL,
  `addtime` varchar(50) DEFAULT NULL,
  `member` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Data for table "prep"
#


#
# Structure for table "replay"
#

CREATE TABLE `replay` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mid` int(4) DEFAULT NULL,
  `replay` varchar(200) DEFAULT NULL,
  `replayer` varchar(50) DEFAULT NULL,
  `replaytime` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

#
# Data for table "replay"
#

INSERT INTO `replay` VALUES (1,2,'ssdsad','admin','2021-03-15 15:15:53');

#
# Structure for table "sale"
#

CREATE TABLE `sale` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `dz` varchar(50) DEFAULT NULL,
  `yb` varchar(50) DEFAULT NULL,
  `dh` varchar(50) DEFAULT NULL,
  `jd` varchar(50) DEFAULT NULL,
  `content` text,
  `addtime` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Data for table "sale"
#


#
# Structure for table "sys"
#

CREATE TABLE `sys` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `reasons` varchar(100) DEFAULT NULL,
  `dir` varchar(100) DEFAULT NULL,
  `record` varchar(100) DEFAULT NULL,
  `copyright` text,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

#
# Data for table "sys"
#

INSERT INTO `sys` VALUES (1,'酒吧网站','酒吧网站','酒吧网站','酒吧网站','酒吧网站','open','酒吧网站','admin','酒吧网站','酒吧网站');
