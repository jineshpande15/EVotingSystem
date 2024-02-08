<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Logout</title>
</head>
<body>
    <h1>Logout</h1>
    
    <%  
        // Invalidate the session to log out the user
        HttpSession mySession = request.getSession(false);
        if (mySession != null) {
            mySession.invalidate();
        }
        
        // Redirect to the login page after logging out
        response.sendRedirect("User_login.jsp");
    %>
</body>
</html>
