-- ------------------------- info -------------------------
-- @@ver: 1_000_001L
-- @@info: 测试升级添加表字段
-- ------------------------- info -------------------------

ALTER TABLE `file_web`.`demo_student` ADD COLUMN `info1` varchar(255) NULL COMMENT '信息字段1' AFTER `info`;