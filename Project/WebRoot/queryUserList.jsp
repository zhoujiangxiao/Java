<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<title>My JSP 'queryUserList.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<script type="text/javascript" src="jquery/jquery-1.6.1.js"></script>
		<script type="text/javascript" src="script/util.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var random = Math.random()*10;//随机数
	$.ajax({
		type : "GET",
		url : "<%=basePath%>userController/queryUserList.do?random="+random,
		dataType : "JSON",
		async : false,
		success : function(data){
			for(var i=0;i<data.length;i++){
				var tab = "<tr align='center'>"+
							"<td><input type='checkbox' name='ids' id='ids' value='"+data[i].id+"'/></td>"+
							"<td>"+data[i].id+"</td>"+
							"<td>"+data[i].loginName+"</td>"+
							"<td>"+data[i].password+"</td>"+
							"<td>"+data[i].userName+"</td>"+
							"<td>"+data[i].userCode+"</td>"+
							"<td>"+data[i].sex+"</td>"+
							"<td>"+data[i].nationality+"</td>"+
							"<td>"+data[i].birthDate+"</td>"+
							"<td>"+data[i].englishName+"</td>"+
							"<td>"+data[i].email+"</td>"+
							"<td>"+data[i].phoneNumber+"</td>"+
							"<td>"+data[i].phoneNumberOther+"</td>"+
							"<td>"+data[i].qqNumber+"</td>"+
							"<td>"+data[i].createDate+"</td>"+
							"<td>"+data[i].finallyDate+"</td>"+
							"</tr>";
				$("#userTable tbody").append(tab);			
			}
		}
	})
	
	$("#delete").click(function(){
		var ids = $("#userTable input:checked").val();
		alert(ids);
		$.ajax({
			type : "GET",
			url : "<%=basePath%>userController/deleteUser.do?random="+random+"&ids="+ids,
			dataType : "JSON",
			async : false,
			success : function(data){
				if(data==1){
					refresh();
				}
			}
		})
	})

});



//点击按钮调用的方法
function refresh(){    
window.location.reload();
//刷新当前页面.        
//或者下方刷新方法   
//parent.location.reload()刷新父亲对象（用于框架）--需在iframe框架内使用    
//opener.location.reload()刷新父窗口对象（用于单开窗口  
//top.location.reload()刷新最顶端对象（用于多开窗口）
}
</script>
	</head>
	<body>
		<table id="userTable" align="left" border="1" frame="border"> 
			<thead>
			<tr>
				<th width="50px"><a href="javascript:choose('ids')">反选</a></th>
				<th width="50px">ID</th>
				<th width="100px">登录名</th>
				<th width="100px">密码</th>
				<th width="100px">姓名</th>
				<th width="100px">用户编码</th>
				<th width="100px">性别</th>
				<th width="100px">国籍</th>
				<th width="100px">出生日期</th>
				<th width="100px">英文名</th>
				<th width="100px">邮箱</th>
				<th width="100px">电话号码</th>
				<th width="120px">备用电话号码</th>
				<th width="100px">QQ</th>
				<th width="160px">创建时间</th>
				<th width="100px">最后登录时间 </th>
			</tr>
			</thead>
			<tfoot>
				<tr align="center" >
					<td colspan="17">
						<a href="addUser.jsp">添加</a>
						<a id="delete" >删除</a>
						<a href="addUser.jsp">修改</a>
					</td>
				</tr>
			</tfoot>
		</table>
	</body>
</html>
