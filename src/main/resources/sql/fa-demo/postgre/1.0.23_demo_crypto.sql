-- ------------------------- info -------------------------
-- @@ver: 1_000_023
-- @@info: 增加通用加密解密 Demo 菜单
-- ------------------------- info -------------------------

INSERT INTO base_rbac_menu (
  id, parent_id, name, sort, level, icon, status, link_type, link_url,
  crt_time, crt_user, crt_name, crt_host, upd_time, upd_user, upd_name, upd_host, deleted
)
SELECT 20030800, 20030000, '通用加密解密', 8, 1, NULL, TRUE, 1, '/admin/demo/crypto',
  CURRENT_TIMESTAMP, '1', '超级管理员', '127.0.0.1', NULL, NULL, NULL, NULL, FALSE
WHERE NOT EXISTS (
  SELECT 1 FROM base_rbac_menu WHERE id = 20030800 OR link_url = '/admin/demo/crypto'
)
ON CONFLICT (id) DO NOTHING;
