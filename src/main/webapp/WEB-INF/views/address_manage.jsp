<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 관리</title>

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

<script type="text/javascript">

//주소 삭제 ajax
<!-- 

function address_delete(address_no){
   var url = "${pageContext.request.contextPath}/product/address_manage/delete";
   var paramData = {
         "address_no" : address_no,
   };
   $.ajax({
      url : url,
      data : paramData,
      dataType : 'json',
      type : 'POST',
      success : function(result){
         console.log(result);
         
         //삭제 후 다시 리스트 조회
         replylist();
      },
      error : function(data){
         console.log(data);
         alert("주소 삭제에서 에러가 발생했습니다.");
      }
   }); 
} 

-->


</script>

</head>
<body>

<div>
	<h2 style="text-align: center;">배송지 관리</h2>
	<button id="nav-btn" onclick="location.href='/product/address_manage/add'">배송지 추가</button>
</div>

	<div style="">
		<div style="margin: 0 auto; width: 700px;">
		
			<c:forEach var="address" items="${list}">
			 	<div style="margin: 20px 10px; padding: 10px; border: 1px solid rgb(235, 235, 235); ">
			 		  <!-- 수정, 삭제를 위한 주소 번호 -->
  			 		  
					  <label style="font-weight: bold;">${address.address_name}</label>
					  <button id="nav-btn" onclick="location.href='/product/address_manage/update?address_no=${address.address_no}'">수정</button>
					  <button id="nav-btn" onclick="location.href='/product/address_manage/delete?address_no=${address.address_no}'">삭제</button><br>
		  			  <label style="margin: 10px 0 0 0; font-size: 13px">${address.address_content}</label><br>
			 	</div>
			</c:forEach>

			<button style="margin: 30px 300px;" id="btn1" onclick="location.href='/product/mypage'">저장</button>
			
		</div>	
	</div>

</body>
</html>