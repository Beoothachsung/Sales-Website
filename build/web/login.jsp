<%-- 
    Document   : login
    Created on : Feb 27, 2024, 10:07:18 PM
    Author     : Duongtuandu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="favicon.png">
        <title>Đăng nhập</title>
        <style>

            body {
                font-family: sans-serif;
                margin: 0;
                padding: 0;
                background-color: #fff;
            }

            .container {
                width: 400px;
                margin: 50px auto;
                background-color: rgb(42, 24, 59);
                border-radius: 5px;
                padding: 30px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                -webkit-box-shadow:0px 0px 10px 10px rgba(192,46,255,0.5);
                -moz-box-shadow: 0px 0px 10px 10px rgba(192,46,255,0.5);
                box-shadow: 0px 0px 10px 10px rgba(192,46,255,0.5);
            }

            h1 {
                text-align: center;
                margin-bottom: 20px;
                color: #fff;
            }

            .input-field {
                margin-bottom: 15px;
            }

            .input-field label {
                display: block;
                margin-bottom: 5px;
            }

            .input-field input[type="text"],
            .input-field input[type="password"] {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 3px;
                font-size: 16px;
                background-color: rgb(42, 24, 59);

            }
            .input-field ::placeholder {
                color: #ccc;
            }
            input:focus {
                color: #f2f2f2; /* Màu chữ khi input có focus */
            }
            .checkbox {
                margin-bottom: 15px;
                color: #449d44;
            }

            .checkbox input[type="checkbox"] {
                margin-right: 5px;
            }

            .checkbox label {
                cursor: pointer;
            }

            button[type="submit"] {
                background-color: blueviolet;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
                width: 100%;
            }

            button[type="submit"]:hover {
                background-color: rgb(174, 120, 223);
            }

            a.forgot-password,
            a.signup {
                display: block;
                text-align: center;
                margin-top: 10px;
                color: #008169;
                font-size: 14px;
            }
            .forgot-password{
                color: blueviolet;
            }
            /* a.forgot-password:hover, */
            a.signup:hover {
                text-decoration: underline;
            }
            .lastline {
                text-align: center;
            }
            .lastline-not-member {
                color: #fff; /* Màu chữ cho phần "Not a member?" */
            }

            /* Định dạng màu chữ cho phần "Signup now" */
            .lastline-signup-now a{
                color: blueviolet;
            }
            .lastline-signup-now a:hover{
                color: rgb(174, 120, 223);
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Login Form</h1>
            <div>
                ${username}
            </div>
            <form action="login" method="post">
                <div class="input-field">
                    <input
                        type="text"
                        id="email"
                        name="username"
                        value="${username}"
                        placeholder="Email Address"
                        />
                </div>
                <div class="input-field">
                    <input
                        type="password"
                        id="password"
                        name="password"
                        value="${password}"
                        placeholder="Password"
                        />
                </div>
                <div class="input-field">
                    <input type="checkbox" name="remember" value="1" ${rem =='1' ?'checked':''} />
                    <span class="lastline-not-member">Remember me</span>
                </div>


                <button type="submit">Login</button>
                <p class="lastline">
                    <span class="lastline-not-member">Not a member?</span>
                    <span class="lastline-signup-now"><a href="singup.jsp">Signup now</a></span>
                </p>
                <h2 style="color: red">${err}</h2>
        </div>
    </body>
</html>
