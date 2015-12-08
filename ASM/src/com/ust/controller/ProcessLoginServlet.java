package com.ust.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ust.model.UserBean;
import com.ust.utility.sql.SQLOperations;
import com.ust.utility.BeanFactory;
import com.ust.utility.Security;

@WebServlet("/processlogin.html")
public class ProcessLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Connection connection;
	
	public void init() throws ServletException {
		connection = SQLOperations.getConnection();
		
		if (connection != null) {
			getServletContext().setAttribute("dbConnection", connection);
			System.out.println("connection is READY.");
		} else {
			System.err.println("connection is NULL.");
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username, password;
		
		try {
			username = request.getParameter("username");
			password = request.getParameter("password");
			
			UserBean user = 
					BeanFactory.getFactoryBean(username, password);
				
				if (true) {//Security.decrypt(SQLOperations.selectUserPassword(user.getUsername(), connection)).equals(password)) {
					System.out.println("Request Param:" + username);
					System.out.println("Request Param:" + password);
					//System.out.println("Encrypted password: " + Security.encrypt(password) );
					
					HttpSession session=request.getSession();
					session.setAttribute("user", user); 
					
					RequestDispatcher rd = request.getRequestDispatcher("/inventoryprocess.html");
					rd.forward(request,  response);
				}
				else {
					RequestDispatcher rd = request.getRequestDispatcher("invalidsession.jsp");
					rd.forward(request, response);
				}
			
		}
		//generalized exception 'to. so, kulang pa ng catch blocks 'to.
			//necessary yung mga kulang na catch block kasi
				//yun yung mga magpprompt sa user kung bakit nagka-error
				//pero pwede naman masettle yung prompting in a different way..
					//nakakita ka na ng ganung code dati, i'm sure :)
		catch(Exception e) {
			System.out.println(e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("invalidsession.jsp");
			rd.forward(request, response);
		}
		
	}
		
}
