package com.softeem.service;

import com.softeem.domain.AdminInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * @description:
 * @author:黄鑫
 * @@create: 2020-10-15 22:21
 * version:1.0
 **/
public interface AdminInfoService {

    ModelAndView getLogin(HttpServletRequest request , String name , String password)throws Exception;

    void logout(HttpServletRequest request)throws Exception;
}
