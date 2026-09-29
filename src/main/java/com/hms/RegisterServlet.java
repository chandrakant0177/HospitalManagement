
package com.hms;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String ageStr = request.getParameter("age");
        String address = request.getParameter("address");

        int age = 0;
        try {
            age = Integer.parseInt(ageStr);
        } catch (Exception e) {
            age = 0;
        }

        try (Connection conn = DBUtil.getConnection()) {
            String sql = "INSERT INTO users (name, email, password, role, age, address) VALUES (?, ?, ?, 'USER', ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setInt(4, age);
            ps.setString(5, address);

            int rows = ps.executeUpdate();
            if (rows > 0) {
                // redirect to login page
                response.sendRedirect("login.jsp?msg=registered");
            } else {
                response.sendRedirect("register.jsp?error=1");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("register.jsp?error=1");
        }
    }
}
