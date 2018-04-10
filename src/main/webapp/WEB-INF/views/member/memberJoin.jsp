<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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

<!-- 유효성 검사를 위한 자바스크립트 -->
<script type="text/javascript"
		src="/resources/js/vendor/jquery-1.12.4.min.js"></script>


<!-- 주소 API -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function findPost() {
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

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
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
                document.getElementById('inputAddrnum').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('inputAddrB').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('inputAddrD').focus();
            }
        }).open();
    }
    
    
	// 비밀번호 확인
	function checkPwd(){
		  var pw1 = $("inputPassword").val();
		  var pw2 = $("inputPasswordCheck").val();
		  
		  if(pw1!=null && pw2!=null){
		  	if(pw1 != pw2){
		   		document.getElementById('pwcheck_change').style.color = "red";
		   		document.getElementById('pwcheck_change').innerHTML = "동일한 암호를 입력하세요."; 
		  	} else {
		   		document.getElementById('pwcheck_change').style.color = "blue";
		   		document.getElementById('pwcheck_change').innerHTML = "암호가 동일합니다."; 
		  	}
		 }
	}
</script>


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
					<form class="form-horizontal" action="memberInsert.ca" method="post">
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputId">아이디</label>
							<div class="col-sm-6">
								<div class="input-group">
									<input type="text" class="form-control" id="inputId" name="id"
										placeholder="아이디" /> <span class="input-group-btn">
										<input class="btn btn-success btn-in" style="margin: 8px;"
											id="check_id" type="button" value="중복확인">
									</span>
								</div>
								<div id="checkMsg"></div>
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputPassword" type="password"
									placeholder="숫자, 영어를 조합하여 6~20자리의 비밀번호를 입력해주세요." name="passwd">
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호
								확인</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputPasswordCheck"
									type="password" placeholder="비밀번호 확인" onkeyup="checkPwd()">
								<p class="help-block" id="pwcheck_change">비밀번호를 한번 더 입력해주세요.</p>
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputName">이름</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="inputName" type="text"
									placeholder="이름" name="name" />
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputCp">휴대폰번호</label>
							<div class="col-sm-6">
								<div class="input-group">
									<input type="tel" class="form-control" id="inputPhone"
										placeholder="-(대시)를 입력해 주세요" name="phone" /> 
										<span class="input-group-btn">
										<input class="btn btn-success btn-in" style="margin: 8px;" 
											   type="button" value="인증번호 전송">
									</span>
								</div>
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputNumberCheck">인증번호
								확인</label>
							<div class="col-sm-6">
								<div class="input-group">
									<input class="form-control" id="inputCpCheck" type="text"
										placeholder="인증번호"> <span class="input-group-btn">
										<input type="button" class="btn btn-success btn-in" style="margin: 8px;"
											value="인증번호 확인">
									</span>
								</div>
								<p class="help-block">전송된 인증코드를 입력해주세요.</p>
							</div>
						</div>


						<!-- 이메일 -->
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputEmail">이메일</label>
							<div class="col-sm-6">
								<input class="form-control" type="text" placeholder="이메일"
									name="email" id="inputEmail">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputAddrnum">
								우편번호 </label>
							<div class="col-sm-6">
								<div class="input-group">
									<input class="form-control" id="inputAddrnum" type="text"
										placeholder="우편번호" name="post"> <span
										class="input-group-btn">
										<input type="button" class="btn btn-success btn-in" style="margin: 8px;"
											id="post_find" value="우편찾기"  onclick="findPost()">
									</span>
								</div>
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputAddrB">기본주소</label>
							<div class="col-sm-6">
								<input class="form-control" type="text" placeholder="기본주소" id ="inputAddrB"
									name="addressBasic">
							</div>
						</div>



						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputAddrD">상세주소</label>
							<div class="col-sm-6">
								<input class="form-control" type="text" id="inputAddrD"
									placeholder="나머지 주소를 입력해주세요" name="addressDetail">
							</div>
						</div>


						<!-- jQuery와 Postcodify를 로딩한다 -->
						<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

						<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
						<script>
							$(function() {
								$("#post_find").postcodifyPopUp();
							});
						</script>


						<!-- 사진등록 -->
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputPhoto">사진등록</label>
							<div class="col-sm-6">
								<input class="form-control" type="file" id="inputFile">
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
								<input class="btn btn-primary" type="submit" id="join"
									style="background-color: #f6c6c9;
										   border : 0px;
										   width : 200px;" 
									value="회원가입">
								<input type="reset" class="btn btn-danger" id="cancel"
									style="background-color: #9bcaba;
										   border:0px;
										   width : 200px;" 
									value="가입 취소">
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
	<script src="/resources/js/vendor/modernizr-2.8.3.min.js"></script>
	<!-- 유효성 검사하는 js -->
	<script src="/resources/js/mem_join.js"></script>
</body>
</html>