<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
a {
	color: black;
}
img {
	height:200px;
	width:100%;
	object-fit:contain;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<h1>Project List</h1>
		<div class="input-group">
			<c:forEach items="${projectList}" var="project">
				<c:if test="${project.state eq 'submit'}">

					<div class="card" style="width: 18rem; margin: 1rem;">
						<div id="test" title="${project.mediaFiles}">
							<c:forEach items="${project.mediaFiles}" var="media">
								<c:if test="${media.division eq 'photo'}">
									<img src="../resources/images/project/f/${project.num}/${media.fileName}">
								</c:if>

							</c:forEach>
						</div>
						<div class="card-body">
							<h5 class="card-title">${project.title}</h5>
							<div class="input-group">
								<p class="card-text">${project.category}</p>
								<p class="card-text">&nbsp | &nbsp</p>
								<p class="card-text">${project.makerName}</p>
							</div>

							<a href="./projectSelect?num=${project.num}" class="btn btn-primary">Go somewhere</a>
						</div>
					</div>


				</c:if>
			</c:forEach>
		</div>

	</div>
</body>
</html>