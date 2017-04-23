package com.hegx.utils;

import org.apache.commons.codec.digest.DigestUtils;

public class PasswordUtils {

	// MD5加密，结果为32位16进制字符串
	public static String encode(String pass) {
		return DigestUtils.md5Hex(DigestUtils.md5Hex(pass.getBytes()));
	}

	public static String encode1(String pass) {

		return DigestUtils.md5Hex(pass.getBytes());
	}
	public static String encode2(String pass) {

		return DigestUtils.md5Hex(pass);
	}
	/* 用来判断用户密码输入是否正确
	 * rawPass:用户登录时输入的密码
	 * encPass：数据库中保存的密码
	 * 
	 */
	public static boolean isValid(String encPass, String rawPass) {
		String pass1 = encPass;
		String pass2 = encode(rawPass);  

		return pass1.equalsIgnoreCase(pass2);
	}

	public static void main(String[] args) {

		//System.out.println(encode1("12345{李里}"));
		//System.out.println(encode2("12345{李里}"));


		//System.out.println(encode1("123456{刘春}")); 
	    //System.out.println(isValid("0c909a141f1f2c0a1cb602b0b2d7d050", "admin123"));
		//System.out.println(encode2("123456{刘春}"));

	//	System.out.println(encode1("12345{liliang}"));
		
	//	System.out.println(encode1("123456789{dsm-shengwusuo}"));
		
	//	System.out.println(encode1("123456789{pkd-kxy}"));
		
	//	System.out.println(encode1("123456{ww-kxy}"));
		
		System.out.println(encode1("123456{liliang-kxy}"));
	   
		System.out.println(encode1("123456{djh-kxy}"));
		
		System.out.println(encode1("123456{fjl-kxy}"));
		System.out.println(encode1("123456{ceshi1-kxy}"));
		

	}

}
