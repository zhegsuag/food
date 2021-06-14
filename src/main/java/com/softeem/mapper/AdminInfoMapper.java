package com.softeem.mapper;

import com.softeem.domain.AdminInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @description:
 * @author:黄鑫
 * @@create: 2020-10-15 22:14
 * version:1.0
 **/
@Mapper
public interface AdminInfoMapper {
    AdminInfo getLogin(@Param("name") String name , @Param("password") String password)throws Exception;
}
