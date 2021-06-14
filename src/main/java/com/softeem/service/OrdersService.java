package com.softeem.service;

import com.softeem.domain.Orders;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @description:
 * @author:黄鑫
 * @@create: 2020-11-05 20:22
 * version:1.0
 **/
public interface OrdersService {
    ModelAndView findAll(HttpSession session);

    boolean addOrders(Orders orders);

    ModelAndView checkOrders();

    ModelAndView refues(String ids);

    ModelAndView send(String ids);

}
