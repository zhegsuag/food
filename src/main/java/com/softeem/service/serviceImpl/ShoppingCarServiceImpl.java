package com.softeem.service.serviceImpl;

import cn.hutool.core.date.DateUtil;
import com.softeem.domain.Orders;
import com.softeem.domain.ShoppingCar;
import com.softeem.domain.Users;
import com.softeem.mapper.OrdersMapper;
import com.softeem.mapper.ShoppingCarMapper;
import com.softeem.service.ShoppingCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@Service
public class ShoppingCarServiceImpl implements ShoppingCarService {

    @Autowired(required = false)
    private ShoppingCarMapper shoppingCarMapper;

    @Autowired(required = false)
    private OrdersMapper ordersMapper;
    private String dishesName;

    @Override
    public ModelAndView myShoppingCar(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        Users users = (Users) session.getAttribute("user");

        double orderPrice = 0;
        try {
            if (users != null) {
                List<ShoppingCar> shoppingCarList = shoppingCarMapper.myShoppingCar(users.getId());
                if (shoppingCarList != null)
                    for (ShoppingCar shoppingCar : shoppingCarList) {
                        orderPrice += shoppingCar.getPrice() * shoppingCar.getNumber();

                    }
                mv.addObject("shoppingCarList", shoppingCarList);
                mv.addObject("orderPrice", orderPrice);
                mv.addObject("num", shoppingCarList.size());
                mv.setViewName("/coustom/shoppingCart");
            } else {
                mv.setViewName("/coustom/goLogin");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return mv;
    }



    @Override
    public boolean addDishes(String dishesName , String price, HttpSession session) {
        try {
            Users users = (Users) session.getAttribute("user");
            List<ShoppingCar> list = shoppingCarMapper.myShoppingCar(users.getId());
            for(ShoppingCar car:list){
                if(car.getDishesName().equalsIgnoreCase(dishesName)){
                    car.setNumber(car.getNumber()+1);
                    car.setShoppingTime(DateUtil.now());
                    shoppingCarMapper.addOldDishes(car);
                    return true;
                }
            }
            ShoppingCar car = new ShoppingCar(null,users.getId(),dishesName,1,Double.parseDouble(price),DateUtil.now());
            shoppingCarMapper.addNewDishes(car);
            return true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return true;
    }

    @Override
    public boolean submitOrders(HttpSession session) {
        Users users = (Users) session.getAttribute("user");
        List<ShoppingCar> shoppingCarList = shoppingCarMapper.myShoppingCar(users.getId());
        Orders orders = null;
        boolean flag = true;
        try {
            for(ShoppingCar car:shoppingCarList){
                orders = new Orders(null,car.getUserId(),car.getDishesName(),car.getNumber(),car.getPrice(),car.getNumber()*car.getPrice(),car.getShoppingTime(),0,1,users);
                flag =   shoppingCarMapper.submitOrders(car.getId())&&ordersMapper.addOrders(orders);
                if(flag == false){
                   return false;
                }
            }
            return true;
        }catch (Exception e){

            e.printStackTrace();
        }
        return true;
    }

    @Override
    public boolean del(Integer id) {
        try {
            ShoppingCar shoppingCar = this.reduce(id);
            if(shoppingCar.getNumber()-1 == 0){
                shoppingCarMapper.delete(id);
                return true;
            }else{
                shoppingCar.setNumber(shoppingCar.getNumber()-1);
                shoppingCarMapper.del(shoppingCar);
                return true;
            }

        }catch (Exception e){
            e.printStackTrace();
            return false;
        }

    }

    @Override
    public boolean delAll(HttpSession session) {

        Integer userId = ((Users) session.getAttribute("user")).getId();
        try {
            shoppingCarMapper.delAll(userId);
             return true;
        }catch (Exception e)
        {
            e.printStackTrace();
            return false;
        }

    }

    @Override
    public boolean delete(Integer id) {
        return shoppingCarMapper.delete(id);
    }

    @Override
    public ShoppingCar reduce(Integer id) {
        return shoppingCarMapper.reduce(id);
    }
}
