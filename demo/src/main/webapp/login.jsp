<%@page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="java.sql.*"%>  
<%@page import="java.io.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String userid1=new String(request.getParameter("username"));  
String password1=new String(request.getParameter("password")); 
try { 
	   Class.forName("com.mysql.jdbc.Driver"); 
	} 
	catch(ClassNotFoundException e) { 
	   System.out.println("can not find driver"); 
}

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taiger","root","");  
Statement stmt=con.createStatement();  
String sql="select * from  user where username='"+userid1+"';";  
ResultSet rs=stmt.executeQuery(sql);  
if(rs.next())  
{String password=new String(rs.getString("password"));  
if(password.equals(password1))  
{session.setAttribute("userid1",userid1);  
response.sendRedirect("./car/car.jsp");  
}  
else  
{response.sendRedirect("index.jsp?error=yes");  
}  
}  
else  
{response.sendRedirect("index.jsp?error=yes");  
}  

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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


  </body>
</html>
