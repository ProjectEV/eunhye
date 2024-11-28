<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ashion | Template</title>

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
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
       $(document).ready(function() {
           $.ajax({
               url: '/project/cartRecord',
               method: 'GET',
               success: function(count) {
                   $('#cartItemCount').text(count);
               },
               error: function() {
                   $('#cartItemCount').text('0'); // 오류 시 0으로 표시
               }
           });
       });
   </script>
    
</head>

<body>
   <!-- Header Section Begin -->
   <header class="header">
       <div class="container-fluid">
           <div class="row">
               <div class="col-xl-3 col-lg-2">
                   <div class="header__logo">
                       <a href="/"><img style="width: 200px; height: 30px; margin: 0 0 0 30px" src="${pageContext.request.contextPath}/resources/images/logo4.JPG" alt=""></a>
                   </div>
               </div>
               <div class="col-xl-6 col-lg-7">
                   <nav class="header__menu">
                       <ul>
                           <li><a href="/">Home</a></li>
                           <li><a href="#">Women’s</a></li>
                           <li><a href="#">Men’s</a></li>
                           <li><a href="/project/product">PRODUCT</a></li>
                           <li><a href="#">Pages</a>
                               <ul class="dropdown">
                                   <li><a href="./product-details.html">Product Details</a></li>
                                   <li><a href="./shop-cart.html">Shop Cart</a></li>
                                   <li><a href="./checkout.html">Checkout</a></li>
                                   <li><a href="./blog-details.html">Blog Details</a></li>
                               </ul>
                           </li>
                           <li><a href="/project/notice">공지사항</a></li>
                           <li><a href="./contact.html">Contact</a></li>
                       </ul>
                   </nav>
               </div>
               <div class="col-lg-3">
                   <div class="header__right">
                       <div class="header__right__auth">
                             <c:if test="${user==null }">
                           로그인이 필요합니다. <a href="/project/login">Login</a>
                        </c:if>
                        <c:if test="${user!=null }">
                           ${user.user_name }님 환영합니다. <a href="/project/logout">Logout</a>
                        </c:if>
                           
                           <a href="/project/join">Register</a>
                       </div>
                       <ul class="header__right__widget">
                           <li><span class="icon_search search-switch"></span></li>
                           <li><a href="/product/mypage"><span class="icon_heart_alt"></span>
                           </a></li>
                           <li><a href="/project/cart"><span class="icon_bag_alt"></span>
                               <div class="tip" id="cartItemCount"></div>
                           </a></li>
                       </ul>
                   </div>
               </div>
           </div>
           <div class="canvas__open">
               <i class="fa fa-bars"></i>
           </div>
       </div>
   </header>
   <!-- Header Section End -->
   
   
   <!-- Search Begin -->
   <div class="search-model">
       <div class="h-100 d-flex align-items-center justify-content-center">
           <div class="search-close-switch">+</div>
           <form class="search-model-form">
               <input type="text" id="search-input" placeholder="검색어를 입력하세요." onkeypress="show_name(event)">
           </form>
       </div>
   </div>
   <!-- Search End -->
   
   <script type="text/javascript">
        function show_name(e){
           e.preventDefault();
            var keyword = document.getElementById("search-input").value;
           const code = e.code;
           if(code == 'Enter'){
               location.href = "/product/list?keyword="+keyword;
           }
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
    