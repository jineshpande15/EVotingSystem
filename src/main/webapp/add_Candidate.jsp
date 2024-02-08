<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP Page</title>
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
            width: 50%;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            position: absolute;
            top: 60%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color:black;
        }

        .form-group input[type="text"],
        .form-group input[type="number"],
        .form-group input[type="file"] {
            border: 1px solid #ced4da;
            border-radius: 5px;
            padding: 10px;
        }

        .form-group input[type="file"] {
            padding: 5px; /* Adjust padding for file input */
        }

        .btn-primary {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <%@ include file="admin_menu.jsp"%>
    <div class="container">
        <form action="add" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="select"><i class="fas fa-list-alt"></i> Select Election</label>
                <select class="form-control" name="select">
                    <option>----select-----</option>
                    <%
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql:///voting_system?useSSL=false","root","root");
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("select Election_name from election_list");
                        while(rs.next()) {
                            String name=rs.getString("Election_name");
                    %>
                    <option value="<%=name%>"><%=name%></option>
                    <%
                        }
                    } catch(Exception e) {
                        e.printStackTrace();
                    }
                    %>
                </select>
            </div>

            <div class="form-group">
                <label for="cname"><i class="fas fa-user"></i> Candidate Name</label>
                <input name="cname" type="text" class="form-control" id="cname" aria-describedby="emailHelp">
            </div>

            <div class="form-group">
                <label for="party"><i class="fas fa-flag"></i> Party Name</label>
                <input name="party" type="text" class="form-control" id="party" aria-describedby="emailHelp">
            </div>

            <div class="form-group">
                <label for="add"><i class="fas fa-map-marker-alt"></i> Address</label>
                <input name="add" type="text" class="form-control" id="add" aria-describedby="emailHelp">
            </div>

            <div class="form-group">
                <label for="phno"><i class="fas fa-phone"></i> Phone Number</label>
                <input name="phno" type="number" class="form-control" id="phno" aria-describedby="emailHelp">
            </div>

            <div class="form-group">
                <label for="bimg"><i class="fas fa-image"></i> Upload Photo</label>
                <input name="bimg" type="file" class="form-control" id="bimg">
            </div>

            <button type="submit" class="btn btn-primary"><i class="fas fa-check"></i> Submit</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
