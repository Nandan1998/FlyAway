package com.simplilearn.project;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Flights")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public StudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = request.getServletPath();
		System.out.println("Path:"+path);
		
		String Source = (String)request.getParameter("Source");
		String Destination = (String)request.getParameter("Destination");
		String NumberofPeople = (String)request.getParameter("NumberofPeople");
		String Date = (String)request.getParameter("Date");
		
		System.out.println("Source:"+Source);
		System.out.println("Destination:"+Destination);
		System.out.println("Numer of People:"+NumberofPeople);
		System.out.println("Date of Travel:"+Date);
		
	}

}
