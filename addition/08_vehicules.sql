DROP TABLE IF EXISTS `vehicle_data`;
CREATE TABLE `vehicle_data` (
  `entry` mediumint(5) unsigned NOT NULL,
  `flags` mediumint(8) unsigned NOT NULL default '0',
  `Spell1` mediumint(8) unsigned NOT NULL default '0',
  `Spell2` mediumint(8) unsigned NOT NULL default '0',
  `Spell3` mediumint(8) unsigned NOT NULL default '0',
  `Spell4` mediumint(8) unsigned NOT NULL default '0',
  `Spell5` mediumint(8) unsigned NOT NULL default '0',
  `Spell6` mediumint(8) unsigned NOT NULL default '0',
  `Spell7` mediumint(8) unsigned NOT NULL default '0',
  `Spell8` mediumint(8) unsigned NOT NULL default '0',
  `Spell9` mediumint(8) unsigned NOT NULL default '0',
  `Spell10` mediumint(8) unsigned NOT NULL default '0',
  `req_aura` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Vehicle System';

DROP TABLE IF EXISTS `vehicle_seat_data`;
CREATE TABLE `vehicle_seat_data` (
  `seat` mediumint(5) unsigned NOT NULL,
  `flags` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`seat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Vehicle Seat System';

ALTER TABLE creature_addon
  ADD COLUMN  vehicle_id  smallint(5) unsigned NOT NULL default '0' AFTER moveflags,
  ADD COLUMN  passengers  text AFTER vehicle_id;

ALTER TABLE creature_template_addon
  ADD COLUMN  vehicle_id  smallint(5) unsigned NOT NULL default '0' AFTER moveflags,
  ADD COLUMN  passengers  text AFTER vehicle_id;

REPLACE INTO `vehicle_data` VALUES
(1,0,0,0,0,0,0,0,0,0,0,0,0),(6,0,0,0,0,0,0,0,0,0,0,0,0),(7,0,0,0,0,0,0,0,0,0,0,0,0),
(8,0,0,0,0,0,0,0,0,0,0,0,0),(14,0,0,0,0,0,0,0,0,0,0,0,0),(16,0,0,0,0,0,0,0,0,0,0,0,0),
(17,0,0,0,0,0,0,0,0,0,0,0,0),(21,0,0,0,0,0,0,0,0,0,0,0,0),(22,0,0,0,0,0,0,0,0,0,0,0,0),
(23,0,0,0,0,0,0,0,0,0,0,0,0),(24,0,0,0,0,0,0,0,0,0,0,0,0),(25,0,0,0,0,0,0,0,0,0,0,0,0),
(26,0,0,0,0,0,0,0,0,0,0,0,0),(27,0,0,0,0,0,0,0,0,0,0,0,0),(28,0,0,0,0,0,0,0,0,0,0,0,0),
(29,0,0,0,0,0,0,0,0,0,0,0,0),(30,0,0,0,0,0,0,0,0,0,0,0,0),(31,0,0,0,0,0,0,0,0,0,0,0,0),
(32,0,0,0,0,0,0,0,0,0,0,0,0),(33,0,0,0,0,0,0,0,0,0,0,0,0),(34,0,0,0,0,0,0,0,0,0,0,0,0),
(35,0,0,0,0,0,0,0,0,0,0,0,0),(36,0,0,0,0,0,0,0,0,0,0,0,0),(37,0,0,0,0,0,0,0,0,0,0,0,0),
(38,0,0,0,0,0,0,0,0,0,0,0,0),(39,0,0,0,0,0,0,0,0,0,0,0,0),(40,0,0,0,0,0,0,0,0,0,0,0,0),
(41,0,0,0,0,0,0,0,0,0,0,0,0),(42,0,0,0,0,0,0,0,0,0,0,0,0),(43,0,0,0,0,0,0,0,0,0,0,0,0),
(44,0,0,0,0,0,0,0,0,0,0,0,0),(46,0,0,0,0,0,0,0,0,0,0,0,0),(47,0,0,0,0,0,0,0,0,0,0,0,0),
(48,0,0,0,0,0,0,0,0,0,0,0,0),(49,0,0,0,0,0,0,0,0,0,0,0,0),(50,0,0,0,0,0,0,0,0,0,0,0,0),
(51,0,0,0,0,0,0,0,0,0,0,0,0),(52,0,0,0,0,0,0,0,0,0,0,0,0),(53,0,0,0,0,0,0,0,0,0,0,0,0),
(54,0,0,0,0,0,0,0,0,0,0,0,0),(55,0,0,0,0,0,0,0,0,0,0,0,0),(56,0,0,0,0,0,0,0,0,0,0,0,0),
(57,0,0,0,0,0,0,0,0,0,0,0,0),(58,0,0,0,0,0,0,0,0,0,0,0,0),(59,0,0,0,0,0,0,0,0,0,0,0,0),
(60,0,0,0,0,0,0,0,0,0,0,0,0),(61,0,0,0,0,0,0,0,0,0,0,0,0),(62,0,0,0,0,0,0,0,0,0,0,0,0),
(64,0,0,0,0,0,0,0,0,0,0,0,0),(65,0,0,0,0,0,0,0,0,0,0,0,0),(68,0,0,0,0,0,0,0,0,0,0,0,0),
(69,0,0,0,0,0,0,0,0,0,0,0,0),(70,0,0,0,0,0,0,0,0,0,0,0,0),(71,0,0,0,0,0,0,0,0,0,0,0,0),
(72,0,0,0,0,0,0,0,0,0,0,0,0),(74,0,0,0,0,0,0,0,0,0,0,0,0),(75,0,0,0,0,0,0,0,0,0,0,0,0),
(76,0,0,0,0,0,0,0,0,0,0,0,0),(77,0,0,0,0,0,0,0,0,0,0,0,0),(79,0,0,0,0,0,0,0,0,0,0,0,0),
(80,0,0,0,0,0,0,0,0,0,0,0,0),(81,0,0,0,0,0,0,0,0,0,0,0,0),(86,0,0,0,0,0,0,0,0,0,0,0,0),
(87,0,0,0,0,0,0,0,0,0,0,0,0),(88,0,0,0,0,0,0,0,0,0,0,0,0),(89,0,0,0,0,0,0,0,0,0,0,0,0),
(90,0,0,0,0,0,0,0,0,0,0,0,0),(91,0,0,0,0,0,0,0,0,0,0,0,0),(92,0,0,0,0,0,0,0,0,0,0,0,0),
(93,0,0,0,0,0,0,0,0,0,0,0,0),(97,0,0,0,0,0,0,0,0,0,0,0,0),(99,0,0,0,0,0,0,0,0,0,0,0,0),
(100,0,0,0,0,0,0,0,0,0,0,0,0),(102,0,0,0,0,0,0,0,0,0,0,0,0),(104,0,0,0,0,0,0,0,0,0,0,0,0),
(105,0,0,0,0,0,0,0,0,0,0,0,0),(106,0,0,0,0,0,0,0,0,0,0,0,0),(107,0,0,0,0,0,0,0,0,0,0,0,0),
(108,0,0,0,0,0,0,0,0,0,0,0,0),(109,0,0,0,0,0,0,0,0,0,0,0,0),(110,0,0,0,0,0,0,0,0,0,0,0,0),
(111,0,0,0,0,0,0,0,0,0,0,0,0),(112,0,0,0,0,0,0,0,0,0,0,0,0),(113,0,0,0,0,0,0,0,0,0,0,0,0),
(114,0,0,0,0,0,0,0,0,0,0,0,0),(115,0,0,0,0,0,0,0,0,0,0,0,0),(116,0,0,0,0,0,0,0,0,0,0,0,0),
(117,0,0,0,0,0,0,0,0,0,0,0,0),(118,0,0,0,0,0,0,0,0,0,0,0,0),(120,0,0,0,0,0,0,0,0,0,0,0,0),
(121,0,0,0,0,0,0,0,0,0,0,0,0),(122,0,0,0,0,0,0,0,0,0,0,0,0),(123,0,0,0,0,0,0,0,0,0,0,0,0),
(124,0,0,0,0,0,0,0,0,0,0,0,0),(125,0,0,0,0,0,0,0,0,0,0,0,0),(126,0,0,0,0,0,0,0,0,0,0,0,0),
(127,0,0,0,0,0,0,0,0,0,0,0,0),(128,0,0,0,0,0,0,0,0,0,0,0,0),(129,0,0,0,0,0,0,0,0,0,0,0,0),
(130,0,0,0,0,0,0,0,0,0,0,0,0),(131,0,0,0,0,0,0,0,0,0,0,0,0),(132,0,0,0,0,0,0,0,0,0,0,0,0),
(134,0,0,0,0,0,0,0,0,0,0,0,0),(135,0,0,0,0,0,0,0,0,0,0,0,0),(137,0,0,0,0,0,0,0,0,0,0,0,0),
(138,0,0,0,0,0,0,0,0,0,0,0,0),(139,0,0,0,0,0,0,0,0,0,0,0,0),(142,0,0,0,0,0,0,0,0,0,0,0,0),
(143,0,0,0,0,0,0,0,0,0,0,0,0),(145,0,0,0,0,0,0,0,0,0,0,0,0),(146,0,0,0,0,0,0,0,0,0,0,0,0),
(147,0,0,0,0,0,0,0,0,0,0,0,0),(148,0,0,0,0,0,0,0,0,0,0,0,0),(149,0,0,0,0,0,0,0,0,0,0,0,0),
(150,0,0,0,0,0,0,0,0,0,0,0,0),(152,0,0,0,0,0,0,0,0,0,0,0,0),(153,0,0,0,0,0,0,0,0,0,0,0,0),
(154,0,0,0,0,0,0,0,0,0,0,0,0),(156,0,0,0,0,0,0,0,0,0,0,0,0),(158,0,0,0,0,0,0,0,0,0,0,0,0),
(160,0,0,0,0,0,0,0,0,0,0,0,0),(162,0,0,0,0,0,0,0,0,0,0,0,0),(163,0,0,0,0,0,0,0,0,0,0,0,0),
(164,0,0,0,0,0,0,0,0,0,0,0,0),(165,0,0,0,0,0,0,0,0,0,0,0,0),(166,0,0,0,0,0,0,0,0,0,0,0,0),
(167,0,0,0,0,0,0,0,0,0,0,0,0),(168,0,0,0,0,0,0,0,0,0,0,0,0),(169,0,0,0,0,0,0,0,0,0,0,0,0),
(171,0,0,0,0,0,0,0,0,0,0,0,0),(173,0,0,0,0,0,0,0,0,0,0,0,0),(174,0,0,0,0,0,0,0,0,0,0,0,0),
(175,0,0,0,0,0,0,0,0,0,0,0,0),(176,0,0,0,0,0,0,0,0,0,0,0,0),(177,0,0,0,0,0,0,0,0,0,0,0,0),
(178,0,0,0,0,0,0,0,0,0,0,0,0),(179,0,0,0,0,0,0,0,0,0,0,0,0),(180,0,0,0,0,0,0,0,0,0,0,0,0),
(181,0,0,0,0,0,0,0,0,0,0,0,0),(182,0,0,0,0,0,0,0,0,0,0,0,0),(183,0,0,0,0,0,0,0,0,0,0,0,0),
(186,0,0,0,0,0,0,0,0,0,0,0,0),(188,0,0,0,0,0,0,0,0,0,0,0,0),(189,0,0,0,0,0,0,0,0,0,0,0,0),
(190,0,0,0,0,0,0,0,0,0,0,0,0),(191,0,0,0,0,0,0,0,0,0,0,0,0),(192,0,0,0,0,0,0,0,0,0,0,0,0),
(193,0,0,0,0,0,0,0,0,0,0,0,0),(194,0,0,0,0,0,0,0,0,0,0,0,0),(196,0,0,0,0,0,0,0,0,0,0,0,0),
(197,0,0,0,0,0,0,0,0,0,0,0,0),(198,0,0,0,0,0,0,0,0,0,0,0,0),(199,0,0,0,0,0,0,0,0,0,0,0,0),
(200,0,0,0,0,0,0,0,0,0,0,0,0),(201,0,0,0,0,0,0,0,0,0,0,0,0),(202,0,0,0,0,0,0,0,0,0,0,0,0),
(203,0,0,0,0,0,0,0,0,0,0,0,0),(204,0,0,0,0,0,0,0,0,0,0,0,0),(205,0,0,0,0,0,0,0,0,0,0,0,0),
(206,0,0,0,0,0,0,0,0,0,0,0,0),(207,0,0,0,0,0,0,0,0,0,0,0,0),(208,0,0,0,0,0,0,0,0,0,0,0,0),
(209,0,0,0,0,0,0,0,0,0,0,0,0),(210,0,0,0,0,0,0,0,0,0,0,0,0),(211,0,0,0,0,0,0,0,0,0,0,0,0),
(212,0,0,0,0,0,0,0,0,0,0,0,0),(213,0,0,0,0,0,0,0,0,0,0,0,0),(214,0,0,0,0,0,0,0,0,0,0,0,0),
(215,0,0,0,0,0,0,0,0,0,0,0,0),(216,0,0,0,0,0,0,0,0,0,0,0,0),(217,0,0,0,0,0,0,0,0,0,0,0,0),
(218,0,0,0,0,0,0,0,0,0,0,0,0),(219,0,0,0,0,0,0,0,0,0,0,0,0),(220,0,0,0,0,0,0,0,0,0,0,0,0),
(221,0,0,0,0,0,0,0,0,0,0,0,0),(222,0,0,0,0,0,0,0,0,0,0,0,0),(223,0,0,0,0,0,0,0,0,0,0,0,0),
(224,0,0,0,0,0,0,0,0,0,0,0,0),(225,0,0,0,0,0,0,0,0,0,0,0,0),(226,0,0,0,0,0,0,0,0,0,0,0,0),
(227,0,0,0,0,0,0,0,0,0,0,0,0),(228,0,0,0,0,0,0,0,0,0,0,0,0),(229,0,0,0,0,0,0,0,0,0,0,0,0),
(230,0,0,0,0,0,0,0,0,0,0,0,0),(231,0,0,0,0,0,0,0,0,0,0,0,0),(232,0,0,0,0,0,0,0,0,0,0,0,0),
(233,0,0,0,0,0,0,0,0,0,0,0,0),(234,0,0,0,0,0,0,0,0,0,0,0,0),(236,0,0,0,0,0,0,0,0,0,0,0,0),
(237,0,0,0,0,0,0,0,0,0,0,0,0),(238,0,0,0,0,0,0,0,0,0,0,0,0),(240,0,0,0,0,0,0,0,0,0,0,0,0),
(241,0,0,0,0,0,0,0,0,0,0,0,0),(242,0,0,0,0,0,0,0,0,0,0,0,0),(243,0,0,0,0,0,0,0,0,0,0,0,0),
(244,0,0,0,0,0,0,0,0,0,0,0,0),(245,0,0,0,0,0,0,0,0,0,0,0,0),(246,0,0,0,0,0,0,0,0,0,0,0,0),
(247,0,0,0,0,0,0,0,0,0,0,0,0),(248,0,0,0,0,0,0,0,0,0,0,0,0),(249,0,0,0,0,0,0,0,0,0,0,0,0),
(250,0,0,0,0,0,0,0,0,0,0,0,0),(252,0,0,0,0,0,0,0,0,0,0,0,0),(253,0,0,0,0,0,0,0,0,0,0,0,0),
(254,0,0,0,0,0,0,0,0,0,0,0,0),(255,0,0,0,0,0,0,0,0,0,0,0,0),(256,0,0,0,0,0,0,0,0,0,0,0,0),
(257,0,0,0,0,0,0,0,0,0,0,0,0),(258,0,0,0,0,0,0,0,0,0,0,0,0),(259,0,0,0,0,0,0,0,0,0,0,0,0),
(260,0,0,0,0,0,0,0,0,0,0,0,0),(261,0,0,0,0,0,0,0,0,0,0,0,0),(262,0,0,0,0,0,0,0,0,0,0,0,0),
(263,0,0,0,0,0,0,0,0,0,0,0,0),(264,0,0,0,0,0,0,0,0,0,0,0,0),(265,0,0,0,0,0,0,0,0,0,0,0,0),
(266,0,0,0,0,0,0,0,0,0,0,0,0),(267,0,0,0,0,0,0,0,0,0,0,0,0),(268,0,0,0,0,0,0,0,0,0,0,0,0),
(269,0,0,0,0,0,0,0,0,0,0,0,0),(270,0,0,0,0,0,0,0,0,0,0,0,0),(271,0,0,0,0,0,0,0,0,0,0,0,0),
(272,0,0,0,0,0,0,0,0,0,0,0,0),(273,0,0,0,0,0,0,0,0,0,0,0,0),(274,0,0,0,0,0,0,0,0,0,0,0,0),
(275,0,0,0,0,0,0,0,0,0,0,0,0),(276,0,0,0,0,0,0,0,0,0,0,0,0),(277,0,0,0,0,0,0,0,0,0,0,0,0),
(278,0,0,0,0,0,0,0,0,0,0,0,0),(279,0,0,0,0,0,0,0,0,0,0,0,0),(280,0,0,0,0,0,0,0,0,0,0,0,0),
(281,0,0,0,0,0,0,0,0,0,0,0,0),(282,0,0,0,0,0,0,0,0,0,0,0,0),(283,0,0,0,0,0,0,0,0,0,0,0,0),
(284,0,0,0,0,0,0,0,0,0,0,0,0),(285,0,0,0,0,0,0,0,0,0,0,0,0),(286,0,0,0,0,0,0,0,0,0,0,0,0),
(287,0,0,0,0,0,0,0,0,0,0,0,0),(288,0,0,0,0,0,0,0,0,0,0,0,0),(289,0,0,0,0,0,0,0,0,0,0,0,0),
(290,0,0,0,0,0,0,0,0,0,0,0,0),(291,0,0,0,0,0,0,0,0,0,0,0,0),(292,0,0,0,0,0,0,0,0,0,0,0,0),
(293,0,0,0,0,0,0,0,0,0,0,0,0),(294,0,0,0,0,0,0,0,0,0,0,0,0),(295,0,0,0,0,0,0,0,0,0,0,0,0),
(296,0,0,0,0,0,0,0,0,0,0,0,0),(297,0,0,0,0,0,0,0,0,0,0,0,0),(298,0,0,0,0,0,0,0,0,0,0,0,0),
(299,0,0,0,0,0,0,0,0,0,0,0,0),(300,0,0,0,0,0,0,0,0,0,0,0,0),(301,0,0,0,0,0,0,0,0,0,0,0,0),
(302,0,0,0,0,0,0,0,0,0,0,0,0),(303,0,0,0,0,0,0,0,0,0,0,0,0),(304,0,0,0,0,0,0,0,0,0,0,0,0),
(305,0,0,0,0,0,0,0,0,0,0,0,0),(308,0,0,0,0,0,0,0,0,0,0,0,0),(309,0,0,0,0,0,0,0,0,0,0,0,0),
(310,0,0,0,0,0,0,0,0,0,0,0,0),(311,0,0,0,0,0,0,0,0,0,0,0,0),(312,0,0,0,0,0,0,0,0,0,0,0,0),
(313,0,0,0,0,0,0,0,0,0,0,0,0),(314,0,0,0,0,0,0,0,0,0,0,0,0),(315,0,0,0,0,0,0,0,0,0,0,0,0),
(316,0,0,0,0,0,0,0,0,0,0,0,0),(317,0,0,0,0,0,0,0,0,0,0,0,0),(318,0,0,0,0,0,0,0,0,0,0,0,0),
(320,0,0,0,0,0,0,0,0,0,0,0,0),(321,0,0,0,0,0,0,0,0,0,0,0,0),(322,0,0,0,0,0,0,0,0,0,0,0,0),
(323,0,0,0,0,0,0,0,0,0,0,0,0),(324,0,0,0,0,0,0,0,0,0,0,0,0),(325,0,0,0,0,0,0,0,0,0,0,0,0),
(327,0,0,0,0,0,0,0,0,0,0,0,0),(328,0,0,0,0,0,0,0,0,0,0,0,0),(329,0,0,0,0,0,0,0,0,0,0,0,0),
(331,0,0,0,0,0,0,0,0,0,0,0,0),(332,0,0,0,0,0,0,0,0,0,0,0,0),(335,0,0,0,0,0,0,0,0,0,0,0,0),
(336,0,0,0,0,0,0,0,0,0,0,0,0),(337,0,0,0,0,0,0,0,0,0,0,0,0),(338,0,0,0,0,0,0,0,0,0,0,0,0),
(339,0,0,0,0,0,0,0,0,0,0,0,0),(340,0,0,0,0,0,0,0,0,0,0,0,0),(341,0,0,0,0,0,0,0,0,0,0,0,0),
(342,0,0,0,0,0,0,0,0,0,0,0,0),(343,0,0,0,0,0,0,0,0,0,0,0,0),(344,0,0,0,0,0,0,0,0,0,0,0,0),
(345,0,0,0,0,0,0,0,0,0,0,0,0),(347,0,0,0,0,0,0,0,0,0,0,0,0),(348,0,0,0,0,0,0,0,0,0,0,0,0),
(349,0,0,0,0,0,0,0,0,0,0,0,0),(352,0,0,0,0,0,0,0,0,0,0,0,0),(353,0,0,0,0,0,0,0,0,0,0,0,0),
(354,0,0,0,0,0,0,0,0,0,0,0,0),(356,0,0,0,0,0,0,0,0,0,0,0,0),(357,0,0,0,0,0,0,0,0,0,0,0,0),
(358,0,0,0,0,0,0,0,0,0,0,0,0),(359,0,0,0,0,0,0,0,0,0,0,0,0),(363,0,0,0,0,0,0,0,0,0,0,0,0),
(368,0,0,0,0,0,0,0,0,0,0,0,0),(369,0,0,0,0,0,0,0,0,0,0,0,0),(370,0,0,0,0,0,0,0,0,0,0,0,0),
(371,0,0,0,0,0,0,0,0,0,0,0,0),(372,0,0,0,0,0,0,0,0,0,0,0,0),(373,0,0,0,0,0,0,0,0,0,0,0,0),
(374,0,0,0,0,0,0,0,0,0,0,0,0),(375,0,0,0,0,0,0,0,0,0,0,0,0),(376,0,0,0,0,0,0,0,0,0,0,0,0),
(380,0,0,0,0,0,0,0,0,0,0,0,0),(381,0,0,0,0,0,0,0,0,0,0,0,0),(385,0,0,0,0,0,0,0,0,0,0,0,0),
(387,0,0,0,0,0,0,0,0,0,0,0,0),(388,0,0,0,0,0,0,0,0,0,0,0,0),(389,0,0,0,0,0,0,0,0,0,0,0,0),
(390,0,0,0,0,0,0,0,0,0,0,0,0),(392,0,0,0,0,0,0,0,0,0,0,0,0),(395,0,0,0,0,0,0,0,0,0,0,0,0),
(396,0,0,0,0,0,0,0,0,0,0,0,0),(397,0,0,0,0,0,0,0,0,0,0,0,0),(399,0,0,0,0,0,0,0,0,0,0,0,0),
(402,0,0,0,0,0,0,0,0,0,0,0,0),(405,0,0,0,0,0,0,0,0,0,0,0,0),(412,0,0,0,0,0,0,0,0,0,0,0,0),
(425,0,0,0,0,0,0,0,0,0,0,0,0),(430,0,0,0,0,0,0,0,0,0,0,0,0),(435,0,0,0,0,0,0,0,0,0,0,0,0),
(436,0,0,0,0,0,0,0,0,0,0,0,0),(437,0,0,0,0,0,0,0,0,0,0,0,0),(438,0,0,0,0,0,0,0,0,0,0,0,0),
(442,0,0,0,0,0,0,0,0,0,0,0,0),(443,0,0,0,0,0,0,0,0,0,0,0,0),(444,0,0,0,0,0,0,0,0,0,0,0,0),
(445,0,0,0,0,0,0,0,0,0,0,0,0),(446,0,0,0,0,0,0,0,0,0,0,0,0),(447,0,0,0,0,0,0,0,0,0,0,0,0),
(449,0,0,0,0,0,0,0,0,0,0,0,0),(452,0,0,0,0,0,0,0,0,0,0,0,0),(453,0,0,0,0,0,0,0,0,0,0,0,0),
(456,0,0,0,0,0,0,0,0,0,0,0,0),(461,0,0,0,0,0,0,0,0,0,0,0,0),(471,0,0,0,0,0,0,0,0,0,0,0,0),
(472,0,0,0,0,0,0,0,0,0,0,0,0),(477,0,0,0,0,0,0,0,0,0,0,0,0),(478,0,0,0,0,0,0,0,0,0,0,0,0),
(479,0,0,0,0,0,0,0,0,0,0,0,0),(480,0,0,0,0,0,0,0,0,0,0,0,0),(481,0,0,0,0,0,0,0,0,0,0,0,0),
(482,0,0,0,0,0,0,0,0,0,0,0,0),(483,0,0,0,0,0,0,0,0,0,0,0,0),(484,0,0,0,0,0,0,0,0,0,0,0,0),
(485,0,0,0,0,0,0,0,0,0,0,0,0),(486,0,0,0,0,0,0,0,0,0,0,0,0),(487,0,0,0,0,0,0,0,0,0,0,0,0),
(489,0,0,0,0,0,0,0,0,0,0,0,0),(492,0,0,0,0,0,0,0,0,0,0,0,0),(496,0,0,0,0,0,0,0,0,0,0,0,0),
(497,0,0,0,0,0,0,0,0,0,0,0,0),(498,0,0,0,0,0,0,0,0,0,0,0,0),(499,0,0,0,0,0,0,0,0,0,0,0,0),
(503,0,0,0,0,0,0,0,0,0,0,0,0),(509,0,0,0,0,0,0,0,0,0,0,0,0),(510,0,0,0,0,0,0,0,0,0,0,0,0),
(512,0,0,0,0,0,0,0,0,0,0,0,0),(514,0,0,0,0,0,0,0,0,0,0,0,0),(522,0,0,0,0,0,0,0,0,0,0,0,0),
(529,0,0,0,0,0,0,0,0,0,0,0,0),(531,0,0,0,0,0,0,0,0,0,0,0,0),(532,0,0,0,0,0,0,0,0,0,0,0,0),
(533,0,0,0,0,0,0,0,0,0,0,0,0),(535,0,0,0,0,0,0,0,0,0,0,0,0),(548,0,0,0,0,0,0,0,0,0,0,0,0),
(551,0,0,0,0,0,0,0,0,0,0,0,0),(554,0,0,0,0,0,0,0,0,0,0,0,0),(555,0,0,0,0,0,0,0,0,0,0,0,0),
(560,0,0,0,0,0,0,0,0,0,0,0,0),(562,0,0,0,0,0,0,0,0,0,0,0,0),(563,0,0,0,0,0,0,0,0,0,0,0,0),
(567,0,0,0,0,0,0,0,0,0,0,0,0),(586,0,0,0,0,0,0,0,0,0,0,0,0),(587,0,0,0,0,0,0,0,0,0,0,0,0),
(591,0,0,0,0,0,0,0,0,0,0,0,0),(599,0,0,0,0,0,0,0,0,0,0,0,0),(602,0,0,0,0,0,0,0,0,0,0,0,0),
(604,0,0,0,0,0,0,0,0,0,0,0,0),(610,0,0,0,0,0,0,0,0,0,0,0,0),(611,0,0,0,0,0,0,0,0,0,0,0,0),
(614,0,0,0,0,0,0,0,0,0,0,0,0),(615,0,0,0,0,0,0,0,0,0,0,0,0),(616,0,0,0,0,0,0,0,0,0,0,0,0),
(621,0,0,0,0,0,0,0,0,0,0,0,0),(622,0,0,0,0,0,0,0,0,0,0,0,0),(624,0,0,0,0,0,0,0,0,0,0,0,0),
(625,0,0,0,0,0,0,0,0,0,0,0,0),(636,0,0,0,0,0,0,0,0,0,0,0,0),(637,0,0,0,0,0,0,0,0,0,0,0,0),
(639,0,0,0,0,0,0,0,0,0,0,0,0),(647,0,0,0,0,0,0,0,0,0,0,0,0),(648,0,0,0,0,0,0,0,0,0,0,0,0),
(655,0,0,0,0,0,0,0,0,0,0,0,0),(700,0,0,0,0,0,0,0,0,0,0,0,0),(711,0,0,0,0,0,0,0,0,0,0,0,0),
(717,0,0,0,0,0,0,0,0,0,0,0,0),(718,0,0,0,0,0,0,0,0,0,0,0,0),(732,0,0,0,0,0,0,0,0,0,0,0,0),
(736,0,0,0,0,0,0,0,0,0,0,0,0),(745,0,0,0,0,0,0,0,0,0,0,0,0),(746,0,0,0,0,0,0,0,0,0,0,0,0),
(747,0,0,0,0,0,0,0,0,0,0,0,0),(753,0,0,0,0,0,0,0,0,0,0,0,0),(763,0,0,0,0,0,0,0,0,0,0,0,0),
(774,0,0,0,0,0,0,0,0,0,0,0,0),
('106', '4', '50896', '0', '50652', '0', '0', '0', '0', '0', '0', '0', '0'),
('116', '5', '51362', '51421', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('117', '4', '50652', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('156', '24', '53114', '0', '53110', '0', '0', '0', '0', '0', '0', '0', '0'),
('200', '30', '52362', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('135', '12', '52362', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('349', '24', '62544', '62575', '62960', '62552', '64077', '62863', '0', '0', '0', '0', '62853'),
('68', '24', '52435', '52576', '52588', '0', '0', '0', '0', '0', '0', '0', '0');

UPDATE creature_template SET maxhealth = 133525, minhealth = 133525, maxmana = 51360, minmana = 51360 WHERE entry = 28670;
UPDATE creature_template SET maxhealth = 50000, minhealth = 50000 WHERE entry = 28094;
UPDATE creature_template SET maxhealth = 75000, minhealth = 75000 WHERE entry IN (28312,32627);
UPDATE creature_template SET maxhealth = 50000, minhealth = 50000 WHERE entry IN (28319,32629);

UPDATE creature_template SET minlevel = 80, maxlevel = 80 WHERE entry IN (28312,32627,28319,32629,28094,28670);

UPDATE creature_template SET speed_run = 2, InhabitType = 1 WHERE entry IN (28312,32627,28319,32629,28094,29929,28782);
UPDATE creature_template SET speed_run = 2.4, InhabitType = 3 WHERE entry IN (28670);
UPDATE creature_template SET mechanic_immune_mask = 652951551 WHERE entry IN (28670,28312,32627,28319,32629,28094,29929,28782);

DELETE FROM npc_spellclick_spells WHERE npc_entry in (28670, 28312, 32629, 28319, 32627, 28094, 28782);
INSERT INTO npc_spellclick_spells VALUES
(28670, 52196, 0, 0, 0, 0),
(28312, 60968, 0, 0, 0, 1),
(32627, 60968, 0, 0, 0, 1),
(28319, 60968, 0, 0, 0, 1),
(32629, 60968, 0, 0, 0, 1),
(28094, 60968, 0, 0, 0, 1),
(28782, 52280, 12687, 1, 12687, 1);

DELETE FROM creature_template_addon WHERE entry in (28670, 28312, 32629, 28319, 32627, 28094, 28782);
INSERT INTO creature_template_addon VALUES
(28670, 0, 50331648, 1, 0, 1024, 156, NULL, '53112 0 53112 1 53112 2'),
(28312, 0, 0, 0, 0, 0, 117, '28319 7', NULL),
(32627, 0, 0, 0, 0, 0, 117, '32629 7', NULL),
(28319, 0, 0, 0, 0, 0, 116, NULL, NULL),
(32629, 0, 0, 0, 0, 0, 116, NULL, NULL),
(28094, 0, 0, 0, 0, 0, 106, NULL, NULL),
(28782, 0, 0, 0, 0, 0, 200, NULL, NULL);

DELETE FROM vehicle_seat_data WHERE seat in (1643, 1648, 1649, 1650, 1652, 1554, 1556, 1557, 1986, 1987, 2144);
INSERT INTO vehicle_seat_data VALUES (1643, 3),(1648, 3),(1649, 2),(1650, 2),(1652, 4),(1554, 3),(1556, 6),(1557, 6),(1986, 3),(1987, 8),(2144, 1);

/* Some quests
Argent tournament*/
UPDATE creature_template SET speed_run = '1.5', unit_flags = 8 WHERE entry IN (33844,33845);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (33844,33845));
DELETE FROM creature WHERE id IN (33844,33845);
DELETE FROM vehicle_data WHERE entry in (349);
INSERT INTO `vehicle_data` VALUES ('349', '24', '62544', '62575', '62960', '62552', '64077', '62863', '0', '0', '0', '0', '62853');
DELETE FROM vehicle_seat_data WHERE seat in (3129);
INSERT INTO `vehicle_seat_data` VALUES ('3129', '1');
DELETE FROM npc_spellclick_spells WHERE npc_entry in (33842, 33843);
INSERT INTO `npc_spellclick_spells` VALUES ('33842', '63791', '13829', '1', '0', '3');
INSERT INTO `npc_spellclick_spells` VALUES ('33842', '63791', '13839', '1', '0', '3');
INSERT INTO `npc_spellclick_spells` VALUES ('33842', '63791', '13838', '1', '0', '3');
INSERT INTO `npc_spellclick_spells` VALUES ('33843', '63792', '13828', '1', '0', '3');
INSERT INTO `npc_spellclick_spells` VALUES ('33843', '63792', '13837', '1', '0', '3');
INSERT INTO `npc_spellclick_spells` VALUES ('33843', '63792', '13835', '1', '0', '3');
DELETE FROM creature_template_addon WHERE entry IN (33844,33845);
INSERT INTO creature_template_addon (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `vehicle_id`, `passengers`, `auras`) VALUES (33844, 0, 0, 2049, 0, 0, 349, '', '');
INSERT INTO creature_template_addon (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `vehicle_id`, `passengers`, `auras`) VALUES (33845, 0, 0, 2049, 0, 0, 349, '', '');

/*Quest Into the Realm of Shadows (12687)*/
UPDATE creature_template SET faction_A = 2082, faction_H = 2082, unit_flags = 16384 WHERE entry = 28782;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28782);
DELETE FROM vehicle_data WHERE entry in (135);
INSERT INTO vehicle_data VALUES (135, 12, 52362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM vehicle_seat_data WHERE seat in (1871);
INSERT INTO vehicle_seat_data VALUES (1871, 1);
DELETE FROM npc_spellclick_spells WHERE npc_entry in (28782);
INSERT INTO npc_spellclick_spells VALUES (28782, 52349, 12687, 1, 12687, 3);
DELETE FROM creature_template_addon WHERE entry IN (28782);
INSERT INTO creature_template_addon (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `vehicle_id`, `passengers`, `auras`) VALUES (28782, 0, 0, 1, 0, 0, 135, '', '');

/*Quest Grand Theft Palomino (12680)*/
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (28605,28606,28607));
REPLACE INTO spell_script_target VALUES (52264,1,28653);
DELETE FROM vehicle_data WHERE entry in (123);
INSERT INTO vehicle_data VALUES (123, 12, 52264, 52268, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM vehicle_seat_data WHERE seat in (1782);
INSERT INTO vehicle_seat_data VALUES (1782, 1);
DELETE FROM npc_spellclick_spells WHERE npc_entry in (28605,28606,28607);
INSERT INTO npc_spellclick_spells VALUES (28605, 52263, 12680, 1, 12680, 3);
INSERT INTO npc_spellclick_spells VALUES (28606, 52263, 12680, 1, 12680, 3);
INSERT INTO npc_spellclick_spells VALUES (28607, 52263, 12680, 1, 12680, 3);
DELETE FROM creature_template_addon WHERE entry IN (28605,28606,28607);
INSERT INTO creature_template_addon (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `vehicle_id`, `passengers`, `auras`) VALUES (28605, 0, 0, 1, 0, 0, 123, '', '');
INSERT INTO creature_template_addon (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `vehicle_id`, `passengers`, `auras`) VALUES (28606, 0, 0, 1, 0, 0, 123, '', '');
INSERT INTO creature_template_addon (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `vehicle_id`, `passengers`, `auras`) VALUES (28607, 0, 0, 1, 0, 0, 123, '', '');

/*Quest Going Bearback*/
DELETE FROM npc_spellclick_spells WHERE npc_entry in (29598);
INSERT INTO npc_spellclick_spells VALUES (29598, 54908, 12851, 1, 12851, 1);
DELETE FROM creature_template_addon WHERE entry IN (29598);
INSERT INTO creature_template_addon (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `vehicle_id`, `passengers`, `auras`) VALUES (29598, 0, 0, 1, 0, 0, 308, '', '');
DELETE FROM vehicle_data WHERE entry in (308);
INSERT INTO `vehicle_data` VALUES ('308', '24', '54897', '54907', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO vehicle_seat_data VALUES (2699, 3);

/* Massacre At Light's Point */
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (28887, 28833, 28864));
DELETE FROM vehicle_data WHERE entry IN (25, 79);
INSERT INTO vehicle_data VALUES (25, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),(79, 5, 52435, 52576, 52588, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM vehicle_seat_data WHERE seat IN (1427, 341);
INSERT INTO vehicle_seat_data VALUES (1427, 1),(341, 1);
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (28887, 28833, 28864);
INSERT INTO npc_spellclick_spells VALUES (28833, 52447, 12701, 1, 12701, 1),(28887, 52447, 12701, 1, 12701, 1),(28864, 67373, 0, 0, 0, 1);
DELETE FROM creature_template_addon WHERE entry IN (28887, 28833, 28864);
INSERT INTO creature_template_addon VALUES (28887, 0, 0, 2049, 0, 0, 79, '', ''),(28833, 0, 0, 2049, 0, 0, 79, '', ''),(28864,0,0,0,0,0,25,NULL,'48602 0 48602 2');

/*Traveler's Tundra Mammoth */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (32633, 32640);
INSERT INTO npc_spellclick_spells VALUES (32633, 67373, 0, 0, 0, 0),(32640, 67373, 0, 0, 0, 0);
REPLACE INTO creature_template_addon VALUES (32633, 0, 0, 0, 0, 0, 312, NULL, NULL);
REPLACE INTO creature_template_addon VALUES (32640, 0, 0, 0, 0, 0, 312, NULL, NULL);
REPLACE INTO vehicle_data VALUES (312, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

/* Grand Ice Mammoth */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (31857);
INSERT INTO npc_spellclick_spells VALUES (31857, 67373, 0, 0, 0, 0);
REPLACE INTO creature_template_addon VALUES (31857, 0, 0, 0, 0, 0, 312, NULL, NULL);

/* Salvaged Chopper */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (33062);
INSERT INTO npc_spellclick_spells VALUES (33062, 67373, 0, 0, 0, 0);
REPLACE INTO creature_template_addon VALUES (33062, 0, 0, 0, 0, 0, 335, NULL, NULL);
REPLACE INTO vehicle_data VALUES (335, 4, 62974, 62286, 62299, 64660, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (3005, 3),(3004, 2);

/* Salvaged Demolisher */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (33109);
INSERT INTO npc_spellclick_spells VALUES (33109, 67373, 0, 0, 0, 0);
REPLACE INTO creature_template_addon VALUES (33109, 0, 0, 0, 0, 0, 338, NULL, NULL);
REPLACE INTO vehicle_data VALUES (338, 4, 62306, 62490, 62308, 62324, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (3011, 3);

/* Salvaged Siege Engine */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (33060);
INSERT INTO npc_spellclick_spells VALUES (33060, 67373, 0, 0, 0, 0);
REPLACE INTO creature_template_addon VALUES (33060, 0, 0, 0, 0, 0, 336, NULL, NULL);
REPLACE INTO vehicle_data VALUES (336, 4, 62345, 62522, 62346, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (3006, 3);

/* Wintergrasp Tower Cannon */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (28366);
INSERT INTO npc_spellclick_spells VALUES (28366, 60968, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (28366, 0, 0, 0, 0, 0, 160, NULL, NULL);
REPLACE INTO vehicle_data VALUES (160, 5, 51362, 51421, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (2029, 3);

/* Salvaged Siege Turret */
DELETE FROM npc_spellclick_spells WHERE npc_entry = 33067;
INSERT INTO npc_spellclick_spells VALUES (33067, 67373, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (33067, 0, 0, 0, 0, 0, 337, NULL, NULL);
REPLACE INTO vehicle_data VALUES (337, 5, 62358, 64677, 62359, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_data VALUES (336, 4, 62345, 62522, 62346, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (3006, 3),(3010, 3),(4026, 8),(4027, 8),(3009, 8);
UPDATE `creature_template` SET `minhealth` = 1134000, `maxhealth` = 1134000 WHERE `entry` = 33067;
UPDATE `creature_template` SET `unit_flags` = 16384 WHERE `entry` = 33067;
DELETE FROM creature WHERE id = 33067;

/* Gunner Salvaged Demolisher */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (33167);
INSERT INTO npc_spellclick_spells VALUES (33167, 67373, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (33167, 0, 0, 0, 0, 0, 345, NULL, NULL);
REPLACE INTO vehicle_data VALUES (345, 5, 62634, 64979, 62479, 62471, 0, 62428, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_data VALUES (338, 4, 62306, 62490, 62308, 62324, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (3077, 3),(3106, 8);
REPLACE INTO vehicle_seat_data VALUES (3011, 3),(3146, 8),(3013, 8),(3147, 8);
UPDATE `creature_template` SET `minhealth` = 630000, `maxhealth` = 630000 WHERE `entry` = 33167;
UPDATE `creature_template` SET `unit_flags` = 16384 WHERE `entry` = 33167;
DELETE FROM creature WHERE id = 33167;


/* L'Oculus */
DELETE FROM spell_script_target where entry IN (49460, 49346, 49464);
DELETE FROM npc_spellclick_spells where npc_entry IN (27755, 27692, 27756);
DELETE FROM creature_template_addon where entry IN (27755, 27692, 27756);
INSERT INTO spell_script_target VALUES (49460, 1, 27755);
INSERT INTO npc_spellclick_spells VALUES (27755, 49459, 0, 0, 0, 1);
INSERT INTO creature_template_addon VALUES (27755, 0, 0, 0, 0, 0, 29, NULL, '48602 0 48602 2');
REPLACE INTO vehicle_data VALUES (29, 12, 49840, 49838, 49592, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (422, 3);
INSERT INTO spell_script_target VALUES (49346, 1, 27692);
INSERT INTO npc_spellclick_spells VALUES (27692, 49427, 0, 0, 0, 1);
INSERT INTO creature_template_addon VALUES (27692, 0, 0, 0, 0, 0, 39, NULL, '48602 0 48602 2');
REPLACE INTO vehicle_data VALUES (39, 12, 50328, 50341, 50344, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (662, 3);
INSERT INTO spell_script_target VALUES (49464, 1, 27756);
INSERT INTO npc_spellclick_spells VALUES (27756, 49463, 0, 0, 0, 1);
INSERT INTO creature_template_addon VALUES (27756, 0, 0, 0, 0, 0, 43, NULL, '48602 0 48602 2');
REPLACE INTO vehicle_data VALUES (43, 12, 50232, 50248, 50240, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (742, 3);

/* Vehicules accessoires */
UPDATE creature_template_addon SET passengers = '33167 1' WHERE entry = 33109;
UPDATE creature_template_addon SET passengers = '33067 7' WHERE entry = 33060;
UPDATE creature_template_addon SET passengers = '33218 1' WHERE entry = 33214;
UPDATE creature_template_addon SET passengers = '33114 0 33114 1 33114 2 33114 3 33139 7' WHERE entry = 33113;
REPLACE INTO creature_template_addon (`entry`,`passengers`) values (27850,'27905 1');
REPLACE INTO creature_template_addon (`entry`,`passengers`) values (32930,'32933 1 32934 7');
REPLACE INTO creature_template_addon (`entry`,`passengers`) values (33114,'33142 1 33143 2');

/* Autres */
ALTER TABLE creature_template ADD COLUMN `VehicleEntry` mediumint(8) unsigned NOT NULL default '0' AFTER `PetSpellDataId`;
UPDATE creature_template SET VehicleEntry = 318, IconName = 'vehichleCursor' WHERE entry IN (29929, 32286);
UPDATE creature_template SET VehicleEntry = 312, IconName = 'vehichleCursor' WHERE entry IN (32633, 32640, 31857, 31858, 31861, 31862, 32212, 32213);
UPDATE creature_template SET VehicleEntry = 774, IconName = 'vehichleCursor' WHERE entry = 40725;