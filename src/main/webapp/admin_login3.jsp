<%-- 
    Document   : admin_login3
    Created on : 22 Jun, 2023, 11:05:17 AM
    Author     : Tanu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function redirectToPage() {
      // Redirect to another page
      window.location.href = "admin_login.jsp";
    }
            function A()
            {
                alert("Incorrect ID and password for Admin");
                redirectToPage();
            }
            
            </script>
    </head>
    <body onload="A()">
 
    </body>
</html>
