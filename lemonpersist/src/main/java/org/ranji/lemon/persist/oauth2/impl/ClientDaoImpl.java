package org.ranji.lemon.persist.oauth2.impl;

import org.ranji.lemon.model.oauth2.Client;
import org.ranji.lemon.persist.common.impl.GenericDaoImpl;
import org.ranji.lemon.persist.oauth2.prototype.IClientDao;
import org.springframework.stereotype.Repository;

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
 * Oauth2认证体系的客户端Dao实现类
 * @author RanJi
 * @date 2017-9-21
 * @since JDK1.7
 * @version 1.0
 */
@Repository
public class ClientDaoImpl extends GenericDaoImpl<Client, Integer> implements IClientDao{

	@Override
	public Client findByClientId(String clientId) {
		return super.sqlSessionTemplate.selectOne(typeNameSpace + ".findByClientId", clientId);
	}

	@Override
	public Client findByClientSecret(String clientSecret) {
		return super.sqlSessionTemplate.selectOne(typeNameSpace + ".findByClientSecret", clientSecret);
	}

}
