<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</style>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<h3>프로젝트 올리기</h3>
		<h4>프로젝트 개요</h4>

		<form action="./projectInsertInit" method="post" id="frm">
		<div class="form-group">
			<label for="title">프로젝트 제목</label> <input type="text"
				class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
			<div class="form-group">
				<label for="title">프로젝트 카테고리</label> <select class="form-control"
					id="category" name="category">
					<option value="default">카테고리 선택</option>
					<option>유기 동물 구조</option>
					<option>야생 동물 구조</option>
					<option>임시 보호</option>
				</select>

				<p id="titleCheckResult"></p>
			</div>
		</form>
		<a type="button" class="btn btn-outline-primary" id="insertBtn">작성 시작</a>
	</div>
<script type="text/javascript" src="../resources/jquery/projectInsertInit.js"></script>
</body>
</html>