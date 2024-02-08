<%-- 
    Document   : admin_login1
    Created on : 22 Jun, 2023, 10:55:41 AM
    Author     : Tanu
--%>

<%@page import="java.sql.*"%>

<%
String s1=request.getParameter("email");
String s2=request.getParameter("password");

try
{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///voting_system?useSSL=false","root","root");
    Statement st=con.createStatement();

   if("admin@gmail.com".equals(s1) && "admin".equals(s2))
 
    {
    response.sendRedirect("admin_login2.jsp");
    }
    else
    {
        response.sendRedirect("admin_login3.jsp");
    }
}
catch(Exception e)
{
out.println(e);
}


%>
