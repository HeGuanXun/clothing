package com.hegx.utils;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.UnknownHostException;
import java.util.Enumeration;
import java.util.regex.Pattern;

public class SystemUtils {
	private static String hostName;

	// 获取端口号
	public static String getHostName() throws UnknownHostException {
		if (hostName == null) {
			hostName = InetAddress.getLocalHost().getHostName();
		}
		return hostName;
	}

	// 获取ip
	public static String getIP() {
		try {
			// 返回此机器上的所有接口
			Enumeration netInterfaces = NetworkInterface.getNetworkInterfaces();
			Enumeration ips;
			for (; netInterfaces.hasMoreElements(); ips.hasMoreElements()) {
				NetworkInterface ni = (NetworkInterface) netInterfaces.nextElement();
				// 返回此物理机上的全部ip地址
				ips = ni.getInetAddresses();
				//
				String address = ((InetAddress) ips.nextElement()).getHostAddress();
				// 如果ip不是127.0.0.1则返回此ip
				if ((!"127.0.0.1".equals(address)) && (Pattern.matches("[0-9\\.]+", address))) {
					return address;
				} else {
					continue;
				}
			}
		} catch (Exception localException) {
		}
		return null;
	}

	public static void main(String[] args) {

		System.out.println(SystemUtils.hostName);
		System.out.println(SystemUtils.getIP());
	}
}
