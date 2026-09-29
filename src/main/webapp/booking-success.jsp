<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Appointment Booked</title>
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

        <h2 style="color:#28a745; margin-bottom:20px;">
            Appointment Booked Successfully!
        </h2>

        <p style="color:#555; margin-bottom:30px;">
            Your appointment has been confirmed. We wish you good health.
        </p>

        <a href="user-home.jsp"
           style="
               display:inline-block;
               padding:12px 25px;
               background-color:#007bff;
               color:white;
               text-decoration:none;
               border-radius:5px;
               font-size:16px;
           ">
            Back to Dashboard
        </a>

    </div>

</div>

</body>
</html>
