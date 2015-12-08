package com.ust.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ust.model.AssetBean;
import com.ust.model.BorrowedBean;
import com.ust.utility.AssetBeanFactory;
import com.ust.utility.BorrowedBeanFactory;
import com.ust.utility.sql.SQLOperations;

@WebServlet("/processdeleteconfirm.html")
public class DeleteProcessServlet extends HttpServlet {
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

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		RequestDispatcher dispatcher = null; 
		
		if (session != null) {
			String itemId = request.getParameter("itemId");
			String itemName = request.getParameter("itemName");
			AssetBean asset = AssetBeanFactory.getFactoryBean(itemId,
					itemName);

			if (connection != null) {
				SQLOperations.deleteItem(itemId, connection);
				ResultSet rs = 
						SQLOperations.getAvailableList(connection);
				request.setAttribute("delete", rs);
				dispatcher = 
						getServletContext().getRequestDispatcher("/deleteList.jsp");	
				dispatcher.forward(request, response);	
			} else {
				request.getRequestDispatcher("invalidsession.jsp").forward(request,
						response);
			}
		}
	}
}
