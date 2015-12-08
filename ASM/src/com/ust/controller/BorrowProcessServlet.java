package com.ust.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ust.model.AssetBean;
import com.ust.model.BorrowedBean;
import com.ust.model.BorrowersBean;
import com.ust.utility.AssetBeanFactory;
import com.ust.utility.BorrowedBeanFactory;
import com.ust.utility.BorrowersBeanFactory;
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
		HttpSession session=request.getSession(false);
		if(session!=null){
			if (connection != null) {
			//itemId, itemName,idNum, lastName, firstName, borrowedDate,dueDate, status
			int  itemId = Integer.parseInt(request.getParameter("itemId"));
			String itemName = request.getParameter("itemName");
			int idNum = Integer.parseInt(request.getParameter("idNum"));
			String lastName = request.getParameter("lastName");
			String firstName = request.getParameter("firstName");
			String category = request.getParameter("category");
			String status = request.getParameter("status");
			String borrowedDate = request.getParameter("borrowedDate");
			String dueDate = request.getParameter("dueDate");
			String contactNumber = request.getParameter("contactNumber");
			String email = request.getParameter("email");


			AssetBean asset = 
					AssetBeanFactory.getFactoryBean(itemName, category);
			
			BorrowersBean borrowers = 
					BorrowersBeanFactory.getFactoryBean(idNum, lastName, firstName, contactNumber, email);

			
			BorrowedBean borrowed = 
				BorrowedBeanFactory.getFactoryBean(itemId, itemName,borrowedDate,dueDate);
			
			

		
			if ((SQLOperations.addBorrowers(borrowers,connection))&& 
					(SQLOperations.addBorrowed(borrowed, borrowers, connection ))){
				System.out.println("successful insert");
				
				
				request.setAttribute("asset", asset);
				request.setAttribute("borrowers", borrowers);
				request.setAttribute("borrowed", borrowed);
			
			
				ResultSet rs = SQLOperations.getCurrentlyBorrowing(idNum,connection);
				request.setAttribute("currently", rs);
				

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

