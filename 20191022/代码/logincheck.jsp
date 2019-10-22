<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String stuid = request.getParameter("stuid");
		String stuname = request.getParameter("stuname");
		//out.print(stuname);
		
		try {  
            Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
            String url = "jdbc:mysql://localhost:3306/mydb"; //数据库名
            String username = "root";  //数据库用户名
            String password = "qwh263625";  //数据库用户密码
            Connection conn = DriverManager.getConnection(url, username, password);  //连接状态

            if(conn != null){  
                //out.print("数据库连接成功！");  
                out.print("<br />");            
                Statement stmt = null;  
                ResultSet rs = null;  
                String sql = "SELECT *FROM student where stuId="+ stuid +" and stuName='"+stuname+"'";  //查询语句
                stmt = conn.createStatement();  
                rs = stmt.executeQuery(sql);  
                if(rs.next()){
                	out.print("登录成功！");
                }else{
                	out.print("登录失败！");
                }
            }
            else{  
                out.print("连接失败！");  
            }  
        }catch (Exception e) {        
            out.print("数据库连接异常！");  
        }  
	%>
</body>
</html>