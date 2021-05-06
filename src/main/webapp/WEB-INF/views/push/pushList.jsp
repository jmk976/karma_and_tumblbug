<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<h1>${membership.name}-후원프로젝트</h1>

		<c:forEach items="${pushList}" var="push">
			<div class="card">
				<a href="/p1/project/projectSelect?num=${push.projectDTO.num}"><h3>${push.projectDTO.title}</h3></a>
				<h5>프로젝트 종료 일시</h5>
				<p>${push.projectDTO.closeDate}</p>
				<h5>후원 금액</h5>
				<p>${push.quantity}원</p>
				<br> <a href="./pushDelete?num=${push.num}">취소</a>
			</div>
		</c:forEach>

	</div>
</body>
</html>