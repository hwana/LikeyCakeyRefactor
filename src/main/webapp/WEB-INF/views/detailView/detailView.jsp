<<<<<<< HEAD
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
        <title>상품 상세 페이지</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

       <link rel="apple-touch-icon" href="/resources/img/apple-touch-icon.png">
		<link rel="shortcut icon" type="/resources/image/x-icon" href="/resources/img/icon/favicon.ico">
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
       	<link rel="stylesheet" href="/resources/css/young.css">
        <script src="/resources/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body class="other-page">

         

        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        
		<!-- 헤더 -->
		<jsp:include page="../default/header.jsp" flush="false"/>
        <!-- 헤더 끝 -->
        
        <!-- Page Content Wraper Area Start -->
        
        
        <section class="page-content-wrapper ptb-100">
			<!-- Single Product Top Info Start -->
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="breadcrumbs mb-40">
							<ul>
								<li class="home">
									<a title="Go to Home Page" href="index.html">Cake</a>
									<span class="arrow_carrot-right"></span>
								</li>
								<li class="home">
									<a title="Go to Paroduct page" href="single-product.html">All cake</a>
									<span class="arrow_carrot-right"></span>
								</li>
								<li class="category3">
									<span>Detail View</span>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-md-6">
						<div class="singlepro-left">
							<div class="pro-img-tab-content tab-content">
								<div class="tab-pane active" id="image-1">
									<div class="simpleLens-big-image-container">
										<a class="simpleLens-lens-image" data-lightbox="roadtrip" data-lens-image="/resources/img/single-product/1.jpg" href="img/single-product/1.jpg">
											<img src="/resources/img/single-product/1.jpg" alt="" class="simpleLens-big-image">
										</a>
									</div>
								</div>
								<div class="tab-pane" id="image-2">
									<div class="simpleLens-big-image-container">
										<a class="simpleLens-lens-image" data-lightbox="roadtrip" data-lens-image="/resources/img/single-product/2.jpg" href="img/single-product/2.jpg">
											<img src="/resources/img/single-product/2.jpg" alt="" class="simpleLens-big-image">
										</a>
									</div>
								</div>
								<div class="tab-pane" id="image-3">
									<div class="simpleLens-big-image-container">
										<a class="simpleLens-lens-image" data-lightbox="roadtrip" data-lens-image="/resources/img/single-product/3.jpg" href="img/single-product/3.jpg">
											<img src="/resources/img/single-product/3.jpg" alt="" class="simpleLens-big-image">
										</a>
									</div>
								</div>
								<div class="tab-pane" id="image-4">
									<div class="simpleLens-big-image-container">
										<a class="simpleLens-lens-image" data-lightbox="roadtrip" data-lens-image="/resources/img/single-product/4.jpg" href="img/single-product/4.jpg">
											<img src="/resources/img/single-product/4.jpg" alt="" class="simpleLens-big-image">
										</a>
									</div>
								</div>
								<div class="tab-pane" id="image-5">
									<div class="simpleLens-big-image-container">
										<a class="simpleLens-lens-image" data-lightbox="roadtrip" data-lens-image="/resources/img/single-product/5.jpg" href="img/single-product/2.jpg">
											<img src="/resources/img/single-product/5.jpg" alt="" class="simpleLens-big-image">
										</a>
									</div>
								</div>
								<div class="tab-pane" id="image-6">
									<div class="simpleLens-big-image-container">
										<a class="simpleLens-lens-image" data-lightbox="roadtrip" data-lens-image="/resources/img/single-product/1.jpg" href="img/single-product/4.jpg">
											<img src="/resources/img/single-product/1.jpg" alt="" class="simpleLens-big-image">
										</a>
									</div>
								</div>
							</div>
							
							<div class="category mt-50">
										<h4>TAGS</h4>
										<div class="tag-list mt-30 text-uppercase">
											<ul>
												<li><a href="#">Message</a></li>
												<li><a href="#">Life</a></li>
												<li><a href="#">spa</a></li>
												<li><a href="#">skin care</a></li>
												<li><a href="#">nail care</a></li>
												<li><a href="#">Body care</a></li>
											</ul>
										</div>
									</div>
							
							<!-- <div class="pro-img-tab-slider indicator-style2 owl-carousel owl-theme owl-loaded owl-drag">
								
								
								
								
								
								
							 <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-750px, 0px, 0px); transition: 0s; width: 2625px;"><div class="owl-item cloned" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-3" data-toggle="tab"><img src="/resources/img/single-product/3-3.jpg" alt=""></a>
								</div></div><div class="owl-item cloned" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-4" data-toggle="tab"><img src="/resources/img/single-product/4-4.jpg" alt=""></a>
								</div></div><div class="owl-item cloned" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-5" data-toggle="tab"><img src="/resources/img/single-product/2-2.jpg" alt=""></a>
								</div></div><div class="owl-item cloned" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-6" data-toggle="tab"><img src="/resources/img/single-product/4-4.jpg" alt=""></a>
								</div></div><div class="owl-item active" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-1" data-toggle="tab"><img src="/resources/img/single-product/1-1.jpg" alt=""></a>
								</div></div><div class="owl-item active" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-2" data-toggle="tab"><img src="/resources/img/single-product/2-2.jpg" alt=""></a>
								</div></div><div class="owl-item active" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-3" data-toggle="tab"><img src="/resources/img/single-product/3-3.jpg" alt=""></a>
								</div></div><div class="owl-item active" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-4" data-toggle="tab"><img src="/resources/img/single-product/4-4.jpg" alt=""></a>
								</div></div><div class="owl-item" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-5" data-toggle="tab"><img src="/resources/img/single-product/2-2.jpg" alt=""></a>
								</div></div><div class="owl-item" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-6" data-toggle="tab"><img src="/resources/img/single-product/4-4.jpg" alt=""></a>
								</div></div><div class="owl-item cloned" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-1" data-toggle="tab"><img src="/resources/img/single-product/1-1.jpg" alt=""></a>
								</div></div><div class="owl-item cloned" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-2" data-toggle="tab"><img src="/resources/img/single-product/2-2.jpg" alt=""></a>
								</div></div><div class="owl-item cloned" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-3" data-toggle="tab"><img src="/resources/img/single-product/3-3.jpg" alt=""></a>
								</div></div><div class="owl-item cloned" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-4" data-toggle="tab"><img src="/resources/img/single-product/4-4.jpg" alt=""></a>
								</div></div></div></div><div class="owl-nav"><div class="owl-prev"><i class="arrow_carrot-left"></i></div><div class="owl-next"><i class="arrow_carrot-right"></i></div></div>
								
								
								<div class="owl-dots disabled"></div></div> -->
						</div>
					</div>
					<div class="col-md-6">
						<div class="singlepro-right">
							<div class="snglepro-content">
								<span>TODAYS NEW DEAL</span>
								<h4><a href="single-product.html">떠먹는 딸기리코타치즈케이크</a></h4>
								<div class="rating-box">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<span>3 Reviews</span>
								</div>
								<div class="prce-stock">
									<h4>$89.90</h4>
									<h6>In Stock</h6>
								</div>
								<p>Loremipsum  olors tamet,con ectet adipisi cingelit,seddoeius mod tempor honm incididunt ut labore et dolore magna aliqua. Uenim admin mminim veniam, buis nostrudlity.</p>
								<div class="pro-info">
									<ul>
										<li>SKU: JQK123</li>
										<li>Categories: Man, Shoes</li>
										<li>Tags: shoes, man shoes, black</li>
									</ul>
								</div>
								<div class="input-content mb-50">
									<label>Quantity</label>
									<div class="quantity">
									
										
										<!-- 상품 + / - 제이쿼리에서 처리할 것 -->
										<div class="dec qtybutton">-</div>
										  <input type="text" value="0" name="qtybutton" class="cart-plus-minus-box">
										 <div class="inc qtybutton">+</div>
										 
										 
									</div>
								</div>
								<div class="sngle-pro-socl">
									<ul>
										<li><a href="#" class="social_facebook"></a></li>
										<li><a href="#" class="social_googleplus"></a></li>
										<li><a href="#" class="social_twitter"></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Single Product Top Info Start -->
			<!-- Single Product Discription Start -->
			<section class="pro-disciptin mt-100">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<div class="p-details-tab">
								<ul role="tablist">
									<li role="presentation" class="active">
										<a href="#description" aria-controls="description" role="tab" data-toggle="tab">description</a>
									</li>
									<li role="presentation">
										<a href="#reviews" aria-controls="reviews" role="tab" data-toggle="tab">additional information </a>
									</li>
									<li role="presentation">
										<a href="#tags" aria-controls="tags" role="tab" data-toggle="tab">review (3)</a>
									</li>
									<li role="presentation">
										<a href="#cutomer" aria-controls="tags" role="tab" data-toggle="tab">customer tab</a>
									</li>
								</ul>
							</div>
							<div class="tab-content review">
								<div role="tabpanel" class="tab-pane active" id="description">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum d</p>
								</div>
								<div role="tabpanel" class="tab-pane" id="reviews">
									<div class="row">
										<div class="col-md-6">
											<div class="review-left">
												<p> <a href="#">Hastech</a><span> Review by </span> Hastech </p>
												<div class="review-rating">
													<p>price</p>
													<div class="rating">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
												<div class="review-rating">
													<p>value</p>
													<div class="rating">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
												<div class="review-rating">
													<p>quality</p>
													<div class="rating">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
												<p>Hastech <span class="italic">(Posted on 11/4/2015)</span></p>
											</div>
										</div>
										<div class="col-md-6">
											<div class="review-right">
												<h3>You're reviewing: Tristique ut lectus</h3>
												<h4>How do you rate this product? *</h4>
												<form action="mail.php" method="post">
													<div class="p-details-table table-responsive">
														<table>
															<thead>
																<tr>
																	<th></th>
																	<th>1 star</th>
																	<th>2 stars</th>
																	<th>3 stars</th>
																	<th>4 stars </th>
																	<th>5 stars </th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<th>Price</th>
																	<td><input type="radio" class="radio" value=""></td>
																	<td><input type="radio" class="radio" value=""></td>
																	<td><input type="radio" class="radio" value=""></td>
																	<td><input type="radio" class="radio" value=""></td>
																	<td><input type="radio" class="radio" value=""></td>
																</tr>
																<tr>
																	<th>Value</th>
																	<td><input type="radio" class="radio" value=""></td>
																	<td><input type="radio" class="radio" value=""></td>
																	<td><input type="radio" class="radio" value=""></td>
																	<td><input type="radio" class="radio" value=""></td>
																	<td><input type="radio" class="radio" value=""></td>
																</tr>
																<tr>
																	<th>Quality</th>
																	<td><input type="radio" class="radio" value=""></td>
																	<td><input type="radio" class="radio" value=""></td>
																	<td><input type="radio" class="radio" value=""></td>
																	<td><input type="radio" class="radio" value=""></td>
																	<td><input type="radio" class="radio" value=""></td>
																</tr>
															</tbody>
														</table>    
													</div>
												</form>    
											</div>
										</div>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane" id="tags">
									<div class="product-tag-name">
										<form action="https://devitems.com/tf/stepre-preview/stepre/mail.php" method="post">
											<div class="row form-top">
												<div class="form-group col-sm-12 col-md-12 col-lg-12">
													<label>Add Your Tags:</label>
													<input type="text" class="form-control">
													<a class="add-tag-btn" href="#">ADD Tags</a>
												</div>
											</div>
										</form>
										<p>Use spaces to separate tags. Use single quotes (') for phrases.</p>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane" id="cutomer">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum d</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- Single Product Discription End -->
			<!-- Month Top Sale Area Start -->
			<section class="top-sale-month-area ptb-90">
				<!-- SECTION TITEL -->
				<div class="section-titel style-two text-center mb-115 text-uppercase">
					<h3>this month’s - top sale</h3>
				</div>
				<!-- SECTION TITEL -->
				<div class="container">
					<div class="row">
						<div class="product-gallery owl-carousel owl-theme owl-loaded owl-drag">
							<!-- Single Product Start -->
							
							<!-- Single Product End -->
							<!-- Single Product Start -->
							
							<!-- Single Product End -->
							<!-- Single Product Start -->
							
							<!-- Single Product End -->
							<!-- Single Product Start -->
							
							<!-- Single Product End -->
							<!-- Single Product Start -->
							
							<!-- Single Product End -->
							<!-- Single Product Start -->
							
							<!-- Single Product End -->
						<div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1125px, 0px, 0px); transition: 0s; width: 4500px;"><div class="owl-item cloned" style="width: 375px;"><div class="col-md-12 item">
								<div class="single-product">
									<div class="single-img">
										<a href="#"><img src="/resources/img/product/4.jpg" alt=""></a>
										<div class="hover-content text-center">
											<ul>
												<li><a href="#" class="icon_refresh"></a></li>
												<li><a href="#" class="icon_cart_alt "></a></li>
												<li><a href="#" class="icon_heart_alt"></a></li>
												<li>
													<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="product-details mt-20">
										<h4><a href="single-product.html">Roberto Cavalli</a><span>kajol &amp; eyeliner</span></h4>
										<div class="rating-box">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="price-box">
											<span class="old-price">$40.00</span>
											<span class="new-price"> - $80.00</span>
										</div>
									</div>
								</div>
							</div></div><div class="owl-item cloned" style="width: 375px;"><div class="col-md-12 item">
								<div class="single-product">
									<div class="single-img">
										<a href="#"><img src="/resources/img/product/2.jpg" alt=""></a>
										<div class="hover-content text-center">
											<ul>
												<li><a href="#" class="icon_refresh"></a></li>
												<li><a href="#" class="icon_cart_alt "></a></li>
												<li><a href="#" class="icon_heart_alt"></a></li>
												<li>
													<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="product-details mt-20">
										<h4><a href="single-product.html">Roberto Cavalli</a><span>kajol &amp; eyeliner</span></h4>
										<div class="rating-box">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="price-box">
											<span class="old-price">$40.00</span>
											<span class="new-price"> - $80.00</span>
										</div>
									</div>
								</div>
							</div></div><div class="owl-item cloned" style="width: 375px;"><div class="col-md-12 item">
								<div class="single-product">
									<div class="single-img">
										<a href="#"><img src="/resources/img/product/1.jpg" alt=""></a>
										<div class="hover-content text-center">
											<ul>
												<li><a href="#" class="icon_refresh"></a></li>
												<li><a href="#" class="icon_cart_alt "></a></li>
												<li><a href="#" class="icon_heart_alt"></a></li>
												<li>
													<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="product-details mt-20">
										<h4><a href="single-product.html">Roberto Cavalli</a><span>kajol &amp; eyeliner</span></h4>
										<div class="rating-box">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="price-box">
											<span class="old-price">$40.00</span>
											<span class="new-price"> - $80.00</span>
										</div>
									</div>
								</div>
							</div></div><div class="owl-item active" style="width: 375px;"><div class="col-md-12 item">
								<div class="single-product">
									<div class="single-img">
										<a href="#"><img src="/resources/img/product/1.jpg" alt=""></a>
										<div class="hover-content text-center">
											<ul>
												<li><a href="#" class="icon_refresh"></a></li>
												<li><a href="#" class="icon_cart_alt "></a></li>
												<li><a href="#" class="icon_heart_alt"></a></li>
												<li>
													<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="product-details mt-20">
										<h4><a href="single-product.html">Beauty Brush</a><span>Blashan Brush</span></h4>
										<div class="rating-box">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="price-box">
											<span class="old-price">$30.00</span>
											<span class="new-price"> - $20.00</span>
										</div>
									</div>
								</div>
							</div></div><div class="owl-item active" style="width: 375px;"><div class="col-md-12 item">
								<div class="single-product">
									<div class="single-img">
										<a href="#"><img src="/resources/img/product/2.jpg" alt=""></a>
										<div class="hover-content text-center">
											<ul>
												<li><a href="#" class="icon_refresh"></a></li>
												<li><a href="#" class="icon_cart_alt "></a></li>
												<li><a href="#" class="icon_heart_alt"></a></li>
												<li>
													<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="product-details mt-20">
										<h4><a href="single-product.html">Beauty Face</a><span>Blashan Face</span></h4>
										<div class="rating-box">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="price-box">
											<span class="old-price">$15.00</span>
											<span class="new-price"> - $70.00</span>
										</div>
									</div>
								</div>
							</div></div><div class="owl-item" style="width: 375px;"><div class="col-md-12 item">
								<div class="single-product">
									<div class="single-img">
										<a href="#"><img src="/resources/img/product/3.jpg" alt=""></a>
										<div class="hover-content text-center">
											<ul>
												<li><a href="#" class="icon_refresh"></a></li>
												<li><a href="#" class="icon_cart_alt "></a></li>
												<li><a href="#" class="icon_heart_alt"></a></li>
												<li>
													<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="product-details mt-20">
										<h4><a href="single-product.html">Roberto Cavalli</a><span>eyeliner &amp; kajol</span></h4>
										<div class="rating-box">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="price-box">
											<span class="old-price">$20.00</span>
											<span class="new-price"> - $80.00</span>
										</div>
									</div>
								</div>
							</div></div><div class="owl-item" style="width: 375px;"><div class="col-md-12 item">
								<div class="single-product">
									<div class="single-img">
										<a href="#"><img src="/resources/img/product/4.jpg" alt=""></a>
										<div class="hover-content text-center">
											<ul>
												<li><a href="#" class="icon_refresh"></a></li>
												<li><a href="#" class="icon_cart_alt "></a></li>
												<li><a href="#" class="icon_heart_alt"></a></li>
												<li>
													<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="product-details mt-20">
										<h4><a href="single-product.html">Roberto Cavalli</a><span>kajol &amp; eyeliner</span></h4>
										<div class="rating-box">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="price-box">
											<span class="old-price">$40.00</span>
											<span class="new-price"> - $80.00</span>
										</div>
									</div>
								</div>
							</div></div><div class="owl-item" style="width: 375px;"><div class="col-md-12 item">
								<div class="single-product">
									<div class="single-img">
										<a href="#"><img src="/resources/img/product/2.jpg" alt=""></a>
										<div class="hover-content text-center">
											<ul>
												<li><a href="#" class="icon_refresh"></a></li>
												<li><a href="#" class="icon_cart_alt "></a></li>
												<li><a href="#" class="icon_heart_alt"></a></li>
												<li>
													<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="product-details mt-20">
										<h4><a href="single-product.html">Roberto Cavalli</a><span>kajol &amp; eyeliner</span></h4>
										<div class="rating-box">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="price-box">
											<span class="old-price">$40.00</span>
											<span class="new-price"> - $80.00</span>
										</div>
									</div>
								</div>
							</div></div><div class="owl-item" style="width: 375px;"><div class="col-md-12 item">
								<div class="single-product">
									<div class="single-img">
										<a href="#"><img src="/resources/img/product/1.jpg" alt=""></a>
										<div class="hover-content text-center">
											<ul>
												<li><a href="#" class="icon_refresh"></a></li>
												<li><a href="#" class="icon_cart_alt "></a></li>
												<li><a href="#" class="icon_heart_alt"></a></li>
												<li>
													<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="product-details mt-20">
										<h4><a href="single-product.html">Roberto Cavalli</a><span>kajol &amp; eyeliner</span></h4>
										<div class="rating-box">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="price-box">
											<span class="old-price">$40.00</span>
											<span class="new-price"> - $80.00</span>
										</div>
									</div>
								</div>
							</div></div><div class="owl-item cloned" style="width: 375px;"><div class="col-md-12 item">
								<div class="single-product">
									<div class="single-img">
										<a href="#"><img src="/resources/img/product/1.jpg" alt=""></a>
										<div class="hover-content text-center">
											<ul>
												<li><a href="#" class="icon_refresh"></a></li>
												<li><a href="#" class="icon_cart_alt "></a></li>
												<li><a href="#" class="icon_heart_alt"></a></li>
												<li>
													<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="product-details mt-20">
										<h4><a href="single-product.html">Beauty Brush</a><span>Blashan Brush</span></h4>
										<div class="rating-box">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="price-box">
											<span class="old-price">$30.00</span>
											<span class="new-price"> - $20.00</span>
										</div>
									</div>
								</div>
							</div></div><div class="owl-item cloned" style="width: 375px;"><div class="col-md-12 item">
								<div class="single-product">
									<div class="single-img">
										<a href="#"><img src="/resources/img/product/2.jpg" alt=""></a>
										<div class="hover-content text-center">
											<ul>
												<li><a href="#" class="icon_refresh"></a></li>
												<li><a href="#" class="icon_cart_alt "></a></li>
												<li><a href="#" class="icon_heart_alt"></a></li>
												<li>
													<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="product-details mt-20">
										<h4><a href="single-product.html">Beauty Face</a><span>Blashan Face</span></h4>
										<div class="rating-box">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="price-box">
											<span class="old-price">$15.00</span>
											<span class="new-price"> - $70.00</span>
										</div>
									</div>
								</div>
							</div></div><div class="owl-item cloned" style="width: 375px;"><div class="col-md-12 item">
								<div class="single-product">
									<div class="single-img">
										<a href="#"><img src="/resources/img/product/3.jpg" alt=""></a>
										<div class="hover-content text-center">
											<ul>
												<li><a href="#" class="icon_refresh"></a></li>
												<li><a href="#" class="icon_cart_alt "></a></li>
												<li><a href="#" class="icon_heart_alt"></a></li>
												<li>
													<a title="Quick View" href="#" data-toggle="modal" data-target="#productModal" class="icon_search"></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="product-details mt-20">
										<h4><a href="single-product.html">Roberto Cavalli</a><span>eyeliner &amp; kajol</span></h4>
										<div class="rating-box">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="price-box">
											<span class="old-price">$20.00</span>
											<span class="new-price"> - $80.00</span>
										</div>
									</div>
								</div>
							</div></div></div></div><div class="owl-nav"><div class="owl-prev"><i class="arrow_carrot-left"></i></div><div class="owl-next"><i class="arrow_carrot-right"></i></div></div><div class="owl-dots disabled"></div></div>
					</div>
				</div>
			</section>
			<!-- Month Top Sale Area End -->
			<!-- On Sale Product Area Start -->
			<section class="onslepro-area">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-sm-6 res-mb-sm-30">
							<div class="on-sale-heading">
								<h3>TOP SALE</h3>
							</div>
							<!-- On sale product single -->
							<div class="onsale-single mb-30">
								<div class="onsale-img">
									<img src="/resources/img/onsale/1.jpg" alt="">
								</div>
								<div class="onsale-content">
									<span>SUN-SKIN</span>
									<h6><a href="single-product.html">Skiny Shirt with Long</a></h6>
									<div class="price-box">
										<span class="old-price">$90.00</span>
										<span class="new-price">  $80.00</span>
									</div>
								</div>
							</div>
							<!-- On sale product single -->
							<!-- On sale product single -->
							<div class="onsale-single mb-30">
								<div class="onsale-img">
									<img src="/resources/img/onsale/2.jpg" alt="">
								</div>
								<div class="onsale-content">
									<span>Man shirt</span>
									<h6><a href="single-product.html">Skiny Shirt with Long</a></h6>
									<div class="price-box">
										<span class="old-price">$35.00</span>
									</div>
								</div>
							</div>
							<!-- On sale product single -->
							<!-- On sale product single -->
							<div class="onsale-single">
								<div class="onsale-img">
									<img src="/resources/img/onsale/3.jpg" alt="">
								</div>
								<div class="onsale-content">
									<span>Man shirt</span>
									<h6><a href="single-product.html">Skiny Shirt with Long</a></h6>
									<div class="price-box">
										<span class="old-price">$90.00</span>
									</div>
								</div>
							</div>
							<!-- On sale product single -->
						</div>
						<div class="col-md-4 col-sm-6 res-mb-sm-30">
							<div class="on-sale-heading">
								<h3>NEW ARRIVAL</h3>
							</div>
							<!-- On sale product single -->
							<div class="onsale-single mb-30">
								<div class="onsale-img">
									<img src="/resources/img/onsale/4.jpg" alt="">
								</div>
								<div class="onsale-content">
									<span>SUN-SKIN</span>
									<h6><a href="single-product.html">Skiny Shirt with Long</a></h6>
									<div class="price-box">
										<span class="old-price">$90.00</span>
										<span class="new-price">  $80.00</span>
									</div>
								</div>
							</div>
							<!-- On sale product single -->
							<!-- On sale product single -->
							<div class="onsale-single mb-30">
								<div class="onsale-img">
									<img src="/resources/img/onsale/5.jpg" alt="">
								</div>
								<div class="onsale-content">
									<span>Man shirt</span>
									<h6><a href="single-product.html">Skiny Shirt with Long</a></h6>
									<div class="price-box">
										<span class="old-price">$35.00</span>
									</div>
								</div>
							</div>
							<!-- On sale product single -->
							<!-- On sale product single -->
							<div class="onsale-single">
								<div class="onsale-img">
									<img src="/resources/img/onsale/6.jpg" alt="">
								</div>
								<div class="onsale-content">
									<span>Man shirt</span>
									<h6><a href="single-product.html">Skiny Shirt with Long</a></h6>
									<div class="price-box">
										<span class="old-price">$90.00</span>
									</div>
								</div>
							</div>
							<!-- On sale product single -->
						</div>
						<div class="col-md-4 hidden-sm hidden-xs">
							<div class="on-sale-heading">
								<h3>best sale</h3>
							</div>
							<!-- On sale product single -->
							<div class="onsale-single mb-30">
								<div class="onsale-img">
									<img src="/resources/img/onsale/7.jpg" alt="">
								</div>
								<div class="onsale-content">
									<span>SUN-SKIN</span>
									<h6><a href="single-product.html">Skiny Shirt with Long</a></h6>
									<div class="price-box">
										<span class="old-price">$90.00</span>
										<span class="new-price">  $80.00</span>
									</div>
								</div>
							</div>
							<!-- On sale product single -->
							<!-- On sale product single -->
							<div class="onsale-single mb-30">
								<div class="onsale-img">
									<img src="/resources/img/onsale/8.jpg" alt="">
								</div>
								<div class="onsale-content">
									<span>Man shirt</span>
									<h6><a href="single-product.html">Skiny Shirt with Long</a></h6>
									<div class="price-box">
										<span class="old-price">$35.00</span>
									</div>
								</div>
							</div>
							<!-- On sale product single -->
							<!-- On sale product single -->
							<div class="onsale-single">
								<div class="onsale-img">
									<img src="/resources/img/onsale/9.jpg" alt="">
								</div>
								<div class="onsale-content">
									<span>Man shirt</span>
									<h6><a href="single-product.html">Skiny Shirt with Long</a></h6>
									<div class="price-box">
										<span class="old-price">$90.00</span>
									</div>
								</div>
							</div>
							<!-- On sale product single -->
						</div>
					</div>
				</div>
			</section>
			<!-- On Sale Product Area End -->
		</section>
		
		
		<section class="page-content-wrapper">
			<div class="container">
				<div class="row">
					<div class="content-full pt-90 pb-100 fix">
						<!-- Left Side Start -->
						<div class="col-md-3">
							<div class="right-area">
								<div class="product-filter">
									<h6>product filter</h6>
									<!-- Category Product -->
									<div class="category mt-50">
										<h4>categories</h4>
										<div class="category-list mt-20">
											<ul>
												<li>
													<a href="#"><i class="zmdi zmdi-chevron-right"></i>Body & Skin Care<span>20</span></a>
												</li>
												<li>
													<a href="#"><i class="zmdi zmdi-chevron-right"></i>Face-Powder<span>26</span></a>
												</li>
												<li>
													<a href="#"><i class="zmdi zmdi-chevron-right"></i>Bridal Make-Up<span>15</span></a>
												</li>
												<li>
													<a href="#"><i class="zmdi zmdi-chevron-right"></i>Accessories<span>22</span></a>
												</li>
											</ul>
										</div>
									</div>
									<!-- Category Product -->
									<!-- Tag Widget -->
									<div class="category mt-50">
										<h4>TAGS</h4>
										<div class="tag-list mt-30 text-uppercase">
											<ul>
												<li><a href="#">Message</a></li>
												<li><a href="#">Life</a></li>
												<li><a href="#">spa</a></li>
												<li><a href="#">skin care</a></li>
												<li><a href="#">nail care</a></li>
												<li><a href="#">Body care</a></li>
											</ul>
										</div>
									</div>
									<!-- Tag Widget -->
									<!-- Subcribe Widget -->
									<div class="category mt-40">
										<h4>Subscribe</h4>
										<div class="mt-30 widget-newsletter">
											<p>Lorem ipsum dolor sit amet, love dost   consectetur adipisicing elit, </p>
											<form action="#">
												<input placeholder="Enter Your email" type="text">
												<button type="submit">Send</button>
											</form>
										</div>
									</div>
									<!-- Subcribe Widget -->
									<!-- Recent Widget -->
									<div class="category mt-50">
										<h4>recent post</h4>
										<div class="recent-post mt-30 fix">
											<div class="single-recent-post mb-15">
												<div class="recent-post-thumbnail">
													<img src="/resources/img/arrival/1.jpg" alt="">
												</div>
												<div class="post-detail">
													<div class="post-title">
														<h5><a href="#">Ut enim ad minim nostrud</a></h5>
													</div>
													<div class="post-publish">
														<p class="post-date">
															On 01 Dec 2017 
														</p>
													</div>
												</div>
											</div> 
											<div class="single-recent-post mb-15">
												<div class="recent-post-thumbnail">
													<img src="/resources/img/arrival/2.jpg" alt="">
												</div>
												<div class="post-detail">
													<div class="post-title">
														<h5><a href="#">Ut enim ad minim nostrud</a></h5>
													</div>
													<div class="post-publish">
														<p class="post-date">
															On 01 Dec 2017 
														</p>
													</div>
												</div>
											</div> 
											<div class="single-recent-post">
												<div class="recent-post-thumbnail">
													<img src="/resources/img/arrival/3.jpg" alt="">
												</div>
												<div class="post-detail">
													<div class="post-title">
														<h5><a href="#">Ut enim ad minim nostrud</a></h5>
													</div>
													<div class="post-publish">
														<p class="post-date">
															On 01 Dec 2017 
														</p>
													</div>
												</div>
											</div>    
										</div>
									</div>
									<!-- Recent Widget -->
								</div>
								<div class="product-filter mt-50">
									<h6>new arrival</h6>
									<div class="new-arrival-area">
										<!-- Arrival Single --> 
										<div class="new-arrival-single mt-50 mb-30">
											<div class="arrival-thumbnail">
												<img src="/resources/img/arrival/1.jpg" alt="" />
											</div>
											<div class="arrival-content">
												<h6><a href="#">Mix Oill Control Cream</a></h6>
												<div class="price-box">
													<span class="old-price">$40.00</span>
													<span class="new-price">$80.00</span>
												</div>
											</div>
										</div>
										<!-- Arrival Single -->
										<!-- Arrival Single --> 
										<div class="new-arrival-single mb-30">
											<div class="arrival-thumbnail">
												<img src="/resources/img/arrival/2.jpg" alt="" />
											</div>
											<div class="arrival-content">
												<h6><a href="#">Whitening Powder</a></h6>
												<div class="price-box">
													<span class="old-price">$40.00</span>
													<span class="new-price">$80.00</span>
												</div>
											</div>
										</div>
										<!-- Arrival Single --> 
										<!-- Arrival Single --> 
										<div class="new-arrival-single mb-30">
											<div class="arrival-thumbnail">
												<img src="/resources/img/arrival/3.jpg" alt="" />
											</div>
											<div class="arrival-content">
												<h6><a href="#">Multi Color Eye Sha-dows</a></h6>
												<div class="price-box">
													<span class="old-price">$40.00</span>
													<span class="new-price">$80.00</span>
												</div>
											</div>
										</div>
										<!-- Arrival Single --> 
										<!-- Arrival Single --> 
										<div class="new-arrival-single">
											<div class="arrival-thumbnail">
												<img src="/resources/img/arrival/4.jpg" alt="" />
											</div>
											<div class="arrival-content">
												<h6><a href="#">Blashan Bea-uty Blende</a></h6>
												<div class="price-box">
													<span class="old-price">$40.00</span>
													<span class="new-price">$80.00</span>
												</div>
											</div>
										</div>
										<!-- Arrival Single --> 
									</div>
								</div>
							</div>
						</div>
						<!-- Left Side End -->
						<!-- Right Side Start -->
						<div class="col-md-9">
							<div class="blog-details-area">
								<div class="blog-left-single mb-30 res-mb-30 res-mb-sm-30 res-blog-mt-50">
									<div class="blg-img">
										<img src="/resources/img/blog/blog-details.jpg" alt="" />
										<a href="#" class="icon_link"></a>
									</div>
									<div class="blog-content">
										<div class="date-athr">
											<span class="icon_profile "></span>
											<h6>aeyeshadow box</h6>
											<span class="date">20 Dec, 2017</span>
										</div>
										<div class="blog-content-text">
											<h4><a href="blog-details.html">Get it Hurry with Budget</a></h4>
											<p>Lorem ipsum dolor sit consectetur adipisicing elit, sed do eiusmod tempor inquaerat.Lorem ipsum dolor sit consectetur adipisicing elit, sed do eiusmod tempor inquaerat.Lorem ipsum dolor sit consectetur adipisicing elit, sed do eiusmod tempor inquaerat.Lorem ipsum dolor sit consectetur adipisicing elit, sed do eiusmod tempor inquaerat.sed do eiusmod tempor inquaerat Lorem ipsum dolor sit consectetur adipisicing elit.</p>
											<p>Lorem ipsum dolor sit consectetur adipisicing elit, sed do eiusmod tempor inquaerat.Lorem ipsum dolor sit consectetur adipisicing elit, sed do eiusmod tempor inquaerat.Lorem ipsum dolor sit consectetur adipisicing elit, sed do eiusmod tempor inquaerat.Lorem ipsum dolor sit consectetur adipisicing elit, sed do eiusmod tempor inquaerat.Lorem ipsum dolor sit consectetur adipisicing elit.</p>
											<a href="#">read more<span class="icon-left" data-icon="&#x24;"></span></a>
										</div>
									</div>
								</div>
								<div class="reply-comment-area">
									<h3>3 comments</h3>
									<div class="single-reply">
										<div class="comment-author">
											<img alt="" src="/resources/img/blog/comment.jpg">
										</div>
										<div class="comment-info">
											<div class="comment-author-info">
												<a href="#"><b>admin</b></a>
												Post author
												<span>October 6, 2014 at 1:38 am</span>
												<a href="#">Reply</a>
											</div>
											<p>just a nice post</p>
										</div>
									</div>
									<div class="single-reply user-comment">
										<div class="comment-author">
											<img alt="" src="/resources/img/blog/comment-2.jpg">
										</div>
										<div class="comment-info">
											<div class="comment-author-info">
												<a href="#"><b>demo</b></a>
												Post author
												<span>October 6, 2014 at 1:38 am</span>
												<a href="#">Reply</a>
											</div>
											<p>just a nice post</p>
										</div>
									</div>
									<div class="single-reply">
										<div class="comment-author">
											<img alt="" src="/resources/img/blog/comment.jpg">
										</div>
										<div class="comment-info">
											<div class="comment-author-info">
												<a href="#"><b>admin</b></a>
												Post author
												<span>October 6, 2014 at 1:38 am</span>
												<a href="#">Reply</a>
											</div>
											<p>just a nice post</p>
										</div>
									</div>
								</div>
								<div class="user-comment-form-area">
									<h3>Leave a Reply</h3>
									<div class="contact">
										<p>Your email address will not be published. Required fields are marked <span class="required">*</span></p>
										<form class="form" name="enq" method="post" action="mail.php">
											<div class="row">
												<div class="form-group col-md-6">
													<input type="text" name="name" class="form-control" id="first-name" placeholder="Name" required="required">
												</div>
												<div class="form-group col-md-6">
													<input type="email" name="email" class="form-control" id="email" placeholder="Email" required="required">
												</div>
												<div class="form-group col-md-12 mbnone">
													<textarea rows="7" name="message" class="form-control" id="description" placeholder="Your Message" required="required"></textarea>
												</div>
												<div class="col-md-12">
													<div class="actions">
														<input type="submit" value="Send message" name="submit" class="btn btn-lg btn-contact-bg" title="Submit Your Message!">
													</div>
												</div>
											</div>
										</form>
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
        
        <!-- 푸터 -->
        <jsp:include page="../default/footer.jsp" flush="false"/>
        <!-- 푸터 끝 -->
        
        
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

=======
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
        <title>상품 상세 페이지</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

       <link rel="apple-touch-icon" href="/resources/img/apple-touch-icon.png">
		<link rel="shortcut icon" type="/resources/image/x-icon" href="/resources/img/icon/favicon.ico">
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
       	<link rel="stylesheet" href="/resources/css/young.css">
        <script src="/resources/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body class="other-page">

         

        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        
		<!-- 헤더 -->
		<jsp:include page="../default/header.jsp" flush="false"/>
        <!-- 헤더 끝 -->
        
        <!-- Page Content Wraper Area Start -->
        
        
        <section class="page-content-wrapper ptb-100">
			<!-- Single Product Top Info Start -->
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="breadcrumbs mb-40">
							<ul>
								<li class="home">
									<a title="Go to Home Page" href="index.html">Cake</a>
									<span class="arrow_carrot-right"></span>
								</li>
								<li class="home">
									<a title="Go to Paroduct page" href="single-product.html">All cake</a>
									<span class="arrow_carrot-right"></span>
								</li>
								<li class="category3">
									<span>Detail View</span>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-md-6">
						<div class="singlepro-left">
							<div class="pro-img-tab-content tab-content">
								<div class="tab-pane active" id="image-1">
									<div class="simpleLens-big-image-container">
										<a class="simpleLens-lens-image" data-lightbox="roadtrip" data-lens-image="/resources/img/single-product/1.jpg" href="img/single-product/1.jpg">
											<img src="/resources/img/single-product/1.jpg" alt="" class="simpleLens-big-image">
										</a>
									</div>
								</div>
								<div class="tab-pane" id="image-2">
									<div class="simpleLens-big-image-container">
										<a class="simpleLens-lens-image" data-lightbox="roadtrip" data-lens-image="/resources/img/single-product/2.jpg" href="img/single-product/2.jpg">
											<img src="/resources/img/single-product/2.jpg" alt="" class="simpleLens-big-image">
										</a>
									</div>
								</div>
								<div class="tab-pane" id="image-3">
									<div class="simpleLens-big-image-container">
										<a class="simpleLens-lens-image" data-lightbox="roadtrip" data-lens-image="/resources/img/single-product/3.jpg" href="img/single-product/3.jpg">
											<img src="/resources/img/single-product/3.jpg" alt="" class="simpleLens-big-image">
										</a>
									</div>
								</div>
								<div class="tab-pane" id="image-4">
									<div class="simpleLens-big-image-container">
										<a class="simpleLens-lens-image" data-lightbox="roadtrip" data-lens-image="/resources/img/single-product/4.jpg" href="img/single-product/4.jpg">
											<img src="/resources/img/single-product/4.jpg" alt="" class="simpleLens-big-image">
										</a>
									</div>
								</div>
								<div class="tab-pane" id="image-5">
									<div class="simpleLens-big-image-container">
										<a class="simpleLens-lens-image" data-lightbox="roadtrip" data-lens-image="/resources/img/single-product/5.jpg" href="img/single-product/2.jpg">
											<img src="/resources/img/single-product/5.jpg" alt="" class="simpleLens-big-image">
										</a>
									</div>
								</div>
								<div class="tab-pane" id="image-6">
									<div class="simpleLens-big-image-container">
										<a class="simpleLens-lens-image" data-lightbox="roadtrip" data-lens-image="/resources/img/single-product/1.jpg" href="img/single-product/4.jpg">
											<img src="/resources/img/single-product/1.jpg" alt="" class="simpleLens-big-image">
										</a>
									</div>
								</div>
							</div>
							
							<div class="detail-likes-wrap">
								<!-- 좋아요 누르면 fa fa-heart-o에서 fa-heart로 변경될 것 -->
								<a href=# class="detail-likes"><i class="fa fa-heart-o">&nbsp;10 Likes </i></a>
							</div>
							
							<div class="category mt-50">
										<h4>TAGS</h4>
										<div class="tag-list mt-30 text-uppercase">
											<ul>
												<li><a href="#">#복숭아</a></li>
												<li><a href="#">#생크림</a></li>
												<li><a href="#">#과일</a></li>
												<li><a href="#">#화이트시트</a></li>
												<li><a href="#">#빵케이크</a></li>
												<li><a href="#">#오지는 맛</a></li>
											</ul>
										</div>
									</div>
							
							<!-- <div class="pro-img-tab-slider indicator-style2 owl-carousel owl-theme owl-loaded owl-drag">
								
								
								
								
								
								
							 <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-750px, 0px, 0px); transition: 0s; width: 2625px;"><div class="owl-item cloned" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-3" data-toggle="tab"><img src="/resources/img/single-product/3-3.jpg" alt=""></a>
								</div></div><div class="owl-item cloned" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-4" data-toggle="tab"><img src="/resources/img/single-product/4-4.jpg" alt=""></a>
								</div></div><div class="owl-item cloned" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-5" data-toggle="tab"><img src="/resources/img/single-product/2-2.jpg" alt=""></a>
								</div></div><div class="owl-item cloned" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-6" data-toggle="tab"><img src="/resources/img/single-product/4-4.jpg" alt=""></a>
								</div></div><div class="owl-item active" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-1" data-toggle="tab"><img src="/resources/img/single-product/1-1.jpg" alt=""></a>
								</div></div><div class="owl-item active" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-2" data-toggle="tab"><img src="/resources/img/single-product/2-2.jpg" alt=""></a>
								</div></div><div class="owl-item active" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-3" data-toggle="tab"><img src="/resources/img/single-product/3-3.jpg" alt=""></a>
								</div></div><div class="owl-item active" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-4" data-toggle="tab"><img src="/resources/img/single-product/4-4.jpg" alt=""></a>
								</div></div><div class="owl-item" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-5" data-toggle="tab"><img src="/resources/img/single-product/2-2.jpg" alt=""></a>
								</div></div><div class="owl-item" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-6" data-toggle="tab"><img src="/resources/img/single-product/4-4.jpg" alt=""></a>
								</div></div><div class="owl-item cloned" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-1" data-toggle="tab"><img src="/resources/img/single-product/1-1.jpg" alt=""></a>
								</div></div><div class="owl-item cloned" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-2" data-toggle="tab"><img src="/resources/img/single-product/2-2.jpg" alt=""></a>
								</div></div><div class="owl-item cloned" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-3" data-toggle="tab"><img src="/resources/img/single-product/3-3.jpg" alt=""></a>
								</div></div><div class="owl-item cloned" style="width: 157.5px; margin-right: 30px;"><div class="item">
									<a href="#image-4" data-toggle="tab"><img src="/resources/img/single-product/4-4.jpg" alt=""></a>
								</div></div></div></div><div class="owl-nav"><div class="owl-prev"><i class="arrow_carrot-left"></i></div><div class="owl-next"><i class="arrow_carrot-right"></i></div></div>
								
								
								<div class="owl-dots disabled"></div></div> -->
						</div>
					</div>
					<div class="col-md-6">
						<div class="singlepro-right">
							<div class="snglepro-content">
								<span>복숭아 향이 감도는 화이트 시트 케이크</span>
								<h3 style="font-size: 2em;"><a href="single-product.html">오!해피 복숭아 케이크</a></h3>
								<div class="rating-box">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<span>3 Reviews</span>
								</div>
								<div class="prce-stock">
									<h4>\30,000</h4>
									<h6>뚜레쥬르</h6>
								</div>
								<p>촉촉한 화이트시트에 아삭아삭한 복숭아와 복숭아 생크림을 샌드하여 향긋한 복숭아맛을 가득 느낄 수 있는 생크림 케이크</p>
								<div class="pro-info">
									<ul>
									
										<!-- 당일 구매 가능 상품 여부 if/else  -->
										<li>* 당일 구매 가능</li>
										<li>* 한달 내로 예약 가능</li>
										<li>* 문구 추가 가능</li>
									</ul>
								</div>
								<div class="input-content mb-50">
									<div class="quantity">
									<label>상품 개수</label>

									<!-- 상품 + / - 제이쿼리에서 처리할 것 -->
										<div class="dec qtybutton">-</div>
										  <input type="text" value="0" name="qtybutton" class="cart-plus-minus-box">
										 <div class="inc qtybutton">+</div>
										 
										 
									</div>
									
									<div class="detail-input">
									
									<input placeholder="케이크에 추가하실 문구를 입력해주세요." type="text" class="detail-text mt-10">
 									<button type="submit" class="detail-btn">구매하기</button>
									<button type="submit" class="detail-btn">장바구니 담기</button>
									
									</div>
									
								</div>
								<div class="sngle-pro-socl">
									<ul>
										<li><a href="#" class="social_facebook"></a></li>
										<li><a href="#" class="social_googleplus"></a></li>
										<li><a href="#" class="social_twitter"></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Single Product Top Info Start -->



	<hr class="ml-100 mr-100">
	
		<!-- 상품 디테일 시작 -->
		<div class="detail-text-box mt-100 mb-100 ml-100 mr-100">
			<h2 class="detail-title">오!해피 복숭아 케이크</h2>
			<h3 class="detail-intro mtb-40">상품 소개</h3>
			
			<p class="detail-contents mtb-100">
				촉촉한 화이트시트에 아삭아삭한 복숭아와 복숭아 생크림을 샌드하여 향긋한 복숭아맛을 가득 느낄 수 있는 생크림 케이크 <br>
				슈가케이크, 무엇인가요? <br>
				<br>
				제과점에서 드시는 고급 파운드케이크 위에 설탕반죽을 씌워만드는 영국 왕실의 케이크로, <br>
				겉면의 설탕이 당절임 역할을 하여 별도의 방부제나 첨가제를 사용하기 않고도 유통기한 내 변질이 없는 케이크입니다.<br>
				<br>
				슈가케이크를 맛있게 드시려면<br>
				슈가케이크는 설탕 특성상 포장을 뜯어서 상온에 오래 두시면 수분이 말라 딱딱해질 수 있어요. <br>
				행사 시작 몇 시간 전에 케이크가 포장된 비닐팩을 뜯어 사용하시는 것을 권장해 드려요. 
				사용하시고 남은 케이크는 냉장보관하시면 좀 더 오래 즐기실 수 있어요.<br>
				<br>
				슈가케이크의 보존방법<br>
				하루이상 보관 후 사용하셔야 하는 경우에는 택배 받으신 박스를 뜯고 내부의 케이크만 꺼내어 냉장고에 보관해주세요 <br>
				(*케이크가 포장된 비닐은 제거하지 마세요. 냉장고 수분으로 케이크의 글씨 등이 망가질 수 있습니다)<br>
				사용하시지 몇 시간전에 꺼내어 상온과 온도평형이 되면 비닐을 뜯어주시면 됩니다.<br>
			</p>
				
				<h6 class="detail-h6">
				색소에 관련하여 알려드립니다. <br>
				본 제품에 사용된 색소는 미국 및 한국식약청의 허가를 받은 제품으로,인체에 무해한 안전한 색소입니다. <br>
				본제품은 데코레이션 기본케익색상이 진한편으로 색소에 대해 거부감이 있으신 분들께서는 색이흐린 타제품으로 선택해 주시기 바랍니다.<br>
				</h6>

			<ul class="mtb-40">
				<li><span class="tit">규격</span> <span class="data">500g*1ea/box</span></li>
				<li><span class="tit">사이즈</span> <span class="data">(cm) 9*9*6</span></li>
				<li><span class="tit">보관방법</span> <span class="data">-18˚C 이하</span></li>
				<li><span class="tit">유통기한</span> <span class="data">제조일로부터 6개월</span></li>
				
			</ul>

			<h3 class="detail-intro mt-100 mb-40">예약시 주의 사항</h3>
			<h6 class="detail-h6">
				- 필요하신 날보다 안전하게 하루 전 받아보시는 편을 추천해드립니다.<br>
				- 공휴일의 경우 택배사의 휴무로 인해 배송일 지정이 불가합니다. <br>
				- 월요일과 일요일은 토요일 택배 집하가 없으므로 선택하실 수 없습니다. <br>
				- 택배는 배송시간을 지정할 수 없으므로, 시간을 선택하실 수 없습니다. <br>
				- 날짜에 맞춰 배송처리 되지만 고객님의 주문서 표기에는 발송중 처리됩니다.<br>
				- 개봉 후 에는 변질의 우려가 있으니 가급적 한 번에 드시기 바랍니다. <br>
				- 함께 동봉해드리는 이용 및 보존안내 설명서를 반드시 읽어보시고 상품을 사용, 보관해주시기 바랍니다.<br>
				- 본 상품은 주문 후 제작에 들어가는 수제작 맞춤 상품으로, 주문 후 상품을 받으신 후에는 취소 및 반품이 불가합니다.<br>
				- 제작 요청시 고객님의 과실(문구오류 등)로 인한 환불은 불가능하므로, 충분히 검토 후 주문 부탁드립니다.
				</h6>

			<!-- shop 소개 시작 -->
			<div class="inner mt-150 mb-10">
				<div class="shop-location">
					
					<!-- 경도, 위도  -->
					<input type="hidden" name="spcLat" id="spcLat" value="37.518986">
					<input type="hidden" name="spcLng" id="spcLng" value="127.04174">
					
					<p class="shop-name mt-30">뚜레쥬르</p>
					<p class="shop-address">서울특별시 강남구 학동로55길 22&nbsp;뚜레쥬르 베이커리</p>
					<p class="shop-homepage">
						<a href="http://lasomme.com/shop/main/html.php?htmid=proc/smart_view1.htm&amp;tplSkin=standard"
						   target="_blank" alt="새창열기">http://lasomme.com/shop/main/html.php?htmid=proc/smart_view1.htm&amp;tplSkin=standard</a>
					</p>
				</div>

				<div class="row" id="_contact" _spaceid="3425" _spcnm="라쏨">
					<div>
						<a href=#> 
							<span class="btn-inner mr-10"><i class="fa fa-phone mr-10"></i>전화걸기</span>
						</a>
						<a href=#> 
							<span class="btn-inner"><i class="fa fa-location-arrow mr-10"></i>길찾기</span>
						</a>
					</div>
				</div>
			</div>

			<!-- 지도  -->
			<img id="_detailStaticMap" class="lazy"
				src="https://ssl.map.naver.com/staticmap/image?version=1.1&amp;crs=EPSG:4326&amp;center=127.04174,37.518986&amp;level=12&amp;baselayer=default&amp;overlayer=ol_vc_an&amp;exception=blank&amp;markers_icon=type,scloud,127.04174,37.518986&amp;scale=1&amp;caller=scloud&amp;format=jpeg&amp;dataversion=142.0&amp;w=761&amp;h=640"
				width="80%" height="100%">
			<!-- shop 소개 끝 -->



		<div class="detail-text-box mt-150">
			<h3 class="detail-intro mtb-40">네이버 블로그 리뷰</h3>
			
		<div class="story_box">
						<div class="story_list">
							<!-- [D] .lst_wrap의 가로 사이즈 : lst_stroy 가로 * 개수px-->
							<div class="lst_wrap">
							
								<!-- [D] 썸네일 없을 경우 class="no_thumb" 추가, .lst의 width값 : 브라우저 가로 사이즈 - 20px -->
								<div class="lst_story ">
									<a href="http://blog.naver.com/madurh/220876685585" target="_blank" class="inner">
										<!-- [D] 이미지 inline으로 background 처리 -->
										
										<span style="background-image: url(https://scloud.pstatic.net/20170129_215/1485675201358TIWEn_JPEG/KakaoTalk_20161202_193029356.jpg);" class="img_story"></span>
										
										<strong class="tit_story">홍대 파티룸 서울 파티룸 그라운드 연말파티장소 최적화 추천합니다!</strong>
										<dl class="editor_story">
											<dt>출처</dt>
											<dd>http://blog.naver.com/madurh/220876685585</dd>
										</dl>
										<p class="p_story">홍대와 합정 그리고 상수라는 삼각형 안에는 무수히 많은 맛집과 멋집들이 존재한다. 서울에 핫한 동네야 ...</p>
									</a>
								</div>
							
								<!-- [D] 썸네일 없을 경우 class="no_thumb" 추가, .lst의 width값 : 브라우저 가로 사이즈 - 20px -->
								<div class="lst_story ">
									<a href="http://blog.naver.com/2id-t/220878390584" target="_blank" class="inner">
										<!-- [D] 이미지 inline으로 background 처리 -->
										
										<span style="background-image: url(https://scloud.pstatic.net/20170129_80/1485675206167fE7f0_JPEG/20161205_132929.jpg);" class="img_story"></span>
										
										<strong class="tit_story">파티룸 그라운드 A ROOM 소개</strong>
										<dl class="editor_story">
											<dt>출처</dt>
											<dd>http://blog.naver.com/2id-t/220878390584</dd>
										</dl>
										<p class="p_story">안녕하세요. 스폰서 입니다. 이번에 저희가 운영하는 공간인 파티룸 그라운드에 대한 소개를 해드리려고 포...</p>
									</a>
								</div>
							
								<!-- [D] 썸네일 없을 경우 class="no_thumb" 추가, .lst의 width값 : 브라우저 가로 사이즈 - 20px -->
								<div class="lst_story ">
									<a href="http://blog.naver.com/2id-t/220879438622" target="_blank" class="inner">
										<!-- [D] 이미지 inline으로 background 처리 -->
										
										<span style="background-image: url(https://scloud.pstatic.net/20170129_204/1485675211113tc2HQ_JPEG/20161206_132058.jpg);" class="img_story"></span>
										
										<strong class="tit_story">파티룸 그라운드 B ROOM 소개</strong>
										<dl class="editor_story">
											<dt>출처</dt>
											<dd>http://blog.naver.com/2id-t/220879438622</dd>
										</dl>
										<p class="p_story">안녕하세요. 그라운드를 운영하고 있는 스폰서입니다. 어제는 A ROOM에 대해 소개를 드렸는데요. 오늘...</p>
									</a>
								</div>
							
								<!-- [D] 썸네일 없을 경우 class="no_thumb" 추가, .lst의 width값 : 브라우저 가로 사이즈 - 20px -->
								<div class="lst_story ">
									<a href="http://blog.naver.com/madurh/220907943695" target="_blank" class="inner">
										<!-- [D] 이미지 inline으로 background 처리 -->
										
										<span style="background-image: url(https://scloud.pstatic.net/20170129_24/1485675215730bG9dp_JPEG/KakaoTalk_Moim_5VRBpSLAramZgqQ4ThJiftqJx8WciR.jpg);" class="img_story"></span>
										
										<strong class="tit_story">서울 파티룸 홍대 그라운드 이만한 곳 어디에도 없다</strong>
										<dl class="editor_story">
											<dt>출처</dt>
											<dd>http://blog.naver.com/madurh/220907943695</dd>
										</dl>
										<p class="p_story">아직까지 크리스마스 분위기 물씬 나는 서울 파티룸 그라운드. 지난 번에 다녀온 후기가 엄청난 반응을 이...</p>
									</a>
								</div>
							
								<!-- [D] 썸네일 없을 경우 class="no_thumb" 추가, .lst의 width값 : 브라우저 가로 사이즈 - 20px -->
								<div class="lst_story ">
									<a href="https://blog.naver.com/2id-t/221205699245" target="_blank" class="inner">
										<!-- [D] 이미지 inline으로 background 처리 -->
										
										<span style="background-image: url(https://scloud.pstatic.net/20180210_122/1518246655801CTuPx_JPEG/KakaoTalk_20180210_153121506.jpg);" class="img_story"></span>
										
										<strong class="tit_story">홍대 파티룸 그라운드 보드게임 업그레이드 완료!</strong>
										<dl class="editor_story">
											<dt>출처</dt>
											<dd>https://blog.naver.com/2id-t/221205699245</dd>
										</dl>
										<p class="p_story">안녕하세요. 파티룸 그라운드를 운영하는 인디스폰서 입니다. 오픈 1주년을 맞이하여 그동안 낡았던 보드게...</p>
									</a>
								</div>
							
							</div>
							<div class="swiper_pagination"></div>
						</div>
					</div>
				
				
				
				
		</div>
		<!-- 상품 디테일 끝 -->


		<!-- 리뷰 시작 -->
		
		<div class="detail-text-box mt-100 mb-100">
		<h2 class="detail-intro">
				이용 후기 <strong class="mint">4개</strong>
				<i class="fa fa-circle ml-10 mr-10" style="font-size: 0.2em; color:#999999; vertical-align: middle"></i> 
				평균 평점 <strong class="mint">5.0</strong>
		</h2>

		<div>
			<ul class="review_list" id="review_list">
				<li class="rlist ">
					<div class="rbox_mine">
						<span class="pf_img"
							style="background-image: url(/resources/img/client/1.png)"></span>
						<strong class="guest_name">ohhapp***</strong>
						<p class="p_review">완전 최고!! 정말 맛있습니다!!! 배송도 원하는 시간에 오고 짱이에요 추천합니다~!</p>

							<div class="space_list swiper_list photo_review">
								<div class="flex_wrap column3 fluid">
									<article class="box box_space">
										<div class="inner">
											<a href="/resources/img/single-product/1.jpg"
												class="_review_img_link" target="_blank"
												data-img-path="/resources/img/single-product/1.jpg">
												<div class="img_box">
													<span class="img"
														style="background-image: url(/resources/img/single-product/1.jpg)">
													</span> <span class="border"></span>
												</div>
											</a>
										</div>
									</article>
								</div>
							</div>
							
							
							<div class="rbox_info_base">
							<span class="time_info">2017.01.02. 12:21:25</span>
						</div>
						<span class="rate_area"> <span class="blind">평점</span> 
						<span class="rate active"><i class="fa fa-star"></i></span>
							<span class="rate active"><i class="fa fa-star"></i></span>
							<span class="rate active"><i class="fa fa-star"></i></span>
							<span class="rate active"><i class="fa fa-star"></i></span>
							<span class="rate active"><i class="fa fa-star"></i></span>
						</span>
					</div>
					<div class="rbox_reply">
						<p class="p_tit_reply">
							<em>웰리스하우스</em>님의 댓글
						</p>
						<p class="p_review">후기 감사드립니다 ^^ 즐거운 연말 모임이 되셨다니 정말 기쁩니다 !!
							2017년 항상 좋은 일 가득하시고, 다음에 또 찾아주세요 :) 새해 복 많이 받으세요~!!</p>
						<div class="rbox_info_base">
							<p class="time_info">2017.01.02. 16:34:23</p>
						</div>
					</div>
				</li>
			</ul>
				<div class="paging text-center">
				
					<a href="javascript:void(0);" class="btn_prev_list_end" data-page="-4"> 
					<i class="fa fa-angle-double-left"></i></a>
					<a href="javascript:void(0);" class="btn_prev_list" data-page="0">
					<i class="fa fa-angle-left mr-10"></i></a>
					
					<a href="javascript:void(0);" class="num active" data-page="1">1</a>
					<a href="javascript:void(0);" class="num" data-page="2">2</a>
					<a href="javascript:void(0);" class="num" data-page="3">3</a>
					<a href="javascript:void(0);" class="num" data-page="4">4</a>
					<a href="javascript:void(0);" class="num" data-page="5">5</a>
					
					<a href="javascript:void(0);" class="btn_next_list active" data-page="2">
					<i class="fa fa-angle-double-right ml-10"></i></a>
					<a href="javascript:void(0);" class="btn_next_list_end active" data-page="6">
					<i class="fa fa-angle-right"></i></a>
				</div>

			</div>
	</div>

		<!-- 리뷰 끝 -->
		
		<!-- 문의 시작 -->
		<div class="detail-text-box mb-70" id="qna" style="">
			<h2 class="detail-intro">
				Q&amp;A&nbsp; <strong><em>0</em>개</strong>  		
				<!-- 모달창 처리하기  -->
				<a href="#" class="btn_qna_write"><i class="fa fa-pencil mr-10"></i> <span>질문 작성하기</span></a>
			</h2>
			<div class="ptb-150">
				<p class="qna_result">등록된 질문이 아직 없습니다.</p>
			</div>
		</div>
		<!-- 문의 끝 -->
		
		
		<!-- 호스트 프로필 시작 -->
		<div class="host_profile mb-100">
			<div class="inner">

				<div class="host_area" id="_host_map">
					<div
						style="background-image: url(https://scloud.pstatic.net/20161202_47/14806634454930axmA_PNG/015.png);"
						class="pf_left"></div>
					<div class="pf_right">
						<strong class="pf_host">HOST</strong> <span class="pf_name">그라운드</span>
						<p class="pf_txt">합정 파티룸 겸 스튜디오 [GROUND] 입니다.</p>
					</div>
				</div>
				<a href="#"> <span class="btn-inner"> 호스트 페이지로 이동  <i class="fa fa-arrow-right ml-10"></i></span>
				</a>

			</div>
		</div>
		<!-- 호스트 프로필 끝 -->
		
		<!-- 호스트의 다른 케이크  시작 -->
		<div class="detail-text-box mb-100" id="qna" style="">
			<h2 class="detail-intro"> 뚜레쥬르의 다른 케이크 </h2>
		</div>
		
		<div class="row">
		<div class="col-md-4">
			<div class="single-product style-two mb-50">
				<div class="single-img">
					<a href="#"><img src="/resources/img/product-tab/2.jpg" alt="" /></a>
					<div class="hover-content text-center">
						<ul>
							<li><a href="#" class="icon_cart_alt "></a></li>
							<li><a href="#" class="icon_heart_alt"></a></li>
						</ul>
					</div>
				</div>
				<div class="young-product-details mt-20">
					<h4>
						<a href="single-product.html">들어는 보셧나 마카롱 케이크</a>
					</h4>
					<div class="young-product-details-tag">
						<i class="fa fa-map-marker"></i> <span
							class="young-product-details-tag-place">서울시 북구</span> <i
							class="fa fa-tag"></i> <span
							class="young-product-details-tag-place-detail">#마카롱</span> <span
							class="young-product-details-tag-place-detail">#마카롱이라구?</span> <span
							class="young-product-details-tag-place-detail">#말도안돼</span>
					</div>
					<div class="young-product-details-price">
						<span>33,000 원</span> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i>
					</div>
				</div>
			</div>
		</div>
		</div>
		<!-- 호스트의 다른 케이크  시작 -->

	</section>
		
        <!-- 푸터 -->
        <jsp:include page="../default/footer.jsp" flush="false"/>
        <!-- 푸터 끝 -->
        
        
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

>>>>>>> branch 'master' of https://github.com/cadaldal/LikeyCakey.git
