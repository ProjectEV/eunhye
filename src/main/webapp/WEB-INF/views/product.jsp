<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품목록</title>          
</head>
<body>

  <%@ include file="header.jsp" %>
  
  <div style="margin: 30px 150px;">  
 	<div style="margin: 30px; padding: 10px">
 		<div style="float: right; margin: 0px 30px" >
 			<a style="width: 200px; color: black; font-size: 17px; text-decoration-line: none;" href="">가격 낮은순 &nbsp; </a>
 			<div style="border-left: thin solid black; height: 15px; display: inline-block;"></div>
			<a style="width: 200px; color: black; font-size: 17px; text-decoration-line: none;" href=""> &nbsp; 가격 높은순 &nbsp; </a>
 			<div style="border-left: thin solid black; height: 15px; display: inline-block;"></div>
			<a style="width: 200px; color: black; font-size: 17px; text-decoration-line: none;" href="">&nbsp; 최신순 &nbsp; </a>
 		</div>		 	
	</div>
  
	  <div style="display: grid; grid-template-columns: 0.3fr 0.3fr 0.3fr 0.3fr 0.3fr; text-align: center;">
	  	 <c:forEach var="product" items="${list}">
		 	<div style="width: 200px; height: 200px; margin: 20px 20px; padding: 10px; border: 1px solid rgb(235, 235, 235);  border-radius: 5%; ">
	 			<img style="width: 90px; height: 90px; border: 1px solid rgb(146, 146, 146);" src="${pageContext.request.contextPath}/resources/images/notebook2.jpg" alt="제품메인사진">
			 	<div style="text-align: left;">		 	
				 	<p style="margin: 5px; color: gray;">${product.product_category}</p>
				 	<p style="margin: 5px;"><a style="width: 200px; color: black; font-weight: bold; font-size: 17px; text-decoration-line: none;" href="/product/detail?product_id=${product.product_id}"> ${product.product_name} </a></p>
				 	<p style="margin: 5px; font-size: 15px;">${product.product_price} 원</p>
			 	</div>
		 	</div>
		 </c:forEach>
	  </div>
  </div>


</body>
</html>