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
<title>CheckoutSuccess</title>
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




.pink_button > input{
background-color: #f6c6c9;
border:#f6c6c9;
color:#fff;
font-weight:700;
}

.pink_button > input:hover {
    background: #444444;
    color:white;
}
.pink_button>a {
	background-color: #f6c6c9;
	border: #f6c6c9;
}

.pink_button>a:hover {
	background: #444444;
}

.text_right{
float:right; text-align:right; display: inline-block; font-weight:500;
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

					<!-- 주문 완료 창 시작 -->
					<div class="row">
								<h2 style=" width:20%; display: inline-block; font-weight:500;">주문 완료</h2>
								
								<div>
								<h5 class="text_right"  style="color:#9bcaba">&nbsp;03 주문 완료</h5>
								<h5 class="text_right">&nbsp;02 주문/결제 > </h5>
								<h5 class="text_right">01 카트 > </h5>
								<br><h3></h3>
								</div>
							
								
					</div>
					<!-- 주문 완료 창 끝-->
			<br><br>
							<h4 style="text-align:center; font-weight:500;">주문 결제가 정상적으로 접수되었습니다.</h4>
							<h5 style="text-align:center;">자세한 구매내역 확인 및 배송지 변경 등의 서비스는 마이페이지>구매내역에서 확인하실 수 있습니다.</h5>
							<br> <br> <br>
							
							
							
							<!-- 결제 완료 정보 창 시작 -->
							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<form action="#">
										<div class="table-content table-responsive">
											<table>
												
												<tbody>
												
													<tr>
														<td class="product-thumbnail eceff8">주문번호</td>
														<td class="product-name eceff8">
															총 결제 금액
														</td>

													</tr>
													<tr>
														<td rowspan="3" class="product-thumbnail">40322224455</td>
														<td rowspan="2" class="product-thumbnail">72,500원</td>
													</tr>
													<tr></tr>
													<tr>
														<td class="product-thumbnail">무통장 입금 72,500원</td>
													</tr>
													
												</tbody>
											</table>
										</div>

									</form>
								</div>
							</div>
							<!-- 결제 완료 정보 끝-->
							
							<br>
							<!-- 무통장 결제 확인 창 시작-->
							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<form action="#">
										<div class="table-content table-responsive">
											<table>
												
												<tbody>
												
													<tr>
														<td class="product-thumbnail eceff8">입금은행</td>
														<td class="product-name">
															하나은행
														</td>

													</tr>
													<tr>
														<td class="product-thumbnail eceff8">예금계좌</td>
														<td class="">403-22224444-55555(예금주 : 김환희)</td>
													</tr>
													<tr>
														<td class="product-thumbnail eceff8">입금금액</td>
														<td class="product-name">72,500</td>

													</tr>
													<tr>
														<td class="product-thumbnail eceff8">입금기한</td>
														<td class="product-name">2018.03.32 18:22:44</td>

													</tr>
													
												</tbody>
											</table>
										</div>

									</form>
								</div>
							</div>
							<!-- (결제 정보 끝) -->
	입금 선택하신 은행을 확인하시고 입금해 주세요. 입금자와 주문자명이 일치하지 않아도 입금이 가능합니다.
	입금기한 내 입금하지 않으면 주문이 전체 자동취소 처리됩니다.
	입금시 은행 별 이체 수수료가 발생될 수 이 ㅆ습니다.
	은행에 따라 서비스 이용불가시간에는 입금이 어려우니, 입금전 반드시 해당 은행으이 서비스 이용시간을 확인 후 이용해 주세요.
	자세한 구매 내역 확인 및 배송지 변경 등의 서비스는 사이트 우측 상단의 마이페이지>구매내역에서 이용 가능합니다.						
	
							<br> <br> <br>
							<!-- 버튼 시작 -->
							<div class="row">
								<div class="col-md-4" style="margin-left: 20%">
									<div class="country-button" style="">
										<label><span class="required"></span></label>
										<div class="buttons-cart">
										<div class="pink_button">
													 <a href="#" style="width:200px; text-align:center">쇼핑 계속하기</a>
											</div>
											</div>
									</div>
								</div>

								<div class="col-md-4" style="margin-right: 10%">
									<div class="country-button" style="">
										<label><span class="required"></span></label>
										<div class="buttons-cart">
										<div class="pink_button">
										<a href="#" style="width:200px; text-align:center">구매 내역 보기</a>
											</div>
											</div>
									</div>

								</div>

							</div>


							<!-- 버튼 끝 -->

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

