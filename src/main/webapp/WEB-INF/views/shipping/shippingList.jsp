<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h2>등록된 배송지</h2>

	<a href="./shippingInsert" type="button" class="btn btn-primary">+추가</a>
	<div class="container">
		<c:forEach items="${list}" var="shipping">
			<h2>${dto.shipName}</h2>
			<p>${dto.shipAdress}</p>
			<p>${dto.shipPhone}</p>
		</c:forEach>
		<h2>나와라ㅣ발</h2>

	</div>


</body>
</html>