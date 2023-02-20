package com.faber.api.base.demo;

import com.faber.core.config.dbinit.DbInit;
import com.faber.core.config.dbinit.vo.FaDdl;
import com.faber.core.config.dbinit.vo.FaDdlAddColumn;
import com.faber.core.config.dbinit.vo.FaDdlSql;
import com.faber.core.config.dbinit.vo.FaDdlTableCreate;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
public class FaDemoDbInit implements DbInit {

    @Override
    public String getNo() {
        return "demo";
    }

    @Override
    public String getName() {
        return "测试模块";
    }

    @Override
    public List<FaDdl> getDdlList() {
        List<FaDdl> list = new ArrayList<>();

        list.add(new FaDdl(100_000_000L, "V1.0.0", "初始化")
                .addTableCreate(new FaDdlTableCreate("demo_student", "DEMO-学生表", "sql/1.0.0_demo_student.sql"))
                .addTableCreate(new FaDdlTableCreate("demo_student_info", "DEMO-学生表-扩充信息表", "sql/1.0.0_demo_student_info.sql"))
                .addTableCreate(new FaDdlTableCreate("demo_tree", "DEMO-Tree结构数据", "sql/1.0.0_demo_tree.sql")));

        list.add(new FaDdl(100_000_001L, "V1.0.1", "初始化")
                .addAddColumn(new FaDdlAddColumn("demo_student", "info1", "DEMO-学生表 add info1", "sql/1.0.1_demo_student_add_info2.sql"))
                .addSql(new FaDdlSql("V1.0.1数据库更新", "sql/1.0.1_demo_ddl.sql")));

        return list;
    }

}
