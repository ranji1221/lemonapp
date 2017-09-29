package org.ranji.lemon.controller.backend.authority;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.ranji.lemon.annotation.SystemControllerLog;
import org.ranji.lemon.model.authority.Role;
import org.ranji.lemon.service.authority.prototype.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
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
 * 角色控制器类
 * @author FengJie
 * @date 2017-9-29
 * @since JDK1.7
 * @version 1.0
 */

@Controller
@RequestMapping(value = "/backend/authority/role")
public class RoleController {
	
	@Autowired
	private IRoleService roleService;
	
	//@SystemControllerPermission("role:list")
	@RequestMapping(value = "/listrole")
	@SystemControllerLog(description="权限管理-角色列表")
	public String listRole(HttpSession session) {
		List <Role> roleList = roleService.findAll();
		session.setAttribute("roleList", roleList);
		for(Role r:roleList){
			System.out.println(r.getRoleName());
		}
		return "backend/authority/role/rolelist";
	}
	
	//@SystemControllerPermission("role:add")
	@RequestMapping(value = "/addrole")
	@SystemControllerLog(description="权限管理-添加角色")
	public String addRole() {
		return "backend/authority/role/add";
	}
	
	//@SystemControllerPermission("role:bulkadd")
	@RequestMapping(value = "/bulkaddrole")
	@SystemControllerLog(description="权限管理-批量添加角色")
	public String bulkAddRoles() {
		return "backend/authority/role/bulkaddroles";
	}
	
}
