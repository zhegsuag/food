package com.softeem.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 购物车
 * @author Administrator
 *
 */
public class ShoppingCar implements Serializable {

	private Integer id;
	private Integer userId;//用户外键
	private String dishesName;//菜品名称
	private Integer number;//数量
	private double price;//单价
	private String shoppingTime;//购买日期

	private Users users;//购物车与用户一对一关系

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getDishesName() {
		return dishesName;
	}

	public void setDishesName(String dishesName) {
		this.dishesName = dishesName;
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getShoppingTime() {
		return shoppingTime;
	}

	public void setShoppingTime(String shoppingTime) {
		this.shoppingTime = shoppingTime;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public ShoppingCar() {
	}

	public ShoppingCar(Integer id, Integer userId, String dishesName, Integer number, double price, String shoppingTime) {
		this.id = id;
		this.userId = userId;
		this.dishesName = dishesName;
		this.number = number;
		this.price = price;
		this.shoppingTime = shoppingTime;
	}
}
