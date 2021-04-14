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
<div class="form-group">
				<label for="id">ID</label> <input type="text" class="form-control"
					id="id" value="${membership.id}" readonly="readonly">
				<h4 id="idCheckResult"></h4>
				<!-- 6글자 이상 -->
			</div>
			<div class="form-group">
				<label for="pw">Password</label> <input type="text"
					class="form-control" id="pw" value="${membership.pw}" readonly="readonly">
					<h4 id="pwResult"></h4>
				<!-- 8글자 이상 -->
			</div>
			
			<div class="form-group">
				<label for="name">NAME</label> <input type="text"
					class="form-control" id="name" name="name" class="etc" value="${membership.name}" readonly="readonly">
				<!-- 비어있으면 안됨 -->
			</div>
			<div class="form-group">
				<label for="birth">BIRTH</label> <input type="text"
					class="form-control" id="birth" name="birth" class="etc" value="${membership.birth}" readonly="readonly">
				<!-- 비어있으면 안됨 -->
			</div>
			<div class="form-group">
				<label for="phone">PHONE</label> <input type="text"
					class="form-control" id="phone" name="phone" class="etc" value="${membership.phone}" readonly="readonly">
				<!-- 비어있으면 안됨 -->
			</div>
			<div class="form-group">
				<label for="address">ADDRESS</label> <input type="text"
					class="form-control" id="address" name="address" class="etc" value="${membership.address}" readonly="readonly">
				<!-- 비어있으면 안됨 -->
			</div>
<a href="./update" type="button" class="btn btn-outline-primary">수정</a>
<a href="./delete?id=${membership.id}" type="button" class="btn btn-outline-danger">탈퇴</a>

</div>

</body>
</html>