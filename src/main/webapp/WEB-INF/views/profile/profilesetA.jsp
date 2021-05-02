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
	<div class="container">
		<div class="form-group" hidden="hidden">
			<label for="pw">Password</label> <input type="text"
				class="form-control" id="pw" value="${membership.pw}"
				readonly="readonly">
			<h4 id="pwResult"></h4>
			<!-- 8글자 이상 -->
		</div>

		<div class="form-group">
			<label for="phone">PHONE</label> <input type="text"
				class="form-control" id="phone" name="phone" class="etc"
				value="${membership.phone}" readonly="readonly">
			<!-- 비어있으면 안됨 -->
		</div>

		<div>
			<h3>계정 연동</h3>
		</div>
	</div>
</body>
</html>