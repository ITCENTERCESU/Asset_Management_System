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
import com.ust.model.AssetBean;
import com.ust.utility.AssetBeanFactory;


@WebServlet("/addprocess.html")
public class AddProcessServlet extends HttpServlet {
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
		if(session!=null){
			
			
			String itemName = request.getParameter("itemName");
			String category = request.getParameter("category");


			AssetBean asset = 
					AssetBeanFactory.getFactoryBean(itemName, category);

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
		else {
			request.getRequestDispatcher("invalidsession.jsp").forward(request, response);  
		}
	}

}
