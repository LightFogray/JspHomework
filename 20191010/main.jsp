<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>主界面</title>
</head>
<body>
<%
	Object username = session.getAttribute("username");
	
	Object number = application.getAttribute("count");
	int num = 0;
	if(number == null)
	{
		application.setAttribute("count",1);
	}else{
		num = (Integer)number;
		num++;
		application.setAttribute("count",num);
	}
	out.print((String)username + ",欢迎登录,您是第" + num + "位访客");
%>

</body>
</html>