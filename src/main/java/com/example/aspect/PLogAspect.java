package com.example.aspect;

import com.example.domain.PLog;
import com.example.service.PLogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.UUID;

@Component
@Aspect
public class PLogAspect {

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private PLogService pLogService;

    private Date visitTime;

    @Before("execution(* com.example.controller.*.*(..))")
    public void doBefore(JoinPoint joinPoint) {
        visitTime = new Date();
    }

    @After("execution(* com.example.controller.*.*(..))")
    public void doAfter(JoinPoint joinPoint) throws NoSuchMethodException {

        PLog pLog = new PLog();
        pLog.setId(UUID.randomUUID().toString());
        pLog.setVisitTime(visitTime);

        // 执行时长
        long executionTime = new Date().getTime() - visitTime.getTime();
        pLog.setExecutionTime(executionTime);

        // 获取 username
        SecurityContext securityContext = SecurityContextHolder.getContext();
        User user = (User) securityContext.getAuthentication().getPrincipal();
        String username = user.getUsername();
        pLog.setUsername(username);

        // 获取 ip
        String ip = request.getRemoteAddr();
        pLog.setIp(ip);

        // 获取 url
        /*StringBuilder urlBuilder = new StringBuilder();
        Class<?> clazz = joinPoint.getTarget().getClass();
        String methodName = joinPoint.getSignature().getName();
        Object[] args = joinPoint.getArgs();


        // 获取正在执行的方法对象
        Method method = null;
        if (args == null || args.length == 0) {
            method = clazz.getMethod(methodName);
        } else {
            Class[] parameterTypes = new Class[args.length];
            for (int i = 0; i < args.length; i++) {
                parameterTypes[i] = args[i].getClass();
            }
            method = clazz.getMethod(methodName, parameterTypes);
        }

        // 获取类上 RequestMapping 注解的值
        RequestMapping clazzAnnotation = clazz.getAnnotation(RequestMapping.class);
        if (clazzAnnotation != null) {
            String[] value = clazzAnnotation.value();
            if (value.length != 0) {
                urlBuilder.append(value[0]);
            }
        }
        // 获取方法上 RequestMapping 注解的值
        RequestMapping methodAnnotation = method.getAnnotation(RequestMapping.class);
        if (methodAnnotation != null) {
            String[] value = methodAnnotation.value();
            if (value.length != 0) {
                urlBuilder.append(value[0]);
            }
        }*/

        // 获取 url
        Class<?> clazz = joinPoint.getTarget().getClass();
        pLog.setUrl(request.getRequestURI());

        // 获取方法名
        String methodName = joinPoint.getSignature().getName();
        pLog.setMethod(clazz.getName() + "." + methodName);
        pLogService.insertPLog(pLog);
    }
}
