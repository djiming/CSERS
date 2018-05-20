# Host: localhost  (Version: 5.5.53)
# Date: 2018-05-19 22:36:25
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "user"
#

CREATE TABLE `user` (
  `idNumber` varchar(18) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(11) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `birthdata` varchar(255) DEFAULT NULL,
  `number` varchar(21) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT '',
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `positionName` varchar(255) DEFAULT NULL,
  `examNumber` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`examNumber`),
  UNIQUE KEY `examNumber` (`examNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES ('666666666666666666','董金明','男','666666','1997-06-19','15616220567','辽宁','阜新','硕士','C:\\Users\\Djming\\Desktop\\jd.jpg','6666666666','666666666','纪检监察职位','4028c881633fc62901633fc6b4f00001'),('625481549416416416','董','男','666666','2015-05-08','15616220567','山东','莱芜','中学','djm.jpg','最好的朋友','李狗蛋','纪检监察职位','4028c8816340b8de016340b8e35f0000'),('231181199705190210','斯梓杨','女','djm1111','1998-04-12','1558006760','江苏','无锡','博士','C:\\Users\\Djming\\Desktop\\斯梓杨.png','第一辆电摩的名字','狗蛋','药监局','4028c8816341626d0163416272820000'),('333333333333333333','董金明','男','333333','1997-07-15','15616220567','江西','吉安','硕士','C:\\Users\\Djming\\Desktop\\djm.jpg','最好的朋友是','李狗蛋','纪检监察职位','4028c881634395ee016343a805760001'),('511325199804120020','斯梓杨','女','1234567','1998-04-12','15580067670','广东','东莞','本科','C:\\Users\\Djming\\Desktop\\斯梓杨.png','你好吗？','再见吧','扫厕所','4028c881635934ee01635934f3650000');
