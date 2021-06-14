package com.softeem.service;

import com.softeem.domain.Users;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @description:
 * @author:黄鑫
 * @@create: 2020-10-20 21:49
 * version:1.0
 **/
public interface UsersService {
   ModelAndView getLogin(HttpServletRequest request , String loginName , String password)throws Exception;

    boolean findByLoginName(String loginName)throws Exception;

    ModelAndView save(Users users)throws Exception;

    boolean findByPhone(String phone)throws Exception;

    boolean findByEmail(String email)throws Exception;

   ModelAndView update(String phone , String email , String password)throws Exception;

    ModelAndView logout(HttpServletRequest request)throws Exception;
}
