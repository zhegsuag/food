package com.softeem.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 公告
 * @author Administrator
 *
 */
public class Notice implements Serializable {

	private Integer id;
	private String title;//标题
	private String content;//公告内容
	private Date notTime;//发布时间

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getNotTime() {
		return notTime;
	}

	public void setNotTime(Date notTime) {
		this.notTime = notTime;
	}

	public Notice() {
	}

	public Notice(Integer id, String title, String content, Date notTime) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.notTime = notTime;
	}
}
