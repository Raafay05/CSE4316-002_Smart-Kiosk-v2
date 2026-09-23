/*!40014 SET FOREIGN_KEY_CHECKS=0*/;
/*!40101 SET NAMES binary*/;
CREATE TABLE `room_reservations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  `full_name` varchar(120) NOT NULL,
  `email` varchar(254) NOT NULL,
  `cancelled` tinyint(1) NOT NULL,
  `cancel_reason` longtext DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `room_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) /*T![clustered_index] CLUSTERED */,
  KEY `room_reservations_room_id_f478c4d3_fk_api_room_id` (`room_id`),
  KEY `room_reservations_user_id_afadaf4a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `room_reservations_room_id_f478c4d3_fk_api_room_id` FOREIGN KEY (`room_id`) REFERENCES `api_room` (`id`),
  CONSTRAINT `room_reservations_user_id_afadaf4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=4050001 /*T![ttl] TTL=`date` + INTERVAL 7 MONTH */ /*T![ttl] TTL_ENABLE='ON' */ /*T![ttl] TTL_JOB_INTERVAL='15m' */;
