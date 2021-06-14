package com.softeem.mapper;

import com.softeem.domain.Dishes;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @description:
 * @author:黄鑫
 * @@create: 2020-10-18 18:56
 * version:1.0
 **/
@Mapper
public interface DishesMapper {

    List<Dishes> findDishes(String searchName);

    boolean saveDishes(Dishes dishes);

    boolean delDishes(Integer id);

    boolean updateDish(Dishes dishes);


    List<Dishes> findById(Integer id);
}
