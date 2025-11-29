<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Assign Shift</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <div class="overlay"></div>

    <div class="container mt-5">
        <div class="card shadow p-4 animated-card" style="max-width: 450px;">
            <h2 class="text-center text-glow mb-4">Assign Shift</h2>

            <!-- 🚨 SUCCESS / ERROR ALERT -->
            <% if (request.getParameter("success") != null) { %>
                <div class="alert alert-success futuristic-alert" id="notificationBox">
                    ✔ Shift Assigned Successfully!
                </div>
            <% } %>
            <% if (request.getParameter("error") != null) { %>
                <div class="alert alert-danger futuristic-alert" id="notificationBox">
                    ❌ Error! Invalid Email or DB Issue.
                </div>
            <% } %>

            <!-- 🌟 ASSIGN SHIFT FORM -->
            <form action="assignShift" method="post">
                <label>Employee Email:</label>
                <input type="text" name="email" class="form-control" placeholder="employee@example.com" required>

                <label class="mt-3">Start Time:</label>
                <input type="text" name="start_time" class="form-control" placeholder="2025-02-10 09:00:00" required>

                <label class="mt-3">End Time:</label>
                <input type="text" name="end_time" class="form-control" placeholder="2025-02-10 17:00:00" required>

                <button class="btn btn-primary w-100 mt-4 futuristic-btn">Assign Shift</button>
            </form>

            <a href="adminDashboard.jsp" class="text-glow mt-3 d-block text-center">⬅ Back to Dashboard</a>
        </div>
    </div>

    <!-- 🔔 SOUND + AUTO FADE NOTIFICATION -->
    <script>
        const alertBox = document.getElementById("notificationBox");

        if (alertBox) {
            // Play notification sound
            var audio = new Audio("sounds/success.mp3");  // Place this file inside "webapp/sounds/"
            audio.play();

            // Fade out after 3 seconds
            setTimeout(() => {
                alertBox.style.opacity = "0";
                alertBox.style.transition = "opacity 1s ease";
            }, 3000);
        }
    </script>

</body>
</html>
