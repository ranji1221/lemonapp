<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Exception Page</title>
	</head>
	<body>
		<% Exception e = (Exception)request.getAttribute("ex"); %>
		<pre><%= e.getClass().getSimpleName()%></pre>
		<hr>
		<pre><% e.printStackTrace(new java.io.PrintWriter(out)); %></pre>
	</body>   
</html>

