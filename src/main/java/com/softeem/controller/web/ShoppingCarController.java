package com.softeem.controller.web;

import com.softeem.domain.Orders;
import com.softeem.domain.ShoppingCar;
import com.softeem.domain.Users;
import com.softeem.service.OrdersService;
import com.softeem.service.ShoppingCarService;
import com.sun.deploy.net.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@Component
@RequestMapping("/shoppingCar")
public class ShoppingCarController {
    @Autowired
    private ShoppingCarService shoppingCarService;



    @RequestMapping("/delAll")
    public void delAll(HttpSession session, HttpServletResponse response)throws Exception{
      response.getWriter().println(shoppingCarService.delAll(session));
    }


    @RequestMapping("/del")
    public void del(Integer id , HttpServletResponse response)throws  Exception{
        response.getWriter().println(shoppingCarService.del(id));
    }

    /*
    * 提交订单
    * */
    @RequestMapping("/submit")
    public void submitOrders(HttpSession session , HttpServletResponse response) throws Exception {
        response.getWriter().println(shoppingCarService.submitOrders(session));
    }

    /*
    * 添加进购物车
    * */
    @RequestMapping("/add")
    public void addFood(String dishesName , String price, HttpSession session , HttpServletResponse response)
            throws Exception {
      //  System.out.println(dishesName+" "+price);
       response.getWriter().println(shoppingCarService.addDishes(dishesName,price,session));
    }

    /*
    * 查看购物车
    * */
    @RequestMapping("/myfood")
    public ModelAndView myFood(HttpSession session){
      ModelAndView mv = shoppingCarService.myShoppingCar(session);
      return mv;
    }
}
