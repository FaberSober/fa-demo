-- ------------------------- info -------------------------
-- @@ver: 1_000_019
-- @@info: 统一 Demo 租户ID字段类型
-- ------------------------- info -------------------------

ALTER TABLE `demo_student`
    MODIFY COLUMN `tenant_id` varchar(32) NULL COMMENT '租户ID' AFTER `corp_id`;
