-- ------------------------- info -------------------------
-- @@ver: 1_000_019
-- @@info: 统一 Demo 租户ID字段类型
-- ------------------------- info -------------------------

ALTER TABLE demo_student
    ALTER COLUMN tenant_id TYPE varchar(32)
    USING tenant_id::varchar(32);
