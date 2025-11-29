package servlet;

import db.DBConnection;
import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ViewShiftsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = (String) request.getSession().getAttribute("userEmail");

        try (Connection conn = DBConnection.getConnection()) {
            PreparedStatement stmt = conn.prepareStatement(
                "SELECT shifts.id, shifts.start_time, shifts.end_time " +
                "FROM shifts JOIN users ON shifts.employee_id = users.id " +
                "WHERE users.email = ?"
            );
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();

            request.setAttribute("shifts", rs); // send result to JSP
            RequestDispatcher rd = request.getRequestDispatcher("viewShifts.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
