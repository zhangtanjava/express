package com.zhangtan.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

@Component
@PropertySource("classpath:/config/config.properties")
public class GetPropertiesUtil {
	@Autowired
	Environment env;
	
	public void getPro() {
		System.out.println(env.getProperty("name"));
	}
	
	public static void main(String[] args) {
		 ClassPathXmlApplicationContext app = new  ClassPathXmlApplicationContext("applicationContext.xml");
				 GetPropertiesUtil env = (GetPropertiesUtil) app.getBean("getPropertiesUtil");
				 env.getPro();
	}
}
