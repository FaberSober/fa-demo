package com.faber.api.tenant.base.entity;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.faber.core.annotation.FaModalName;
import com.faber.core.bean.BaseDelEntity;
import lombok.Data;

    
/**
 * 租户-租户表
 * 
 * @author xu.pengfei
 * @email 1508075252@qq.com
 * @date 2023-03-09 21:57:51
 */
@FaModalName(name = "租户-租户表")
@TableName("tn_tenant")
@Data
public class Tenant extends BaseDelEntity {
	
    @ExcelProperty("ID")
    @TableId(type = IdType.AUTO)
    private Integer id;

    @ExcelProperty("租户名称")
    private String name;

    @ExcelProperty("租户状态[1-正常2-停用]")
    private Integer status;

    @ExcelProperty("所属用户ID")
    private Integer ownerId;

}
