<%-- 
    Document   : add_election1
    Created on : 23 Jun, 2023, 1:03:45 PM
    Author     : Tanu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import ="java.sql.*"%>
<%
    String s1=request.getParameter("election_name");
    String s2=request.getParameter("end_date");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql:///voting_system?useSSL=false","root","root");
Statement st = con.createStatement();
st.executeUpdate("insert into election_list values('"+s1+"','"+s2+"')");
response.sendRedirect("add_election.jsp");
con.close();
}
catch(Exception e1)
{
out.println(e1);
}
%>