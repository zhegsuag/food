package com.softeem.domain;

import java.io.Serializable;

/**
 * 菜品分类
 * @author Administrator
 *
 */
public class DishesType implements Serializable {

	private Integer id;
	private String typeName;//菜品类型名称
	private Integer status;//状态:0 删除   1  有效

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public DishesType(Integer id, String typeName, Integer status) {
		this.id = id;
		this.typeName = typeName;
		this.status = status;
	}

	public DishesType() {
	}
}
