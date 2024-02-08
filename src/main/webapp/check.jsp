<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="all_components/combine_css_js.jsp"%>
    <link rel="stylesheet" href="Menu1.css">
    <meta charset="ISO-8859-1">
    <title>Check Page</title>
    <script>
        function showPopUp() {
            alert("Thank you for voting!");
            window.location.href = "index.html";
        }
        function showPopUp1() {
            alert("You have already voted!");
            window.location.href = "index.html";
        }
    </script>
</head>
<body>
    <div id="Menu">
        <ul>
            <li><a href="admin_login.jsp">HOME</a></li>
            <li><a href="">LOGOUT</a></li>
        </ul>
    </div>
    <%
    try {
        String s1 = request.getParameter("candidate");
        String s3 = request.getParameter("name");
        String s2=s3.trim().replaceAll("'", "");
        System.out.println(s1 + " " + s2);
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql:///voting_system?useSSL=false","root","root");
        
        String query1 = "SELECT vote FROM add_candidate WHERE candidate=?";
        PreparedStatement pst1 = conn.prepareStatement(query1);
        pst1.setString(1, s1);
        ResultSet rs1 = pst1.executeQuery();
        
        String query2 = "SELECT vote FROM user_login WHERE Name=?";
        PreparedStatement pst2 = conn.prepareStatement(query2);
        pst2.setString(1, s2);
        ResultSet rs2 = pst2.executeQuery();
        
        if (rs1.next() && rs2.next()) {
            int vote1 = rs1.getInt("vote");
            int vote2 = rs2.getInt("vote");
            if (vote1 != 0 && vote2 ==1) {
    %>				
                <script>
                    showPopUp1();
                </script>
    <%
            } else {
                String updateQuery1 = "UPDATE add_candidate SET vote=vote+1 WHERE candidate=?";
                PreparedStatement updatePst1 = conn.prepareStatement(updateQuery1);
                updatePst1.setString(1, s1);
                updatePst1.executeUpdate();
                
                String updateQuery2 = "UPDATE user_login SET vote=1 WHERE Name=?";
                PreparedStatement updatePst2 = conn.prepareStatement(updateQuery2);
                updatePst2.setString(1, s2);
                updatePst2.executeUpdate();
    %>				
                <script>
                    showPopUp();
                </script>
    <%
            }
        } 
        
    } catch (Exception e) {
        e.printStackTrace();
    }
    %>
</body>
</html>
