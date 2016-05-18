<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="jquery/jquery-1.6.1.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
		});
	</script>
  </head>
  
  <body>
    This is my JSP page.1231231 <br>
	<img src="${pageContext.request.contextPath}/image/1-1.jpg" width="160" height="90"></img>
	<br/>
	<form action="<%=basePath%>image/imageWrite.do" method="post">
		<input type="file" />
		<input type="submit" value="提交"/>
	</form>
	
    <table>
    	<tr>
    		<th><a href="queryUserList.jsp">用户信息</a></th>
    	</tr>
    </table>
  </body>
</html>
