<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <!-- Font Awesome CSS link -->
    <link href="https://kit.fontawesome.com/fce56a1ff1.js" crossorigin="anonymous" rel="stylesheet">
    <!-- Bootstrap CSS link -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: url('online-voting.jpg') center center fixed;
            background-size: cover;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            height: 100%;
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

        #Menu li:hover {
            background-color: #111;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            max-width: 500px;
            background-color: #fff;
            border: 1px solid #ced4da; /* Bootstrap gray border color */
            padding: 20px;
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Subtle shadow effect */
        }

        /* Add some spacing around the form elements */
        .form-group {
            margin-bottom: 20px;
        }

        /* Center the form button and link */
        .form-actions {
            text-align: center;
        }

        /* Provide some margin for the link */
        .form-actions a {
            margin-left: 15px;
        }
    </style>
  
<script>
    // Retrieve the message from the URL parameter
    
</script>
    
</head>

<body>

<div id="Menu">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="">Election</a></li>
            <li>Logout</li>
        </ul>
    </div>

<div class="container">
    <div class="form-container">
        <form action="User_login1.jsp" >
            <h3 class="text-center mt-4">User Login</h3>
            <div class="form-row mt-5">
                <div class="col-12">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Enter Name</label>
                        <input type="text" name="u1" class="form-control" id="exampleInputEmail1" required="required" aria-describedby="emailHelp" placeholder="Enter Name">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" name="u2" id="exampleInputPassword1" required="required" placeholder="Password">
                    </div>
                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary" >Login</button>

                        <a href="user_regis.jsp">Register</a>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap JS and Popper.js scripts (make sure they are included at the end of your body section) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
