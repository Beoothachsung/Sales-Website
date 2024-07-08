<%--
    Document   : adduser
    Created on : Feb 28, 2024, 12:21:26 AM
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
        <title>Shop bán mô hình One Piece</title>
        <link rel="shortcut icon" href="favicon.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"><!-- comment -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </head>
    <body>
        <%--<%@include file="index.jsp" %>--%>

        <div class="container center">

            <h3>Quản lý người dùng</h3>
            <hr>

            <p class="h4 mb-4">Thêm mới người dùng</p>
            <form action="adduser" method="post">

                <input type="text" class="form-control mb-4 w-25" placeholder="Tên đăng nhập" name="username"/>

                <input type="text" class="form-control mb-4 w-25" placeholder="Mật khẩu" name="password"/>

                <input type="text" class="form-control mb-4 w-25" placeholder="Họ và tên" name="name"/>
                <input type="text" class="form-control mb-4 w-25" placeholder="Số điện thoại" name="phone"/>
                <input type="text" class="form-control mb-4 w-25" placeholder="Email" name="email"/>
                <input type="text" class="form-control mb-4 w-25" placeholder="Địa chỉ" name="address"/>

                <h5 style="color: red; align-content: center">${err}</h5>
                <input class="btn btn-primary" type="submit" value="Them nguoi dung">
                <!--<button type="submit" class="btn btn-info col-2 mb-4">Thêm người dùng</button>-->

            </form>

            <a class="mb-3" style="text-decoration: none" href="manageuser">Trở lại danh sách thành viên</a>
        </div>
    </body>
</html>
