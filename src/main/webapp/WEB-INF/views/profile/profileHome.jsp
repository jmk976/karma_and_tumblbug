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
			<div class="form-group">
				<label for="nickname">이름</label> <input type="text"
					class="form-control" id="nickname" name="nickname"
					value="${dto.nickname}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="intro">소개</label> <input type="text"
					class="form-control" id="intro" name="intro"
					value="${dto.intro}" readonly="readonly">
			</div>
			<h5>밀어준 프로젝트</h5>
		</div>
</body>
</html>