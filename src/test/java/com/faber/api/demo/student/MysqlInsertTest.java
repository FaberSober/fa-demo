package com.faber.api.demo.student;

import com.faber.api.base.demo.entity.Student;
import com.faber.api.base.demo.mapper.StudentMapper;
import com.faber.api.demo.FaTestApp;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@Slf4j
@RunWith(SpringRunner.class)
@SpringBootTest(classes = {FaTestApp.class}, webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class MysqlInsertTest {

    @Resource StudentMapper studentMapper;

    @Test
    public void testInsert() {
        Student student = new Student();
        student.setId(1);
        student.setName("张三");
        student.setAge(18);
        student.setCorpId(1);
        student.setTenantId(1);
        studentMapper.insert(student);
    }

    @Test
    public void testDelete() {
        studentMapper.deleteByIdIgnoreLogic(1);
    }

    @Test
    public void testUpdate() {
        this.testDelete();
        this.testInsert();

        Student student = new Student();
        student.setId(1);
        student.setName("张三1");
        studentMapper.updateById(student);
    }

    @Test
    public void testDeleteAll() {
        studentMapper.deleteAll();
    }

}
