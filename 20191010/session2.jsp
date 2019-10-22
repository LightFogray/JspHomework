<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html><body>
购物车中内容为：
<hr>
<%
	ArrayList books =(ArrayList)session.getAttribute("books");
	for(int i=0;i<books.size();i++){
		String book=(String)books.get(i);out.println(book +"<br>");
	}
%>
</body>
</html>