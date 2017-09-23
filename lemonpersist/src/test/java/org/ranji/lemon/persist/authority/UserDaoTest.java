package org.ranji.lemon.persist.authority;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.ranji.lemon.model.authority.Role;
import org.ranji.lemon.model.authority.User;
import org.ranji.lemon.persist.authority.prototype.IUserDao;
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
 * Authority模块中的UserDao测试类
 * @author RanJi
 * @date 2017-9-5
 * @since JDK1.7
 * @version 1.0
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring-persist.xml")
public class UserDaoTest {
	
	@Autowired
	private IUserDao userDao;
	
	@Before
	public void init(){}
	
	//存储用户测试方法
	@Test
	public void testAddUser(){
		for(int i = 1; i < 10; i++){
			User u = new User();
			u.setUserName("zhangsan" + i);
			u.setUserPass("123456");
			
			userDao.save(u);
		}
		
	}
	

	//存储用户与角色对应 
	@Test
	public void testSaveUserAndRoleRelation(){
		for(int i = 2; i < 10; i++){
			userDao.saveUserAndRoleRelation(1, i);
		}
	}
	
	//删除用户测试方法
	@Test
	public void testDeleteRole(){
		userDao.delete(1);
	}
	
	//删除角色与操作的对应
	@Test
	public void testDeleteUserAndRoleRelation(){
		userDao.deleteUserAndRoleRelation(1, 2);
	}
	
	//根据角色id删除角色与操作的对应
	@Test
	public void testDeleteUserAndRolesRelationByUserId(){
		userDao.deleteUserAndRolesRelationByUserId(1);
	}
	//查询所有用户
	@Test
	public void testFindAllUser(){
		Map<String,Object> params = new HashMap<String,Object>();
		params.put("userName", "lisi");
		List<User> us = userDao.findAll(params);
		for(User u : us){
			System.out.println(u.getUserName());
		}
	}
	//查询某个角色测试方法
	@Test
	public void testFindRole(){
		User user = userDao.find(2);
		System.out.println(user.getUserName());
	}
	//按用户名查找用户
	@Test
	public void testFindUserByUserName(){
		User user = userDao.findUserByUserName("zhangsan");
		System.out.println(user.getUserName());
	}
	//按用户id查找关联角色测试
	@Test
	public void testFindRolesByUserId(){
		List<Role> role = userDao.findRoleByUserId(1);
		for(Role r: role){
			System.out.println(r.getRoleName());
		}
	}
	
	//查询全部角色测试方法
	@Test
	public void testFindAllRole(){
		List<User> users = userDao.findAll();
		for(User us: users){
			System.out.println(us.getUserName());
		}
	}
	
	//根据角色id查询角色和操作的对应
	@Test
	public void testFindUserRolesRelationByUserId(){
		List<Integer> userIds = userDao.findUserRolesRelationByUserId(1);
		for(Integer us: userIds){
			System.out.println(us);
		}
	}
	//更新角色测试方法
	@Test
	public void testUpdateRole(){
		User us = new User();
		us.setId(2);
		us.setUserName("lisi");
		us.setUserPass("23456");
		userDao.update(us);
	}
	
}