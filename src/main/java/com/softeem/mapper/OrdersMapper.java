package com.softeem.mapper;

import com.softeem.domain.Orders;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @description:
 * @author:黄鑫
 * @@create: 2020-11-05 20:17
 * version:1.0
 **/
@Mapper
public interface OrdersMapper {

    List<Orders> findAll(Integer userId);

    boolean addOrders(Orders orders);

    List<Orders> checkOrders();

    boolean send(Integer id);

    boolean refuse(Integer id);

}
