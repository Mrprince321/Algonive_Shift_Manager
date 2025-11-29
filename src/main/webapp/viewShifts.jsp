<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Your Shifts</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="overlay"></div>

<div class="card" style="max-width:600px;">
    <h2 class="text-center text-glow">📅 Your Assigned Shifts</h2>
    <hr style="border:1px solid #00d9ff;">

    <%
        ResultSet rs = (ResultSet) request.getAttribute("shifts");
        boolean found = false;
    %>

    <table class="table futuristic-table">
        <tr>
            <th>Shift ID</th>
            <th>Start Time</th>
            <th>End Time</th>
        </tr>

        <%
            if (rs != null) {
                while(rs.next()) {
                    found = true;
        %>
        <tr>
            <td><%= rs.getInt("id") %></td>
            <td><%= rs.getString("start_time") %></td>
            <td><%= rs.getString("end_time") %></td>
        </tr>
        <% 
                }
            }
            if(!found) {
        %>
            <tr><td colspan="3" class="text-center">❌ No shifts assigned yet</td></tr>
        <% } %>
    </table>

    <a href="employeeDashboard.jsp" class="dashboard-btn mt-3">⬅ Back to Dashboard</a>
</div>
</body>
</html>
