<%-- 
    Document   : changepassword
    Created on : Mar 2, 2024, 2:26:28 AM
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
        <title>Shop bán mô hình One Piece</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
            />
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"
        ></script>
        <style>
            .mb-3{
                -webkit-box-shadow:0px 0px 5px 5px rgba(25,176,48,0.5);
                -moz-box-shadow: 0px 0px 5px 5px rgba(25,176,48,0.5);
                box-shadow: 0px 0px 5px 5px rgba(25,176,48,0.5);
            }
            .beo1:hover{
                background-color: rgb(59, 202, 59) !important;
            }
        </style>
    </head>
    <body>

        <div class="container mt-5">
            <h2>Đổi mật khẩu</h2>
            <br><br>

            <form action="changepassword" method="post">
                <input type="hidden" value="${sessionScope.account.id}" name="id">

                <div class="mb-3">
                    <label for="username" class="form-label">Tên tài khoản:</label>
                    <input type="text" class="form-control" id="username" name="username" value="${sessionScope.account.username}" readonly>
                </div>
                
                <div class="mb-3">
                    <label for="name" class="form-label">Mật khẩu cũ</label>
                    <input type="password" class="form-control" id="name" name="oldpassword">
                </div>
                
                <div class="mb-3">
                    <label for="name" class="form-label">Mật khẩu mới</label>
                    <input type="password" class="form-control" id="name" name="newpassword">
                </div>
                
                <div class="mb-3">
                    <label for="name" class="form-label"> Nhập lại mật khẩu mới</label>
                    <input type="password" class="form-control" id="name" name="renewpassword">
                </div>

                <a href="updateinfo?id=${sessionScope.account.id}">
                    <button type="submit" class="btn btn-primary mb-4 beo1" style="background-color: rgb(18, 139, 18)">Đổi mật khẩu</button>
                </a>
            </form>
                <h5 style="color: red">${requestScope.error}</h5>
        </div>

    </body>
</html>
