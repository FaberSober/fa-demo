DROP TABLE IF EXISTS `demo_student_info`;
CREATE TABLE `demo_student_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `info1` varchar(255) DEFAULT NULL COMMENT '补充信息1',
  `info2` varchar(255) DEFAULT NULL COMMENT '补充信息2',
  `crt_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `crt_user` varchar(32) NOT NULL COMMENT '创建用户ID',
  `crt_name` varchar(255) NOT NULL COMMENT '创建用户',
  `crt_host` varchar(255) DEFAULT NULL COMMENT '创建IP',
  `upd_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `upd_user` varchar(32) DEFAULT NULL COMMENT '更新用户ID',
  `upd_name` varchar(255) DEFAULT NULL COMMENT '更新用户',
  `upd_host` varchar(255) DEFAULT NULL COMMENT '更新IP',
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='DEMO-学生表-扩充信息表';
