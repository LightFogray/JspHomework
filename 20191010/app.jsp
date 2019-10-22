<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<title>applicationTest</title>
</head>
<body>
<%    
	Object number = application.getAttribute("count");
	int num = 0;
	if(number == null)
	{
		application.setAttribute("count",1);
	}
	else
	{
		num = (Integer)number;
		num++;
		application.setAttribute("count",num);
	}	
	out.print("当前访问本页面的次数为：" + num);	
%>
<br>
以下是application对象信息<br>
------------------------------------------------------
<br>......<br>
</body>
</html>
