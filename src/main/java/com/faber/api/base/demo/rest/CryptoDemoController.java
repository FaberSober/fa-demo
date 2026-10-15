package com.faber.api.base.demo.rest;

import com.faber.api.base.security.biz.RequestCryptoBiz;
import com.faber.core.annotation.FaLogBiz;
import com.faber.core.annotation.FaNoLog;
import com.faber.core.config.annotation.Permission;
import com.faber.core.context.BaseContextHandler;
import com.faber.core.crypto.CryptoEnvelope;
import com.faber.core.utils.BaseResHandler;
import com.faber.core.vo.msg.Ret;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.web.bind.annotation.*;

@RestController
@FaLogBiz("加密解密演示")
@FaNoLog
@Permission(permission = RequestCryptoBiz.DEMO_PERMISSION)
@ConditionalOnProperty(prefix = "fa.security.crypto", name = "enabled", havingValue = "true")
@RequestMapping("/api/base/demo/crypto")
public class CryptoDemoController extends BaseResHandler {

    private final RequestCryptoBiz biz;

    public CryptoDemoController(RequestCryptoBiz biz) {
        this.biz = biz;
    }

    @PostMapping("/roundtrip")
    public Ret<DemoText> roundtrip(@RequestBody CryptoEnvelope envelope) {
        return ok(biz.decryptDemo(envelope, BaseContextHandler.getUserId(), DemoText.class));
    }

    public record DemoText(@NotNull @Size(max = 4096) String text) {}
}
