<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password confirmation</title>
</head>
<body>
	<h1> Your password is changed !!!</h1>
	<% String pswd = request.getParameter("pswd"); 
	out.println("Your current password is: "+pswd);%>
</body>
</html>