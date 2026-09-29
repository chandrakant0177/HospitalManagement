<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String name = (String) session.getAttribute("userName");
    String role = (String) session.getAttribute("userRole");
    if (name == null || !"ADMIN".equals(role)) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h2>Welcome, <%= name %> (Admin)</h2>

<p>Admin can manage doctors, users, appointments (you can extend later).</p>
<a href="login.jsp">Logout</a>
</body>
</html>
