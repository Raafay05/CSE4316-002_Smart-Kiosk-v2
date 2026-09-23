/*!40014 SET FOREIGN_KEY_CHECKS=0*/;
/*!40101 SET NAMES binary*/;
CREATE TABLE `accounts_usercard` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uta_id` varchar(20) DEFAULT NULL,
  `user_id` int NOT NULL,
  `raw_swipe` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) /*T![clustered_index] CLUSTERED */,
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `accounts_usercard_user_id_0308e5e6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=180001;
