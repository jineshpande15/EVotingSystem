<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet, java.sql.DriverManager" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('online-voting.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            color: white;
        }

        #Menu {
            background-color: #333;
            overflow: hidden;
            width: 100%;
            position: fixed;
            z-index: 1000;
        }

        #Menu ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        #Menu li {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        #Menu li a {
            color: white;
            text-decoration: none;
        }
        #Menu li a:hover {
            color: black;
            text-decoration: none;
        }

        #Menu li:hover {
            background-color: #111;
        }

        h1 {
            text-align: center;
            color: rgb(5,137,245);
        }

        form {
            margin: 0 auto;
            max-width: 400px;
            padding: 20px;
            margin-top: 200px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        select {
            font-size: 120%;
            font-weight: bold;
            border-color: white;
            padding: 15px;
            text-decoration: underline;
            border-style: none;
            width: 100%;
            margin-bottom: 15px;
        }

        input[type="submit"] {
            border-radius: 10px;
            font-size: 120%;
            background-color: rgb(5,137,245);
            color: white;
            padding: 15px;
            cursor: pointer;
            width: 100%;
        }
    </style>
    <title>Elections</title>
    
</head>
<body>
    <div id="Menu">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li>Logout</li>
        </ul>
    </div>
    <div class="container">
        <% 
        try {
            String s1 = request.getParameter("name");
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql:///voting_system?useSSL=false","root","root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT Election_name FROM election_list");
        %>
        <h1>Elections</h1>
        <form action="Election12.jsp" method="post" >
            <select name="select" class="form-control">
                <% while(rs.next()) { %>
                <option value="<%= rs.getString("Election_name") %>"><%= rs.getString("Election_name") %></option>
                <% } %>
            </select>
            <input type="hidden" name="name" value="<%=s1%>">
            <input type="submit" class="btn btn-primary"  >
        </form>
        <% } catch(Exception e) {
            e.printStackTrace();
        } %>

        
    </div>
</body>
</html>
