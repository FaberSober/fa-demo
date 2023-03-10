
CREATE TABLE IF NOT EXISTS `demo_student` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '学生名',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `valid` tinyint(1) DEFAULT '1' COMMENT '账户是否有效',
  `tags` json DEFAULT NULL COMMENT '标签数组',
  `info` json DEFAULT NULL COMMENT '详细信息',
  `info_id` int(11) DEFAULT NULL COMMENT '补充信息ID',
  `corp_id` int(11) NOT NULL COMMENT '企业ID',
  `tenant_id` int(11) NOT NULL COMMENT '租户ID',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='DEMO-学生表';

CREATE TABLE IF NOT EXISTS `demo_student_info` (
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

CREATE TABLE IF NOT EXISTS `demo_tree` (
    `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `parent_id` int(11) NOT NULL COMMENT '上级节点',
    `name` varchar(255) NOT NULL COMMENT '名称',
    `sort` int(11) DEFAULT '0' COMMENT '排序ID',
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
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='DEMO-Tree结构数据';
