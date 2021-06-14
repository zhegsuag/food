package com.softeem.controller;

import com.softeem.domain.DishesType;
import com.softeem.service.serviceImpl.DishesTypeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@Controller
@RequestMapping("type")
public class DishesTypeController {

    //菜品类型列表

    @Autowired
    private DishesTypeServiceImpl service;
    @RequestMapping("/findAll")
    public ModelAndView findAll() throws Exception {
        ModelAndView mv = service.findAll();
        return mv;
    }


    @RequestMapping("/save/{typeName}")
    public ModelAndView saveType(@PathVariable("typeName") String typeName) throws Exception {
        ModelAndView mv = service.save(typeName);
        return mv;
    }

    @RequestMapping("/update")
    public ModelAndView updateType(Integer id , String typeName){
        ModelAndView mv = service.updateType(id,typeName);
        return mv;
    }


    //批量删除
    @RequestMapping("/delete")
    public  ModelAndView delTypr(String ids) throws Exception {

        ModelAndView mv = service.delType(ids);

        return mv;
    }
}
