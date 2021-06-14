package com.softeem.service.serviceImpl;

import com.softeem.domain.Users;
import com.softeem.mapper.UsersMapper;
import com.softeem.service.DishesService;
import com.softeem.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;
import java.util.List;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@Service
public class UsersServiceImpl implements UsersService {
    @Autowired(required = false)
    private UsersMapper usersMapper;

    @Autowired
    private DishesService dishesService;

    @Override
    public ModelAndView getLogin(HttpServletRequest request , String loginName , String password) throws Exception
    {
      ModelAndView mv = null;
        try {
            Users users = usersMapper.getLogin(loginName,password);
            if(users!=null){
                mv = dishesService.findDishes(request.getSession(),1,4,null);
                mv.setViewName("/coustom/main");
                request.getSession().setAttribute("user",users);
            }
            else{
                System.out.println("密码错误");
                mv = new ModelAndView();
                mv.addObject("message","会员账号或密码错误");
                mv.setViewName("/coustom/login");
            }
        }catch (Exception e){
            mv = new ModelAndView();
            mv.addObject("message","会员账号或密码错误");
            mv.setViewName("/coustom/login");
        }
        return mv;
    }

    @Override
    public boolean findByLoginName(String loginName)  {
        try {
            if(usersMapper.findByLoginName(loginName).size()==0){
               return true;
            }else {
               return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public ModelAndView save(Users users) throws Exception {
        ModelAndView mv = new ModelAndView();
        try {
            usersMapper.save(users);
            mv.setViewName("/coustom/success");
        }catch (Exception e){
            e.printStackTrace();
        }
        return mv ;
    }

    @Override
    public boolean findByPhone(String phone) throws Exception {

        try {

            if(!usersMapper.findByPhone(phone).isEmpty()){
               return true;
            }else{
               return false;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean findByEmail(String email) throws Exception {
        try{
            if(!usersMapper.findByEmail(email).isEmpty()){
                return true;
            }else{
                return false;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public ModelAndView update(String phone , String email , String password) throws Exception {
        ModelAndView mv = new ModelAndView();
        try {
            Users users = new Users();
            users.setPassword(password);
            users.setEmail(email);
            users.setPhone(phone);
            usersMapper.update(users);
            mv.setViewName("/coustom/updateSuccess");
        }catch (Exception e){
            e.printStackTrace();
        }
        return mv;
    }

    @Override
    public ModelAndView logout(HttpServletRequest request) throws Exception {
        ModelAndView mv = new ModelAndView();
        try {
            Enumeration<String> em = request.getSession().getAttributeNames();
            while (em.hasMoreElements()){
                request.removeAttribute(em.nextElement().toString());
            }
            request.getSession().setAttribute("user",null);
            mv.setViewName("/coustom/login");
        }catch (Exception e){
            e.printStackTrace();
        }
        return mv;
    }
}
