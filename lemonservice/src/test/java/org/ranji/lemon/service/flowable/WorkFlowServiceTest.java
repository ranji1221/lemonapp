package org.ranji.lemon.service.flowable;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.flowable.engine.repository.ProcessDefinition;
import org.flowable.engine.runtime.ProcessInstance;
import org.flowable.engine.task.Task;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.ranji.lemon.service.flowable.prototype.IWorkFlowService;
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
@ContextConfiguration(locations={"classpath:spring-persist.xml","classpath:spring-service.xml","classpath:spring-flowable.xml"})
public class WorkFlowServiceTest {
	@Autowired
	private IWorkFlowService wfService;
	
	@Test
	public void testDeployProcess(){
		wfService.deployProcess("holiday-request.bpmn20.xml");
	}
	
	/**
	 * 测试根据processDefintion.xml中的ID属性的值获取最新的那个流程定义版本
	 */
	@Test
	public void testFindProcessDefinition(){
		ProcessDefinition pd = wfService.getProcessDefinition("holidayRequest");
		System.out.println("===============["+pd.getKey()+"  "+pd.getId()+"  "+pd.getName()+"]===============");
		
	}
	
	/**
	 * 测试根据processDefintion.xml中的ID属性的值获取所有的流程定义版本 (倒序排列)
	 */
	@Test
	public void testFindProcessDefinitions(){
		ProcessDefinition opd = wfService.getProcessDefinition("holidayRequest");
		System.out.println("===============["+opd.getKey()+"  "+opd.getId()+"  "+opd.getName()+"]===============");
		List<ProcessDefinition> pds = wfService.getProcessDefinitions("holidayRequest");
		for (ProcessDefinition pd : pds) {
			System.out.println("===============["+pd.getKey()+"  "+pd.getId()+"  "+pd.getName()+"]===============");
		}
	}
	
	@Test
	public void testStartProcessInstance(){
		Map<String,Object> variables = new HashMap<String,Object>();
		variables.put("employee", "zhangsan");
		variables.put("holidays", 7);
		variables.put("reason", "family time");
		ProcessInstance pi = wfService.startProcessInstance("holidayRequest", variables);
		System.out.println(pi.getProcessDefinitionId());
	}
	
	@Test
	public void testFindTodos(){
		List<Task> tasks = wfService.findTodos("managers");
		System.out.println("You have "+tasks.size()+" tasks:");
		int index = 1;
		for (Task task : tasks) {
			System.out.println(index+". 流程名称：["+task.getProcessDefinitionId().split(":")[0]+"]  任务名称：["+task.getName()+"]");
			index++;
		}
		
	}
}
