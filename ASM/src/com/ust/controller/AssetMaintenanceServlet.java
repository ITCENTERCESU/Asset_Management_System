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

import com.ust.model.AssetBean;
import com.ust.utility.sql.SQLOperations;


@WebServlet("/assetmaintenance.html")
public class AssetMaintenanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Connection connection;
	
	public void init() throws ServletException {
		connection = (Connection) 
			getServletContext().getAttribute("dbConnection");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			RequestDispatcher dispatcher = null; 
			if (request.getParameter("action").equals("borrow")) {
				String itemId = request.getParameter("itemId");
				AssetBean asset = SQLOperations.searchAsset(itemId, connection);
				request.setAttribute("borrowForm", asset);
				dispatcher = getServletContext().getRequestDispatcher("/borrowForm.jsp");
			}
			dispatcher.forward(request, response);		
		} catch (Exception e) {
			System.err.println("Exception e - " + e.getMessage());
			e.printStackTrace();
		} 
	}

}
