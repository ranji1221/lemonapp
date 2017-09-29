<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta charset="utf-8"/>
		<title>Process Test-RanJi</title>
		
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/test/easyui/themes/gray/easyui.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/test/easyui/themes/icon.css">
		
		<script src="${pageContext.request.contextPath}/js/test/jquery-1.8.3.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/test/easyui/jquery.easyui.min.js"></script>	
		
		
	</head>
	<body class="easyui-layout">
		<div data-options="region:'north',height:38"></div>
		<div data-options="region:'west',width:150"  title="Navigation">
			<div class="easyui-accordion" fit="true" border="false">
				<div id="process" title="Launch Process" selected="true" iconCls="" class="">
					<a href="##" class="easyui-linkbutton" plain="true" iconCls="">Holidays Process</a><br>
					<a href="##" class="easyui-linkbutton" plain="true" iconCls="">Borrowing process</a><br>
				</div>
				<div id="todotasks" title="Todo Tasks" iconCls="" selected="false" class="">
					<a href="#" class="easyui-linkbutton" plain="true" iconCls="">Holidays Request</a><br>
					<a href="#" class="easyui-linkbutton" plain="true" iconCls="">Borrowing Request</a><br>
					<a href="#" class="easyui-linkbutton" plain="true" iconCls="">Service Task</a><br>
					<a href="#" class="easyui-linkbutton" plain="true" iconCls="">Script Task</a><br>
					<a href="#" class="easyui-linkbutton" plain="true" iconCls="">Mail Task</a><br>
					<a href="#" class="easyui-linkbutton" plain="true" iconCls="">Receive Task</a><br>
					<a href="#" class="easyui-linkbutton" plain="true" iconCls="">Business Rule Task</a><br>
					<a href="#" class="easyui-linkbutton" plain="true" iconCls="">SubProcess</a><br>
					<a href="#" class="easyui-linkbutton" plain="true" iconCls="">CallActivity</a><br>
				</div>
				<div id="finishedtasks" title="Finished Tasks" iconCls="" class="">
					<a href="##" class="easyui-linkbutton" plain="true" iconCls="parallel-gateway-icon">ParallelGateway</a><br>
					<a href="##" class="easyui-linkbutton" plain="true" iconCls="exclusive-gateway-icon">ExclusiveGateway</a><br>
				</div>
			</div>
		</div>
		<div data-options="region:'center'" title="WorkSpace">
			
		</div>
	</body>
</html>