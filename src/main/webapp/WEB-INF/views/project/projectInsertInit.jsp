<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<h1>Project Upload Init</h1>
		<h3>프로젝트 개요</h3>

		<form action="./projectInsertInit" method="post" id="frm">
		<div class="form-group">
			<label for="title">프로젝트 제목</label> <input type="text"
				class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
			<div class="form-group">
				<label for="title">프로젝트 카테고리</label> <select class="form-control"
					id="category" name="category">
					<option>default</option>
					<option>a</option>
					<option>b</option>
					<option>c</option>
					<option>d</option>
					<option>e</option>
				</select>

				<p id="titleCheckResult"></p>
			</div>
		</form>
		<a type="button" class="btn btn-outline-primary" id="insertBtn">작성 시작</a>
	</div>
<script type="text/javascript" src="../resources/jquery/projectInsertInit.js"></script>
</body>
</html>