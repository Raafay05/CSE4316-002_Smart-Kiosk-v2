/*!40014 SET FOREIGN_KEY_CHECKS=0*/;
/*!40101 SET NAMES binary*/;
CREATE TABLE `api_passwordresetcode` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `used` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) /*T![clustered_index] CLUSTERED */,
  KEY `api_passwordresetcode_user_id_b4b3c06b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `api_passwordresetcode_user_id_b4b3c06b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=1470001 /*T![ttl] TTL=`created_at` + INTERVAL 3 DAY */ /*T![ttl] TTL_ENABLE='ON' */ /*T![ttl] TTL_JOB_INTERVAL='15m' */;
