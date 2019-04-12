package com.zhangtan.aspects;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
public class ComAspect {
	
	@Pointcut("execution(* com.zhangtan.service.intface.ComService.comMethod(int)) && args(number)")
	public void pointMethod(int number) {
	}
	
	@Before("pointMethod(number)")
	public void beforeMethod(int number) {
		System.out.println(number);
	}
	@After("pointMethod(number)")
	public void afterMethod(int number) {
		System.out.println(number);
	}
}
