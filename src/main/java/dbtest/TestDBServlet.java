package dbtest;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBConnection;

public class TestDBServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();

        try {
            Connection conn = DBConnection.getConnection();
            if (conn != null) {
                out.println("Database Connection Successful!");
            } else {
                out.println("Database Connection Failed!");
            }
        } catch (Exception e) {
            e.printStackTrace(out);
        }
    }
}
