<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
.b {
	color: blue;
}

.r {
	color: red;
}

img {
	width: 200px;
}

div {
	padding: 10px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="container">



		<h1>내가 작성한 프로젝트</h1>
		
		<c:forEach items="${myProjects}" var="mProject">
		<c:if test="${mProject.state eq 'temporary' }">
			<div class="card">
				<div class="card-body">
					<div class="input-group">
						<div id="test" title="${mProject.mediaFiles}">
						
							<c:forEach items="${mProject.mediaFiles}" var="media">
							<c:if test="${media.division eq 'photo' }">
								<img src="../resources/images/project/f/${mProject.num}/${media.fileName}">
							</c:if>

							</c:forEach>
						</div>
						<div>
							<div class="input-group">
								<h4 class="card-title">${mProject.title}&nbsp
									|&nbsp&nbsp&nbsp&nbsp</h4>
								<p class="card-text r" id="state">작성중</p>
							</div>
							<div>
								<p class="card-text" id="state">${mProject.summary}</p>
							</div>
						</div>

					</div>
					<a type="button" class="btn btn-outline-primary"
						href="./projectInsert?num=${mProject.num}" id="update"
						value="${mProject.num}">수정</a> <a type="button"
						class="btn btn-outline-primary"
						href="./projectDelete?num=${mProject.num}">삭제</a>

				</div>
			</div>
			</c:if>
		</c:forEach>
		
		
		
		<c:forEach items="${myProjects}" var="mProject">
		<c:if test="${mProject.state eq 'submit' }">
			<div class="card">
				<div class="card-body">
					<div class="input-group">
						<div id="test" title="${mProject.mediaFiles}">
						
							<c:forEach items="${mProject.mediaFiles}" var="media">
							<c:if test="${media.division eq 'photo' }">
								<img src="../resources/images/project/f/${mProject.num}/${media.fileName}">
							</c:if>

							</c:forEach>
						</div>
						<div>
							<div class="input-group">
								<h4 class="card-title">${mProject.title}&nbsp
									|&nbsp&nbsp&nbsp&nbsp</h4>
								<p class="card-text r" id="state">관리자 검토 중</p>
							</div>
							<div>
								<p class="card-text" id="summary">${mProject.summary}</p>
							</div>
						</div>

					</div>

				</div>
			</div>
			</c:if>
		</c:forEach>



		
		
		<c:forEach items="${myProjects}" var="mProject">
		<c:if test="${mProject.state eq 'denied' }">
			<div class="card">
				<div class="card-body">
					<div class="input-group">
						<div id="test" title="${mProject.mediaFiles}">
						
							<c:forEach items="${mProject.mediaFiles}" var="media">
							<c:if test="${media.division eq 'photo' }">
								<img src="../resources/images/project/f/${mProject.num}/${media.fileName}">
							</c:if>

							</c:forEach>
						</div>
						<div>
							<div class="input-group">
								<h4 class="card-title">${mProject.title}&nbsp
									|&nbsp&nbsp&nbsp&nbsp</h4>
								<p class="card-text r" id="state">게시 불가</p>
							</div>
							<div>
								<p class="card-text" id="summary">${mProject.summary}</p>
							</div>
						</div>

					</div>

				</div>
			</div>
			</c:if>
		</c:forEach>
		
		
		
		
		<c:forEach items="${myProjects}" var="mProject">
		<c:if test="${mProject.state eq 'accept' }">
			<div class="card">
				<div class="card-body">
					<div class="input-group">
						<div id="test" title="${mProject.mediaFiles}">
						
							<c:forEach items="${mProject.mediaFiles}" var="media">
							<c:if test="${media.division eq 'photo' }">
								<img src="../resources/images/project/f/${mProject.num}/${media.fileName}">
							</c:if>

							</c:forEach>
						</div>
						<div>
							<div class="input-group">
								<h4 class="card-title">${mProject.title}&nbsp
									|&nbsp&nbsp&nbsp&nbsp</h4>
								<p class="card-text r" id="state">게시</p>
							</div>
							<div>
								<p class="card-text" id="state">${mProject.summary}</p>
							</div>
						</div>

					</div>

				</div>
			</div>
			</c:if>
		</c:forEach>


	</div>


	<script type="text/javascript"
		src="../resources/jquery/projectMyProject.js"></script>
</body>
</html>