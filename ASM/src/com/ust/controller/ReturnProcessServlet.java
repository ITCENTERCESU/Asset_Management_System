package com.ust.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ust.model.BorrowedBean;
import com.ust.utility.BorrowedBeanFactory;
import com.ust.utility.ReturnFactory;
import com.ust.utility.sql.SQLOperations;


@WebServlet("/processreturn.html")
public class ReturnProcessServlet extends HttpServlet {
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
			String itemId = request.getParameter("itemId");
			int idNum = Integer.parseInt(request.getParameter("idNum"));

			BorrowedBean returned = ReturnFactory.getFactoryBean(itemId, idNum);

			if (connection != null) {
				if (SQLOperations.addBorrowed(returned, connection)){
					System.out.println("successful insert");

					request.setAttribute("returned", returned);
					getServletContext().getRequestDispatcher("/borrowStatus.jsp?success=true").forward(request, response);
				} 
				else 
				{
					System.out.println("failed insert");
					getServletContext().getRequestDispatcher("/borrowStatus.jsp?success=false").forward(request, response);
				}
			} 
			else 
			{
				System.out.println("invalid connection");
			}
		}
		else {
			request.getRequestDispatcher("invalidsession.jsp").forward(request, response);  
		}
	}	

}
