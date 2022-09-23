<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
</head>
<body>
	<h1>Registration for Chosen Flight</h1>
      
      <ul>
         <li><p><b>Date: </b>
            <%= request.getParameter("flight")%>
         </p></li>
         <li><p><b>Source: </b>
            <%= request.getParameter("source")%>
         </p></li>
         <li><p><b>Destination: </b>
            <%= request.getParameter("destination")%>
         </p></li>
         <li><p><b>Ticket Price: </b>
            <%= request.getParameter("ticket")%>
         </p></li>

      </ul>

	<form action="<%= request.getContextPath() %>/Payment.jsp" method="post" >
		<div class="container">
			
			<p><h2>Please enter your details below: </h2></p>
			<hr>

			<label for="name"><b>Enter Passenger Name: </b></label> <input type="text"
				placeholder="Enter Name" name="name" id="name" required>
			</label><br><br>
			<label for="email"><b>Enter Email: </b></label> <input type="text"
				placeholder="Enter your Email ID" name="email" id="email" required> 
				</label><br><br>
				
			<label for="number"><b>Enter Phone Number: </b></label> <input type="number"
				placeholder="Enter your phone number" name="phone" id="phone" required> 
				</label><br><br>
				
			<label for="pswd"><b>Enter a password: </b></label> <input type="text"
				placeholder="Enter a password" name="pswd" id="pswd" required> 
				</label><br><br>	
				
			<hr>

			<p>
				By creating an account you agree to our <a href="#">Terms &
					Privacy</a>.
			</p>
			<button type="submit" class="registerbtn">Register</button>
		</div>
	</form>
</body>
</html>