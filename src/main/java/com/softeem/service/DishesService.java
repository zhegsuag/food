package com.softeem.service;

import com.softeem.domain.Dishes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @description:
 * @author:黄鑫
 * @@create: 2020-10-18 19:07
 * version:1.0
 **/
public interface DishesService {
    ModelAndView findDishes(HttpSession session , int page, int size, String searchName)throws Exception;

   void saveDishes(Dishes dishes , HttpServletRequest request , MultipartFile uploadpic)throws Exception;

    ModelAndView delDishes(String ids);

    boolean updateDish(HttpServletRequest request ,String rpic , Dishes dishes , MultipartFile uploadpic);

   ModelAndView showUpdate(HttpServletRequest request,Integer id);

    ModelAndView showAdd();


}
