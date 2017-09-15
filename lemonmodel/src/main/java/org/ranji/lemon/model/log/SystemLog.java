package org.ranji.lemon.model.log;

import java.io.Serializable;
import java.util.Date;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import com.fasterxml.jackson.annotation.JsonFormat;

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
 * 系统日志实体类--记录用户操作行为
 * @author RanJi
 * @date 2017-9-14
 * @since JDK1.7
 * @version 1.0
 */
public class SystemLog implements Serializable{
	private static final long serialVersionUID = -8290370426605089254L;
	
	private int id;
	private String logType;				//-- 日志类型
	private String logTitle;				//-- 日志标题
	private String remoteAddr;		//-- 请求地址
	private String requestUri;			//-- 请求URI
	private String method;				//-- 请求方式
	private String params;				//-- 提交参数
	private String exception;			//-- 异常
	
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	private Date operateDate;			//-- 开始时间
	private String timeout;				//-- 耗时
	private int userId;				//-- 用户ID
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLogType() {
		return StringUtils.isBlank(logType) ? logType : logType.trim();
	}
	public void setLogType(String logType) {
		this.logType = logType;
	}
	//-- 做去除字符串两边空格的处理，以下的属性做类似的处理
	public String getLogTitle() {
		return StringUtils.isBlank(logTitle) ? logTitle : logTitle.trim();
	}
	public void setLogTitle(String logTitle) {
		this.logTitle = logTitle;
	}
	public String getRemoteAddr() {
		return StringUtils.isBlank(remoteAddr) ? remoteAddr : remoteAddr.trim();
	}
	public void setRemoteAddr(String remoteAddr) {
		this.remoteAddr = remoteAddr;
	}
	public String getRequestUri() {
		return StringUtils.isBlank(requestUri) ?requestUri : requestUri.trim();
	}
	public void setRequestUri(String requestUri) {
		this.requestUri = requestUri;
	}
	public String getMethod() {
		return StringUtils.isBlank(method) ? method : method.trim();
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public String getParams() {
		return StringUtils.isBlank(params) ?params : params.trim();
	}
	public void setParams(String params) {
		this.params = params;
	}
	/**
	 * 设置请求参数 (待重写)
	 * @param paramMap
	 */
	public void setMapToParams(Map<String,String[]> paramMap){
		if(paramMap == null) return;
		StringBuilder params = new StringBuilder();
		for(Map.Entry<String,String[]> param : ((Map<String, String[]>)paramMap).entrySet()){
			params.append(( "".equals(params.toString() )  ?  "" : "&") + param.getKey() + "=");
			String paramValue = (param.getValue() != null && param.getValue().length>0 ? param.getValue()[0] : "");
			params.append( StringUtils.abbreviate(StringUtils.endsWithIgnoreCase(param.getKey(), "password" ) ? "" : paramValue, 100));
		}
		this.params = params.toString();
	}
	
	public String getException() {
		return StringUtils.isBlank(exception) ? exception : exception.trim();
	}
	public void setException(String exception) {
		this.exception = exception;
	}
	public Date getOperateDate() {
		return operateDate;
	}
	public void setOperateDate(Date operateDate) {
		this.operateDate = operateDate;
	}
	public String getTimeout() {
		return timeout;
	}
	public void setTimeout(String timeout) {
		this.timeout = timeout;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}

}
