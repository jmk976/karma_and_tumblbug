<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
<style type="text/css">
.container {
	margin-top: 25px;
}
</style>


</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

	<div class="container">
		<h5>등록된 배송지</h5>
		<a href="" id="insert">+ 배송지 추가</a>


		<c:forEach items="${list}" var="dto">
			<div class="card w-75">
				<div class="card-body">
					<h5 class="card-title">${dto.shipName}</h5>
					<p class="card-text">${dto.shipAddress}</p>
					<p class="card-text">${dto.shipPhone}</p>
					<a href="./shippingUpdate?shipNum=${dto.shipNum}" class="update">수정</a>
					<a href="./shippingDelete?shipNum=${dto.shipNum}" class="delete">삭제</a>
				</div>
			</div>
		</c:forEach>

	</div>


	<script type="text/javascript" src="../resources/jquery/shippingList.js"></script>


</body>
</html>