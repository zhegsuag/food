package com.softeem.mapper;

import com.softeem.domain.DishesType;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @description:
 * @author:黄鑫
 * @@create: 2020-10-18 00:04
 * version:1.0
 **/
//菜品类型操作接口
@Mapper
public interface DishesTypeMapper {


    //查询所有菜品类型
    public List<DishesType> findAll()throws Exception;

    public boolean save(String typeName)throws  Exception;

    boolean updateType(@Param("id") Integer id , @Param("typeName") String typeName);

    //批量删除
    public  boolean delType(Integer id)throws Exception;
}
