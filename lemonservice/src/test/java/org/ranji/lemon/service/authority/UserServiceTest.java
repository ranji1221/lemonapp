package org.ranji.lemon.service.authority;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.ranji.lemon.model.authority.Role;
import org.ranji.lemon.model.authority.User;
import org.ranji.lemon.pagination.PagerModel;
import org.ranji.lemon.service.authority.prototype.IUserService;
import org.ranji.lemon.system.SystemContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

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
 * Authority模块中的UserService测试类
 * @author RanJi
 * @date 2013-10-1
 * @since JDK1.7
 * @version 1.0
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-persist.xml","classpath:spring-service.xml"})
public class UserServiceTest {
	@Autowired
	private IUserService userService;
	
	
	//查询所有用户
		@Test
		public void testFindAllUser(){
			Map<String,Object> params = new HashMap<String,Object>();
			params.put("userName", "zhangsan");
			List<User> us = userService.findAll(params);
			for(User u : us){
				System.out.println(u.getUserName());
			}
		}
	
	@Test
	public void testAddUser(){
		User u = new User();
		u.setUserName("lisi");
		u.setUserPass("123456");
		userService.save(u);
		System.out.println(u.getId());
		
		
	}
	
	@Test
	public void testFindUser(){
		Map<String,Object> params = new HashMap<String,Object>();
		params.put("userName", "zhangsan");
		params.put("enabled", -1);
		List<User> users = userService.findAll(params);
		System.out.println(users.size());
		
		users = userService.findAll();
		for (User user : users) {
			System.out.println(user);
		}
	}
	//根据用户id查找关联角色测试
	@Test
	public void testFindRoleByUserId(){
		List<Role> role = userService.findRoleByUserId(1);
		for(Role r: role){
			System.out.println(r.getRoleName());
		}
	}
	
	@Test   //-- 分页查找
	public void testFindPaginatedUser(){
		//-- 1. 不带查询条件的分页查询
		PagerModel<User> pm = userService.findPaginated(null);
		System.out.println(pm.getTotal());
		//--2. 设置分页的偏移量和大小,不带查询条件
		SystemContext.setOffset(1);
		SystemContext.setPageSize(3);
		pm = userService.findPaginated(null);
		System.out.println(pm.getTotal());
		for (User user : pm.getData()) {
			System.out.println(user);
		}
		//-- 3. 设置分页的偏移量和大小，并带查询条件
		SystemContext.setOffset(0);
		SystemContext.setPageSize(3);
		Map<String,Object> params = new HashMap<String,Object>();
		params.put("userName", "zhangsan");
		params.put("enabled", -1);
		pm = userService.findPaginated(params);
		System.out.println(pm.getTotal());
		for (User user : pm.getData()) {
			System.out.println(user);
		}
	}
}