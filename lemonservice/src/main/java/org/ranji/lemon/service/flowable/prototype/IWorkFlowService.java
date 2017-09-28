package org.ranji.lemon.service.flowable.prototype;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.flowable.engine.repository.Deployment;
import org.flowable.engine.repository.ProcessDefinition;
import org.flowable.engine.runtime.ProcessInstance;
import org.flowable.engine.task.Task;

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
 * workflow业务接口类
 * @author RanJi
 * @date 2017-9-27
 * @since JDK1.7
 * @version 1.0
 */

public interface IWorkFlowService {
	/**
	 * 部署流程的方法
	 * @param ProcessDefinitionXML
	 * @return 流程部署对象（可能有用，所以就返回了）
	 */
	public Deployment deployProcess(String ProcessDefinitionXML);
	/**
	 * 获取流程定义(最新的那个版本)
	 * @param processDefinitionKey  流程定义Key (配置文件中的process的id属性的值)
	 * @return 流程定义
	 */
	public ProcessDefinition getProcessDefinition(String processDefinitionKey);
	/**
	 * 获取流程定义
	 * @param processDefinitionID 流程定义ID
	 * @return
	 */
	public ProcessDefinition getProcessDefinitionByID(String processDefinitionID);
	
	
	/**
	 * 获取某个流程定义的所有版本
	 * @param processDefinitionKey 流程定义Key  (配置文件中的process的id属性的值)
	 * @return 流程定义的集合
	 */
	public List<ProcessDefinition> getProcessDefinitions(String processDefinitionKey);
	/**
	 * 根据流程定义的key启动流程实例
	 * @param processDefinitionKey 流程定义Key (配置文件中的process的id属性的值)
	 * @param variables 参数变量
	 * @return
	 */
	public ProcessInstance startProcessInstance(String processDefinitionKey,Map<String,Object> variables);
	/**
	 * 查询某种角色的所有待办事项
	 * @param roleName
	 * @return
	 */
	public List<Task> findTodos(String roleName);
	
	/**
	 * 根据taskID查询任务
	 * @param todoTaskID
	 * @return
	 */
	public Task findTodoTask(String todoTaskID);
	
	
	/**
	 * 根据流程定义id查询其资源文件（xml/图片），注意response需要设置ContentType：<br>
	 * &nbsp;&nbsp;response.setContentType("application/xml");<br>
	 * &nbsp;&nbsp;response.setContentType("image/png");
	 * @param processDefinitionID 流程定义id
	 * @param type xml/img（对应xml文件/流程图片）
	 * @return 输入流，在Controller中使用IOUtils即可将其输出到response中
	 */
	public InputStream getProcessDefinitionRes(String processDefinitionID, String type);
	
	/**
	 * 根据流程实例ID查询流程中所带的变量集合
	 * @param processInstancID
	 * @return
	 */
	public Map<String,Object> findProcessInstanceVariables(String processInstancID);
	/**
	 * 根据流程实例ID和某个变量的Name查询某个变量的值
	 * @param processInstanceID
	 * @param variableName
	 * @return
	 */
	public Object findProcessInstanceVariable(String processInstanceID,String variableName);
	/**
	 * 根据任务ID获取流程实例的变量集合
	 * @param taskID
	 * @return
	 */
	public Map<String,Object> findProcessInstanceVariablesByTaskID(String taskID);
	/**
	 * 根据任务ID和变量Name获取流程实例中某个Name的值
	 * @param taskID
	 * @param variableName
	 * @return
	 */
	public Object findProcessInstanceVariableByTaskIDAndVarKey(String taskID, String variableName);
}
