<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
	
<title>Insert title here</title>
</head>
<body>

<form action="/p1/board/projectBoardInsert" method="post" id="frm">
			<input hidden="true" name="boardSort" value="${dto.num}">
			<input hidden="true" name="id" value="${dto.id}"> <input
				hidden="true" name="writer" value="${dto.makerName}">
			<input hidden="true" name="num" value="${dto.num}">
				<label>제목</label> <input type="text" name="title">
				<label>내용</label>
				<textarea style="resize:none;" id="contents" name="contents" class="myCheck"></textarea>

				
			<a type="button" class="btn btn-outline-primary" id="addCommunity">진행상황
				올리기</a>
</form>
<script type="text/javascript" src="../resources/jquery/summerFile.js"></script>
<script type="text/javascript" src="../resources/jquery/projectSelectUpdate.js"></script>
</body>
</html>