package com.ust.controller;

import java.io.IOException;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Date;

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
		int idNum = Integer.parseInt(request.getParameter("idNum"));
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		String itemId = request.getParameter("itemId");
		String itemName = request.getParameter("itemName");
		String borrowedDateString = request.getParameter("borrowedDate");
		String dueDateString = request.getParameter("dueDate");
		String status = request.getParameter("status");

		SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd");
		Date borrowedDate = ft.parse(borrowedDateString);
		Date dueDate = ft.parse(dueDateString);
		
		BorrowedBean borrowed = 
				BorrowedBeanFactory.getFactoryBean(itemId, itemName,idNum, 
						lastName, firstName, borrowedDate,dueDate, status));
		
		if (connection != null) {
			if (SQLOperations.addBorrowed(borrowed, connection)){
				System.out.println("successful insert");
				request.setAttribute("borrowed", borrowed);
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