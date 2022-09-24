<%@page import="com.simplilearn.project.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<style>
* {
  box-sizing: border-box;
}

.row {
  margin-left:-5px;
  margin-right:-5px;
}
  
.column {
  float: left;
  width: 50%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}
</style>
</head>
<body>

<h2 align="center"><b>Admin Dashboard</b></h2>
    <p align="center"><span><strong>You are Logged in as : <%=Login.email%>. Your Password is : <%=Login.password%></strong></span></p><br>
    <br>
    
<div align="center">
      <form action="<%= request.getContextPath() %>/Change-password" method="post">
      <button>Change Password</button>
      </form>
      </div>
      
<h3>Master list of places for source and destination</h3>  
<div class="row">
  <div class="column">  
<table>
  <tr>
    <th>Source</th>
    <th>Destination</th>
  </tr>
  <tr>
    <td>Bangalore</td>
    <td>Delhi</td>
  </tr>
  <tr>
    <td>Bangalore</td>
    <td>Mumbai</td>
  </tr>
  <tr>
    <td>Bangalore</td>
    <td>Kolkatta</td>
  </tr>
  <tr>
    <td>Mysore</td>
    <td>Delhi</td>
  </tr>
  <tr>
    <td>Mysore</td>
    <td>Mumbai</td>
  </tr>
  <tr>
    <td>Mysore</td>
    <td>Kolkatta</td>
  </tr>
</table>
</div>
<h3>Master list of airlines</h3>
<div class="column">
<table>
      <tr>
        <th>Master list of Airlines</th>
      </tr>
      <tr>
        <td>Air India</td>
      </tr>
      <tr>
        <td>Air Asia</td>
      </tr>
      <tr>
        <td>Air Mysore</td>
      </tr>
    </table>
  </div>
<h3>Master list of each flight has a source, destination, airline, and ticket price</h3>
<div class="column">
<table>
      <tr>
        <th>Flight</th>
        <th>Source</th>
        <th>Destination</th>
        <th>Ticket Price</th>
      </tr>
      <tr>
        <td>Air India</td>
         <td>Bangalore</td>
          <td>Delhi</td>
           <td>15,000</td>
      </tr>
      <tr>
        <td>Air India</td>
         <td>Bangalore</td>
          <td>Mumbai</td>
           <td>16,000</td>
      </tr>
      <tr>
        <td>Air India</td>
         <td>Bangalore</td>
          <td>Kolkatta</td>
           <td>17,000</td>
      </tr>
      <tr>
        <td>Air Asia</td>
         <td>Mysore</td>
          <td>Delhi</td>
           <td>18,000</td>
      </tr>
      <tr>
        <td>Air India</td>
         <td>Mysore</td>
          <td>Mumbai</td>
           <td>19,000</td>
      </tr>
      <tr>
        <td>Air Mysore</td>
         <td>Mysore</td>
          <td>Kolkatta</td>
           <td>13,000</td>
      </tr>
    </table>
  </div>  
 
</div>
</body>
</html>