package org.ranji.lemon.controller.oauth;

import javax.servlet.http.HttpServletRequest;

import org.apache.oltu.oauth2.as.request.OAuthAuthzRequest;
import org.apache.oltu.oauth2.common.exception.OAuthProblemException;
import org.apache.oltu.oauth2.common.exception.OAuthSystemException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
 * OAuth2开放平台授权控器
 * OAuth2的角色：
 * (1)资源拥有者（resource owner）：能授权访问受保护资源的一个实体，可以是一个人，那我们称之为最终用户；如新浪微博用户zhangsan
 * (2)资源服务器（resource server）：存储受保护资源，客户端通过access token请求资源，资源服务器响应受保护资源给客户端；
 * 	      存储着用户zhangsan的微博等信息。
 * (3)授权服务器（authorization server）：成功验证资源拥有者并获取授权之后，授权服务器颁发授权令牌（Access Token）给客户端。
 * (4)客户端（client）：如新浪微博客户端weico、微格等第三方应用，也可以是它自己的官方应用；
 *    其本身不存储资源，而是资源拥有者授权通过后，使用它的授权（授权令牌）访问受保护资源，然后客户端把相应的数据展示出来/提交到服务器。
 *    “客户端”术语不代表任何特定实现（如应用运行在一台服务器、桌面、手机或其他设备）。 
 * OAuth2的授权流程：
 * (1)客户端从资源拥有者那请求授权。授权请求可以直接发给资源拥有者，或间接的通过授权服务器这种中介，后者更可取。
 * (2)客户端收到一个授权许可，代表资源服务器提供的授权。
 * (3)客户端使用它自己的私有证书及授权许可到授权服务器验证。
 * (4)如果验证成功，则下发一个访问令牌。
 * (5)客户端使用访问令牌向资源服务器请求受保护资源。
 * (6)资源服务器会验证访问令牌的有效性，如果成功则下发受保护资源。
 * @author RanJi
 * @date 2017-9-14
 * @since JDK1.7
 * @version 1.0
 */

@Controller
public class OltuAuthorizeController {
	
	@RequestMapping(value="/oltuauthorize")
	public ModelAndView oltuAuthorize(HttpServletRequest request)throws OAuthSystemException, OAuthProblemException{
		System.out.println("access sucessful");
		ModelAndView mv = new ModelAndView();
		
		//-- 1. 构建OAuth2请求
		OAuthAuthzRequest oauthRequest = new OAuthAuthzRequest(request);
		return mv;
	}
	@RequestMapping(value ="/hello")
	@ResponseBody
	public String hello(){
		
		return "hello";
	}
}
