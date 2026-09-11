-- ------------------------- info -------------------------
-- @@ver: 1_000_017
-- @@info: 增加"弹窗"菜单页面
-- ------------------------- info -------------------------

INSERT INTO `base_rbac_menu` (
  `id`, `parent_id`, `name`, `sort`, `level`, `icon`, `status`, `link_type`, `link_url`,
  `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `deleted`
)
SELECT 20019100, 20010000, '弹窗', 20, 1, NULL, 1, 1, '/admin/demo/biz/modal',
  CURRENT_TIMESTAMP, '1', '超级管理员', '127.0.0.1', NULL, NULL, NULL, NULL, 0
WHERE NOT EXISTS (
  SELECT 1 FROM `base_rbac_menu` WHERE `id` = 20019100 OR `link_url` = '/admin/demo/biz/modal'
);
