<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="overlay"></div> <!-- Glass effect -->

    <!-- DASHBOARD CONTAINER -->
    <div class="dashboard-container">

        <h2 class="dashboard-title">👨‍💼 Admin Dashboard</h2>
        <p class="welcome">Welcome, <%= session.getAttribute("userName") %>!</p>

        <!-- BUTTON SECTION -->
        <div class="dashboard-buttons">
            <a href="adminAssignShift.jsp" class="dashboard-btn">📅 Assign Shift</a>
            <a href="viewShifts.jsp" class="dashboard-btn">📊 View All Shifts</a>
            <a href="logout.jsp" class="dashboard-btn btn-danger">🚪 Logout</a>
        </div>

    </div>
</body>
</html>
