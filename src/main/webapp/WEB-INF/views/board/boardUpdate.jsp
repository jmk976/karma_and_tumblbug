<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<!-- summernote -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<!------------>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="container">
	
	<h1>${path}Update</h1>
	<form action="./boardUpdate" method="post" enctype="multipart/form-data">
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th>TITLE</th>
					<th><input type="text" name="title" value="${dto.title}"></th>
					<th>WRITER</th>
					<th><input readonly="readonly" name="writer"
						value="${dto.writer}"></th>
				</tr>
			</thead>
			<tr>
				<td>CONTENTS</td>
				<td colspan="3"><textarea name="contents" style="resize: none;" id="contents" class="myCheck">${dto.contents}</textarea></td>
				
			</tr>

			<tbody>
			</tbody>
		</table>
		
		<input hidden="true" name="hit" value="${dto.hit}">
		<input hidden="true" name="num" value="${dto.num}">
		<input hidden="true" name="id" value="${dto.id}">
		<input hidden="true" name="boardSort" value="${dto.boardSort}"> 
		<button class="btn btn-outline-success">submit</button>


	</form>
	</div>
	<script type="text/javascript" src="../resources/jquery/summerFile.js"></script>
</body>
</html>