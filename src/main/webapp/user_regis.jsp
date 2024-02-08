<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <!-- Font Awesome CSS link -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            background: url('online-voting.jpg') center center/cover no-repeat;
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

        .form-container {
            background-color: rgba(255, 255, 255, 0.95);
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            padding: 30px;
            width: 40%;
            text-align: center;
            margin-top: 70px;
        }

        .form-group {
            position: relative;
            margin-bottom: 20px;
        }

        label {
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
            color: #555;
        }

        input, select {
            width: calc(100% - 40px); /* Adjusted padding-left */
            padding: 12px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 8px;
            font-size: 16px;
        }

        select {
            color: #555;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            padding: 14px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 18px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
    </style>

    <script>
        function A() {
            alert("Registration Successfully");
        }
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
    <form action="user_regis1.jsp" method="get" class="form-container">
        <h2>USER REGISTER</h2>
        <div class="form-group">
            <label for="name"><i class="fas fa-user"></i></label>
            <input type="text" id="name" placeholder="Your Name" name="name" required>
        </div>

        <div class="form-group">
            <label for="date"><i class="fas fa-calendar"></i></label>
            <input style="color: gray" type="date" id="date" name="date" class="date-input" required>
        </div>

        <div class="form-group">
            <label for="email"><i class="fas fa-envelope"></i></label>
            <input type="email" id="email" placeholder="Your Email" name="email" required>
        </div>

        <div class="form-group">
            <label for="gender"><i class="fas fa-venus-mars"></i></label>
            <select id="gender" name="gender" required>
                <option>Select Your Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
        </div>

        <div class="form-group">
            <label for="phoneno"><i class="fas fa-phone"></i></label>
            <input type="number" id="phoneno" placeholder="Your Phone No" name="phoneno" required>
        </div>

        <div class="form-group">
            <label for="address"><i class="fas fa-address-card"></i></label>
            <input type="text" id="address" placeholder="Your Address" name="address" required>
        </div>

        <div class="form-group">
            <label for="password"><i class="fas fa-lock"></i></label>
            <input type="password" id="password" placeholder="Your Password" name="password" required>
        </div>

        <div class="form-group">
            <input type="submit" value="Register" onclick="A()">
        </div>
    </form>

    <!-- Font Awesome JS link (for future versions) -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
</body>

</html>
