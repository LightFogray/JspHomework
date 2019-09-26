<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.security.MessageDigest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	request.setCharacterEncoding("UTF-8");				//设置解码方式为utf-8
	String stunum = request.getParameter("stunumber");	//获取学号
	String password = request.getParameter("password");	//获取密码
	String stuname = request.getParameter("stuname");	//获取姓名
	String stusex = request.getParameter("sex");		//获取性别
	stusex = stusex == "n" ? "男" : "女";
	String stubirthday = request.getParameter("birthday");//获取生日
	String stuxueyuan = request.getParameter("xueyuan");//获取所在学院
	String stumajor = request.getParameter("major");	//获取所学专业
	String stuclass = request.getParameter("class");	//获取所在班级
	String[] stuhobby = request.getParameterValues("hobby");//获取兴趣爱好
	String stuemail = request.getParameter("email");	//获取邮箱地址
	String stuintro = request.getParameter("intro");	//获取自我介绍
	
	//md5加密
	MessageDigest md5 = MessageDigest.getInstance("md5");
	String newpass = "";
	byte[] bytes = md5.digest(password.getBytes());
	for (int i = 0; i < bytes.length; i++) {
		newpass += Byte.toString(bytes[i]);
	}
	
	%>
	<%out.print("学号："+stunum);%><br />
	<%out.print("姓名："+stuname);%><br />
	<%out.print("性别："+stusex);%><br />
	<%out.print("生日："+stubirthday);%><br />
	<%out.print("所在学院："+stuxueyuan);%><br />
	<%out.print("专业："+stumajor);%><br />
	<%out.print("所在班级："+stuclass);%><br />
	<%out.print("爱好：");
	for(int i=0;i<stuhobby.length;i++){
		out.print(stuhobby[i]+"  ");
	}
	%><br />
	<%out.print("邮箱："+stuemail);%><br />
	<%out.print("自我介绍："+stuintro);%><br />

</body>
</html>