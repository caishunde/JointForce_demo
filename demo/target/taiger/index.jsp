<%@page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html >
<head>
  <title>taiger</title>
  
  
  <link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>

  <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
    <div class="wrapper">
      <form class="form-signin"  method="get" action="login.jsp">       
      <h2 class="form-signin-heading">老虎加油</h2>
      <input name="username"  type="text" class="form-control" name="username" placeholder="用户名" required="" autofocus="" />
      <input name="password"  type="password" class="form-control" name="password" placeholder="密码" required=""/>      
      <a href="regist.jsp">注册</a>
      <button class="btn btn-lg btn-primary btn-block" type="submit">登陆</button>   
      </form>
  </div> 
</body>
</html>
<script> 

  //取出传回来的参数error并与yes比较
  var errori ='<%=request.getParameter("error")%>';
  switch (errori)
  {
  case 'yes':
  	alert("登录失败!");
  	break;
  case 'success' :
  	alert("注册成功!"); 
  	break;
  default:
  	break;
  }

</script>