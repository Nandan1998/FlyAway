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
<%
try {

String connectionURL = "jdbc:mysql://localhost:3306/Simplilearn";

Connection connection = null;
 
Statement statement = null;

ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver");

connection = DriverManager.getConnection(connectionURL, "root", "root12345");

statement = connection.createStatement();

String QueryString = "SELECT * FROM Source WHERE Source = 'Bangalore'";
rs = statement.executeQuery(QueryString);
%>
<TABLE align="center">
<%
while (rs.next()) {
%>
<tr>
<td>
	<form action="<%= request.getContextPath() %>/booking-details" method="post" >
                    <input id="flight" name="flight" value="<%=rs.getString(1)%>">
                    <input id="source" name="source" value="<%=rs.getString(2)%>">
                    <input id="destination" name="destination" value="<%=rs.getString(3)%>">
                    <input id="ticket" name="tcket" value="<%=rs.getInt(4)%>">
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