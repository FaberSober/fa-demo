-- ------------------------- info -------------------------
-- @@ver: 1_000_016
-- @@info: 增加 Telemetry 测试菜单
-- ------------------------- info -------------------------

INSERT INTO base_rbac_menu (
  id, parent_id, name, sort, level, icon, status, link_type, link_url,
  crt_time, crt_user, crt_name, crt_host, upd_time, upd_user, upd_name, upd_host, deleted
)
SELECT 20070000, 20000000, 'Telemetry 测试', 6, 1, 'mdi:chart-line', TRUE, 1, '/admin/demo/telemetry',
  CURRENT_TIMESTAMP, '1', '超级管理员', '127.0.0.1', NULL, NULL, NULL, NULL, FALSE
WHERE NOT EXISTS (
  SELECT 1 FROM base_rbac_menu WHERE id = 20070000 OR link_url = '/admin/demo/telemetry'
)
ON CONFLICT (id) DO NOTHING;
