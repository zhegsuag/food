package com.softeem.domain;

import java.io.Serializable;
import java.util.Date;

import javax.xml.crypto.Data;

/**
 * 订单
 * @author Administrator
 *
 */
public class Orders implements Serializable {

	private Integer id;
	private Integer userId;//用户外键
	private String dishesName;//菜品名称
	private Integer number;//数量
	private double price;//单价
	private double numPrice;//合计
	private String orderTime;//下单时间
	private Integer isDelivery;//是否派送:1  是   0  否
	private Integer status;//订单状态:0  已取消  1  确认   2  派送完成

	private Users users;//订单和用户一对一关系

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

	public double getNumPrice() {
		return numPrice;
	}

	public void setNumPrice(double numPrice) {
		this.numPrice = numPrice;
	}

	public String getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}

	public Integer getIsDelivery() {
		return isDelivery;
	}

	public void setIsDelivery(Integer isDelivery) {
		this.isDelivery = isDelivery;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Orders() {
	}

	public Orders(Integer id, Integer userId, String dishesName, Integer number, double price, double numPrice, String orderTime, Integer isDelivery, Integer status,Users users) {
		this.id = id;
		this.userId = userId;
		this.dishesName = dishesName;
		this.number = number;
		this.price = price;
		this.numPrice = numPrice;
		this.orderTime = orderTime;
		this.isDelivery = isDelivery;
		this.status = status;
		this.users = users;
	}
}
