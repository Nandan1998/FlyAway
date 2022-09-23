<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Form</title>
</head>
<body>
	<div>
		<h1 align="center">
			<b>Checkout</b>
		</h1>
		<p align="center">
			<span><strong>Enter Payment Details</strong></span>
		</p>
		<br>
	</div>
	
	<div align="center">
	<ul>
         <li><p><b>Name: </b>
            <%= request.getParameter("name")%>
         </p></li>
         <li><p><b>Registered Email: </b>
            <%= request.getParameter("email")%>
         </p></li>
         <li><p><b>Number: </b>
            <%= request.getParameter("phone")%>
         </p></li>
        
      </ul>
	</div>
	
	<div align="center">
	<form action="<%= request.getContextPath() %>/Confirmation.jsp" method="post" >
                   <div align="center">
                       <label for="card_details">Name on Card</label>
                       <input type="text" id="name_on_card" name="name_on_card" placeholder="Enter Name on Card">
                   </div>
                   <div align="center">
                       <label for="card_details">Card Number</label>
                       <input type="number" id="card_details" name="card_details" placeholder="Enter Card Number">
                   </div>
                   <br>
                   <div align="center">
                   <button type="submit" value="Submit">Confirm Payment</button>
                   </div>
               </form>
               </div>
</body>
</html>