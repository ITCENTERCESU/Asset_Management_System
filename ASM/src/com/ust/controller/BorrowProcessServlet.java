package com.ust.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ust.model.BorrowedBean;
import com.ust.utility.BorrowedBeanFactory;
import com.ust.utility.sql.SQLOperations;

@WebServlet("/processborrowform.html")
public class BorrowProcessServlet extends HttpServlet {
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
		String idNum = request.getParameter("idNum");
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		String itemId = request.getParameter("itemId");
		String borrowedDate = request.getParameter("borrowedDate");

		
		BorrowedBean borrowed = 
				BorrowedBeanFactory.getFactoryBean(itemId, itemName, idNum, lastName,
						firstName, borrowedDate, dueDate);
		
		if (connection != null) {
			if (SQLOperations.addAsset(asset, connection)){
				System.out.println("successful insert");
				request.setAttribute("asset", asset);
				getServletContext().getRequestDispatcher("/addStatus.jsp?success=true").forward(request, response);
			} else {
				System.out.println("failed insert");
				getServletContext().getRequestDispatcher("/addStatus.jsp?success=false").forward(request, response);
			}
		} else {
			System.out.println("invalid connection");
		}
	}
	}

}
