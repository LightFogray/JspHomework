<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html><body>
<FONT Size=20>
�����ǽ��ʴ������������Լ�ѡ����鼮��
<%
request.setCharacterEncoding("gb2312");
String personName=(String)session.getAttribute("customerName");
out.println("<br>����������"+personName);
Enumeration enumGoods=session.getAttributeNames();
out.println("<br>���ﳵ�е���Ʒ��<br>");
while(enumGoods.hasMoreElements())
{
	String key=(String)enumGoods.nextElement();
	String goods=(String)session.getAttribute(key);
	if(!(goods.equals(personName))){
		out.println(goods+"<br>");
	}
			
}

%>
���ӵ�book.jsp��ҳ�棬���������鼮��<A HREF="book.jsp">��ӭȥbook.jsp��</A>
<BR>���ӵ�welcome.jsp��ҳ�棬ȥ�޸�������<A HREF="welcom.jsp">��ӭȥwelcome.jsp��</A>
</FONT></body></html>