package org.ranji.lemon.webservice;

import java.io.IOException;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

import org.ranji.lemon.model.authority.User;
import org.ranji.lemon.service.authority.prototype.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

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
 * 举例用的user webservice接口
 * 正式使用的时候包名应分模块来放置资源接口类,例如：org.ranji.lemon.authority;  org.ranji.lemon.todo; org.ranji.lemon.form;等等分类资源接口管理
 * @author RanJi
 * @date 2017-9-23
 * @since JDK1.7
 * @version 1.0
 */

@Component
@Path("/user")
public class UserResource {
	
	@Autowired
	private IUserService userService;
	
	@GET
	@Produces("application/json")
	@Path("/{id}")
	public String getUser(@PathParam("id") int id){
		User u = userService.find(id);
		
		ObjectMapper om = new ObjectMapper();
		String userJsonData = "";
		
		try {
			//-- 加入writeWithDefaultPrettyPrinter()方法仅仅是为了更加的格式化
			userJsonData = om.writerWithDefaultPrettyPrinter().writeValueAsString(u);
		} catch (JsonGenerationException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return userJsonData;
	}
}
