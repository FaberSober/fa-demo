-- ------------------------- info -------------------------
-- @@ver: 1_000_012
-- @@info: Student表字段修改
-- ------------------------- info -------------------------

ALTER TABLE `demo_student` 
MODIFY COLUMN `corp_id` int(11) NULL COMMENT '企业ID' AFTER `info_id`,
MODIFY COLUMN `tenant_id` int(11) NULL COMMENT '租户ID' AFTER `corp_id`;
