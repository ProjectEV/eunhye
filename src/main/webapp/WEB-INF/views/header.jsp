<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>

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
</head>

<body class="index-page">

  <header style="width: 100%;" id="header">
    <div style="text-align: center">
    	<div style="padding: 30px 30px">
	    	<a href="/" style="display: inline;">
		    	<img style="width: 200px; height: 70px;" src="${pageContext.request.contextPath}/resources/images/logo.png" alt="전자마을">
		    </a>
		    
		    <span>
		    	<input id="keyword" name="searchKeyword" style="width: 500px; margin: 0 0 0 100px; display: inline;" class="form-control me-2" type="text" placeholder="검색" aria-label="검색"/>	        	
	        	  <a id="searchA" href="#" onclick="searchF(event)">
		    		<img id="search" style="cursor:pointer; width: 37px; height: 37px;" src="${pageContext.request.contextPath}/resources/images/search.png" alt="검색">
  				  </a>
		    </span>
	
			<div style="display: inline-block; margin: 12px 20px;  float: right;">
			 	<button id="nav-btn" onclick="location.href='/product/login'">로그인</button>
	        	<button id="nav-btn" onclick="location.href='/product/mypage'">마이페이지</button>
			</div>
    	</div>
    	
        <!-- 카테고리 선택 -->
        <div>
	       	<hr style="size:1; color: rgb(146, 146, 146); margin: 0;">
			<div style="padding: 10px 50px">
				<a>카테고리 메뉴</a>
			</div>
			<hr style="size:1; color: rgb(146, 146, 146); margin: 0;">
        </div>                              
    </div>

  </header>
  
  
  
  <script type="text/javascript">
  //검색 함수
	function searchF(event) {
		event.preventDefault();

		const keyword = document.getElementById('keyword').value;
		const searchLink = document.getElementById('searchA');
		searchLink.href = "/product/list?keyword="+keyword;

		window.location.href = searchLink.href;
	}
  </script>
  
</body>
</html>