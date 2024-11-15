<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
   <style>
	#nav-btn, #my-button {
	  width: 140px;
	  color: rgb(0, 64, 110);
	  background: white;
	  font-size: 14px;
	  padding: 8px 26px;
	  margin: 0;
	  border-color: rgb(0, 64, 110);
	  border-radius: 10px;
	  transition: 0.3s;
	}
	
	#nav-btn:hover,
	#nav-btn:focus:hover {
	  color: white;
	  background:  rgb(0, 64, 110);
	}
	
	#my-button:hover,
	#my-button:focus:hover {
	  color: white;
	  background:  rgb(0, 64, 110);
	}
	

	</style>
	
	<!-- 검색 스크립트 코드 -->
	
  
</head>

<body class="index-page">

  <header style="padding: 0;" id="header" class="header d-flex align-items-center sticky-top">
    <div style="margin: 0 auto">
    	<div style="padding: 10px 10px">
	    	<a href="index.html" style="display: inline;">
		    	<img style="width: 200px; height: 70px;" src="${pageContext.request.contextPath}/resources/images/logo.png" alt="전자마을"></a>
	      
	        <input id="keyword" name="searchKeyword" style="width: 500px; margin: 0 0 0 100px; display: inline;" class="form-control me-2" type="text" placeholder="검색" aria-label="검색"/>
	        <button id="my-button" class="searchBtn">검색</button>
	
	        <button id="nav-btn" onclick="location.href='/login'">로그인</button>
	        <button id="nav-btn" onclick="location.href='/mypage'">마이페이지</button>
    	</div>
    	
        <!-- 카테고리 선택 -->
        <div>
	       	<hr style="color: rgb(146, 146, 146); margin: 0;">
			<div style="padding: 10px 50px">
				<a>카테고리 메뉴</a>
			</div>
			<hr style="color: rgb(146, 146, 146); margin: 0;"> 
        </div>                              
    </div>

  </header>
  
  <script>
    document.getElementById("my-button").onclick = function () {
		var keyword = document.getElementById("keyword").value;
		location.href = "/product/list?keyword="+keyword;
    };
  </script>
  
</body>
</html>