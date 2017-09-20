package org.ranji.lemon.persist.authority.prototype;

import java.util.List;
import org.ranji.lemon.persist.common.prototype.IGenericDao;
import org.ranji.lemon.model.authority.Resource;

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
 * IResourceDao接口类
 * @author FengJie
 * @date 2017-9-13
 * @since JDK1.7
 * @version 1.0
 */
public interface IResourceDao extends IGenericDao<Resource, Integer> {

	/**
	 * 存储资源-操作的对应
	 * @param resourceId 资源id
	 * @param OperationId 操作id
	 */
	public void saveResourceAndOperation(int resourceId, int OperationId);

	/**
	 * 删除资源-操作对应
	 * @param resourceId 资源id
	 * @param operationId 操作id
	 */
	public void deleteResourceAndOperation(int resourceId,int operationId);

	/**
	 * 删除资源（及对应的全部操作）
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
