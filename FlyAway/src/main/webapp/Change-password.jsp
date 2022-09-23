<%@page import="com.simplilearn.project.Login"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Password</title>
</head>
<body>
 <h1>Password Change</h1>
 <div class="container">
            
                <form action="Password-changed.jsp" method="post">
                    
                    <div>
                        <input type="password" id="inputPassword" name="pswd" placeholder="Enter a new password">
                    </div>
                    <button align="center" type="submit">Change Password</button>
                </form>
            
    </div>
</body>
</html>