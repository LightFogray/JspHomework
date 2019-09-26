<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录检验</title>
</head>
<body>
<%
	String username = request.getParameter("user");
	String password = request.getParameter("password");
	if(username.equals("qwh")){
		if(password.equals("123456")){
			%>
			<script>
				alert("登录成功！");
				window.location = "main.jsp";
			</script>
			<%
		}else{
			%>
			<script>
				alert("密码错误，登录失败！");
				window.location = "login.jsp";
			</script>
			<%
		}
	}else{
		%>
		<script>alert("用户名错误，登录失败！");window.location = "login.jsp";</script>
		<%
	}
%>
</body>
</html>