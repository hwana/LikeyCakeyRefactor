<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../default/header.jsp"%>

<style>
#cakeupload{

	margin-bottom : 30px;
	
}
</style>
<script src="resources/js/classie.js"></script>
<script src="resources/js/modernizr.custom.js"></script>

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
				<div class = "col-md-8" style = "margin-bottom : 30px;">
				<span style="border: 2px solid pink;"></span>&nbsp;&nbsp;
				<h1 style="display: inline; margin-top: 0">
					<small><b>케이크 등록하기</b></small>
				</h1>
				</div>
				<br>
				<div class = "col-md-2" >
				<button class="btn pull-right" id = "cakeupload">케이크 등록하기</button>
				</div>
				<div class = "col-md-10">
				<table class = "table table-hover">
					<thead>
					<tr>
					<th>번호</th>
					<th>이름</th>
					<th>가격</th>
					<th>당일구매</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<th>1234</th>
					<th>달콤 촉촉 초코케이크</th>
					<th>13,000원</th>
					<th>가능</th>
					</tr>
					<tr>
					<th>1235</th>
					<th>마카롱케이크</th>
					<th>29,000원</th>
					<th>불가능</th>
					</tr>
					<tr>
					<th>1234</th>
					<th>딸기 케이크</th>
					<th>30,000원</th>
					<th>가능</th>
					</tr>
					</tbody>
				</table>
				</div>
				
				
			</div>
		</div>
	</div>
</section>

</body>

</html>
<%@ include file="../default/footer.jsp"%>