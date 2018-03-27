<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>LikeyCakey 회원가입</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="/resources/img/apple-touch-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="/resources/img/icon/favicon.ico">
<!-- Place favicon.ico in the root directory -->


<!-- all css here -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/css/elegant-font.css">
<link rel="stylesheet"
	href="/resources/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="/resources/css/meanmenu.min.css">
<link rel="stylesheet" href="/resources/css/animate.css">
<link rel="stylesheet" href="/resources/css/magnific-popup.css">
<link rel="stylesheet" href="/resources/css/animate-heading.css">
<link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/resources/css/shortcode/shortcodes.css">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="/resources/css/responsive.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
<style>
.btn-setting {
	background:#9bcaba; 
	width:130px; 
	margin-left:3px;
	height:50px
}
</style>
	
	
<script src="/resources/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body class="other-page">

	<!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

	<!-- Header Area Start -->
	<header>
		<!-- Header Menu Area -->
		<div class="menu-area mt-60">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-12">
						<div class="logo-area text-center text-uppercase">
							<a href="index.html"><img src="/resources/img/icon/logo.png"
								alt="" /></a>
						</div>
					</div>
					<div class="col-md-9 col-sm-12">
						<div class="main-menu lemon-bg">
							<nav>
								<ul id="nav">
									<li><a href="index.html">Home</a></li>
									<li><a href="about.html">About Us</a></li>
									<li><a href="shop.html">SHOP</a>
										<ul>
											<li><a href="shop.html"><i
													class="arrow_carrot-right"></i> Shop</a></li>
											<li><a href="shop-grid.html"><i
													class="arrow_carrot-right"></i> Shop Grid</a></li>
											<li><a href="shop-list.html"><i
													class="arrow_carrot-right"></i> Shop List</a></li>
											<li><a href="single-product.html"><i
													class="arrow_carrot-right"></i> Single Product</a></li>
										</ul></li>
									<li><a href="blog.html">BLOG</a>
										<ul>
											<li><a href="blog.html"><i
													class="arrow_carrot-right"></i>Blog</a></li>
											<li><a href="blog-details.html"><i
													class="arrow_carrot-right"></i>Blog Details</a></li>
										</ul></li>
									<li><a href="#">PAGES</a>
										<ul>
											<li><a href="memberMypage.ca"><i
													class="arrow_carrot-right"></i>My page</a></li>
											<li><a href="cart.html"><i
													class="arrow_carrot-right"></i>Cart</a></li>
											<li><a href="account.html"><i
													class="arrow_carrot-right"></i>Account</a></li>
											<li><a href="memberJoin.ca"><i
													class="arrow_carrot-right"></i>Login</a></li>
										</ul></li>
									<li><a href="memberJoin.ca">JOIN</a></li>
									<li><a href="memberLogin.ca">LOGIN</a></li>
								</ul>
							</nav>
							<!-- Product Cart -->
							<div class="menu-right-area">
								<a href="#" class="mini-cart-icon"> <i class="icon_cart_alt"></i>
									<span>2</span>
								</a>
								<div class="top-cart-content">
									<!-- Cart Single -->
									<div class="media header-middle-checkout">
										<div class="media-left check-img">
											<a href="#"> <img alt=""
												src="/resources/img/other/cart-1.jpg">
											</a>
										</div>
										<div class="media-body checkout-content">
											<h4 class="media-heading">
												<a href="#">Men Fashion Spray</a> <span
													title="Remove This Item" class="btn-remove checkout-remove">
													<i class="fa fa-trash"></i>
												</span>
											</h4>
											<p>1 x $111.00</p>
										</div>
									</div>
									<!-- Cart Single -->
									<!-- Cart Single -->
									<div class="media header-middle-checkout">
										<div class="media-left check-img">
											<a href="#"> <img alt=""
												src="/resources/img/other/cart-2.jpg">
											</a>
										</div>
										<div class="media-body checkout-content">
											<h4 class="media-heading">
												<a href="#">Women Fashion Bag</a> <span
													title="Remove This Item" class="btn-remove checkout-remove">
													<i class="fa fa-trash"></i>
												</span>
											</h4>
											<p>3 x $125.00</p>
										</div>
									</div>
									<!-- Cart Single -->
									<div class="actions">
										<button type="button" title="Checkout-botton"
											class="Checkout-botton">
											<span>Checkout</span>
										</button>
									</div>
								</div>
							</div>
							<!-- Product Cart -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header Menu Area -->
		<!-- Header Slider Area -->
		<div class="slider-area">
			<div class="bend niceties preview">
				<div id="ensign-nivoslider" class="slides">
					<img src="/resources/img/slider/1.jpg" alt=""
						title="#slider-direction-1" />
				</div>
				<!-- direction 1 -->
				<div id="slider-direction-1" class="slider-direction">
					<div class="slider-content text-center s-tb slider-1">
						<div class="title-container s-tb-c title-compress">
							<h2 class="title2">
								<span class="NanumGothicBold">Likey Cakey</span><br>회원가입
							</h2>

							<!-- <div class="slider-btn text-uppercase"></div> -->


							<!-- Icon Left -->
							<!-- <div class="social-icon-left">
									<ul>
										<li><a href="#" class="social_facebook"></a></li>
										<li><a href="#" class="social_googleplus"></a></li>
										<li><a href="#" class="social_twitter"></a></li>
									</ul>
								</div>  -->
							<!-- Icon Left -->


							<!-- Icon Right -->
							<!-- <div class="social-icon-right">
								<ul>
									<li><a href="#" class="icon_refresh"></a></li>
									<li><a href="#" class="icon_heart_alt"></a></li>
									<li><a href="#" class=" icon_search"></a></li>
								</ul>
							</div> -->
							<!-- Icon Right -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header Slider Area -->
		<!-- MOBILE-MENU-AREA START -->
		<div class="mobile-menu-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="mobile-area">
							<div class="mobile-menu">
								<nav id="mobile-nav">
									<ul>
										<li><a href="index.html">Home </a>
											<ul>
												<li><a href="index.html">Home Two</a></li>
												<li><a href="index-3.html">Home Three</a></li>
												<li><a href="index-4.html">Home Four</a></li>
											</ul></li>
										<li><a href="about.html"> About Us </a></li>
										<li><a href="shop.html">SHOP</a>
											<ul>
												<li><a href="shop.html">Shop</a></li>
												<li><a href="shop-grid.html"> Shop Grid</a></li>
												<li><a href="shop-list.html"> Shop List</a></li>
												<li><a href="single-product.html">Single Product</a></li>
											</ul></li>
										<li><a href="blog.html">Blog</a></li>
										<li><a href="blog-details.html">Blog Details</a></li>
										<li><a href="#">PAGES</a>
											<ul>
												<li><a href="checkout.html">Checkout</a></li>
												<li><a href="cart.html">Cart</a></li>
												<li><a href="account.html">Account</a></li>
												<li><a href="wishlist.html">Wishlist</a></li>
												<li><a href="blog-details.html">Blog</a></li>
												<li><a href="login.html">Login</a></li>
											</ul></li>
										<li><a href="portfolio.html">Portfolio</a></li>
										<li><a href="404.html">404 Error</a></li>
										<li><a href="contact.html">Contact</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- MOBILE-MENU-AREA END  -->
	</header>
	<!-- Header Area End -->

	<!-- Page Content Wraper Area Start -->
	<!-- 메인 사이에 들어가는 내용 - 회원가입 : 지연 -->
	<section class="page-content-wrapper login-area ptb-100">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="page-header">
						<h1>
							회원가입 <small>[Likey Cakey 일반 회원]</small>
						</h1>
					</div>
					<form class="form-horizontal">
						<div class="form-group">
								<label class="col-sm-3 control-label" for="inputId">아이디</label>
								<div class="col-sm-6">
									<div class="input-group">
										<input type="tel" class="form-control" id="inputId"
											placeholder="아이디" /> <span class="input-group-btn">
											<button class="btn btn-success btn-setting">
												중복확인 <i class="fa fa-mail-forward spaceLeft"></i>
											</button>
										</span>
									</div>
								</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputPassword" type="password"
									placeholder="비밀번호">
								<p class="help-block">숫자, 특수문자 포함 8자 이상</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호
								확인</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputPasswordCheck"
									type="password" placeholder="비밀번호 확인">
								<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputName">이름</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputName" type="text"
									placeholder="이름">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label>
							<div class="col-sm-6">
								<div class="input-group">
									<input type="tel" class="form-control" id="inputNumber"
										placeholder="- 없이 입력해 주세요" /> <span class="input-group-btn">
										<button class="btn btn-success btn-setting">
											인증번호 전송 <i class="fa fa-mail-forward spaceLeft" ></i>
										</button>
									</span>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputNumberCheck">인증번호
								확인</label>
							<div class="col-sm-6">
								<div class="input-group">
									<input class="form-control" id="inputNumberCheck" type="text"
										placeholder="인증번호"> <span class="input-group-btn">
										<button class="btn btn-success btn-setting" type="button">
											인증번호 확인 <i class="fa fa-edit spaceLeft"></i>
										</button>
									</span>
								</div>
								<p class="help-block">전송된 인증코드를 입력해주세요.</p>
							</div>
						</div>
						
						
						<!-- 이메일 -->
					<div class="form-group">
							<label class="col-sm-3 control-label" for="inputEmail">이메일</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputName" type="text"
									placeholder="이메일">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputPost">우편번호</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputName" type="text"
									placeholder="우편번호">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputPost">기본주소</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputName" type="text"
									placeholder="기본주소">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputPost">상세주소</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputName" type="text"
									placeholder="나머지 주소를 입력해주세요">
							</div>
						</div>
						
						
						
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputAgree">약관
								동의</label>
							<div class="col-sm-6" data-toggle="buttons">
								<label class="btn btn-warning active"> <input id="agree"
									type="checkbox" autocomplete="off"> <span
									class="fa fa-check"></span>
								</label> <a href="#">이용약관</a>에 동의합니다.
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12 text-center">
								<button class="btn btn-primary" type="submit">
									회원가입<i class="fa fa-check spaceLeft"></i>
								</button>
								<button class="btn btn-danger" type="submit">
									가입취소<i class="fa fa-times spaceLeft"></i>
								</button>
							</div>
						</div>
					</form>
					<hr>
				</div>
			</div>
		</div>
	</section>

	<!-- Page Content Wraper Area End -->
	<!-- Footer 따로 뺀 후 페이지에 포함 : 지연 -->
	<%@ include file="../default/footer.jsp"%>


	<!-- all js here -->
	<script src="/resources/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/owl.carousel.min.js"></script>
	<script src="/resources/js/isotope.pkgd.min.js"></script>
	<script src="/resources/js/jquery.nivo.slider.js"></script>
	<script src="/resources/js/price-slider.js"></script>
	<script src="/resources/js/jquery.simpleLens.min.js"></script>
	<script src="/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="/resources/js/animated-heading.js"></script>
	<script src="/resources/js/jquery.ajaxchimp.min.js"></script>
	<script src="/resources/js/jquery.countdown.js"></script>
	<script src="/resources/js/jquery.meanmenu.js"></script>
	<script src="/resources/js/plugins.js"></script>
	<script src="/resources/js/main.js"></script>
</body>
</html>