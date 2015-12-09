package com.ust.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ust.utility.sql.SQLOperations;
import com.ust.model.UserBean;

@WebServlet("/accountsEditProcess.html")
public class AccountsEditProcessServlet extends HttpServlet {
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
		doGet(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		
		if(session!=null){}
			/*
			UserBean user = (UserBean) session.getAttribute("user");
			System.out.println(user.getLastName());
				EmployeeBean employee = 
				  SQLOperations.searchEmployee(id, connection);
				request.setAttribute("employeeRec", employee);
				dispatcher = 
				 getServletContext().getRequestDispatcher("/editemployee.jsp");
				
			if (connection != null) {
				try {
					UserBean ub = new UserBean();
					employee.setLastName(request.getParameter("lastName"));
					employee.setFirstName(request.getParameter("firstName"));
					employee.setPosition(request.getParameter("position"));
					employee.setDepartment(request.getParameter("department"));
					
					int recordsAffected = 
						SQLOperations.updateEmployee(employee, 
								Integer.parseInt(request.getParameter("employeeId")), 
								connection);
					request.setAttribute("employee", employee);
					
					if (recordsAffected > 0) {
						dispatcher = 
					getServletContext().getRequestDispatcher(
							"/viewemployee.jsp?success=true");
					} else {
						dispatcher = 
					getServletContext().getRequestDispatcher(
						"/viewemployee.jsp?success=false");
					}
					dispatcher.forward(request, response);		
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else {
				System.out.println("invalid connection");
			}
		}
		else {
			request.getRequestDispatcher("invalidsession.jsp").forward(request, response);  
		}*/

	}
	
}