package org.ranji.lemon.controller.backend.authority;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.ranji.lemon.annotation.SystemControllerLog;
import org.ranji.lemon.model.authority.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
 * 登录控制器类
 * @author RanJi
 * @date 2017-9-12
 * @since JDK1.7
 * @version 1.0
 */

@Controller
@RequestMapping(value="backend")
public class LoginController {
	
	/**
	 *  登录页面
	 * @return  登录页面
	 * @throws Exception 
	 */
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView loginPage(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/backend/login/login");
		return mv;
	}
	/**
	 * 登录
	 * @param user
	 * @param session
	 * @param request
	 * @return
	 * @throws Exception 
	 */
	@SystemControllerLog(description="登录系统")
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView login(User user, HttpSession session,HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView();
		Subject currentUser = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(user.getUserName(),user.getUserPass());
		try{
			currentUser.login(token);
			mv.setViewName("redirect:/index.jsp");
		} catch (AuthenticationException e){
			mv.addObject("message", "login errors");
			mv.setViewName("redirect:/backend/login");
		} 
		return mv;
	}
}







