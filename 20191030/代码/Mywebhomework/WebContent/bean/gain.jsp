<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="book" class="my.Book" scope="request"/>
您提交的书籍信息如下：
<jsp:setProperty property="*" name="book"/>
书名：<%=book.getBookName() %><br>
书号：<%=book.getBookNum() %><br>
价格：<%=book.getBookPrice() %><br>
页数：<%=book.getBookPages() %><br>
</body>
</html>