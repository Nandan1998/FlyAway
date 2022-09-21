package com.simplilearn.project;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.*;

	public class ChangePassword extends HttpServlet {

	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	        PrintWriter out = resp.getWriter();
	        String pass = req.getParameter("passwordEntered");
	        
	            out.println("Password changed. New Password is "+Login.password);
	       
	        }
	        
	    }
	

