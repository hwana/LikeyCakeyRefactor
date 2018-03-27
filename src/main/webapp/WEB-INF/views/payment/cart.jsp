<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Cart</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="img/icon/favicon.ico">
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
<script src="/resources/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<style>
.eceff8 {
	background-color: #eceff8; /* #9bcaba */
	border-bottom-color: #eceff8;
	border-right-color: #eceff8;
}

.pink_button>input {
	background-color: #f6c6c9;
	border: #f6c6c9;
}

.pink_button>input:hover {
	background: #444444;
}

.pink_button>a {
	background-color: #f6c6c9;
	border: #f6c6c9;
}

.pink_button>a:hover {
	background: #444444;
}

.text_right {
	float: right;
	text-align: right;
	display: inline-block;
	font-weight: 500;
}
</style>
<body class="other-page">




	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!-- Header Area Start -->
	<header></header>
	<!-- Header Area End -->
	<!-- Page Content Wraper Area Start -->
	<section class="page-content-wrapper pt-100 pb-40">

		<!-- checkout-area start -->
		<div class="checkout-area">
			<div class="container">
				<div class="row">
					<form action="#">

						<div class="checkbox-form">

							<!-- 장바구니 창 -->
							<div class="row">
								<h2 style="width: 20%; display: inline-block; font-weight: 500;">카트</h2>

								<div>
									<h5 class="text_right">&nbsp;03 주문 완료</h5>
									<h5 class="text_right"">&nbsp;02 주문/결제 ></h5>
									<h5 class="text_right" style="color: #9bcaba">01 카트 ></h5>
									<br>
									<h3></h3>
								</div>


							</div>
							<!-- 장바구니 창 -->
							<br>
							<br>
							<!-- 장바구니 시작 -->
							<div class="row">
								<h3>주문 상품 정보</h3>
								<div class="col-md-12 col-sm-12 col-xs-12">
									<form action="#">
										<div class="table-content table-responsive">
											<table>
												<thead>
													<tr>
														<th class="product-thumbnail eceff8">이미지</th>
														<th class="product-name eceff8">상품 정보</th>
														<th class="product-price eceff8">상품 금액</th>
														<th class="product-quantity eceff8">수량</th>
														<th class="product-subtotal eceff8">총 상품 금액</th>
														<th class="product-subtotal eceff8">예약 날짜</th>
														<th class="product-remove eceff8">배송 금액</th>
														<th class="product-remove eceff8">삭제</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td class="product-thumbnail"><a href="#"><img
																src="/resources/img/product/3.jpg" alt=""></a></td>
														<td class="product-name"><a
															href="product-details.htm">
																<p style="font-weight: bold;">똔똔씨의 케잌가게</p>
														</a> <span>산타할아버지 초코케이크(구매수량 2개)</span></td>
														<td class="product-price"><span class="amount">35,000</span></td>
														<td class="product-quantity"><input type="number"
															value="2"></td>
														<td class="product-subtotal">70,000</td>
														<td class="product-subtotal">2018.03.24 18:00</td>
														<td class="product-subtotal">2,500</td>
														<td class="product-remove"><a href="#"><i
																class="fa fa-times"></i></a></td>
													</tr>
													<tr>
														<td class="product-thumbnail"><a href="#"><img
																src="/resources/img/product/4.jpg" alt=""></a></td>
														<td class="product-name"><a
															href="product-details.htm">Vestibulum dictum magna</a></td>
														<td class="product-price"><span class="amount">$50.00</span></td>
														<td class="product-quantity"><input type="number"
															value="1"></td>
														<td class="product-subtotal">$50.00</td>
														<td class="product-subtotal">2018.04.28 13:44</td>
														<td class="product-subtotal">무료 배송</td>
														<td class="product-remove"><a href="#"> <i
																class="fa fa-times"></i></a></td>
													</tr>
												</tbody>
											</table>
										</div>
<!-- 장바구니 끝 -->
<!-- 버튼, 총 금액 시작 -->


										<div class="row">
											<div class="col-md-8 col-sm-7 col-xs-12">
														<br><br><br><br><br><br>	
												<div class="buttons-cart">
												<div class="pink_button">
													<input type="submit" value="구매하기" style="width:200px;">
													 <a href="#" style="width:200px; text-align:center">쇼핑 계속하기</a>
												</div>
												</div>
											
											</div>
											<div class="col-md-4 col-sm-5 col-xs-12">
												<div class="cart_totals">
													<h2>Cart Totals</h2>
													<br>
													<table>
														<tbody>
															<tr class="cart-subtotal">
																<th>상품 금액</th>
																<td><span class="amount">70,000</span></td>
															</tr>
															<tr class="cart-subtotal">
																<th>배송 금액</th>
																<td><span class="amount">2,500</span></td>
															</tr>
															<tr class="order-total">
																<th>Total</th>
																<td><strong><span class="amount">72,500</span></strong>
																</td>
															</tr>
														</tbody>
													</table>

												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
							<!-- 버튼 끝 -->
							<br> <br> <br>



						</div>

					</form>
				</div>
			</div>
		</div>
		<!-- checkout-area end -->
	</section>
	<!-- Page Content Wraper Area End -->
	<!-- Fotter Area Start -->
	<footer>
		<!-- Footer Top Area End -->
		<div class="fotter-area dark-gray-bg ptb-100">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-4 col-xs-12">
						<div class="address-area res-mb-sm-30">
							<a href="/resources/index.html">shopzon</a>
							<p>Lorem ipsum dolor sit amet, consemi cteta dipisi cing
								elit, sed do eiusmod tempor.</p>
							<div class="contact-social mt-40">
								<ul>
									<li><a href="#" class="social_facebook "></a></li>
									<li><a href="#" class="social_twitter "></a></li>
									<li><a href="#" class="social_googleplus"></a></li>
									<li><a href="#" class="social_linkedin "></a></li>
									<li><a href="#" class="social_instagram "></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-4 col-xs-12 xs-res-mrbtm">
						<div class="footer-menu res-mb-sm-30">
							<h4>MY ACCOUNT</h4>
							<ul>
								<li><a href="#">FAQs</a></li>
								<li><a href="#">Payments</a></li>
								<li><a href="#">Track Your Order</a></li>
								<li><a href="#">Return Polcy</a></li>
								<li><a href="#">Warranty</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 hidden-sm hidden-xs">
						<div class="footer-menu">
							<h4>SHOP GUIDE</h4>
							<ul>
								<li><a href="#">Hot Sale</a></li>
								<li><a href="#">Best Sellar</a></li>
								<li><a href="#">Suppliers</a></li>
								<li><a href="#">Our Store</a></li>
								<li><a href="#">Deal of The Day</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-4 col-xs-12 xs-res-mrbtm">
						<div class="footer-menu">
							<h4>CONTACT INFO</h4>
							<div class="contact-details">
								<ul>
									<li><span class="icon_pin"></span>
										<p>Lusmod tempor incididunt</p></li>
									<li><span class="icon_mail"></span>
										<p>Lusmod incidiunt wesbvu</p></li>
									<li><span class="icon_phone "></span>
										<p>(256) 987 654 321</p></li>
									<li><span class="icon_clock_alt"></span>
										<p>8.00 am-6.00 pm</p></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer Top Area End -->
		<!-- Footer Bottom Area Start -->
		<div class="footer-bottom-area black-bg">
			<div class="container">
				<div class="row ">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<p>
							Copyright &copy; 2017.Company name All rights reserved.More
							Templates <a href="http://www.cssmoban.com/" target="_blank"
								title="模板之家">模板之家</a> - Collect from <a
								href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a><a
								target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
						</p>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<img src="/resources/img/icon/payment.png" alt="" />
					</div>
				</div>
			</div>
		</div>
		<!-- Footer Bottom Area End -->
	</footer>
	<!-- Fotter Area End -->

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

