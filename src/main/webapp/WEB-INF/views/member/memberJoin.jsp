<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
html>body>section>div>div>div>form span>.btn-in {
	background: #9bcaba;
	width: 100px;
	border-radius: 1px;
	font-size: 10px;
	text-align: center;
	padding: 15px;
	line-height: 10px
}
</style>


<script src="/resources/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body class="other-page">

	<!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

	<!-- Header Area Start -->
	<%@ include file="../default/header.jsp"%>
	<!-- Header Area End -->

	<!-- Page Content Wraper Area Start -->
	<!-- 메인 사이에 들어가는 내용 - 회원가입 : 지연 -->
	<section class="page-content-wrapper login-area">
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
										<button class="btn btn-success btn-in" style="margin: 8px;">
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
										<button class="btn btn-success btn-in" style="margin: 8px;">
											인증번호 전송 <i class="fa fa-mail-forward spaceLeft"></i>
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
										<button class="btn btn-success btn-in" style="margin: 8px;">
											인증번호 확인 <i class="fa fa-mail-forward spaceLeft"></i>
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
								<input class="form-control" type="text" placeholder="이메일">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputAddrnum">
								우편번호 </label>
							<div class="col-sm-6">
								<div class="input-group">
									<input class="form-control" id="inputAddrnum" type="text"
										placeholder="인증번호"> <span class="input-group-btn">
										<button class="btn btn-success btn-in" style="margin: 8px;">
											우편찾기 <i class="fa fa-mail-forward spaceLeft"></i>
										</button>
									</span>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputPost">기본주소</label>
							<div class="col-sm-6">
								<input class="form-control" type="text" placeholder="기본주소">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputPost">상세주소</label>
							<div class="col-sm-6">
								<input class="form-control" type="text"
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
								<button class="btn btn-primary" type="submit"
									style="background-color: #f6c6c9">
									회원가입<i class="fa fa-check spaceLeft"></i>
								</button>
								<button class="btn btn-danger" type="submit"
									style="background-color: #9bcaba">
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