<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Shop List</title>
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
		<link rel="stylesheet" href="/resources/css/magnific-popup.css">
        <link rel="stylesheet" href="/resources/css/animate.css">
        <link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
		<link rel="stylesheet" href="/resources/css/animate-heading.css">
        <link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="/resources/css/jquery-ui.css">
        <link rel="stylesheet" href="/resources/css/shortcode/shortcodes.css">
        <link rel="stylesheet" href="/resources/css/style.css">
        <link rel="stylesheet" href="/resources/css/responsive.css">
        <link rel="stylesheet" href="/resources/css/young.css">	
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body class="other-page">
		<!-- Header Area Start -->
		<%@ include file="../default/header.jsp"%>
        <!-- Header Area End -->
        <!-- Page Content Wraper Area Start -->
		<section class="young-page-content-wrapper">
			<div class="container">
				<div class="row">
					<div class="content-full pt-50 pb-55 fix">
						<!-- Left Side Start -->
						<div class="col-md-4">
							<div class="right-area pt-35">
								<div class="young-host-profile-box" style="transition: transform 0.5s cubic-bezier(0.39, 0.575, 0.565, 1) 0s; transform: translateY(0px);">
									<span><img src="/resources/img/young/touslesjours.png" alt="" /></span>
                				    <div>BAKERY</div>
                        			<p class="young-host-profile-box-name">뚜레주르</p>
                        			<p class="young-host-profile-box-exp">안녕하세요~ 뚜레주르입니다.</p>
                    	        </div>
							</div>
						</div>
						<!-- Left Side End -->
						<!-- Right Side Start -->
						<div class="col-md-8">
							<div class="tab-content">
								<div class="text_box first">
                    				<h4 class="h_intro">
                       					<em>뚜레주르</em>의 케이크 <strong class="txt_primary"><em id="_spaceCount">6개</em></strong>
                    				</h4>
                				</div>
								<div id="list" class="shop-right pt-35 tab-pane fade in active">
									<div class="row">
										<!-- Single Product Start -->
										<div class="col-md-6 col-sm-6">
											<div class="single-product style-two mb-50">
												<div class="young-single-img">
													<a href="#"><img src="/resources/img/young/1.jpg" alt="" /></a>
													<span class="pro-level">당일</span>
													<div class="hover-content text-center">
														<ul>
<!-- 															<li><a href="#" class="icon_refresh"></a></li>
 -->															<li><a href="#" class="icon_cart_alt "></a></li>
															<li><a href="#" class="icon_heart_alt"></a></li>
															<!-- <li>
																<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
															</li> -->
														</ul>
													</div>
												</div>
												<div class="young-product-details mt-20">
													<h4><a href="single-product.html">오지게 맛있는 초코케익</a></h4>
													<div class="young-product-details-tag">
														<i class="fa fa-map-marker"></i>
														<span class="young-product-details-tag-place">서울시 종로구</span>
														<i class="fa fa-tag"></i>
														<span class="young-product-details-tag-place-detail">#초코</span>
														<span class="young-product-details-tag-place-detail">#초코릿</span>
														<span class="young-product-details-tag-place-detail">#초코렛</span>
														<span class="young-product-details-tag-place-detail">#달아</span>
													</div>
													<div class="young-product-details-price">
														<span>23,000 원</span>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
											</div>
										</div>
										<!-- Single Product End -->
										<!-- Single Product Start -->
										<div class="col-md-6 col-sm-6">
											<div class="single-product style-two mb-50">
												<div class="young-single-img">
													<a href="#"><img src="/resources/img/young/2.jpg" alt="" /></a>
													<span class="pro-level">당일</span>
													<div class="hover-content text-center">
														<ul>
<!-- 															<li><a href="#" class="icon_refresh"></a></li>
 -->															<li><a href="#" class="icon_cart_alt "></a></li>
															<li><a href="#" class="icon_heart_alt"></a></li>
															<!-- <li>
																<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
															</li> -->
														</ul>
													</div>
												</div>
												<div class="young-product-details mt-20">
													<h4><a href="single-product.html">달달 딸기 치즈케이크</a></h4>
													<div class="young-product-details-tag">
														<i class="fa fa-map-marker"></i>
														<span class="young-product-details-tag-place">서울시 강남구</span>
														<i class="fa fa-tag"></i>
														<span class="young-product-details-tag-place-detail">#딸기</span>
														<span class="young-product-details-tag-place-detail">#딸기가조아</span>
														<span class="young-product-details-tag-place-detail">#너무너무너무너무</span>
														<span class="young-product-details-tag-place-detail">#달아</span>														</div>
													<div class="young-product-details-price">
														<span>34,000 원</span>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
											</div>
										</div>
										<!-- Single Product End -->
										<!-- Single Product Start -->
										<div class="col-md-6 col-sm-6">
											<div class="single-product style-two mb-50">
												<div class="young-single-img">
													<a href="#"><img src="/resources/img/young/3.jpg" alt="" /></a>
													<span class="pro-level">당일</span>
													<div class="hover-content text-center">
														<ul>
															<!-- <li><a href="#" class="icon_refresh"></a></li> -->
															<li><a href="#" class="icon_cart_alt "></a></li>
															<li><a href="#" class="icon_heart_alt"></a></li>
															<!-- <li>
																<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
															</li> -->
															</ul>
													</div>
												</div>
												<div class="young-product-details mt-20">
													<h4><a href="single-product.html">과일 생크림 케이크 무려 두겹이나 있다</a></h4>
													<div class="young-product-details-tag">
														<i class="fa fa-map-marker"></i>
														<span class="young-product-details-tag-place">서울시 동대문구</span>
															<i class="fa fa-tag"></i>
														<span class="young-product-details-tag-place-detail">#딸기</span>
														<span class="young-product-details-tag-place-detail">#블루베리</span>
														<span class="young-product-details-tag-place-detail">#크림</span>
														<span class="young-product-details-tag-place-detail">#두겹</span>
													</div>
													<div class="young-product-details-price">
															<span>40,000 원</span>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
													</div>
											</div>
										</div>
										<!-- Single Product End -->
										<!-- Single Product Start -->
										<div class="col-md-6 col-sm-6">
											<div class="single-product style-two mb-50">
												<div class="young-single-img">
													<a href="#"><img src="/resources/img/young/4.jpg" alt="" /></a>
													<span class="pro-level">당일</span>
													<div class="hover-content text-center">
														<ul>
															<!-- <li><a href="#" class="icon_refresh"></a></li> -->
															<li><a href="#" class="icon_cart_alt "></a></li>																<li><a href="#" class="icon_heart_alt"></a></li>
																<!-- <li>
																<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
															</li> -->
														</ul>
													</div>
												</div>
												<div class="young-product-details mt-20">
													<h4><a href="single-product.html">들어는 보셧나 마카롱 케이크</a></h4>
													<div class="young-product-details-tag">
														<i class="fa fa-map-marker"></i>
														<span class="young-product-details-tag-place">서울시 북구</span>
														<i class="fa fa-tag"></i>
														<span class="young-product-details-tag-place-detail">#마카롱</span>
														<span class="young-product-details-tag-place-detail">#마카롱이라구?</span>
														<span class="young-product-details-tag-place-detail">#말도안되</span>
														<span class="young-product-details-tag-place-detail">#이런게존재</span>
													</div>
													<div class="young-product-details-price">
														<span>33,000 원</span>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
											</div>
										</div>
										<!-- Single Product End -->
										<!-- Single Product Start -->
										<div class="col-md-6 col-sm-6">
											<div class="single-product style-two mb-50">
												<div class="young-single-img">
													<a href="#"><img src="/resources/img/young/5.jpg" alt="" /></a>
													<span class="pro-level">당일</span>
													<div class="hover-content text-center">
														<ul>
															<!-- <li><a href="#" class="icon_refresh"></a></li> -->
															<li><a href="#" class="icon_cart_alt "></a></li>
															<li><a href="#" class="icon_heart_alt"></a></li>
															<!-- <li>
																<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
															</li> -->
														</ul>
													</div>
												</div>
												<div class="young-product-details mt-20">
													<h4><a href="single-product.html">초코 체스판 카스테라</a></h4>
													<div class="young-product-details-tag">
														<i class="fa fa-map-marker"></i>
														<span class="young-product-details-tag-place">서울시 홍대</span>
														<i class="fa fa-tag"></i>
														<span class="young-product-details-tag-place-detail">#체크박스</span>
														<span class="young-product-details-tag-place-detail">#너텔라</span>
														<span class="young-product-details-tag-place-detail">#카스테라</span>
														<span class="young-product-details-tag-place-detail">#우유</span>
													</div>
													<div class="young-product-details-price">
														<span>28,000 원</span>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
											</div>
										</div>
										<!-- Single Product End -->
										<!-- Single Product Start -->
										<div class="col-md-6 col-sm-6">
											<div class="single-product style-two mb-50">
												<div class="young-single-img">
													<a href="#"><img src="/resources/img/young/6.jpg" alt="" /></a>
													<span class="pro-level">당일</span>
													<div class="hover-content text-center">
														<ul>
															<!-- <li><a href="#" class="icon_refresh"></a></li> -->
															<li><a href="#" class="icon_cart_alt "></a></li>
															<li><a href="#" class="icon_heart_alt"></a></li>
															<!-- <li>
																<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
															</li> -->
														</ul>
													</div>
												</div>
												<div class="young-product-details mt-20">
													<h4><a href="single-product.html">아이스 레몬 레인보우 케이크</a></h4>
													<div class="young-product-details-tag">
														<i class="fa fa-map-marker"></i>
														<span class="young-product-details-tag-place">서울시 강남구</span>
														<i class="fa fa-tag"></i>
														<span class="young-product-details-tag-place-detail">#레몬</span>
														<span class="young-product-details-tag-place-detail">#레인보우</span>
														<span class="young-product-details-tag-place-detail">#케달달</span>
														<span class="young-product-details-tag-place-detail">#상큼</span>
													</div>
													<div class="young-product-details-price">
														<span>39,000 원</span>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
											</div>
										</div>
										<!-- Single Product End -->
										<!-- Page Pagination Start -->
										<div class="col-md-12">
											<div class="page-pagination text-center pt-50">
												<ul>
													<li class="previous"><a href="#"><span class="icon-left" data-icon="&#x23;"></span></a></li>
													<li class="active"><a href="#">1</a></li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#">5</a></li>
													<li class="next"><a href="#"><span class="icon-right" data-icon="&#x24;"></span></a></li>
												</ul>
											</div>
										</div>
										<!-- Page Pagination End -->
									</div>
								</div>
								<div class = "young_blank">
								</div>
								<div class="text_box first">
                    				<h4 class="h_intro">
                       					이용 후기 <em>246개</em> 평균 평점 <strong class="txt_primary"><em id="_spaceCount">4.4</em></strong>
                    				</h4>
                				</div>
								<div id="list" class="shop-right pt-35 tab-pane fade in active young-lesspadding">
									<div class="row">
										<!-- Review List Start -->
										<div class="col-md-12">
											<div class="page-pagination text-center pt-50 young-getridofpaddingtop">
												<div class="young-review-wrap">
													<ul class="young-review-list">
														<li class="young-rlist">
															<span class="young-pfimage">
																	<img src="/resources/img/young/pika.PNG" alt="" />
															</span>
															<div class="young-review-mine">
																<strong class="young-guestname">
																	pikachustyle
																</strong>
																<p class="young-preview">
																	피카츄가 먹기에는 너무 달아요. 커피랑 먹으면 딱이겠네요.
																</p>
																<div class="young-extraimg">
																</div>
																<div class="young-infobase">
																	<a class="young-infobase-cake">들어는 보셨나 마카롱 케이크</a>
																	<span class="young-infobase-time">2018.03.20. 21:22:30</span>
																</div>
																<span class="young-ratearea">
																		<i class="fa fa-star"></i>
																		<i class="fa fa-star"></i>
																		<i class="fa fa-star"></i>
																		<i class="fa fa-star"></i>
																		<i class="fa fa-star"></i>
																</span>
															</div>
														</li>
														<li class="young-rlist">
															<span class="young-pfimage">
																	<img src="/resources/img/young/firee.png" alt="" />
															</span>
															<div class="young-review-mine">
																<strong class="young-guestname">
																	FIREEEEEEE
																</strong>
																<p class="young-preview">
																	아이스 케이크가 내가 먹기전에 녹아버려요 어떡해요?
																</p>
																<div class="young-extraimg">
																</div>
																<div class="young-infobase">
																	<a class="young-infobase-cake">아이스 레몬 레인보우 케이크</a>
																	<span class="young-infobase-time">2018.03.20. 21:22:30</span>
																</div>
																<span class="young-ratearea">
																		<i class="fa fa-star"></i>
																		<i class="fa fa-star"></i>
																		<i class="fa fa-star"></i>
																		<i class="fa fa-star"></i>
																		<i class="fa fa-star"></i>
																</span>
															</div>
														</li>
														<li class="young-rlist">
															<span class="young-pfimage">
																<img src="/resources/img/young/ggobu.png" alt="" />
															</span>
															<div class="young-review-mine">
																<strong class="young-guestname">
																	꼬북꼬북
																</strong>
																<p class="young-preview">
																	꼬부기는 딸기를 좋아해요.
																</p>
																<div class="young-extraimg">
																</div>
																<div class="young-infobase">
																	<a class="young-infobase-cake">달달 딸기 치즈케이크</a>
																	<span class="young-infobase-time">2017.11.20. 21:22:30</span>
																</div>
																<span class="young-ratearea">
																		<i class="fa fa-star"></i>
																		<i class="fa fa-star"></i>
																		<i class="fa fa-star"></i>
																		<i class="fa fa-star"></i>
																		<i class="fa fa-star"></i>
																</span>
															</div>
														</li>													
													</ul>
												</div>
											</div>
										</div>
										<!-- Review List End -->
										<div class = "young_blank">
										</div>
										<!-- Review Pagination Start -->
										<div class="col-md-12">
											<div class="page-pagination text-center pt-50">
												<ul>
													<li class="previous"><a href="#"><span class="icon-left" data-icon="&#x23;"></span></a></li>
													<li class="active"><a href="#">1</a></li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#">5</a></li>
													<li class="next"><a href="#"><span class="icon-right" data-icon="&#x24;"></span></a></li>
												</ul>
											</div>
										</div>
										<!-- Review Pagination End -->
									</div>
								</div>
							</div>	
						</div>
						<!-- Right Side End -->
					</div>
				</div>
			</div>
		</section>
        <!-- Page Content Wraper Area End -->
        <!-- Fotter Area Start -->
		<%@ include file="../default/footer.jsp"%>
        <!-- Fotter Area End -->
	   
	   <!--Quickview Product Start -->
        <div id="quickview-wrapper">
            <!-- Modal -->
            <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-product">
                                <div class="product-images">
                                    <div class="main-image images">
                                        <img alt="" src="img/other/quickview.jpg">
                                    </div>
                                </div>
                                <div class="product-info">
                                    <h1>Beauty Products</h1>
                                    <div class="price-box">
                                        <p class="price"><span class="special-price"><span class="amount">$132.00</span></span></p>
                                    </div>
                                    <a href="product-details.html" class="see-all">See all features</a>
                                    <div class="quick-add-to-cart">
                                        <form method="post" class="cart">
                                            <div class="numbers-row">
                                                <input type="number" id="french-hens" value="3">
                                            </div>
                                            <button class="single_add_to_cart_button" type="submit">Add to cart</button>
                                        </form>
                                    </div>
                                    <div class="quick-desc">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.
                                    </div>
                                    <div class="social-sharing">
                                        <div class="widget widget_socialsharing_widget">
                                            <h3 class="widget-title-modal">Share this product</h3>
                                            <ul class="social-icons">
                                                <li>
													<a target="_blank" title="Facebook" href="#" class="facebook social-icon"><i class="fa fa-facebook"></i></a>
												</li>
                                                <li>
													<a target="_blank" title="Twitter" href="#" class="twitter social-icon"><i class="fa fa-twitter"></i></a>
												</li>
                                                <li>
													<a target="_blank" title="Pinterest" href="#" class="pinterest social-icon"><i class="fa fa-pinterest"></i></a>
												</li>
                                                <li>
													<a target="_blank" title="Google +" href="#" class="gplus social-icon"><i class="fa fa-google-plus"></i></a>
												</li>
                                                <li>
													<a target="_blank" title="LinkedIn" href="#" class="linkedin social-icon"><i class="fa fa-linkedin"></i></a>
												</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div><!-- .product-info -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End of Quickview Product-->
	   
		<!-- all js here -->
        <!-- <script src="/resources/js/vendor/jquery-1.12.4.min.js"></script> -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
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
        <script src="/resources/js/young.js"></script>
    </body>
</html>

