package com.MSagGik.EISCollege.Interceptor;

import com.MSagGik.EISCollege.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AdminInterceptor implements HandlerInterceptor  {
    /**
     * Вызывается перед обработкой запроса（перед вызовом Controller）
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
//        System.out.println("Выполняется метод preHandle TestInterceptor");
        try {
            // унифицированный ограничитель（запрос session для существующего user）
            // (здесь user после каждого успешного входа записывается в session)
            User user=(User)request.getSession().getAttribute("USER");
            if(user!=null){
                return true;
            }
            response.sendRedirect(request.getContextPath()+"/login");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return false; //Если установлено значение false, то ограничитель не будет
        // продолжать работу, когда он будет запрошен
        // Если установлено значение true, то запрос продолжит выполнение последующих операций
    }

    /**
     * Вызывается после обработки запроса, но до рендеринга представления
     * (после вызова метода Controller)
     */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {
//         System.out.println("Выполняется метод postHandle TestInterceptor");
    }

    /**
     * Вызывается после завершения всего запроса, то есть после того, как DispatcherServlet
     * отобразит соответствующее представление (в основном используется для очистки ресурсов)
     */
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
//        System.out.println("Выполняется метод afterCompletion TestInterceptor");
    }
}
