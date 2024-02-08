<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
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

        .form-container {
            width: 50%;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .form-group {
            position: relative;
            margin-bottom: 20px;
        }

        .form-group label {
            position: absolute;
            left: 5px;
            top: 50%;
            transform: translateY(-50%);
            padding: 0;
        }

        .form-group label i {
            font-size: 24px;
            margin-right: 10px; /* Adjust the margin as needed for space */
            color: #007bff;
        }

        .form-group input[type="text"],
        .form-group input[type="date"] {
            border: none;
            outline: none;
            border-bottom: 2px solid #007bff;
            width: calc(100% - 40px);
            padding-left: 40px;
            font-size: 16px;
            border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.9);
            transition: border-color 0.3s ease-in-out, background-color 0.3s ease-in-out;
        }

        .form-group input[type="text"]:focus,
        .form-group input[type="date"]:focus {
            border-color: #0056b3;
            background-color: white;
        }

        .date-input::-webkit-calendar-picker-indicator {
            position: absolute;
            right: 0;
            top: 50%;
            transform: translateY(-50%);
        }

        input[type="submit"] {
            background-color: #0056b3;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease-in-out;
        }

        input[type="submit"]:hover {
            background-color: #004080;
        }
    </style>
    <link rel="stylesheet" href="Menu1.css">
</head>
<body>
    <%@ include file="admin_menu.jsp"%>
    <div class="form-container">
        <form action="add_election1.jsp" method="get">
            <h2 style="text-align: center; margin-bottom: 20px; color: black;">ADD ELECTION</h2>
            <div class="form-group">
                <label><i class="fas fa-vote-yea"></i></label>
                <input type="text" placeholder="Enter Election Name" name="election_name">
            </div>
            <div class="form-group">
                <label><i class="far fa-calendar-alt"></i></label>
                <input style="color: gray" type="date" name="end_date" class="date-input">
            </div>
            <div class="form-group">
                <input type="submit" value="SUBMIT">
            </div>
        </form>
    </div>
</body>
</html>
