<%-- 
    Document   : shop
    Created on : Feb 22, 2024, 6:13:54 PM
    Author     : Duongtuandu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="author" content="Untree.co">
        <link rel="shortcut icon" href="favicon.png">

        <meta name="description" content="" />
        <meta name="keywords" content="bootstrap, bootstrap4" />

        <!-- Bootstrap CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <link href="css/tiny-slider.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <title>Shop bán mô hình One Piece</title>
        <style>
            .pagination {
                float: right;
                margin: 0 0 5px;
            }
            .pagination li a {
                border: none;
                font-size: 13px;
                min-width: 30px;
                min-height: 30px;
                color: #999;
                margin: 0 2px;
                line-height: 30px;
                border-radius: 2px !important;
                text-align: center;
                padding: 0 6px;
            }
            .pagination li a:hover {
                color: #666;
            }
            .pagination li.active a, .pagination li.active a.page-link {
                background: #03A9F4;
            }
            .pagination li.active a:hover {
                background: #0397d6;
            }
            .pagination li.disabled i {
                color: #ccc;
            }
            .pagination li i {
                font-size: 16px;
                padding-top: 6px
            }

            .pagination {
                display: inline-block;
                list-style: none;
                padding: 0;
                margin: 20px 0;
            }

            .pagination li {
                display: inline;
                margin: 0 5px;
            }

            .pagination a {
                color: #198754;
                text-decoration: none;
                padding: 5px 10px;
                border: 1px solid #198754;
                border-radius: 3px;
            }

            .pagination a.active,
            .pagination a:hover {
                background-color: #198754;
                color: white;
            }

            .pagination .page-item.disabled a {
                color: #6c757d;
                pointer-events: none;
            }

            .pagination .page-item.disabled a:hover {
                background-color: transparent;
            }

            .pagination .page-item.disabled a {
                background-color: #f8f9fa;
                border-color: #dee2e6;
            }

            .pagination li {
                display: inline-block;
            }

            .pagination li a {
                display: inline-block;
                padding: 5px 10px;
            }

            .pagination li.page-item.disabled a {
                color: #6c757d;
            }

            .pagination li.page-item.disabled a:hover {
                background-color: transparent;
            }
            .title:hover{
                background-color: rgb(59, 202, 59) !important;
            }

        </style>
    </head>

    <body>

        <!-- Start Header/Navigation -->
        <nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">

            <div class="container">
                <a class="navbar-brand" href="">Beoo<span>.</span></a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarsFurni">
                    <ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
                        <li class="nav-item ">
                            <a class="nav-link" href="home">Trang chủ</a>
                        </li>
                        <li class="active"><a class="nav-link" href="shop">Cửa hàng</a></li>
                        <li><a class="nav-link" href="about.jsp">Về chúng tôi</a></li>
                        <li><a class="nav-link" href="services.jsp">Dịch vụ</a></li>
                        <li><a class="nav-link" href="blog.jsp">Bài viết</a></li>
                        <li><a class="nav-link" href="contact.jsp">Liên hệ chúng tôi</a></li>
                    </ul>

                    <ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
                        <!--                        <li><a class="nav-link" href="#"><img src="images/user.svg"></a></li>-->
                        <li><a class="nav-link" href="cart.jsp"><img src="images/cart.svg"></a></li>
                    </ul>
                </div>


            </div>

        </nav>
        <!-- End Header/Navigation -->

        <!-- Start Hero Section -->
        <div class="hero">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-lg-5">
                        <div class="intro-excerpt">
                            <h1>Beoo <span clsas="d-block">One Piece</span></h1>
                            <p class="mb-4">Cửa hàng bán mô hình One Piece chất lượng cao nhất Việt Nam</p>
                            <p><a href="shop" class="btn btn-secondary me-2">Mua Ngay</a><a href="shop" class="btn btn-white-outline">Khám Phá</a></p>
                        </div>
                    </div>
                    <div class="col-lg-7">

                    </div>
                </div>
            </div>
        </div>
        <!-- End Hero Section -->



        <div  class="untree_co-section product-section before-footer-section">
            <div class="container">
                <div class="beoo">
                    <div class="beoo_menu">
                        <div id="mySidenav" class="sidenav">
                            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                            <a href="category?cid=1">Mô hình Hải Quân</a>
                            <a href="category?cid=2">Mô hình Hải Tặc</a>
                            <a href="category?cid=3">Mô hình Shichibukai</a>
                            <a href="category?cid=4">Mô hình Quân cách mạng</a>
                            <a href="category?cid=5">Mô hình Tứ Hoàng</a>
                            <a href="category?cid=6">Mô hình Siêu tân binh</a>
                        </div>

                        <span onclick="openNav()" style="padding: 10px; font-size: 18px">&#9776; Danh mục sản phẩm</span>
                    </div>

                    <!-- <div class="beoo_logo">
                            <a href="shop.html"><img src="favicon.png"></a>
                    </div> -->


                    <div class="beoo_search">
                        <form action="search" method="get">
                            <input type="text" name="txt" placeholder="Tìm kiếm" style="padding: 10px; font-size: 18px">
                            <button type="submit" style="padding: 10px; font-size: 18px">Search</button>
                        </form>
                    </div>

                </div>
                <div class="row-left">
                    <div class="product-filter-container">
                        <div class="filter-item">
                            <div class="box-title-container" style="margin-bottom: 25px">
                                <p class="box-title">KHOẢNG GIÁ</p>
                            </div>
                            <div class="filter-list">

                                <a class="title" style="margin-right: 30px; text-decoration: none; padding: 10px; font-size: 18px" href="sort" >Tăng dần</a>

                                <a class="title" href="sortreduce" style="text-decoration: none; padding: 10px; font-size: 18px">Giảm dần</a>

                            </div>

                        </div>
                    </div>
                </div>

                <div class="row">

                    <!-- Start Column 1 -->
                    <c:forEach items="${requestScope.listP}" var="o">
                        <div class="col-12 col-md-4 col-lg-3 mb-5">
                            <a class="product-item" href="detail?id=${o.id}">
                                <img src="${o.image}" class="img-fluid product-thumbnail">
                                <h3 class="product-title">${o.name}</h3>
                                <strong class="product-price">$${o.price}</strong>

                                <span class="icon-cross">
                                    <img src="images/cross.svg" class="img-fluid">
                                </span>
                            </a>
                        </div>
                    </c:forEach>

                    <div class="clearfix">
                        <ul class="pagination">
                            <c:if test="${tag > 1}">
                                <li class="page-item"><a href="shop?index=${tag-1}">Previous</a></li>
                                </c:if>
                                <c:forEach begin="1" end="${endP}" var="i">
                                <li><a class="${tag == i? "active":""}" href="shop?index=${i}" class="page-link">${i}</a></li>      
                                </c:forEach>
                                <c:if test="${tag < endP}">
                                <li class="page-item"><a href="shop?index=${tag+1}" class="page-link">Next</a></li>
                                </c:if>
                        </ul>
                    </div>

                </div>
            </div>
        </div>


        <!-- Start Footer Section -->
        <footer class="footer-section">
            <div class="container relative">
                <div class="border-top copyright">
                    <div class="row pt-4">
                        <div class="col-lg-6">
                            <p class="mb-2 text-center text-lg-start">Công ty trách nhiệm hữu hạn Tuấn Dự &copy;<script>document.write(new Date().getFullYear());</script>. Địa chỉ : Quận cầu giấy, Hà Nội, Việt Nam &mdash; Được thiết kế bởi <a href="https://untree.co">Dương</a> Tuấn <a hreff="https://themewagon.com">Dự</a>  <!-- License information: https://untree.co/license/ -->
                            </p>
                        </div>

                        <div class="col-lg-6 text-center text-lg-end">
                            <ul class="list-unstyled d-inline-flex ms-auto">
                                <li class="me-4"><a href="#">Điều khoản &amp; Điều kiện</a></li>
                                <li><a href="#">Chính sách bảo mật</a></li>
                            </ul>
                        </div>

                    </div>
                </div>

            </div>
        </footer>
        <!-- End Footer Section -->	


        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/tiny-slider.js"></script>
        <script src="js/custom.js"></script>
        <script src="js/mycode.js"></script>
    </body>

</html>
