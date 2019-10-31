<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<jsp:useBean id="myBean" class="my.Simplecal" scope="session"/>
<%
	String op1 = "";
	String op2 = "";
	String op = "";
	String res="";
	op1=request.getParameter("op1");
	op2=request.getParameter("op2");
	op=request.getParameter("op");
	
	if(op1!=null&&op2!=null&&op!=null)
	res=myBean.getResult(op1,op2,op);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
</head>
<body>
<form action="compute.jsp" method="post" name="myform">
	<input type="text" name="op1" />
	<select name="op">
		<option value="+" selected="selected">+</option>
		<option value="-" >-</option>
		<option value="*" >*</option>
		<option value="/" >/</option>
	</select>
	<input type="text" name="op2" />
	<input type="submit" value="计算"/>
	<br>
	<% out.print(op1+op+op2+"="+res); %>
</form>

</body>
</html>