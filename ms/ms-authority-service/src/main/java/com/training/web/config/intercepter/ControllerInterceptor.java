package com.training.web.config.intercepter;

import java.util.Arrays;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/** 
 * 拦截器：记录用户操作日志，检查用户是否登录…… 
 */  
@Aspect  
@Component  
public class ControllerInterceptor {  
    private static final Logger logger = LoggerFactory.getLogger(ControllerInterceptor.class);  
    
    ThreadLocal<Long> startTime = new ThreadLocal<>();
    ThreadLocal<String> url = new ThreadLocal<>();
      
    /** 
     * 定义拦截规则：拦截com.training.web.controller包下面的所有类中的方法。 
     */  
    @Pointcut("execution(* com.training.web.controller..*(..))")  
    public void controllerMethodPointcut(){}  
      
    @Before("controllerMethodPointcut()")
    public void doBefore(JoinPoint joinPoint) throws Throwable {
    	startTime.set(System.currentTimeMillis());
    	
        // 接收到请求，记录请求内容
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();

        // 记录下请求内容
        logger.info("URL : " + request.getRequestURL().toString());
        logger.info("HTTP_METHOD : " + request.getMethod());
        logger.info("IP : " + request.getRemoteAddr());
        logger.info("CLASS_METHOD : " + joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName());
        logger.info("ARGS : " + Arrays.toString(joinPoint.getArgs()));
        //获取所有参数：
        Enumeration<String> enu=request.getParameterNames(); 
        while(enu.hasMoreElements()){ 
            String paraName=(String)enu.nextElement(); 
            logger.info("QUERY["+paraName+": "+request.getParameter(paraName)+"]"); 
        } 
    }

    @AfterReturning(returning = "ret", pointcut = "controllerMethodPointcut()")
    public void doAfterReturning(Object ret) throws Throwable {
        // 处理完请求，返回内容
        logger.info("RESPONSE : " + ret);
        logger.info("SPEND TIME : " + (System.currentTimeMillis() - startTime.get()));
    }
}  