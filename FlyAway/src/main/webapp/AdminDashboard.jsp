<%@page import="com.simplilearn.project.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
</head>
<body>

<h2 align="center"><b>Admin Dashboard</b></h2>
    <p align="center"><span><strong>You are Logged in as : <%=Login.email%>. Your Password is : <%=Login.password%></strong></span></p><br>
    <br>

<div>
      <form align="center" action="<%= request.getContextPath() %>/Change-password" method="post">
      <button align="center">Change Password</button>
      </form>
</body>
</html>