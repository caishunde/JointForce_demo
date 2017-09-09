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
密          码:<input type="password" Id="password" name="password" required="" /><br/> 
确认密码:<input type="password" Id="passwordagain" name="passwordagain" onchange="validate()" required="" /><br/> 
<input type="submit" value="确认"/>
  </body>
</html>
<script type="text/javascript">

  function validate(){
	  var pas1,pas2;
	  pas1=document.getElementById("password").value;
	  pas2=document.getElementById("passwordagain").value;
	  if(pas1!=pas2){
		  alert("两次输入的密码不一致，请重新输入！");
		 return false;
	  }
     }

  
  var errori ='<%=request.getParameter("error")%>';
  switch (errori)
  {
  case 'yes':
  	alert("两次输入的密码不一致，请重新输入！");
  	break;
  default:
  	break;
  }
</script>
