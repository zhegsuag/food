package com.softeem.service.serviceImpl;

import com.softeem.domain.AdminInfo;
import com.softeem.mapper.AdminInfoMapper;
import com.softeem.service.AdminInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@Service
public class AdminInfoServiceImpl implements AdminInfoService {

    @Autowired(required = false)
    private AdminInfoMapper adminInfoMapper;


    @Override
    public ModelAndView getLogin(HttpServletRequest request, String name, String password) throws Exception {
        ModelAndView mv = new ModelAndView();
    try {
       AdminInfo adminInfo =  adminInfoMapper.getLogin(name,password);
        if(adminInfo != null){
            //登陆成功，将登录管理员的信息保存到session并跳转到页面
            request.getSession().setAttribute("admin",adminInfo);
            mv.setViewName("/main");
        }
        else{
            mv.setViewName("/login");
            mv.addObject("message","用户名或密码错误");
        }
    }catch (Exception e){
        e.printStackTrace();
    }

        return mv;
    }


    public void logout(HttpServletRequest request){
        try{
            //清空session Enumeration:集合
            Enumeration<String> em = request.getSession().getAttributeNames();
            while (em.hasMoreElements()){
                request.removeAttribute(em.nextElement().toString());
            }
            request.getSession().setAttribute("admin",null);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
