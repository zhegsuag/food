package com.softeem.domain;

import java.io.Serializable;

/**
  * @Author zhengshuang
  * @Description //TODO
  * @Date 19:22 2021/6/1
  * @Param
  * @return
  **/
public class Users implements Serializable {

	private Integer id;
	private String loginName;//登录名
	private String password;//密码
	private String userName;//真实姓名
	private Integer sex;//性别: 1  男   0  女
	private Integer age;//年龄
	private String idCard;//身份证号
	private String address;//家庭住址
	private String phone;//电话号码
	private String email;//邮箱

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Users(Integer id, String loginName, String password, String userName, Integer sex, Integer age, String idCard, String address, String phone, String email) {
		this.id = id;
		this.loginName = loginName;
		this.password = password;
		this.userName = userName;
		this.sex = sex;
		this.age = age;
		this.idCard = idCard;
		this.address = address;
		this.phone = phone;
		this.email = email;
	}

	public Users() {
	}
}
