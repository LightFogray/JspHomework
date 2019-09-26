<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>学生信息添加界面</title>
</head>
<body>
<form action="add.jsp" method="post">
<table>
	<tr>
		<td>学号</td>
		<td><input type="text" name="stunumber"></td>
		<td>*学号由6-18位字符组成</td>
	</tr>
	<tr>
		<td>密码</td>
		<td><input type="password"></td>
		<td>*学号由6-18位字符组成，且必须包含字母，数字，标点符号</td>
	</tr>
	<tr>
		<td>确认密码</td>
		<td><input type="password" name="password"></td>
		<td>*请再次输入你的密码</td>
	</tr>
	<tr>
		<td>姓名</td>
		<td><input type="text" name="stuname"></td>
		<td>*姓名由6-18位字符组成</td>
	</tr>
	<tr>
		<td>性别</td>
		<td><input type="radio" name="sex" value="n">男<input type="radio" name="sex" value="w">女</td>
		<td>*请选择你的性别</td>
	</tr>
	<tr>
		<td>出生日期</td>
		<td><input type="text" name="birthday"></td>
		<td>*请填写你的出生日期(yyyy-mm-dd)</td>
	</tr>
	<tr>
		<td>所在学院</td>
		<td>
			<select name="xueyuan">
				<option>请选择</option>
				<option value="1">计算机与信息工程学院</option>
			</select>
		</td>
		<td>*请选择所在学院</td>
	</tr>
	<tr>
		<td>所学专业</td>
		<td><input type="text" name="major"></td>
		<td>*专业不超过40位字符组成</td>
	</tr>
	<tr>
		<td>所学班级</td>
		<td><input type="text" name="class"></td>
		<td>*班级不超过20位字符组成</td>
	</tr>
	<tr>
		<td>兴趣爱好</td>
		<td>
			<input type="checkbox" name="hobby" checked value="阅读">阅读
			<input type="checkbox" name="hobby" value="音乐">音乐
			<input type="checkbox" name="hobby" value="运动">运动
		</td>
		<td>*请选择兴趣爱好</td>
	</tr>
	<tr>
		<td>电子邮件</td>
		<td><input type="text" name="email"></td>
		<td>*请填写常用的EMAIL，将用于密码找回</td>
	</tr>
	<tr>
		<td>自我介绍</td>
		<td>
			<textarea name="intro" rows="6" cols="32" maxlength="100"></textarea>
		</td>
		<td>*限100字以内</td>
	</tr>

</table>
	<div style="margin-left:150px">
		<input type="submit" value="提交" name="sub">
		<input type="reset" value="重置">
	</div>
</form>
</body>
<script>
	var subBtn = document.getElementsByName("sub")[0];
	subBtn.onclick = function(){
		var count = 0;
		var inputs = document.getElementsByTagName("input");
		for(item of inputs){
			if(item.value == ""){
				count++;
			}
		}
		if(count > 0){
			alert("信息未填完全!");
			return false;
		}
		if(inputs[1].value!=inputs[2].value){
			alert("密码与确认密码不一致！！");
			return false;
		}
		
	}
</script>
</html>