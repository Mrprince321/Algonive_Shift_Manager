<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*, db.DBConnection" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <div class="overlay"></div>

    <%  
        String email = (String) session.getAttribute("userEmail");
        boolean newShift = false;

        if (email != null) {
            try {
                Connection conn = DBConnection.getConnection();

                // 🔥 CHECK ONLY UNVIEWED SHIFTS
                String sql = "SELECT shifts.id AS shift_id FROM shifts " +
                             "JOIN users ON shifts.employee_id = users.id " +
                             "WHERE users.email = ? AND shifts.viewed = FALSE LIMIT 1";

                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, email);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    newShift = true;
                    int shiftId = rs.getInt("shift_id");  // 👈 FIXED

                    // 🔥 MARK AS VIEWED SO ALERT DOESN’T SHOW AGAIN
                    PreparedStatement ps2 = conn.prepareStatement(
                        "UPDATE shifts SET viewed = TRUE WHERE shifts.id = ?"
                    );
                    ps2.setInt(1, shiftId);
                    ps2.executeUpdate();
                }
            } catch (Exception e) {
                out.println("<p style='color:red;'>DB Error: " + e.getMessage() + "</p>");
            }
        }
    %>

    <% if (newShift) { %>
        <div class="alert alert-success futuristic-alert" id="shiftAlert">
            🚀 You have a NEW Shift Assigned!
        </div>
    <% } %>

    <!-- DASHBOARD UI -->
    <div class="dashboard-container">
        <h2 class="dashboard-title">👋 Welcome Employee!</h2>
        <p class="welcome">Your email: <b><%= email %></b></p>

        <div class="dashboard-buttons">
            <a href="viewShifts" class="dashboard-btn">🔍 View My Shifts</a>
            <a href="login.jsp" class="dashboard-btn btn-danger">🚪 Logout</a>
        </div>
    </div>

    <!-- 🔔 SOUND + FADE OUT ALERT -->
    <script>
        const alertBox = document.getElementById("shiftAlert");
        if (alertBox) {
            var audio = new Audio("sounds/newshift.mp3");
            audio.play();

            setTimeout(() => {
                alertBox.style.opacity = "0";
                alertBox.style.transition = "opacity 1s ease";
            }, 4000);
        }
    </script>

</body>
</html>
