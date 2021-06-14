package com.softeem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@Controller
public class HomeController {
    @RequestMapping("/")
    public String login(){
        return "/coustom/login";
    }

}
