<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FlyAway Airlines</title>
</head>
<body>
	<h1>FlyAway</h1>
	
<div>
  
  <form action="<%= request.getContextPath() %>/AdminDashboard" method="post">
    
    <div class="container">
      <label for="uname"><b>User name</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>
	  <br><br>	
      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
      <br><br>  
      <div>
                <button>Admin Login</button>
            </div>
      </div>
      </form>
</div>
            
	<br>
	
	<h2>Search Flights</h2><br>
	
	<form action="<%= request.getContextPath() %>/Flights" method="post" >
	
		<div class="form-group">
                    <label for="date">Date: </label>
                    <input type="date" id="date" name="Date">
                </div><br><br>
                <div class="form-group">
                    <label for="source">Source: </label>
                    <select  class="form-control" id="source" name="Source">
                        <option value="India">Bangalore</option>
                        <option value="USA">Mysore</option>
                    </select>
                </div><br><br>
                <div class="form-group">
                    <label for="destination">Destination: </label>
                    <select  class="form-control" id="destination" name="Destination">
                        <option value="USA">Delhi</option>
                        <option value="UK">Mumbai</option>
                    </select>
                </div><br><br>
                <div>
                    <label for="persons">No of Persons: </label>
                    <select class="form-control" id="persons" name="Persons">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </div><br><br>
		<tr>
			<td colspan="2" align="center"> 
				<input type="submit" value="Search Flights">
			</td>
		</tr>
	</form>
</body>
</html>