-- ------------------------- info -------------------------
-- @@ver: 1_000_004
-- @@info: 修复crt_time字段更新自动更新
-- ------------------------- info -------------------------

ALTER TABLE demo_student
    ALTER COLUMN crt_time SET NOT NULL,
    ALTER COLUMN crt_time SET DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE demo_student_info
    ALTER COLUMN crt_time SET NOT NULL,
    ALTER COLUMN crt_time SET DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE demo_tree
    ALTER COLUMN crt_time SET NOT NULL,
    ALTER COLUMN crt_time SET DEFAULT CURRENT_TIMESTAMP;
