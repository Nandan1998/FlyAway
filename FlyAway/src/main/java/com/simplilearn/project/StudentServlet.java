package com.simplilearn.project;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import com.simplilearn.util.Util;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public static final String SEARCH_BY_Source="SELECT * FROM Source WHERE Source = ?";
    public StudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		String path = request.getServletPath();
		System.out.println("Path:"+path);
		switch (path) {
		case "/AdminDashboard":
			response.sendRedirect("AdminDashboard.jsp");
			break;
		case "/Change-password":
			response.sendRedirect("Change-password.jsp");
		case "/Flights":
			response.sendRedirect("search-results.jsp");
		default:
			break;
		}
		
	}
		
		public static void saveData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Source = (String)request.getParameter("Source");
		String Destination = (String)request.getParameter("Destination");
		String Persons = (String)request.getParameter("Persons");
		String Date = (String)request.getParameter("Date");
		
		System.out.println("Source:"+Source);
		System.out.println("Destination:"+Destination);
		System.out.println("Numer of People:"+Persons);
		System.out.println("Date of Travel:"+Date);
	}
		
}