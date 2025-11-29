package servlet;

import db.DBConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.*;
import javax.servlet.http.*;

public class AssignShiftServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String start_time = request.getParameter("start_time");
        String end_time = request.getParameter("end_time");

        try (Connection conn = DBConnection.getConnection()) {

            // Find user id using email
            String query = "SELECT id FROM users WHERE email=?";
            try (PreparedStatement ps1 = conn.prepareStatement(query)) {
                ps1.setString(1, email);
                ResultSet rs = ps1.executeQuery();

                int userId = -1;
                if (rs.next()) {
                    userId = rs.getInt("id");
                }

                if (userId != -1) {
                    // Insert shift
                    String insertQuery = "INSERT INTO shifts (employee_id, start_time, end_time) VALUES (?, ?, ?)";
                    try (PreparedStatement ps2 = conn.prepareStatement(insertQuery)) {
                        ps2.setInt(1, userId);
                        ps2.setString(2, start_time);
                        ps2.setString(3, end_time);
                        ps2.executeUpdate();
                    }

                    // 🚀 AFTER SUCCESS → SHOW NOTIFICATION
                    response.sendRedirect("adminAssignShift.jsp?success=1");
                } else {
                    // ❌ Email not found → show error
                    response.sendRedirect("adminAssignShift.jsp?error=1");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("adminAssignShift.jsp?error=2");
        }
    }
}
