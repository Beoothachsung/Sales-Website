<%-- 
    Document   : addproduct
    Created on : Feb 28, 2024, 12:32:21 AM
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

        <div class="container center">

            <h3>Quản lý sản phẩm</h3>
            <hr>

            <p class="h4 mb-4">Thêm mới sản phẩm</p>
            <form action="addproduct" method="post">
                <label for="name">Tên sản phẩm:</label>
                <input type="text" class="form-control mb-4 w-25" placeholder="Tên sản phẩm" name="name"/>

                <label for="quantity">Số lượng:</label>
                <input type="text" class="form-control mb-4 w-25" placeholder="Số lượng" name="quantity"/>

                <label for="price">Giá sản phẩm:</label>
                <input type="text" class="form-control mb-4 w-25" placeholder="Giá sản phẩm" name="price"/>

                <label for="description">Mô tả:</label>
                <input type="text" class="form-control mb-4 w-25" placeholder="Mô tả" name="description"/>

                <label for="image">Địa chỉ ảnh:</label>
                <input type="text" class="form-control mb-4 w-25" placeholder="Địa chỉ ảnh" name="image"/>

                <label for="type">Loại:</label>
                <select class="form-control mb-4 w-25" name="category_id">
                    <option value="1">Mô hình Hải Quân</option>
                    <option value="2">Mô hình Hải Tặc</option>
                    <option value="3">Mô hình Shichibukai</option>
                    <option value="4">Mô hình Quân cách mạng</option>
                    <option value="5">Mô hình Tứ Hoàng</option>
                    <option value="6">Mô hình Siêu tân binh</option>
                </select>

                <input class="btn btn-primary" type="submit" value="Thêm sản phẩm">
            </form>

            <a class="mb-3" style="text-decoration: none" href="manageproduct">Trở lại danh sách sản phẩm</a>
        </div>
    </body>
</html>