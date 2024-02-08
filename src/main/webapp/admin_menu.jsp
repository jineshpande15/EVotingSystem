<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
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
        }

        #Menu {
            background-color: #333;
            overflow: hidden;
            width: 100%;
            position: fixed;
            top: 0;
            z-index: 10;
        }

        #Menu ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            display: flex;
            justify-content: space-between;
            padding: 1px; /* Even smaller padding */
        }

        #Menu li {
            display: inline-block;
            color: white;
            text-align: center;
            padding: 0; /* Even smaller padding */
            text-decoration: none;
            font-size: 5px; /* Even smaller font size */
        }

        #Menu li a {
            color: white;
            text-decoration: none;
        }

        #Menu li a:hover {
            background-color: black; /* Remove hover effect */
        }

        img {
            width: 100%; /* Make the image responsive */
            height: auto; /* Maintain aspect ratio */
            max-height: 80vh; /* Limit the maximum height of the image */
            display: block;
            margin: 0 auto; /* Center the image horizontally */
        }
    </style>
</head>

<body>
    <div id="Menu">
        <ul>
            <li><a href="index.html">HOME</a></li>
            <li><a href="add_election.jsp">ADD ELECTION</a></li>
            <li><a href="add_Candidate.jsp">ADD CANDIDATE</a></li>
            <li><a href="check2.jsp">VIEW RESULTS</a></li>
            <li><a href="view_Voters1.jsp">VIEW VOTERS</a></li>
            <li><a href="#">LOGOUT</a></li>
        </ul>
    </div>
    <img src="online-voting.jpg" alt="Online Voting" />
</body>

</html>
