<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<body>
<%
	ArrayList books=new ArrayList();
	
	books.add("三国演义");
	books.add("西游记");
	books.add("水浒传");
	session.setAttribute("books",books);
%>
<a href="session2.jsp">查看购物车</a>
</body>
</html>