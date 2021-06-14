package com.softeem.service;

import com.softeem.domain.DishesType;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @description:
 * @author:黄鑫
 * @@create: 2020-10-18 00:09
 * version:1.0
 **/
public interface DishesTypeService {
    public ModelAndView findAll()throws Exception;

    public ModelAndView save(String typeName)throws  Exception;

    ModelAndView updateType( Integer id ,  String typeName);

    public  ModelAndView delType(String ids)throws Exception;
}
