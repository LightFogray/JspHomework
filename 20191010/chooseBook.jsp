<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<body><font size=20></font>点击超链接，连接到welcome.jsp的页面，去修改姓名。
<A HREF="welcome.jsp">欢迎去welcome.jsp！</A>
<P>请选择您要购买的书籍：
<FORM action="chooseBook.jsp" method="post">
<input type="checkbox"name="choice"value="Java教程">Java教程
<input type="checkbox"name="choice"value="数据原理">数据库原理
<input type="checkbox"name="choice"value="燥作系统">操作系统
<input type="checkbox"name="choice"value="C语言教程">C语言教程
</BR>
<INPUT TYPE="submit"value="提交"name="submit">
</FORM>
<%
request.setCharacterEncoding("UTF-8");
String bookName[]=request.getParameterValues("choice");
if(bookName!=null)
{
	for(int k=0;k<bookName.length;k++){
		session.setAttribute(bookName[k],bookName[k]);
	}
	
}
%>
去结帐：<A HREF="pay.jsp">欢迎去pay.jsp页面进行结账！</A></font>
</body></html>