<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../default/header.jsp"%>

<script type="text/javascript">
$(document).ready(function() {
	$(".login-submit").submit(function(event) {
		
		var form_data = {
			user_id: $(".username").val(),
			user_pw: $(".password").val()
		};
		$.ajax({
			type: "POST",
			url: "loginCheck1.ca",
			async: false,
			data: form_data,
			success: function(data) {
				if(data.equals("ok")) {
					$(".message").html("로그인 성공");
					return;
				}else{
					$(".message").html("<p style='color:red'>아이디 또는 비밀번호가 잘못되었습니다.</p>");
				}	
			}
		});//ajax
		event.preventDefault();
		//return false;
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


							<form id="login-form" action="loginCheck1.ca" class="form-horizontal"
								method="post" role="form" style="display: block;" >
								<div class="form-group">
									<label class="col-xs-3 text-right" id="id">아이디</label>

									<div class="col-xs-8">
										<input type="text" name="id" class="username" tabindex="1"
											class="form-control" placeholder="아이디를 입력하세요." value="">
									</div>

									<label class="col-xs-3 text-right">비밀번호</label>
									<div class="col-xs-8">
										<input type="password" name="passwd" class="password"
											tabindex="2" class="form-control" placeholder="비밀번호를 입력하세요.">
									</div>
								</div>
								<div class="message"></div>
								<div class="row">
									<div class="col-xs-8 col-xs-offset-2">
										<input type="submit" name="login-submit"
											tabindex="4" class="form-control btn btn-login login-submit" value="로그인">
									</div>
								</div>
								<div class="row text-center">
									<input type="checkbox" name="remember" class="remember">
									<label for="remember"> 아이디 저장하기</label>
								</div>

								<div class="row">
									<div class="col-xs-5 text-right">
										<a href="mem_choice.ca" class="forgot-password" id="forgot-password">회원가입</a>
									</div>
									<div class="col-xs-5 text-left">
										<a href="#" class="forgot-password" id="forgot-password">아이디/비밀번호
											찾기</a>
									</div>
								</div>
							</form>

							<form id="register-form" action="loginCheck2.ca" method="post" role="form"
								style="display: none;" class="form-horizontal">
								<div class="form-group">
									<label class="col-xs-3 text-right" id="id">아이디</label>

									<div class="col-xs-8">
										<input type="text" name="username" class="username" tabindex="1"
											class="form-control" placeholder="아이디를 입력하세요." value="">
									</div>

									<label class="col-xs-3 text-right">비밀번호</label>
									<div class="col-xs-8">
										<input type="password" name="password" class="password"
											tabindex="2" class="form-control" placeholder="비밀번호를 입력하세요.">
									</div>
								</div>

								<div class="row">
									<div class="col-xs-8 col-xs-offset-2">
										<input type="submit" name="login-submit"
											tabindex="4" class="form-control btn btn-login login-submit" value="로그인">
									</div>
								</div>
								<div class="row text-center">
									<input type="checkbox" name="remember" class="remember">
									<label for="remember"> 아이디 저장하기</label>
								</div>

								<div class="row">
									<div class="col-xs-5 text-right">
										<a href="#" class="forgot-password" id="forgot-password">회원가입</a>
									</div>
									<div class="col-xs-5 text-left">
										<a href="#" class="forgot-password" id="forgot-password">아이디/비밀번호
											찾기</a>
									</div>
								</div>
							</form>
							
							<div class="row">
								
							</div>

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

