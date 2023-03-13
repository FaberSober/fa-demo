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
                .addSql(new FaDdlSql("初始化表结构", "sql/1.0.0_demo_full.sql"))
                .addSql(new FaDdlSql("初始化表数据", "sql/1.0.0_demo_data.sql")));

        list.add(new FaDdl(100_000_001L, "V1.0.1", "更新")
                .addSql(new FaDdlSql("V1.0.1数据库更新", "sql/1.0.1_demo_update.sql")));

        list.add(new FaDdl(100_000_002L, "V1.0.2", "增加OnlyOffice示例")
                .addSql(new FaDdlSql("增加OnlyOffice示例", "sql/1.0.2_demo_update.sql")));

        return list;
    }

}
