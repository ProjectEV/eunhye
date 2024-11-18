<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<link rel="stylesheet" href="https://showcases.yalco.kr/html-css/01-06/table.css">
  <style>
  
   #btn1 {
	  width: 120px;
	  margin: 0 100px;
	  color: rgb(0, 64, 110);
	  background: rgb(199, 232, 255);
	  font-size: 10px;
	  padding: 5px 10px;
	  margin: 0;
	  transition: 0.3s;
	  border-width: thin;
	}
	
	#btn1:hover,
	#btn1:focus:hover {
	  color: white;
	  background:  rgb(0, 64, 110);
	}

</style>
</head>
<body>

<h2 style="text-align: center;">마이페이지</h2>

	<div style="">
		<div style="margin: 0 auto; width: 700px;">
			<c:forEach var="buy" items="${buy_list}">
			 	<div style="margin: 20px 10px; padding: 10px; border: 1px solid rgb(235, 235, 235); ">
					  <p>${buy.buy_regdate}</p>
					  <c:forEach var="buydetail" items="${buy_detail_list}">
						  	<c:if test="${buy.buy_no == buydetail.buydetail_buyno}">
  							  	<c:forEach var="buydetailProduct" items="${buy_detail_product_list}">
  									  	<c:if test="${buydetail.buydetail_productid == buydetailProduct.product_id}">
						  	
										  	<div>
										  		<img style="width: 50px; height: 50px;" src="${pageContext.request.contextPath}/resources/images/notebook2.jpg" alt="마이페이지 제품 사진">
											    <p>${buydetailProduct.product_name}</p>
											    <p>${buydetailProduct.product_price}</p>
 												<p>${buydetail.buydetail_amount}</p>
										  	</div>
										  	
			  							 </c:if>					  	
							  	
		  						  </c:forEach>
							  	
						  	</c:if>					  	
					  </c:forEach>
			 	</div>
			</c:forEach>	
		</div>	
	</div>

</body>
</html>