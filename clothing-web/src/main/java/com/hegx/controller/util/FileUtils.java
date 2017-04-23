package com.hegx.controller.util;


import java.net.FileNameMap;
import java.net.URLConnection;

public class FileUtils {  
  
  public static String getMimeType(String fileUrl)  
      throws java.io.IOException  
    {  
      FileNameMap fileNameMap = URLConnection.getFileNameMap();  
      String type = fileNameMap.getContentTypeFor(fileUrl);  
  
      return type;  
    }  
  
    public static void main(String args[]) throws Exception {  
    	
    	String ss="file://c:/temp/test.TXT";
    	String s=ss.substring(ss.lastIndexOf("."));
    	System.out.println(s);
      System.out.println(FileUtils.getMimeType("file://c:/temp/test.TXT"));
      // output :  text/plain  
    }  
  }  
