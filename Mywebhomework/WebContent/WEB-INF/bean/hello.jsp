<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="radiu"  class="my.CalCircle" scope="request"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<form action="">
		输入圆的半径：<input type="text" name="radius" />
		<input type="submit" value="计算" />
	</form>
	<jsp:setProperty property="*" name="radiu"/>
	圆的半径为：
	<jsp:getProperty property="radius" name="radiu" />
	周长为：
	<jsp:getProperty property="perimeter" name="radiu" />
	面积为：
	<jsp:getProperty property="area" name="radiu" />
</body>
</html>