package com.hegx.utils;

import java.util.ArrayList;
import java.util.List;

public class CommonUtils {

	// 判断list集合是否为空（jdk中自带的isEmpty方法不能判断为null的情况;"?"表示任意类型
	public static boolean isEmpty(List<?> list) {
		return (list == null) || (list.size() <= 0);
	}

	public static void main(String[] args) {
		List s = new ArrayList();
		System.out.println(isEmpty(s));
	}

}
