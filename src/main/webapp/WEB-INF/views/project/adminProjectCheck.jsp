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
		<h1>project list</h1>
		<h2>submit</h2>
		<c:forEach items="${adminProject}" var="aProject">
			<c:if test="${aProject.state eq 'submit'}">
				<div class="card">
					<div class="card-body">
						<div class="input-group">
							<div id="test">

								<c:forEach items="${aProject.mediaFiles}" var="media">
									<c:if test="${media.division eq 'photo' }">
										<img
											src="../resources/images/project/f/${aProject.num}/${media.fileName}">
									</c:if>

								</c:forEach>
							</div>
							<div>
								<div class="input-group">
									<h4 class="card-title">${aProject.title}&nbsp
										|&nbsp&nbsp&nbsp&nbsp</h4>
									<p class="card-text r" id="state">${aProject.state}</p>
								</div>
								<div>
									<p class="card-text" id="state">${aProject.summary}</p>
								</div>
							</div>

						</div>
						<a type="button" class="btn btn-outline-primary"
							href="./projectAdminUpdate?num=${aProject.num}&state='denied'"
							id="denied">거절</a> <a type="button"
							class="btn btn-outline-primary"
							href="./projectAdminUpdate?num=${aProject.num}&state='accept'">허용</a>

					</div>
				</div>
			</c:if>
		</c:forEach>
		<h2>denied</h2>
		<c:forEach items="${adminProject}" var="aProject">
			<c:if test="${aProject.state eq 'denied'}">
				<div class="card">
					<div class="card-body">
						<div class="input-group">
							<div id="test">

								<c:forEach items="${aProject.mediaFiles}" var="media">
									<c:if test="${media.division eq 'photo' }">
										<img
											src="../resources/images/project/f/${aProject.num}/${media.fileName}">
									</c:if>

								</c:forEach>
							</div>
							<div>
								<div class="input-group">
									<h4 class="card-title">${aProject.title}&nbsp
										|&nbsp&nbsp&nbsp&nbsp</h4>
									<p class="card-text r" id="state">${aProject.state}</p>
								</div>
								<div>
									<p class="card-text" id="state">${aProject.summary}</p>
								</div>
							</div>

						</div>
						<a type="button" class="btn btn-outline-primary"
							href="./projectAdminUpdate?num=${aProject.num}&state='denied'"
							id="denied">거절</a> <a type="button"
							class="btn btn-outline-primary"
							href="./projectAdminUpdate?num=${aProject.num}&state=''">허용</a>

					</div>
				</div>
			</c:if>
		</c:forEach>
		<h2>accept</h2>
		<c:forEach items="${adminProject}" var="aProject">
			<c:if test="${aProject.state eq 'accept'}">
				<div class="card">
					<div class="card-body">
						<div class="input-group">
							<div id="test">

								<c:forEach items="${aProject.mediaFiles}" var="media">
									<c:if test="${media.division eq 'photo' }">
										<img
											src="../resources/images/project/f/${aProject.num}/${media.fileName}">
									</c:if>

								</c:forEach>
							</div>
							<div>
								<div class="input-group">
									<h4 class="card-title">${aProject.title}&nbsp
										|&nbsp&nbsp&nbsp&nbsp</h4>
									<p class="card-text r" id="state">${aProject.state}</p>
								</div>
								<div>
									<p class="card-text" id="state">${aProject.summary}</p>
								</div>
							</div>

						</div>
						<a type="button" class="btn btn-outline-primary"
							href="./projectAdminUpdate?num=${aProject.num}&state='denied'"
							id="denied">거절</a> <a type="button"
							class="btn btn-outline-primary"
							href="./projectAdminUpdate?num=${aProject.num}&state=''">허용</a>

					</div>
				</div>
			</c:if>
		</c:forEach>
	</div>
</body>
</html>