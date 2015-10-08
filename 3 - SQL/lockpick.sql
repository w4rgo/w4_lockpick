-- Table structure for lockpick
-- ----------------------------
DROP TABLE IF EXISTS `lockpick`;
CREATE TABLE `lockpick` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(32) NOT NULL,
  `object_owner` varchar(64) NOT NULL,
  `territory_id` int(11) NOT NULL,
  `position_x` double NOT NULL,
  `position_y` double NOT NULL,
  `position_z` double NOT NULL,
  `object` varchar(64) NOT NULL,
  `type` varchar(20) NOT NULL,
  `object_type` varchar(20) NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=latin1;
