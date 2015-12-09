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

import com.ust.utility.sql.SQLOperations;

@WebServlet("/accountsListProcess.html")
public class AccountListProcessServlet extends HttpServlet {
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
		System.out.println(session);
		if(session!=null){
			RequestDispatcher dispatcher = null; 
			ResultSet rs = SQLOperations.selectAllAccounts(connection);
			request.setAttribute("accountsList", rs);
			dispatcher = getServletContext().getRequestDispatcher("/accountsList.jsp");	
			dispatcher.forward(request, response);
		}
		else {
			request.getRequestDispatcher("invalidsession.jsp").forward(request, response);  
		}
	}

}
