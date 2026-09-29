package com.hms;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");   // USER / DOCTOR / ADMIN

        try (Connection conn = DBUtil.getConnection()) {
            String sql = "SELECT * FROM users WHERE email = ? AND password = ? AND role = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ps.setString(3, role);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("userName", rs.getString("name"));
                session.setAttribute("userRole", rs.getString("role"));

                if ("USER".equals(role)) {
                    response.sendRedirect("user-home.jsp");
                } else if ("DOCTOR".equals(role)) {
                    response.sendRedirect("doctor-home.jsp");
                } else if ("ADMIN".equals(role)) {
                    response.sendRedirect("admin-home.jsp");
                } else {
                    response.sendRedirect("login.jsp?error=1");
                }
            } else {
                response.sendRedirect("login.jsp?error=1");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=1");
        }
    }
}

