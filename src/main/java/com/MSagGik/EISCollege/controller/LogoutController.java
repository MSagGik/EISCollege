package com.MSagGik.EISCollege.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LogoutController {
    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute("USER");
        return "login";
    }
}
