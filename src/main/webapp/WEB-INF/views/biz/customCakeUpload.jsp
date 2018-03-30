<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../default/header.jsp"%>

<style>
	label{margin-top:10px;}
	#radio{
	height : auto;
	width : auto;
	font-size : 15px;
	margin : auto 0;
}
#checkbox{
	margin-top:10px;
}

#search{
background : #9bcaba;
}

#join{
	background : #f6c6c9;
}

#cancle{
	background : #9bcaba;
}

#joinbutton{
	margin-top : 30px;
}

#inputtag{
margin-top:10px;}

input[type="checkbox"]{
	width : auto;
	height : auto;
	
}
</style>
<!-- Page Content Wraper Area Start -->
<section class="page-content-wrapper">
	<div class="container">
		<div class="row">
			<div class="content-full ptb-50 fix" style="margin: 0 auto;">


				<!-- Left Side Start -->
				<div class="col-md-2">
					<div class="right-area">
						<div class="product-filter">
							<!-- Category Product -->
							<div class="category">
								<h4>My Page</h4>
								<div class="category-list mt-20">
									<ul>
										<!-- li style="border-bottom:0px;" << 라인 없애기 -->
										<li style="border-bottom: 0px;"><a href="#"><i
												class="zmdi zmdi-chevron-right"></i>케이크 등록하기</a></li>
										<li style="border-bottom: 0px;"><a href="#"><i
												class="zmdi zmdi-chevron-right"></i>사업가 정보 수정</a></li>
										<li style="border-bottom: 0px;"><a href="#"><i
												class="zmdi zmdi-chevron-right"></i>주문내역</a></li>
										<li style="border-bottom: 0px;"><a href="#"><i
												class="zmdi zmdi-chevron-right"></i>문의글 모음</a></li>

									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Left Side End -->

				<!-- Right Side Start -->
				<div style = "margin-bottom : 30px;">
				<span style="border: 2px solid pink;"></span>&nbsp;&nbsp;
				<h1 style="display: inline; margin-top: 0">
					<small><b>케이크 등록하기</b></small>
				</h1>
				</div>
				<br>

				<article class="container">
					<div class="col-md-10">
						<form class="form-horizontal">
				
							
							<div class="form-group">
								<label class="col-sm-3 control-label" for="inputCakeInfo">시트</label>
								<div class="col-sm-6">
									<input class="form-control" id="inputtag" type="text"
										placeholder="시트입력">
										<input class="form-control" id="inputtag" type="text"
										placeholder="시트입력">
										<input class="form-control" id="inputtag" type="text"
										placeholder="시트입력">
									<button class="btn btn-success" type="button" id="search" style = "border-radius : 50%; margin-left : 45%; margin-top : 20px;" >+</button>
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label" for="inputCakeInfo">토핑</label>
								<div class="col-sm-6">
									<input class="form-control" id="inputtag" type="text"
										placeholder="토핑입력">
										<input class="form-control" id="inputtag" type="text"
										placeholder="토핑입력">
										<input class="form-control" id="inputtag" type="text"
										placeholder="토핑입력">
									<button class="btn btn-success" type="button" id="search" style = "border-radius : 50%; margin-left : 45%; margin-top : 20px;" >+</button>
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label" for="inputCakeInfo">크림</label>
								<div class="col-sm-6">
									<input class="form-control" id="inputtag" type="text"
										placeholder="크림입력">
										<input class="form-control" id="inputtag" type="text"
										placeholder="크림입력">
										<input class="form-control" id="inputtag" type="text"
										placeholder="크림입력">
									<button class="btn btn-success" type="button" id="search" style = "border-radius : 50%; margin-left : 45%; margin-top : 20px;" >+</button>
								</div>
							</div>
							
							<div class="form-inline">
								<label class="col-sm-3 control-label" for="inputCakeInfo">규격</label>
								<div class="col-sm-6" id = checkbox>
									<input class="span2" id="inputtag" type="checkbox">1호&nbsp;&nbsp;&nbsp;
									<input class="span2" id="inputtag" type="checkbox">2호&nbsp;&nbsp;&nbsp;
									<input class="span2" id="inputtag" type="checkbox">3호&nbsp;&nbsp;&nbsp;
									<input class="span2" id="inputtag" type="checkbox">4호&nbsp;&nbsp;&nbsp;
									<input class="span2" id="inputtag" type="checkbox">5호&nbsp;&nbsp;&nbsp;
								</div>
							</div>
							
						
							
						

							
							<div class="form-group">
								<div class="col-sm-12 text-center" id="joinbutton">
									<button class="btn btn-primary btn-lg" type="submit" id="join">
										등록하기</button>
									<button class="btn btn-danger btn-lg" type="submit" id="cancle">
										등록취소</button>
								</div>
							</div>
						</form>
					</div>
				</article>
			</div>
		</div>
	</div>
</section>

</body>

</html>
<%@ include file="../default/footer.jsp"%>