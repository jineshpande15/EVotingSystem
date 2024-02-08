<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="all_components/combine_css_js.jsp"%>
    <link rel="stylesheet" href="Menu1.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <meta charset="ISO-8859-1">
    <title>Candidate List</title>
    <style>
        a {
            color: black;
        }

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
            top: 0;
            z-index: 1000;
        }

        #Menu ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            display: flex;
            justify-content: space-between; /* Adjusted to distribute space evenly */
            padding: 10px; /* Added padding */
        }

        #Menu li {
            display: inline-block; /* Displayed items inline */
            color: white;
            text-align: center;
            padding: 10px 13px;
            text-decoration: none;
            font-size: 14px; /* Adjusted font size */
        }

        #Menu li a {
            color: white;
            text-decoration: none;
        }

        #Menu li:hover {
            background-color: #111;
        }

        .container {
            margin-top: 50px;
        }

        .table {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .thead-dark th {
            background-color: #343a40;
            color: white;
        }

        th, td {
            text-align: center;
        }

        img {
            width: 100px;
            height: 100px;
        }

        button {
            background-color: green;
            border: none;
            padding: 10px;
            cursor: pointer;
        }

        button a {
            color: white;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div id="Menu">
        <ul>
            <li><a href="admin_login.jsp">HOME</a></li>
            <li><a href="#">LOGOUT</a></li>
        </ul>
    </div>
    <img src="online-voting.jpg" width="1400" height="600">
    <div class="container mt-5">
        <table class="table table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Candidate Profile</th>
                    <th scope="col">Candidate Name</th>
                    <th scope="col">Party Name</th>
                    <th scope="col">Vote</th>
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
                ResultSet rs = st.executeQuery("SELECT bimg, candidate, party FROM add_candidate WHERE election='" + s1 + "'");
                while (rs.next()) {
            %>
                <tr>
                    <td scope="row"><img src="book/<%= rs.getString(1) %>"></td>
                    <td><%= rs.getString(2) %></td>
                    <td><%= rs.getString(3) %></td>
                    <th>
                        <button>
                            <a href="check.jsp?candidate=<%= rs.getString(2) %>&amp;name=<%=s2%>">Vote</a>
                        </button>
                    </th>
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
</body>
</html>
