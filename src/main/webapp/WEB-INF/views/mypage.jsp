<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">
<meta charset="UTF-8">
<title>TechNova</title>
<head>
</head>

<body>

    <%@ include file="header.jsp" %>

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links" style="">
                        <a href="./index.html"><i class="fa fa-home"></i>Home</a>
                        <a href="./index.html">마이페이지</a>
                        <span style="">주문목록</span>
                        <span style="width: 750px"></span>
                        <button type="submit" class="site-btn" onclick="windowOpen()">주소지 관리</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Cart Section Begin -->
    <section class="shop-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shop__cart__table">
                    
             			<c:forEach var="buy" items="${buy_list}">
	                        <table style="margin: 0 0 70px 0">
	                            <thead>
	                                <tr>
	                                    <th>${buy.buy_regdate}</th>
	                                </tr>
	                            </thead>
	                            <c:forEach var="buydetail" items="${buy_detail_list}">
							  	<c:if test="${buy.buy_no == buydetail.buydetail_buyno}">
	  							  	<c:forEach var="buydetailProduct" items="${buy_detail_product_list}">
	  									  	<c:if test="${buydetail.buydetail_productid == buydetailProduct.product_id}">
											  	<tbody>
					                                <tr>
					                                    <td class="cart__product__item">
					                                        <img src="${pageContext.request.contextPath}/resources/img/shop-cart/cp-1.jpg" alt="">
					                                        <div class="cart__product__item__title">
					                                            <h6>${buydetailProduct.product_name}</h6>
					                                            <div class="rating">
					                                                <i class="fa fa-star"></i>
					                                                <i class="fa fa-star"></i>
					                                                <i class="fa fa-star"></i>
					                                                <i class="fa fa-star"></i>
					                                                <i class="fa fa-star"></i>
					                                            </div>
					                                        </div>
					                                    </td>
					                                    <td class="cart__price">${buydetailProduct.product_price}</td>
					                                    <td class="cart__quantity">${buydetail.buydetail_amount}개</td>
					                                    <td class="cart__total" style="text-align: center;"> 합계 <br> ${buydetailProduct.product_price * buydetail.buydetail_amount}</td>
					                                    <td class="cart__close"><span class="icon_close">취소</span></td>
					                                    <td class="cart__close"><a href="/product/review?product_id=${buydetailProduct.product_id}">상품평 작성</a></td>
					                                </tr>
					                             </tbody>
				  							 </c:if>					  	
			  						  </c:forEach>
							  	   </c:if>					  	
						        </c:forEach>   
	                         </table>    
                         </c:forEach>	
                                

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Cart Section End -->

    <!-- Instagram Begin -->
    <div class="instagram">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                    <div class="instagram__item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/instagram/insta-1.jpg">
                        <div class="instagram__text">
                            <i class="fa fa-instagram"></i>
                            <a href="#">@ ashion_shop</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                    <div class="instagram__item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/instagram/insta-2.jpg">
                        <div class="instagram__text">
                            <i class="fa fa-instagram"></i>
                            <a href="#">@ ashion_shop</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                    <div class="instagram__item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/instagram/insta-3.jpg">
                        <div class="instagram__text">
                            <i class="fa fa-instagram"></i>
                            <a href="#">@ ashion_shop</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                    <div class="instagram__item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/instagram/insta-4.jpg">
                        <div class="instagram__text">
                            <i class="fa fa-instagram"></i>
                            <a href="#">@ ashion_shop</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                    <div class="instagram__item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/instagram/insta-5.jpg">
                        <div class="instagram__text">
                            <i class="fa fa-instagram"></i>
                            <a href="#">@ ashion_shop</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                    <div class="instagram__item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/instagram/insta-6.jpg">
                        <div class="instagram__text">
                            <i class="fa fa-instagram"></i>
                            <a href="#">@ ashion_shop</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Instagram End -->

<%@ include file="footer.jsp" %>

<script>
	function windowOpen() { 
		var url = "/product/address_manage"
		window.open(url, "a", "width=1000, height=800, left=100, top=50"); 
	}
</script>


</body>

</html>