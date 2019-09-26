<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="width:715px;height:650px;margin:0 auto">
	<div style="width:100%;height:120px;overflow:hidden">
		<%@ include file = "top.jsp" %>
	</div>
	<div style="width:250px;height:400px;overflow:hidden;float:left">
		<%@ include file = "left.jsp" %>
	</div>
	<div style="width:400px;height:400px;overflow:hidden">
		<%@ include file = "main.jsp" %>
	</div>
	<div style="width:100%;height:80px;overflow:hidden;border:1px solid #000">
		<%@ include file = "end.jsp" %>
	</div>
</div>
</body>
</html>