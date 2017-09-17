package org.ranji.lemon.common.aop;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.subject.Subject;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.ranji.lemon.annotation.SystemControllerPermission;
import org.ranji.lemon.model.authority.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.ServletWebRequest;
import org.springframework.web.servlet.ModelAndView;

/**
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the"License"); 
 * you may not use this file except in compliance with the License.  
 * You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
 * See the License for the specific language governing permissions and limitations under the License.
 * Copyright [2017] [RanJi] [Email-jiran1221@163.com]
 * 
 * 系统权限切面
 * @author RanJi
 * @date 2017-9-17
 * @since JDK1.7
 * @version 1.0
 */

@Component
@Aspect
public class SystemPermissionAspect {
	
	@Autowired(required=false)
    private HttpServletRequest request;
	
	
	/**
     * SpringMVC中的Controller层的切点，注解拦截
     */
    @Pointcut("@annotation(org.ranji.lemon.annotation.SystemControllerPermission)")
    public void controllerAspect(){}
    
    /**
     * 前置通知 用于拦截Controller层是否有某种权限操作
     * @param joinPoint 切点
     * @throws InterruptedException 
     * @throws IOException 
     */
    /*@Before("controllerAspect()")
    public void doBefore(JoinPoint joinPoint) throws InterruptedException, IOException{
        //读取session中的用户 
        HttpSession session = request.getSession();       
        
        User user = (User) session.getAttribute("userInfo");   
        
        if(user != null){
        	String permissionInfo = getControllerMethodPemissionInfo(joinPoint);
        	Subject currentUser = SecurityUtils.getSubject();
        	try{
        		currentUser.checkPermission(permissionInfo);
        	}catch (Exception e) {
				System.out.println("没有"+permissionInfo+"权限");
				throw new UnauthorizedException();
			}
        }
    }*/
    
   
    @Around("controllerAspect()")
    public Object doAround(ProceedingJoinPoint pjp) throws Throwable{
        // 读取session中的用户 
        HttpSession session = request.getSession();       
        User user = (User) session.getAttribute("userInfo");
        
        //-- 获取@SystemControllerPermission标注中的权限信息
        if(user != null){  //-- 其实实际应用中，肯定是先认证了用户的，而不可能没有用户存在，所以这个地方仅仅是代码健壮性的一种考量。
            String permissionInfo = getControllerMethodPemissionInfo(pjp);
        	Subject currentUser = SecurityUtils.getSubject();
        	try{
        		currentUser.checkPermission(permissionInfo);
        	}catch (Exception e) {
				System.out.println("没有"+permissionInfo+"权限");
				return "/exception/unauthorized";	//-- 这种写法相当于给MV.setViewName();  如何写成"redirect:/exception/unauthorized"相当于调用Controller
			}
        }
        return pjp.proceed();
    }
    
    
    
    /**
     * 获取SystemControllerPermission注解中的Value信息 用于Controller层注解
     * 
     * @param ProceedingJoinPoint 切点
     * @return permissionInfo
     */
    public static String getControllerMethodPemissionInfo(ProceedingJoinPoint pjp) {
        MethodSignature signature = (MethodSignature) pjp.getSignature();
        Method method = signature.getMethod();
        SystemControllerPermission controllerPermission = method
                .getAnnotation(SystemControllerPermission.class);
        return controllerPermission.value();
    }
    
}
