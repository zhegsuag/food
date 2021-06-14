package com.softeem.controller.web;

import com.github.pagehelper.PageInfo;
import com.softeem.domain.Dishes;
import com.softeem.domain.Users;
import com.softeem.service.DishesService;
import com.softeem.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@Component
@RequestMapping("user")
public class UserController {

    @Autowired
    private UsersService usersService;

    //登录方法
    @RequestMapping("/login")
    public ModelAndView login(HttpServletRequest request , String loginName , String password) throws Exception {
        ModelAndView mv = usersService.getLogin(request ,  loginName , password);
        return mv;
    }

    @RequestMapping("/goLogin")
    public String goLogin(){
        return "/coustom/login";
    }

    @RequestMapping("/goRegist")
    public String goRegist(){
        return "/coustom/registered";
    }

    @RequestMapping("/regist")
        public ModelAndView regist(Users users) throws Exception {
        ModelAndView mv = usersService.save(users);
        return mv;
        }

        @RequestMapping("/user_exit")
          public void user_exit(String username, HttpServletResponse response) throws Exception {
                response.getWriter().println(usersService.findByLoginName(username));
                return;
        }


        @RequestMapping("/logout")
    public ModelAndView logout(HttpServletRequest request) throws Exception {
        return usersService.logout(request);
        }


        @RequestMapping("/phone_exit")
    public void phone_exit(String phone,HttpServletResponse response) throws Exception {

           response.getWriter().println(usersService.findByPhone(phone));
            return;
        }


        @RequestMapping("/email_exit")
        public void email_exit(HttpServletResponse response , String email) throws Exception {
          response.getWriter().println(usersService.findByEmail(email));
          return;
        }


        @RequestMapping("/updatePwd")
    public ModelAndView updatePwd(String phone , String email , String password) throws Exception {
            ModelAndView  mv = usersService.update(phone,email,password);
             return mv;
        }
}
