<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<script type="text/javascript">
	$(function(){
		$.ajax({
		  url : "todaysCake.ca"			
		})
	});
</script>
</head>
<body>
			
			<!-- 오늘의 상품 start -->
			<!-- 변수 설정  -->
			<c:set var="todaysCake" value="${requestScope.todaysCake}"/>
			<c:set var="todaysBizMember" value="${requestScope.todaysBizMember}"/>
			<!-- 오늘 날짜 구하기  -->
			<c:set var="now" value="<%=new java.util.Date(new java.util.Date().getTime() + 60 * 60 * 24 * 1000)%>" />
			<c:set var="sysYear"><fmt:formatDate value="${now}" pattern="yyyy/MM/dd" /></c:set> 
			
			<c:out value="${sysYear}"></c:out>
			<section class="deal-month-area ptb-100 dark-gray-bg">
				<!-- SECTION TITEL -->
				<div class="section-titel text-center mb-85 text-uppercase">
					<h3>오늘의 상품</h3>
				</div>
				<!-- SECTION TITEL -->
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-sm-6 col-xs-12 res-mb-25">
							<div class="deal-month-left">
								<img src="/resources/img/product/${todaysCake.pImg}.jpg" alt="" />
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="deal-month-right white-bg p-20">
								<span class="titel">${todaysBizMember.bizName }</span>
								<div class="main-content">
									<h2><a href="./detailView.ca/${todaysCake.pbNum }">${todaysCake.pName}</a></h2>
									<h4>\<fmt:formatNumber value="${todaysCake.pPrice}" pattern="\#,###"/></h4>
									<p>${todaysCake.pbMiniContent }</p>
									<div class="count-down-area">
										<div class="timer default-bg">
											<!-- 현선 : 오늘 날짜 불러오는 메소드 추가할 것 -->
											<div data-countdown="${sysYear}"></div>
										</div> 
									</div>
									<div class="deal-btn mt-40">
										<a href="#">add to cart</a>
										<span class="titel f-right"><a href="#">VIEW DETAIL</a></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			
</body>
</html>