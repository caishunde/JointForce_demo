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
      <h2 class="form-signin-heading">�ϻ�����</h2>
      <input name="username"  type="text" class="form-control" name="username" placeholder="�û���" required="" autofocus="" />
      <input name="password"  type="password" class="form-control" name="password" placeholder="����" required=""/>      
      <a href="regist.jsp">ע��</a>
      <button class="btn btn-lg btn-primary btn-block" type="submit">��½</button>   
      </form>
  </div> 
</body>
</html>
<script> 

  //ȡ���������Ĳ���error����yes�Ƚ�
  var errori ='<%=request.getParameter("error")%>';
  switch (errori)
  {
  case 'yes':
  	alert("��¼ʧ��!");
  	break;
  case 'success' :
  	alert("ע��ɹ�!"); 
  	break;
  default:
  	break;
  }

</script>