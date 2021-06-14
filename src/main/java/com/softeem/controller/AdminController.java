package com.softeem.controller;

import com.softeem.domain.AdminInfo;
import com.softeem.service.AdminInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@Controller
@RequestMapping("admin")
public class AdminController {

    @Autowired
    private AdminInfoService adminInfoService;
    //登陆方法
    @RequestMapping("/login")
    public ModelAndView login(HttpServletRequest request , String name , String password) throws Exception {
        ModelAndView  modelAndView = adminInfoService.getLogin(request ,name,password);
        return  modelAndView;
    }


    @RequestMapping("/goLogin")
    public String goLogin(){
        return "/login";
    }


    @RequestMapping("/logout")
    public String logout(HttpServletRequest request) throws Exception {
        adminInfoService.logout(request);
        return "/login";
    }
}
