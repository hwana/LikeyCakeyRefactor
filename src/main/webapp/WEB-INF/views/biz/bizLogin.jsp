<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../default/header.jsp"%>

<script type="text/javascript">
	$(document).ready(function() {
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
							<form id="login-form" action="loginCheck1.ca"
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
										<input type="submit" name="login-submit"
											tabindex="4" class="form-control btn btn-login login-submit" value="로그인"
											id="btn-login">
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
										<a href="#" class="forgot-password" id="forgot-password">아이디/비밀번호
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
											class="form-control btn btn-login login-submit" value="로그인">
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
