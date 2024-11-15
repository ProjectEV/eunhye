<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="table">
		  <tr>
		  	<td>제품코드</td>
		  	<td>제목</td>
		  	<td>재고</td>
		  	<td>누적판매량</td>
		  	<td>누적판매량</td>
		  </tr>
		  
		  
		
		 <c:forEach var="inventory" items="${list }">
		 	<tr>
		 	<td>${inventory.inventory_product_id}</td>
		 	<td><a href="detail?bno=${inventory.inventory_product_id}"> ${inventory.inventory_product_id} </a></td>
		 	<td>${inventory.inventory_stock}</td>
		 	<td>${inventory.inventory_sales}</td>
		 	<td><span class="badge">${inventory.inventory_sales }</span></td>
		 	</tr>
		</c:forEach>
		 
		
		<tr>
			<td colspan="5" align="center">
				<input class="btn btn-success" type="button" value="메인으로"	id="main" />		
			</td>
		</tr>
		  </table>
</body>
</html>