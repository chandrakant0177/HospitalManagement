<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
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

        <h2 style="text-align:center; margin-bottom:25px;">
            User Registration
        </h2>

        <form action="register" method="post">

            <label>Name</label>
            <input type="text" name="name" required
                   style="width:100%; padding:10px; margin-bottom:15px;">

            <label>Email</label>
            <input type="email" name="email" required
                   style="width:100%; padding:10px; margin-bottom:15px;">

            <label>Password</label>
            <input type="password" name="password" required
                   style="width:100%; padding:10px; margin-bottom:15px;">

            <label>Age</label>
            <input type="number" name="age"
                   style="width:100%; padding:10px; margin-bottom:15px;">

            <label>Address</label>
            <input type="text" name="address"
                   style="width:100%; padding:10px; margin-bottom:25px;">

            <button type="submit"
                    style="
                        width:100%;
                        padding:12px;
                        background-color:#28a745;
                        color:white;
                        border:none;
                        font-size:18px;
                        border-radius:5px;
                        cursor:pointer;
                    ">
                Register
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
