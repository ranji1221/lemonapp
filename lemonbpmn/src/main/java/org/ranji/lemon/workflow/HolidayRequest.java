package org.ranji.lemon.workflow;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

import org.flowable.engine.HistoryService;
import org.flowable.engine.ProcessEngine;
import org.flowable.engine.ProcessEngineConfiguration;
import org.flowable.engine.RepositoryService;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.engine.history.HistoricActivityInstance;
import org.flowable.engine.impl.cfg.StandaloneProcessEngineConfiguration;
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
 * flowable框架的休假流程示例
 * @author RanJi
 * @date 2017-9-24
 * @since JDK1.7
 * @version 1.0
 */

public class HolidayRequest {

	public static void main(String[] args) {
		//-- 1. 流程引擎配置
		ProcessEngineConfiguration cfg = new StandaloneProcessEngineConfiguration()
				.setJdbcUrl("jdbc:mysql://localhost:3306/flowable")
				.setJdbcUsername("root")
				.setJdbcPassword("123456")
				.setJdbcDriver("com.mysql.jdbc.Driver")
				.setDatabaseSchemaUpdate(ProcessEngineConfiguration.DB_SCHEMA_UPDATE_TRUE);
		
		//-- 2. 流程引擎配置建立流程引擎
		ProcessEngine processEngine = cfg.buildProcessEngine();
		
		//-- 3. 流程引擎部署流程定义
		RepositoryService repService = processEngine.getRepositoryService();
		Deployment deployment = repService.createDeployment()
				.addClasspathResource("holiday-request.bpmn20.xml")
				.deploy();
		
		//-- 4. 查询部署的流程定义 (若没有接触过工作流引擎，这里应该注意流程定义的版本)
		ProcessDefinition processDefinition = repService.createProcessDefinitionQuery()
				.deploymentId(deployment.getId())
				.singleResult();
		System.out.println("Fount Process Definition: " + processDefinition.getName());
		
		//-- 5. 模拟某个人要发个想要休假的请求(类似于休假表单的数据收集)
		//-- 模拟表单有三个字段：谁(who)，休假天数(holidays)，休假的理由(reason)
		//-- 由于没有页面，则只能通过命令行来模拟了，嘿嘿
		Scanner scanner = new Scanner(System.in); //-- 准备好键盘啦
		
		System.out.println("Who are you?");	//-- 提示信息，输入申请人的名字
		String employee = scanner.nextLine();
		
		System.out.println("How many holidays do you want to request?"); //-- 休假天数
		Integer holidays = Integer.valueOf(scanner.nextLine());
		
		System.out.println("Why do you need them?");	//-- 休假理由
		String reason = scanner.nextLine();
		
		//-- 6. 利用RuntimeService,根据流程定义和收集到的信息启动一个休假流程实例
		RuntimeService runtimeService = processEngine.getRuntimeService();
		Map<String,Object> variables = new HashMap<String,Object>();
		variables.put("employee", employee);
		variables.put("holidays", holidays);
		variables.put("reason", reason);
		ProcessInstance processInstance = 
				runtimeService.startProcessInstanceByKey("holidayRequest",variables);
		
		//-- 7. 利用TaskService, 查询manager角色的待办任务
		TaskService taskService = processEngine.getTaskService();
		List<Task> tasks = taskService.createTaskQuery().taskCandidateGroup("managers").list();
		System.out.println("You have "+tasks.size()+" tasks:");
		for(int i=0;i<tasks.size();i++)
			System.out.println((i+1)+")"+tasks.get(i).getName());
		
		//-- 8. managers查看休假申请的待办事项
		System.out.println("which task would you like to complete?");
		int taskIndex = Integer.valueOf(scanner.nextLine());
		Task todo = tasks.get(taskIndex-1); //-- 选择的待办的任务
		Map<String,Object> processVariables = taskService.getVariables(todo.getId());
		System.out.println(processVariables.get("employee") + " wants " + 
				processVariables.get("holidays") + " of holidays . Do you approve this?");
		
		//-- 9. 默认它是同意的，就不考虑不同意了，只是为了测试别那么较真儿嘛
		boolean approved = scanner.nextLine().toLowerCase().equals("y");
		variables = new HashMap<String,Object>();
		variables.put("approved", approved);
		taskService.complete(todo.getId(),variables);
		
		//-- 10. 利用HistoryService, 查询历史记录(永久保存，牛啊)
		HistoryService historyService = processEngine.getHistoryService();
		List<HistoricActivityInstance> activities =
				historyService.createHistoricActivityInstanceQuery()
				.processInstanceId(processInstance.getId())
				.finished()
				.orderByHistoricActivityInstanceEndTime().asc()
				.list();
		for(HistoricActivityInstance activity : activities)
			System.out.println(activity.getActivityId() + " took "
					+ activity.getDurationInMillis() + " milliseconds");
		
		//-- 11. 看看此流程实例是否结束了呢?
		boolean isEnd = processInstance.isEnded();
		System.out.println(isEnd ? "processinstance is end." : "processinstance isn't end.");
	}

}
