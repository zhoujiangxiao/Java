<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>My JSP 'addUser.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<script type="text/javascript" src="jquery/jquery-1.6.1.js"></script>
		<script type="text/javascript" src="script/json2.js"></script>
		<script type="text/javascript" src="script/util.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$("#save").click(function(){
					var random = Math.random()*10;//随机数
					
					var password = $("#password").val();
					
					var passwordOther = $("#passwordOther").val();
					
					if(password != passwordOther){
						alert("请确认输入的密码！");
						return;
					}
					
					var s = $("#userForm").serializeObject();
					
					var user = JSON.stringify(s);
					
					$.ajax({
						type : "POST",
						url : "<%=basePath%>userController/saveUser.do?user="+user+"&random="+random,
						dataType : "json",
						async : false,
						success : function(data){
							if(data==1){
								alert("添加成功！");
								window.location.href="queryUserList.jsp";
							}else{
								alert("添加失败！");
								return;
							}
						}
					})
				});
				
				//取消返回
				$("#back").click(function(){
					window.location.href="queryUserList.jsp";
				})
				
				
				
			});
			
		</script>
	</head>

	<body>
		<form id="userForm" action="" method="post">
			<table align="center" border="1" >
				<tr>
					<th colspan="2">新增人员信息
						<input id="id" name="id" type="hidden"/>
					</th>
				</tr>
				<tr>
					<td>姓名：</td>
					<td>
						<input id="loginName" name="loginName" type="text"/>
					</td>
				</tr>
				<tr>
					<td>密码：</td>
					<td>
						<input id="password" name="password" type="password"/>
					</td>
				</tr>
				<tr>
					<td>确认密码：</td>
					<td>
						<input id="passwordOther" name="passwordOther" type="password"/>
					</td>
				</tr>
				<tr>
					<td>中文名：</td>
					<td>
						<input id="userName" name="userName" type="text"/>
					</td>
				</tr>
				<tr>
					<td>英文名：</td>
					<td>
						<input id="englishName" name="englishName" type="text"/>
					</td>
				</tr>
				<tr>
					<td>性别：</td>
					<td>
						<input id="sex" name="sex" type="radio" value="1" checked="checked"/>男
						<input id="sex" name="sex" type="radio" value="0"/>女
					</td>
				</tr>
				<tr>
					<td>国籍：</td>
					<td>
						<input id="nationality" name="nationality" type="text"/>
					</td>
				</tr>
				<tr>
					<td>出生日期：</td>
					<td>
						<input id="birthDate" name="birthDate" type="text"/>
					</td>
				</tr>
				<tr>
					<td>电话：</td>
					<td>
						<input id="phoneNumber" name="phoneNumber" type="text"/>
					</td>
				</tr>
				<tr>
					<td>电话：</td>
					<td>
						<input id="phoneNumberOther" name="phoneNumberOther" type="text"/>
					</td>
				</tr>
				<tr>
					<td>QQ：</td>
					<td>
						<input id="qqNumber" name="qqNumber" type="text"/>
					</td>
				</tr>
				<tr>
					<td>Email：</td>
					<td>
						<input id="email" name="email" type="text"/>
					</td>
				</tr>
				<tr align="center" >
					<td colspan="2">
						<input id="save" type="button" value="保存"/>
						<input id="back" type="button" value="取消"/>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
