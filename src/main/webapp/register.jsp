<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>ShiftManager | Register</title>

    <!-- SEO -->
    <meta name="description" content="Register as Employee or Admin to manage shifts.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css">

    <!-- CUSTOM STYLE -->
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <!-- 🔵 GLASS BACKGROUND OVERLAY -->
    <div class="overlay"></div>

    <!-- 🔵 NAVBAR -->
    <jsp:include page="navbar.jsp" />

    <!-- 🔵 REGISTRATION FORM CARD -->
    <div class="container mt-4">
        <div class="card shadow-lg p-4 mx-auto animated-card">
            <h3 class="text-center mb-4 text-glow">Employee / Admin Registration</h3>

            <form action="register" method="post">
                <label class="form-label">Name:</label>
                <input type="text" name="name" class="form-control futuristic-input" required>

                <label class="form-label mt-3">Email:</label>
                <input type="email" name="email" class="form-control futuristic-input" required>

                <label class="form-label mt-3">Password:</label>
                <input type="password" name="password" class="form-control futuristic-input" required>

                <label class="form-label mt-3">Role:</label>
                <select name="role" class="form-select futuristic-input">
                    <option value="employee">Employee</option>
                    <option value="admin">Admin</option>
                </select>

                <button class="btn btn-primary w-100 mt-4 futuristic-btn">Register</button>
            </form>

            <p class="text-center mt-3 small-text">
                Already have an account? <a href="login.jsp" class="link-glow">Login Here</a>
            </p>
        </div>
    </div>

</body>
</html>
