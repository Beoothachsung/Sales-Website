<%-- 
    Document   : manageproduct
    Created on : Feb 28, 2024, 11:10:54 AM
    Author     : Duongtuandu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop bán mô hình One Piece</title>
        <link rel="shortcut icon" href="favicon.png">
        <style>
            body {
            }

            .nav a {
                text-decoration: none;
                color: black;
            }

            button a {
                text-decoration: none;
                color: black;
            }
            
            .mb-3:hover{
                background-color: rgb(59, 202, 59) !important;
            }
            .me-1:hover{
                background-color: rgb(59, 202, 59) !important;
            }
            .beo1:hover{
                background-color: red !important;
            }
            .table{
                -webkit-box-shadow:0px 0px 5px 5px rgba(25,176,48,0.5);
                -moz-box-shadow: 0px 0px 5px 5px rgba(25,176,48,0.5);
                box-shadow: 0px 0px 5px 5px rgba(25,176,48,0.5);
            }
        </style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </head>
    <body>

        <div class="container m-4">
            <div class="row nav ">
                <a class="col-6" href="manageuser"><h3>Quản lý thành viên</h3></a>
                <a class="col-6" href="manageproduct"><h3>Quản lý sản phẩm</h3></a>

                <!--                <button type="submit" class="btn btn-info btn-sm me-1" style="float:left;">
                                    <a href="url">Quản lý thành viên</a>
                                </button>
                                
                                 <button type="submit" class="btn btn-info btn-sm me-1">
                                    <a href="url">Quản lý sản phẩm</a>
                                </button>-->
            </div>
        </div>

        <div class="container">
            <a href="addproduct.jsp" class="btn btn-primary btn-sm mb-3" style="background-color: rgb(18, 139, 18);"> Thêm sản phẩm</a>
            <a href="home" class="btn btn-primary btn-sm mb-3" style="background-color: rgb(18, 139, 18);"> Trở về trang chủ</a>
            <center>

                <table class="table table-bordered table-striped">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Tên sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Giá</th>
                            <th>Mô tả</th>
                            <th>Hình ảnh</th>
                            <th>Loại</th>
                            <th colspan="2">Action</th>
                        </tr>
                    </thead>
                    <c:forEach var="p" items="${requestScope.listProduct}">


                        <tr>
                            <td>${p.id}</td>
                            <td>${p.name}</td>
                            <td>${p.quantity}</td>
                            <td>${p.price}$</td>
                            <td>${p.description}</td>
                            <td><img style="width: 100px" src="${p.image}" alt="alt"/></td>
                            <td>${p.categoryId}</td>

                            <td>

                                <button type="submit" class="btn btn-info btn-sm me-1" style="float:left; background-color: rgb(18, 139, 18);">
                                    <a href="updateproduct?id=${p.id}">Update</a>
                                </button>

                                <button type="submit" class="btn btn-danger btn-sm beo1" style="background-color: rgb(226, 19, 19)" onclick="if (!(confirm('Are you sure you want to delete this todo?')))
                                            return false">
                                    <a href="deleteproduct?id=${p.id}">Delete</a>
                                </button>

                            </td>
                        </tr>

                    </c:forEach>


                </table>
            </center>

        </div>
    </body>
</html>
