package com.softeem.controller.web;

import com.softeem.domain.Orders;
import com.softeem.domain.Users;
import com.softeem.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 管理员
         *  * @author Administrator
        *  *
        */
@Controller
@RequestMapping("/orders")
public class OrdersController {

    @Autowired
    private OrdersService ordersService;

    @RequestMapping("/checkOrders")
    public ModelAndView check()throws Exception{
        ModelAndView mv = ordersService.checkOrders();
        return mv;
    }

    @RequestMapping("/myOrders")
    public ModelAndView myOrders(HttpSession session)throws Exception{
        ModelAndView mv = ordersService.findAll(session);
        return mv;
    }

   @RequestMapping("/send")
    public ModelAndView send(String ids){
        ModelAndView mv = ordersService.send(ids);
        return mv;
   }

   @RequestMapping("/refuse")
    public ModelAndView refuse(String ids){
        ModelAndView mv = ordersService.refues(ids);
        return mv;
   }


}
