package org.ranji.lemon.service.flowable.prototype;

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
}
