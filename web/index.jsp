<%-- 
    Document   : index
    Created on : Feb 22, 2024, 6:12:48 PM
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
    </head>

    <body>

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
        </head>

        <body>

            <!-- Start Header/Navigation -->
            <nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">

                <div class="container">
                    <a class="navbar-brand" href="home">Beoo<span>.</span></a>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>



                    <div class="collapse navbar-collapse" id="navbarsFurni">
                        <ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
                            <li class="nav-item active">
                                <a class="nav-link" href="home">Trang chủ</a>
                            </li>
                            <li><a class="nav-link" href="shop">Cửa hàng</a></li>
                            <li><a class="nav-link" href="about.jsp">Về chúng tôi</a></li>
                            <li><a class="nav-link" href="services.jsp">Dịch vụ</a></li>
                            <li><a class="nav-link" href="blog.jsp">Bài viết</a></li>
                            <li><a class="nav-link" href="contact.jsp">Liên hệ chúng tôi</a></li>
                        </ul>

                        <ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
                            <div class="account">

                                <div class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><img src="images/user.svg"></a>
                                    <div class="dropdown-menu">
                                        <c:if test="${sessionScope.account != null}">
                                            <c:if test="${sessionScope.account.role == 1}">
                                                <a class="dropdown-item" href="manageuser">Quản lý</a>
                                            </c:if>

                                            <a class="dropdown-item" href="account.jsp">Thông tin tài khoản: ${sessionScope.account.username}</a>
                                            <a class="dropdown-item" href="changepassword.jsp">Đổi mật khẩu</a>

                                        </c:if>

                                        <c:if test="${sessionScope.account == null}">
                                            <a class="dropdown-item" href="singup.jsp">Đăng kí</a>
                                            <a class="dropdown-item" href="login.jsp">Đăng nhập</a>
                                        </c:if>

                                        <c:if test="${sessionScope.account != null}">
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="logout">Đăng xuất</a>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
<!--                            <li><a class="nav-link" href="login.jsp"><img src="images/user.svg"></a></li>-->
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
                                <h1>Mô Hình <span clsas="d-block">One Piece</span></h1>
                                <p class="mb-4">Mang nhân vật bạn thích đến gần bạn hơn</p>
                                <p><a href="" class="btn btn-secondary me-2">Mua Ngay</a><a href="shop" class="btn btn-white-outline">Khám Phá</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Hero Section -->

            <!-- Start Product Section -->
            <div class="product-section">
                <div class="container">
                    <div class="row">

                        <!-- Start Column 1 -->
                        <div class="col-md-12 col-lg-3 mb-5 mb-lg-0">
                            <h2 class="mb-4 section-title">Được chế tạo bằng chất liệu cao cấp</h2>
                            <p class="mb-4">Cam kết bảo hành 1 đổi 1 trong vòng 1 năm</p>
                            <p><a href="shop" class="btn">Khám phá</a></p>
                        </div>
                        <!-- End Column 1 -->

                        <!-- Start Column 2 -->
                        <c:forEach items="${listP}" var="o">
                            <div class="col-12 col-md-4 col-lg-3 mb-5 mb-md-0">
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

                        <!-- End Column 2 -->

                    </div>
                </div>
            </div>
            <!-- End Product Section -->

            <!-- Start Why Choose Us Section -->
            <div class="why-choose-section">
                <div class="container">
                    <div class="row justify-content-between">
                        <div class="col-lg-6">
                            <h2 class="section-title">Tại sao chọn chúng tôi</h2>

                            <div class="row my-5">
                                <div class="col-6 col-md-6">
                                    <div class="feature">
                                        <div class="icon">
                                            <img src="images/truck.svg" alt="Image" class="imf-fluid">
                                        </div>
                                        <h3>Vận chuyển nhanh &amp; Miễn phí</h3>
                                    </div>
                                </div>

                                <div class="col-6 col-md-6">
                                    <div class="feature">
                                        <div class="icon">
                                            <img src="images/bag.svg" alt="Image" class="imf-fluid">
                                        </div>
                                        <h3>Dễ dàng mua sắm</h3>
                                    </div>
                                </div>

                                <div class="col-6 col-md-6">
                                    <div class="feature">
                                        <div class="icon">
                                            <img src="images/support.svg" alt="Image" class="imf-fluid">
                                        </div>
                                        <h3>Hỗ trợ 24/7</h3>
                                    </div>
                                </div>

                                <div class="col-6 col-md-6">
                                    <div class="feature">
                                        <div class="icon">
                                            <img src="images/return.svg" alt="Image" class="imf-fluid">
                                        </div>
                                        <h3>Hoàn trả dễ dàng</h3>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="col-lg-5">
                            <div class="img-wrap">
                                <img src="https://m.media-amazon.com/images/I/91QfismwUBL._AC_UF894,1000_QL80_.jpg" alt="Image" class="img-fluid">
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- End Why Choose Us Section -->

            <!-- Start We Help Section -->
            <div class="we-help-section">
                <div class="container">
                    <div class="row justify-content-between">
                        <div class="col-lg-7 mb-5 mb-lg-0">
                            <div class="imgs-grid">
                                <div class="grid grid-1"><img src="https://img.lazcdn.com/g/p/fdf5902a1f1748db9d94856defdd3ec6.jpg_720x720q80.jpg" alt="Untree.co"></div>
                                <div class="grid grid-2"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOrJWTQgo9YXnr21mxWg0KMymZ4Wgdb1vgdg&usqp=CAU" alt="Untree.co"></div>
                                <div class="grid grid-3"><img src="https://bizweb.dktcdn.net/100/418/981/products/guqhgqw-1658215467261.jpg?v=1658743001573" alt="Untree.co"></div>
                            </div>
                        </div>
                        <div class="col-lg-5 ps-lg-5">
                            <h2 class="section-title mb-4">Hỗ trợ khách hàng</h2>

                            <ul class="list-unstyled custom-list my-4">
                                <li>Hướng dẫn mua hàng trực tuyến</li>
                                <li>Hướng dẫn thanh toán</li>
                                <li>Bảo mật thông tin khách hàng</li>
                                <li>Chia sẻ, đóng góp ý kiến</li>
                            </ul>
                            <p><a herf="#" class="btn">Khám phá</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End We Help Section -->

            <!-- Start Popular Product -->
            <div class="popular-product">
                <div class="container">
                    <div class="row">

                        <div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-0">
                            <div class="product-item-sm d-flex">
                                <div class="thumbnail">
                                    <img src="https://bizweb.dktcdn.net/100/418/981/products/10-1ffdda17-26e7-4b88-9f6f-f1044e43cafc.png?v=1648885178593" alt="Image" class="img-fluid">
                                </div>
                                <div class="pt-3">
                                    <h3>Marshall D. Teach</h3>
                                    <p>Một kẻ đầy tham vọng với âm mưu làm vua của thế giới </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-0">
                            <div class="product-item-sm d-flex">
                                <div class="thumbnail">
                                    <img src="https://cf.shopee.vn/file/b1d15e1dad438427f7c46d79927fe230" alt="Image" class="img-fluid">
                                </div>
                                <div class="pt-3">
                                    <h3>Phượng hoàng Marco</h3>
                                    <p>Trái phượng hoàng cho anh ấy khả năng hồi phục gần như bất tử </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-0">
                            <div class="product-item-sm d-flex">
                                <div class="thumbnail">
                                    <img src="https://bizweb.dktcdn.net/100/403/846/files/589-2.jpg?v=1687920910635" alt="Image" class="img-fluid">
                                </div>
                                <div class="pt-3">
                                    <h3>Mihawk Dracule</h3>
                                    <p>Người được mệnh danh là kiếm sĩ mạnh nhất thế giới</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- End Popular Product -->


            <!-- Start Blog Section -->
            <div class="blog-section">
                <div class="container">
                    <div class="row mb-5">
                        <div class="col-md-6">
                            <h2 class="section-title">Bài viết gần đây</h2>
                        </div>
                        <div class="col-md-6 text-start text-md-end">
                            <a href="blog.jsp" class="more">Xem tất cả bài viết</a>
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-12 col-sm-6 col-md-4 mb-4 mb-md-0">
                            <div class="post-entry">
                                <a href="#" class="post-thumbnail"><img src="data:image/jpeg;base64,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" alt="Image" class="img-fluid"></a>
                                <div class="post-content-entry">
                                    <h3><a href="#">Ý tưởng về 3 dô đốc và thủy sư</a></h3>
                                    <div class="meta">
                                        <span>bởi <a href="#">nhà triết học Tuấn dự</a></span> <span>vào <a href="#">20 tháng 2, 2024</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-sm-6 col-md-4 mb-4 mb-md-0">
                            <div class="post-entry">
                                <a href="#" class="post-thumbnail"><img src="data:image/jpeg;base64,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" alt="Image" class="img-fluid"></a>
                                <div class="post-content-entry">
                                    <h3><a href="#">Mô hình băng mũ rơm giảm sập sàn</a></h3>
                                    <div class="meta">
                                        <span>bởi <a href="#">Robert Fox</a></span> <span>vào <a href="#">20 tháng 2, 2024</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-sm-6 col-md-4 mb-4 mb-md-0">
                            <div class="post-entry">
                                <a href="#" class="post-thumbnail"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPszFbO8HYO7Jjq3nycu04IiKKhmW--UT08w&usqp=CAU" alt="Image" class="img-fluid"></a>
                                <div class="post-content-entry">
                                    <h3><a href="#">Biểu tượng băng bách thú đã ra lò</a></h3>
                                    <div class="meta">
                                        <span>bởi <a href="#">Jully D Bane</a></span> <span>vào <a href="#">20 tháng 2, 2024</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- End Blog Section -->	

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

        </body>

    </html>
