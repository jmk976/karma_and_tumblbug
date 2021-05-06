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
<h5>프로필 보여주는 창 profileset2</h5>
	<div class="container">
		<div class="form-group">
			<div class="form-group">
				<label for="nickname">이름</label> <input type="text"
					class="form-control" id="nickname" name="nickname"
					value="${dto.nickname}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="urlname">사용자 이름(URL)</label> <input type="text"
					class="form-control" id="urlname" name="urlname"
					value="${dto.urlname}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="intro">소개</label> <input type="text"
					class="form-control" id="intro" name="intro"
					value="${dto.intro}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="web">웹사이트</label> <input type="text"
					class="form-control" id="web" name="web" value="${dto.web}"
					readonly="readonly">
			</div>
			<div class="form-group">
				<label for="privacy">프라이버시</label> <input type="text"
					class="form-control" id="privacy" name="privacy"
					value="${dto.privacy}" readonly="readonly">
			</div>

			<a href="./updateProfile" type="button" class="btn btn-outline-primary">수정</a>
		</div>
</body>
</html>