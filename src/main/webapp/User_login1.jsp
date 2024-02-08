<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<html>
<head>
    <style>
        .error-message {
            color: red;
            font-weight: bold;
        }
    </style>
    
        
   
</head>
<body>

<div id="errorMessage" class="error-message"></div>

<%
    String s1 = request.getParameter("u1");
    String s2 = request.getParameter("u2");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql:///voting_system?useSSL=false&allowPublicKeyRetrieval=true","root","root");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from User_Login where Name='" + s1 + "' and PassWord='" + s2 + "' ");
        
        if (rs.next()) {
            String status = rs.getString("status");
            int vote = rs.getInt("vote");

            if ("true".equals(status)) {
                if (vote == 0) {
                    // User can log in and vote
                    HttpSession mySession = request.getSession();
                    mySession.setAttribute("username", s1);
                    response.sendRedirect("Elections.jsp?name=" + s1);
                } else if (vote == 1) {
                    // User has already voted
                    out.print("<script>alert('You have already voted!');window.location.href = 'User_login.jsp';</script>");
                }
            } else if ("False".equals(status)) {
                // User's profile is under review
                out.print("<script>alert('Your profile is under review. Please wait for approval.');window.location.href = 'User_login.jsp';</script>");
            } else {
                // Handle other cases or do nothing
                System.out.println("vote 3");
            }
        } else {
            // User not found
            out.print("<script>alert('Invalid credentials. Please try again.');window.location.href = 'User_login.jsp';</script>");
        }
    } catch (Exception e) {
        out.println(e);
    }
%>

</body>
</html>
