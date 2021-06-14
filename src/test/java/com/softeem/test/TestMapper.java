package com.softeem.test;

import com.softeem.domain.Dishes;
import com.softeem.domain.Material;
import com.softeem.mapper.DishesMapper;
import com.softeem.service.DishesService;
import com.softeem.service.MaterialService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

/**
 * @description:
 * @author:黄鑫
 * @@create: 2020-11-19 20:28
 * version:1.0
 **/
@RunWith(SpringRunner.class)
@SpringBootTest
public class TestMapper {

    @Autowired(required = false)
    private MaterialService materialService;


    @Autowired
    private DishesService dishesService;

    @Autowired
    private DishesMapper dishesMapper;
    @Test
    public  void testMapper() {

       // List<Dishes> dishes = dishesMapper.findDishes(null);


    }

}
