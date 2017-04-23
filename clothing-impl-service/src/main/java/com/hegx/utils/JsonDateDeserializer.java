package com.hegx.utils;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class JsonDateDeserializer extends JsonDeserializer<Date> {

	@Override
	public Date deserialize(JsonParser jp, DeserializationContext arg1) throws IOException, JsonProcessingException {
		  SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
          String date = jp.getText();  
         
			try {
				return format.parse(date);
			} catch (java.text.ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;	
}   
}	
