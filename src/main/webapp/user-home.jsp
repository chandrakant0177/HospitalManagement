<%@ page contentType="text/html; charset=UTF-8" %>

<%
    String name = (String) session.getAttribute("userName");
    String role = (String) session.getAttribute("userRole");

    if (name == null || !"USER".equals(role)) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>User Dashboard</title>
</head>

<body style="margin:0; font-family:Arial, sans-serif;">

<div style="
    width:100vw;
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background-color:#e3f2fd;
">

    <div style="
        background:white;
        padding:40px;
        width:420px;
        border-radius:10px;
        box-shadow:0 4px 15px rgba(0,0,0,0.2);
        text-align:center;
    ">

        <h2 style="margin-bottom:20px;">
            Welcome, <%= name %>
        </h2>

        <p style="margin-bottom:30px; color:#555;">
            User Dashboard
        </p>

        <a href="book-appointment.jsp"
           style="
               display:block;
               padding:12px;
               margin-bottom:15px;
               background-color:#28a745;
               color:white;
               text-decoration:none;
               border-radius:5px;
               font-size:18px;
           ">
            Book Appointment
        </a>

        <a href="logout.jsp"
           style="
               display:block;
               padding:12px;
               background-color:#dc3545;
               color:white;
               text-decoration:none;
               border-radius:5px;
               font-size:18px;
           ">
            Logout
        </a>

    </div>

</div>

</body>
</html>
