<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	String filename = "C:\\Users\\Administrator\\eclipse-workspace-j2ee\\Myweb\\WebContent\\homework2\\"+request.getParameter("filename");
	//out.print(filename);

		File file = new File(filename);  
        BufferedReader reader = null;  
        try {  
        	if(file.exists()){  
                reader = new BufferedReader(new FileReader(file));  
                String tempString = null;  
                int line = 1;  
                while ((tempString = reader.readLine()) != null) {  
                    out.println(tempString);  
                    line++;
                }  
                reader.close();
        	}else{
        	%>
				<jsp:forward page="error.jsp" />
			<%
        	}
	}catch(Exception e){
		out.print("error");
	}
	
%>
</body>
</html>