INSERT INTO `mangos_string` VALUES ('1301', 'L\'�quipement n\'existe pas ou � �t� interdit.', null, 'L\'�quipement n\'existe pas ou � �t� interdit.', null, null, null, null, null, 'L\'�quipement n\'existe pas ou � �t� interdit.');

-- ----------------------------
-- Table structure for `item_disabled`
-- ----------------------------
DROP TABLE IF EXISTS `item_disabled`;
CREATE TABLE `item_disabled` (
  `id` int(11) unsigned NOT NULL default '0' COMMENT 'Id de l\'item',
  `active` tinyint(3) unsigned NOT NULL default '1' COMMENT 'On / Off',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Interdiction d\'items';