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
	  <div style="display: grid; grid-template-columns: 0.3fr 0.3fr 0.3fr 0.3fr 0.3fr; text-align: center;">
	  	 <c:forEach var="product" items="${list}">
		 	<div style="width: 200px; height: 200px; margin: 20px 20px; padding: 10px; border: 1px solid rgb(235, 235, 235);  border-radius: 5%; ">
	 			<img style="width: 90px; height: 90px; border: 1px solid rgb(146, 146, 146);" src="${pageContext.request.contextPath}/resources/images/notebook2.jpg" alt="제품메인사진">
			 	<div style="text-align: left;">		 	
				 	<p style="margin: 5px;">${product.product_category}</p>
				 	<p style="margin: 5px;"><a style="width: 200px;" href="/product/detail?product_id=${product.product_id}"> ${product.product_name} </a></p>
				 	<p style="margin: 5px;">${product.product_price}</p>
			 	</div>
		 	</div>
		 </c:forEach>
	  </div>
  </div>


</body>
</html>