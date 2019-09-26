<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	public String intToDouble(int a){
		double b = Double.valueOf(a);
		DecimalFormat df = new DecimalFormat("#.00");
		return df.format(b); 	
}
%>
<h2>
<%
	out.print(intToDouble(27));
%>
</h2>
</body>
</html>