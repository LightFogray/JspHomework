<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String filename = "ok.txt";
%>
<jsp:include page="readFile.jsp">
	<jsp:param value="<%= filename %>" name="filename"/>
</jsp:include>
</body>
</html>