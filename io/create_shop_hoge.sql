CREATE TABLE `shop_hoge` (
	  `id` int(10) unsigned NOT NULL auto_increment,
	  `shop_id` int(10) unsigned NOT NULL,
	  `shop_name` varchar(255) NOT NULL,
	  `created` datetime NOT NULL,
	  `updated` timestamp NOT NULL,
	  PRIMARY KEY  (`id`,`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8
PARTITION BY RANGE  COLUMNS(`created`)
(
	PARTITION p20111201 VALUES LESS THAN ('2011-12-01') ENGINE = InnoDB,
	PARTITION p20111202 VALUES LESS THAN ('2011-12-02') ENGINE = InnoDB,
	PARTITION p20111203 VALUES LESS THAN ('2011-12-03') ENGINE = InnoDB,
	PARTITION p20111204 VALUES LESS THAN ('2011-12-04') ENGINE = InnoDB,
	PARTITION p20111205 VALUES LESS THAN ('2011-12-05') ENGINE = InnoDB,
	PARTITION p20111206 VALUES LESS THAN ('2011-12-06') ENGINE = InnoDB,
	PARTITION p20111207 VALUES LESS THAN ('2011-12-07') ENGINE = InnoDB,
	PARTITION p20111208 VALUES LESS THAN ('2011-12-08') ENGINE = InnoDB,
	PARTITION p20111209 VALUES LESS THAN ('2011-12-09') ENGINE = InnoDB,
	PARTITION p20111210 VALUES LESS THAN ('2011-12-10') ENGINE = InnoDB,
	PARTITION p20111211 VALUES LESS THAN ('2011-12-11') ENGINE = InnoDB,
	PARTITION p20111212 VALUES LESS THAN ('2011-12-12') ENGINE = InnoDB
)
;

