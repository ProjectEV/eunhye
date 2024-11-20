<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 추가</title>

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
<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=YOUR_APP_KEY&libraries=services"></script>
<script type="text/javascript" src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
/*
카카오 우편번호 검색 가이드 페이지 :  https://postcode.map.daum.net/guide
getElementById() : html 에서 매개변수로 받은 id 값이 있는 요소를 반환.
*/
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;
            }
            else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.querySelector('input[id=zipcode]').value = data.zonecode; //5자리 새우편번호 사용
            document.querySelector('input[id=address1]').value = fullAddr;
            
            input_plus();

            // 커서를 상세주소 필드로 이동한다.
            document.querySelector('input[id=address2]').focus();
        }
    }).open();
}

document.addEventListener("DOMContentLoaded", function () {
    const addrBtn = document.querySelector('input[id=address]');
    addrBtn.addEventListener('click', execDaumPostcode);
});


function input_plus(){
	var zipcode = document.getElementById("zipcode").value;
	var address1 = document.getElementById("address1").value;
    var address2 = document.getElementById("address2").value;
    
    var address = "(" + zipcode + ") " + address1 + address2;
    
    document.getElementById("address_content").value = address;
}
</script>
</head>
<body>

<h2 style="text-align: center;">배송지 추가</h2>

<form method="post" action="${pageContext.request.contextPath}/product/address_manage/add">

	<div style="">
		<div style="margin: 0 auto; width: 700px;">
		
			<label>배송지 별칭</label>
			<input type="text" name="address_name"><br>
			 
			주소
			<input id="zipcode" size="10" readonly placeholder="우편번호" >
            <input id="address" type="button" value="우편번호 검색"><br>
            <input id="address1" type="text" readonly placeholder="도로명 주소"/>
            <input id="address2" type="text" placeholder="상세주소 입력"/>
            <input type="hidden" id="address_content" name="address_content">

			<input style="margin: 30px 300px;" id="btn1" type="submit" value="완료">
			
		</div>
	</div>

</form>



</body>
</html>