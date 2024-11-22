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
    
    <script src="https://code.jquery.com/jquery-3.7.1.js"
   integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
   crossorigin="anonymous"></script>
<link rel="stylesheet"
   href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=YOUR_APP_KEY&libraries=services"></script>
<script type="text/javascript" src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
    
    
 
     
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
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__close">+</div>
        <ul class="offcanvas__widget">
            <li><span class="icon_search search-switch"></span></li>
            <li><a href="#"><span class="icon_heart_alt"></span>
                <div class="tip">2</div>
            </a></li>
            <li><a href="#"><span class="icon_bag_alt"></span>
                <div class="tip">2</div>
            </a></li>
        </ul>
        <div class="offcanvas__logo">
            <a href="./index.html"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__auth">
            <a href="#">Login</a>
            <a href="#">Register</a>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-3 col-lg-2">
                    <div class="header__logo">
                        <a href="./index.html"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-7">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="./index.html">Home</a></li>
                            <li><a href="#">Women’s</a></li>
                            <li><a href="#">Men’s</a></li>
                            <li class="active"><a href="./shop.html">Shop</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="dropdown">
                                    <li><a href="./product-details.html">Product Details</a></li>
                                    <li><a href="./shop-cart.html">Shop Cart</a></li>
                                    <li><a href="./checkout.html">Checkout</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="./blog.html">Blog</a></li>
                            <li><a href="./contact.html">Contact</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__right">
                        <div class="header__right__auth">
                            <a href="#">Login</a>
                            <a href="#">Register</a>
                        </div>
                        <ul class="header__right__widget">
                            <li><span class="icon_search search-switch"></span></li>
                            <li><a href="#"><span class="icon_heart_alt"></span>
                                <div class="tip">2</div>
                            </a></li>
                            <li><a href="#"><span class="icon_bag_alt"></span>
                                <div class="tip">2</div>
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

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                        <span>Shopping cart</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h6 class="coupon__link"><span class="icon_tag_alt"></span> <a href="#">Have a coupon?</a> Click
                    here to enter your code.</h6>
                </div>
            </div>
            <form method="post" action="/product/join" class="checkout__form" name="join_form" onsubmit="retrun join();">
                <div class="row">
                    <div class="col-lg-8">
                        <h5>회원가입</h5>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>아이디 <span>*</span></p>
                                    <input type="text" id="user_id" name="user_id" placeholder="* 4-12자의 영문 대소문자와 숫자로만 입력" required>
                                </div>
                            </div>
                            
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                     <button type="reset" onclick="idCheck()" class="site-btn" style="width: 116.01px; height: 44.98px; margin-top: 35px; " >다시작성</button>
                                     
                               </div>
                            </div>
                            
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p hidden>중복체크용 <span>*</span></p>
                                    <input type="text" id="reid" name="reid" hidden>
                                    
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="checkout__form__input">
                                    <p>비밀번호 <span>*</span></p>
                                    <input type="password" id="user_password" name="user_password" placeholder="* 4-12자의 영문 대소문자와 숫자로만 입력" required>
                                </div>
                                <div class="checkout__form__input">
                                    <p>비밀번호 확인 <span>*</span></p>
                                    <input type="password" id="pwdch" name="pwdch" required>
                                </div>
                                <div class="checkout__form__input">
                                    <p>이름 <span>*</span></p>
                                    <input type="text" id="user_name" name="user_name" required>
                                </div>
                                <div class="checkout__form__input">
                                    <p>생일 <span>*</span></p>
                                    <input type="text" id="user_birth" name="user_birth" required>
                                </div>
                            </div>
                            
                           <div class="col-lg-4 col-md-4 col-sm-4">
                          <div class="checkout__form__input">
                              <p>전화번호<span>*</span></p>
                             <select id="phone1" name="phone1" size="1">
                     <option value="010" selected>010</option>
                     <option value="011">011</option>
                     <option value="012">012</option>
                     <option value="013">013</option>
               </select>
                          </div>
                      </div>
                      <div class="col-lg-4 col-md-4 col-sm-4">
                          <div class="checkout__form__input">
                             <p style="height:23.99px;"></p>
                              <input type="number" id="phone2" name="phone2" style="width: 100%;">
                          </div>
                      </div>
                      <div class="col-lg-4 col-md-4 col-sm-4">
                          <div class="checkout__form__input">
                             <p style="height:23.99px;"></p>
                              <input type="number" id="phone3" name="phone3" style="width: 100%;">
                              <input type="hidden" id="user_phone" name="user_phone">
                          </div>
                      </div>                            
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>이메일 <span>*</span></p>
                                    <input type="text" id="email1" name="email1" required>@
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                   <p style="height:23.99px;"></p>
                                    <select
                  name="email2" id="email2" size="1">
                     <option value="naver.com" selected>naver.com</option>
                     <option value="gmail.com">gmail.com</option>
                     <option value="nate.com">nate.com</option>
                     <option value="daum.net">daum.net</option>
                     <option value="yahoo.com">yahoo.com</option>
               </select>
               <input type="hidden" id="user_email" name="user_email">
                                </div>
                            </div>
                           </div>
                        </div>
                    </div>
                    <div style="margin-left: 250px;">
                    <button type="submit" class="site-btn">회원가입</button>&nbsp;&nbsp;
                    <button type="reset" class="site-btn">다시작성</button>
                    </div>
                </form>
            </div>
        </section>
        <!-- Checkout Section End -->

        <!-- Instagram Begin -->
        <div class="instagram">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                        <div class="instagram__item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/instagram/insta-1.jpg">
                            <div class="instagram__text">
                                <i class="fa fa-instagram"></i>
                                <a href="#">@ ashion_shop</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                        <div class="instagram__item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/instagram/insta-2.jpg">
                            <div class="instagram__text">
                                <i class="fa fa-instagram"></i>
                                <a href="#">@ ashion_shop</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                        <div class="instagram__item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/instagram/insta-3.jpg">
                            <div class="instagram__text">
                                <i class="fa fa-instagram"></i>
                                <a href="#">@ ashion_shop</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                        <div class="instagram__item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/instagram/insta-4.jpg">
                            <div class="instagram__text">
                                <i class="fa fa-instagram"></i>
                                <a href="#">@ ashion_shop</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                        <div class="instagram__item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/instagram/insta-5.jpg">
                            <div class="instagram__text">
                                <i class="fa fa-instagram"></i>
                                <a href="#">@ ashion_shop</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                        <div class="instagram__item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/instagram/insta-6.jpg">
                            <div class="instagram__text">
                                <i class="fa fa-instagram"></i>
                                <a href="#">@ ashion_shop</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Instagram End -->

        <!-- Footer Section Begin -->
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-7">
                        <div class="footer__about">
                            <div class="footer__logo">
                                <a href="./index.html"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt=""></a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                            cilisis.</p>
                            <div class="footer__payment">
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/img/payment/payment-1.png" alt=""></a>
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/img/payment/payment-2.png" alt=""></a>
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/img/payment/payment-3.png" alt=""></a>
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/img/payment/payment-4.png" alt=""></a>
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/img/payment/payment-5.png" alt=""></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-5">
                        <div class="footer__widget">
                            <h6>Quick links</h6>
                            <ul>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Blogs</a></li>
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">FAQ</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4">
                        <div class="footer__widget">
                            <h6>Account</h6>
                            <ul>
                                <li><a href="#">My Account</a></li>
                                <li><a href="#">Orders Tracking</a></li>
                                <li><a href="#">Checkout</a></li>
                                <li><a href="#">Wishlist</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-8 col-sm-8">
                        <div class="footer__newslatter">
                            <h6>NEWSLETTER</h6>
                            <form action="#">
                                <input type="text" placeholder="Email">
                                <button type="submit" class="site-btn">Subscribe</button>
                            </form>
                            <div class="footer__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <div class="footer__copyright__text">
                            <p>Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
                        </div>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->

        <!-- Search Begin -->
        <div class="search-model">
            <div class="h-100 d-flex align-items-center justify-content-center">
                <div class="search-close-switch">+</div>
                <form class="search-model-form">
                    <input type="text" id="search-input" placeholder="Search here.....">
                </form>
            </div>
        </div>
        <!-- Search End -->

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
        
         <script>

   //유효성 검사 funtion
   function join() {
      
      var idReg = /^[a-zA-Z0-9]{4,12}$/;
      
      var user_id = document.getElementById("user_id");
      var user_password = document.getElementById("user_password");
      var pwdch = document.getElementById("pwdch");   
      
      //전화번호 
      var phone1 = document.getElementById("phone1").value;
        var phone2 = document.getElementById("phone2").value;
        var phone3 = document.getElementById("phone3").value;

        //이메일
      var email1 = document.getElementById("email1").value;
      var email2 = document.getElementById("email2").value;
      
      //전화번호 input 값 3개 합치는 처리
       var user_phone = phone1 +'-'+ phone2 +'-' + phone3; 
       document.getElementById("user_phone").value = user_phone;
       
       //이메일 input 값 2개 합치는 처리
       var user_email = email1 + '@' + email2;
       document.getElementById("user_email").value = user_email;

      if (!idReg.test(user_id.value)) {
         alert("아이디 형식을 확인하세요");
         return false;
      }

      if (!idReg.test(user_password.value)) {
         alert("비밀번호 형식을 확인하세요");
         return false;
      }

      if (user_password.value != pwdch.value) {
         alert("비밀번호가 일치하는지 확인하세요");
         return false;
      }
      
      if(document.join_form.reid.value == "") {
         alert("중복 체크를 하지 않았습니다.");
         join_form.user_id.focus();
         return false;
      }
         
      return true;
   }
   
   function idCheck(){
      if (document.join_form.user_id.value == "") {
         alert("아이디를 입력하여 주십시오");
         document.join_form.user_id.focus();
         return false;
      } else {
         //경로 값을 설정하면서 IdCheckServlet 서블릿 클래스의 doGet() 실행
         var url = "/product/id_check?user_id=" + document.join_form.user_id.value;
         window.open(url, "_blank_1","toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
      }
      
   }

   //제이쿼리
   $(document).ready(function() {
      $('#user_birth').datepicker();

      $('input[type="radio"]').on('click', function() {
         if (this.id !== 'etc') {
            $("#etc_detail").prop("disabled", true);
         } else {
            $("#etc_detail").prop("disabled", false);
         }
      });
   });
   
</script>
        
        
        
        
        
    </body>

    </html>