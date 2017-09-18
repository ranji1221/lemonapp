package org.ranji.lemon.service.authority.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.ranji.lemon.model.authority.Role;
import org.ranji.lemon.persist.authority.prototype.IRoleDao;
import org.ranji.lemon.service.authority.prototype.IRoleService;
import org.ranji.lemon.service.common.impl.GenericServiceImpl;
import org.springframework.stereotype.Service;
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
 * RoleService实现类
 * @author LiJianBo
 * @date 2017-9-14
 * @since JDK1.7
 * @version 1.0
 */
@Service
public class RoleServiceImpl extends GenericServiceImpl<Role, Integer> implements IRoleService {
	@Override
	public Role findByRoleName(String roleName) {
		// TODO Auto-generated method stub
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("roleName", roleName);
		List<Role> roles = ((IRoleDao) dao).findAll(params);
		if (roles.isEmpty()) {
			return null;
		} else {
			return roles.get(0);
		}
	}

	@Override
	public void saveRoleAndOperationRelation(int roleId, int operationId) {
		((IRoleDao) dao).saveRoleAndOperationRelation(roleId, operationId);
	}

	@Override
	public void deleteRoleAndOperationRelation(int roleId, int operationId) {
		((IRoleDao) dao).deleteRoleAndOperationRelation(roleId, operationId);

	}

	@Override
	public void deleteRoleAndOperationsRelationByRoleId(int roleId) {
		((IRoleDao) dao).deleteRoleAndOperationsRelationByRoleId(roleId);

	}

	@Override
	public List<Integer> findRoleAndOperationsRelationByRoleId(int roleId) {
		return ((IRoleDao) dao).findRoleAndOperationsRelationByRoleId(roleId);
	}

}
