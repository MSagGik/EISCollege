package com.MSagGik.EISCollege.config;

import com.MSagGik.EISCollege.Interceptor.AdminInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class LoginConfig implements WebMvcConfigurer {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //блокировщик событий
        InterceptorRegistration registration = registry.addInterceptor(new AdminInterceptor());
        registration.addPathPatterns("/**");                      //все пути заблокированы
        registration.excludePathPatterns(                         //добавить не заблокированный путь
                "/login",            //авторизация
                "/captcha",          //код верификации
                "/**/*.html",        //html статические ресурсы
                "/**/*.js",          //js статические ресурсы
                "/**/*.css",         //css статические ресурсы
                "/**/*.ico",
                "/**/*.jpg",
                "/**/*.png",
                "/**/*.woff",
                "/**/*.ttf"
        );
    }
}