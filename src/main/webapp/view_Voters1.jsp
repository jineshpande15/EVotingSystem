<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .A {
            float: left;
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
            position: relative;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            position: absolute;
            top: 80%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #f0f0f0; /* Change this line for the background color */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            text-align: center;
            padding: 12px;
            border-color: #ddd;
            color: black; /* Set text color to black */
        }

        th {
            background-color: #333;
            color: white;
        }

        /* Add hover effect to rows */
        tr:hover {
            background-color: #e0e0e0;
        }

        .approved-button {
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .approved-button.true {
            background-color: #00FF00; /* Green color for approved */
            color: #FFFFFF;
        }

        .approved-button.false {
            background-color: #FF0000; /* Red color for not approved */
            color: #FFFFFF;
        }
    </style>
    <script>
        function approveUser(userId) {
            var button = document.getElementById('approveButton_' + userId);

            // Check if the button is already approved
            if (!button.classList.contains('true')) {
                // Update the status using AJAX
                var xhr = new XMLHttpRequest();
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        // Update the button color based on the new status
                        if (xhr.responseText.trim() === "true") {
                            button.classList.remove('false');
                            button.classList.add('true');
                        } else {
                            button.classList.remove('true');
                            button.classList.add('false');
                        }
                    }
                };
                xhr.open("GET", "updateStatus.jsp?userId=" + userId, true);
                xhr.send();
            }
        }
    </script>
</head>
<body>
    <%@ include file="admin_menu.jsp"%>
    <table>
        <tr>
            <th>User ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>DOB</th>
            <th>Address</th>
            <th>Phone No</th>

            <th>Action</th>
        </tr>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url = "jdbc:mysql:///voting_system?useSSL=false";
                String username = "root";
                String password = "root";

                try (Connection con = DriverManager.getConnection(url, username, password);
                     Statement st = con.createStatement();
                     ResultSet rs = st.executeQuery("select * from user_login")) {

                    while (rs.next()) {
                        String userId = rs.getString("UserId");
                        String status = rs.getString("status");
                        String buttonClass = (status.equals("true")) ? "approved-button true" : "approved-button false";
        %>
                        <tr>
                            <td><%=userId%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("email")%></td>
                            <td><%=rs.getString("dob")%></td>
                            <td><%=rs.getString("address")%></td>
                            <td><%=rs.getString("phone_no")%></td>
                            <%--<td id="status_<%=userId%>"><%=status%></td>--%>
                            <td>
                                <button id="approveButton_<%=userId%>" class="<%=buttonClass%>" onclick="approveUser('<%=userId%>')">Approve</button>
                            </td>
                        </tr>
        <%
                    }
                }
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
                e.printStackTrace();
               
            }
        %>
    </table>

    <%-- Update Status Logic --%>
    <%
        String userId = request.getParameter("userId");
        String newStatus = "true"; // Set the new status as needed

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql:///voting_system?useSSL=false";
            String username = "root";
            String password = "root";

            try (Connection con = DriverManager.getConnection(url, username, password);
                 PreparedStatement ps = con.prepareStatement("UPDATE user_login SET status = ? WHERE UserID = ?")) {

                ps.setString(1, newStatus);
                ps.setString(2, userId);
                int rowsAffected = ps.executeUpdate();

                // Check if the update was successful
                if (rowsAffected > 0) {
                    out.println(newStatus); // Return the updated status
                } else {
                    out.println("false");
                }
            }
        } catch (Exception e) {
            out.println("Error updating status: " + e.getMessage());
            e.printStackTrace();
        }
    %>
</body>
</html>
