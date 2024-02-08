<%-- 
    Document   : voters2.jsp
    Created on : 1 Jul, 2023, 1:07:58 PM
    Author     : Tanu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>





<%@page import="java.sql.*"%>
<!DOCTYPE html>

<%
      String userId = request.getParameter("userId");
        try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql:///voting_system?useSSL=false","root","root");
        Statement st = con.createStatement();
      
        st.executeUpdate("Update user_login set Status='true' where   UserId='" + userId + "' ");
        
        %>
               
   
            

<%
        con.close();
    }
    catch(Exception e)
    {
        out.println(e);
}

  %>
      
         

    
                                  
