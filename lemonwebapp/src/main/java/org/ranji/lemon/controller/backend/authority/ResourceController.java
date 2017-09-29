package org.ranji.lemon.controller.backend.authority;

import org.ranji.lemon.annotation.SystemControllerLog;
import org.ranji.lemon.annotation.SystemControllerPermission;
import org.ranji.lemon.service.authority.prototype.IResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
 * 资源控制器类
 * @author yaoyao
 * @date 2017-9-29
 * @since JDK1.7
 * @version 1.0
 */

@Controller
@RequestMapping(value="/backend/authority/resource")
public class ResourceController {
	@Autowired
	private IResourceService resourceService;
	
//	@SystemControllerPermission("resource:list")
	@RequestMapping(value = "/listresource")
	@SystemControllerLog(description="权限管理-资源列表")
	public String listResource() {
		return "backend/authority/resources/resourcelist";
	}

//	@SystemControllerPermission("resource:add")
	@RequestMapping(value = "/addresources")
	@SystemControllerLog(description="权限管理-添加资源")
	public String addResources() {
		return "backend/authority/resources/add";
	}
	
//	@SystemControllerPermission("resource:looksource")
	@RequestMapping(value = "/lookresource/{request_param}")
	@SystemControllerLog(description="权限管理-查看资源")
	public String lookSource(@PathVariable String request_param) {
		if("modal".equals(request_param)){
			return "backend/authority/resources/lookSourceModal";
		}else if("max".equals(request_param)){
			return "backend/authority/resources/look";
		}
		return null;
	}
//	@SystemControllerPermission("resource:looksource")
	@RequestMapping(value = "/editresource/{request_param}")
	@SystemControllerLog(description="权限管理-查看资源")
	public String editSource(@PathVariable String request_param) {
		if("modal".equals(request_param)){
			return "backend/authority/resources/editSourceModal";
		}else if("max".equals(request_param)){
			return "backend/authority/resources/edit";
		}
		return null;
	}
}
