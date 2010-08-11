INSERT INTO `mangos_string` VALUES ('1301', 'L\'équipement n\'existe pas ou à été interdit.', null, 'L\'équipement n\'existe pas ou à été interdit.', null, null, null, null, null, 'L\'équipement n\'existe pas ou à été interdit.');

-- ----------------------------
-- Table structure for `item_disabled`
-- ----------------------------
DROP TABLE IF EXISTS `item_disabled`;
CREATE TABLE `item_disabled` (
  `id` int(11) unsigned NOT NULL default '0' COMMENT 'Id de l\'item',
  `active` tinyint(3) unsigned NOT NULL default '1' COMMENT 'On / Off',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Interdiction d\'items';