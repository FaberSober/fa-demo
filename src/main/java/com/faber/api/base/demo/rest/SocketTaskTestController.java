package com.faber.api.base.demo.rest;

import com.faber.api.base.demo.biz.SocketTaskTestBiz;
import com.faber.core.annotation.FaLogBiz;
import com.faber.core.annotation.FaLogOpr;
import com.faber.core.utils.BaseResHandler;
import com.faber.core.vo.msg.Ret;
import com.faber.core.vo.utils.SocketTaskVo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@FaLogBiz("Redis测试")
@RestController
@RequestMapping("/api/base/demo/socketTaskTest")
public class SocketTaskTestController extends BaseResHandler {

    @Resource
    SocketTaskTestBiz socketTaskTestBiz;

    @FaLogOpr("开启任务")
    @RequestMapping(value = "/start", method = RequestMethod.GET)
    @ResponseBody
    public Ret<SocketTaskVo> start() {
        SocketTaskVo data = socketTaskTestBiz.start();
        return ok(data);
    }

}
