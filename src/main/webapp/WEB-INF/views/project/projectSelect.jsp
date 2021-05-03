<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
<style type="text/css">
#sample {
	display: none;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<div style="text-align: center;">
			<h4>${selectDTO.category}</h4>
			<h1>${selectDTO.title}</h1>
			<h5>${selectDTO.makerName}</h5>
		</div>
		<div class="card">
			<div class="card-body">
				<div class="input-group">
					<c:forEach items="${selectDTO.mediaFiles}" var="media">
						<c:if test="${media.division eq 'photo'}">
							<img
								src="../resources/images/project/f/${selectDTO.num}/${media.fileName}">
						</c:if>
					</c:forEach>
					<div>
						<p>목표 금액 : ${selectDTO.targetAmount}</p>
						<p>개시 일시 : ${selectDTO.openDate}</p>
						<p>종료 일시 : ${selectDTO.closeDate}</p>
					</div>
				</div>
			</div>
		</div>
		<div class="input-group">
			<div style="width: 80%;">
				<div class="form-group">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#home">스토리</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#menu1">커뮤니티</a></li>
					</ul>
				</div>
				<div class="tab-content">
					<div id="home" class="container tab-pane active">
						${selectDTO.projectStory}</div>
					<div id="menu1" class="container tab-pane fade">
					<c:forEach items="${community}" var="comm">
					<div class="card" style="width: 50rem; margin: 1rem;">
						<p class="card-text">${comm.title}</p>
						<div style="height:auto; width:100%; boarder:1px solid gray;">
						contentsArea
						${comm.contents}
						</div>
						</div>
					</c:forEach>
						<c:if test="${not empty membership and membership.id eq selectDTO.id}">
							<input type="button" value="진행상황 업데이트"
								class="btn btn-outline-danger" id="add">
							<div id="community"></div>
					</c:if>
					</div>
				</div>
			</div>

			<div style="width: 20%; text-align: center;">
				<div class="card">
					<div class="card-body">
						<select>
							<option>10000원</option>
							<option>20000원</option>
							<option>30000원</option>
							<option>40000원</option>
						</select>
					</div>
				</div>
			</div>

		</div>
	</div>

	<div id="sample">
		<form action="/p1/board/projectBoardInsert" method="post" id="frm">
			<input hidden="true" name="boardSort" value="${selectDTO.num}">
			<input hidden="true" name="id" value="${selectDTO.id}"> <input
				hidden="true" name="writer" value="${selectDTO.makerName}">
			<input hidden="true" name="num" value="${selectDTO.num}">
				<label>제목</label> <input type="text" name="title">
				<label>내용</label>
				<textarea style="resize:none;" name="contents" class="myCheck"></textarea>
				<!-- 
				<textarea name="contents" style="resize: none;" id="contents" class="myCheck">
				</textarea>
				 -->
			<a type="button" class="btn btn-outline-primary" id="addCommunity">진행상황
				올리기</a>
		</form>
	</div>
	<script type="text/javascript" src="../resources/jquery/summerFile.js"></script>
	<script type="text/javascript"
		src="../resources/jquery/projectSelect.js"></script>
</body>
</html>