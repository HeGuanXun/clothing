package com.hegx.utils;


import org.apache.commons.lang3.StringUtils;
/**
 * @author：段俊河; @date:2016年3月14日;
 * @description:操作字符串的工具类
 * @version:
 */
public class MyStringUtils extends StringUtils {
	public static final String EMPTY = "";

	//
	public static boolean isNotBlank(String str) {
		return (str != null) && (!str.isEmpty());
	}

	// 不管字符串为空或者为null，都返回true
	public static boolean isBlank(String str) {
		return (str == null) || (str.length() == 0);
	}

	public static boolean isNotTrimBlank(String str) {
		return (str != null) && (!str.trim().isEmpty());
	}

	// 除去空格后，不管字符串为空或者为null，都返回true
	public static boolean isTrimBlank(String str) {
		return (str == null) || (str.trim().isEmpty());
	}

	// 把字符串的首字符转为大写
	public static String capFirstUpperCase(String str) {
		if (isBlank(str)) {
			return str;
		}
		return str.substring(0, 1).toUpperCase() + str.substring(1);
	}

	// 把字符串的首字符转为小写
	public static String capFirstLowerCase(String str) {
		if (isBlank(str)) {
			return str;
		}
		return str.substring(0, 1).toLowerCase() + str.substring(1);
	}

	public static String num2String(Long no) {
		if (no.longValue() < 10L)
			return String.valueOf(no);
		if (no.longValue() < 36L)
			return String.valueOf((char) (int) (no.longValue() - 10L + 65L));
		if (no.longValue() < 62L) {
			return String.valueOf((char) (int) (no.longValue() - 36L + 97L));
		}
		return num2String(Long.valueOf(no.longValue() / 62L)) + num2String(Long.valueOf(no.longValue() % 62L));
	}

	public static String bool2Str(Boolean flag) {
		if (flag == null) {
			return "F";
		}
		return flag.booleanValue() ? "T" : "F";
	}

	public static boolean equals(Long long1, Long long2) {
		if ((long1 == null) || (long2 == null)) {
			return false;
		}
		if (long1.equals(long2)) {
			return true;
		}
		return false;
	}

}
