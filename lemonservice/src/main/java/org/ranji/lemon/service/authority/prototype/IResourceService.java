package org.ranji.lemon.service.authority.prototype;

import java.util.List;

import org.ranji.lemon.model.authority.Resource;
import org.ranji.lemon.model.authority.User;
import org.ranji.lemon.service.common.prototype.IGenericService;

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
 * Authority模块中的IUserService接口类
 * @author FengJie
 * @date 2017-9-15
 * @since JDK1.7
 * @version 1.0
 */
public interface IResourceService extends IGenericService<Resource, Integer> {

	// 用户操作方法

	/**
	 * 存储资源-操作的对应
	 * @param resourceId 资源id
	 * @param operationId 操作id
	 */
	public void saveResourceOperation(int resourceId, int operationId);

	/**
	 * 删除用资源-操作的对应
	 * @param resourceId 资源id
	 * @param operationId 操作id
	 */
	public void deleteResourceOperation(int resourceId, int operationId);
	
	/**
	 * 删除某资源的全部用户-角色的对应
	 * @param resourceId 资源id
	 */
	public void deleteROsByResourceId(int resourceId);

	/**
	 * 根据资源id查询全部的资源-操作对应
	 * @param resourceId 资源id
	 * @return 操作id集合
	 */
	public List<Integer> findROsByResourceId(int resourceId);

}
