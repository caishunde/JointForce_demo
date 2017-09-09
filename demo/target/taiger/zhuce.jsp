<%@page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="user.*" %>
<jsp:useBean id="userBean" class="user.UserBean" scope="request"/>
<jsp:setProperty name="userBean" property="*"/>
<jsp:useBean id="regist" class="user.UserRegister" scope="request"/>
<%

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    <title>zhuce</title>
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
<%
String usrename =request.getParameter("username");
String password = request.getParameter("password");
userBean.setUsername(usrename);
userBean.setPassword(password);
System.out.println(usrename+"+"+password);
%>
<% try{
  regist.setUserBean(userBean);
  regist.regist();
  response.sendRedirect("index.jsp?error=success");}
  catch(Exception e){
  out.println(e.getMessage());
  }
%>
  </body>
</html>