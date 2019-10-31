<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book</title>
</head>
<body>
请输入书籍信息：
<form action="gain.jsp" method="post">
	书名：<input type="text" name="bookName"/><br />
	书号：<input type="text" name="bookNum"/><br />
	价钱：<input type="text" name="bookPrice"/><br />
	页数：<input type="text" name="bookPages"/><br />
	<input type="submit" value="提交" />
	<input type="reset" value="重置" />
</form>
</body>
</html>