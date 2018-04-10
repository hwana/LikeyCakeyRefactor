<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 카카오 로그인을 위한 API 경로지정 -->
<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- for naver login api -->
<script src="http://code.jquery.com/jquery-1.7.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js"></script>
<script src="js/jquery.innerfade.js"></script>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"></script>
<script type="text/javascript" src="jquery.cookie.js"></script>

<!-- <script type='text/javascript'>
	//<![CDATA[
	// 사용할 앱의 JavaScript 키를 설정해 주세요.
	Kakao.init('YOUR APP KEY');
	function loginWithKakao() {
		// 로그인 창을 띄웁니다.
		Kakao.Auth.login({
			success : function(authObj) {
				alert(JSON.stringify(authObj));
			},
			fail : function(err) {
				alert(JSON.stringify(err));
			}
		});
	};
	//]]>
</script> -->

<script>
	$(document)
			.ready(
					function() {
						Kakao.init("40a1519b1664a63360f87490b7164bf3");
						function getKakaotalkUserProfile() {
							Kakao.API
									.request({
										url : '/v1/user/me',
										success : function(res) {
											$("#kakao-profile").append(
													res.properties.nickname);
											$("#kakao-profile")
													.append(
															$(
																	"<img/>",
																	{
																		"src" : res.properties.profile_image,
																		"alt" : res.properties.nickname
																				+ "님의 프로필 사진"
																	}));
										},
										fail : function(error) {
											console.log(error);
										}
									});
						}
						
						function createKakaotalkLogin() {
							$(
									"#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn")
									.remove();
							var loginBtn = $("<a/>", {
								"class" : "kakao-login-btn",
								"text" : "로그인"
							});
							loginBtn.click(function() {
								Kakao.Auth.login({
									persistAccessToken : true,
									persistRefreshToken : true,
									success : function(authObj) {
										getKakaotalkUserProfile();
										createKakaotalkLogout();
									},
									fail : function(err) {
										console.log(err);
									}
								});
							});
							$("#kakao-logged-group").prepend(loginBtn)
						}
						
						function createKakaotalkLogout() {
							$(
									"#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn")
									.remove();
							var logoutBtn = $("<a/>", {
								"class" : "kakao-logout-btn",
								"text" : "로그아웃"
							});
							logoutBtn.click(function() {
								Kakao.Auth.logout();
								createKakaotalkLogin();
								$("#kakao-profile").text("");
							});
							$("#kakao-logged-group").prepend(logoutBtn);
						}
						if (Kakao.Auth.getRefreshToken() != undefined
								&& Kakao.Auth.getRefreshToken().replace(/ /gi,
										"") != "") {
							createKakaotalkLogout();
							getKakaotalkUserProfile();
						} else {
							createKakaotalkLogin();
						}
					});
</script>

<%@ include file="../default/header.jsp"%>

<script type="text/javascript">
	$(document).ready(function() {
		$("#biz_login").click(function() {
			//.serialize를 사용하여 폼에 저장된 모든 데이터를 가져온다.
			var form_data = $("#register-form").serialize();
			$.ajax({
				type : "POST",
				url : "loginCheck2.ca",
				dataType : "text",
				data : form_data,
				success : function(data) {
					if (data == "ok") {
						alert("로그인에 성공하셨습니다.")
						location.href = "home.ca?id=" + username.value;
					} else {
						$(".message").html("아이디 또는 비밀번호가 잘못되었습니다.");
					}
				}
			});//ajax
		});//submit
		
		
		
		// 일반회원 로그인
		$("#nor_login").click(function() {
			//.serialize를 사용하여 폼에 저장된 모든 데이터를 가져온다.
			var form_data = $("#login-form").serialize();
			$.ajax({
				type : "POST",
				url : "forLogin.ca",
				dataType : "text",
				data : form_data,
				success : function(data) {
					if (data == "ok") {
						alert("로그인에 성공하셨습니다.")
						location.href = "home.ca?id=" + username.value;
					} else {
						$(".message").html("아이디 또는 비밀번호가 잘못되었습니다.");
					}
				},
				
				error : function(request, status, error){
					alert ("code : " + request.status + "\n" + "message : " + request.responseText + "\n" +
							"error : " + error);
				}
			});//ajax
		});//submit
	});//ready
</script>

<div class="container" id="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-login" id="panel-login">

				<div class="panel-heading" id="panel-heading">
					<div class="row">
						<div class="col-xs-6">
							<a href="#" class="active" id="normal-member-link">일반회원</a>
						</div>
						<div class="col-xs-6">
							<a href="#" id="biz-member-link">사업가</a>
						</div>
					</div>
					<hr>
				</div>


				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<form id="login-form" action="forLogin.ca"
								class="form-horizontal" method="post" role="form"
								style="display: block;">
								<div class="form-group">
									<label class="col-xs-3 text-right" id="id">아이디</label>
									<div class="col-xs-8">
										<input type="text" name="id" tabindex="1"
											class="form-control" placeholder="아이디를 입력하세요." value="">
									</div>

									<label class="col-xs-3 text-right">비밀번호</label>
									<div class="col-xs-8">
										<input type="password" name="passwd" id="password"
											tabindex="2" class="form-control" placeholder="비밀번호를 입력하세요.">
									</div>
								</div>

								<div class="row">
									<div class="col-xs-8 col-xs-offset-2">
										<input type="button" name="login-submit"
											tabindex="4" class="form-control btn btn-login login-submit" value="로그인"
											id="nor_login">
									</div>
								</div>
								<div class="row text-center">
									<input type="checkbox" class="remember" name="remember">
									<label for="remember"> 아이디 저장하기</label>
								</div>

								<div class="row">
									<div class="col-xs-5 text-right">
										<a href="mem_choice.ca" class="forgot-password"
											id="forgot-password">회원가입</a>
									</div>
									<div class="col-xs-5 text-left">
										<a href="findIdpw.ca" class="forgot-password" id="forgot-find">아이디/비밀번호
											찾기</a>
									</div>
								</div>
							</form>





							<form id="register-form" action="loginCheck2.ca" method="post"
								role="form" style="display: none;" class="form-horizontal">

								<div class="form-group">
									<label class="col-xs-3 text-right" id="id">아이디</label>

									<div class="col-xs-8">

										<input type="text" name="id" tabindex="1" id="username"
											class="form-control username" placeholder="아이디를 입력하세요.">

									</div>



									<label class="col-xs-3 text-right">비밀번호</label>
									<div class="col-xs-8">


										<input type="password" name="passwd" id="password"
											tabindex="2" class="form-control" placeholder="비밀번호를 입력하세요.">
									</div>
								</div>
								<div class="col-xs-12 message"
									style="text-align: center; color: red; margin-bottom: 10px;"></div>
								<div class="row">
									<div class="col-xs-8 col-xs-offset-2">

										<input type="button" name="login-submit" tabindex="4"
											class="form-control btn btn-login login-submit" id="biz_login" value="로그인">
									</div>
								</div>
								<div class="row text-center">
									<input type="checkbox" class="remember" name="remember">
									<label for="remember"> 아이디 저장하기</label>
								</div>

								<div class="row">
									<div class="col-xs-5 text-right">
										<a href="bizJoin.ca" class="forgot-password">회원가입</a>
									</div>
									<div class="col-xs-5 text-left">
										<a href="#" class="forgot-password">아이디/비밀번호 찾기</a>
									</div>
								</div>
							</form>

							<!-- API 간편 로그인 - kakao -->
<!-- 						<div style="margin: 0 auto">
								<a id="custom-login-btn" href="javascript:loginWithKakao()">
									<img
									src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg"
									width="200" />
								</a>
							</div>
-->
							<div id="kakao-logged-group"></div>
							<div id="kakao-profile"></div>
							<%@include file="../member/naverLogin.jsp" %>
							
							

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="resources/js/login.js"></script>
</body>

</html>
