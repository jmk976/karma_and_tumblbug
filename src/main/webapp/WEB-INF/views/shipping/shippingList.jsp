<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
<style>
    .menu a{cursor:pointer;}
    .menu .hide{display:none;}
</style>

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h2>등록된 배송지</h2>

	<a href="./shippingInsert" type="button" class="btn btn-primary">+추가</a>
	<c:forEach items="${list}" var="dto">
		<div  class="container p-3 my-3 border">
			<h2>${dto.shipName}</h2>
			<p>${dto.shipAddress}</p>
			<p>${dto.shipPhone}</p>
			<div align="right">
			<ul>
			<li class="menu">
			<a><img src="" alt="***"/></a>
				<ul class="hide">
					<li>수정</li>
					<li>삭제</li>
				</ul>
			</li>
			</ul>
			</div>
		</div>
	</c:forEach>
		
	
	<script>
		$(document).ready(function() {
			$(".menu>a").click(function() {
				$(this).next("ul").toggleClass("hide");
			});
		});
	</script>



</body>
</html>