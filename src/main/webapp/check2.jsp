<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Candidate Profiles</title>
    <%@ include file="all_components/combine_css_js.jsp"%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
    <link rel="stylesheet" href="Menu1.css">
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
            position: relative;
        }

        .container {
            margin-top:50%;
            margin-bottom:50%; /* Adjusted margin-top for better centering */
        }

        .table th, .table td {
            text-align: center;
        }

        .table img {
            max-width: 100px;
            max-height: 100px;
            border-radius: 50%;
        }

        .table tbody {
            background-color: rgba(255, 255, 255, 0.8);
        }

        #Menu {
            background-color: #333;
            overflow: hidden;
            width: 100%;
            position: fixed;
            top: 0;
            z-index: 1000;
        }

        #Menu ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            display: flex;
            justify-content: space-around;
            align-items: center;
            padding: 10px;
        }

        #Menu li {
            display: inline-block;
            color: white;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            margin: 0 10px;
            transition: 0.3s;
        }

        #Menu a {
            color: white;
            text-decoration: none;
            transition: 0.3s;
        }

        #Menu li:hover {
            background-color: #111;
        }
    </style>
</head>
<body>
    <div id="Menu">
        <ul>
            <li><a href="#">HOME</a></li>
            <li><a href="add_election.jsp">ADD ELECTION</a></li>
            <li><a href="add_Candidate.jsp">ADD CANDIDATE</a></li>
            <li><a href="#">VIEW RESULTS</a></li>
            <li><a href="view_Voters1.jsp">VIEW VOTERS</a></li>
            <li><a href="">LOGOUT</a></li>
        </ul>
    </div>

    <img src="online-voting.jpg" width="1400" height="600">

    <div class="container mt-5">
        <table class="table table-striped">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Candidate Profile</th>
                    <th scope="col">Candidate Name</th>
                    <th scope="col">Party Name</th>
                    <th scope="col">No. of Votes</th>
                </tr>
            </thead>
            <tbody>
                <% 
                try {
                    String s1 = request.getParameter("select");
                    String s2 = request.getParameter("name");
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql:///voting_system?useSSL=false","root","root");
                    Statement st = conn.createStatement();
                    ResultSet rs = st.executeQuery("SELECT bimg, candidate, party, vote FROM add_candidate ");
                    while (rs.next()) {
                %>
                    <tr>
                        <td scope="row"><img src="book/<%= rs.getString(1) %>" class="img-fluid rounded-circle"></td>
                        <td><%= rs.getString(2) %></td>
                        <td><%= rs.getString(3) %></td>
                        <td><%= rs.getString(4) %></td>
                    </tr>
                <% 
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                %>
            </tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
