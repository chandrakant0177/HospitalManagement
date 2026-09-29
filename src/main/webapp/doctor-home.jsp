<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String name = (String) session.getAttribute("userName");
    String role = (String) session.getAttribute("userRole");
    if (name == null || !"DOCTOR".equals(role)) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<html>
<head>
    <title>Doctor Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h2>Welcome, Dr. <%= name %> (Doctor)</h2>

<p>Here doctor can view appointments (you can add listing later).</p>
<a href="login.jsp">Logout</a>
</body>
</html>
