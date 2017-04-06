package com.edu.capstone.servlets;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(false);
        String username=null;
        String password = null;
        
        
        
        if(request.getParameter("user_name").isEmpty()){
        	request.setAttribute("errorMessageLogin", "Username cannot be empty!");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("adminLogin.jsp");
		    requestDispatcher.forward(request, response);
		    return;
        }
        else{
        	username=request.getParameter("user_name");     
        }   

        if(request.getParameter("login_password").isEmpty()){
        	request.setAttribute("errorMessageLogin", "Password cannot be empty!");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("adminLogin.jsp");
		    requestDispatcher.forward(request, response);
		    return;
        }
        else{
        	password=request.getParameter("login_password");
        }
        if(username.equals("admin") && password.equals("admin")){
        	RequestDispatcher rd=request.getRequestDispatcher("RegisterChildCareProviders.jsp");    
    		rd.forward(request,response);
        }
        else{
        	request.setAttribute("errorMessageLogin", "Enter valid username and password!");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("adminLogin.jsp");
		    requestDispatcher.forward(request, response);
		    return;
        }
        
        
		out.close();
	}

	
	
}
