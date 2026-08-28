-- ------------------------- info -------------------------
-- @@ver: 1_000_012
-- @@info: Student表字段修改
-- ------------------------- info -------------------------

ALTER TABLE demo_student
    ALTER COLUMN corp_id DROP NOT NULL,
    ALTER COLUMN tenant_id DROP NOT NULL;

COMMENT ON COLUMN demo_student.corp_id IS '企业ID';
COMMENT ON COLUMN demo_student.tenant_id IS '租户ID';

ALTER TABLE demo_student ADD COLUMN dict1 VARCHAR(255);
COMMENT ON COLUMN demo_student.dict1 IS '字典值1';

ALTER TABLE demo_student ADD COLUMN dict2 VARCHAR(255);
COMMENT ON COLUMN demo_student.dict2 IS '字典值2';

ALTER TABLE demo_student ADD COLUMN dict3 VARCHAR(255);
COMMENT ON COLUMN demo_student.dict3 IS '字典值3';
