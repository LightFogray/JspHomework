<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
<h4>当前时间为：<span id="curtime"></span></h4>
</body>
<script type="text/javascript">
	var tbox = document.getElementById("curtime");
	var date = null;
	setInterval(function(){
		date = new Date();
		tbox.innerHTML = date.getFullYear() + '年' + (date.getMonth()+1) + '月' + date.getDate() + '日' 
						+ date.getHours() + '时' + date.getMinutes() + '分' + date.getSeconds() + '秒' ;
	},1000);
</script>
</html>