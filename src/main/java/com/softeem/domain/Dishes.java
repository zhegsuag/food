package com.softeem.domain;

import java.io.Serializable;

/**
 * 菜品
 * @author Administrator
 *
 */
public class Dishes implements Serializable {

	private Integer id;
	private String dishesName;//菜品名称
	private String material;//菜品原料
	private double marketPrice;//市场价
	private double vipPrice;//会员价
	private Integer dishesTypeId;//菜品类型外键
	private String pic;//菜品图片
	private String desc;//说明
//	private Integer material_Id;//主要食材的id
	private Material materialMap;

	public Material getMaterialMap() {
		return materialMap;
	}

	public void setMaterialMap(Material materialMap) {
		this.materialMap = materialMap;
	}

//	public Integer getMaterial_Id() {
//		return material_Id;
//	}

//	public void setMaterial_Id(Integer material_Id) {
//		this.material_Id = material_Id;
//	}

	private DishesType dishesType;//菜品与菜品类型一对一配置

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDishesName() {
		return dishesName;
	}

	public void setDishesName(String dishesName) {
		this.dishesName = dishesName;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public double getMarketPrice() {
		return marketPrice;
	}

	public void setMarketPrice(double marketPrice) {
		this.marketPrice = marketPrice;
	}

	public double getVipPrice() {
		return vipPrice;
	}

	public void setVipPrice(double vipPrice) {
		this.vipPrice = vipPrice;
	}

	public Integer getDishesTypeId() {
		return dishesTypeId;
	}

	public void setDishesTypeId(Integer dishesTypeId) {
		this.dishesTypeId = dishesTypeId;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public DishesType getDishesType() {
		return dishesType;
	}

	public void setDishesType(DishesType dishesType) {
		this.dishesType = dishesType;
	}

	@Override
	public String toString() {
		return "Dishes{" +
				"id=" + id +
				", dishesName='" + dishesName + '\'' +
				", material='" + material + '\'' +
				", marketPrice=" + marketPrice +
				", vipPrice=" + vipPrice +
				", dishesTypeId=" + dishesTypeId +
				", pic='" + pic + '\'' +
				", desc='" + desc + '\'' +
				", dishesType=" + dishesType +
				'}';
	}

	public Dishes() {
	}
}
