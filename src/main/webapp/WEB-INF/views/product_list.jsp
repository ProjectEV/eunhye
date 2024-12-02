<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">
<meta charset="UTF-8">
<title>TechNova</title>
<head>
<style>

.order {
	backgroud-color: black;
	color: black;
}

.order:hover {
	backgroud-color: blue;
	text-decoration: none;
}

</style>
</head>

<body>
    
    <%@ include file="header.jsp" %>

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                        <span>제품목록</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    
    <!-- Breadcrumb End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="shop__sidebar">
                        <div class="sidebar__categories">
                            <div class="section-title">
                                <h4>카테고리</h4>
                            </div>
                            <div class="categories__accordion">
                                <div class="accordion" id="accordionExample">
                                    <div class="card">
                                        <div class="card-heading active">
                                            <a data-toggle="collapse" data-target="#collapseOne">컴퓨터</a>
                                        </div>
                                        <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <ul>
                                                    <li><a href="/product/list/category?category=1">전체</a></li>
                                                    <li><a href="/product/list/category?category=11">Dell</a></li>
                                                    <li><a href="/product/list/category?category=12">삼성전자</a></li>
                                                    <li><a href="/product/list/category?category=13">LG전자</a></li>
                                                    <li><a href="/product/list/category?category=14">HP</a></li>
                                                    <li><a href="/product/list/category?category=15">Mac</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-heading">
                                            <a data-toggle="collapse" data-target="#collapseTwo">노트북</a>
                                        </div>
                                        <div id="collapseTwo" class="collapse" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <ul>
                                                    <li><a href="/product/list/category?category=2">전체</a></li>
                                                    <li><a href="/product/list/category?category=21">MacBook</a></li>
                                                    <li><a href="/product/list/category?category=22">그램</a></li>
                                                    <li><a href="/product/list/category?category=23">갤럭시북</a></li>
                                                    <li><a href="/product/list/category?category=24">레노버</a></li>
                                                    <li><a href="/product/list/category?category=25">MSI</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-heading">
                                            <a data-toggle="collapse" data-target="#collapseThree">핸드폰</a>
                                        </div>
                                        <div id="collapseThree" class="collapse" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <ul>
                                                    <li><a href="/product/list/category?category=3">전체</a></li>
                                                    <li><a href="/product/list/category?category=31">iPhone</a></li>
                                                    <li><a href="/product/list/category?category=32">갤럭시 S</a></li>
                                                    <li><a href="/product/list/category?category=33">LG</a></li>
                                                    <li><a href="/product/list/category?category=34">갤럭시 A</a></li>
                                                    <li><a href="/product/list/category?category=35">샤오미</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-heading">
                                            <a data-toggle="collapse" data-target="#collapseFour">컴퓨터부품</a>
                                        </div>
                                        <div id="collapseFour" class="collapse" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <ul>
													<li><a href="/product/list/category?category=4">전체</a></li>	                                                
                                                    <li><a href="/product/list/category?category=41">CPU</a></li>
                                                    <li><a href="/product/list/category?category=42">RAM</a></li>
                                                    <li><a href="/product/list/category?category=43">SSD</a></li>
                                                    <li><a href="/product/list/category?category=44">HDD</a></li>
                                                    <li><a href="/product/list/category?category=45">메인보드</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-heading">
                                            <a data-toggle="collapse" data-target="#collapseFive">기타</a>
                                        </div>
                                        <div id="collapseFive" class="collapse" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <ul>
                                                    <li><a href="/product/list/category?category=51">태블릿</a></li>
                                                    <li><a href="/product/list/category?category=52">키보드</a></li>
                                                    <li><a href="/product/list/category?category=53">마우스</a></li>
                                                    <li><a href="/product/list/category?category=54">스피커</a></li>
                                                    <li><a href="/product/list/category?category=55">모니터</a></li>
                                                    <li><a href="/product/list/category?category=56">웹캠</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="sidebar__color">
                            <div class="section-title">
                                <h4>정렬</h4>
                            </div>
                            <div class="size__list color__list">
                              	<div style="margin: 7px 0;"><a class="order" href="/product/list/order?code=1" style="font-size: 14px;">가격낮은순</a></div>
                              	<div style="margin: 7px 0;"><a class="order" href="/product/list/order?code=2" style="font-size: 14px;">가격높은순</a></div>
                              	<div style="margin: 7px 0;"><a class="order" href="/product/list/order?code=3" style="font-size: 14px;">판매량순</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="row">
                    	<!-- forEach로 제품 목록 띄우기 -->
                  		<c:forEach var="product" items="${list}">
							<div class="col-lg-4 col-md-6">
	                            <div class="product__item">
		                            <c:forEach var="imageList" items="${imageList}">
                                     	<c:if test="${imageList.file_connection_id == product.product_id}">
                                     			    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/images/${imageList.file_name}">
			                                    <!--  <div class="label new">New</div> -->
			                                    <ul class="product__hover">
			                                        <li><a href="#" class="image-popup"><span class="arrow_expand"></span></a></li>
			                                        <li><a href="#"><span class="icon_heart_alt"></span></a></li>
			                                        <li><a href="#"><span class="icon_bag_alt"></span></a></li>
			                                    </ul>
			                                </div>
			                                <div class="product__item__text">
			                                    <h6><a href="/product/detail?product_id=${product.product_id}">${product.product_name}</a></h6>
			                                    <div class="rating">
			                                        <i class="fa fa-star"></i>
			                                        <i class="fa fa-star"></i>
			                                        <i class="fa fa-star"></i>
			                                        <i class="fa fa-star"></i>
			                                        <i class="fa fa-star"></i>
			                                    </div>
			                                    <div class="product__price">${product.product_price} 원</div>
			                                </div>
                                     	</c:if>
		                            </c:forEach>
	                            </div>
	                        </div>
 						</c:forEach>
 						
                        <div class="col-lg-12 text-center">
                            <div class="pagination__option">
                                <a href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#"><i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
    
    <!-- Shop Section End -->

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

</body>

</html>