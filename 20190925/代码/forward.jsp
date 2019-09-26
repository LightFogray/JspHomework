<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>随机数</title>
</head>
<body>
<%
	float f = (float)Math.random();
%>
<%
	if(f > 0.5){
%>
		<jsp:forward page="welcome.jsp">
			<jsp:param name="f" value="<%= f %>" />
		</jsp:forward>
<%
	}else{
%>
		<jsp:forward page="sorry.jsp">
			<jsp:param name="f" value="<%= f %>" />
		</jsp:forward>
<%
	}
%>

</body>
</html>
