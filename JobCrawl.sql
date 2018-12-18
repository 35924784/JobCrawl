-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: jobcrawl
-- ------------------------------------------------------


CREATE TABLE `job` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(300) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL COMMENT '类型',
  `url_obj_id` varchar(60) NOT NULL,
  `title` varchar(100) NOT NULL,
  `salary_min` float DEFAULT NULL,
  `salary_max` float DEFAULT NULL,
  `job_city` varchar(100) DEFAULT NULL,
  `experience_year` varchar(30) DEFAULT NULL,
  `education_need` varchar(30) DEFAULT NULL,
  `publish_date` varchar(20) DEFAULT NULL,
  `job_advantage_tags` varchar(100) DEFAULT NULL,
  `position_info` longtext,
  `job_classification` varchar(50) DEFAULT NULL,
  `crawl_time` datetime NOT NULL,
  `crawl_update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='人工智能表'