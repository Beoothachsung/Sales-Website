<%-- 
    Document   : account
    Created on : Mar 2, 2024, 2:09:37 AM
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
            <h2>Thông tin tài khoản</h2>
            <br><br>

            <form action="updateinfo" method="post">
                <input type="hidden" value="${sessionScope.account.id}" name="id">

                <div class="mb-3">
                    <label for="username" class="form-label">Tên tài khoản:</label>
                    <input type="text" class="form-control" id="username" name="username" value="${sessionScope.account.username}" readonly>
                </div>
                <div class="mb-3">
                    <label for="name" class="form-label">Tên:</label>
                    <input type="text" class="form-control" id="name" name="name" value="${sessionScope.account.name}">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" value="${sessionScope.account.email}">
                </div>
                <div class="mb-3">
                    <label for="address" class="form-label">Địa chỉ:</label>
                    <input type="text" class="form-control" id="address" name="address" value="${sessionScope.account.address}">
                </div>
                <div class="mb-3">
                    <label for="phone" class="form-label">Số điện thoại:</label>
                    <input type="tel" class="form-control" id="phone" name="phone" value="${sessionScope.account.phone}">
                </div>
                <div class="mb-3">
                    <label for="role" class="form-label">Vai trò:</label>
                    <input type="text" class="form-control" id="role" name="role" readonly value="${sessionScope.account.role == 1 ? "Admin":"User"}">
                </div>

                <a href="updateinfo?id=${sessionScope.account.id}">
                    <button type="submit" class="btn btn-primary mb-4 beo1" style="background-color: rgb(18, 139, 18)">Lưu thông tin</button>
                </a>
            </form>
        </div>
    </body>
</html>
