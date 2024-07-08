<%-- 
    Document   : detail
    Created on : Feb 28, 2024, 11:27:44 PM
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
        <meta name="author" content="Untree.co">
        <link rel="shortcut icon" href="favicon.png">
        <title>${requestScope.product.name}</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <style>
            .mb-5{
                border-radius: 3px;
            }
            .tuandu{
                font-weight: bold;
            }
            .card{
                -webkit-box-shadow:0px 0px 5px 5px rgba(25,176,48,0.5);
                -moz-box-shadow: 0px 0px 5px 5px rgba(25,176,48,0.5);
                box-shadow: 0px 0px 5px 5px rgba(25,176,48,0.5);
            }
        </style>
    </head>
    <body>
        <c:set var="p" value="${requestScope.product}"></c:set>

            <section class="py-5">
                <div class="container px-4 px-lg-5 my-5">
                    <div class="row gx-4 gx-lg-5 align-items-center">
                        <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="${p.image}" alt="..." /></div>
                    <div class="col-md-6">
                        <!--<div class="small mb-1">SKU: BST-498</div>-->
                        <h1 class="display-5 fw-bolder">${p.name}</h1>
                        <div class="fs-5 mb-5">
                            <!--<span class="text-decoration-line-through">$45.00</span>-->
                            <h5>Giá bán</h5>
                            <span>$${p.price}</span>
                        </div>
                        <h5>Mô tả</h5>
                        <p class="lead">${p.description}</p>
                        <div class="d-flex">
                            <c:choose>
                                <c:when test="${p.quantity > 0}">
                                    <div class="text-center">
                                        <a class="btn btn-outline-info" href="add-to-cart?id=${p.id}">Add to cart</a>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <span class="btn btn-outline-dark flex-shrink-0 tuandu" style="color: red">Hết hàng</span>
                                </c:otherwise>
                            </c:choose>
                            <a class="btn btn-outline-dark mt-auto" href="shop" style="margin-left: 12px;"
                               >Trở về cửa hàng</a
                            >
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">Sản phẩm liên quan</h2>


                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <c:forEach  begin="1" end="4" var="related" items="${requestScope.related}">
                        <div class="col mb-5">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top" src="${related.image}" alt="..."/>
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">${related.name}</h5>
                                        <!-- Product price-->
                                        $${related.price}
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                        <a class="btn btn-outline-dark mt-auto" href="detail?id=${related.id}"
                                           >Chi tiết</a
                                        >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>
        </section>

    </body>
</html>
