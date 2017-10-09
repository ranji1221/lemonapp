package org.ranji.lemon.persist.oauth2;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.ranji.lemon.model.oauth2.Client;
import org.ranji.lemon.persist.oauth2.prototype.IClientDao;
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
 * Authority模块中的SystemLogDao测试类
 * @author LiJianBo
 * @date 2017-9-21
 * @since JDK1.7
 * @version 1.0
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:config/spring-persist.xml")
public class ClientDaoTest {

	@Autowired
	private IClientDao clientDao;
	

	@Before
	public void init(){}
	
	
	//增加client方法
	@Test
	public void testSaveClient(){
		Client client = new Client();
		client.setClientName("12");
		client.setClientId("211");
		clientDao.save(client);
	}
	@Test
	public void testFindByClientId(){	
		Client client = clientDao.findByClientId("211");
		System.out.println(client.getClientName());
	}
	

}
