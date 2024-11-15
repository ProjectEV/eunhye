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
  
  <div>
      <h1>제품목록</h1>
  
	  <table>
	  	 <c:forEach var="product" items="${list}">
		 	<tr>
			 	<td>${product.category}</td>
			 	<td><a href="product/detail?id=${product.id}"> ${product.name} </a></td>
			 	<td>${product.price}</td>
		 	</tr>
		 </c:forEach>
	  </table>
  
  </div>


</body>
</html>