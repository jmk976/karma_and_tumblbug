<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
h3{
  font-family: 'MapoGoldenPier';  text-align: center;
  border-bottom: 5px dotted gray;
  padding-top:30px;
  padding-bottom:30px;
}

@font-face {
    font-family: 'MapoGoldenPier';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoGoldenPierA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
.card{
text-align:center;
margin : 10px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<h3>내 후원프로젝트 목록</h3>

		<c:forEach items="${pushList}" var="push">
			<div class="card">
				<a href="/p1/project/projectSelect?num=${push.projectDTO.num}"><h4>${push.projectDTO.title}</h4></a>
				<h5>프로젝트 종료 일시</h5>
				<p>${push.projectDTO.closeDate}</p>
				<h5>후원 금액</h5>
				<p>${push.quantity}원</p>
				<a href="./pushDelete?num=${push.num}" type="button" class="btn btn-outline-danger btn-block">후원 취소</a>
			</div>
		</c:forEach>

	</div>
</body>
</html>