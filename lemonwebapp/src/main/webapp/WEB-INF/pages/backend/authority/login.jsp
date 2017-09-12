<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head></head>
	<body>
		<center>
		<h3>后台登录</h3>
		<hr color="red">
		<form action="${pageContext.request.contextPath}/backend/login" method="post">
				<table>
					<tr>
						<td>用户名</td>
						<td><input type="text" name="userName"></td>
					</tr>
					<tr>
						<td>密&nbsp;&nbsp;码</td>
						<td><input type="password" name="userPass"></td>
					</tr>
					<tr align="center">
						<td colspan="2"><input type="submit" value="submit"></td>
					</tr>
				</table>
			</form>
		</center>
	</body>
</html>