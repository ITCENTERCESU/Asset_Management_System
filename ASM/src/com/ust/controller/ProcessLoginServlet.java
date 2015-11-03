package com.ust.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/processlogin.html")
public class ProcessLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	/*public void init(ServletConfig config) throws ServletException {

	}*/

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username="";
		String password="";
		
		if(request.getParameter("username") != null)
		{
			username= request.getParameter("username");
		}
		if(request.getParameter("password")!= null)
		{
			password= request.getParameter("password");
		}
		System.out.println("Request Param:" + username);
		System.out.println("Request Param:" + password);
		
		if(username.equals("admin") && password.equals("1234"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("inventory.jsp");
			rd.forward(request,  response);
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("errorLogin.jsp");
			rd.forward(request,  response);
		}
		
	}

}
