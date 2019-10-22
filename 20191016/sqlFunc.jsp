<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<title>展示数据</title>
</head>
<body>

 <%  
        try {  
            Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
            String url = "jdbc:mysql://localhost:3306/mydb"; //数据库名
            String username = "root";  //数据库用户名
            String password = "qwh263625";  //数据库用户密码
            Connection conn = DriverManager.getConnection(url, username, password);  //连接状态

            if(conn != null){  
                out.print("数据库连接成功！");  
                out.print("<br />");            
                Statement stmt = null;  
                ResultSet rs = null;  
                String sql = "SELECT *FROM student;";
                stmt = conn.createStatement(); 
                //查询
                rs = stmt.executeQuery(sql);  
                out.print("查询结果：");    
                out.print("<br />");  
                while (rs.next()) {  
                	out.print(rs.getInt("stuId")+rs.getString("stuName")+rs.getString("stuSex")+rs.getString("stuAddr")+rs.getString("stuIns")); //将查询结果输出  
            	 	out.print("<br>");
                }
                //添加
                sql = "INSERT INTO student values ('2017211888','小强','男','小区','计算机与信息工程学院');";
                stmt.execute(sql);
               	//删
               	sql="DELETE FROM student WHERE stuId = 2017211800";
               	stmt.execute(sql);
                //改
                sql = "UPDATE student SET stuName = 'QWH' WHERE stuId=2017211888";
                stmt.execute(sql);
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