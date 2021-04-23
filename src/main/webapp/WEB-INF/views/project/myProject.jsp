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
	
	
	
		<h1>My Project</h1>
		<c:forEach items="${myProjects}" var="mProject">
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">${mProject.title}</h4>
					<p class="card-text">${mProject.summary}</p>
					<a href="./projectInsert?num=${mProject.num}" id="update" value="${mProject.num}">수정</a>
					<a href="./projectDelete?num=${mProject.num}">삭제</a>
				</div>
			</div>
		</c:forEach>
		
		
		
	</div>
	
	
	<script type="text/javascript" src="../resources/jquery/projectMyProject.js"></script>
</body>
</html>