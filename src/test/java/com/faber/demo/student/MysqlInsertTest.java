package com.faber.demo.student;

import com.faber.api.base.demo.mapper.StudentMapper;
import com.faber.demo.FaTestApp;
import lombok.extern.slf4j.Slf4j;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;

@Slf4j
@RunWith(SpringRunner.class)
@SpringBootTest(classes = {FaTestApp.class}, webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class MysqlInsertTest {

    @Resource
    StudentMapper studentMapper;


}
