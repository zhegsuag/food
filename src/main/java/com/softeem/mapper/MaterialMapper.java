package com.softeem.mapper;

import com.softeem.domain.Material;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @description:
 * @author:黄鑫
 * @@create: 2020-11-17 20:00
 * version:1.0
 **/
@Mapper
public interface MaterialMapper {
    List<Material> findMaterial();
}
