<%-- 
    Document   : user_regis1.jsp
    Created on : 21 Jun, 2023, 7:52:24 PM
    Author     : Tanu
--%>

<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>-->
<%@page import="java.sql.*"%>
<%
String s1 = request.getParameter("name");
String s2 =request.getParameter("date");
String s3=request.getParameter("email");
String s4=request.getParameter("gender");
String s7=request.getParameter("phoneno");
String s5=request.getParameter("address");
String s6=request.getParameter("password");
String s8 = "False";


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql:///voting_system?useSSL=false","root","root");
Statement st = con.createStatement();
st.executeUpdate("insert into User_Login(Name,Email,DOB,Address,Gender,Phone_No,Status,PassWord,vote) values( '"+s1+"','"+s3+"','"+s2+"','"+s5+"','"+s4+"','"+s7+"','"+s8+"','"+s6+"','"+0+"')");

con.close();

response.sendRedirect("User_login.jsp");
}
catch(Exception e)
{
out.println(e);
}
%>