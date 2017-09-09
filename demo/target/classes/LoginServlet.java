package src/main/resources 
import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		String userid1=new String(request.getParameter("username"));  
		String password1=new String(request.getParameter("password")); 
		if(userid1.equals("admin") && password1.equals("admin")){
		 response.sendRedirect("main.jsp"); 
		 }
		else
		{
		response.sendRedirect("index.jsp"); 
		}

		
	}
}
