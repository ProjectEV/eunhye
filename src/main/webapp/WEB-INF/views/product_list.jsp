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
                                                    <li><a href="#">전체</a></li>
                                                    <li><a href="#">LG전자</a></li>
                                                    <li><a href="#">삼성전자</a></li>
                                                    <li><a href="#">ASUS</a></li>
                                                    <li><a href="#">HP</a></li>
                                                    <li><a href="#">한성컴퓨터</a></li>
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
                                                    <li><a href="#">전체</a></li>
                                                    <li><a href="#">Apple</a></li>
                                                    <li><a href="#">LG전자</a></li>
                                                    <li><a href="#">삼성전자</a></li>
                                                    <li><a href="#">레노버</a></li>
                                                    <li><a href="#">MSI</a></li>
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
                                                    <li><a href="#">전체</a></li>
                                                    <li><a href="#">iPhone</a></li>
                                                    <li><a href="#">갤럭시 S</a></li>
                                                    <li><a href="#">LG</a></li>
                                                    <li><a href="#">갤럭시 A</a></li>
                                                    <li><a href="#">효도폰</a></li>
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
													<li><a href="#">전체</a></li>	                                                
                                                    <li><a href="#">CPU</a></li>
                                                    <li><a href="#">RAM</a></li>
                                                    <li><a href="#">SSD</a></li>
                                                    <li><a href="#">HDD</a></li>
                                                    <li><a href="#">메인보드</a></li>
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
                                                    <li><a href="#">태블릿</a></li>
                                                    <li><a href="#">키보드</a></li>
                                                    <li><a href="#">마우스</a></li>
                                                    <li><a href="#">스피커</a></li>
                                                    <li><a href="#">모니터</a></li>
                                                    <li><a href="#">웹캠</a></li>
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
                                <label for="black">
                                    가격낮은순
                                	<input type="radio" name="order" id="black" value="1">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="whites">
                                    가격높은순
                                    <input type="radio" name="order" id="whites" value="2">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="reds">
                                    판매량순
                                    <input type="radio" name="order" id="reds" value="3">
                                    <span class="checkmark"></span>
                                </label>
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

	<script>
		$("input[name='order']").change(function(){
			var code = $("input[name='order']:checked").val();
			location.href="/product/list/order?code="+code;
			alert(code);
		});
	</script>

</body>

</html>