<%@ page import="java.io.*" %>
<%
    String currentPage = request.getRequestURI();
%>

<div class="navbar-custom">
    <a href="index.jsp"     class="<%= currentPage.contains("index.jsp") ? "active" : "" %>">Home</a>
    <a href="login.jsp"     class="<%= currentPage.contains("login.jsp") ? "active" : "" %>">Login</a>
    <a href="register.jsp"  class="<%= currentPage.contains("register.jsp") ? "active" : "" %>">Register</a>
    <a href="logout.jsp"    class="<%= currentPage.contains("logout.jsp") ? "active" : "" %>">Logout</a>
</div>
