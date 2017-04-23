package com.hegx.po;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @author: 何冠勋;@date:2017年1月3日;
 * @注册数据
 * @version
 *
 */
public class UserEntity implements Serializable {


	private static final long serialVersionUID = 123343242341L;
	private String userName;
	private String passWord;
	private String realName;
	private Integer permission;
	private  String department;
	private Date enterTime;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public Integer getPermission() {
		return permission;
	}

	public void setPermission(Integer permission) {
		this.permission = permission;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public Date getEnterTime() {
		return enterTime;
	}

	public void setEnterTime(Date enterTime) {
		this.enterTime = enterTime;
	}
}
