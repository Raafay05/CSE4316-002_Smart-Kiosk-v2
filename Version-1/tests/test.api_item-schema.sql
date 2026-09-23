/*!40014 SET FOREIGN_KEY_CHECKS=0*/;
/*!40101 SET NAMES binary*/;
CREATE TABLE `api_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `category_id` bigint NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `request_count` int NOT NULL,
  PRIMARY KEY (`id`) /*T![clustered_index] CLUSTERED */,
  UNIQUE KEY `name` (`name`),
  KEY `api_item_category_id_77533105_fk_api_category_id` (`category_id`),
  CONSTRAINT `api_item_category_id_77533105_fk_api_category_id` FOREIGN KEY (`category_id`) REFERENCES `api_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=600001;
