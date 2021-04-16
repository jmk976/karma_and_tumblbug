<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
<style>
.menu a {
	cursor: pointer;
}

.menu .hide {
	display: none;
}
</style>

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h2>등록된 배송지</h2>
	<h1>ship hsp ship ship hisp hsip hsip</h1>

	<a href="./shippingInsert" type="button" class="btn btn-primary">+추가</a>
	<c:forEach items="${list}" var="dto">
		<div class="container p-3 my-3 border">
			<h2>${dto.shipName}</h2>
			<p>${dto.shipAddress}</p>
			<p>${dto.shipPhone}</p>
			<p><a href="./shippingUpdate?shipNum=${dto.shipNum}">수정</a></p>
			<p><a href="./shippingDelete?shipNum=${dto.shipNum}">삭제</a></p>
		</div>
	</c:forEach>

</body>
</html>