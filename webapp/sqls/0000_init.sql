DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
      `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
      `name` varchar(191) DEFAULT NULL,
      `salt` varchar(20) DEFAULT NULL,
      `password` varchar(40) DEFAULT NULL,
      `created_at` datetime NOT NULL,
      PRIMARY KEY (`id`),
      UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=580 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `entry`;
CREATE TABLE `entry` (
      `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
      `author_id` bigint(20) unsigned NOT NULL,
      `keyword` varchar(191) COLLATE utf8mb4_bin DEFAULT NULL,
      `description` mediumtext COLLATE utf8mb4_bin,
      `updated_at` datetime NOT NULL,
      `created_at` datetime NOT NULL,
      PRIMARY KEY (`id`),
      UNIQUE KEY `keyword` (`keyword`)
) ENGINE=InnoDB AUTO_INCREMENT=7114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

DROP TABLE IF EXISTS `star`;
CREATE TABLE `star` (
      `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
      `keyword` varchar(191) COLLATE utf8mb4_bin NOT NULL,
      `user_name` varchar(191) COLLATE utf8mb4_bin NOT NULL,
      `created_at` datetime DEFAULT NULL,
      PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
