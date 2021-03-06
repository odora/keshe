package com.lianyu.king.base.core;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

@Component
public class ContextHolder implements ApplicationContextAware {
	private static ApplicationContext applicationContext;

	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		ContextHolder.applicationContext = applicationContext;
	}

	public static Object getBean(String name) {
		if (null == ContextHolder.applicationContext)
			return null;
		return applicationContext.getBean(name);
	}

}
