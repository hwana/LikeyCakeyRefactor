<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../default/header.jsp"%>
<div class="container" id="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-login" id="panel-login">

				<div class="panel-heading" id="panel-heading">
					<div class="row">
						<div class="col-xs-6">
							<a href="#" class="active" id="findid">아이디 찾기</a>
						</div>
						<div class="col-xs-6">
							<a href="#" id="findpw">비밀번호 찾기</a>
						</div>
					</div>
					<hr>
				</div>

				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">


							<form id="findid-form" action="/" class="form-horizontal"
								method="post" role="form" style="display: block;">
								<div class="form-group">
									<label class="col-xs-3 text-right" id="name">담당자 이름</label>

									<div class="col-xs-8">
										<input type="text" name="username" id="username" tabindex="1"
											class="form-control" placeholder="이름을 입력하세요." value="">
									</div>

									<label class="col-xs-3 text-right">담당자 이메일</label>
									<div class="col-xs-8">
										<input type="text" name="email" id="email" tabindex="2"
											class="form-control" placeholder="이메일을 입력하세요.">
									</div>
								</div>

								<div class="row">
									<div class="col-xs-8 col-xs-offset-2">
										<input type="submit" name="login-submit" id="login-submit"
											tabindex="4" class="form-control btn btn-login" value="찾기"
											id="btn-login">
									</div>
								</div>

							</form>

							<form id="findpw-form" action="/" class="form-horizontal"
								method="post" role="form" style="display: block;">
								<div class="form-group">
									<label class="col-xs-3 text-right" id="name">담당자 이름</label>

									<div class="col-xs-8">
										<input type="text" name="username" id="username" tabindex="1"
											class="form-control" placeholder="이름을 입력하세요." value="">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="inputNumber">담당자
										휴대폰번호</label>
									<div class="col-sm-8">
										<div class="input-group">
											<input type="text" class="form-control"
												placeholder="- 없이 입력해 주세요" /> <span class="input-group-btn">
												<button class="btn btn-success" id="login-submit">
													인증번호 전송</button>
											</span>
										</div>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label" for="inputNumberCheck">인증번호
										확인</label>
									<div class="col-sm-8">
										<div class="input-group">
											<input class="form-control" type="tel" placeholder="인증번호">
											<span class="input-group-btn">
												<button class="btn btn-success" type="button"
													id="login-submit">인증번호 확인</button>
											</span>
										</div>

									</div>
								</div>
								
								<div class="row">
									<div class="col-xs-8 col-xs-offset-2">
										<input type="submit" name="login-submit" id="login-submit"
											tabindex="4" class="form-control btn btn-login" value="찾기"
											id="btn-login">
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
<script src="/resources/js/find.js"></script>

</body>

</html>