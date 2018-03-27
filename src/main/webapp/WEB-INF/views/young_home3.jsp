<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h1>로그인이됫을까?</h1>
	</header>
	<c:set var="member" value="${sessionScope.member}" />
	<c:if test="${empty sessionScope.member }">
		로그인이 안됬다.
	</c:if>

	<c:if test="${!empty sessionScope.member}">
		${member.name} 님이 로그인하셨습니다. 
	</c:if>
</body>
</html>