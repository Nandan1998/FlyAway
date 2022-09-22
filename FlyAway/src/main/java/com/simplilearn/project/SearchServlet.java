package com.simplilearn.project;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.*;

	import jakarta.servlet.http.HttpServlet;
	import jakarta.servlet.http.HttpServletRequest;
	import jakarta.servlet.http.HttpServletResponse;
	import com.simplilearn.project.Search;

	public class SearchServlet extends HttpServlet {

	    @Override
	    public void service (HttpServletRequest req, HttpServletResponse resp) throws IOException {
	        Search.date = req.getParameter("Date");
	        Search.source = req.getParameter("Source");
	        Search.destination = req.getParameter("Destination");
	        Search.persons = Integer.parseInt(req.getParameter("Persons"));

	        if (Search.date.equals("")) {
	            PrintWriter out = resp.getWriter();
	            out.println("Please enter a valid date");
	        }
	        else {
	            Search.day = getDay(Search.date);
	            resp.sendRedirect("/search-results.jsp");
	        }
	    }

	    public String getDay(String dateInp) {
	        LocalDate dt = LocalDate.parse(dateInp);
	        return dt.getDayOfWeek().toString();
	    }
	}

