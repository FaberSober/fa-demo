-- ------------------------- info -------------------------
-- @@ver: 1_000_020
-- @@info: 增加 UniPush 测试台菜单
-- ------------------------- info -------------------------

INSERT INTO base_rbac_menu (
  id, parent_id, name, sort, level, icon, status, link_type, link_url,
  crt_time, crt_user, crt_name, crt_host, upd_time, upd_user, upd_name, upd_host, deleted
)
SELECT 20030600, 20030000, 'UniPush 测试台', 5, 1, NULL, TRUE, 1, '/admin/demo/advance/push',
  CURRENT_TIMESTAMP, '1', '超级管理员', '127.0.0.1', NULL, NULL, NULL, NULL, FALSE
WHERE NOT EXISTS (
  SELECT 1 FROM base_rbac_menu WHERE id = 20030600 OR link_url = '/admin/demo/advance/push'
)
ON CONFLICT (id) DO NOTHING;
