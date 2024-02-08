<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
    String userId = request.getParameter("userId");
    String newStatus = "true"; // Set the new status as needed

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql:///voting_system?useSSL=false";
        String username = "root";
        String password = "root";

        try (Connection con = DriverManager.getConnection(url, username, password);
             PreparedStatement ps = con.prepareStatement("UPDATE user_login SET status = ? WHERE UserId = ?")) {

            ps.setString(1, newStatus);
            ps.setString(2, userId);
            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                out.println(newStatus); // Return the updated status
            } else {
                out.println("false");
            }
        }
    } catch (Exception e) {
        out.println("false");
        e.printStackTrace();
    }
%>
