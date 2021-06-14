package com.softeem.mapper;

import com.softeem.domain.Users;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @description:
 * @author:黄鑫
 * @@create: 2020-10-20 21:47
 * version:1.0
 **/
@Mapper
public interface UsersMapper {
    Users getLogin(@Param("loginName") String loginName , @Param("password") String password)throws Exception;

    List<Users> findByLoginName(String loginName)throws Exception;

    boolean save(Users users)throws Exception;

    List<Users> findByPhone(String phone)throws Exception;

    List<Users> findByEmail(String email)throws Exception;

    boolean update(Users users)throws Exception;
}
