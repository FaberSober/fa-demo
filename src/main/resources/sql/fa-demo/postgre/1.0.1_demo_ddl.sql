-- ------------------------- info -------------------------
-- @@ver: 1_000_001
-- @@info: 测试升级添加表字段
-- ------------------------- info -------------------------

ALTER TABLE demo_student ADD COLUMN info1 VARCHAR(255);
COMMENT ON COLUMN demo_student.info1 IS '信息字段1';
