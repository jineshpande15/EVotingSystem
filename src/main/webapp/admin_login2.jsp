<%-- 
    Document   : admin_login2
    Created on : 22 Jun, 2023, 10:59:10 AM
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
      window.location.href = "admin_menu.jsp";
    }
    function A()
    {
    alert("Admin login successfully");
    redirectToPage();
}
            </script>
            
    </head>
    <body   onload = "A()">
       
         
           
    </body>
</html>
