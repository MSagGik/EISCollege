package com.MSagGik.EISCollege.controller;

import com.MSagGik.EISCollege.entity.Student;
import com.MSagGik.EISCollege.entity.Teacher;
import com.MSagGik.EISCollege.entity.User;
import com.MSagGik.EISCollege.mapper.UserMapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;

@Slf4j
@Controller
public class LoginController {
    @Autowired
    private UserMapper userMapper;

    @Autowired
    private StudentController studentController;

    @Autowired
    private TeacherController teacherController;

    @GetMapping("/login")
    public String toLogin(){
        return "login";
    }

    @PostMapping("/login")
    public String login(User user, HttpSession httpSession, Model model){
        log.info(String.valueOf(user));
//        если код подтверждения совпадает
        if (user.getCaptcha().equalsIgnoreCase((String) httpSession.getAttribute("SESSION_KEY_IMAGE_CODE"))) {
//            пользователь существует
            QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
            userQueryWrapper.eq("username", user.getUsername());
            User u1 = userMapper.selectOne(userQueryWrapper);
            log.info(String.valueOf(u1));
            if (u1 != null){
                // проверка совпадения пароля существующего пользователя
                if (u1.getPassword().equals(user.getPassword())){
                    if (u1.getDisabled()==0){
                        model.addAttribute("info","Успешный вход в систему！！！");
                        User u = userMapper.selectOne(new QueryWrapper<User>().eq("username",user.getUsername()));
                        u.setPassword("******");
                        if (u.getContrastStudentID()!=null){
                            Student student = studentController.getStudentById(u.getContrastStudentID());
                            u.setClassNO(student.getClassNO());
                            u.setContrastStudentName(student.getName());
                        }
                        if (u.getContrastTeacherID()!=null){
                            Teacher teacher = teacherController.getTeacherById(u.getContrastTeacherID());
                            u.setContrastTeacherName(teacher.getName());
                        }
                        httpSession.setAttribute("USER",u);
                        return "redirect:index";
                    } else {
                        model.addAttribute("info","Пользователь отключен, обратитесь к администратору！！！");
                        return "login";
                    }
                } else {
                    model.addAttribute("info","Имя пользователя или пароль неверны, пожалуйста, введите еще раз！！！");
                    return "login";
                }
            } else {
//                пользователь не существует
                model.addAttribute("info","Имя пользователя или пароль неверны, пожалуйста, введите еще раз！！！");
                return "login";
            }
        } else {
            model.addAttribute("info","Неверный проверочный код, введите еще раз！！！");
            return "login";
        }
    }
}
