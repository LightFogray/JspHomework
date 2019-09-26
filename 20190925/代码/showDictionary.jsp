<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%
    request.setCharacterEncoding("UTF-8");
	String words = request.getParameter("words");
	out.print("排序前的单词是：");
  
	String[] word = words.split("\n");
	for(int i=0;i<word.length;i++){
		
		if(i==word.length-1){
			out.print(word[i]);
		}else{
			out.print(word[i] + ',');
		}
	}
	%>
	<br>
	<%
	
	List<String> list = Arrays.asList(word);
	Collections.sort(list, String.CASE_INSENSITIVE_ORDER);
	out.print("按首字母排序后为："+list);

%>