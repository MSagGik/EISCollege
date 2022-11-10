package com.MSagGik.EISCollege.controller;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.CircleCaptcha;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;

@Controller
@Slf4j
public class CaptchaController {
    public final static String SESSION_KEY_IMAGE_CODE = "SESSION_KEY_IMAGE_CODE";

    @GetMapping("/captcha")
    public void createCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //设置response响应
        response.setCharacterEncoding("UTF-8");
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        response.setContentType("image/jpeg");

        // параметры: длина графического проверочного кода, ширина,
        // символы капчи, элементы помех
        CircleCaptcha captcha = CaptchaUtil.createCircleCaptcha(100, 38, 4, 20);
        System.out.println(captcha.getCode());
        // введите проверочный код в HttpSession
        request.getSession().setAttribute(SESSION_KEY_IMAGE_CODE, captcha.getCode());
        log.info("Код подтверждения：" + captcha.getCode() + ",хранится в HttpSession");

        // Выписывается графический код проверки, который можно записать в файл или в поток
        // Выход из потока
        OutputStream out = response.getOutputStream();
        captcha.write(out);
        out.flush();
        out.close();
    }
}
