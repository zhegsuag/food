package com.softeem.service;

import com.softeem.domain.ShoppingCar;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @description:
 * @author:黄鑫
 * @@create: 2020-11-05 20:22
 * version:1.0
 **/
public interface ShoppingCarService {
    ModelAndView myShoppingCar(HttpSession session);



    boolean addDishes(String dishesName , String price, HttpSession session );

    boolean submitOrders(HttpSession session);


    boolean del(Integer id);

    boolean delAll(HttpSession session);

    boolean delete(Integer id);

    ShoppingCar reduce(Integer id);
}
