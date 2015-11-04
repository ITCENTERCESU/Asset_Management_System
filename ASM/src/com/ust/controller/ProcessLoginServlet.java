package com.ust.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ust.utility.sql.SQLOperations;
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
				
				if( Security.decrypt(SQLOperations.selectUserPassword(username, connection)).equals(password) ) {
					System.out.println("Request Param:" + username);
					System.out.println("Request Param:" + password);
					System.out.println("Encrypted password: " + Security.encrypt(password) );
					
					HttpSession session=request.getSession();
					session.setAttribute("name",username); 
					
					RequestDispatcher rd = request.getRequestDispatcher("/inventoryprocess.html");
					rd.forward(request,  response);
				}
			/*
			System.out.println("Request Param:" + username);
			System.out.println("Request Param:" + password);
			
			HttpSession session=request.getSession();
			session.setAttribute("name",username);
			*/
				
		}
		//generalized exception 'to. so, kulang pa ng catch blocks 'to.
			//necessary yung mga kulang na catch block kasi
				//yun yung mga magpprompt sa user kung bakit nagka-error
				//pero pwede naman masettle yung prompting in a different way..
					//nakakita ka na ng ganung code dati, i'm sure :)
		catch(Exception e) {
			RequestDispatcher rd = request.getRequestDispatcher("errorLogin.jsp");
			rd.forward(request, response);
		}
		
	}
		
}
