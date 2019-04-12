package com.zhangtan.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

import com.zhangtan.aspects.ComAspect;
import com.zhangtan.service.impl.ComServiceImpl;
import com.zhangtan.service.intface.ComService;
@Configuration
@EnableAspectJAutoProxy
public class AspectConfig {
	@Bean
	public ComAspect comAspect() {
		return new ComAspect();
	}
	@Bean
	public ComService comService() {
		return new ComServiceImpl();
	}
}
