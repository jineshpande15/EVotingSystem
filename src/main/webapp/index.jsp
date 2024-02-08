<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navigation Page</title>
    <!-- Bootstrap CSS link -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS link -->
    <link href="https://kit.fontawesome.com/fce56a1ff1.js" crossorigin="anonymous" rel="stylesheet">
    <!-- Custom Styles -->
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #343a40; /* Dark background color */
            padding: 15px; /* Add some padding for better appearance */
        }

        .navbar-dark .navbar-nav .nav-link {
            color: #fff; /* Set the navbar text color to white */
        }

        .navbar-dark .navbar-toggler-icon {
            border-color: #fff; /* Set the color of the navbar toggler icon */
        }

        img {
            width: 100%;
            height: auto;
            margin-top: 20px; /* Add some margin at the top of the image */
        }

        a {
            font-size: 20px;
            color: #fff; /* Set the link color */
            transition: font-size 0.3s; /* Add a smooth transition for the font size */
        }

        a:hover {
            font-size: 23px;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link ml-4" href="index.jsp"><i class="fas fa-ballot-check"></i> Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link ml-4" href="User_login.jsp"><i class="fas fa-user"></i> User <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link ml-4" href="admin_login.jsp"><i class="fas fa-user-shield"></i> Admin <span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
</nav>

<img src="vote1.jpg" width="1409" height="700" alt="Voting Image">

<!-- Bootstrap JS and Popper.js scripts (make sure they are included at the end of your body section) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
