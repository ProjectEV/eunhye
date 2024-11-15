<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문/결제</title>
<link rel="stylesheet" href="https://showcases.yalco.kr/html-css/01-06/table.css">
  <style>
   th{
      padding: 5px;
      text-align: center;
      width: 150px;
   	  background-color: #ECECEC; 
   }
   
   td {
   	  padding: 5px 5px 5px 20px;
      text-align: left;
   }
   
   tr {
   	height: 50px;
   }
 
   table {
     margin: 0 auto;
     width: 700px;
     height: 40px;
   }
   
   #btn1, #btn2 {
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
	
	#btn2:hover,
	#btn2:focus:hover {
	  color: white;
	  background:  rgb(0, 64, 110);
	}
	
	p {
		margin: 30px 0 10px 0;
	}

</style>

<script>
	function windowOpen() { 
		var url = "/product/address_select"
		window.open(url, "a", "width=1000, height=800, left=100, top=50"); 
		}
</script>
</head>
<body>

<h2 style="text-align: center;">주문결제</h2>

	<div style="">
		<div style="margin: 0 auto; width: 700px;">
			<p>구매자 정보</p>
		 	<table>
			 	<tr>
			 		<th>이름</th>
		 			<td>${user.name}신짱구</td>	
			 	</tr>
			 	<tr>
			 		<th>휴대폰 번호</th>
		 			<td>${user.phone}010-1234-5678</td>	
			 	</tr>
		 	</table>
		 	
		 	<p>받는 사람 정보</p>
		 	<table>
			 	<tr>
			 		<th>이름</th>
		 			<td><input type="text" id="reciever" name="reciever" value="${user.name}"></td>	
			 	</tr>
			 	<tr>
			 		<th>배송 주소</th>
		 			<td>
		 			<input type="text" id="address" name="reciever" value="${user.address}">
		 			<button id="btn1" onclick="windowOpen()">배송지 선택</button>
		 			
		 			</td>
			 	</tr>
		 	</table>
		 	
		 	<p>결제 정보</p>
		 	<table>
			 	<tr>
			 		<th>제품명</th>
		 			<td>${product.name}레노버 노트북 5</td>	
			 	</tr>
			 	<tr>
			 		<th>가격</th>
		 			<td>${product.price}70000원</td>	
			 	</tr>
		 	</table>
		
			<button style="margin: 30px 300px;" id="btn2" onclick="location.href='/mypage'">주문완료</button>
			
		</div>	
	</div>

</body>
</html>