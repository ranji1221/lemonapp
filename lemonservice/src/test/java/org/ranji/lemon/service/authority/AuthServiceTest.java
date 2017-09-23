package org.ranji.lemon.service.authority;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.ranji.lemon.model.authority.Role;
import org.ranji.lemon.model.authority.User;
import org.ranji.lemon.pagination.PagerModel;
import org.ranji.lemon.service.authority.prototype.IAuthorityService;
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
public class AuthServiceTest {
	@Autowired
	private IAuthorityService authService;
	
	
	@Test
	public void testFindRolesByUserId(){
		List<Role> role = authService.findRolesByUserId(1);
		for(Role r: role){
			System.out.println(r.getRoleName());
		}
	}
	
}