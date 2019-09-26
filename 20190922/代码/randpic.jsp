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
	String src = ""; 
	int i = (int)(Math.floor(Math.random()*10));
%>
<%
	if(i%2==0){
		src = "./img/fj.jpg";
	}else{
		src = "./img/btl.jpg";
	}
%>
<img src="<%= src %>">

</body>
</html>