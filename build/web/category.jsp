<%-- 
    Document   : category
    Created on : Mar 2, 2024, 1:20:49 AM
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
        <title>Phân loại</title>
        <link rel="shortcut icon" href="favicon.png">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <link href="css/tiny-slider.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <style>
            .custom-navbar-custom-color {
                background-color: #198754 !important;
                margin-bottom: 30px;
            }
            .card{
                -webkit-box-shadow:0px 0px 5px 5px rgba(25,176,48,0.5);
                -moz-box-shadow: 0px 0px 5px 5px rgba(25,176,48,0.5);
                box-shadow: 0px 0px 5px 5px rgba(25,176,48,0.5);
            }
        </style>
    </head>
    <body>
        <!-- Start Header/Navigation -->
        <nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark custom-navbar-custom-color" arial-label="Furni navigation bar">

            <div class="container">
                <a class="navbar-brand" href="index.jsp">Beoo<span>.</span></a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarsFurni">
                    <ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
                        <li class="nav-item ">
                            <a class="nav-link" href="home">Trang chủ</a>
                        </li>
                        <li><a class="nav-link" href="shop">Cửa hàng</a></li>
                        <li><a class="nav-link" href="about.jsp">Về chúng tôi</a></li>
                        <li><a class="nav-link" href="services.jsp">Dịch vụ</a></li>
                        <li><a class="nav-link" href="blog.jsp">Bài viết</a></li>
                        <li><a class="nav-link" href="contact.jsp">Liên hệ chúng tôi</a></li>
                    </ul>

                    <ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
                        <!--						<li><a class="nav-link" href="#"><img src="images/user.svg"></a></li>-->
                        <li><a class="nav-link" href="cart.jsp"><img src="images/cart.svg"></a></li>
                    </ul>
                </div>
            </div>

        </nav>

        <div class="container">

            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                <c:forEach var="p" items="${requestScope.listproduct}">

                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img
                                class="card-img-top"
                                src="${p.image}"
                                alt="..."
                                />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">${p.name}</h5>
                                    <!-- Product price-->
                                    ${p.price}$
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                    <c:choose>
                                        <c:when test="${p.quantity > 0}">
                                            <a class="btn btn-outline-dark mt-auto me-2" href="cart.jsp">Thêm vào giỏ</a>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="btn btn-outline-dark flex-shrink-0 tuandu" style="color: red; font-weight: bold;">Hết hàng</span>
                                        </c:otherwise>
                                    </c:choose>

                                    <a class="btn btn-outline-dark mt-auto" href="detail?id=${p.id}">Chi tiết</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>

    </body>
</html>
