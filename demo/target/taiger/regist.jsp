<%@page language="java" import="java.util.*" pageEncoding="GBK"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <title>login</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>

  <body>
<h1><align=center>注册</align></h1> 
<form method="get" action="zhuce.jsp">  
用   户  名:<input type="text" name="username" required="" /><br/> 
密          码:<input type="password" name="password" required="" /><br/> 
确认密码:<input type="password" name="passwordagain" required="" /><br/> 
<input type="submit" value="确认"/>
  </body>
</html>