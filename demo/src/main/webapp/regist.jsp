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
<h1><align=center>ע��</align></h1> 
<form method="get" action="zhuce.jsp">  
��   ��  ��:<input type="text" name="username" required="" /><br/> 
��          ��:<input type="password" Id="password" name="password" required="" /><br/> 
ȷ������:<input type="password" Id="passwordagain" name="passwordagain" onchange="validate()" required="" /><br/> 
<input type="submit" value="ȷ��"/>
  </body>
</html>
<script type="text/javascript">

  function validate(){
	  var pas1,pas2;
	  pas1=document.getElementById("password").value;
	  pas2=document.getElementById("passwordagain").value;
	  if(pas1!=pas2){
		  alert("������������벻һ�£����������룡");
		 return false;
	  }
     }

  
  var errori ='<%=request.getParameter("error")%>';
  switch (errori)
  {
  case 'yes':
  	alert("������������벻һ�£����������룡");
  	break;
  default:
  	break;
  }
</script>
