package com.softeem.domain;

import java.io.Serializable;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
public class AdminInfo implements Serializable{

	private Integer id;
	private String loginName;//用户名
	private String password;//密码
	private String adminName;//真实姓名
	private String pic;//图像

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

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public AdminInfo() {
	}

	public AdminInfo(Integer id, String loginName, String password, String adminName, String pic) {
		this.id = id;
		this.loginName = loginName;
		this.password = password;
		this.adminName = adminName;
		this.pic = pic;
	}
}
