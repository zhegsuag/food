package com.softeem.controller;

import com.github.pagehelper.PageInfo;
import com.softeem.domain.Dishes;
import com.softeem.domain.DishesType;
import com.softeem.service.DishesService;
import com.softeem.service.DishesTypeService;
import com.softeem.tool.FileTool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@Controller
@RequestMapping("/dishes")
public class DishesController {

    @Autowired
    private DishesService dishesService;


    //查询菜品列表
    @RequestMapping("/findAll/{page}/{size}")
    public ModelAndView findDishes(@PathVariable(name = "page") Integer page, @PathVariable(name = "size") Integer size
            , String searchName, HttpSession session) throws Exception {
            ModelAndView mv = dishesService.findDishes(session , page,size,searchName);
        mv.setViewName("/dishes-list");
        return mv;
    }


    @RequestMapping("/showAdd")
    public ModelAndView showAdd(){
        ModelAndView mv = dishesService.showAdd();
        return mv;
    }

    //添加
    @RequestMapping("/save")
    public String saveDishes(Dishes dishes , HttpServletRequest request , MultipartFile uploadpic) throws Exception {
        dishesService.saveDishes(dishes , request , uploadpic);
      return "redirect:/dishes/findAll/1/4";
    }


    @RequestMapping("/delete")
    public ModelAndView delDishes(String ids)throws Exception{
        ModelAndView mv = dishesService.delDishes(ids);;
        return mv;
    }


    @RequestMapping("/showUpdate")
    public ModelAndView showUpdate(HttpServletRequest request , Integer id)throws Exception{
        ModelAndView mv = dishesService.showUpdate(request,id);
        return mv;
    }

    @RequestMapping("/saveUpdate")
    public String saveUpdate(HttpServletRequest request ,String rpic , Dishes dishes , MultipartFile uploadpic)
            throws Exception{
        dishesService.updateDish(request,rpic,dishes,uploadpic);
        return "redirect:/dishes/findAll/1/4";
    }


}
