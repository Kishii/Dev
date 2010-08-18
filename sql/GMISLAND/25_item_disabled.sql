INSERT INTO `mangos_string` VALUES ('1301', 'Vous ne pouvez pas vous ajouter cette item.', null, 'Vous ne pouvez pas vous ajouter cette item.', null, null, null, null, null, 'Vous ne pouvez pas vous ajouter cette item.');

-- ----------------------------
-- Table structure for `item_disabled`
-- ----------------------------
DROP TABLE IF EXISTS `item_disabled`;
CREATE TABLE `item_disabled` (
  `id` int(11) unsigned NOT NULL default '0' COMMENT 'Id de l\'item',
  `active` tinyint(3) unsigned NOT NULL default '1' COMMENT 'On / Off',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Interdiction d\'items';