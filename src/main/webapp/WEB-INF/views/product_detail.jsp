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

<%@ include file="header.jsp" %>

<div style="margin: 50px 0 0 0">
	<div style="text-align: center;">		
		<img style="width: 400px; height: 400px; border: 1px solid rgb(146, 146, 146);" src="${pageContext.request.contextPath}/resources/images/notebook2.jpg" alt="제품메인사진">
	</div>

	<div style="text-align: left; padding: 50px 100px 30px 100px; margin: 0 auto; width: 1000px">
		<p style="font-size: 15px">카테고리 > ${product.product_category}</p> 
		<h4 style="">${product.product_name}</h4>
		<h3 style="font-weight: bold; margin: 20px 0 0 0">${product.product_price}원</h3>
	</div>
	
	<!-- 제품 남은 갯수 만큼 옵션을 두어야함 -->
	<div style="text-align: left; padding: 0 100px; margin: 0 auto; width: 1000px">
		<select style="width: 110px; display: inline; margin: 0 10px 0 0;" class="form-select" aria-label="Default select example">
		  <option selected>수량</option>
		  <option value="1">1</option>
		  <option value="2">2</option>
		  <option value="3">3</option>
  		  <option value="4">4</option>
  		  <option value="5">5</option>
  		  <option value="6">6</option>
  		  <option value="7">7</option>
  		  <option value="8">8</option>
  		  <option value="9">9</option>
  		  <option value="10">10</option>		  
		</select>
		
		<button id="nav-btn" onclick="location.href='/product/buy'">구매하기</button>
	</div>
	
	<div style="text-align: center;">
		<!-- 평점 -->
	</div>

	<div style="text-align: left; padding: 50px 100px 30px 100px; margin: 0 auto; width: 1000px">
		<hr>
		<p style="margin: 0 0 0 20px">제품설명</p>
		<hr>
		
		<p>${product.product_content}</p>
	</div>
	
	<!--  
	
	<div style="text-align: left; padding: 30px 100px 30px 100px; margin: 0 auto; width: 1000px">
		<hr>
		<p style="margin: 0 0 0 20px">상품평</p>
		<hr>
		
		 	<div style="margin: 20px 10px; padding: 20px; border: 1px solid rgb(235, 235, 235); ">
		 		<div style="margin: 0 0 10px 0">
		 		<img style="width: 40px; height: 40px;" src="${pageContext.request.contextPath}/resources/images/review.png" alt="리뷰프로필">
		 		<span>${review.board_userid}keh223377</span> <span style="font-size: 12px;">${review.regdate}24-11-11</span>
				</div>
				<div>  별점  </div>	
				<div>
					<p style="font-weight: bold; font-size: 20px;">${review.title}레노버 노트북 짱입니다..bb</p>
					<p>${review.content}Lenovo ThinkPad X1 Carbon Gen 12(14형 Intel) 노트북은 여전히 섀시에 탄소 섬유를 사용하지만, 탄소 섬유 중 일부는 재활용된 산업 소재이며 90% 재활용 마그네슘과 함께 사용되었습니다. 또한 섀시, 배터리 팩, 스피커 엔클로저 및 전원 어댑터에는 모두 재활용된 PCC(Post-Consumer Content)가 포함되어 있습니다. 하지만 Lenovo는 여기서 그치지 않습니다. 포장에는 플라스틱이 전혀 사용되지 않았으며 부분적으로는 대나무 사탕수수 섬유로 만든 빠르게 재활용 가능한 소재로 구성되어 있습니다.</p>
				</div>	 	
		 	</div>
		
		 <c:forEach var="review" items="${list}">
		 	<div style="margin: 20px 10px; padding: 20px; border: 1px solid rgb(235, 235, 235); ">
		 		<div style="margin: 0 0 10px 0">
		 		<img style="width: 40px; height: 40px;" src="${pageContext.request.contextPath}/resources/images/review.png" alt="리뷰프로필">
		 		<span>${review.board_userid}keh223377</span> <span style="font-size: 12px;">${review.regdate}24-11-11</span>
				</div>
				<div>  별점  </div>	
				<div>
					<p style="font-weight: bold; font-size: 20px;">${review.title}레노버 노트북 짱입니다..bb</p>
					<p>${review.content}Lenovo ThinkPad X1 Carbon Gen 12(14형 Intel) 노트북은 여전히 섀시에 탄소 섬유를 사용하지만, 탄소 섬유 중 일부는 재활용된 산업 소재이며 90% 재활용 마그네슘과 함께 사용되었습니다. 또한 섀시, 배터리 팩, 스피커 엔클로저 및 전원 어댑터에는 모두 재활용된 PCC(Post-Consumer Content)가 포함되어 있습니다. 하지만 Lenovo는 여기서 그치지 않습니다. 포장에는 플라스틱이 전혀 사용되지 않았으며 부분적으로는 대나무 사탕수수 섬유로 만든 빠르게 재활용 가능한 소재로 구성되어 있습니다.</p>
				</div>	 	
		 	</div>
		</c:forEach>
	</div>
	 -->
	


</div>

</body>
</html>