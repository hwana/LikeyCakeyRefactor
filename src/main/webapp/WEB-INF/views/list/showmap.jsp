<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset=UTF-8">
	<title>Daum 지도</title>
</head>

<body>
	<!-- Header Area Start -->
	<%@ include file="../default/headerformap.jsp"%>
	<div id="map" style="width:100vw;height:100vh;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a27a69a72f8e1a30fe50fecac923afee"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new daum.maps.LatLng(37.498916, 127.032895),
			level: 5
		};

		var map = new daum.maps.Map(container, options);
	</script>
	<!-- services 라이브러리 불러오기 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services"></script>
</body>
</html>