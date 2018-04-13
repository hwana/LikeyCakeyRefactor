<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 카카오 로그인을 위한 API 경로지정 -->
<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- for naver login api -->
<script src="http://code.jquery.com/jquery-1.7.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js"></script>
<script src="js/jquery.innerfade.js"></script>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"></script>
<script type="text/javascript" src="jquery.cookie.js"></script>

<!-- <script type='text/javascript'>
	//<![CDATA[
	// 사용할 앱의 JavaScript 키를 설정해 주세요.
	Kakao.init('40a1519b1664a63360f87490b7164bf3');
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

<!--항상 최신 버전의 SDK를 사용합니다.-->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>


<!-- facebook login api -->
<script>
	<script>
	window.fbAsyncInit = function() {
		FB.init({
			appId : '{415535308873910}',
			cookie : true,
			xfbml : true,
			version : '{latest-api-version}'
		});

		FB.AppEvents.logPageView();
		FB.getLoginStatus(function(response) {
		    statusChangeCallback(response);
		});
	};

	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) {
			return;
		}
		js = d.createElement(s);
		js.id = id;
		js.src = "https://connect.facebook.net/en_US/sdk.js";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>

<%@ include file="../default/header.jsp"%>


<div class="container" id="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-login" id="panel-login">
				<div class="panel-heading" id="panel-heading">
					<div class="row">
						<div class="col-xs-12">
							<a href="#" id="biz-member-link">로그인</a>
						</div>
					</div>
					<hr>
				</div>


				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
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


										<input type="password" name="passwd" tabindex="2"
											class="form-control" placeholder="비밀번호를 입력하세요.">
									</div>
								</div>
								<div class="col-xs-12 message"
									style="text-align: center; color: red; margin-bottom: 10px;"></div>
								<div class="row">
									<div class="col-xs-8 col-xs-offset-2">

										<input type="button" name="login-submit" tabindex="4"
											class="form-control btn btn-login login-submit"
											id="biz_login" value="로그인">
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

								<div id="kakao-logged-group"></div>
								<div id="kakao-profile"></div>
								<%@include file="../member/naverLogin.jsp"%>
								<div id="fb-root"></div>
								<script>
									(function(d, s, id) {
										var js, fjs = d.getElementsByTagName(s)[0];
										if (d.getElementById(id))
											return;
										js = d.createElement(s);
										js.id = id;
										js.src = 'https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.12&appId=415535308873910&autoLogAppEvents=1';
										fjs.parentNode.insertBefore(js, fjs);
									}(document, 'script', 'facebook-jssdk'));
								</script>
								<div class="fb-login-button" data-max-rows="1" data-size="medium" data-button-type="login_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"></div>

							</form>

							<!-- API 간편 로그인 - kakao -->
							<a id="kakao-login-btn"></a>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="resources/js/login.js"></script>
<script type="text/javascript" src="resources/js/jquery.cookie.js"></script>
<script>
	$(document).ready(function() {

		var id = $("#username").val();
		$.cookie('id', id);//쿠키의이름, 저장하고자 하는 쿠키값
		console.log("1" + id);
		//최초 쿠키에 id라는 쿠키값이 존재하면
		if (id != undefined) {
			//아이디에 쿠키값을 담는다
			$("#username").val(id);
			//아이디저장 체크박스 체크를 해놓는다
			$(".remember").prop("checked", true);
			console.log("2" + id);
		}

		$(".login-submit").click(function() {
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

					//아이디저장 체크되어있으면 쿠키저장
					if ($(".remember").prop("checked")) {
						$.cookie('id', $("#username").val(), {
							expires : 2
						});
						console.log("3" + id);
						//아이디저장 미체크면 쿠키에 정보가 있던간에 삭제
					} else {
						$.removeCookie('id');
					}
				}
			});//ajax
		});//click
	});
</script>

</body>

</html>
