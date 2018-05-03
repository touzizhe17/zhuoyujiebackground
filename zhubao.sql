/*
Navicat MySQL Data Transfer

Source Server         : phpstudy
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : zhubao

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-05-03 11:22:09
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
INSERT INTO `os_admin_user` VALUES ('1', 'admin', '0dfc7612f607db6c17fd99388e9e5f9c', '1', '2016-10-18 15:28:37', '2018-05-02 11:22:04', '127.0.0.1');
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
  `materials` varchar(255) DEFAULT '' COMMENT '材质ID',
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
  `is_world` tinyint(1) DEFAULT '0' COMMENT '是否参加巡展',
  `is_recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐  0 不推荐  1 推荐',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `publish_time` datetime NOT NULL COMMENT '发布时间',
  `good_num` tinyint(11) DEFAULT '0' COMMENT '赞的数量',
  `bad_num` tinyint(11) DEFAULT '0' COMMENT '踩的数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of os_article
-- ----------------------------
INSERT INTO `os_article` VALUES ('5', '1', '0', '禅心佛影', '0001', '', '翡翠', '132000', '<p>尺　　寸： 高: 12mm &nbsp;宽:12mm &nbsp;厚: 12mm<br/>重　　量：约12g<br/>描　　述：<br/>颜　　色：绿色<br/>结　　构：测试<br/>油　　性：<br/>脂　　份：<br/>瑕　　疵：<br/></p>', '5', '1', '1', '0', '', '', '/uploads/20180423/a8b6208d3976f7517575c53b101746be.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180423/1524449262119968.jpg\";i:1;s:52:\"/public/uploads/images/20180423/1524449262547020.jpg\";i:2;s:52:\"/public/uploads/images/20180423/1524449262135588.jpg\";i:3;s:52:\"/public/uploads/images/20180423/1524449262608512.jpg\";i:4;s:52:\"/public/uploads/images/20180423/1524449262739716.jpg\";i:5;s:52:\"/public/uploads/images/20180423/1524449262574000.jpg\";i:6;s:52:\"/public/uploads/images/20180423/1524449263123944.jpg\";}', '0', '1', '0', '0', '2018-04-23 10:07:50', '2018-04-23 10:06:47', '0', '0');
INSERT INTO `os_article` VALUES ('6', '1', '0', '神龙送福', '0002', '', '翡翠', '92000', '<p>尺　　寸： 高: 12mm &nbsp;宽:12mm &nbsp;厚: 12mm<br/>重　　量：约12g<br/>描　　述：<br/>颜　　色：绿色<br/>结　　构：测试<br/>油　　性：<br/>脂　　份：<br/>瑕　　疵：<br/></p>', '5', '1', '1', '0', '', '', '/uploads/20180423/a9c6cb6ad8a6248e2c751fa3ee193f23.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180423/1524455438655589.jpg\";i:1;s:52:\"/public/uploads/images/20180423/1524455438112614.jpg\";i:2;s:52:\"/public/uploads/images/20180423/1524455438568062.jpg\";i:3;s:52:\"/public/uploads/images/20180423/1524455438196870.jpg\";i:4;s:52:\"/public/uploads/images/20180423/1524455438850695.jpg\";i:5;s:52:\"/public/uploads/images/20180423/1524455438131053.jpg\";i:6;s:52:\"/public/uploads/images/20180423/1524455438186800.jpg\";}', '0', '1', '0', '0', '2018-04-23 11:50:44', '2018-04-23 11:49:53', '0', '0');
INSERT INTO `os_article` VALUES ('7', '2', '0', '和田玉黑皮俏色籽料', 'Y0001', '', '翡翠', '31600', '<p>尺　　寸： 高: 12mm &nbsp;宽:12mm &nbsp;厚: 12mm<br/>重　　量：约12g<br/>描　　述：<br/>颜　　色：绿色<br/>结　　构：测试<br/>油　　性：<br/>脂　　份：<br/>瑕　　疵：<br/></p><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">醉傲风颠卒未休，杖头明月冠南州。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">转身移步谁能解，雪履芦花十二楼。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">新疆和田籽玉，光素莹润，经过天山雪水的浸润洗礼和日月光华的滋润普照之后，玉石表面已有凝脂油光之感，冰晶之洁，雪润之亮，把玩之间，养眼润肤，怡神静心。这件和田玉黑皮籽料，玉质细密温润，外覆皮色浓郁艳丽，更为难得的是其天然的皮色与济公活佛十分相像，颇为难得。济公活佛破帽破扇破鞋，貌似疯癫，不受戒律拘束，嗜好酒肉，举止似痴若狂，他的扶危济困、除暴安良、彰善罚恶等种种美德，在人们的心目中留下了独特而美好的印象。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</div>', '17', '0', '1', '0', '/uploads/20180423/9f04c09d8b7893d9d9be7c49df0b347f.jpg', '/uploads/videos/20180424/4d6b6f4e44bc43dda13688216614a69d.mp4', '/uploads/20180423/5f34a54264b016c7a1575c0f3c4e5974.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180423/1524455717708647.jpg\";i:1;s:52:\"/public/uploads/images/20180423/1524455717484537.jpg\";i:2;s:52:\"/public/uploads/images/20180423/1524455717435911.jpg\";i:3;s:52:\"/public/uploads/images/20180423/1524455717141789.jpg\";i:4;s:52:\"/public/uploads/images/20180423/1524455717131974.jpg\";i:5;s:52:\"/public/uploads/images/20180423/1524455717127503.jpg\";i:6;s:52:\"/public/uploads/images/20180423/1524457401264172.jpg\";}', '0', '1', '0', '0', '2018-04-23 11:55:20', '2018-04-23 11:50:45', '0', '0');
INSERT INTO `os_article` VALUES ('9', '1', '0', '魁星点斗', '0004', '', '翡翠', '63000', '<p><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">尺　寸：直径：57.5mm 厚：7mm。</span></p><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal;\">重 &nbsp; &nbsp;量：（约）40.9g<br/>描　述：冰种蓝水色翡翠挂件——魁星点斗。玉质水润细腻，自然光下颜色深邃幽静，透光静谧动人，天然雪花棉点缀其中，去星空一般，韵味十足。把“魁”字拆开，便是“鬼”和“斗”二字，汉族民间工匠雕造或绘画魁星像时，刻意塑造成面目狰狞的模样。它单足立于鳌鱼的头上，另一脚翘起，一手执笔，一手捧斗，寓意魁星点斗、独占鳌头，谁梦见魁星，谁就能成为考场上的幸运者；1/3透，可见天然雪花棉，更添意境；提供玉雕界签约玉雕工作室收藏证书。<br/>配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。<br/>售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</div><p><br/></p>', '6', '1', '1', '0', '', '', '/uploads/20180423/0cc8c6cf0384e2aaa4d751b4568790a2.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180423/1524469623291583.jpg\";i:1;s:52:\"/public/uploads/images/20180423/1524469623668412.jpg\";i:2;s:52:\"/public/uploads/images/20180423/1524469623641603.jpg\";i:3;s:52:\"/public/uploads/images/20180423/1524469623371364.jpg\";i:4;s:52:\"/public/uploads/images/20180423/1524469623126126.jpg\";i:5;s:52:\"/public/uploads/images/20180423/1524469623770268.jpg\";i:6;s:52:\"/public/uploads/images/20180423/1524469623130717.jpg\";}', '0', '1', '0', '0', '2018-04-23 15:47:07', '2018-04-23 15:45:39', '0', '0');
INSERT INTO `os_article` VALUES ('8', '1', '0', '慧知万物', '0003', '', '翡翠', '50000', '<p><br/></p><p><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">描 &nbsp; &nbsp; 述：冰种淡春带彩翡翠挂件——慧知万物。质地水润细腻，晴水色淡雅清新，略有紫色晕染其中，别有一番韵味。作品雕塑风浓郁，使用肌理表达出层次感和空间感。以最简约的线条诠释山川江河。观感清爽自然，大气十足，又符合艺术美学。佛陀雕刻线条简约流畅，在天地山河间静思禅悟。佛本无相，心若清如水月，不恋万物便可大道至简。略透；1/3透；可见天然棉，但不影响整体美观。提供玉雕界签约玉雕工作室收藏证书。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</span></p>', '6', '1', '1', '0', '', '', '/uploads/20180423/1d908124a0e7c7c4fcb78fa833132575.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180423/1524468726546761.jpg\";i:1;s:52:\"/public/uploads/images/20180423/1524468726117257.jpg\";i:2;s:52:\"/public/uploads/images/20180423/1524468726104136.jpg\";i:3;s:52:\"/public/uploads/images/20180423/1524468727112295.jpg\";i:4;s:52:\"/public/uploads/images/20180423/1524468727626155.jpg\";i:5;s:52:\"/public/uploads/images/20180423/1524468727151471.jpg\";i:6;s:52:\"/public/uploads/images/20180423/1524468727770354.jpg\";}', '0', '1', '0', '0', '2018-04-23 15:32:10', '2018-04-23 15:30:20', '0', '0');
INSERT INTO `os_article` VALUES ('10', '1', '0', '莲花观音', '0005', '', '翡翠', '200000', '<p><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">8.6mm 带绳重：49g</span><br/><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">描　　述：冰种飘花挂件——莲花观音，种质冰润通透，底子细腻恬静，素雅幽静鲜活的飘花晕染于素净的底子上，灵动而有韵味。整体风格简约，莲花悠然绽放，似贴于水面，给人带来安静的视觉享受。观音衣带轻盈，静坐莲花宝座，仙气十足，低眉俯视莲花，静谧安详。观音是佛教中慈悲和智慧的象征，有求必应，降福世人；而莲花，在佛教中是圣洁、清净的圣物，一尘不染，寓意观音庇佑，吉祥如意。肉眼可见棉，瑕不掩瑜。玉雕界签约玉雕名家王立元作品，提供玉雕师亲笔签名收藏证书。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">售后承诺：签收之时起7日内自由换货，提供完美售后服务</span></p>', '7', '1', '1', '0', '/uploads/20180423/096a5c09acaa32a5fc3302a1fa3661b5.jpg', '', '/uploads/20180423/41e8049a0ae8bb6febf23b1f76e1cf96.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180423/1524469848118763.jpg\";i:1;s:52:\"/public/uploads/images/20180423/1524469848746730.jpg\";i:2;s:52:\"/public/uploads/images/20180423/1524469848112519.jpg\";i:3;s:52:\"/public/uploads/images/20180423/1524469848929701.jpg\";i:4;s:52:\"/public/uploads/images/20180423/1524469848858527.jpg\";i:5;s:52:\"/public/uploads/images/20180423/1524469848388404.jpg\";i:6;s:52:\"/public/uploads/images/20180423/1524469848129900.jpg\";}', '0', '1', '0', '0', '2018-04-23 15:50:51', '2018-04-23 15:48:06', '0', '0');
INSERT INTO `os_article` VALUES ('11', '3', '0', '玉兰清芬', 'M0001', '', '翡翠', '2700', '<div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">尺　　寸：高:28.3mm 宽:12.9mm 厚:6.6mm</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">重　　量：约3.5g</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">描　　述：【优选】玉兰清芬——和田玉籽料挂件，产地新疆</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">颜　　色：白度近一级，两星半，带洒金皮</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">结　　构：三星半</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">油　　性：三星</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">脂　　份：两星半</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">脂　　份：略带水线</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">霓裳片片晚妆新，束素亭亭玉殿春。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">已向丹霞生浅晕，故将清露作芳尘。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">玉兰花香四溢，沁人心脾，因其高洁清雅的姿态与清馨不浊的幽香，深受人们的喜爱，常被用来比作美好的事物与感情。玉兰花又象征着忠贞不渝爱情；每逢喜庆吉日，人们亦常以玉兰花馈赠。这款玉兰清芬胸坠主体为一朵盛开的玉兰花，背面满洒金皮，皮色艳丽，线条柔美，雕工流畅，打磨精细，实为一件不可多得的美物。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">作　　者：提供玉雕界民间巧匠收藏证书。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</div><p><br/></p>', '17', '1', '1', '0', '', '', '/uploads/20180423/ee4068b425e60a163e509bfd183b44b6.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180423/1524470198664152.jpg\";i:1;s:52:\"/public/uploads/images/20180423/1524470199711229.jpg\";i:2;s:52:\"/public/uploads/images/20180423/1524470199920062.jpg\";i:3;s:52:\"/public/uploads/images/20180423/1524470199934650.jpg\";i:4;s:52:\"/public/uploads/images/20180423/1524470199991925.jpg\";i:5;s:52:\"/public/uploads/images/20180423/1524470199545901.jpg\";i:6;s:52:\"/public/uploads/images/20180423/1524470199915285.jpg\";}', '0', '1', '0', '0', '2018-04-23 15:56:42', '2018-04-23 15:50:53', '0', '0');
INSERT INTO `os_article` VALUES ('12', '1', '0', '太平有象', '0006', '尺　　寸：高:66mm 宽:46.2mm 厚:12.8mm；\r\n描　　述：玛瑙挂件——太平有象。象耳大如蒲扇，双牙前伸，长鼻弯曲上卷，整体形象生动，栩栩如生，背驮一童子，一派和谐的氛围，寓意天下太平、五谷丰登，承载起古今人们的美好愿望。玉雕界签约青年玉雕师李斯作品，提供玉雕师亲笔签名收藏证书。\r\n配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。\r\n售后承诺：签收之时起7日内自由退换货，提供完美售后服务。', '玛瑙', '11500', '<p>尺　　寸： 高: 12mm &nbsp;宽:12mm &nbsp;厚: 12mm<br/>重　　量：约12g<br/>描　　述：<br/>颜　　色：绿色<br/>结　　构：测试<br/>油　　性：<br/>脂　　份：<br/>瑕　　疵：<br/></p>', '8', '1', '1', '0', '', '', '/uploads/20180423/63db07530830c15a225a7560455cffc3.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180423/1524473680448864.jpg\";i:1;s:52:\"/public/uploads/images/20180423/1524473680761533.jpg\";i:2;s:52:\"/public/uploads/images/20180423/1524473680901989.jpg\";i:3;s:52:\"/public/uploads/images/20180423/1524473681559972.jpg\";i:4;s:52:\"/public/uploads/images/20180423/1524473681636440.jpg\";i:5;s:52:\"/public/uploads/images/20180423/1524473681826511.jpg\";i:6;s:52:\"/public/uploads/images/20180423/1524473681196698.jpg\";}', '0', '1', '1', '0', '2018-04-23 16:54:44', '2018-04-23 16:53:06', '1', '0');
INSERT INTO `os_article` VALUES ('13', '2', '0', '和田玉黄沁籽料', 'Y0002', '', '翡翠', '6000', '<p><span style=\"color: rgb(74, 73, 73); font-family: \">尺　　寸：高:47mm 宽:25mm 厚:17.2mm</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">重　　量：约30.8g</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">描　　述：【优选】和田玉黄沁籽料——和田玉黄沁料独籽，产地新疆</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">颜　　色：黄沁色</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">结　　构：三星</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">油　　性：三星</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">脂　　份：两星</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">瑕　　疵：略带原生石纹</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">玉以红如鸡冠者为最，</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">黄如蒸栗、白如截肪者次之，</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">黑如点漆、青如新柳、绿如铺绒者又次之。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">作品为整块天然新疆和田籽料，俗称“独籽”，保留玉石原生态之美，整体呈椭圆形，色泽浓郁，黄如蒸栗，润泽欲滴，有岁月积淀的沉稳大气之感。佩戴把玩皆可，手感舒适，世间仅此一件，极具收藏价值。且沁色迷人，为带玉种黄沁料，属于上乘的一类，非常少见，仅从其玉料价值来说，就非常稀缺，值得藏家珍视。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</span></p>', '17', '1', '1', '0', '/uploads/20180424/e2000cfafdaaf9358631c659fa2c0b4c.jpg', '/uploads/videos/20180424/e890729423bbf17f8079b0923fabbc05.mp4', '/uploads/20180424/5d324e8b1dbb40a31a2c4d03a8f80927.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180424/1524557933913091.jpg\";i:1;s:52:\"/public/uploads/images/20180424/1524557933105255.jpg\";i:2;s:52:\"/public/uploads/images/20180424/1524557933134130.jpg\";i:3;s:52:\"/public/uploads/images/20180424/1524557933136587.jpg\";i:4;s:52:\"/public/uploads/images/20180424/1524557933120884.jpg\";i:5;s:52:\"/public/uploads/images/20180424/1524557934650640.jpg\";i:6;s:52:\"/public/uploads/images/20180424/1524557934388447.jpg\";}', '0', '1', '0', '0', '2018-04-24 16:18:57', '2018-04-24 16:17:28', '0', '0');
INSERT INTO `os_article` VALUES ('15', '1', '0', '龙行天下', '00010', '', '翡翠', '21800', '<p><span class=\"editable\" style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">尺　 寸：高：46mm 宽：28.8mm 厚：17mm。<br/>重 &nbsp; &nbsp;量：（约）39.1g<br/>描 &nbsp; &nbsp;述：冰种晴水色翡翠挂件——龙行天下。玉质温润细腻，颜色均匀舒适，造型别致。立体雕刻龙头，精雕细琢，</span><span class=\"editable\" style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">线条张力十足，神龙威武的神情和凶猛霸气尽显，立体感十足；龙是动物的神，从传统的寓意来说，龙有喜水、好飞、通天、善变、灵异、征瑞、兆祸、示威等神性，佩戴龙造型挂件有为人上人之意，龙是中华图腾，象征着吉祥与权贵，古朴大气，寓意龙行天下，前途坦荡；可见天然棉，但完全不影响整体美观。提供玉雕界签约玉雕名家莫卫国亲笔签名收藏证书。<br/>配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。<br/>售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</span></p>', '9', '1', '1', '0', '', '', '/uploads/20180425/d13af4845835a2b46f40b96a8840c70f.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180425/1524622078127034.jpg\";i:1;s:52:\"/public/uploads/images/20180425/1524622078998724.jpg\";i:2;s:52:\"/public/uploads/images/20180425/1524622078116211.jpg\";i:3;s:52:\"/public/uploads/images/20180425/1524622078316326.jpg\";i:4;s:52:\"/public/uploads/images/20180425/1524622078123169.jpg\";i:5;s:52:\"/public/uploads/images/20180425/1524622078431522.jpg\";i:6;s:52:\"/public/uploads/images/20180425/1524622078127292.jpg\";}', '0', '1', '1', '0', '2018-04-25 10:08:01', '2018-04-25 10:06:44', '0', '0');
INSERT INTO `os_article` VALUES ('14', '2', '0', '大日如来', 'Y0003', '', '翡翠', '32000', '<p><span style=\"color: rgb(74, 73, 73); font-family: \">作品编号：YDJ004844</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">尺　　寸：高：50.5mm 宽：43.7mm 厚：8.5mm。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">描　　述：冰种晴水挂件——大日如来。大日如来是佛教密宗至高无上的本尊，是光明理智的象征，生肖羊和猴的本命佛，能使佩戴敬奉者光明理智，开启智慧，成就一切事业，鸿图大展；1/3透，略微有天然棉及棉线，但不影响整体美观；</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</span></p>', '17', '1', '1', '0', '', '', '/uploads/20180424/1d10bc9419a04d8522b2f6f214689bc2.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180424/1524558209111951.jpg\";i:1;s:52:\"/public/uploads/images/20180424/1524558209392148.jpg\";i:2;s:52:\"/public/uploads/images/20180424/1524558209535401.jpg\";i:3;s:52:\"/public/uploads/images/20180424/1524558209563716.jpg\";i:4;s:52:\"/public/uploads/images/20180424/1524558209641646.jpg\";i:5;s:52:\"/public/uploads/images/20180424/1524558209458890.jpg\";i:6;s:52:\"/public/uploads/images/20180424/1524558209658730.jpg\";}', '0', '1', '0', '0', '2018-04-24 16:23:33', '2018-04-24 16:22:08', '0', '0');
INSERT INTO `os_article` VALUES ('16', '1', '0', '绽', '00011', '', '南红', '200000', '<p><span style=\"color: rgb(74, 73, 73); font-family: \">尺　　寸：含底座约高：145mm 裸石，高约：117mm 宽：128mm 厚：91mm 净重：1643.1克</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">描&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;述：《绽》荣获</span><span style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">2015年</span><span style=\"color: rgb(74, 73, 73); font-family: \">中国工艺美术玉雕“红棉奖“金奖。以爱花之心爱美人，则领略自饶有别趣；以爱美人之心爱花，则护惜倍有深情。”作品用牡丹花——花魁及花魁里的一个羞答答而又安逸、安详的少女，外围以传统的中国元素剪纸去烘托少女的幸福感。玉雕艺术家刘东将牡丹、少女，融以中国红、剪纸等元素，可谓匠心独运。也将一个艺术家对花、对美的追寻与爱慕，通过作品淋漓尽致的表达出来。有细小绺裂，瑕不掩瑜。玉雕艺术家刘东作品，提供亲笔签名收藏证书。</span></p>', '10', '0', '1', '0', '', '', '/uploads/20180425/d3b29b0e77a290665d6b683e74a27e4d.jpg', 'a:6:{i:0;s:52:\"/public/uploads/images/20180425/1524622345851814.jpg\";i:1;s:52:\"/public/uploads/images/20180425/1524622345839679.jpg\";i:2;s:52:\"/public/uploads/images/20180425/1524622345132628.jpg\";i:3;s:52:\"/public/uploads/images/20180425/1524622345655847.jpg\";i:4;s:52:\"/public/uploads/images/20180425/1524622345395160.jpg\";i:5;s:52:\"/public/uploads/images/20180425/1524622379638032.jpg\";}', '0', '1', '0', '0', '2018-04-25 10:13:02', '2018-04-25 10:10:21', '2', '0');
INSERT INTO `os_article` VALUES ('23', '3', '0', '自在观音', 'adfa', '', '翡翠', '54400', '<div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \"><span style=\"margin: 0px; padding: 0px; color: rgb(57, 57, 57); font-family: \">尺　　寸：高：63.9mm 宽：27mm 厚：7.3mm ；</span><br/></div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \"><div style=\"margin: 0px; padding: 0px; color: rgb(57, 57, 57); font-family: \">重　　量：含绳约26.13g</div><div style=\"margin: 0px; padding: 0px; color: rgb(57, 57, 57); font-family: \">描　　述：冰种晴水飘花翡翠挂件——自在观音。玉质细，水头好，底子干净，晴水色泽清亮又均匀，虽素雅却富有灵动美，极其耐人寻味。</div><div style=\"margin: 0px; padding: 0px; color: rgb(57, 57, 57); font-family: \">作品外形修形自在，以自在观音为雕刻主题，布局简洁明快，线条细腻柔美，观音身形比例协调，姿势优雅唯美，衣纹清晰流畅，大有清逸飘然之感，其发髻高隆，眉目清晰，神态安然自若，流露出静穆幽谧的气韵，给人以心神安定的感觉。观音心性柔和，仪态端庄，世事洞明，永保平安，消灾解难，远离祸害，大慈大悲普渡众生，是救苦救难的化身。略有棉点，但瑕不掩瑜。提供玉雕界民间巧匠收藏证书。</div><div style=\"margin: 0px; padding: 0px; color: rgb(57, 57, 57); font-family: \">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</div><div style=\"margin: 0px; padding: 0px; color: rgb(57, 57, 57); font-family: \">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</div></div><p><br/></p>', '17', '1', '1', '0', '', '', '/uploads/20180425/57dd23c803a9d2795b1365b0ebc5cecd.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180425/1524626705100221.jpg\";i:1;s:52:\"/public/uploads/images/20180425/1524626705623315.jpg\";i:2;s:52:\"/public/uploads/images/20180425/1524626705119185.jpg\";i:3;s:52:\"/public/uploads/images/20180425/1524626705826554.jpg\";i:4;s:52:\"/public/uploads/images/20180425/1524626705120742.jpg\";i:5;s:52:\"/public/uploads/images/20180425/1524626705124030.jpg\";i:6;s:52:\"/public/uploads/images/20180425/1524626705493230.jpg\";}', '0', '1', '0', '0', '2018-04-25 11:25:08', '2018-04-25 11:24:14', '0', '0');
INSERT INTO `os_article` VALUES ('25', '1', '0', '君子之交', 'xxx', '', '黄龙玉', '28800', '<div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">尺　　寸：高:34.3mm 宽:13.8mm 厚:12mm</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">重　　量：约6.5g</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">描　　述：君子之交——和田玉籽料挂件，产地新疆</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">颜　　色：带玉种黄沁料</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">结　　构：两星</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">油　　性：三星</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">脂　　份：两星</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">瑕　　疵：略带棉线</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">君子之交淡若水，小人之交甘若醴；</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">君子淡以亲，小人甘以绝。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">作品选材精良，以黄沁料制成，色泽艳丽，黄如蒸栗，温润如脂，浑厚老熟。惟妙惟肖地圆雕出两棵辣椒，弧线自然优美，田园气息浓郁，预示着生活红红火火、有滋有味。雕工方面细腻精湛，栩栩如生，且体量适中，质地润泽，适宜把玩。辣椒的椒与“交”字谐音，有交好运、福运、成好事的寓意。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">作　　者：玉雕界签约玉雕名家陈江南作品，提供玉雕师签名（或盖章）收藏证书。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</div><p><br/></p>', '18', '0', '1', '0', '', '', '/uploads/20180425/8af6b3a634daf8c1c99b7ca647599c68.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180425/1524646997126823.jpg\";i:1;s:52:\"/public/uploads/images/20180425/1524646997111594.jpg\";i:2;s:52:\"/public/uploads/images/20180425/1524646997953928.jpg\";i:3;s:52:\"/public/uploads/images/20180425/1524646997161024.jpg\";i:4;s:52:\"/public/uploads/images/20180425/1524646997128970.jpg\";i:5;s:52:\"/public/uploads/images/20180425/1524646997119370.jpg\";i:6;s:52:\"/public/uploads/images/20180425/1524646997366802.jpg\";}', '0', '1', '0', '0', '2018-04-25 17:03:19', '2018-04-25 17:01:54', '3', '1');
INSERT INTO `os_article` VALUES ('17', '1', '0', '《优选》秋', '123', '', '黄龙玉', '14300', '<div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">尺　　寸：高:45.7mm &nbsp;宽：34.4mm 厚： 7.9mm</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">重量：（约） 31.9 g</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">描　　述：石英岩玉挂件——秋。质地细腻，色彩分明大气，作品立意清晰，据料子色彩的分布，合理布局施艺，作品本身无过多雕刻，依色而为，顺势而造。《淮南子·说山训》：“见一叶落而知岁之将暮.”宋·唐庚《文录》引唐人诗：“山僧不解数甲子,一叶落知天下秋.”一枝枫叶入画，成为画龙点睛之笔，简单而大气。肉眼可见细小矿缺，不影响整体美观。玉雕界签约玉雕名家陈义作品，提供玉雕师亲笔签名收藏证书。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</div><p><br/></p>', '11', '1', '1', '0', '', '', '/uploads/20180425/add838a54f832f738a43c9c3cbcd20e8.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180425/1524622619593537.jpg\";i:1;s:52:\"/public/uploads/images/20180425/1524622619852975.jpg\";i:2;s:52:\"/public/uploads/images/20180425/1524622619124361.jpg\";i:3;s:52:\"/public/uploads/images/20180425/1524622620107708.jpg\";i:4;s:52:\"/public/uploads/images/20180425/1524622620507775.jpg\";i:5;s:52:\"/public/uploads/images/20180425/1524622620659246.jpg\";i:6;s:52:\"/public/uploads/images/20180425/1524622620871522.jpg\";}', '0', '1', '0', '0', '2018-04-25 10:17:03', '2018-04-25 10:15:00', '0', '2');
INSERT INTO `os_article` VALUES ('18', '1', '0', '观音·福佑', '123123', '', '翡翠', '80000', '<p>尺　　寸： 高: 12mm &nbsp;宽:12mm &nbsp;厚: 12mm<br/>重　　量：约12g<br/>描　　述：<br/>颜　　色：绿色<br/>结　　构：测试<br/>油　　性：<br/>脂　　份：<br/>瑕　　疵：<br/></p>', '12', '1', '1', '0', '', '', '/uploads/20180425/91c4fc8e498158d50982d1990f4f13cf.jpg', 'a:6:{i:0;s:52:\"/public/uploads/images/20180425/1524622844341285.jpg\";i:1;s:52:\"/public/uploads/images/20180425/1524622843706108.jpg\";i:2;s:52:\"/public/uploads/images/20180425/1524622843347438.jpg\";i:3;s:52:\"/public/uploads/images/20180425/1524622843135924.jpg\";i:4;s:52:\"/public/uploads/images/20180425/1524622843126638.jpg\";i:5;s:52:\"/public/uploads/images/20180425/1524622843111194.jpg\";}', '0', '1', '0', '0', '2018-04-25 10:22:14', '2018-04-25 10:20:50', '1', '1');
INSERT INTO `os_article` VALUES ('19', '1', '0', '鸳鸯戏水', '', '', '南红', '11600', '<div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">尺　　寸：高: 75.9mm 宽:46.1mm 厚:12.2mm&nbsp;</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">重量：（约）57.6 g</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">描　　述：南红挂件——鸳鸯戏水。产地四川。玉质温润细腻，色泽醇厚而浓艳。太阳初升，部分留白，如宁静的江水，雕刻几只荷花，凌然绽放，趣味盎然。鸳鸯戏水，优美宁静。鸳鸯一直是夫妻和睦相处、相亲相爱的美好象征，也是中国文艺作品中坚贞不移的纯洁爱情的化身，象征一生恩爱，白头到头，备受赞颂。玉雕界签约玉雕名家蒋红兵作品，提供玉雕师亲笔签名收藏证书。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</div><p><br/></p>', '13', '1', '1', '0', '', '', '/uploads/20180425/75577105bbe60963e81459875d85b571.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180425/1524623201199237.jpg\";i:1;s:52:\"/public/uploads/images/20180425/1524623202117592.jpg\";i:2;s:52:\"/public/uploads/images/20180425/1524623202908573.jpg\";i:3;s:52:\"/public/uploads/images/20180425/1524623202677664.jpg\";i:4;s:52:\"/public/uploads/images/20180425/1524623202758263.jpg\";i:5;s:52:\"/public/uploads/images/20180425/1524623202865110.jpg\";i:6;s:52:\"/public/uploads/images/20180425/1524623202634890.jpg\";}', '0', '1', '0', '0', '2018-04-25 10:26:45', '2018-04-25 10:25:14', '2', '0');
INSERT INTO `os_article` VALUES ('20', '1', '0', '炎帝神农', 'zzz', '', '翡翠', '60000', '<div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">尺　　寸：高: 60.1mm 宽:33.7mm 厚:17.4mm&nbsp;</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">重量：（约）57.3g</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">描　　述：糯冰种黄加绿翡翠挂件—炎帝神农。玉质温润细腻，黄色醇厚而不失明快，翠色生机自然。作品运用圆雕技法，立体别致，线条流畅而凝腻，炎帝慈祥端庄，对于头发和胡须等细节等巧妙自然，运用俏色雕刻灵芝，炎帝背着竹篓，童子欢乐自然，老牛神情悠闲，塑造出一幅祥和宁静的画面。炎帝是中华民族的始祖之一，是传说远古时代姜姓部落的首领，又称赤帝、烈山氏,神农氏。一说即炎帝(或炎帝的子孙)。炎帝神农，亦称神农氏。在民间传说中被尊崇为中华民族的祖先，他不仅是传授人类播种五谷的农业祖先，也是传授人们尝百草以药治病的医学发明人。玉雕界签约玉雕名家张炳光作品，提供玉雕师亲笔签名收藏证书。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</div><p><br/></p>', '14', '1', '1', '0', '/uploads/20180425/cdc167a03494939cbc06bc05956ba7c4.jpg', '/uploads/videos/20180425/31ce2439553d74826c1b0b2170d8be39.mp4', '/uploads/20180425/e98ad2faed5e2202ac3d54d8d120abe6.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180425/1524623461127627.jpg\";i:1;s:52:\"/public/uploads/images/20180425/1524623461311464.jpg\";i:2;s:52:\"/public/uploads/images/20180425/1524623461809040.jpg\";i:3;s:52:\"/public/uploads/images/20180425/1524623461828447.jpg\";i:4;s:52:\"/public/uploads/images/20180425/1524623461983921.jpg\";i:5;s:52:\"/public/uploads/images/20180425/1524623461527010.jpg\";i:6;s:52:\"/public/uploads/images/20180425/1524623461603908.jpg\";}', '0', '1', '0', '0', '2018-04-25 10:31:04', '2018-04-25 10:28:48', '0', '0');
INSERT INTO `os_article` VALUES ('21', '1', '0', '凌波仙子', 'zz', '', '琥珀', '110000', '<p><span style=\"color: rgb(74, 73, 73); font-family: \">尺　　寸：87*43*20.6mm</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">描　　述：名家小品，提供亲笔签名收藏证书。凌波仙子寓意丰富，是友谊、幸福和吉祥的象征。糯冰种紫罗兰飘翠，三分之一透，肉眼可见细小石纹，但瑕不掩瑜。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</span><br/><span style=\"color: rgb(74, 73, 73); font-family: \">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</span></p>', '15', '1', '1', '0', '', '', '/uploads/20180425/5079f2069d0e0d45cbe16fae9321369b.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180425/1524623894466378.jpg\";i:1;s:52:\"/public/uploads/images/20180425/1524623894128621.jpg\";i:2;s:52:\"/public/uploads/images/20180425/1524623894113053.jpg\";i:3;s:52:\"/public/uploads/images/20180425/1524623894526192.jpg\";i:4;s:52:\"/public/uploads/images/20180425/1524623894126078.jpg\";i:5;s:52:\"/public/uploads/images/20180425/1524623894121306.jpg\";i:6;s:52:\"/public/uploads/images/20180425/1524623894241064.jpg\";}', '0', '1', '0', '0', '2018-04-25 10:38:17', '2018-04-25 10:35:56', '1', '0');
INSERT INTO `os_article` VALUES ('22', '1', '0', '海马', 'xxx', '', '翡翠', '97000', '<div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">尺　　寸：高: 68.9mm 宽:22.5mm 厚:14.1mm 裸石:42.1mm 宽:21.9mm 厚:15.4mm</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">重量：（约） 25.9g</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">描　　述：糯冰种飘翠翡翠挂件——海马。玉质凝润细腻，翠色生机自然，灵动艳丽。作品运用18k金镶嵌，整体时尚典雅，搭配现代的镶嵌工艺，匠心独运；用料严谨；技艺娴熟，形成 自己的艺术风格。“海马呀海马．奔驰不停，披着白绿色的马鬃；一会儿你柔和温驯，一会儿又顽皮放纵。在上帝宽广的牧场上，暴烈的龙卷是你的食粮，上帝练得你爱跳爱蹦，尽情驰骋，自由奔放。”略微有棉线，但不影响整体美观。玉雕界签约玉雕名家施宗颖作品，提供玉雕师亲笔签名收藏证书。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</div><p><br/></p>', '16', '0', '1', '0', '/uploads/20180425/2607f357f23272fb4b9e70b40ec90d9e.jpg', '/uploads/videos/20180425/de8eb3aaec9008c11685196610929ef2.mp4', '/uploads/20180425/1a79e570106645617dd98e59a6f50e5c.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180425/1524624133506053.jpg\";i:1;s:52:\"/public/uploads/images/20180425/1524624133591127.jpg\";i:2;s:52:\"/public/uploads/images/20180425/1524624133846004.jpg\";i:3;s:52:\"/public/uploads/images/20180425/1524624133858484.jpg\";i:4;s:52:\"/public/uploads/images/20180425/1524624133861065.jpg\";i:5;s:52:\"/public/uploads/images/20180425/1524624133735972.jpg\";i:6;s:52:\"/public/uploads/images/20180425/1524624133629124.jpg\";}', '0', '1', '1', '0', '2018-04-25 10:42:15', '2018-04-25 10:40:30', '2', '1');
INSERT INTO `os_article` VALUES ('24', '3', '0', '慧知万物', '', '', '翡翠', '145000', '<div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">尺　　寸：高:65.6mm 宽:40.3mm 厚:8.9mm&nbsp;</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">重量：（约） 68.0g</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">描　　述：冰种晴水翡翠挂件——慧知万物。玉质凝润细腻，色泽素雅别致，韵味十足。作品雕塑风浓郁，使用肌理表达出层次感和空间感，巧妙运用俏色雕刻无相佛，清幽的材质与其心性遥相呼应。以最简约的线条诠释荷花，观感清爽自然，大气十足，又符合艺术美学。佛陀雕刻线条简约流畅，在天地山河间静思禅悟。佛本无相，心若清如水月，不恋万物便可大道至简。侧面略微有棉线，但不影响整体美观。提供玉雕界民间巧匠收藏证书。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">配送时间：付款之时起72小时内发货，正常3-5天到达，特殊情况适当顺延。</div><div style=\"margin: 0px; padding: 0px; color: rgb(74, 73, 73); font-family: \">售后承诺：签收之时起7日内自由退换货，提供完美售后服务。</div><p><br/></p>', '17', '1', '1', '0', '', '', '/uploads/20180425/f238015d47381576d28f807457070b7e.jpg', 'a:7:{i:0;s:52:\"/public/uploads/images/20180425/1524626786291110.jpg\";i:1;s:52:\"/public/uploads/images/20180425/1524626786172987.jpg\";i:2;s:52:\"/public/uploads/images/20180425/1524626787140124.jpg\";i:3;s:52:\"/public/uploads/images/20180425/1524626787804909.jpg\";i:4;s:52:\"/public/uploads/images/20180425/1524626787873803.jpg\";i:5;s:52:\"/public/uploads/images/20180425/1524626787123832.jpg\";i:6;s:52:\"/public/uploads/images/20180425/1524626787798282.jpg\";}', '0', '1', '0', '0', '2018-04-25 11:26:29', '2018-04-25 11:25:09', '0', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COMMENT='规则表';

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
INSERT INTO `os_auth_rule` VALUES ('75', 'admin/book/index', '证书管理', '1', '1', '14', '', '0', '');

-- ----------------------------
-- Table structure for os_book
-- ----------------------------
DROP TABLE IF EXISTS `os_book`;
CREATE TABLE `os_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` tinyint(11) DEFAULT NULL COMMENT '作品id',
  `book_num` varchar(255) DEFAULT NULL COMMENT '证书编号',
  `content` longtext COMMENT '证书内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_book
-- ----------------------------
INSERT INTO `os_book` VALUES ('3', '17', '0001', '<p><img src=\"/public/uploads/images/20180423/1524455717708647.jpg\"/></p><p><img src=\"/public/uploads/images/20180423/1524455717484537.jpg\"/></p><p><img src=\"/public/uploads/images/20180423/1524455717435911.jpg\"/></p><p><img src=\"/public/uploads/images/20180423/1524455717141789.jpg\"/></p><p><img src=\"/public/uploads/images/20180423/1524455717131974.jpg\"/></p><p><br/></p>');

-- ----------------------------
-- Table structure for os_book_record
-- ----------------------------
DROP TABLE IF EXISTS `os_book_record`;
CREATE TABLE `os_book_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL COMMENT '查询时间',
  `ip` varchar(255) DEFAULT NULL COMMENT '查询的ip地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_book_record
-- ----------------------------
INSERT INTO `os_book_record` VALUES ('34', '2', '2018-05-02 10:56:42', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('35', '2', '2018-05-02 11:23:28', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('36', '2', '2018-05-02 11:25:20', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('37', '2', '2018-05-02 11:25:21', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('38', '2', '2018-05-02 11:25:23', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('39', '2', '2018-05-02 11:25:40', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('40', '2', '2018-05-02 11:25:42', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('41', '2', '2018-05-02 11:28:09', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('42', '2', '2018-05-02 11:28:47', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('43', '2', '2018-05-02 11:29:22', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('44', '2', '2018-05-02 11:29:23', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('45', '2', '2018-05-02 11:29:30', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('46', '2', '2018-05-02 11:29:44', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('47', '2', '2018-05-02 11:30:13', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('48', '2', '2018-05-02 11:30:30', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('49', '2', '2018-05-02 11:31:06', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('50', '2', '2018-05-02 11:32:05', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('51', '2', '2018-05-02 11:32:16', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('52', '2', '2018-05-02 11:33:08', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('53', '2', '2018-05-02 11:35:10', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('54', '2', '2018-05-02 11:37:52', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('55', '2', '2018-05-02 11:38:00', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('56', '2', '2018-05-02 11:38:09', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('57', '2', '2018-05-02 11:42:12', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('58', '2', '2018-05-02 11:43:18', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('59', '2', '2018-05-02 11:47:29', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('60', '2', '2018-05-02 11:48:28', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('61', '2', '2018-05-02 11:48:37', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('62', '2', '2018-05-02 11:48:47', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('63', '2', '2018-05-02 11:49:21', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('64', '2', '2018-05-02 11:49:45', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('65', '2', '2018-05-02 11:50:04', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('66', '2', '2018-05-02 11:50:56', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('67', '2', '2018-05-02 11:52:16', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('68', '2', '2018-05-02 11:52:52', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('69', '2', '2018-05-02 11:55:14', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('70', '2', '2018-05-02 12:04:40', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('71', '2', '2018-05-02 14:11:49', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('72', '2', '2018-05-02 14:28:51', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('73', '2', '2018-05-02 14:29:20', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('74', '2', '2018-05-02 14:29:25', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('75', '2', '2018-05-02 14:31:23', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('76', '2', '2018-05-02 14:33:20', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('77', '2', '2018-05-02 14:33:26', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('78', '2', '2018-05-02 14:46:43', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('79', '2', '2018-05-02 14:47:23', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('80', '2', '2018-05-02 14:48:37', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('81', '2', '2018-05-02 14:48:52', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('82', '2', '2018-05-02 14:48:54', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('83', '2', '2018-05-02 14:49:03', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('84', '3', '2018-05-02 14:53:28', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('85', '3', '2018-05-02 14:54:28', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('86', '3', '2018-05-02 14:54:45', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('87', '3', '2018-05-02 14:54:48', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('88', '3', '2018-05-02 14:54:51', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('89', '3', '2018-05-02 14:54:52', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('90', '3', '2018-05-02 14:54:54', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('91', '3', '2018-05-02 14:54:55', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('92', '3', '2018-05-02 14:55:44', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('93', '3', '2018-05-02 14:59:09', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('94', '3', '2018-05-02 14:59:43', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('95', '3', '2018-05-02 14:59:58', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('96', '3', '2018-05-02 15:00:53', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('97', '3', '2018-05-02 15:02:20', '127.0.0.1');
INSERT INTO `os_book_record` VALUES ('98', '3', '2018-05-02 15:14:46', '127.0.0.1');

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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='大师用户表';

-- ----------------------------
-- Records of os_grand
-- ----------------------------
INSERT INTO `os_grand` VALUES ('5', '民间巨匠', '', '', '1', '/uploads/20180425/7e895cca00f0fee7a002de36dd598bfa.jpg', '0', '0', '0', '2018-04-25 16:44:33', '2018-04-25 16:42:53');
INSERT INTO `os_grand` VALUES ('6', '庄家玉雕工作室', '庄家玉雕工作室是由玉雕大师庄庆芳创办，创作的作品植根于中国传统禅文化的经典土壤，以“静、定、空、悟、真、慧、素、净、慢、容、和、缘”十二字的创作初心与技艺，为东方代言，为时代代言，为翡翠代言，让人们透过翡翠的自然之美、人文之美，感受生命，感知生活，凝神静气，身心合一。借翡翠之美，借襌艺之工为热爱翡翠的人们创造一个增定开慧，见性明心的翡翠境界，成为东方禅意翡翠艺术之美的典范，成为东方珠宝文化的代表', '', '1', '/uploads/20180423/6abc8993083e662b1ce4216a34f165de.jpg', '0', '0', '0', '2018-04-23 15:30:14', '2018-04-23 15:29:10');
INSERT INTO `os_grand` VALUES ('7', '王立元', '王立元，云南优秀玉雕师，瑞丽巧雕师。从事玉雕创作十年，其对山水、人物类题材作品有深刻独到的把握和见解，作品风格简约，追求“灵、简、精”。作品设计创作用料大胆，设计新颖，阴刻阳刻、立体雕刻相结合，手法娴熟。在云南、广东等玉雕赛事中屡屡获奖。1986年生于河南省邓州市，2004年与玉结缘，师从玉雕大师王朝阳。2014年创立“古石珠宝文化有限公司”，2016年7月--2017年7月毕业于中央美术学院雕塑系“尚晓风泥塑心法高研班”', '<div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2011年获“巧雕师”称号。</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2014年8月份获“云南玉雕大师奖” 铜奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2014年10月份获“瑞丽神工奖” 银奖 铜奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2014年12月份获“广州云峰杯奖” 银奖 铜奖 &nbsp;</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2015年10月份获“瑞丽神工奖” &nbsp;金奖&nbsp;</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2015年10月份获“瑞丽神工奖 ” &nbsp;银奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2015年12月份获“北京天工奖” &nbsp; 优秀奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2016年4月份获“金凤凰”创新产品设计大奖赛 &nbsp; 金奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2016年7月份获“精品展”中国昆明泛亚石博览会 &nbsp;银奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2016年12月群展《泥诉》 &nbsp; 中央美术学院通道画廊</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2017年6月群展《法心塑泥》中央美术学院通道画廊</div><p><br/></p>', '1', '/uploads/20180423/6124f4cfca1baf5cc636fa88fdc31d60.jpg', '0', '0', '0', '2018-04-23 15:48:01', '2018-04-23 15:47:35');
INSERT INTO `os_grand` VALUES ('8', '李斯', '李斯，80后，师从其父广东省玉石雕刻大师李克生，自小于玉雕机旁长大，耳渎目染浸淫玉意，爱武侠好美乐，初习画功字而后执刀刻玉。好学勤思，作品灵巧而富神韵，主张雕刻者应以手中刻刀表达内敛的情怀，赋予作品厚重的灵魂。现为潮州市工艺美术协会会员，揭阳工艺美术学会会员，助理工艺美术师', '<div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">太白醉酒获2013年中国玉石器百花奖银奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">福寿双全摆件获2014年揭阳莲花奖金奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">江南好获2014年揭阳莲花奖银奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">慈航济世链牌获2014首届九龙杯银奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">南红玛瑙鼻烟壶获2014首届九龙杯铜奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">白玉深处是江南获2014第二届云峰杯铜奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">鹰击长空获2014第二届云峰杯优秀奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">双龙平安链牌获2015九龙奖金奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">清者自悠套牌获2015九龙奖银奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">悠然南山牌获2015九龙奖铜奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">仿古器皿三件套获2015莲花奖金奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">大展宏图获2015莲花奖银奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">教子图获第三届广东（潮州）工艺美术精品展银奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">&nbsp;一夜封侯获2015广州红棉奖铜奖</div><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">福慧双修链牌获2015玉魂奖最佳工艺奖</div><p><br/></p>', '1', '/uploads/20180423/b6f05c2103d053466bead9bf3e309001.jpg', '0', '0', '0', '2018-04-23 16:48:29', '2018-04-23 16:47:32');
INSERT INTO `os_grand` VALUES ('9', '莫卫国', '莫卫国，广东化州人，广东省著名玉雕设计师。2006年毕业于广州大学，2007年开始从事玉雕设计，2013年创立个人玉雕工作室任设计总监。擅长于人物、仿古、龙凤、花鸟等各种题材。在继承传统玉雕精雕细琢的基础上，秉承中国千年传统玉文化主题，和现代艺术的相结合，创立自己独特的个人玉雕设计风格。从业期间，曾参与多个玉雕名师的获奖作品设计。', '', '1', '/uploads/20180425/d05214f0e4e948dd61cb9479460bfa7e.jpg', '0', '0', '0', '2018-04-25 09:53:33', '2018-04-25 09:52:36');
INSERT INTO `os_grand` VALUES ('10', '刘东', '刘东，中国玉石雕刻大师，当代玉雕艺术家，现为中国美术学会雕塑专业委员会会员，中国珠宝首饰行业协会理事，福建省寿山石文化艺术研究会理事，集天工奖、百花奖、神工奖等众多奖项的金奖得主。多次应邀赴海外办个人作品展，作品多入选海内外博物馆收藏。近年来国内主流媒体竞相关注、采访及专题播报。个人专著有《枕石悟语》、《刘东雕塑艺术》。从事玉石雕刻艺术创作近三十年，其作品极具思想内涵与哲学深意，对东西方的人文思想及历史文化的研读深得正悟，集诗书画篆等艺术的精髓和娴熟的技法相融合。', '<p><span style=\"color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; background-color: rgb(250, 250, 250);\">“艺术家不一定要把自己的作品解读得很清晰，艺术家要创造一个引发深度思考的符号。我这个作品是给你去思考的，我有我主观的解释，但我不告诉你我的解释是正确的还是错误的，没有标准答案。”</span><br/><br/><span style=\"color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; background-color: rgb(250, 250, 250);\">　　在刘东看来，玩收藏、旅游、极限运动、探险等，是国人追求精神享受的一种表现。博物馆、歌剧院、艺术馆这一类的场所将会越来越多，这也将增强人们在艺术文化方面的熏陶。刘东说，奢侈代表的是一种更高的生活品质，不能简单的理解为浪费、拜金这样的行为。当下存在的问题，只是国人对待消费的观念问题。</span><br/><br/><span style=\"color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; background-color: rgb(250, 250, 250);\">　　长久以来，中国的玉文化一直停留在宫廷之中，无论是神玉文化还是礼玉文化，只有有德行有身份的人才能佩玉戴玉，平民百姓是不能玩的。从这一点来说，玉文化其实也是一种贵族文化，一种高品质生活方式的追求和表现。</span><br/><br/><span style=\"color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; background-color: rgb(250, 250, 250);\">　　回归传统，从传统中寻找灵感和创意，这成为诸多艺术行业喊出的口号。从玉雕创作来看，回归应该以一种什么样的方式呈现呢？</span><br/><br/><span style=\"color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; background-color: rgb(250, 250, 250);\">　　刘东说，不同时代有不同的回归，理性的回归应该是心灵、思想、认识、审美回归。而在玉雕创作上，对传统玉雕艺术的传承，应该是在正解传统，正读经典的基础上，同时保留这个时代的文化特征与符号。</span><br/><br/><span style=\"color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; background-color: rgb(250, 250, 250);\">　　对于如何在玉雕创作中呈现时代气息、时代符号，刘东说关键是要捕捉到时下的审美趋向，文化主流是什么，然后再回过去看传统。如果玉雕师看不清当下需要什么，也看不清历史沉淀下来什么，主观上觉得可以就乱做鸳鸯谱，这样是不行的。就当前很多传统题材的玉雕创作，刘东认为比较盲目，只是一种伪文化、伪艺术</span></p>', '1', '/uploads/20180425/2fd843b348ccd0038815be2c4ab37f61.jpg', '0', '0', '0', '2018-04-25 10:09:49', '2018-04-25 10:09:15');
INSERT INTO `os_grand` VALUES ('11', '陈义', '陈义，当代玉雕艺术家，广东省雕刻艺术研究会常务副会长、广东省玉雕文化艺术促进会常务副会长，广东省玉石雕刻大师。陈义秉承“石话石说”的创作理念，永葆“以时代为基，以创新为轨，以艺术为向，以文化为魂”的匠人之心，唤醒每一块过手的石头，以玉言理，以超现实的表现手法直击人心。作品萃取雕塑、绘画、根雕、剪纸、皮影等艺术手法，融中国美学、西方绘画理念等多种元素，独具“精、细、巧、绝”的艺术风格。', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2010年 《白玉身穿黄金衣》获天工奖“优秀奖”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2010年 《和谐》、《大喜》获上海神工奖“最佳创意奖”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2010年《英雄花开》获上海神工奖“最佳工艺奖”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2010年《志在蓝天》、《民族少女》获上海神工奖优秀奖</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2010年 《果王果后》获全国玉石雕刻“玉星奖”最佳创意奖</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2010年《飞龙在天》获全国玉石雕刻“玉星奖”最佳工艺奖</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2011年 《物阜民安》获上海神工奖金奖</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2011年《踏春归来》、《在水一方》获上海神工奖银奖</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2011年《夫唱妇随》获上海神工奖“最佳工艺奖</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2011年 《耶利亚》获全国玉石雕刻“玉星奖”优秀奖</p><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">2014年 《共享清源》获第二届中国“云峰杯”玉雕大赛银奖</div><p><br/></p>', '1', '/uploads/20180425/681e0e8d3e30de68bcd3c354012ac771.jpg', '0', '0', '0', '2018-04-25 10:14:56', '2018-04-25 10:14:28');
INSERT INTO `os_grand` VALUES ('12', '王朝阳', '王朝阳，1970年出生于河南南阳，著名翡翠雕刻大师， 其作品《红色经典》《祝福》开创了玉雕艺术的先河，是中国当代玉雕界的代表性人物。被誉为“玉雕界的齐白石”。 经过近三十年的苦心研究，王朝阳独创了当代翡翠雕刻新美学——玉雕心法。主张玉雕是关于空间的表达。以材料为主，把形象雕刻减到最少，把想象力放到最大，最大限度的展现翡翠材料之美，给观者更多审美的参与和丰富的想象力，用玉雕再塑人文与自然之美。 作品独有的艺术特色，深受行业内外人士的追捧和喜爱。', '<p><span style=\"color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; background-color: rgb(250, 250, 250);\">2014年 作品《花之梦》系列获瑞丽神工奖特等奖。</span><br/><span style=\"color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; background-color: rgb(250, 250, 250);\">2010年 作品《年轮》荣获中国玉（石）器百花奖金奖。作品《人与自然》获神工奖金奖、卞和杯金奖。</span><br/><span style=\"color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; background-color: rgb(250, 250, 250);\">2009年 第十届中国工艺美术大师作品暨国际艺术精品博览会上，玉雕作品《祝福》获“天工艺苑•百花杯”中国工艺美术精品奖金奖。</span><br/><span style=\"color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; background-color: rgb(250, 250, 250);\">2009年 参与第三届神工奖玉雕大赛，《童趣》、《贝多芬》获金奖。</span><br/><span style=\"color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; background-color: rgb(250, 250, 250);\">2008年 参与天工奖大赛，选送的《军帽》获最佳创意奖。 参与首届卞和杯玉雕作品大赛，《部落的太阳》获金奖。</span><br/><span style=\"color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; background-color: rgb(250, 250, 250);\">2007年 神工奖玉雕大赛，作品《幽香》、《青春》、《一帘幽梦》、《童趣》获金奖。</span><br/><span style=\"color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; background-color: rgb(250, 250, 250);\">2005年 在中宝协、国家轻工部等单位联合举办的玉雕界最高奖项天工奖大赛上，《斑点狗》获天工奖铜奖。</span><br/><span style=\"color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; background-color: rgb(250, 250, 250);\">2004年 在云南举办的中国云南国际珠宝玉石博览展销交易会上，选送作品《喜、怒、哀、乐、愁》获大赛金奖。</span><br/></p><div style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><div style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5;\">&nbsp;</span></div></div><p><br/></p>', '1', '/uploads/20180425/002f8acb82a9b3d85dac7f466440bf36.jpg', '0', '0', '0', '2018-04-25 10:18:07', '2018-04-25 10:17:40');
INSERT INTO `os_grand` VALUES ('13', '蒋红兵', '蒋红兵，广东省玉石雕刻大师，字赤云 ,年近不惑，祖籍湖北武汉。少有奇志，敏而好学，尤乐玉雕。时入边疆异域，寻石访友 ; 或独处一室，闭关参修;抑或遁形山川，师法自然，拜会名家，其踪迹遍布南北。经年假途玉雕践行生之意义。世出世间，随缘隐现，风行雨住，一任自然。朴素清淡，平常度日。梵行人间，实在做人，专心玉事，为瑜伽实践者。', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal; text-align: center;\"><span style=\"margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"margin: 0px; padding: 0px; font-size: 14px;\">平洲珠宝玉器协会 &nbsp; &nbsp;</span><span style=\"margin: 0px; padding: 0px; font-size: 14px;\">理事</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal; text-align: center;\"><span style=\"margin: 0px; padding: 0px;\">平洲珠宝玉器协会玉雕文化艺术促进会 &nbsp; &nbsp; 常务副主席</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal; text-align: center;\"><span style=\"margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"margin: 0px; padding: 0px; font-size: 14px;\">全国工商联金银珠宝业商会玉石专业委员会 &nbsp; &nbsp;</span><span style=\"margin: 0px; padding: 0px; font-size: 14px;\">常务委员</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal; text-align: center;\"><span style=\"margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"margin: 0px; padding: 0px; font-size: 14px;\">广东省雕刻艺术研究会 &nbsp;</span><span style=\"margin: 0px; padding: 0px; font-size: 14px;\">&nbsp;副会长</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal; text-align: center;\"><span style=\"margin: 0px; padding: 0px; font-size: 12px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px;\">2010年《福寿双全》荣获中国玉石雕刻作品天工奖最佳工艺奖</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px;\">2011年《龙凤呈祥》、《龙头》荣获芒市首届金象奖银奖</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px;\">2011年《蝶舞幽兰》、《菊花》荣获平洲玉器精英奖金奖，同年《菊花》在2011年第三届上海玉龙奖上荣获最佳创意奖</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px;\">2011年《生机》荣获中国•上海玉石雕刻神工奖银奖</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px;\">2012年《月里嫦娥》、《独占枝头》、《圣洁》分别荣获第四届上海玉龙奖金奖、银奖、最佳创意奖</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px;\">2012年《老子出关》在岭南玉雕艺术摩斯沙杯第二届平洲玉器精英奖获得银奖</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px;\">2012年《山径通幽》、《罗汉像》荣获2012年中国上海神工奖银奖</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px;\">2012年《咏梅》荣获2012年中国广东省首届玉魂奖最佳工艺奖</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px;\">2012年《翱翔》荣获2012年云南芒市金象奖银奖</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px;\">2012年《印象江南》荣获2012年第三届平洲玉器杯创意金奖</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px;\">2013年《菊黄茶语》荣获2013中国•上海玉石雕刻神工奖银奖，同年荣获2013年中国芒市金象奖金奖</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px;\">2013年《米癫拜石》荣获2013中国•上海玉石雕刻神工奖银奖</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px;\">2013年《昭君出塞》荣获2013岭南艺术•平洲玉器杯奖金奖</span></p><p><br/></p>', '1', '/uploads/20180425/b0fdddae63a3e8b00ecd0d731dc67044.jpg', '0', '0', '0', '2018-04-25 10:23:29', '2018-04-25 10:23:15');
INSERT INTO `os_grand` VALUES ('14', '张炳光', '张炳光，中国玉石雕刻大师，广东省工艺美术大师，高级工艺美术师，国家一级/高级技师。几十年来潜心研究中华传统文化、岭南文化、绘画美学，并将国画、壁画、漆画、灰塑等艺术门类融会贯通，把人生阅历和人文素养融入玉雕创作，形成了自成一家的美学理念和雕刻体系。对高档翡翠的雕刻创作，有着独到的见解。创作的翡翠山水牌、璧，作品构图暗合五行变化，方寸之间有大千气象。', '', '1', '/uploads/20180425/bf9ed05419cc825af570871da0bdc7a7.jpg', '0', '0', '0', '2018-04-25 10:28:45', '2018-04-25 10:28:08');
INSERT INTO `os_grand` VALUES ('15', '李牧祥', '李牧祥，广东肇庆人，中国工艺品雕刻高级技师，广东省高级工艺美术师，“玉魂奖”评审专家。李牧祥的玉雕创作非常强调设计的艺术含量，他的玉雕设计思想和创作手法融汇中西方多种艺术元素，题材丰富，远超传统范围。李牧祥认为，玉石的灵魂在于玉雕师注入的设计思想，仅有精工细作的雕刻技法，而无设计创意的灵性，玉雕作品就会充斥平庸的“匠气”，设计创意的水平是区分玉雕作品艺术层次的根本所在。', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5;\">2014年 作品《清扬人间道》获 “云峰杯”玉雕大赛金奖。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5;\">2013年 作品《翠语梵音》获“南粤杯”玉雕工艺技能大奖赛金奖。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5;\">2013年 作品《风淡荷花香》获“深圳·金凤凰”工艺品创新设计奖金奖，广东省首届玉雕作品“玉魂奖” 最佳工艺奖。</span><span style=\"margin: 0px; padding: 0px; line-height: 1.5;\">2012 作品《财宝天王》获广东传统工艺美术精品展金奖，广东首届玉雕作品“玉魂奖” 最佳工艺奖。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5;\">2012年 作品《渡人知悦》获广东传统工艺美术精品展精品奖。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5;\">2012年 作品《紫悦》获广东省首届玉雕作品“玉魂奖” 金奖。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5;\">2011年 作品《纳福聚宝》、《唐韵遗风》获岭南中青年玉石雕刻家原创作品联展金奖。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5;\">2011年 作品《步步莲花》获传承与创新·工艺美术作品奖金奖。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5;\">2010年 作品《梵音》获龙岗金凤凰中国工艺美术精品展金奖。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5;\">2009年 作品《和诣如意》获广州工艺美术大师精品展金奖。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5;\">2009年 作品《带子上朝》获中国工艺美术百花奖（深圳）金奖。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5;\">2008年 作品《四季平安》获广州市工艺美术精品评比金奖。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5;\">2008年 作品《和平圆梦曲》获中国玉器百花奖特别奖。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5;\">2007年 作品《野趣》获第三届广州市工艺美术精品评比金奖。</span></p><p><br/></p>', '1', '/uploads/20180425/4847eacd865971e7d0b8a28b093fb0b4.jpg', '0', '0', '0', '2018-04-25 10:35:52', '2018-04-25 10:35:13');
INSERT INTO `os_grand` VALUES ('16', '施宗颖', '施宗颖，广东省雕刻艺术研究会会长、中华玉雕大师、广东省玉石雕刻大师、中国神工价值人物。其艺术风格吸收中国传统道教与佛教精髓，结合现代思潮的玄幻倾向，融合创作出天马行空，大胆巧思的作品。其作品运用魔幻、超现实主义的手法，突破传统又兼具传统，充满了现代线条感与东方神秘色彩，风格独具一格。', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">　中华玉雕大师</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">　　十大杰出青年</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">　　中国神工价值人物</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">　　广东省玉石雕刻大师</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">　　广东省雕刻艺术研究会会长</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">　　中华玉石专业委员会副主任</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">　　宗.翡翠艺术工作室艺术总监</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">　　海派玉雕大师华裔玉石雕刻大师</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">　　新世纪中国首批20名国家级玉雕大师</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 14px; white-space: normal;\">　　广东省玉雕文化促进会-常务副会长兼艺术总监</p><p><br/></p>', '1', '/uploads/20180425/e086eb2aee077bfb8f15b1bc20e03f31.jpg', '0', '0', '0', '2018-04-25 10:40:24', '2018-04-25 10:39:56');
INSERT INTO `os_grand` VALUES ('17', '陈江南', '陈江南，苏派玉雕大师，国家高级玉雕师，苏州玉雕委员会副会长。擅长恢弘写意之风格，作品浑厚大气，雕工精细，尤重意境，不囿于刻板传统，刚柔结合，独具江南情怀。尤精于忠义关公雕刻，以女性视角观察关公文化、历史背景与人物性格，以超脱于传统的俊逸手法，将内心的关公形象呈现出来。既有豪迈大气的洒脱，又有江南婉约的柔美，刚柔兼济，令人叹为观止，堪称关公玉雕第一人。', '', '1', '/uploads/20180425/8f44a3f6ecc2e5bf0f8e5e3c7dedc993.jpg', '0', '0', '0', '2018-04-25 17:01:51', '2018-04-25 17:01:13');
INSERT INTO `os_grand` VALUES ('18', '加龙', '加龙，本名张钦荣，青年玉雕名家，中级工艺美术师,广东省揭阳职业技术学院外聘教师，广东省雕刻艺术研究会副会长。2006年师从高级工艺美术师、广东省工艺美术大师张炳光，学习传统工艺美术和高端翡翠设计及雕刻，2012年创办个人翡翠雕刻艺术工作室。其作品在业内和藏家均有极高口碑，作品多年来在中国工艺美术“文化创意奖”，中国工艺美术“百花奖”，广东省工艺美术精品展等各类赛事中获奖，金奖七个，银奖十个。', '', '1', '/uploads/20180423/cb7372b8db98e55bbf1673bdfa457bf5.jpg', '0', '0', '0', '2018-04-23 10:03:34', '2018-04-23 10:02:36');

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
-- Table structure for os_materials
-- ----------------------------
DROP TABLE IF EXISTS `os_materials`;
CREATE TABLE `os_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '材质名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_materials
-- ----------------------------
INSERT INTO `os_materials` VALUES ('1', '翡翠');
INSERT INTO `os_materials` VALUES ('2', '琥珀');
INSERT INTO `os_materials` VALUES ('3', '玛瑙');
INSERT INTO `os_materials` VALUES ('4', '黄龙玉');
INSERT INTO `os_materials` VALUES ('5', '和田玉');
INSERT INTO `os_materials` VALUES ('6', '南红');
INSERT INTO `os_materials` VALUES ('7', '水晶');
INSERT INTO `os_materials` VALUES ('8', '水沫玉');
INSERT INTO `os_materials` VALUES ('9', '戈壁玉');
INSERT INTO `os_materials` VALUES ('10', '战国红');
INSERT INTO `os_materials` VALUES ('11', '三彩玉');
INSERT INTO `os_materials` VALUES ('12', '玉髓');
INSERT INTO `os_materials` VALUES ('13', '碧玉');
INSERT INTO `os_materials` VALUES ('14', '金丝玉');
INSERT INTO `os_materials` VALUES ('15', '岫玉');
INSERT INTO `os_materials` VALUES ('16', '青金石');
INSERT INTO `os_materials` VALUES ('17', '绿松石');
INSERT INTO `os_materials` VALUES ('18', '其它');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of os_user
-- ----------------------------
INSERT INTO `os_user` VALUES ('1', 'user', 'user', '', '', '1', '2018-04-11 13:03:21', null, '');
INSERT INTO `os_user` VALUES ('2', 'user1', 'user1', '', '', '1', null, null, '');
INSERT INTO `os_user` VALUES ('3', 'user3', 'user3', '', '', '1', null, null, '');
INSERT INTO `os_user` VALUES ('4', 'user4', 'user4', '', '', '1', null, null, '');
INSERT INTO `os_user` VALUES ('5', 'user5', 'user5', '', '', '1', null, null, '');
INSERT INTO `os_user` VALUES ('6', 'user2', 'user2', '', '', '1', null, null, '');

-- ----------------------------
-- Table structure for os_user_good_bad
-- ----------------------------
DROP TABLE IF EXISTS `os_user_good_bad`;
CREATE TABLE `os_user_good_bad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL COMMENT '作品id',
  `user_id` int(11) DEFAULT NULL COMMENT '点赞或者踩的用户id',
  `is_good` int(11) DEFAULT '0' COMMENT '点赞的数量',
  `is_bad` int(11) DEFAULT '0' COMMENT '踩的数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_user_good_bad
-- ----------------------------
INSERT INTO `os_user_good_bad` VALUES ('4', '25', '1', '1', '0');
INSERT INTO `os_user_good_bad` VALUES ('5', '22', '1', '0', '1');
INSERT INTO `os_user_good_bad` VALUES ('6', '25', '2', '1', '0');
INSERT INTO `os_user_good_bad` VALUES ('7', '22', '2', '1', '0');
INSERT INTO `os_user_good_bad` VALUES ('8', '21', '2', '1', '0');
INSERT INTO `os_user_good_bad` VALUES ('9', '19', '2', '1', '0');
INSERT INTO `os_user_good_bad` VALUES ('10', '18', '2', '1', '0');
INSERT INTO `os_user_good_bad` VALUES ('11', '17', '2', '0', '1');
INSERT INTO `os_user_good_bad` VALUES ('12', '16', '2', '1', '0');
INSERT INTO `os_user_good_bad` VALUES ('13', '25', '6', '0', '1');
INSERT INTO `os_user_good_bad` VALUES ('14', '17', '6', '0', '1');
INSERT INTO `os_user_good_bad` VALUES ('15', '16', '6', '1', '0');
INSERT INTO `os_user_good_bad` VALUES ('16', '12', '6', '1', '0');
INSERT INTO `os_user_good_bad` VALUES ('17', '19', '6', '1', '0');
INSERT INTO `os_user_good_bad` VALUES ('18', '22', '6', '1', '0');
INSERT INTO `os_user_good_bad` VALUES ('19', '18', '6', '0', '1');

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
