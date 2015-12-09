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

@WebServlet("/accountsDeleteProcess.html")
public class AccountsDeleteProcessServlet extends HttpServlet {
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
		HttpSession session=request.getSession(false);
		
		if(session!=null){
			String password = request.getParameter("password");
			String repeatPassword = request.getParameter("repeatPassword");
			
			UserBean user = (UserBean) session.getAttribute("user");
			
			String dbpw = SQLOperations.selectUserPassword(user.getUsername(), connection);
			
			if (Security.decrypt(dbpw).equals(password) && password.equals(repeatPassword)) {
				SQLOperations.deleteAccount(user.getUsername(), connection);
				RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
				rd.forward(request,  response);
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("/addStatus.jsp?success=false");
				rd.forward(request, response);
			}
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("invalidsession.jsp");
			rd.forward(request, response);
		}
		
	}
}
