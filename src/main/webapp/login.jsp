<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>ShiftManager | Login</title>

    <!-- Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap (Responsive) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css">

    <!-- Custom Style -->
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="overlay"></div> <!-- Background Blur Effect -->

    <div class="container mt-5">
        <div class="card shadow animated-card p-4 mx-auto" style="max-width: 450px;">
            <h2 class="text-center text-glow mb-4">Login</h2>

            <!-- Login Error Handler -->
            <% if (request.getParameter("error") != null) { %>
                <div class="alert alert-danger text-center">
                    ❌ Invalid Email or Password
                </div>
            <% } %>

            <% if (request.getParameter("success") != null) { %>
                <div class="alert alert-success text-center">
                    ✔ Registration Successful! Login now.
                </div>
            <% } %>

            <!-- Login Form -->
            <form action="login" method="post" class="form-box">
                <label class="form-label">Email:</label>
                <input type="email" name="email" class="form-control futuristic-input" required>

                <label class="form-label mt-3">Password:</label>
                <input type="password" name="password" class="form-control futuristic-input" required>

                <button class="btn btn-primary w-100 mt-4 futuristic-btn">Login</button>
            </form>

            <p class="text-center small-text mt-3">
                Don’t have an account? <a href="register.jsp" class="link-glow">Register Here</a>
            </p>
        </div>
    </div>
</body>
</html>
