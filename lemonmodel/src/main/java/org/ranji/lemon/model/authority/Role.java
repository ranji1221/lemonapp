package org.ranji.lemon.model.authority;

import java.io.Serializable;

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
 * Authority模块中的Role角色类
 * @author LiJianBo
 * @date 2017-9-13
 * @since JDK1.7
 * @version 1.0
 */
public class Role implements Serializable{

	private static final long serialVersionUID = -2561045793807899015L;
	private int id;
	private String roleName; // 角色名称
	private int roleExtendPID; // 角色的父ID
	private int roleRelyID; //  角色依赖ID
	private int roleMaxNum; // 最大限制用户数
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getRoleName() {
		return roleName;
	}
	
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
	public int getRoleExtendPID() {
		return roleExtendPID;
	}
	
	public void setRoleExtendPID(int roleExtendPID) {
		this.roleExtendPID = roleExtendPID;
	}
	
	public int getRoleRelyID() {
		return roleRelyID;
	}
	
	public void setRoleRelyID(int roleRelyID) {
		this.roleRelyID = roleRelyID;
	}
	
	public int getRoleMaxNum() {
		return roleMaxNum;
	}
	
	public void setRoleMaxNum(int roleMaxNum) {
		this.roleMaxNum = roleMaxNum;
	}
	
	public void test11(){}
	
	public void test(){
		System.out.println("测试测试");
	}
}
