package com.softeem.controller.web;

import com.github.pagehelper.PageInfo;
import com.softeem.domain.Dishes;
import com.softeem.service.DishesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@Component
@RequestMapping("/main")
public class MainController {

    @Autowired
    private DishesService dishesService;

    @RequestMapping("/allDishes/{page}/{size}")
    public ModelAndView main(HttpServletRequest request, @PathVariable(name = "page") Integer page, @PathVariable(name = "size") Integer size
            , String searchName, HttpSession session) throws Exception {
       ModelAndView mv =  dishesService.findDishes(session,page,size,searchName);
       mv.setViewName("/coustom/main");
        return mv;
    }
}
