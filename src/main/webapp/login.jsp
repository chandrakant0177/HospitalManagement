
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
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
        width:400px;
        border-radius:10px;
        box-shadow:0 4px 15px rgba(0,0,0,0.2);
    ">

        <h2 style="text-align:center; margin-bottom:20px;">
            Login
        </h2>

        <% 
            String msg = request.getParameter("msg");
            String error = request.getParameter("error");
            if ("registered".equals(msg)) {
        %>
            <p style="color:green; text-align:center;">
                Registration successful. Please login.
            </p>
        <% 
            } else if ("1".equals(error)) {
        %>
            <p style="color:red; text-align:center;">
                Invalid credentials or role.
            </p>
        <% } %>

        <form action="login" method="post">

            <label>Email</label>
            <input type="email" name="email" required
                   style="width:100%; padding:10px; margin-bottom:15px;">

            <label>Password</label>
            <input type="password" name="password" required
                   style="width:100%; padding:10px; margin-bottom:15px;">

            <label>Login as</label>
            <select name="role"
                    style="width:100%; padding:10px; margin-bottom:25px;">
                <option value="USER">User</option>
                <option value="DOCTOR">Doctor</option>
                <option value="ADMIN">Admin</option>
            </select>

            <button type="submit"
                    style="
                        width:100%;
                        padding:12px;
                        background-color:#007bff;
                        color:white;
                        border:none;
                        font-size:18px;
                        border-radius:5px;
                        cursor:pointer;
                    ">
                Login
            </button>

        </form>

        <p style="text-align:center; margin-top:20px;">
            <a href="index.jsp" style="text-decoration:none; color:#007bff;">
                ← Back to Home
            </a>
        </p>

    </div>

</div>

</body>
</html>
