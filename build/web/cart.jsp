<%-- 
    Document   : cart
    Created on : Feb 23, 2024, 1:02:46 AM
    Author     : Duongtuandu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
            .delete{
                padding: 8px;
                border-radius: 4px;
                border: 2px solid #000;
                text-decoration: none;
            }
            .delete:hover{
                background-color: red;
            }
            .update{
                border-radius: 4px;
            }
            .update:hover{
                background-color: rgb(18, 139, 18);
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
        <!-- End Header/Navigation -->

        <!-- Start Hero Section -->
        <div class="hero">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-lg-5">
                        <div class="intro-excerpt">
                            <h1>Giỏ hàng</h1>
                        </div>
                    </div>
                    <div class="col-lg-7">

                    </div>
                </div>
            </div>
        </div>
        <!-- End Hero Section -->



        <div class="untree_co-section before-footer-section">
            <div class="container">
                <div class="row mb-5">
                    <div class="site-blocks-table">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="product-thumbnail">Hình ảnh</th>
                                    <th class="product-name">Sản phẩm</th>
                                    <th class="product-price">Số lượng</th>
                                    <th class="product-quantity">Giá</th>
                                    <th class="product-total">Tổng</th>
                                    <th class="product-remove">Xóa bỏ</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${sessionScope.cart}" var="entry">
                                    <tr>
                                        <td>${entry.value.product.name}</td>
                                        <td><img src="${entry.value.product.image}" alt="Product Image" width="100"></td>
                                        <td>
                                            <form action="processcart" method="get"> 
                                                <input type="number" class="quantity" name="quantity" value="${entry.value.quantity}" min="0" max="${entry.value.product.quantity}" required style="width: 50px;" oninput="this.value = Math.min(this.value, ${entry.value.product.quantity})">                                                               
                                                <input type="hidden" class="quantity" name="id" value="${entry.value.product.id}" >
                                                <input type="hidden" class="quantity" name="id" value="${entry.value.product.id}">
                                                <button class="update" type="submit">Update</button>
                                            </form>                                                       
                                        </td>
                                        <td>$${entry.value.price}</td>
                                        <td>$<fmt:formatNumber value="${entry.value.quantity * entry.value.price}" minFractionDigits="2" maxFractionDigits="2" /></td>
                                        <td>
                                            <a class="delete" href="deleteorder?key=${entry.key}" onclick="if (!(confirm('Are you sure you want to delete this todo?')))
                                            return false">Xóa bỏ</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="row mb-5">

                            <div class="col-md-6">
                                <a class="btn btn-outline-black btn-sm btn-block" href="shop">Tiếp tục mua sắm</a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <label class="text-black h4" for="coupon">Phiếu</label>
                                <p>Nhập mã phiếu giảm giá của bạn nếu bạn có.</p>
                            </div>
                            <div class="col-md-8 mb-3 mb-md-0">
                                <input type="text" class="form-control py-3" id="coupon" placeholder="Mã giảm giá">
                            </div>
                            <div class="col-md-4">
                                <button class="btn btn-black">Áp dụng phiếu giảm giá</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 pl-5">
                        <div class="row justify-content-end">
                            <div class="col-md-7">
                                <div class="row">
                                    <div class="col-md-12 text-right border-bottom mb-5">
                                        <h3 class="text-black h4 text-uppercase">Tổng giỏ hàng</h3>
                                    </div>
                                </div>

                                <div class="row mb-5">
                                    <div class="col-md-6">
                                        <span class="text-black">Tổng</span>
                                    </div>
                                    <div class="col-md-6 text-right">
                                        $<fmt:formatNumber value="${total}" minFractionDigits="2" maxFractionDigits="2" />
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <button class="btn btn-black btn-lg py-3 btn-block" onclick="window.location = 'checkout.jsp'">Tiến hành thanh toán</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- Start Footer Section -->
        <footer class="footer-section">
            <div class="container relative">


                <div class="row">
                    <div class="col-lg-8">
                        <div class="subscription-form">
                            <h3 class="d-flex align-items-center"><span class="me-1"><img src="images/envelope-outline.svg" alt="Image" class="img-fluid"></span><span>Đăng kí tin</span></h3>

                            <form action="#" class="row g-3">
                                <div class="col-auto">
                                    <input type="text" class="form-control" placeholder="Enter your name">
                                </div>
                                <div class="col-auto">
                                    <input type="email" class="form-control" placeholder="Enter your email">
                                </div>
                                <div class="col-auto">
                                    <button class="btn btn-primary">
                                        <span class="fa fa-paper-plane"></span>
                                    </button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>



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
    </body>

</html>
