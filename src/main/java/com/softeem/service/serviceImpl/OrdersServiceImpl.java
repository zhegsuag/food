package com.softeem.service.serviceImpl;

import com.softeem.domain.Orders;
import com.softeem.domain.Users;
import com.softeem.mapper.OrdersMapper;
import com.softeem.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@Service
public class OrdersServiceImpl implements OrdersService {

    @Autowired(required = false)
    private OrdersMapper ordersMapper;

    @Override
    public ModelAndView findAll(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        try{
            if(session.getAttribute("user") != null){
                Integer userId = ((Users) session.getAttribute("user")).getId();
                List<Orders> ordersList = ordersMapper.findAll(userId);
                mv.addObject("ordersList" ,ordersList);
                mv.setViewName("/coustom/queryOrders");
            }
            else{
                mv.setViewName("/coustom/goLogin");
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return mv;

    }

    @Override
    public boolean addOrders(Orders orders) {
        return ordersMapper.addOrders(orders);
    }

    @Override
    public ModelAndView checkOrders() {

        ModelAndView mv = new ModelAndView();
        try
        {
            List<Orders> ordersList = ordersMapper.checkOrders();
            mv.addObject("checkList",ordersList);
            mv.setViewName("/orders-list");
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return mv;

    }

    @Override
    public ModelAndView refues(String ids) {
        ModelAndView mv = new ModelAndView();
        String[] id = ids.split(",");
        try{
            for(int i = 0 ; i < id.length ; i ++){
                ordersMapper.refuse(Integer.parseInt(id[i]));
            }
            mv.setViewName("redirect:checkOrders");
        }catch (Exception e){
            System.out.println(e.getMessage());
        }

        return mv;
    }

    @Override
    public ModelAndView send(String ids) {
        ModelAndView mv = new ModelAndView();
        String[] id = ids.split(",");
        try{
            for(int i = 0 ; i < id.length ; i ++){
                ordersMapper.send(Integer.parseInt(id[i]));
            }
            mv.setViewName("redirect:checkOrders");
        }catch (Exception e){
            System.out.println(e.getMessage());
        }

        return mv;
    }
}
