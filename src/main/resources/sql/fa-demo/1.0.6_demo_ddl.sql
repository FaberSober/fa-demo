-- ------------------------- info -------------------------
-- @@ver: 1_000_006
-- @@info: 修改ID字段为bigint(14)
-- ------------------------- info -------------------------

ALTER TABLE `demo_student` MODIFY COLUMN `id` bigint(14) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID' FIRST;
ALTER TABLE `demo_student_info` MODIFY COLUMN `id` bigint(14) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID' FIRST;
ALTER TABLE `demo_tree` MODIFY COLUMN `id` bigint(14) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID' FIRST;
ALTER TABLE `demo_tree` MODIFY COLUMN `parent_id` bigint(14) NOT NULL COMMENT '上级节点' AFTER `id`;

