package com.softeem.mapper;

import com.softeem.domain.ShoppingCar;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @description:
 * @author:黄鑫
 * @@create: 2020-11-05 20:18
 * version:1.0
 **/
@Mapper
public interface ShoppingCarMapper {

    List<ShoppingCar> myShoppingCar(Integer userId);

    boolean addOldDishes(ShoppingCar shoppingCar);

    boolean addNewDishes(ShoppingCar shoppingCar);

    boolean submitOrders(Integer id);

    boolean del(ShoppingCar shoppingCar);

    boolean delAll(Integer userId);

    boolean delete(Integer id);

    ShoppingCar reduce(Integer id);
}
