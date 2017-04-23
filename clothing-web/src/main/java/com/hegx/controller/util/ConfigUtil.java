package com.hegx.controller.util;
  

import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class ConfigUtil {  
    private static Properties properties=new Properties();  
    static{  
        ClassLoader classLoader=ConfigUtil.class.getClassLoader();
        InputStream ips=classLoader.getResourceAsStream("my.properties");  
        try{  
            properties.load(ips);  
        }catch (Exception e) {  
            e.printStackTrace();  
        }  
    }  
      
    public static String getValue(String key) throws UnsupportedEncodingException{  
        return new String(properties.getProperty(key).getBytes("iso-8859-1"),"utf-8");  
    } 
    public static void main(String[] args) throws UnsupportedEncodingException {
	System.out.println(ConfigUtil.getValue("my.corpCode"));
	}
}  