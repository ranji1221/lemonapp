package org.ranji.lemon.service.flowable.impl;

import java.util.List;
import java.util.Map;

import org.flowable.engine.RepositoryService;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.engine.repository.Deployment;
import org.flowable.engine.repository.ProcessDefinition;
import org.flowable.engine.runtime.ProcessInstance;
import org.flowable.engine.task.Task;
import org.ranji.lemon.service.flowable.prototype.IWorkFlowService;
import org.springframework.beans.factory.annotation.Autowired;
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
 * workflow业务实现类
 * @author RanJi
 * @date 2017-9-27
 * @since JDK1.7
 * @version 1.0
 */

@Service
public class WorkFlowServiceImpl implements IWorkFlowService{
	
	@Autowired
	RepositoryService repService;
	
	@Autowired
	RuntimeService rtService;
	
	@Autowired
	TaskService taskService;
	
	public TaskService getTaskService(){
		return taskService;
	}
	
	@Override
	public Deployment deployProcess(String processDefinitionXML) {
		return repService.createDeployment()
				.addClasspathResource(processDefinitionXML)
				.deploy();
	}
	
	/**
	 * 下面的两个方法在查询流程定义的时候用
	 */
	@Override
	public ProcessDefinition getProcessDefinition(String processDefinitionKey) {
		return repService.createProcessDefinitionQuery()
				.processDefinitionKey(processDefinitionKey)
				.latestVersion()
				.singleResult();
	}

	@Override
	public List<ProcessDefinition> getProcessDefinitions(String processDefinitionKey) {
		return repService.createProcessDefinitionQuery()
				.processDefinitionKey(processDefinitionKey)
				.orderByProcessDefinitionVersion()
				.desc()
				.list();
	}

	@Override
	public ProcessInstance startProcessInstance(String processDefinitionKey,
			Map<String, Object> variables) {
		return rtService.startProcessInstanceByKey(processDefinitionKey,variables);
	}

	@Override
	public List<Task> findTodos(String roleName) {
		return taskService.createTaskQuery().taskCandidateGroup(roleName).list();
	}
	/**
	 * 此方法一般用于在task中获得流程定义的信息
	 */
	@Override
	public ProcessDefinition getProcessDefinitionByID(String processDefinitionID) {
		return repService.createProcessDefinitionQuery()
				.processDefinitionId(processDefinitionID)
				.singleResult();
	}
	
	/**
	 * 根据todoTaskID查询
	 */
	@Override
	public Task findTodoTask(String todoTaskID) {
		return taskService.createTaskQuery().taskId(todoTaskID).singleResult();
	}
	
	
}
