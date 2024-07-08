<%-- 
    Document   : manageuser
    Created on : Feb 28, 2024, 12:20:13 AM
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
        <link rel="shortcut icon" href="favicon.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </head>


    <body>
        <%--<%@include file="index.jsp" %>--%>

        <div class="container m-4">
            <div class="row nav ">
                <a class="col-6" href="manageuser"><h3>Quản lý thành viên</h3></a>
                <a class="col-6" href="manageproduct"><h3>Quản lý sản phẩm</h3></a>
            </div>
        </div>

        <div class="container">
            <a href="adduser.jsp" class="btn btn-primary btn-sm mb-3" style="background-color: rgb(18, 139, 18);"> Thêm thành viên</a>
            <a href="home" class="btn btn-primary btn-sm mb-3" style="background-color: rgb(18, 139, 18);"> Trở về trang chủ</a>
            <center>

                <table class="table table-bordered table-striped">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Username</th>
                            <th>Password</th>
                            <th>Email</th>                            
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Address</th>
                            <th colspan="2">Action</th>
                        </tr>
                    </thead>
                    <c:forEach var="u" items="${requestScope.listUser}">
                        <c:if test="${u.role == 2}">


                            <tr>
                                <td>${u.id}</td>
                                <td>${u.username}</td>
                                <td>${u.password}</td>
                                <td>${u.email}</td>
                                <td>${u.name}</td>
                                <td>${u.phone}</td>

                                <td>${u.address}</td>
                                <td>

                                    <button type="submit" class="btn btn-info btn-sm me-1" style="float:left; background-color: rgb(18, 139, 18);">
                                        <a href="updateuser?id=${u.id}">Update</a>
                                    </button>

                                    <button type="submit" class="btn btn-danger btn-sm beo1" style="background-color: rgb(226, 19, 19)"  onclick="if (!(confirm('Are you sure you want to delete this todo?')))
                                                return false">
                                        <a href="deleteuser?id=${u.id}">Delete</a>
                                    </button>

                                </td>
                            </tr>

                        </c:if>
                    </c:forEach>
                    <tbody>


                    </tbody>

                </table>
            </center>

        </div>
    </body>


</html>
