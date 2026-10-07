-- ------------------------- info -------------------------
-- @@ver: 1_000_022
-- @@info: 增加图形验证码 Demo 菜单
-- ------------------------- info -------------------------

INSERT INTO base_rbac_menu (
  id, parent_id, name, sort, level, icon, status, link_type, link_url,
  crt_time, crt_user, crt_name, crt_host, upd_time, upd_user, upd_name, upd_host, deleted
)
SELECT 20019300, 20010000, '图形验证码', 22, 1, NULL, TRUE, 1, '/admin/demo/biz/captcha',
  CURRENT_TIMESTAMP, '1', '超级管理员', '127.0.0.1', NULL, NULL, NULL, NULL, FALSE
WHERE NOT EXISTS (
  SELECT 1
  FROM base_rbac_menu
  WHERE id = 20019300 OR link_url = '/admin/demo/biz/captcha'
)
ON CONFLICT (id) DO NOTHING;
