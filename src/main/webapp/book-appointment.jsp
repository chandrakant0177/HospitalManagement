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
    <title>Book Appointment</title>
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
        width:450px;
        border-radius:10px;
        box-shadow:0 4px 15px rgba(0,0,0,0.2);
    ">

        <h2 style="text-align:center; margin-bottom:25px;">
            Book Appointment
        </h2>

        <form action="bookAppointment" method="post">

            <label>User Name</label>
            <input type="text" name="user_name"
                   value="<%= name %>" readonly
                   style="width:100%; padding:10px; margin-bottom:15px;">

            <label>Age</label>
            <input type="number" name="age" required
                   style="width:100%; padding:10px; margin-bottom:15px;">

            <label>Disease</label>
            <input type="text" name="disease" required
                   style="width:100%; padding:10px; margin-bottom:15px;">

            <label>Address</label>
            <input type="text" name="address" required
                   style="width:100%; padding:10px; margin-bottom:15px;">

            <label>Appointment Date</label>
            <input type="date" name="appointment_date" required
                   style="width:100%; padding:10px; margin-bottom:25px;">

            <button type="submit"
                    style="
                        width:100%;
                        padding:12px;
                        background-color:#17a2b8;
                        color:white;
                        border:none;
                        font-size:18px;
                        border-radius:5px;
                        cursor:pointer;
                    ">
                Book Appointment
            </button>

        </form>

        <p style="text-align:center; margin-top:20px;">
            <a href="user-home.jsp" style="text-decoration:none; color:#007bff;">
                ← Back to Dashboard
            </a>
        </p>

    </div>

</div>

</body>
</html>
