<%@page import="java.sql.*"%>
<%@ page import="com.simplilearn.project.Search" %>
<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results</title>
</head>
<body>
	<br><p align="center"><span><strong>Select a flight</strong></span></p><br>
	
	<% String boarding= request.getParameter("source");
	   String landing= request.getParameter("destination");
	   String persons = request.getParameter("persons");
	   session.setAttribute("persons",persons);
	   %>
<%
try {

String connectionURL = "jdbc:mysql://localhost:3306/Simplilearn";

Connection connection = null;
 
Statement statement = null;

ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver");

connection = DriverManager.getConnection(connectionURL, "root", "root12345");

statement = connection.createStatement();


String QueryString = "SELECT * FROM Source WHERE Source = '"+boarding+"' AND Destination='"+landing+"'";
rs = statement.executeQuery(QueryString);
%>
<TABLE hover align="center">
<%
while (rs.next()) {
%>

<tr>
<td>
	<form action="<%= request.getContextPath() %>/Registration.jsp" method="post" >
                    <input id="flight" name="flight" value="<%=rs.getString(1)%>">
                    <input id="source" name="source" value="<%=rs.getString(2)%>">
                    <input id="destination" name="destination" value="<%=rs.getString(3)%>">
                    <input id="ticket" name="ticket" value="<%=rs.getInt(4)%>">
                    <button>Book this flight</button>
                       
                </form>
</td>
</tr>
<%} %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</TABLE><TABLE>

</TABLE>


</body>
</html>