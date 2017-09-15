<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %> 

<ul>
	<li> <a href="${pageContext.request.contextPath}/backend/authority/user/adduser">添加用户</a></li>
	<shiro:hasPermission name="user:delete">  
	<li> <a href="${pageContext.request.contextPath}/backend/authority/user/deleteuser">删除用户</a></li>
	</shiro:hasPermission>   
</ul>

