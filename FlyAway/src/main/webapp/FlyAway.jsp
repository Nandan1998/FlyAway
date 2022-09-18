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
	
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="/action_page.php" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    </div>

    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;"> Admin Login</button>
      
    </div>

  </form>
</div>

	<br><br>
	
	<h2>Search Flights</h2><br><br>
	
	<form action="<%= request.getContextPath() %>/Flights" method="post" >
	
		Source: <input type="text" name="Source">
		<br><br>
		Destination: <input type="text" name="Destination">
		<br><br>
		Number of people: <input type="number" name="NumberofPeople">
		<br><br>
		Date of travel: <input type="date" name="Date">
		
		<tr>
			<td colspan="2" align="center"> 
				<input type="submit" value="Register">
			</td>
		</tr>
	
	</form>
	
</body>
</html>