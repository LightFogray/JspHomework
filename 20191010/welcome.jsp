<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html><body>
<font Size=18>
<p>欢迎来到本页面，请输入您的姓名
<form action="welcome.jsp" method="post">
<input type="text"name="name">
<input TYPE="submit" value="送出" name=submit>
</form>
<%
request.setCharacterEncoding("UTF-8");
String name=request.getParameter("name");
if(name==null)
name="";
else{
	session.setAttribute("customerName",name);
}
%>
<% if(name.length()>0)
{
%><p>点击超链接，连接到book.jsp的页面，去选择书籍。<p>
<a href="chooseBook.jsp">欢迎去选择书籍！</a>
<%}
%>
</font>
</body></html>