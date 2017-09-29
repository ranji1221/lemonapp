<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/common.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login/login.css" />
	<script src="${pageContext.request.contextPath}/js/rem/rem.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery1.9.1/jquery1.9.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/login/login.js"></script>
	<title>管理员登录</title>
</head>
<body>
	<div class="container">
		<div class="wrap">
			<form action="${pageContext.request.contextPath}/backend/login" method="post">
				<div class="border">
					<img src="${pageContext.request.contextPath}/img/sys/phone.png" alt="">
					<input type="text" name="userName" placeholder="请输入您的账号">
				</div>
				<div class="border">
					<img src="${pageContext.request.contextPath}/img/sys/lock.png" alt="">
					<input type="password" name="userPass" placeholder="请输入您的密码">
				</div>
				<div class="border">
					<img src="${pageContext.request.contextPath}/img/sys/check.png" alt="">
					<input type="text" name="" placeholder="请输入验证码">
				</div>
				<div class="code">
					<img src="${pageContext.request.contextPath}/img/test/code.png" alt="">
				</div>
				<div class="clear"></div>
				<button type="submit">立即登录</button>
			</form>
		</div>
	</div>
</body>
</html>