<%-- 
    Document   : updateuser
    Created on : Feb 28, 2024, 1:23:11 AM
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
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"><!-- comment -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container center">

            <h3>Quản lý người dùng</h3>
            <hr>

            <p class="h4 mb-4">Chỉnh sửa người dùng</p>
            <form action="updateuser" method="post">
                
                <input type="hidden" name="id" value="${requestScope.user.id}"/>

                <input type="text" class="form-control mb-4 w-25" placeholder="Tên đăng nhập" name="username" value="${requestScope.user.username}" readonly=""/>

                <input type="text" class="form-control mb-4 w-25" placeholder="Mật khẩu" name="password" value="${requestScope.user.password}"/>

                <input type="text" class="form-control mb-4 w-25" placeholder="Họ và tên" name="name" value="${requestScope.user.name}"/>
                <input type="text" class="form-control mb-4 w-25" placeholder="Số điện thoại" name="phone" value="${requestScope.user.phone}"/>
                <input type="text" class="form-control mb-4 w-25" placeholder="Email" name="email" value="${requestScope.user.email}"/>
                <input type="text" class="form-control mb-4 w-25" placeholder="Địa chỉ" name="address" value="${requestScope.user.address}"/>

                <h5 style="color: red; align-content: center">${err}</h5>
                <input class="btn btn-primary" type="submit" value="Sửa người dùng">

            </form>

            <a class="mb-3" style="text-decoration: none" href="manageuser">Trở lại danh sách thành viên</a>
        </div>
    </body>
</html>
