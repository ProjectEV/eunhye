<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 수정</title>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
    
    <script type="text/javascript">
    	parseAddress();
    </script>
</head>
<body>
	<div style="padding: 70px">
	   	  <div class="contact__form">
				<div style="margin: 0 0 60px 0">
					<h4 style="text-align: center; font-weight: bold;">배송지 수정</h4>
				</div>				
				<form method="post" action="${pageContext.request.contextPath}/product/address_manage/add">
	                <input type="hidden" value="${address.address_no}" name="address_no">
	                
	                <input type="text" name="address_name" value="${address.address_name}" placeholder="배송지 별칭">
		            <input style="width: 135px; padding-left: 0px; text-align: center;" id="address" type="button" value="우편번호 검색"><br>
		            <input id="zipcode" size="10" readonly placeholder="우편번호" >
		            <input id="address1" type="text" readonly placeholder="도로명 주소"/>
		            <input id="address2" type="text" placeholder="상세주소 입력"/>
		            <input type="hidden" id="address_content" name="address_content">
		            
        		    <input type="hidden" id="address_content" value="${address.address_content}" name="address_content">
		            
		            <div style="margin: 60px 0 0 0; text-align: center;">
	                	<button type="submit" onclick="input_plus();" style=" padding: 15px 50px; font-size: 12px;" class="site-btn" id="nav-btn">저장</button>
					</div>
    	        </form>
	       </div>
	</div>

	<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=YOUR_APP_KEY&libraries=services"></script>
	<script type="text/javascript" src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
	<script type="text/javascript">
	/*
	카카오 우편번호 검색 가이드 페이지 :  https://postcode.map.daum.net/guide
	getElementById() : html 에서 매개변수로 받은 id 값이 있는 요소를 반환.
	*/
	parseAddress();
	
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
	    
	    var address = "(" + zipcode + ") " + address1 + " " + address2;
	    
	    alert(address);
	    
	    document.getElementById("address_content").value = address;
	}
	
	
	function parseAddress() {
		var address = document.getElementById("address_content").value;
		
	    // 우편번호 추출 (괄호로 감싸진 숫자)
	    const postalCode = address.match(/\(\d+\)/)?.[0].replace(/[()]/g, '');
	    
	    // 도로명주소 추출 (괄호가 있을 수도, 없을 수도 있음)
	    let roadAddress = '';
	    let detailedAddress = '';

	    if (address.includes(')')) {
	        // 괄호 있는 경우: 우편번호 이후와 상세주소 앞의 중간 영역
	        const roadMatch = address.match(/\d+\)\s(.+?)\s\(.+?\)/);
	        const detailedMatch = address.match(/\)\s(.+?)$/);
	        roadAddress = roadMatch ? roadMatch[1].trim() : ''; // 도로명주소
	        detailedAddress = detailedMatch ? detailedMatch[1].trim() : ''; // 상세주소
	    } else {
	        // 괄호 없는 경우: 우편번호 이후와 마지막 단어로 나눔
	        const roadMatch = address.match(/\d+\)\s(.+)\s[\w가-힣]+\s*$/);
	        roadAddress = roadMatch ? roadMatch[1].trim() : ''; // 도로명주소
	        detailedAddress = address.split(" ").pop().trim(); // 마지막 단어
	    }
	    
	    document.getElementById("zipcode").value = postalCode;
	    document.getElementById("address1").value = roadAddress;
	    document.getElementById("address2").value = detailedAddress;

	}
	</script>

    
            <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nicescroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>