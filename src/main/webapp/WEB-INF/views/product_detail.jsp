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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
	    $(function () {
	    	wishState2();
	    });
	</script>

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="/"><i class="fa fa-home"></i> Home</a>
                        <a href="#">카테고리</a>
                        <a href="#">${category}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="product__details__pic">
                    
                    
                        <div class="product__details__pic__left product__thumb nice-scroll">
                        	<c:forEach var="file_name" items="${file_name}" varStatus="status">
                        		<a class="pt active" href="#product-${status.index + 1}">
	                                <img src="${pageContext.request.contextPath}/images/${file_name}" alt="">
	                            </a>
                        	</c:forEach>
                        </div>
                        
                        
                        <div class="product__details__slider__content">
                            <div class="product__details__pic__slider owl-carousel">
	                            <c:forEach var="file_name" items="${file_name}" varStatus="status">
                                	<img data-hash="product-${status.index + 1}" class="product__big__img" src="${pageContext.request.contextPath}/images/${file_name}" alt="">
	                        	</c:forEach>
                            </div>
                        </div>
                        
                        
                    </div>
                </div>
                
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <h3>${product.product_name} <span>${category}</span></h3>
                        
                        <!-- 별점, 상품평 갯수 표시 -->
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <span>( 138 reviews )</span>
                        </div>
                        <div class="product__details__price">${product.product_price}<span>$ 83.0</span></div>
                        <p>${product.product_content}</p>
                        <div class="product__details__button">
                            <form action="/project/cart_register" method="get" id="cart">
                               <div class="quantity">
                                   <span>수량 :</span>
                                   <div class="remain pro-qty" data-product-remain="${product.product_remain }">
                                      <input type="hidden" name="product_id" value="${product.product_id}" />
                                       <input type="number" class="quantity-input" name="amount" value="1">
                                   </div>
                               </div>
                               <a href="javascript:;" onclick="document.getElementById('cart').submit();" class="cart-btn"><span class="icon_bag_alt"></span> 장바구니</a>
                            </form>
	                            <ul>
	                            	<li><span id="wish"></span></li>
	                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">상품설명</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">상품스펙</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">상품평</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <h6>상품설명</h6>
                                <p>${product.product_content}</p>

                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <h6>상품스펙</h6>
                                <p>${product.product_content}</p>

                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <h6>상품평</h6>
                                <div>
                                
                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="related__title">
                        <h5>RELATED PRODUCTS</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/product/related/rp-1.jpg">
                            <div class="label new">New</div>
                            <ul class="product__hover">
                                <li><a href="${pageContext.request.contextPath}/resources/img/product/related/rp-1.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
                                <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Buttons tweed blazer</a></h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price">$ 59.0</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/product/related/rp-2.jpg">
                            <ul class="product__hover">
                                <li><a href="${pageContext.request.contextPath}/resources/img/product/related/rp-2.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
                                <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Flowy striped skirt</a></h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price">$ 49.0</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/product/related/rp-3.jpg">
                            <div class="label stockout">out of stock</div>
                            <ul class="product__hover">
                                <li><a href="${pageContext.request.contextPath}/resources/img/product/related/rp-3.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
                                <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Cotton T-Shirt</a></h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price">$ 59.0</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/product/related/rp-4.jpg">
                            <ul class="product__hover">
                                <li><a href="${pageContext.request.contextPath}/resources/img/product/related/rp-4.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
                                <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Slim striped pocket shirt</a></h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price">$ 59.0</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->
    
	<%@ include file="instagram.jsp" %>
	<%@ include file="footer.jsp" %>
	
	<!-- 찜 유무 판별 -->
    <script type="text/javascript">
	    function wishListAddDetail(product_id) {
	        $.ajax({
	            url: '/product/wishlist/add',
	            method: 'GET',
	            data: {product_id: product_id},
	            success: function() {
					alert("관심목록에 추가되었습니다!");
					wishState2();
	            },
	            error: function() {
					alert("추가에 실패했습니다.");
	            }
	        });
	    }
	    
	    function wishListDeleteDetail(product_id) {
	        $.ajax({
	            url: '/product/wishlist/delete',
	            method: 'GET',
	            data: {product_id: product_id},
	            success: function() {
					alert("관심목록에서 삭제 되었습니다!");
					wishState2();
	            },
	            error: function() {
					alert("삭제에 실패했습니다.");
	            }
	        });
	    }
	    
	    function wishState2() {
	        var productId = "${product.product_id}";
	        $.ajax({
	            url: '/product/wishlist/state',
	            method: 'GET',
	            data: { "product_id": productId },
	            success: function (result) {
	                var htmls = "";
	                if (result === true) {
	                    htmls += '<li><a style="background-color: #ca1515;" href="javascript:void(0);" onclick="wishListDeleteDetail(\'' + productId + '\');"><span style="color: white;" class="icon_heart_alt"></span></a></li>';
	                } else {
	                    htmls += '<li><a href="javascript:void(0);" onclick="wishListAddDetail(\'' + productId + '\');"><span class="icon_heart_alt"></span></a></li>';
	                }
	                $("#wish").html(htmls);
	            },
	            error: function () {
	                alert("관심목록 판별에 실패하였습니다.");
	            }
	        });
	    
	    }
    </script>

</body>

</html>