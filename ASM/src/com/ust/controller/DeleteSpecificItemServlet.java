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

import com.ust.model.AssetBean;
import com.ust.utility.sql.SQLOperations;

@WebServlet("/deletespecificitem.html")
public class DeleteSpecificItemServlet extends HttpServlet {
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
		HttpSession session=request.getSession(false);
		if(session!=null){
			try {
				RequestDispatcher dispatcher = null; 
				if (request.getParameter("action").equals("delete")) {
					String itemId = request.getParameter("itemId");
					AssetBean asset = SQLOperations.searchAsset(itemId, connection);
					request.setAttribute("deleteForm", asset);
					dispatcher = getServletContext().getRequestDispatcher("/deleteConfirmForm.jsp");
				}
				dispatcher.forward(request, response);		
			} catch (Exception e) {
				System.err.println("Exception e - " + e.getMessage());
				e.printStackTrace();
			} 
		}
		else {
			request.getRequestDispatcher("invalidsession.jsp").forward(request, response);  
		}
	}

}
