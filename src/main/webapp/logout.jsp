<%@ page contentType="text/html;charset=UTF-8" %>
<%
    // Destroy session (logout)
    session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Logged Out</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="overlay"></div>

<div class="container">
    <h2 class="text-glow">You have been logged out</h2>
    <p class="small-text">Thank you for using ShiftManager!</p>
    <a href="login.jsp" class="dashboard-btn">🔑 Login Again</a>
</div>

</body>
</html>
