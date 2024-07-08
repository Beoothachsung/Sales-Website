<%-- 
    Document   : checkout
    Created on : Feb 23, 2024, 1:04:15 AM
    Author     : Duongtuandu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
                            <h1>Cổng thanh toán</h1>
                        </div>
                    </div>
                    <div class="col-lg-7">

                    </div>
                </div>
            </div>
        </div>
        <!-- End Hero Section -->

        <div class="untree_co-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 mb-5 mb-md-0">
                        <h2 class="h3 mb-3 text-black">Chi tiết hóa đơn thanh toán</h2>
                        <div class="p-3 p-lg-5 border bg-white">
                            <div class="form-group">
                                <label for="c_country" class="text-black">Quốc gia <span class="text-danger">*</span></label>
                                <select id="c_country" class="form-control">
                                    <option value="1">Chọn một quốc gia</option>    
                                    <option value="2">Spanish</option>    
                                    <option value="3">England</option>    
                                    <option value="4">Japan</option>    
                                    <option value="5">Korea</option>    
                                    <option value="6">Albania</option>    
                                    <option value="7">Bahrain</option>    
                                    <option value="8">VietNam</option>    
                                    <option value="9">Dominican Republic</option>    
                                </select>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-6">
                                    <label for="c_fname" class="text-black">Tên <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="c_fname" name="c_fname">
                                </div>
                                <div class="col-md-6">
                                    <label for="c_lname" class="text-black">Họ <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="c_lname" name="c_lname">
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <label for="c_companyname" class="text-black">Tên công ty(Nếu có) </label>
                                    <input type="text" class="form-control" id="c_companyname" name="c_companyname">
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <label for="c_address" class="text-black">Địa chỉ <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="c_address" name="c_address" placeholder="Địa chỉ đường phố">
                                </div>
                            </div>

                            <div class="form-group row mb-5">
                                <div class="col-md-6">
                                    <label for="c_email_address" class="text-black">Địa chỉ Email <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="c_email_address" name="c_email_address">
                                </div>
                                <div class="col-md-6">
                                    <label for="c_phone" class="text-black">Số điện thoại <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="c_phone" name="c_phone" placeholder="Số điện thoại">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="c_order_notes" class="text-black">Ghi chú đặt hàng</label>
                                <textarea name="c_order_notes" id="c_order_notes" cols="30" rows="5" class="form-control" placeholder="Viết ghi chú của bạn ở đây..."></textarea>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-6">

                        <div class="row mb-5">
                            <div class="col-md-12">
                                <h2 class="h3 mb-3 text-black">Mã giảm giá</h2>
                                <div class="p-3 p-lg-5 border bg-white">

                                    <label for="c_code" class="text-black mb-3">Nhập mã phiếu giảm giá của bạn nếu bạn có</label>
                                    <div class="input-group w-75 couponcode-wrap">
                                        <input type="text" class="form-control me-2" id="c_code" placeholder="mã giảm giá" aria-label="Coupon Code" aria-describedby="button-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-black btn-sm" type="button" id="button-addon2">Áp dụng</button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="row mb-5">
                            <div class="col-md-12">
                                <h2 class="h3 mb-3 text-black">Đơn hàng của bạn</h2>
                                <div class="p-3 p-lg-5 border bg-white">
                                    <table class="table site-block-order-table mb-5">
                                        <thead>
                                        <th>Sản phẩm</th>
                                        <th>Tổng</th>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${sessionScope.cart}" var="entry">
                                                <tr>
                                                    <td>${entry.value.product.name}<strong class="mx-2">x</strong> ${entry.value.quantity}</td>
                                                    <td>$<fmt:formatNumber value="${entry.value.quantity * entry.value.price}" minFractionDigits="2" maxFractionDigits="2" /></td>
                                                </tr>
                                            </c:forEach>


                                            <tr>
                                                <td class="text-black font-weight-bold"><strong>Tổng số của đơn hàng</strong></td>
                                                <td class="text-black font-weight-bold"><strong>  $<fmt:formatNumber value="${total}" minFractionDigits="2" maxFractionDigits="2" /></strong></td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <div class="border p-3 mb-3">
                                        <h3 class="h6 mb-0"><a class="d-block" data-bs-toggle="collapse" href="#collapsecheque" role="button" aria-expanded="false" aria-controls="collapsecheque">Thanh toán khi nhận hàng</a></h3>

                                        <div class="collapse" id="collapsecheque">
                                            <div class="py-2">
                                                <p class="mb-0">Bạn sẽ thực hiện thanh toán trực tiếp khi nhận được đơn hàng.</p>
                                            </div>
                                        </div>
                                    </div>



                                    <div class="form-group">
                                     <a href="add-to-purchase" class="btn btn-primary pull-right">Thanh toán</a>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- </form> -->
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
