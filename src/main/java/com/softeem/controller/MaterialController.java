package com.softeem.controller;

import com.softeem.domain.Material;
import com.softeem.service.MaterialService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@Controller
@RequestMapping("/material")
public class MaterialController {

    @Autowired
    private MaterialService service;

    @RequestMapping("/findAll")
    public ModelAndView findAll()throws Exception{
        ModelAndView mv = service.findMaterial();
        return mv;
    }
}
