<%-- 
    Document   : singup
    Created on : Feb 27, 2024, 11:41:58 PM
    Author     : Duongtuandu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="favicon.png">
        <title>Đăng kí</title>
        <style>
            body {
                font-family: sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f2f2f2;
                background-image: url('bg1.jpg');
                background-size: cover;
                margin-top: 200px;
            }

            .form {
                width: 600px;
                height: auto;
                margin: 50px auto;
                background-color: rgb(42, 24, 59);
                border-radius: 10px;
                padding: 30px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                -webkit-box-shadow:0px 0px 10px 10px rgba(192,46,255,0.5);
                -moz-box-shadow: 0px 0px 10px 10px rgba(192,46,255,0.5);
                box-shadow: 0px 0px 10px 10px rgba(192,46,255,0.5);
            }

            h1 {
                text-align: center;
                margin-bottom: 40px;
                color: #f2f2f2;
            }

            .input-field {
                margin-bottom: 15px;
                margin-right: 80px;
                margin: 0px 70px 15px 50px;

            }

            .input-field h3 {
                color: white;
            }

            .line {
                display: flex;
                /* Sử dụng flexbox để các phần tử con được hiển thị trên cùng một dòng */

                /* Căn các phần tử con theo trục dọc */
                /* position: relative; */
            }

            .input-field label {
                display: block;
                margin-bottom: 10px;

            }

            .input-field input[type="text"],
            .input-field input[type="password"] {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 3px;
                font-size: 16px;
                background-color: #13182C;

            }

            .input-field ::placeholder {
                color: #866578;

            }

            input:focus {
                color: #f2f2f2;
                /* Màu chữ khi input có focus */
            }

            .checkbox {
                margin-bottom: 20px;
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

            .forgot-password {
                color: #ccc;
            }

            /* a.forgot-password:hover, */
            a.signup:hover {
                text-decoration: underline;
            }

            .lastline {
                text-align: center;
            }

            .lastline-not-member {
                color: #ccc;
                /* Màu chữ cho phần "Not a member?" */
            }

            /* Định dạng màu chữ cho phần "Signup now" */
            .lastline-signup-now a{
                color: blueviolet;
            }
            .lastline-signup-now a:hover{
                color: rgb(174, 120, 223);
            }
        </style>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var password = document.getElementById("password");
                var confirmPassword = document.querySelector("input[type='password'][placeholder='Xác nhận lại mật khẩu']");
                var errorMessage = document.createElement("p");
                errorMessage.style.color = "red";

                // Function to check if the passwords match
                function validatePasswords() {
                    if (confirmPassword.value !== password.value) {
                        errorMessage.textContent = "Mật khẩu không khớp. Vui lòng nhập lại.";
                        confirmPassword.parentNode.appendChild(errorMessage);
                        confirmPassword.addEventListener("input", removeErrorMessage);
                        return false;
                    } else {
                        removeErrorMessage();
                        return true;
                    }
                }

                function removeErrorMessage() {
                    if (confirmPassword.parentNode.contains(errorMessage)) {
                        confirmPassword.parentNode.removeChild(errorMessage);
                    }
                }

                // Listen for input events on both password fields
                password.addEventListener("input", validatePasswords);
                confirmPassword.addEventListener("input", validatePasswords);

                // Listen for form submission
                document.querySelector("form").addEventListener("submit", function (event) {
                    if (!validatePasswords()) {
                        event.preventDefault(); // Prevent form submission if passwords don't match
                    }
                });
            });
        </script>

    </head>
    <body>

        <div class="form">
            <h1>ĐĂNG KÍ THÀNH VIÊN</h1>
            <form action="singup" method="post">
                <div class="form-column">
                    <div class="input-field">
                        <h3>Tên đăng nhập:</h3>
                        <input type="text" id="username" name="username" placeholder="" />
                    </div>

                    <div class="input-field">
                        <h3>Mật khẩu:</h3>
                        <input type="password" id="password" name="password" placeholder="Nhập mật khẩu" />
                    </div>

                    <div class="input-field">
                        <h3>Nhập lại mật khẩu:</h3>
                        <input type="password" placeholder="Xác nhận lại mật khẩu" />
                    </div>
                </div>

                <div class="form-column">
                    <div class="input-field">
                        <h3>Họ và Tên:</h3>
                        <input type="text" name="name"/>
                    </div>

                    <div class="input-field">
                        <h3>Số điện thoại:</h3>
                        <input type="text" name="phone"/>
                    </div>

                    <div class="input-field">
                        <h3>Email:</h3>
                        <input type="text" name="email" />
                    </div>

                    <div class="input-field">
                        <h3>Địa chỉ:</h3>
                        <input type="text" name="address" />
                    </div>
                </div>
                <h5 style="color: red; align-content: center">${err}</h5>
                <button type="submit">Đăng kí</button>
                <p class="lastline">
                    <span class="lastline-not-member">Bạn đã có tài khoản?</span>
                    <span class="lastline-signup-now"><a href="login.jsp">ĐĂNG NHẬP NGAY</a></span>
                </p>
                <!-- <h2 style="color: red">${err}</h2> -->
            </form>
        </div>
    </body>


</html>
