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
		<h1>${sort} Insert</h1>
		<form action="./boardInsert" method="post" id="frm"
			enctype="multipart/form-data">
			<input type="hidden" name="boardSort" id="boardSort" value="${sort}">
			<input type="hidden" name="id" id="id" value="${membership.id}">
			<div class="container">

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th>TITLE</th>
							<th><input type="text" name="title" id="title"
								></th>
							<!-- 비어있으면 안됨 -->
							<th>WRITER</th>
							<th><input readonly="readonly" name="writer" id="writer"
								value="${membership.id}"></th>
						</tr>
					</thead>
					<tr>
						<td width="10%">CONTENTS</td>
						<!-- 비어있으면 안됨 -->
						<td colspan="3"><textarea name="contents"
								style="resize: none;" id="contents" class="myCheck"></textarea></td>
					</tr>

					<tbody>
					</tbody>
				</table>
				<input type="button" value="WRITE" class="btn btn-outline-primary"
					id="btn">
			</div>



		</form>
	</div>
	<script type="text/javascript" src="../resources/jquery/boardInsert.js"></script>
	<script type="text/javascript" src="../resources/jquery/summerFile.js"></script>
	
</body>
</html>