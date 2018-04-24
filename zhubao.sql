/*
Navicat MySQL Data Transfer

Source Server         : phpstudy
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : zhubao

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-04-24 18:11:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for os_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `os_admin_user`;
CREATE TABLE `os_admin_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '管理员用户名',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '管理员密码',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1 启用 0 禁用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(20) DEFAULT NULL COMMENT '最后登录IP',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of os_admin_user
-- ----------------------------
INSERT INTO `os_admin_user` VALUES ('1', 'admin', '0dfc7612f607db6c17fd99388e9e5f9c', '1', '2016-10-18 15:28:37', '2018-04-24 16:17:16', '127.0.0.1');
INSERT INTO `os_admin_user` VALUES ('2', 'admin1', '768c3212c5c4afd45fdf2b4663bd2ba5', '1', '2018-04-11 13:13:34', '2018-04-11 13:16:06', '127.0.0.1');

-- ----------------------------
-- Table structure for os_article
-- ----------------------------
DROP TABLE IF EXISTS `os_article`;
CREATE TABLE `os_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `cid` smallint(5) unsigned NOT NULL COMMENT '分类ID',
  `uid` smallint(5) unsigned NOT NULL COMMENT '大师id',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `goods_num` varchar(11) DEFAULT '' COMMENT '商品货号',
  `introduction` varchar(255) DEFAULT '' COMMENT '简介',
  `materials` varchar(255) DEFAULT '' COMMENT '材质',
  `jmoney` varchar(255) DEFAULT '' COMMENT '结缘价',
  `content` longtext COMMENT '内容',
  `author` varchar(20) DEFAULT '' COMMENT '作者ID',
  `isbonds` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '结缘 0 没有结缘  1 已经结缘',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0 待审核  1 审核',
  `reading` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '阅读量',
  `video_pic_url` varchar(255) DEFAULT '' COMMENT '作品视频缩略图',
  `video_url` varchar(255) DEFAULT '' COMMENT '作品视频',
  `thumb` varchar(255) DEFAULT '' COMMENT '缩略图',
  `photo` text COMMENT '图集',
  `is_top` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶  0 不置顶  1 置顶',
  `is_recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐  0 不推荐  1 推荐',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `publish_time` datetime NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of os_article
-- ----------------------------
INSERT INTO `os_article` VALUES ('5', '1', '0', '禅心佛影', '0001', '', '翡翠', '132000', '<p>尺　　寸： 高: 12mm &nbsp;宽:12mm &nbsp;厚: 12mm<br/>重　　量：约12g<br/>描　　述：<br/>颜　　色：绿色<br/>结　　构：测试<br/>油　　性：<br/>脂　　份：<br/>瑕　　疵：<br/></p>', '5', '1', '1', '0', '', '', '/uploads/20180423/a8b6208d3976f7517575c53b101746be.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180423/1524449262119968.jpg\";i:1;s:52:\"/public/uploads/images/20180423/1524449262547020.jpg\";i:2;s:52:\"/public/uploads/images/20180423/1524449262135588.jpg\";i:3;s:52:\"/public/uploads/images/20180423/1524449262608512.jpg\";i:4;s:52:\"/public/uploads/images/20180423/1524449262739716.jpg\";i:5;s:52:\"/public/uploads/images/20180423/1524449262574000.jpg\";i:6;s:52:\"/public/uploads/images/20180423/1524449263123944.jpg\";}', '0', '0', '0', '2018-04-23 10:07:50', '2018-04-23 10:06:47');
INSERT INTO `os_article` VALUES ('6', '1', '0', '神龙送福', '0002', '', '翡翠', '92000', '<p>尺　　寸： 高: 12mm &nbsp;宽:12mm &nbsp;厚: 12mm<br/>重　　量：约12g<br/>描　　述：<br/>颜　　色：绿色<br/>结　　构：测试<br/>油　　性：<br/>脂　　份：<br/>瑕　　疵：<br/></p>', '5', '1', '1', '0', '', '', '/uploads/20180423/a9c6cb6ad8a6248e2c751fa3ee193f23.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180423/1524455438655589.jpg\";i:1;s:52:\"/public/uploads/images/20180423/1524455438112614.jpg\";i:2;s:52:\"/public/uploads/images/20180423/1524455438568062.jpg\";i:3;s:52:\"/public/uploads/images/20180423/1524455438196870.jpg\";i:4;s:52:\"/public/uploads/images/20180423/1524455438850695.jpg\";i:5;s:52:\"/public/uploads/images/20180423/1524455438131053.jpg\";i:6;s:52:\"/public/uploads/images/20180423/1524455438186800.jpg\";}', '0', '0', '0', '2018-04-23 11:50:44', '2018-04-23 11:49:53');
INSERT INTO `os_article` VALUES ('7', '2', '0', '和田玉黑皮俏色籽料', 'Y0001', '', '和田玉', '31600', '<p>尺　　寸： 高: 12mm &nbsp;宽:12mm &nbsp;厚: 12mm<br/>重　　量：约12g<br/>描　　述：<br/>颜　　色：绿色<br/>结　　构：测试<br/>油　　性：<br/>脂　　份：<br/>瑕　　疵：<br/></p><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">醉傲风颠卒未休，杖头明月冠南州。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">转身移步谁能解，雪履芦花十二楼。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">新疆和田籽玉，光素莹润，经过天山雪水的浸润洗礼和日月光华的滋润普照之后，玉石表面已有凝脂油光之感，冰晶之洁，雪润之亮，把玩之间，养眼润肤，怡神静心。这件和田玉黑皮籽料，玉质细密温润，外覆皮色浓郁艳丽，更为难得的是其天然的皮色与济公活佛十分相像，颇为难得。济公活佛破帽破扇破鞋，貌似疯癫，不受戒律拘束，嗜好酒肉，举止似痴若狂，他的扶危济困、除暴安良、彰善罚恶等种种美德，在人们的心目中留下了独特而美好的印象。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</div>', '无', '0', '1', '0', '/uploads/20180423/9f04c09d8b7893d9d9be7c49df0b347f.jpg', '/uploads/videos/20180424/4d6b6f4e44bc43dda13688216614a69d.mp4', '/uploads/20180423/5f34a54264b016c7a1575c0f3c4e5974.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180423/1524455717708647.jpg\";i:1;s:52:\"/public/uploads/images/20180423/1524455717484537.jpg\";i:2;s:52:\"/public/uploads/images/20180423/1524455717435911.jpg\";i:3;s:52:\"/public/uploads/images/20180423/1524455717141789.jpg\";i:4;s:52:\"/public/uploads/images/20180423/1524455717131974.jpg\";i:5;s:52:\"/public/uploads/images/20180423/1524455717127503.jpg\";i:6;s:52:\"/public/uploads/images/20180423/1524457401264172.jpg\";}', '0', '0', '0', '2018-04-23 11:55:20', '2018-04-23 11:50:45');
INSERT INTO `os_article` VALUES ('9', '1', '0', '魁星点斗', '0004', '', '翡翠', '63000', '<p><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">尺　寸：直径：57.5mm 厚：7mm。</span></p><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal;\">重 &nbsp; &nbsp;量：（约）40.9g<br/>描　述：冰种蓝水色翡翠挂件——魁星点斗。玉质水润细腻，自然光下颜色深邃幽静，透光静谧动人，天然雪花棉点缀其中，去星空一般，韵味十足。把“魁”字拆开，便是“鬼”和“斗”二字，汉族民间工匠雕造或绘画魁星像时，刻意塑造成面目狰狞的模样。它单足立于鳌鱼的头上，另一脚翘起，一手执笔，一手捧斗，寓意魁星点斗、独占鳌头，谁梦见魁星，谁就能成为考场上的幸运者；1/3透，可见天然雪花棉，更添意境；提供玉雕界签约玉雕工作室收藏证书。<br/>配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。<br/>售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</div><p><br/></p>', '6', '1', '1', '0', '', '', '/uploads/20180423/0cc8c6cf0384e2aaa4d751b4568790a2.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180423/1524469623291583.jpg\";i:1;s:52:\"/public/uploads/images/20180423/1524469623668412.jpg\";i:2;s:52:\"/public/uploads/images/20180423/1524469623641603.jpg\";i:3;s:52:\"/public/uploads/images/20180423/1524469623371364.jpg\";i:4;s:52:\"/public/uploads/images/20180423/1524469623126126.jpg\";i:5;s:52:\"/public/uploads/images/20180423/1524469623770268.jpg\";i:6;s:52:\"/public/uploads/images/20180423/1524469623130717.jpg\";}', '0', '0', '0', '2018-04-23 15:47:07', '2018-04-23 15:45:39');
INSERT INTO `os_article` VALUES ('8', '1', '0', '慧知万物', '0003', '', '翡翠', '50000', '<p><br/></p><p><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">描 &nbsp; &nbsp; 述：冰种淡春带彩翡翠挂件——慧知万物。质地水润细腻，晴水色淡雅清新，略有紫色晕染其中，别有一番韵味。作品雕塑风浓郁，使用肌理表达出层次感和空间感。以最简约的线条诠释山川江河。观感清爽自然，大气十足，又符合艺术美学。佛陀雕刻线条简约流畅，在天地山河间静思禅悟。佛本无相，心若清如水月，不恋万物便可大道至简。略透；1/3透；可见天然棉，但不影响整体美观。提供玉雕界签约玉雕工作室收藏证书。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</span></p>', '6', '1', '1', '0', '', '', '/uploads/20180423/1d908124a0e7c7c4fcb78fa833132575.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180423/1524468726546761.jpg\";i:1;s:52:\"/public/uploads/images/20180423/1524468726117257.jpg\";i:2;s:52:\"/public/uploads/images/20180423/1524468726104136.jpg\";i:3;s:52:\"/public/uploads/images/20180423/1524468727112295.jpg\";i:4;s:52:\"/public/uploads/images/20180423/1524468727626155.jpg\";i:5;s:52:\"/public/uploads/images/20180423/1524468727151471.jpg\";i:6;s:52:\"/public/uploads/images/20180423/1524468727770354.jpg\";}', '0', '0', '0', '2018-04-23 15:32:10', '2018-04-23 15:30:20');
INSERT INTO `os_article` VALUES ('10', '1', '0', '莲花观音', '0005', '', '翡翠', '200000', '<p><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">8.6mm 带绳重：49g</span><br/><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">描　　述：冰种飘花挂件——莲花观音，种质冰润通透，底子细腻恬静，素雅幽静鲜活的飘花晕染于素净的底子上，灵动而有韵味。整体风格简约，莲花悠然绽放，似贴于水面，给人带来安静的视觉享受。观音衣带轻盈，静坐莲花宝座，仙气十足，低眉俯视莲花，静谧安详。观音是佛教中慈悲和智慧的象征，有求必应，降福世人；而莲花，在佛教中是圣洁、清净的圣物，一尘不染，寓意观音庇佑，吉祥如意。肉眼可见棉，瑕不掩瑜。玉雕界签约玉雕名家王立元作品，提供玉雕师亲笔签名收藏证书。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">售后承诺：签收之时起7日内自由换货，提供完美售后服务</span></p>', '7', '1', '1', '0', '/uploads/20180423/096a5c09acaa32a5fc3302a1fa3661b5.jpg', '', '/uploads/20180423/41e8049a0ae8bb6febf23b1f76e1cf96.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180423/1524469848118763.jpg\";i:1;s:52:\"/public/uploads/images/20180423/1524469848746730.jpg\";i:2;s:52:\"/public/uploads/images/20180423/1524469848112519.jpg\";i:3;s:52:\"/public/uploads/images/20180423/1524469848929701.jpg\";i:4;s:52:\"/public/uploads/images/20180423/1524469848858527.jpg\";i:5;s:52:\"/public/uploads/images/20180423/1524469848388404.jpg\";i:6;s:52:\"/public/uploads/images/20180423/1524469848129900.jpg\";}', '0', '0', '0', '2018-04-23 15:50:51', '2018-04-23 15:48:06');
INSERT INTO `os_article` VALUES ('11', '3', '0', '玉兰清芬', 'M0001', '', '和田玉', '2700', '<div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal;\">尺　　寸：高:28.3mm 宽:12.9mm 厚:6.6mm</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal;\">重　　量：约3.5g</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal;\">描　　述：【优选】玉兰清芬——和田玉籽料挂件，产地新疆</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal;\">颜　　色：白度近一级，两星半，带洒金皮</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal;\">结　　构：三星半</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal;\">油　　性：三星</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal;\">脂　　份：两星半</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal;\">脂　　份：略带水线</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal;\">霓裳片片晚妆新，束素亭亭玉殿春。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal;\">已向丹霞生浅晕，故将清露作芳尘。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal;\">玉兰花香四溢，沁人心脾，因其高洁清雅的姿态与清馨不浊的幽香，深受人们的喜爱，常被用来比作美好的事物与感情。玉兰花又象征着忠贞不渝爱情；每逢喜庆吉日，人们亦常以玉兰花馈赠。这款玉兰清芬胸坠主体为一朵盛开的玉兰花，背面满洒金皮，皮色艳丽，线条柔美，雕工流畅，打磨精细，实为一件不可多得的美物。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal;\">作　　者：提供玉雕界民间巧匠收藏证书。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal;\">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal;\">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</div><p><br/></p>', '无', '1', '1', '0', '', '', '/uploads/20180423/ee4068b425e60a163e509bfd183b44b6.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180423/1524470198664152.jpg\";i:1;s:52:\"/public/uploads/images/20180423/1524470199711229.jpg\";i:2;s:52:\"/public/uploads/images/20180423/1524470199920062.jpg\";i:3;s:52:\"/public/uploads/images/20180423/1524470199934650.jpg\";i:4;s:52:\"/public/uploads/images/20180423/1524470199991925.jpg\";i:5;s:52:\"/public/uploads/images/20180423/1524470199545901.jpg\";i:6;s:52:\"/public/uploads/images/20180423/1524470199915285.jpg\";}', '0', '0', '0', '2018-04-23 15:56:42', '2018-04-23 15:50:53');
INSERT INTO `os_article` VALUES ('12', '1', '0', '太平有象', '0006', '尺　　寸：高:66mm 宽:46.2mm 厚:12.8mm；\r\n描　　述：玛瑙挂件——太平有象。象耳大如蒲扇，双牙前伸，长鼻弯曲上卷，整体形象生动，栩栩如生，背驮一童子，一派和谐的氛围，寓意天下太平、五谷丰登，承载起古今人们的美好愿望。玉雕界签约青年玉雕师李斯作品，提供玉雕师亲笔签名收藏证书。\r\n配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。\r\n售后承诺：签收之时起7日内自由退换货，提供完美售后服务。', '玛瑙', '11500', '<p>尺　　寸： 高: 12mm &nbsp;宽:12mm &nbsp;厚: 12mm<br/>重　　量：约12g<br/>描　　述：<br/>颜　　色：绿色<br/>结　　构：测试<br/>油　　性：<br/>脂　　份：<br/>瑕　　疵：<br/></p>', '8', '1', '1', '0', '', '', '/uploads/20180423/63db07530830c15a225a7560455cffc3.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180423/1524473680448864.jpg\";i:1;s:52:\"/public/uploads/images/20180423/1524473680761533.jpg\";i:2;s:52:\"/public/uploads/images/20180423/1524473680901989.jpg\";i:3;s:52:\"/public/uploads/images/20180423/1524473681559972.jpg\";i:4;s:52:\"/public/uploads/images/20180423/1524473681636440.jpg\";i:5;s:52:\"/public/uploads/images/20180423/1524473681826511.jpg\";i:6;s:52:\"/public/uploads/images/20180423/1524473681196698.jpg\";}', '0', '1', '0', '2018-04-23 16:54:44', '2018-04-23 16:53:06');
INSERT INTO `os_article` VALUES ('13', '2', '0', '和田玉黄沁籽料', 'Y0002', '', '和田玉', '6000', '<p><span style=\"color: rgb(74, 73, 73); font-family: \">尺　　寸：高:47mm 宽:25mm 厚:17.2mm</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">重　　量：约30.8g</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">描　　述：【优选】和田玉黄沁籽料——和田玉黄沁料独籽，产地新疆</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">颜　　色：黄沁色</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">结　　构：三星</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">油　　性：三星</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">脂　　份：两星</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">瑕　　疵：略带原生石纹</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">玉以红如鸡冠者为最，</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">黄如蒸栗、白如截肪者次之，</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">黑如点漆、青如新柳、绿如铺绒者又次之。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">作品为整块天然新疆和田籽料，俗称“独籽”，保留玉石原生态之美，整体呈椭圆形，色泽浓郁，黄如蒸栗，润泽欲滴，有岁月积淀的沉稳大气之感。佩戴把玩皆可，手感舒适，世间仅此一件，极具收藏价值。且沁色迷人，为带玉种黄沁料，属于上乘的一类，非常少见，仅从其玉料价值来说，就非常稀缺，值得藏家珍视。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</span></p>', '无', '1', '1', '0', '/uploads/20180424/e2000cfafdaaf9358631c659fa2c0b4c.jpg', '/uploads/videos/20180424/e890729423bbf17f8079b0923fabbc05.mp4', '/uploads/20180424/5d324e8b1dbb40a31a2c4d03a8f80927.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180424/1524557933913091.jpg\";i:1;s:52:\"/public/uploads/images/20180424/1524557933105255.jpg\";i:2;s:52:\"/public/uploads/images/20180424/1524557933134130.jpg\";i:3;s:52:\"/public/uploads/images/20180424/1524557933136587.jpg\";i:4;s:52:\"/public/uploads/images/20180424/1524557933120884.jpg\";i:5;s:52:\"/public/uploads/images/20180424/1524557934650640.jpg\";i:6;s:52:\"/public/uploads/images/20180424/1524557934388447.jpg\";}', '0', '0', '0', '2018-04-24 16:18:57', '2018-04-24 16:17:28');
INSERT INTO `os_article` VALUES ('14', '2', '0', '大日如来', 'Y0003', '', '翡翠', '32000', '<p><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">作品编号：YDJ004844</span><br/><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">尺　　寸：高：50.5mm 宽：43.7mm 厚：8.5mm。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">描　　述：冰种晴水挂件——大日如来。大日如来是佛教密宗至高无上的本尊，是光明理智的象征，生肖羊和猴的本命佛，能使佩戴敬奉者光明理智，开启智慧，成就一切事业，鸿图大展；1/3透，略微有天然棉及棉线，但不影响整体美观；</span><br/><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</span></p>', '无', '1', '1', '0', '', '', '/uploads/20180424/1d10bc9419a04d8522b2f6f214689bc2.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180424/1524558209111951.jpg\";i:1;s:52:\"/public/uploads/images/20180424/1524558209392148.jpg\";i:2;s:52:\"/public/uploads/images/20180424/1524558209535401.jpg\";i:3;s:52:\"/public/uploads/images/20180424/1524558209563716.jpg\";i:4;s:52:\"/public/uploads/images/20180424/1524558209641646.jpg\";i:5;s:52:\"/public/uploads/images/20180424/1524558209458890.jpg\";i:6;s:52:\"/public/uploads/images/20180424/1524558209658730.jpg\";}', '0', '0', '0', '2018-04-24 16:23:33', '2018-04-24 16:22:08');

-- ----------------------------
-- Table structure for os_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `os_auth_group`;
CREATE TABLE `os_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(255) NOT NULL COMMENT '权限规则ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='权限组表';

-- ----------------------------
-- Records of os_auth_group
-- ----------------------------
INSERT INTO `os_auth_group` VALUES ('1', '超级管理组', '1', '1,2,3,73,74,5,6,7,8,9,10,11,12,39,40,41,42,43,14,13,20,21,22,23,24,38,15,25,26,27,28,29,30,16,17,44,45,46,47,48,18,49,50,51,52,53,19,31,32,33,34,35,36,37,54,55,58,59,60,61,62,56,63,64,65,66,67,57,68,69,70,71,72');
INSERT INTO `os_auth_group` VALUES ('2', '文章管理组', '1', '14,13,20,21,22,23,24,38,15,25,26,27,28,29,30');

-- ----------------------------
-- Table structure for os_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `os_auth_group_access`;
CREATE TABLE `os_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限组规则表';

-- ----------------------------
-- Records of os_auth_group_access
-- ----------------------------
INSERT INTO `os_auth_group_access` VALUES ('1', '1');
INSERT INTO `os_auth_group_access` VALUES ('2', '2');

-- ----------------------------
-- Table structure for os_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `os_auth_rule`;
CREATE TABLE `os_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(20) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `pid` smallint(5) unsigned NOT NULL COMMENT '父级ID',
  `icon` varchar(50) DEFAULT '' COMMENT '图标',
  `sort` tinyint(4) unsigned NOT NULL COMMENT '排序',
  `condition` char(100) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of os_auth_rule
-- ----------------------------
INSERT INTO `os_auth_rule` VALUES ('1', 'admin/System/default', '系统配置', '1', '1', '0', 'fa fa-gears', '0', '');
INSERT INTO `os_auth_rule` VALUES ('2', 'admin/System/siteConfig', '站点配置', '1', '1', '1', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('3', 'admin/System/updateSiteConfig', '更新配置', '1', '0', '1', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('5', 'admin/Menu/default', '菜单管理', '1', '1', '0', 'fa fa-bars', '0', '');
INSERT INTO `os_auth_rule` VALUES ('6', 'admin/Menu/index', '后台菜单', '1', '1', '5', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('7', 'admin/Menu/add', '添加菜单', '1', '0', '6', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('8', 'admin/Menu/save', '保存菜单', '1', '0', '6', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('9', 'admin/Menu/edit', '编辑菜单', '1', '0', '6', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('10', 'admin/Menu/update', '更新菜单', '1', '0', '6', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('11', 'admin/Menu/delete', '删除菜单', '1', '0', '6', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('12', 'admin/Nav/index', '导航管理', '1', '1', '5', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('13', 'admin/Category/index', '栏目管理', '1', '1', '14', 'fa fa-sitemap', '0', '');
INSERT INTO `os_auth_rule` VALUES ('38', 'admin/Grand/index', '玉雕大师管理', '1', '1', '14', 'fa fa-sitemap', '0', '');
INSERT INTO `os_auth_rule` VALUES ('14', 'admin/Content/default', '内容管理', '1', '1', '0', 'fa fa-file-text', '0', '');
INSERT INTO `os_auth_rule` VALUES ('15', 'admin/Article/index', '产品管理', '1', '1', '14', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('16', 'admin/User/default', '用户管理', '1', '1', '0', 'fa fa-users', '0', '');
INSERT INTO `os_auth_rule` VALUES ('17', 'admin/User/index', '普通用户', '1', '1', '16', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('18', 'admin/AdminUser/index', '管理员', '1', '1', '16', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('19', 'admin/AuthGroup/index', '权限组', '1', '1', '16', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('20', 'admin/Category/add', '添加栏目', '1', '0', '13', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('21', 'admin/Category/save', '保存栏目', '1', '0', '13', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('22', 'admin/Category/edit', '编辑栏目', '1', '0', '13', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('23', 'admin/Category/update', '更新栏目', '1', '0', '13', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('24', 'admin/Category/delete', '删除栏目', '1', '0', '13', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('25', 'admin/Article/add', '添加产品', '1', '0', '15', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('26', 'admin/Article/save', '保存产品', '1', '0', '15', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('27', 'admin/Article/edit', '编辑产品', '1', '0', '15', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('28', 'admin/Article/update', '更新产品', '1', '0', '15', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('29', 'admin/Article/delete', '删除产品', '1', '0', '15', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('30', 'admin/Article/toggle', '产品审核', '1', '0', '15', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('31', 'admin/AuthGroup/add', '添加权限组', '1', '0', '19', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('32', 'admin/AuthGroup/save', '保存权限组', '1', '0', '19', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('33', 'admin/AuthGroup/edit', '编辑权限组', '1', '0', '19', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('34', 'admin/AuthGroup/update', '更新权限组', '1', '0', '19', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('35', 'admin/AuthGroup/delete', '删除权限组', '1', '0', '19', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('36', 'admin/AuthGroup/auth', '授权', '1', '0', '19', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('37', 'admin/AuthGroup/updateAuthGroupRule', '更新权限组规则', '1', '0', '19', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('39', 'admin/Nav/add', '添加导航', '1', '0', '12', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('40', 'admin/Nav/save', '保存导航', '1', '0', '12', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('41', 'admin/Nav/edit', '编辑导航', '1', '0', '12', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('42', 'admin/Nav/update', '更新导航', '1', '0', '12', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('43', 'admin/Nav/delete', '删除导航', '1', '0', '12', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('44', 'admin/User/add', '添加用户', '1', '0', '17', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('45', 'admin/User/save', '保存用户', '1', '0', '17', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('46', 'admin/User/edit', '编辑用户', '1', '0', '17', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('47', 'admin/User/update', '更新用户', '1', '0', '17', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('48', 'admin/User/delete', '删除用户', '1', '0', '17', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('49', 'admin/AdminUser/add', '添加管理员', '1', '0', '18', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('50', 'admin/AdminUser/save', '保存管理员', '1', '0', '18', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('51', 'admin/AdminUser/edit', '编辑管理员', '1', '0', '18', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('52', 'admin/AdminUser/update', '更新管理员', '1', '0', '18', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('53', 'admin/AdminUser/delete', '删除管理员', '1', '0', '18', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('54', 'admin/Slide/default', '扩展管理', '1', '1', '0', 'fa fa-wrench', '0', '');
INSERT INTO `os_auth_rule` VALUES ('55', 'admin/SlideCategory/index', '轮播分类', '1', '1', '54', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('56', 'admin/Slide/index', '轮播图管理', '1', '1', '54', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('57', 'admin/Link/index', '友情链接', '1', '1', '54', 'fa fa-link', '0', '');
INSERT INTO `os_auth_rule` VALUES ('58', 'admin/SlideCategory/add', '添加分类', '1', '0', '55', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('59', 'admin/SlideCategory/save', '保存分类', '1', '0', '55', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('60', 'admin/SlideCategory/edit', '编辑分类', '1', '0', '55', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('61', 'admin/SlideCategory/update', '更新分类', '1', '0', '55', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('62', 'admin/SlideCategory/delete', '删除分类', '1', '0', '55', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('63', 'admin/Slide/add', '添加轮播', '1', '0', '56', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('64', 'admin/Slide/save', '保存轮播', '1', '0', '56', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('65', 'admin/Slide/edit', '编辑轮播', '1', '0', '56', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('66', 'admin/Slide/update', '更新轮播', '1', '0', '56', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('67', 'admin/Slide/delete', '删除轮播', '1', '0', '56', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('68', 'admin/Link/add', '添加链接', '1', '0', '57', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('69', 'admin/Link/save', '保存链接', '1', '0', '57', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('70', 'admin/Link/edit', '编辑链接', '1', '0', '57', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('71', 'admin/Link/update', '更新链接', '1', '0', '57', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('72', 'admin/Link/delete', '删除链接', '1', '0', '57', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('73', 'admin/ChangePassword/index', '修改密码', '1', '1', '1', '', '0', '');
INSERT INTO `os_auth_rule` VALUES ('74', 'admin/ChangePassword/updatePassword', '更新密码', '1', '0', '1', '', '0', '');

-- ----------------------------
-- Table structure for os_category
-- ----------------------------
DROP TABLE IF EXISTS `os_category`;
CREATE TABLE `os_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `alias` varchar(50) DEFAULT '' COMMENT '导航别名',
  `content` longtext COMMENT '分类内容',
  `thumb` varchar(255) DEFAULT '' COMMENT '缩略图',
  `icon` varchar(20) DEFAULT '' COMMENT '分类图标',
  `list_template` varchar(50) DEFAULT '' COMMENT '分类列表模板',
  `detail_template` varchar(50) DEFAULT '' COMMENT '分类详情模板',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '分类类型  1  列表  2 单页',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `path` varchar(255) DEFAULT '' COMMENT '路径',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of os_category
-- ----------------------------
INSERT INTO `os_category` VALUES ('1', '作品', '', '', '', '', '', '', '1', '0', '0', '0,', '2016-12-22 18:22:24');
INSERT INTO `os_category` VALUES ('2', '原石玉料', '', '', '', '', '', '', '1', '0', '0', '0,', '2018-04-16 15:22:58');
INSERT INTO `os_category` VALUES ('3', '民间巨匠', '', '', '', '', '', '', '1', '0', '0', '0,', '2018-04-16 15:24:32');

-- ----------------------------
-- Table structure for os_grand
-- ----------------------------
DROP TABLE IF EXISTS `os_grand`;
CREATE TABLE `os_grand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '大师ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `introduction` varchar(255) DEFAULT '' COMMENT '简介',
  `content` longtext COMMENT '内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0 冻结  1 正常',
  `thumb` varchar(255) DEFAULT '' COMMENT '缩略图',
  `is_top` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶  0 不置顶  1 置顶',
  `is_recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐  0 不推荐  1 推荐',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `publish_time` datetime NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='大师用户表';

-- ----------------------------
-- Records of os_grand
-- ----------------------------
INSERT INTO `os_grand` VALUES ('5', '加龙', '加龙，本名张钦荣，青年玉雕名家，中级工艺美术师,广东省揭阳职业技术学院外聘教师，广东省雕刻艺术研究会副会长。2006年师从高级工艺美术师、广东省工艺美术大师张炳光，学习传统工艺美术和高端翡翠设计及雕刻，2012年创办个人翡翠雕刻艺术工作室。其作品在业内和藏家均有极高口碑，作品多年来在中国工艺美术“文化创意奖”，中国工艺美术“百花奖”，广东省工艺美术精品展等各类赛事中获奖，金奖七个，银奖十个。', '', '1', '/uploads/20180423/cb7372b8db98e55bbf1673bdfa457bf5.jpg', '0', '0', '0', '2018-04-23 10:03:34', '2018-04-23 10:02:36');
INSERT INTO `os_grand` VALUES ('6', '庄家玉雕工作室', '庄家玉雕工作室是由玉雕大师庄庆芳创办，创作的作品植根于中国传统禅文化的经典土壤，以“静、定、空、悟、真、慧、素、净、慢、容、和、缘”十二字的创作初心与技艺，为东方代言，为时代代言，为翡翠代言，让人们透过翡翠的自然之美、人文之美，感受生命，感知生活，凝神静气，身心合一。借翡翠之美，借襌艺之工为热爱翡翠的人们创造一个增定开慧，见性明心的翡翠境界，成为东方禅意翡翠艺术之美的典范，成为东方珠宝文化的代表', '', '1', '/uploads/20180423/6abc8993083e662b1ce4216a34f165de.jpg', '0', '0', '0', '2018-04-23 15:30:14', '2018-04-23 15:29:10');
INSERT INTO `os_grand` VALUES ('7', '王立元', '王立元，云南优秀玉雕师，瑞丽巧雕师。从事玉雕创作十年，其对山水、人物类题材作品有深刻独到的把握和见解，作品风格简约，追求“灵、简、精”。作品设计创作用料大胆，设计新颖，阴刻阳刻、立体雕刻相结合，手法娴熟。在云南、广东等玉雕赛事中屡屡获奖。1986年生于河南省邓州市，2004年与玉结缘，师从玉雕大师王朝阳。2014年创立“古石珠宝文化有限公司”，2016年7月--2017年7月毕业于中央美术学院雕塑系“尚晓风泥塑心法高研班”', '<div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2011年获“巧雕师”称号。</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2014年8月份获“云南玉雕大师奖” 铜奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2014年10月份获“瑞丽神工奖” 银奖 铜奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2014年12月份获“广州云峰杯奖” 银奖 铜奖 &nbsp;</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2015年10月份获“瑞丽神工奖” &nbsp;金奖&nbsp;</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2015年10月份获“瑞丽神工奖 ” &nbsp;银奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2015年12月份获“北京天工奖” &nbsp; 优秀奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2016年4月份获“金凤凰”创新产品设计大奖赛 &nbsp; 金奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2016年7月份获“精品展”中国昆明泛亚石博览会 &nbsp;银奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2016年12月群展《泥诉》 &nbsp; 中央美术学院通道画廊</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2017年6月群展《法心塑泥》中央美术学院通道画廊</div><p><br/></p>', '1', '/uploads/20180423/6124f4cfca1baf5cc636fa88fdc31d60.jpg', '0', '0', '0', '2018-04-23 15:48:01', '2018-04-23 15:47:35');
INSERT INTO `os_grand` VALUES ('8', '李斯', '李斯，80后，师从其父广东省玉石雕刻大师李克生，自小于玉雕机旁长大，耳渎目染浸淫玉意，爱武侠好美乐，初习画功字而后执刀刻玉。好学勤思，作品灵巧而富神韵，主张雕刻者应以手中刻刀表达内敛的情怀，赋予作品厚重的灵魂。现为潮州市工艺美术协会会员，揭阳工艺美术学会会员，助理工艺美术师', '<div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">太白醉酒获2013年中国玉石器百花奖银奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">福寿双全摆件获2014年揭阳莲花奖金奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">江南好获2014年揭阳莲花奖银奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">慈航济世链牌获2014首届九龙杯银奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">南红玛瑙鼻烟壶获2014首届九龙杯铜奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">白玉深处是江南获2014第二届云峰杯铜奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">鹰击长空获2014第二届云峰杯优秀奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">双龙平安链牌获2015九龙奖金奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">清者自悠套牌获2015九龙奖银奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">悠然南山牌获2015九龙奖铜奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">仿古器皿三件套获2015莲花奖金奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">大展宏图获2015莲花奖银奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">教子图获第三届广东（潮州）工艺美术精品展银奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">&nbsp;一夜封侯获2015广州红棉奖铜奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">福慧双修链牌获2015玉魂奖最佳工艺奖</div><p><br/></p>', '1', '/uploads/20180423/b6f05c2103d053466bead9bf3e309001.jpg', '0', '0', '0', '2018-04-23 16:48:29', '2018-04-23 16:47:32');

-- ----------------------------
-- Table structure for os_link
-- ----------------------------
DROP TABLE IF EXISTS `os_link`;
CREATE TABLE `os_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '链接名称',
  `link` varchar(255) DEFAULT '' COMMENT '链接地址',
  `image` varchar(255) DEFAULT '' COMMENT '链接图片',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1 显示  2 隐藏',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of os_link
-- ----------------------------

-- ----------------------------
-- Table structure for os_nav
-- ----------------------------
DROP TABLE IF EXISTS `os_nav`;
CREATE TABLE `os_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL COMMENT '父ID',
  `name` varchar(20) NOT NULL COMMENT '导航名称',
  `alias` varchar(20) DEFAULT '' COMMENT '导航别称',
  `link` varchar(255) DEFAULT '' COMMENT '导航链接',
  `icon` varchar(255) DEFAULT '' COMMENT '导航图标',
  `target` varchar(10) DEFAULT '' COMMENT '打开方式',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态  0 隐藏  1 显示',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='导航表';

-- ----------------------------
-- Records of os_nav
-- ----------------------------

-- ----------------------------
-- Table structure for os_reservation
-- ----------------------------
DROP TABLE IF EXISTS `os_reservation`;
CREATE TABLE `os_reservation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '预约id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `re_introduction` varchar(255) DEFAULT '' COMMENT '电话号码',
  `re_local` longtext COMMENT '地址',
  `re_way` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '预约',
  `re_time` datetime NOT NULL COMMENT '预约时间',
  `re_cont` varchar(255) DEFAULT '' COMMENT '留言',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='预约表';

-- ----------------------------
-- Records of os_reservation
-- ----------------------------
INSERT INTO `os_reservation` VALUES ('2', '13', '', null, '0', '0000-00-00 00:00:00', '', '2018-04-17 02:18:24', '0');

-- ----------------------------
-- Table structure for os_reservationup
-- ----------------------------
DROP TABLE IF EXISTS `os_reservationup`;
CREATE TABLE `os_reservationup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `thumb` varchar(255) DEFAULT '' COMMENT '缩略图',
  `photo` text COMMENT '图集',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='图集表';

-- ----------------------------
-- Records of os_reservationup
-- ----------------------------
INSERT INTO `os_reservationup` VALUES ('4', '/uploads/20180412/a0e7022745d781a756a0e2a1fda24f64.png', null, '2018-04-12 20:34:53');

-- ----------------------------
-- Table structure for os_slide
-- ----------------------------
DROP TABLE IF EXISTS `os_slide`;
CREATE TABLE `os_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `name` varchar(50) NOT NULL COMMENT '轮播图名称',
  `description` varchar(255) DEFAULT '' COMMENT '说明',
  `link` varchar(255) DEFAULT '' COMMENT '链接',
  `target` varchar(10) DEFAULT '' COMMENT '打开方式',
  `image` varchar(255) DEFAULT '' COMMENT '轮播图片',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态  1 显示  0  隐藏',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='轮播图表';

-- ----------------------------
-- Records of os_slide
-- ----------------------------

-- ----------------------------
-- Table structure for os_slide_category
-- ----------------------------
DROP TABLE IF EXISTS `os_slide_category`;
CREATE TABLE `os_slide_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '轮播图分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='轮播图分类表';

-- ----------------------------
-- Records of os_slide_category
-- ----------------------------
INSERT INTO `os_slide_category` VALUES ('1', '首页轮播');

-- ----------------------------
-- Table structure for os_system
-- ----------------------------
DROP TABLE IF EXISTS `os_system`;
CREATE TABLE `os_system` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '配置项名称',
  `value` text NOT NULL COMMENT '配置项值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

-- ----------------------------
-- Records of os_system
-- ----------------------------
INSERT INTO `os_system` VALUES ('1', 'site_config', 'a:7:{s:10:\"site_title\";s:27:\"琢玉界后台管理系统\";s:9:\"seo_title\";s:0:\"\";s:11:\"seo_keyword\";s:0:\"\";s:15:\"seo_description\";s:0:\"\";s:14:\"site_copyright\";s:0:\"\";s:8:\"site_icp\";s:0:\"\";s:11:\"site_tongji\";s:0:\"\";}');

-- ----------------------------
-- Table structure for os_user
-- ----------------------------
DROP TABLE IF EXISTS `os_user`;
CREATE TABLE `os_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `mobile` varchar(11) DEFAULT '' COMMENT '手机',
  `email` varchar(50) DEFAULT '' COMMENT '邮箱',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态  1 正常  2 禁止',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `last_login_ip` varchar(50) DEFAULT '' COMMENT '最后登录IP',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of os_user
-- ----------------------------
INSERT INTO `os_user` VALUES ('1', 'admin1', '768c3212c5c4afd45fdf2b4663bd2ba5', '', '', '1', '2018-04-11 13:03:21', null, '');

-- ----------------------------
-- Table structure for ot_linkug
-- ----------------------------
DROP TABLE IF EXISTS `ot_linkug`;
CREATE TABLE `ot_linkug` (
  `re_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主表id',
  `CR_time` datetime DEFAULT NULL COMMENT '添加时间',
  `re_userID` int(11) DEFAULT '0' COMMENT '用户ID',
  `re_goodsID` int(11) DEFAULT '0' COMMENT '商品ID',
  PRIMARY KEY (`re_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_linkug
-- ----------------------------
