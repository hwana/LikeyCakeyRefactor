<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
 <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>LikeyCakey 로그인</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="/resources/img/apple-touch-icon.png">
		<link rel="shortcut icon" type="image/x-icon" href="/resources/img/icon/favicon.ico">
        <!-- Place favicon.ico in the root directory -->
		
		
		<!-- all css here -->
        <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="/resources/css/font-awesome.min.css">
        <link rel="stylesheet" href="/resources/css/elegant-font.css">
        <link rel="stylesheet" href="/resources/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="/resources/css/meanmenu.min.css">
        <link rel="stylesheet" href="/resources/css/animate.css">
        <link rel="stylesheet" href="/resources/css/magnific-popup.css">
		<link rel="stylesheet" href="/resources/css/animate-heading.css">
        <link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
        <link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="/resources/css/shortcode/shortcodes.css">
        <link rel="stylesheet" href="/resources/css/style.css">
        <link rel="stylesheet" href="/resources/css/responsive.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
								<a href="index.html"><img src="/resources/img/icon/logo.png" alt="" /></a>
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
												<li><a href="shop.html"><i class="arrow_carrot-right"></i> Shop</a></li>
												<li><a href="shop-grid.html"><i class="arrow_carrot-right"></i> Shop Grid</a></li>
												<li><a href="shop-list.html"><i class="arrow_carrot-right"></i> Shop List</a></li>
												<li><a href="single-product.html"><i class="arrow_carrot-right"></i> Single Product</a></li>
											</ul>
										</li>
										<li><a href="blog.html">BLOG</a>
											<ul>
												<li><a href="blog.html"><i class="arrow_carrot-right"></i>Blog</a></li>
												<li><a href="blog-details.html"><i class="arrow_carrot-right"></i>Blog Details</a></li>
											</ul>
										</li>
										<li><a href="#">PAGES</a>
											<ul>
												<li><a href="checkout.html"><i class="arrow_carrot-right"></i>Checkout</a></li>
												<li><a href="cart.html"><i class="arrow_carrot-right"></i>Cart</a></li>
												<li><a href="account.html"><i class="arrow_carrot-right"></i>Account</a></li>
												<li><a href="memberJoin.ca"><i class="arrow_carrot-right"></i>Login</a></li>
											</ul>
										</li>
										<li><a href="memberJoin.ca">JOIN</a></li>
										<li><a href="memberLogin.ca">LOGIN</a></li>
									</ul>
								</nav>
								<!-- Product Cart -->
								<div class="menu-right-area">
									<a href="#" class="mini-cart-icon">
										<i class="icon_cart_alt"></i>
										<span>2</span>
									</a>
									<div class="top-cart-content">
										<!-- Cart Single -->
										<div class="media header-middle-checkout">
											<div class="media-left check-img">
												<a href="#">
													<img alt="" src="/resources/img/other/cart-1.jpg">
												</a>
											</div>
											<div class="media-body checkout-content">
												<h4 class="media-heading">
													<a href="#">Men Fashion Spray</a>
													<span title="Remove This Item" class="btn-remove checkout-remove">
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
												<a href="#">
													<img alt="" src="/resources/img/other/cart-2.jpg">
												</a>
											</div>
											<div class="media-body checkout-content">
												<h4 class="media-heading">
													<a href="#">Women Fashion Bag</a>
													<span title="Remove This Item" class="btn-remove checkout-remove">
														<i class="fa fa-trash"></i>
													</span>
												</h4>
												<p>3 x $125.00</p>
											</div>
										</div>
										<!-- Cart Single -->
										<div class="actions">
											<button type="button" title="Checkout-botton" class="Checkout-botton">
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
						<img src="/resources/img/slider/1.jpg" alt="" title="#slider-direction-1"  />
					</div>
				<!-- direction 1 -->
				<div id="slider-direction-1" class="slider-direction">
					<div class="slider-content text-center s-tb slider-1">
						<div class="title-container s-tb-c title-compress">
							<h2 class="title2"><span class="NanumGothicBold">Likey Cakey</span><br>회원가입</h2>

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
												</ul>
											</li>
											<li><a href="about.html"> About Us </a></li>
											<li><a href="shop.html">SHOP</a>
												<ul>
													<li><a href="shop.html">Shop</a></li>
													<li><a href="shop-grid.html"> Shop Grid</a></li>
													<li><a href="shop-list.html"> Shop List</a></li>
													<li><a href="single-product.html">Single Product</a></li>
												</ul>
											</li>
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
												</ul>
											</li>
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
					<div class="col-md-10 col-lg-10 col-sm-10">
						<div class="form-fields">
							<div class="col-md-6 col-lg-6 col-sm-6">
								<h2>회원가입</h2>
								<div id="id-div">
									<input type="text" class="join-div" style="background-color:white;"
									placeholder = "ID">
								</div>
								<div id="pw-div">
									<input type="password" class="join-div" style="background-color:white;"
									placeholder = "PASSWORD">
								</div>
							</div>
						</div>
						<div class="form-action">
							<input value="가입" type="submit">
						</div>
					</div>
				</div>
			</div>
		</section>
        <!-- Page Content Wraper Area End -->
      	
      	<!-- Footer 따로 뺀 후 페이지에 포함 : 지연 -->
	   	<%@ include file = "../default/footer.jsp" %>
	   	
	   	
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