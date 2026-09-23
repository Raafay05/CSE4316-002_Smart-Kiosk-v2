/*!40014 SET FOREIGN_KEY_CHECKS=0*/;
/*!40101 SET NAMES binary*/;
CREATE TABLE `accounts_userprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(150) NOT NULL,
  `must_set_password` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) /*T![clustered_index] CLUSTERED */,
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `accounts_userprofile_user_id_92240672_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=660001;
