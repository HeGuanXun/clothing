package com.hegx.dto;



import com.hegx.po.UserEntity;

import java.io.Serializable;
import java.util.Date;

public class UserEntityDto implements Serializable {
	
	private static final long serialVersionUID = 23243242341L;
	private Integer id;
	private String userName;
	private String passWord;
	private String passWord2;
	private String checkCode;//登陆的验证码
	private String message;
	private String realName;
	private Integer permission;
	private  String department;
	private Date enterTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

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

	public String getCheckCode() {
		return checkCode;
	}

	public void setCheckCode(String checkCode) {
		this.checkCode = checkCode;
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

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getPassWord2() {
		return passWord2;
	}

	public void setPassWord2(String passWord2) {
		this.passWord2 = passWord2;
	}
}
