package com.faber.api.demo.crypto;

import com.faber.api.base.admin.biz.SystemUpdateLogBiz;
import com.faber.api.base.admin.vo.dto.FaSqlHeader;
import org.junit.jupiter.api.Test;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.test.util.ReflectionTestUtils;

import static org.junit.jupiter.api.Assertions.*;

class CryptoMenuSqlTest {

    @Test
    void parsesBothDialectHeadersWithTheRealUpgradeParser() throws Exception {
        var resolver = new PathMatchingResourcePatternResolver();
        for (String dialect : new String[]{"mysql", "postgre"}) {
            var resources = resolver.getResources("classpath*:sql/fa-demo/" + dialect + "/1.0.23*.sql");
            assertEquals(1, resources.length, "版本号不能重复");
            FaSqlHeader header = ReflectionTestUtils.invokeMethod(new SystemUpdateLogBiz(), "getSqlFileHeader", resources[0]);
            assertNotNull(header);
            assertEquals(1_000_023L, header.getVer());
            assertEquals("增加通用加密解密 Demo 菜单", header.getInfo());
            assertTrue(header.getSql().contains("'/admin/demo/crypto'"));
        }
    }
}
