package com.hms;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/bookAppointment")
public class BookAppointmentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userName = request.getParameter("user_name");
        String ageStr = request.getParameter("age");
        String disease = request.getParameter("disease");
        String address = request.getParameter("address");
        String date = request.getParameter("appointment_date"); // yyyy-mm-dd

        int age = 0;
        try {
            age = Integer.parseInt(ageStr);
        } catch (Exception e) {
            age = 0;
        }

        try (Connection conn = DBUtil.getConnection()) {
            String sql = "INSERT INTO appointments (user_name, age, disease, address, appointment_date) " +
                         "VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, userName);
            ps.setInt(2, age);
            ps.setString(3, disease);
            ps.setString(4, address);
            ps.setString(5, date);

            int rows = ps.executeUpdate();
            if (rows > 0) {
                response.sendRedirect("booking-success.jsp");
            } else {
                response.sendRedirect("book-appointment.jsp?error=1");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("book-appointment.jsp?error=1");
        }
    }
}
