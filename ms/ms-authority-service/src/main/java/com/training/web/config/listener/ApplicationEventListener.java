package com.training.web.config.listener;

import java.util.Iterator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.context.event.ApplicationEnvironmentPreparedEvent;
import org.springframework.boot.context.event.ApplicationFailedEvent;
import org.springframework.boot.context.event.ApplicationPreparedEvent;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.boot.context.event.SpringApplicationEvent;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.event.ContextClosedEvent;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.context.event.ContextStartedEvent;
import org.springframework.context.event.ContextStoppedEvent;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.env.MutablePropertySources;
import org.springframework.core.env.PropertySource;

public class ApplicationEventListener implements ApplicationListener<ApplicationEvent> {

	private Logger logger = LoggerFactory.getLogger(getClass());

	@Override
	public void onApplicationEvent(ApplicationEvent event) {
		// 在这里可以监听到Spring Boot的生命周期
		if (event instanceof ApplicationEnvironmentPreparedEvent) { // 初始化环境变量
																	// 环境事件监听
			logger.debug("初始化环境变量");
			// 在该监听中获取到ConfigurableEnvironment后可以对配置信息做操作，例如：修改默认的配置信息，增加额外的配置信息等等
			ConfigurableEnvironment envi = ((ApplicationEnvironmentPreparedEvent) event).getEnvironment();
			MutablePropertySources mps = envi.getPropertySources();
			if (mps != null) {
				Iterator<PropertySource<?>> iter = mps.iterator();
				while (iter.hasNext()) {
					PropertySource<?> ps = iter.next();
					logger.info("ps.getName:{};ps.getSource:{};ps.getClass:{}", ps.getName(), ps.getSource(),
							ps.getClass());
				}
			}
		} else if (event instanceof ApplicationPreparedEvent) { // 初始化完成
			logger.debug("初始化环境变量完成");
			// 在获取完上下文后，可以将上下文传递出去做一些额外的操作。
			ConfigurableApplicationContext cac = ((ApplicationPreparedEvent) event).getApplicationContext();
			passContextInfo(cac);
		} else if (event instanceof ContextRefreshedEvent) { // 应用刷新，当ApplicationContext初始化或者刷新时触发该事件。
			logger.debug("应用刷新");
		} else if (event instanceof ApplicationReadyEvent) {// 应用已启动完成
			logger.debug("应用已启动完成");
		} else if (event instanceof ContextStartedEvent) { // 应用启动，Spring2.5新增的事件，当容器调用ConfigurableApplicationContext的
															// Start()方法开始/重新开始容器时触发该事件。
			logger.debug("应用启动");
			// 在该事件中可以获取到SpringApplication对象，可做一些执行前的设置.
			SpringApplication app = ((SpringApplicationEvent) event).getSpringApplication();
			app.setBanner(null);// 不显示banner信息
		} else if (event instanceof ContextStoppedEvent) { // 应用停止，Spring2.5新增的事件，当容器调用ConfigurableApplicationContext的Stop()方法停止容器时触发该事件。
			logger.debug("应用停止");
		} else if (event instanceof ContextClosedEvent) { // 应用关闭，当ApplicationContext被关闭时触发该事件。容器被关闭时，其管理的所有单例Bean都被销毁。
			logger.debug("应用关闭");
		} else if (event instanceof ApplicationFailedEvent) { // 应用启动异常
			logger.debug("应用启动异常");
			//在异常发生时，最好是添加虚拟机对应的钩子进行资源的回收与释放，能友善的处理异常信息。在spring boot中已经为大家考虑了这一点，默认情况开启了对应的功能
			Throwable throwable = ((ApplicationFailedEvent) event).getException();
			handleThrowable(throwable);
		} else {
		}
	}

	/**
	 * 传递上下文
	 * 
	 * @param cac
	 */
	private void passContextInfo(ApplicationContext cac) {
		// dosomething()
	}
	
	/*处理异常*/
    private void handleThrowable(Throwable throwable) {
    }

}