<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-eIOk9s/xlRRk6Tr6s1WSL5kn8Nfw5pjqnEMuVVAwFVXfJGOE8AMnnV9mtlNHiPS" crossorigin="anonymous">
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
            top: 0;
            z-index: 1000;
        }

        #Menu ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            display: flex;
            justify-content: space-between;
            padding: 10px;
        }

        #Menu li {
            display: inline-block;
            color: white;
            text-align: center;
            padding: 10px 13px;
            text-decoration: none;
            font-size: 14px;
        }

        #Menu li a {
            color: white;
            text-decoration: none;
        }

        #Menu li:hover {
            background-color: #111;
        }

        .form-container {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px; /* Adjusted maximum width */
            width: 100%;
            box-sizing: border-box;
        }

        .form-group {
            position: relative;
            margin-bottom: 20px;
        }

        .form-group input[type="password"],
        .form-group input[type="email"] {
            border: none;
            outline: none;
            border-bottom: 2px solid #3498db;
            width: 100%;
            padding: 10px; /* Adjusted padding */
            margin-bottom: 8px;
            box-sizing: border-box;
        }

        .form-group label {
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
            padding: 0 10px 0 30px; /* Added padding */
            color: #666;
        }

        .form-group input[type="submit"] {
            background-color: #3498db;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%; /* Adjusted width */
        }

        .form-group input[type="submit"]:hover {
            background-color: #2980b9;
        }

        h2 {
            text-align: center;
            color: #333;
        }
    </style>
    
</head>

<body>
    <div id="Menu">
        <ul>
            <li><a href="index.html"><i class="fas fa-home"></i> Home</a></li>
            <li><a href=""><i class="fas fa-vote-yea"></i> Election</a></li>
            <li><i class="fas fa-sign-out-alt"></i> Logout</li>
        </ul>
    </div>
    <img src="online-voting.jpg" width="1500" height="600">
    <div class="form-container">
        <form action="admin_login1.jsp" method="get">
            <h2>ADMIN LOGIN</h2>
            <div class="form-group">
                <label><i class="far fa-envelope"></i></label>
                <input type="email" placeholder="Email" name="email">
            </div>
            <div class="form-group">
                <label><i class="fas fa-lock"></i></label>
                <input type="password" placeholder="Password" name="password">
            </div>
            <div class="form-group">
                <input type="submit" value="LOGIN">
            </div>
        </form>
    </div>
</body>

</html>
